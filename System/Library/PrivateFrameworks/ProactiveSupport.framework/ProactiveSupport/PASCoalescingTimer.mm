@interface PASCoalescingTimer
@end

@implementation PASCoalescingTimer

void __46___PASCoalescingTimer_cancelPendingOperations__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(v2 + 1);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(v2 + 1);
  }

  else
  {
    v4 = 0;
  }

  *(v2 + 1) = 0;

  v5 = *(v2 + 3);
  ++*(v2 + 2);
  *(v2 + 3) = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(v2 + 4);
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

        dispatch_source_cancel(*(*(&v13 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [*(v2 + 4) removeAllObjects];
  v11 = *(v2 + 6);
  ++*(v2 + 5);
  *(v2 + 6) = 0;

  v12 = *MEMORY[0x1E69E9840];
}

void __63___PASCoalescingTimer__replaceCoalescingTimerUsingLockWitness___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__2360;
    v16 = __Block_byref_object_dispose__2361;
    v17 = 0;
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v4 = WeakRetained[5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63___PASCoalescingTimer__replaceCoalescingTimerUsingLockWitness___block_invoke_2;
    v7[3] = &unk_1E77F1FB0;
    v5 = *(a1 + 40);
    v7[5] = &v12;
    v7[6] = v5;
    v7[4] = &v8;
    [v4 runWithLockAcquired:v7];
    if (*(v9 + 24) == 1)
    {
      v6 = v13[5];
      (*(v3[4] + 16))();
    }

    _Block_object_dispose(&v8, 8);
    _Block_object_dispose(&v12, 8);
  }
}

void __63___PASCoalescingTimer__replaceCoalescingTimerUsingLockWitness___block_invoke_2(void *a1, uint64_t a2)
{
  *(*(a1[4] + 8) + 24) = a1[6] == *(a2 + 16);
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    v4 = *(a1[5] + 8);
    v5 = *(a2 + 48);
    v6 = *(v4 + 40);
    *(v4 + 40) = v5;
    v9 = a2;

    v7 = *(a2 + 48);
    *(a2 + 48) = 0;

    v8 = v9[3];
    v9[3] = 0;
  }
}

void __59___PASCoalescingTimer_processData_afterStrictDelaySeconds___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(v3 + 6);
  v6 = (*(*(*(a1 + 32) + 24) + 16))();
  v7 = *(v3 + 6);
  *(v3 + 6) = v6;

  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a1 + 32) + 8));
  v9 = *(v3 + 5);
  objc_initWeak(&location, *(a1 + 32));
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __59___PASCoalescingTimer_processData_afterStrictDelaySeconds___block_invoke_2;
  v16 = &unk_1E77F1F60;
  objc_copyWeak(v18, &location);
  v18[1] = v9;
  v10 = v8;
  v17 = v10;
  dispatch_source_set_event_handler(v10, &v13);
  v11 = [_PASDispatch dispatchTimeWithSecondsFromNow:*(a1 + 48), v13, v14, v15, v16];
  if (v11 == -1)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"_PASCoalescingTimer.m" lineNumber:149 description:@"delaySeconds is too large!"];
  }

  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, (*(*(a1 + 32) + 16) * 1000000000.0));
  dispatch_resume(v10);
  [*(v3 + 4) addObject:v10];

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

void __59___PASCoalescingTimer_processData_afterStrictDelaySeconds___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__2360;
    v21 = __Block_byref_object_dispose__2361;
    v22 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v4 = WeakRetained[5];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59___PASCoalescingTimer_processData_afterStrictDelaySeconds___block_invoke_18;
    v8[3] = &unk_1E77F1F38;
    v5 = *(a1 + 48);
    v11 = &v17;
    v12 = v5;
    v10 = &v13;
    v9 = *(a1 + 32);
    [v4 runWithLockAcquired:v8];
    if (*(v14 + 24) == 1)
    {
      (*(v3[4] + 16))(v3[4], v18[5], v6, v7);
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }
}

void __59___PASCoalescingTimer_processData_afterStrictDelaySeconds___block_invoke_18(void *a1, uint64_t a2)
{
  *(*(a1[5] + 8) + 24) = a1[7] == *(a2 + 40);
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v5 = *(a1[6] + 8);
    v6 = *(a2 + 48);
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
    v9 = a2;

    v8 = *(a2 + 48);
    *(a2 + 48) = 0;

    [v9[4] removeObject:a1[4]];
  }
}

void __72___PASCoalescingTimer_processData_afterDelaySeconds_coalescingBehavior___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = *(a1 + 40);
  v4 = v18[6];
  v5 = (*(*(*(a1 + 32) + 24) + 16))();
  v6 = v18[6];
  v18[6] = v5;

  v8 = v18 + 3;
  v7 = v18[3];
  v9 = *(a1 + 48);
  if (v7)
  {
    v10 = [v7 compare:v9];
    if (v10 == -1)
    {
      v11 = v18 + 3;
    }

    else
    {
      v11 = (a1 + 48);
    }

    if (v10 == -1)
    {
      v12 = (a1 + 48);
    }

    else
    {
      v12 = v18 + 3;
    }

    v13 = *v11;
    v14 = *v12;
    v15 = v14;
    v16 = v13;
    if (*(a1 + 56))
    {
      if (*(a1 + 56) != 1)
      {
LABEL_12:

        goto LABEL_14;
      }

      v16 = v14;
    }

    objc_storeStrong(v8, v16);
    goto LABEL_12;
  }

  v17 = v9;
  v13 = *v8;
  *v8 = v17;
LABEL_14:

  [*(a1 + 32) _replaceCoalescingTimerUsingLockWitness:v18];
}

@end