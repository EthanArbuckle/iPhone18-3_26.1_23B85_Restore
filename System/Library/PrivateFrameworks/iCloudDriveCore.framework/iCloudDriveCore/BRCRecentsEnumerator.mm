@interface BRCRecentsEnumerator
+ (void)dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler:(id)a3;
- (BOOL)hasDeletedFileObjectID:(id)a3;
- (BRCRecentsEnumerator)initWithAccountSession:(id)a3;
- (char)computeTombstoneEntryType:(id)a3;
- (id)_deletedDocIdResultSetFromNotifRank:(unint64_t)a3 batchSize:(unint64_t)a4;
- (id)changeTokenForNotifRank:(unint64_t)a3;
- (void)_activeSetDidChange;
- (void)_deleteAllRanks;
- (void)_enumerateChangesFromChangeToken:(id)a3 limit:(unint64_t)a4 completion:(id)a5;
- (void)_handleResetForRowID:(int64_t)a3 notifRank:(unint64_t)a4 completionHandler:(id)a5;
- (void)_readyForIndexingWithAckedRank:(unint64_t)a3;
- (void)cancel;
- (void)close;
- (void)dealloc;
- (void)enumerateChangesFromChangeToken:(id)a3 limit:(unint64_t)a4 completion:(id)a5;
- (void)garbageCollectRanksPreceding:(unint64_t)a3;
- (void)itemWasDeletedWithFileObjectID:(id)a3 notifRank:(unint64_t)a4;
- (void)maxNotifRankWasFlushed;
- (void)resume;
@end

@implementation BRCRecentsEnumerator

- (void)_activeSetDidChange
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] active set did change, notifying fileproviderd%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__BRCRecentsEnumerator__activeSetDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, 0x90u))
    {
      __43__BRCRecentsEnumerator__activeSetDidChange__block_invoke_cold_1();
    }
  }
}

uint64_t __46__BRCRecentsEnumerator_maxNotifRankWasFlushed__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 40) < v2)
  {
    *(v1 + 40) = v2;
    return [*(result + 32) _signalActiveSetDidChange];
  }

  return result;
}

- (void)maxNotifRankWasFlushed
{
  v3 = [(BRCAccountSession *)self->_session clientDB];
  [v3 assertOnQueue];

  v4 = [(BRCPersistedState *)BRCClientRanksPersistedState loadFromClientStateInSession:self->_session];
  v5 = [v4 nextNotifRank] - 1;

  tracker = self->_tracker;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__BRCRecentsEnumerator_maxNotifRankWasFlushed__block_invoke;
  v8[3] = &unk_278500D50;
  v8[4] = self;
  v8[5] = v5;
  brc_task_tracker_async_with_logs(tracker, queue, v8, &__block_literal_global_83);
}

+ (void)dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (([MEMORY[0x277CC34A8] isIndexingAvailable] & 1) == 0)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[BRCRecentsEnumerator dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler:];
    }

    goto LABEL_8;
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"didDropCoreSpotlightIndex", *MEMORY[0x277CFAC08], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && AppBooleanValue)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[BRCRecentsEnumerator dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler:];
    }

LABEL_8:

    if (v3)
    {
      v3[2](v3, 0);
    }

    goto LABEL_15;
  }

  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] dropping CoreSpotlight index%@", buf, 0xCu);
  }

  v9 = objc_alloc(MEMORY[0x277CC34A8]);
  v10 = [v9 initWithName:@"com.apple.clouddocs-items" protectionClass:*MEMORY[0x277CCA1A0]];
  if (!v10)
  {
    +[BRCRecentsEnumerator dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler:];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__BRCRecentsEnumerator_dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler___block_invoke;
  v12[3] = &unk_278501F20;
  v13 = v3;
  [v10 deleteAllSearchableItemsWithCompletionHandler:v12];

LABEL_15:
  v11 = *MEMORY[0x277D85DE8];
}

void __82__BRCRecentsEnumerator_dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __82__BRCRecentsEnumerator_dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler___block_invoke_cold_1();
    }

