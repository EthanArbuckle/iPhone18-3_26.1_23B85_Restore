@interface BRCUploadBatchOperation
- (BRCUploadBatchOperation)initWithSyncContext:(id)a3 sessionContext:(id)a4 clientZone:(id)a5 group:(id)a6 callBackQueueTarget:(id)a7;
- (id)createActivity;
- (void)_publishProgressIfNecessaryForTransfer:(id)a3;
- (void)_publishUploadProgress:(id)a3;
- (void)_registerForDocumentReparentNotifications;
- (void)_unregisterForDocumentReparentNotifications;
- (void)_uploadRecordsByID:(id)a3;
- (void)addItem:(id)a3 stageID:(id)a4 record:(id)a5 transferSize:(unint64_t)a6;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)mainWithTransfers:(id)a3;
- (void)sendTransferCompletionCallBack:(id)a3 error:(id)a4;
@end

@implementation BRCUploadBatchOperation

- (BRCUploadBatchOperation)initWithSyncContext:(id)a3 sessionContext:(id)a4 clientZone:(id)a5 group:(id)a6 callBackQueueTarget:(id)a7
{
  v13 = a5;
  v14 = a7;
  v15 = a6;
  v16 = a4;
  v17 = a3;
  v18 = [v17 contextIdentifier];
  v19 = [@"upload" stringByAppendingPathComponent:v18];

  v23.receiver = self;
  v23.super_class = BRCUploadBatchOperation;
  v20 = [(BRCTransferBatchOperation *)&v23 initWithName:v19 syncContext:v17 sessionContext:v16 group:v15];

  if (v20)
  {
    objc_storeStrong(&v20->_clientZone, a5);
    v21 = [(_BRCOperation *)v20 callbackQueue];
    dispatch_set_target_queue(v21, v14);
  }

  return v20;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "upload", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)addItem:(id)a3 stageID:(id)a4 record:(id)a5 transferSize:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[BRCUpload alloc] initWithDocument:v12 stageID:v11 transferSize:a6];

  [(BRCUpload *)v13 setRecord:v10];
  [(BRCTransferBatchOperation *)self addTransfer:v13];
}

