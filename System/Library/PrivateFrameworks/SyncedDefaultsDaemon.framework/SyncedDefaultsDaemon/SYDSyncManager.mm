@interface SYDSyncManager
+ (BOOL)isDataSeparated;
+ (BOOL)shouldIgnoreFetchError:(id)a3;
- (BOOL)getSyncEngineStateSerialization:(id *)a3 error:(id *)a4;
- (BOOL)hasPendingChangesToUpload;
- (BOOL)hasSyncEngine;
- (BOOL)initializeSyncEngineWithError:(id *)a3;
- (BOOL)isAutomaticSyncingEnabled;
- (BOOL)isIdentityLostError:(id)a3;
- (BOOL)removeObjectForKey:(id)a3 inStoreWithIdentifier:(id)a4 excludeFromChangeTracking:(BOOL)a5 didRemoveValue:(BOOL *)a6 error:(id *)a7;
- (BOOL)shouldRetryAfterModifyError:(id)a3;
- (BOOL)shouldSyncStoreWithIdentifier:(id)a3;
- (BOOL)validateKey:(id)a3 error:(id *)a4;
- (CKSyncEngine)engine;
- (NSString)description;
- (SYDSyncManager)initWithContainer:(id)a3 coreDataStore:(id)a4 storeType:(int64_t)a5 testConfiguration:(id)a6;
- (SYDSyncManagerDelegate)delegate;
- (id)engineWithError:(id *)a3;
- (id)newRecordNameForKey:(id)a3;
- (id)objectForKey:(id)a3 inStoreWithIdentifier:(id)a4 error:(id *)a5;
- (id)recordIDForKey:(id)a3 inStoreWithIdentifier:(id)a4;
- (id)recordToSaveForRecordID:(id)a3 error:(id *)a4;
- (id)syncEngine:(id)a3 nextFetchChangesOptionsForContext:(id)a4;
- (id)syncEngine:(id)a3 nextRecordZoneChangeBatchForContext:(id)a4;
- (id)syncEngine:(id)a3 relatedApplicationBundleIdentifiersForZoneIDs:(id)a4 recordIDs:(id)a5;
- (void)_markZoneForDeletionOnManateeFailureForRecordZoneID:(id)a3;
- (void)_queue_resetSyncEngine;
- (void)addKeyValueRecordIDsToSave:(id)a3 recordIDsToDelete:(id)a4 storeIdentifier:(id)a5;
- (void)addPendingDatabaseChanges:(id)a3 storeIdentifier:(id)a4;
- (void)addSyncAnchorRecordIDToSaveIfNecessaryForStoreIdentifier:(id)a3;
- (void)dealloc;
- (void)deduplicateRecordForKeyValue:(id)a3 withNewlyFetchedRecord:(id)a4;
- (void)deleteDataFromCloudWithCompletionHandler:(id)a3;
- (void)deleteDataFromDisk;
- (void)didDeleteRecordWithID:(id)a3;
- (void)didDeleteRecordZoneWithID:(id)a3;
- (void)didEndFetchingChanges;
- (void)didFailToDeleteRecordWithID:(id)a3 error:(id)a4;
- (void)didFailToFetchChangesForRecordZoneID:(id)a3 error:(id)a4;
- (void)didFailToSaveRecord:(id)a3 error:(id)a4;
- (void)didFetchRecord:(id)a3;
- (void)didFetchRecordDeletion:(id)a3 recordType:(id)a4;
- (void)didSaveKeyValueRecord:(id)a3;
- (void)didSaveRecord:(id)a3;
- (void)engine;
- (void)failedToSaveKeyValueRecord:(id)a3 error:(id)a4;
- (void)fetchChangesFromCloudForStoreIdentifiers:(id)a3 group:(id)a4 completionHandler:(id)a5;
- (void)handleSyncEngineStateUpdate:(id)a3;
- (void)markAllKeyValuesAsNeedingToBeUploaded;
- (void)markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:(id)a3;
- (void)performOneTimeDataSeparatedLocalDataResetIfNecessary;
- (void)processFetchedRecords:(id)a3 deletedRecordIDs:(id)a4;
- (void)processPendingFetchedRecordsWithReason:(id)a3;
- (void)registerForFirstUnlockNotificationsIfNecessary;
- (void)resetSyncEngine;
- (void)resetSyncEngineWithContainer:(id)a3;
- (void)savePendingChangesToCloudForStoreIdentifiers:(id)a3 group:(id)a4 completionHandler:(id)a5;
- (void)saveSyncAnchorSystemFieldsRecord:(id)a3;
- (void)syncEngine:(id)a3 accountChangedFromUserRecordID:(id)a4 toUserRecordID:(id)a5;
- (void)syncEngine:(id)a3 handleEvent:(id)a4;
- (void)synchronizeAllStoresWithCompletionHandler:(id)a3;
- (void)synchronizeStoreWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)synchronizeStoresWithIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)unsetSyncEngine;
- (void)willBeginFetchingChanges;
- (void)zoneWithIDWasPurged:(id)a3;
@end

@implementation SYDSyncManager

- (void)willBeginFetchingChanges
{
  v3 = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SYDSyncManager_willBeginFetchingChanges__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_async(v3, block);
}

void __42__SYDSyncManager_willBeginFetchingChanges__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (CKSyncEngine)engine
{
  v7 = 0;
  v2 = [(SYDSyncManager *)self engineWithError:&v7];
  v3 = v7;
  v4 = v3;
  if (!v2 || v3)
  {
    v5 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [SYDSyncManager engine];
    }
  }

  return v2;
}

void __42__SYDSyncManager_willBeginFetchingChanges__block_invoke(uint64_t a1)
{
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __42__SYDSyncManager_willBeginFetchingChanges__block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) storeIdentifiersWithChangedValuesDuringFetchChanges];
  [v3 removeAllObjects];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SYDSyncManager *)self container];
  v7 = [(SYDSyncManager *)self coreDataStore];
  v8 = SYDStringForStoreType([(SYDSyncManager *)self storeType]);
  v9 = [v3 stringWithFormat:@"<%@: %p container=%@ coreDataStore=%@ storeType=%@", v5, self, v6, v7, v8];;

  v10 = [(SYDSyncManager *)self personaUniqueString];
  [v9 appendFormat:@" personaUniqueString=%@", v10];

  [v9 appendString:@">"];

  return v9;
}

- (void)didEndFetchingChanges
{
  v3 = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SYDSyncManager_didEndFetchingChanges__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_async(v3, block);
}

void __39__SYDSyncManager_didEndFetchingChanges__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __39__SYDSyncManager_didEndFetchingChanges__block_invoke_cold_1(a1);
  }

  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  [v4 processPendingFetchedRecordsWithReason:@"finished fetching changes"];
  v5 = [*v3 storeIdentifiersWithChangedValuesDuringFetchChanges];
  v6 = [v5 count];

  if (v6)
  {
    if (![*v3 storeType])
    {
      v7 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __39__SYDSyncManager_didEndFetchingChanges__block_invoke_cold_2();
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SYDRemotePreferencesSourceDidChangeExternally", 0, 0, 0);
    }

    v9 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __39__SYDSyncManager_didEndFetchingChanges__block_invoke_cold_3(v3);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [*v3 storeIdentifiersWithChangedValuesDuringFetchChanges];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%@", "com.apple.kvs.store-did-change.", *(*(&v19 + 1) + 8 * v14)];
          v16 = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(v16, v15, 0, 0, 0);

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v17 = [*v3 storeIdentifiersWithChangedValuesDuringFetchChanges];
    [v17 removeAllObjects];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __39__SYDSyncManager_didEndFetchingChanges__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (SYDSyncManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SYDSyncManager)initWithContainer:(id)a3 coreDataStore:(id)a4 storeType:(int64_t)a5 testConfiguration:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SYDSyncManager initWithContainer:coreDataStore:storeType:testConfiguration:];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [SYDSyncManager initWithContainer:coreDataStore:storeType:testConfiguration:];
LABEL_3:
  v40.receiver = self;
  v40.super_class = SYDSyncManager;
  v14 = [(SYDSyncManager *)&v40 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_coreDataStore, a4);
    objc_storeStrong(&v15->_container, a3);
    v15->_storeType = a5;
    objc_storeStrong(&v15->_testConfiguration, a6);
    if (SYDIsDataSeparatedPersona())
    {
      v16 = [MEMORY[0x277D77C08] currentPersona];
      v17 = [v16 userPersonaUniqueString];
      v18 = [v17 copy];
      personaUniqueString = v15->_personaUniqueString;
      v15->_personaUniqueString = v18;
    }

    v20 = MEMORY[0x277CCACA8];
    v21 = [v11 containerIdentifier];
    v22 = [v20 stringWithFormat:@"com.apple.kvs.sync-manager.%@", v21];

    v23 = [v22 UTF8String];
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create(v23, v24);
    queue = v15->_queue;
    v15->_queue = v25;

    v27 = [v22 stringByAppendingString:@".callback"];
    v28 = [v27 UTF8String];
    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = dispatch_queue_create(v28, v29);
    callbackQueue = v15->_callbackQueue;
    v15->_callbackQueue = v30;

    v32 = [MEMORY[0x277CBEB58] set];
    storeIdentifiersWithChangedValuesDuringFetchChanges = v15->_storeIdentifiersWithChangedValuesDuringFetchChanges;
    v15->_storeIdentifiersWithChangedValuesDuringFetchChanges = v32;

    v34 = [MEMORY[0x277CBEB18] array];
    pendingFetchedRecords = v15->_pendingFetchedRecords;
    v15->_pendingFetchedRecords = v34;

    v36 = [MEMORY[0x277CBEB18] array];
    pendingDeletedRecordIDs = v15->_pendingDeletedRecordIDs;
    v15->_pendingDeletedRecordIDs = v36;

    v15->_maxPendingFetchedRecords = 50;
    [(SYDSyncManager *)v15 performOneTimeDataSeparatedLocalDataResetIfNecessary];
    [(SYDSyncManager *)v15 initializeSyncEngineWithError:0];
    [(SYDSyncManager *)v15 registerForFirstUnlockNotificationsIfNecessary];
    v38 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager initWithContainer:coreDataStore:storeType:testConfiguration:];
    }
  }

  return v15;
}

- (void)dealloc
{
  if ([(SYDSyncManager *)self mobileKeybagNotifyToken]!= -1)
  {
    notify_cancel([(SYDSyncManager *)self mobileKeybagNotifyToken]);
  }

  v3.receiver = self;
  v3.super_class = SYDSyncManager;
  [(SYDSyncManager *)&v3 dealloc];
}

- (BOOL)getSyncEngineStateSerialization:(id *)a3 error:(id *)a4
{
  v7 = objc_autoreleasePoolPush();
  coreDataStore = self->_coreDataStore;
  v20 = 0;
  v9 = [(SYDCoreDataStore *)coreDataStore syncEngineStateSerializationWithError:&v20];
  v10 = v20;
  if (v9)
  {
    v19 = v10;
    v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v19];
    v12 = v19;

    v10 = v12;
  }

  else
  {
    v11 = 0;
  }

  if (!(v10 | v11))
  {
    v13 = self->_coreDataStore;
    v18 = 0;
    v14 = [(SYDCoreDataStore *)v13 deprecatedSyncEngineMetadataWithError:&v18];
    v10 = v18;
    if (v14)
    {
      v11 = [objc_alloc(MEMORY[0x277CBC758]) initWithDeprecatedData:v14];
    }

    else
    {
      v11 = 0;
    }
  }

  objc_autoreleasePoolPop(v7);
  if (a3)
  {
    v15 = v11;
    *a3 = v11;
  }

  if (a4)
  {
    v16 = v10;
    *a4 = v10;
  }

  return v10 == 0;
}

- (BOOL)initializeSyncEngineWithError:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = objc_autoreleasePoolPush();
  v20 = 0;
  v21 = 0;
  v6 = [(SYDSyncManager *)v4 getSyncEngineStateSerialization:&v21 error:&v20];
  v7 = v21;
  v8 = v20;
  if (v6)
  {
    v9 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager initializeSyncEngineWithError:];
    }

    v10 = objc_alloc(MEMORY[0x277CBC6F0]);
    v11 = [(CKContainer *)v4->_container privateCloudDatabase];
    v12 = [v10 initWithDatabase:v11 stateSerialization:v7 delegate:v4];

    v13 = [MEMORY[0x277D46F48] currentProcess];
    v14 = [v13 isDaemon];

    if (v14)
    {
      [v12 setApsMachServiceName:@"com.apple.aps.kvsd"];
    }

    v15 = [(SYDSyncManager *)v4 testConfiguration];

    if (v15)
    {
      [v12 setAutomaticallySync:0];
    }

    v16 = [objc_alloc(MEMORY[0x277CBC6E8]) initWithConfiguration:v12];
    engine = v4->_engine;
    v4->_engine = v16;
  }

  else
  {
    v12 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SYDSyncManager initializeSyncEngineWithError:];
    }
  }

  objc_autoreleasePoolPop(v5);
  if (a3)
  {
    v18 = v8;
    *a3 = v8;
  }

  objc_sync_exit(v4);
  return v8 == 0;
}

- (id)engineWithError:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  engine = v4->_engine;
  if (!engine)
  {
    [(SYDSyncManager *)v4 initializeSyncEngineWithError:a3];
    engine = v4->_engine;
  }

  v6 = engine;
  objc_sync_exit(v4);

  return v6;
}

- (BOOL)validateKey:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 length])
  {
    LOBYTE(a4) = 1;
  }

  else if (a4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid key parameter provided"];
    v8 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a4 = [v8 errorWithDomain:@"SyncedDefaults" code:2222 userInfo:v9];

    LOBYTE(a4) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return a4;
}

- (BOOL)hasSyncEngine
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_engine != 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)unsetSyncEngine
{
  obj = self;
  objc_sync_enter(obj);
  engine = obj->_engine;
  obj->_engine = 0;

  objc_sync_exit(obj);
}