LABEL_4:

    goto LABEL_8;
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __82__BRCRecentsEnumerator_dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler___block_invoke_cold_2();
  }

  v8 = MEMORY[0x277CFAC08];
  CFPreferencesSetAppValue(@"didDropCoreSpotlightIndex", MEMORY[0x277CBEC38], *MEMORY[0x277CFAC08]);
  if (!CFPreferencesAppSynchronize(*v8))
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __82__BRCRecentsEnumerator_dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler___block_invoke_cold_3();
    }

    goto LABEL_4;
  }

LABEL_8:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }
}

- (char)computeTombstoneEntryType:(id)a3
{
  v3 = [a3 type];
  if (v3 == 3)
  {
    v4 = 5;
  }

  else
  {
    v4 = 3;
  }

  if (v3 == 2)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

- (void)_deleteAllRanks
{
  v2 = [(BRCAccountSession *)self->_session clientDB];
  [v2 execute:@"DELETE FROM tombstones"];
}

- (void)garbageCollectRanksPreceding:(unint64_t)a3
{
  if (garbageCollectRanksPreceding__onceToken != -1)
  {
    [BRCRecentsEnumerator garbageCollectRanksPreceding:];
  }

  v5 = time(0);
  v6 = v5 + *&garbageCollectRanksPreceding__tombstonesAgeDeltaAfterEnumerated;
  v7 = [(BRCAccountSession *)self->_session clientDB];
  [v7 execute:{@"UPDATE tombstones SET expiration = %ld WHERE notif_rank < %llu AND expiration IS NULL", v6, a3}];

  v8 = [(BRCAccountSession *)self->_session clientDB];
  [v8 execute:{@"DELETE FROM tombstones WHERE notif_rank < %llu AND expiration IS NOT NULL AND expiration < %ld", a3, v5}];
}

void __53__BRCRecentsEnumerator_garbageCollectRanksPreceding___block_invoke()
{
  v1 = [BRCUserDefaults defaultsForMangledID:0];
  [v1 tombstonesAgeDeltaAfterEnumerated];
  garbageCollectRanksPreceding__tombstonesAgeDeltaAfterEnumerated = v0;
}

- (void)_readyForIndexingWithAckedRank:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    flushedNotifRank = self->_flushedNotifRank;
    v11 = 134218498;
    v12 = a3;
    v13 = 2048;
    v14 = flushedNotifRank;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] Learning index acked rank %llu (flushed rank %llu)%@", &v11, 0x20u);
  }

  if (a3 + 1 > self->_flushedNotifRank)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRCRecentsEnumerator _readyForIndexingWithAckedRank:];
    }
  }

  [(BRCRecentsEnumerator *)self _signalActiveSetDidChange];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)changeTokenForNotifRank:(unint64_t)a3
{
  v5 = objc_alloc_init(BRCRecentsChangeToken);
  [(BRCRecentsChangeToken *)v5 setDatabaseID:[(BRCAccountSession *)self->_session databaseIDHash]];
  [(BRCRecentsChangeToken *)v5 setNotifRank:a3];
  v6 = [(BRCRecentsChangeToken *)v5 toData];

  return v6;
}

- (void)_handleResetForRowID:(int64_t)a3 notifRank:(unint64_t)a4 completionHandler:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v44 = a3;
    v45 = 2048;
    v46 = a4;
    v47 = 2112;
    v48 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] handling reset for rowID %lld, notif rank: %llu%@", buf, 0x20u);
  }

  v11 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
  session = self->_session;
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v14 = [(BRCAccountSession *)session serverZoneByRowID:v13];
  v15 = [v14 clientZone];

  if ([v15 isPrivateZone])
  {
    v32 = v11;
    v33 = a4;
    v16 = [v15 asPrivateClientZone];
    v17 = [v16 appLibraries];

    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v17, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = [v15 asPrivateClientZone];
    v20 = [v19 appLibraries];

    v21 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v39;
      do
      {
        v24 = 0;
        do
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v38 + 1) + 8 * v24) appLibraryID];
          if (v25)
          {
            [v18 addObject:v25];
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v22);
    }

    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = v18;
      v45 = 2112;
      v46 = v26;
      _os_log_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEFAULT, "[WARNING] Dropping spotlight index for %@ due to a reset%@", buf, 0x16u);
    }

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __73__BRCRecentsEnumerator__handleResetForRowID_notifRank_completionHandler___block_invoke;
    v34[3] = &unk_278500338;
    v34[4] = self;
    v35 = v18;
    v37 = v33;
    v36 = v8;
    v28 = v18;
    v11 = v32;
    [v32 deleteSearchableItemsWithSpotlightDomainIdentifiers:v28 completionHandler:v34];

    goto LABEL_20;
  }

  v29 = brc_bread_crumbs();
  v30 = brc_default_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v29;
    _os_log_impl(&dword_223E7A000, v30, OS_LOG_TYPE_DEFAULT, "[WARNING] reset zone is not a private zone, skipping%@", buf, 0xCu);
  }

  [(BRCRecentsEnumerator *)self _readyForIndexingWithAckedRank:a4];
  if (v8)
  {
    v17 = [(BRCRecentsEnumerator *)self changeTokenForNotifRank:a4];
    (*(v8 + 2))(v8, v17, 0);
LABEL_20:
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __73__BRCRecentsEnumerator__handleResetForRowID_notifRank_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__BRCRecentsEnumerator__handleResetForRowID_notifRank_completionHandler___block_invoke_2;
  block[3] = &unk_2785018F0;
  v10 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v14 = *(a1 + 56);
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v8 = v3;
  dispatch_async(v4, block);
}

