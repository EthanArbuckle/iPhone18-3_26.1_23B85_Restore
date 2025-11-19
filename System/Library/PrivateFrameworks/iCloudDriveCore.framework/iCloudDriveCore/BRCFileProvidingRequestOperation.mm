@interface BRCFileProvidingRequestOperation
- (BRCFileProvidingRequestOperation)initWithDocumentItem:(id)a3 client:(id)a4 sessionContext:(id)a5 downloadTrackersManager:(id)a6;
- (BRCFileProvidingRequestOperation)initWithDocumentItem:(id)a3 client:(id)a4 sessionContext:(id)a5 downloadTrackersManager:(id)a6 etagIfLoser:(id)a7 stageFileName:(id)a8 options:(unint64_t)a9;
- (NSSet)trackedFileObjects;
- (void)_detachAllTrackedDocID:(id)a3 error:(id)a4;
- (void)_finishAfterWaitingForDocumentsWithID:(id)a3 withEtagIfLoser:(id)a4 error:(id)a5;
- (void)_provideDocument:(id)a3;
- (void)_provideItem;
- (void)addCompletionCallback:(id)a3;
- (void)cancel;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
- (void)networkReachabilityChanged:(BOOL)a3;
@end

@implementation BRCFileProvidingRequestOperation

- (BRCFileProvidingRequestOperation)initWithDocumentItem:(id)a3 client:(id)a4 sessionContext:(id)a5 downloadTrackersManager:(id)a6 etagIfLoser:(id)a7 stageFileName:(id)a8 options:(unint64_t)a9
{
  v16 = a7;
  v17 = a8;
  v18 = [(BRCFileProvidingRequestOperation *)self initWithDocumentItem:a3 client:a4 sessionContext:a5 downloadTrackersManager:a6];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_etagIfLoser, a7);
    objc_storeStrong(&v19->_stageFileName, a8);
    v19->_options = a9;
  }

  return v19;
}

- (void)addCompletionCallback:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  callbacks = v4->_callbacks;
  if (!callbacks)
  {
    v6 = objc_opt_new();
    v7 = v4->_callbacks;
    v4->_callbacks = v6;

    callbacks = v4->_callbacks;
  }

  v8 = MEMORY[0x22AA4A310](v9);
  [(NSMutableArray *)callbacks addObject:v8];

  objc_sync_exit(v4);
}

- (NSSet)trackedFileObjects
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_trackerFileObjects copy];
  objc_sync_exit(v2);

  return v3;
}

- (BRCFileProvidingRequestOperation)initWithDocumentItem:(id)a3 client:(id)a4 sessionContext:(id)a5 downloadTrackersManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [(_BRCOperation *)self initWithName:@"document-download" syncContext:0 sessionContext:a5];
  if (v14)
  {
    if (initWithDocumentItem_client_sessionContext_downloadTrackersManager__onceToken != -1)
    {
      [BRCFileProvidingRequestOperation initWithDocumentItem:client:sessionContext:downloadTrackersManager:];
    }

    v15 = [(_BRCOperation *)v14 callbackQueue];
    dispatch_set_target_queue(v15, initWithDocumentItem_client_sessionContext_downloadTrackersManager__queue);

    [(_BRCOperation *)v14 setNonDiscretionary:1];
    v16 = [(BRCSessionContext *)v14->super.super._sessionContext analyticsReporter];
    v17 = [(_BRCOperation *)v14 operationID];
    [v16 createUserDownloadEventForOperationID:v17 isRecursive:0 isForBackup:0];

    objc_storeStrong(&v14->_documentItem, a3);
    objc_storeStrong(&v14->_client, a4);
    v18 = objc_opt_new();
    trackerFileObjects = v14->_trackerFileObjects;
    v14->_trackerFileObjects = v18;

    objc_storeStrong(&v14->_downloadTrackersManager, a6);
    [(_BRCFrameworkOperation *)v14 setIgnoreMissingRemoteClientProxy:1];
  }

  return v14;
}

void __103__BRCFileProvidingRequestOperation_initWithDocumentItem_client_sessionContext_downloadTrackersManager___block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("provide-request-queue", v0);

  v2 = initWithDocumentItem_client_sessionContext_downloadTrackersManager__queue;
  initWithDocumentItem_client_sessionContext_downloadTrackersManager__queue = v1;
}

- (void)cancel
{
  v6.receiver = self;
  v6.super_class = BRCFileProvidingRequestOperation;
  [(_BRCOperation *)&v6 cancel];
  v3 = self;
  objc_sync_enter(v3);
  v4 = [(NSMutableSet *)v3->_trackerFileObjects copy];
  objc_sync_exit(v3);

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  [(BRCFileProvidingRequestOperation *)v3 _detachAllTrackedDocID:v4 error:v5];
}

