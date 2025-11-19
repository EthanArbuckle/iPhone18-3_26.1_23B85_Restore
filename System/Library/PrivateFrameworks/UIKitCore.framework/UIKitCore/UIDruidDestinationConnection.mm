@interface UIDruidDestinationConnection
@end

@implementation UIDruidDestinationConnection

void __72___UIDruidDestinationConnection_initWithSessionIdentifier_systemPolicy___block_invoke_2(uint64_t a1)
{
  v2 = *(__UILogGetCategoryCachedImpl("Dragging", &kOutstandingItemsCountKey_block_invoke_7___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection connection invalidated", buf, 2u);
  }

  v3 = +[UIApplication _systemAnimationFenceExemptQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72___UIDruidDestinationConnection_initWithSessionIdentifier_systemPolicy___block_invoke_692;
  v4[3] = &unk_1E70F5A28;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 performAsync:v4];

  objc_destroyWeak(&v5);
}

void __72___UIDruidDestinationConnection_initWithSessionIdentifier_systemPolicy___block_invoke_692(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained state] == 4;
    WeakRetained = v3;
    if (!v2)
    {
      [v3 setState:5];
      WeakRetained = v3;
    }
  }
}

void __40___UIDruidDestinationConnection_connect__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 1, a2);
    v14 = *(__UILogGetCategoryCachedImpl("Dragging", &kOutstandingItemsCountKey_block_invoke_8___s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection: sawFirstDragEvent reply with session %@", buf, 0xCu);
    }

    v15 = +[UIApplication _systemAnimationFenceExemptQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __40___UIDruidDestinationConnection_connect__block_invoke_693;
    v16[3] = &unk_1E71067B0;
    objc_copyWeak(v19, (a1 + 32));
    v17 = v10;
    v18 = v11;
    v19[1] = a4;
    v19[2] = a5;
    [v15 performAsync:v16];

    objc_destroyWeak(v19);
  }
}

void __40___UIDruidDestinationConnection_connect__block_invoke_693(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained state] || !*(a1 + 32))
    {
      [v3 setState:5];
    }

    else
    {
      [v3 setState:1];
      v4 = [v3 connectionBlock];

      if (v4)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v6 = [*(a1 + 40) items];
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v14;
          do
          {
            v10 = 0;
            do
            {
              if (*v14 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = [[UIItemProvider alloc] initWithPBItem:*(*(&v13 + 1) + 8 * v10)];
              [v5 addObject:v11];

              ++v10;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
          }

          while (v8);
        }

        v12 = [v3 connectionBlock];
        (v12)[2](v12, *(a1 + 40), v5, *(a1 + 56), *(a1 + 64));
      }
    }
  }
}

void __40___UIDruidDestinationConnection_connect__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(__UILogGetCategoryCachedImpl("Dragging", &kOutstandingItemsCountKey_block_invoke_9___s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection sawFirstDragEvent error handler with %@", buf, 0xCu);
  }

  v5 = +[UIApplication _systemAnimationFenceExemptQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40___UIDruidDestinationConnection_connect__block_invoke_695;
  v6[3] = &unk_1E70F5A28;
  objc_copyWeak(&v7, (a1 + 32));
  [v5 performAsync:v6];

  objc_destroyWeak(&v7);
}

void __40___UIDruidDestinationConnection_connect__block_invoke_695(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setState:5];
    WeakRetained = v2;
  }
}

void __70___UIDruidDestinationConnection_requestDragPreviewsForIndexSet_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dragPreviewProviderBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) dragPreviewProviderBlock];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70___UIDruidDestinationConnection_requestDragPreviewsForIndexSet_reply___block_invoke_2;
    v7[3] = &unk_1E7106788;
    v4 = *(a1 + 40);
    v8 = *(a1 + 48);
    (v3)[2](v3, v4, v7);
  }

  else
  {
    v5 = *(__UILogGetCategoryCachedImpl("Dragging", &kOutstandingItemsCountKey_block_invoke_10___s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Source has no dragPreviewProviderBlock yet; we assume druid will retry", v6, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __53___UIDruidDestinationConnection_updatedPresentation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updatedPresentationBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) updatedPresentationBlock];
    v3[2](v3, *(a1 + 40));
  }
}

void __53___UIDruidDestinationConnection_addedItemCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemsAddedBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) itemsAddedBlock];
    v3[2](v3, *(a1 + 40));
  }
}

