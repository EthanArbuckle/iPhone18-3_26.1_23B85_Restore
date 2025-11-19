@interface SCDAAdvertisementContextManager
- (SCDAAdvertisementContextManager)initWithQueue:(id)a3;
- (id)_settingsConnection;
- (void)_resetSettingsConnection;
- (void)pushSCDAAdvertisementContext:(id)a3 completionHandler:(id)a4;
- (void)reset;
- (void)triggerABCForType:(id)a3 subType:(id)a4 context:(id)a5;
@end

@implementation SCDAAdvertisementContextManager

- (void)reset
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v8 = "[SCDAAdvertisementContextManager reset]";
    _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SCDAAdvertisementContextManager_reset__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)triggerABCForType:(id)a3 subType:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__SCDAAdvertisementContextManager_triggerABCForType_subType_context___block_invoke;
  v15[3] = &unk_1E85D2FC0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __69__SCDAAdvertisementContextManager_triggerABCForType_subType_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _settingsConnection];
  [v2 triggerABCForType:*(a1 + 40) subType:*(a1 + 48) context:*(a1 + 56) completionHandler:&__block_literal_global_1162];
}

void __69__SCDAAdvertisementContextManager_triggerABCForType_subType_context___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[SCDAAdvertisementContextManager triggerABCForType:subType:context:]_block_invoke_2";
      v7 = 2112;
      v8 = v2;
      _os_log_error_impl(&dword_1DA758000, v3, OS_LOG_TYPE_ERROR, "%s #scda triggerABCForSubType failed: %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)pushSCDAAdvertisementContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__SCDAAdvertisementContextManager_pushSCDAAdvertisementContext_completionHandler___block_invoke;
  block[3] = &unk_1E85D37D8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __82__SCDAAdvertisementContextManager_pushSCDAAdvertisementContext_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v10 = "[SCDAAdvertisementContextManager pushSCDAAdvertisementContext:completionHandler:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s #myriad Pushing Myriad advertisement context %@", buf, 0x16u);
  }

  v4 = [*(a1 + 40) _settingsConnection];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__SCDAAdvertisementContextManager_pushSCDAAdvertisementContext_completionHandler___block_invoke_1;
  v7[3] = &unk_1E85D2F78;
  v8 = *(a1 + 48);
  [v4 pushSCDAAdvertisementContext:v5 completionHandler:v7];

  v6 = *MEMORY[0x1E69E9840];
}

void __82__SCDAAdvertisementContextManager_pushSCDAAdvertisementContext_completionHandler___block_invoke_1(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__SCDAAdvertisementContextManager_pushSCDAAdvertisementContext_completionHandler___block_invoke_2;
    v10[3] = &unk_1E85D2F50;
    v7 = v8;
    v11 = v7;
    [v5 enumerateObjectsUsingBlock:v10];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v6);
  }
}

void __82__SCDAAdvertisementContextManager_pushSCDAAdvertisementContext_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 content];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 performSelector:sel_scdaAdvertisementContext];
    if (v5)
    {
      v6 = [[SCDAAdvertisementContextRecord alloc] initWithMyriadAdvertisementContextRecordData:v5];
      v7 = v6;
      if (v6)
      {
        v8 = [(SCDAAdvertisementContextRecord *)v6 deviceID];
        if (v8)
        {
          [*(a1 + 32) setObject:v7 forKey:v8];
        }

        else
        {
          v9 = SCDALogContextCore;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v11 = [v3 info];
            v12 = v11;
            if (!v11)
            {
              v12 = [v4 deviceInfo];
            }

            v13 = 136315650;
            v14 = "[SCDAAdvertisementContextManager pushSCDAAdvertisementContext:completionHandler:]_block_invoke_2";
            v15 = 2112;
            v16 = v7;
            v17 = 2112;
            v18 = v12;
            _os_log_error_impl(&dword_1DA758000, v9, OS_LOG_TYPE_ERROR, "%s #scda Dropped %@ from %@ because there's no device ID.", &v13, 0x20u);
            if (!v11)
            {
            }
          }
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_resetSettingsConnection
{
  if (self->_settingsConnection)
  {
    self->_settingsConnection = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (id)_settingsConnection
{
  settingsConnection = self->_settingsConnection;
  if (!settingsConnection)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698D1E0]);
    v5 = self->_settingsConnection;
    self->_settingsConnection = v4;

    [(AFSettingsConnection *)self->_settingsConnection setXPCConnectionManagementQueue:self->_queue];
    settingsConnection = self->_settingsConnection;
  }

  return settingsConnection;
}

- (SCDAAdvertisementContextManager)initWithQueue:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = SCDAAdvertisementContextManager;
    v6 = [(SCDAAdvertisementContextManager *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_queue, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end