void __73__BRCRecentsEnumerator__handleResetForRowID_notifRank_completionHandler___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    goto LABEL_6;
  }

  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, 0x90u))
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v2;
    _os_log_error_impl(&dword_223E7A000, v3, 0x90u, "[ERROR] Failed to delete searchable items for mangledIDs %@: %@%@", &v10, 0x20u);
  }

  if (*(a1 + 32))
  {
    v4 = *(a1 + 64) - 1;
  }

  else
  {
LABEL_6:
    v4 = *(a1 + 64);
  }

  [*(a1 + 48) _readyForIndexingWithAckedRank:v4];
  v5 = [*(a1 + 48) changeTokenForNotifRank:v4];
  v6 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_deletedDocIdResultSetFromNotifRank:(unint64_t)a3 batchSize:(unint64_t)a4
{
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(BRCPQLConnection *)self->_indexingDB fetch:@"SELECT file_object_id, file_object_id_type, notif_rank FROM tombstones    WHERE notif_rank >= %lld AND expiration IS NULL ORDER BY notif_rank ASC LIMIT %lld", a3, a4];

  return v7;
}

- (void)_enumerateChangesFromChangeToken:(id)a3 limit:(unint64_t)a4 completion:(id)a5
{
  v97 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v49 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v48 = v8;
  v50 = self;
  if (v8)
  {
    v9 = [v8 databaseID];
    if (v9 != [(BRCAccountSession *)self->_session databaseIDHash])
    {
      v32 = brc_bread_crumbs();
      v33 = brc_default_log();
      if (os_log_type_enabled(v33, 0x90u))
      {
        [BRCRecentsEnumerator _enumerateChangesFromChangeToken:limit:completion:];
      }

      v34 = [(BRCAccountSession *)self->_session clientTruthWorkloop];
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke;
      v76[3] = &unk_278500048;
      v76[4] = self;
      v77 = v49;
      dispatch_async(v34, v76);

      goto LABEL_42;
    }

    v10 = [v8 notifRank];
    v8 = ([v8 notifRank] + 1);
    p_flushedNotifRank = &self->_flushedNotifRank;
    if (v8 > self->_flushedNotifRank)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v40 = *p_flushedNotifRank;
        *buf = 134218498;
        v92 = v8;
        v93 = 2048;
        v94 = v40;
        v95 = 2112;
        v96 = v11;
        _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] incoming rank is newer than what we know about: %lld > %lld, stopping here%@", buf, 0x20u);
      }

      if (v49)
      {
        v13 = [(BRCRecentsEnumerator *)self changeTokenForNotifRank:v10];
        (*(v49 + 2))(v49, 0, 0, v13, 0);
      }

      goto LABEL_42;
    }
  }

  else
  {
    p_flushedNotifRank = &self->_flushedNotifRank;
  }

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  v51 = a4;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v39 = *p_flushedNotifRank;
    *buf = 134218498;
    v92 = v8;
    v93 = 2048;
    v94 = v39;
    v95 = 2112;
    v96 = v14;
    _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] enumerating changes from notif rank %llu (max %llu)%@", buf, 0x20u);
  }

  v47 = v8;

  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_85;
  v75[3] = &unk_278505318;
  v75[4] = &v86;
  v75[5] = &v82;
  v75[6] = &v78;
  v46 = MEMORY[0x22AA4A310](v75);
  v44 = [(BRCAccountSession *)self->_session itemsNeedingIndexingEnumeratorFromNotifRank:v8 batchSize:a4 db:self->_indexingDB];
  v45 = [(BRCRecentsEnumerator *)self _deletedDocIdResultSetFromNotifRank:v8 batchSize:a4];
  v16 = [(BRCAccountSession *)self->_session clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_91;
  block[3] = &unk_278500D50;
  block[4] = self;
  block[5] = v8;
  dispatch_async(v16, block);

  (v46)[2](v46, v45);
  if (v79[3] == v8 && *(v83 + 24) == 2)
  {
    v17 = v87[3];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_2_92;
    v72[3] = &unk_278505360;
    v73 = v49;
    [(BRCRecentsEnumerator *)self _handleResetForRowID:v17 notifRank:v8 completionHandler:v72];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v18 = objc_alloc_init(BRCRecentsChangeToken);
    v19 = [[BRCRecentsEnumeratorBatch alloc] initWithBatchSize:a4];
    [(BRCRecentsChangeToken *)v18 setDatabaseID:[(BRCAccountSession *)v50->_session databaseIDHash]];
    v43 = v18;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_3;
    v63[3] = &unk_278505388;
    v68 = &v78;
    v63[4] = v50;
    v69 = &v82;
    v70 = &v86;
    v20 = v19;
    v64 = v20;
    v66 = &__block_literal_global_89_2;
    v71 = a4;
    v67 = v46;
    v65 = v45;
    v21 = MEMORY[0x22AA4A310](v63);
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v22 = v44;
    v23 = [v22 countByEnumeratingWithState:&v59 objects:v90 count:16];
    if (v23)
    {
      v24 = *v60;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v60 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v59 + 1) + 8 * i);
          v27 = objc_autoreleasePoolPush();
          while (1)
          {
            v28 = v79[3];
            if (v28 >= [v26 notifsRank])
            {
              break;
            }

            if ((v21[2](v21) & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          if ([v26 notifsRank] <= *p_flushedNotifRank)
          {
            [(BRCRecentsEnumeratorBatch *)v20 addIndexOfItem:v26];
            if ([(BRCRecentsEnumeratorBatch *)v20 batchCount]< v51)
            {
              v29 = [(BRCRecentsEnumeratorBatch *)v20 rank]< *p_flushedNotifRank;
              goto LABEL_27;
            }
          }

LABEL_26:
          v29 = 0;
LABEL_27:
          objc_autoreleasePoolPop(v27);
          if (!v29)
          {

            goto LABEL_38;
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v59 objects:v90 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    do
    {
      if (v79[3] == -1)
      {
        break;
      }

      v30 = objc_autoreleasePoolPush();
      v31 = v21[2](v21);
      objc_autoreleasePoolPop(v30);
    }

    while ((v31 & 1) != 0);
LABEL_38:
    [v22 close];
    v35 = [(BRCRecentsEnumeratorBatch *)v20 rank];
    if (!v35)
    {
      v35 = *p_flushedNotifRank;
    }

    [(BRCRecentsChangeToken *)v43 setNotifRank:v35];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_96;
    v53[3] = &unk_2785053D8;
    v58 = v47;
    v36 = v20;
    v54 = v36;
    v55 = v50;
    v37 = v43;
    v56 = v37;
    v57 = v49;
    [(BRCRecentsEnumeratorBatch *)v36 listItems:v53];

    objc_autoreleasePoolPop(contexta);
  }

LABEL_42:
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);

  v38 = *MEMORY[0x277D85DE8];
}

void __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _deleteAllRanks];
  if (*(a1 + 40))
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-1002 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }
}

