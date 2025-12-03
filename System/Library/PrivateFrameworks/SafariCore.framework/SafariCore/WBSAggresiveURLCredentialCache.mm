@interface WBSAggresiveURLCredentialCache
- (WBSAggresiveURLCredentialCache)initWithCredentialFetchBlock:(id)block;
- (id)credentials;
- (void)getCredentialsWithCompletionHandler:(id)handler;
- (void)invalidate;
@end

@implementation WBSAggresiveURLCredentialCache

- (WBSAggresiveURLCredentialCache)initWithCredentialFetchBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = WBSAggresiveURLCredentialCache;
  v3 = [(WBSURLCredentialCache *)&v7 initWithCredentialFetchBlock:block];
  v4 = v3;
  if (v3)
  {
    [(WBSAggresiveURLCredentialCache *)v3 invalidate];
    v5 = v4;
  }

  return v4;
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B8447000, v3, OS_LOG_TYPE_INFO, "Invalidating aggressive credential cache <%p>", buf, 0xCu);
  }

  internalQueue = self->super._internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__WBSAggresiveURLCredentialCache_invalidate__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(internalQueue, block);
  v5 = *MEMORY[0x1E69E9840];
}

void __44__WBSAggresiveURLCredentialCache_invalidate__block_invoke(uint64_t a1)
{
  v2 = (*(*(*(a1 + 32) + 24) + 16))();
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
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
  v5[2] = __45__WBSAggresiveURLCredentialCache_credentials__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__WBSAggresiveURLCredentialCache_credentials__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    v5 = v2;
    v10 = 134218240;
    v11 = v3;
    v12 = 2048;
    v13 = [v4 count];
    _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_INFO, "Returning credentials from aggressive cache <%p>, which contain %lu items", &v10, 0x16u);
  }

  v6 = [*(*(a1 + 32) + 16) copy];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getCredentialsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  internalQueue = self->super._internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__WBSAggresiveURLCredentialCache_getCredentialsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF16B8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(internalQueue, v7);
}

void __70__WBSAggresiveURLCredentialCache_getCredentialsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    v5 = v2;
    v9 = 134218240;
    v10 = v3;
    v11 = 2048;
    v12 = [v4 count];
    _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_INFO, "Getting credentials from aggressive cache <%p>, which contain %lu items", &v9, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = [*(*(a1 + 32) + 16) copy];
  (*(v6 + 16))(v6, v7);

  v8 = *MEMORY[0x1E69E9840];
}

@end