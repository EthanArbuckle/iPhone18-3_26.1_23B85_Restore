@interface BRCPCSChainingOperation
- (BOOL)shouldRetryForError:(id)a3;
- (BRCPCSChainingOperation)initWithRootItem:(id)a3 appLibrary:(id)a4 sessionContext:(id)a5 syncUpCallback:(id)a6;
- (id)createActivity;
- (void)_buildRecordListWithCompletion:(id)a3;
- (void)_chainRecords;
- (void)_sendRecordBatch:(id)a3 recursed:(BOOL)a4 completion:(id)a5;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)listOperation:(id)a3 wasReplacedByOperation:(id)a4;
- (void)main;
@end

@implementation BRCPCSChainingOperation

- (BRCPCSChainingOperation)initWithRootItem:(id)a3 appLibrary:(id)a4 sessionContext:(id)a5 syncUpCallback:(id)a6
{
  v11 = a3;
  v12 = a4;
  v23 = a6;
  v13 = a5;
  v14 = [v11 itemID];
  v15 = [v14 debugItemIDString];
  v16 = [@"pcs-chain/" stringByAppendingString:v15];

  if (!v11)
  {
    [BRCPCSChainingOperation initWithRootItem:appLibrary:sessionContext:syncUpCallback:];
  }

  v17 = [v11 serverZone];
  v18 = [v17 metadataSyncContext];
  v24.receiver = self;
  v24.super_class = BRCPCSChainingOperation;
  v19 = [(_BRCOperation *)&v24 initWithName:v16 syncContext:v18 sessionContext:v13];

  if (v19)
  {
    objc_storeStrong(&v19->_appLibrary, a4);
    objc_storeStrong(&v19->_rootItem, a3);
    v20 = [v12 mangledID];
    v21 = [BRCUserDefaults defaultsForMangledID:v20];
    v19->_batchSize = [v21 pcsChainingBatchSize];

    objc_storeStrong(&v19->_syncUpCallback, a6);
  }

  return v19;
}

- (BOOL)shouldRetryForError:(id)a3
{
  v4 = a3;
  if ([v4 brc_isUserInitiatedRetriable])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(BRCServerItem *)self->_rootItem serverZone];
    v7 = [v6 clientZone];

    if ([v4 brc_isRetriableForPCSChaining] && self->_tryCount <= 2 && (objc_msgSend(v7, "isSyncBlocked") & 1) == 0)
    {
      v5 = 1;
      if (self->_canSyncDownBeforeRetry)
      {
        self->_syncDownBeforeRetry = 1;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync/pcs-chain", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_listOperation);
  pcsChainCompletionBlock = self->_pcsChainCompletionBlock;
  if (pcsChainCompletionBlock)
  {
    pcsChainCompletionBlock[2](pcsChainCompletionBlock, [v6 BOOLValue], WeakRetained, self->_chainedRecordsCount, v7);
    v10 = self->_pcsChainCompletionBlock;
    self->_pcsChainCompletionBlock = 0;
  }

  [WeakRetained endObservingChangesWithDelegate:self];
  objc_storeWeak(&self->_listOperation, 0);
  v11.receiver = self;
  v11.super_class = BRCPCSChainingOperation;
  [(_BRCOperation *)&v11 finishWithResult:v6 error:v7];
}

- (void)listOperation:(id)a3 wasReplacedByOperation:(id)a4
{
  obj = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_listOperation);

  if (WeakRetained == v6)
  {
    objc_storeWeak(&self->_listOperation, obj);
  }
}

