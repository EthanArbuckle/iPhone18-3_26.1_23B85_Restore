@interface UIDataTransferMonitor
@end

@implementation UIDataTransferMonitor

void __30___UIDataTransferMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained cancelOutstandingRequests];
    WeakRetained = v2;
  }
}

void __58___UIDataTransferMonitor__transferQueue_sendBeganCallback__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained dataTransferMonitorBeganTransfers:*(a1 + 32)];
}

void __61___UIDataTransferMonitor__transferQueue_sendFinishedCallback__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained dataTransferMonitorFinishedTransfers:*(a1 + 32)];
}

uint64_t __41___UIDataTransferMonitor_totalItemsCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

_BYTE *__52___UIDataTransferMonitor_sendDelegateEventsIfNeeded__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 0;
  result = *(a1 + 32);
  if (result[26])
  {
    return result;
  }

  if (result[25] == 1)
  {
    result[25] = 0;
    result = [*(a1 + 32) _transferQueue_sendBeganCallback];
    v3 = *(a1 + 32);
    v5 = *(v3 + 28);
    v4 = (v3 + 28);
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v4 = result + 28;
    if (result[28] != 1)
    {
      [result _transferQueue_sendBeganCallback];
      goto LABEL_9;
    }
  }

  *v4 = 0;
LABEL_9:
  v6 = *(a1 + 32);

  return [v6 _transferQueue_sendFinishedCallback];
}

void __51___UIDataTransferMonitor_cancelOutstandingRequests__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = *(*(a1 + 32) + 16);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) progress];
        [v6 cancel];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __81___UIDataTransferMonitor_itemProvider_beganDataTransferTransactionUUID_progress___block_invoke(uint64_t a1)
{
  v4 = objc_alloc_init(_UIDataTransferRequest);
  [(_UIDataTransferRequest *)v4 setItemProvider:*(a1 + 32)];
  [(_UIDataTransferRequest *)v4 setUUID:*(a1 + 40)];
  [(_UIDataTransferRequest *)v4 setProgress:*(a1 + 48)];
  v2 = [*(a1 + 32) _UUID];
  [*(*(a1 + 56) + 48) addObject:v2];
  v3 = [*(*(a1 + 56) + 8) objectForKeyedSubscript:v2];
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    [*(*(a1 + 56) + 8) setObject:v3 forKeyedSubscript:v2];
  }

  [v3 addObject:v4];
  [*(*(a1 + 56) + 16) addObject:v4];
  [*(*(a1 + 56) + 40) addObject:*(a1 + 48)];
  [*(a1 + 48) addObserver:*(a1 + 56) forKeyPath:@"fractionCompleted" options:1 context:0];
  [*(a1 + 56) _transferQueue_recomputeMasterProgress];
  [*(a1 + 56) _transferQueue_scheduleBeganCallback];
  *(*(*(a1 + 64) + 8) + 24) = [*(*(a1 + 56) + 8) count];
}

uint64_t __64___UIDataTransferMonitor__transferQueue_recomputeMasterProgress__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTotalUnitCount:*(a1 + 40)];
  v2 = (*(a1 + 48) * 100.0);
  v3 = *(a1 + 32);

  return [v3 setCompletedUnitCount:v2];
}

void __75___UIDataTransferMonitor_itemProvider_finishedDataTransferTransactionUUID___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 8) count];
  v2 = [*(a1 + 40) _UUID];
  v3 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v2];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___indexOfDataTransferRequestMatching_block_invoke;
  v14[3] = &unk_1E7106930;
  v9 = v7;
  v15 = v9;
  v10 = v8;
  v16 = v10;
  v17 = &v18;
  [v6 enumerateObjectsUsingBlock:v14];
  v11 = v19[3];

  _Block_object_dispose(&v18, 8);
  v12 = [v6 objectAtIndexedSubscript:v11];
  v13 = [v12 progress];
  [v13 removeObserver:*(a1 + 32) forKeyPath:@"fractionCompleted"];

  [v6 removeObjectAtIndex:v11];
  if (![v6 count])
  {
    [*(*(a1 + 32) + 8) removeObjectForKey:v2];
  }

  [*(*(a1 + 32) + 16) removeObject:v12];
  if (![*(*(a1 + 32) + 16) count])
  {
    [*(a1 + 32) _transferQueue_scheduleFinishedCallback];
  }

  *(*(*(a1 + 64) + 8) + 24) = [*(*(a1 + 32) + 8) count];
}

@end