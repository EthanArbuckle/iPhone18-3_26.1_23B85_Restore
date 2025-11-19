@interface BRCLocateRecordOperation
- (id)createActivity;
- (void)_performAfterLocatingRecord:(id)a3;
- (void)addLocateRecordCompletionBlock:(id)a3;
- (void)cancelToBeReplacedByOperation:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)itemMarkedForOOBSync:(id)a3;
- (void)main;
@end

@implementation BRCLocateRecordOperation

- (void)itemMarkedForOOBSync:(id)a3
{
  if ([a3 isEqualToItemID:self->_itemID])
  {
    self->_itemMarkedForOOBSyncWhileRunning = 1;
  }
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync/locate-record", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_performAfterLocatingRecord:(id)a3
{
  v4 = a3;
  v5 = [(BRCServerZone *)self->_serverZone clientZone];
  v6 = [v5 fetchRecordSubResourcesWithParentOperation:self pendingChangesStream:0 contentRecordsFetchedInline:1 sessionContext:self->super._sessionContext];

  v7 = [MEMORY[0x277CBEB18] arrayWithObject:self->_recordID];
  v8 = [(CKRecordID *)self->_recordID recordName];
  v9 = [v8 hasPrefix:@"documentStructure/"];

  if (v9)
  {
    v10 = [(BRCItemID *)self->_itemID itemIDString];
    v11 = [@"documentContent/" stringByAppendingString:v10];

    v12 = objc_alloc(MEMORY[0x277CBC5D0]);
    v13 = [(CKRecordID *)self->_recordID zoneID];
    v14 = [v12 initWithRecordName:v11 zoneID:v13];
    [v7 addObject:v14];

LABEL_5:
    goto LABEL_6;
  }

  v15 = [(CKRecordID *)self->_recordID recordName];
  v16 = [v15 hasPrefix:@"documentContent/"];

  if (v16)
  {
    v17 = [(BRCItemID *)self->_itemID itemIDString];
    v11 = [@"documentStructure/" stringByAppendingString:v17];

    v18 = objc_alloc(MEMORY[0x277CBC5D0]);
    v19 = [(CKRecordID *)self->_recordID zoneID];
    v20 = [v18 initWithRecordName:v11 zoneID:v19];
    structureRecordID = self->_structureRecordID;
    self->_structureRecordID = v20;

    [v7 addObject:self->_structureRecordID];
    goto LABEL_5;
  }

LABEL_6:
  if (![(BRCItemID *)self->_itemID isDocumentsFolder]&& [(BRCItemID *)self->_itemID isNonDesktopRoot])
  {
    v22 = objc_alloc(MEMORY[0x277CBC5D0]);
    v23 = [(BRCItemID *)self->_itemID itemIDString];
    v24 = [(CKRecordID *)self->_recordID zoneID];
    v25 = [v22 initWithRecordName:v23 zoneID:v24];
    [v7 addObject:v25];
  }

  v26 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:v7];
  [v26 setShouldFetchAssetContent:0];
  v27 = [MEMORY[0x277CBC5A0] desiredKeysWithMask:185];
  [v26 setDesiredKeys:v27];

  v28 = [v6 callbackQueue];
  [v26 setCallbackQueue:v28];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke;
  v39[3] = &unk_278504F10;
  v29 = v6;
  v40 = v29;
  [v26 setPerRecordCompletionBlock:v39];
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_6;
  v35 = &unk_278503E90;
  v36 = self;
  v37 = v29;
  v38 = v4;
  v30 = v4;
  v31 = v29;
  [v26 setFetchRecordsCompletionBlock:&v32];
  [(_BRCOperation *)self addSubOperation:v26, v32, v33, v34, v35, v36];
}

void __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    [*(a1 + 32) addRecord:a2];
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412802;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] record with id %@ encountered an error while locating - %@%@", &v12, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:*(*(a1 + 32) + 536)];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2;
  v13[3] = &unk_278501638;
  v14 = v5;
  v7 = *(a1 + 40);
  v8 = v7;
  v9 = *(a1 + 32);
  v15 = v8;
  v16 = v9;
  v10 = *(a1 + 48);
  v17 = v6;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  [v7 notifyWhenRecordsAreFetchedAndFinish:v13];
}

