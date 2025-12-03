@interface BRCListDirectoryContentsOperation
- (void)_cursorWasUpdated:(id)updated subResourcesOp:(id)op;
- (void)_scheduleQueryOp;
- (void)_waitForFlushAndRescheduleApplyIfNecessaryWithError:(id)error;
- (void)addDirectoryListCompletionBlock:(id)block;
- (void)addPreFlushDirectoryListCompletionBlock:(id)block;
- (void)beginObservingChangesWithDelegate:(id)delegate;
- (void)cancelToBeReplacedByOperation:(id)operation;
- (void)endObservingChangesWithDelegate:(id)delegate;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRCListDirectoryContentsOperation

void __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_75(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_75_cold_1(a1);
  }

  *(*(a1 + 40) + 552) = [*(a1 + 48) recordsFetched];
  *(*(a1 + 40) + 560) = [*(a1 + 48) recordsFetchedTotalMetadataSize];
  *(*(a1 + 40) + 568) = [*(a1 + 48) xattrsFetchedTotalSize];
  if ([*(a1 + 32) isNonDesktopRoot])
  {
    goto LABEL_4;
  }

  v7 = [*(a1 + 56) changeState];
  v8 = [v7 changeToken];
  if (v8)
  {

LABEL_9:
    v4 = [*(a1 + 56) db];
    v10 = *(a1 + 32);
    v5 = [*(a1 + 56) dbRowID];
    [v4 execute:{@"UPDATE server_items SET item_type = 0, item_rank = NULL WHERE item_id = %@ AND zone_rowid = %@ AND item_type = 9", v10, v5}];
    goto LABEL_10;
  }

  v9 = [*(a1 + 56) isSharedZone];

  if (v9)
  {
    goto LABEL_9;
  }

LABEL_4:
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) debugItemIDString];
    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Not trying to promote %@ to a normal directory%@", buf, 0x16u);
  }

LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

void __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_75_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) debugItemIDString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _cursorWasUpdated:*(a1 + 40) subResourcesOp:*(a1 + 48)];
  if (*(a1 + 40))
  {
    __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_3_cold_1();
  }

  v2 = *(a1 + 32);
  if (*(a1 + 56))
  {
    [*(a1 + 32) completedWithResult:0 error:?];
  }

  else
  {
    v3 = [*(a1 + 48) error];
    [v2 completedWithResult:0 error:v3];
  }
}

uint64_t __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_79(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_75_cold_1(a1);
  }

  return [BRCAppLibrary didListItemID:*(a1 + 32) sessionContext:*(*(a1 + 40) + 256)];
}

- (void)main
{
  v11.receiver = self;
  v11.super_class = BRCListDirectoryContentsOperation;
  [(BRCAutoCancelOperation *)&v11 main];
  changeState = [(BRCServerZone *)self->_serverZone changeState];
  changeToken = [changeState changeToken];
  if (changeToken)
  {
    goto LABEL_4;
  }

  changeToken = [(BRCServerZone *)self->_serverZone mangledID];
  v5 = [BRCUserDefaults defaultsForMangledID:changeToken];
  if ([v5 allowsDirectoryListBeforeInitialChangeToken])
  {

LABEL_4:
    goto LABEL_5;
  }

  clientZone = [(BRCServerZone *)self->_serverZone clientZone];
  isSyncBlockedBecauseAppNotInstalled = [clientZone isSyncBlockedBecauseAppNotInstalled];

  if ((isSyncBlockedBecauseAppNotInstalled & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22 description:@"Can't list changes when we haven't synced down"];
    [(_BRCOperation *)self completedWithResult:0 error:v10];

    return;
  }

LABEL_5:
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(BRCListDirectoryContentsOperation *)self main];
  }

  [(BRCListDirectoryContentsOperation *)self _scheduleQueryOp];
}

- (void)_scheduleQueryOp
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] list query is already completed.  Just finishing it %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)beginObservingChangesWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    if (![(NSHashTable *)self->_delegates containsObject:delegateCopy])
    {
      v5.receiver = self;
      v5.super_class = BRCListDirectoryContentsOperation;
      [(BRCAutoCancelOperation *)&v5 beginObservingChanges];
      [(NSHashTable *)self->_delegates addObject:delegateCopy];
    }
  }

  else
  {
    self->_hasNilDelegate = 1;
    v6.receiver = self;
    v6.super_class = BRCListDirectoryContentsOperation;
    [(BRCAutoCancelOperation *)&v6 beginObservingChanges];
  }
}

