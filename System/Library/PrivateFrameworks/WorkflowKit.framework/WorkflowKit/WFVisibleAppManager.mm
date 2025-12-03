@interface WFVisibleAppManager
- (WFVisibleAppManager)init;
- (void)_getLayoutsWithCompletionHandler:(id)handler;
- (void)getCurrentAppWithCompletionHandler:(id)handler;
- (void)getVisibleAppsWithCompletionHandler:(id)handler;
@end

@implementation WFVisibleAppManager

- (void)_getLayoutsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MEMORY[0x1E69AA870]);
  [v5 resume];
  monitorPool = [(WFVisibleAppManager *)self monitorPool];
  [monitorPool addObject:v5];

  v7 = dispatch_time(0, 50000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__WFVisibleAppManager__getLayoutsWithCompletionHandler___block_invoke;
  block[3] = &unk_1E837ECE0;
  v11 = v5;
  selfCopy = self;
  v13 = handlerCopy;
  v8 = handlerCopy;
  v9 = v5;
  dispatch_after(v7, MEMORY[0x1E69E96A0], block);
}

void __56__WFVisibleAppManager__getLayoutsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) currentDisplayLayouts];
  v3 = getWFActionsLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 allValues];
    v7 = 136315394;
    v8 = "[WFVisibleAppManager _getLayoutsWithCompletionHandler:]_block_invoke";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s WFVisibleAppManager saw layout: %@", &v7, 0x16u);
  }

  [*(a1 + 32) invalidate];
  v5 = [*(a1 + 40) monitorPool];
  [v5 removeObject:*(a1 + 32)];

  (*(*(a1 + 48) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)getVisibleAppsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__WFVisibleAppManager_getVisibleAppsWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E8378B28;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(WFVisibleAppManager *)self _getLayoutsWithCompletionHandler:v6];
}

void __59__WFVisibleAppManager_getVisibleAppsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v3 allValues];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) elements];
        v11 = [v10 if_compactMap:&__block_literal_global_165];
        [v4 addObjectsFromArray:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *(a1 + 32);
  v13 = [v4 mutableCopy];
  (*(v12 + 16))(v12, v13, 0);

  v14 = *MEMORY[0x1E69E9840];
}

id __59__WFVisibleAppManager_getVisibleAppsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6996C80];
  v3 = [a2 bundleIdentifier];
  v4 = [v2 findAppWithBundleIdentifier:v3 name:0];

  if (v4 && [v4 isAvailableInUserFacingContext])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)getCurrentAppWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__WFVisibleAppManager_getCurrentAppWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E8378B28;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(WFVisibleAppManager *)self _getLayoutsWithCompletionHandler:v6];
}

void __58__WFVisibleAppManager_getCurrentAppWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = a1;
  v22 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = v2;
  v4 = [v2 allValues];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v17 + 1) + 8 * v8) elements];
        v10 = [v9 if_firstObjectPassingTest:&__block_literal_global_36160];

        if (v10)
        {
          v11 = MEMORY[0x1E6996C80];
          v12 = [v10 bundleIdentifier];
          v13 = [v11 findAppWithBundleIdentifier:v12 name:0];

          if (v13 && [v13 isAvailableInUserFacingContext])
          {
            [v3 addObject:v13];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  (*(*(v15 + 32) + 16))();
  v14 = *MEMORY[0x1E69E9840];
}

- (WFVisibleAppManager)init
{
  v7.receiver = self;
  v7.super_class = WFVisibleAppManager;
  v2 = [(WFVisibleAppManager *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    monitorPool = v2->_monitorPool;
    v2->_monitorPool = v3;

    v5 = v2;
  }

  return v2;
}

@end