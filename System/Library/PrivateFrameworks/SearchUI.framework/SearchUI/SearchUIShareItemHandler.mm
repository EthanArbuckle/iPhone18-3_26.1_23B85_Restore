@interface SearchUIShareItemHandler
- (BOOL)presentShareViewControllerForItems:(id)items;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIShareItemHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  v31 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  handlerForSharing = [(SearchUIShareItemHandler *)self handlerForSharing];
  v8 = handlerForSharing;
  if (handlerForSharing)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __68__SearchUIShareItemHandler_performCommand_triggerEvent_environment___block_invoke;
    v28[3] = &unk_1E85B3B78;
    v28[4] = self;
    v29 = handlerForSharing;
    [v29 fetchShareableURLWithCompletionHandler:v28];
  }

  else
  {
    v9 = objc_opt_new();
    shareItems = [commandCopy shareItems];
    v11 = [shareItems count];

    if (v11)
    {
      selfCopy = self;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      shareItems2 = [commandCopy shareItems];
      v13 = [shareItems2 countByEnumeratingWithState:&v24 objects:v30 count:16];
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
              objc_enumerationMutation(shareItems2);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = __68__SearchUIShareItemHandler_performCommand_triggerEvent_environment___block_invoke_10;
            v22[3] = &unk_1E85B3BA0;
            v23 = v9;
            [v17 searchUI_fetchShareableItemWithCompletionHandler:v22];
          }

          v14 = [shareItems2 countByEnumeratingWithState:&v24 objects:v30 count:16];
        }

        while (v14);
      }

      [(SearchUIShareItemHandler *)selfCopy presentShareViewControllerForItems:v9];
    }

    else
    {
      shareItem = [commandCopy shareItem];

      if (shareItem)
      {
        shareItem2 = [commandCopy shareItem];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __68__SearchUIShareItemHandler_performCommand_triggerEvent_environment___block_invoke_2;
        v21[3] = &unk_1E85B3BA0;
        v21[4] = self;
        [shareItem2 searchUI_fetchShareableItemWithCompletionHandler:v21];
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

- (BOOL)presentShareViewControllerForItems:(id)items
{
  itemsCopy = items;
  v5 = [itemsCopy count];
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__SearchUIShareItemHandler_presentShareViewControllerForItems___block_invoke;
    v7[3] = &unk_1E85B2540;
    v8 = itemsCopy;
    selfCopy = self;
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