@interface PBDataTransferMonitor
- (BOOL)suppressEventsUntilRequested;
- (NSProgress)progress;
- (PBDataTransferMonitor)init;
- (PBDataTransferMonitorDelegate)delegate;
- (unint64_t)totalItemsCount;
- (void)_transferQueue_recomputeMasterProgress;
- (void)_transferQueue_scheduleBeganCallback;
- (void)_transferQueue_scheduleFinishedCallback;
- (void)_transferQueue_sendBeganCallback;
- (void)_transferQueue_sendFinishedCallback;
- (void)cancelOutstandingRequests;
- (void)dealloc;
- (void)itemCollection:(id)a3 item:(id)a4 representation:(id)a5 beganDataTransferWithProgress:(id)a6;
- (void)itemCollection:(id)a3 item:(id)a4 representationFinishedDataTransfer:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)sendDelegateEventsIfNeeded;
- (void)setSuppressEventsUntilRequested:(BOOL)a3;
@end

@implementation PBDataTransferMonitor

- (PBDataTransferMonitor)init
{
  v20.receiver = self;
  v20.super_class = PBDataTransferMonitor;
  v2 = [(PBDataTransferMonitor *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    transferQueue_requestsBySourceItemUUID = v2->_transferQueue_requestsBySourceItemUUID;
    v2->_transferQueue_requestsBySourceItemUUID = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    transferQueue_requestsInProgress = v2->_transferQueue_requestsInProgress;
    v2->_transferQueue_requestsInProgress = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    transferQueue_allEncounteredItemUUIDs = v2->_transferQueue_allEncounteredItemUUIDs;
    v2->_transferQueue_allEncounteredItemUUIDs = v7;

    v9 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:0];
    transferQueue_masterProgress = v2->_transferQueue_masterProgress;
    v2->_transferQueue_masterProgress = v9;

    objc_initWeak(&location, v2);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __29__PBDataTransferMonitor_init__block_invoke;
    v17 = &unk_279A07198;
    objc_copyWeak(&v18, &location);
    [(NSProgress *)v2->_transferQueue_masterProgress setCancellationHandler:&v14];
    v11 = [MEMORY[0x277CBEB18] array];
    transferQueue_childProgresses = v2->_transferQueue_childProgresses;
    v2->_transferQueue_childProgresses = v11;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__PBDataTransferMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained cancelOutstandingRequests];
    WeakRetained = v2;
  }
}

- (void)setSuppressEventsUntilRequested:(BOOL)a3
{
  v5 = _transferQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__PBDataTransferMonitor_setSuppressEventsUntilRequested___block_invoke;
  v6[3] = &unk_279A070D0;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

- (BOOL)suppressEventsUntilRequested
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = _transferQueue();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__PBDataTransferMonitor_suppressEventsUntilRequested__block_invoke;
  v5[3] = &unk_279A06A60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (void)_transferQueue_scheduleBeganCallback
{
  if (self->_transferQueue_suppressEventsUntilRequested)
  {
    self->_transferQueue_shouldSendBeganCallback = 1;
  }

  else if (!self->_transferQueue_hasSentBeganCallback)
  {
    [(PBDataTransferMonitor *)self _transferQueue_sendBeganCallback];
  }
}

- (void)_transferQueue_sendBeganCallback
{
  self->_transferQueue_hasSentBeganCallback = 1;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __57__PBDataTransferMonitor__transferQueue_sendBeganCallback__block_invoke;
  v2[3] = &unk_279A063A0;
  v2[4] = self;
  PBDispatchAsyncCallback(v2);
}

void __57__PBDataTransferMonitor__transferQueue_sendBeganCallback__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained dataTransferMonitorBeganTransfers:*(a1 + 32)];
}

- (void)_transferQueue_scheduleFinishedCallback
{
  if (self->_transferQueue_suppressEventsUntilRequested)
  {
    self->_transferQueue_shouldSendFinishedCallback = 1;
  }

  else
  {
    if (!self->_transferQueue_hasSentBeganCallback)
    {
      [(PBDataTransferMonitor *)self _transferQueue_scheduleBeganCallback];
    }

    if (!self->_transferQueue_hasSentFinishedCallback)
    {

      [(PBDataTransferMonitor *)self _transferQueue_sendFinishedCallback];
    }
  }
}

