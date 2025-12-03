@interface SSVMediaContentTasteUpdateRequest
- (SSVMediaContentTasteUpdateRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithCompletionBlock:(id)block;
- (void)startWithResponseBlock:(id)block;
@end

@implementation SSVMediaContentTasteUpdateRequest

- (void)startWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SSVMediaContentTasteUpdateRequest_startWithCompletionBlock___block_invoke;
  v6[3] = &unk_1E84B0E60;
  v7 = blockCopy;
  v5 = blockCopy;
  [(SSVMediaContentTasteUpdateRequest *)self startWithResponseBlock:v6];
}

- (SSVMediaContentTasteUpdateRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v16.receiver = self;
    v16.super_class = SSVMediaContentTasteUpdateRequest;
    v6 = [(SSRequest *)&v16 init];
    if (v6)
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x3032000000;
      v13 = __Block_byref_object_copy__40;
      v14 = __Block_byref_object_dispose__40;
      v15 = 0;
      v8 = xpc_dictionary_get_value(v5, "0");
      if (MEMORY[0x1DA6E0380]() == MEMORY[0x1E69E9E50])
      {
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __57__SSVMediaContentTasteUpdateRequest_initWithXPCEncoding___block_invoke;
        applier[3] = &unk_1E84B0E88;
        applier[4] = &v10;
        xpc_array_apply(v8, applier);
      }

      objc_storeStrong(&v6->_contentTasteItemUpdates, v11[5]);
      v6->_shouldInvalidateLocalCache = xpc_dictionary_get_BOOL(v5, "1");

      _Block_object_dispose(&v10, 8);
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

uint64_t __57__SSVMediaContentTasteUpdateRequest_initWithXPCEncoding___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[SSVMediaContentTasteItemUpdate alloc] initWithXPCEncoding:v4];

  if (v5)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v6 addObject:v5];
  }

  return 1;
}

- (id)copyXPCEncoding
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = xpc_array_create(0, 0);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_contentTasteItemUpdates;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        copyXPCEncoding = [*(*(&v12 + 1) + 8 * v9) copyXPCEncoding];
        if (copyXPCEncoding)
        {
          xpc_array_append_value(v4, copyXPCEncoding);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  xpc_dictionary_set_value(v3, "0", v4);
  xpc_dictionary_set_BOOL(v3, "1", self->_shouldInvalidateLocalCache);

  return v3;
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
      v22 = "[SSVMediaContentTasteUpdateRequest startWithResponseBlock:]";
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
  v19[2] = __60__SSVMediaContentTasteUpdateRequest_startWithResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v17 = blockCopy;
  [(SSRequest *)self _startWithMessageID:163 messageBlock:v19];
}

void __60__SSVMediaContentTasteUpdateRequest_startWithResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v10 = SSError(@"SSErrorDomain", 121, 0, 0);
      v7 = 0;
    }

    else
    {
      v5 = [SSVMediaContentTasteUpdateResponse alloc];
      v6 = xpc_dictionary_get_value(v4, "1");
      v7 = [(SSVMediaContentTasteUpdateResponse *)v5 initWithXPCEncoding:v6];

      v8 = objc_alloc(MEMORY[0x1E696ABC0]);
      v9 = xpc_dictionary_get_value(v4, "2");
      v10 = [v8 initWithXPCEncoding:v9];
    }

    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__SSVMediaContentTasteUpdateRequest_startWithResponseBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v12 = *(a1 + 40);
    v17 = v10;
    v18 = v12;
    v16 = v7;
    v13 = v10;
    v14 = v7;
    dispatch_async(v11, block);
  }

  [*(a1 + 32) _shutdownRequest];
}

@end