- (void)_detachAllTrackedDocID:(id)a3 error:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v13 fileObjectID];
          v15 = [v13 etagIfLoser];
          [(BRCFileProvidingRequestOperation *)self downloadTrackedForFileObjectID:v14 withEtagIfLoser:v15 didFinishWithError:v7];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    [(BRCFileProvidingRequestOperation *)self downloadTrackedForFileObjectID:0 withEtagIfLoser:0 didFinishWithError:v7];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_provideDocument:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 fileObjectID];
  if (self->_client)
  {
    v6 = [v4 appLibrary];
    if (v6 && ([(NSMutableSet *)self->_appLibrariesMonitored containsObject:v6]& 1) == 0)
    {
      [(NSMutableSet *)self->_appLibrariesMonitored addObject:v6];
      [(BRCXPCClient *)self->_client addAppLibrary:v6];
    }
  }

  options = self->_options;
  etagIfLoser = self->_etagIfLoser;
  stageFileName = self->_stageFileName;
  v29 = 0;
  v10 = [v4 startDownloadInTask:0 options:options etagIfLoser:etagIfLoser stageFileName:stageFileName error:&v29];
  v11 = v29;
  if ((v10 & 1) == 0)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v31 = v4;
      v32 = 2112;
      v33 = v11;
      v34 = 2112;
      v35 = v15;
      _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Failed to start downloading item %@: %@%@", buf, 0x20u);
    }

    [(BRCFileProvidingRequestOperation *)self _finishAfterWaitingForDocumentsWithID:0 withEtagIfLoser:0 error:v11];
    goto LABEL_20;
  }

  v12 = self;
  objc_sync_enter(v12);
  v13 = [(BRCFileProvidingRequestOperation *)v12 isCancelled];
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v17 = +[BRCSystemResourcesManager manager];
    v18 = [v17 isNetworkReachable];

    if (v18)
    {
      trackerFileObjects = v12->_trackerFileObjects;
      v20 = [BRCTrackedVersion trackedVersionFor:v5 withEtagIfLoser:self->_etagIfLoser kind:[(BRCFileProvidingRequestOperation *)v12 kind]];
      [(NSMutableSet *)trackerFileObjects addObject:v20];

      v21 = [(BRCSessionContext *)v12->super.super._sessionContext analyticsReporter];
      v22 = [(_BRCOperation *)v12 operationID];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __53__BRCFileProvidingRequestOperation__provideDocument___block_invoke;
      v26[3] = &unk_278504BE8;
      v27 = v5;
      v28 = v4;
      [v21 lookupUserDownloadEventByOperationID:v22 accessor:v26];

      v23 = v27;
    }

    else
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4355 userInfo:0];
      v23 = v11;
      v11 = v24;
    }

    v14 = 0;
    if (!v12->_isMonitoringReachability && !v11)
    {
      v14 = 1;
      v12->_isMonitoringReachability = 1;
    }
  }

  objc_sync_exit(v12);

  if (v11)
  {
    [(BRCFileProvidingRequestOperation *)v12 _finishAfterWaitingForDocumentsWithID:v5 withEtagIfLoser:self->_etagIfLoser error:v11];
LABEL_20:

    goto LABEL_21;
  }

  if ((v13 & 1) == 0)
  {
    [(BRCDownloadTrackerManaging *)v12->_downloadTrackersManager addDownloadTracker:v12 forFileObjectID:v5 withEtagIfLoser:self->_etagIfLoser];
    if (v14)
    {
      v11 = +[BRCSystemResourcesManager manager];
      [v11 addReachabilityObserver:v12];
      goto LABEL_20;
    }
  }

LABEL_21:

  v25 = *MEMORY[0x277D85DE8];
}

void __53__BRCFileProvidingRequestOperation__provideDocument___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fileObjectIDs];
  [v4 addObject:*(a1 + 32)];

  [v3 setItemCount:{objc_msgSend(v3, "itemCount") + 1}];
  v5 = [*(a1 + 40) currentVersion];
  [v3 setTotalContentSize:{objc_msgSend(v3, "totalContentSize") + objc_msgSend(v5, "size")}];
}

- (void)_provideItem
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: _documentItem != nil%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] %@ was cancelled%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __40__BRCFileProvidingRequestOperation_main__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) finishIfCancelled])
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __40__BRCFileProvidingRequestOperation_main__block_invoke_cold_1(v1);
    }
  }

  else
  {
    v4 = *v1;

    [v4 _provideItem];
  }
}

