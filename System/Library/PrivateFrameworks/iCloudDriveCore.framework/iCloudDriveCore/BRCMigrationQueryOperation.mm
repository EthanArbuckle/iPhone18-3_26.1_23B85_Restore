@interface BRCMigrationQueryOperation
+ (id)allMigrationKeysOrdered;
- (BOOL)_saveFetchedRecords:(id)a3 cursor:(id)a4 error:(id *)a5;
- (BRCMigrationQueryOperation)initWithServerZone:(id)a3 migrationKey:(id)a4 continuationCursor:(id)a5 sessionContext:(id)a6;
- (int64_t)__computeNextShareBatchWithMaxRank:(int64_t)a3 batchSize:(int64_t)a4;
- (void)__performQuery:(id)a3 recordFetchedBlock:(id)a4 cursorUpdatedBlock:(id)a5 desiredKeys:(id)a6 asContinuationOf:(id)a7 completion:(id)a8;
- (void)_performAfterFetchingNextShareBatch:(id)a3;
- (void)_performAfterQueryingForShareAliasesWithCompletion:(id)a3;
- (void)_performAfterQueryingForShareIDsOfFolders:(BOOL)a3 completion:(id)a4;
- (void)_updatedContinuationCursor:(id)a3 parentOperation:(id)a4 fetchedRecords:(id)a5 alreadyOnServerTruth:(BOOL)a6 reply:(id)a7;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRCMigrationQueryOperation

+ (id)allMigrationKeysOrdered
{
  v10[4] = *MEMORY[0x277D85DE8];
  v3 = [a1 documentSharesMigrationKey];
  v10[0] = v3;
  v4 = [a1 folderSharesMigrationKey];
  v10[1] = v4;
  v5 = [a1 folderShareAliasesMigrationKey];
  v10[2] = v5;
  v6 = [a1 refetchExistingSharesMigrationKey];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BRCMigrationQueryOperation)initWithServerZone:(id)a3 migrationKey:(id)a4 continuationCursor:(id)a5 sessionContext:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 metadataSyncContext];
  v22.receiver = self;
  v22.super_class = BRCMigrationQueryOperation;
  v16 = [(_BRCOperation *)&v22 initWithName:@"migration-query" syncContext:v15 sessionContext:v14];

  if (v16)
  {
    objc_storeStrong(&v16->super._serverZone, a3);
    objc_storeStrong(&v16->_migrationKey, a4);
    objc_storeStrong(&v16->_continuationCursor, a5);
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    shareIDsToFetch = v16->_shareIDsToFetch;
    v16->_shareIDsToFetch = v17;

    v19 = [MEMORY[0x277CBC4F8] br_osUpgradeMigration];
    [(_BRCOperation *)v16 setGroup:v19];

    v21.receiver = v16;
    v21.super_class = BRCMigrationQueryOperation;
    [(BRCSyncDownOperation *)&v21 _setupOperationDiscrationaryStatus];
  }

  return v16;
}

- (BOOL)_saveFetchedRecords:(id)a3 cursor:(id)a4 error:(id *)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(BRCServerZone *)self->super._serverZone session];
  v11 = [v10 serverState];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{self->super._serverZone, 0}];
  v13 = [v10 serverDB];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __63__BRCMigrationQueryOperation__saveFetchedRecords_cursor_error___block_invoke;
  v31[3] = &unk_278504918;
  v31[4] = self;
  v14 = v8;
  v32 = v14;
  v15 = v12;
  v33 = v15;
  v38 = a5;
  v16 = v11;
  v34 = v16;
  v17 = v9;
  v35 = v17;
  v37 = &v39;
  v18 = v10;
  v36 = v18;
  [v13 performWithFlags:9 action:v31];

  v19 = v40[3];
  if (v19)
  {
    v20 = [v18 clientDB];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __63__BRCMigrationQueryOperation__saveFetchedRecords_cursor_error___block_invoke_53;
    v27[3] = &unk_278503AD8;
    v28 = v15;
    v29 = v18;
    v30 = &v39;
    [v20 performWithFlags:37 action:v27];

    v21 = v28;
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] brc_errorSyncBlocked];
    if (v21)
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, 0x90u))
      {
        v26 = "(passed to caller)";
        *buf = 136315906;
        v44 = "[BRCMigrationQueryOperation _saveFetchedRecords:cursor:error:]";
        v45 = 2080;
        if (!a5)
        {
          v26 = "(ignored by caller)";
        }

        v46 = v26;
        v47 = 2112;
        v48 = v21;
        v49 = 2112;
        v50 = v22;
        _os_log_error_impl(&dword_223E7A000, v23, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a5)
    {
      objc_storeStrong(a5, v21);
    }
  }

  _Block_object_dispose(&v39, 8);
  v24 = *MEMORY[0x277D85DE8];
  return v19 != 0;
}

