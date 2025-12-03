@interface WBSCloudHistory
- (BOOL)_shouldSyncProfiles;
- (WBSCloudHistory)initWithDatabase:(id)database configuration:(id)configuration databaseStore:(id)store completionBlock:(id)block;
- (WBSHistoryServiceDatabaseStore)databaseStore;
- (double)_backoffTimeIntervalFromError:(id)error;
- (id).cxx_construct;
- (id)_convertProfileLocalIdentifierToServerIdentifier:(id)identifier;
- (id)_convertProfileServerIdentifierToLocalIdentifier:(id)identifier;
- (id)_currentFetchChangesThrottlerPolicyString;
- (id)_currentSaveChangesThrottlerPolicyString;
- (id)_manateeErrorCode:(id)code;
- (id)dateOfNextPermittedSaveChangesAttempt;
- (id)recordOfPastOperationsForThrottler:(id)throttler;
- (int64_t)_priorityForSaveWithVisits:(id)visits tombstones:(id)tombstones bypassingThrottler:(BOOL)throttler;
- (int64_t)_resultFromError:(id)error;
- (void)_backOffWithInterval:(double)interval;
- (void)_callAndResetFetchCompletionHandlerWithError:(id)error;
- (void)_callAndResetSaveCompletionHandlerWithError:(id)error;
- (void)_deleteAllCloudHistoryAndSaveAgain;
- (void)_determineCloudHistoryStoreWithCompletion:(id)completion;
- (void)_determineNumberOfDevicesInSyncCircleForOperation:(id)operation completionHandler:(id)handler;
- (void)_enumerateDatabasesWithProfileLocalIdentifiers:(id)identifiers createIfNeeded:(BOOL)needed enumerationBlock:(id)block completionBlock:(id)completionBlock;
- (void)_fetchAddedProfileLocalIdentifiers:(id)identifiers;
- (void)_fetchAndMergeChangesWithServerChangeTokenData:(id)data withPriority:(int64_t)priority;
- (void)_fetchChangesInResponseToPushNotification:(id)notification;
- (void)_fetchChangesWhenHistoryLoads;
- (void)_getServerChangeTokenDataWithCompletion:(id)completion;
- (void)_handleManateeErrorIfNeeded:(id)needed;
- (void)_initializePushNotificationSupport;
- (void)_loadMetadataAsynchronously;
- (void)_pcsIdentitiesChangedNotification:(id)notification;
- (void)_persistLongLivedSaveOperationDictionaryWithOperationID:(id)d databaseGenerations:(id)generations;
- (void)_persistedLongLivedSaveOperationID:(id *)d databaseGenerations:(id *)generations;
- (void)_postSaveChangesAttemptCompletedNotificationWithAllPendingDataSaved:(BOOL)saved;
- (void)_processPendingPushNotifications;
- (void)_pruneTombstonesThatCanNoLongerMatchVisitsFetchedFromCloud;
- (void)_pushNotificationReceived:(id)received;
- (void)_pushNotificationsAreInitializedWithCompletionHandler:(id)handler;
- (void)_registerFetchCompletionHandler:(id)handler;
- (void)_registerSaveCompletionHandler:(id)handler;
- (void)_removePersistedLongLivedSaveOperationDictionary;
- (void)_replayPersistedLongLivedSaveOperationIfNecessary;
- (void)_resetCloudHistoryDataWithCompletionHandler:(id)handler;
- (void)_resetForAccountChangeWithCompletionHandler:(id)handler;
- (void)_saveChangesWhenHistoryLoads;
- (void)_saveVisits:(id)visits tombstones:(id)tombstones toCloudHistoryBypassingThrottler:(BOOL)throttler longLivedOperationPersistenceCompletion:(id)completion withCallback:(id)callback;
- (void)_serverBackoffTimerFired:(id)fired;
- (void)_setCachedNumberOfDevicesInSyncCircle:(unint64_t)circle;
- (void)_setPushNotificationAreInitialized:(BOOL)initialized;
- (void)_transitionCloudHistoryStoreToManateeState:(int64_t)state completion:(id)completion;
- (void)_updateDeviceCountInResponseToPushNotification;
- (void)_updateHistoryAfterSuccessfulPersistedLongLivedSaveOperationWithGenerations:(id)generations completion:(id)completion;
- (void)_updateProfileLocalIdentifiersToServerIdentifiersMapInDatabase;
- (void)_updateProfileServerIdentifiersToLocalIdentifiersMapBasedOnLocalToServerMap;
- (void)_updateThrottlerPolicies;
- (void)dealloc;
- (void)fetchAndMergeChangesBypassingThrottler:(BOOL)throttler completionHandler:(id)handler;
- (void)fetchDateOfNextPermittedSaveChangesAttemptWithCompletionHandler:(id)handler;
- (void)getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow:(double)window completion:(id)completion;
- (void)resetForAccountChangeWithCompletionHandler:(id)handler;
- (void)saveChangesBypassingThrottler:(BOOL)throttler completionHandler:(id)handler;
- (void)setCloudHistoryEnabled:(BOOL)enabled;
- (void)setNumberOfDevicesInSyncCircle:(unint64_t)circle;
- (void)setRecordOfPastOperations:(id)operations forThrottler:(id)throttler;
- (void)updateConfiguration:(id)configuration completionHandler:(id)handler;
- (void)updateProfileLocalIdentifiersToServerIdentifiersMap:(id)map completionHandler:(id)handler;
@end

@implementation WBSCloudHistory

- (WBSCloudHistory)initWithDatabase:(id)database configuration:(id)configuration databaseStore:(id)store completionBlock:(id)block
{
  databaseCopy = database;
  configurationCopy = configuration;
  storeCopy = store;
  blockCopy = block;
  v46.receiver = self;
  v46.super_class = WBSCloudHistory;
  v15 = [(WBSCloudHistory *)&v46 init];
  if (v15)
  {
    objc_initWeak(&location, v15);
    objc_storeStrong(&v15->_database, database);
    objc_storeWeak(&v15->_databaseStore, storeCopy);
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.WBSCloudHistory.%@.%p.internalQueue", objc_opt_class(), v15];
    v17 = dispatch_queue_create([v16 UTF8String], 0);
    cloudHistoryQueue = v15->_cloudHistoryQueue;
    v15->_cloudHistoryQueue = v17;

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.WBSCloudHistory.%@.%p.waitForMetadata", objc_opt_class(), v15];
    uTF8String = [v19 UTF8String];
    v21 = dispatch_queue_attr_make_initially_inactive(0);
    v22 = dispatch_queue_create(uTF8String, v21);
    waitUntilMetadataHasLoadedQueue = v15->_waitUntilMetadataHasLoadedQueue;
    v15->_waitUntilMetadataHasLoadedQueue = v22;

    objc_storeStrong(&v15->_configuration, configuration);
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    array = [MEMORY[0x1E695DF70] array];
    storeDeterminationCompletionBlocks = v15->_storeDeterminationCompletionBlocks;
    v15->_storeDeterminationCompletionBlocks = array;

    v28 = objc_alloc_init(v24);
    v29 = [[v25 alloc] initWithContainerIdentifier:@"com.apple.SafariShared.History" appleAccountInformationProvider:v28];
    containerManateeObserver = v15->_containerManateeObserver;
    v15->_containerManateeObserver = v29;

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __80__WBSCloudHistory_initWithDatabase_configuration_databaseStore_completionBlock___block_invoke;
    v43[3] = &unk_1E7FB7638;
    objc_copyWeak(&v44, &location);
    [(WBSCloudKitContainerManateeObserving *)v15->_containerManateeObserver setStateChangeObserver:v43];
    v31 = objc_alloc_init(WBSCloudHistoryPushAgentProxy);
    pushAgent = v15->_pushAgent;
    v15->_pushAgent = v31;

    [(WBSCloudHistory *)v15 _loadMetadataAsynchronously];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __80__WBSCloudHistory_initWithDatabase_configuration_databaseStore_completionBlock___block_invoke_2_87;
    v40[3] = &unk_1E7FB6F08;
    v33 = v15;
    v41 = v33;
    v42 = blockCopy;
    [(WBSCloudHistory *)v33 _performBlockAsynchronouslyOnCloudHistoryQueueAfterMetadataHasLoaded:v40];
    v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
    syncCircleSizeRetrievalCompletionHandlersByOperation = v33->_syncCircleSizeRetrievalCompletionHandlersByOperation;
    v33->_syncCircleSizeRetrievalCompletionHandlersByOperation = v34;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v33 selector:sel__cloudHistoryConfigurationChanged_ name:@"WBSCloudHistoryConfigurationChangedNotification" object:v15->_configuration];

    defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter2 addObserver:v33 selector:sel__pushNotificationReceived_ name:@"com.apple.SafariShared.CloudHistory.PushReceived" object:0];

    v38 = v33;
    objc_destroyWeak(&v44);

    objc_destroyWeak(&location);
  }

  return v15;
}

void __80__WBSCloudHistory_initWithDatabase_configuration_databaseStore_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __80__WBSCloudHistory_initWithDatabase_configuration_databaseStore_completionBlock___block_invoke_2;
    v6[3] = &unk_1E7FB7610;
    v8 = a2;
    v7 = WeakRetained;
    dispatch_async(v5, v6);
  }
}

void __80__WBSCloudHistory_initWithDatabase_configuration_databaseStore_completionBlock___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v10 = 134217984;
    v11 = v3;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_DEFAULT, "Received PCS change notification with state %ld", &v10, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 232);
  v6 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == v4)
  {
    if (v7)
    {
      v8 = *(a1 + 40);
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring PCS state change notification because it is the same as the current state %ld", &v10, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v9 = *(a1 + 40);
      v10 = 134217984;
      v11 = v9;
      _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_DEFAULT, "Determining cloud history store in response to PCS change notification with state %ld", &v10, 0xCu);
    }

    *(*(a1 + 32) + 240) = 1;
    [*(a1 + 32) _determineCloudHistoryStoreWithCompletion:&__block_literal_global_15];
  }
}

void __80__WBSCloudHistory_initWithDatabase_configuration_databaseStore_completionBlock___block_invoke_2_87(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69C8838]);
  v16 = [*(a1 + 32) _currentSaveChangesThrottlerPolicyString];
  v3 = [v2 initWithPolicyString:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 128);
  *(v4 + 128) = v3;

  [*(*(a1 + 32) + 128) setDataStore:?];
  v6 = objc_alloc(MEMORY[0x1E69C8838]);
  v17 = [*(a1 + 32) _currentFetchChangesThrottlerPolicyString];
  v7 = [v6 initWithPolicyString:?];
  v8 = *(a1 + 32);
  v9 = *(v8 + 136);
  *(v8 + 136) = v7;

  [*(*(a1 + 32) + 136) setDataStore:?];
  v10 = objc_alloc(MEMORY[0x1E69C8838]);
  v18 = [*(a1 + 32) _currentSyncCircleSizeRetrievalThrottlerPolicyString];
  v11 = [v10 initWithPolicyString:?];
  v12 = *(a1 + 32);
  v13 = *(v12 + 144);
  *(v12 + 144) = v11;

  [*(*(a1 + 32) + 144) setDataStore:?];
  [*(a1 + 32) _replayPersistedLongLivedSaveOperationIfNecessary];
  [*(a1 + 32) _pruneTombstonesThatCanNoLongerMatchVisitsFetchedFromCloud];
  [*(a1 + 32) _initializePushNotificationSupport];
  v19 = [MEMORY[0x1E695E000] standardUserDefaults];
  v14 = [v19 objectForKey:@"WBSCloudHistoryLongLivedSaveOperation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [MEMORY[0x1E696AE40] dataWithPropertyList:v14 format:200 options:0 error:0];
    objc_storeStrong((*(a1 + 32) + 56), v15);
    [*(*(a1 + 32) + 24) setMetadataValue:v15 forKey:@"long_lived_save_operation" completionHandler:&__block_literal_global_94];
    [v19 removeObjectForKey:@"WBSCloudHistoryLongLivedSaveOperation"];
  }

  if (*(a1 + 40))
  {
    dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 40));
  }
}

void __80__WBSCloudHistory_initWithDatabase_configuration_databaseStore_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __80__WBSCloudHistory_initWithDatabase_configuration_databaseStore_completionBlock___block_invoke_3_cold_1();
    }
  }
}

- (void)_determineCloudHistoryStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_store && !self->_manateeStateNeedsUpdate)
  {
    (*(completionCopy + 2))(completionCopy);
  }

  else
  {
    storeDeterminationCompletionBlocks = self->_storeDeterminationCompletionBlocks;
    v7 = MEMORY[0x1BFB13CE0](completionCopy);
    [(NSMutableArray *)storeDeterminationCompletionBlocks addObject:v7];

    if (!self->_determiningStoreType)
    {
      self->_determiningStoreType = 1;
      containerManateeObserver = self->_containerManateeObserver;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __61__WBSCloudHistory__determineCloudHistoryStoreWithCompletion___block_invoke;
      v9[3] = &unk_1E7FB7680;
      v9[4] = self;
      [(WBSCloudKitContainerManateeObserving *)containerManateeObserver determineAccountStateWithCompletion:v9];
    }
  }
}