void __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_85(void *a1, void *a2)
{
  v4 = a2;
  if ([v4 next])
  {
    *(*(a1[4] + 8) + 24) = [v4 unsignedLongLongAtIndex:0];
    *(*(a1[5] + 8) + 24) = [v4 intAtIndex:1];
    v3 = [v4 longLongAtIndex:2];
  }

  else
  {
    *(*(a1[4] + 8) + 24) = 0;
    v3 = -1;
  }

  *(*(a1[6] + 8) + 24) = v3;
}

id __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  switch(a3)
  {
    case 3:
      v4 = objc_alloc(MEMORY[0x277CFAE48]);
      v5 = a2;
      v6 = 1;
      goto LABEL_7;
    case 5:
      v4 = objc_alloc(MEMORY[0x277CFAE48]);
      v5 = a2;
      v6 = 3;
      goto LABEL_7;
    case 4:
      v4 = objc_alloc(MEMORY[0x277CFAE48]);
      v5 = a2;
      v6 = 2;
LABEL_7:
      v7 = [v4 initWithRowID:v5 type:v6];
      goto LABEL_11;
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_2_cold_1();
  }

  v7 = 0;
LABEL_11:

  return v7;
}

uint64_t __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_2_92(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2, a3);
  }

  return result;
}

uint64_t __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 72) + 8) + 24) > *(*(a1 + 32) + 40))
  {
    return 0;
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 2)
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_3_cold_1(a1);
    }

    [*(a1 + 40) setRank:*(*(*(a1 + 72) + 8) + 24) - 1];
    return 0;
  }

  v5 = *(a1 + 56);
  v6 = *(*(*(a1 + 88) + 8) + 24);
  v7 = (*(*(a1 + 56) + 16))();
  [*(a1 + 40) addDeletionOfFileObjectID:v7 rank:*(*(*(a1 + 72) + 8) + 24)];
  if ([*(a1 + 40) batchCount] >= *(a1 + 96) || objc_msgSend(*(a1 + 40), "rank") >= *(*(a1 + 32) + 40))
  {
    v4 = 0;
  }

  else
  {
    v8 = *(a1 + 48);
    (*(*(a1 + 64) + 16))();
    v4 = 1;
  }

  return v4;
}