- (BOOL)shouldSyncStoreWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SYDSyncManager *)self delegate];
  if (v5 && (v6 = v5, [(SYDSyncManager *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(SYDSyncManager *)self delegate];
    v10 = [v9 syncManager:self shouldSyncStoreWithIdentifier:v4];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)objectForKey:(id)a3 inStoreWithIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(SYDSyncManager *)self validateKey:v8 error:a5])
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__2;
    v28 = __Block_byref_object_dispose__2;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__2;
    v22 = __Block_byref_object_dispose__2;
    v23 = 0;
    v10 = [(SYDSyncManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__SYDSyncManager_objectForKey_inStoreWithIdentifier_error___block_invoke;
    block[3] = &unk_279D2FA08;
    block[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = &v24;
    v17 = &v18;
    dispatch_sync(v10, block);

    if (a5)
    {
      *a5 = v25[5];
    }

    v11 = v19[5];

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __59__SYDSyncManager_objectForKey_inStoreWithIdentifier_error___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) coreDataStore];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v2 keyValueForKey:v3 inStoreWithIdentifier:v4 createIfNecessary:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138478339;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_error_impl(&dword_26C384000, v7, OS_LOG_TYPE_ERROR, "Error fetching object for key %{private}@ in %@: %@", buf, 0x20u);
    }
  }

  else
  {
    v11 = [v6 value];
    v12 = *(*(a1 + 64) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v7 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (*(*(*(a1 + 64) + 8) + 40))
      {
        v15 = &stru_287CEF040;
      }

      else
      {
        v15 = @"(null) ";
      }

      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      *buf = 138412803;
      v20 = v15;
      v21 = 2113;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      _os_log_debug_impl(&dword_26C384000, v7, OS_LOG_TYPE_DEBUG, "Fetched %@object for key %{private}@ in %@", buf, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_1(a1, v2);
  }

  v3 = [*(a1 + 56) coreDataStore];
  v4 = a1 + 64;
  v6 = (a1 + 40);
  v5 = *(a1 + 40);
  v8 = (a1 + 48);
  v7 = *(a1 + 48);
  v9 = *(*(a1 + 64) + 8);
  obj = *(v9 + 40);
  v10 = [v3 keyValueForKey:v5 inStoreWithIdentifier:v7 createIfNecessary:1 error:&obj];
  objc_storeStrong((v9 + 40), obj);

  v11 = [v10 value];
  v12 = v11;
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v13 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_2(v4);
    }

LABEL_6:

    goto LABEL_7;
  }

  if (!v10)
  {
    v13 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_10(v6);
    }

    goto LABEL_6;
  }

  if (v11 && *(a1 + 32) && [v11 isEqual:?])
  {
    v13 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_3(v6);
    }

    goto LABEL_6;
  }

  if (!*(a1 + 32))
  {
    v13 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_9(v6);
    }

    goto LABEL_6;
  }

  *(*(*(a1 + 72) + 8) + 24) = 1;
  v15 = *(a1 + 32);
  v16 = [MEMORY[0x277CBEAA8] date];
  [v10 setValue:v15 withModificationDate:v16];

  v17 = [v10 recordName];

  if (v17)
  {
    goto LABEL_16;
  }

  v19 = [*(a1 + 56) newRecordNameForKey:*(a1 + 40)];
  [v10 setRecordName:v19];

  v20 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v47 = [v10 recordName];
    v48 = *v6;
    v49 = *v8;
    *buf = 138412803;
    v56 = v47;
    v57 = 2113;
    v58 = v48;
    v59 = 2112;
    v60 = v49;
    _os_log_debug_impl(&dword_26C384000, v20, OS_LOG_TYPE_DEBUG, "Assigned new record name (%@) for (%{private}@) in (%@)", buf, 0x20u);
  }

  v21 = [*(a1 + 56) coreDataStore];
  v22 = *(a1 + 48);
  v23 = *(*(a1 + 64) + 8);
  v51 = *(v23 + 40);
  v24 = [v21 numberOfKeyValuesInStoreWithIdentifier:v22 error:&v51];
  objc_storeStrong((v23 + 40), v51);

  v25 = *(*(*(a1 + 64) + 8) + 40);
  v18 = v25 == 0;
  if (v25)
  {
    v26 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_4();
    }

    v27 = *(*v4 + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = 0;
  }

  else
  {
    if (v24)
    {
LABEL_16:
      v18 = 0;
      goto LABEL_28;
    }

    v28 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_5((a1 + 48));
    }
  }

LABEL_28:
  v29 = [*(a1 + 56) coreDataStore];
  v30 = *(a1 + 48);
  v31 = *(a1 + 80);
  v32 = *(a1 + 81);
  v33 = *(*(a1 + 64) + 8);
  v50 = *(v33 + 40);
  v34 = [v29 saveKeyValue:v10 inStoreWithIdentifier:v30 excludeFromChangeTracking:v31 enforceQuota:v32 error:&v50];
  objc_storeStrong((v33 + 40), v50);

  if (v34)
  {
    if (([*(a1 + 56) shouldSyncStoreWithIdentifier:*(a1 + 48)] & 1) == 0)
    {
      v13 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_7();
      }

      goto LABEL_6;
    }

    v35 = [v10 recordID];
    if ([*(a1 + 56) alwaysSaveRecordZones])
    {
      v36 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_8();
      }

      if (([*(a1 + 56) alwaysSaveRecordZones] & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (!v18)
    {
LABEL_45:
      v44 = *(a1 + 56);
      v53 = v35;
      v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
      [v44 addKeyValueRecordIDsToSave:v45 recordIDsToDelete:0 storeIdentifier:*(a1 + 48)];

      v46 = *(a1 + 40);
      [SYDUserNotifications showUserNotificationIfEnabledForStoreIdentifier:*(a1 + 48) format:@"Set %@ = %@", v46, *(a1 + 32)];

      goto LABEL_7;
    }

    v38 = objc_alloc(MEMORY[0x277CBC5E8]);
    v39 = [v35 zoneID];
    v40 = [v38 initWithZoneID:v39];

    v41 = *(a1 + 56);
    v42 = [objc_alloc(MEMORY[0x277CBC728]) initWithZone:v40];
    v54 = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    [v41 addPendingDatabaseChanges:v43 storeIdentifier:*(a1 + 48)];

    goto LABEL_45;
  }

  v37 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_6(v4);
  }

  [SYDUserNotifications showUserNotificationIfEnabledForStoreIdentifier:*v8 format:@"Failed to set value: %@", *(*(*v4 + 8) + 40)];
LABEL_7:

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeObjectForKey:(id)a3 inStoreWithIdentifier:(id)a4 excludeFromChangeTracking:(BOOL)a5 didRemoveValue:(BOOL *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  if ([(SYDSyncManager *)self validateKey:v12 error:a7])
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__2;
    v28 = __Block_byref_object_dispose__2;
    v29 = 0;
    v14 = [(SYDSyncManager *)self queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke;
    v17[3] = &unk_279D2FA58;
    v18 = v12;
    v19 = v13;
    v20 = self;
    v21 = &v24;
    v22 = &v30;
    v23 = a5;
    dispatch_sync(v14, v17);

    if (a7)
    {
      *a7 = v25[5];
    }

    if (a6)
    {
      *a6 = *(v31 + 24);
    }

    v15 = v25[5] == 0;

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 48) coreDataStore];
  v4 = a1 + 56;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  v8 = [v3 keyValueForKey:v5 inStoreWithIdentifier:v6 createIfNecessary:0 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v9 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke_cold_2(a1 + 56);
    }
  }

  else if (v8)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v11 = [v8 recordName];

    if (!v11)
    {
      if ([*(a1 + 48) useUUIDRecordNames])
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Trying to delete a key-value that never had a record name in a store that uses UUID record names"];
      }

      v12 = [*(a1 + 48) newRecordNameForKey:*(a1 + 32)];
      [v8 setRecordName:v12];
    }

    v13 = [*(a1 + 48) shouldSyncStoreWithIdentifier:*(a1 + 40)];
    v14 = *(a1 + 48);
    if (v13)
    {
      v15 = [v8 recordID];
      v32[0] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
      [v14 addKeyValueRecordIDsToSave:0 recordIDsToDelete:v16 storeIdentifier:*(a1 + 40)];

      [v8 markForDeletion];
      v17 = [*(a1 + 48) coreDataStore];
      v18 = *(a1 + 40);
      v19 = *(a1 + 72);
      v20 = *(*(a1 + 56) + 8);
      v27 = *(v20 + 40);
      LOBYTE(v15) = [v17 saveKeyValue:v8 inStoreWithIdentifier:v18 excludeFromChangeTracking:v19 enforceQuota:0 error:&v27];
      objc_storeStrong((v20 + 40), v27);

      if (v15)
      {
        goto LABEL_7;
      }

      v9 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke_cold_4(v4);
      }
    }

    else
    {
      v22 = [*(a1 + 48) coreDataStore];
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      v25 = *(a1 + 72);
      v26 = *(*(a1 + 56) + 8);
      v28 = *(v26 + 40);
      [v22 removeKeyValueForKey:v23 inStoreWithIdentifier:v24 excludeFromChangeTracking:v25 error:&v28];
      objc_storeStrong((v26 + 40), v28);

      v9 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke_cold_3();
      }
    }
  }

  else
  {
    v9 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      *buf = 138477827;
      v31 = v21;
      _os_log_impl(&dword_26C384000, v9, OS_LOG_TYPE_INFO, "Trying to remove object for a key that doesn't exist (%{private}@)", buf, 0xCu);
    }
  }

LABEL_7:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeStoreWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0}];
  v8 = [v10 isEqualToString:@"com.apple.sbd3"];
  v9 = @"com.apple.security.cloudkeychainproxy3";
  if ((v8 & 1) == 0)
  {
    if (![v10 isEqualToString:@"com.apple.security.cloudkeychainproxy3"])
    {
      goto LABEL_5;
    }

    v9 = @"com.apple.sbd3";
  }

  [v7 addObject:v9];
LABEL_5:
  [(SYDSyncManager *)self synchronizeStoresWithIdentifiers:v7 completionHandler:v6];
}

- (void)synchronizeStoresWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_26C384000, "kvs/sync-store", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager synchronizeStoresWithIdentifiers:completionHandler:];
  }

  v10 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v10 setName:@"ManualSync"];
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.sbd3", @"com.apple.security.cloudkeychainproxy3", 0}];
  v12 = [MEMORY[0x277CBEB98] setWithArray:v6];
  v13 = [v11 intersectsSet:v12];

  if (v13)
  {
    v14 = [v10 defaultConfiguration];
    [v14 setIsCloudKitSupportOperation:1];
  }

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__2;
  v26[4] = __Block_byref_object_dispose__2;
  v27 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__SYDSyncManager_synchronizeStoresWithIdentifiers_completionHandler___block_invoke;
  v19[3] = &unk_279D2FAA8;
  v25 = v26;
  v15 = v8;
  v20 = v15;
  v16 = v7;
  v24 = v16;
  v21 = self;
  v17 = v6;
  v22 = v17;
  v18 = v10;
  v23 = v18;
  [(SYDSyncManager *)self fetchChangesFromCloudForStoreIdentifiers:v17 group:v18 completionHandler:v19];

  _Block_object_dispose(v26, 8);
  os_activity_scope_leave(&state);
}

void __69__SYDSyncManager_synchronizeStoresWithIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v5 = [*(*(*(a1 + 72) + 8) + 40) domain];
  if (![v5 isEqualToString:*MEMORY[0x277CBBF50]])
  {

    goto LABEL_10;
  }

  v6 = [*(*(*(a1 + 72) + 8) + 40) code];

  if (v6 != 20)
  {
LABEL_10:
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__SYDSyncManager_synchronizeStoresWithIdentifiers_completionHandler___block_invoke_96;
    v14[3] = &unk_279D2FA80;
    v15 = *(a1 + 32);
    v13 = *(a1 + 64);
    v12 = v13;
    v16 = v13;
    [v9 savePendingChangesToCloudForStoreIdentifiers:v10 group:v11 completionHandler:v14];

    goto LABEL_11;
  }

  v7 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __69__SYDSyncManager_synchronizeStoresWithIdentifiers_completionHandler___block_invoke_cold_1();
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))(v8, *(*(*(a1 + 72) + 8) + 40));
  }

LABEL_11:
  os_activity_scope_leave(&state);
}

void __69__SYDSyncManager_synchronizeStoresWithIdentifiers_completionHandler___block_invoke_96(uint64_t a1, void *a2)
{
  v3 = a2;
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v10);
  v4 = *(*(a1 + 48) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  objc_storeStrong(v5, v8);
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(*(a1 + 48) + 8) + 40));
  }

  os_activity_scope_leave(&v10);
}

- (void)synchronizeAllStoresWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager synchronizeAllStoresWithCompletionHandler:];
  }

  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__2;
  v10[4] = __Block_byref_object_dispose__2;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SYDSyncManager_synchronizeAllStoresWithCompletionHandler___block_invoke;
  v7[3] = &unk_279D2FAF8;
  v9 = v10;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [(SYDSyncManager *)self fetchChangesFromCloudForAllStoresWithCompletionHandler:v7];

  _Block_object_dispose(v10, 8);
}

void __60__SYDSyncManager_synchronizeAllStoresWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__SYDSyncManager_synchronizeAllStoresWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_279D2FAD0;
  v7 = *(a1 + 40);
  v6 = v7;
  v9 = v7;
  [v5 savePendingChangesToCloudForAllStoresWithCompletionHandler:v8];
}

void __60__SYDSyncManager_synchronizeAllStoresWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  v9 = v3;
  if (v7)
  {
    v3 = v6;
  }

  objc_storeStrong(v5, v3);
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, *(*(*(a1 + 40) + 8) + 40));
  }
}