void __115___UIDruidDestinationConnection_performDropWithItemCollection_dataProviderEndpoint_visibleDroppedItems_completion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2 && *(a1 + 40) && *(a1 + 48))
  {
    [*(a1 + 32) setState:3];
    [*(a1 + 40) setDataProviderEndpoint:*(a1 + 48)];
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) registerLocalAvailableDerivedRepresentations];
    }

    v2 = [*(a1 + 32) dropPerformBlock];

    if (v2)
    {
      v3 = *(__UILogGetCategoryCachedImpl("Dragging", &qword_1EA9683D0) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection performDropWithItemCollection: calling dropPerformBlock", buf, 2u);
      }

      v4 = objc_alloc(MEMORY[0x1E695DF70]);
      v5 = [*(a1 + 40) items];
      v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = [*(a1 + 40) items];
      v8 = [v7 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v27;
        do
        {
          v11 = 0;
          do
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [[UIItemProvider alloc] initWithPBItem:*(*(&v26 + 1) + 8 * v11)];
            [v6 addObject:v12];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v9);
      }

      v13 = [*(a1 + 32) dropPerformBlock];
      v14 = *(a1 + 40);
      v15 = *(a1 + 56);
      v25 = 0;
      (v13)[2](v13, v14, v6, v15, &v25);
      v16 = v25;
    }

    else
    {
      v16 = 0;
    }

    v20 = *(a1 + 64);
    if (v20)
    {
      v21 = *(a1 + 40);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __115___UIDruidDestinationConnection_performDropWithItemCollection_dataProviderEndpoint_visibleDroppedItems_completion___block_invoke_700;
      v22[3] = &unk_1E70F4A50;
      v24 = v20;
      v23 = v16;
      [v21 waitForItemRequestsDeliveryCompletion:v22];
    }
  }

  else
  {
    v17 = *(__UILogGetCategoryCachedImpl("Dragging", qword_1EA9683D8) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = v17;
      *buf = 134217984;
      v31 = [v18 state];
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection performDropWithItemCollection: failing, state is %ld", buf, 0xCu);
    }

    [*(a1 + 32) setState:5];
  }
}

uint64_t __115___UIDruidDestinationConnection_performDropWithItemCollection_dataProviderEndpoint_visibleDroppedItems_completion___block_invoke_700(uint64_t a1)
{
  v2 = *(__UILogGetCategoryCachedImpl("Dragging", &kOutstandingItemsCountKey_block_invoke_12___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection performDropWithItemCollection: sending reply to druid", v4, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

void __74___UIDruidDestinationConnection_handOffDroppedItems_withFence_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  if ([*(a1 + 32) state] == 3)
  {
    v3 = [*(a1 + 32) handOffDroppedItemsBlock];

    if (v3)
    {
      v7 = [*(a1 + 32) handOffDroppedItemsBlock];
      (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56));

      return;
    }
  }

  else
  {
    v4 = *(__UILogGetCategoryCachedImpl("Dragging", &kOutstandingItemsCountKey_block_invoke_13___s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      *buf = 134217984;
      v9 = [v5 state];
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection handOffDroppedItems:withFence: failing, state is %ld", buf, 0xCu);
    }

    [*(a1 + 32) setState:5];
  }

  if (v2)
  {
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __42___UIDruidDestinationConnection_dragEnded__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v2 = 4;
  }

  else if ([*(a1 + 32) state] == 3)
  {
    v2 = 4;
  }

  else
  {
    v2 = 5;
  }

  v3 = *(a1 + 32);

  return [v3 setState:v2];
}

@end