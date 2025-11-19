@interface SBKPlaybackPositionSyncRequestHandler
- (BOOL)_shouldStop;
- (BOOL)_synchronize:(id *)a3;
- (BOOL)transactionController:(id)a3 transactionDidFail:(id)a4 error:(id)a5;
- (SBKPlaybackPositionSyncRequestHandler)initWithDataSource:(id)a3 bagContext:(id)a4;
- (SBKPlaybackPositionSyncRequestHandler)initWithDataSource:(id)a3 bagContext:(id)a4 accountIdentifier:(id)a5;
- (id)_synchronouslyRunKVSTransaction:(id)a3;
- (id)currentKVSTransaction;
- (id)dataSourceTransactionContext;
- (id)metadataItemsToCommitToDataSource;
- (id)metadataItemsToCommitToKVSStorage;
- (id)newKVSSyncTransactionWithUpdatedMetadataItemIdentifiers:(id)a3 processConflicts:(BOOL)a4;
- (id)transaction:(id)a3 conflictDetectionOrdinalForKey:(id)a4;
- (id)transaction:(id)a3 keyValuePairForUpdatedKey:(id)a4;
- (id)transaction:(id)a3 syncAnchorForTransactionSyncAnchor:(id)a4;
- (int)_mergeConflictedItemFromSyncResponse:(id)a3;
- (void)_dataSourceCancelTransaction;
- (void)_mergeMetadataItemsFromSyncResponse;
- (void)_signalKVSTransactionCompletion:(id)a3;
- (void)_signalKVSTransactionCompletion:(id)a3 withError:(id)a4;
- (void)cancelWithError:(id)a3;
- (void)clearTransactionResponseData;
- (void)setCurrentKVSTransaction:(id)a3;
- (void)setDataSourceTransactionContext:(id)a3;
- (void)setMetadataItemsToCommitToDataSource:(id)a3;
- (void)setMetadataItemsToCommitToKVSStorage:(id)a3;
- (void)synchronizeWithCompletionHandler:(id)a3;
- (void)timeout;
- (void)transaction:(id)a3 didProcessResponseData:(id)a4;
- (void)transaction:(id)a3 processDeletedKey:(id)a4 isDirty:(BOOL *)a5;
- (void)transaction:(id)a3 willProcessResponseData:(id)a4;
@end

@implementation SBKPlaybackPositionSyncRequestHandler

- (id)transaction:(id)a3 conflictDetectionOrdinalForKey:(id)a4
{
  v5 = a4;
  v6 = [(SBKPlaybackPositionSyncRequestHandler *)self metadataItemsToCommitToKVSStorage];
  v7 = [v6 objectForKey:v5];

  v8 = MEMORY[0x277CCABB0];
  [v7 timestamp];
  v9 = [v8 numberWithDouble:?];

  return v9;
}

- (id)transaction:(id)a3 syncAnchorForTransactionSyncAnchor:(id)a4
{
  v5 = a4;
  v6 = v5;
  overrideSyncAnchor = self->_overrideSyncAnchor;
  if (!overrideSyncAnchor)
  {
    overrideSyncAnchor = v5;
  }

  v8 = overrideSyncAnchor;

  return v8;
}

- (id)transaction:(id)a3 keyValuePairForUpdatedKey:(id)a4
{
  v5 = a4;
  v6 = [(SBKPlaybackPositionSyncRequestHandler *)self metadataItemsToCommitToKVSStorage];
  v7 = [v6 objectForKey:v5];

  return v7;
}

- (void)transaction:(id)a3 processDeletedKey:(id)a4 isDirty:(BOOL *)a5
{
  v5.receiver = self;
  v5.super_class = SBKPlaybackPositionSyncRequestHandler;
  [(SBKSyncRequestHandler *)&v5 transaction:a3 processDeletedKey:a4 isDirty:a5];
}

