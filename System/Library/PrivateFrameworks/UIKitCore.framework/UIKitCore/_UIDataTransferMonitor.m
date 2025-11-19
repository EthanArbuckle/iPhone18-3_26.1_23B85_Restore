@interface _UIDataTransferMonitor
- (BOOL)suppressEventsUntilRequested;
- (NSProgress)progress;
- (_UIDataTransferMonitor)init;
- (_UIDataTransferMonitorDelegate)delegate;
- (unint64_t)totalItemsCount;
- (void)_transferQueue_recomputeMasterProgress;
- (void)_transferQueue_scheduleBeganCallback;
- (void)_transferQueue_scheduleFinishedCallback;
- (void)_transferQueue_sendBeganCallback;
- (void)_transferQueue_sendFinishedCallback;
- (void)cancelOutstandingRequests;
- (void)dealloc;
- (void)itemProvider:(id)a3 beganDataTransferTransactionUUID:(id)a4 progress:(id)a5;
- (void)itemProvider:(id)a3 finishedDataTransferTransactionUUID:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)sendDelegateEventsIfNeeded;
- (void)setSuppressEventsUntilRequested:(BOOL)a3;
@end

@implementation _UIDataTransferMonitor

- (_UIDataTransferMonitor)init
{
  v20.receiver = self;
  v20.super_class = _UIDataTransferMonitor;
  v2 = [(_UIDataTransferMonitor *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    transferQueue_requestsBySourceItemUUID = v2->_transferQueue_requestsBySourceItemUUID;
    v2->_transferQueue_requestsBySourceItemUUID = v3;

    v5 = [MEMORY[0x1E695DFA8] set];
    transferQueue_requestsInProgress = v2->_transferQueue_requestsInProgress;
    v2->_transferQueue_requestsInProgress = v5;

    v7 = [MEMORY[0x1E695DFA8] set];
    transferQueue_allEncounteredItemUUIDs = v2->_transferQueue_allEncounteredItemUUIDs;
    v2->_transferQueue_allEncounteredItemUUIDs = v7;

    v9 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
    transferQueue_masterProgress = v2->_transferQueue_masterProgress;
    v2->_transferQueue_masterProgress = v9;

    objc_initWeak(&location, v2);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __30___UIDataTransferMonitor_init__block_invoke;
    v17 = &unk_1E70F5A28;
    objc_copyWeak(&v18, &location);
    [(NSProgress *)v2->_transferQueue_masterProgress setCancellationHandler:&v14];
    v11 = [MEMORY[0x1E695DF70] array];
    transferQueue_childProgresses = v2->_transferQueue_childProgresses;
    v2->_transferQueue_childProgresses = v11;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)setSuppressEventsUntilRequested:(BOOL)a3
{
  v5 = _transferQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58___UIDataTransferMonitor_setSuppressEventsUntilRequested___block_invoke;
  v6[3] = &unk_1E70F35E0;
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
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54___UIDataTransferMonitor_suppressEventsUntilRequested__block_invoke;
  v5[3] = &unk_1E70FCDA0;
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
    [(_UIDataTransferMonitor *)self _transferQueue_sendBeganCallback];
  }
}

- (void)_transferQueue_sendBeganCallback
{
  self->_transferQueue_hasSentBeganCallback = 1;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58___UIDataTransferMonitor__transferQueue_sendBeganCallback__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  _dispatchCallback(v2);
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
      [(_UIDataTransferMonitor *)self _transferQueue_scheduleBeganCallback];
    }

    if (!self->_transferQueue_hasSentFinishedCallback)
    {

      [(_UIDataTransferMonitor *)self _transferQueue_sendFinishedCallback];
    }
  }
}

- (void)_transferQueue_sendFinishedCallback
{
  self->_transferQueue_hasSentFinishedCallback = 1;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61___UIDataTransferMonitor__transferQueue_sendFinishedCallback__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  _dispatchCallback(v2);
}

