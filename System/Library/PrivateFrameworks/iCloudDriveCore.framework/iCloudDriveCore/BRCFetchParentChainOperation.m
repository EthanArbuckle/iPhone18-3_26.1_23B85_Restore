@interface BRCFetchParentChainOperation
- (BRCItemID)parentIDToList;
- (id)createActivity;
- (void)_fetchParentChain:(id)a3;
- (void)addFetchParentChainCompletionBlock:(id)a3;
- (void)cancelToBeReplacedByOperation:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRCFetchParentChainOperation

- (BRCItemID)parentIDToList
{
  parentRecordID = self->_parentRecordID;
  v3 = [(BRCSessionContext *)self->_sessionContext zoneAppRetriever];
  v4 = [(CKRecordID *)parentRecordID brc_itemIDWithZoneAppRetriever:v3];

  return v4;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync/fetch-parent-chain", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_fetchParentChain:(id)a3
{
  v4 = a3;
  if (([v4 brc_isZoneRootRecordID] & 1) != 0 || objc_msgSend(v4, "brc_isAppLibraryRootRecordID"))
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(BRCFetchParentChainOperation *)v5 _fetchParentChain:v6];
    }

    [(_BRCOperation *)self completedWithResult:0 error:0];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CFAE60]);
    v8 = [v4 zoneID];
    v9 = [v7 initWithRecordZoneID:v8];

    v10 = [BRCUserDefaults defaultsForMangledID:v9];
    v11 = [v10 fetchShareRecordsInline];

    v12 = [(BRCServerZone *)self->_serverZone clientZone];
    v13 = [v12 fetchRecordSubResourcesWithParentOperation:self pendingChangesStream:0 contentRecordsFetchedInline:1 sessionContext:self->_sessionContext];

    v14 = objc_alloc(MEMORY[0x277CBC620]);
    v15 = [v14 initWithRecordID:v4 action:*MEMORY[0x277CBC070]];
    v16 = MEMORY[0x277CCAC30];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v11];
    v18 = [v16 predicateWithFormat:@"%K == %@ AND %K == %@", @"recordIds", v15, @"getShareRecords", v17];

    v19 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:@"FetchAncestors" predicate:v18];
    v20 = [objc_alloc(MEMORY[0x277CBC590]) initWithQuery:v19];
    v21 = [v4 zoneID];
    [v20 setZoneID:v21];

    v22 = [BRCUserDefaults defaultsForMangledID:0];
    [v20 setResultsLimit:{objc_msgSend(v22, "maxRecordCountInFetchRecordsOperation")}];

    [v20 setFetchAllResults:1];
    [v20 setShouldFetchAssetContent:0];
    v23 = [v13 callbackQueue];
    [v20 setCallbackQueue:v23];

    v24 = [MEMORY[0x277CBC5A0] desiredKeysWithMask:185];
    [v20 setDesiredKeys:v24];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __50__BRCFetchParentChainOperation__fetchParentChain___block_invoke;
    v30[3] = &unk_2784FFC68;
    v25 = v13;
    v31 = v25;
    [v20 setRecordFetchedBlock:v30];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __50__BRCFetchParentChainOperation__fetchParentChain___block_invoke_2;
    v27[3] = &unk_2784FFF08;
    v28 = v25;
    v29 = self;
    v26 = v25;
    [v20 setQueryCompletionBlock:v27];
    [(_BRCOperation *)self addSubOperation:v20];
  }
}

void __50__BRCFetchParentChainOperation__fetchParentChain___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 cancel];
    [*(a1 + 40) completedWithResult:0 error:v6];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__BRCFetchParentChainOperation__fetchParentChain___block_invoke_3;
    v10[3] = &unk_2784FF4A0;
    v8 = v7;
    v9 = *(a1 + 40);
    v11 = v8;
    v12 = v9;
    v13 = v5;
    [v8 notifyWhenRecordsAreFetchedAndFinish:v10];
  }
}

void __50__BRCFetchParentChainOperation__fetchParentChain___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (v2)
  {
    v3 = *(a1 + 40);
    v9 = [*(a1 + 32) error];
    [v3 completedWithResult:0 error:v9];
  }

  else
  {
    v4 = [*(a1 + 32) saveRecordsWithQueryCursor:*(a1 + 48)];
    *(*(a1 + 40) + 504) = [*(a1 + 32) recordsFetched];
    *(*(a1 + 40) + 512) = [*(a1 + 32) recordsFetchedTotalMetadataSize];
    *(*(a1 + 40) + 520) = [*(a1 + 32) xattrsFetchedTotalSize];
    v5 = *(a1 + 40);
    if (v4)
    {

      [v5 completedWithResult:0 error:0];
    }

    else
    {
      v6 = brc_bread_crumbs();
      v7 = brc_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        __50__BRCFetchParentChainOperation__fetchParentChain___block_invoke_3_cold_1(v6, v7);
      }

      v8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Couldn't allocate ranks when fetching parent chain"];
      [v5 completedWithResult:0 error:v8];
    }
  }
}