void __61__WBSCloudHistory__determineCloudHistoryStoreWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = a2;
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_DEFAULT, "Determined PCS state to be %ld", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__WBSCloudHistory__determineCloudHistoryStoreWithCompletion___block_invoke_102;
  v7[3] = &unk_1E7FB7610;
  v7[4] = v5;
  v7[5] = a2;
  dispatch_async(v6, v7);
}

uint64_t __61__WBSCloudHistory__determineCloudHistoryStoreWithCompletion___block_invoke_102(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__WBSCloudHistory__determineCloudHistoryStoreWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7FB6F80;
  v4[4] = v2;
  return [v2 _transitionCloudHistoryStoreToManateeState:v1 completion:v4];
}

uint64_t __61__WBSCloudHistory__determineCloudHistoryStoreWithCompletion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 242) = 0;
  *(*(a1 + 32) + 240) = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 224);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v5) + 16))(*(*(&v7 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  return [*(*(a1 + 32) + 224) removeAllObjects];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  v5.receiver = self;
  v5.super_class = WBSCloudHistory;
  [(WBSCloudHistory *)&v5 dealloc];
}

- (void)setCloudHistoryEnabled:(BOOL)enabled
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_cloudHistoryEnabled != enabled)
  {
    self->_cloudHistoryEnabled = enabled;
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (self->_cloudHistoryEnabled)
      {
        v5 = @"enabled";
      }

      else
      {
        v5 = @"disabled";
      }

      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "iCloud History is now %{public}@.", &v6, 0xCu);
    }
  }
}

- (BOOL)_shouldSyncProfiles
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [safari_browserDefaults safari_numberForKey:@"WBSEnableSafariProfileCloudHistorySyncing"];

  store = self->_store;
  if (v4)
  {
    if (![(WBSCloudHistoryDataStore *)store useManateeContainer])
    {
      v7 = 0;
      goto LABEL_7;
    }

    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = [(WBSCloudHistoryDataStore *)store useManateeContainer];
  }

  v7 = bOOLValue;
LABEL_7:

  return v7;
}

- (void)saveChangesBypassingThrottler:(BOOL)throttler completionHandler:(id)handler
{
  throttlerCopy = throttler;
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [standardUserDefaults BOOLForKey:@"WBSCloudHistoryIgnoreThrottlingPolicy"];

  v9 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  v10 = v8 | throttlerCopy;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = @"respecting the throttler";
    if (v10)
    {
      v11 = @"bypassing the throttler";
    }

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "Saving changes to iCloud History %{public}@", &buf, 0xCu);
  }

  v12 = [WBSCleanupHandler alloc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke;
  v16[3] = &unk_1E7FB6F80;
  v16[4] = self;
  v13 = [(WBSCleanupHandler *)v12 initWithBlock:v16];
  if ([(WBSCloudHistory *)self isCloudHistoryEnabled])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x3812000000;
    v19 = __Block_byref_object_copy__2;
    v20 = __Block_byref_object_dispose__2;
    v21 = "";
    operator new();
  }

  v14 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_INFO, "iCloud History is not enabled. Nothing to do when saving changes!", &buf, 2u);
  }

  if (handlerCopy)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSCloudHistory" code:1 userInfo:0];
    handlerCopy[2](handlerCopy, v15);
  }
}

void __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_2;
  block[3] = &unk_1E7FB6F80;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_3;
  v4[3] = &unk_1E7FB6F80;
  v4[4] = v2;
  dispatch_async(v3, v4);
}

void __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:0];
  [v1 _callAndResetSaveCompletionHandlerWithError:?];
}

void __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_123(uint64_t a1)
{
  [*(a1 + 32) _registerSaveCompletionHandler:*(a1 + 48)];
  if ([*(*(a1 + 32) + 152) isValid])
  {
    v2 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v3 = "Server has already asked us to back off. Nothing to do when saving changes!";
LABEL_7:
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, v3, buf, 2u);
    return;
  }

  v4 = *(a1 + 32);
  v6 = *(v4 + 80);
  v5 = (v4 + 80);
  if (v6)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v3 = "A save operation is already in progress. Nothing to do!";
    goto LABEL_7;
  }

  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 48);
  *(v7 + 48) = 0;
  std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100](v5, v8);
  v9 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_124;
  v10[3] = &unk_1E7FB77E8;
  v10[4] = v9;
  v11 = *(a1 + 40);
  v12 = *(a1 + 64);
  [v9 _determineCloudHistoryStoreWithCompletion:v10];
}

void __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_124(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_2_125;
  v3[3] = &unk_1E7FB76A8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _performBlockAsynchronouslyOnCloudHistoryQueueAfterMetadataHasLoaded:v3];
}

void __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_2_125(uint64_t a1)
{
  v2 = a1 + 32;
  [*(a1 + 32) _replayPersistedLongLivedSaveOperationIfNecessary];
  v3 = *(*v2 + 184);
  v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3 == 1)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Only one device in the iCloud History sync circle", buf, 2u);
    }

    goto LABEL_12;
  }

  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "More than one device in the iCloud History sync circle", buf, 2u);
    }

    v10 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_2_125_cold_1(v2, v10);
    }

LABEL_12:
    [*(*(a1 + 32) + 112) syncWindow];
    v12 = v11;
    v13 = [*(*(a1 + 32) + 112) shouldUseLongLivedOperationsToSaveRecords];
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__128;
    v24 = __Block_byref_object_dispose__129;
    v25 = 0;
    v14 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_130;
    v15[3] = &unk_1E7FB77C0;
    v18 = v13;
    v15[4] = v14;
    v17 = buf;
    v19 = *(a1 + 48);
    v16 = *(a1 + 40);
    [v14 getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow:v15 completion:v12];

    _Block_object_dispose(buf, 8);
    v9 = v25;
    goto LABEL_13;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Unknown number of devices in iCloud History sync circle. Will determine the number of devices and then retry the save.", buf, 2u);
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_126;
  v26[3] = &unk_1E7FB76A8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v27 = v7;
  v28 = v8;
  v29 = *(a1 + 48);
  [v6 _determineNumberOfDevicesInSyncCircleForOperation:@"SaveChanges" completionHandler:v26];
  std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100]((*v2 + 80), 0);
  v9 = v27;
LABEL_13:
}

void __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_126(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_2_127;
  block[3] = &unk_1E7FB76A8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  v7 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_2_127(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 saveChangesBypassingThrottler:v3 completionHandler:0];
}

void __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_130(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  v14 = *(v13 + 8);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_2_131;
  v21[3] = &unk_1E7FB7798;
  v28 = *(a1 + 56);
  v21[4] = v13;
  v22 = v11;
  v23 = v9;
  v24 = v10;
  v16 = *(a1 + 40);
  v15 = *(a1 + 48);
  v26 = v12;
  v27 = v15;
  v25 = v16;
  v17 = v12;
  v18 = v10;
  v19 = v9;
  v20 = v11;
  dispatch_async(v14, v21);
}

void __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_2_131(uint64_t a1)
{
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_3_132;
  v19[3] = &unk_1E7FB76D0;
  v22 = *(a1 + 88);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v21 = *(a1 + 80);
  v19[4] = v2;
  v20 = v3;
  v4 = MEMORY[0x1BFB13CE0](v19);
  ct_green_tea_logger_create_static();
  v5 = getCTGreenTeaOsLogHandle();
  v6 = v5;
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Transmitted Internet Records", buf, 2u);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 89);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_135;
  v13[3] = &unk_1E7FB7770;
  v13[4] = v7;
  v11 = *(a1 + 72);
  v17 = *(a1 + 88);
  v12 = *(a1 + 80);
  v15 = v11;
  v16 = v12;
  v14 = *(a1 + 64);
  [v7 _saveVisits:v8 tombstones:v9 toCloudHistoryBypassingThrottler:v10 longLivedOperationPersistenceCompletion:v4 withCallback:v13];
}

void __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_3_132(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    if (*(a1 + 56))
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      [*(a1 + 32) _persistLongLivedSaveOperationDictionaryWithOperationID:v4 databaseGenerations:*(a1 + 40)];
      v5 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = 138543362;
        v7 = v4;
        _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Long-lived operation was persisted. Operation ID %{public}@", &v6, 0xCu);
      }
    }
  }
}

void __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_135(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (!a3 && !v7)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
LABEL_6:
      v8 = 0;
      goto LABEL_15;
    }

    *buf = 0;
    v10 = "No new data to save to iCloud History.";
    v11 = v9;
    v12 = 2;
LABEL_5:
    _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
    goto LABEL_6;
  }

  if (a3 == 1)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(*(a1 + 32) + 128) dateOfNextPermittedOperationWithPriority:a2];
      v15 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:v15];
      *buf = 134217984;
      v32 = v16;
      _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_DEFAULT, "Save was denied by the throttler. A save will be permitted in %f seconds.", buf, 0xCu);
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSCloudHistory" code:2 userInfo:0];

    v8 = v17;
  }

  else
  {
    if (!v7)
    {
      v24 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }

      *buf = 134217984;
      v32 = a3;
      v10 = "iCloud History save completed with result %ld";
      v11 = v24;
      v12 = 12;
      goto LABEL_5;
    }

    v18 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [v8 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_135_cold_1();
    }
  }

LABEL_15:
  [*(*(a1 + 32) + 128) operationWithPriority:a2 didCompleteWithResult:a3];
  v25[0] = MEMORY[0x1E69E9820];
  v19 = (a3 & 0xFFFFFFFFFFFFFFFDLL) == 0;
  v25[1] = 3221225472;
  v25[2] = __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_137;
  v25[3] = &unk_1E7FB7748;
  v30 = *(a1 + 64);
  v20 = *(a1 + 48);
  v28 = *(a1 + 56);
  v29 = a3;
  v21 = *(a1 + 40);
  v25[4] = *(a1 + 32);
  v26 = v8;
  v27 = v21;
  v22 = *(v20 + 16);
  v23 = v8;
  v22(v20, v19, v25);
}

void __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_137(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  v2 = *(a1 + 72);
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v8 = *(a1 + 32);
  v5 = *(v8 + 8);
  block[1] = 3221225472;
  block[2] = __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_2_138;
  block[3] = &unk_1E7FB7720;
  v13 = v2;
  v12 = v3;
  v6 = *(&v8 + 1);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v4;
  v10 = v8;
  v11 = v7;
  dispatch_async(v5, block);
}

void __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_2_138(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) == 1)
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      [*(a1 + 32) _removePersistedLongLivedSaveOperationDictionary];
      v2 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138543362;
        v22 = v3;
        _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Persisted long-lived operation was removed because operation finished. Operation ID %{public}@", buf, 0xCu);
      }
    }
  }

  v4 = *(a1 + 64);
  if (v4 > 5)
  {
    if (v4 == 6)
    {
      [*(a1 + 32) _callAndResetSaveCompletionHandlerWithError:*(a1 + 40)];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_139;
      block[3] = &unk_1E7FB6F80;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], block);
      return;
    }

    if (v4 == 7)
    {
      v8 = *(a1 + 32);
      v7 = a1 + 32;
      [v8 _callAndResetSaveCompletionHandlerWithError:*(v7 + 8)];
      [*v7 _handleManateeErrorIfNeeded:*(v7 + 8)];
      return;
    }

    goto LABEL_15;
  }

  if (v4)
  {
    v5 = v4 == 2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
LABEL_15:
    v6 = 0;
    goto LABEL_16;
  }

  v6 = 1;
LABEL_16:
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_2_140;
  v14 = &unk_1E7FB76F8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v18 = *(a1 + 64);
  v15 = v9;
  v16 = v10;
  v19 = v6;
  v17 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], &v11);
  if (*(a1 + 64) != 5)
  {
    [*(a1 + 32) _callAndResetSaveCompletionHandlerWithError:{*(a1 + 40), v11, v12, v13, v14, v15, v16}];
  }
}

uint64_t __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_2_140(uint64_t a1)
{
  if (*(a1 + 56) == 5)
  {
    *(*(a1 + 32) + 160) = 1;
    v2 = *(a1 + 32);
    [v2 _backoffTimeIntervalFromError:*(a1 + 40)];
    [v2 _backOffWithInterval:?];
  }

  if (*(a1 + 64) == 1)
  {
    *(*(a1 + 32) + 264) = 0;
  }

  [*(a1 + 48) invalidate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);

  return [v3 _postSaveChangesAttemptCompletedNotificationWithAllPendingDataSaved:v4];
}

