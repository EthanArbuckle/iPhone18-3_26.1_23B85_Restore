@interface PLPersistentHistoryChangeDistributor
- (PLPersistentHistoryChangeDistributor)initWithPersistentStoreCoordinator:(id)coordinator bundle:(id)bundle changeMerger:(id)merger;
- (id)_inq_fetchTransactionsSinceLastTokenWithDebugEvent:(id)event;
- (id)localEventFromTransactions:(id)transactions;
- (id)makeManagedObjectContext;
- (id)stateCaptureDictionary;
- (void)_advanceTokenToCurrent;
- (void)_inq_distributeNewTransactionsSinceLastTokenWithReason:(id)reason xpcTransaction:(id)transaction;
- (void)_inq_distributeTransactions:(id)transactions withXPCTransaction:(id)transaction debugEvent:(id)event;
- (void)_inq_forceUserInterfaceReload;
- (void)_inq_setLastToken:(id)token;
- (void)_inq_startObservingRemoteNotifications;
- (void)beginObservingChanges;
- (void)dealloc;
- (void)distributeNewTransactionsSinceLastToken;
- (void)handleRemoteNotificationOfType:(int64_t)type withTransaction:(id)transaction;
- (void)invalidate;
- (void)startObservingRemoteNotifications;
- (void)stopObservingRemoteNotifications;
@end

@implementation PLPersistentHistoryChangeDistributor

- (void)startObservingRemoteNotifications
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLPersistentHistoryChangeDistributor startObservingRemoteNotifications]"];
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PLPersistentHistoryChangeDistributor_startObservingRemoteNotifications__block_invoke;
  block[3] = &unk_1E75782A8;
  objc_copyWeak(&v8, &location);
  v7 = v3;
  v5 = v3;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __73__PLPersistentHistoryChangeDistributor_startObservingRemoteNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _inq_startObservingRemoteNotifications];

  v3 = *(a1 + 32);

  return [v3 stillAlive];
}

- (void)_inq_startObservingRemoteNotifications
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_isolationQueue);
  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  if (persistentStoreCoordinator)
  {
    v4 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator currentPersistentHistoryTokenFromStores:0];
    [(PLPersistentHistoryChangeDistributor *)self _inq_setLastToken:v4];

    v5 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      lastToken = self->_lastToken;
      *buf = 138412290;
      v12 = lastToken;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Setting initial _lastToken to: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    notificationObserver = self->_notificationObserver;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__PLPersistentHistoryChangeDistributor__inq_startObservingRemoteNotifications__block_invoke;
    v9[3] = &unk_1E7575578;
    objc_copyWeak(&v10, buf);
    [(PLChangeHandlingNotificationObserver *)notificationObserver startObservingRemoteNotificationsWithBlock:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    v8 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Change distributor _inq_startObservingRemoteNotifications PSC is nil", buf, 2u);
    }
  }
}

void __59__PLPersistentHistoryChangeDistributor_endObservingChanges__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  if (v2)
  {
    *(v1 + 56) = v2 - 1;
    if (*(*(a1 + 32) + 56))
    {
      return;
    }

    v4 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 64);
      v10 = 138543362;
      v11 = v5;
      v6 = "endObservingChanges: _observerCount became 0 (pausing), _lastToken = %{public}@";
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 12;
LABEL_7:
      _os_log_impl(&dword_19BF1F000, v7, v8, v6, &v10, v9);
    }
  }

  else
  {
    v4 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      v6 = "endObservingChanges: observerCount is already 0";
      v7 = v4;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 2;
      goto LABEL_7;
    }
  }
}

- (void)beginObservingChanges
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3 = MEMORY[0x1E69E9820];
  PLRunWithUnfairLock();
  if (*(v6 + 24) == 1)
  {
    [(PLPersistentHistoryChangeDistributor *)self _advanceTokenToCurrent:v3];
  }

  _Block_object_dispose(&v5, 8);
}

void __61__PLPersistentHistoryChangeDistributor_beginObservingChanges__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (++*(*(a1 + 32) + 56) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v2 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 64);
      v4 = 138543362;
      v5 = v3;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "beginObservingChanges: _observerCount became 1 (resuming), _lastToken = %{public}@", &v4, 0xCu);
    }
  }
}

- (void)_advanceTokenToCurrent
{
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PLPersistentHistoryChangeDistributor__advanceTokenToCurrent__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

void __62__PLPersistentHistoryChangeDistributor__advanceTokenToCurrent__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (v3)
  {
    v4 = [v3 currentPersistentHistoryTokenFromStores:0];
    [v2 _inq_setLastToken:v4];

    v5 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 32);
      v11 = 138412290;
      v12 = v6;
      v7 = "Change distributor advanced _lastToken to: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 12;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v8, v9, v7, &v11, v10);
    }
  }

  else
  {
    v5 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      v7 = "Change distributor _inq_advanceTokenToCurrent PSC is nil";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 2;
      goto LABEL_6;
    }
  }
}