- (void)_buildRecordListWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BRCServerItem *)self->_rootItem itemID];
  if ([v5 isDocumentsFolder])
  {
    goto LABEL_4;
  }

  v6 = [(BRCServerItem *)self->_rootItem itemID];
  if ([v6 isNonDesktopRoot])
  {

LABEL_4:
    goto LABEL_5;
  }

  v16 = [(BRCServerItem *)self->_rootItem st];
  v17 = [v16 logicalName];
  v18 = [v17 isEqualToString:@".Trash"];

  if ((v18 & 1) == 0)
  {
    sessionContext = self->super._sessionContext;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __58__BRCPCSChainingOperation__buildRecordListWithCompletion___block_invoke;
    v20[3] = &unk_278505958;
    v20[4] = self;
    v21 = v4;
    [(BRCSessionContext *)sessionContext performAsyncOnClientReadWriteDatabaseWorkloop:v20];

    goto LABEL_8;
  }

LABEL_5:
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [(BRCPCSChainingOperation *)v7 _buildRecordListWithCompletion:v8, v9, v10, v11, v12, v13, v14];
  }

  v15 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Can't PCS chain to documents, trash, or root"}];
  (*(v4 + 2))(v4, 0, v15);

LABEL_8:
}

void __58__BRCPCSChainingOperation__buildRecordListWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 512);
  if (!v4)
  {
    __58__BRCPCSChainingOperation__buildRecordListWithCompletion___block_invoke_cold_1();
  }

  if (([v4 pcsChainState] & 0xFFFFFFFE) != 2)
  {
    v7 = [[BRCPCSChainBatchInfo alloc] initWithAppLibrary:*(*(a1 + 32) + 504)];
    v8 = [v4 isDocument];
    v30 = [BRCPCSChainInfo alloc];
    v9 = [v4 itemID];
    v10 = [v4 parentItemIDOnServer];
    v32 = [v4 st];
    v11 = [v32 ckInfo];
    v31 = v8;
    v33 = v3;
    if (v8)
    {
      v29 = [v4 latestVersion];
      v12 = [v29 ckInfo];
    }

    else
    {
      v12 = 0;
    }

    v13 = [v4 st];
    v14 = [v13 type];
    if ([v4 isBRAlias])
    {
      v15 = [v4 aliasTargetIsShared];
    }

    else
    {
      v15 = 1;
    }

    LODWORD(v28) = [v4 pcsChainState];
    v16 = [(BRCPCSChainInfo *)v30 initWithItemID:v9 parentID:v10 structuralCKInfo:v11 contentCKInfo:v12 itemType:v14 aliasTargetZoneIsShared:v15 chainState:v28];

    if (v31)
    {

      [(BRCPCSChainBatchInfo *)v7 addFullyChainedRecordInfo:v16];
      *(*(a1 + 32) + 520) = 1;
    }

    else
    {

      v17 = [BRCPCSChainEnumerator alloc];
      v18 = [*(*(a1 + 32) + 504) defaultClientZone];
      v19 = v16;
      v20 = [(BRCPCSChainEnumerator *)v17 initWithPCSChainInfo:v16 clientZone:v18];

      if ([(BRCPCSChainBatchInfo *)v7 batchCount]>= *(*(a1 + 32) + 528))
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        do
        {
          v22 = [(BRCPCSChainEnumerator *)v20 nextObject];

          if (!v22)
          {
            break;
          }

          [(BRCPCSChainBatchInfo *)v7 addFullyChainedRecordInfo:v22];
          v21 = v22;
        }

        while ([(BRCPCSChainBatchInfo *)v7 batchCount]< *(*(a1 + 32) + 528));
      }

      v23 = [(BRCPCSChainEnumerator *)v20 error];
      if (v23)
      {
        v24 = v23;
        (*(*(a1 + 40) + 16))();

        v3 = v33;
        v16 = v19;
LABEL_32:

        goto LABEL_33;
      }

      if (!v22)
      {
        v25 = [(BRCPCSChainEnumerator *)v20 itemIDNeedingListing];
        if (v25)
        {
          v26 = [v4 clientZone];
          v27 = [v26 fetchDirectoryContentsIfNecessary:v25 isUserWaiting:objc_msgSend(*(a1 + 32) rescheduleApplyScheduler:{"nonDiscretionary"), 0}];

          [v27 beginObservingChangesWithDelegate:*(a1 + 32)];
          objc_storeWeak((*(a1 + 32) + 552), v27);
          if (!v27)
          {
            __58__BRCPCSChainingOperation__buildRecordListWithCompletion___block_invoke_cold_2();
          }
        }

        else
        {
          *(*(a1 + 32) + 520) = 1;
        }
      }

      v16 = v19;
    }

    [(BRCPCSChainBatchInfo *)v7 prepareFirstPhaseRecordBatch];
    *(*(a1 + 32) + 544) = [(BRCPCSChainBatchInfo *)v7 chainedRecordsCount];
    (*(*(a1 + 40) + 16))();
    v3 = v33;
    goto LABEL_32;
  }

  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __58__BRCPCSChainingOperation__buildRecordListWithCompletion___block_invoke_cold_3();
  }

  *(*(a1 + 32) + 520) = 1;
  (*(*(a1 + 40) + 16))();