- (void)sendTransferCompletionCallBack:(id)a3 error:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(BRCUploadBatchOperation *)self perUploadCompletionBlock];
  if (v8)
  {
    v9 = [(BRCSessionContext *)self->super.super._sessionContext clientReadWriteDatabaseFacade];
    v10 = [v9 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__BRCUploadBatchOperation_sendTransferCompletionCallBack_error___block_invoke;
    block[3] = &unk_2784FFBF0;
    v17 = v8;
    v15 = v6;
    v16 = v7;
    dispatch_sync(v10, block);

    v11 = v17;
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, 0x90u))
    {
      *buf = 138412802;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v11;
      _os_log_error_impl(&dword_223E7A000, v12, 0x90u, "[ERROR] No per upload completion block for %@, error %@%@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_publishUploadProgress:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 progress];
  v6 = v5;
  if (v5)
  {
    if (([v5 isFinished] & 1) == 0 && (objc_msgSend(v6, "isPublished") & 1) == 0)
    {
      v7 = [v6 userInfo];
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA640]];

      if (!v8)
      {
        v9 = [v6 userInfo];
        v10 = [v9 valueForKey:@"ICDProgressObjectID"];

        v11 = [MEMORY[0x277CC6400] br_fpItemIDFromItemIdentifier:v10];
        if (v11)
        {
          objc_initWeak(location, v6);
          objc_initWeak(&from, v4);
          v12 = [MEMORY[0x277CC6408] defaultManager];
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __50__BRCUploadBatchOperation__publishUploadProgress___block_invoke;
          v16[3] = &unk_278502840;
          v17 = v10;
          v18 = self;
          objc_copyWeak(&v20, location);
          v19 = v4;
          objc_copyWeak(&v21, &from);
          [v12 fetchURLForItemID:v11 completionHandler:v16];

          objc_destroyWeak(&v21);
          objc_destroyWeak(&v20);

          objc_destroyWeak(&from);
          objc_destroyWeak(location);
        }

        else
        {
          v13 = brc_bread_crumbs();
          v14 = brc_default_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *location = 138412802;
            *&location[4] = self;
            v24 = 2112;
            v25 = v10;
            v26 = 2112;
            v27 = v13;
            _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - Can't find a file provider item ID for %@%@", location, 0x20u);
          }
        }
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __50__BRCUploadBatchOperation__publishUploadProgress___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      *buf = 138412802;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Got an error while fetching the URL of %@ - %@%@", buf, 0x20u);
    }
  }

  else
  {
    if (!v5)
    {
      __50__BRCUploadBatchOperation__publishUploadProgress___block_invoke_cold_1();
    }

    v9 = [*(a1 + 40) queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__BRCUploadBatchOperation__publishUploadProgress___block_invoke_103;
    v12[3] = &unk_278502818;
    objc_copyWeak(&v15, (a1 + 56));
    v13 = *(a1 + 48);
    v14 = v5;
    objc_copyWeak(&v16, (a1 + 64));
    dispatch_async(v9, v12);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __50__BRCUploadBatchOperation__publishUploadProgress___block_invoke_103(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (([WeakRetained isFinished] & 1) == 0 && (objc_msgSend(v3, "isPublished") & 1) == 0)
    {
      v4 = [v3 userInfo];
      v5 = *MEMORY[0x277CCA640];
      v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA640]];

      if (!v6)
      {
        v7 = brc_bread_crumbs();
        v8 = brc_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          __50__BRCUploadBatchOperation__publishUploadProgress___block_invoke_103_cold_1(a1);
        }

        [v3 setUserInfoObject:*(a1 + 40) forKey:v5];
        [v3 brc_publish];
      }
    }

    v9 = objc_loadWeakRetained((a1 + 56));
    if (v9)
    {
      [v9 setProgressPublished:{objc_msgSend(v3, "isPublished")}];
    }
  }
}

- (void)_unregisterForDocumentReparentNotifications
{
  if (self->_documentReparentNotificationToken)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_documentReparentNotificationToken];

    documentReparentNotificationToken = self->_documentReparentNotificationToken;
    self->_documentReparentNotificationToken = 0;
  }
}

- (void)_registerForDocumentReparentNotifications
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !_documentReparentNotificationToken we are already registered for document reparent notifications%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __68__BRCUploadBatchOperation__registerForDocumentReparentNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__BRCUploadBatchOperation__registerForDocumentReparentNotifications__block_invoke_2;
  v7[3] = &unk_2784FF478;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __68__BRCUploadBatchOperation__registerForDocumentReparentNotifications__block_invoke_2(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __68__BRCUploadBatchOperation__registerForDocumentReparentNotifications__block_invoke_2_cold_1(a1);
  }

  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKeyedSubscript:@"throttleID"];

  v6 = [*(a1 + 40) getTransferForTransferID:v5];
  [v6 recreateProgress];
}

