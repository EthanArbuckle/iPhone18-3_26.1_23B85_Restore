@interface BRCSharedDatabaseSyncOperation
+ (id)queue;
- (BRCSharedDatabaseSyncOperation)initWithSyncContext:(id)context sessionContext:(id)sessionContext changeState:(id)state;
- (id)createActivity;
- (void)_performAfterAddingOwnerKeysForZoneIDs:(id)ds block:(id)block;
- (void)_performAfterRegisteringForPushes:(id)pushes;
- (void)_performFetchChangedZones;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRCSharedDatabaseSyncOperation

+ (id)queue
{
  if (queue_once != -1)
  {
    +[BRCSharedDatabaseSyncOperation queue];
  }

  v3 = queue_queue;

  return v3;
}

void __39__BRCSharedDatabaseSyncOperation_queue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.sharedb", v0);

  v2 = queue_queue;
  queue_queue = v1;
}

- (BRCSharedDatabaseSyncOperation)initWithSyncContext:(id)context sessionContext:(id)sessionContext changeState:(id)state
{
  stateCopy = state;
  v13.receiver = self;
  v13.super_class = BRCSharedDatabaseSyncOperation;
  v10 = [(_BRCOperation *)&v13 initWithName:@"sync/sharedb" syncContext:context sessionContext:sessionContext];
  v11 = v10;
  if (v10)
  {
    [(BRCSharedDatabaseSyncOperation *)v10 setQueuePriority:4];
    objc_storeStrong(&v11->_changeState, state);
  }

  return v11;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync/sharedb", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  [(BRCSharedDatabaseSyncOperation *)self hash];
  kdebug_trace();
  shareDBSyncCompletionBlock = [(BRCSharedDatabaseSyncOperation *)self shareDBSyncCompletionBlock];
  if (shareDBSyncCompletionBlock)
  {
    (shareDBSyncCompletionBlock)[2](shareDBSyncCompletionBlock, [resultCopy BOOLValue], errorCopy);
    [(BRCSharedDatabaseSyncOperation *)self setShareDBSyncCompletionBlock:0];
  }

  v9.receiver = self;
  v9.super_class = BRCSharedDatabaseSyncOperation;
  [(_BRCOperation *)&v9 finishWithResult:resultCopy error:errorCopy];
}

- (void)_performAfterAddingOwnerKeysForZoneIDs:(id)ds block:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  serverReadWriteDatabaseFacade = [(BRCSessionContext *)self->super._sessionContext serverReadWriteDatabaseFacade];
  serialQueue = [serverReadWriteDatabaseFacade serialQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__BRCSharedDatabaseSyncOperation__performAfterAddingOwnerKeysForZoneIDs_block___block_invoke;
  v13[3] = &unk_2784FF5B8;
  v14 = serverReadWriteDatabaseFacade;
  v15 = dsCopy;
  v16 = blockCopy;
  v10 = blockCopy;
  v11 = dsCopy;
  v12 = serverReadWriteDatabaseFacade;
  dispatch_async_with_logs_0(serialQueue, v13);
}

void __79__BRCSharedDatabaseSyncOperation__performAfterAddingOwnerKeysForZoneIDs_block___block_invoke(id *a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__BRCSharedDatabaseSyncOperation__performAfterAddingOwnerKeysForZoneIDs_block___block_invoke_2;
  v3[3] = &unk_2784FF590;
  v2 = a1[4];
  v4 = a1[5];
  v5 = a1[4];
  v6 = a1[6];
  [v2 groupInTransaction:v3];
}

