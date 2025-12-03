@interface SBKPlaybackPositionSyncRequestHandler
- (BOOL)_shouldStop;
- (BOOL)_synchronize:(id *)_synchronize;
- (BOOL)transactionController:(id)controller transactionDidFail:(id)fail error:(id)error;
- (SBKPlaybackPositionSyncRequestHandler)initWithDataSource:(id)source bagContext:(id)context;
- (SBKPlaybackPositionSyncRequestHandler)initWithDataSource:(id)source bagContext:(id)context accountIdentifier:(id)identifier;
- (id)_synchronouslyRunKVSTransaction:(id)transaction;
- (id)currentKVSTransaction;
- (id)dataSourceTransactionContext;
- (id)metadataItemsToCommitToDataSource;
- (id)metadataItemsToCommitToKVSStorage;
- (id)newKVSSyncTransactionWithUpdatedMetadataItemIdentifiers:(id)identifiers processConflicts:(BOOL)conflicts;
- (id)transaction:(id)transaction conflictDetectionOrdinalForKey:(id)key;
- (id)transaction:(id)transaction keyValuePairForUpdatedKey:(id)key;
- (id)transaction:(id)transaction syncAnchorForTransactionSyncAnchor:(id)anchor;
- (int)_mergeConflictedItemFromSyncResponse:(id)response;
- (void)_dataSourceCancelTransaction;
- (void)_mergeMetadataItemsFromSyncResponse;
- (void)_signalKVSTransactionCompletion:(id)completion;
- (void)_signalKVSTransactionCompletion:(id)completion withError:(id)error;
- (void)cancelWithError:(id)error;
- (void)clearTransactionResponseData;
- (void)setCurrentKVSTransaction:(id)transaction;
- (void)setDataSourceTransactionContext:(id)context;
- (void)setMetadataItemsToCommitToDataSource:(id)source;
- (void)setMetadataItemsToCommitToKVSStorage:(id)storage;
- (void)synchronizeWithCompletionHandler:(id)handler;
- (void)timeout;
- (void)transaction:(id)transaction didProcessResponseData:(id)data;
- (void)transaction:(id)transaction processDeletedKey:(id)key isDirty:(BOOL *)dirty;
- (void)transaction:(id)transaction willProcessResponseData:(id)data;
@end

@implementation SBKPlaybackPositionSyncRequestHandler

- (id)transaction:(id)transaction conflictDetectionOrdinalForKey:(id)key
{
  keyCopy = key;
  metadataItemsToCommitToKVSStorage = [(SBKPlaybackPositionSyncRequestHandler *)self metadataItemsToCommitToKVSStorage];
  v7 = [metadataItemsToCommitToKVSStorage objectForKey:keyCopy];

  v8 = MEMORY[0x277CCABB0];
  [v7 timestamp];
  v9 = [v8 numberWithDouble:?];

  return v9;
}

- (id)transaction:(id)transaction syncAnchorForTransactionSyncAnchor:(id)anchor
{
  anchorCopy = anchor;
  v6 = anchorCopy;
  overrideSyncAnchor = self->_overrideSyncAnchor;
  if (!overrideSyncAnchor)
  {
    overrideSyncAnchor = anchorCopy;
  }

  v8 = overrideSyncAnchor;

  return v8;
}

- (id)transaction:(id)transaction keyValuePairForUpdatedKey:(id)key
{
  keyCopy = key;
  metadataItemsToCommitToKVSStorage = [(SBKPlaybackPositionSyncRequestHandler *)self metadataItemsToCommitToKVSStorage];
  v7 = [metadataItemsToCommitToKVSStorage objectForKey:keyCopy];

  return v7;
}

- (void)transaction:(id)transaction processDeletedKey:(id)key isDirty:(BOOL *)dirty
{
  v5.receiver = self;
  v5.super_class = SBKPlaybackPositionSyncRequestHandler;
  [(SBKSyncRequestHandler *)&v5 transaction:transaction processDeletedKey:key isDirty:dirty];
}