void __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) records];
    v3 = [v2 count];

    if (!v3)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v32 = *(*(a1 + 48) + 576);
        v33 = *(a1 + 32);
        *buf = 138412802;
        v36 = v32;
        v37 = 2112;
        v38 = v33;
        v39 = 2112;
        v40 = v11;
        _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Failed to look up record %@ - %@%@", buf, 0x20u);
      }

      v13 = *(a1 + 32);
      v14 = *(*(a1 + 64) + 16);
      goto LABEL_15;
    }
  }

  if (([*(a1 + 40) saveRecordsWithQueryCursor:0] & 1) == 0)
  {
    v7 = *(a1 + 64);
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2_cold_1();
    }

    v10 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Can't alloc ranks after fetching records"];
    (*(v7 + 16))(v7, 0, v10);
    goto LABEL_11;
  }

  v4 = [*(a1 + 40) error];

  if (!v4)
  {
    v17 = (a1 + 56);
    v16 = *(a1 + 56);
    if (v16)
    {
      goto LABEL_18;
    }

    if ([*(*(a1 + 48) + 552) isSharedZone])
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2_cold_4();
      }

      v14 = *(*(a1 + 64) + 16);
LABEL_15:
      v14();
      goto LABEL_16;
    }

    v16 = *v17;
    if (*v17)
    {
LABEL_18:
      v10 = [v16 objectForKeyedSubscript:@"parent"];
      if (!v10)
      {
        if ([*(*(a1 + 48) + 552) isSharedZone])
        {
          v18 = [*v17 share];

          if (v18)
          {
            (*(*(a1 + 64) + 16))();
LABEL_24:

            *(*(a1 + 48) + 504) = [*(a1 + 40) recordsFetched];
            *(*(a1 + 48) + 512) = [*(a1 + 40) recordsFetchedTotalMetadataSize];
            *(*(a1 + 48) + 520) = [*(a1 + 40) xattrsFetchedTotalSize];
            goto LABEL_16;
          }
        }
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v20 = *(a1 + 64);
      if (isKindOfClass)
      {
        v21 = [v10 recordID];
        v22 = [*(*(a1 + 48) + 256) zoneAppRetriever];
        v23 = [v21 brc_itemIDWithZoneAppRetriever:v22];
        (*(v20 + 16))(v20, v23, 0);

        goto LABEL_24;
      }

      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2_cold_2(v17, v26, v27);
      }

      v28 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: parent isn't a reference %@", *v17}];
      (*(v20 + 16))(v20, 0, v28);

      goto LABEL_11;
    }

    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2_cold_3((a1 + 48));
    }

    v31 = *(a1 + 64);
    v10 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:7 description:@"Could not locate record"];
    (*(v31 + 16))(v31, 0, v10);
LABEL_11:

LABEL_16:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v5 = *(a1 + 64);
  v34 = [*(a1 + 40) error];
  (*(v5 + 16))(v5, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 576);
  v8 = [*(a1 + 552) mangledID];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void __32__BRCLocateRecordOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + 576);
      v11 = [*(v9 + 552) mangledID];
      *buf = 138413058;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] Locating recordID %@ in zone %@ --> Record not found. Error %@%@", buf, 0x2Au);
    }

    v12 = *(a1 + 32);
    v13 = MEMORY[0x277CBEC28];
    v14 = v6;
  }

  else
  {
    if (v5)
    {
      v15 = *(*(a1 + 32) + 256);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __32__BRCLocateRecordOperation_main__block_invoke_20;
      v21[3] = &unk_2784FFE90;
      v16 = v5;
      v17 = *(a1 + 32);
      v22 = v16;
      v23 = v17;
      [v15 performAsyncOnClientReadWriteDatabaseWorkloop:v21];

      goto LABEL_8;
    }

    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __32__BRCLocateRecordOperation_main__block_invoke_cold_1();
    }

    v12 = *(a1 + 32);
    v13 = MEMORY[0x277CBEC38];
    v14 = 0;
  }

  [v12 completedWithResult:v13 error:v14];
LABEL_8:

  v18 = *MEMORY[0x277D85DE8];
}

void __32__BRCLocateRecordOperation_main__block_invoke_20(uint64_t a1)
{
  v2 = -[BRCFetchParentChainOperation initWithParentID:sessionContext:zone:isUserWaiting:]([BRCFetchParentChainOperation alloc], "initWithParentID:sessionContext:zone:isUserWaiting:", *(a1 + 32), *(*(a1 + 40) + 256), *(*(a1 + 40) + 552), [*(a1 + 40) nonDiscretionary]);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __32__BRCLocateRecordOperation_main__block_invoke_2;
  v3[3] = &unk_2784FF540;
  v3[4] = *(a1 + 40);
  [(BRCFetchParentChainOperation *)v2 addFetchParentChainCompletionBlock:v3];
  if (!v2)
  {
    __32__BRCLocateRecordOperation_main__block_invoke_20_cold_1();
  }

  [*(a1 + 40) addSubOperation:v2];
}

