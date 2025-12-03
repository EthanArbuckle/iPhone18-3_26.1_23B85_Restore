@interface BRCSharingDestroyShareOperation
- (BRCSharingDestroyShareOperation)initWithShare:(id)share zone:(id)zone sessionContext:(id)context;
- (id)createActivity;
- (void)main;
@end

@implementation BRCSharingDestroyShareOperation

- (BRCSharingDestroyShareOperation)initWithShare:(id)share zone:(id)zone sessionContext:(id)context
{
  contextCopy = context;
  zoneCopy = zone;
  shareCopy = share;
  recordID = [shareCopy recordID];
  recordName = [recordID recordName];
  v13 = [@"sharing/destroy-share" stringByAppendingPathComponent:recordName];

  v17.receiver = self;
  v17.super_class = BRCSharingDestroyShareOperation;
  v14 = [(BRCSharingModifyShareOperation *)&v17 initWithName:v13 zone:zoneCopy share:shareCopy sessionContext:contextCopy];

  br_sharingMisc = [MEMORY[0x277CBC4F8] br_sharingMisc];
  [(_BRCOperation *)v14 setGroup:br_sharingMisc];

  return v14;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sharing/destroy-share", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  session = [(BRCServerZone *)self->super._serverZone session];
  clientDB = [session clientDB];
  serialQueue = [clientDB serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__BRCSharingDestroyShareOperation_main__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __39__BRCSharingDestroyShareOperation_main__block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 528) recordID];
  v4 = [v3 brc_shareItemID];

  v5 = [*(*v2 + 520) clientZone];
  v6 = [v5 itemByItemID:v4];

  if ([*(*v2 + 520) isPrivateZone])
  {
    if ([v6 isDocument])
    {
      v7 = [v6 asDocument];
      v8 = [v7 baseRecord];

      v9 = [v6 asDocument];
      v10 = [v9 currentVersion];
      v11 = [v10 ckInfo];
      [v8 serializeSystemFields:v11];
    }

    else
    {
      v13 = [v6 asDirectory];
      v8 = [v13 folderRootStructureRecord];

      v9 = [v6 st];
      v10 = [v9 ckInfo];
      [v8 serializeSystemFields:v10];
    }

    v12 = objc_alloc(MEMORY[0x277CBC4A0]);
    if (v8)
    {
      v28[0] = v8;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CBC4A0]);
    v8 = 0;
  }

  v14 = 0;
  v15 = 1;
LABEL_9:
  v16 = [*(a1 + 32) shareID];
  v27 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v18 = [v12 initWithRecordsToSave:v14 recordIDsToDelete:v17];

  if ((v15 & 1) == 0)
  {
  }

  objc_initWeak(&location, v18);
  [v18 setAtomic:1];
  [v18 setSavePolicy:0];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __39__BRCSharingDestroyShareOperation_main__block_invoke_2;
  v23[3] = &unk_278504E70;
  objc_copyWeak(&v25, &location);
  v23[4] = *(a1 + 32);
  v19 = v6;
  v24 = v19;
  [v18 setModifyRecordsCompletionBlock:v23];
  v20 = [v18 callbackQueue];
  v21 = [*(a1 + 32) callbackQueue];
  dispatch_set_target_queue(v20, v21);

  [*(a1 + 32) addSubOperation:v18];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  v22 = *MEMORY[0x277D85DE8];
}

void __39__BRCSharingDestroyShareOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = [v9 count];

  if (!v8 && !v11)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __39__BRCSharingDestroyShareOperation_main__block_invoke_2_cold_1();
    }

    v8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: got an unexpected number of shares deleted"];
  }

  if (v8)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      v29 = [*(a1 + 32) shareID];
      *buf = 138413058;
      v35 = v29;
      v36 = 2112;
      v37 = v8;
      v38 = 2112;
      v39 = WeakRetained;
      v40 = 2112;
      v41 = v14;
      _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] failed to destroy share %@: %@ in %@%@", buf, 0x2Au);
    }

    v16 = *(a1 + 32);
    v17 = [v16 shareID];
    v18 = [v8 brc_cloudKitErrorForRecordID:v17];
    [v16 completedWithResult:0 error:v18];
  }

  else
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v30 = [*(a1 + 32) shareID];
      *buf = 138412802;
      v35 = v30;
      v36 = 2112;
      v37 = WeakRetained;
      v38 = 2112;
      v39 = v19;
      _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] destroyed share %@ in %@%@", buf, 0x20u);
    }

    v21 = *(a1 + 32);
    v22 = *(v21 + 528);
    *(v21 + 528) = 0;

    [*(a1 + 32) _updateDBAndSyncDownIfNeededWithShare:0 recordsToLearnCKInfo:v7];
    v23 = *(a1 + 40);
    if (v23)
    {
      v24 = [v23 fileObjectID];
      v25 = [v24 asString];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __39__BRCSharingDestroyShareOperation_main__block_invoke_166;
      v31[3] = &unk_2784FFFA8;
      v26 = *(a1 + 32);
      v32 = v24;
      v33 = v26;
      v27 = v24;
      [BRCImportUtil forceIngestionForItemID:v25 completionHandler:v31];
    }

    else
    {
      [*(a1 + 32) completedWithResult:MEMORY[0x277CBEC38] error:0];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __39__BRCSharingDestroyShareOperation_main__block_invoke_166(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Done forceIngestionForItemID %@ with error - %@%@", &v8, 0x20u);
  }

  [*(a1 + 40) completedWithResult:MEMORY[0x277CBEC38] error:0];
  v6 = *MEMORY[0x277D85DE8];
}

@end