- (void)transaction:(id)transaction didProcessResponseData:(id)data
{
  v4.receiver = self;
  v4.super_class = SBKPlaybackPositionSyncRequestHandler;
  [(SBKSyncRequestHandler *)&v4 transaction:transaction didProcessResponseData:data];
}

- (void)transaction:(id)transaction willProcessResponseData:(id)data
{
  v4.receiver = self;
  v4.super_class = SBKPlaybackPositionSyncRequestHandler;
  [(SBKSyncRequestHandler *)&v4 transaction:transaction willProcessResponseData:data];
}

- (BOOL)transactionController:(id)controller transactionDidFail:(id)fail error:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  failCopy = fail;
  errorCopy = error;
  if ([errorCopy isAccountsChangedError])
  {
    v9 = os_log_create("com.apple.amp.StoreBookkeeper", "Sync");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      syncAnchor = [failCopy syncAnchor];
      v15 = 138412290;
      v16 = syncAnchor;
      _os_log_impl(&dword_26BC19000, v9, OS_LOG_TYPE_DEFAULT, "Detected account change.  Getting remote items since version 0 instead of %@\n", &v15, 0xCu);
    }

    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    [(SBKPlaybackPositionSyncRequestHandler *)self setMetadataItemsToCommitToKVSStorage:dictionary];

    objc_storeStrong(&self->_overrideSyncAnchor, @"0");
  }

  else if (([errorCopy isRecoverableError] & 1) == 0)
  {
    [(SBKPlaybackPositionSyncRequestHandler *)self _signalKVSTransactionCompletion:failCopy withError:errorCopy];
    v12 = 1;
    goto LABEL_8;
  }

  v12 = 0;
LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_signalKVSTransactionCompletion:(id)completion withError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  completionCopy = completion;
  currentKVSTransaction = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
  v9 = [completionCopy isEqual:currentKVSTransaction];

  if (v9)
  {
    if (errorCopy)
    {
      v10 = os_log_create("com.apple.amp.StoreBookkeeper", "Sync");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = errorCopy;
        _os_log_impl(&dword_26BC19000, v10, OS_LOG_TYPE_DEFAULT, "transaction is being canceled.  error = %@", &v13, 0xCu);
      }
    }

    [(SBKPlaybackPositionSyncRequestHandler *)self setFatalSyncError:errorCopy];
    currentKVSTransaction2 = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
    [(SBKPlaybackPositionSyncRequestHandler *)self _signalKVSTransactionCompletion:currentKVSTransaction2];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_signalKVSTransactionCompletion:(id)completion
{
  v3 = [completion transactionContextForKey:@"completionConditionLock"];
  [v3 lock];
  [v3 unlockWithCondition:1];
}

- (id)_synchronouslyRunKVSTransaction:(id)transaction
{
  transactionCopy = transaction;
  kvsController = [(SBKPlaybackPositionSyncRequestHandler *)self kvsController];
  [kvsController scheduleTransaction:transactionCopy];

  v6 = [transactionCopy transactionContextForKey:@"completionConditionLock"];

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:10.0];
  v8 = [v6 lockWhenCondition:1 beforeDate:v7];

  if (v8)
  {
    [v6 unlock];
  }

  else
  {
    currentKVSTransaction = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
    v10 = [SBKStoreError transactionTimeoutErrorWithTransaction:currentKVSTransaction underlyingError:0];
    [(SBKPlaybackPositionSyncRequestHandler *)self setFatalSyncError:v10];
  }

  fatalSyncError = [(SBKPlaybackPositionSyncRequestHandler *)self fatalSyncError];

  return fatalSyncError;
}