- (void)main
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 528);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Fetching parent chain of %@%@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __36__BRCFetchParentChainOperation_main__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 528);
  v4 = [*(v2 + 552) zoneAppRetriever];
  v7 = [v3 brc_itemIDWithZoneAppRetriever:v4];

  v5 = [*(a1 + 40) serverItemByItemID:v7];
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 completedWithResult:0 error:0];
  }

  else
  {
    [v6 _fetchParentChain:v6[66]];
  }
}

- (void)addFetchParentChainCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  fetchParentChainCompletionBlocks = v5->_fetchParentChainCompletionBlocks;
  if (fetchParentChainCompletionBlocks)
  {
    v7 = MEMORY[0x22AA4A310](v4);
    [(NSMutableArray *)fetchParentChainCompletionBlocks addObject:v7];
  }

  else
  {
    v8 = [(_BRCOperation *)v5 callbackQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__BRCFetchParentChainOperation_addFetchParentChainCompletionBlock___block_invoke;
    v9[3] = &unk_2784FFBC8;
    v9[4] = v5;
    v10 = v4;
    dispatch_async(v8, v9);
  }

  objc_sync_exit(v5);
}

void __67__BRCFetchParentChainOperation_addFetchParentChainCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v24.receiver = self;
  v24.super_class = BRCFetchParentChainOperation;
  [(_BRCOperation *)&v24 finishWithResult:a3 error:v6];
  if (!v6 && [(_BRCOperation *)self nonDiscretionary])
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(BRCFetchParentChainOperation *)self finishWithResult:v7 error:v8];
    }

    [(_BRCOperation *)self executionTimeInSec];
    v9 = [AppTelemetryTimeSeriesEvent newQBSOperationPrformanceEventWithTime:@"BRCFetchParentChainOperation" type:self->_recordsFetched recordsFetched:self->_recordsFetchedTotalMetadataSize recordsFetchedTotalMetadataSize:self->_xattrsFetchedTotalSize xattrsFetchedTotalSize:?];
    v10 = [(BRCSessionContext *)self->_sessionContext analyticsReporter];
    [v10 postReportForDefaultSubCategoryWithCategory:11 telemetryTimeEvent:v9];
  }

  v11 = self;
  objc_sync_enter(v11);
  v12 = v11->_fetchParentChainCompletionBlocks;
  fetchParentChainCompletionBlocks = v11->_fetchParentChainCompletionBlocks;
  v11->_fetchParentChainCompletionBlocks = 0;

  objc_sync_exit(v11);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = v12;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        (*(*(*(&v20 + 1) + 8 * v18) + 16))(*(*(&v20 + 1) + 8 * v18));
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)cancelToBeReplacedByOperation:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v30 = self;
    v31 = 2112;
    v32 = v4;
    v33 = 2112;
    v34 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] Cancelling %@ to be replaced by %@%@", buf, 0x20u);
  }

  if (v4)
  {
    v7 = self;
    objc_sync_enter(v7);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [(BRCFetchParentChainOperation *)v7 dependencies];
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v9)
    {
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [v4 addDependency:*(*(&v23 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v9);
    }

    v12 = v7->_fetchParentChainCompletionBlocks;
    fetchParentChainCompletionBlocks = v7->_fetchParentChainCompletionBlocks;
    v7->_fetchParentChainCompletionBlocks = 0;

    objc_sync_exit(v7);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v12;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v15)
    {
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [v4 addFetchParentChainCompletionBlock:{*(*(&v19 + 1) + 8 * v17++), v19}];
        }

        while (v15 != v17);
        v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v15);
    }

    [(_BRCOperation *)v7 cancel];
    if ([(_BRCOperation *)v7 isExecuting])
    {
      [v4 addDependency:v7];
    }
  }

  else
  {
    [(_BRCOperation *)self cancel];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_fetchParentChain:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] found zone root record ID%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __50__BRCFetchParentChainOperation__fetchParentChain___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't allocate ranks when fetching parent chain%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:(NSObject *)a3 error:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 528) debugDescription];
  [a1 executionTimeInSec];
  v7 = *(a1 + 504);
  v8 = *(a1 + 512);
  v9 = *(a1 + 520);
  v12 = 138413570;
  v13 = v6;
  v14 = 2048;
  v15 = v10;
  v16 = 2048;
  v17 = v7;
  v18 = 2048;
  v19 = v8;
  v20 = 2048;
  v21 = v9;
  v22 = 2112;
  v23 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Fetch parent chain of %@ took [%f] Secs and fetched [%llu,%llu] records [%llu] xattrs%@", &v12, 0x3Eu);

  v11 = *MEMORY[0x277D85DE8];
}

@end