- (void)mainWithTransfers:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[BRCTransferBatchOperation itemsCount](self, "itemsCount")}];
  [(BRCUploadBatchOperation *)self _registerForDocumentReparentNotifications];
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCUploadBatchOperation mainWithTransfers:?];
  }

  v34 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v32;
    *&v9 = 138412546;
    v26 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = v26;
          v36 = v13;
          v37 = 2112;
          v38 = v14;
          _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] %@%@", buf, 0x16u);
        }

        v16 = [v13 record];
        v17 = [v13 record];
        v18 = [v17 recordID];
        [v5 setObject:v16 forKeyedSubscript:v18];

        [(BRCUploadBatchOperation *)self _publishUploadProgress:v13];
        v19 = [(BRCSessionContext *)self->super.super._sessionContext analyticsReporter];
        v20 = [v13 itemID];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __45__BRCUploadBatchOperation_mainWithTransfers___block_invoke;
        v30[3] = &unk_278502890;
        v30[4] = self;
        [v19 lookupFSEventToSyncUpEventByItemID:v20 accessor:v30];

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v10);
  }

  [(BRCUploadBatchOperation *)self hash];
  kdebug_trace();
  v21 = [(BRCClientZone *)self->_clientZone serverZone];
  if ([v21 hasFetchedServerZoneState])
  {

LABEL_16:
    [(BRCUploadBatchOperation *)self _uploadRecordsByID:v5, v26];
    goto LABEL_17;
  }

  v22 = [(BRCClientZone *)self->_clientZone isPrivateZone];

  if (!v22)
  {
    goto LABEL_16;
  }

  v23 = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
  v24 = [(_BRCOperation *)self group];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __45__BRCUploadBatchOperation_mainWithTransfers___block_invoke_2;
  v28[3] = &unk_2784FFFA8;
  v28[4] = self;
  v29 = v5;
  [v23 createCloudKitZoneWithGroup:v24 completion:v28];

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __45__BRCUploadBatchOperation_mainWithTransfers___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 completedWithResult:0 error:a2];
  }

  else
  {
    return [v3 _uploadRecordsByID:*(a1 + 40)];
  }
}

- (void)_publishProgressIfNecessaryForTransfer:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BRCUploadBatchOperation _publishProgressIfNecessaryForTransfer:];
  }

  v5 = [(BRCTransferBatchOperation *)self queue];

  if (!v5)
  {
    [BRCUploadBatchOperation _publishProgressIfNecessaryForTransfer:];
  }

  [(BRCUploadBatchOperation *)self _publishUploadProgress:v4];
}

- (void)_uploadRecordsByID:(id)a3
{
  v4 = a3;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__19;
  v28[4] = __Block_byref_object_dispose__19;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__19;
  v26[4] = __Block_byref_object_dispose__19;
  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc(MEMORY[0x277CBC4A0]);
  v6 = [v4 allValues];
  v7 = [v5 initWithRecordsToSave:v6 recordIDsToDelete:0];

  [v7 setShouldOnlySaveAssetContent:1];
  v8 = [(_BRCOperation *)self callbackQueue];
  [v7 setCallbackQueue:v8];

  [v7 setSavePolicy:0];
  [v7 setAtomic:0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __46__BRCUploadBatchOperation__uploadRecordsByID___block_invoke;
  v25[3] = &unk_2785028B8;
  v25[4] = self;
  [v7 setPerRecordProgressBlock:v25];
  v9 = [BRCUserDefaults defaultsForMangledID:0];
  v10 = [v9 requestCKCacheAssetClone];

  if (v10)
  {
    [v7 setShouldCloneFileInAssetCache:1];
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __46__BRCUploadBatchOperation__uploadRecordsByID___block_invoke_116;
  v21[3] = &unk_2785028E0;
  v21[4] = self;
  v23 = v28;
  v24 = v26;
  v11 = v4;
  v22 = v11;
  [v7 setPerRecordCompletionBlock:v21];
  objc_initWeak(&location, v7);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __46__BRCUploadBatchOperation__uploadRecordsByID___block_invoke_118;
  v15 = &unk_278502930;
  objc_copyWeak(&v19, &location);
  v16 = self;
  v17 = v28;
  v18 = v26;
  [v7 setModifyRecordsCompletionBlock:&v12];
  [(_BRCOperation *)self addSubOperation:v7, v12, v13, v14, v15];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);
}

void __46__BRCUploadBatchOperation__uploadRecordsByID___block_invoke(uint64_t a1, void *a2, double a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3 < 0.0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      v12 = a3;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] Upload: Received negative progress from CK. progress [%f]%@", &v11, 0x16u);
    }
  }

  v8 = *(a1 + 32);
  v9 = [v5 recordID];
  [v8 setProgress:v9 forRecordID:a3];

  v10 = *MEMORY[0x277D85DE8];
}