- (void)_transferQueue_sendFinishedCallback
{
  self->_transferQueue_hasSentFinishedCallback = 1;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __60__PBDataTransferMonitor__transferQueue_sendFinishedCallback__block_invoke;
  v2[3] = &unk_279A063A0;
  v2[4] = self;
  PBDispatchAsyncCallback(v2);
}

void __60__PBDataTransferMonitor__transferQueue_sendFinishedCallback__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained dataTransferMonitorFinishedTransfers:*(a1 + 32)];
}

- (unint64_t)totalItemsCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = _transferQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PBDataTransferMonitor_totalItemsCount__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __40__PBDataTransferMonitor_totalItemsCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)sendDelegateEventsIfNeeded
{
  v3 = _transferQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PBDataTransferMonitor_sendDelegateEventsIfNeeded__block_invoke;
  block[3] = &unk_279A063A0;
  block[4] = self;
  dispatch_sync(v3, block);
}

_BYTE *__51__PBDataTransferMonitor_sendDelegateEventsIfNeeded__block_invoke(uint64_t a1)
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

- (NSProgress)progress
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  v3 = _transferQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__PBDataTransferMonitor_progress__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)cancelOutstandingRequests
{
  v3 = _transferQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PBDataTransferMonitor_cancelOutstandingRequests__block_invoke;
  block[3] = &unk_279A063A0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __50__PBDataTransferMonitor_cancelOutstandingRequests__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(a1 + 32) + 16);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v8 + 1) + 8 * v5) progress];
        [v6 cancel];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)itemCollection:(id)a3 item:(id)a4 representation:(id)a5 beganDataTransferWithProgress:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v14 = _transferQueue();
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __90__PBDataTransferMonitor_itemCollection_item_representation_beganDataTransferWithProgress___block_invoke;
  v22 = &unk_279A075C0;
  v15 = v10;
  v23 = v15;
  v16 = v11;
  v24 = v16;
  v17 = v12;
  v25 = v17;
  v18 = v13;
  v26 = v18;
  v27 = self;
  v28 = &v29;
  dispatch_sync(v14, &v19);

  [(PBDataTransferMonitor *)self willChangeValueForKey:@"outstandingItemsCount", v19, v20, v21, v22];
  self->_outstandingItemsCount = v30[3];
  [(PBDataTransferMonitor *)self didChangeValueForKey:@"outstandingItemsCount"];

  _Block_object_dispose(&v29, 8);
}

void __90__PBDataTransferMonitor_itemCollection_item_representation_beganDataTransferWithProgress___block_invoke(uint64_t a1)
{
  v4 = objc_alloc_init(PBDataTransferRequest);
  [(PBDataTransferRequest *)v4 setItemCollection:*(a1 + 32)];
  [(PBDataTransferRequest *)v4 setItem:*(a1 + 40)];
  [(PBDataTransferRequest *)v4 setRepr:*(a1 + 48)];
  [(PBDataTransferRequest *)v4 setProgress:*(a1 + 56)];
  v2 = [*(a1 + 40) UUID];
  [*(*(a1 + 64) + 48) addObject:v2];
  v3 = [*(*(a1 + 64) + 8) objectForKeyedSubscript:v2];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    [*(*(a1 + 64) + 8) setObject:v3 forKeyedSubscript:v2];
  }

  [v3 addObject:v4];
  [*(*(a1 + 64) + 16) addObject:v4];
  [*(*(a1 + 64) + 40) addObject:*(a1 + 56)];
  [*(a1 + 56) addObserver:*(a1 + 64) forKeyPath:@"fractionCompleted" options:1 context:0];
  [*(a1 + 64) _transferQueue_recomputeMasterProgress];
  [*(a1 + 64) _transferQueue_scheduleBeganCallback];
  *(*(*(a1 + 72) + 8) + 24) = [*(*(a1 + 64) + 8) count];
}

