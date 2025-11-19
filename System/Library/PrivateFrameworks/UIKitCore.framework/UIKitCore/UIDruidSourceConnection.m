@interface UIDruidSourceConnection
@end

@implementation UIDruidSourceConnection

void __32___UIDruidSourceConnection_init__block_invoke_2(uint64_t a1)
{
  v2 = *(__UILogGetCategoryCachedImpl("Dragging", &kOutstandingItemsCountKey_block_invoke_2___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "_UIDruidSourceConnection connection invalidated", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _internalDragFailed];
  }
}

void __66___UIDruidSourceConnection_beginDragWithConfiguration_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[UIApplication _systemAnimationFenceExemptQueue];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __66___UIDruidSourceConnection_beginDragWithConfiguration_completion___block_invoke_2;
    v3[3] = &unk_1E70F3590;
    v3[4] = WeakRetained;
    [v2 performAsync:v3];
  }
}

uint64_t __66___UIDruidSourceConnection_beginDragWithConfiguration_completion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Dragging", &kOutstandingItemsCountKey_block_invoke_3___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "%@ timed out. Cancelling drag.", &v5, 0xCu);
  }

  [*(a1 + 32) cancelDrag];
  return [*(a1 + 32) cancelAndClearWatchdogTimer];
}

void __66___UIDruidSourceConnection_beginDragWithConfiguration_completion___block_invoke_590(id *a1, unsigned int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(__UILogGetCategoryCachedImpl("Dragging", &kOutstandingItemsCountKey_block_invoke_4___s_category) + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = a2;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "_UIDruidSourceConnection beginDragWithTouches:items:completion: got replyHandler with sessionID %ld", buf, 0xCu);
  }

  v7 = +[UIApplication _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66___UIDruidSourceConnection_beginDragWithConfiguration_completion___block_invoke_591;
  v9[3] = &unk_1E7106710;
  objc_copyWeak(&v13, a1 + 6);
  v8 = v5;
  v10 = v8;
  v12 = a1[5];
  v14 = a2;
  v11 = a1[4];
  [v7 performAsync:v9];

  objc_destroyWeak(&v13);
}

void __66___UIDruidSourceConnection_beginDragWithConfiguration_completion___block_invoke_591(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained cancelAndClearWatchdogTimer];
    objc_storeStrong(v6 + 3, *(a1 + 32));
    v3 = *(a1 + 48);
    if (*(a1 + 32))
    {
      v4 = *(a1 + 64);
      v5 = [*(a1 + 40) itemCollection];
      (*(v3 + 16))(v3, v4, v5);
    }

    else
    {
      (*(v3 + 16))(*(a1 + 48), 0, 0);
      [v6[1] invalidate];
    }

    WeakRetained = v6;
  }
}

void __66___UIDruidSourceConnection_beginDragWithConfiguration_completion___block_invoke_2_593(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(__UILogGetCategoryCachedImpl("Dragging", &kOutstandingItemsCountKey_block_invoke_5___s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "_UIDruidSourceConnection got error handler with error %@", buf, 0xCu);
  }

  v5 = +[UIApplication _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66___UIDruidSourceConnection_beginDragWithConfiguration_completion___block_invoke_594;
  v7[3] = &unk_1E70F4A50;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v5 performAsync:v7];
}

uint64_t __66___UIDruidSourceConnection_beginDragWithConfiguration_completion___block_invoke_594(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 8);

  return [v2 invalidate];
}

void __65___UIDruidSourceConnection_requestDragPreviewsForIndexSet_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dragPreviewProviderBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) dragPreviewProviderBlock];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65___UIDruidSourceConnection_requestDragPreviewsForIndexSet_reply___block_invoke_2;
    v7[3] = &unk_1E7106788;
    v4 = *(a1 + 40);
    v8 = *(a1 + 48);
    (v3)[2](v3, v4, v7);
  }

  else
  {
    v5 = *(__UILogGetCategoryCachedImpl("Dragging", &kOutstandingItemsCountKey_block_invoke_6___s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Source has no dragPreviewProviderBlock yet; we assume druid will retry", v6, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __48___UIDruidSourceConnection_updatedPresentation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updatedPresentationBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) updatedPresentationBlock];
    v3[2](v3, *(a1 + 40));
  }
}

void __63___UIDruidSourceConnection_canHandOffCancelledItems_withReply___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 1;
  v2 = [*(a1 + 32) canHandOffCancelledItemsBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) canHandOffCancelledItemsBlock];
    v4 = *(a1 + 40);
    v6 = 0;
    (v3)[2](v3, v4, &v6);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void __71___UIDruidSourceConnection_handOffCancelledItems_withFence_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handOffCancelledItemsBlock];

  if (v2)
  {
    v5 = [*(a1 + 32) handOffCancelledItemsBlock];
    (*(v5 + 2))(v5, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }
}

void __51___UIDruidSourceConnection_dragEndedWithOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dragCompletionBlock];

  if (v2)
  {
    v3 = *(a1 + 40) == 0;
    v4 = [*(a1 + 32) dragCompletionBlock];
    v4[2](v4, v3, *(a1 + 40));

    v5 = *(a1 + 32);

    [v5 setDragCompletionBlock:0];
  }
}

void __55___UIDruidSourceConnection_dataTransferSessionFinished__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataTransferFinishedBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) dataTransferFinishedBlock];
    v3[2]();

    v4 = *(a1 + 32);

    [v4 setDataTransferFinishedBlock:0];
  }
}

uint64_t __47___UIDruidSourceConnection__internalDragFailed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dragCompletionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) dragCompletionBlock];
    v3[2](v3, 2, 0);

    [*(a1 + 32) setDragCompletionBlock:0];
  }

  v4 = *(*(a1 + 32) + 8);

  return [v4 invalidate];
}

@end