void __32__BRCLocateRecordOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 576);
      v8 = [*(v6 + 552) mangledID];
      v13 = 138413058;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] Locating recordID %@ in zone %@ --> Fetch parent chain failed with error %@%@", &v13, 0x2Au);
    }

    v9 = *(a1 + 32);
    v10 = MEMORY[0x277CBEC28];
    v11 = v3;
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = MEMORY[0x277CBEC38];
    v11 = 0;
  }

  [v9 completedWithResult:v10 error:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v48.receiver = self;
  v48.super_class = BRCLocateRecordOperation;
  [(_BRCOperation *)&v48 finishWithResult:v6 error:v7];
  if (!v7 && [(_BRCOperation *)self nonDiscretionary])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCLocateRecordOperation finishWithResult:? error:?];
    }

    [(_BRCOperation *)self executionTimeInSec];
    v10 = [AppTelemetryTimeSeriesEvent newQBSOperationPrformanceEventWithTime:@"BRCLocateRecordOperation" type:self->_recordsFetched recordsFetched:self->_recordsFetchedTotalMetadataSize recordsFetchedTotalMetadataSize:self->_xattrsFetchedTotalSize xattrsFetchedTotalSize:?];
    v11 = [(BRCSessionContext *)self->super._sessionContext analyticsReporter];
    [v11 postReportForDefaultSubCategoryWithCategory:11 telemetryTimeEvent:v10];
  }

  v12 = [v6 isEqual:MEMORY[0x277CBEC38]];
  v13 = self;
  objc_sync_enter(v13);
  v13->_exists = v12;
  v14 = v13->_locateRecordCompletionBlocks;
  locateRecordCompletionBlocks = v13->_locateRecordCompletionBlocks;
  v13->_locateRecordCompletionBlocks = 0;

  objc_sync_exit(v13);
  if ([(NSMutableArray *)v14 count])
  {
    if (!v7 && (v12 & 1) == 0)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = [(CKRecordID *)v13->_recordID recordName];
      v7 = [v16 brc_errorItemNotFound:v17];
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __51__BRCLocateRecordOperation_finishWithResult_error___block_invoke;
    v46[3] = &unk_278502540;
    v47 = v14;
    v18 = MEMORY[0x22AA4A310](v46);
    v19 = v13->super._sessionContext;
    v20 = v19;
    if (v7)
    {
      v21 = [(BRCSessionContext *)v19 clientReadWriteDatabaseFacade];
      v22 = [v21 workloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__BRCLocateRecordOperation_finishWithResult_error___block_invoke_2;
      block[3] = &unk_278504F60;
      v44 = v18;
      v45 = v12;
      v43 = v7;
      v23 = v18;
      dispatch_async(v22, block);

      v24 = v44;
    }

    else
    {
      v25 = [(BRCServerZone *)v13->_serverZone clientZone];
      v35 = v6;
      v26 = v13->_itemID;
      v27 = [BRCItemGlobalID alloc];
      v28 = [v25 dbRowID];
      v29 = [(BRCItemGlobalID *)v27 initWithZoneRowID:v28 itemID:v26];

      v30 = [(BRCSessionContext *)v20 clientReadWriteDatabaseFacade];
      v31 = [v30 workloop];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __51__BRCLocateRecordOperation_finishWithResult_error___block_invoke_3;
      v36[3] = &unk_2785011B8;
      v36[4] = v13;
      v37 = v20;
      v38 = v29;
      v40 = v25;
      v41 = v18;
      v39 = v26;
      v32 = v18;
      v24 = v25;
      v33 = v26;
      v34 = v29;
      dispatch_async(v31, v36);

      v6 = v35;
    }
  }
}