void __78__PLPersistentHistoryChangeDistributor__inq_startObservingRemoteNotifications__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleRemoteNotificationOfType:a2 withTransaction:v5];
}

- (id)makeManagedObjectContext
{
  if (self->_persistentStoreCoordinator)
  {
    v3 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
    [v3 setPersistentStoreCoordinator:self->_persistentStoreCoordinator];
    [v3 setName:@"com.apple.photos.persistentHistoryChangeDistributor.managedObjectContext"];
  }

  else
  {
    v4 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "makeManagedObjectContext failure: PSC is nil", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (id)stateCaptureDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  eventDescriptions = [(PFStateCaptureEventLog *)self->_eventLog eventDescriptions];
  [dictionary setObject:eventDescriptions forKeyedSubscript:@"events"];

  return dictionary;
}

- (id)localEventFromTransactions:(id)transactions
{
  transactionsCopy = transactions;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__PLPersistentHistoryChangeDistributor_localEventFromTransactions___block_invoke;
  v7[3] = &unk_1E756FDC0;
  v8 = transactionsCopy;
  v4 = transactionsCopy;
  v5 = [PLLocalChangeEventBuilder localEventWithBuilderBlock:v7];

  return v5;
}

void __67__PLPersistentHistoryChangeDistributor_localEventFromTransactions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setUpdatedPropertyFilter:&__block_literal_global_11367];
  [v3 recordAllTransactionsFromIterator:*(a1 + 32)];
}

- (void)_inq_distributeTransactions:(id)transactions withXPCTransaction:(id)transaction debugEvent:(id)event
{
  v43 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  transactionCopy = transaction;
  eventCopy = event;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v11 = qos_class_self();
  [eventCopy setTransactionCount:{objc_msgSend(transactionsCopy, "count")}];
  if ([transactionsCopy count] || v11 > 0x18)
  {
    v13 = v11 > 0x18;
    v14 = [(PLPersistentHistoryChangeDistributor *)self localEventFromTransactions:transactionsCopy];
    [eventCopy setLocalEventCount:{objc_msgSend(v14, "count")}];
    if ([v14 count] != 0 || v13)
    {
      v15 = [v14 objectForKeyedSubscript:@"PLUnknownMergeEvent"];
      bOOLValue = [v15 BOOLValue];

      [eventCopy setUnknownMergeEvent:bOOLValue];
      if (bOOLValue)
      {
        v17 = PLPersistentHistoryGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Handling unknown merge event", buf, 2u);
        }

        [(PLPersistentHistoryChangeDistributor *)self _inq_forceUserInterfaceReload];
        [eventCopy end];
      }

      else
      {
        v19 = PLChangeHandlingGetLog();
        v20 = os_signpost_id_generate(v19);

        v21 = v19;
        v22 = v21;
        spid = v20;
        v23 = v20 - 1;
        if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
        {
          *buf = 134217984;
          v42 = [transactionsCopy count];
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "DistributeTransactions", "transaction count: %lu", buf, 0xCu);
        }

        v38 = v22;

        v24 = PLPersistentHistoryGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          _pl_prettyDescription = [v14 _pl_prettyDescription];
          *buf = 138412290;
          v42 = _pl_prettyDescription;
          _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEBUG, "Distributing local event: %@", buf, 0xCu);
        }

        v26 = v38;
        v27 = v26;
        if (v23 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v26))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v27, OS_SIGNPOST_EVENT, spid, "DistributeLocalEvent", "", buf, 2u);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        [eventCopy setMergeTimestamp:?];
        changeMerger = self->_changeMerger;
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __98__PLPersistentHistoryChangeDistributor__inq_distributeTransactions_withXPCTransaction_debugEvent___block_invoke;
        v39[3] = &unk_1E75781E8;
        v29 = transactionCopy;
        v40 = v29;
        [(PLCoreDataChangeMerger *)changeMerger mergeIntoAllContextsChangesFromRemoteContextSave:v14 debugEvent:eventCopy completionHandler:v39];
        lastIteratedToken = [transactionsCopy lastIteratedToken];
        v31 = [PLPersistentHistoryUtilities transactionNumberFromToken:lastIteratedToken];
        [eventCopy setIteratedTransaction:v31];

        if (lastIteratedToken)
        {
          [(PLPersistentHistoryChangeDistributor *)self _inq_setLastToken:lastIteratedToken];
          v32 = PLPersistentHistoryGetLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            lastToken = self->_lastToken;
            *buf = 138412290;
            v42 = lastToken;
            _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEBUG, "Distributing transactions set _lastToken to: %@", buf, 0xCu);
          }
        }

        v34 = v27;
        v35 = v34;
        if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
        {
          v36 = self->_lastToken;
          *buf = 138412290;
          v42 = v36;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v35, OS_SIGNPOST_INTERVAL_END, spid, "DistributeTransactions", "_lastToken: %@", buf, 0xCu);
        }

        [v29 stillAlive];
      }
    }

    else
    {
      v18 = PLPersistentHistoryGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "Not distributing empty local event", buf, 2u);
      }

      [eventCopy end];
    }
  }

  else
  {
    v12 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "Not distributing empty transaction iterator", buf, 2u);
    }

    [eventCopy end];
  }
}