- (void)_registerSaveCompletionHandler:(id)handler
{
  v13[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    saveCompletionHandlers = self->_saveCompletionHandlers;
    p_saveCompletionHandlers = &self->_saveCompletionHandlers;
    v8 = MEMORY[0x1BFB13CE0](handlerCopy);
    v9 = [(NSArray *)saveCompletionHandlers arrayByAddingObject:v8];
    if (v9)
    {
      objc_storeStrong(p_saveCompletionHandlers, v9);
    }

    else
    {
      v10 = MEMORY[0x1BFB13CE0](v5);
      v13[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      v12 = *p_saveCompletionHandlers;
      *p_saveCompletionHandlers = v11;
    }
  }
}

- (void)_callAndResetSaveCompletionHandlerWithError:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = self->_saveCompletionHandlers;
  saveCompletionHandlers = self->_saveCompletionHandlers;
  self->_saveCompletionHandlers = 0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v5;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)_convertProfileLocalIdentifierToServerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [identifierCopy length];
  v6 = *MEMORY[0x1E69C8B58];
  if (v5 && ![identifierCopy isEqualToString:*MEMORY[0x1E69C8B58]])
  {
    v7 = [(NSDictionary *)self->_namedProfileLocalIdentifiersToServerIdentifiersMap objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

- (id)_convertProfileServerIdentifierToLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [identifierCopy length];
  v6 = *MEMORY[0x1E69C8B58];
  if (v5 && ![identifierCopy isEqualToString:*MEMORY[0x1E69C8B58]])
  {
    v7 = [(NSDictionary *)self->_namedProfileServerIdentifiersToLocalIdentifiersMap objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

- (void)_enumerateDatabasesWithProfileLocalIdentifiers:(id)identifiers createIfNeeded:(BOOL)needed enumerationBlock:(id)block completionBlock:(id)completionBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  identifiersCopy = identifiers;
  WeakRetained = objc_loadWeakRetained(&self->_databaseStore);
  cloudHistoryQueue = self->_cloudHistoryQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __114__WBSCloudHistory__enumerateDatabasesWithProfileLocalIdentifiers_createIfNeeded_enumerationBlock_completionBlock___block_invoke;
  v17[3] = &unk_1E7FB7860;
  neededCopy = needed;
  v18 = WeakRetained;
  v19 = blockCopy;
  v15 = blockCopy;
  v16 = WeakRetained;
  [identifiersCopy safari_enumerateAsynchronouslyOnQueue:cloudHistoryQueue enumerationBlock:v17 completionBlock:completionBlockCopy];
}

void __114__WBSCloudHistory__enumerateDatabasesWithProfileLocalIdentifiers_createIfNeeded_enumerationBlock_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __114__WBSCloudHistory__enumerateDatabasesWithProfileLocalIdentifiers_createIfNeeded_enumerationBlock_completionBlock___block_invoke_2;
  v12[3] = &unk_1E7FB7838;
  v14 = v7;
  v9 = *(a1 + 32);
  v15 = *(a1 + 40);
  v13 = v6;
  v10 = v6;
  v11 = v7;
  [v9 openDatabaseWithID:v10 createIfNeeded:v8 completionHandler:v12];
}

void __114__WBSCloudHistory__enumerateDatabasesWithProfileLocalIdentifiers_createIfNeeded_enumerationBlock_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __114__WBSCloudHistory__enumerateDatabasesWithProfileLocalIdentifiers_createIfNeeded_enumerationBlock_completionBlock___block_invoke_2_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow:(double)window completion:(id)completion
{
  completionCopy = completion;
  v7 = [MEMORY[0x1E695DF70] arrayWithObject:*MEMORY[0x1E69C8B58]];
  if ([(WBSCloudHistory *)self _shouldSyncProfiles])
  {
    allKeys = [(NSDictionary *)self->_namedProfileLocalIdentifiersToServerIdentifiersMap allKeys];
    [v7 addObjectsFromArray:allKeys];
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke;
  v25[3] = &unk_1E7FB78B0;
  windowCopy = window;
  v25[4] = self;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_3;
  v18[3] = &unk_1E7FB7978;
  v13 = completionCopy;
  v24 = v13;
  v14 = v26;
  v19 = v14;
  v15 = v27;
  v20 = v15;
  v16 = v28;
  v21 = v16;
  v22 = v29;
  selfCopy = self;
  v17 = v29;
  [(WBSCloudHistory *)self _enumerateDatabasesWithProfileLocalIdentifiers:v7 createIfNeeded:0 enumerationBlock:v25 completionBlock:v18, v11, v9];
}

void __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 72);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_2;
  v21[3] = &unk_1E7FB7888;
  v11 = *(a1 + 40);
  v21[4] = *(a1 + 32);
  v22 = v7;
  v12 = v11;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v23 = v17;
  v24 = v16;
  v25 = v8;
  v26 = v9;
  v18 = v9;
  v19 = v8;
  v20 = v7;
  [v19 visitsAndTombstonesNeedingSyncWithVisitSyncWindow:v21 completionHandler:v10];
}

void __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v12 = a2;
  v7 = a3;
  if ([v12 count] || objc_msgSend(v7, "count"))
  {
    v8 = [*(a1 + 32) _convertProfileLocalIdentifierToServerIdentifier:*(a1 + 40)];
    v9 = [v12 allObjects];
    [*(a1 + 48) setObject:v9 forKeyedSubscript:v8];

    v10 = [v7 allObjects];
    [*(a1 + 56) setObject:v10 forKeyedSubscript:v8];

    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
    [*(a1 + 64) setObject:v11 forKeyedSubscript:v8];

    [*(a1 + 72) setObject:*(a1 + 80) forKeyedSubscript:v8];
  }

  (*(*(a1 + 88) + 16))();
}

void __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_4;
  v8[3] = &unk_1E7FB7950;
  v5 = *(a1 + 48);
  v9 = *(a1 + 56);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v10 = v6;
  v11 = v7;
  (*(v2 + 16))(v2, v3, v4, v5, v8);
}

void __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = dispatch_group_create();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_5;
    v10[3] = &unk_1E7FB7928;
    v8 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v7;
    v9 = v7;
    [v8 enumerateKeysAndObjectsUsingBlock:v10];
    dispatch_group_notify(v9, *(*(a1 + 48) + 8), v6);
  }

  else
  {
    (*(v5 + 2))(v5);
  }
}

void __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [v7 longLongValue];

  dispatch_group_enter(*(a1 + 40));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_6;
  v10[3] = &unk_1E7FB7900;
  v9 = v6;
  v11 = v9;
  v13 = v8;
  v12 = *(a1 + 40);
  [v9 updateDatabaseAfterSuccessfulSyncWithGeneration:v8 completionHandler:v10];
}

void __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_6_cold_1();
    }
  }

  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_148;
  v7[3] = &unk_1E7FB78D8;
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v6 convertTombstoneWithGenerationToSecureFormat:v5 lastSyncedGeneration:v5 completionHandler:v7];
}

void __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_148(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_148_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)_saveVisits:(id)visits tombstones:(id)tombstones toCloudHistoryBypassingThrottler:(BOOL)throttler longLivedOperationPersistenceCompletion:(id)completion withCallback:(id)callback
{
  throttlerCopy = throttler;
  visitsCopy = visits;
  tombstonesCopy = tombstones;
  completionCopy = completion;
  callbackCopy = callback;
  v16 = [(WBSCloudHistory *)self _priorityForSaveWithVisits:visitsCopy tombstones:tombstonesCopy bypassingThrottler:throttlerCopy];
  if (![visitsCopy count] && !objc_msgSend(tombstonesCopy, "count"))
  {
    (*(callbackCopy + 2))(callbackCopy, v16, 0, 0);
    goto LABEL_7;
  }

  if (([(WBSCloudKitThrottler *)self->_saveChangesThrottler permitsOperationWithPriority:v16]& 1) == 0)
  {
    (*(callbackCopy + 2))(callbackCopy, v16, 1, 0);
LABEL_7:
    std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100](&self->_saveOperationSuddenTerminationDisabler, 0);
    goto LABEL_8;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __128__WBSCloudHistory__saveVisits_tombstones_toCloudHistoryBypassingThrottler_longLivedOperationPersistenceCompletion_withCallback___block_invoke;
  v26[3] = &unk_1E7FB79A0;
  v26[4] = self;
  v27 = completionCopy;
  v17 = MEMORY[0x1BFB13CE0](v26);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __128__WBSCloudHistory__saveVisits_tombstones_toCloudHistoryBypassingThrottler_longLivedOperationPersistenceCompletion_withCallback___block_invoke_3;
  v19[3] = &unk_1E7FB7A18;
  v20 = visitsCopy;
  selfCopy = self;
  v23 = v17;
  v21 = tombstonesCopy;
  v24 = callbackCopy;
  v25 = v16;
  v18 = v17;
  [(WBSCloudHistory *)self _determineCloudHistoryStoreWithCompletion:v19];

LABEL_8:
}

void __128__WBSCloudHistory__saveVisits_tombstones_toCloudHistoryBypassingThrottler_longLivedOperationPersistenceCompletion_withCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __128__WBSCloudHistory__saveVisits_tombstones_toCloudHistoryBypassingThrottler_longLivedOperationPersistenceCompletion_withCallback___block_invoke_2;
    v6[3] = &unk_1E7FB6BC0;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __128__WBSCloudHistory__saveVisits_tombstones_toCloudHistoryBypassingThrottler_longLivedOperationPersistenceCompletion_withCallback___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __128__WBSCloudHistory__saveVisits_tombstones_toCloudHistoryBypassingThrottler_longLivedOperationPersistenceCompletion_withCallback___block_invoke_4;
  v9[3] = &unk_1E7FB79F0;
  v6 = *(a1 + 56);
  v9[4] = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10 = v7;
  v11 = v8;
  [a2 saveCloudHistoryVisits:v4 tombstones:v5 longLivedOperationPersistenceCompletion:v6 completion:v9];
}

void __128__WBSCloudHistory__saveVisits_tombstones_toCloudHistoryBypassingThrottler_longLivedOperationPersistenceCompletion_withCallback___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __128__WBSCloudHistory__saveVisits_tombstones_toCloudHistoryBypassingThrottler_longLivedOperationPersistenceCompletion_withCallback___block_invoke_5;
  v8[3] = &unk_1E7FB79C8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  dispatch_async(v4, v8);
}

id *__128__WBSCloudHistory__saveVisits_tombstones_toCloudHistoryBypassingThrottler_longLivedOperationPersistenceCompletion_withCallback___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56), [*(a1 + 32) _resultFromError:*(a1 + 40)], *(a1 + 40));
  v2 = (*(a1 + 32) + 80);

  return std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100](v2, 0);
}

- (void)_postSaveChangesAttemptCompletedNotificationWithAllPendingDataSaved:(BOOL)saved
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"WBSCloudHistoryAllPendingDataSavedToCloudKey";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:saved];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"WBSCloudHistorySaveChangesAttemptDidCompleteNotification" object:self userInfo:v5];
}

- (id)dateOfNextPermittedSaveChangesAttempt
{
  saveChangesThrottler = self->_saveChangesThrottler;
  _estimatedPriorityForPotentialSaveAttempt = [(WBSCloudHistory *)self _estimatedPriorityForPotentialSaveAttempt];

  return [(WBSCloudKitThrottler *)saveChangesThrottler dateOfNextPermittedOperationWithPriority:_estimatedPriorityForPotentialSaveAttempt];
}

- (void)fetchAndMergeChangesBypassingThrottler:(BOOL)throttler completionHandler:(id)handler
{
  throttlerCopy = throttler;
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [standardUserDefaults BOOLForKey:@"WBSCloudHistoryIgnoreThrottlingPolicy"];

  if ([(WBSCloudHistory *)self isCloudHistoryEnabled])
  {
    v9 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    v10 = v8 | throttlerCopy;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"respecting the throttler";
      if (v10)
      {
        v11 = @"bypassing the throttler";
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_DEFAULT, "Fetching changes from iCloud History %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v15 = 0x3812000000;
    v16 = __Block_byref_object_copy__2;
    v17 = __Block_byref_object_dispose__2;
    v18 = "";
    operator new();
  }

  v12 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_DEFAULT, "iCloud History is not enabled. Nothing to do when fetching changes!", &buf, 2u);
  }

  if (handlerCopy)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSCloudHistory" code:1 userInfo:0];
    handlerCopy[2](handlerCopy, v13);
  }
}

void __76__WBSCloudHistory_fetchAndMergeChangesBypassingThrottler_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _registerFetchCompletionHandler:*(a1 + 40)];
  if ([*(*(a1 + 32) + 152) isValid])
  {
    v2 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v3 = "Server has already asked us to back off. Nothing to do when fetching changes!";
LABEL_7:
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 2u);
    return;
  }

  v4 = *(a1 + 32);
  v6 = *(v4 + 88);
  v5 = (v4 + 88);
  if (v6)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v3 = "A fetch operation is already in progress. Nothing to do!";
    goto LABEL_7;
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 48);
  *(v7 + 48) = 0;
  std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100](v5, v8);
  v9 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__WBSCloudHistory_fetchAndMergeChangesBypassingThrottler_completionHandler___block_invoke_155;
  v10[3] = &unk_1E7FB7A90;
  v10[4] = v9;
  v11 = *(a1 + 56);
  [v9 _determineCloudHistoryStoreWithCompletion:v10];
}

uint64_t __76__WBSCloudHistory_fetchAndMergeChangesBypassingThrottler_completionHandler___block_invoke_155(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__WBSCloudHistory_fetchAndMergeChangesBypassingThrottler_completionHandler___block_invoke_2;
  v3[3] = &unk_1E7FB7A40;
  v3[4] = v1;
  v4 = *(a1 + 40);
  return [v1 _performBlockAsynchronouslyOnCloudHistoryQueueAfterMetadataHasLoaded:v3];
}

id *__76__WBSCloudHistory_fetchAndMergeChangesBypassingThrottler_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = a1 + 32;
  [*(a1 + 32) _replayPersistedLongLivedSaveOperationIfNecessary];
  v3 = *(*v2 + 184);
  v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3 == 1)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Only one device in the iCloud History sync circle", buf, 2u);
    }

    goto LABEL_12;
  }

  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "More than one device in the iCloud History sync circle", buf, 2u);
    }

    v8 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_2_125_cold_1(v2, v8);
    }

