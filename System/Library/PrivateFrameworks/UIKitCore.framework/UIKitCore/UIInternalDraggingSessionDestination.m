@interface UIInternalDraggingSessionDestination
@end

@implementation UIInternalDraggingSessionDestination

void __48___UIInternalDraggingSessionDestination_connect__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v29 = v9;
    *(WeakRetained + 40) = 1;
    *(WeakRetained + 152) = a5 & 1;
    *(WeakRetained + 153) = (a5 & 2) != 0;
    *(WeakRetained + 26) = a4;
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        v18 = 0;
        do
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [(UIDragItem *)[_UIDropItem alloc] initWithItemProvider:*(*(&v30 + 1) + 8 * v18)];
          [v13 addObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v16);
    }

    v9 = v29;
    *(*(a1 + 32) + 192) = [v29 originatorDataOwner];
    v20 = [v12 inAppSessionSource];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 internalItems];
      v23 = [v13 count];
      if (v23 - 1 < [v22 count])
      {
        v24 = 0;
        do
        {
          v25 = [v22 objectAtIndexedSubscript:v24];
          v26 = [v13 objectAtIndexedSubscript:v24];
          [v26 _setLocalDragItem:v25];

          ++v24;
        }

        while (v23 != v24);
      }

      v9 = v29;
    }

    [v12 setInternalItems:v13];
    [*(*(*(a1 + 40) + 8) + 40) makeObjectsPerformSelector:sel__sendIfNeeded];
    v27 = *(*(a1 + 40) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = 0;
  }
}

void __48___UIInternalDraggingSessionDestination_connect__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained internalItems];
    v10 = dragPreviewsOfItems(v9, v5, v8);

    v11 = UIApp;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48___UIInternalDraggingSessionDestination_connect__block_invoke_3;
    v13[3] = &unk_1E70F4A50;
    v14 = v10;
    v15 = v6;
    v12 = v10;
    [v11 _performBlockAfterCATransactionCommits:v13];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

void __48___UIInternalDraggingSessionDestination_connect__block_invoke_4(uint64_t a1, void *a2)
{
  v21 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v21 items];
    v5 = [WeakRetained internalItems];
    v6 = [v5 count];

    v7 = [v4 count];
    v8 = [WeakRetained internalItems];
    v9 = [v8 mutableCopy];

    if (v6 < v7)
    {
      v10 = v6;
      do
      {
        v11 = [v4 objectAtIndexedSubscript:v10];
        v12 = [[UIItemProvider alloc] initWithPBItem:v11];
        v13 = [(UIDragItem *)[_UIDropItem alloc] initWithItemProvider:v12];
        [v9 addObject:v13];

        ++v10;
      }

      while (v7 != v10);
    }

    v14 = [WeakRetained inAppSessionSource];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 internalItems];
      v17 = [v16 count];
      if (v6 < v7 && v7 <= v17)
      {
        do
        {
          v18 = [v16 objectAtIndexedSubscript:v6];
          v19 = [v9 objectAtIndexedSubscript:v6];
          [v19 _setLocalDragItem:v18];

          ++v6;
        }

        while (v7 != v6);
      }
    }

    [WeakRetained setInternalItems:v9];
    v20 = [WeakRetained dragEvents];
    [v20 makeObjectsPerformSelector:sel__setNeedsHitTestReset];
  }
}

void __48___UIInternalDraggingSessionDestination_connect__block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = WeakRetained;
  if (WeakRetained && WeakRetained[9])
  {
    v22 = a1;
    v23 = v11;
    v24 = v10;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v25 + 1) + 8 * i) setDataTransferDelegate:{*(v14 + 14), v22}];
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }

    [v14 takeVisibleDroppedItems:v12];
    objc_storeStrong(v14 + 23, a3);
    objc_storeStrong(v14 + 13, a2);
    *(*(v22 + 32) + 128) = 1;
    (*(*(v14 + 9) + 16))();
    v20 = *(v14 + 23);
    *(v14 + 23) = 0;

    v21 = *(v14 + 9);
    *(v14 + 9) = 0;

    [v14 setUpDropAnimation:v12 layerContext:a5];
    v10 = v24;
    v11 = v23;
  }
}

void __48___UIInternalDraggingSessionDestination_connect__block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v7)
    {
      [UIScene _synchronizeDrawingWithFence:v7];
    }

    [WeakRetained handOffDroppedItems:v10 completion:v8];
  }
}

void __48___UIInternalDraggingSessionDestination_connect__block_invoke_7(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v5 = *(WeakRetained + 9) == 0;
    }

    else
    {
      v5 = 0;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48___UIInternalDraggingSessionDestination_connect__block_invoke_8;
    v9[3] = &unk_1E70F35E0;
    v9[4] = WeakRetained;
    v10 = v5;
    v6 = _Block_copy(v9);
    v7 = [v4 activeDragEvent];
    v8 = v7;
    if (v5 || !v7)
    {
      v6[2](v6);
    }

    else
    {
      [v7 _dragFailedWithCallback:v6];
    }

    [v4 setDruidConnection:0];
    v4[40] = 0;
  }
}

