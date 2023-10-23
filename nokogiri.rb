require 'bundler'
Bundler.require

doc = Nokogiri::HTML(STDIN.read)
nodes = doc.xpath("(//div[@class='bBox']/table)[1]/tbody/tr/td/text()")
puts nodes.map {|node| node.to_s }.join("\t")
