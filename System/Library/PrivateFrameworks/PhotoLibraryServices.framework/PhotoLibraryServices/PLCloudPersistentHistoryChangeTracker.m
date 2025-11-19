@interface PLCloudPersistentHistoryChangeTracker
- (BOOL)connectWithContext:(id)a3;
- (BOOL)hasChangeTrackerToken;
- (NSString)lastKnownTokenDescription;
- (PLCloudPersistentHistoryChangeTracker)initWithPersistentStoreCoordinator:(id)a3 libraryBundle:(id)a4;
- (PLCloudPersistentHistoryChangeTrackerDelegate)delegate;
- (id)_eventsResultFromPersistentHistoryToken:(id)a3 inContext:(id)a4;
- (id)fetchAllEventsInContext:(id)a3;
- (id)lastKnownTokenFromDisk;
- (void)_registerForChangeHandlingNotifications;
- (void)_updateLastKnownTokensToToken:(id)a3;
- (void)changeTrackerDidReceiveChangesWithTransaction:(id)a3;
- (void)clearToken;
- (void)disconnect;
- (void)forceTokenToCurrent;
- (void)saveLastKnownChangeTrackerTokenToDiskWithContext:(id)a3;
- (void)updateLastKnownTokenToResult:(id)a3;
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

- (void)_updateLastKnownTokensToToken:(id)a3
{
  v4 = [a3 copy];
  lastKnownToken = self->_lastKnownToken;
  self->_lastKnownToken = v4;
}

- (void)updateLastKnownTokenToResult:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 resultType])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PLCloudPersistentHistoryChangeTracker.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"result.resultType == PLCloudChangeEventsResultSuccess"}];
  }

  v6 = objc_opt_class();
  v7 = v5;
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
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable _PLAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nullable __strong)"}];
    [v10 handleFailureInFunction:v11 file:@"PLHelperExtension.h" lineNumber:78 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];

LABEL_9:
    v9 = 0;
  }

  v12 = [v9 lastProcessedCoreDataToken];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v13 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Updating last known tokens from result token: %@", buf, 0xCu);
    }
  }

  if (v12)
  {
    [(PLCloudPersistentHistoryChangeTracker *)self _updateLastKnownTokensToToken:v12];
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

- (id)fetchAllEventsInContext:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v7 = [(PLCloudPersistentHistoryChangeTracker *)self _eventsResultFromPersistentHistoryToken:self->_lastKnownToken inContext:v4];

  return v7;
}

- (id)_eventsResultFromPersistentHistoryToken:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5 && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v7 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Token is nil so fetching ALL transactions", v10, 2u);
    }
  }

  v8 = [PLCloudPersistentHistoryTransactionsResult fetchTransactionsSinceToken:v5 inContext:v6];

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

- (void)changeTrackerDidReceiveChangesWithTransaction:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cloudChangeTrackerDidReceiveChangesWithTransaction:v4];
}

- (void)disconnect
{
  [(PLCloudPersistentHistoryChangeTracker *)self clearToken];

  [(PLCloudPersistentHistoryChangeTracker *)self _unregisterForChangeHandlingNotifications];
}

- (void)saveLastKnownChangeTrackerTokenToDiskWithContext:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  [WeakRetained saveCloudTrackerToken:self->_lastKnownToken withContext:v4];
}

- (id)lastKnownTokenFromDisk
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained readCloudTrackerToken];

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "Last known token from disk: %@", &v6, 0xCu);
    }
  }

  return v3;
}

- (BOOL)connectWithContext:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v7 = [(PLCloudPersistentHistoryChangeTracker *)self lastKnownTokenFromDisk];
  if (!v7)
  {
    v7 = [(PLCloudPersistentHistoryChangeTracker *)self currentToken];
  }

  v8 = [v7 copy];
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

  [(PLCloudPersistentHistoryChangeTracker *)self saveLastKnownChangeTrackerTokenToDiskWithContext:v4];

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

- (PLCloudPersistentHistoryChangeTracker)initWithPersistentStoreCoordinator:(id)a3 libraryBundle:(id)a4
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = PLCloudPersistentHistoryChangeTracker;
  v10 = [(PLCloudPersistentHistoryChangeTracker *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_coordinator, a3);
    if (!v9)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:v11 file:@"PLCloudPersistentHistoryChangeTracker.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"bundle"}];
    }

    v12 = [v9 makeChangeHandlingNotificationObserverWithLowPriorityThrottleInterval:0.0];
    notificationObserver = v11->_notificationObserver;
    v11->_notificationObserver = v12;

    v14 = v11;
  }

  return v11;
}

@end