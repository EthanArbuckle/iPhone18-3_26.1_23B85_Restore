@interface BRCFSDownloader
- (BOOL)makeContentLive:(id)live;
- (BOOL)scheduleContentDownloadForItem:(id)item serverItem:(id)serverItem options:(unint64_t)options etagIfLoser:(id)loser stageFileName:(id)name error:(id *)error;
- (BRCFSDownloader)initWithAccountSession:(id)session;
- (id)_getCancelErrorFromCancelReason:(int)reason;
- (id)_sanitizeRecord:(id)record;
- (id)descriptionForItem:(id)item context:(id)context;
- (id)generateContentStageFileNameForItem:(id)item etag:(id)etag;
- (id)getDownloadEtagForItem:(id)item etagIfLoser:(id)loser;
- (unint64_t)_bumpThrottleForDownload:(id)download throttle:(id)throttle;
- (unint64_t)sizeOfActiveDownloads;
- (void)_clearDownloadErrorForDocument:(id)document;
- (void)_close;
- (void)_finishDownloadCleanup:(id)cleanup;
- (void)_finishedDownload:(id)download syncContext:(id)context operationID:(id)d error:(id)error;
- (void)_postponeLoserForWinner:(int64_t)winner etag:(id)etag;
- (void)_reportDownloadErrorForDocument:(id)document error:(id)error;
- (void)_sendContentsBatch:(id)batch sizeHint:(int64_t)hint maxRecordsCount:(unint64_t)count kind:(int)kind;
- (void)_transferStreamOfSyncContext:(id)context didBecomeReadyWithMaxRecordsCount:(unint64_t)count sizeHint:(unint64_t)hint priority:(int64_t)priority supportedKinds:(id)kinds;
- (void)_willDownload:(id)download operationID:(id)d;
- (void)cancel;
- (void)cancelAndCleanupItemDownloads:(id)downloads;
- (void)cancelOngoingDownloadsDueToMoreRecentServerVersionForItem:(id)item;
- (void)close;
- (void)deleteJobsMatching:(id)matching;
- (void)rescheduleJobsPendingRecentsAndFavoritesFetchInZone:(id)zone;
- (void)rescheduleJobsPendingWinnerForItem:(id)item;
- (void)resume;
- (void)schedule;
- (void)suspend;
- (void)transferStreamOfSyncContext:(id)context didBecomeReadyWithMaxRecordsCount:(unint64_t)count sizeHint:(unint64_t)hint priority:(int64_t)priority supportedKinds:(id)kinds completionBlock:(id)block;
- (void)updateContentDownloadForMetaOnlyChange:(id)change fromEtag:(id)etag toEtag:(id)toEtag;
@end

@implementation BRCFSDownloader

- (id)getDownloadEtagForItem:(id)item etagIfLoser:(id)loser
{
  loserCopy = loser;
  v6 = loserCopy;
  if (loserCopy)
  {
    etag = loserCopy;
  }

  else
  {
    currentVersion = [item currentVersion];
    ckInfo = [currentVersion ckInfo];
    etag = [ckInfo etag];
  }

  return etag;
}

- (BRCFSDownloader)initWithAccountSession:(id)session
{
  sessionCopy = session;
  v22.receiver = self;
  v22.super_class = BRCFSDownloader;
  v5 = [(BRCFSSchedulerBase *)&v22 initWithSession:sessionCopy name:@"Downloader" tableName:@"client_downloads"];
  if (v5)
  {
    personaIdentifier = [sessionCopy personaIdentifier];
    v7 = BRPersonaSpecificName();

    v8 = dispatch_workloop_create([v7 UTF8String]);
    v9 = [[BRCFairScheduler alloc] initWithWorkloop:v8 name:v7];
    fairScheduler = v5->_fairScheduler;
    v5->_fairScheduler = v9;

    v11 = [[BRCDeadlineScheduler alloc] initWithName:@"com.apple.bird.downloader" fairScheduler:v5->_fairScheduler];
    downloadsDeadlineScheduler = v5->_downloadsDeadlineScheduler;
    v5->_downloadsDeadlineScheduler = v11;

    [(BRCDeadlineScheduler *)v5->_downloadsDeadlineScheduler setCoalescingLeeway:10000000];
    v13 = brc_task_tracker_create("com.apple.bird.download-tracker");
    tracker = v5->_tracker;
    v5->_tracker = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingOperationProgress = v5->_pendingOperationProgress;
    v5->_pendingOperationProgress = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    willRetryOperationProgress = v5->_willRetryOperationProgress;
    v5->_willRetryOperationProgress = v17;

    v19 = [BRCUserDefaults defaultsForMangledID:0];
    [v19 downloadSizeRefreshInterval];
    v5->_activeDownloadSizeRefreshInterval = v20;
  }

  return v5;
}

- (void)resume
{
  clientTruthWorkloop = [(BRCAccountSession *)self->super.super._session clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__BRCFSDownloader_resume__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async_and_wait(clientTruthWorkloop, block);

  [(BRCDeadlineScheduler *)self->_downloadsDeadlineScheduler resume];
  [(BRCFairScheduler *)self->_fairScheduler resume];
  v4.receiver = self;
  v4.super_class = BRCFSDownloader;
  [(BRCFSSchedulerBase *)&v4 resume];
}

void __25__BRCFSDownloader_resume__block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __25__BRCFSDownloader_resume__block_invoke_cold_1();
  }

  v4 = [*(*(a1 + 32) + 8) clientDB];
  [v4 execute:@"DELETE FROM client_downloads"];
}

- (void)suspend
{
  [(BRCFairScheduler *)self->_fairScheduler suspend];
  [(BRCDeadlineScheduler *)self->_downloadsDeadlineScheduler suspend];
  v3.receiver = self;
  v3.super_class = BRCFSDownloader;
  [(BRCFSSchedulerBase *)&v3 suspend];
}

- (void)close
{
  [(BRCDeadlineScheduler *)self->_downloadsDeadlineScheduler close];
  [(BRCFairScheduler *)self->_fairScheduler close];
  v3.receiver = self;
  v3.super_class = BRCFSDownloader;
  [(BRCFSSchedulerBase *)&v3 close];
}

- (void)_close
{
  v3.receiver = self;
  v3.super_class = BRCFSDownloader;
  [(BRCFSSchedulerBase *)&v3 _close];
  brc_task_tracker_wait(self->_tracker);
}

- (void)cancel
{
  [(BRCDeadlineScheduler *)self->_downloadsDeadlineScheduler cancel];
  v3.receiver = self;
  v3.super_class = BRCFSDownloader;
  [(BRCFSSchedulerBase *)&v3 cancel];
  brc_task_tracker_cancel(self->_tracker);
}