- (void)savePendingChangesToCloudForStoreIdentifiers:(id)a3 group:(id)a4 completionHandler:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v46 = 0;
  v11 = [(SYDSyncManager *)self engineWithError:&v46];
  v12 = v46;
  v13 = v12;
  if (v11 && !v12)
  {
    v14 = [v8 count];
    v15 = SYDGetCloudKitLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (v14)
    {
      if (v16)
      {
        [SYDSyncManager savePendingChangesToCloudForStoreIdentifiers:v8 group:? completionHandler:?];
      }

      v17 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v15 = v8;
      v18 = [v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v18)
      {
        v19 = v18;
        v31 = v9;
        v32 = v8;
        v20 = *v40;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v40 != v20)
            {
              objc_enumerationMutation(v15);
            }

            v22 = SYDStoreZoneID(*(*(&v39 + 1) + 8 * i));
            [v17 addObject:v22];
          }

          v19 = [v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v19);
        v9 = v31;
        v8 = v32;
      }
    }

    else
    {
      if (v16)
      {
        [SYDSyncManager savePendingChangesToCloudForStoreIdentifiers:group:completionHandler:];
      }

      v17 = 0;
    }

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_101;
    v37[3] = &unk_279D2FB70;
    v37[4] = self;
    v38 = v10;
    v25 = MEMORY[0x26D6A00B0](v37);
    v26 = [objc_alloc(MEMORY[0x277CBC740]) initWithZoneIDs:v17];
    v27 = [objc_alloc(MEMORY[0x277CBC738]) initWithScope:v26];
    [v27 setOperationGroup:v9];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_3;
    v33[3] = &unk_279D2FBC0;
    v33[4] = self;
    v34 = v11;
    v35 = v27;
    v36 = v25;
    v28 = v25;
    v29 = v27;
    [v34 sendChangesWithOptions:v29 completionHandler:v33];

    goto LABEL_22;
  }

  v23 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [SYDSyncManager savePendingChangesToCloudForStoreIdentifiers:group:completionHandler:];
  }

  if (v10)
  {
    v24 = [(SYDSyncManager *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke;
    block[3] = &unk_279D2FB20;
    v45 = v10;
    v44 = v13;
    dispatch_async(v24, block);

    v17 = v45;
LABEL_22:
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_101(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SYDGetCloudKitLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_101_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_101_cold_2();
  }

  if (*(a1 + 40))
  {
    v6 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_102;
    block[3] = &unk_279D2FB48;
    v7 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v10 = v7;
    v9 = v3;
    dispatch_async(v6, block);
  }
}

void __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_102(id *a1)
{
  v2 = [a1[4] callbackQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_2;
  v3[3] = &unk_279D2FB20;
  v5 = a1[6];
  v4 = a1[5];
  dispatch_async(v2, v3);
}

void __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) shouldRetryAfterModifyError:v3];
  }

  else
  {
    v4 = 0;
  }

  if ([*(a1 + 32) disableAutomaticRetries])
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_26C384000, v6, OS_LOG_TYPE_INFO, "Will retry after error modifying pending records: %@", buf, 0xCu);
    }

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_105;
    v11[3] = &unk_279D2FB98;
    v12 = *(a1 + 56);
    [v8 sendChangesWithOptions:v9 completionHandler:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fetchChangesFromCloudForStoreIdentifiers:(id)a3 group:(id)a4 completionHandler:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v39 = 0;
  v11 = [(SYDSyncManager *)self engineWithError:&v39];
  v12 = v39;
  v13 = v12;
  if (v11 && !v12)
  {
    v14 = [v8 count];
    v15 = SYDGetCloudKitLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (v14)
    {
      if (v16)
      {
        [SYDSyncManager fetchChangesFromCloudForStoreIdentifiers:v8 group:? completionHandler:?];
      }

      v17 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v15 = v8;
      v18 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v18)
      {
        v19 = v18;
        v28 = v9;
        v29 = v8;
        v20 = *v33;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v33 != v20)
            {
              objc_enumerationMutation(v15);
            }

            v22 = SYDStoreZoneID(*(*(&v32 + 1) + 8 * i));
            [v17 addObject:v22];
          }

          v19 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v19);
        v9 = v28;
        v8 = v29;
      }
    }

    else
    {
      if (v16)
      {
        [SYDSyncManager fetchChangesFromCloudForStoreIdentifiers:group:completionHandler:];
      }

      v17 = 0;
    }

    v25 = [objc_alloc(MEMORY[0x277CBC700]) initWithZoneIDs:v17];
    v26 = [objc_alloc(MEMORY[0x277CBC6F8]) initWithScope:v25];
    [v26 setOperationGroup:v9];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_108;
    v30[3] = &unk_279D2F930;
    v30[4] = self;
    v31 = v10;
    [v11 fetchChangesWithOptions:v26 completionHandler:v30];

    goto LABEL_22;
  }

  v23 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [SYDSyncManager fetchChangesFromCloudForStoreIdentifiers:group:completionHandler:];
  }

  if (v10)
  {
    v24 = [(SYDSyncManager *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke;
    block[3] = &unk_279D2FB20;
    v38 = v10;
    v37 = v13;
    dispatch_async(v24, block);

    v17 = v38;
LABEL_22:
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_108(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v8 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_108_cold_3();
    }

    goto LABEL_8;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() shouldIgnoreFetchError:v4];
  v7 = SYDGetCloudKitLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_108_cold_2();
    }

    v8 = v4;
LABEL_8:
    v4 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_108_cold_1();
  }

LABEL_11:

  if (*(a1 + 40))
  {
    v9 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_109;
    block[3] = &unk_279D2FB48;
    v10 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v13 = v10;
    v12 = v4;
    dispatch_async(v9, block);
  }
}

void __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_109(id *a1)
{
  v2 = [a1[4] callbackQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_2;
  v3[3] = &unk_279D2FB20;
  v5 = a1[6];
  v4 = a1[5];
  dispatch_async(v2, v3);
}

+ (BOOL)shouldIgnoreFetchError:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v5 = [v4 code];
  if (v5 == 2)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__SYDSyncManager_shouldIgnoreFetchError___block_invoke;
    v10[3] = &unk_279D2FBE8;
    v10[4] = &v11;
    v10[5] = a1;
    [v8 enumerateKeysAndObjectsUsingBlock:v10];

    v6 = *(v12 + 24);
  }

  else if (v5 == 26 || v5 == 28)
  {
    v6 = 1;
    *(v12 + 24) = 1;
  }

  else
  {
    v6 = 0;
    *(v12 + 24) = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

uint64_t __41__SYDSyncManager_shouldIgnoreFetchError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 40) shouldIgnoreFetchError:?];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (BOOL)shouldRetryAfterModifyError:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [v4 code];
  if (v5 == 2)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__SYDSyncManager_shouldRetryAfterModifyError___block_invoke;
    v10[3] = &unk_279D2FC10;
    v10[4] = self;
    v10[5] = &v11;
    [v8 enumerateKeysAndObjectsUsingBlock:v10];

    v6 = *(v12 + 24);
  }

  else if (v5 == 14 || v5 == 26)
  {
    v6 = 1;
    *(v12 + 24) = 1;
  }

  else
  {
    v6 = 0;
    *(v12 + 24) = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

uint64_t __46__SYDSyncManager_shouldRetryAfterModifyError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) shouldRetryAfterModifyError:?];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)deleteDataFromCloudWithCompletionHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = self;
    _os_log_impl(&dword_26C384000, v5, OS_LOG_TYPE_INFO, "Deleting data from cloud for %@", buf, 0xCu);
  }

  v6 = [(SYDSyncManager *)self engine];
  v7 = [v6 database];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__SYDSyncManager_deleteDataFromCloudWithCompletionHandler___block_invoke;
  v10[3] = &unk_279D2FC60;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [v7 fetchAllRecordZonesWithCompletionHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __59__SYDSyncManager_deleteDataFromCloudWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__SYDSyncManager_deleteDataFromCloudWithCompletionHandler___block_invoke_cold_1();
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v6);
    }
  }

  else
  {
    v25 = a1;
    v9 = [MEMORY[0x277CBEB18] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [v15 zoneID];
          v17 = [v16 zoneName];
          v18 = [v17 isEqualToString:@"metadata_zone"];

          if ((v18 & 1) == 0)
          {
            v19 = [v15 zoneID];
            [v9 addObject:v19];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      v20 = [objc_alloc(MEMORY[0x277CBC490]) initWithRecordZonesToSave:0 recordZoneIDsToDelete:v9];
      [v20 setMarkZonesAsUserPurged:1];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __59__SYDSyncManager_deleteDataFromCloudWithCompletionHandler___block_invoke_115;
      v27[3] = &unk_279D2FC38;
      v28 = *(v25 + 40);
      [v20 setModifyRecordZonesCompletionBlock:v27];
      v21 = [*(v25 + 32) engine];
      v22 = [v21 database];
      [v22 addOperation:v20];

      v6 = 0;
    }

    else
    {
      v6 = 0;
      v23 = *(v25 + 40);
      if (v23)
      {
        (*(v23 + 16))(v23, 0);
      }
    }

    v5 = v26;
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __59__SYDSyncManager_deleteDataFromCloudWithCompletionHandler___block_invoke_115(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = SYDGetCloudKitLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __59__SYDSyncManager_deleteDataFromCloudWithCompletionHandler___block_invoke_115_cold_1();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_26C384000, v11, OS_LOG_TYPE_INFO, "Finished deleting data from cloud", v13, 2u);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v9);
  }
}

- (id)recordIDForKey:(id)a3 inStoreWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SYDSyncManager *)self coreDataStore];
  v9 = [v8 keyValueForKey:v7 inStoreWithIdentifier:v6 createIfNecessary:0 error:0];

  v10 = [v9 recordID];

  return v10;
}

- (BOOL)isAutomaticSyncingEnabled
{
  v2 = [(SYDSyncManager *)self engine];
  v3 = [v2 isAutomaticSyncingEnabled];

  return v3;
}

- (BOOL)hasPendingChangesToUpload
{
  v2 = [(SYDSyncManager *)self engine];
  v3 = [v2 state];

  v4 = [v3 pendingRecordZoneChanges];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 pendingDatabaseChanges];
    v5 = [v6 count] != 0;
  }

  return v5;
}

- (id)newRecordNameForKey:(id)a3
{
  v4 = a3;
  if ([(SYDSyncManager *)self useUUIDRecordNames])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCAD78] UUID];
    v7 = [v6 UUIDString];
    v8 = [v5 stringWithFormat:@"%@%@", @"KeyValue:", v7];
  }

  else
  {
    v8 = [SYDKeyValue recordNameForUnencryptedKey:v4];
  }

  return v8;
}

- (void)markAllKeyValuesAsNeedingToBeUploaded
{
  v3 = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SYDSyncManager_markAllKeyValuesAsNeedingToBeUploaded__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __55__SYDSyncManager_markAllKeyValuesAsNeedingToBeUploaded__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __55__SYDSyncManager_markAllKeyValuesAsNeedingToBeUploaded__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) coreDataStore];
  v16 = 0;
  v4 = [v3 allStoreIdentifiersWithError:&v16];
  v5 = v16;

  if (v5)
  {
    v6 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __55__SYDSyncManager_markAllKeyValuesAsNeedingToBeUploaded__block_invoke_cold_2();
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 32) markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:{*(*(&v12 + 1) + 8 * v10++), v12}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SYDSyncManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:];
  }

  v7 = [(SYDSyncManager *)self coreDataStore];
  v28 = 0;
  v8 = [v7 allRecordNamesInStoreWithIdentifier:v4 error:&v28];
  v9 = v28;

  if (v9)
  {
    v10 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SYDSyncManager markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:];
    }
  }

  else
  {
    v22 = self;
    v10 = SYDStoreZoneID(v4);
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [v17 length];
          if ((v18 - 256) > 0xFFFFFFFFFFFFFF00)
          {
            v20 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v17 zoneID:v10];
            [v11 addObject:v20];
          }

          else
          {
            v19 = v18;
            v20 = SYDGetCloudKitLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              v30 = v19;
              v31 = 2112;
              v32 = v4;
              _os_log_error_impl(&dword_26C384000, v20, OS_LOG_TYPE_ERROR, "Excluding key from cloud storage due to key length of (%ld) UTF-16 code units in store (%@)", buf, 0x16u);
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v14);
    }

    if ([v11 count])
    {
      [(SYDSyncManager *)v22 addKeyValueRecordIDsToSave:v11 recordIDsToDelete:0 storeIdentifier:v4];
    }

    v9 = 0;
    v8 = v23;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addPendingDatabaseChanges:(id)a3 storeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SYDSyncManager *)self shouldSyncStoreWithIdentifier:v7])
  {
    v8 = [(SYDSyncManager *)self engine];
    v9 = [v8 state];
    [v9 addPendingDatabaseChanges:v6];
  }

  else
  {
    v8 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager addPendingDatabaseChanges:storeIdentifier:];
    }
  }
}