- (void)transaction:(id)a3 didProcessResponseData:(id)a4
{
  v4.receiver = self;
  v4.super_class = SBKPlaybackPositionSyncRequestHandler;
  [(SBKSyncRequestHandler *)&v4 transaction:a3 didProcessResponseData:a4];
}

- (void)transaction:(id)a3 willProcessResponseData:(id)a4
{
  v4.receiver = self;
  v4.super_class = SBKPlaybackPositionSyncRequestHandler;
  [(SBKSyncRequestHandler *)&v4 transaction:a3 willProcessResponseData:a4];
}

- (BOOL)transactionController:(id)a3 transactionDidFail:(id)a4 error:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if ([v8 isAccountsChangedError])
  {
    v9 = os_log_create("com.apple.amp.StoreBookkeeper", "Sync");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 syncAnchor];
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_26BC19000, v9, OS_LOG_TYPE_DEFAULT, "Detected account change.  Getting remote items since version 0 instead of %@\n", &v15, 0xCu);
    }

    v11 = [MEMORY[0x277CBEAC0] dictionary];
    [(SBKPlaybackPositionSyncRequestHandler *)self setMetadataItemsToCommitToKVSStorage:v11];

    objc_storeStrong(&self->_overrideSyncAnchor, @"0");
  }

  else if (([v8 isRecoverableError] & 1) == 0)
  {
    [(SBKPlaybackPositionSyncRequestHandler *)self _signalKVSTransactionCompletion:v7 withError:v8];
    v12 = 1;
    goto LABEL_8;
  }

  v12 = 0;
LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_signalKVSTransactionCompletion:(id)a3 withError:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    if (v6)
    {
      v10 = os_log_create("com.apple.amp.StoreBookkeeper", "Sync");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v6;
        _os_log_impl(&dword_26BC19000, v10, OS_LOG_TYPE_DEFAULT, "transaction is being canceled.  error = %@", &v13, 0xCu);
      }
    }

    [(SBKPlaybackPositionSyncRequestHandler *)self setFatalSyncError:v6];
    v11 = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
    [(SBKPlaybackPositionSyncRequestHandler *)self _signalKVSTransactionCompletion:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_signalKVSTransactionCompletion:(id)a3
{
  v3 = [a3 transactionContextForKey:@"completionConditionLock"];
  [v3 lock];
  [v3 unlockWithCondition:1];
}

- (id)_synchronouslyRunKVSTransaction:(id)a3
{
  v4 = a3;
  v5 = [(SBKPlaybackPositionSyncRequestHandler *)self kvsController];
  [v5 scheduleTransaction:v4];

  v6 = [v4 transactionContextForKey:@"completionConditionLock"];

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:10.0];
  v8 = [v6 lockWhenCondition:1 beforeDate:v7];

  if (v8)
  {
    [v6 unlock];
  }

  else
  {
    v9 = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
    v10 = [SBKStoreError transactionTimeoutErrorWithTransaction:v9 underlyingError:0];
    [(SBKPlaybackPositionSyncRequestHandler *)self setFatalSyncError:v10];
  }

  v11 = [(SBKPlaybackPositionSyncRequestHandler *)self fatalSyncError];

  return v11;
}

- (id)newKVSSyncTransactionWithUpdatedMetadataItemIdentifiers:(id)a3 processConflicts:(BOOL)a4
{
  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v7 = [SBKSyncTransaction alloc];
  v8 = [(SBKRequestHandler *)self bagContext];
  v9 = [(SBKPlaybackPositionSyncRequestHandler *)self dataSourceTransactionContext];
  v10 = [v9 lastSyncedDomainVersion];
  v11 = [(SBKSyncTransaction *)v7 initWithStoreBagContext:v8 syncAnchor:v10 keysToUpdate:v6 keysToDelete:0 conflictDetectionType:v5];

  [(SBKSyncTransaction *)v11 setTransactionProcessor:self];
  v12 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
  [(SBKTransaction *)v11 setTransactionContext:v12 forKey:@"completionConditionLock"];

  return v11;
}