LABEL_33:
}

- (void)_sendRecordBatch:(id)a3 recursed:(BOOL)a4 completion:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v21 = a5;
  v20 = v8;
  if ([v8 count])
  {
    v19 = a4;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v10)
    {
      v11 = *v32;
      v12 = MEMORY[0x277CBEC38];
      do
      {
        v13 = 0;
        do
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * v13);
          v37 = @"br_pcsChainingUpdate";
          v38 = v12;
          v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          [v14 setPluginFields:v15];

          ++v13;
        }

        while (v10 != v13);
        v10 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v10);
    }

    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = __Block_byref_object_copy__40;
    v29[4] = __Block_byref_object_dispose__40;
    v30 = 0;
    v16 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v9 recordIDsToDelete:0];
    [v16 setSavePolicy:0];
    [v16 setAtomic:1];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __64__BRCPCSChainingOperation__sendRecordBatch_recursed_completion___block_invoke_194;
    v25[3] = &unk_278505980;
    v28 = v19;
    v25[4] = self;
    v27 = v29;
    v26 = v9;
    [v16 setPerRecordCompletionBlock:v25];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __64__BRCPCSChainingOperation__sendRecordBatch_recursed_completion___block_invoke_197;
    v22[3] = &unk_2785059A8;
    v24 = v29;
    v22[4] = self;
    v23 = v21;
    [v16 setModifyRecordsCompletionBlock:v22];
    [(_BRCOperation *)self addSubOperation:v16];

    _Block_object_dispose(v29, 8);
  }

  else
  {
    v17 = [(_BRCOperation *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__BRCPCSChainingOperation__sendRecordBatch_recursed_completion___block_invoke;
    block[3] = &unk_278501520;
    v36 = v21;
    dispatch_async(v17, block);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __64__BRCPCSChainingOperation__sendRecordBatch_recursed_completion___block_invoke_194(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 504) defaultClientZone];
  v8 = [v7 db];
  v9 = [v8 serialQueue];
  dispatch_assert_queue_not_V2(v9);

  v55 = 0;
  LODWORD(v9) = [v6 brc_isCloudKitErrorReparentedToNewParent:&v55];
  v10 = v55;
  v11 = v10;
  if (v9 && (*(a1 + 56) & 1) == 0 && v10)
  {
    v12 = *(*(*(a1 + 48) + 8) + 40);
    if (!v12)
    {
      v13 = [*(a1 + 40) mutableCopy];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v12 = *(*(*(a1 + 48) + 8) + 40);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v16 = v12;
    v17 = [v16 countByEnumeratingWithState:&v51 objects:v62 count:16];
    if (v17)
    {
      v18 = v17;
      v44 = v7;
      v45 = v6;
      v46 = v11;
      v19 = *v52;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v52 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v51 + 1) + 8 * i);
          v22 = [v21 recordID];
          v23 = [v5 recordID];
          v24 = [v22 isEqual:v23];

          if (v24)
          {
            v31 = brc_bread_crumbs();
            v32 = brc_default_log();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v57 = v21;
              v58 = 2112;
              v59 = v46;
              v60 = 2112;
              v61 = v31;
              _os_log_impl(&dword_223E7A000, v32, OS_LOG_TYPE_DEFAULT, "[WARNING] Got an error indicating we need to reparent %@ to %@%@", buf, 0x20u);
            }

            v7 = v44;
            v42 = [v44 serverZone];
            v6 = v45;
            if (([v46 hasPrefix:@"directory/"] & 1) == 0)
            {
              __64__BRCPCSChainingOperation__sendRecordBatch_recursed_completion___block_invoke_194_cold_1();
            }

            v33 = [v46 substringFromIndex:{objc_msgSend(@"directory/", "length")}];
            v41 = [BRCItemID alloc];
            v34 = [*(*(a1 + 32) + 504) dbRowID];
            v35 = [v42 dbRowID];
            v43 = v33;
            v36 = [(BRCItemID *)v41 initWithString:v33 libraryRowID:v34 sharedZoneRowID:v35];

            v37 = [(BRCItemID *)v36 validatingDirectoryReferenceInZone:v42];
            v38 = [v21 parent];

            if (v38)
            {
              v39 = [(BRCItemID *)v36 pcsChainParentReferenceInZone:v42];
              [v21 setParent:v39];
            }

            [v21 setObject:v37 forKeyedSubscript:@"parent"];

            goto LABEL_29;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v51 objects:v62 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v7 = v44;
      v6 = v45;
LABEL_29:
      v11 = v46;
    }

    goto LABEL_30;
  }

  if ([v6 brc_isIndividualItemBlacklistError])
  {
    v25 = [v7 db];
    v26 = [v25 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__BRCPCSChainingOperation__sendRecordBatch_recursed_completion___block_invoke_195;
    block[3] = &unk_2784FF4A0;
    v27 = v7;
    v28 = *(a1 + 32);
    v48 = v27;
    v49 = v28;
    v50 = v5;
    dispatch_sync(v26, block);

    v16 = v48;
LABEL_30:

    goto LABEL_31;
  }

  if (v6 && ([v6 brc_isCloudKitAtomicFailure] & 1) == 0)
  {
    v16 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v6 brc_telemetryReportableErrorWithRecordName:0];
      *buf = 138412802;
      v57 = v30;
      v58 = 2112;
      v59 = v5;
      v60 = 2112;
      v61 = v16;
      _os_log_impl(&dword_223E7A000, v29, OS_LOG_TYPE_DEFAULT, "[WARNING] Encountered pcs chaining error %@ for record %@%@", buf, 0x20u);
    }

    goto LABEL_30;
  }

