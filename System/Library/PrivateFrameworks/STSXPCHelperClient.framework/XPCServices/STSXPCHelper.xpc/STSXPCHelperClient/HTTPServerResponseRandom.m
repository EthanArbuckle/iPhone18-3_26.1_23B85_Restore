@interface HTTPServerResponseRandom
- (HTTPServerResponseRandom)initWithMinimumLength:(unint64_t)a3 maximumLength:(unint64_t)a4;
- (id)responseForRequest:(id)a3;
@end

@implementation HTTPServerResponseRandom

- (HTTPServerResponseRandom)initWithMinimumLength:(unint64_t)a3 maximumLength:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = HTTPServerResponseRandom;
  v6 = [(HTTPServerResponseRandom *)&v10 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  if (v6->_maxLen >= v6->_minLen)
  {
    v6->_minLen = a3;
    v6->_maxLen = a4;
LABEL_5:
    v8 = v6;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)responseForRequest:(id)a3
{
  v4 = a3;
  v5 = [(HTTPServerResponseRandom *)self minLen];
  if (v5 == [(HTTPServerResponseRandom *)self maxLen])
  {
    minLen = self->_minLen;
  }

  else
  {
    v7 = arc4random_uniform(LODWORD(self->_maxLen) - LODWORD(self->_minLen) + 1);
    minLen = [(HTTPServerResponseRandom *)self minLen]+ v7;
  }

  v8 = malloc_type_malloc(minLen, 0xB70C2A09uLL);
  if (v8)
  {
    v9 = v8;
    arc4random_buf(v8, minLen);
    v10 = [NSData dataWithBytesNoCopy:v9 length:minLen];
    v11 = [NSMutableDictionary dictionaryWithCapacity:3];
    [v11 setObject:@"CFNetworkPPTServer-ResponseRandom" forKeyedSubscript:@"Server"];
    [v11 setObject:@"keep-alive" forKeyedSubscript:@"Connection"];
    v12 = [NSNumber numberWithUnsignedInteger:minLen];
    v13 = [v12 stringValue];
    [v11 setObject:v13 forKeyedSubscript:@"Content-Length"];

    v14 = [NSHTTPURLResponse alloc];
    v15 = [v4 URL];
    v16 = [v14 initWithURL:v15 statusCode:200 HTTPVersion:@"HTTP/1.1" headerFields:v11];

    v17 = [[HTTPServerResponse alloc] initWithResponse:v16 bodyData:v10];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end