- (void)_mergeMetadataItemsFromSyncResponse
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_responseMetadataItemsToCommitToDataSource copy];
  metadataItemsToCommitToDataSource = self->_metadataItemsToCommitToDataSource;
  self->_metadataItemsToCommitToDataSource = v3;

  v5 = [(NSMutableDictionary *)self->_responseMetadataItemsMergedToCommitBackToKVSStorage copy];
  metadataItemsToCommitToKVSStorage = self->_metadataItemsToCommitToKVSStorage;
  self->_metadataItemsToCommitToKVSStorage = v5;

  [(NSMutableDictionary *)self->_responseMetadataItemsToCommitToDataSource removeAllObjects];
  [(NSMutableDictionary *)self->_responseMetadataItemsMergedToCommitBackToKVSStorage removeAllObjects];
  v7 = os_log_create("com.apple.amp.StoreBookkeeper", "Sync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSDictionary *)self->_metadataItemsToCommitToDataSource count];
    v9 = [(NSDictionary *)self->_metadataItemsToCommitToKVSStorage count];
    v10 = [(NSDictionary *)self->_metadataItemsToCommitToDataSource allKeys];
    v11 = [(NSDictionary *)self->_metadataItemsToCommitToKVSStorage allKeys];
    v13 = 134218754;
    v14 = v8;
    v15 = 2048;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_26BC19000, v7, OS_LOG_TYPE_DEFAULT, "Handled items in response, will save %lld items locally and push back %lld conflict resolutions\nkeys to save to local db = %@\nkeys to push to cloud db = %@\n", &v13, 0x2Au);
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];
}

- (int)_mergeConflictedItemFromSyncResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 itemIdentifier];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_metadataItemsFromDataSource objectForKey:v5];
  os_unfair_lock_unlock(&self->_lock);
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __78__SBKPlaybackPositionSyncRequestHandler__mergeConflictedItemFromSyncResponse___block_invoke;
  v26 = &unk_279D22DE0;
  v27 = self;
  v7 = v4;
  v28 = v7;
  v29 = v5;
  v8 = v6;
  v30 = v8;
  v9 = v5;
  v10 = MEMORY[0x26D6917A0](&v23);
  if (!v8)
  {
    goto LABEL_6;
  }

  [v8 timestamp];
  v12 = v11;
  [v7 timestamp];
  if (v12 <= v13)
  {
    [v8 timestamp];
    v18 = v17;
    [v7 timestamp];
    if (v18 >= v19)
    {
      v22 = [v8 isEqual:v7];
      v14 = v10[2];
      if (!v22)
      {
        goto LABEL_4;
      }

LABEL_7:
      v15 = v10;
      v16 = 2;
      goto LABEL_8;
    }

LABEL_6:
    v14 = v10[2];
    goto LABEL_7;
  }

  v14 = v10[2];
LABEL_4:
  v15 = v10;
  v16 = 1;
LABEL_8:
  v20 = v14(v15, v16);

  return v20;
}

uint64_t __78__SBKPlaybackPositionSyncRequestHandler__mergeConflictedItemFromSyncResponse___block_invoke(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((*(a1 + 32) + 96));
  if (a2 == 2)
  {
    v4 = &OBJC_IVAR___SBKPlaybackPositionSyncRequestHandler__responseMetadataItemsMergedToCommitBackToKVSStorage;
    v5 = 40;
    v6 = &OBJC_IVAR___SBKPlaybackPositionSyncRequestHandler__responseMetadataItemsToCommitToDataSource;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v4 = &OBJC_IVAR___SBKPlaybackPositionSyncRequestHandler__responseMetadataItemsToCommitToDataSource;
    v5 = 56;
    v6 = &OBJC_IVAR___SBKPlaybackPositionSyncRequestHandler__responseMetadataItemsMergedToCommitBackToKVSStorage;
LABEL_5:
    [*(*(a1 + 32) + *v6) setObject:*(a1 + v5) forKey:*(a1 + 48)];
    [*(*(a1 + 32) + *v4) removeObjectForKey:*(a1 + 48)];
  }

  os_unfair_lock_unlock((*(a1 + 32) + 96));
  return a2;
}

