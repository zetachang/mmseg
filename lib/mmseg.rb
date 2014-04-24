#encoding:utf-8
class Mmseg
	def initialize(dic_path=File.dirname(__FILE__)+"/../data/dict.txt")
		@dict=Hash.new
		s=File.open(dic_path)
		@dict=Hash.new(0)
		while str=s.gets
  			str=str.chomp
  			@dict[str]=1
		end
	end

	def segment(str)
  		str=str.chomp
  		left=str
	@result=Array.new
    while left.length>0
    	if @dict[str]==1 or str.length==1
      		@result.push(str)
      		len=str.length
      		left=left[len..-1]
      		str=left         
		else
     		str=str[0..-2]     
		end
	end
		return @result
	end

end

#test

#mmseg=Mmseg.new("i://dict.txt")
#mmseg=Mmseg.new()
#puts mmseg.segment("今天天气不错")
