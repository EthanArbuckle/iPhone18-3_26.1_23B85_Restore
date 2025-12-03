@interface HTTPServerResponseFixed
- (HTTPServerResponseFixed)initWithMessage:(id)message;
- (id)responseForRequest:(id)request;
@end

@implementation HTTPServerResponseFixed

- (HTTPServerResponseFixed)initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = HTTPServerResponseFixed;
  v6 = [(HTTPServerResponseFixed *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
  }

  return v7;
}

- (id)responseForRequest:(id)request
{
  requestCopy = request;
  message = [(HTTPServerResponseFixed *)self message];
  v6 = [message length];

  v7 = [NSMutableDictionary dictionaryWithCapacity:3];
  [v7 setObject:@"CFNetworkPPTServer-ResponseFixed" forKeyedSubscript:@"Server"];
  [v7 setObject:@"keep-alive" forKeyedSubscript:@"Connection"];
  v8 = [NSNumber numberWithUnsignedInteger:v6];
  stringValue = [v8 stringValue];
  [v7 setObject:stringValue forKeyedSubscript:@"Content-Length"];

  v10 = [NSHTTPURLResponse alloc];
  v11 = [requestCopy URL];

  v12 = [v10 initWithURL:v11 statusCode:200 HTTPVersion:@"HTTP/1.1" headerFields:v7];
  v13 = [HTTPServerResponse alloc];
  message2 = [(HTTPServerResponseFixed *)self message];
  v15 = [(HTTPServerResponse *)v13 initWithResponse:v12 bodyData:message2];

  return v15;
}

@end