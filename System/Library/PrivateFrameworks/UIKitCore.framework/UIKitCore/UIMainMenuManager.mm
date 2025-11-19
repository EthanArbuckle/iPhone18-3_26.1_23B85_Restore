@interface UIMainMenuManager
@end

@implementation UIMainMenuManager

void __53___UIMainMenuManager__sharedManagerCreatingIfNeeded___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals_1378;
  _MergedGlobals_1378 = v0;
}

void __72___UIMainMenuManager__currentResponderKeyboardShortcutLeavesForSession___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 keyboardShortcutLeaf];
  [v2 addObject:v3];
}

void __65___UIMainMenuManager__visibleCommandKeyboardShortcutsForSession___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 _keyboardShortcut];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF90] dictionary];
      [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
    }

    v5 = MEMORY[0x1E696AD98];
    v6 = [v10 _localClientMenuLeaf];
    v7 = [v5 numberWithInteger:{objc_msgSend(v6, "_enumerationPriority")}];

    v8 = [v4 objectForKeyedSubscript:v7];

    if (!v8)
    {
      v9 = [v10 identifier];
      [v4 setObject:v9 forKeyedSubscript:v7];
    }
  }
}

void __65___UIMainMenuManager__visibleCommandKeyboardShortcutsForSession___block_invoke_4(id *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 count] == 1)
  {
    v7 = [v6 allValues];
    v8 = [v7 firstObject];
  }

  else
  {
    v22 = v5;
    v9 = [v6 allKeys];
    v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_19_4];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      obj = v11;
LABEL_5:
      v15 = 0;
      while (1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [v6 objectForKeyedSubscript:*(*(&v24 + 1) + 8 * v15)];
        v16 = [a1[4] _localCache];
        v17 = [v16 elementBookkeeping];
        v18 = [v17 commandsForIdentifiers];
        v19 = [v18 objectForKeyedSubscript:v8];

        v20 = [a1[5] _stateForCommand:v19 session:a1[4]];
        LOBYTE(v17) = [v20 _isPerformable];

        if (v17)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v11 = obj;
          v13 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v13)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v11 = obj;

      if (v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_11:
    }

    v21 = [v11 firstObject];
    v8 = [v6 objectForKeyedSubscript:v21];

LABEL_14:
    v5 = v22;
  }

  [a1[6] setObject:v5 forKeyedSubscript:v8];
}

uint64_t __56___UIMainMenuManager__mainMenuSystemDidSetNeedsRebuild___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 _baseMainMenuDidUpdate:{*(a1 + 32), v11}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = 0;

  [*(*(a1 + 32) + 16) removeAllObjects];
  return [*(*(a1 + 32) + 32) removeAllObjects];
}

void __52___UIMainMenuManager__updateBookkeeping_forElement___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = [v3 menusForIdentifiers];
  v5 = [v4 identifier];
  [v6 setObject:v4 forKeyedSubscript:v5];
}

void __52___UIMainMenuManager__updateBookkeeping_forElement___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = [v3 commandsForIdentifiers];
  v5 = [v4 identifier];
  [v6 setObject:v4 forKeyedSubscript:v5];
}

void __52___UIMainMenuManager__updateBookkeeping_forElement___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = [v3 deferredElementsForIdentifiers];
  v5 = [v4 identifier];
  [v6 setObject:v4 forKeyedSubscript:v5];
}

void __52___UIMainMenuManager__updateBookkeeping_forElement___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    v8 = [a2 identifier];
    v6 = [*(a1 + 32) parentIdentifiersForIdentifiers];
    v7 = [v5 identifier];

    [v6 setObject:v8 forKeyedSubscript:v7];
  }
}

void __57___UIMainMenuManager__populateState_forElements_session___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 deferredElementState];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __57___UIMainMenuManager__populateState_forElements_session___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a3;
  v9 = [v4 _stateForCommand:v6 session:v5];
  v7 = a1[6];
  v8 = [v6 identifier];

  [v7 setObject:v9 forKeyedSubscript:v8];
}

void __68___UIMainMenuManager_performDeferredElementRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _localCache];
  v5 = [v4 pendingDeferredElementRequestHandlers];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];

  v7 = [*(a1 + 32) _localCache];
  v8 = [v7 pendingDeferredElementRequestHandlers];
  [v8 setObject:0 forKeyedSubscript:*(a1 + 40)];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13));
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

void __68___UIMainMenuManager_performDeferredElementRequest_responseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v5 = [*(a1 + 48) _localProvidedElements];

    if (v5 != v3)
    {
      [*(a1 + 48) set_localProvidedElements:v3];
      v6 = *(a1 + 56);
      v7 = [WeakRetained _localCache];
      v8 = [v7 elementBookkeeping];
      [v6 _updateBookkeeping:v8 forElement:*(a1 + 48)];

      v9 = [*(a1 + 48) _uiDeferredMenuElement];
      LOBYTE(v7) = [v9 cachesItems];

      if (v7)
      {
        if ([*(a1 + 56) _isCachedDeferredElementExpansionOfMainMenu:*(a1 + 40) forSession:WeakRetained])
        {
          [*(a1 + 56) _updateBookkeeping:*(*(a1 + 56) + 16) forElement:*(a1 + 48)];
        }
      }

      else
      {
        [*(a1 + 48) set_localProvidedElements:0];
      }
    }

    v13 = [[_UIMainMenuDeferredElementState alloc] _initWithProvidedElements:v3];
    [*(a1 + 56) _populateState:v13 forElements:v3 session:WeakRetained];
    v14 = [WeakRetained _localCache];
    v15 = [v14 deferredElementStates];
    [v15 setObject:v13 forKeyedSubscript:*(a1 + 40)];

    v16 = [*(a1 + 56) _parentGroupStateForElementIdentifier:*(a1 + 40) session:WeakRetained];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 fulfilledDeferredElementStates];
      v19 = [v18 mutableCopy];

      [v19 setObject:v13 forKeyedSubscript:*(a1 + 40)];
      v20 = [v19 copy];
      [v17 setFulfilledDeferredElementStates:v20];
    }

    v21 = [[_UIMainMenuDeferredElementResponse alloc] _initWithDeferredElementState:v13];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v10 = _UIMainMenuManagerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v22 = 138543618;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Session ended while fulfilling elements of a deferred element. Providing a nil response to deferred element requests. sessionIdentifier: %{public}@, deferredElement: %{public}@", &v22, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void __52___UIMainMenuManager_userDidInvokeKeyboardShortcut___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) _categoryMenuIdentifierForInvokedKeyboardShortcutMenuLeaf:*(a1 + 40) session:a3];
  if (v5)
  {
    [*(a1 + 48) setObject:v5 forKeyedSubscript:v6];
  }
}

void __88___UIMainMenuManager__categoryMenuIdentifierForInvokedKeyboardShortcutMenuLeaf_session___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v7 = [v10 _keyboardShortcut];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v10 _localClientMenuLeaf];
    LODWORD(v8) = [v8 isEqual:v9];

    if (v8)
    {
      if ([*(a1 + 40) _isKeyboardShortcutVisibleForCommand:v10])
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
        *a4 = 1;
      }
    }
  }
}

@end