LABEL_12:
    v9 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__WBSCloudHistory_fetchAndMergeChangesBypassingThrottler_completionHandler___block_invoke_158;
    v10[3] = &unk_1E7FB7A68;
    v10[4] = v9;
    v11 = *(a1 + 40);
    return [v9 _getServerChangeTokenDataWithCompletion:v10];
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Unknown number of devices in iCloud History sync circle. Will determine the number of devices and then retry the fetch.", buf, 2u);
  }

  v6 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__WBSCloudHistory_fetchAndMergeChangesBypassingThrottler_completionHandler___block_invoke_156;
  v12[3] = &unk_1E7FB7A40;
  v12[4] = v6;
  v13 = *(a1 + 40);
  [v6 _determineNumberOfDevicesInSyncCircleForOperation:@"FetchChanges" completionHandler:v12];
  return std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100]((*v2 + 88), 0);
}

void __76__WBSCloudHistory_fetchAndMergeChangesBypassingThrottler_completionHandler___block_invoke_156(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __76__WBSCloudHistory_fetchAndMergeChangesBypassingThrottler_completionHandler___block_invoke_2_157;
  v1[3] = &unk_1E7FB7A40;
  v1[4] = *(a1 + 32);
  v2 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v1);
}

void __76__WBSCloudHistory_fetchAndMergeChangesBypassingThrottler_completionHandler___block_invoke_158(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WBSCloudHistory_fetchAndMergeChangesBypassingThrottler_completionHandler___block_invoke_2_159;
  block[3] = &unk_1E7FB76A8;
  v9 = *(a1 + 40);
  block[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, block);
}

void __76__WBSCloudHistory_fetchAndMergeChangesBypassingThrottler_completionHandler___block_invoke_2_159(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  if ([*(*(a1 + 32) + 136) permitsOperationWithPriority:v2])
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 _fetchAndMergeChangesWithServerChangeTokenData:v4 withPriority:v2];
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(*(a1 + 32) + 136) dateOfNextPermittedOperationWithPriority:v2];
      v7 = [MEMORY[0x1E695DF00] date];
      [v6 timeIntervalSinceDate:v7];
      v11 = 134217984;
      v12 = v8;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "Fetch was denied by the throttler. A fetch will be permitted in %f seconds.", &v11, 0xCu);
    }

    std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100]((*(a1 + 32) + 88), 0);
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSCloudHistory" code:2 userInfo:0];
    [v9 _callAndResetFetchCompletionHandlerWithError:v10];
  }
}

- (void)_registerFetchCompletionHandler:(id)handler
{
  v13[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    fetchCompletionHandlers = self->_fetchCompletionHandlers;
    p_fetchCompletionHandlers = &self->_fetchCompletionHandlers;
    v8 = MEMORY[0x1BFB13CE0](handlerCopy);
    v9 = [(NSArray *)fetchCompletionHandlers arrayByAddingObject:v8];
    if (v9)
    {
      objc_storeStrong(p_fetchCompletionHandlers, v9);
    }

    else
    {
      v10 = MEMORY[0x1BFB13CE0](v5);
      v13[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      v12 = *p_fetchCompletionHandlers;
      *p_fetchCompletionHandlers = v11;
    }
  }
}

- (void)_callAndResetFetchCompletionHandlerWithError:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = self->_fetchCompletionHandlers;
  fetchCompletionHandlers = self->_fetchCompletionHandlers;
  self->_fetchCompletionHandlers = 0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v5;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_getServerChangeTokenDataWithCompletion:(id)completion
{
  completionCopy = completion;
  database = self->_database;
  v6 = [MEMORY[0x1E695DFD8] setWithObject:@"server_change_token"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__WBSCloudHistory__getServerChangeTokenDataWithCompletion___block_invoke;
  v8[3] = &unk_1E7FB7AE0;
  v7 = completionCopy;
  v9 = v7;
  [(WBSHistoryServiceDatabaseProtocol *)database fetchMetadataForKeys:v6 completionHandler:v8];
}

void __59__WBSCloudHistory__getServerChangeTokenDataWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __59__WBSCloudHistory__getServerChangeTokenDataWithCompletion___block_invoke_cold_1();
    }
  }

  v8 = *(a1 + 32);
  v9 = [v5 safari_dataForKey:@"server_change_token"];
  (*(v8 + 16))(v8, v9);
}

void __41__WBSCloudHistory__setServerChangeToken___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __41__WBSCloudHistory__setServerChangeToken___block_invoke_cold_1();
    }
  }
}

- (void)_pcsIdentitiesChangedNotification:(id)notification
{
  cloudHistoryQueue = self->_cloudHistoryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__WBSCloudHistory__pcsIdentitiesChangedNotification___block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(cloudHistoryQueue, block);
}

void __53__WBSCloudHistory__pcsIdentitiesChangedNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 removeObserver:*(a1 + 32) name:*MEMORY[0x1E695B768] object:0];

  v3 = *(a1 + 32);
  if (*(v3 + 241))
  {
    *(v3 + 241) = 0;
    *(*(a1 + 32) + 240) = 1;
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_DEFAULT, "Received expected PCS identity change notification. Fetching Safari History", buf, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__WBSCloudHistory__pcsIdentitiesChangedNotification___block_invoke_165;
    block[3] = &unk_1E7FB6F80;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring PCS identity change notification because Safari History is not waiting for an identity update", buf, 2u);
    }
  }
}

uint64_t __53__WBSCloudHistory__pcsIdentitiesChangedNotification___block_invoke_165(uint64_t a1)
{
  [*(a1 + 32) fetchAndMergeChanges];
  v2 = *(a1 + 32);

  return [v2 saveChangesToCloudHistoryStore];
}

- (id)_manateeErrorCode:(id)code
{
  codeCopy = code;
  if ([codeCopy safari_hasOrContainsErrorWithCloudKitErrorCode:110])
  {
    v4 = &unk_1F3A9AA18;
  }

  else if ([codeCopy safari_hasOrContainsErrorWithCloudKitErrorCode:112])
  {
    v4 = &unk_1F3A9AA30;
  }

  else if ([codeCopy safari_errorOrAnyPartialErrorHasCloudKitInternalErrorCode:5004])
  {
    v4 = &unk_1F3A9AA48;
  }

  else if ([codeCopy safari_hasOrContainsErrorWithCloudKitErrorCode:111])
  {
    v4 = &unk_1F3A9AA60;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleManateeErrorIfNeeded:(id)needed
{
  v15 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v5 = [(WBSCloudHistory *)self _manateeErrorCode:neededCopy];
  v6 = v5;
  if (v5)
  {
    integerValue = [v5 integerValue];
    v8 = integerValue;
    if (integerValue > 111)
    {
      if (integerValue == 112 || integerValue == 5004)
      {
        v11 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 134217984;
          v14 = v8;
          _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_DEFAULT, "Received unrecoverable PCS error %ld from CloudKit. Deleting the zone and saving History data again.", &v13, 0xCu);
        }

        [(WBSCloudHistory *)self _deleteAllCloudHistoryAndSaveAgain];
      }
    }

    else if (integerValue == 110)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_DEFAULT, "Received PCS unavailable error from CloudKit. Marking PCS state needs updating", &v13, 2u);
      }

      self->_manateeStateNeedsUpdate = 1;
    }

    else if (integerValue == 111)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_DEFAULT, "Received unsynced Keychain error. Observing notification to start fetching History when PCS identities change", &v13, 2u);
      }

      self->_isWaitingForPCSIdentityUpdate = 1;
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__pcsIdentitiesChangedNotification_ name:*MEMORY[0x1E695B768] object:0];
    }
  }
}

- (void)_transitionCloudHistoryStoreToManateeState:(int64_t)state completion:(id)completion
{
  *&v20[5] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v20 = state;
    _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_DEFAULT, "Transitioning history store to PCS state %ld", buf, 0xCu);
  }

  currentManateeState = self->_currentManateeState;
  self->_currentManateeState = state;
  if (self->_store && (v9 = currentManateeState != 1, (state != 1) == v9))
  {
    v12 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v20[0] = v9;
      LOWORD(v20[1]) = 1024;
      *(&v20[1] + 2) = state != 1;
      _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_DEFAULT, "No need to transition the history store. Currently using PCS cloud history store %d, should use PCS cloud history store %d", buf, 0xEu);
    }

    completionCopy[2](completionCopy);
  }

  else
  {
    objc_initWeak(buf, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke;
    v18[3] = &unk_1E7FB7B58;
    v18[4] = self;
    v10 = MEMORY[0x1BFB13CE0](v18);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_4;
    v13[3] = &unk_1E7FB7C20;
    v13[4] = self;
    v14 = v10;
    v17 = state != 1;
    v15 = completionCopy;
    v16[1] = state;
    v11 = v10;
    objc_copyWeak(v16, buf);
    [(WBSCloudHistory *)self _performBlockAsynchronouslyOnCloudHistoryQueueAfterMetadataHasLoaded:v13];
    objc_destroyWeak(v16);

    objc_destroyWeak(buf);
  }
}

void __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v5 = [MEMORY[0x1E695DFD8] setWithObject:@"sync_with_manatee_container"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_2;
  v7[3] = &unk_1E7FB7B30;
  v7[4] = *(a1 + 32);
  v6 = v3;
  v8 = v6;
  [v4 fetchMetadataForKeys:v5 completionHandler:v7];
}

void __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_3;
  block[3] = &unk_1E7FB7B08;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) safari_BOOLForKey:@"sync_with_manatee_container"];
  v4 = *(a1 + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

void __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_4(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_5;
  v5[3] = &unk_1E7FB7BF8;
  v2 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v8 = *(a1 + 72);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v6 = v3;
  v7[1] = v4;
  objc_copyWeak(v7, (a1 + 56));
  (*(v2 + 16))(v2, v5);
  objc_destroyWeak(v7);
}

void __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [v5 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_5_cold_1();
    }
  }

  v7 = [objc_alloc(objc_opt_class()) initWithConfiguration:*(*(a1 + 32) + 112) useManateeContainer:*(a1 + 64)];
  v8 = *(a1 + 32);
  v9 = *(v8 + 120);
  *(v8 + 120) = v7;

  if (a2)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v11 = "History database has PCS container sync properties";
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v11 = "History database has normal container sync properties";
  }

  _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
LABEL_11:
  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  v13 = *(a1 + 32);
  v26 = @"UsesManateeContainerKey";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 64)];
  v27[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  [v12 postNotificationName:@"WBSCloudHistoryStoreManateeStateDidChangeNotification" object:v13 userInfo:v15];

  if (((*(a1 + 64) != a2) & ~(v5 != 0)) != 0)
  {
    v18 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 56);
      *buf = 134217984;
      v25 = v19;
      _os_log_impl(&dword_1BB6F3000, v18, OS_LOG_TYPE_DEFAULT, "History database needs to reset because sync properties are not compatible with PCS state %ld", buf, 0xCu);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_177;
    v20[3] = &unk_1E7FB7BD0;
    v20[4] = *(a1 + 32);
    v23 = *(a1 + 64);
    objc_copyWeak(&v22, (a1 + 48));
    v21 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], v20);

    objc_destroyWeak(&v22);
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 safari_privacyPreservingDescription];
      *buf = 138543362;
      v25 = v17;
      _os_log_impl(&dword_1BB6F3000, v16, OS_LOG_TYPE_DEFAULT, "Database sync properties should not reset. Error %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_177(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_2_178;
  v3[3] = &unk_1E7FB7BD0;
  v3[4] = v2;
  v6 = *(a1 + 56);
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  [v2 _resetForAccountChangeWithCompletionHandler:v3];

  objc_destroyWeak(&v5);
}

void __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_2_178(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_DEFAULT, "Finish reseting database sync properties in response to PCS cloud history store transition", buf, 2u);
  }

  v3 = *(*(a1 + 32) + 24);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_179;
  v5[3] = &unk_1E7FB7BA8;
  objc_copyWeak(&v7, (a1 + 48));
  v6 = *(a1 + 40);
  [v3 setMetadataValue:v4 forKey:@"sync_with_manatee_container" completionHandler:v5];

  objc_destroyWeak(&v7);
}

void __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_179(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_179_cold_1();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_180;
    block[3] = &unk_1E7FB7B80;
    v9 = *(a1 + 32);
    dispatch_async(v7, block);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_deleteAllCloudHistoryAndSaveAgain
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __53__WBSCloudHistory__deleteAllCloudHistoryAndSaveAgain__block_invoke;
  v2[3] = &unk_1E7FB6F80;
  v2[4] = self;
  [(WBSCloudHistory *)self _performBlockAsynchronouslyOnCloudHistoryQueueAfterMetadataHasLoaded:v2];
}

uint64_t __53__WBSCloudHistory__deleteAllCloudHistoryAndSaveAgain__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__WBSCloudHistory__deleteAllCloudHistoryAndSaveAgain__block_invoke_2;
  v3[3] = &unk_1E7FB7C48;
  v3[4] = v1;
  return [v1 _determineCloudHistoryStoreWithCompletion:v3];
}

uint64_t __53__WBSCloudHistory__deleteAllCloudHistoryAndSaveAgain__block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__WBSCloudHistory__deleteAllCloudHistoryAndSaveAgain__block_invoke_3;
  v3[3] = &unk_1E7FB78D8;
  v3[4] = *(a1 + 32);
  return [a2 deleteHistoryZoneWithCompletion:v3];
}