- (void)addKeyValueRecordIDsToSave:(id)a3 recordIDsToDelete:(id)a4 storeIdentifier:(id)a5
{
  v75 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(SYDSyncManager *)self shouldSyncStoreWithIdentifier:v10])
  {
    v47 = v10;
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count") + objc_msgSend(v8, "count")}];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v49 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v66 objects:v74 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v67;
      do
      {
        v16 = 0;
        do
        {
          if (*v67 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [objc_alloc(MEMORY[0x277CBC718]) initWithRecordID:*(*(&v66 + 1) + 8 * v16) type:0];
          [v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v66 objects:v74 count:16];
      }

      while (v14);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v48 = v9;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v62 objects:v73 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v63;
      do
      {
        v22 = 0;
        do
        {
          if (*v63 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [objc_alloc(MEMORY[0x277CBC718]) initWithRecordID:*(*(&v62 + 1) + 8 * v22) type:1];
          [v11 addObject:v23];

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v62 objects:v73 count:16];
      }

      while (v20);
    }

    v24 = [(SYDSyncManager *)self engine];
    v25 = [v24 state];
    [v25 addPendingRecordZoneChanges:v11];

    v26 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v18, "count") + objc_msgSend(v12, "count")}];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v27 = v12;
    v28 = [v27 countByEnumeratingWithState:&v58 objects:v72 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v59;
      do
      {
        v31 = 0;
        do
        {
          if (*v59 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [*(*(&v58 + 1) + 8 * v31) zoneID];
          v33 = [v32 zoneName];
          [v26 addObject:v33];

          ++v31;
        }

        while (v29 != v31);
        v29 = [v27 countByEnumeratingWithState:&v58 objects:v72 count:16];
      }

      while (v29);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v34 = v18;
    v35 = [v34 countByEnumeratingWithState:&v54 objects:v71 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v55;
      do
      {
        v38 = 0;
        do
        {
          if (*v55 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [*(*(&v54 + 1) + 8 * v38) zoneID];
          v40 = [v39 zoneName];
          [v26 addObject:v40];

          ++v38;
        }

        while (v36 != v38);
        v36 = [v34 countByEnumeratingWithState:&v54 objects:v71 count:16];
      }

      while (v36);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v41 = v26;
    v42 = [v41 countByEnumeratingWithState:&v50 objects:v70 count:16];
    v9 = v48;
    if (v42)
    {
      v43 = v42;
      v44 = *v51;
      do
      {
        v45 = 0;
        do
        {
          if (*v51 != v44)
          {
            objc_enumerationMutation(v41);
          }

          [(SYDSyncManager *)self addSyncAnchorRecordIDToSaveIfNecessaryForStoreIdentifier:*(*(&v50 + 1) + 8 * v45++)];
        }

        while (v43 != v45);
        v43 = [v41 countByEnumeratingWithState:&v50 objects:v70 count:16];
      }

      while (v43);
    }

    v8 = v49;
    v10 = v47;
  }

  else
  {
    v11 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager addKeyValueRecordIDsToSave:recordIDsToDelete:storeIdentifier:];
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)addSyncAnchorRecordIDToSaveIfNecessaryForStoreIdentifier:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(SYDSyncManager *)self shouldSyncStoreWithIdentifier:v4])
  {
    v5 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager addSyncAnchorRecordIDToSaveIfNecessaryForStoreIdentifier:];
    }

    goto LABEL_6;
  }

  if ([(SYDSyncManager *)self useSyncAnchor])
  {
    v5 = SYDSyncAnchorRecordID(v4);
    v6 = [(SYDSyncManager *)self engine];
    v7 = [v6 state];
    v8 = [objc_alloc(MEMORY[0x277CBC718]) initWithRecordID:v5 type:0];
    v11[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v7 addPendingRecordZoneChanges:v9];

LABEL_6:
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)resetSyncEngine
{
  v3 = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SYDSyncManager_resetSyncEngine__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)resetSyncEngineWithContainer:(id)a3
{
  v4 = a3;
  v5 = [(SYDSyncManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SYDSyncManager_resetSyncEngineWithContainer___block_invoke;
  v7[3] = &unk_279D2F678;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

uint64_t __47__SYDSyncManager_resetSyncEngineWithContainer___block_invoke(uint64_t a1)
{
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __47__SYDSyncManager_resetSyncEngineWithContainer___block_invoke_cold_1(a1);
  }

  [*(a1 + 40) setContainer:*(a1 + 32)];
  return [*(a1 + 40) _queue_resetSyncEngine];
}

- (void)_queue_resetSyncEngine
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(id)a3 handleEvent:(id)a4
{
  v92 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SYDSyncManager *)self engine];

  if (v8 != v6)
  {
    goto LABEL_78;
  }

  v9 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager syncEngine:handleEvent:];
  }

  v10 = [v7 type];
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = [v7 fetchedDatabaseChangesEvent];
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v12 = [v11 deletions];
        v44 = [v12 countByEnumeratingWithState:&v81 objects:v91 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v82;
          do
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v82 != v46)
              {
                objc_enumerationMutation(v12);
              }

              v48 = *(*(&v81 + 1) + 8 * i);
              if ([v48 reason] == 1)
              {
                v49 = [v48 zoneID];
                [(SYDSyncManager *)self zoneWithIDWasPurged:v49];
              }
            }

            v45 = [v12 countByEnumeratingWithState:&v81 objects:v91 count:16];
          }

          while (v45);
        }
      }

      else
      {
        v11 = [v7 fetchedRecordZoneChangesEvent];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v14 = [v11 modifications];
        v15 = [v14 countByEnumeratingWithState:&v77 objects:v90 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v78;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v78 != v17)
              {
                objc_enumerationMutation(v14);
              }

              [(SYDSyncManager *)self didFetchRecord:*(*(&v77 + 1) + 8 * j)];
            }

            v16 = [v14 countByEnumeratingWithState:&v77 objects:v90 count:16];
          }

          while (v16);
        }

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v12 = [v11 deletions];
        v19 = [v12 countByEnumeratingWithState:&v73 objects:v89 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v74;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v74 != v21)
              {
                objc_enumerationMutation(v12);
              }

              v23 = *(*(&v73 + 1) + 8 * k);
              v24 = [v23 recordID];
              v25 = [v23 recordType];
              [(SYDSyncManager *)self didFetchRecordDeletion:v24 recordType:v25];
            }

            v20 = [v12 countByEnumeratingWithState:&v73 objects:v89 count:16];
          }

          while (v20);
        }
      }

      goto LABEL_76;
    }

    if (!v10)
    {
      v11 = [v7 stateUpdateEvent];
      v12 = [v11 stateSerialization];
      [(SYDSyncManager *)self handleSyncEngineStateUpdate:v12];
LABEL_76:

      goto LABEL_77;
    }

    if (v10 != 1)
    {
      goto LABEL_78;
    }

    v11 = [v7 accountChangeEvent];
    v12 = [v11 previousUser];
    v13 = [v11 currentUser];
    [(SYDSyncManager *)self syncEngine:v6 accountChangedFromUserRecordID:v12 toUserRecordID:v13];
LABEL_75:

    goto LABEL_76;
  }

  if (v10 <= 5)
  {
    if (v10 == 4)
    {
      v11 = [v7 sentDatabaseChangesEvent];
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v12 = [v11 deletedZoneIDs];
      v50 = [v12 countByEnumeratingWithState:&v69 objects:v88 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v70;
        do
        {
          for (m = 0; m != v51; ++m)
          {
            if (*v70 != v52)
            {
              objc_enumerationMutation(v12);
            }

            [(SYDSyncManager *)self didDeleteRecordZoneWithID:*(*(&v69 + 1) + 8 * m)];
          }

          v51 = [v12 countByEnumeratingWithState:&v69 objects:v88 count:16];
        }

        while (v51);
      }
    }

    else
    {
      v11 = [v7 sentRecordZoneChangesEvent];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v26 = [v11 savedRecords];
      v27 = [v26 countByEnumeratingWithState:&v65 objects:v87 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v66;
        do
        {
          for (n = 0; n != v28; ++n)
          {
            if (*v66 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [(SYDSyncManager *)self didSaveRecord:*(*(&v65 + 1) + 8 * n)];
          }

          v28 = [v26 countByEnumeratingWithState:&v65 objects:v87 count:16];
        }

        while (v28);
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v31 = [v11 deletedRecordIDs];
      v32 = [v31 countByEnumeratingWithState:&v61 objects:v86 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v62;
        do
        {
          for (ii = 0; ii != v33; ++ii)
          {
            if (*v62 != v34)
            {
              objc_enumerationMutation(v31);
            }

            [(SYDSyncManager *)self didDeleteRecordWithID:*(*(&v61 + 1) + 8 * ii)];
          }

          v33 = [v31 countByEnumeratingWithState:&v61 objects:v86 count:16];
        }

        while (v33);
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v36 = [v11 failedRecordSaves];
      v37 = [v36 countByEnumeratingWithState:&v57 objects:v85 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v58;
        do
        {
          for (jj = 0; jj != v38; ++jj)
          {
            if (*v58 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v57 + 1) + 8 * jj);
            v42 = [v41 record];
            v43 = [v41 error];
            [(SYDSyncManager *)self didFailToSaveRecord:v42 error:v43];
          }

          v38 = [v36 countByEnumeratingWithState:&v57 objects:v85 count:16];
        }

        while (v38);
      }

      v12 = [v11 failedRecordDeletes];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __41__SYDSyncManager_syncEngine_handleEvent___block_invoke;
      v56[3] = &unk_279D2FC88;
      v56[4] = self;
      [v12 enumerateKeysAndObjectsUsingBlock:v56];
    }

    goto LABEL_76;
  }

  switch(v10)
  {
    case 6:
      [(SYDSyncManager *)self willBeginFetchingChanges];
      break;
    case 8:
      v11 = [v7 didFetchRecordZoneChangesEvent];
      v54 = [v11 error];

      if (!v54)
      {
LABEL_77:

        break;
      }

      v12 = [v11 zoneID];
      v13 = [v11 error];
      [(SYDSyncManager *)self didFailToFetchChangesForRecordZoneID:v12 error:v13];
      goto LABEL_75;
    case 9:
      [(SYDSyncManager *)self didEndFetchingChanges];
      break;
  }

LABEL_78:

  v55 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(id)a3 accountChangedFromUserRecordID:(id)a4 toUserRecordID:(id)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = v7;
  if (!a4 && v7)
  {
    v9 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_26C384000, v9, OS_LOG_TYPE_INFO, "Detected a newUserRecordID: %@ Marking everything to be re-uploaded", &v11, 0xCu);
    }

    [(SYDSyncManager *)self markAllKeyValuesAsNeedingToBeUploaded];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)didFailToFetchChangesForRecordZoneID:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SYDSyncManager_didFailToFetchChangesForRecordZoneID_error___block_invoke;
  block[3] = &unk_279D2F768;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

uint64_t __61__SYDSyncManager_didFailToFetchChangesForRecordZoneID_error___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_26C384000, v2, OS_LOG_TYPE_INFO, "Failed to fetch changes for RecordZoneID %@: %@", &v7, 0x16u);
  }

  result = [*(a1 + 48) isIdentityLostError:*(a1 + 40)];
  if (result)
  {
    result = [*(a1 + 48) _markZoneForDeletionOnManateeFailureForRecordZoneID:*(a1 + 32)];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isIdentityLostError:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [v4 code];
  if (v5 == 2)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__SYDSyncManager_isIdentityLostError___block_invoke;
    v10[3] = &unk_279D2FC10;
    v10[4] = self;
    v10[5] = &v11;
    [v8 enumerateKeysAndObjectsUsingBlock:v10];

    v6 = *(v12 + 24);
  }

  else if (v5 == 112)
  {
    v6 = 1;
    *(v12 + 24) = 1;
  }

  else
  {
    v6 = 0;
    *(v12 + 24) = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

uint64_t __38__SYDSyncManager_isIdentityLostError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isIdentityLostError:?];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_markZoneForDeletionOnManateeFailureForRecordZoneID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_26C384000, v5, OS_LOG_TYPE_INFO, "Missing Manatee identity fetching %@, deleting the zone now", buf, 0xCu);
  }

  v6 = [v4 zoneName];
  v7 = [objc_alloc(MEMORY[0x277CBC720]) initWithZoneID:v4];
  v11 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [(SYDSyncManager *)self addPendingDatabaseChanges:v8 storeIdentifier:v6];

  v9 = [(SYDSyncManager *)self coreDataStore];
  [v9 clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier:v6 error:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)syncEngine:(id)a3 nextRecordZoneChangeBatchForContext:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SYDSyncManager *)self engine];

  if (v8 == v6)
  {
    v29 = self;
    v10 = [v7 options];
    v11 = [v10 scope];

    v12 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager syncEngine:nextRecordZoneChangeBatchForContext:];
    }

    v30 = v7;

    v13 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = [v6 state];
    v15 = [v14 pendingRecordZoneChanges];

    v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          v21 = [v20 recordID];
          v22 = [v11 containsRecordID:v21];

          if (v22)
          {
            [v13 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v17);
    }

    v23 = objc_opt_new();
    v24 = objc_alloc(MEMORY[0x277CBC730]);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __65__SYDSyncManager_syncEngine_nextRecordZoneChangeBatchForContext___block_invoke;
    v31[3] = &unk_279D2FCB0;
    v31[4] = v29;
    v32 = v23;
    v25 = v23;
    v9 = [v24 initWithPendingChanges:v13 recordProvider:v31];
    v26 = [v6 state];
    [v26 removePendingRecordZoneChanges:v25];

    v7 = v30;
  }

  else
  {
    v9 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v9;
}

id __65__SYDSyncManager_syncEngine_nextRecordZoneChangeBatchForContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = 0;
  v5 = [v4 recordToSaveForRecordID:v3 error:&v10];
  v6 = v10;
  if (!(v5 | v6))
  {
    v7 = *(a1 + 40);
    v8 = [objc_alloc(MEMORY[0x277CBC718]) initWithRecordID:v3 type:0];
    [v7 addObject:v8];
  }

  return v5;
}

- (id)recordToSaveForRecordID:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager recordToSaveForRecordID:v6 error:?];
  }

  v8 = [v6 zoneID];
  v9 = [v8 zoneName];

  v10 = [v6 recordName];
  v11 = [v10 isEqual:@"syncAnchor"];

  v12 = [(SYDSyncManager *)self coreDataStore];
  v13 = v12;
  if (v11)
  {
    v27 = 0;
    v14 = [v12 serverSyncAnchorSystemFieldsRecordDataForStoreWithIdentifier:v9 error:&v27];
    v15 = v27;

    if (v15)
    {
      v16 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SYDSyncManager recordToSaveForRecordID:error:];
      }

LABEL_10:

      v18 = 0;
      goto LABEL_11;
    }

    if (v14)
    {
      v26 = 0;
      v23 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v14 error:&v26];
      v15 = v26;
      v18 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v23];
      if (v15)
      {
        v24 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [SYDSyncManager recordToSaveForRecordID:error:];
        }
      }
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"KVSSyncAnchorRecord" recordID:v6];
      v15 = 0;
    }
  }

  else
  {
    v17 = [v6 recordName];
    v25 = 0;
    v14 = [v13 keyValueForRecordName:v17 inStoreWithIdentifier:v9 error:&v25];
    v15 = v25;

    if (v15)
    {
      v16 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SYDSyncManager recordToSaveForRecordID:error:];
      }

      goto LABEL_10;
    }

    if (!v14)
    {
      v16 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = v6;
        _os_log_impl(&dword_26C384000, v16, OS_LOG_TYPE_INFO, "No keyValue for recordID %@, so we're returning nothing", buf, 0xCu);
      }

      goto LABEL_10;
    }

    v18 = [v14 recordRepresentationForStoreType:{-[SYDSyncManager storeType](self, "storeType")}];
  }