LABEL_31:

  v40 = *MEMORY[0x277D85DE8];
}

void __64__BRCPCSChainingOperation__sendRecordBatch_recursed_completion___block_invoke_195(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [*(a1[5] + 512) itemID];
  v4 = [v2 itemByItemID:v3];

  if (([v4 localDiffs] & 0x20) != 0 && objc_msgSend(v4, "needsSyncUp"))
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      v11 = a1[6];
      v12 = 138412802;
      v13 = v4;
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_error_impl(&dword_223E7A000, v6, 0x90u, "[ERROR] Blocking %@ from sync up until it is next modified because the server failed to pcs chain %@ with a permanent error%@", &v12, 0x20u);
    }

    v7 = a1[4];
    v8 = *(a1[5] + 560);
    v9 = [v7 dbRowID];
    [v8 blockSyncUpCallback:v4 inZone:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __64__BRCPCSChainingOperation__sendRecordBatch_recursed_completion___block_invoke_197(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 48) + 8) + 40);
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v2;
      _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEFAULT, "[WARNING] Retrying with new record batch because we were told about a new parent - %@%@", &v10, 0x16u);
    }

    result = [*(a1 + 32) _sendRecordBatch:*(*(*(a1 + 48) + 8) + 40) recursed:1 completion:*(a1 + 40)];
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 40) + 16);
    v9 = *MEMORY[0x277D85DE8];

    return v8();
  }

  return result;
}