void __64___UIInternalDraggingSessionDestination__sessionDidEndNormally___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * v6++) _sendSessionDidEnd:{*(a1 + 32), v10}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 48) removeAllObjects];
  v7 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    [v7[14] sendDelegateEventsIfNeeded];
  }

  else
  {
    [v7 _removeFromDragManager];
  }

  objc_storeWeak((*(a1 + 32) + 176), *(*(a1 + 32) + 168));
  v8 = *(a1 + 32);
  v9 = *(v8 + 168);
  *(v8 + 168) = 0;
}

void __75___UIInternalDraggingSessionDestination_dataTransferMonitorBeganTransfers___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 128) == 1)
  {
    v2 = *(__UILogGetCategoryCachedImpl("Dragging", &qword_1EA9683B8) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v3;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Data transfer began for dragging session destination %p", &buf, 0xCu);
    }

    v4 = *(*(a1 + 32) + 232);
    v5 = [*(a1 + 40) progress];
    [v4 addChild:v5 withPendingUnitCount:100];

    v6 = *(a1 + 32);
    if (*(v6 + 216) == 1 && [*(v6 + 112) totalItemsCount] && !*(*(a1 + 32) + 120))
    {
      v7 = _UIKitUserDefaults();
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v43 = ___UIGetDraggingModalAlertLatencySeconds_block_invoke;
      v44 = &unk_1E70F3590;
      v45 = v7;
      v8 = _MergedGlobals_16_0;
      v9 = v7;
      if (v8 != -1)
      {
        dispatch_once(&_MergedGlobals_16_0, &buf);
      }

      v10 = [v9 integerForKey:@"DraggingModalAlertLatencySeconds"];

      if (v10 >= 1)
      {
        v37 = v10;
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
        v12 = [WeakRetained windowScene];

        if (v12)
        {
          [_UIApplicationModalProgressController instanceForScene:v12];
        }

        else
        {
          +[_UIApplicationModalProgressController sharedInstance];
        }
        v13 = ;
        objc_storeStrong((*(a1 + 32) + 120), v13);
        if (_IsKindOfUIView(*(*(a1 + 32) + 56)))
        {
          v14 = *(*(a1 + 32) + 56);
          v15 = [v14 traitCollection];
          v16 = [v15 userInterfaceIdiom];

          if (v16 == 6)
          {
            v17 = [UIViewController _viewControllerForFullScreenPresentationFromView:v14];
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v18 = [*(*(a1 + 32) + 112) totalItemsCount];
        v24 = _UILocalizedFormat(@"dragging.dropAlertTitle", @"Drop alert title", @"Importing %lu items", v19, v20, v21, v22, v23, v18);
        v30 = _UILocalizedFormat(@"dragging.dropAlertItemsRemaining", @"Drop alert message", @"%lu items remaining", v25, v26, v27, v28, v29, v18);
        v31 = _UILocalizedString(@"dragging.dropAlertCancelButton", @"Drop alert cancel button", @"Cancel");
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __75___UIInternalDraggingSessionDestination_dataTransferMonitorBeganTransfers___block_invoke_455;
        aBlock[3] = &unk_1E70F3CB0;
        aBlock[4] = *(a1 + 32);
        v32 = _Block_copy(aBlock);
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __75___UIInternalDraggingSessionDestination_dataTransferMonitorBeganTransfers___block_invoke_2;
        v38[3] = &unk_1E70F3C60;
        v33 = *(a1 + 40);
        v34 = *(a1 + 32);
        v39 = v33;
        v40 = v34;
        v35 = _Block_copy(v38);
        [*(a1 + 40) addObserver:*(a1 + 32) forKeyPath:@"outstandingItemsCount" options:1 context:0];
        [v13 setDisplayDelaySeconds:v37];
        v36 = [*(*(a1 + 32) + 112) progress];
        [v13 displayWithTitle:v24 message:v30 progress:v36 buttonTitle:v31 sourceViewController:v17 preDisplayTestBlock:v32 dismissalHandler:v35];
      }
    }
  }
}

uint64_t __75___UIInternalDraggingSessionDestination_dataTransferMonitorBeganTransfers___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) progress];
    [v3 cancel];
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 removeObserver:v5 forKeyPath:@"outstandingItemsCount"];
}

void __88___UIInternalDraggingSessionDestination_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 120);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = v1;
    v9 = _UILocalizedFormat(@"dragging.dropAlertItemsRemaining", @"Drop alert message", @"%lu items remaining", v4, v5, v6, v7, v8, v2);
    [v3 setMessage:v9];
  }
}

uint64_t __78___UIInternalDraggingSessionDestination_dataTransferMonitorFinishedTransfers___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[15])
  {
    [v2[15] hideAfterDelay:1 forceCompletion:0 replacementDismissalHandler:0.5];
    v2 = *(a1 + 32);
  }

  return [v2 _removeFromDragManager];
}

uint64_t __93___UIInternalDraggingSessionDestination_requestDropOnOwner_withOperation_perform_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained druidConnection];
  [v3 enableKeyboardIfNeeded];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __73___UIInternalDraggingSessionDestination_setUpDropAnimation_layerContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  if (v3)
  {
    (*(v3 + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 80);
    *(v4 + 80) = 0;

    v2 = *(a1 + 32);
  }

  v6 = v2[11];
  if (v6)
  {
    (*(v6 + 16))();
    v7 = *(a1 + 32);
    v8 = *(v7 + 88);
    *(v7 + 88) = 0;

    v2 = *(a1 + 32);
  }

  v9 = v2[12];
  v2[12] = 0;
}

@end