LABEL_11:

  if (a4)
  {
    v19 = v15;
    *a4 = v15;
  }

  v20 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager recordToSaveForRecordID:v18 error:?];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)didSaveRecord:(id)a3
{
  v4 = a3;
  v5 = [(SYDSyncManager *)self queue];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __32__SYDSyncManager_didSaveRecord___block_invoke;
  v13 = &unk_279D2F678;
  v6 = v4;
  v14 = v6;
  v15 = self;
  dispatch_sync(v5, &v10);

  v7 = [(SYDSyncManager *)self delegate:v10];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SYDSyncManager *)self delegate];
    [v9 syncManager:self didSaveRecord:v6];
  }
}

void __32__SYDSyncManager_didSaveRecord___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) recordType];
  if ([v3 isEqual:@"KVSSyncAnchorRecord"])
  {
    v4 = [*v2 recordID];
    v5 = [v4 recordName];
    v6 = [v5 isEqual:@"syncAnchor"];

    if (v6)
    {
      v7 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __32__SYDSyncManager_didSaveRecord___block_invoke_cold_1(v2);
      }

      [*(a1 + 40) saveSyncAnchorSystemFieldsRecord:*(a1 + 32)];
      return;
    }
  }

  else
  {
  }

  v8 = [*v2 recordType];
  if ([v8 isEqual:@"KVSRecord"])
  {
  }

  else
  {
    v9 = [*v2 recordType];
    v10 = [v9 isEqualToString:@"EncryptedKeyValue"];

    if (!v10)
    {
      return;
    }
  }

  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  [v11 didSaveKeyValueRecord:v12];
}

- (void)didSaveKeyValueRecord:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SYDSyncManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager didSaveKeyValueRecord:v4];
  }

  v7 = [v4 recordID];
  v8 = [v7 zoneID];
  v9 = [v8 zoneName];

  v10 = [(SYDSyncManager *)self coreDataStore];
  v11 = [v4 recordID];
  v12 = [v11 recordName];
  v25 = 0;
  v13 = [v10 keyValueForRecordName:v12 inStoreWithIdentifier:v9 error:&v25];
  v14 = v25;

  if (v14)
  {
    v15 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SYDSyncManager didSaveKeyValueRecord:];
    }

LABEL_6:

    goto LABEL_7;
  }

  v19 = SYDGetCloudKitLog();
  v15 = v19;
  if (!v13)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [SYDSyncManager didSaveKeyValueRecord:v4];
    }

    v14 = 0;
    goto LABEL_6;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v4 syd_shortDescription];
    v21 = [v13 key];
    *buf = 138413059;
    v27 = v20;
    v28 = 2160;
    v29 = 1752392040;
    v30 = 2113;
    v31 = v21;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&dword_26C384000, v15, OS_LOG_TYPE_INFO, "Saved record %@ for key <(%{private, mask.hash}@)> in store <(%@)>", buf, 0x2Au);
  }

  [v13 setServerSystemFieldsRecord:v4];
  v22 = [(SYDSyncManager *)self coreDataStore];
  v24 = 0;
  v23 = [v22 saveKeyValue:v13 inStoreWithIdentifier:v9 excludeFromChangeTracking:0 enforceQuota:0 error:&v24];
  v14 = v24;

  if ((v23 & 1) == 0)
  {
    v15 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SYDSyncManager didSaveKeyValueRecord:];
    }

    goto LABEL_6;
  }

LABEL_7:
  [SYDKeyValue deleteFilesForAssetsInKeyValueRecord:v4];
  v16 = [v13 key];
  v17 = [v13 value];
  [SYDUserNotifications showUserNotificationIfEnabledForStoreIdentifier:v9 format:@"Uploaded %@ = %@", v16, v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)didFailToSaveRecord:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SYDSyncManager_didFailToSaveRecord_error___block_invoke;
  block[3] = &unk_279D2F768;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __44__SYDSyncManager_didFailToSaveRecord_error___block_invoke(id *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [a1[4] syd_shortDescription];
    v4 = a1[5];
    v18 = 138412546;
    v19 = v3;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_26C384000, v2, OS_LOG_TYPE_INFO, "Failed to save record %@: %@", &v18, 0x16u);
  }

  v5 = [a1[4] recordType];
  if ([v5 isEqualToString:@"KVSRecord"])
  {

LABEL_6:
    [a1[6] failedToSaveKeyValueRecord:a1[4] error:a1[5]];
    goto LABEL_7;
  }

  v6 = [a1[4] recordType];
  v7 = [v6 isEqualToString:@"EncryptedKeyValue"];

  if (v7)
  {
    goto LABEL_6;
  }

  v9 = [a1[4] recordType];
  if (([v9 isEqualToString:@"KVSSyncAnchorRecord"] & 1) == 0)
  {
LABEL_16:

    goto LABEL_7;
  }

  v10 = [a1[4] recordID];
  v11 = [v10 recordName];
  v12 = [v11 isEqualToString:@"syncAnchor"];

  if (v12 && [a1[5] code] == 14)
  {
    v13 = [a1[5] userInfo];
    v9 = [v13 objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

    if (v9)
    {
      [a1[6] saveSyncAnchorSystemFieldsRecord:v9];
      v14 = a1[6];
      v15 = [a1[4] recordID];
      v16 = [v15 zoneID];
      v17 = [v16 zoneName];
      [v14 addSyncAnchorRecordIDToSaveIfNecessaryForStoreIdentifier:v17];
    }

    else
    {
      v15 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __44__SYDSyncManager_didFailToSaveRecord_error___block_invoke_cold_1();
      }
    }

    goto LABEL_16;
  }

LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)failedToSaveKeyValueRecord:(id)a3 error:(id)a4
{
  v117 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SYDSyncManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(SYDSyncManager *)self testConfiguration];

  v10 = [v6 recordID];
  v11 = [v10 zoneID];
  v12 = [v11 zoneName];

  v13 = [v7 code];
  v14 = 0x279D2F000uLL;
  if (v13 <= 21)
  {
    if (v13 <= 8)
    {
      if ((v13 - 3) >= 2 && (v13 - 6) >= 2)
      {
        goto LABEL_36;
      }

      goto LABEL_97;
    }

    if (v13 <= 13)
    {
      if (v13 == 9)
      {
        goto LABEL_97;
      }

      if (v13 != 11)
      {
        goto LABEL_36;
      }

      v15 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v6 syd_shortDescription];
        *buf = 138412290;
        v110 = v16;
        _os_log_impl(&dword_26C384000, v15, OS_LOG_TYPE_INFO, "Unknown item saving key-value record, will re-upload %@", buf, 0xCu);
      }

      v17 = [(SYDSyncManager *)self coreDataStore];
      v18 = [v6 recordID];
      v19 = [v18 recordName];
      v97 = 0;
      v20 = [v17 keyValueForRecordName:v19 inStoreWithIdentifier:v12 error:&v97];
      v21 = v97;

      if (v21)
      {
        v22 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [SYDSyncManager failedToSaveKeyValueRecord:error:];
        }
      }

      else
      {
        if (!v20)
        {
          v21 = SYDGetCloudKitLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            [SYDSyncManager failedToSaveKeyValueRecord:v6 error:?];
          }

          goto LABEL_20;
        }

        [v20 setServerSystemFieldsRecord:0];
        v70 = [(SYDSyncManager *)self coreDataStore];
        v96 = 0;
        v71 = [v70 saveKeyValue:v20 inStoreWithIdentifier:v12 excludeFromChangeTracking:0 enforceQuota:0 error:&v96];
        v21 = v96;

        if (v71)
        {
          v22 = [v6 recordID];
          v106 = v22;
          v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v106 count:1];
          [(SYDSyncManager *)self addKeyValueRecordIDsToSave:v72 recordIDsToDelete:0 storeIdentifier:v12];
        }

        else
        {
          v22 = SYDGetCloudKitLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [SYDSyncManager failedToSaveKeyValueRecord:error:];
          }
        }
      }

LABEL_20:
      v14 = 0x279D2F000;
      goto LABEL_95;
    }

    if (v13 != 14)
    {
      if (v13 == 20)
      {
        goto LABEL_97;
      }

      goto LABEL_36;
    }

    v47 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager failedToSaveKeyValueRecord:v6 error:?];
    }

    v48 = [v6 recordType];
    if ([v48 isEqualToString:@"KVSRecord"])
    {
    }

    else
    {
      v50 = [v6 recordType];
      v51 = [v50 isEqualToString:@"EncryptedKeyValue"];

      if (!v51)
      {
        goto LABEL_97;
      }
    }

    v52 = [v7 userInfo];
    v20 = [v52 objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

    if (!v20)
    {
      v56 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v73 = [v6 recordID];
        v74 = [v73 syd_shortDescription];
        *buf = 138412290;
        v110 = v74;
        _os_log_impl(&dword_26C384000, v56, OS_LOG_TYPE_INFO, "No server record when resolving conflict saving record %@", buf, 0xCu);

        v14 = 0x279D2F000uLL;
      }

      goto LABEL_92;
    }

    v53 = [SYDKeyValue keyValueRecordHasAssetWithoutFile:v20];
    v54 = SYDGetCloudKitLog();
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG);
    if (!v53)
    {
      if (v55)
      {
        [SYDSyncManager failedToSaveKeyValueRecord:v6 error:?];
      }

      v108 = v20;
      v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v108 count:1];
      [(SYDSyncManager *)self processFetchedRecords:v56 deletedRecordIDs:0];
      goto LABEL_92;
    }

    if (v55)
    {
      [SYDSyncManager failedToSaveKeyValueRecord:v6 error:?];
    }

    v56 = [SYDKeyValue recordFieldKeyForValueModificationDateInStoreType:[(SYDSyncManager *)self storeType]];
    v57 = [v20 objectForKeyedSubscript:v56];
    v58 = v57;
    if (!v57)
    {
      v69 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        [SYDSyncManager failedToSaveKeyValueRecord:error:];
      }

      goto LABEL_91;
    }

    v92 = v56;
    v93 = v57;
    v88 = [(SYDSyncManager *)self coreDataStore];
    v59 = [v6 recordID];
    v60 = [v59 recordName];
    v99 = 0;
    v61 = [v88 keyValueForRecordName:v60 inStoreWithIdentifier:v12 error:&v99];
    v90 = v99;

    v62 = v61;
    v91 = v61;
    if (v61)
    {
      v63 = [v61 valueModificationDate];
      v64 = [v63 compare:v93];

      v65 = SYDGetCloudKitLog();
      v66 = v65;
      if (v64 == 1)
      {
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_26C384000, v66, OS_LOG_TYPE_INFO, "Taking the server system fields record from the server record even though we don't have the server's value", buf, 2u);
        }

        [v62 updateWithServerRecord:v20];
        v67 = [(SYDSyncManager *)self coreDataStore];
        v98 = v90;
        v68 = [v67 saveKeyValue:v62 inStoreWithIdentifier:v12 excludeFromChangeTracking:0 enforceQuota:0 error:&v98];
        v69 = v98;

        if (v68)
        {
          v56 = v92;
LABEL_90:

          v58 = v93;
LABEL_91:

          v14 = 0x279D2F000uLL;
LABEL_92:

          v75 = SYDGetCloudKitLog();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            v76 = [v6 recordID];
            v77 = [v76 recordName];
            *buf = 138412290;
            v110 = v77;
            _os_log_impl(&dword_26C384000, v75, OS_LOG_TYPE_INFO, "Attempting to save keyValue again after a conflict for recordName:%@", buf, 0xCu);

            v14 = 0x279D2F000uLL;
          }

          v21 = [v6 recordID];
          v107 = v21;
          v78 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
          [(SYDSyncManager *)self addKeyValueRecordIDsToSave:v78 recordIDsToDelete:0 storeIdentifier:v12];

          goto LABEL_95;
        }

        v66 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          [SYDSyncManager failedToSaveKeyValueRecord:error:];
        }

        goto LABEL_88;
      }

      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v89 = [v6 recordID];
        v86 = [v89 recordName];
        v87 = [v62 valueModificationDate];
        *buf = 138413058;
        v110 = v86;
        v111 = 2112;
        v112 = v87;
        v113 = 2112;
        v114 = v93;
        v115 = 2112;
        v116 = v12;
        _os_log_error_impl(&dword_26C384000, v66, OS_LOG_TYPE_ERROR, "Unable to update local record recordName:%@ , keyValue.valueModificationDate:%@ , serverValueModificationDate:%@ in store:%@", buf, 0x2Au);
      }
    }

    else
    {
      v66 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v69 = v90;
        [SYDSyncManager failedToSaveKeyValueRecord:error:];
LABEL_88:
        v56 = v92;
        goto LABEL_89;
      }
    }

    v56 = v92;
    v69 = v90;
LABEL_89:

    goto LABEL_90;
  }

  if (v13 <= 109)
  {
    if (v13 > 25)
    {
      if (v13 == 26)
      {
        v36 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = [v6 syd_shortDescription];
          *buf = 138412290;
          v110 = v37;
          _os_log_impl(&dword_26C384000, v36, OS_LOG_TYPE_INFO, "Zone not found saving %@. Saving zone and re-saving record", buf, 0xCu);
        }

        v38 = objc_alloc(MEMORY[0x277CBC5E8]);
        v39 = [v6 recordID];
        v40 = [v39 zoneID];
        v41 = [v38 initWithZoneID:v40];

        v42 = [objc_alloc(MEMORY[0x277CBC728]) initWithZone:v41];
        v105 = v42;
        v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
        [(SYDSyncManager *)self addPendingDatabaseChanges:v43 storeIdentifier:v12];

        v44 = [(SYDSyncManager *)self coreDataStore];
        v95 = 0;
        v45 = [v44 clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier:v12 error:&v95];
        v46 = v95;

        if (v45)
        {
          [(SYDSyncManager *)self markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:v12];
LABEL_100:

          goto LABEL_101;
        }

        v49 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          [SYDSyncManager failedToSaveKeyValueRecord:error:];
        }

LABEL_99:

        goto LABEL_100;
      }

      if (v13 != 28)
      {
        goto LABEL_36;
      }

      v20 = SYDGetCloudKitLog();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
