@interface HTTPServerResponseFixed
- (HTTPServerResponseFixed)initWithMessage:(id)a3;
- (id)responseForRequest:(id)a3;
@end

@implementation HTTPServerResponseFixed

- (HTTPServerResponseFixed)initWithMessage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HTTPServerResponseFixed;
  v6 = [(HTTPServerResponseFixed *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
  }

  return v7;
}

- (id)responseForRequest:(id)a3
{
  v4 = a3;
  v5 = [(HTTPServerResponseFixed *)self message];
  v6 = [v5 length];

  v7 = [NSMutableDictionary dictionaryWithCapacity:3];
  [v7 setObject:@"CFNetworkPPTServer-ResponseFixed" forKeyedSubscript:@"Server"];
  [v7 setObject:@"keep-alive" forKeyedSubscript:@"Connection"];
  v8 = [NSNumber numberWithUnsignedInteger:v6];
  v9 = [v8 stringValue];
  [v7 setObject:v9 forKeyedSubscript:@"Content-Length"];

  v10 = [NSHTTPURLResponse alloc];
  v11 = [v4 URL];

  v12 = [v10 initWithURL:v11 statusCode:200 HTTPVersion:@"HTTP/1.1" headerFields:v7];
  v13 = [HTTPServerResponse alloc];
  v14 = [(HTTPServerResponseFixed *)self message];
  v15 = [(HTTPServerResponse *)v13 initWithResponse:v12 bodyData:v14];

  return v15;
}

@end