void __53__WBSCloudHistory__deleteAllCloudHistoryAndSaveAgain__block_invoke_3(uint64_t a1, void *a2)
{
  block[8] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __53__WBSCloudHistory__deleteAllCloudHistoryAndSaveAgain__block_invoke_3_cold_1();
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__WBSCloudHistory__deleteAllCloudHistoryAndSaveAgain__block_invoke_182;
    block[3] = &unk_1E7FB6F80;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __53__WBSCloudHistory__deleteAllCloudHistoryAndSaveAgain__block_invoke_182(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__WBSCloudHistory__deleteAllCloudHistoryAndSaveAgain__block_invoke_2_183;
  v3[3] = &unk_1E7FB6F80;
  v3[4] = v1;
  return [v1 _resetForAccountChangeWithCompletionHandler:v3];
}

void __53__WBSCloudHistory__deleteAllCloudHistoryAndSaveAgain__block_invoke_2_183(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__WBSCloudHistory__deleteAllCloudHistoryAndSaveAgain__block_invoke_3_184;
  block[3] = &unk_1E7FB6F80;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_fetchAndMergeChangesWithServerChangeTokenData:(id)data withPriority:(int64_t)priority
{
  dataCopy = data;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke;
  v8[3] = &unk_1E7FB7D88;
  v9 = dataCopy;
  selfCopy = self;
  priorityCopy = priority;
  v7 = dataCopy;
  [(WBSCloudHistory *)self _determineCloudHistoryStoreWithCompletion:v8];
}

void __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke(int8x16_t *a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_2;
  v3[3] = &unk_1E7FB7D60;
  v5 = a1[3].i64[0];
  v2 = a1[2];
  v4 = vextq_s8(v2, v2, 8uLL);
  [a2 fetchRecordsWithServerChangeTokenData:v2.i64[0] completion:v3];
}

void __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_2(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = a1[4];
  v10 = *(v9 + 8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_3;
  v14[3] = &unk_1E7FB7D38;
  v15 = v8;
  v16 = v9;
  v11 = a1[5];
  v19 = a1[6];
  v20 = a3;
  v17 = v7;
  v18 = v11;
  v12 = v7;
  v13 = v8;
  dispatch_async(v10, v14);
}

void __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_3(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 safari_matchesErrorDomain:*MEMORY[0x1E695B738] andCode:21];
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "iCloud History change token has expired. Resetting change token and retrying fetch.", buf, 2u);
      }

      [*(a1 + 40) _setServerChangeToken:0];
      [*(a1 + 40) _fetchAndMergeChangesWithServerChangeTokenData:0 withPriority:*(a1 + 64)];
    }

    else
    {
      v17 = v4;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [*(a1 + 32) safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_3_cold_1();
      }

      if (*(a1 + 72) >= 2uLL)
      {
        v18 = 0;
        do
        {
          [*(*(a1 + 40) + 136) operationWithPriority:*(a1 + 64) didCompleteWithResult:2];
          ++v18;
        }

        while (v18 < *(a1 + 72) - 1);
      }

      v19 = [*(a1 + 40) _resultFromError:*(a1 + 32)];
      [*(*(a1 + 40) + 136) operationWithPriority:*(a1 + 64) didCompleteWithResult:v19];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_185;
      block[3] = &unk_1E7FB7C70;
      v33 = v19;
      v22 = *(a1 + 32);
      v20 = v22.i64[0];
      v32 = vextq_s8(v22, v22, 8uLL);
      dispatch_async(MEMORY[0x1E69E96A0], block);
      std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100]((*(a1 + 40) + 88), 0);
      if (v19 != 5)
      {
        [*(a1 + 40) _callAndResetFetchCompletionHandlerWithError:*(a1 + 32)];
        if (v19 == 6)
        {
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_2_186;
          v30[3] = &unk_1E7FB6F80;
          v30[4] = *(a1 + 40);
          v21 = MEMORY[0x1E69E96A0];
          dispatch_async(MEMORY[0x1E69E96A0], v30);
        }

        else if (v19 == 7)
        {
          [*(a1 + 40) _handleManateeErrorIfNeeded:*(a1 + 32)];
        }
      }
    }
  }

  else
  {
    if (*(a1 + 72))
    {
      v6 = 0;
      do
      {
        [*(*(a1 + 40) + 136) operationWithPriority:*(a1 + 64) didCompleteWithResult:2];
        ++v6;
      }

      while (v6 < *(a1 + 72));
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_3_187;
    v26[3] = &unk_1E7FB7C98;
    v26[4] = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 72);
    v27 = v7;
    v29 = v8;
    v28 = *(a1 + 56);
    v9 = MEMORY[0x1BFB13CE0](v26);
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 272));
    v11 = [*(a1 + 48) profiles];
    v12 = [v11 allObjects];
    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    v15 = *(v14 + 8);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_3_190;
    v23[3] = &unk_1E7FB7D10;
    v23[4] = v14;
    v24 = v13;
    v16 = WeakRetained;
    v25 = v16;
    [v12 safari_enumerateAsynchronouslyOnQueue:v15 enumerationBlock:v23 completionBlock:v9];
  }
}

void *__79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_185(void *result)
{
  if (result[6] == 5)
  {
    *(result[4] + 161) = 1;
    v2 = result[4];
    [v2 _backoffTimeIntervalFromError:result[5]];

    return [v2 _backOffWithInterval:?];
  }

  return result;
}

uint64_t __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_3_187(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) serverChangeTokenData];
  [v2 _setServerChangeToken:v3];

  [*(a1 + 32) _pruneTombstonesThatCanNoLongerMatchVisitsFetchedFromCloud];
  v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 40) visitCount];
    v6 = [*(a1 + 40) tombstoneCount];
    v7 = *(a1 + 56);
    *buf = 134218496;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_DEFAULT, "Merged %zu visits and %zu tombstones fetched from iCloud History in %zu operations into local history store.", buf, 0x20u);
  }

  [*(*(a1 + 32) + 168) clearAcknowledgedPushNotifications];
  [*(a1 + 32) _processPendingPushNotifications];
  std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100]((*(a1 + 32) + 88), 0);
  result = [*(a1 + 32) _callAndResetFetchCompletionHandlerWithError:0];
  if (!*(a1 + 48))
  {
    v9 = *(a1 + 32);
    if (*(v9 + 184) <= 1uLL)
    {
      *(v9 + 64) = 0;
      *(*(a1 + 32) + 184) = 0;
      v10 = *(a1 + 32);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_188;
      v11[3] = &unk_1E7FB6F80;
      v11[4] = v10;
      return [v10 _determineNumberOfDevicesInSyncCircleForOperation:@"FetchChanges" completionHandler:v11];
    }
  }

  return result;
}

void __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_188(uint64_t a1)
{
  if (*(*(a1 + 32) + 184) >= 2uLL)
  {
    block[5] = v1;
    block[6] = v2;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_2_189;
    block[3] = &unk_1E7FB6F80;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_3_190(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if ([*(a1 + 32) _shouldSyncProfiles] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69C8B58]))
  {
    v8 = [*(a1 + 32) _convertProfileServerIdentifierToLocalIdentifier:v6];
    v9 = v8;
    if (v8)
    {
      v10 = *(a1 + 48);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_191;
      v12[3] = &unk_1E7FB7CE8;
      v13 = v8;
      v14 = v6;
      v16 = v7;
      v15 = *(a1 + 40);
      [v10 openDatabaseWithID:v13 createIfNeeded:1 completionHandler:v12];
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v18 = v6;
        _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_DEFAULT, "Database for profile with server identifier %{private}@ does not exists on device because there is no local profile identifier that it is associated with, ignoring records associated with this server identifier", buf, 0xCu);
      }

      (*(v7 + 2))(v7, 0);
    }
  }

  else
  {
    [*(a1 + 40) clearRecordsForProfileWithServerIdentifier:v6];
    (*(v7 + 2))(v7, 0);
  }
}

void __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_191(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_191_cold_1(a1, v7);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_6:
      (*(a1[7] + 2))();
      goto LABEL_7;
    }
  }

  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = [[WBSCloudHistoryMergeOperation alloc] initWithDatabase:v5 fetchResult:a1[6] profileServerIdentifier:a1[5]];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_193;
  v9[3] = &unk_1E7FB7CC0;
  v10 = a1[6];
  v11 = a1[5];
  v12 = a1[7];
  [(WBSCloudHistoryMergeOperation *)v8 mergeWithCompletion:v9];

LABEL_7:
}

uint64_t __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_193(uint64_t a1)
{
  [*(a1 + 32) clearRecordsForProfileWithServerIdentifier:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_pruneTombstonesThatCanNoLongerMatchVisitsFetchedFromCloud
{
  date = [MEMORY[0x1E695DF00] date];
  [(WBSCloudHistoryConfiguration *)self->_configuration syncWindow];
  v5 = [date dateByAddingTimeInterval:-v4];

  [(WBSHistoryServiceDatabaseProtocol *)self->_database pruneTombstonesWithEndDatePriorToDate:v5 completionHandler:&__block_literal_global_197];
}

void __77__WBSCloudHistory__pruneTombstonesThatCanNoLongerMatchVisitsFetchedFromCloud__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __77__WBSCloudHistory__pruneTombstonesThatCanNoLongerMatchVisitsFetchedFromCloud__block_invoke_cold_1();
    }
  }
}

- (void)_replayPersistedLongLivedSaveOperationIfNecessary
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(WBSCloudHistoryConfiguration *)self->_configuration shouldUseLongLivedOperationsToSaveRecords]&& !self->_replayLongLivedSaveOperationHasBeenPerformed)
  {
    self->_replayLongLivedSaveOperationHasBeenPerformed = 1;
    v6 = 0;
    v7 = 0;
    [(WBSCloudHistory *)self _persistedLongLivedSaveOperationID:&v7 databaseGenerations:&v6];
    v3 = v7;
    v4 = v6;
    [(WBSCloudHistory *)self _removePersistedLongLivedSaveOperationDictionary];
    if (v3 && v4)
    {
      operator new();
    }

    v5 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "There is no persisted long-lived operation to replay. Operation ID: %{public}@, generations: %@", buf, 0x16u);
    }
  }
}

void __68__WBSCloudHistory__replayPersistedLongLivedSaveOperationIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__WBSCloudHistory__replayPersistedLongLivedSaveOperationIfNecessary__block_invoke_2;
  v6[3] = &unk_1E7FB7DF8;
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v8 = *(a1 + 48);
  [a2 replayPersistedLongLivedSaveOperationWithID:v4 completion:v6];
}

void __68__WBSCloudHistory__replayPersistedLongLivedSaveOperationIfNecessary__block_invoke_2(id *a1, int a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100](a1[4] + 12, 0);
    v11 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[5];
      v12 = a1[6];
      v14 = @"NO";
      if (a2)
      {
        v14 = @"YES";
      }

      v15 = v14;
      v16 = [v5 safari_privacyPreservingDescription];
      *buf = 138544130;
      v21 = v13;
      v22 = 2112;
      v23 = v12;
      v24 = 2114;
      v25 = v15;
      v26 = 2114;
      v27 = v16;
      _os_log_error_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_ERROR, "Long-lived operation cannot be fetched. Operation ID: %{public}@, generations: %@, operation exists: %{public}@, error: %{public}@", buf, 0x2Au);
    }

    [a1[4] _handleManateeErrorIfNeeded:v5];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = a1[5];
      v8 = a1[6];
      *buf = 138543618;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Long-lived operation was fetched and successfully replayed. Operation ID: %{public}@, generations: %@", buf, 0x16u);
    }

    v9 = a1[4];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__WBSCloudHistory__replayPersistedLongLivedSaveOperationIfNecessary__block_invoke_201;
    v17[3] = &unk_1E7FB7DD0;
    v17[4] = v9;
    v10 = a1[6];
    v18 = a1[5];
    v19 = a1[6];
    [v9 _updateHistoryAfterSuccessfulPersistedLongLivedSaveOperationWithGenerations:v10 completion:v17];
  }
}

void __68__WBSCloudHistory__replayPersistedLongLivedSaveOperationIfNecessary__block_invoke_201(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100]((a1[4] + 96), 0);
  v2 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = 138543618;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "History was updated after successfully replaying the persisted long-lived operation. Operation ID: %{public}@, generations: %@", &v5, 0x16u);
  }
}

- (void)_updateHistoryAfterSuccessfulPersistedLongLivedSaveOperationWithGenerations:(id)generations completion:(id)completion
{
  generationsCopy = generations;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_databaseStore);
  allKeys = [generationsCopy allKeys];
  cloudHistoryQueue = self->_cloudHistoryQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __106__WBSCloudHistory__updateHistoryAfterSuccessfulPersistedLongLivedSaveOperationWithGenerations_completion___block_invoke;
  v13[3] = &unk_1E7FB7D10;
  v13[4] = self;
  v11 = WeakRetained;
  v14 = v11;
  v12 = generationsCopy;
  v15 = v12;
  [allKeys safari_enumerateAsynchronouslyOnQueue:cloudHistoryQueue enumerationBlock:v13 completionBlock:completionCopy];
}