- (void)_inq_forceUserInterfaceReload
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_isolationQueue);
  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  if (persistentStoreCoordinator)
  {
    v4 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator currentPersistentHistoryTokenFromStores:0];
    [(PLPersistentHistoryChangeDistributor *)self _inq_setLastToken:v4];

    v5 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      lastToken = self->_lastToken;
      v8 = 138412290;
      v9 = lastToken;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Forcing user interface reload set _lastToken to: %@", &v8, 0xCu);
    }

    [(PLCoreDataChangeMerger *)self->_changeMerger handleUnknownMergeEvent];
  }

  else
  {
    v7 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "forceUserInterfaceReload: PSC is nil", &v8, 2u);
    }
  }
}

- (id)_inq_fetchTransactionsSinceLastTokenWithDebugEvent:(id)event
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    lastToken = self->_lastToken;
    *buf = 138412290;
    v17 = lastToken;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Fetching transactions since _lastToken: %@", buf, 0xCu);
  }

  v7 = [PLPersistentHistoryUtilities transactionNumberFromToken:self->_lastToken];
  [eventCopy setLastTransaction:v7];

  if (self->_lastToken)
  {
    makeManagedObjectContext = [(PLPersistentHistoryChangeDistributor *)self makeManagedObjectContext];
    v9 = self->_lastToken;
    v15 = 0;
    v10 = [PLPersistentHistoryTransactionIterator iteratorSinceToken:v9 withManagedObjectObjectContext:makeManagedObjectContext error:&v15];
    v11 = v15;
    [eventCopy setIteratorPointer:v10];
    if (!v10)
    {
      if (PLIsErrorEqualToCode())
      {
        [eventCopy setForceUserInterfaceReload:1];
        [(PLPersistentHistoryChangeDistributor *)self _inq_forceUserInterfaceReload];
      }

      else
      {
        v12 = PLPersistentHistoryGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = self->_lastToken;
          *buf = 138412546;
          v17 = v11;
          v18 = 2112;
          v19 = v13;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Error fetching transactions: %@, since token: %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    makeManagedObjectContext = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(makeManagedObjectContext, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, makeManagedObjectContext, OS_LOG_TYPE_ERROR, "_lastKnownToken is unexpectedly nil, not fetching all history", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)_inq_distributeNewTransactionsSinceLastTokenWithReason:(id)reason xpcTransaction:(id)transaction
{
  v20 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  transactionCopy = transaction;
  dispatch_assert_queue_V2(self->_isolationQueue);
  addEvent = [(PFStateCaptureEventLog *)self->_eventLog addEvent];
  [addEvent startDistributionWithReason:reasonCopy];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v13 = MEMORY[0x1E69E9820];
  v9 = addEvent;
  v10 = reasonCopy;
  PLRunWithUnfairLock();
  [v9 setShouldDistributeTransactions:{*(v15 + 24), v13, 3221225472, __110__PLPersistentHistoryChangeDistributor__inq_distributeNewTransactionsSinceLastTokenWithReason_xpcTransaction___block_invoke, &unk_1E75778C0}];
  if (*(v15 + 24) == 1)
  {
    v11 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v19 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "Distributing new transactions since last token [Reason: %{public}@]", buf, 0xCu);
    }

    v12 = [(PLPersistentHistoryChangeDistributor *)self _inq_fetchTransactionsSinceLastTokenWithDebugEvent:v9];
    if (v12)
    {
      [(PLPersistentHistoryChangeDistributor *)self _inq_distributeTransactions:v12 withXPCTransaction:transactionCopy debugEvent:v9];
    }

    else
    {
      [v9 end];
    }
  }

  else
  {
    [v9 end];
  }

  _Block_object_dispose(&v14, 8);
}

void __110__PLPersistentHistoryChangeDistributor__inq_distributeNewTransactionsSinceLastTokenWithReason_xpcTransaction___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setObserverCount:*(*(a1 + 40) + 56)];
  if (!*(*(a1 + 40) + 56))
  {
    v2 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 48);
      v4 = 138543362;
      v5 = v3;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Change distribution is paused (no observers), not distributing change (reason: %{public}@)", &v4, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