- (void)_willDownload:(id)download operationID:(id)d
{
  session = self->super.super._session;
  dCopy = d;
  downloadCopy = download;
  clientDB = [(BRCAccountSession *)session clientDB];
  stageID = [downloadCopy stageID];
  transferID = [downloadCopy transferID];
  kind = [downloadCopy kind];
  etag = [downloadCopy etag];

  [clientDB execute:{@"UPDATE client_downloads SET  transfer_stage = %@, transfer_operation = %@ WHERE throttle_id = %@ AND download_kind = %u AND download_etag = %@", stageID, dCopy, transferID, kind, etag}];
}

- (unint64_t)_bumpThrottleForDownload:(id)download throttle:(id)throttle
{
  throttleCopy = throttle;
  downloadCopy = download;
  v8 = [BRCDownloadJobIdentifier alloc];
  transferID = [downloadCopy transferID];
  unsignedLongLongValue = [transferID unsignedLongLongValue];
  etag = [downloadCopy etag];
  kind = [downloadCopy kind];

  v13 = [(BRCDownloadJobIdentifier *)v8 initWithDBRowID:unsignedLongLongValue etag:etag kind:kind];
  v16.receiver = self;
  v16.super_class = BRCFSDownloader;
  v14 = [(BRCFSSchedulerBase *)&v16 postponeJobID:v13 withThrottle:throttleCopy];

  return v14;
}

- (id)descriptionForItem:(id)item context:(id)context
{
  itemCopy = item;
  contextCopy = context;
  v8 = [MEMORY[0x277D82C18] rawInjection:"ORDER BY download_kind length:{download_etag", 37}];
  v9 = [MEMORY[0x277D82C18] rawInjection:"download_kind length:{download_etag, transfer_operation, transfer_queue, download_error, app_library_rowid", 99}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__BRCFSDownloader_descriptionForItem_context___block_invoke;
  v14[3] = &unk_278501F88;
  v15 = contextCopy;
  selfCopy = self;
  v17 = itemCopy;
  v10 = itemCopy;
  v11 = contextCopy;
  v12 = [(BRCFSSchedulerBase *)self descriptionForJobsMatching:v10 ordering:v8 additionalColumns:v9 additionalValuesHandler:v14 context:v11];

  return v12;
}

void __46__BRCFSDownloader_descriptionForItem_context___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5)
{
  v27 = a2;
  v9 = a3;
  v10 = [v9 intAtIndex:a4];
  v11 = [v9 stringAtIndex:(a4 + 1)];
  v12 = [v9 uuidAtIndex:(a4 + 2)];
  v13 = [v9 stringAtIndex:(a4 + 3)];
  v14 = [v9 stringAtIndex:(a4 + 4)];
  v15 = [v9 numberAtIndex:(a4 + 5)];

  v16 = BRCPrettyPrintEnum();
  v17 = [BRCDumpContext highlightedString:v11 type:2 context:*(a1 + 32)];
  [v27 appendFormat:@"%s:%@", v16, v17];

  if (!a5)
  {
    goto LABEL_13;
  }

  if (([v13 isEqualToString:@"_retry"] & 1) == 0)
  {
    if (!v12)
    {
      goto LABEL_11;
    }

    v18 = [*(*(a1 + 40) + 8) appLibraryByRowID:v15];
    v19 = [*(a1 + 48) serverZone];
    v20 = [BRCSyncContext transferContextForServerZone:v19 appLibrary:v18];

    v21 = [v20 downloadStreamForKind:v10];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 48), "dbRowID")}];
    [v21 progressForTransferID:v22 operationID:v12];
    v24 = v23;

    if (v24 >= 0.0)
    {
      [v27 appendFormat:@" downloading:%.1f%%", v24 * 100.0];
    }

    else
    {
      [v27 appendString:@" download:done/cancelled"];
    }

    goto LABEL_10;
  }

  [v27 appendString:@" pending-retry"];
  if (v12)
  {
LABEL_10:
    v25 = [v12 UUIDString];
    [v27 appendFormat:@" op:%@", v25];
  }

LABEL_11:
  if (v14)
  {
    v26 = [BRCDumpContext highlightedString:v14 type:3 context:*(a1 + 32)];
    [v27 appendFormat:@" last-error:%@", v26];
  }

LABEL_13:
}