- (id)newKVSSyncTransactionWithUpdatedMetadataItemIdentifiers:(id)identifiers processConflicts:(BOOL)conflicts
{
  if (conflicts)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  identifiersCopy = identifiers;
  v7 = [SBKSyncTransaction alloc];
  bagContext = [(SBKRequestHandler *)self bagContext];
  dataSourceTransactionContext = [(SBKPlaybackPositionSyncRequestHandler *)self dataSourceTransactionContext];
  lastSyncedDomainVersion = [dataSourceTransactionContext lastSyncedDomainVersion];
  v11 = [(SBKSyncTransaction *)v7 initWithStoreBagContext:bagContext syncAnchor:lastSyncedDomainVersion keysToUpdate:identifiersCopy keysToDelete:0 conflictDetectionType:v5];

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
    allKeys = [(NSDictionary *)self->_metadataItemsToCommitToDataSource allKeys];
    allKeys2 = [(NSDictionary *)self->_metadataItemsToCommitToKVSStorage allKeys];
    v13 = 134218754;
    v14 = v8;
    v15 = 2048;
    v16 = v9;
    v17 = 2112;
    v18 = allKeys;
    v19 = 2112;
    v20 = allKeys2;
    _os_log_impl(&dword_26BC19000, v7, OS_LOG_TYPE_DEFAULT, "Handled items in response, will save %lld items locally and push back %lld conflict resolutions\nkeys to save to local db = %@\nkeys to push to cloud db = %@\n", &v13, 0x2Au);
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];
}

- (int)_mergeConflictedItemFromSyncResponse:(id)response
{
  responseCopy = response;
  itemIdentifier = [responseCopy itemIdentifier];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_metadataItemsFromDataSource objectForKey:itemIdentifier];
  os_unfair_lock_unlock(&self->_lock);
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __78__SBKPlaybackPositionSyncRequestHandler__mergeConflictedItemFromSyncResponse___block_invoke;
  v26 = &unk_279D22DE0;
  selfCopy = self;
  v7 = responseCopy;
  v28 = v7;
  v29 = itemIdentifier;
  v8 = v6;
  v30 = v8;
  v9 = itemIdentifier;
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

- (void)synchronizeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBKPlaybackPositionSyncRequestHandler.m" lineNumber:335 description:@"you can not nest synchronization calls"];
  }

  syncOperationQueue = self->_syncOperationQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__SBKPlaybackPositionSyncRequestHandler_synchronizeWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_279D23100;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
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
  currentKVSTransaction = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
  v3 = [SBKStoreError transactionTimeoutErrorWithTransaction:currentKVSTransaction underlyingError:0];
  [(SBKPlaybackPositionSyncRequestHandler *)self cancelWithError:v3];
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  [(SBKPlaybackPositionSyncRequestHandler *)self setCanceled:1];
  kvsController = [(SBKPlaybackPositionSyncRequestHandler *)self kvsController];
  if ([kvsController isIdle])
  {
    currentKVSTransaction = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];

    if (!currentKVSTransaction)
    {
      goto LABEL_7;
    }

    if (!errorCopy)
    {
      currentKVSTransaction2 = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
      errorCopy = [SBKStoreError transactionCancelledErrorWithTransaction:currentKVSTransaction2 underlyingError:0];
    }

    kvsController = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
    [(SBKPlaybackPositionSyncRequestHandler *)self _signalKVSTransactionCompletion:kvsController withError:errorCopy];
  }

