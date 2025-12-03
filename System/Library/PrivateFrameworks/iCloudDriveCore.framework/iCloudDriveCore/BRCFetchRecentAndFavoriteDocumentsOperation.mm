@interface BRCFetchRecentAndFavoriteDocumentsOperation
- (BRCFetchRecentAndFavoriteDocumentsOperation)initWithServerZone:(id)zone sessionContext:(id)context;
- (id)createActivity;
- (unsigned)_errorRetryType:(id)type;
- (void)_performQueryOperationForBit:(unsigned int)bit index:(id)index completion:(id)completion;
- (void)main;
@end

@implementation BRCFetchRecentAndFavoriteDocumentsOperation

- (BRCFetchRecentAndFavoriteDocumentsOperation)initWithServerZone:(id)zone sessionContext:(id)context
{
  zoneCopy = zone;
  contextCopy = context;
  mangledID = [zoneCopy mangledID];
  v10 = [mangledID description];
  v11 = [@"fetch-recent-documents" stringByAppendingPathComponent:v10];

  metadataSyncContext = [zoneCopy metadataSyncContext];
  v16.receiver = self;
  v16.super_class = BRCFetchRecentAndFavoriteDocumentsOperation;
  v13 = [(_BRCOperation *)&v16 initWithName:v11 syncContext:metadataSyncContext sessionContext:contextCopy];

  if (v13)
  {
    [(_BRCOperation *)v13 setNonDiscretionary:1];
    br_fetchRecents = [MEMORY[0x277CBC4F8] br_fetchRecents];
    [(_BRCOperation *)v13 setGroup:br_fetchRecents];

    objc_storeStrong(&v13->_serverZone, zone);
  }

  return v13;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync/fetch-recents", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (unsigned)_errorRetryType:(id)type
{
  typeCopy = type;
  if ([typeCopy br_isCKErrorCode:15])
  {
    brc_isRetriable = 2;
  }

  else if ([typeCopy br_isCKErrorCode:4])
  {
    userInfo = [typeCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    domain = [v6 domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA738]])
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "code")}];
      if ([&unk_2837B0C10 indexOfObject:v8] == 0x7FFFFFFFFFFFFFFFLL)
      {
        brc_isRetriable = 2;
      }

      else
      {
        brc_isRetriable = 1;
      }
    }

    else
    {
      brc_isRetriable = 2;
    }
  }

  else
  {
    brc_isRetriable = [typeCopy brc_isRetriable];
  }

  return brc_isRetriable;
}

- (void)_performQueryOperationForBit:(unsigned int)bit index:(id)index completion:(id)completion
{
  indexCopy = index;
  completionCopy = completion;
  if (([(BRCServerZone *)self->_serverZone state]& bit) != 0)
  {
    completionCopy[2](completionCopy, self, 0);
  }

  else
  {
    indexCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"indexName", indexCopy];
    v10 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:@"SearchIndexes" predicate:indexCopy];
    clientZone = [(BRCServerZone *)self->_serverZone clientZone];
    v12 = [clientZone fetchRecordSubResourcesWithParentOperation:self pendingChangesStream:0 contentRecordsFetchedInline:0 sessionContext:self->super._sessionContext];

    v13 = self->_serverZone;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __93__BRCFetchRecentAndFavoriteDocumentsOperation__performQueryOperationForBit_index_completion___block_invoke;
    v43[3] = &unk_2784FFBA0;
    v14 = v13;
    v44 = v14;
    bitCopy = bit;
    [v12 setQueryFinishedServerTruthCallback:v43];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __93__BRCFetchRecentAndFavoriteDocumentsOperation__performQueryOperationForBit_index_completion___block_invoke_2;
    v37[3] = &unk_2784FFC40;
    v41 = completionCopy;
    v37[4] = self;
    v38 = v14;
    v15 = indexCopy;
    v39 = v15;
    bitCopy2 = bit;
    v16 = v12;
    v40 = v16;
    v28 = v14;
    v17 = MEMORY[0x22AA4A310](v37);
    v18 = [objc_alloc(MEMORY[0x277CBC590]) initWithQuery:v10];
    zoneID = [(BRCServerZone *)self->_serverZone zoneID];
    [v18 setZoneID:zoneID];

    mangledID = [(BRCServerZone *)self->_serverZone mangledID];
    v21 = [BRCUserDefaults defaultsForMangledID:mangledID];
    numberOfGreedyRecentlyUsedItems = [v21 numberOfGreedyRecentlyUsedItems];

    if (numberOfGreedyRecentlyUsedItems >= 0x96)
    {
      v23 = 150;
    }

    else
    {
      v23 = numberOfGreedyRecentlyUsedItems;
    }

    [v18 setResultsLimit:v23];
    [v18 setFetchAllResults:0];
    [v18 setShouldFetchAssetContent:0];
    v24 = [MEMORY[0x277CBC5A0] desiredKeysWithMask:185];
    [v18 setDesiredKeys:v24];

    callbackQueue = [v16 callbackQueue];
    [v18 setCallbackQueue:callbackQueue];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __93__BRCFetchRecentAndFavoriteDocumentsOperation__performQueryOperationForBit_index_completion___block_invoke_2_30;
    v35[3] = &unk_2784FFC68;
    v26 = v16;
    v36 = v26;
    [v18 setRecordFetchedBlock:v35];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __93__BRCFetchRecentAndFavoriteDocumentsOperation__performQueryOperationForBit_index_completion___block_invoke_3_32;
    v30[3] = &unk_2784FFCB8;
    v31 = v26;
    completionCopy = v17;
    v34 = completionCopy;
    selfCopy = self;
    v33 = v15;
    v27 = v26;
    [v18 setQueryCompletionBlock:v30];
    [(_BRCOperation *)self addSubOperation:v18];
  }
}

