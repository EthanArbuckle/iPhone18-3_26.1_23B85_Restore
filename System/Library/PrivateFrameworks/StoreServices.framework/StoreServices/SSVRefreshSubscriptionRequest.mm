@interface SSVRefreshSubscriptionRequest
- (SSVRefreshSubscriptionRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithCompletionBlock:(id)block;
- (void)startWithResponseBlock:(id)block;
@end

@implementation SSVRefreshSubscriptionRequest

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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
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
      v22 = "[SSVRefreshSubscriptionRequest startWithResponseBlock:]";
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
  v19[2] = __56__SSVRefreshSubscriptionRequest_startWithResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v17 = blockCopy;
  [(SSRequest *)self _startWithMessageID:147 messageBlock:v19];
}

void __56__SSVRefreshSubscriptionRequest_startWithResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v7 = SSError(@"SSErrorDomain", 121, 0, 0);
      v10 = 0;
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x1E696ABC0]);
      v6 = xpc_dictionary_get_value(v4, "2");
      v7 = [v5 initWithXPCEncoding:v6];

      v8 = [SSVSubscriptionResponse alloc];
      v9 = xpc_dictionary_get_value(v4, "3");
      v10 = [(SSVSubscriptionResponse *)v8 initWithXPCEncoding:v9];
    }

    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__SSVRefreshSubscriptionRequest_startWithResponseBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v12 = *(a1 + 40);
    v17 = v7;
    v18 = v12;
    v16 = v10;
    v13 = v7;
    v14 = v10;
    dispatch_async(v11, block);
  }

  [*(a1 + 32) _shutdownRequest];
}

- (void)startWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__SSVRefreshSubscriptionRequest_startWithCompletionBlock___block_invoke;
  v6[3] = &unk_1E84AD220;
  v7 = blockCopy;
  v5 = blockCopy;
  [(SSVRefreshSubscriptionRequest *)self startWithResponseBlock:v6];
}

- (SSVRefreshSubscriptionRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v12.receiver = self;
    v12.super_class = SSVRefreshSubscriptionRequest;
    v6 = [(SSRequest *)&v12 init];
    if (v6)
    {
      v8 = [SSAuthenticationContext alloc];
      v9 = xpc_dictionary_get_value(v5, "0");
      v10 = [(SSAuthenticationContext *)v8 initWithXPCEncoding:v9];
      authenticationContext = v6->_authenticationContext;
      v6->_authenticationContext = v10;

      v6->_requestingOfflineSlot = xpc_dictionary_get_BOOL(v5, "1");
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
  SSXPCDictionarySetObject(v3, "0", self->_authenticationContext);
  xpc_dictionary_set_BOOL(v3, "1", self->_requestingOfflineSlot);
  return v3;
}

@end