LABEL_7:
  kvsController2 = [(SBKPlaybackPositionSyncRequestHandler *)self kvsController];
  if (errorCopy)
  {
    [kvsController2 cancelAllTransactionsCancelCode:{objc_msgSend(errorCopy, "code")}];
  }

  else
  {
    [kvsController2 cancelAllTransactions];
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

- (BOOL)_synchronize:(id *)_synchronize
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

    dataSource = [(SBKPlaybackPositionSyncRequestHandler *)self dataSource];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __54__SBKPlaybackPositionSyncRequestHandler__synchronize___block_invoke_22;
    v62[3] = &unk_279D22D90;
    v62[4] = self;
    v11 = [dataSource beginTransactionWithItemsToSyncEnumerationBlock:v62];
    [(SBKPlaybackPositionSyncRequestHandler *)self setDataSourceTransactionContext:v11];

    dataSourceTransactionContext = [(SBKPlaybackPositionSyncRequestHandler *)self dataSourceTransactionContext];
    LOBYTE(dataSource) = dataSourceTransactionContext == 0;

    if (dataSource)
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
      allKeys = [v13 allKeys];
      v17 = [allKeys count];
      allKeys2 = [v13 allKeys];
      *buf = 134218242;
      v69 = v17;
      v70 = 2112;
      v71 = allKeys2;
      _os_log_impl(&dword_26BC19000, v15, OS_LOG_TYPE_DEFAULT, "Gathered local %lu items to sync from dataSource: %@", buf, 0x16u);
    }

    v19 = os_log_create("com.apple.amp.StoreBookkeeper", "Sync");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      dataSourceTransactionContext2 = [(SBKPlaybackPositionSyncRequestHandler *)self dataSourceTransactionContext];
      *buf = 138412290;
      v69 = dataSourceTransactionContext2;
      _os_log_impl(&dword_26BC19000, v19, OS_LOG_TYPE_DEFAULT, "dataSource transaction context = %@", buf, 0xCu);
    }

    [(SBKPlaybackPositionSyncRequestHandler *)self setMetadataItemsToCommitToKVSStorage:v13];
    metadataItemsToCommitToKVSStorage = [(SBKPlaybackPositionSyncRequestHandler *)self metadataItemsToCommitToKVSStorage];
    allKeys3 = [metadataItemsToCommitToKVSStorage allKeys];
    v23 = [(SBKPlaybackPositionSyncRequestHandler *)self newKVSSyncTransactionWithUpdatedMetadataItemIdentifiers:allKeys3 processConflicts:1];
    [(SBKPlaybackPositionSyncRequestHandler *)self setCurrentKVSTransaction:v23];

    currentKVSTransaction = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
    requestURL = [currentKVSTransaction requestURL];
    LODWORD(allKeys3) = requestURL == 0;

    if (allKeys3 && ([(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction], v32 = objc_claimAutoreleasedReturnValue(), [SBKStoreError transactionMissingURLErrorWithTransaction:v32 underlyingError:0], v30 = objc_claimAutoreleasedReturnValue(), v32, v30))
    {
      if (_synchronize)
      {
        v33 = v30;
        *_synchronize = v30;
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
        currentKVSTransaction2 = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
        syncAnchor = [currentKVSTransaction2 syncAnchor];
        *buf = 138412290;
        v69 = syncAnchor;
        _os_log_impl(&dword_26BC19000, v26, OS_LOG_TYPE_DEFAULT, "Performing sync with server using syncAnchor = %@", buf, 0xCu);
      }

      currentKVSTransaction3 = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
      v30 = [(SBKPlaybackPositionSyncRequestHandler *)self _synchronouslyRunKVSTransaction:currentKVSTransaction3];

      if (!v30)
      {
        if (![(SBKPlaybackPositionSyncRequestHandler *)self _shouldStop])
        {
          [(SBKPlaybackPositionSyncRequestHandler *)self _mergeMetadataItemsFromSyncResponse];
          metadataItemsToCommitToKVSStorage2 = [(SBKPlaybackPositionSyncRequestHandler *)self metadataItemsToCommitToKVSStorage];
          v35 = [metadataItemsToCommitToKVSStorage2 count];

          if (!v35)
          {
            goto LABEL_53;
          }

          v36 = _SBKLogCategorySync();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            metadataItemsToCommitToKVSStorage3 = [(SBKPlaybackPositionSyncRequestHandler *)self metadataItemsToCommitToKVSStorage];
            allKeys4 = [metadataItemsToCommitToKVSStorage3 allKeys];
            *buf = 138412290;
            v69 = allKeys4;
            _os_log_impl(&dword_26BC19000, v36, OS_LOG_TYPE_DEFAULT, "Sending merged items to server: %@", buf, 0xCu);
          }

          metadataItemsToCommitToKVSStorage4 = [(SBKPlaybackPositionSyncRequestHandler *)self metadataItemsToCommitToKVSStorage];
          allKeys5 = [metadataItemsToCommitToKVSStorage4 allKeys];
          v41 = [(SBKPlaybackPositionSyncRequestHandler *)self newKVSSyncTransactionWithUpdatedMetadataItemIdentifiers:allKeys5 processConflicts:0];
          [(SBKPlaybackPositionSyncRequestHandler *)self setCurrentKVSTransaction:v41];

          currentKVSTransaction4 = [(SBKPlaybackPositionSyncRequestHandler *)self currentKVSTransaction];
          v30 = [(SBKPlaybackPositionSyncRequestHandler *)self _synchronouslyRunKVSTransaction:currentKVSTransaction4];

          if (v30)
          {
            if (_synchronize)
            {
              v43 = v30;
              *_synchronize = v30;
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
              responseDomainVersion = [(SBKSyncRequestHandler *)self responseDomainVersion];
              metadataItemsToCommitToDataSource = [(SBKPlaybackPositionSyncRequestHandler *)self metadataItemsToCommitToDataSource];
              *buf = 138412546;
              v69 = responseDomainVersion;
              v70 = 2112;
              v71 = metadataItemsToCommitToDataSource;
              _os_log_impl(&dword_26BC19000, v47, OS_LOG_TYPE_DEFAULT, "Committing merged items with domainRevision: %@ to local database: %@", buf, 0x16u);
            }

            metadataItemsToCommitToDataSource2 = [(SBKPlaybackPositionSyncRequestHandler *)self metadataItemsToCommitToDataSource];
            objectEnumerator = [metadataItemsToCommitToDataSource2 objectEnumerator];

            dataSource2 = [(SBKPlaybackPositionSyncRequestHandler *)self dataSource];
            dataSourceTransactionContext3 = [(SBKPlaybackPositionSyncRequestHandler *)self dataSourceTransactionContext];
            responseDomainVersion2 = [(SBKSyncRequestHandler *)self responseDomainVersion];
            v57 = MEMORY[0x277D85DD0];
            v58 = 3221225472;
            v59 = __54__SBKPlaybackPositionSyncRequestHandler__synchronize___block_invoke_26;
            v60 = &unk_279D22DB8;
            v55 = objectEnumerator;
            v61 = v55;
            [dataSource2 commitUniversalPlaybackPositionTransaction:dataSourceTransactionContext3 domainVersion:responseDomainVersion2 metadataEnumerationBlock:&v57];

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

      if (_synchronize)
      {
        v31 = v30;
        *_synchronize = v30;
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
  dataSource = [(SBKPlaybackPositionSyncRequestHandler *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    dataSourceTransactionContext = [(SBKPlaybackPositionSyncRequestHandler *)self dataSourceTransactionContext];
    [dataSource cancelUniversalPlaybackPositionTransaction:dataSourceTransactionContext];
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
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  metadataItemsToCommitToDataSource = self->_metadataItemsToCommitToDataSource;
  self->_metadataItemsToCommitToDataSource = dictionary;

  dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
  metadataItemsToCommitToKVSStorage = self->_metadataItemsToCommitToKVSStorage;
  self->_metadataItemsToCommitToKVSStorage = dictionary2;

  [(NSMutableDictionary *)self->_responseMetadataItemsToCommitToDataSource removeAllObjects];
  [(NSMutableDictionary *)self->_responseMetadataItemsMergedToCommitBackToKVSStorage removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (SBKPlaybackPositionSyncRequestHandler)initWithDataSource:(id)source bagContext:(id)context accountIdentifier:(id)identifier
{
  sourceCopy = source;
  contextCopy = context;
  identifierCopy = identifier;
  if (sourceCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBKPlaybackPositionSyncRequestHandler.m" lineNumber:168 description:@"invalid parameters - data source is required"];

    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SBKPlaybackPositionSyncRequestHandler.m" lineNumber:169 description:@"invalid parameters - bagContext is required"];

LABEL_3:
  domain = [contextCopy domain];

  if (!domain)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"SBKPlaybackPositionSyncRequestHandler.m" lineNumber:170 description:@"invalid parameters - bagContext.domain is required"];
  }

  v43.receiver = self;
  v43.super_class = SBKPlaybackPositionSyncRequestHandler;
  v13 = [(SBKSyncRequestHandler *)&v43 initWithBagContext:contextCopy accountIdentifier:identifierCopy];
  v14 = v13;
  if (v13)
  {
    [(SBKPlaybackPositionSyncRequestHandler *)v13 setDataSource:sourceCopy];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    metadataItemsFromDataSource = v14->_metadataItemsFromDataSource;
    v14->_metadataItemsFromDataSource = dictionary;

    dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
    metadataItemsToCommitToDataSource = v14->_metadataItemsToCommitToDataSource;
    v14->_metadataItemsToCommitToDataSource = dictionary2;

    dictionary3 = [MEMORY[0x277CBEAC0] dictionary];
    metadataItemsToCommitToKVSStorage = v14->_metadataItemsToCommitToKVSStorage;
    v14->_metadataItemsToCommitToKVSStorage = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    responseMetadataItemsToCommitToDataSource = v14->_responseMetadataItemsToCommitToDataSource;
    v14->_responseMetadataItemsToCommitToDataSource = dictionary4;

    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    responseMetadataItemsMergedToCommitBackToKVSStorage = v14->_responseMetadataItemsMergedToCommitBackToKVSStorage;
    v14->_responseMetadataItemsMergedToCommitBackToKVSStorage = dictionary5;

    domain2 = [contextCopy domain];

    if (!domain2)
    {
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:v14 file:@"SBKPlaybackPositionSyncRequestHandler.m" lineNumber:181 description:@"Invalid bag.  no domain specified"];
    }

    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    v27 = [defaultStore accountWithUniqueIdentifier:identifierCopy];

    v28 = [SBKTransactionController alloc];
    domain3 = [contextCopy domain];
    syncRequestURL = [contextCopy syncRequestURL];
    v31 = [(SBKTransactionController *)v28 initWithDomain:domain3 requestURL:syncRequestURL forAccount:v27];

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

- (SBKPlaybackPositionSyncRequestHandler)initWithDataSource:(id)source bagContext:(id)context
{
  contextCopy = context;
  sourceCopy = source;
  v8 = SBKStoreAccount();
  uniqueIdentifier = [v8 uniqueIdentifier];
  v10 = [(SBKPlaybackPositionSyncRequestHandler *)self initWithDataSource:sourceCopy bagContext:contextCopy accountIdentifier:uniqueIdentifier];

  return v10;
}

- (void)setMetadataItemsToCommitToKVSStorage:(id)storage
{
  storageCopy = storage;
  os_unfair_lock_lock(&self->_lock);
  metadataItemsToCommitToKVSStorage = self->_metadataItemsToCommitToKVSStorage;
  self->_metadataItemsToCommitToKVSStorage = storageCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)metadataItemsToCommitToKVSStorage
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_metadataItemsToCommitToKVSStorage;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMetadataItemsToCommitToDataSource:(id)source
{
  sourceCopy = source;
  os_unfair_lock_lock(&self->_lock);
  metadataItemsToCommitToDataSource = self->_metadataItemsToCommitToDataSource;
  self->_metadataItemsToCommitToDataSource = sourceCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)metadataItemsToCommitToDataSource
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_metadataItemsToCommitToDataSource;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCurrentKVSTransaction:(id)transaction
{
  transactionCopy = transaction;
  os_unfair_lock_lock(&self->_lock);
  currentKVSTransaction = self->_currentKVSTransaction;
  self->_currentKVSTransaction = transactionCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)currentKVSTransaction
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_currentKVSTransaction;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDataSourceTransactionContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  dataSourceTransactionContext = self->_dataSourceTransactionContext;
  self->_dataSourceTransactionContext = contextCopy;

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