- (void)_chainRecords
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__BRCPCSChainingOperation__chainRecords__block_invoke;
  v2[3] = &unk_2785059F8;
  v2[4] = self;
  [(BRCPCSChainingOperation *)self _buildRecordListWithCompletion:v2];
}

void __40__BRCPCSChainingOperation__chainRecords__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      __40__BRCPCSChainingOperation__chainRecords__block_invoke_cold_1();
    }

    [*(a1 + 32) completedWithResult:0 error:v6];
  }

  else
  {
    v9 = *(a1 + 32);
    if (v5)
    {
      v10 = [v5 recordsForFirstPhase];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __40__BRCPCSChainingOperation__chainRecords__block_invoke_200;
      v12[3] = &unk_2785059D0;
      v12[4] = *(a1 + 32);
      v13 = v5;
      [v9 _sendRecordBatch:v10 completion:v12];
    }

    else
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:v9[520]];
      [v9 completedWithResult:v11 error:0];
    }
  }
}

void __40__BRCPCSChainingOperation__chainRecords__block_invoke_200(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      __40__BRCPCSChainingOperation__chainRecords__block_invoke_200_cold_1();
    }

    [*(a1 + 32) completedWithResult:0 error:v5];
  }

  else
  {
    [*(a1 + 40) chainPreparedRecordBatch:a2];
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) recordsForSecondPhase];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__BRCPCSChainingOperation__chainRecords__block_invoke_201;
    v11[3] = &unk_2785059D0;
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v10;
    [v8 _sendRecordBatch:v9 completion:v11];
  }
}

void __40__BRCPCSChainingOperation__chainRecords__block_invoke_201(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      __40__BRCPCSChainingOperation__chainRecords__block_invoke_201_cold_1();
    }
  }

  else
  {
    v9 = [*(*(a1 + 32) + 504) defaultClientZone];
    v10 = [v9 serverZone];

    v11 = [*(a1 + 40) halfChainedRecordMap];
    v12 = [v10 db];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __40__BRCPCSChainingOperation__chainRecords__block_invoke_202;
    v23[3] = &unk_2785038A8;
    v24 = *(a1 + 40);
    v13 = v11;
    v14 = *(a1 + 32);
    v25 = v13;
    v26 = v14;
    v27 = v10;
    v15 = v5;
    v28 = v15;
    v7 = v10;
    [v12 performWithFlags:25 action:v23];

    v16 = [*(*(a1 + 32) + 504) db];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __40__BRCPCSChainingOperation__chainRecords__block_invoke_210;
    v19[3] = &unk_278504940;
    v19[4] = *(a1 + 32);
    v20 = v15;
    v21 = v13;
    v22 = *(a1 + 40);
    v8 = v13;
    [v16 performWithFlags:5 action:v19];
  }

  v17 = *(a1 + 32);
  v18 = [MEMORY[0x277CCABB0] numberWithBool:v17[520]];
  [v17 completedWithResult:v18 error:v6];
}