- (id)_sanitizeRecord:(id)record
{
  v19 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v4 = [recordCopy copy];
  [v4 setTrackChanges:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [recordCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [recordCopy objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v4 setObject:0 forKeyedSubscript:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [v4 setTrackChanges:1];
  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_finishedDownload:(id)download syncContext:(id)context operationID:(id)d error:(id)error
{
  v87 = *MEMORY[0x277D85DE8];
  downloadCopy = download;
  contextCopy = context;
  dCopy = d;
  errorCopy = error;
  v11 = +[BRCAccountsManager sharedManager];
  LODWORD(d) = [v11 isInSyncBubble];

  if (d)
  {
    [BRCFSDownloader _finishedDownload:syncContext:operationID:error:];
  }

  clientZone = [downloadCopy clientZone];
  stageID = [downloadCopy stageID];
  kind = [downloadCopy kind];
  memset(v74, 0, sizeof(v74));
  __brc_create_section(0, "[BRCFSDownloader _finishedDownload:syncContext:operationID:error:]", 547, 0, v74);
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v41 = v74[0];
    transferID = [downloadCopy transferID];
    [downloadCopy kind];
    v43 = BRCPrettyPrintEnum();
    etag = [downloadCopy etag];
    v45 = etag;
    v46 = @"failed";
    *buf = 134219266;
    v76 = v41;
    v77 = 2112;
    if (!errorCopy)
    {
      v46 = @"done";
    }

    v78 = transferID;
    v79 = 2080;
    v80 = v43;
    v81 = 2112;
    v82 = etag;
    v83 = 2112;
    v84 = v46;
    v85 = 2112;
    v86 = v13;
    _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Downloader[%@-%s-%@]: download %@%@", buf, 0x3Eu);
  }

  if (stageID)
  {
    if (!errorCopy && clientZone)
    {
      goto LABEL_9;
    }

    stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
    itemID = [downloadCopy itemID];
    [stageRegistry cleanupStagedDownloadWithID:stageID forItemID:itemID];
  }

  if (!clientZone)
  {
    asDocument = 0;
    goto LABEL_32;
  }

LABEL_9:
  if (kind > 3)
  {
    asDocument = 0;
  }

  else
  {
    itemFetcher = [(BRCAccountSession *)self->super.super._session itemFetcher];
    transferID2 = [downloadCopy transferID];
    v19 = [itemFetcher itemByRowID:{objc_msgSend(transferID2, "longLongValue")}];
    asDocument = [v19 asDocument];

    if (!errorCopy && ([downloadCopy requiresTwoPhase] & 1) != 0)
    {
      v21 = 1;
LABEL_22:
      [(BRCFSDownloader *)self _clearDownloadErrorForDocument:asDocument];
      applyScheduler = [(BRCAccountSession *)self->super.super._session applyScheduler];
      itemID2 = [downloadCopy itemID];
      v32 = [clientZone serverRankByItemID:itemID2];

      if (kind >= 4)
      {
        v33 = 1;
      }

      else
      {
        v33 = dword_2241ABEA0[kind];
      }

      v34 = [(BRCAccountSession *)self->super.super._session clientReadWriteDatabaseFacade:0];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke_212;
      v55[3] = &unk_278501FD8;
      v55[4] = self;
      v56 = downloadCopy;
      v66 = v21;
      v57 = contextCopy;
      v35 = v34;
      v58 = v35;
      v59 = stageID;
      v64 = kind;
      asDocument = asDocument;
      v60 = asDocument;
      v63 = v32;
      v65 = v33;
      v36 = applyScheduler;
      v61 = v36;
      v62 = clientZone;
      [v35 groupInBatch:v55];

      errorCopy = v49;
      goto LABEL_32;
    }

    downloadTrackers = [(BRCAccountSession *)self->super.super._session downloadTrackers];
    etagIfLoser = [downloadCopy etagIfLoser];
    [downloadTrackers document:asDocument didCompleteDownloadEtagIfLoser:etagIfLoser kind:kind withError:errorCopy];
  }

  if (!errorCopy)
  {
    v21 = 0;
    goto LABEL_22;
  }

  if (([clientZone handleZoneLevelErrorIfNeeded:errorCopy forItemCreation:0] & 1) == 0)
  {
    if ([errorCopy brc_isCloudKitCancellationError])
    {
      goto LABEL_26;
    }

    downloadThrottle = [contextCopy downloadThrottle];
    v25 = [(BRCFSDownloader *)self _bumpThrottleForDownload:downloadCopy throttle:downloadThrottle];

    appLibrary = [asDocument appLibrary];
    mangledID = [appLibrary mangledID];
    v28 = [BRCUserDefaults defaultsForMangledID:mangledID];
    LODWORD(v25) = v25 > [v28 downloadRetryCountForFailure];

    if (!v25)
    {
LABEL_26:
      v29 = 0;
    }

    else
    {
      [(BRCFSDownloader *)self _reportDownloadErrorForDocument:asDocument error:errorCopy];
      v29 = 1;
    }

    v37 = brc_bread_crumbs();
    v38 = brc_default_log();
    if (os_log_type_enabled(v38, 0x90u))
    {
      v47 = [asDocument st];
      displayName = [v47 displayName];
      *buf = 138412802;
      v76 = displayName;
      v77 = 2112;
      v78 = errorCopy;
      v79 = 2112;
      v80 = v37;
      _os_log_error_impl(&dword_223E7A000, v38, 0x90u, "[ERROR] Got error when downloading %@: %@%@", buf, 0x20u);
    }

    if ((v29 & 1) == 0)
    {
      [(BRCFSDownloader *)self _reportDownloadErrorForDocument:asDocument error:errorCopy];
    }

    clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke;
    v67[3] = &unk_278501E10;
    v72 = 41;
    v67[4] = self;
    v68 = downloadCopy;
    v69 = errorCopy;
    v73 = kind;
    asDocument = asDocument;
    v70 = asDocument;
    v71 = clientZone;
    [clientDB groupInBatch:v67];
  }

LABEL_32:
  __brc_leave_section(v74);

  v40 = *MEMORY[0x277D85DE8];
}

void __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke(uint64_t a1, void *a2)
{
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke_2;
  v27 = &unk_278501FB0;
  v4 = *(a1 + 40);
  v28 = *(a1 + 32);
  v5 = *(a1 + 72);
  v29 = v4;
  v6 = a2;
  v7 = MEMORY[0x22AA4A310](&v24);
  v8 = [*(a1 + 48) description];
  v9 = [*(a1 + 40) transferID];
  v10 = *(a1 + 76);
  v11 = [*(a1 + 40) etag];
  [v6 execute:{@"UPDATE client_downloads SET  throttle_state = %d, transfer_record = NULL, transfer_stage = call_block(%@, transfer_stage), transfer_operation = NULL, download_error = %@ WHERE throttle_id = %@ AND download_kind = %u AND download_etag = %@", v5, v7, v8, v9, v10, v11, v24, v25, v26, v27, v28}];

  if ([*(a1 + 48) brc_isCloudKitUnknownItemError] && (!objc_msgSend(*(a1 + 40), "kind") || objc_msgSend(*(a1 + 40), "kind") == 3))
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke_cold_1();
    }

    [*(a1 + 56) handleUnknownItemError];
  }

  if (*(a1 + 72) == 41 && [*(a1 + 40) kind] == 2)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke_cold_2();
    }

    v16 = *(a1 + 64);
    v17 = [*(a1 + 40) itemID];
    v18 = [v16 serverRankByItemID:v17];

    v19 = [*(*(a1 + 32) + 8) applyScheduler];
    v20 = [*(a1 + 64) dbRowID];
    [v19 setState:1 andApplyKind:2 forRank:v18 zoneRowID:v20];
  }

  [*(a1 + 56) saveToDB];
  v21 = [*(*(a1 + 32) + 8) downloadTrackers];
  v22 = *(a1 + 56);
  v23 = [*(a1 + 40) etagIfLoser];
  [v21 document:v22 didCompleteDownloadEtagIfLoser:v23 kind:objc_msgSend(*(a1 + 40) withError:{"kind"), *(a1 + 48)}];
}

void __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke_2(uint64_t a1, sqlite3_context *a2, uint64_t a3, void *a4)
{
  v8 = [MEMORY[0x277CCACA8] newFromSqliteValue:*a4];
  if (v8)
  {
    v6 = [*(*(a1 + 32) + 8) stageRegistry];
    v7 = [*(a1 + 40) itemID];
    [v6 cleanupStagedDownloadWithID:v8 forItemID:v7];
  }

  sqlite3_result_null(a2);
}