uint64_t __79__BRCSharedDatabaseSyncOperation__performAfterAddingOwnerKeysForZoneIDs_block___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v12 + 1) + 8 * v6) ownerName];
        v9 = [v7 getOrCreateUserKeyForOwnerName:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 48) + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_performAfterRegisteringForPushes:(id)pushes
{
  v17[1] = *MEMORY[0x277D85DE8];
  pushesCopy = pushes;
  v5 = [objc_alloc(MEMORY[0x277CBC2A0]) initWithSubscriptionID:@"sharedZoneSubscription"];
  v6 = objc_alloc_init(MEMORY[0x277CBC4D0]);
  [v6 setShouldSendContentAvailable:1];
  [v5 setNotificationInfo:v6];
  v7 = objc_alloc(MEMORY[0x277CBC4B0]);
  v17[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v9 = [v7 initWithSubscriptionsToSave:v8 subscriptionIDsToDelete:0];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__BRCSharedDatabaseSyncOperation__performAfterRegisteringForPushes___block_invoke;
  v13[3] = &unk_2784FF5E0;
  v15 = pushesCopy;
  v16 = v9;
  v14 = v5;
  v10 = pushesCopy;
  v11 = v5;
  [v9 setModifySubscriptionsCompletionBlock:v13];
  [(_BRCOperation *)self addSubOperation:v9];

  v12 = *MEMORY[0x277D85DE8];
}

void __68__BRCSharedDatabaseSyncOperation__performAfterRegisteringForPushes___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v9 brc_cloudKitErrorForSubscriptionID:@"sharedZoneSubscription"];
  if ([(__CFString *)v10 brc_containsCloudKitUnderlyingErrorCode:2032])
  {

    v10 = 0;
  }

  memset(v19, 0, sizeof(v19));
  __brc_create_section(0, "[BRCSharedDatabaseSyncOperation _performAfterRegisteringForPushes:]_block_invoke", 115, 0, v19);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = v19[0];
    v15 = *(a1 + 32);
    v16 = [*(a1 + 48) operationID];
    v17 = v16;
    v18 = @"success";
    *buf = 134219010;
    if (v10)
    {
      v18 = v10;
    }

    v21 = v14;
    v22 = 2112;
    v23 = v15;
    v24 = 2112;
    v25 = v16;
    v26 = 2112;
    v27 = v18;
    v28 = 2112;
    v29 = v11;
    _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Handling result of creating %@ (operationID=%@): %@%@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(v19);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_performFetchChangedZones
{
  changeToken = [(BRCServerChangeState *)self->_changeState changeToken];
  v4 = [objc_alloc(MEMORY[0x277CBC388]) initWithPreviousServerChangeToken:changeToken];
  [v4 setFetchAllChanges:0];
  v5 = +[BRCSharedDatabaseSyncOperation queue];
  [v4 setCallbackQueue:v5];

  v6 = [BRCUserDefaults defaultsForMangledID:0];
  [v4 setResultsLimit:{objc_msgSend(v6, "sharedDBSyncDownBatchRecordsCount")}];

  objc_initWeak(&location, v4);
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__0;
  v15[4] = __Block_byref_object_dispose__0;
  array = [MEMORY[0x277CBEB18] array];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__0;
  v13[4] = __Block_byref_object_dispose__0;
  array2 = [MEMORY[0x277CBEB18] array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__BRCSharedDatabaseSyncOperation__performFetchChangedZones__block_invoke;
  v11[3] = &unk_2784FF608;
  objc_copyWeak(&v12, &location);
  v11[4] = v15;
  [v4 setRecordZoneWithIDChangedBlock:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__BRCSharedDatabaseSyncOperation__performFetchChangedZones__block_invoke_21;
  v9[3] = &unk_2784FF608;
  objc_copyWeak(&v10, &location);
  v9[4] = v13;
  [v4 setRecordZoneWithIDWasDeletedBlock:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__BRCSharedDatabaseSyncOperation__performFetchChangedZones__block_invoke_22;
  v7[3] = &unk_2784FF658;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  v7[5] = v15;
  v7[6] = v13;
  [v4 setFetchDatabaseChangesCompletionBlock:v7];
  [(_BRCOperation *)self addSubOperation:v4];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  _Block_object_dispose(v13, 8);

  _Block_object_dispose(v15, 8);
  objc_destroyWeak(&location);
}

void __59__BRCSharedDatabaseSyncOperation__performFetchChangedZones__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412802;
    v9 = WeakRetained;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ zone %@ changed%@", &v8, 0x20u);
  }

  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  v7 = *MEMORY[0x277D85DE8];
}

void __59__BRCSharedDatabaseSyncOperation__performFetchChangedZones__block_invoke_21(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412802;
    v9 = WeakRetained;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ zone %@ changed%@", &v8, 0x20u);
  }

  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  v7 = *MEMORY[0x277D85DE8];
}

void __59__BRCSharedDatabaseSyncOperation__performFetchChangedZones__block_invoke_22(uint64_t a1, void *a2, char a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v8)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      *buf = 138412802;
      v27 = WeakRetained;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      *v31 = v10;
      _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] %@ failed: %@%@", buf, 0x20u);
    }

    [*(a1 + 32) completedWithResult:0 error:v8];
  }

  else
  {
    memset(v25, 0, sizeof(v25));
    __brc_create_section(0, "[BRCSharedDatabaseSyncOperation _performFetchChangedZones]_block_invoke", 151, 0, v25);
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v18 = v25[0];
      v19 = [*(*(*(a1 + 40) + 8) + 40) count];
      v20 = [*(*(*(a1 + 48) + 8) + 40) count];
      *buf = 134219010;
      v27 = v18;
      v28 = 2112;
      v29 = WeakRetained;
      v30 = 1024;
      *v31 = v19;
      *&v31[4] = 1024;
      *&v31[6] = v20;
      v32 = 2112;
      v33 = v12;
      _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@ done: %u zones were changed and %u deleted%@", buf, 0x2Cu);
    }

    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = *(*(v14 + 8) + 40);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __59__BRCSharedDatabaseSyncOperation__performFetchChangedZones__block_invoke_23;
    v21[3] = &unk_2784FF2B8;
    v23 = v14;
    v21[4] = v15;
    v22 = v7;
    v24 = a3;
    [v15 _performAfterAddingOwnerKeysForZoneIDs:v16 block:v21];

    __brc_leave_section(v25);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __59__BRCSharedDatabaseSyncOperation__performFetchChangedZones__block_invoke_23(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BRCSharedDatabaseSyncOperation queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__BRCSharedDatabaseSyncOperation__performFetchChangedZones__block_invoke_2;
  v9[3] = &unk_2784FF630;
  v5 = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v8 = *(a1 + 40);
  v6 = v8;
  v12 = v8;
  v13 = *(a1 + 56);
  v7 = v3;
  dispatch_async_with_logs_0(v4, v9);
}