LABEL_96:

        goto LABEL_97;
      }

      v21 = [v6 syd_shortDescription];
      *buf = 138412290;
      v110 = v21;
      _os_log_impl(&dword_26C384000, v20, OS_LOG_TYPE_INFO, "Failed to save %@ because zone was user-purged", buf, 0xCu);
LABEL_95:

      goto LABEL_96;
    }

    if (v13 != 22)
    {
      if (v13 == 23)
      {
        goto LABEL_97;
      }

      goto LABEL_36;
    }

    v30 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = [v6 syd_shortDescription];
      *buf = 138412290;
      v110 = v31;
      _os_log_impl(&dword_26C384000, v30, OS_LOG_TYPE_INFO, "Batch failure trying to save %@. Retrying eventually", buf, 0xCu);
    }

    v20 = [v6 recordID];
    v102 = v20;
    v32 = MEMORY[0x277CBEA60];
    v33 = &v102;
LABEL_44:
    v21 = [v32 arrayWithObjects:v33 count:1];
    [(SYDSyncManager *)self addKeyValueRecordIDsToSave:v21 recordIDsToDelete:0 storeIdentifier:v12];
    goto LABEL_95;
  }

  if (v13 <= 4096)
  {
    if (v13 != 110)
    {
      if (v13 == 112)
      {
        v23 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [v6 syd_shortDescription];
          *buf = 138412290;
          v110 = v24;
          _os_log_impl(&dword_26C384000, v23, OS_LOG_TYPE_INFO, "Missing Manatee identity saving %@, deleting the zone now", buf, 0xCu);
        }

        v25 = objc_alloc(MEMORY[0x277CBC720]);
        v26 = [v6 recordID];
        v27 = [v26 zoneID];
        v28 = [v25 initWithZoneID:v27];
        v104 = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
        [(SYDSyncManager *)self addPendingDatabaseChanges:v29 storeIdentifier:v12];

        v20 = [(SYDSyncManager *)self coreDataStore];
        [v20 clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier:v12 error:0];
        v14 = 0x279D2F000;
        goto LABEL_96;
      }

      goto LABEL_36;
    }

    v34 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [v6 syd_shortDescription];
      *buf = 138412290;
      v110 = v35;
      _os_log_impl(&dword_26C384000, v34, OS_LOG_TYPE_INFO, "Manatee unavailable trying to save %@. Retrying eventually", buf, 0xCu);
    }

    v20 = [v6 recordID];
    v103 = v20;
    v32 = MEMORY[0x277CBEA60];
    v33 = &v103;
    goto LABEL_44;
  }

  if (v13 != 4097 && v13 != 4099)
  {
LABEL_36:
    v20 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [SYDSyncManager failedToSaveKeyValueRecord:error:];
    }

    goto LABEL_96;
  }

LABEL_97:
  if (!v9)
  {
    v101[0] = v12;
    v100[0] = @"storeIdentifier";
    v100[1] = @"containerIdentifier";
    v41 = [(SYDSyncManager *)self container];
    v46 = [v41 containerIdentifier];
    v101[1] = v46;
    v100[2] = @"containerEnvironment";
    v94 = v12;
    v79 = v14;
    v80 = MEMORY[0x277CCABB0];
    v49 = [(SYDSyncManager *)self container];
    v81 = [v49 containerID];
    v82 = [v80 numberWithInteger:{objc_msgSend(v81, "environment")}];
    v101[2] = v82;
    v100[3] = @"errorCode";
    v83 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "code")}];
    v101[3] = v83;
    v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:4];
    AnalyticsSendEvent();

    v14 = v79;
    v12 = v94;

    goto LABEL_99;
  }

LABEL_101:
  [*(v14 + 32) deleteFilesForAssetsInKeyValueRecord:v6];
  [SYDUserNotifications showUserNotificationIfEnabledForStoreIdentifier:v12 format:@"Failed to save record: %@", v7];

  v85 = *MEMORY[0x277D85DE8];
}

- (void)didDeleteRecordWithID:(id)a3
{
  v4 = a3;
  v5 = [(SYDSyncManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SYDSyncManager_didDeleteRecordWithID___block_invoke;
  v7[3] = &unk_279D2F678;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __40__SYDSyncManager_didDeleteRecordWithID___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) recordName];
  v4 = [v3 isEqualToString:@"syncAnchor"];

  if (!v4)
  {
    v6 = [*(a1 + 32) zoneID];
    v5 = [v6 zoneName];

    v7 = [*(a1 + 40) coreDataStore];
    v8 = [*(a1 + 32) recordName];
    v22 = 0;
    v9 = [v7 keyValueForRecordName:v8 inStoreWithIdentifier:v5 error:&v22];
    v10 = v22;

    v11 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v9 key];
      v13 = [*v2 syd_shortDescription];
      *buf = 141558787;
      v24 = 1752392040;
      v25 = 2113;
      v26 = v12;
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_26C384000, v11, OS_LOG_TYPE_INFO, "Deleted keyValue record for key <(%{private, mask.hash}@)> in store <(%@)> %@", buf, 0x2Au);
    }

    if (v10)
    {
      v14 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_1();
      }

      goto LABEL_16;
    }

    if (v9)
    {
      v15 = [v9 value];

      v14 = SYDGetCloudKitLog();
      v16 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (!v15)
      {
        if (v16)
        {
          __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_3();
        }

        v18 = [*(a1 + 40) coreDataStore];
        v19 = [*(a1 + 32) recordName];
        v21 = 0;
        v20 = [v18 removeKeyValueForRecordName:v19 inStoreWithIdentifier:v5 error:&v21];
        v10 = v21;

        if (v20)
        {
          goto LABEL_17;
        }

        v14 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_4();
        }

LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      if (v16)
      {
        __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_2();
      }
    }

    else
    {
      v14 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26C384000, v14, OS_LOG_TYPE_INFO, "No key-value in database after deleting record from the cloud", buf, 2u);
      }
    }

    v10 = 0;
    goto LABEL_16;
  }

  v5 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_5(v2);
  }

LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)didFailToDeleteRecordWithID:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SYDSyncManager *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__SYDSyncManager_didFailToDeleteRecordWithID_error___block_invoke;
  v11[3] = &unk_279D2F678;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v11);
}

void __52__SYDSyncManager_didFailToDeleteRecordWithID_error___block_invoke()
{
  v0 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __52__SYDSyncManager_didFailToDeleteRecordWithID_error___block_invoke_cold_1();
  }
}

- (void)didFetchRecord:(id)a3
{
  v4 = a3;
  v5 = [(SYDSyncManager *)self queue];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __33__SYDSyncManager_didFetchRecord___block_invoke;
  v13 = &unk_279D2F678;
  v6 = v4;
  v14 = v6;
  v15 = self;
  dispatch_sync(v5, &v10);

  v7 = [(SYDSyncManager *)self delegate:v10];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SYDSyncManager *)self delegate];
    [v9 syncManager:self didFetchRecord:v6];
  }
}

void __33__SYDSyncManager_didFetchRecord___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) recordType];
  if ([v3 isEqual:@"KVSSyncAnchorRecord"])
  {
    v4 = [*v2 recordID];
    v5 = [v4 recordName];
    v6 = [v5 isEqual:@"syncAnchor"];

    if (v6)
    {
      v7 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __33__SYDSyncManager_didFetchRecord___block_invoke_cold_1(v2);
      }

      [*(a1 + 40) saveSyncAnchorSystemFieldsRecord:*(a1 + 32)];
      return;
    }
  }

  else
  {
  }

  v8 = [*v2 recordType];
  if ([v8 isEqual:@"KVSRecord"])
  {
  }

  else
  {
    v9 = [*v2 recordType];
    v10 = [v9 isEqualToString:@"EncryptedKeyValue"];

    if (!v10)
    {
      return;
    }
  }

  v11 = [*(a1 + 40) pendingFetchedRecords];
  [v11 addObject:*(a1 + 32)];

  v12 = [*(a1 + 40) pendingFetchedRecords];
  v13 = [v12 count];
  v14 = [*(a1 + 40) maxPendingFetchedRecords];

  if (v13 >= v14)
  {
    v15 = *(a1 + 40);

    [v15 processPendingFetchedRecordsWithReason:@"reached max pending records"];
  }
}

- (void)saveSyncAnchorSystemFieldsRecord:(id)a3
{
  v4 = a3;
  v5 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager saveSyncAnchorSystemFieldsRecord:v4];
  }

  v6 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v4 encodeSystemFieldsWithCoder:v6];
  v7 = [v6 encodedData];
  if (v7 && ([v6 error], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v10 = [(SYDSyncManager *)self coreDataStore];
    v11 = [v4 recordID];
    v12 = [v11 zoneID];
    v13 = [v12 zoneName];
    v16 = 0;
    v14 = [v10 saveServerSyncAnchorSystemFieldsRecordData:v7 forStoreWithIdentifier:v13 error:&v16];
    v9 = v16;

    if ((v14 & 1) == 0)
    {
      v15 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SYDSyncManager saveSyncAnchorSystemFieldsRecord:];
      }
    }
  }

  else
  {
    v9 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [SYDSyncManager saveSyncAnchorSystemFieldsRecord:v6];
    }
  }
}

- (void)processPendingFetchedRecordsWithReason:(id)a3
{
  v4 = a3;
  v5 = [(SYDSyncManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SYDSyncManager *)self pendingFetchedRecords];
  if ([v6 count])
  {
  }

  else
  {
    v7 = [(SYDSyncManager *)self pendingDeletedRecordIDs];
    v8 = [v7 count];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager processPendingFetchedRecordsWithReason:];
  }

  v10 = [(SYDSyncManager *)self pendingFetchedRecords];
  v11 = [(SYDSyncManager *)self pendingDeletedRecordIDs];
  [(SYDSyncManager *)self processFetchedRecords:v10 deletedRecordIDs:v11];

  v12 = [(SYDSyncManager *)self pendingFetchedRecords];
  [v12 removeAllObjects];

  v13 = [(SYDSyncManager *)self pendingDeletedRecordIDs];
  [v13 removeAllObjects];

LABEL_7:
}

- (void)processFetchedRecords:(id)a3 deletedRecordIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SYDSyncManager *)self queue];
  dispatch_assert_queue_V2(v9);

  if ([v7 count] || objc_msgSend(v8, "count"))
  {
    v10 = [(SYDSyncManager *)self personaUniqueString];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke;
    v12[3] = &unk_279D2FD00;
    v13 = v7;
    v14 = self;
    v16 = a2;
    v15 = v8;
    SYDPerformWithPersona(v10, v12);

    v11 = v13;
  }

  else
  {
    v11 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager processFetchedRecords:deletedRecordIDs:];
    }
  }
}