- (void)distributeNewTransactionsSinceLastToken
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLPersistentHistoryChangeDistributor distributeNewTransactionsSinceLastToken]"];
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PLPersistentHistoryChangeDistributor_distributeNewTransactionsSinceLastToken__block_invoke;
  block[3] = &unk_1E75782A8;
  objc_copyWeak(&v8, &location);
  v7 = v3;
  v5 = v3;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __79__PLPersistentHistoryChangeDistributor_distributeNewTransactionsSinceLastToken__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _inq_distributeNewTransactionsSinceLastTokenWithReason:@"requested" xpcTransaction:*(a1 + 32)];
}

- (void)invalidate
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v7 = objc_opt_class();
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p invalidate", buf, 0x16u);
  }

  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PLPersistentHistoryChangeDistributor_invalidate__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

void __50__PLPersistentHistoryChangeDistributor_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (void)_inq_setLastToken:(id)token
{
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = [tokenCopy copy];
  lastToken = self->_lastToken;
  self->_lastToken = v5;

  v8 = tokenCopy;
  v7 = tokenCopy;
  PLRunWithUnfairLock();
}

void __58__PLPersistentHistoryChangeDistributor__inq_setLastToken___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 40) description];
  v2 = [v5 copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

- (void)handleRemoteNotificationOfType:(int64_t)type withTransaction:(id)transaction
{
  transactionCopy = transaction;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PLPersistentHistoryChangeDistributor_handleRemoteNotificationOfType_withTransaction___block_invoke;
  block[3] = &unk_1E75782F8;
  v10 = transactionCopy;
  typeCopy = type;
  block[4] = self;
  v8 = transactionCopy;
  dispatch_sync(isolationQueue, block);
}

uint64_t __87__PLPersistentHistoryChangeDistributor_handleRemoteNotificationOfType_withTransaction___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v1 = @"notification-high";
  }

  else
  {
    v1 = @"notification-low";
  }

  return [*(a1 + 32) _inq_distributeNewTransactionsSinceLastTokenWithReason:v1 xpcTransaction:*(a1 + 40)];
}

- (void)stopObservingRemoteNotifications
{
  [(PLChangeHandlingNotificationObserver *)self->_notificationObserver stopObservingRemoteNotifications];
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PLPersistentHistoryChangeDistributor_stopObservingRemoteNotifications__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v6 = objc_opt_class();
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p dealloc", buf, 0x16u);
  }

  [(PLChangeHandlingNotificationObserver *)self->_notificationObserver stopObservingRemoteNotifications];
  v4.receiver = self;
  v4.super_class = PLPersistentHistoryChangeDistributor;
  [(PLPersistentHistoryChangeDistributor *)&v4 dealloc];
}

- (PLPersistentHistoryChangeDistributor)initWithPersistentStoreCoordinator:(id)coordinator bundle:(id)bundle changeMerger:(id)merger
{
  v39 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  bundleCopy = bundle;
  mergerCopy = merger;
  v13 = mergerCopy;
  if (coordinatorCopy)
  {
    if (mergerCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPersistentHistoryChangeDistributor.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"changeMerger != nil"}];

    if (bundleCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPersistentHistoryChangeDistributor.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"persistentStoreCoordinator != nil"}];

  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (bundleCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLPersistentHistoryChangeDistributor.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"bundle != nil"}];

LABEL_4:
  v32.receiver = self;
  v32.super_class = PLPersistentHistoryChangeDistributor;
  v14 = [(PLPersistentHistoryChangeDistributor *)&v32 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_persistentStoreCoordinator, coordinator);
    objc_storeStrong(&v15->_changeMerger, merger);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("PLPersistentHistoryChangeDistributor.isolationQueue", v16);
    isolationQueue = v15->_isolationQueue;
    v15->_isolationQueue = v17;

    v19 = [bundleCopy makeChangeHandlingNotificationObserverWithLowPriorityThrottleInterval:4.0];
    notificationObserver = v15->_notificationObserver;
    v15->_notificationObserver = v19;

    v15->_observerCountLock._os_unfair_lock_opaque = 0;
    v15->_observerCount = 0;
    v21 = [objc_alloc(MEMORY[0x1E69BDD78]) initWithEventClass:objc_opt_class() maxEvents:50];
    eventLog = v15->_eventLog;
    v15->_eventLog = v21;

    v23 = [objc_alloc(MEMORY[0x1E69BDD80]) initWithProvider:v15];
    stateHandler = v15->_stateHandler;
    v15->_stateHandler = v23;

    v25 = PLPhotosObjectLifecycleGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = objc_opt_class();
      *buf = 138412802;
      v34 = v26;
      v35 = 2048;
      v36 = v15;
      v37 = 2112;
      v38 = coordinatorCopy;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "%@ %p initWithPersistentStoreCoordinator:%@", buf, 0x20u);
    }

    v27 = v15;
  }

  return v15;
}

@end