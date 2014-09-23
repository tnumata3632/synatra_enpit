require 'sinatra'

get '/' do
  "Hello World!"
end

get '/aiit' do 
  "Hello aiit."
end

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params[:name] is 'foo' or 'bar'
  "Hello #{params[:name]}!"
end

get '/index' do
  erb :index
end

get '/time' do
  code = "<%= Time.now %>"
  erb code
end
