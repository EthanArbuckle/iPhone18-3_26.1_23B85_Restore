@interface REHTTPRequest
- (NSData)bodyData;
- (REHTTPRequest)initWithConnect:(id)a3 request:(_CFHTTPServerRequest *)a4;
- (id)responseWithStatusCode:(int64_t)a3;
- (void)dealloc;
@end

@implementation REHTTPRequest

- (REHTTPRequest)initWithConnect:(id)a3 request:(_CFHTTPServerRequest *)a4
{
  v7 = a3;
  v28.receiver = self;
  v28.super_class = REHTTPRequest;
  v8 = [(REHTTPRequest *)&v28 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, a3);
    v9->_request = CFRetain(a4);
    v10 = *MEMORY[0x277CBAC40];
    v11 = _CFHTTPServerRequestCopyProperty();
    url = v9->_url;
    v9->_url = v11;

    request = v9->_request;
    v14 = *MEMORY[0x277CBAC30];
    v15 = _CFHTTPServerRequestCopyProperty();
    method = v9->_method;
    v9->_method = v15;

    v17 = v9->_request;
    v18 = *MEMORY[0x277CBAC28];
    v19 = _CFHTTPServerRequestCopyProperty();
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v20 = [v19 objectForKey:*MEMORY[0x277CBAC20]];
    }

    else
    {
      v20 = MEMORY[0x277CBEC10];
    }

    headerFields = v9->_headerFields;
    v9->_headerFields = v20;

    v22 = v9->_request;
    v23 = _CFHTTPServerRequestCopyBodyStream();
    stream = v9->_stream;
    v9->_stream = v23;

    v25 = [MEMORY[0x277CBEB28] data];
    bodyData = v9->_bodyData;
    v9->_bodyData = v25;
  }

  return v9;
}

- (void)dealloc
{
  request = self->_request;
  if (request)
  {
    CFRelease(request);
    self->_request = 0;
  }

  v4.receiver = self;
  v4.super_class = REHTTPRequest;
  [(REHTTPRequest *)&v4 dealloc];
}

- (id)responseWithStatusCode:(int64_t)a3
{
  v3 = [[REHTTPResponse alloc] initWithRequest:self statusCode:a3];

  return v3;
}

- (NSData)bodyData
{
  v2 = [(NSMutableData *)self->_bodyData copy];

  return v2;
}

@end