void __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke(uint64_t a1)
{
  v108 = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134217984;
    v100 = v3;
    _os_log_impl(&dword_26C384000, v2, OS_LOG_TYPE_INFO, "Processing %ld fetched records", buf, 0xCu);
  }

  v80 = objc_opt_new();
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v69 = a1;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v93 objects:v107 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v94;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v94 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v93 + 1) + 8 * i);
        v10 = [v9 recordID];
        v11 = [v10 zoneID];
        v12 = [v11 zoneName];

        v13 = [SYDKeyValue keyFromKeyValueRecord:v9];
        v14 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v9 syd_shortDescription];
          *buf = 138413059;
          v100 = v15;
          v101 = 2160;
          v102 = 1752392040;
          v103 = 2113;
          v104 = v13;
          v105 = 2112;
          v106 = v12;
          _os_log_impl(&dword_26C384000, v14, OS_LOG_TYPE_INFO, "Record was fetched %@ for key <(%{private, mask.hash}@)> in store <(%@)>", buf, 0x2Au);
        }

        v16 = [[SYDKeyID alloc] initWithKey:v13 storeIdentifier:v12];
        [v80 addObject:v16];
      }

      v6 = [v4 countByEnumeratingWithState:&v93 objects:v107 count:16];
    }

    while (v6);
  }

  v81 = (v69 + 40);
  v17 = [*(v69 + 40) coreDataStore];
  v18 = [v80 allObjects];
  v92 = 0;
  v19 = [v17 keyValuesForKeyIDs:v18 createIfNecessary:1 error:&v92];
  v20 = v92;

  if (!v19 || v20)
  {
    v46 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_cold_4();
    }
  }

  else
  {
    v21 = [v19 count];
    if (v21 != [v80 count])
    {
      v22 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_cold_1();
      }
    }

    v23 = objc_opt_new();
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = *(v69 + 32);
    v72 = v19;
    v77 = v23;
    v76 = [obj countByEnumeratingWithState:&v88 objects:v98 count:16];
    if (v76)
    {
      v75 = *v89;
      do
      {
        for (j = 0; j != v76; ++j)
        {
          if (*v89 != v75)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v88 + 1) + 8 * j);
          v26 = [v25 recordID];
          v27 = [v26 zoneID];
          v28 = [v27 zoneName];

          v78 = [SYDKeyValue keyFromKeyValueRecord:v25];
          v29 = [[SYDKeyID alloc] initWithKey:v78 storeIdentifier:v28];
          v30 = [v19 objectForKeyedSubscript:v29];
          if (!v30)
          {
            __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_cold_2();
          }

          v31 = [v30 recordName];

          if (!v31)
          {
            v32 = [v25 recordID];
            v33 = [v32 recordName];
            [v30 setRecordName:v33];
          }

          [*v81 deduplicateRecordForKeyValue:v30 withNewlyFetchedRecord:v25];
          v34 = [v30 value];
          [v30 mergeDataFromRecord:v25];
          v35 = [v30 value];
          v36 = v35;
          if (v34 == v35 || (v34 == 0) != (v35 != 0) && [v34 isEqual:v35])
          {
            v37 = SYDGetCloudKitLog();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v71 = [(SYDKeyID *)v29 key];
              v70 = [(SYDKeyID *)v29 storeIdentifier];
              *buf = 141558531;
              v100 = 1752392040;
              v101 = 2113;
              v102 = v71;
              v103 = 2112;
              v104 = v70;
              _os_log_debug_impl(&dword_26C384000, v37, OS_LOG_TYPE_DEBUG, "Value didn't change for key <(%{private, mask.hash}@)> in store <(%@)>", buf, 0x20u);
            }
          }

          else
          {
            v37 = [v23 objectForKeyedSubscript:v28];
            if (!v37)
            {
              v37 = objc_opt_new();
              [v23 setObject:v37 forKeyedSubscript:v28];
            }

            v38 = [(SYDKeyID *)v29 key];
            [v37 addObject:v38];

            v39 = [(SYDKeyID *)v29 key];
            v23 = v77;
            [SYDUserNotifications showUserNotificationIfEnabledForStoreIdentifier:v28 format:@"Downloaded %@ = %@", v39, v36];

            v19 = v72;
          }

          [SYDKeyValue deleteFilesForAssetsInKeyValueRecord:v25];
        }

        v76 = [obj countByEnumeratingWithState:&v88 objects:v98 count:16];
      }

      while (v76);
    }

    if ([v19 count])
    {
      v40 = [*v81 coreDataStore];
      v41 = [v19 allValues];
      v87 = 0;
      v42 = [v40 saveKeyValues:v41 excludeFromChangeTracking:0 enforceQuota:0 error:&v87];
      v43 = v87;

      v44 = v69;
      obja = v43;
      if ((v42 & 1) == 0)
      {
        v45 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_cold_3();
        }
      }
    }

    else
    {
      obja = 0;
      v44 = v69;
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v79 = *(v44 + 48);
    v47 = [v79 countByEnumeratingWithState:&v83 objects:v97 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v84;
      do
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v84 != v49)
          {
            objc_enumerationMutation(v79);
          }

          v51 = *(*(&v83 + 1) + 8 * k);
          v52 = objc_autoreleasePoolPush();
          v53 = [v51 zoneID];
          v54 = [v53 zoneName];

          v55 = [*v81 coreDataStore];
          v56 = [v51 recordName];
          v57 = [v55 keyValueForRecordName:v56 inStoreWithIdentifier:v54 error:0];

          v58 = SYDGetCloudKitLog();
          v59 = v58;
          if (v57)
          {
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v60 = [v57 key];
              v61 = [v51 syd_shortDescription];
              *buf = 141558787;
              v100 = 1752392040;
              v101 = 2113;
              v102 = v60;
              v103 = 2112;
              v104 = v54;
              v105 = 2112;
              v106 = v61;
              _os_log_impl(&dword_26C384000, v59, OS_LOG_TYPE_INFO, "Record was deleted for key <(%{private, mask.hash}@)> in store <(%@)> %@", buf, 0x2Au);
            }

            v62 = [v77 objectForKeyedSubscript:v54];
            v63 = v62;
            if (v62)
            {
              v64 = v62;
            }

            else
            {
              v64 = objc_opt_new();
            }

            v59 = v64;

            v65 = [v57 key];
            [v59 addObject:v65];

            [v77 setObject:v59 forKeyedSubscript:v54];
          }

          else if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v100 = v51;
            _os_log_error_impl(&dword_26C384000, v59, OS_LOG_TYPE_ERROR, "Unable to find key-value to post notification for %@", buf, 0xCu);
          }

          v66 = [*v81 coreDataStore];
          v67 = [v51 recordName];
          [v66 removeKeyValueForRecordName:v67 inStoreWithIdentifier:v54 error:0];

          objc_autoreleasePoolPop(v52);
        }

        v48 = [v79 countByEnumeratingWithState:&v83 objects:v97 count:16];
      }

      while (v48);
    }

    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_183;
    v82[3] = &unk_279D2FCD8;
    v82[4] = *v81;
    v46 = v77;
    [v77 enumerateKeysAndObjectsUsingBlock:v82];
    v19 = v72;
    v20 = obja;
  }

  v68 = *MEMORY[0x277D85DE8];
}

void __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_183(uint64_t a1, void *a2, void *a3)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D6B888];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithIdentifier:v7 type:{objc_msgSend(*(a1 + 32), "storeType")}];

  v9 = [*(a1 + 32) storeIdentifiersWithChangedValuesDuringFetchChanges];
  v10 = [v8 identifier];
  [v9 addObject:v10];

  v11 = [*(a1 + 32) container];
  v12 = [v11 containerID];
  [v8 setContainerID:v12];

  v13 = [*(a1 + 32) personaUniqueString];
  [v8 setPersonaUniqueString:v13];

  v14 = [*(a1 + 32) testConfiguration];
  [v8 setTestConfiguration:v14];

  v19[0] = @"changedKeys";
  v15 = [v6 allObjects];

  v19[1] = @"storeID";
  v20[0] = v15;
  v20[1] = v8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 postNotificationName:@"SYDSyncManagerNotificationValuesDidChange" object:*(a1 + 32) userInfo:v16];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)deduplicateRecordForKeyValue:(id)a3 withNewlyFetchedRecord:(id)a4
{
  v65[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 recordName];
  if (!v8)
  {
    goto LABEL_41;
  }

  v9 = v8;
  v10 = [v6 recordName];
  v11 = [v7 recordID];
  v12 = [v11 recordName];
  v13 = [v10 isEqualToString:v12];

  if (v13)
  {
    goto LABEL_41;
  }

  v14 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(SYDSyncManager *)v6 deduplicateRecordForKeyValue:v7 withNewlyFetchedRecord:v14];
  }

  v15 = [v6 serverSystemFieldsRecord];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 creationDate];
    v18 = [v7 creationDate];
    v19 = [v17 compare:v18];

    if (!v19)
    {
      v20 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26C384000, v20, OS_LOG_TYPE_INFO, "Creation dates were exactly the same when de-duplicating. Comparing record names", buf, 2u);
      }

      v21 = [v16 recordID];
      v22 = [v21 recordName];
      v23 = [v7 recordID];
      v24 = [v23 recordName];
      v19 = [v22 compare:v24];
    }

    if (v19 == 1)
    {
      v38 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [SYDSyncManager deduplicateRecordForKeyValue:v7 withNewlyFetchedRecord:?];
      }

      v26 = [v16 recordID];
      v27 = [v7 recordID];
      v39 = [v7 recordID];
      v40 = [v39 recordName];
      [v6 setRecordName:v40];

      v30 = v6;
      v31 = v7;
      goto LABEL_23;
    }

    if (v19)
    {
      if (v19 == -1)
      {
        v25 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [SYDSyncManager deduplicateRecordForKeyValue:v16 withNewlyFetchedRecord:?];
        }

        v26 = [v7 recordID];
        v27 = [v16 recordID];
        v28 = [v16 recordID];
        v29 = [v28 recordName];
        [v6 setRecordName:v29];

        v30 = v6;
        v31 = v16;
LABEL_23:
        [v30 setServerSystemFieldsRecord:v31];
        goto LABEL_24;
      }
    }

    else
    {
      v34 = MEMORY[0x277CBEAD8];
      v35 = *MEMORY[0x277CBE658];
      v36 = [v16 recordID];
      v37 = [v7 recordID];
      [v34 raise:v35 format:{@"Trying to de-duplicate two identical records %@ and %@", v36, v37}];
    }

    v27 = 0;
  }

  else
  {
    v32 = [v7 recordID];
    v33 = [v32 recordName];
    [v6 setRecordName:v33];

    [v6 setServerSystemFieldsRecord:v7];
    v27 = [v7 recordID];
  }

  v26 = 0;
LABEL_24:
  if (v26 | v27)
  {
    v60 = v16;
    v41 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager deduplicateRecordForKeyValue:withNewlyFetchedRecord:];
    }

    if (v27)
    {
      v65[0] = v27;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
    }

    else
    {
      v42 = 0;
    }

    v59 = v42;
    v43 = self;
    if (v26)
    {
      v64 = v26;
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
    }

    else
    {
      v44 = 0;
    }

    v45 = [v27 zoneID];
    v46 = [v45 zoneName];
    v47 = v46;
    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v49 = [v26 zoneID];
      v48 = [v49 zoneName];
    }

    [(SYDSyncManager *)v43 addKeyValueRecordIDsToSave:v59 recordIDsToDelete:v44 storeIdentifier:v48];
    if (v48)
    {
      v50 = [(SYDSyncManager *)v43 testConfiguration];

      if (!v50)
      {
        v63[0] = v48;
        v62[0] = @"storeIdentifier";
        v62[1] = @"containerIdentifier";
        v58 = [(SYDSyncManager *)v43 container];
        v57 = [v58 containerIdentifier];
        v63[1] = v57;
        v62[2] = @"containerEnvironment";
        v51 = MEMORY[0x277CCABB0];
        v56 = [(SYDSyncManager *)v43 container];
        v52 = [v56 containerID];
        v53 = [v51 numberWithInteger:{objc_msgSend(v52, "environment")}];
        v63[2] = v53;
        v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:3];
        AnalyticsSendEvent();
      }
    }

    v16 = v60;
  }

LABEL_41:
  v55 = *MEMORY[0x277D85DE8];
}

- (void)didFetchRecordDeletion:(id)a3 recordType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SYDSyncManager_didFetchRecordDeletion_recordType___block_invoke;
  block[3] = &unk_279D2F768;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, block);
}

void __52__SYDSyncManager_didFetchRecordDeletion_recordType___block_invoke(id *a1)
{
  if (([a1[4] isEqual:@"KVSRecord"] & 1) != 0 || objc_msgSend(a1[4], "isEqualToString:", @"EncryptedKeyValue"))
  {
    v2 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __52__SYDSyncManager_didFetchRecordDeletion_recordType___block_invoke_cold_2(a1);
    }

    v3 = [a1[6] pendingDeletedRecordIDs];
    [v3 addObject:a1[5]];
LABEL_6:

    return;
  }

  if ([a1[4] isEqual:@"KVSSyncAnchorRecord"])
  {
    v4 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __52__SYDSyncManager_didFetchRecordDeletion_recordType___block_invoke_cold_1(a1);
    }

    v3 = [a1[6] coreDataStore];
    v5 = [a1[5] zoneID];
    v6 = [v5 zoneName];
    [v3 saveServerSyncAnchorSystemFieldsRecordData:0 forStoreWithIdentifier:v6 error:0];

    goto LABEL_6;
  }
}

- (void)handleSyncEngineStateUpdate:(id)a3
{
  v4 = a3;
  v5 = [(SYDSyncManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__SYDSyncManager_handleSyncEngineStateUpdate___block_invoke;
  v7[3] = &unk_279D2F678;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __46__SYDSyncManager_handleSyncEngineStateUpdate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) processPendingFetchedRecordsWithReason:@"updated metadata"];
  v2 = *(a1 + 40);
  v8 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v8];
  v4 = v8;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [*(a1 + 32) coreDataStore];
    [v7 saveSyncEngineStateSerialization:v3 error:0];
  }

  else
  {
    v7 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__SYDSyncManager_handleSyncEngineStateUpdate___block_invoke_cold_1();
    }
  }
}

- (void)didDeleteRecordZoneWithID:(id)a3
{
  v4 = a3;
  v5 = [(SYDSyncManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SYDSyncManager_didDeleteRecordZoneWithID___block_invoke;
  v7[3] = &unk_279D2F678;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __44__SYDSyncManager_didDeleteRecordZoneWithID___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __44__SYDSyncManager_didDeleteRecordZoneWithID___block_invoke_cold_1(a1);
  }

  v3 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:*(a1 + 32)];
  v4 = [*(a1 + 40) engine];
  v5 = [v4 state];
  v6 = [objc_alloc(MEMORY[0x277CBC728]) initWithZone:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v5 addPendingDatabaseChanges:v7];

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) zoneName];
  [v8 markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)zoneWithIDWasPurged:(id)a3
{
  v4 = a3;
  v5 = [(SYDSyncManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SYDSyncManager_zoneWithIDWasPurged___block_invoke;
  v7[3] = &unk_279D2F678;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __38__SYDSyncManager_zoneWithIDWasPurged___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_26C384000, v2, OS_LOG_TYPE_INFO, "Zone was purged: %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 32) zoneName];
  v5 = [*(a1 + 40) coreDataStore];
  [v5 deleteDataForStoreWithIdentifier:v4 error:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)syncEngine:(id)a3 nextFetchChangesOptionsForContext:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 options];
  v8 = [(SYDSyncManager *)self engine];

  if (v8 == v6)
  {
    v9 = [v7 scope];
    v10 = [v9 zoneIDs];
    v11 = [v10 count];

    if (v11)
    {
      v38 = v7;
      v12 = objc_opt_new();
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v39 = v9;
      v13 = [v9 zoneIDs];
      v14 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v46;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v46 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v45 + 1) + 8 * i);
            v19 = [v18 zoneName];
            v20 = [(SYDSyncManager *)self shouldSyncStoreWithIdentifier:v19];

            if (v20)
            {
              [v12 addObject:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
        }

        while (v15);
      }

      v9 = v39;
      v21 = [v39 zoneIDs];
      v22 = [v12 isEqual:v21];

      if (v22)
      {
        v7 = v38;
LABEL_32:

        goto LABEL_33;
      }

      v35 = SYDGetCloudKitLog();
      v7 = v38;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [SYDSyncManager syncEngine:nextFetchChangesOptionsForContext:];
      }

      v34 = [objc_alloc(MEMORY[0x277CBC700]) initWithZoneIDs:v12];
    }

    else
    {
      v23 = [v9 excludedZoneIDs];
      v24 = [v23 count];

      if (v24)
      {
LABEL_33:

        goto LABEL_34;
      }

      v40 = v9;
      v12 = objc_opt_new();
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v25 = [v6 state];
      v26 = [v25 zoneIDsWithUnfetchedServerChanges];

      v27 = [v26 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v42;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v42 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v41 + 1) + 8 * j);
            v32 = [v31 zoneName];
            if (![(SYDSyncManager *)self shouldSyncStoreWithIdentifier:v32])
            {
              [v12 addObject:v31];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v41 objects:v49 count:16];
        }

        while (v28);
      }

      if (![v12 count])
      {
        v9 = v40;
        goto LABEL_32;
      }

      v33 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        [SYDSyncManager syncEngine:nextFetchChangesOptionsForContext:];
      }

      v34 = [objc_alloc(MEMORY[0x277CBC700]) initWithExcludedZoneIDs:v12];
      v9 = v40;
    }

    [v7 setScope:{v34, v38}];

    goto LABEL_32;
  }

