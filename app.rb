require 'sinatra'
require 'json'
require 'open-uri'

get '/' do
  url = "http://rest-service.guides.spring.io/greeting"
  response = JSON.parse(open(url).read) 
  "<h1>#{response["id"]}</h1><h2>#{response["content"]}</h2> "
end