uint64_t __63__BRCMigrationQueryOperation__saveFetchedRecords_cursor_error___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 504);
  v4 = *(a1 + 48);
  v28 = 0;
  v5 = [v3 saveQueryRecords:v2 zonesNeedingAllocRanks:v4 error:&v28];
  v6 = v28;
  v7 = v28;
  v8 = v7;
  if ((v5 & 1) == 0)
  {
    v11 = v7;
    if (v11)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        v22 = "(passed to caller)";
        v23 = *(a1 + 88);
        *buf = 136315906;
        v31 = "[BRCMigrationQueryOperation _saveFetchedRecords:cursor:error:]_block_invoke";
        if (!v23)
        {
          v22 = "(ignored by caller)";
        }

        v32 = 2080;
        v33 = v22;
        v34 = 2112;
        v35 = v11;
        v36 = 2112;
        v37 = v17;
        _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    v19 = *(a1 + 88);
    if (v19)
    {
      objc_storeStrong(v19, v6);
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v9 = *(a1 + 56);
  v10 = [*(*(a1 + 32) + 504) mangledID];
  [v9 migrationQueryForMangledID:v10 key:*(*(a1 + 32) + 520) didUpdateWithCursor:*(a1 + 64)];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = *(a1 + 48);
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
LABEL_4:
    v15 = 0;
    while (1)
    {
      if (*v25 != v14)
      {
        objc_enumerationMutation(v11);
      }

      if (![*(*(&v24 + 1) + 8 * v15) allocateRanksWhenCaughtUp:{0, v24}])
      {
        goto LABEL_16;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v13)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 56) nextRank];
  v11 = [*(a1 + 72) serverReadWriteDatabaseFacade];
  v16 = [v11 saveServerZone:*(*(a1 + 32) + 504)];
LABEL_17:

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __63__BRCMigrationQueryOperation__saveFetchedRecords_cursor_error___block_invoke_53(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 40) applyScheduler];
        [v8 generatedRanksForZone:v7 upToRank:*(*(*(a1 + 48) + 8) + 24)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_updatedContinuationCursor:(id)a3 parentOperation:(id)a4 fetchedRecords:(id)a5 alreadyOnServerTruth:(BOOL)a6 reply:(id)a7
{
  v29 = a6;
  v51 = *MEMORY[0x277D85DE8];
  v11 = a3;
  objc_initWeak(&location, a4);
  v12 = a5;
  v13 = a7;
  v14 = [(BRCSyncContext *)self->super.super._syncContext session];
  v15 = self->super._serverZone;
  v16 = [v14 serverState];
  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v28 = [(BRCServerZone *)self->super._serverZone zoneName];
    v25 = prettyPrintMigrationCursor(self->_continuationCursor);
    v26 = prettyPrintMigrationCursor(v11);
    *buf = 138413058;
    v44 = v28;
    v45 = 2112;
    v46 = v25;
    v47 = 2112;
    v27 = v26;
    v48 = v26;
    v49 = 2112;
    v50 = v17;
    _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] share-query for zone %@ progressed from cursor:%@ to cursor:%@%@", buf, 0x2Au);
  }

  if ([(NSMutableArray *)self->_shareIDsToFetch count])
  {
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __115__BRCMigrationQueryOperation__updatedContinuationCursor_parentOperation_fetchedRecords_alreadyOnServerTruth_reply___block_invoke_2;
    v35[3] = &unk_2785014D0;
    v35[4] = self;
    v36 = v13;
    v19 = MEMORY[0x22AA4A310](v35);
    v20 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:self->_shareIDsToFetch];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __115__BRCMigrationQueryOperation__updatedContinuationCursor_parentOperation_fetchedRecords_alreadyOnServerTruth_reply___block_invoke_3;
    v30[3] = &unk_278504968;
    v21 = v19;
    v34 = v21;
    v31 = v12;
    v32 = self;
    v33 = v11;
    [v20 setFetchRecordsCompletionBlock:v30];
    v22 = objc_loadWeakRetained(&location);
    [(_BRCOperation *)self addSubOperation:v20 asCompletionOf:v22];
  }

  else
  {
    v23 = [v14 serverDB];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __115__BRCMigrationQueryOperation__updatedContinuationCursor_parentOperation_fetchedRecords_alreadyOnServerTruth_reply___block_invoke;
    v37[3] = &unk_278504940;
    v38 = v16;
    v39 = v15;
    v40 = self;
    v41 = v11;
    [v23 performWithFlags:!v29 action:v37];

    (*(v13 + 2))(v13, 0);
  }

  objc_destroyWeak(&location);
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __115__BRCMigrationQueryOperation__updatedContinuationCursor_parentOperation_fetchedRecords_alreadyOnServerTruth_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) mangledID];
  [v2 migrationQueryForMangledID:v3 key:*(*(a1 + 48) + 520) didUpdateWithCursor:*(a1 + 56)];

  return 1;
}