- (void)synchronizeWithCompletionHandler:(id)a3
{
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SBKPlaybackPositionSyncRequestHandler_synchronizeWithCompletionHandler___block_invoke;
  block[3] = &unk_279D230A0;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(queue, block);
  if (*(v14 + 24) == 1)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"SBKPlaybackPositionSyncRequestHandler.m" lineNumber:335 description:@"you can not nest synchronization calls"];
  }

  syncOperationQueue = self->_syncOperationQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__SBKPlaybackPositionSyncRequestHandler_synchronizeWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_279D23100;
  v10[4] = self;
  v11 = v5;
  v8 = v5;
  dispatch_async(syncOperationQueue, v10);

  _Block_object_dispose(&v13, 8);
}

uint64_t __74__SBKPlaybackPositionSyncRequestHandler_synchronizeWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) syncInProgress];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __74__SBKPlaybackPositionSyncRequestHandler_synchronizeWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  [v2 _synchronize:&v4];
  v3 = v4;
  (*(*(a1 + 40) + 16))();
}

- (void)timeout
{
  v4 = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
  v3 = [SBKStoreError transactionTimeoutErrorWithTransaction:v4 underlyingError:0];
  [(SBKPlaybackPositionSyncRequestHandler *)self cancelWithError:v3];
}

- (void)cancelWithError:(id)a3
{
  v8 = a3;
  [(SBKPlaybackPositionSyncRequestHandler *)self setCanceled:1];
  v4 = [(SBKPlaybackPositionSyncRequestHandler *)self kvsController];
  if ([v4 isIdle])
  {
    v5 = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];

    if (!v5)
    {
      goto LABEL_7;
    }

    if (!v8)
    {
      v6 = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
      v8 = [SBKStoreError transactionCancelledErrorWithTransaction:v6 underlyingError:0];
    }

    v4 = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
    [(SBKPlaybackPositionSyncRequestHandler *)self _signalKVSTransactionCompletion:v4 withError:v8];
  }

LABEL_7:
  v7 = [(SBKPlaybackPositionSyncRequestHandler *)self kvsController];
  if (v8)
  {
    [v7 cancelAllTransactionsCancelCode:{objc_msgSend(v8, "code")}];
  }

  else
  {
    [v7 cancelAllTransactions];
  }
}

- (BOOL)_shouldStop
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__SBKPlaybackPositionSyncRequestHandler__shouldStop__block_invoke;
  v5[3] = &unk_279D230A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __52__SBKPlaybackPositionSyncRequestHandler__shouldStop__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) canceled])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v2 = [*(a1 + 32) fatalSyncError];
    *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
  }
}

