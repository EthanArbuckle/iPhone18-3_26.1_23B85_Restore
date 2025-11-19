@interface SYBacklinkMonitorFilterCacheOperation
- (void)_finishProcessingAndNotify;
- (void)_searchBacklinksForInputUserActivity;
- (void)_updateBacklinkFilterCacheWithInfos:(id)a3;
@end

@implementation SYBacklinkMonitorFilterCacheOperation

- (void)_searchBacklinksForInputUserActivity
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(SYBacklinkMonitorOperation *)self processingQueue];
  dispatch_assert_queue_V2(v3);

  [(SYBacklinkMonitorOperation *)self _setOperationState:1];
  v4 = [(SYBacklinkMonitorOperation *)self inputUserActivityInfo];
  v5 = v4;
  if (v4 && SYIsLinkableUserActivity(v4))
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v7 = v6;
    v8 = [v5 activityType];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __77__SYBacklinkMonitorFilterCacheOperation__searchBacklinksForInputUserActivity__block_invoke;
    v12[3] = &unk_27856BD68;
    v12[5] = v7;
    v12[4] = self;
    [SYItemIndexingManager fetchActivitiesWithActivityType:v8 completion:v12];
  }

  else
  {
    v9 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"not linkable";
      if (!v5)
      {
        v10 = @"nil";
      }

      *buf = 134218242;
      v14 = self;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_225901000, v9, OS_LOG_TYPE_DEFAULT, "BacklinkMonitorFilterOperation %p: Skipping query, input activity is %@.", buf, 0x16u);
    }

    [(SYBacklinkMonitorFilterCacheOperation *)self _updateBacklinkFilterCacheWithInfos:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __77__SYBacklinkMonitorFilterCacheOperation__searchBacklinksForInputUserActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v5 = v4 - *(a1 + 40);
  v6 = [*(a1 + 32) processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SYBacklinkMonitorFilterCacheOperation__searchBacklinksForInputUserActivity__block_invoke_2;
  block[3] = &unk_27856BD40;
  block[4] = *(a1 + 32);
  v9 = v3;
  v10 = v5;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t __77__SYBacklinkMonitorFilterCacheOperation__searchBacklinksForInputUserActivity__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) count];
    v5 = *(a1 + 48) * 1000.0;
    v8 = 134218496;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_DEFAULT, "BacklinkMonitorFilterOperation %p: Found %ld item(s) linked to current activityType. Query duration: %0.0f ms.", &v8, 0x20u);
  }

  result = [*(a1 + 32) _updateBacklinkFilterCacheWithInfos:*(a1 + 40)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_updateBacklinkFilterCacheWithInfos:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SYBacklinkMonitorOperation *)self processingQueue];
  dispatch_assert_queue_V2(v5);

  [(SYBacklinkMonitorOperation *)self _setOperationState:2];
  v6 = [(SYBacklinkMonitorOperation *)self inputUserActivityInfo];
  v7 = [v6 activityType];

  if (v7)
  {
    v8 = [SYBacklinkFilterCache alloc];
    v9 = [(SYBacklinkMonitorOperation *)self inputUserActivityInfo];
    v10 = [v9 activityType];
    v27[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v12 = [(SYBacklinkFilterCache *)v8 initWithActivityTypes:v11];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(SYBacklinkFilterCache *)v12 addEntriesForItem:*(*(&v22 + 1) + 8 * v17++), v22];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    [(SYBacklinkFilterCache *)v12 finalize];
  }

  else
  {
    v12 = 0;
  }

  v18 = [(SYBacklinkMonitorOperation *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [(SYBacklinkMonitorOperation *)self delegate];
    [v20 backlinkMonitorOperation:self shouldUpdateFilterCache:v12];
  }

  [(SYBacklinkMonitorFilterCacheOperation *)self _finishProcessingAndNotify];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_finishProcessingAndNotify
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(SYBacklinkMonitorOperation *)self processingQueue];
  dispatch_assert_queue_V2(v3);

  [(SYBacklinkMonitorOperation *)self _setOperationState:3];
  v4 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = self;
    _os_log_impl(&dword_225901000, v4, OS_LOG_TYPE_DEFAULT, "BacklinkMonitorFilterOperation %p: Finished, notifying delegate.", &v7, 0xCu);
  }

  v5 = [(SYBacklinkMonitorOperation *)self delegate];
  [v5 backlinkMonitorOperationDidFinish:self];

  v6 = *MEMORY[0x277D85DE8];
}

@end