- (void)networkReachabilityChanged:(BOOL)a3
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    memset(v21, 0, sizeof(v21));
    __brc_create_section(0, "[BRCFileProvidingRequestOperation networkReachabilityChanged:]", 208, 0, v21);
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [BRCFileProvidingRequestOperation networkReachabilityChanged:v21];
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4355 userInfo:0];
    v7 = [(_BRCOperation *)self callbackQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__BRCFileProvidingRequestOperation_networkReachabilityChanged___block_invoke;
    v19[3] = &unk_2784FF478;
    v19[4] = self;
    v8 = v6;
    v20 = v8;
    v9 = v7;
    v10 = v19;
    v11 = objc_autoreleasePoolPush();
    v22 = 0uLL;
    v23 = 0;
    __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v22);
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = v22;
      label = dispatch_queue_get_label(v9);
      *block = 134218498;
      *&block[4] = v17;
      *&block[12] = 2080;
      *&block[14] = label;
      *&block[22] = 2112;
      v25 = v12;
      _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", block, 0x20u);
    }

    v28 = v22;
    v29 = v23;
    *block = MEMORY[0x277D85DD0];
    *&block[8] = 3221225472;
    *&block[16] = __dispatch_async_with_logs_block_invoke_12;
    v25 = &unk_2784FF568;
    v14 = v9;
    v26 = v14;
    v15 = v10;
    v27 = v15;
    dispatch_async(v14, block);

    objc_autoreleasePoolPop(v11);
    __brc_leave_section(v21);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __63__BRCFileProvidingRequestOperation_networkReachabilityChanged___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 trackedFileObjects];
  [v2 _detachAllTrackedDocID:v3 error:*(a1 + 40)];
}

- (void)_finishAfterWaitingForDocumentsWithID:(id)a3 withEtagIfLoser:(id)a4 error:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  if (v10->_isFinished)
  {
    objc_sync_exit(v10);
  }

  else
  {
    if (v9)
    {
      objc_storeStrong(&v10->_lastDownloadError, a5);
    }

    else
    {
      v9 = v10->_lastDownloadError;
    }

    objc_sync_exit(v10);

    v11 = v10;
    objc_sync_enter(v11);
    if (v14)
    {
      v12 = v11[69];
      v13 = +[BRCTrackedVersion trackedVersionFor:withEtagIfLoser:kind:](BRCTrackedVersion, "trackedVersionFor:withEtagIfLoser:kind:", v14, v8, [v11 kind]);
      [v12 removeObject:v13];
    }

    if (![v11[69] count] || v9)
    {
      v10->_isFinished = 1;
      objc_sync_exit(v11);

      [v11 completedWithResult:0 error:v9];
    }

    else
    {
      objc_sync_exit(v11);
      v9 = v11;
    }
  }
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCFileProvidingRequestOperation finishWithResult:v7 error:?];
    }
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCFileProvidingRequestOperation finishWithResult:v8 error:v9];
    }
  }

  v10 = [(BRCSessionContext *)self->super.super._sessionContext analyticsReporter];
  v11 = [(_BRCOperation *)self operationID];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __59__BRCFileProvidingRequestOperation_finishWithResult_error___block_invoke;
  v37[3] = &unk_278504BE8;
  v12 = v7;
  v38 = v12;
  v39 = self;
  [v10 lookupUserDownloadEventByOperationID:v11 accessor:v37];

  if (!v7)
  {
    [(BRCSessionContext *)self->super.super._sessionContext performSyncOnClientReadWriteDatabaseSerialQueue:&__block_literal_global_12];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = self->_appLibrariesMonitored;
  v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(BRCXPCClient *)self->_client removeAppLibrary:*(*(&v33 + 1) + 8 * i)];
      }

      v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v15);
  }

  v18 = +[BRCSystemResourcesManager manager];
  [v18 removeReachabilityObserver:self];

  [(BRCDownloadTrackerManaging *)self->_downloadTrackersManager removeDownloadTracker:self];
  v19 = self;
  objc_sync_enter(v19);
  v20 = v19->_callbacks;
  callbacks = v19->_callbacks;
  v19->_callbacks = 0;

  objc_sync_exit(v19);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = v20;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
LABEL_17:
    v26 = 0;
    while (1)
    {
      if (*v30 != v25)
      {
        objc_enumerationMutation(v22);
      }

      if (!(*(*(*(&v29 + 1) + 8 * v26) + 16))())
      {
        break;
      }

      if (v24 == ++v26)
      {
        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v29 objects:v40 count:16];
        if (v24)
        {
          goto LABEL_17;
        }

        break;
      }
    }
  }

  v28.receiver = v19;
  v28.super_class = BRCFileProvidingRequestOperation;
  [(_BRCFrameworkOperation *)&v28 finishWithResult:v6 error:v12];

  v27 = *MEMORY[0x277D85DE8];
}

void __59__BRCFileProvidingRequestOperation_finishWithResult_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [MEMORY[0x277CBEAA8] date];
  [v7 setEndTime:v3];

  [v7 setDidSucceed:*(a1 + 32) == 0];
  v4 = [v7 itemCount];
  v5 = [*(*(a1 + 40) + 256) analyticsReporter];
  v6 = v5;
  if (v4)
  {
    [v5 submitEventMetric:v7];
  }

  else
  {
    [v5 forgetEventMetric:v7];
  }
}

void __40__BRCFileProvidingRequestOperation_main__block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] %@ was cancelled%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)networkReachabilityChanged:(void *)a1 .cold.1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 134218242;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx network becomes not reachable, finishing the providing request%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] failing coordinated read with %@%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:(uint64_t)a1 error:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] granting coordinated read%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end