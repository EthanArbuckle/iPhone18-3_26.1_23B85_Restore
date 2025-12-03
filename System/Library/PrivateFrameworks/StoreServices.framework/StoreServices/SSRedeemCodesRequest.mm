@interface SSRedeemCodesRequest
- (NSArray)redeemCodes;
- (SSAuthenticationContext)authenticationContext;
- (SSRedeemCodesRequest)initWithRedeemCodes:(id)codes;
- (SSRedeemCodesRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)dealloc;
- (void)setAuthenticationContext:(id)context;
- (void)startWithCompletionBlock:(id)block;
- (void)startWithRedeemResponseBlock:(id)block;
@end

@implementation SSRedeemCodesRequest

- (SSRedeemCodesRequest)initWithRedeemCodes:(id)codes
{
  v6.receiver = self;
  v6.super_class = SSRedeemCodesRequest;
  v4 = [(SSRequest *)&v6 init];
  if (v4)
  {
    v4->_redeemCodes = [codes copy];
    v4->_headless = 1;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSRedeemCodesRequest;
  [(SSRequest *)&v3 dealloc];
}

- (SSAuthenticationContext)authenticationContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__47;
  v10 = __Block_byref_object_dispose__47;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__SSRedeemCodesRequest_authenticationContext__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __45__SSRedeemCodesRequest_authenticationContext__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 96);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSArray)redeemCodes
{
  v2 = self->_redeemCodes;

  return v2;
}

- (void)setAuthenticationContext:(id)context
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__SSRedeemCodesRequest_setAuthenticationContext___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = context;
  dispatch_sync(dispatchQueue, v4);
}

uint64_t __49__SSRedeemCodesRequest_setAuthenticationContext___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 96);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(v2 + 32) + 96) = result;
  }

  return result;
}

- (void)startWithRedeemResponseBlock:(id)block
{
  v43 = *MEMORY[0x1E69E9840];
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

    if (os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 2;
    }

    if (v8)
    {
      v37 = 136446210;
      v38 = "[SSRedeemCodesRequest startWithRedeemResponseBlock:]";
      LODWORD(v35) = 12;
      v34 = &v37;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v37, v35}];
        free(v10);
        SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }
  }

  if (![(SSRedeemCodesRequest *)self logCorrelationKey])
  {
    [(SSRedeemCodesRequest *)self setLogCorrelationKey:AMSGenerateLogCorrelationKey()];
  }

  v18 = +[SSLogConfig sharedConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    v20 = shouldLog2 | 2;
  }

  else
  {
    v20 = shouldLog2;
  }

  if (!os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v20 &= 2u;
  }

  if (v20)
  {
    v21 = objc_opt_class();
    logCorrelationKey = [(SSRedeemCodesRequest *)self logCorrelationKey];
    redeemCodes = [(SSRedeemCodesRequest *)self redeemCodes];
    v37 = 138543874;
    v38 = v21;
    v39 = 2114;
    v40 = logCorrelationKey;
    v41 = 2112;
    v42 = redeemCodes;
    LODWORD(v35) = 32;
    v24 = _os_log_send_and_compose_impl();
    if (v24)
    {
      v25 = v24;
      v26 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, &v37, v35}];
      free(v25);
      SSFileLog(v18, @"%@", v27, v28, v29, v30, v31, v32, v26);
    }
  }

  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_async(global_queue, &__block_literal_global_23);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __53__SSRedeemCodesRequest_startWithRedeemResponseBlock___block_invoke_2;
  v36[3] = &unk_1E84AF748;
  v36[5] = global_queue;
  v36[6] = block;
  v36[4] = self;
  [(SSRequest *)self _startWithMessageID:91 messageBlock:v36];
}

uint64_t __53__SSRedeemCodesRequest_startWithRedeemResponseBlock___block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];

  return [v0 postNotificationName:@"SSVNetworkingDidStartNotification" object:0];
}

