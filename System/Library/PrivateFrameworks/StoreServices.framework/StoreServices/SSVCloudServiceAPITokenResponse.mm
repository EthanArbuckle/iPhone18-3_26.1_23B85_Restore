@interface SSVCloudServiceAPITokenResponse
- (SSVCloudServiceAPITokenResponse)initWithToken:(id)a3 error:(id)a4;
- (SSVCloudServiceAPITokenResponse)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
@end

@implementation SSVCloudServiceAPITokenResponse

- (SSVCloudServiceAPITokenResponse)initWithToken:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SSVCloudServiceAPITokenResponse;
  v8 = [(SSVCloudServiceAPITokenResponse *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    apiToken = v8->_apiToken;
    v8->_apiToken = v9;

    v11 = [v7 copy];
    error = v8->_error;
    v8->_error = v11;
  }

  return v8;
}

- (SSVCloudServiceAPITokenResponse)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v14.receiver = self;
    v14.super_class = SSVCloudServiceAPITokenResponse;
    v6 = [(SSVCloudServiceAPITokenResponse *)&v14 init];
    if (v6)
    {
      objc_opt_class();
      v8 = SSXPCDictionaryCopyCFObjectWithClass(v5, "0");
      apiToken = v6->_apiToken;
      v6->_apiToken = v8;

      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v11 = xpc_dictionary_get_value(v5, "1");
      v12 = [v10 initWithXPCEncoding:v11];
      error = v6->_error;
      v6->_error = v12;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_apiToken);
  SSXPCDictionarySetObject(v3, "1", self->_error);
  return v3;
}

@end