void __115__BRCMigrationQueryOperation__updatedContinuationCursor_parentOperation_fetchedRecords_alreadyOnServerTruth_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 536);
  v4 = a2;
  [v3 removeAllObjects];
  (*(*(a1 + 40) + 16))();
}

void __115__BRCMigrationQueryOperation__updatedContinuationCursor_parentOperation_fetchedRecords_alreadyOnServerTruth_reply___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 56) + 16);

    v5();
  }

  else
  {
    v9 = 0;
    if (*(a1 + 32))
    {
      v6 = *(a1 + 32);
    }

    else
    {
      v6 = MEMORY[0x277CBEBF8];
    }

    v7 = [a2 allValues];
    v8 = [v6 arrayByAddingObjectsFromArray:v7];

    if (([*(a1 + 40) _saveFetchedRecords:v8 cursor:*(a1 + 48) error:&v9] & 1) == 0)
    {
      (*(*(a1 + 56) + 16))();
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)__performQuery:(id)a3 recordFetchedBlock:(id)a4 cursorUpdatedBlock:(id)a5 desiredKeys:(id)a6 asContinuationOf:(id)a7 completion:(id)a8
{
  v60[2] = *MEMORY[0x277D85DE8];
  v43 = a3;
  v42 = a4;
  v41 = a5;
  v14 = a6;
  v15 = a7;
  v40 = a8;
  v16 = [(BRCServerZone *)self->super._serverZone mangledID];
  v17 = [BRCUserDefaults defaultsForMangledID:v16];

  v18 = [v17 maxRecordCountInQuerySharedRecordsOperation];
  memset(v54, 0, sizeof(v54));
  __brc_create_section(0, "[BRCMigrationQueryOperation __performQuery:recordFetchedBlock:cursorUpdatedBlock:desiredKeys:asContinuationOf:completion:]", 255, 0, v54);
  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v35 = v54[0];
    v36 = [(BRCServerZone *)self->super._serverZone zoneName];
    *buf = 134218754;
    v56 = v35;
    v57 = 2112;
    v58 = v36;
    v59 = 1024;
    LODWORD(v60[0]) = v18;
    WORD2(v60[0]) = 2112;
    *(v60 + 6) = v19;
    _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx query for %@ starting with batchSize:%u%@", buf, 0x26u);
  }

  if (self->_continuationCursor)
  {
    v21 = objc_alloc(MEMORY[0x277CBC590]);
    v22 = [(BRCMigrationCursor *)self->_continuationCursor ckQueryCursor];
    v23 = [v21 initWithCursor:v22];

    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v39 = [v23 operationID];
      v26 = prettyPrintMigrationCursor(self->_continuationCursor);
      *buf = 138412802;
      v56 = v39;
      v57 = 2112;
      v38 = v26;
      v58 = v26;
      v59 = 2112;
      v60[0] = v24;
      _os_log_debug_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] created query %@ from cursor:%@%@", buf, 0x20u);
    }
  }

  else
  {
    v23 = [objc_alloc(MEMORY[0x277CBC590]) initWithQuery:v43];
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v37 = [v23 operationID];
      *buf = 138412802;
      v56 = v37;
      v57 = 2112;
      v58 = v43;
      v59 = 2112;
      v60[0] = v24;
      _os_log_debug_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] created query %@ from query:%@%@", buf, 0x20u);
    }
  }

  [v23 setDesiredKeys:v14];
  [v23 setResultsLimit:v18];
  v27 = [(BRCServerZone *)self->super._serverZone zoneID];
  [v23 setZoneID:v27];

  [v23 setShouldFetchAssetContent:0];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __123__BRCMigrationQueryOperation___performQuery_recordFetchedBlock_cursorUpdatedBlock_desiredKeys_asContinuationOf_completion___block_invoke;
  v51[3] = &unk_278504990;
  v28 = v42;
  v52 = v28;
  v53 = v23;
  [v23 setRecordMatchedBlock:v51];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __123__BRCMigrationQueryOperation___performQuery_recordFetchedBlock_cursorUpdatedBlock_desiredKeys_asContinuationOf_completion___block_invoke_2;
  v44[3] = &unk_2785049E0;
  v50 = v23;
  v44[4] = self;
  v29 = v40;
  v47 = v29;
  v30 = v41;
  v48 = v30;
  v31 = v43;
  v45 = v31;
  v32 = v28;
  v49 = v32;
  v33 = v14;
  v46 = v33;
  [v23 setQueryCompletionBlock:v44];
  [(_BRCOperation *)self addSubOperation:v23 asCompletionOf:v15];

  __brc_leave_section(v54);
  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __123__BRCMigrationQueryOperation___performQuery_recordFetchedBlock_cursorUpdatedBlock_desiredKeys_asContinuationOf_completion___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(result + 32) + 16))(*(result + 32), *(result + 40));
  }

  return result;
}