uint64_t __40__BRCPCSChainingOperation__chainRecords__block_invoke_202(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) should2PhasePCSChain])
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [*(a1 + 40) objectEnumerator];
    v2 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v57;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v57 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v56 + 1) + 8 * i);
          v7 = [v6 record];
          v8 = brc_bread_crumbs();
          v9 = brc_default_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = [v7 recordID];
            *buf = 138412546;
            v62 = v10;
            v63 = 2112;
            v64 = v8;
            _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Learning etag in the server truth for half chained parent %@%@", buf, 0x16u);
          }

          v11 = [[BRFieldCKInfo alloc] initWithRecord:v7];
          v12 = [v7 recordID];
          v13 = [*(*(a1 + 48) + 256) zoneAppRetriever];
          v14 = [v12 brc_itemIDWithZoneAppRetriever:v13];

          v15 = [*(a1 + 56) db];
          v16 = [*(a1 + 56) dbRowID];
          v17 = [v6 ckInfo];
          [v15 execute:{@"UPDATE server_items SET item_stat_ckinfo = %@, pcs_state = 4 WHERE item_id = %@ AND zone_rowid = %@ AND item_stat_ckinfo = %@", v11, v14, v16, v17}];

          v18 = [*(a1 + 56) db];
          v19 = [v18 changes];

          if (!v19)
          {
            v20 = brc_bread_crumbs();
            v21 = brc_default_log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v62 = v20;
              _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] Uh oh... the record changed server side while we were mid pcs chain batch.  We might have oplock conflicts%@", buf, 0xCu);
            }
          }

          v22 = [*(*(a1 + 48) + 512) itemID];
          v23 = [v22 isEqualToItemID:v14];

          if (v23)
          {
            v24 = [*(*(a1 + 48) + 512) st];
            [v24 setCkInfo:v11];
          }
        }

        v3 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v3);
    }
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obja = *(a1 + 64);
  v25 = [obja countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v53;
    v28 = &OBJC_IVAR____BRCOperation__sessionContext;
    do
    {
      v29 = 0;
      v49 = v26;
      do
      {
        if (*v53 != v27)
        {
          objc_enumerationMutation(obja);
        }

        v30 = *(*(&v52 + 1) + 8 * v29);
        v31 = [v30 recordID];
        v32 = [*(*(a1 + 48) + *v28) zoneAppRetriever];
        v33 = [v31 brc_itemIDWithZoneAppRetriever:v32];

        if (([*(a1 + 32) should2PhasePCSChain] & 1) != 0 || (v34 = *(a1 + 40), objc_msgSend(v30, "recordID"), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "objectForKeyedSubscript:", v35), v36 = objc_claimAutoreleasedReturnValue(), v35, !v36))
        {
          v46 = [v30 parent];

          if (!v46)
          {
            __40__BRCPCSChainingOperation__chainRecords__block_invoke_202_cold_2();
          }

          v36 = [*(a1 + 56) db];
          v40 = [*(a1 + 56) dbRowID];
          [v36 execute:{@"UPDATE server_items SET pcs_state = 3 WHERE item_id = %@ AND zone_rowid = %@ AND pcs_state != 2", v33, v40}];
        }

        else
        {
          v37 = v27;
          v38 = v28;
          v39 = [v30 parent];

          if (v39)
          {
            __40__BRCPCSChainingOperation__chainRecords__block_invoke_202_cold_1();
          }

          v40 = [[BRFieldCKInfo alloc] initWithRecord:v30];
          v41 = [*(a1 + 56) db];
          v42 = [*(a1 + 56) dbRowID];
          v43 = [v36 ckInfo];
          [v41 execute:{@"UPDATE server_items SET item_stat_ckinfo = %@, pcs_state = 4 WHERE item_id = %@ AND zone_rowid = %@ AND item_stat_ckinfo = %@", v40, v33, v42, v43}];

          v44 = [*(*(a1 + 48) + 512) itemID];
          LODWORD(v41) = [v44 isEqualToItemID:v33];

          if (v41)
          {
            v45 = [*(*(a1 + 48) + 512) st];
            [v45 setCkInfo:v40];
          }

          v28 = v38;
          v27 = v37;
          v26 = v49;
        }

        ++v29;
      }

      while (v26 != v29);
      v26 = [obja countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v26);
  }

  v47 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __40__BRCPCSChainingOperation__chainRecords__block_invoke_210(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 504) defaultClientZone];
  [v2 learnCKInfosFromSavedRecords:*(a1 + 40) isOutOfBandModifyRecords:1];

  if ([*(a1 + 48) count] && objc_msgSend(*(a1 + 56), "should2PhasePCSChain"))
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [*(a1 + 48) objectEnumerator];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v13 + 1) + 8 * v8) record];
          [v3 addObject:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v10 = [*(*(a1 + 32) + 504) defaultClientZone];
    [v10 learnCKInfosFromSavedRecords:v3 isOutOfBandModifyRecords:1];
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)main
{
  v13 = *MEMORY[0x277D85DE8];
  ++self->_tryCount;
  self->_completed = 0;
  if (self->_canSyncDownBeforeRetry && self->_syncDownBeforeRetry)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] Syncing down before retrying %@%@", buf, 0x16u);
    }

    sessionContext = self->super._sessionContext;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __31__BRCPCSChainingOperation_main__block_invoke;
    v8[3] = &unk_278500F30;
    v8[4] = self;
    [(BRCSessionContext *)sessionContext performAsyncOnClientReadWriteDatabaseWorkloop:v8];
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *MEMORY[0x277D85DE8];

    [(BRCPCSChainingOperation *)self _chainRecords];
  }
}