- (unint64_t)totalItemsCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = _transferQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41___UIDataTransferMonitor_totalItemsCount__block_invoke;
  v6[3] = &unk_1E70FCDA0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)sendDelegateEventsIfNeeded
{
  v3 = _transferQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52___UIDataTransferMonitor_sendDelegateEventsIfNeeded__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (NSProgress)progress
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__71;
  v11 = __Block_byref_object_dispose__71;
  v12 = 0;
  v3 = _transferQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34___UIDataTransferMonitor_progress__block_invoke;
  v6[3] = &unk_1E70FCDA0;
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
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___UIDataTransferMonitor_cancelOutstandingRequests__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)itemProvider:(id)a3 beganDataTransferTransactionUUID:(id)a4 progress:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v11 = _transferQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81___UIDataTransferMonitor_itemProvider_beganDataTransferTransactionUUID_progress___block_invoke;
  block[3] = &unk_1E7106908;
  v12 = v8;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  v14 = v10;
  v18 = v14;
  v19 = self;
  v20 = &v21;
  dispatch_sync(v11, block);

  [(_UIDataTransferMonitor *)self willChangeValueForKey:@"outstandingItemsCount"];
  self->_outstandingItemsCount = v22[3];
  [(_UIDataTransferMonitor *)self didChangeValueForKey:@"outstandingItemsCount"];

  _Block_object_dispose(&v21, 8);
}

- (void)_transferQueue_recomputeMasterProgress
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_transferQueue_childProgresses count];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_transferQueue_childProgresses;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v17 + 1) + 8 * i) fractionCompleted];
        v8 = v8 + v10;
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  v11 = self->_transferQueue_masterProgress;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64___UIDataTransferMonitor__transferQueue_recomputeMasterProgress__block_invoke;
  v13[3] = &unk_1E70F6848;
  v14 = v11;
  v15 = 100 * v3;
  v16 = v8;
  v12 = v11;
  _dispatchCallback(v13);
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73___UIDataTransferMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_async(v11, block);
  }
}

- (void)itemProvider:(id)a3 finishedDataTransferTransactionUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v8 = _transferQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75___UIDataTransferMonitor_itemProvider_finishedDataTransferTransactionUUID___block_invoke;
  block[3] = &unk_1E7105AE0;
  v17 = &v23;
  block[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = v7;
  v16 = v10;
  v18 = &v19;
  dispatch_sync(v8, block);

  v11 = v24[3];
  if (v11 != v20[3])
  {
    [(_UIDataTransferMonitor *)self willChangeValueForKey:@"outstandingItemsCount"];
    self->_outstandingItemsCount = v20[3];
    [(_UIDataTransferMonitor *)self didChangeValueForKey:@"outstandingItemsCount"];
    v11 = v24[3];
  }

  if (v11 && !v20[3])
  {
    v12 = _transferQueue();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __75___UIDataTransferMonitor_itemProvider_finishedDataTransferTransactionUUID___block_invoke_2;
    v13[3] = &unk_1E70F3590;
    v13[4] = self;
    dispatch_sync(v12, v13);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

- (void)dealloc
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_transferQueue_requestsBySourceItemUUID count])
  {
    v3 = objc_opt_class();
    NSLog(&cfstr_ErrorWasDeallo.isa, v3);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_transferQueue_requestsBySourceItemUUID;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)self->_transferQueue_requestsBySourceItemUUID objectForKeyedSubscript:*(*(&v20 + 1) + 8 * v7)];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          do
          {
            v12 = 0;
            do
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v16 + 1) + 8 * v12) progress];
              [v13 removeObserver:self forKeyPath:@"fractionCompleted"];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v15.receiver = self;
  v15.super_class = _UIDataTransferMonitor;
  [(_UIDataTransferMonitor *)&v15 dealloc];
}

- (_UIDataTransferMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end