void __123__BRCMigrationQueryOperation___performQuery_recordFetchedBlock_cursorUpdatedBlock_desiredKeys_asContinuationOf_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  memset(v28, 0, sizeof(v28));
  __brc_create_section(0, "[BRCMigrationQueryOperation __performQuery:recordFetchedBlock:cursorUpdatedBlock:desiredKeys:asContinuationOf:completion:]_block_invoke_2", 279, 0, v28);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 80);
    *buf = 134219010;
    v30 = v28[0];
    v31 = 2112;
    v32 = v20;
    v33 = 2112;
    v34 = v6;
    v35 = 2112;
    v36 = v5;
    v37 = 2112;
    v38 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx handling result of %@: error: %@, cursor: %@%@", buf, 0x34u);
  }

  v9 = [[BRCMigrationCursor alloc] initWithCKQueryCursor:v5];
  v10 = *(a1 + 32);
  v11 = *(v10 + 528);
  *(v10 + 528) = v9;

  if (!v5 || v6)
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 80);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v12 = *(a1 + 64);
    v13 = *(a1 + 80);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __123__BRCMigrationQueryOperation___performQuery_recordFetchedBlock_cursorUpdatedBlock_desiredKeys_asContinuationOf_completion___block_invoke_63;
    v21[3] = &unk_2785049B8;
    v14 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v22 = v14;
    v24 = *(a1 + 72);
    v25 = *(a1 + 64);
    v15 = *(a1 + 48);
    v16 = *(a1 + 80);
    v23 = v15;
    v27 = v16;
    v26 = *(a1 + 56);
    (*(v12 + 16))(v12, v13, v5, v21);
  }

  __brc_leave_section(v28);

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __123__BRCMigrationQueryOperation___performQuery_recordFetchedBlock_cursorUpdatedBlock_desiredKeys_asContinuationOf_completion___block_invoke_63(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 72) + 16))(*(a1 + 72), *(a1 + 32), a2, *(a1 + 80));
  }

  else
  {
    return [*(a1 + 32) __performQuery:*(a1 + 40) recordFetchedBlock:*(a1 + 56) cursorUpdatedBlock:*(a1 + 64) desiredKeys:*(a1 + 48) asContinuationOf:*(a1 + 80) completion:*(a1 + 72)];
  }
}

