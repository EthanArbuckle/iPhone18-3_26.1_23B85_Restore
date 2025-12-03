@interface SSAskPermissionActionRequest
- (SSAskPermissionActionRequest)initWithURL:(id)l;
- (SSAskPermissionActionRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithCompletionBlock:(id)block;
@end

@implementation SSAskPermissionActionRequest

- (SSAskPermissionActionRequest)initWithURL:(id)l
{
  v5.receiver = self;
  v5.super_class = SSAskPermissionActionRequest;
  result = [(SSRequest *)&v5 init];
  if (result)
  {
    result->_url = l;
  }

  return result;
}

- (void)startWithCompletionBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
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

    if (os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_FAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 2;
    }

    if (v8)
    {
      v21 = 136446210;
      v22 = "[SSAskPermissionActionRequest startWithCompletionBlock:]";
      LODWORD(v19) = 12;
      v18 = &v21;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v21, v19}];
        free(v10);
        SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __57__SSAskPermissionActionRequest_startWithCompletionBlock___block_invoke;
  v20[3] = &unk_1E84AC760;
  v20[4] = self;
  v20[5] = block;
  [(SSRequest *)self _startWithMessageID:140 messageBlock:v20, v18];
}

uint64_t __57__SSAskPermissionActionRequest_startWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      v3 = SSError(@"SSErrorDomain", 121, 0, 0);
    }

    else
    {
      v3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a2, "2")}];
    }

    v4 = v3;
    global_queue = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__SSAskPermissionActionRequest_startWithCompletionBlock___block_invoke_2;
    v8[3] = &unk_1E84AC738;
    v6 = *(a1 + 40);
    v8[4] = v4;
    v8[5] = v6;
    dispatch_async(global_queue, v8);
  }

  return [*(a1 + 32) _shutdownRequest];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  dispatchQueue = self->super._dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__SSAskPermissionActionRequest_copyXPCEncoding__block_invoke;
  v6[3] = &unk_1E84AC458;
  v6[4] = v3;
  v6[5] = self;
  dispatch_sync(dispatchQueue, v6);
  return v3;
}

void __47__SSAskPermissionActionRequest_copyXPCEncoding__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 96) absoluteString];

  SSXPCDictionarySetCFObject(v1, "1", v2);
}

- (SSAskPermissionActionRequest)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v8.receiver = self;
    v8.super_class = SSAskPermissionActionRequest;
    v5 = [(SSRequest *)&v8 init];
    if (v5)
    {
      objc_opt_class();
      v7 = SSXPCDictionaryCopyCFObjectWithClass(encoding, "1");
      v5->_url = [MEMORY[0x1E695DFF8] URLWithString:v7];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end