- (void)endObservingChangesWithDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = BRCListDirectoryContentsOperation;
  delegateCopy = delegate;
  [(BRCAutoCancelOperation *)&v5 endObservingChanges];
  [(NSHashTable *)self->_delegates removeObject:delegateCopy, v5.receiver, v5.super_class];
}

- (void)cancelToBeReplacedByOperation:(id)operation
{
  v50 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  if (operationCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    dependencies = [(BRCListDirectoryContentsOperation *)selfCopy dependencies];
    v7 = [dependencies countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v7)
    {
      v8 = *v43;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v43 != v8)
          {
            objc_enumerationMutation(dependencies);
          }

          [operationCopy addDependency:*(*(&v42 + 1) + 8 * i)];
        }

        v7 = [dependencies countByEnumeratingWithState:&v42 objects:v49 count:16];
      }

      while (v7);
    }

    v10 = selfCopy->_delegates;
    delegates = selfCopy->_delegates;
    selfCopy->_delegates = 0;

    v12 = selfCopy->_listCompletionBlocks;
    v13 = selfCopy->_preFlushListCompletionBlocks;
    listCompletionBlocks = selfCopy->_listCompletionBlocks;
    selfCopy->_listCompletionBlocks = 0;

    preFlushListCompletionBlocks = selfCopy->_preFlushListCompletionBlocks;
    selfCopy->_preFlushListCompletionBlocks = 0;

    objc_sync_exit(selfCopy);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = v10;
    v17 = [(NSHashTable *)v16 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v17)
    {
      v18 = *v39;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v38 + 1) + 8 * j);
          [operationCopy beginObservingChangesWithDelegate:v20];
          [v20 listOperation:selfCopy wasReplacedByOperation:operationCopy];
        }

        v17 = [(NSHashTable *)v16 countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v17);
    }

    if (selfCopy->_hasNilDelegate)
    {
      [operationCopy beginObservingChangesWithDelegate:0];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = v12;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v34 objects:v47 count:16];
    if (v22)
    {
      v23 = *v35;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v21);
          }

          [operationCopy addDirectoryListCompletionBlock:*(*(&v34 + 1) + 8 * k)];
        }

        v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v34 objects:v47 count:16];
      }

      while (v22);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = v13;
    v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v30 objects:v46 count:16];
    if (v26)
    {
      v27 = *v31;
      do
      {
        for (m = 0; m != v26; ++m)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v25);
          }

          [operationCopy addPreFlushDirectoryListCompletionBlock:{*(*(&v30 + 1) + 8 * m), v30}];
        }

        v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v30 objects:v46 count:16];
      }

      while (v26);
    }

    [(_BRCOperation *)selfCopy cancel];
    if ([(_BRCOperation *)selfCopy isExecuting])
    {
      [operationCopy addDependency:selfCopy];
    }
  }

  else
  {
    [(_BRCOperation *)self cancel];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_cursorWasUpdated:(id)updated subResourcesOp:(id)op
{
  v26 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  opCopy = op;
  error = [opCopy error];

  if (!error || ([opCopy error], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "brc_checkErrorsFromCloudKit:", &__block_literal_global_9), v9, (v10 & 1) == 0))
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      name = [(BRCListDirectoryContentsOperation *)self name];
      v20 = 138412802;
      v21 = name;
      v22 = 2112;
      v23 = updatedCopy;
      v24 = 2112;
      v25 = v11;
      _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ finished listing batch with cursor %@%@", &v20, 0x20u);
    }

    if (([opCopy saveRecordsWithQueryCursor:updatedCopy] & 1) == 0)
    {
      error2 = [opCopy error];

      if (!error2)
      {
        serverZone = self->_serverZone;
        pendingChangesStream = [opCopy pendingChangesStream];
        queryFinishedServerTruthCallback = [opCopy queryFinishedServerTruthCallback];
        queryFinishedClientTruthCallback = [opCopy queryFinishedClientTruthCallback];
        [(BRCServerZone *)serverZone failedListingDirectoryChanges:pendingChangesStream serverTruthCallback:queryFinishedServerTruthCallback clientTruthCallback:queryFinishedClientTruthCallback folderItemID:self->_itemID];

        [opCopy setQueryFinishedServerTruthCallback:0];
        [opCopy setQueryFinishedClientTruthCallback:0];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

BOOL __70__BRCListDirectoryContentsOperation__cursorWasUpdated_subResourcesOp___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 brc_isCloudKitUnknownItemError] & 1) == 0 && !objc_msgSend(v2, "brc_isCloudKitAtomicFailure");

  return v3;
}