- (int64_t)__computeNextShareBatchWithMaxRank:(int64_t)a3 batchSize:(int64_t)a4
{
  v7 = [(BRCServerZone *)self->super._serverZone session];
  v8 = [v7 serverDB];
  v9 = [(BRCServerZone *)self->super._serverZone dbRowID];
  v10 = [v8 fetch:{@"SELECT item_id, item_rank FROM server_items WHERE zone_rowid = %@ AND item_rank < %lld AND (item_sharing_options & 4) != 0 ORDER BY item_rank DESC LIMIT %lld", v9, a3, a4}];

  if ([v10 next])
  {
    do
    {
      v11 = [v10 objectOfClass:objc_opt_class() atIndex:0];
      v12 = [v10 longLongAtIndex:1];
      v13 = objc_alloc(MEMORY[0x277CBC5D0]);
      v14 = [(BRCServerZone *)self->super._serverZone zoneID];
      v15 = [v13 initShareIDWithItemID:v11 zoneID:v14];

      [(NSMutableArray *)self->_shareIDsToFetch addObject:v15];
    }

    while (([v10 next] & 1) != 0);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_performAfterFetchingNextShareBatch:(id)a3
{
  v4 = a3;
  v5 = [(BRCServerZone *)self->super._serverZone session];
  v6 = [(BRCServerZone *)self->super._serverZone mangledID];
  v7 = [BRCUserDefaults defaultsForMangledID:v6];
  v8 = [v7 maxRecordCountInQuerySharedRecordsOperation];

  v9 = [(BRCMigrationCursor *)self->_continuationCursor dbEnumerationCursor];

  if (v9)
  {
    v10 = [(BRCMigrationCursor *)self->_continuationCursor dbEnumerationCursor];
    v11 = [v10 longLongValue];
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = [v5 serverTruthWorkloop];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__BRCMigrationQueryOperation__performAfterFetchingNextShareBatch___block_invoke;
  v14[3] = &unk_278504A30;
  v15 = v4;
  v16 = v11;
  v17 = v8;
  v14[4] = self;
  v13 = v4;
  dispatch_async(v12, v14);
}

void __66__BRCMigrationQueryOperation__performAfterFetchingNextShareBatch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __computeNextShareBatchWithMaxRank:*(a1 + 48) batchSize:*(a1 + 56)];
  if (v2 < 1)
  {
    v6 = 0;
  }

  else
  {
    v3 = v2;
    v4 = [BRCMigrationCursor alloc];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:v3];
    v6 = [(BRCMigrationCursor *)v4 initWithDbEnumerationCursor:v5];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__BRCMigrationQueryOperation__performAfterFetchingNextShareBatch___block_invoke_2;
  v9[3] = &unk_278504A08;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  [v7 _updatedContinuationCursor:v6 parentOperation:0 fetchedRecords:MEMORY[0x277CBEBF8] alreadyOnServerTruth:1 reply:v9];
}

- (void)_performAfterQueryingForShareAliasesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"brPrefix", @"shareAlias/"];
  v6 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:@"RecordPrefixList" predicate:v5];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__33;
  v24[4] = __Block_byref_object_dispose__33;
  v25 = 0;
  v7 = objc_opt_new();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __81__BRCMigrationQueryOperation__performAfterQueryingForShareAliasesWithCompletion___block_invoke;
  v22[3] = &unk_278504A58;
  v8 = v7;
  v23 = v8;
  v9 = MEMORY[0x22AA4A310](v22);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__BRCMigrationQueryOperation__performAfterQueryingForShareAliasesWithCompletion___block_invoke_88;
  v19[3] = &unk_278504A80;
  v19[4] = self;
  v10 = v8;
  v20 = v10;
  v21 = v24;
  v11 = MEMORY[0x22AA4A310](v19);
  v12 = [MEMORY[0x277CBC5A0] desiredKeysWithMask:185];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__BRCMigrationQueryOperation__performAfterQueryingForShareAliasesWithCompletion___block_invoke_2;
  v15[3] = &unk_278504AA8;
  v15[4] = self;
  v13 = v10;
  v16 = v13;
  v18 = v24;
  v14 = v4;
  v17 = v14;
  [(BRCMigrationQueryOperation *)self _performQuery:v6 recordFetchedBlock:v9 cursorUpdatedBlock:v11 desiredKeys:v12 completion:v15];

  _Block_object_dispose(v24, 8);
}