void __53__SSRedeemCodesRequest_startWithRedeemResponseBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      v4 = SSError(@"SSErrorDomain", 121, 0, 0);
      v5 = 0;
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a2, "2")}];
      v5 = [[SSRedeemCodesResponse alloc] initWithXPCEncoding:xpc_dictionary_get_value(a2, "1")];
    }

    v6 = +[SSLogConfig sharedConfig];
    v7 = v6;
    if (v4)
    {
      if (!v6)
      {
        v7 = +[SSLogConfig sharedConfig];
      }

      v8 = [v7 shouldLog];
      if ([v7 shouldLogToDisk])
      {
        v9 = v8 | 2;
      }

      else
      {
        v9 = v8;
      }

      if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v9 &= 2u;
      }

      if (!v9)
      {
        goto LABEL_26;
      }

      v10 = objc_opt_class();
      v11 = [*(a1 + 32) logCorrelationKey];
      *v27 = 138543874;
      *&v27[4] = v10;
      *&v27[12] = 2114;
      *&v27[14] = v11;
      *&v27[22] = 2114;
      v28 = AMSLogableError();
      LODWORD(v26) = 32;
      v25 = v27;
    }

    else
    {
      if (!v6)
      {
        v7 = +[SSLogConfig sharedConfig];
      }

      v12 = [v7 shouldLog];
      if ([v7 shouldLogToDisk])
      {
        v13 = v12 | 2;
      }

      else
      {
        v13 = v12;
      }

      if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v13 &= 2u;
      }

      if (!v13)
      {
        goto LABEL_26;
      }

      v14 = objc_opt_class();
      v15 = [*(a1 + 32) logCorrelationKey];
      *v27 = 138543618;
      *&v27[4] = v14;
      *&v27[12] = 2114;
      *&v27[14] = v15;
      LODWORD(v26) = 22;
      v25 = v27;
    }

    v16 = _os_log_send_and_compose_impl();
    if (v16)
    {
      v17 = v16;
      v18 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, v27, v26, *v27, *&v27[16]}];
      free(v17);
      SSFileLog(v7, @"%@", v19, v20, v21, v22, v23, v24, v18);
    }

LABEL_26:
    (*(*(a1 + 48) + 16))();
  }

  [*(a1 + 32) _shutdownRequest];
  dispatch_async(*(a1 + 40), &__block_literal_global_17);
}

uint64_t __53__SSRedeemCodesRequest_startWithRedeemResponseBlock___block_invoke_15()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];

  return [v0 postNotificationName:@"SSVNetworkingDidStopNotification" object:0];
}

- (void)startWithCompletionBlock:(id)block
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__SSRedeemCodesRequest_startWithCompletionBlock___block_invoke;
  v3[3] = &unk_1E84B1818;
  v3[4] = block;
  [(SSRedeemCodesRequest *)self startWithRedeemResponseBlock:v3];
}

uint64_t __49__SSRedeemCodesRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (SSRedeemCodesRequest)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSRedeemCodesRequest;
    v5 = [(SSRequest *)&v7 init];
    if (v5)
    {
      v5->_authenticationContext = [[SSAuthenticationContext alloc] initWithXPCEncoding:xpc_dictionary_get_value(encoding, "0")];
      objc_opt_class();
      v5->_redeemCodes = SSXPCDictionaryCopyCFObjectWithClass(encoding, "1");
      v5->_headless = xpc_dictionary_get_BOOL(encoding, "2");
      v5->_cameraRecognized = xpc_dictionary_get_BOOL(encoding, "3");
      objc_opt_class();
      v5->_logCorrelationKey = SSXPCDictionaryCopyCFObjectWithClass(encoding, "4");
      objc_opt_class();
      v5->_params = SSXPCDictionaryCopyCFObjectWithClass(encoding, "5");
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_authenticationContext);
  SSXPCDictionarySetCFObject(v3, "1", self->_redeemCodes);
  xpc_dictionary_set_BOOL(v3, "2", self->_headless);
  xpc_dictionary_set_BOOL(v3, "3", self->_cameraRecognized);
  SSXPCDictionarySetCFObject(v3, "4", self->_logCorrelationKey);
  SSXPCDictionarySetCFObject(v3, "5", self->_params);
  return v3;
}

@end