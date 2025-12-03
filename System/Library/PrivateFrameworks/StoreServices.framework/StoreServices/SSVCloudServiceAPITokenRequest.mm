@interface SSVCloudServiceAPITokenRequest
- (SSVCloudServiceAPITokenRequest)initWithClientToken:(id)token;
- (SSVCloudServiceAPITokenRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithResponseBlock:(id)block;
@end

@implementation SSVCloudServiceAPITokenRequest

- (SSVCloudServiceAPITokenRequest)initWithClientToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = SSVCloudServiceAPITokenRequest;
  v5 = [(SSRequest *)&v9 init];
  if (v5)
  {
    v6 = [tokenCopy copy];
    clientToken = v5->_clientToken;
    v5->_clientToken = v6;
  }

  return v5;
}

- (void)startWithResponseBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v21 = 136446210;
      v22 = "[SSVCloudServiceAPITokenRequest startWithResponseBlock:]";
      LODWORD(v18) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v21, v18}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __57__SSVCloudServiceAPITokenRequest_startWithResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v17 = blockCopy;
  [(SSRequest *)self _startWithMessageID:191 messageBlock:v19];
}

void __57__SSVCloudServiceAPITokenRequest_startWithResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v5 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        v12 = objc_alloc(MEMORY[0x1E696ABC0]);
        v13 = xpc_dictionary_get_value(v4, "2");
        v6 = [v12 initWithXPCEncoding:v13];

        v14 = [SSVCloudServiceAPITokenResponse alloc];
        v15 = xpc_dictionary_get_value(v4, "3");
        v7 = [(SSVCloudServiceAPITokenResponse *)v14 initWithXPCEncoding:v15];

        goto LABEL_8;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
LABEL_8:
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__SSVCloudServiceAPITokenRequest_startWithResponseBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v9 = *(a1 + 40);
    v18 = v6;
    v19 = v9;
    v17 = v7;
    v10 = v6;
    v11 = v7;
    dispatch_async(v8, block);
  }

  [*(a1 + 32) _shutdownRequest];
}

- (SSVCloudServiceAPITokenRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v10.receiver = self;
    v10.super_class = SSVCloudServiceAPITokenRequest;
    v6 = [(SSRequest *)&v10 init];
    if (v6)
    {
      objc_opt_class();
      v8 = SSXPCDictionaryCopyCFObjectWithClass(v5, "0");
      clientToken = v6->_clientToken;
      v6->_clientToken = v8;
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
  SSXPCDictionarySetObject(v3, "0", self->_clientToken);
  return v3;
}

@end