void __106__WBSCloudHistory__updateHistoryAfterSuccessfulPersistedLongLivedSaveOperationWithGenerations_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) _convertProfileServerIdentifierToLocalIdentifier:v6];
  v9 = v8;
  if (v8)
  {
    v10 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __106__WBSCloudHistory__updateHistoryAfterSuccessfulPersistedLongLivedSaveOperationWithGenerations_completion___block_invoke_202;
    v12[3] = &unk_1E7FB7E70;
    v13 = v8;
    v16 = v7;
    v14 = *(a1 + 48);
    v15 = v6;
    [v10 openDatabaseWithID:v13 createIfNeeded:0 completionHandler:v12];
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __106__WBSCloudHistory__updateHistoryAfterSuccessfulPersistedLongLivedSaveOperationWithGenerations_completion___block_invoke_cold_1(v6, v11);
    }

    (*(v7 + 2))(v7, 0);
  }
}

void __106__WBSCloudHistory__updateHistoryAfterSuccessfulPersistedLongLivedSaveOperationWithGenerations_completion___block_invoke_202(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
    v9 = [v8 longLongValue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __106__WBSCloudHistory__updateHistoryAfterSuccessfulPersistedLongLivedSaveOperationWithGenerations_completion___block_invoke_203;
    v13[3] = &unk_1E7FB7E48;
    v14 = *(a1 + 56);
    [v5 updateDatabaseAfterSuccessfulSyncWithGeneration:v9 completionHandler:v13];
  }

  else
  {
    if (([v6 safari_matchesErrorDomain:*MEMORY[0x1E696A798] andCode:2] & 1) == 0)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        v12 = [v7 safari_privacyPreservingDescription];
        __106__WBSCloudHistory__updateHistoryAfterSuccessfulPersistedLongLivedSaveOperationWithGenerations_completion___block_invoke_202_cold_1(v11, v12, v15);
      }
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __106__WBSCloudHistory__updateHistoryAfterSuccessfulPersistedLongLivedSaveOperationWithGenerations_completion___block_invoke_203(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_6_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_persistedLongLivedSaveOperationID:(id *)d databaseGenerations:(id *)generations
{
  v15[1] = *MEMORY[0x1E69E9840];
  *d = 0;
  *generations = 0;
  v6 = self->_longLivedSaveOperationData;
  if (v6)
  {
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 safari_stringForKey:@"operationID"];
      if (v8)
      {
        v9 = [v7 safari_numberForKey:@"generation"];
        if (v9)
        {
          v10 = v8;
          *d = v8;
          v14 = *MEMORY[0x1E69C8B58];
          v15[0] = v9;
          *generations = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
        }

        else
        {
          v11 = [v7 objectForKeyedSubscript:@"generations"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v8;
            *d = v8;
            v13 = v11;
            *generations = v11;
          }
        }
      }
    }
  }
}

- (void)_persistLongLivedSaveOperationDictionaryWithOperationID:(id)d databaseGenerations:(id)generations
{
  v13[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  generationsCopy = generations;
  v12[0] = @"operationID";
  v12[1] = @"generations";
  v13[0] = dCopy;
  v13[1] = generationsCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:200 options:0 error:0];
  longLivedSaveOperationData = self->_longLivedSaveOperationData;
  self->_longLivedSaveOperationData = v9;
  v11 = v9;

  [(WBSHistoryServiceDatabaseProtocol *)self->_database setMetadataValue:v11 forKey:@"long_lived_save_operation" completionHandler:&__block_literal_global_205];
}

void __95__WBSCloudHistory__persistLongLivedSaveOperationDictionaryWithOperationID_databaseGenerations___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __95__WBSCloudHistory__persistLongLivedSaveOperationDictionaryWithOperationID_databaseGenerations___block_invoke_cold_1();
    }
  }
}

- (void)_removePersistedLongLivedSaveOperationDictionary
{
  longLivedSaveOperationData = self->_longLivedSaveOperationData;
  self->_longLivedSaveOperationData = 0;

  database = self->_database;

  [(WBSHistoryServiceDatabaseProtocol *)database setMetadataValue:0 forKey:@"long_lived_save_operation" completionHandler:&__block_literal_global_207];
}

void __67__WBSCloudHistory__removePersistedLongLivedSaveOperationDictionary__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __67__WBSCloudHistory__removePersistedLongLivedSaveOperationDictionary__block_invoke_cold_1();
    }
  }
}

- (void)_initializePushNotificationSupport
{
  if ([(WBSCloudHistory *)self isCloudHistoryEnabled])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __53__WBSCloudHistory__initializePushNotificationSupport__block_invoke;
    v3[3] = &unk_1E7FB7E98;
    v3[4] = self;
    [(WBSCloudHistory *)self _pushNotificationsAreInitializedWithCompletionHandler:v3];
  }
}

void __53__WBSCloudHistory__initializePushNotificationSupport__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [v5 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __53__WBSCloudHistory__initializePushNotificationSupport__block_invoke_cold_1();
    }
  }

  else if (a2)
  {
    [*(a1 + 32) _processPendingPushNotifications];
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_INFO, "Initializing iCloud History push notifications…", buf, 2u);
    }

    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__WBSCloudHistory__initializePushNotificationSupport__block_invoke_208;
    v9[3] = &unk_1E7FB7C48;
    v9[4] = v8;
    [v8 _determineCloudHistoryStoreWithCompletion:v9];
  }
}

uint64_t __53__WBSCloudHistory__initializePushNotificationSupport__block_invoke_208(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__WBSCloudHistory__initializePushNotificationSupport__block_invoke_2;
  v3[3] = &unk_1E7FB78D8;
  v3[4] = *(a1 + 32);
  return [a2 initializePushNotifications:v3];
}

void __53__WBSCloudHistory__initializePushNotificationSupport__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __53__WBSCloudHistory__initializePushNotificationSupport__block_invoke_2_cold_1();
    }
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Push notifications are now initialized.", v6, 2u);
    }

    [*(a1 + 32) _setPushNotificationAreInitialized:1];
  }

  [*(a1 + 32) fetchAndMergeChanges];
}

- (void)_pushNotificationsAreInitializedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  database = self->_database;
  v6 = [MEMORY[0x1E695DFD8] setWithObject:@"push_notifications_initialized"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__WBSCloudHistory__pushNotificationsAreInitializedWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7FB7B30;
  v8[4] = self;
  v7 = handlerCopy;
  v9 = v7;
  [(WBSHistoryServiceDatabaseProtocol *)database fetchMetadataForKeys:v6 completionHandler:v8];
}

void __73__WBSCloudHistory__pushNotificationsAreInitializedWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__WBSCloudHistory__pushNotificationsAreInitializedWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7FB7B08;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __73__WBSCloudHistory__pushNotificationsAreInitializedWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) safari_BOOLForKey:@"push_notifications_initialized"];
  v4 = *(a1 + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

- (void)_setPushNotificationAreInitialized:(BOOL)initialized
{
  database = self->_database;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:initialized];
  [WBSHistoryServiceDatabaseProtocol setMetadataValue:"setMetadataValue:forKey:completionHandler:" forKey:? completionHandler:?];
}

void __54__WBSCloudHistory__setPushNotificationAreInitialized___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __54__WBSCloudHistory__setPushNotificationAreInitialized___block_invoke_cold_1();
    }
  }
}

- (void)_pushNotificationReceived:(id)received
{
  v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_DEFAULT, "iCloud History push notification received from agent.", v5, 2u);
  }

  [(WBSCloudHistory *)self _processPendingPushNotifications];
}

- (void)_processPendingPushNotifications
{
  pushAgent = self->_pushAgent;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__WBSCloudHistory__processPendingPushNotifications__block_invoke;
  v3[3] = &unk_1E7FB7EE8;
  v3[4] = self;
  [(WBSCloudHistoryPushAgentProxy *)pushAgent getPushNotifications:v3];
}

void __51__WBSCloudHistory__processPendingPushNotifications__block_invoke(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__WBSCloudHistory__processPendingPushNotifications__block_invoke_2;
  v5[3] = &unk_1E7FB7EC0;
  v6 = a2;
  v7 = a3;
  v5[4] = v3;
  dispatch_async(v4, v5);
}

void __51__WBSCloudHistory__processPendingPushNotifications__block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 40) & 1) == 0 && (*(a1 + 41) & 1) == 0)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v20) = 0;
    v9 = "No pending push notifications.";
    goto LABEL_21;
  }

  v2 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v4 = v3;
    if (*(a1 + 41))
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = v5;
    v20 = 138543618;
    v21 = v4;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Processing unacknowledged push notifications: %{public}@. Processing acknowledged push notifications: %{public}@.", &v20, 0x16u);
  }

  [*(a1 + 32) _updateDeviceCountInResponseToPushNotification];
  v7 = *(a1 + 32);
  if (*(v7 + 88))
  {
    v8 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v20) = 0;
    v9 = "A fetch is already in progress. Push notifications will be processed once the fetch completes.";
    goto LABEL_21;
  }

  if (*(a1 + 40) == 1)
  {
    [*(v7 + 168) acknowledgePendingPushNotifications];
    v7 = *(a1 + 32);
  }

  if (([*(v7 + 136) permitsOperationWithPriority:0] & 1) != 0 || (objc_msgSend(MEMORY[0x1E695E000], "standardUserDefaults"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLForKey:", @"WBSCloudHistoryIgnoreThrottlingPolicy"), v10, v11))
  {
    [*(a1 + 32) _fetchChangesInResponseToPushNotification:0];
    return;
  }

  v12 = *(a1 + 32);
  if (*(v12 + 176))
  {
    v8 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      v9 = "A fetch has already been scheduled in response to a push notification.";
LABEL_21:
      _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_DEFAULT, v9, &v20, 2u);
    }
  }

  else
  {
    v13 = [*(v12 + 136) dateOfNextPermittedOperationWithPriority:0];
    v14 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:v15];
      v20 = 134217984;
      v21 = v16;
      _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_DEFAULT, "A fetch is not currently permitted by the throttler. Scheduling a fetch in %f seconds in response to processing push notifications", &v20, 0xCu);
    }

    v17 = [[WBSOneShotTimer alloc] initWithFireDate:v13 queue:*(*(a1 + 32) + 8) target:*(a1 + 32) selector:sel__fetchChangesInResponseToPushNotification_];
    v18 = *(a1 + 32);
    v19 = *(v18 + 176);
    *(v18 + 176) = v17;
  }
}

- (void)_fetchChangesInResponseToPushNotification:(id)notification
{
  pushNotificationFetchTimer = self->_pushNotificationFetchTimer;
  self->_pushNotificationFetchTimer = 0;

  v5 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "Fetching changes from iCloud History in response to a push notification.", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__WBSCloudHistory__fetchChangesInResponseToPushNotification___block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_determineNumberOfDevicesInSyncCircleForOperation:(id)operation completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  handlerCopy = handler;
  v8 = [(NSMutableDictionary *)self->_syncCircleSizeRetrievalCompletionHandlersByOperation objectForKeyedSubscript:operationCopy];

  if (v8)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [WBSCloudHistory _determineNumberOfDevicesInSyncCircleForOperation:operationCopy completionHandler:v9];
    }
  }

  else
  {
    v10 = [handlerCopy copy];
    [(NSMutableDictionary *)self->_syncCircleSizeRetrievalCompletionHandlersByOperation setObject:v10 forKeyedSubscript:operationCopy];

    if ([(NSMutableDictionary *)self->_syncCircleSizeRetrievalCompletionHandlersByOperation count]<= 1)
    {
      _cachedNumberOfDevicesInSyncCircle = [(WBSCloudHistory *)self _cachedNumberOfDevicesInSyncCircle];
      v12 = _cachedNumberOfDevicesInSyncCircle == 0;
      v13 = [(WBSCloudKitThrottler *)self->_syncCircleSizeRetrievalThrottler permitsOperationWithPriority:v12];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __87__WBSCloudHistory__determineNumberOfDevicesInSyncCircleForOperation_completionHandler___block_invoke;
      v22[3] = &unk_1E7FB7F80;
      v23 = v13;
      v22[4] = self;
      v22[5] = v12;
      v14 = MEMORY[0x1BFB13CE0](v22);
      v15 = v14;
      if (v13)
      {
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __87__WBSCloudHistory__determineNumberOfDevicesInSyncCircleForOperation_completionHandler___block_invoke_4;
        v20[3] = &unk_1E7FB7FA8;
        v21 = v14;
        [(WBSCloudHistory *)self _determineCloudHistoryStoreWithCompletion:v20];
      }

      else
      {
        v16 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [(WBSCloudKitThrottler *)self->_syncCircleSizeRetrievalThrottler dateOfNextPermittedOperationWithPriority:v12];
          date = [MEMORY[0x1E695DF00] date];
          [v17 timeIntervalSinceDate:date];
          *buf = 134217984;
          v25 = v19;
          _os_log_impl(&dword_1BB6F3000, v16, OS_LOG_TYPE_DEFAULT, "Determining size of sync circle was denied by throttler. Query will be permitted in %f seconds.", buf, 0xCu);
        }

        v15[2](v15, _cachedNumberOfDevicesInSyncCircle, 0);
      }
    }
  }
}

