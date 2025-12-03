@interface SSVClaimApplicationsRequest
- (SSVClaimApplicationsRequest)initWithClaimStyle:(int64_t)style;
- (SSVClaimApplicationsRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithResponseBlock:(id)block;
@end

@implementation SSVClaimApplicationsRequest

- (SSVClaimApplicationsRequest)initWithClaimStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = SSVClaimApplicationsRequest;
  result = [(SSRequest *)&v5 init];
  if (result)
  {
    result->_claimStyle = style;
  }

  return result;
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
      v22 = "[SSVClaimApplicationsRequest startWithResponseBlock:]";
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
  v19[2] = __54__SSVClaimApplicationsRequest_startWithResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v17 = blockCopy;
  [(SSRequest *)self _startWithMessageID:138 messageBlock:v19];
}

void __54__SSVClaimApplicationsRequest_startWithResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v8 = SSError(@"SSErrorDomain", 121, 0, 0);
      v5 = 0;
      v9 = 0;
    }

    else
    {
      objc_opt_class();
      v5 = SSXPCDictionaryCopyCFObjectWithClass(v4, "3");
      v6 = objc_alloc(MEMORY[0x1E696ABC0]);
      v7 = xpc_dictionary_get_value(v4, "2");
      v8 = [v6 initWithXPCEncoding:v7];

      v9 = xpc_dictionary_get_BOOL(v4, "1");
      if (v9)
      {
LABEL_8:
        v10 = dispatch_get_global_queue(0, 0);
        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __54__SSVClaimApplicationsRequest_startWithResponseBlock___block_invoke_2;
        v17 = &unk_1E84AD020;
        v11 = *(a1 + 40);
        v19 = v8;
        v20 = v11;
        v21 = v9;
        v18 = v5;
        v12 = v8;
        v13 = v5;
        dispatch_async(v10, &v14);

        goto LABEL_9;
      }
    }

    if (!v8)
    {
      v8 = SSError(@"SSErrorDomain", 100, 0, 0);
    }

    goto LABEL_8;
  }

LABEL_9:
  [*(a1 + 32) _shutdownRequest];
}

- (SSVClaimApplicationsRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v8.receiver = self;
    v8.super_class = SSVClaimApplicationsRequest;
    v6 = [(SSRequest *)&v8 init];
    if (v6)
    {
      v6->_claimStyle = xpc_dictionary_get_int64(v5, "0");
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
  xpc_dictionary_set_int64(v3, "0", self->_claimStyle);
  return v3;
}

@end