void __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke_212(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) record];
  v4 = [v2 _sanitizeRecord:v3];

  v5 = *(a1 + 112);
  if (v5 == 1)
  {
    v6 = [*(a1 + 48) contextIdentifier];
  }

  else
  {
    v6 = @"_done";
  }

  v7 = *(a1 + 56);
  v8 = [*(a1 + 40) transferID];
  v9 = *(a1 + 64);
  v10 = *(a1 + 104);
  v11 = [*(a1 + 40) etag];
  LODWORD(v25) = v5;
  [v7 finishDownloadJobForThrottleID:v8 stageID:v9 record:v4 downloadError:0 downloadKind:v10 etag:v11 newState:v25 newTransferQueue:v6];

  [*(a1 + 72) saveToDB];
  if (*(a1 + 112))
  {
    goto LABEL_6;
  }

  v12 = [*(*(a1 + 32) + 8) downloadTrackers];
  v13 = *(a1 + 72);
  v14 = [*(a1 + 40) etagIfLoser];
  [v12 document:v13 didCompleteDownloadEtagIfLoser:v14 kind:objc_msgSend(*(a1 + 40) withError:{"kind"), 0}];

  if (*(a1 + 112))
  {
LABEL_6:
    v15 = [*(a1 + 48) downloadStreamForKind:{objc_msgSend(*(a1 + 40), "kind")}];
    [v15 signal];
  }

  else
  {
    if (!*(a1 + 96))
    {
      goto LABEL_8;
    }

    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 96);
      v23 = [*(a1 + 40) itemID];
      v24 = *(a1 + 108);
      *buf = 134218754;
      v27 = v22;
      v28 = 2112;
      v29 = v23;
      v30 = 2080;
      v31 = BRCPrettyPrintEnum();
      v32 = 2112;
      v33 = v17;
      _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] Apply Changes[%lld]: %@ state is %s%@", buf, 0x2Au);
    }

    v19 = *(a1 + 108);
    v20 = *(a1 + 96);
    v21 = *(a1 + 80);
    v15 = [*(a1 + 88) dbRowID];
    [v21 setState:v19 andApplyKind:2 forRank:v20 zoneRowID:v15];
  }

LABEL_8:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)rescheduleJobsPendingWinnerForItem:(id)item
{
  itemCopy = item;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  [clientDB execute:{@"UPDATE client_downloads SET throttle_state = 1 WHERE throttle_state = %u AND throttle_id = %lld", 42, objc_msgSend(itemCopy, "dbRowID")}];
  if ([clientDB changes])
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSDownloader rescheduleJobsPendingWinnerForItem:];
    }

    syncContextUsedForTransfers = [itemCopy syncContextUsedForTransfers];
    [syncContextUsedForTransfers signalAllDownloadStreams];
  }
}

- (void)rescheduleJobsPendingRecentsAndFavoritesFetchInZone:(id)zone
{
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  dbRowID = [zoneCopy dbRowID];
  [clientDB execute:{@"UPDATE client_downloads SET throttle_state = 1 WHERE throttle_state = 40   AND throttle_state != 0   AND zone_rowid = %@", dbRowID}];

  if ([clientDB changes])
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSDownloader rescheduleJobsPendingWinnerForItem:];
    }

    if ([zoneCopy isSharedZone])
    {
      asSharedZone = [zoneCopy asSharedZone];
      transferSyncContext = [asSharedZone transferSyncContext];
      [transferSyncContext signalAllDownloadStreams];
    }

    else
    {
      dbRowID2 = [zoneCopy dbRowID];
      asSharedZone = [clientDB fetch:{@"SELECT distinct app_library_rowid FROM client_downloads WHERE throttle_state = 1   AND throttle_state != 0   AND zone_rowid = %@", dbRowID2}];

      if ([asSharedZone next])
      {
        do
        {
          v12 = [asSharedZone numberAtIndex:0];
          v13 = [(BRCAccountSession *)self->super.super._session appLibraryByRowID:v12];
          transferSyncContext2 = [v13 transferSyncContext];
          [transferSyncContext2 signalAllDownloadStreams];
        }

        while (([asSharedZone next] & 1) != 0);
      }
    }
  }
}

- (void)_finishDownloadCleanup:(id)cleanup
{
  cleanupCopy = cleanup;
  clientZone = [cleanupCopy clientZone];
  itemID = [cleanupCopy itemID];
  v5 = [clientZone popDownloadedBlockForItemID:itemID];

  if (v5)
  {
    (v5)[2](v5, cleanupCopy);
  }
}

- (void)cancelOngoingDownloadsDueToMoreRecentServerVersionForItem:(id)item
{
  v16 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = +[BRCFSDownloaderUtil cancellableDownloadKinds];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        -[BRCFSDownloader cancelAndCleanupItemDownload:kind:etag:andNotifyDownloadTrackers:cancelReason:](self, "cancelAndCleanupItemDownload:kind:etag:andNotifyDownloadTrackers:cancelReason:", itemCopy, [*(*(&v11 + 1) + 8 * v9++) intValue], 0, 1, 1);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_getCancelErrorFromCancelReason:(int)reason
{
  if (reason == 1)
  {
    brc_errorRescheduleDownloadForMoreRecentServerVersion = [MEMORY[0x277CCA9B8] brc_errorRescheduleDownloadForMoreRecentServerVersion];
  }

  else
  {
    if (reason)
    {
      v3 = brc_bread_crumbs();
      v4 = brc_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [BRCFSDownloader _getCancelErrorFromCancelReason:];
      }
    }

    brc_errorRescheduleDownloadForMoreRecentServerVersion = [MEMORY[0x277CCA9B8] brc_errorDownloadCancelled];
  }

  return brc_errorRescheduleDownloadForMoreRecentServerVersion;
}

- (void)cancelAndCleanupItemDownloads:(id)downloads
{
  downloadsCopy = downloads;
  v5 = -[BRCFSDownloader _buildDownloadActiveJobsResultSetForThrottleID:etag:kind:](self, "_buildDownloadActiveJobsResultSetForThrottleID:etag:kind:", [downloadsCopy dbRowID], 0, 0xFFFFFFFFLL);
  [(BRCFSDownloader *)self _cancelJobs:v5 state:0];
  [(BRCFSDownloader *)self _finishDownloadCleanup:downloadsCopy];
}

- (void)deleteJobsMatching:(id)matching
{
  session = self->super.super._session;
  matchingCopy = matching;
  clientDB = [(BRCAccountSession *)session clientDB];
  matchingJobsWhereSQLClause = [matchingCopy matchingJobsWhereSQLClause];
  v8 = [clientDB fetch:{@"SELECT throttle_id, download_kind, download_etag, transfer_operation, transfer_stage, app_library_rowid, zone_rowid, throttle_state, transfer_size FROM client_downloads WHERE %@ AND throttle_state > %d", matchingJobsWhereSQLClause, 0}];

  [(BRCFSDownloader *)self _cancelJobs:v8 state:0];
  v9.receiver = self;
  v9.super_class = BRCFSDownloader;
  [(BRCFSSchedulerBase *)&v9 deleteJobsMatching:matchingCopy];
}

