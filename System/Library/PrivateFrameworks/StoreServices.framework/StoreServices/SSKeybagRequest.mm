@interface SSKeybagRequest
- (SSKeybagRequest)initWithAccountIdentifier:(id)identifier;
- (SSKeybagRequest)initWithXPCEncoding:(id)encoding;
- (id)accountIdentifier;
- (id)contentIdentifier;
- (id)copyXPCEncoding;
- (int64_t)keybagOptions;
- (void)dealloc;
- (void)setContentIdentifier:(id)identifier;
- (void)setKeybagOptions:(int64_t)options;
- (void)startWithCompletionBlock:(id)block;
@end

@implementation SSKeybagRequest

- (SSKeybagRequest)initWithAccountIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = SSKeybagRequest;
  v4 = [(SSRequest *)&v6 init];
  if (v4)
  {
    v4->_accountID = [identifier copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSKeybagRequest;
  [(SSRequest *)&v3 dealloc];
}

- (id)accountIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__45;
  v10 = __Block_byref_object_dispose__45;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SSKeybagRequest_accountIdentifier__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __36__SSKeybagRequest_accountIdentifier__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 96);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)contentIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__45;
  v10 = __Block_byref_object_dispose__45;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SSKeybagRequest_contentIdentifier__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __36__SSKeybagRequest_contentIdentifier__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 104) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (int64_t)keybagOptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__SSKeybagRequest_keybagOptions__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setContentIdentifier:(id)identifier
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__SSKeybagRequest_setContentIdentifier___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = identifier;
  dispatch_async(dispatchQueue, v4);
}

void *__40__SSKeybagRequest_setContentIdentifier___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 104) != result)
  {
    result = [result copy];
    *(*(a1 + 32) + 104) = result;
  }

  return result;
}

- (void)setKeybagOptions:(int64_t)options
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__SSKeybagRequest_setKeybagOptions___block_invoke;
  v4[3] = &unk_1E84AD4C0;
  v4[4] = self;
  v4[5] = options;
  dispatch_sync(dispatchQueue, v4);
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
      v22 = "[SSKeybagRequest startWithCompletionBlock:]";
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
  v20[2] = __44__SSKeybagRequest_startWithCompletionBlock___block_invoke;
  v20[3] = &unk_1E84AC760;
  v20[4] = self;
  v20[5] = block;
  [(SSRequest *)self _startWithMessageID:86 messageBlock:v20, v18];
}

uint64_t __44__SSKeybagRequest_startWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      v4 = SSError(@"SSErrorDomain", 121, 0, 0);
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a2, "2")}];
      if (xpc_dictionary_get_BOOL(a2, "1"))
      {
LABEL_8:
        global_queue = dispatch_get_global_queue(0, 0);
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __44__SSKeybagRequest_startWithCompletionBlock___block_invoke_2;
        v8[3] = &unk_1E84AC738;
        v6 = *(a1 + 40);
        v8[4] = v4;
        v8[5] = v6;
        dispatch_async(global_queue, v8);

        return [*(a1 + 32) _shutdownRequest];
      }
    }

    if (!v4)
    {
      v4 = SSError(@"SSErrorDomain", 100, 0, 0);
    }

    goto LABEL_8;
  }

  return [*(a1 + 32) _shutdownRequest];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  dispatchQueue = self->super._dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__SSKeybagRequest_copyXPCEncoding__block_invoke;
  v6[3] = &unk_1E84AC458;
  v6[4] = v3;
  v6[5] = self;
  dispatch_sync(dispatchQueue, v6);
  return v3;
}

void __34__SSKeybagRequest_copyXPCEncoding__block_invoke(uint64_t a1)
{
  SSXPCDictionarySetCFObject(*(a1 + 32), "50", *(*(a1 + 40) + 96));
  SSXPCDictionarySetCFObject(*(a1 + 32), "52", *(*(a1 + 40) + 104));
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 112);

  xpc_dictionary_set_int64(v2, "51", v3);
}

- (SSKeybagRequest)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSKeybagRequest;
    v5 = [(SSRequest *)&v7 init];
    if (v5)
    {
      objc_opt_class();
      v5->_accountID = SSXPCDictionaryCopyCFObjectWithClass(encoding, "50");
      objc_opt_class();
      v5->_contentIdentifier = SSXPCDictionaryCopyCFObjectWithClass(encoding, "52");
      v5->_options = xpc_dictionary_get_int64(encoding, "51");
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end