void __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke(void *a1, void *a2, void *a3, char a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = *(a1[4] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v9;
  v20 = v9;

  v14 = *(a1[5] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v10;
  v16 = v10;

  v17 = *(a1[6] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v11;
  v19 = v11;

  *(*(a1[7] + 8) + 24) = a4;
}

void __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_81(int8x16_t *a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_2;
  v2[3] = &unk_2784FF478;
  v1 = a1[2];
  v3 = vextq_s8(v1, v1, 8uLL);
  [v1.i64[0] notifyWhenRecordsAreFetchedAndFinish:v2];
}

void __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _cursorWasUpdated:0 subResourcesOp:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) error];
  [v2 completedWithResult:0 error:v3];
}

void __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_2_103(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 520);
  v4 = a2;
  v5 = [v3 clientZone];
  v6 = [v5 itemTypeByItemID:*(*(a1 + 32) + 528) dbFacade:v4];

  if (v6 == 10)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_2_103_cold_1(v7, v8);
    }

    v9 = [*(a1 + 40) callbackQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_104;
    v12[3] = &unk_2784FF478;
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v13 = v10;
    v14 = v11;
    dispatch_async(v9, v12);
  }
}

void __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_104(uint64_t a1)
{
  [*(a1 + 32) addRecordIDToDeserialize:*(*(a1 + 40) + 536)];
  v2 = objc_alloc(MEMORY[0x277CBC5D0]);
  v3 = *(a1 + 40);
  v4 = *(v3 + 528);
  v5 = [*(v3 + 520) zoneID];
  v6 = [v2 initShareIDWithItemID:v4 zoneID:v5];

  [*(a1 + 32) addRecordIDToDeserialize:v6 recordType:3];
}

void __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_2_108(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = [*(*(a1 + 32) + 528) debugDescription];
    v17 = [v8 recordType];
    v18 = 138413314;
    v19 = v16;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Listing directory contents of %@: Got record: ID [%@] Type [%@], error %@%@", &v18, 0x34u);
  }

  if (v8)
  {
    [*(a1 + 40) addRecord:v8];
  }

  else if ([v9 brc_isCloudKitPCSDecryptionFailure] && objc_msgSend(*(a1 + 48), "isPrivateZone"))
  {
    v12 = [*(a1 + 48) clientZone];
    v13 = [v12 asPrivateClientZone];
    v14 = [v7 recordName];
    [v13 reportProblemWithType:12 recordName:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_2_112(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 brc_isIgnorableListDirectoryError] & 1) == 0)
  {
    [*(a1 + 32) cancel];
    [*(a1 + 40) completedWithResult:0 error:v7];
  }

  else
  {
    [*(a1 + 40) _cursorWasUpdated:v5 subResourcesOp:*(a1 + 32)];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_3;
    v9[3] = &unk_2784FFE68;
    v8 = *(a1 + 32);
    v9[4] = *(a1 + 40);
    v10 = v5;
    v11 = *(a1 + 32);
    v12 = v7;
    [v8 notifyWhenRecordsAreFetchedAndFinish:v9];
  }
}

- (void)_waitForFlushAndRescheduleApplyIfNecessaryWithError:(id)error
{
  errorCopy = error;
  v5 = self->_serverZone;
  clientZone = [(BRCServerZone *)v5 clientZone];
  v7 = [clientZone db];
  serialQueue = [v7 serialQueue];

  if (serialQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__BRCListDirectoryContentsOperation__waitForFlushAndRescheduleApplyIfNecessaryWithError___block_invoke;
    block[3] = &unk_2784FF4A0;
    v10 = clientZone;
    selfCopy = self;
    v12 = errorCopy;
    dispatch_async(serialQueue, block);
  }
}

