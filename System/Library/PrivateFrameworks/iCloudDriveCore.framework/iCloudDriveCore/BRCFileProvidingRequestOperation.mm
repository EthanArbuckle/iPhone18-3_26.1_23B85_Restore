@interface BRCFileProvidingRequestOperation
- (BRCFileProvidingRequestOperation)initWithDocumentItem:(id)item client:(id)client sessionContext:(id)context downloadTrackersManager:(id)manager;
- (BRCFileProvidingRequestOperation)initWithDocumentItem:(id)item client:(id)client sessionContext:(id)context downloadTrackersManager:(id)manager etagIfLoser:(id)loser stageFileName:(id)name options:(unint64_t)options;
- (NSSet)trackedFileObjects;
- (void)_detachAllTrackedDocID:(id)d error:(id)error;
- (void)_finishAfterWaitingForDocumentsWithID:(id)d withEtagIfLoser:(id)loser error:(id)error;
- (void)_provideDocument:(id)document;
- (void)_provideItem;
- (void)addCompletionCallback:(id)callback;
- (void)cancel;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
- (void)networkReachabilityChanged:(BOOL)changed;
@end

@implementation BRCFileProvidingRequestOperation

- (BRCFileProvidingRequestOperation)initWithDocumentItem:(id)item client:(id)client sessionContext:(id)context downloadTrackersManager:(id)manager etagIfLoser:(id)loser stageFileName:(id)name options:(unint64_t)options
{
  loserCopy = loser;
  nameCopy = name;
  v18 = [(BRCFileProvidingRequestOperation *)self initWithDocumentItem:item client:client sessionContext:context downloadTrackersManager:manager];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_etagIfLoser, loser);
    objc_storeStrong(&v19->_stageFileName, name);
    v19->_options = options;
  }

  return v19;
}

- (void)addCompletionCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  callbacks = selfCopy->_callbacks;
  if (!callbacks)
  {
    v6 = objc_opt_new();
    v7 = selfCopy->_callbacks;
    selfCopy->_callbacks = v6;

    callbacks = selfCopy->_callbacks;
  }

  v8 = MEMORY[0x22AA4A310](callbackCopy);
  [(NSMutableArray *)callbacks addObject:v8];

  objc_sync_exit(selfCopy);
}