- (void)updateContentDownloadForMetaOnlyChange:(id)change fromEtag:(id)etag toEtag:(id)toEtag
{
  session = self->super.super._session;
  toEtagCopy = toEtag;
  etagCopy = etag;
  changeCopy = change;
  clientDB = [(BRCAccountSession *)session clientDB];
  dbRowID = [changeCopy dbRowID];

  [clientDB execute:{@"UPDATE client_downloads SET download_etag = %@ WHERE throttle_id = %lld AND download_etag = %@ AND download_kind = %d", toEtagCopy, dbRowID, etagCopy, 0}];
}

- (unint64_t)sizeOfActiveDownloads
{
  v33 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = date;
  if (!self->_lastDownloadRefresh || ([date timeIntervalSinceDate:?], v5 > self->_activeDownloadSizeRefreshInterval))
  {
    clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__13;
    v25 = __Block_byref_object_dispose__13;
    v26 = 0;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __40__BRCFSDownloader_sizeOfActiveDownloads__block_invoke;
    v18 = &unk_278502000;
    v20 = &v21;
    v7 = clientDB;
    v19 = v7;
    [v7 disableProfilingForQueriesInBlock:&v15];
    objc_storeStrong(&self->_lastDownloadRefresh, v4);
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      activeDownloadsSize = self->_activeDownloadsSize;
      longLongValue = [v22[5] longLongValue];
      *buf = 134218498;
      v28 = activeDownloadsSize;
      v29 = 2048;
      v30 = longLongValue;
      v31 = 2112;
      v32 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Refreshed active download size %llu -> %llu%@", buf, 0x20u);
    }

    self->_activeDownloadsSize = [v22[5] longLongValue];
    _Block_object_dispose(&v21, 8);
  }

  v10 = self->_activeDownloadsSize;

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __40__BRCFSDownloader_sizeOfActiveDownloads__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) numberWithSQL:@"SELECT SUM(transfer_size) FROM client_downloads WHERE throttle_state = 1"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)makeContentLive:(id)live
{
  liveCopy = live;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__BRCFSDownloader_makeContentLive___block_invoke;
  v8[3] = &unk_278500FA8;
  v9 = liveCopy;
  selfCopy = self;
  v6 = liveCopy;
  LOBYTE(liveCopy) = [clientDB groupInTransaction:v8];

  return liveCopy;
}

uint64_t __35__BRCFSDownloader_makeContentLive___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 execute:{@"DELETE FROM client_pkg_upload_items WHERE item_rowid = %llu", objc_msgSend(*(a1 + 32), "dbRowID")}];
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v15 = [v3 changes];
      v16 = [*(a1 + 32) fileObjectID];
      *buf = 134218498;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      v21 = 2112;
      v22 = v5;
      _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] removed %lld items in pkg:%@%@", buf, 0x20u);
    }

    v9 = a1 + 32;
    v7 = *(a1 + 32);
    v8 = *(v9 + 8);
    v10 = [v7 currentVersion];
    v11 = [v10 ckInfo];
    v12 = [v11 etag];
    [v8 cancelAndCleanupItemDownload:v7 kind:0 etag:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)scheduleContentDownloadForItem:(id)item serverItem:(id)serverItem options:(unint64_t)options etagIfLoser:(id)loser stageFileName:(id)name error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  serverItemCopy = serverItem;
  loserCopy = loser;
  nameCopy = name;
  memset(v31, 0, sizeof(v31));
  __brc_create_section(0, "[BRCFSDownloader scheduleContentDownloadForItem:serverItem:options:etagIfLoser:stageFileName:error:]", 999, 0, v31);
  v18 = brc_bread_crumbs();
  v19 = brc_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v28 = v31[0];
    itemID = [itemCopy itemID];
    *buf = 134219010;
    v33 = v28;
    v34 = 2112;
    v35 = itemID;
    v36 = 2112;
    v37 = itemCopy;
    v38 = 2112;
    v39 = serverItemCopy;
    v40 = 2112;
    v41 = v18;
    v30 = itemID;
    _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx scheduling content download for %@\nlocal: %@\nserver: %@%@", buf, 0x34u);
  }

  v20 = [(BRCFSDownloader *)self getDownloadEtagForItem:itemCopy etagIfLoser:loserCopy];
  v21 = [BRCFSDownloaderUtil downloadKindWithEtagIfLoser:loserCopy options:options];
  v22 = -[BRCDownloadJobIdentifier initWithDBRowID:etag:kind:]([BRCDownloadJobIdentifier alloc], "initWithDBRowID:etag:kind:", [itemCopy dbRowID], v20, v21);
  if ([(BRCFSSchedulerBase *)self jobStateFor:v22]== 1)
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSDownloader scheduleContentDownloadForItem:serverItem:options:etagIfLoser:stageFileName:error:];
    }

    v25 = 1;
  }

  else
  {
    v25 = [(BRCFSDownloader *)self _createDownloadingJobForItem:itemCopy state:1 kind:v21 etag:v20 stageFileName:nameCopy error:error];
  }

  __brc_leave_section(v31);
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)schedule
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  readerScanBatchSize = [v3 readerScanBatchSize];

  v5 = [MEMORY[0x277D82C08] formatInjection:@"transfer_queue = '_retry' AND transfer_operation IS NULL"];
  v6 = [MEMORY[0x277D82C18] rawInjection:"rowid length:{throttle_id, app_library_rowid, zone_rowid, download_kind", 64}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__BRCFSDownloader_schedule__block_invoke;
  v7[3] = &unk_278502028;
  v7[4] = self;
  [(BRCFSSchedulerBase *)self scheduleWithBatchSize:readerScanBatchSize whereSQLClause:v5 columns:v6 actionHandler:v7];
}