LABEL_34:

  v36 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)syncEngine:(id)a3 relatedApplicationBundleIdentifiersForZoneIDs:(id)a4 recordIDs:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v34 + 1) + 8 * i) zoneName];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v12);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v30 + 1) + 8 * j) zoneID];
        v22 = [v21 zoneName];
        [v9 addObject:v22];
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v18);
  }

  v23 = [(SYDSyncManager *)self delegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v25 = [(SYDSyncManager *)self delegate];
    v26 = [v9 allObjects];
    v27 = [v25 applicationIdentifiersForStoreIdentifiers:v26];
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)deleteDataFromDisk
{
  v3 = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SYDSyncManager_deleteDataFromDisk__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __36__SYDSyncManager_deleteDataFromDisk__block_invoke(uint64_t a1)
{
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __36__SYDSyncManager_deleteDataFromDisk__block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) coreDataStore];
  [v3 destroyPersistentStore];
}

- (void)registerForFirstUnlockNotificationsIfNecessary
{
  v3 = [(SYDSyncManager *)self coreDataStore];
  v4 = [v3 fileProtectionType];
  v5 = *MEMORY[0x277CCA1B8];

  if (v4 != v5 && !self->_engine)
  {
    v6 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26C384000, v6, OS_LOG_TYPE_INFO, "Will register for first unlock notifications", buf, 2u);
    }

    objc_initWeak(buf, self);
    v7 = *MEMORY[0x277D28B30];
    v8 = dispatch_get_global_queue(0, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __64__SYDSyncManager_registerForFirstUnlockNotificationsIfNecessary__block_invoke;
    handler[3] = &unk_279D2F588;
    objc_copyWeak(&v10, buf);
    notify_register_dispatch(v7, &self->_mobileKeybagNotifyToken, v8, handler);

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __64__SYDSyncManager_registerForFirstUnlockNotificationsIfNecessary__block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_26C384000, "kvs/lock-status-notification", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (MKBDeviceUnlockedSinceBoot())
    {
      v8 = 0;
      v4 = [WeakRetained engineWithError:&v8];
      v5 = v8;

      if (v4)
      {
        v6 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v7 = 0;
          _os_log_impl(&dword_26C384000, v6, OS_LOG_TYPE_INFO, "Successfully initialized engine after first unlock notification", v7, 2u);
        }
      }

      else
      {
        v6 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __64__SYDSyncManager_registerForFirstUnlockNotificationsIfNecessary__block_invoke_cold_1();
        }
      }

      if ([WeakRetained mobileKeybagNotifyToken] != -1)
      {
        notify_cancel([WeakRetained mobileKeybagNotifyToken]);
        [WeakRetained setMobileKeybagNotifyToken:0xFFFFFFFFLL];
      }
    }

    else
    {
      v5 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __64__SYDSyncManager_registerForFirstUnlockNotificationsIfNecessary__block_invoke_cold_2();
      }
    }
  }

  else
  {
    v5 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __64__SYDSyncManager_registerForFirstUnlockNotificationsIfNecessary__block_invoke_cold_3();
    }
  }

  os_activity_scope_leave(&state);
}

- (void)performOneTimeDataSeparatedLocalDataResetIfNecessary
{
  v3 = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SYDSyncManager_performOneTimeDataSeparatedLocalDataResetIfNecessary__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __70__SYDSyncManager_performOneTimeDataSeparatedLocalDataResetIfNecessary__block_invoke(uint64_t a1)
{
  if (+[SYDSyncManager isDataSeparated](SYDSyncManager, "isDataSeparated") && ([*(a1 + 32) coreDataStore], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "hasPerformedOneTimeDataSeparatedLocalDataReset"), v2, (v3 & 1) == 0))
  {
    v8 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26C384000, v8, OS_LOG_TYPE_INFO, "Detected data separated device that hasn't performed a one time local data reset. Performing reset now.", buf, 2u);
    }

    v9 = [*(a1 + 32) coreDataStore];
    [v9 resetPersistentStore];

    v4 = [*(a1 + 32) coreDataStore];
    v5 = v4;
    v13 = 0;
    v6 = &v13;
    v7 = &v13;
  }

  else
  {
    v4 = [*(a1 + 32) coreDataStore];
    v5 = v4;
    v12 = 0;
    v6 = &v12;
    v7 = &v12;
  }

  [v4 setHasPerformedOneTimeDataSeparatedLocalDataReset:1 error:{v7, v12, v13}];
  v10 = *v6;

  if (v10)
  {
    v11 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __70__SYDSyncManager_performOneTimeDataSeparatedLocalDataResetIfNecessary__block_invoke_cold_1();
    }
  }
}

+ (BOOL)isDataSeparated
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 listAllPersonaWithAttributes];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) isDataSeparatedPersona])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)initWithContainer:coreDataStore:storeType:testConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [v4 handleFailureInMethod:v0 object:v1 file:@"SYDSyncManager.m" lineNumber:71 description:{@"Must specify a container for %@", v3}];
}

- (void)initWithContainer:coreDataStore:storeType:testConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_17();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [v4 handleFailureInMethod:v0 object:v1 file:@"SYDSyncManager.m" lineNumber:72 description:{@"Must specify a database URL for %@", v3}];
}

- (void)initWithContainer:coreDataStore:storeType:testConfiguration:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initializeSyncEngineWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Not initializing sync engine due to error getting sync engine state from database: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initializeSyncEngineWithError:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)engine
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_26C384000, v0, OS_LOG_TYPE_FAULT, "Unable to initialize engine: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_1(void *a1, os_log_t log)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  if (v4)
  {
    v6 = a1[4];
    v7 = objc_opt_class();
    v5 = NSStringFromClass(v7);
  }

  else
  {
    v5 = @"nil";
  }

  v8 = a1[5];
  v9 = a1[6];
  v11 = 138413059;
  v12 = v5;
  v13 = 2160;
  v14 = 1752392040;
  v15 = 2113;
  v16 = v8;
  v17 = 2112;
  v18 = v9;
  _os_log_debug_impl(&dword_26C384000, log, OS_LOG_TYPE_DEBUG, "Setting %@ for key <(%{private, mask.hash}@)> in store <(%@)>", &v11, 0x2Au);
  if (v4)
  {
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Error fetching existing key value: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_13(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_5(uint64_t *a1)
{
  OUTLINED_FUNCTION_13(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_6(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Error saving value for key: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_7()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_9(uint64_t *a1)
{
  OUTLINED_FUNCTION_13(a1, *MEMORY[0x277D85DE8]);
  v4 = 141558275;
  v5 = 1752392040;
  v6 = 2113;
  v7 = v1;
  _os_log_fault_impl(&dword_26C384000, v2, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF KVS: Trying to set a nil object for key <(%{private, mask.hash}@)>, but we should have early returned above", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_10(uint64_t *a1)
{
  OUTLINED_FUNCTION_13(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(&dword_26C384000, v3, v4, "Unable to get or create value for key %{private}@ in %@");
  v5 = *MEMORY[0x277D85DE8];
}

void __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Error fetching while removing value for key: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Error marking key-value as deleted: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeStoresWithIdentifiers:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __69__SYDSyncManager_synchronizeStoresWithIdentifiers_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)synchronizeAllStoresWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)savePendingChangesToCloudForStoreIdentifiers:(void *)a1 group:completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)savePendingChangesToCloudForStoreIdentifiers:group:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)savePendingChangesToCloudForStoreIdentifiers:group:completionHandler:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Failed to load engine when saving pending changes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_101_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error modify pending records: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_101_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchChangesFromCloudForStoreIdentifiers:(void *)a1 group:completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchChangesFromCloudForStoreIdentifiers:group:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchChangesFromCloudForStoreIdentifiers:group:completionHandler:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Failed to load engine when fetching changes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_108_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error fetching records: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_108_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_108_cold_3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__SYDSyncManager_deleteDataFromCloudWithCompletionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error fetching all zones for deleting data from cloud: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__SYDSyncManager_deleteDataFromCloudWithCompletionHandler___block_invoke_115_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error deleting deleting data from cloud: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__SYDSyncManager_markAllKeyValuesAsNeedingToBeUploaded__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__SYDSyncManager_markAllKeyValuesAsNeedingToBeUploaded__block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error getting store identifiers from database while trying to mark key values as needing to be uploaded: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_26C384000, v0, v1, "Error fetching record names from database when marking key values as needing to be uploaded for %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)addPendingDatabaseChanges:storeIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addKeyValueRecordIDsToSave:recordIDsToDelete:storeIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addSyncAnchorRecordIDToSaveIfNecessaryForStoreIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __47__SYDSyncManager_resetSyncEngineWithContainer___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:handleEvent:.cold.1()
{
  OUTLINED_FUNCTION_13_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = SYDStringForStoreType([v0 storeType]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:nextRecordZoneChangeBatchForContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)recordToSaveForRecordID:(void *)a1 error:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)recordToSaveForRecordID:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_26C384000, v0, v1, "Error getting key value for %@ when returning record to sync engine: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)recordToSaveForRecordID:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_26C384000, v0, v1, "Error getting sync anchor data for %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)recordToSaveForRecordID:error:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error unarchiving server sync anchor record: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)recordToSaveForRecordID:(void *)a1 error:.cold.5(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __32__SYDSyncManager_didSaveRecord___block_invoke_cold_1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 recordID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didSaveKeyValueRecord:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didSaveKeyValueRecord:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error fetching key value after saving record: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didSaveKeyValueRecord:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error saving new server system fields record: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didSaveKeyValueRecord:(void *)a1 .cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  v2 = [v1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)failedToSaveKeyValueRecord:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_26C384000, v0, v1, "Error clearing server system fields for records in %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)failedToSaveKeyValueRecord:error:.cold.2()
{
  OUTLINED_FUNCTION_13_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 recordID];
  v2 = [v1 syd_shortDescription];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)failedToSaveKeyValueRecord:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Unable to save key value to database when processing CKErrorUnknownItem: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)failedToSaveKeyValueRecord:(void *)a1 error:.cold.4(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  v2 = [v1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)failedToSaveKeyValueRecord:(void *)a1 error:.cold.5(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)failedToSaveKeyValueRecord:(void *)a1 error:.cold.6(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  v2 = [v1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)failedToSaveKeyValueRecord:(void *)a1 error:.cold.7(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  v2 = [v1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)failedToSaveKeyValueRecord:error:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error saving key value after taking server record: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)failedToSaveKeyValueRecord:error:.cold.9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error fetching key-value from database trying to resolve a conflict on a server record with an asset: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)failedToSaveKeyValueRecord:error:.cold.11()
{
  OUTLINED_FUNCTION_13_0();
  v7 = *MEMORY[0x277D85DE8];
  v1 = [v0 syd_shortDescription];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error fetching key-value after deleting record from the cloud: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error removing key-value from database after it was deleted in the cloud: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_5(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __52__SYDSyncManager_didFailToDeleteRecordWithID_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_17();
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(v1 + 32) syd_shortDescription];
  v3 = *(v0 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __33__SYDSyncManager_didFetchRecord___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_13(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveSyncAnchorSystemFieldsRecord:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)saveSyncAnchorSystemFieldsRecord:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Failed to save sync anchor system fields: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveSyncAnchorSystemFieldsRecord:(void *)a1 .cold.3(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)processPendingFetchedRecordsWithReason:.cold.1()
{
  OUTLINED_FUNCTION_13_0();
  v1 = v0;
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v0 pendingFetchedRecords];
  [v2 count];
  v3 = [v1 pendingDeletedRecordIDs];
  [v3 count];
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)processFetchedRecords:deletedRecordIDs:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13_0();
  v7 = *MEMORY[0x277D85DE8];
  [v1 count];
  [v0 count];
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_17();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*v1 object:*v0 file:@"SYDSyncManager.m" lineNumber:1591 description:@"Trying to process a record without a SYDKeyValue"];
}

void __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Failed to save key values from fetched records: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Failed to get key values from database to process fetched records: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deduplicateRecordForKeyValue:(NSObject *)a3 withNewlyFetchedRecord:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [a1 recordName];
  v7 = [a2 recordID];
  v8 = [v7 recordName];
  v9 = [a1 key];
  v11 = 138412803;
  v12 = v6;
  v13 = 2112;
  v14 = v8;
  v15 = 2113;
  v16 = v9;
  _os_log_debug_impl(&dword_26C384000, a3, OS_LOG_TYPE_DEBUG, "Local record name (%@) and fetched record name (%@) do not match for key (%{private}@)", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deduplicateRecordForKeyValue:(void *)a1 withNewlyFetchedRecord:.cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  v2 = [v1 recordName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deduplicateRecordForKeyValue:(void *)a1 withNewlyFetchedRecord:.cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  v2 = [v1 recordName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deduplicateRecordForKeyValue:withNewlyFetchedRecord:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__SYDSyncManager_didFetchRecordDeletion_recordType___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __52__SYDSyncManager_didFetchRecordDeletion_recordType___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __46__SYDSyncManager_handleSyncEngineStateUpdate___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error archiving metadata serialization: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__SYDSyncManager_didDeleteRecordZoneWithID___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:nextFetchChangesOptionsForContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:nextFetchChangesOptionsForContext:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __39__SYDSyncManager_didEndFetchingChanges__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __39__SYDSyncManager_didEndFetchingChanges__block_invoke_cold_3(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 storeIdentifiersWithChangedValuesDuringFetchChanges];
  [v1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __36__SYDSyncManager_deleteDataFromDisk__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__SYDSyncManager_registerForFirstUnlockNotificationsIfNecessary__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Still unable to initialize engine after first unlock notification: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__SYDSyncManager_registerForFirstUnlockNotificationsIfNecessary__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __70__SYDSyncManager_performOneTimeDataSeparatedLocalDataResetIfNecessary__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error calling setHasPerformedOneTimeDataSeparatedLocalDataReset: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end