@interface HTTPServerResponse
- (HTTPServerResponse)initWithResponse:(id)response;
- (HTTPServerResponse)initWithResponse:(id)response bodyData:(id)data;
- (HTTPServerResponse)initWithResponse:(id)response bodyStream:(id)stream;
@end

@implementation HTTPServerResponse

- (HTTPServerResponse)initWithResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = HTTPServerResponse;
  v6 = [(HTTPServerResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, response);
    v7->_bodyType = 0;
  }

  return v7;
}

- (HTTPServerResponse)initWithResponse:(id)response bodyData:(id)data
{
  responseCopy = response;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = HTTPServerResponse;
  v9 = [(HTTPServerResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_response, response);
    v10->_bodyType = 1;
    objc_storeStrong(&v10->_bodyData, data);
  }

  return v10;
}

- (HTTPServerResponse)initWithResponse:(id)response bodyStream:(id)stream
{
  responseCopy = response;
  streamCopy = stream;
  v12.receiver = self;
  v12.super_class = HTTPServerResponse;
  v9 = [(HTTPServerResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_response, response);
    v10->_bodyType = 2;
    objc_storeStrong(&v10->_bodyStream, stream);
  }

  return v10;
}

@end