void __27__BRCFSDownloader_schedule__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 numberAtIndex:a3];
  v7 = [v5 numberAtIndex:(a3 + 1)];
  v8 = [v5 numberAtIndex:(a3 + 2)];
  v9 = [v5 numberAtIndex:(a3 + 3)];
  v10 = [v5 intAtIndex:(a3 + 4)];
  v11 = [*(*(a1 + 32) + 8) appLibraryByRowID:v8];
  v12 = [*(*(a1 + 32) + 8) serverZoneByRowID:v9];
  v13 = [BRCSyncContext transferContextForServerZone:v12 appLibrary:v11];
  v23 = [v13 contextIdentifier];
  if (v11)
  {
    v22 = v7;
    v14 = [v5 db];
    v15 = [v13 contextIdentifier];
    [v14 execute:{@"UPDATE client_downloads SET transfer_queue = %@ WHERE rowid = %@", v15, v6}];

    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v25 = v22;
      v26 = 2112;
      v27 = v23;
      v28 = 2112;
      v29 = v16;
      _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] Downloader[%@]: job has been put back in queue %@%@", buf, 0x20u);
    }

    v18 = [v13 downloadStreamForKind:v10];
    [v18 signal];
    v7 = v22;
  }

  else
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 138413058;
      v25 = v7;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v19;
      _os_log_fault_impl(&dword_223E7A000, v20, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Downloader[%@]: failed to find app library with id %@, dropping the download %@%@", buf, 0x2Au);
    }

    v18 = [v5 db];
    [v18 execute:{@"DELETE FROM client_downloads WHERE rowid = %@", v6}];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)generateContentStageFileNameForItem:(id)item etag:(id)etag
{
  etagCopy = etag;
  itemCopy = item;
  v7 = [itemCopy st];
  logicalName = [v7 logicalName];
  br_pathExtension = [logicalName br_pathExtension];

  v10 = [br_pathExtension length];
  v11 = MEMORY[0x277CCACA8];
  dbRowID = [itemCopy dbRowID];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v15 = uUIDString;
  if (v10)
  {
    [v11 stringWithFormat:@"content-%lld-%@-%@.%@", dbRowID, etagCopy, uUIDString, br_pathExtension];
  }

  else
  {
    [v11 stringWithFormat:@"content-%lld-%@-%@", dbRowID, etagCopy, uUIDString, v18];
  }
  v16 = ;

  return v16;
}

- (void)_sendContentsBatch:(id)batch sizeHint:(int64_t)hint maxRecordsCount:(unint64_t)count kind:(int)kind
{
  v91 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  v8 = +[BRCAccountsManager sharedManager];
  isInSyncBubble = [v8 isInSyncBubble];

  if (isInSyncBubble)
  {
    [BRCFSDownloader _sendContentsBatch:sizeHint:maxRecordsCount:kind:];
  }

  syncContext = [batchCopy syncContext];
  if ([0 itemsCount] >= count)
  {
    nextDocumentItem = 0;
    v11 = 0;
    v57 = 0;
    v13 = 0;
    v34 = 0;
    goto LABEL_60;
  }

  v11 = 0;
  nextDocumentItem = 0;
  v76 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  *&v10 = 138412546;
  v69 = v10;
  countCopy = count;
  v70 = batchCopy;
  while (1)
  {
    v16 = nextDocumentItem;
    context = objc_autoreleasePoolPush();
    nextDocumentItem = [batchCopy nextDocumentItem];

    if (!nextDocumentItem)
    {
      break;
    }

    stageID = [batchCopy stageID];

    etag = [batchCopy etag];

    completedUnitCount = [batchCopy completedUnitCount];
    v78 = [batchCopy transferQOS] > 24;
    v19 = stageID;
    selfCopy2 = self;
    if (!stageID)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v86 = v21;
        _os_log_debug_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] No stage ID, createing a new one%@", buf, 0xCu);
      }

      v19 = [(BRCFSDownloader *)self generateContentStageFileNameForItem:nextDocumentItem etag:etag];
    }

    v80 = v19;
    if (v11)
    {
      v77 = v11;
    }

    else
    {
      v23 = [BRCDownloadContentsBatchOperation alloc];
      session = self->super.super._session;
      hasWorkGroup = [(BRCFSSchedulerBase *)self hasWorkGroup];
      workloop = [(BRCDeadlineScheduler *)self->_downloadsDeadlineScheduler workloop];
      v27 = [(BRCDownloadContentsBatchOperation *)v23 initWithSyncContext:syncContext sessionContext:session group:hasWorkGroup callBackQueueTarget:workloop];

      operationID = [(_BRCOperation *)v27 operationID];

      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __68__BRCFSDownloader__sendContentsBatch_sizeHint_maxRecordsCount_kind___block_invoke;
      v82[3] = &unk_278502050;
      v82[4] = self;
      selfCopy2 = self;
      v83 = syncContext;
      v76 = operationID;
      v77 = v27;
      v84 = v76;
      [(BRCDownloadContentsBatchOperation *)v27 setPerDownloadCompletionBlock:v82];
    }

    v29 = [BRCDownloadContent alloc];
    if (kind == 2)
    {
      v30 = etag;
    }

    else
    {
      v30 = 0;
    }

    kind = [batchCopy kind];
    stageRegistry = [(BRCAccountSession *)selfCopy2->super.super._session stageRegistry];
    v33 = v30;
    v34 = etag;
    v35 = [(BRCDownloadContent *)v29 initWithDocument:nextDocumentItem stageID:v80 etagIfLoser:v33 downloadKind:kind downloadStager:stageRegistry];

    if (kind != 2)
    {
      etag2 = [(BRCDownload *)v35 etag];
      if ([etag2 isEqualToString:etag])
      {
      }

      else
      {
        currentVersion = [(BRCDownloadContent *)nextDocumentItem currentVersion];
        oldVersionIdentifier = [currentVersion oldVersionIdentifier];
        v39 = [oldVersionIdentifier isEqualToString:etag];

        v34 = etag;
        if ((v39 & 1) == 0)
        {
          if (([(BRCDownloadContent *)nextDocumentItem isDocumentBeingCopiedToNewZone]& 1) != 0)
          {
            v55 = brc_bread_crumbs();
            v56 = brc_default_log();
            v11 = v77;
            v54 = countCopy;
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              *buf = v69;
              v86 = nextDocumentItem;
              v87 = 2112;
              v88 = v55;
              _os_log_debug_impl(&dword_223E7A000, v56, OS_LOG_TYPE_DEBUG, "[DEBUG] Seems that item %@ has started a czm after requesting a download%@", buf, 0x16u);
            }
          }

          else
          {
            v55 = brc_bread_crumbs();
            v56 = brc_default_log();
            v11 = v77;
            v54 = countCopy;
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v86 = v35;
              v87 = 2112;
              v88 = v34;
              v89 = 2112;
              v90 = v55;
              _os_log_impl(&dword_223E7A000, v56, OS_LOG_TYPE_DEFAULT, "[WARNING] item download %@ etag changed from %@%@", buf, 0x20u);
            }
          }

          -[BRCFSDownloader cancelAndCleanupItemDownload:kind:etag:andNotifyDownloadTrackers:](self, "cancelAndCleanupItemDownload:kind:etag:andNotifyDownloadTrackers:", nextDocumentItem, [batchCopy kind], v34, 1);
          goto LABEL_38;
        }
      }
    }

    selfCopy5 = self;
    if (![(BRCDownloadContent *)v35 requiresTwoPhase])
    {
      willRetryOperationProgress = self->_willRetryOperationProgress;
      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[BRCDownloadContent dbRowID](nextDocumentItem, "dbRowID")}];
      v43 = [(NSMutableDictionary *)willRetryOperationProgress objectForKeyedSubscript:v42];

      if (v43)
      {
        v44 = self->_willRetryOperationProgress;
        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[BRCDownloadContent dbRowID](nextDocumentItem, "dbRowID")}];
        [(NSMutableDictionary *)v44 removeObjectForKey:v45];

        v46 = brc_bread_crumbs();
        v47 = brc_default_log();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          *buf = v69;
          v86 = v43;
          v87 = 2112;
          v88 = v46;
          _os_log_debug_impl(&dword_223E7A000, v47, OS_LOG_TYPE_DEBUG, "[DEBUG] Re-use progress %@%@", buf, 0x16u);
        }

        v34 = etag;
        selfCopy5 = self;
        batchCopy = v70;
      }

      else
      {
        currentVersion2 = [(BRCDownloadContent *)nextDocumentItem currentVersion];
        v49 = [currentVersion2 size];

        v50 = completedUnitCount;
        v34 = etag;
        batchCopy = v70;
        if (completedUnitCount > v49)
        {
          v51 = brc_bread_crumbs();
          v52 = brc_default_log();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v86 = v51;
            _os_log_impl(&dword_223E7A000, v52, OS_LOG_TYPE_DEFAULT, "[WARNING] Completed unit count is greater than version size; ignoring value%@", buf, 0xCu);
          }

          v50 = 0;
        }

        selfCopy5 = self;
        v43 = [(NSMutableDictionary *)self->_pendingOperationProgress objectForKeyedSubscript:v80];
        if (!v43 && (![(BRCDownloadContent *)v35 kind]|| [(BRCDownloadContent *)v35 kind]== 3))
        {
          v74 = brc_bread_crumbs();
          v53 = brc_default_log();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
          {
            *buf = v69;
            v86 = v80;
            v87 = 2112;
            v88 = v74;
            _os_log_fault_impl(&dword_223E7A000, v53, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed finding a progress for stageID: %@%@", buf, 0x16u);
          }

          v34 = etag;
        }

        [(BRCDownloadContent *)v43 updateToBeDownloadProgressForDocument:nextDocumentItem totalUnitCount:v49 completedUnitCount:v50];
      }

      [(BRCDownloadContent *)v35 setProgress:v43];
    }

    v11 = v77;
    [(BRCDownloadContentsBatchOperation *)v77 addDownload:v35];
    [(BRCFSDownloader *)selfCopy5 _willDownload:v35 operationID:v76];
    [(BRCDownloadContent *)nextDocumentItem triggerNotificationIfNeeded];
    v54 = countCopy;