void __46__BRCUploadBatchOperation__uploadRecordsByID___block_invoke_116(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 recordID];
  v9 = [v8 zoneID];

  v10 = [*(a1[4] + 256) zoneAppRetriever];
  v11 = [v9 zoneName];
  v12 = [v9 ownerName];
  v13 = [v10 serverZoneByName:v11 ownerName:v12];

  if (v6 && [v13 shouldRecreateServerZoneAfterError:v6])
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __46__BRCUploadBatchOperation__uploadRecordsByID___block_invoke_116_cold_1(v5);
    }

    v16 = [v5 recordID];
    v17 = [v16 zoneID];
    v18 = *(a1[6] + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = a1[5];
    v21 = [v5 recordID];
    v22 = [v20 objectForKeyedSubscript:v21];
    v23 = *(*(a1[7] + 8) + 40);
    v24 = [v5 recordID];
    [v23 setObject:v22 forKeyedSubscript:v24];
  }

  else
  {
    v25 = a1[4];
    v26 = [v5 recordID];
    [v25 finishedTransferForRecord:v5 recordID:v26 error:v6];
  }

  objc_autoreleasePoolPop(v7);
}

void __46__BRCUploadBatchOperation__uploadRecordsByID___block_invoke_118(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_copyWeak(&to, (a1 + 56));
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (!v9)
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        __46__BRCUploadBatchOperation__uploadRecordsByID___block_invoke_118_cold_1(v15, v16);
      }
    }

    objc_initWeak(&location, *(a1 + 32));
    v10 = [*(*(a1 + 32) + 576) asPrivateClientZone];
    v11 = [*(a1 + 32) group];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__BRCUploadBatchOperation__uploadRecordsByID___block_invoke_119;
    v17[3] = &unk_278502908;
    objc_copyWeak(&v18, &location);
    objc_copyWeak(&v19, &to);
    v17[4] = *(a1 + 48);
    [v10 createCloudKitZoneWithGroup:v11 completion:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = objc_loadWeakRetained(&to);
    v14 = [v13 metrics];
    [v12 completedWithResult:v14 error:v9];
  }

  [*(a1 + 32) hash];
  kdebug_trace();
  objc_destroyWeak(&to);
}

void __46__BRCUploadBatchOperation__uploadRecordsByID___block_invoke_119(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    v6 = [v5 metrics];
    [WeakRetained completedWithResult:v6 error:v3];
  }

  else
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __46__BRCUploadBatchOperation__uploadRecordsByID___block_invoke_119_cold_1(v7, v8);
    }

    [WeakRetained _uploadRecordsByID:*(*(*(a1 + 32) + 8) + 40)];
  }
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(BRCUploadBatchOperation *)self _unregisterForDocumentReparentNotifications];
  v9.receiver = self;
  v9.super_class = BRCUploadBatchOperation;
  [(BRCTransferBatchOperation *)&v9 finishWithResult:v6 error:v7];
  uploadBatchCompletionBlock = self->_uploadBatchCompletionBlock;
  if (uploadBatchCompletionBlock)
  {
    uploadBatchCompletionBlock[2](uploadBatchCompletionBlock, v6, v7);
  }

  [(BRCUploadBatchOperation *)self setPerUploadCompletionBlock:0];
  [(BRCUploadBatchOperation *)self setUploadBatchCompletionBlock:0];
}

void __50__BRCUploadBatchOperation__publishUploadProgress___block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: fpURL%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __50__BRCUploadBatchOperation__publishUploadProgress___block_invoke_103_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __68__BRCUploadBatchOperation__registerForDocumentReparentNotifications__block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v9 = [*(a1 + 32) userInfo];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)mainWithTransfers:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 operationID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_publishProgressIfNecessaryForTransfer:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: [transfer isKindOfClass:[BRCUpload class]]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_publishProgressIfNecessaryForTransfer:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.queue%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __46__BRCUploadBatchOperation__uploadRecordsByID___block_invoke_116_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __46__BRCUploadBatchOperation__uploadRecordsByID___block_invoke_118_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: modifyError%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __46__BRCUploadBatchOperation__uploadRecordsByID___block_invoke_119_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] zone was recreated, reuploading records%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end