void __59__BRCSharedDatabaseSyncOperation__performFetchChangedZones__block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = *(a1 + 40);
    v4 = MEMORY[0x277CCABB0];
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = *(*(*(a1 + 56) + 8) + 40);
    v5 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v32;
      *&v6 = 138412290;
      v27 = v6;
      do
      {
        v9 = 0;
        do
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [objc_alloc(MEMORY[0x277CFAE60]) initWithRecordZoneID:*(*(&v31 + 1) + 8 * v9)];
          v11 = [*(*(a1 + 40) + 256) zoneAppRetriever];
          v12 = [v11 getOrCreateSharedZones:v10];

          if (([*(*(a1 + 40) + 504) everCaughtUp] & 1) == 0)
          {
            v13 = [v12 serverZone];
            v14 = [v13 changeState];

            if (v14)
            {
              [v14 setNewlyCreatedDuringInitialSync:1];
            }

            else
            {
              v15 = brc_bread_crumbs();
              v16 = brc_default_log();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
              {
                *buf = v27;
                v36 = v15;
                _os_log_fault_impl(&dword_223E7A000, v16, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: shared zone should have share server state%@", buf, 0xCu);
              }
            }
          }

          v17 = brc_bread_crumbs();
          v18 = brc_default_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v36 = v12;
            v37 = 2112;
            v38 = v17;
            _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] scheduling sync for %@%@", buf, 0x16u);
          }

          if (v12)
          {
            v19 = [v12 db];
            v20 = [v19 serialQueue];
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __59__BRCSharedDatabaseSyncOperation__performFetchChangedZones__block_invoke_25;
            v29[3] = &unk_2784FF450;
            v30 = v12;
            dispatch_async_with_logs_0(v20, v29);

            v21 = v30;
          }

          else
          {
            v21 = brc_bread_crumbs();
            v22 = brc_default_log();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
            {
              *buf = v27;
              v36 = v21;
              _os_log_fault_impl(&dword_223E7A000, v22, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: there should be a container%@", buf, 0xCu);
            }
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v7);
    }

    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __59__BRCSharedDatabaseSyncOperation__performFetchChangedZones__block_invoke_2_cold_1(a1, v23, v24);
    }

    [*(*(a1 + 40) + 504) updateWithServerChangeToken:*(a1 + 48) clientRequestID:0 caughtUp:(*(a1 + 64) & 1) == 0];
    v3 = *(a1 + 40);
    v4 = MEMORY[0x277CCABB0];
    if (*(a1 + 32))
    {
      v2 = 0;
    }

    else
    {
      v2 = *(a1 + 64);
    }
  }

  v25 = [v4 numberWithInt:{v2, v27}];
  [v3 completedWithResult:v25 error:*(a1 + 32)];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *self;
  v5 = 134218242;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Sync: fetching changed zones in the shared-database%@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __38__BRCSharedDatabaseSyncOperation_main__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 completedWithResult:0 error:a2];
  }

  else
  {
    return [v2 _performFetchChangedZones];
  }
}

void __59__BRCSharedDatabaseSyncOperation__performFetchChangedZones__block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *(*(a1 + 40) + 504);
  v7 = prettyPrintServerChangeToken(*(a1 + 48), 0);
  v8 = v7;
  v9 = *(a1 + 64);
  v12 = 138413058;
  v13 = v6;
  if (v9)
  {
    v10 = "NO";
  }

  else
  {
    v10 = "YES";
  }

  v14 = 2112;
  v15 = v7;
  v16 = 2080;
  v17 = v10;
  v18 = 2112;
  v19 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] updating shared-database from %@ with token:%@ caught-up:%s%@", &v12, 0x2Au);

  v11 = *MEMORY[0x277D85DE8];
}

@end