LABEL_38:
    v15 |= v78;

    objc_autoreleasePoolPop(context);
    v14 = v34;
    v13 = v80;
    if ([(BRCTransferBatchOperation *)v11 itemsCount]>= v54)
    {
      goto LABEL_48;
    }
  }

  objc_autoreleasePoolPop(context);
  v34 = v14;
LABEL_48:
  if (v11)
  {
    if ([batchCopy kind] == 3)
    {
      br_downloadSpeculative = [MEMORY[0x277CBC4F8] br_downloadSpeculative];
      if ((v15 & 1) == 0)
      {
        [(BRCDownloadContentsBatchOperation *)v11 setQueuePriority:-8];
        [(BRCDownloadContentsBatchOperation *)v11 setQualityOfService:9];
        goto LABEL_56;
      }

LABEL_54:
      v59 = v11;
      v60 = 4;
    }

    else
    {
      if (v15)
      {
        br_downloadSpeculative = [MEMORY[0x277CBC4F8] br_downloadUserInitiated];
        goto LABEL_54;
      }

      br_downloadSpeculative = [MEMORY[0x277CBC4F8] br_downloadUpdatedDocuments];
      v59 = v11;
      if (kind == 2)
      {
        v60 = -4;
      }

      else
      {
        v60 = 0;
      }
    }

    [(BRCDownloadContentsBatchOperation *)v59 setQueuePriority:v60, v69];
LABEL_56:
    [(_BRCOperation *)v11 setNonDiscretionary:1, v69];
    [(_BRCOperation *)v11 setGroup:br_downloadSpeculative];
    v61 = brc_bread_crumbs();
    v62 = brc_default_log();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = v11;
      itemsCount = [(BRCTransferBatchOperation *)v11 itemsCount];
      [syncContext contextIdentifier];
      v66 = v65 = v34;
      *buf = 134218498;
      v86 = itemsCount;
      v11 = v63;
      v87 = 2112;
      v88 = v66;
      v89 = 2112;
      v90 = v61;
      _os_log_impl(&dword_223E7A000, v62, OS_LOG_TYPE_DEFAULT, "[NOTICE] downloading %ld documents in %@%@", buf, 0x20u);

      v34 = v65;
    }

    v67 = [syncContext downloadStreamForKind:kind];
    [v67 addBatchOperation:v11];
  }

  v57 = v76;
LABEL_60:

  v68 = *MEMORY[0x277D85DE8];
}

