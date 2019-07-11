local redis = require "custom.redis"
local red = redis:new()
local now_minute = math.floor(ngx.time()/ 60)
local key = ngx.today() .. ':' .. now_minute .. ':' .. ngx.var.request_method ..  ':' .. ngx.var.request_uri
local count, err = red:incr(key)