void __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 64);
    v19 = [*(a1 + 32) rank];
    *buf = 134219010;
    v31 = v18;
    v32 = 2048;
    v33 = v19;
    v34 = 2112;
    v35 = v5;
    v36 = 2112;
    v37 = v6;
    v38 = 2112;
    v39 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] sending batch from %llu to %llu\n updatedItems = %@\n deletedItems = %@%@", buf, 0x34u);
  }

  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(v10 + 48);
  v12 = *(v10 + 16);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_97;
  v25[3] = &unk_2785053B0;
  v25[4] = v10;
  v26 = v9;
  v29 = *(a1 + 56);
  v27 = v5;
  v28 = v6;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_2_98;
  v20[3] = &unk_2785053B0;
  v13 = *(a1 + 48);
  v20[4] = *(a1 + 40);
  v21 = v13;
  v14 = *(a1 + 56);
  v23 = v28;
  v24 = v14;
  v22 = v27;
  v15 = v28;
  v16 = v27;
  brc_task_tracker_async_with_logs(v11, v12, v25, v20);

  v17 = *MEMORY[0x277D85DE8];
}

void __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_97(uint64_t a1)
{
  [*(a1 + 32) _readyForIndexingWithAckedRank:{objc_msgSend(*(a1 + 40), "notifRank")}];
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) toData];
  (*(v2 + 16))(v2, v4, v3, v5, 0);
}

void __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_2_98(uint64_t a1)
{
  [*(a1 + 32) _readyForIndexingWithAckedRank:{objc_msgSend(*(a1 + 40), "notifRank")}];
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) toData];
  (*(v2 + 16))(v2, v4, v3, v5, 0);
}

- (void)enumerateChangesFromChangeToken:(id)a3 limit:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [BRCRecentsChangeToken changeTokenFromData:a3];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke;
  v20[3] = &unk_278501940;
  v20[4] = self;
  v10 = v9;
  v21 = v10;
  v23 = a4;
  v11 = v8;
  v22 = v11;
  v12 = MEMORY[0x22AA4A310](v20);
  v13 = v12;
  if (v10)
  {
    (*(v12 + 16))(v12);
  }

  else
  {
    tracker = self->_tracker;
    v15 = [(BRCAccountSession *)self->_session clientTruthWorkloop];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke_4;
    v18[3] = &unk_278500048;
    v18[4] = self;
    v19 = v13;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke_5;
    v16[3] = &unk_278501520;
    v17 = v11;
    brc_task_tracker_async_with_logs(tracker, v15, v18, v16);
  }
}

