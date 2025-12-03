@interface BRCContainerMetadataSyncUpOperation
- (BOOL)shouldRetryForError:(id)error;
- (BRCContainerMetadataSyncUpOperation)initWithSessionContext:(id)context metadataSyncPersistedState:(id)state;
- (id)_containerMetadataRecordsToSaveWithBatchSize:(unint64_t)size requestID:(unint64_t)d;
- (id)createActivity;
- (void)main;
- (void)performAfterSavingRecords:(id)records;
@end

@implementation BRCContainerMetadataSyncUpOperation

- (BRCContainerMetadataSyncUpOperation)initWithSessionContext:(id)context metadataSyncPersistedState:(id)state
{
  stateCopy = state;
  contextCopy = context;
  syncContextProvider = [contextCopy syncContextProvider];
  defaultSyncContext = [syncContextProvider defaultSyncContext];
  v13.receiver = self;
  v13.super_class = BRCContainerMetadataSyncUpOperation;
  v11 = [(_BRCOperation *)&v13 initWithName:@"sync-up/container-metadata" syncContext:defaultSyncContext sessionContext:contextCopy];

  if (v11)
  {
    objc_storeStrong(&v11->_metadataSyncState, state);
  }

  return v11;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync-up/container-metadata", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (id)_containerMetadataRecordsToSaveWithBatchSize:(unint64_t)size requestID:(unint64_t)d
{
  array = [MEMORY[0x277CBEB18] array];
  clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->super._sessionContext clientReadWriteDatabaseFacade];
  serialQueue = [clientReadWriteDatabaseFacade serialQueue];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __94__BRCContainerMetadataSyncUpOperation__containerMetadataRecordsToSaveWithBatchSize_requestID___block_invoke;
  v17 = &unk_278504578;
  selfCopy = self;
  v19 = array;
  dCopy = d;
  sizeCopy = size;
  v10 = array;
  dispatch_sync(serialQueue, &v14);

  if ([v10 count])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

void __94__BRCContainerMetadataSyncUpOperation__containerMetadataRecordsToSaveWithBatchSize_requestID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 256) zoneAppRetriever];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__BRCContainerMetadataSyncUpOperation__containerMetadataRecordsToSaveWithBatchSize_requestID___block_invoke_2;
  v7[3] = &unk_278508628;
  v4 = a1[5];
  v3 = a1[6];
  v7[4] = a1[4];
  v9 = v3;
  v5 = v4;
  v6 = a1[7];
  v8 = v5;
  v10 = v6;
  [v2 enumerateAppLibraries:v7];
}