void __87__WBSCloudHistory__determineNumberOfDevicesInSyncCircleForOperation_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [v5 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __87__WBSCloudHistory__determineNumberOfDevicesInSyncCircleForOperation_completionHandler___block_invoke_cold_1();
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__WBSCloudHistory__determineNumberOfDevicesInSyncCircleForOperation_completionHandler___block_invoke_215;
    block[3] = &unk_1E7FB7F10;
    block[4] = v7;
    v14 = v5;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 8);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__WBSCloudHistory__determineNumberOfDevicesInSyncCircleForOperation_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7FB7F58;
    v11[4] = v9;
    v11[5] = a2;
    v12 = *(a1 + 48);
    v11[6] = *(a1 + 40);
    dispatch_async(v10, v11);
  }
}

uint64_t __87__WBSCloudHistory__determineNumberOfDevicesInSyncCircleForOperation_completionHandler___block_invoke_215(uint64_t a1)
{
  [*(*(a1 + 32) + 192) removeAllObjects];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _handleManateeErrorIfNeeded:v3];
}

uint64_t __87__WBSCloudHistory__determineNumberOfDevicesInSyncCircleForOperation_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNumberOfDevicesInSyncCircle:*(a1 + 40)];
  [*(*(a1 + 32) + 192) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_218];
  result = [*(*(a1 + 32) + 192) removeAllObjects];
  if (*(a1 + 56) == 1)
  {
    v3 = *(*(a1 + 32) + 144);
    v4 = *(a1 + 48);

    return [v3 operationWithPriority:v4 didCompleteWithResult:2];
  }

  return result;
}

- (void)_saveChangesWhenHistoryLoads
{
  if (!self->_saveChangesWhenHistoryLoads)
  {
    [(WBSCloudHistory *)self _registerForHistoryWasLoadedNotificationIfNecessary];
    self->_saveChangesWhenHistoryLoads = 1;
  }
}

- (void)_fetchChangesWhenHistoryLoads
{
  if (!self->_fetchChangesWhenHistoryLoads)
  {
    [(WBSCloudHistory *)self _registerForHistoryWasLoadedNotificationIfNecessary];
    self->_fetchChangesWhenHistoryLoads = 1;
  }
}

- (void)_updateProfileServerIdentifiersToLocalIdentifiersMapBasedOnLocalToServerMap
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  namedProfileLocalIdentifiersToServerIdentifiersMap = self->_namedProfileLocalIdentifiersToServerIdentifiersMap;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__WBSCloudHistory__updateProfileServerIdentifiersToLocalIdentifiersMapBasedOnLocalToServerMap__block_invoke;
  v8[3] = &unk_1E7FB7FD0;
  v5 = dictionary;
  v9 = v5;
  [(NSDictionary *)namedProfileLocalIdentifiersToServerIdentifiersMap enumerateKeysAndObjectsUsingBlock:v8];
  namedProfileServerIdentifiersToLocalIdentifiersMap = self->_namedProfileServerIdentifiersToLocalIdentifiersMap;
  self->_namedProfileServerIdentifiersToLocalIdentifiersMap = v5;
  v7 = v5;
}

- (void)_updateProfileLocalIdentifiersToServerIdentifiersMapInDatabase
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.808e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to serialize profile identifier map: %{private}@", v5);
}

void __81__WBSCloudHistory__updateProfileLocalIdentifiersToServerIdentifiersMapInDatabase__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [v2 safari_privacyPreservingDescription];
    objc_claimAutoreleasedReturnValue();
    __81__WBSCloudHistory__updateProfileLocalIdentifiersToServerIdentifiersMapInDatabase__block_invoke_cold_1();
  }
}

- (void)updateProfileLocalIdentifiersToServerIdentifiersMap:(id)map completionHandler:(id)handler
{
  mapCopy = map;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__WBSCloudHistory_updateProfileLocalIdentifiersToServerIdentifiersMap_completionHandler___block_invoke;
  v10[3] = &unk_1E7FB7CC0;
  v10[4] = self;
  v11 = mapCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = mapCopy;
  [(WBSCloudHistory *)self _performBlockAsynchronouslyOnCloudHistoryQueueAfterMetadataHasLoaded:v10];
}

void __89__WBSCloudHistory_updateProfileLocalIdentifiersToServerIdentifiersMap_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 248) isEqualToDictionary:*(a1 + 40)])
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    v3 = MEMORY[0x1E695DFA8];
    v4 = [*(a1 + 40) allKeys];
    v8 = [v3 setWithArray:v4];

    v5 = MEMORY[0x1E695DFD8];
    v6 = [*(*(a1 + 32) + 248) allKeys];
    v7 = [v5 setWithArray:v6];
    [v8 minusSet:v7];

    objc_storeStrong((*(a1 + 32) + 248), *(a1 + 40));
    [*(a1 + 32) _updateProfileServerIdentifiersToLocalIdentifiersMapBasedOnLocalToServerMap];
    [*(a1 + 32) _updateProfileLocalIdentifiersToServerIdentifiersMapInDatabase];
    if ([v8 count])
    {
      [*(a1 + 32) _fetchAddedProfileLocalIdentifiers:v8];
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)_fetchAddedProfileLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__WBSCloudHistory__fetchAddedProfileLocalIdentifiers___block_invoke;
  v6[3] = &unk_1E7FB8048;
  v6[4] = self;
  v7 = identifiersCopy;
  v5 = identifiersCopy;
  [(WBSCloudHistory *)self _determineCloudHistoryStoreWithCompletion:v6];
}

void __54__WBSCloudHistory__fetchAddedProfileLocalIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) allObjects];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__WBSCloudHistory__fetchAddedProfileLocalIdentifiers___block_invoke_2;
  v7[3] = &unk_1E7FB8020;
  v7[4] = *(a1 + 32);
  v6 = v3;
  v8 = v6;
  [v4 _enumerateDatabasesWithProfileLocalIdentifiers:v5 createIfNeeded:1 enumerationBlock:v7 completionBlock:&__block_literal_global_227];
}

void __54__WBSCloudHistory__fetchAddedProfileLocalIdentifiers___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) _convertProfileLocalIdentifierToServerIdentifier:v7];
  v11 = *(a1 + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__WBSCloudHistory__fetchAddedProfileLocalIdentifiers___block_invoke_3;
  v16[3] = &unk_1E7FB7FF8;
  v17 = v10;
  v12 = v7;
  v18 = v12;
  v13 = v9;
  v20 = v13;
  v14 = v8;
  v19 = v14;
  v15 = v10;
  [v11 fetchRecordsForProfileServerIdentifier:v15 completion:v16];
}

void __54__WBSCloudHistory__fetchAddedProfileLocalIdentifiers___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = [v6 safari_privacyPreservingDescription];
      *buf = 138478339;
      v15 = v10;
      v16 = 2112;
      v17 = v9;
      v18 = 2114;
      v19 = v11;
      _os_log_error_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch records for profile server identifier %{private}@ (local identifier: %@): %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = [[WBSCloudHistoryMergeOperation alloc] initWithDatabase:*(a1 + 48) fetchResult:v5 profileServerIdentifier:*(a1 + 32)];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__WBSCloudHistory__fetchAddedProfileLocalIdentifiers___block_invoke_223;
    v12[3] = &unk_1E7FB7B80;
    v13 = *(a1 + 56);
    [(WBSCloudHistoryMergeOperation *)v8 mergeWithCompletion:v12];
  }
}

void __54__WBSCloudHistory__fetchAddedProfileLocalIdentifiers___block_invoke_2_225()
{
  v0 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BB6F3000, v0, OS_LOG_TYPE_INFO, "Finished fetching new profiles", v1, 2u);
  }
}

- (void)_loadMetadataAsynchronously
{
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{@"push_throttler_data", @"fetch_throttler_data", @"sync_circle_size_retrieval_throttler_data", @"cached_sync_circle_size", @"long_lived_save_operation", @"profile_server_map", 0}];
  database = self->_database;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__WBSCloudHistory__loadMetadataAsynchronously__block_invoke;
  v5[3] = &unk_1E7FB8070;
  v5[4] = self;
  [(WBSHistoryServiceDatabaseProtocol *)database fetchMetadataForKeys:v3 completionHandler:v5];
}

void __46__WBSCloudHistory__loadMetadataAsynchronously__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__WBSCloudHistory__loadMetadataAsynchronously__block_invoke_2;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __46__WBSCloudHistory__loadMetadataAsynchronously__block_invoke_2(uint64_t a1)
{
  v23[4] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  v3 = [*(a1 + 40) safari_dataForKey:@"push_throttler_data"];
  v5 = a1 + 32;
  v4 = *(a1 + 32);
  v6 = *(v4 + 32);
  *(v4 + 32) = v3;

  v7 = [*v2 safari_dataForKey:@"fetch_throttler_data"];
  v8 = *(*(a1 + 32) + 40);
  *(*v5 + 40) = v7;

  v9 = [*v2 safari_dataForKey:@"sync_circle_size_retrieval_throttler_data"];
  v10 = *(*(a1 + 32) + 48);
  *(*v5 + 48) = v9;

  v11 = [*v2 safari_numberForKey:@"cached_sync_circle_size"];
  *(*(a1 + 32) + 64) = [v11 unsignedIntegerValue];

  v12 = [*(a1 + 40) safari_dataForKey:@"long_lived_save_operation"];
  v13 = *(*(a1 + 32) + 56);
  *(*(a1 + 32) + 56) = v12;

  v14 = [*(a1 + 40) safari_dataForKey:@"profile_server_map"];
  if (v14)
  {
    v23[0] = 0;
    v15 = [MEMORY[0x1E696AE40] propertyListWithData:v14 options:0 format:0 error:v23];
    v16 = v23[0];
    v17 = *(a1 + 32);
    v18 = *(v17 + 248);
    *(v17 + 248) = v15;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = *(a1 + 32);
      v20 = *(v19 + 248);
      *(v19 + 248) = 0;
    }

    v21 = *(a1 + 32);
    if (v21[31])
    {
      [v21 _updateProfileServerIdentifiersToLocalIdentifiersMapBasedOnLocalToServerMap];
    }

    else
    {
      v22 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [v16 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        __46__WBSCloudHistory__loadMetadataAsynchronously__block_invoke_2_cold_1();
      }
    }
  }

  dispatch_set_target_queue(*(*(a1 + 32) + 16), *(*(a1 + 32) + 8));
  dispatch_activate(*(*(a1 + 32) + 16));
}

- (int64_t)_priorityForSaveWithVisits:(id)visits tombstones:(id)tombstones bypassingThrottler:(BOOL)throttler
{
  v19 = *MEMORY[0x1E69E9840];
  tombstonesCopy = tombstones;
  v7 = tombstonesCopy;
  if (throttler)
  {
    v8 = 2;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allValues = [tombstonesCopy allValues];
    v8 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v10 = 0;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(allValues);
          }

          v10 += [*(*(&v14 + 1) + 8 * v12++) count];
        }

        while (v8 != v12);
        v8 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
      v8 = v10 != 0;
    }
  }

  return v8;
}

- (int64_t)_resultFromError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v5 = [(WBSCloudHistory *)self _manateeErrorCode:errorCopy];

    if (v5)
    {
      v6 = 7;
    }

    else if ([errorCopy safari_hasOrContainsErrorWithCloudKitErrorCode:26] & 1) != 0 || (objc_msgSend(errorCopy, "safari_hasOrContainsErrorWithCloudKitErrorCode:", 28))
    {
      v6 = 6;
    }

    else if ([errorCopy safari_errorOrAnyPartialErrorHasCloudKitInternalErrorCode:5008])
    {
      v6 = 5;
    }

    else
    {
      domain = [errorCopy domain];
      v9 = [domain isEqualToString:*MEMORY[0x1E695B738]];

      if ((v9 & 1) != 0 && ([errorCopy code] & 0xFFFFFFFFFFFFFFFELL) == 6)
      {
        [(WBSCloudHistory *)self _backoffTimeIntervalFromError:errorCopy];
        if (v10 == 0.0)
        {
          v6 = 4;
        }

        else
        {
          v6 = 5;
        }
      }

      else
      {
        v6 = 3;
      }
    }
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

- (double)_backoffTimeIntervalFromError:(id)error
{
  errorCopy = error;
  if ([errorCopy safari_errorOrAnyPartialErrorHasCloudKitInternalErrorCode:5008])
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Backing off sync in response to receiving unsynced keychain error from CloudKit", v11, 2u);
    }

    v5 = 120.0;
  }

  else
  {
    userInfo = [errorCopy userInfo];
    v7 = [userInfo safari_numberForKey:*MEMORY[0x1E695B750]];
    [v7 doubleValue];
    v9 = v8;

    v5 = 0.0;
    if (v9 > 0.0)
    {
      if (v9 <= 21600.0)
      {
        v5 = v9;
      }

      else
      {
        v5 = 21600.0;
      }
    }
  }

  return v5;
}

- (void)_backOffWithInterval:(double)interval
{
  [(WBSOneShotTimer *)self->_serverBackoffTimer invalidate];
  v5 = [WBSOneShotTimer alloc];
  v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:interval];
  v6 = MEMORY[0x1E69E96A0];
  v7 = MEMORY[0x1E69E96A0];
  v8 = [(WBSOneShotTimer *)v5 initWithFireDate:v10 queue:v6 target:self selector:sel__serverBackoffTimerFired_];
  serverBackoffTimer = self->_serverBackoffTimer;
  self->_serverBackoffTimer = v8;
}