- (BOOL)_synchronize:(id *)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SBKPlaybackPositionSyncRequestHandler__synchronize___block_invoke;
  block[3] = &unk_279D230A0;
  block[4] = self;
  block[5] = &v64;
  dispatch_sync(queue, block);
  v6 = *(v65 + 24);
  v7 = os_log_create("com.apple.amp.StoreBookkeeper", "Sync");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 != 1)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_26BC19000, v7, OS_LOG_TYPE_DEFAULT, "Beginning synchronization", buf, 2u);
    }

    v10 = [(SBKPlaybackPositionSyncRequestHandler *)self dataSource];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __54__SBKPlaybackPositionSyncRequestHandler__synchronize___block_invoke_22;
    v62[3] = &unk_279D22D90;
    v62[4] = self;
    v11 = [v10 beginTransactionWithItemsToSyncEnumerationBlock:v62];
    [(SBKPlaybackPositionSyncRequestHandler *)self setDataSourceTransactionContext:v11];

    v12 = [(SBKPlaybackPositionSyncRequestHandler *)self dataSourceTransactionContext];
    LOBYTE(v10) = v12 == 0;

    if (v10)
    {
      goto LABEL_10;
    }

    if ([(SBKPlaybackPositionSyncRequestHandler *)self _shouldStop])
    {
      [(SBKPlaybackPositionSyncRequestHandler *)self _dataSourceCancelTransaction];
LABEL_10:
      v9 = 0;
      goto LABEL_40;
    }

    os_unfair_lock_lock(&self->_lock);
    v13 = [(NSMutableDictionary *)self->_metadataItemsFromDataSource copy];
    v14 = [(NSMutableDictionary *)self->_responseMetadataItemsMergedToCommitBackToKVSStorage copy];
    os_unfair_lock_unlock(&self->_lock);
    v15 = os_log_create("com.apple.amp.StoreBookkeeper", "Sync");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v13 allKeys];
      v17 = [v16 count];
      v18 = [v13 allKeys];
      *buf = 134218242;
      v69 = v17;
      v70 = 2112;
      v71 = v18;
      _os_log_impl(&dword_26BC19000, v15, OS_LOG_TYPE_DEFAULT, "Gathered local %lu items to sync from dataSource: %@", buf, 0x16u);
    }

    v19 = os_log_create("com.apple.amp.StoreBookkeeper", "Sync");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(SBKPlaybackPositionSyncRequestHandler *)self dataSourceTransactionContext];
      *buf = 138412290;
      v69 = v20;
      _os_log_impl(&dword_26BC19000, v19, OS_LOG_TYPE_DEFAULT, "dataSource transaction context = %@", buf, 0xCu);
    }

    [(SBKPlaybackPositionSyncRequestHandler *)self setMetadataItemsToCommitToKVSStorage:v13];
    v21 = [(SBKPlaybackPositionSyncRequestHandler *)self metadataItemsToCommitToKVSStorage];
    v22 = [v21 allKeys];
    v23 = [(SBKPlaybackPositionSyncRequestHandler *)self newKVSSyncTransactionWithUpdatedMetadataItemIdentifiers:v22 processConflicts:1];
    [(SBKPlaybackPositionSyncRequestHandler *)self setCurrentKVSTransaction:v23];

    v24 = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
    v25 = [v24 requestURL];
    LODWORD(v22) = v25 == 0;

    if (v22 && ([(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction], v32 = objc_claimAutoreleasedReturnValue(), [SBKStoreError transactionMissingURLErrorWithTransaction:v32 underlyingError:0], v30 = objc_claimAutoreleasedReturnValue(), v32, v30))
    {
      if (a3)
      {
        v33 = v30;
        *a3 = v30;
      }
    }

    else
    {
      if ([(SBKPlaybackPositionSyncRequestHandler *)self _shouldStop])
      {
        [(SBKPlaybackPositionSyncRequestHandler *)self _dataSourceCancelTransaction];
        v9 = 0;
LABEL_39:

        goto LABEL_40;
      }

      v26 = os_log_create("com.apple.amp.StoreBookkeeper", "Sync");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
        v28 = [v27 syncAnchor];
        *buf = 138412290;
        v69 = v28;
        _os_log_impl(&dword_26BC19000, v26, OS_LOG_TYPE_DEFAULT, "Performing sync with server using syncAnchor = %@", buf, 0xCu);
      }

      v29 = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
      v30 = [(SBKPlaybackPositionSyncRequestHandler *)self _synchronouslyRunKVSTransaction:v29];

      if (!v30)
      {
        if (![(SBKPlaybackPositionSyncRequestHandler *)self _shouldStop])
        {
          [(SBKPlaybackPositionSyncRequestHandler *)self _mergeMetadataItemsFromSyncResponse];
          v34 = [(SBKPlaybackPositionSyncRequestHandler *)self metadataItemsToCommitToKVSStorage];
          v35 = [v34 count];

          if (!v35)
          {
            goto LABEL_53;
          }

          v36 = _SBKLogCategorySync();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [(SBKPlaybackPositionSyncRequestHandler *)self metadataItemsToCommitToKVSStorage];
            v38 = [v37 allKeys];
            *buf = 138412290;
            v69 = v38;
            _os_log_impl(&dword_26BC19000, v36, OS_LOG_TYPE_DEFAULT, "Sending merged items to server: %@", buf, 0xCu);
          }

          v39 = [(SBKPlaybackPositionSyncRequestHandler *)self metadataItemsToCommitToKVSStorage];
          v40 = [v39 allKeys];
          v41 = [(SBKPlaybackPositionSyncRequestHandler *)self newKVSSyncTransactionWithUpdatedMetadataItemIdentifiers:v40 processConflicts:0];
          [(SBKPlaybackPositionSyncRequestHandler *)self setCurrentKVSTransaction:v41];

          v42 = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
          v30 = [(SBKPlaybackPositionSyncRequestHandler *)self _synchronouslyRunKVSTransaction:v42];

          if (v30)
          {
            if (a3)
            {
              v43 = v30;
              *a3 = v30;
            }

            goto LABEL_36;
          }

          if (![(SBKPlaybackPositionSyncRequestHandler *)self _shouldStop])
          {
LABEL_53:
            if ([v14 count])
            {
              v46 = _SBKLogCategoryDefault();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_26BC19000, v46, OS_LOG_TYPE_ERROR, "WARNING: sent resolved conflict to server, but still received conflicts in the response, saving those for next time...", buf, 2u);
              }
            }

            v47 = _SBKLogCategorySync();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v48 = [(SBKSyncRequestHandler *)self responseDomainVersion];
              v49 = [(SBKPlaybackPositionSyncRequestHandler *)self metadataItemsToCommitToDataSource];
              *buf = 138412546;
              v69 = v48;
              v70 = 2112;
              v71 = v49;
              _os_log_impl(&dword_26BC19000, v47, OS_LOG_TYPE_DEFAULT, "Committing merged items with domainRevision: %@ to local database: %@", buf, 0x16u);
            }

            v50 = [(SBKPlaybackPositionSyncRequestHandler *)self metadataItemsToCommitToDataSource];
            v51 = [v50 objectEnumerator];

            v52 = [(SBKPlaybackPositionSyncRequestHandler *)self dataSource];
            v53 = [(SBKPlaybackPositionSyncRequestHandler *)self dataSourceTransactionContext];
            v54 = [(SBKSyncRequestHandler *)self responseDomainVersion];
            v57 = MEMORY[0x277D85DD0];
            v58 = 3221225472;
            v59 = __54__SBKPlaybackPositionSyncRequestHandler__synchronize___block_invoke_26;
            v60 = &unk_279D22DB8;
            v55 = v51;
            v61 = v55;
            [v52 commitUniversalPlaybackPositionTransaction:v53 domainVersion:v54 metadataEnumerationBlock:&v57];

            [(SBKPlaybackPositionSyncRequestHandler *)self clearTransactionResponseData:v57];
            v56 = _SBKLogCategorySync();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_26BC19000, v56, OS_LOG_TYPE_DEFAULT, "Finished synchronization", buf, 2u);
            }

            v30 = 0;
            v9 = 1;
            goto LABEL_38;
          }
        }

        [(SBKPlaybackPositionSyncRequestHandler *)self _dataSourceCancelTransaction];
        v30 = 0;