uint64_t __94__BRCContainerMetadataSyncUpOperation__containerMetadataRecordsToSaveWithBatchSize_requestID___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 shouldSaveContainerMetadataServerside] & 1) == 0)
  {
    [v3 setContainerMetadataNeedsSyncUp:0];
LABEL_10:
    v9 = 1;
    goto LABEL_11;
  }

  if (![v3 containerMetadataNeedsSyncUp])
  {
    goto LABEL_10;
  }

  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v3 containerMetadata];
    v13 = [*(a1 + 32) operationID];
    v14 = [v13 UUIDString];
    v15 = 138412802;
    v16 = v12;
    v17 = 2112;
    v18 = v14;
    v19 = 2112;
    v20 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] preparing to sync up %@ in operation %@%@", &v15, 0x20u);
  }

  [v3 setContainerMetadataSyncRequestID:*(a1 + 48)];
  v6 = [MEMORY[0x277CBC5A0] brc_containerMetadataRecordWithContainer:v3];
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  v7 = [*(a1 + 40) count];
  v8 = *(a1 + 56);

  if (v7 < v8)
  {
    goto LABEL_10;
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)performAfterSavingRecords:(id)records
{
  recordsCopy = records;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  maxRecordCountInClientZoneModifyRecordsOperation = [v5 maxRecordCountInClientZoneModifyRecordsOperation];
  allocateNextRequestID = [(BRCContainerMetadataSyncPersistedState *)self->_metadataSyncState allocateNextRequestID];
  v7 = [(BRCContainerMetadataSyncUpOperation *)self _containerMetadataRecordsToSaveWithBatchSize:maxRecordCountInClientZoneModifyRecordsOperation requestID:allocateNextRequestID];
  v8 = v7;
  if (v7)
  {
    self->_shouldPerformAnotherBatch = [v7 count] >= maxRecordCountInClientZoneModifyRecordsOperation;
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(BRCContainerMetadataSyncUpOperation *)v8 performAfterSavingRecords:v9, v10];
    }

    v11 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v8 recordIDsToDelete:0];
    [v11 setSavePolicy:0];
    [v11 setAtomic:1];
    v12 = objc_opt_new();
    [v11 setConfiguration:v12];

    v13 = *MEMORY[0x277CFAD58];
    configuration = [v11 configuration];
    [configuration setSourceApplicationBundleIdentifier:v13];

    v15 = [MEMORY[0x277CBEA90] dataWithBytes:&allocateNextRequestID length:8];
    [v11 setClientChangeTokenData:v15];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __65__BRCContainerMetadataSyncUpOperation_performAfterSavingRecords___block_invoke;
    v23[3] = &unk_278503070;
    v24 = recordsCopy;
    [v11 setModifyRecordsCompletionBlock:v23];
    sessionContext = self->super._sessionContext;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __65__BRCContainerMetadataSyncUpOperation_performAfterSavingRecords___block_invoke_12;
    v20[3] = &unk_2784FFE90;
    v21 = v11;
    selfCopy = self;
    v17 = v11;
    [(BRCSessionContext *)sessionContext performAsyncOnClientReadWriteDatabaseWorkloop:v20];
  }

  else
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [(BRCContainerMetadataSyncUpOperation *)v18 performAfterSavingRecords:v19];
    }

    (*(recordsCopy + 2))(recordsCopy, 0);
  }
}

void __65__BRCContainerMetadataSyncUpOperation_performAfterSavingRecords___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v6 count];
    v15 = @"success";
    v16 = 134218498;
    v17 = v14;
    if (v7)
    {
      v15 = v7;
    }

    v18 = 2112;
    v19 = v15;
    v20 = 2112;
    v21 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] completed sync up for %lu records: %@%@", &v16, 0x20u);
  }

  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v6 count];
    v16 = 134218242;
    v17 = v12;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[NOTICE] saved %lu containers metadata in the cloud%@", &v16, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

void __65__BRCContainerMetadataSyncUpOperation_performAfterSavingRecords___block_invoke_12(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__BRCContainerMetadataSyncUpOperation_performAfterSavingRecords___block_invoke_2;
  v6[3] = &unk_2784FF478;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 scheduleFlushWithCheckpoint:0 whenFlushed:v6];
}

uint64_t __65__BRCContainerMetadataSyncUpOperation_performAfterSavingRecords___block_invoke_2(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __65__BRCContainerMetadataSyncUpOperation_performAfterSavingRecords___block_invoke_2_cold_1(a1);
  }

  return [*(a1 + 40) addSubOperation:*(a1 + 32)];
}

- (BOOL)shouldRetryForError:(id)error
{
  errorCopy = error;
  if (([errorCopy brc_isResetError] & 1) != 0 || !objc_msgSend(errorCopy, "brc_isCloudKitErrorSafeToSyncUpWithoutSyncDown"))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BRCContainerMetadataSyncUpOperation;
    v5 = [(_BRCOperation *)&v7 shouldRetryForError:errorCopy];
  }

  return v5;
}

- (void)main
{
  memset(v6, 0, sizeof(v6));
  __brc_create_section(0, "[BRCContainerMetadataSyncUpOperation main]", 188, 0, v6);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(BRCContainerMetadataSyncUpOperation *)v6 main];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__BRCContainerMetadataSyncUpOperation_main__block_invoke;
  v5[3] = &unk_2784FF540;
  v5[4] = self;
  [(BRCContainerMetadataSyncUpOperation *)self performAfterSavingRecords:v5];
  __brc_leave_section(v6);
}

@end