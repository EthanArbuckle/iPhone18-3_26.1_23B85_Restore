@interface SSVCloudServiceAPITokenResponse
- (SSVCloudServiceAPITokenResponse)initWithToken:(id)token error:(id)error;
- (SSVCloudServiceAPITokenResponse)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
@end

@implementation SSVCloudServiceAPITokenResponse

- (SSVCloudServiceAPITokenResponse)initWithToken:(id)token error:(id)error
{
  tokenCopy = token;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = SSVCloudServiceAPITokenResponse;
  v8 = [(SSVCloudServiceAPITokenResponse *)&v14 init];
  if (v8)
  {
    v9 = [tokenCopy copy];
    apiToken = v8->_apiToken;
    v8->_apiToken = v9;

    v11 = [errorCopy copy];
    error = v8->_error;
    v8->_error = v11;
  }

  return v8;
}

- (SSVCloudServiceAPITokenResponse)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
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