void __89__BRCListDirectoryContentsOperation__waitForFlushAndRescheduleApplyIfNecessaryWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__BRCListDirectoryContentsOperation__waitForFlushAndRescheduleApplyIfNecessaryWithError___block_invoke_2;
  v7[3] = &unk_2784FFA48;
  v3 = *(a1 + 48);
  v8 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __89__BRCListDirectoryContentsOperation__waitForFlushAndRescheduleApplyIfNecessaryWithError___block_invoke_3;
  v4[3] = &unk_2784FFF30;
  v4[4] = v8;
  v5 = v3;
  v6 = *(a1 + 32);
  [v2 performWithFlags:4 action:v7 whenFlushed:v4];
}

uint64_t __89__BRCListDirectoryContentsOperation__waitForFlushAndRescheduleApplyIfNecessaryWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) rescheduleApply])
  {
    v4 = *(*(a1 + 32) + 616);
    if (v4)
    {
      (*(v4 + 16))();
    }
  }

  [v3 forceBatchStart];

  return 1;
}

void __89__BRCListDirectoryContentsOperation__waitForFlushAndRescheduleApplyIfNecessaryWithError___block_invoke_3(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(*(a1 + 32) + 576);
  v4 = *(*(a1 + 32) + 584);
  v5 = *(a1 + 32);
  v6 = *(v5 + 584);
  *(v5 + 584) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 576);
  *(v7 + 576) = 0;

  objc_sync_exit(v2);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(a1 + 40);
        (*(*(*(&v26 + 1) + 8 * v13++) + 16))();
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v11);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v3;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(a1 + 40);
        (*(*(*(&v22 + 1) + 8 * v19) + 16))(*(*(&v22 + 1) + 8 * v19));
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  [*(a1 + 48) scheduleSyncUp];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:(id)result error:(id)error
{
  v35 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  if (!errorCopy && [(_BRCOperation *)self nonDiscretionary])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCListDirectoryContentsOperation finishWithResult:? error:?];
    }

    [(_BRCOperation *)self executionTimeInSec];
    v10 = [AppTelemetryTimeSeriesEvent newQBSOperationPrformanceEventWithTime:@"BRCListDirectoryContentsOperation" type:self->_recordsFetched recordsFetched:self->_recordsFetchedTotalMetadataSize recordsFetchedTotalMetadataSize:self->_xattrsFetchedTotalSize xattrsFetchedTotalSize:?];
    analyticsReporter = [(BRCSessionContext *)self->super.super._sessionContext analyticsReporter];
    [analyticsReporter postReportForDefaultSubCategoryWithCategory:11 telemetryTimeEvent:v10];
  }

  userInfo = [errorCopy userInfo];
  v13 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];
  v14 = [v13 objectForKeyedSubscript:self->_recordID];
  if ([v14 brc_isCloudKitUnknownItemError])
  {
    if ([(BRCItemID *)self->_itemID isDocumentsFolder])
    {
    }

    else
    {
      isNonDesktopRoot = [(BRCItemID *)self->_itemID isNonDesktopRoot];

      if (!isNonDesktopRoot)
      {
        goto LABEL_13;
      }
    }

    clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->super.super._sessionContext clientReadWriteDatabaseFacade];
    serialQueue = [clientReadWriteDatabaseFacade serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__BRCListDirectoryContentsOperation_finishWithResult_error___block_invoke;
    block[3] = &unk_2784FF478;
    block[4] = self;
    v33 = clientReadWriteDatabaseFacade;
    userInfo = clientReadWriteDatabaseFacade;
    dispatch_sync(serialQueue, block);

    sessionContext = self->super.super._sessionContext;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __60__BRCListDirectoryContentsOperation_finishWithResult_error___block_invoke_2;
    v31[3] = &unk_2784FFF58;
    v31[4] = self;
    [(BRCSessionContext *)sessionContext performSyncOnServerReadWriteDatabaseSerialQueue:v31];

    errorCopy = 0;
  }

  else
  {
  }

