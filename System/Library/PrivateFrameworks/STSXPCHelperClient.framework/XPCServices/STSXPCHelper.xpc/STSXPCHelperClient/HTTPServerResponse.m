@interface HTTPServerResponse
- (HTTPServerResponse)initWithResponse:(id)a3;
- (HTTPServerResponse)initWithResponse:(id)a3 bodyData:(id)a4;
- (HTTPServerResponse)initWithResponse:(id)a3 bodyStream:(id)a4;
@end

@implementation HTTPServerResponse

- (HTTPServerResponse)initWithResponse:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HTTPServerResponse;
  v6 = [(HTTPServerResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, a3);
    v7->_bodyType = 0;
  }

  return v7;
}

- (HTTPServerResponse)initWithResponse:(id)a3 bodyData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HTTPServerResponse;
  v9 = [(HTTPServerResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_response, a3);
    v10->_bodyType = 1;
    objc_storeStrong(&v10->_bodyData, a4);
  }

  return v10;
}

- (HTTPServerResponse)initWithResponse:(id)a3 bodyStream:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HTTPServerResponse;
  v9 = [(HTTPServerResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_response, a3);
    v10->_bodyType = 2;
    objc_storeStrong(&v10->_bodyStream, a4);
  }

  return v10;
}

@end