void __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke_2;
  v11[3] = &unk_278501940;
  v11[4] = v3;
  v6 = v2;
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v12 = v6;
  v14 = v7;
  v13 = v8;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke_3;
  v9[3] = &unk_278501520;
  v10 = *(a1 + 48);
  brc_task_tracker_async_with_logs(v4, v5, v11, v9);
}

void __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v1 + 16))(v1, 0, 0, 0, v2);
}

uint64_t __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _deleteAllRanks];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __73__BRCRecentsEnumerator_enumerateChangesFromChangeToken_limit_completion___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v1 + 16))(v1, 0, 0, 0, v2);
}

- (BRCRecentsEnumerator)initWithAccountSession:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = BRCRecentsEnumerator;
  v6 = [(BRCRecentsEnumerator *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
    v8 = [BRCUserDefaults defaultsForMangledID:0];
    [v8 recentsEnumeratorPacerInterval];
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v10 = [(BRCAccountSession *)v7->_session readOnlyWorkloop];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(v9, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create_with_target_V2("recents-enumerator", v11, v10);

    queue = v7->_queue;
    v7->_queue = v12;

    v14 = [v5 readOnlyDB];
    indexingDB = v7->_indexingDB;
    v7->_indexingDB = v14;

    v16 = v7->_queue;
    v17 = br_pacer_create();
    pacer = v7->_pacer;
    v7->_pacer = v17;

    objc_initWeak(&location, v7);
    v19 = v7->_pacer;
    objc_copyWeak(&v23, &location);
    br_pacer_set_event_handler();
    v20 = brc_task_tracker_create("recents-enumerator-tracker");
    tracker = v7->_tracker;
    v7->_tracker = v20;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __47__BRCRecentsEnumerator_initWithAccountSession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _activeSetDidChange];
}

- (void)resume
{
  pacer = self->_pacer;
  br_pacer_resume();

  [(BRCRecentsEnumerator *)self _signalActiveSetDidChange];
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__BRCRecentsEnumerator_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(queue, block);
  brc_task_tracker_wait(self->_tracker);
}

- (void)cancel
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Canceling spotlight indexer.%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BRCRecentsEnumerator;
  [(BRCRecentsEnumerator *)&v2 dealloc];
}

- (void)itemWasDeletedWithFileObjectID:(id)a3 notifRank:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(BRCAccountSession *)self->_session clientDB];
  [v7 assertOnQueue];

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v14 = v6;
    v15 = 2048;
    v16 = a4;
    v17 = 2112;
    v18 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] dropping item which was deleted %@ with notif rank %llu%@", buf, 0x20u);
  }

  v10 = [(BRCRecentsEnumerator *)self computeTombstoneEntryType:v6];
  v11 = [(BRCAccountSession *)self->_session clientDB];
  [v11 execute:{@"INSERT INTO tombstones (file_object_id, file_object_id_type, notif_rank, expiration) VALUES (%lld, %d, %lld, NULL)", objc_msgSend(v6, "rawID"), v10, a4}];

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasDeletedFileObjectID:(id)a3
{
  session = self->_session;
  v4 = a3;
  v5 = [(BRCAccountSession *)session clientDB];
  v6 = [v4 rawID];

  v7 = [v5 numberWithSQL:{@"SELECT 1 FROM tombstones WHERE file_object_id = %lld LIMIT 1", v6}];
  LOBYTE(v6) = [v7 BOOLValue];

  return v6;
}

+ (void)dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] device does not support CoreSpotlight indexing, no need to drop any index%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: index%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] CoreSpotlight index has already been dropped%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __82__BRCRecentsEnumerator_dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __82__BRCRecentsEnumerator_dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] dropped Spotlight index successfully%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __82__BRCRecentsEnumerator_dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CFAC08];
  OUTLINED_FUNCTION_3_0();
  v5 = v1;
  _os_log_error_impl(&dword_223E7A000, v2, 0x90u, "[ERROR] failed to synchronize user defaults for %@%@", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_readyForIndexingWithAckedRank:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Finished indexing for now%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateChangesFromChangeToken:limit:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] change token has expired, index should be dropped%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_2_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

void __74__BRCRecentsEnumerator__enumerateChangesFromChangeToken_limit_completion___block_invoke_3_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(*(*(a1 + 88) + 8) + 24);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__BRCRecentsEnumerator__activeSetDidChange__block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end