- (NSSet)trackedFileObjects
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_trackerFileObjects copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (BRCFileProvidingRequestOperation)initWithDocumentItem:(id)item client:(id)client sessionContext:(id)context downloadTrackersManager:(id)manager
{
  itemCopy = item;
  clientCopy = client;
  managerCopy = manager;
  v14 = [(_BRCOperation *)self initWithName:@"document-download" syncContext:0 sessionContext:context];
  if (v14)
  {
    if (initWithDocumentItem_client_sessionContext_downloadTrackersManager__onceToken != -1)
    {
      [BRCFileProvidingRequestOperation initWithDocumentItem:client:sessionContext:downloadTrackersManager:];
    }

    callbackQueue = [(_BRCOperation *)v14 callbackQueue];
    dispatch_set_target_queue(callbackQueue, initWithDocumentItem_client_sessionContext_downloadTrackersManager__queue);

    [(_BRCOperation *)v14 setNonDiscretionary:1];
    analyticsReporter = [(BRCSessionContext *)v14->super.super._sessionContext analyticsReporter];
    operationID = [(_BRCOperation *)v14 operationID];
    [analyticsReporter createUserDownloadEventForOperationID:operationID isRecursive:0 isForBackup:0];

    objc_storeStrong(&v14->_documentItem, item);
    objc_storeStrong(&v14->_client, client);
    v18 = objc_opt_new();
    trackerFileObjects = v14->_trackerFileObjects;
    v14->_trackerFileObjects = v18;

    objc_storeStrong(&v14->_downloadTrackersManager, manager);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = [(NSMutableSet *)selfCopy->_trackerFileObjects copy];
  objc_sync_exit(selfCopy);

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  [(BRCFileProvidingRequestOperation *)selfCopy _detachAllTrackedDocID:v4 error:v5];
}

- (void)_detachAllTrackedDocID:(id)d error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  errorCopy = error;
  if ([dCopy count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = dCopy;
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
          fileObjectID = [v13 fileObjectID];
          etagIfLoser = [v13 etagIfLoser];
          [(BRCFileProvidingRequestOperation *)self downloadTrackedForFileObjectID:fileObjectID withEtagIfLoser:etagIfLoser didFinishWithError:errorCopy];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    [(BRCFileProvidingRequestOperation *)self downloadTrackedForFileObjectID:0 withEtagIfLoser:0 didFinishWithError:errorCopy];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_provideDocument:(id)document
{
  v36 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  fileObjectID = [documentCopy fileObjectID];
  if (self->_client)
  {
    appLibrary = [documentCopy appLibrary];
    if (appLibrary && ([(NSMutableSet *)self->_appLibrariesMonitored containsObject:appLibrary]& 1) == 0)
    {
      [(NSMutableSet *)self->_appLibrariesMonitored addObject:appLibrary];
      [(BRCXPCClient *)self->_client addAppLibrary:appLibrary];
    }
  }

  options = self->_options;
  etagIfLoser = self->_etagIfLoser;
  stageFileName = self->_stageFileName;
  v29 = 0;
  v10 = [documentCopy startDownloadInTask:0 options:options etagIfLoser:etagIfLoser stageFileName:stageFileName error:&v29];
  v11 = v29;
  if ((v10 & 1) == 0)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v31 = documentCopy;
      v32 = 2112;
      v33 = v11;
      v34 = 2112;
      v35 = v15;
      _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Failed to start downloading item %@: %@%@", buf, 0x20u);
    }

    [(BRCFileProvidingRequestOperation *)self _finishAfterWaitingForDocumentsWithID:0 withEtagIfLoser:0 error:v11];
    goto LABEL_20;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  isCancelled = [(BRCFileProvidingRequestOperation *)selfCopy isCancelled];
  if (isCancelled)
  {
    v14 = 0;
  }

  else
  {
    v17 = +[BRCSystemResourcesManager manager];
    isNetworkReachable = [v17 isNetworkReachable];

    if (isNetworkReachable)
    {
      trackerFileObjects = selfCopy->_trackerFileObjects;
      v20 = [BRCTrackedVersion trackedVersionFor:fileObjectID withEtagIfLoser:self->_etagIfLoser kind:[(BRCFileProvidingRequestOperation *)selfCopy kind]];
      [(NSMutableSet *)trackerFileObjects addObject:v20];

      analyticsReporter = [(BRCSessionContext *)selfCopy->super.super._sessionContext analyticsReporter];
      operationID = [(_BRCOperation *)selfCopy operationID];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __53__BRCFileProvidingRequestOperation__provideDocument___block_invoke;
      v26[3] = &unk_278504BE8;
      v27 = fileObjectID;
      v28 = documentCopy;
      [analyticsReporter lookupUserDownloadEventByOperationID:operationID accessor:v26];

      v23 = v27;
    }

    else
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4355 userInfo:0];
      v23 = v11;
      v11 = v24;
    }

    v14 = 0;
    if (!selfCopy->_isMonitoringReachability && !v11)
    {
      v14 = 1;
      selfCopy->_isMonitoringReachability = 1;
    }
  }

  objc_sync_exit(selfCopy);

  if (v11)
  {
    [(BRCFileProvidingRequestOperation *)selfCopy _finishAfterWaitingForDocumentsWithID:fileObjectID withEtagIfLoser:self->_etagIfLoser error:v11];
LABEL_20:

    goto LABEL_21;
  }

  if ((isCancelled & 1) == 0)
  {
    [(BRCDownloadTrackerManaging *)selfCopy->_downloadTrackersManager addDownloadTracker:selfCopy forFileObjectID:fileObjectID withEtagIfLoser:self->_etagIfLoser];
    if (v14)
    {
      v11 = +[BRCSystemResourcesManager manager];
      [v11 addReachabilityObserver:selfCopy];
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
  *(&v4 + 4) = self;
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

- (void)networkReachabilityChanged:(BOOL)changed
{
  v30 = *MEMORY[0x277D85DE8];
  if (!changed)
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
    callbackQueue = [(_BRCOperation *)self callbackQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__BRCFileProvidingRequestOperation_networkReachabilityChanged___block_invoke;
    v19[3] = &unk_2784FF478;
    v19[4] = self;
    v8 = v6;
    v20 = v8;
    v9 = callbackQueue;
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

- (void)_finishAfterWaitingForDocumentsWithID:(id)d withEtagIfLoser:(id)loser error:(id)error
{
  dCopy = d;
  loserCopy = loser;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isFinished)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    if (errorCopy)
    {
      objc_storeStrong(&selfCopy->_lastDownloadError, error);
    }

    else
    {
      errorCopy = selfCopy->_lastDownloadError;
    }

    objc_sync_exit(selfCopy);

    v11 = selfCopy;
    objc_sync_enter(v11);
    if (dCopy)
    {
      v12 = v11[69];
      v13 = +[BRCTrackedVersion trackedVersionFor:withEtagIfLoser:kind:](BRCTrackedVersion, "trackedVersionFor:withEtagIfLoser:kind:", dCopy, loserCopy, [v11 kind]);
      [v12 removeObject:v13];
    }

    if (![v11[69] count] || errorCopy)
    {
      selfCopy->_isFinished = 1;
      objc_sync_exit(v11);

      [v11 completedWithResult:0 error:errorCopy];
    }

    else
    {
      objc_sync_exit(v11);
      errorCopy = v11;
    }
  }
}

- (void)finishWithResult:(id)result error:(id)error
{
  v42 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCFileProvidingRequestOperation finishWithResult:errorCopy error:?];
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

  analyticsReporter = [(BRCSessionContext *)self->super.super._sessionContext analyticsReporter];
  operationID = [(_BRCOperation *)self operationID];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __59__BRCFileProvidingRequestOperation_finishWithResult_error___block_invoke;
  v37[3] = &unk_278504BE8;
  v12 = errorCopy;
  v38 = v12;
  selfCopy = self;
  [analyticsReporter lookupUserDownloadEventByOperationID:operationID accessor:v37];

  if (!errorCopy)
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
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v20 = selfCopy2->_callbacks;
  callbacks = selfCopy2->_callbacks;
  selfCopy2->_callbacks = 0;

  objc_sync_exit(selfCopy2);
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

  v28.receiver = selfCopy2;
  v28.super_class = BRCFileProvidingRequestOperation;
  [(_BRCFrameworkOperation *)&v28 finishWithResult:resultCopy error:v12];

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