LABEL_13:
  v30.receiver = self;
  v30.super_class = BRCListDirectoryContentsOperation;
  [(_BRCOperation *)&v30 finishWithResult:resultCopy error:errorCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v20 = [(NSMutableArray *)selfCopy->_preFlushListCompletionBlocks copy];
  [(NSMutableArray *)selfCopy->_preFlushListCompletionBlocks removeAllObjects];
  objc_sync_exit(selfCopy);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v22)
  {
    v23 = *v27;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v21);
        }

        (*(*(*(&v26 + 1) + 8 * i) + 16))(*(*(&v26 + 1) + 8 * i));
      }

      v22 = [v21 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v22);
  }

  [(BRCListDirectoryContentsOperation *)selfCopy _waitForFlushAndRescheduleApplyIfNecessaryWithError:errorCopy, v26];
  v25 = *MEMORY[0x277D85DE8];
}

void __60__BRCListDirectoryContentsOperation_finishWithResult_error___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 528) isNonDesktopRoot])
  {
    v2 = [*(*(a1 + 32) + 256) zoneAppRetriever];
    v3 = [*(*(a1 + 32) + 528) appLibraryRowID];
    v4 = [v2 appLibraryByRowID:v3];

    [v4 setStateBits:0x2000000];
    if ([v4 isCloudDocsAppLibrary])
    {
      [v4 setStateBits:0x4000000];
    }

    [*(a1 + 40) saveAppLibrary:v4];
  }

  if ([*(*(a1 + 32) + 528) isDocumentsFolder])
  {
    v5 = [*(*(a1 + 32) + 256) zoneAppRetriever];
    v6 = [*(*(a1 + 32) + 528) appLibraryRowID];
    v7 = [v5 appLibraryByRowID:v6];

    [v7 setStateBits:0x4000000];
    [*(a1 + 40) saveAppLibrary:v7];
  }
}

void __60__BRCListDirectoryContentsOperation_finishWithResult_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 520);
  v4 = a2;
  [v3 checkIfFinishedFullSync];
  [v4 saveServerZone:*(*(a1 + 32) + 520)];
}

- (void)addDirectoryListCompletionBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  listCompletionBlocks = selfCopy->_listCompletionBlocks;
  if (listCompletionBlocks)
  {
    v7 = MEMORY[0x22AA4A310](blockCopy);
    [(NSMutableArray *)listCompletionBlocks addObject:v7];
  }

  else
  {
    callbackQueue = [(_BRCOperation *)selfCopy callbackQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__BRCListDirectoryContentsOperation_addDirectoryListCompletionBlock___block_invoke;
    v9[3] = &unk_2784FFBC8;
    v9[4] = selfCopy;
    v10 = blockCopy;
    dispatch_async(callbackQueue, v9);
  }

  objc_sync_exit(selfCopy);
}

void __69__BRCListDirectoryContentsOperation_addDirectoryListCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)addPreFlushDirectoryListCompletionBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  preFlushListCompletionBlocks = selfCopy->_preFlushListCompletionBlocks;
  if (!preFlushListCompletionBlocks)
  {
    callbackQueue = [(_BRCOperation *)selfCopy callbackQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__BRCListDirectoryContentsOperation_addPreFlushDirectoryListCompletionBlock___block_invoke;
    v9[3] = &unk_2784FFBC8;
    v9[4] = selfCopy;
    v10 = blockCopy;
    dispatch_async(callbackQueue, v9);

    preFlushListCompletionBlocks = selfCopy->_preFlushListCompletionBlocks;
  }

  v8 = MEMORY[0x22AA4A310](blockCopy);
  [(NSMutableArray *)preFlushListCompletionBlocks addObject:v8];

  objc_sync_exit(selfCopy);
}

void __77__BRCListDirectoryContentsOperation_addPreFlushDirectoryListCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_2_103_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Fetching the root as well of this share accept fault%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __53__BRCListDirectoryContentsOperation__scheduleQueryOp__block_invoke_3_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: !continuationCursor%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 528) debugDescription];
  [a1 executionTimeInSec];
  v9 = *(a1 + 552);
  v10 = *(a1 + 560);
  v11 = *(a1 + 568);
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x3Eu);

  v8 = *MEMORY[0x277D85DE8];
}

@end