- (void)_transferQueue_recomputeMasterProgress
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_transferQueue_childProgresses count];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_transferQueue_childProgresses;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v18 + 1) + 8 * i) fractionCompleted];
        v8 = v8 + v10;
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  v11 = self->_transferQueue_masterProgress;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__PBDataTransferMonitor__transferQueue_recomputeMasterProgress__block_invoke;
  v14[3] = &unk_279A075E8;
  v15 = v11;
  v16 = 100 * v3;
  v17 = v8;
  v12 = v11;
  PBDispatchAsyncCallback(v14);

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __63__PBDataTransferMonitor__transferQueue_recomputeMasterProgress__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTotalUnitCount:*(a1 + 40)];
  v2 = (*(a1 + 48) * 100.0);
  v3 = *(a1 + 32);

  return [v3 setCompletedUnitCount:v2];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && [v8 isEqualToString:@"fractionCompleted"])
  {
    v11 = _transferQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__PBDataTransferMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_279A063A0;
    block[4] = self;
    dispatch_async(v11, block);
  }
}

- (void)itemCollection:(id)a3 item:(id)a4 representationFinishedDataTransfer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v11 = _transferQueue();
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __80__PBDataTransferMonitor_itemCollection_item_representationFinishedDataTransfer___block_invoke;
  v19 = &unk_279A07610;
  v24 = &v30;
  v20 = self;
  v12 = v9;
  v21 = v12;
  v13 = v8;
  v22 = v13;
  v14 = v10;
  v23 = v14;
  v25 = &v26;
  dispatch_sync(v11, &v16);

  v15 = v31[3];
  if (v15 != v27[3])
  {
    [(PBDataTransferMonitor *)self willChangeValueForKey:@"outstandingItemsCount", v16, v17, v18, v19, v20, v21, v22];
    self->_outstandingItemsCount = v27[3];
    [(PBDataTransferMonitor *)self didChangeValueForKey:@"outstandingItemsCount"];
    v15 = v31[3];
  }

  if (v15 && !v27[3])
  {
    [(PBDataTransferMonitor *)self _transferQueue_scheduleFinishedCallback];
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
}

void __80__PBDataTransferMonitor_itemCollection_item_representationFinishedDataTransfer___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 64) + 8) + 24) = [*(*(a1 + 32) + 8) count];
  v17 = [*(a1 + 40) UUID];
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:?];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v18 = v5;
  if ([v6 count])
  {
    v9 = 0;
    while (1)
    {
      v10 = [v6 objectAtIndex:v9];
      v11 = [v10 itemCollection];
      if (![v11 isEqual:v7])
      {
        goto LABEL_8;
      }

      v12 = [v10 item];
      if (([v12 isEqual:v8] & 1) == 0)
      {
        break;
      }

      v13 = [v10 repr];
      v14 = [v13 isEqual:v18];

      if (v14)
      {

        goto LABEL_11;
      }

LABEL_9:

      if (++v9 >= [v6 count])
      {
        goto LABEL_10;
      }
    }

LABEL_8:
    goto LABEL_9;
  }

LABEL_10:
  v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:

  v15 = [v6 objectAtIndexedSubscript:v9];
  v16 = [v15 progress];
  [v16 removeObserver:*(a1 + 32) forKeyPath:@"fractionCompleted"];

  [v6 removeObjectAtIndex:v9];
  if (![v6 count])
  {
    [*(*(a1 + 32) + 8) removeObjectForKey:v17];
  }

  [*(*(a1 + 32) + 16) removeObject:v15];
  if (![*(*(a1 + 32) + 16) count])
  {
    [*(a1 + 32) _transferQueue_scheduleFinishedCallback];
  }

  *(*(*(a1 + 72) + 8) + 24) = [*(*(a1 + 32) + 8) count];
}

- (void)dealloc
{
  v30 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_transferQueue_requestsBySourceItemUUID count])
  {
    v3 = _PBLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v29 = objc_opt_class();
      v15 = v29;
      _os_log_fault_impl(&dword_25E138000, v3, OS_LOG_TYPE_FAULT, "ERROR: %@ was deallocated while data transfer was still in progress.", buf, 0xCu);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_transferQueue_requestsBySourceItemUUID;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)self->_transferQueue_requestsBySourceItemUUID objectForKeyedSubscript:*(*(&v22 + 1) + 8 * v7)];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          do
          {
            v12 = 0;
            do
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v18 + 1) + 8 * v12) progress];
              [v13 removeObserver:self forKeyPath:@"fractionCompleted"];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v10);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v17.receiver = self;
  v17.super_class = PBDataTransferMonitor;
  [(PBDataTransferMonitor *)&v17 dealloc];
  v14 = *MEMORY[0x277D85DE8];
}

- (PBDataTransferMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end