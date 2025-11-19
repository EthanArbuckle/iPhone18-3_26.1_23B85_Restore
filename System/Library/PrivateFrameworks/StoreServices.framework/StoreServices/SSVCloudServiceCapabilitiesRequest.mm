@interface SSVCloudServiceCapabilitiesRequest
- (SSVCloudServiceCapabilitiesRequest)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (void)startWithCompletionBlock:(id)a3;
- (void)startWithResponseBlock:(id)a3;
@end

@implementation SSVCloudServiceCapabilitiesRequest

- (void)startWithResponseBlock:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v38 = 136446210;
      v39 = "[SSVCloudServiceCapabilitiesRequest startWithResponseBlock:]";
      LODWORD(v35) = 12;
      v34 = &v38;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v38, v35}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v8);
    }

    goto LABEL_15;
  }

LABEL_16:
  v17 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v17)
  {
    v17 = +[SSLogConfig sharedConfig];
  }

  v18 = [v17 shouldLog];
  if ([v17 shouldLogToDisk])
  {
    v19 = v18 | 2;
  }

  else
  {
    v19 = v18;
  }

  v20 = [v17 OSLogObject];
  if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v19 &= 2u;
  }

  if (!v19)
  {
    goto LABEL_26;
  }

  v21 = objc_opt_class();
  v22 = *(&self->super._usesTaskCompletionAssertions + 1);
  v23 = MEMORY[0x1E696AF00];
  v24 = v21;
  v25 = [v23 callStackSymbols];
  v38 = 138543874;
  v39 = v21;
  v40 = 1024;
  v41 = v22;
  v42 = 2114;
  v43 = v25;
  LODWORD(v35) = 28;
  v26 = _os_log_send_and_compose_impl();

  if (v26)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v38, v35}];
    free(v26);
    SSFileLog(v17, @"%@", v27, v28, v29, v30, v31, v32, v20);
LABEL_26:
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __61__SSVCloudServiceCapabilitiesRequest_startWithResponseBlock___block_invoke;
  v36[3] = &unk_1E84ABEF0;
  v36[4] = self;
  v37 = v4;
  v33 = v4;
  [(SSRequest *)self _startWithMessageID:175 messageBlock:v36];
}

void __61__SSVCloudServiceCapabilitiesRequest_startWithResponseBlock___block_invoke(uint64_t a1, void *a2)
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

        v14 = [SSVCloudServiceCapabilitiesResponse alloc];
        v15 = xpc_dictionary_get_value(v4, "3");
        v7 = [(SSVCloudServiceCapabilitiesResponse *)v14 initWithXPCEncoding:v15];

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
    block[2] = __61__SSVCloudServiceCapabilitiesRequest_startWithResponseBlock___block_invoke_2;
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

- (void)startWithCompletionBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__SSVCloudServiceCapabilitiesRequest_startWithCompletionBlock___block_invoke;
  v6[3] = &unk_1E84B2FC8;
  v7 = v4;
  v5 = v4;
  [(SSVCloudServiceCapabilitiesRequest *)self startWithResponseBlock:v6];
}

uint64_t __63__SSVCloudServiceCapabilitiesRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (SSVCloudServiceCapabilitiesRequest)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v8.receiver = self;
    v8.super_class = SSVCloudServiceCapabilitiesRequest;
    v6 = [(SSRequest *)&v8 init];
    if (v6)
    {
      *(&v6->super._usesTaskCompletionAssertions + 1) = xpc_dictionary_get_BOOL(v5, "0");
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
  xpc_dictionary_set_BOOL(v3, "0", *(&self->super._usesTaskCompletionAssertions + 1));
  return v3;
}

@end