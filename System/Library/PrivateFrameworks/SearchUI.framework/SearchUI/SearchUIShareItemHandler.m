@interface SearchUIShareItemHandler
- (BOOL)presentShareViewControllerForItems:(id)a3;
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUIShareItemHandler

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SearchUIShareItemHandler *)self handlerForSharing];
  v8 = v7;
  if (v7)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __68__SearchUIShareItemHandler_performCommand_triggerEvent_environment___block_invoke;
    v28[3] = &unk_1E85B3B78;
    v28[4] = self;
    v29 = v7;
    [v29 fetchShareableURLWithCompletionHandler:v28];
  }

  else
  {
    v9 = objc_opt_new();
    v10 = [v6 shareItems];
    v11 = [v10 count];

    if (v11)
    {
      v20 = self;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = [v6 shareItems];
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = __68__SearchUIShareItemHandler_performCommand_triggerEvent_environment___block_invoke_10;
            v22[3] = &unk_1E85B3BA0;
            v23 = v9;
            [v17 searchUI_fetchShareableItemWithCompletionHandler:v22];
          }

          v14 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
        }

        while (v14);
      }

      [(SearchUIShareItemHandler *)v20 presentShareViewControllerForItems:v9];
    }

    else
    {
      v18 = [v6 shareItem];

      if (v18)
      {
        v19 = [v6 shareItem];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __68__SearchUIShareItemHandler_performCommand_triggerEvent_environment___block_invoke_2;
        v21[3] = &unk_1E85B3BA0;
        v21[4] = self;
        [v19 searchUI_fetchShareableItemWithCompletionHandler:v21];
      }
    }
  }
}

void __68__SearchUIShareItemHandler_performCommand_triggerEvent_environment___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v8[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    LOBYTE(v5) = [v5 presentShareViewControllerForItems:v6];

    if ((v5 & 1) == 0)
    {
      v7 = SearchUIPeekLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        __68__SearchUIShareItemHandler_performCommand_triggerEvent_environment___block_invoke_cold_1(a1, v7);
      }
    }
  }
}

void __68__SearchUIShareItemHandler_performCommand_triggerEvent_environment___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v6 = a2;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v6 count:1];
  [v2 presentShareViewControllerForItems:{v5, v6, v7}];
}

- (BOOL)presentShareViewControllerForItems:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__SearchUIShareItemHandler_presentShareViewControllerForItems___block_invoke;
    v7[3] = &unk_1E85B2540;
    v8 = v4;
    v9 = self;
    [SearchUIUtilities dispatchMainIfNecessary:v7];
  }

  return v5 != 0;
}

void __63__SearchUIShareItemHandler_presentShareViewControllerForItems___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69CD9F8]) initWithActivityItems:*(a1 + 32) applicationActivities:0];
  [*(a1 + 40) requestAuthIfNecessaryAndPresentViewController:v2 animated:1];
}

void __68__SearchUIShareItemHandler_performCommand_triggerEvent_environment___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_1DA169000, a2, OS_LOG_TYPE_FAULT, "failed to fetch url for share for handler %@", &v3, 0xCu);
}

@end