LABEL_37:
        v9 = 0;
LABEL_38:

        goto LABEL_39;
      }

      if (a3)
      {
        v31 = v30;
        *a3 = v30;
      }
    }

LABEL_36:
    [(SBKPlaybackPositionSyncRequestHandler *)self _dataSourceCancelTransaction];
    goto LABEL_37;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_26BC19000, v7, OS_LOG_TYPE_DEFAULT, "Skipping synchronize: synchronization already in progress", buf, 2u);
  }

  v9 = 1;
LABEL_40:
  _Block_object_dispose(&v64, 8);
  v44 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __54__SBKPlaybackPositionSyncRequestHandler__synchronize___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) syncInProgress];
  v2 = *(a1 + 32);

  return [v2 setSyncInProgress:1];
}

void __54__SBKPlaybackPositionSyncRequestHandler__synchronize___block_invoke_22(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [SBKUniversalPlaybackPositionMetadata metadataWithValuesFromDataSourceItem:a2];
  v4 = [v3 itemIdentifier];
  v5 = [v4 length];

  if (v5)
  {
    os_unfair_lock_lock((*(a1 + 32) + 96));
    v6 = *(*(a1 + 32) + 136);
    v7 = [v3 itemIdentifier];
    [v6 setObject:v3 forKey:v7];

    os_unfair_lock_unlock((*(a1 + 32) + 96));
  }

  else
  {
    v8 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_26BC19000, v8, OS_LOG_TYPE_ERROR, "ERROR: will skip syncing item with no sync metadataIdentifier: %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_dataSourceCancelTransaction
{
  [(SBKPlaybackPositionSyncRequestHandler *)self clearTransactionResponseData];
  v4 = [(SBKPlaybackPositionSyncRequestHandler *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(SBKPlaybackPositionSyncRequestHandler *)self dataSourceTransactionContext];
    [v4 cancelUniversalPlaybackPositionTransaction:v3];
  }
}

- (void)clearTransactionResponseData
{
  os_unfair_lock_lock(&self->_lock);
  dataSourceTransactionContext = self->_dataSourceTransactionContext;
  self->_dataSourceTransactionContext = 0;

  currentKVSTransaction = self->_currentKVSTransaction;
  self->_currentKVSTransaction = 0;

  [(NSMutableDictionary *)self->_metadataItemsFromDataSource removeAllObjects];
  v5 = [MEMORY[0x277CBEAC0] dictionary];
  metadataItemsToCommitToDataSource = self->_metadataItemsToCommitToDataSource;
  self->_metadataItemsToCommitToDataSource = v5;

  v7 = [MEMORY[0x277CBEAC0] dictionary];
  metadataItemsToCommitToKVSStorage = self->_metadataItemsToCommitToKVSStorage;
  self->_metadataItemsToCommitToKVSStorage = v7;

  [(NSMutableDictionary *)self->_responseMetadataItemsToCommitToDataSource removeAllObjects];
  [(NSMutableDictionary *)self->_responseMetadataItemsMergedToCommitBackToKVSStorage removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (SBKPlaybackPositionSyncRequestHandler)initWithDataSource:(id)a3 bagContext:(id)a4 accountIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v39 = [MEMORY[0x277CCA890] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"SBKPlaybackPositionSyncRequestHandler.m" lineNumber:168 description:@"invalid parameters - data source is required"];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v40 = [MEMORY[0x277CCA890] currentHandler];
  [v40 handleFailureInMethod:a2 object:self file:@"SBKPlaybackPositionSyncRequestHandler.m" lineNumber:169 description:@"invalid parameters - bagContext is required"];

LABEL_3:
  v12 = [v10 domain];

  if (!v12)
  {
    v41 = [MEMORY[0x277CCA890] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"SBKPlaybackPositionSyncRequestHandler.m" lineNumber:170 description:@"invalid parameters - bagContext.domain is required"];
  }

  v43.receiver = self;
  v43.super_class = SBKPlaybackPositionSyncRequestHandler;
  v13 = [(SBKSyncRequestHandler *)&v43 initWithBagContext:v10 accountIdentifier:v11];
  v14 = v13;
  if (v13)
  {
    [(SBKPlaybackPositionSyncRequestHandler *)v13 setDataSource:v9];
    v15 = [MEMORY[0x277CBEB38] dictionary];
    metadataItemsFromDataSource = v14->_metadataItemsFromDataSource;
    v14->_metadataItemsFromDataSource = v15;

    v17 = [MEMORY[0x277CBEAC0] dictionary];
    metadataItemsToCommitToDataSource = v14->_metadataItemsToCommitToDataSource;
    v14->_metadataItemsToCommitToDataSource = v17;

    v19 = [MEMORY[0x277CBEAC0] dictionary];
    metadataItemsToCommitToKVSStorage = v14->_metadataItemsToCommitToKVSStorage;
    v14->_metadataItemsToCommitToKVSStorage = v19;

    v21 = [MEMORY[0x277CBEB38] dictionary];
    responseMetadataItemsToCommitToDataSource = v14->_responseMetadataItemsToCommitToDataSource;
    v14->_responseMetadataItemsToCommitToDataSource = v21;

    v23 = [MEMORY[0x277CBEB38] dictionary];
    responseMetadataItemsMergedToCommitBackToKVSStorage = v14->_responseMetadataItemsMergedToCommitBackToKVSStorage;
    v14->_responseMetadataItemsMergedToCommitBackToKVSStorage = v23;

    v25 = [v10 domain];

    if (!v25)
    {
      v42 = [MEMORY[0x277CCA890] currentHandler];
      [v42 handleFailureInMethod:a2 object:v14 file:@"SBKPlaybackPositionSyncRequestHandler.m" lineNumber:181 description:@"Invalid bag.  no domain specified"];
    }

    v26 = [MEMORY[0x277D69A20] defaultStore];
    v27 = [v26 accountWithUniqueIdentifier:v11];

    v28 = [SBKTransactionController alloc];
    v29 = [v10 domain];
    v30 = [v10 syncRequestURL];
    v31 = [(SBKTransactionController *)v28 initWithDomain:v29 requestURL:v30 forAccount:v27];

    [(SBKTransactionController *)v31 setDelegate:v14];
    [(SBKPlaybackPositionSyncRequestHandler *)v14 setKvsController:v31];
    v14->_lock._os_unfair_lock_opaque = 0;
    v32 = dispatch_queue_create("SBKPlaybackPositionSyncRequestHandler.queue", 0);
    queue = v14->_queue;
    v14->_queue = v32;

    v34 = v14->_queue;
    v35 = dispatch_get_global_queue(-32768, 0);
    dispatch_set_target_queue(v34, v35);

    v36 = dispatch_queue_create("SBKPlaybackPositionSyncRequestHandler.syncOperationQueue", 0);
    syncOperationQueue = v14->_syncOperationQueue;
    v14->_syncOperationQueue = v36;

    dispatch_set_target_queue(v14->_syncOperationQueue, v35);
  }

  return v14;
}

- (SBKPlaybackPositionSyncRequestHandler)initWithDataSource:(id)a3 bagContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = SBKStoreAccount();
  v9 = [v8 uniqueIdentifier];
  v10 = [(SBKPlaybackPositionSyncRequestHandler *)self initWithDataSource:v7 bagContext:v6 accountIdentifier:v9];

  return v10;
}

- (void)setMetadataItemsToCommitToKVSStorage:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  metadataItemsToCommitToKVSStorage = self->_metadataItemsToCommitToKVSStorage;
  self->_metadataItemsToCommitToKVSStorage = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)metadataItemsToCommitToKVSStorage
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_metadataItemsToCommitToKVSStorage;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMetadataItemsToCommitToDataSource:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  metadataItemsToCommitToDataSource = self->_metadataItemsToCommitToDataSource;
  self->_metadataItemsToCommitToDataSource = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)metadataItemsToCommitToDataSource
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_metadataItemsToCommitToDataSource;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCurrentKVSTransaction:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  currentKVSTransaction = self->_currentKVSTransaction;
  self->_currentKVSTransaction = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)currentKVSTransaction
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_currentKVSTransaction;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDataSourceTransactionContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  dataSourceTransactionContext = self->_dataSourceTransactionContext;
  self->_dataSourceTransactionContext = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)dataSourceTransactionContext
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_dataSourceTransactionContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end