void __81__BRCMigrationQueryOperation__performAfterQueryingForShareAliasesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v6 recordID];
    v11 = [v6 etag];
    v12 = [v5 operationID];
    v13 = 138413058;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] fetched share alias record %@ with etag:%@ in query %@%@", &v13, 0x2Au);
  }

  [*(a1 + 32) addObject:v6];
  v9 = *MEMORY[0x277D85DE8];
}

void __81__BRCMigrationQueryOperation__performAfterQueryingForShareAliasesWithCompletion___block_invoke_88(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [[BRCMigrationCursor alloc] initWithCKQueryCursor:v7];

  [*(a1 + 32) _saveFetchedRecords:*(a1 + 40) cursor:v8 error:*(*(a1 + 48) + 8) + 40];
  [*(a1 + 40) removeAllObjects];
  v6[2](v6, *(*(*(a1 + 48) + 8) + 40));
}

void __81__BRCMigrationQueryOperation__performAfterQueryingForShareAliasesWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v5)
  {
    [*(a1 + 32) _saveFetchedRecords:*(a1 + 40) cursor:*(*(a1 + 32) + 528) error:*(*(a1 + 56) + 8) + 40];
    [*(a1 + 40) removeAllObjects];
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = *(*(*(a1 + 56) + 8) + 40);
  }

  else
  {
    v6 = v5;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32), v6);
}

- (void)_performAfterQueryingForShareIDsOfFolders:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != NULL", *MEMORY[0x277CBC038]];
  v8 = objc_alloc(MEMORY[0x277CBC578]);
  v9 = kBRRecordTypeStructure;
  if (!v4)
  {
    v9 = kBRRecordTypeContent;
  }

  v10 = [v8 initWithRecordType:*v9 predicate:v7];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__33;
  v27[4] = __Block_byref_object_dispose__33;
  v28 = 0;
  v11 = objc_opt_new();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke;
  v25[3] = &unk_278504AD0;
  v25[4] = self;
  v12 = v11;
  v26 = v12;
  v13 = MEMORY[0x22AA4A310](v25);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke_95;
  v22[3] = &unk_278504A80;
  v22[4] = self;
  v14 = v12;
  v23 = v14;
  v24 = v27;
  v15 = MEMORY[0x22AA4A310](v22);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke_3;
  v18[3] = &unk_278504B48;
  v21 = v27;
  v18[4] = self;
  v16 = v14;
  v19 = v16;
  v17 = v6;
  v20 = v17;
  [(BRCMigrationQueryOperation *)self _performQuery:v10 recordFetchedBlock:v13 cursorUpdatedBlock:v15 desiredKeys:MEMORY[0x277CBEBF8] completion:v18];

  _Block_object_dispose(v27, 8);
}