void __31__BRCPCSChainingOperation_main__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 512) clientZone];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__BRCPCSChainingOperation_main__block_invoke_2;
  v4[3] = &unk_278505A20;
  v4[4] = *(a1 + 32);
  v3 = objc_opt_new();
  [v2 performBlock:v4 whenSyncDownCompletesLookingForItemID:v3];
}

uint64_t __31__BRCPCSChainingOperation_main__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 256);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__BRCPCSChainingOperation_main__block_invoke_3;
  v4[3] = &unk_278500F30;
  v4[4] = v1;
  return [v2 performAsyncOnClientReadWriteDatabaseWorkloop:v4];
}

void __31__BRCPCSChainingOperation_main__block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 512) clientZone];
  v3 = [*(*(a1 + 32) + 512) itemID];
  v4 = [v2 itemByItemID:v3];

  v5 = [*(*(a1 + 32) + 512) clientZone];
  v6 = [*(*(a1 + 32) + 512) itemID];
  v7 = [v5 serverItemByItemID:v6];

  if (v7)
  {
    objc_storeStrong((*(a1 + 32) + 512), v7);
    [*(*(a1 + 32) + 512) overrideCKInfoIfNecessaryForOutOfBandSyncOpWithLocalItem:v4];
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(*(a1 + 32) + 512);
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Refreshed root item from db %@%@", &v12, 0x16u);
    }
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't refresh item from the database%@", &v12, 0xCu);
    }
  }

  [*(a1 + 32) _chainRecords];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)initWithRootItem:appLibrary:sessionContext:syncUpCallback:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: rootItem%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_buildRecordListWithCompletion:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, a2, a3, "[CRIT] UNREACHABLE: Can't PCS chain to documents, trash, or root%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __58__BRCPCSChainingOperation__buildRecordListWithCompletion___block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: si%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __58__BRCPCSChainingOperation__buildRecordListWithCompletion___block_invoke_cold_2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: listOp%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __58__BRCPCSChainingOperation__buildRecordListWithCompletion___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__BRCPCSChainingOperation__sendRecordBatch_recursed_completion___block_invoke_194_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: [newParent hasPrefix:kBRRecordIDPrefixDirectoryStructure]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __40__BRCPCSChainingOperation__chainRecords__block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __40__BRCPCSChainingOperation__chainRecords__block_invoke_200_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __40__BRCPCSChainingOperation__chainRecords__block_invoke_201_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __40__BRCPCSChainingOperation__chainRecords__block_invoke_202_cold_1()
{
  OUTLINED_FUNCTION_10();
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_11(5.7779e-34);
    OUTLINED_FUNCTION_22(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: !record.parent%@");
  }
}

void __40__BRCPCSChainingOperation__chainRecords__block_invoke_202_cold_2()
{
  OUTLINED_FUNCTION_10();
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_11(5.7779e-34);
    OUTLINED_FUNCTION_22(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: record.parent%@");
  }
}

@end