- (void)_serverBackoffTimerFired:(id)fired
{
  serverBackoffTimer = self->_serverBackoffTimer;
  self->_serverBackoffTimer = 0;

  if (self->_saveChangesWhenBackoffTimerFires)
  {
    [(WBSCloudHistory *)self saveChangesToCloudHistoryStore];
  }

  if (self->_fetchChangesWhenBackoffTimerFires)
  {
    [(WBSCloudHistory *)self fetchAndMergeChanges];
  }

  *&self->_saveChangesWhenBackoffTimerFires = 0;
}

- (id)recordOfPastOperationsForThrottler:(id)throttler
{
  throttlerCopy = throttler;
  v5 = throttlerCopy;
  if (self->_saveChangesThrottler == throttlerCopy)
  {
    v7 = 32;
  }

  else if (self->_fetchChangesThrottler == throttlerCopy)
  {
    v7 = 40;
  }

  else
  {
    if (self->_syncCircleSizeRetrievalThrottler != throttlerCopy)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v7 = 48;
  }

  v6 = *(&self->super.isa + v7);
LABEL_9:

  return v6;
}

- (void)setRecordOfPastOperations:(id)operations forThrottler:(id)throttler
{
  operationsCopy = operations;
  throttlerCopy = throttler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__WBSCloudHistory_setRecordOfPastOperations_forThrottler___block_invoke;
  v13[3] = &unk_1E7FB78D8;
  v8 = throttlerCopy;
  v14 = v8;
  v9 = MEMORY[0x1BFB13CE0](v13);
  v10 = [operationsCopy copy];

  if (self->_saveChangesThrottler == v8)
  {
    v11 = WBSHistorySQLiteStorePushThrottlerDataKey;
    v12 = 32;
    goto LABEL_7;
  }

  if (self->_fetchChangesThrottler == v8)
  {
    v11 = WBSHistorySQLiteStoreFetchThrottlerDataKey;
    v12 = 40;
    goto LABEL_7;
  }

  if (self->_syncCircleSizeRetrievalThrottler == v8)
  {
    v11 = WBSHistorySQLiteStoreSyncCircleSizeRetrievalThrottlerDataKey;
    v12 = 48;
LABEL_7:
    objc_storeStrong((&self->super.isa + v12), v10);
    [(WBSHistoryServiceDatabaseProtocol *)self->_database setMetadataValue:v10 forKey:*v11 completionHandler:v9];
  }
}

void __58__WBSCloudHistory_setRecordOfPastOperations_forThrottler___block_invoke(uint64_t a1, void *a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = [v3 safari_privacyPreservingDescription];
      __58__WBSCloudHistory_setRecordOfPastOperations_forThrottler___block_invoke_cold_1(v5, v6, v7);
    }
  }
}

- (id)_currentSaveChangesThrottlerPolicyString
{
  numberOfDevicesInSyncCircle = self->_numberOfDevicesInSyncCircle;
  configuration = self->_configuration;
  if (numberOfDevicesInSyncCircle == 1)
  {
    [(WBSCloudHistoryConfiguration *)configuration singleDeviceSaveChangesThrottlingPolicyString];
  }

  else
  {
    [(WBSCloudHistoryConfiguration *)configuration multipleDeviceSaveChangesThrottlingPolicyString];
  }
  v4 = ;

  return v4;
}

- (id)_currentFetchChangesThrottlerPolicyString
{
  numberOfDevicesInSyncCircle = self->_numberOfDevicesInSyncCircle;
  configuration = self->_configuration;
  if (numberOfDevicesInSyncCircle == 1)
  {
    [(WBSCloudHistoryConfiguration *)configuration singleDeviceFetchChangesThrottlingPolicyString];
  }

  else
  {
    [(WBSCloudHistoryConfiguration *)configuration multipleDeviceFetchChangesThrottlingPolicyString];
  }
  v4 = ;

  return v4;
}

- (void)setNumberOfDevicesInSyncCircle:(unint64_t)circle
{
  if ([(WBSCloudHistory *)self _cachedNumberOfDevicesInSyncCircle]!= circle)
  {
    [(WBSCloudHistory *)self _setCachedNumberOfDevicesInSyncCircle:circle];
  }

  if (self->_numberOfDevicesInSyncCircle != circle)
  {
    self->_numberOfDevicesInSyncCircle = circle;

    [(WBSCloudHistory *)self _updateThrottlerPolicies];
  }
}

- (void)_updateDeviceCountInResponseToPushNotification
{
  if (self->_numberOfDevicesInSyncCircle == 1)
  {
    v6 = v2;
    v7 = v3;
    [(WBSCloudHistory *)self setNumberOfDevicesInSyncCircle:2];
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Moved to multi-device throttling policies in response to receiving a push notification.", v5, 2u);
    }
  }
}

- (void)_updateThrottlerPolicies
{
  _currentSaveChangesThrottlerPolicyString = [(WBSCloudHistory *)self _currentSaveChangesThrottlerPolicyString];
  [(WBSCloudKitThrottler *)self->_saveChangesThrottler setPolicyString:?];

  _currentFetchChangesThrottlerPolicyString = [(WBSCloudHistory *)self _currentFetchChangesThrottlerPolicyString];
  [(WBSCloudKitThrottler *)self->_fetchChangesThrottler setPolicyString:?];

  _currentSyncCircleSizeRetrievalThrottlerPolicyString = [(WBSCloudHistory *)self _currentSyncCircleSizeRetrievalThrottlerPolicyString];
  [(WBSCloudKitThrottler *)self->_syncCircleSizeRetrievalThrottler setPolicyString:?];
}

- (void)_setCachedNumberOfDevicesInSyncCircle:(unint64_t)circle
{
  self->_syncCircleSize = circle;
  database = self->_database;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [WBSHistoryServiceDatabaseProtocol setMetadataValue:"setMetadataValue:forKey:completionHandler:" forKey:? completionHandler:?];
}

void __57__WBSCloudHistory__setCachedNumberOfDevicesInSyncCircle___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __57__WBSCloudHistory__setCachedNumberOfDevicesInSyncCircle___block_invoke_cold_1();
    }
  }
}

- (void)_resetCloudHistoryDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  database = self->_database;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__WBSCloudHistory__resetCloudHistoryDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB7E48;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(WBSHistoryServiceDatabaseProtocol *)database resetCloudHistoryDataWithCompletionHandler:v7];
}

void __63__WBSCloudHistory__resetCloudHistoryDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __63__WBSCloudHistory__resetCloudHistoryDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_resetForAccountChangeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Resetting Cloud History due to account change.", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__WBSCloudHistory__resetForAccountChangeWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v6 = handlerCopy;
  v8 = v6;
  [(WBSCloudHistory *)self _resetCloudHistoryDataWithCompletionHandler:v7];
}

void __63__WBSCloudHistory__resetForAccountChangeWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__WBSCloudHistory__resetForAccountChangeWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E7FB6F08;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

uint64_t __63__WBSCloudHistory__resetForAccountChangeWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNumberOfDevicesInSyncCircle:0];
  [*(*(a1 + 32) + 128) reloadRecordOfPastOperations];
  [*(*(a1 + 32) + 136) reloadRecordOfPastOperations];
  [*(*(a1 + 32) + 144) reloadRecordOfPastOperations];
  [*(a1 + 32) _initializePushNotificationSupport];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)updateConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  cloudHistoryQueue = self->_cloudHistoryQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__WBSCloudHistory_updateConfiguration_completionHandler___block_invoke;
  v8[3] = &unk_1E7FB7F10;
  v8[4] = self;
  v9 = configurationCopy;
  v7 = configurationCopy;
  dispatch_async(cloudHistoryQueue, v8);
}

- (void)resetForAccountChangeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudHistoryQueue = self->_cloudHistoryQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__WBSCloudHistory_resetForAccountChangeWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(cloudHistoryQueue, v7);
}

void __62__WBSCloudHistory_resetForAccountChangeWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__WBSCloudHistory_resetForAccountChangeWithCompletionHandler___block_invoke_2;
  v2[3] = &unk_1E7FB7B80;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _resetForAccountChangeWithCompletionHandler:v2];
}

- (void)fetchDateOfNextPermittedSaveChangesAttemptWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudHistoryQueue = self->_cloudHistoryQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__WBSCloudHistory_fetchDateOfNextPermittedSaveChangesAttemptWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6BC0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(cloudHistoryQueue, v7);
}

void __83__WBSCloudHistory_fetchDateOfNextPermittedSaveChangesAttemptWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) dateOfNextPermittedSaveChangesAttempt];
  (*(v1 + 16))(v1);
}

- (WBSHistoryServiceDatabaseStore)databaseStore
{
  WeakRetained = objc_loadWeakRetained(&self->_databaseStore);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

void __80__WBSCloudHistory_initWithDatabase_configuration_databaseStore_completionBlock___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.808e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to migrate long lived operation: %{private}@", v5);
}

void __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_2_125_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 184);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "Number of devices in iCloud History sync circle: %lul", &v3, 0xCu);
}

void __67__WBSCloudHistory_saveChangesBypassingThrottler_completionHandler___block_invoke_135_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_4(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_3_1(&dword_1BB6F3000, "iCloud History save completed with result %ld and error %{public}@.", v4, v5);
}

void __114__WBSCloudHistory__enumerateDatabasesWithProfileLocalIdentifiers_createIfNeeded_enumerationBlock_completionBlock___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to open database: %{public}@", v5);
}

void __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_6_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to update database after successful sync: %{public}@", v5);
}

void __83__WBSCloudHistory_getVisitsAndTombstonesNeedingSyncWithVisitSyncWindow_completion___block_invoke_148_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to convert tombstone to their secure format: %{public}@", v5);
}

void __59__WBSCloudHistory__getServerChangeTokenDataWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to fetch server change token: %{public}@", v5);
}

void __41__WBSCloudHistory__setServerChangeToken___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to update server change token: %{public}@", v5);
}

void __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to read syncs with PCS cloud container status: %{public}@", v5);
}

void __73__WBSCloudHistory__transitionCloudHistoryStoreToManateeState_completion___block_invoke_179_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to update syncs with PCS cloud container status: %{public}@", v5);
}

void __53__WBSCloudHistory__deleteAllCloudHistoryAndSaveAgain__block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "iCloud History failed to delete History zone %{public}@", v5);
}

void __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_4(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_3_1(&dword_1BB6F3000, "iCloud History fetch failed with an error after %zu operations: %{public}@", v4, v5);
}

void __79__WBSCloudHistory__fetchAndMergeChangesWithServerChangeTokenData_withPriority___block_invoke_191_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138478083;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Can't open database with local identifier %{private}@ (server identifier %@)", &v4, 0x16u);
}

void __77__WBSCloudHistory__pruneTombstonesThatCanNoLongerMatchVisitsFetchedFromCloud__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to prune tombsotnes: %{public}@", v5);
}

void __106__WBSCloudHistory__updateHistoryAfterSuccessfulPersistedLongLivedSaveOperationWithGenerations_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Unable to find local profile identifier for server profile identifier: %{private}@", &v2, 0xCu);
}

void __106__WBSCloudHistory__updateHistoryAfterSuccessfulPersistedLongLivedSaveOperationWithGenerations_completion___block_invoke_202_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_3_1(&dword_1BB6F3000, "Failed to open database with local identifier %@ after successful sync: %{public}@", v4, v5);
}

void __95__WBSCloudHistory__persistLongLivedSaveOperationDictionaryWithOperationID_databaseGenerations___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.808e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to save long lived save operation: %{private}@", v5);
}

void __67__WBSCloudHistory__removePersistedLongLivedSaveOperationDictionary__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.808e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to remove long lived save operation: %{private}@", v5);
}

void __53__WBSCloudHistory__initializePushNotificationSupport__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to determine if push notifications are initialized: %{public}@", v5);
}

void __53__WBSCloudHistory__initializePushNotificationSupport__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to initialize push notifications for iCloud History: %{public}@", v5);
}

void __54__WBSCloudHistory__setPushNotificationAreInitialized___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to update push notifications initialize status: %{public}@", v5);
}

- (void)_determineNumberOfDevicesInSyncCircleForOperation:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Skipping query for number of devices in sync circle. Concurrent %{public}@ in progress", &v2, 0xCu);
}

void __87__WBSCloudHistory__determineNumberOfDevicesInSyncCircleForOperation_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Error when determining number of devices in sync circle: %{public}@", v5);
}

void __81__WBSCloudHistory__updateProfileLocalIdentifiersToServerIdentifiersMapInDatabase__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.808e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to save profile identifier map: %{private}@", v5);
}

void __46__WBSCloudHistory__loadMetadataAsynchronously__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.808e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Profile identifier map could not be read from database: %{private}@", v5);
}

void __58__WBSCloudHistory_setRecordOfPastOperations_forThrottler___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3(a1, a2, a3, 5.8081e-34);
  OUTLINED_FUNCTION_3_1(&dword_1BB6F3000, "Failed to save past operations for throller %{private}@: %{public}@", v4, v5);
}

void __57__WBSCloudHistory__setCachedNumberOfDevicesInSyncCircle___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to update cached sync circle size: %{public}@", v5);
}

void __63__WBSCloudHistory__resetCloudHistoryDataWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to reset Cloud History Data: %{public}@", v5);
}

@end