void __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 recordID];
  v8 = [*(*(a1 + 32) + 248) session];
  v9 = [v8 zoneAppRetriever];
  v10 = [v7 brc_itemIDWithZoneAppRetriever:v9];

  [*(a1 + 40) addObject:v6];
  if (v10)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v6 recordID];
      v19 = [v6 etag];
      v20 = [v5 operationID];
      v22 = 138413058;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v11;
      _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] fetched shared record %@ with etag:%@ in query %@%@", &v22, 0x2Au);
    }

    v13 = objc_alloc(MEMORY[0x277CBC5D0]);
    v14 = [*(*(a1 + 32) + 504) zoneID];
    v15 = [v13 initShareIDWithItemID:v10 zoneID:v14];

    [*(*(a1 + 32) + 536) addObject:v15];
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v21 = [v5 operationID];
      v22 = 138412802;
      v23 = v7;
      v24 = 2112;
      v25 = v21;
      v26 = 2112;
      v27 = v15;
      _os_log_fault_impl(&dword_223E7A000, v16, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: unable to parse itemID from %@ in query %@%@", &v22, 0x20u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke_95(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [[BRCMigrationCursor alloc] initWithCKQueryCursor:v8];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) copy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke_2;
  v16[3] = &unk_278504AF8;
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v19 = *(a1 + 48);
  v16[4] = v14;
  v17 = v13;
  v18 = v7;
  v15 = v7;
  [v11 _updatedContinuationCursor:v10 parentOperation:v9 fetchedRecords:v12 alreadyOnServerTruth:0 reply:v16];
}

void __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    [*(a1 + 32) cancel];
  }

  [*(a1 + 40) removeAllObjects];
  (*(*(a1 + 48) + 16))();
}

void __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  objc_initWeak(&location, a4);
  v9 = *(*(*(a1 + 56) + 8) + 40);
  if (v8 | v9)
  {
    if (v9)
    {
      v16 = *(*(*(a1 + 56) + 8) + 40);
    }

    else
    {
      v16 = v8;
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32), v16);
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = objc_loadWeakRetained(&location);
    v12 = [*(a1 + 40) copy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke_4;
    v17[3] = &unk_278504B20;
    v13 = *(a1 + 48);
    v14 = *(a1 + 32);
    v15 = *(a1 + 56);
    v19 = v13;
    v20 = v15;
    v17[4] = v14;
    v18 = 0;
    [v10 _updatedContinuationCursor:0 parentOperation:v11 fetchedRecords:v12 alreadyOnServerTruth:0 reply:v17];
  }

  objc_destroyWeak(&location);
}

uint64_t __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4 = *(*(a1[7] + 8) + 40);
  if (!v4)
  {
    v4 = a1[5];
  }

  return (*(v3 + 16))(v3, v2, v4);
}

- (void)main
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_223E7A000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: unknown migration %s%@", buf, 0x16u);
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  memset(v19, 0, sizeof(v19));
  __brc_create_section(0, "[BRCMigrationQueryOperation finishWithResult:error:]", 462, 0, v19);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = v19[0];
    migrationKey = self->_migrationKey;
    v16 = [(_BRCOperation *)self operationID];
    *buf = 134218754;
    v21 = v14;
    v22 = 2112;
    v23 = migrationKey;
    v24 = 2112;
    v25 = v16;
    v26 = 2112;
    v27 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx migration-query '%@' %@ completed%@", buf, 0x2Au);
  }

  if (v7)
  {

    v6 = 0;
  }

  else
  {
    v10 = [(BRCSyncContext *)self->super.super._syncContext session];
    v11 = [v10 clientDB];
    v12 = [v11 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__BRCMigrationQueryOperation_finishWithResult_error___block_invoke;
    block[3] = &unk_2784FF450;
    block[4] = self;
    dispatch_sync(v12, block);
  }

  v17.receiver = self;
  v17.super_class = BRCMigrationQueryOperation;
  [(BRCSyncDownOperation *)&v17 finishWithResult:0 error:v7];
  __brc_leave_section(v19);

  v13 = *MEMORY[0x277D85DE8];
}

void __53__BRCMigrationQueryOperation_finishWithResult_error___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 504) clientZone];
  [v1 scheduleSyncDown];
}

@end