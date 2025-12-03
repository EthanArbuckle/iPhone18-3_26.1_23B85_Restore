@interface WBSLazyURLCredentialCache
- (id)credentials;
- (void)getCredentialsWithCompletionHandler:(id)handler;
- (void)invalidate;
@end

@implementation WBSLazyURLCredentialCache

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B8447000, v3, OS_LOG_TYPE_INFO, "Invalidating lazy credential cache <%p>", buf, 0xCu);
  }

  internalQueue = self->super._internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__WBSLazyURLCredentialCache_invalidate__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(internalQueue, block);
  v5 = *MEMORY[0x1E69E9840];
}

void __39__WBSLazyURLCredentialCache_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

- (id)credentials
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__17;
  v10 = __Block_byref_object_dispose__17;
  v11 = 0;
  internalQueue = self->super._internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__WBSLazyURLCredentialCache_credentials__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__WBSLazyURLCredentialCache_credentials__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    v3 = (*(*(v2 + 24) + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;
  }

  v6 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    v9 = v6;
    v14 = 134218240;
    v15 = v7;
    v16 = 2048;
    v17 = [v8 count];
    _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_INFO, "Returning credentials from lazy cache <%p>, which contain %lu items", &v14, 0x16u);
  }

  v10 = [*(*(a1 + 32) + 16) copy];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *MEMORY[0x1E69E9840];
}

- (void)getCredentialsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  internalQueue = self->super._internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__WBSLazyURLCredentialCache_getCredentialsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF16B8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(internalQueue, v7);
}

void __65__WBSLazyURLCredentialCache_getCredentialsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    v3 = (*(*(v2 + 24) + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;
  }

  v6 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    v9 = v6;
    v13 = 134218240;
    v14 = v7;
    v15 = 2048;
    v16 = [v8 count];
    _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_INFO, "Getting credentials from lazy cache <%p>, which contain %lu items", &v13, 0x16u);
  }

  v10 = *(a1 + 40);
  v11 = [*(*(a1 + 32) + 16) copy];
  (*(v10 + 16))(v10, v11);

  v12 = *MEMORY[0x1E69E9840];
}

@end