void __51__BRCLocateRecordOperation_finishWithResult_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 32);
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

        (*(*(*(&v11 + 1) + 8 * v9) + 16))(*(*(&v11 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __51__BRCLocateRecordOperation_finishWithResult_error___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 528);
  v3 = [*(a1 + 40) itemFetcher];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) clientReadWriteDatabaseFacade];
  v6 = [v3 itemByItemGlobalID:v4 dbFacade:v5];

  if (v6)
  {
    if ([v6 isDocument] & 1) != 0 || (objc_msgSend(*(a1 + 64), "mangledID"), v7 = objc_claimAutoreleasedReturnValue(), +[BRCUserDefaults defaultsForMangledID:](BRCUserDefaults, "defaultsForMangledID:", v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "applyNonDocumentsOnLocateRecord"), v8, v7, (v9))
    {
      v10 = [*(a1 + 64) serverItemByItemID:*(a1 + 56)];
      if (v10 && ([v6 isMarkedForOOBSync] & 1) == 0)
      {
        v11 = [v6 asDocument];
        v12 = [v11 currentVersion];
        v13 = [v10 latestVersion];
        if ([v12 isEtagEqual:v13])
        {
          v14 = [v6 sharingOptions];
          v15 = [v10 sharingOptions];

          if (v14 == v15)
          {
            v16 = [*(a1 + 40) clientReadWriteDatabaseFacade];
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __51__BRCLocateRecordOperation_finishWithResult_error___block_invoke_4;
            v27[3] = &unk_278501520;
            v28 = *(a1 + 72);
            [v16 scheduleFlushWithCheckpoint:0 whenFlushed:v27];

            v17 = v28;
            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      if (([v6 isIdleOrRejected] & 1) == 0 || objc_msgSend(v6, "isMarkedForOOBSync") && v2)
      {
        v22 = *(a1 + 72);
        v23 = [MEMORY[0x277CCA9B8] brc_errorItemChanged];
        (*(v22 + 16))(v22, 1, v23);

LABEL_21:
        goto LABEL_22;
      }

      if (v10 && [v10 isLive])
      {
        [v6 updateFromServerItem:v10];
        [v6 saveToDBForServerEdit:1 keepAliases:0];
      }

      v24 = [*(a1 + 40) clientReadWriteDatabaseFacade];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __51__BRCLocateRecordOperation_finishWithResult_error___block_invoke_5;
      v25[3] = &unk_278501520;
      v26 = *(a1 + 72);
      [v24 scheduleFlushWithCheckpoint:0 whenFlushed:v25];

      v17 = v26;
LABEL_20:

      goto LABEL_21;
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v18 = *(a1 + 72);
    v19 = MEMORY[0x277CCA9B8];
    v20 = [*(a1 + 56) itemIDString];
    v21 = [v19 brc_errorItemNotFound:v20];
    (*(v18 + 16))(v18, 0, v21);
  }

LABEL_22:
}

- (void)addLocateRecordCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  locateRecordCompletionBlocks = v5->_locateRecordCompletionBlocks;
  if (locateRecordCompletionBlocks)
  {
    v7 = MEMORY[0x22AA4A310](v4);
    [(NSMutableArray *)locateRecordCompletionBlocks addObject:v7];
  }

  else
  {
    v8 = [(_BRCOperation *)v5 error];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:161 description:@"Operation already finished"];
    }

    v11 = v10;

    v12 = [(_BRCOperation *)v5 callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__BRCLocateRecordOperation_addLocateRecordCompletionBlock___block_invoke;
    block[3] = &unk_2784FFBF0;
    v14 = v11;
    v15 = v4;
    block[4] = v5;
    v7 = v11;
    dispatch_async(v12, block);
  }

  objc_sync_exit(v5);
}

- (void)cancelToBeReplacedByOperation:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [(BRCLocateRecordOperation *)v5 dependencies];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [v4 addDependency:*(*(&v21 + 1) + 8 * i)];
        }

        v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }

    v10 = v5->_locateRecordCompletionBlocks;
    locateRecordCompletionBlocks = v5->_locateRecordCompletionBlocks;
    v5->_locateRecordCompletionBlocks = 0;

    objc_sync_exit(v5);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = v10;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [v4 addLocateRecordCompletionBlock:{*(*(&v17 + 1) + 8 * j), v17}];
        }

        v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }

    [(_BRCOperation *)v5 cancel];
    if ([(_BRCOperation *)v5 isExecuting])
    {
      [v4 addDependency:v5];
    }
  }

  else
  {
    [(_BRCOperation *)self cancel];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Can't alloc ranks after fetching records%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2_cold_2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_fault_impl(&dword_223E7A000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: parent isn't a reference %@%@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2_cold_3(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*a1 recordID];
  v2 = [v1 debugDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2_cold_4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Located record in shared zone. No need to fetch the parent chain.%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __32__BRCLocateRecordOperation_main__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Record located. No need to fetch the parent chain.%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __32__BRCLocateRecordOperation_main__block_invoke_20_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: fetchParentChainOp%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:(void *)a1 error:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[72];
  [a1 executionTimeInSec];
  v9 = a1[63];
  v10 = a1[64];
  v11 = a1[65];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x3Eu);
  v8 = *MEMORY[0x277D85DE8];
}

@end