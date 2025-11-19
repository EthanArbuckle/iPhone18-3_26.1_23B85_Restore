@interface SSVSAPSignatureDataSource
- (NSData)HTTPBody;
- (NSString)HTTPMethod;
- (SSVSAPSignatureDataSource)initWithURLRequest:(id)a3;
- (SSVSAPSignatureDataSource)initWithURLRequestProperties:(id)a3;
- (SSVSAPSignatureDataSource)initWithURLResponse:(id)a3 bodyData:(id)a4;
- (id)valueForHTTPHeader:(id)a3;
- (id)valueForQueryParameter:(id)a3;
@end

@implementation SSVSAPSignatureDataSource

- (SSVSAPSignatureDataSource)initWithURLRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SSVSAPSignatureDataSource;
  v6 = [(SSVSAPSignatureDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
  }

  return v7;
}

- (SSVSAPSignatureDataSource)initWithURLRequestProperties:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SSVSAPSignatureDataSource;
  v6 = [(SSVSAPSignatureDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestProperties, a3);
  }

  return v7;
}

- (SSVSAPSignatureDataSource)initWithURLResponse:(id)a3 bodyData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SSVSAPSignatureDataSource;
  v9 = [(SSVSAPSignatureDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bodyData, a4);
    objc_storeStrong(&v10->_response, a3);
  }

  return v10;
}

- (NSData)HTTPBody
{
  bodyData = self->_bodyData;
  if (bodyData)
  {
    request = bodyData;
    goto LABEL_7;
  }

  if (self->_request)
  {
    request = self->_request;
  }

  else
  {
    request = self->_requestProperties;
    if (!request)
    {
      goto LABEL_7;
    }
  }

  request = [(NSData *)request HTTPBody];
LABEL_7:

  return request;
}

- (NSString)HTTPMethod
{
  request = self->_request;
  if (request || (request = self->_requestProperties) != 0)
  {
    request = [request HTTPMethod];
    v2 = vars8;
  }

  return request;
}

- (id)valueForHTTPHeader:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__74;
  v20 = __Block_byref_object_dispose__74;
  v21 = 0;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_11;
  }

  request = self->_request;
  if (request)
  {
    v6 = [(NSURLRequest *)request allHTTPHeaderFields];
  }

  else
  {
    requestProperties = self->_requestProperties;
    if (requestProperties)
    {
      v6 = [(SSURLRequestProperties *)requestProperties HTTPHeaders];
    }

    else
    {
      response = self->_response;
      if (!response)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v6 = [(NSHTTPURLResponse *)response allHeaderFields];
    }
  }

  v10 = v6;
LABEL_10:
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__SSVSAPSignatureDataSource_valueForHTTPHeader___block_invoke;
  v13[3] = &unk_1E84B3470;
  v14 = v4;
  v15 = &v16;
  [v10 enumerateKeysAndObjectsUsingBlock:v13];

  v7 = v17[5];
LABEL_11:
  v11 = v7;
  _Block_object_dispose(&v16, 8);

  return v11;
}

void __48__SSVSAPSignatureDataSource_valueForHTTPHeader___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if (![a2 caseInsensitiveCompare:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)valueForQueryParameter:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__74;
  v19 = __Block_byref_object_dispose__74;
  v20 = 0;
  if (v4)
  {
    request = self->_request;
    if (request || (request = self->_requestProperties) != 0 || (request = self->_response) != 0)
    {
      v6 = [request URL];
      if (v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v6 resolvingAgainstBaseURL:0];
        v8 = [v7 queryItems];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __52__SSVSAPSignatureDataSource_valueForQueryParameter___block_invoke;
        v12[3] = &unk_1E84B3498;
        v13 = v4;
        v14 = &v15;
        [v8 enumerateObjectsUsingBlock:v12];
      }
    }

    v9 = v16[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __52__SSVSAPSignatureDataSource_valueForQueryParameter___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 name];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = [v11 value];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

@end