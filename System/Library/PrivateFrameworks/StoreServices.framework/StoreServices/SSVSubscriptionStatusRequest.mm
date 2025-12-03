@interface SSVSubscriptionStatusRequest
- (SSVSubscriptionStatusRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithCompletionBlock:(id)block;
- (void)startWithStatusResponseBlock:(id)block;
@end

@implementation SSVSubscriptionStatusRequest

- (void)startWithStatusResponseBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
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
      v22 = 136446210;
      v23 = "[SSVSubscriptionStatusRequest startWithStatusResponseBlock:]";
      LODWORD(v19) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v22, v19}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  requestMessage = [objc_opt_class() requestMessage];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __61__SSVSubscriptionStatusRequest_startWithStatusResponseBlock___block_invoke;
  v20[3] = &unk_1E84ABEF0;
  v20[4] = self;
  v21 = blockCopy;
  v18 = blockCopy;
  [(SSRequest *)self _startWithMessageID:requestMessage messageBlock:v20];
}

void __61__SSVSubscriptionStatusRequest_startWithStatusResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 40))
  {
    goto LABEL_9;
  }

  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_7;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_7:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    v8 = 1;
    goto LABEL_8;
  }

  v13 = objc_alloc(MEMORY[0x1E696ABC0]);
  v14 = xpc_dictionary_get_value(v4, "2");
  v6 = [v13 initWithXPCEncoding:v14];

  v8 = xpc_dictionary_get_BOOL(v4, "3");
  v15 = [SSVSubscriptionStatus alloc];
  v16 = xpc_dictionary_get_value(v4, "4");
  v7 = [(SSVSubscriptionStatus *)v15 initWithXPCEncoding:v16];

LABEL_8:
  v9 = dispatch_get_global_queue(0, 0);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __61__SSVSubscriptionStatusRequest_startWithStatusResponseBlock___block_invoke_2;
  v20 = &unk_1E84AD020;
  v10 = *(a1 + 40);
  v22 = v6;
  v23 = v10;
  v24 = v8;
  v21 = v7;
  v11 = v6;
  v12 = v7;
  dispatch_async(v9, &v17);

  if (v8)
  {
LABEL_9:
    [*(a1 + 32) _shutdownRequest];
  }
}

- (void)startWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__SSVSubscriptionStatusRequest_startWithCompletionBlock___block_invoke;
  v6[3] = &unk_1E84B1DF8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(SSVSubscriptionStatusRequest *)self startWithStatusResponseBlock:v6];
}

uint64_t __57__SSVSubscriptionStatusRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

- (SSVSubscriptionStatusRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v18.receiver = self;
    v18.super_class = SSVSubscriptionStatusRequest;
    v6 = [(SSRequest *)&v18 init];
    if (v6)
    {
      v6->_authenticatesIfNecessary = xpc_dictionary_get_BOOL(v5, "3");
      v8 = [SSAuthenticationContext alloc];
      v9 = xpc_dictionary_get_value(v5, "0");
      v10 = [(SSAuthenticationContext *)v8 initWithXPCEncoding:v9];
      authenticationContext = v6->_authenticationContext;
      v6->_authenticationContext = v10;

      v6->_carrierBundleProvisioningStyle = xpc_dictionary_get_int64(v5, "1");
      v12 = objc_opt_class();
      v13 = SSXPCDictionaryCopyObjectWithClass(v5, "4", v12);
      localizedAuthenticationReason = v6->_localizedAuthenticationReason;
      v6->_localizedAuthenticationReason = v13;

      v15 = objc_opt_class();
      v16 = SSXPCDictionaryCopyObjectWithClass(v5, "2", v15);
      reason = v6->_reason;
      v6->_reason = v16;
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
  xpc_dictionary_set_BOOL(v3, "3", self->_authenticatesIfNecessary);
  SSXPCDictionarySetObject(v3, "0", self->_authenticationContext);
  xpc_dictionary_set_int64(v3, "1", self->_carrierBundleProvisioningStyle);
  SSXPCDictionarySetObject(v3, "4", self->_localizedAuthenticationReason);
  SSXPCDictionarySetObject(v3, "2", self->_reason);
  return v3;
}

@end