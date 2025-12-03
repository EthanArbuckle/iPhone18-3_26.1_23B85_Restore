@interface PLCloudPersistentHistoryChangeTracker
- (BOOL)connectWithContext:(id)context;
- (BOOL)hasChangeTrackerToken;
- (NSString)lastKnownTokenDescription;
- (PLCloudPersistentHistoryChangeTracker)initWithPersistentStoreCoordinator:(id)coordinator libraryBundle:(id)bundle;
- (PLCloudPersistentHistoryChangeTrackerDelegate)delegate;
- (id)_eventsResultFromPersistentHistoryToken:(id)token inContext:(id)context;
- (id)fetchAllEventsInContext:(id)context;
- (id)lastKnownTokenFromDisk;
- (void)_registerForChangeHandlingNotifications;
- (void)_updateLastKnownTokensToToken:(id)token;
- (void)changeTrackerDidReceiveChangesWithTransaction:(id)transaction;
- (void)clearToken;
- (void)disconnect;
- (void)forceTokenToCurrent;
- (void)saveLastKnownChangeTrackerTokenToDiskWithContext:(id)context;
- (void)updateLastKnownTokenToResult:(id)result;
@end

@implementation PLCloudPersistentHistoryChangeTracker

void __80__PLCloudPersistentHistoryChangeTracker__registerForChangeHandlingNotifications__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained changeTrackerDidReceiveChangesWithTransaction:v4];
}

- (PLCloudPersistentHistoryChangeTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateLastKnownTokensToToken:(id)token
{
  v4 = [token copy];
  lastKnownToken = self->_lastKnownToken;
  self->_lastKnownToken = v4;
}

- (void)updateLastKnownTokenToResult:(id)result
{
  v17 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if ([resultCopy resultType])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCloudPersistentHistoryChangeTracker.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"result.resultType == PLCloudChangeEventsResultSuccess"}];
  }

  v6 = objc_opt_class();
  v7 = resultCopy;
  if (!v7)
  {
    goto LABEL_9;
  }

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v9)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable _PLAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nullable __strong)"}];
    [currentHandler2 handleFailureInFunction:v11 file:@"PLHelperExtension.h" lineNumber:78 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];

LABEL_9:
    v9 = 0;
  }

  lastProcessedCoreDataToken = [v9 lastProcessedCoreDataToken];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v13 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = lastProcessedCoreDataToken;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Updating last known tokens from result token: %@", buf, 0xCu);
    }
  }

  if (lastProcessedCoreDataToken)
  {
    [(PLCloudPersistentHistoryChangeTracker *)self _updateLastKnownTokensToToken:lastProcessedCoreDataToken];
  }
}

- (void)forceTokenToCurrent
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(NSPersistentStoreCoordinator *)self->_coordinator currentPersistentHistoryTokenFromStores:0];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "Forcing last known tokens to current: %@", &v5, 0xCu);
    }
  }

  [(PLCloudPersistentHistoryChangeTracker *)self _updateLastKnownTokensToToken:v3];
}

- (id)fetchAllEventsInContext:(id)context
{
  v11 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v5 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      lastKnownToken = self->_lastKnownToken;
      v9 = 138412290;
      v10 = lastKnownToken;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Fetch all events since token: %@", &v9, 0xCu);
    }
  }

  v7 = [(PLCloudPersistentHistoryChangeTracker *)self _eventsResultFromPersistentHistoryToken:self->_lastKnownToken inContext:contextCopy];

  return v7;
}

- (id)_eventsResultFromPersistentHistoryToken:(id)token inContext:(id)context
{
  tokenCopy = token;
  contextCopy = context;
  if (!tokenCopy && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v7 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Token is nil so fetching ALL transactions", v10, 2u);
    }
  }

  v8 = [PLCloudPersistentHistoryTransactionsResult fetchTransactionsSinceToken:tokenCopy inContext:contextCopy];

  return v8;
}