void __93__BRCFetchRecentAndFavoriteDocumentsOperation__performQueryOperationForBit_index_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) _errorRetryType:v6];
    if (v7 != 1)
    {
      v9 = v7;
      v10 = [*(a1 + 40) db];
      v11 = [v10 serialQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __93__BRCFetchRecentAndFavoriteDocumentsOperation__performQueryOperationForBit_index_completion___block_invoke_3;
      block[3] = &unk_2784FFC18;
      v19 = v9;
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = v6;
      v20 = *(a1 + 72);
      v16 = *(a1 + 56);
      v18 = *(a1 + 64);
      v17 = v5;
      dispatch_async(v11, block);

      goto LABEL_7;
    }

    v8 = *(*(a1 + 64) + 16);
  }

  else
  {
    v8 = *(*(a1 + 64) + 16);
  }

  v8();
LABEL_7:
}

void __93__BRCFetchRecentAndFavoriteDocumentsOperation__performQueryOperationForBit_index_completion___block_invoke_3(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 80);
  if (v2 && (v2 != 2 || [*(a1 + 32) fetchRecentsAndFavoritesRetriesLeft]))
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = [*(a1 + 32) fetchRecentsAndFavoritesRetriesLeft];
      *buf = 138412802;
      v25 = v5;
      v26 = 2048;
      v27 = v6;
      v28 = 2112;
      v29 = v3;
      _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] Considering error %@ as retriable for a few times. retries left: %lu%@", buf, 0x20u);
    }

    [*(a1 + 32) decrementFetchRecentsAndFavoritesRetriesLeft];
    v7 = [*(a1 + 56) callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__BRCFetchRecentAndFavoriteDocumentsOperation__performQueryOperationForBit_index_completion___block_invoke_25;
    block[3] = &unk_2784FFBF0;
    v8 = &v20;
    v20 = *(a1 + 72);
    v9 = &v18;
    v18 = *(a1 + 64);
    v19 = *(a1 + 48);
    dispatch_async(v7, block);

    v10 = v19;
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      v13 = *(a1 + 48);
      v15 = [*(a1 + 32) fetchRecentsAndFavoritesRetriesLeft];
      *buf = 138413058;
      v25 = v14;
      v26 = 2112;
      v27 = v13;
      v28 = 2048;
      v29 = v15;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] We seem to be unable to fetch %@. Setting the bit anyway to allow the sync engine to progress (error %@). retries left: %lu%@", buf, 0x2Au);
    }

    [*(a1 + 32) setStateBits:*(a1 + 84)];
    [*(a1 + 32) resetFetchRecentsAndFavoritesRetriesLeft];
    v10 = [*(a1 + 56) callbackQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __93__BRCFetchRecentAndFavoriteDocumentsOperation__performQueryOperationForBit_index_completion___block_invoke_23;
    v21[3] = &unk_2784FFBC8;
    v8 = &v23;
    v23 = *(a1 + 72);
    v9 = &v22;
    v22 = *(a1 + 64);
    dispatch_async(v10, v21);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __93__BRCFetchRecentAndFavoriteDocumentsOperation__performQueryOperationForBit_index_completion___block_invoke_3_32(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 cancel];
    v6 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __93__BRCFetchRecentAndFavoriteDocumentsOperation__performQueryOperationForBit_index_completion___block_invoke_4;
    v10[3] = &unk_2784FFC90;
    v11 = v5;
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v14 = v7;
    v12 = v8;
    v13 = v9;
    [v11 notifyWhenRecordsAreFetchedAndFinish:v10];
  }
}

void __93__BRCFetchRecentAndFavoriteDocumentsOperation__performQueryOperationForBit_index_completion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 40);
    v14 = [*(a1 + 32) error];
    (*(v3 + 16))(v3, v4, v14);
  }

  else
  {
    v5 = [*(a1 + 32) saveRecordsWithQueryCursor:0];
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);
    if (v5)
    {
      v8 = *(v6 + 16);
      v9 = *(a1 + 56);
      v10 = *(a1 + 40);

      v8(v9, v10, 0);
    }

    else
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        __93__BRCFetchRecentAndFavoriteDocumentsOperation__performQueryOperationForBit_index_completion___block_invoke_4_cold_1(a1, v11, v12);
      }

      v13 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Couldn't allocate ranks when fetching query %@", *(a1 + 48)}];
      (*(v6 + 16))(v6, v7, v13);
    }
  }
}

- (void)main
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__BRCFetchRecentAndFavoriteDocumentsOperation_main__block_invoke;
  v2[3] = &unk_2784FFCE0;
  v2[4] = self;
  [(BRCFetchRecentAndFavoriteDocumentsOperation *)self _performQueryOperationForBit:8 index:@"recent_documents" completion:v2];
}

uint64_t __51__BRCFetchRecentAndFavoriteDocumentsOperation_main__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {

    return [v5 completedWithResult:0 error:a3];
  }

  else
  {
    v7[5] = v3;
    v7[6] = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__BRCFetchRecentAndFavoriteDocumentsOperation_main__block_invoke_2;
    v7[3] = &unk_2784FFCE0;
    v7[4] = v5;
    return [v5 _performQueryOperationForBit:16 index:@"favorite_documents" completion:v7];
  }
}

void __93__BRCFetchRecentAndFavoriteDocumentsOperation__performQueryOperationForBit_index_completion___block_invoke_4_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_fault_impl(&dword_223E7A000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't allocate ranks when fetching query %@%@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end