- (void)_postponeLoserForWinner:(int64_t)winner etag:(id)etag
{
  v19 = *MEMORY[0x277D85DE8];
  etagCopy = etag;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  [clientDB execute:{@"UPDATE client_downloads    SET throttle_state = %u  WHERE throttle_id = %lld AND download_kind = %u AND download_etag = %@", 42, winner, 2, etagCopy}];

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    winnerCopy = winner;
    v13 = 2080;
    v14 = BRCPrettyPrintEnum();
    v15 = 2112;
    v16 = etagCopy;
    v17 = 2112;
    v18 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Downloader[%lld-%s-%@]: postpone because loser is more recent than live item%@", buf, 0x2Au);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_transferStreamOfSyncContext:(id)context didBecomeReadyWithMaxRecordsCount:(unint64_t)count sizeHint:(unint64_t)hint priority:(int64_t)priority supportedKinds:(id)kinds
{
  contextCopy = context;
  kindsCopy = kinds;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  [clientDB assertOnQueue];
  v32 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = brc_current_date_nsec();
  if (![(BRCFSSchedulerBase *)self isCancelled])
  {
    contextIdentifier = [contextCopy contextIdentifier];
    v15 = [clientDB fetch:{@"  SELECT throttle_id, next_retry_stamp, download_kind, download_etag     FROM client_downloads    WHERE throttle_state = 1      AND transfer_queue = %@      AND transfer_operation IS NULL      AND download_priority >= %ld      AND indexset_contains(%p, download_kind)  ORDER BY download_priority DESC, download_request_stamp DESC", contextIdentifier, priority, kindsCopy}];

    firstIndex = [kindsCopy firstIndex];
    if ([v15 next])
    {
      v28 = kindsCopy;
      v29 = contextCopy;
      v17 = 0;
      do
      {
        v18 = objc_autoreleasePoolPush();
        v19 = [v15 unsignedIntegerAtIndex:0];
        v20 = [v15 longLongAtIndex:1];
        firstIndex = [v15 intAtIndex:2];
        v21 = [v15 stringAtIndex:3];
        v22 = v21;
        if (v20 <= v13)
        {
          [v15 close];
          v24 = [[BRCFSDownloaderBatchEnumerator alloc] initWithSyncContext:v29 kind:firstIndex now:v13 retryQueueKick:&v32];

          [(BRCFSDownloader *)self _sendContentsBatch:v24 sizeHint:hint maxRecordsCount:count kind:firstIndex];
          v17 = v24;
        }

        else
        {
          v23 = v32;
          if (v32 >= v20)
          {
            v23 = v20;
          }

          v32 = v23;
          [clientDB execute:{@"UPDATE client_downloads    SET transfer_queue = '_retry'  WHERE throttle_id = %ld AND download_kind = %u AND download_etag = %@", v19, firstIndex, v21}];
        }

        objc_autoreleasePoolPop(v18);
      }

      while (([v15 next] & 1) != 0);
      if (v32 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(BRCFSSchedulerBase *)self signalWithDeadline:?];
      }

      kindsCopy = v28;
      contextCopy = v29;
    }

    else
    {
      v17 = 0;
    }

    contextIdentifier2 = [contextCopy contextIdentifier];
    v26 = [clientDB numberWithSQL:{@"SELECT MIN(next_retry_stamp) FROM client_downloads   WHERE throttle_state = 1     AND transfer_queue = %@      AND transfer_operation IS NULL      AND indexset_contains(%p, download_kind) ", contextIdentifier2, kindsCopy}];

    if (v26)
    {
      v27 = [contextCopy downloadStreamForKind:firstIndex];
      [v27 signalWithDeadline:{objc_msgSend(v26, "longLongValue")}];
    }
  }
}

- (void)transferStreamOfSyncContext:(id)context didBecomeReadyWithMaxRecordsCount:(unint64_t)count sizeHint:(unint64_t)hint priority:(int64_t)priority supportedKinds:(id)kinds completionBlock:(id)block
{
  v47 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  kindsCopy = kinds;
  blockCopy = block;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  serialQueue = [clientDB serialQueue];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __130__BRCFSDownloader_transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority_supportedKinds_completionBlock___block_invoke;
  v32[3] = &unk_278502078;
  v32[4] = self;
  v18 = contextCopy;
  v33 = v18;
  countCopy = count;
  hintCopy = hint;
  priorityCopy = priority;
  v19 = kindsCopy;
  v34 = v19;
  v20 = blockCopy;
  v35 = v20;
  v21 = serialQueue;
  v22 = v32;
  v23 = objc_autoreleasePoolPush();
  v39 = 0uLL;
  v40 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v39);
  v24 = brc_bread_crumbs();
  v25 = brc_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v29 = v39;
    label = dispatch_queue_get_label(v21);
    *block = 134218498;
    *&block[4] = v29;
    *&block[12] = 2080;
    *&block[14] = label;
    *&block[22] = 2112;
    v42 = v24;
    _os_log_debug_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", block, 0x20u);
  }

  v45 = v39;
  v46 = v40;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = __dispatch_async_with_logs_block_invoke_7;
  v42 = &unk_2784FF568;
  v26 = v21;
  v43 = v26;
  v27 = v22;
  v44 = v27;
  dispatch_async(v26, block);

  objc_autoreleasePoolPop(v23);
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __130__BRCFSDownloader_transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority_supportedKinds_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _transferStreamOfSyncContext:*(a1 + 40) didBecomeReadyWithMaxRecordsCount:*(a1 + 64) sizeHint:*(a1 + 72) priority:*(a1 + 80) supportedKinds:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

- (void)_reportDownloadErrorForDocument:(id)document error:(id)error
{
  session = self->super.super._session;
  errorCopy = error;
  documentCopy = document;
  localItemSyncErrorReporter = [(BRCAccountSession *)session localItemSyncErrorReporter];
  dbRowID = [documentCopy dbRowID];

  [localItemSyncErrorReporter reportDownloadErrorForItemWithRowID:dbRowID error:errorCopy underlyingError:0];
}

- (void)_clearDownloadErrorForDocument:(id)document
{
  session = self->super.super._session;
  documentCopy = document;
  localItemSyncErrorReporter = [(BRCAccountSession *)session localItemSyncErrorReporter];
  dbRowID = [documentCopy dbRowID];

  [localItemSyncErrorReporter clearDownloadErrorForItemWithRowID:dbRowID];
}

void __25__BRCFSDownloader_resume__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Resuming downloader on FPFS, clearing the client downloads table%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_createDownloadingJobForItem:(os_log_t)log state:kind:etag:stageFileName:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = 136315906;
  v5 = "[BRCFSDownloader _createDownloadingJobForItem:state:kind:etag:stageFileName:error:]";
  v6 = 2080;
  v7 = "(passed to caller)";
  v8 = 2112;
  v9 = a1;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] %s: %s error: %@%@", &v4, 0x2Au);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_finishedDownload:syncContext:operationID:error:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: ![[BRCAccountsManager sharedManager] isInSyncBubble]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] The error is for an unknown item, check if the zone hasn't been wiped%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] We failed downloading a conflict loser so kicking the apply scheduler in case it was blocked for download%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)rescheduleJobsPendingWinnerForItem:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Downloader: scheduling %lld suspended throttles%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_getCancelErrorFromCancelReason:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: New cancel reasons should be mapped to errors%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)cancelAndCleanupItemDownload:kind:etag:andNotifyDownloadTrackers:cancelReason:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: etag == nil%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)cancelAndCleanupItemDownload:kind:etag:andNotifyDownloadTrackers:cancelReason:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: [[BRCFSDownloaderUtil cancellableDownloadKinds] containsObject:@(kind)]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)scheduleContentDownloadForItem:serverItem:options:etagIfLoser:stageFileName:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] no need to schedule anything, we're already actively downloading that same etag%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendContentsBatch:sizeHint:maxRecordsCount:kind:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: ![[BRCAccountsManager sharedManager] isInSyncBubble]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end