- (void)_registerForChangeHandlingNotifications
{
  [(PLCloudPersistentHistoryChangeTracker *)self _unregisterForChangeHandlingNotifications];
  objc_initWeak(&location, self);
  notificationObserver = self->_notificationObserver;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__PLCloudPersistentHistoryChangeTracker__registerForChangeHandlingNotifications__block_invoke;
  v4[3] = &unk_1E7575578;
  objc_copyWeak(&v5, &location);
  [(PLChangeHandlingNotificationObserver *)notificationObserver startObservingRemoteNotificationsWithBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)changeTrackerDidReceiveChangesWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cloudChangeTrackerDidReceiveChangesWithTransaction:transactionCopy];
}

- (void)disconnect
{
  [(PLCloudPersistentHistoryChangeTracker *)self clearToken];

  [(PLCloudPersistentHistoryChangeTracker *)self _unregisterForChangeHandlingNotifications];
}

- (void)saveLastKnownChangeTrackerTokenToDiskWithContext:(id)context
{
  v10 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v5 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      lastKnownToken = self->_lastKnownToken;
      v8 = 138412290;
      v9 = lastKnownToken;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Saving last known token to disk: %@", &v8, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained saveCloudTrackerToken:self->_lastKnownToken withContext:contextCopy];
}

- (id)lastKnownTokenFromDisk
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  readCloudTrackerToken = [WeakRetained readCloudTrackerToken];

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = readCloudTrackerToken;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "Last known token from disk: %@", &v6, 0xCu);
    }
  }

  return readCloudTrackerToken;
}

- (BOOL)connectWithContext:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  [(PLCloudPersistentHistoryChangeTracker *)self clearToken];
  [(PLCloudPersistentHistoryChangeTracker *)self _registerForChangeHandlingNotifications];
  v5 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v6 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Registered for change handling notification", &v13, 2u);
    }
  }

  lastKnownTokenFromDisk = [(PLCloudPersistentHistoryChangeTracker *)self lastKnownTokenFromDisk];
  if (!lastKnownTokenFromDisk)
  {
    lastKnownTokenFromDisk = [(PLCloudPersistentHistoryChangeTracker *)self currentToken];
  }

  v8 = [lastKnownTokenFromDisk copy];
  lastKnownToken = self->_lastKnownToken;
  self->_lastKnownToken = v8;

  if ((*v5 & 1) == 0)
  {
    v10 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = self->_lastKnownToken;
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "Set initial last known tokens to: %@", &v13, 0xCu);
    }
  }

  [(PLCloudPersistentHistoryChangeTracker *)self saveLastKnownChangeTrackerTokenToDiskWithContext:contextCopy];

  return 1;
}

- (void)clearToken
{
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v3 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Clearing last known tokens", v5, 2u);
    }
  }

  lastKnownToken = self->_lastKnownToken;
  self->_lastKnownToken = 0;
}

- (NSString)lastKnownTokenDescription
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v3 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      lastKnownToken = self->_lastKnownToken;
      v7 = 136315394;
      v8 = "[PLCloudPersistentHistoryChangeTracker lastKnownTokenDescription]";
      v9 = 2112;
      v10 = lastKnownToken;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%s: %@", &v7, 0x16u);
    }
  }

  v5 = [(NSPersistentHistoryToken *)self->_lastKnownToken description];

  return v5;
}

- (BOOL)hasChangeTrackerToken
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v3 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      lastKnownToken = self->_lastKnownToken;
      v6 = 136315394;
      v7 = "[PLCloudPersistentHistoryChangeTracker hasChangeTrackerToken]";
      v8 = 2112;
      v9 = lastKnownToken;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%s: %@", &v6, 0x16u);
    }
  }

  return self->_lastKnownToken != 0;
}

- (PLCloudPersistentHistoryChangeTracker)initWithPersistentStoreCoordinator:(id)coordinator libraryBundle:(id)bundle
{
  coordinatorCopy = coordinator;
  bundleCopy = bundle;
  v17.receiver = self;
  v17.super_class = PLCloudPersistentHistoryChangeTracker;
  v10 = [(PLCloudPersistentHistoryChangeTracker *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_coordinator, coordinator);
    if (!bundleCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v11 file:@"PLCloudPersistentHistoryChangeTracker.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"bundle"}];
    }

    v12 = [bundleCopy makeChangeHandlingNotificationObserverWithLowPriorityThrottleInterval:0.0];
    notificationObserver = v11->_notificationObserver;
    v11->_notificationObserver = v12;

    v14 = v11;
  }

  return v11;
}

@end