@interface BRCSharingProcessFolderSubitemsOperation
- (BOOL)_completeAfterProcessingClientTruthIfNecessaryWithError:(id)error;
- (BOOL)_completeAfterProcessingServerTruthIfNecessaryWithError:(id)error;
- (BOOL)deleteShareInfoFromZone:(id)zone zoneRowID:(id)d itemID:(id)iD sharingOptions:(unint64_t)options itemsTable:(id)table;
- (BRCSharingProcessFolderSubitemsOperation)initWithItem:(id)item sessionContext:(id)context processType:(unint64_t)type maxSubitemsToFail:(unint64_t)fail;
- (id)computeURLForItemID:(id)d rootURL:(id)l;
- (id)createActivity;
- (void)_stopObservingListOperation;
- (void)dealloc;
- (void)finishWithResult:(id)result error:(id)error;
- (void)listOperation:(id)operation wasReplacedByOperation:(id)byOperation;
- (void)main;
- (void)processClientTruthWithCompletion:(id)completion;
- (void)processServerItemsUnderItemID:(id)d completion:(id)completion;
- (void)removeSharedSubitemsWithCompletion:(id)completion;
@end

@implementation BRCSharingProcessFolderSubitemsOperation

- (BRCSharingProcessFolderSubitemsOperation)initWithItem:(id)item sessionContext:(id)context processType:(unint64_t)type maxSubitemsToFail:(unint64_t)fail
{
  itemCopy = item;
  contextCopy = context;
  itemID = [itemCopy itemID];
  debugItemIDString = [itemID debugItemIDString];
  v14 = [@"sharing/clean-subitems" stringByAppendingPathComponent:debugItemIDString];

  serverZone = [itemCopy serverZone];
  metadataSyncContext = [serverZone metadataSyncContext];
  v49.receiver = self;
  v49.super_class = BRCSharingProcessFolderSubitemsOperation;
  v17 = [(_BRCOperation *)&v49 initWithName:v14 syncContext:metadataSyncContext sessionContext:contextCopy];

  if (v17)
  {
    itemID2 = [itemCopy itemID];
    if ([itemID2 isDocumentsFolder])
    {
LABEL_3:

LABEL_5:
      v17->_isFSRoot = 1;
LABEL_6:
      v17->_alreadyHasShareID = ([itemCopy sharingOptions] & 4) != 0;
      v17->_rowID = [itemCopy dbRowID];
      clientZone = [itemCopy clientZone];
      asPrivateClientZone = [clientZone asPrivateClientZone];
      rootClientZone = v17->_rootClientZone;
      v17->_rootClientZone = asPrivateClientZone;

      itemID3 = [itemCopy itemID];
      rootItemID = v17->_rootItemID;
      v17->_rootItemID = itemID3;

      appLibrary = [itemCopy appLibrary];
      dbRowID = [appLibrary dbRowID];
      appLibraryRowID = v17->_appLibraryRowID;
      v17->_appLibraryRowID = dbRowID;

      v28 = objc_opt_new();
      shareIDsToDelete = v17->_shareIDsToDelete;
      v17->_shareIDsToDelete = v28;

      v30 = objc_opt_new();
      sharedClientSubitems = v17->_sharedClientSubitems;
      v17->_sharedClientSubitems = v30;

      v32 = objc_opt_new();
      sharedServerSubitems = v17->_sharedServerSubitems;
      v17->_sharedServerSubitems = v32;

      v34 = objc_opt_new();
      aliasItemsToDelete = v17->_aliasItemsToDelete;
      v17->_aliasItemsToDelete = v34;

      v36 = objc_opt_new();
      activeListOperations = v17->_activeListOperations;
      v17->_activeListOperations = v36;

      v38 = [BRCUserDefaults defaultsForMangledID:0];
      v17->_batchSize = [v38 deleteShareIDBatchCount];

      v17->_failedSubitemsLeft = fail;
      v17->_processType = type;
      br_sharingMisc = [MEMORY[0x277CBC4F8] br_sharingMisc];
      [(_BRCOperation *)v17 setGroup:br_sharingMisc];

      goto LABEL_7;
    }

    isFSRoot = [itemCopy isFSRoot];

    if (isFSRoot)
    {
      goto LABEL_5;
    }

    itemID2 = [itemCopy st];
    parentID = [itemID2 parentID];
    if ([parentID isNonDesktopRoot])
    {
      clientZone2 = [itemCopy clientZone];
      if ([clientZone2 isCloudDocsZone])
      {
        v43 = [itemCopy st];
        filename = [v43 filename];
        if (([filename isEqualToString:*MEMORY[0x277CFAD80]] & 1) == 0)
        {
          v46 = [itemCopy st];
          [v46 filename];
          v45 = v47 = v43;
          v48 = [v45 isEqualToString:*MEMORY[0x277CFAD90]];

          if ((v48 & 1) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_5;
        }

        goto LABEL_3;
      }
    }

    goto LABEL_6;
  }

LABEL_7:

  return v17;
}

- (void)_stopObservingListOperation
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = selfCopy->_activeListOperations;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v6++) endObservingChangesWithDelegate:{selfCopy, v8}];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [(NSMutableArray *)selfCopy->_activeListOperations removeAllObjects];
  objc_sync_exit(selfCopy);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(BRCSharingProcessFolderSubitemsOperation *)self _stopObservingListOperation];
  v3.receiver = self;
  v3.super_class = BRCSharingProcessFolderSubitemsOperation;
  [(_BRCOperation *)&v3 dealloc];
}

- (void)finishWithResult:(id)result error:(id)error
{
  v5.receiver = self;
  v5.super_class = BRCSharingProcessFolderSubitemsOperation;
  [(_BRCFrameworkOperation *)&v5 finishWithResult:result error:error];
  [(BRCSharingProcessFolderSubitemsOperation *)self _stopObservingListOperation];
}

- (void)listOperation:(id)operation wasReplacedByOperation:(id)byOperation
{
  operationCopy = operation;
  byOperationCopy = byOperation;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_activeListOperations removeObject:operationCopy];
  [(NSMutableArray *)selfCopy->_activeListOperations addObject:byOperationCopy];
  objc_sync_exit(selfCopy);
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sharing/clean-subitems", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)removeSharedSubitemsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCSharingProcessFolderSubitemsOperation removeSharedSubitemsWithCompletion:];
  }

  session = [(BRCSyncContext *)self->super.super._syncContext session];
  clientTruthWorkloop = [session clientTruthWorkloop];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__BRCSharingProcessFolderSubitemsOperation_removeSharedSubitemsWithCompletion___block_invoke;
  v10[3] = &unk_278500048;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_async(clientTruthWorkloop, v10);
}

void __79__BRCSharingProcessFolderSubitemsOperation_removeSharedSubitemsWithCompletion___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v39 = objc_opt_new();
  v37 = objc_opt_new();
  v3 = *(a1 + 32);
  if (*(v3 + 528))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = [*(v3 + 576) count];
      v3 = *(a1 + 32);
      if (v5 >= v6)
      {
        break;
      }

      v7 = [*(v3 + 576) objectAtIndexedSubscript:v5];
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = [v7 shareID];
        *buf = 138412546;
        v51 = v12;
        v52 = 2112;
        v53 = v8;
        _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Removing shareID %@%@", buf, 0x16u);
      }

      v10 = [v7 shareID];
      [v2 addObject:v10];

      v11 = [v7 emptyRecord];
      [v39 addObject:v11];

      [v37 addObject:v7];
      v3 = *(a1 + 32);
      v4 += 2;
      ++v5;
    }

    while (v4 < *(v3 + 528));
  }

  else
  {
    v5 = 0;
  }

  [*(v3 + 576) removeObjectsInRange:{0, v5, v37}];
  v13 = [*(*(a1 + 32) + 568) count];
  v14 = *(a1 + 32);
  v15 = *(v14 + 528);
  v16 = [*(v14 + 568) count];
  v17 = *(a1 + 32);
  if (v13 >= v15 - v16)
  {
    v20 = *(v17 + 528);
    v21 = v20 - [*(v17 + 576) count];
    v18 = [*(*(a1 + 32) + 568) subarrayWithRange:{0, v21}];
    v19 = a1;
    [*(*(a1 + 32) + 568) removeObjectsInRange:{0, v21}];
  }

  else
  {
    v18 = [*(v17 + 568) copy];
    v19 = a1;
    [*(*(a1 + 32) + 568) removeAllObjects];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v18;
  v22 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v46;
    do
    {
      v25 = 0;
      do
      {
        if (*v46 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v45 + 1) + 8 * v25);
        v27 = brc_bread_crumbs();
        v28 = brc_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v51 = v26;
          v52 = 2112;
          v53 = v27;
          _os_log_debug_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] Removing alias record %@%@", buf, 0x16u);
        }

        v29 = [*(*(v19 + 32) + 592) serverZone];
        v30 = [v26 structureRecordIDForItemType:3 zone:v29 aliasTargetZoneIsShared:1];

        [v2 addObject:v30];
        ++v25;
      }

      while (v23 != v25);
      v23 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v23);
  }

  if ([v2 count] || objc_msgSend(v39, "count"))
  {
    v31 = objc_alloc(MEMORY[0x277CBC4A0]);
    if ([v39 count])
    {
      v32 = v39;
    }

    else
    {
      v32 = 0;
    }

    if ([v2 count])
    {
      v33 = v2;
    }

    else
    {
      v33 = 0;
    }

    v34 = [v31 initWithRecordsToSave:v32 recordIDsToDelete:v33];
    [v34 setAtomic:1];
    [v34 setSavePolicy:0];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __79__BRCSharingProcessFolderSubitemsOperation_removeSharedSubitemsWithCompletion___block_invoke_384;
    v41[3] = &unk_278506A00;
    v41[4] = *(v19 + 32);
    v35 = v38;
    v42 = v38;
    v43 = obj;
    v44 = *(v19 + 40);
    [v34 setModifyRecordsCompletionBlock:v41];
    [*(v19 + 32) addSubOperation:v34];
  }

  else
  {
    [*(*(v19 + 32) + 592) scheduleSyncDown];
    (*(*(v19 + 40) + 16))();
    v35 = v38;
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __79__BRCSharingProcessFolderSubitemsOperation_removeSharedSubitemsWithCompletion___block_invoke_384(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __79__BRCSharingProcessFolderSubitemsOperation_removeSharedSubitemsWithCompletion___block_invoke_384_cold_1();
  }

  if ([v7 brc_containsCloudKitErrorCode:27])
  {
    v10 = [BRCUserDefaults defaultsForMangledID:0];
    [v10 modifyRecordsCountMultiplicativeDecrease];
    v12 = v11;

    *(*(a1 + 32) + 528) = (v12 * *(*(a1 + 32) + 528));
    [*(*(a1 + 32) + 576) addObjectsFromArray:*(a1 + 40)];
    [*(*(a1 + 32) + 568) addObjectsFromArray:*(a1 + 48)];
    [*(a1 + 32) removeSharedSubitemsWithCompletion:*(a1 + 56)];
  }

  else
  {
    v13 = [*(*(a1 + 32) + 248) session];
    v14 = [v13 clientTruthWorkloop];
    if (v7)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79__BRCSharingProcessFolderSubitemsOperation_removeSharedSubitemsWithCompletion___block_invoke_385;
      block[3] = &unk_2784FFBC8;
      v21 = *(a1 + 56);
      v20 = v7;
      dispatch_async(v14, block);

      v15 = v21;
    }

    else
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __79__BRCSharingProcessFolderSubitemsOperation_removeSharedSubitemsWithCompletion___block_invoke_2;
      v16[3] = &unk_2784FF5B8;
      v16[4] = *(a1 + 32);
      v17 = v6;
      v18 = *(a1 + 56);
      dispatch_async(v14, v16);

      v15 = v17;
    }
  }
}

void __79__BRCSharingProcessFolderSubitemsOperation_removeSharedSubitemsWithCompletion___block_invoke_2(uint64_t *a1)
{
  v2 = [*(a1[4] + 248) session];
  v3 = [v2 clientDB];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __79__BRCSharingProcessFolderSubitemsOperation_removeSharedSubitemsWithCompletion___block_invoke_3;
  v8 = &unk_2784FF788;
  v4 = a1[5];
  v9 = a1[4];
  v10 = v4;
  [v3 groupInBatch:&v5];

  [a1[4] removeSharedSubitemsWithCompletion:{a1[6], v5, v6, v7, v8, v9}];
}

- (BOOL)_completeAfterProcessingClientTruthIfNecessaryWithError:(id)error
{
  if (!error)
  {
    dbRowID = [(BRCClientZone *)self->_rootClientZone dbRowID];
    if (dbRowID)
    {
      if (![(NSMutableArray *)self->_sharedClientSubitems count])
      {
        v4 = 0;
        goto LABEL_9;
      }

      v6 = objc_opt_new();
      v7 = objc_opt_new();
      clientExpensiveReadDatabaseFacade = [(BRCSessionContext *)self->super.super._sessionContext clientExpensiveReadDatabaseFacade];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __100__BRCSharingProcessFolderSubitemsOperation__completeAfterProcessingClientTruthIfNecessaryWithError___block_invoke;
      v26[3] = &unk_278506A28;
      v27 = dbRowID;
      v9 = v6;
      v28 = v9;
      v10 = v7;
      v29 = v10;
      v11 = MEMORY[0x22AA4A310](v26);
      v12 = dispatch_group_create();
      serialQueue = [clientExpensiveReadDatabaseFacade serialQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __100__BRCSharingProcessFolderSubitemsOperation__completeAfterProcessingClientTruthIfNecessaryWithError___block_invoke_2;
      block[3] = &unk_2785011B8;
      block[4] = self;
      v21 = clientExpensiveReadDatabaseFacade;
      v22 = v12;
      v23 = v9;
      v24 = v10;
      v25 = v11;
      v14 = v10;
      v15 = v9;
      v16 = v11;
      v17 = v12;
      v18 = clientExpensiveReadDatabaseFacade;
      dispatch_async(serialQueue, block);
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"zoneRowID" value:0];
      [(_BRCOperation *)self completedWithResult:0 error:v18];
    }

    v4 = 1;
LABEL_9:

    return v4;
  }

  [(_BRCOperation *)self completedWithResult:0 error:error];
  return 1;
}

void __100__BRCSharingProcessFolderSubitemsOperation__completeAfterProcessingClientTruthIfNecessaryWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [v5 clientZone];
    v7 = [v6 dbRowID];
    v8 = [v7 br_isEqualToNumber:*(a1 + 32)];

    v9 = 48;
    if (v8)
    {
      v9 = 40;
    }

    [*(a1 + v9) addObject:v10];
  }
}

void __100__BRCSharingProcessFolderSubitemsOperation__completeAfterProcessingClientTruthIfNecessaryWithError___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(*(a1 + 32) + 552);
  v2 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v27;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * v5);
        v7 = [*(*(a1 + 32) + 256) itemFetcher];
        v8 = [v7 itemByItemGlobalID:v6 dbFacade:*(a1 + 40)];

        if (v8)
        {
          dispatch_group_enter(*(a1 + 48));
          v9 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
          v10 = [v8 fileObjectID];
          v11 = [v10 asString];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __100__BRCSharingProcessFolderSubitemsOperation__completeAfterProcessingClientTruthIfNecessaryWithError___block_invoke_3;
          v22[3] = &unk_278504348;
          v23 = v8;
          v25 = *(a1 + 72);
          v24 = *(a1 + 48);
          [v9 getUserVisibleURLForItemIdentifier:v11 completionHandler:v22];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v3);
  }

  v12 = *(a1 + 48);
  v13 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__BRCSharingProcessFolderSubitemsOperation__completeAfterProcessingClientTruthIfNecessaryWithError___block_invoke_392;
  block[3] = &unk_2784FF4A0;
  v19 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 32);
  v20 = v14;
  v21 = v15;
  dispatch_group_notify(v12, v13, block);

  v16 = *MEMORY[0x277D85DE8];
}

void __100__BRCSharingProcessFolderSubitemsOperation__completeAfterProcessingClientTruthIfNecessaryWithError___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v12 = 138412802;
      v13 = v11;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Got an error while computing the URL of %@ - %@%@", &v12, 0x20u);
    }
  }

  if (v5)
  {
    v9 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  dispatch_group_leave(*(a1 + 40));

  v10 = *MEMORY[0x277D85DE8];
}

void __100__BRCSharingProcessFolderSubitemsOperation__completeAfterProcessingClientTruthIfNecessaryWithError___block_invoke_392(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] brc_errorFolderHasSharedSubitemsWithSharedByMeURLs:*(a1 + 32) sharedToMeURLs:*(a1 + 40)];
  [*(a1 + 48) completedWithResult:0 error:v2];
}

- (id)computeURLForItemID:(id)d rootURL:(id)l
{
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  lCopy = l;
  session = [(BRCSyncContext *)self->super.super._syncContext session];
  serverDB = [session serverDB];
  [serverDB assertOnQueue];
  dbRowID = [(BRCClientZone *)self->_rootClientZone dbRowID];
  dbRowID2 = [(BRCClientZone *)self->_rootClientZone dbRowID];
  v34 = dCopy;
  v10 = [serverDB fetch:{@"WITH RECURSIVE item_parents (item_filename, item_parent_id) AS(    SELECT item_filename, item_parent_id FROM server_items      WHERE zone_rowid = %@ AND item_id = %@  UNION ALL     SELECT si.item_filename, si.item_parent_id FROM server_items AS si INNER JOIN item_parents AS p      WHERE si.item_id = p.item_parent_id        AND si.zone_rowid = %@) SELECT item_filename FROM item_parents", dbRowID, dCopy, dbRowID2}];

  v11 = objc_opt_new();
  if (![v10 next])
  {
LABEL_21:
    v13 = [v11 componentsJoinedByString:@"/"];
    v27 = lCopy;
    v28 = [lCopy URLByAppendingPathComponent:v13];
    goto LABEL_22;
  }

  while (1)
  {
    v12 = [v10 stringAtIndex:0];
    if (!v12)
    {
      break;
    }

    v13 = v12;
    [v11 insertObject:v12 atIndex:0];
LABEL_20:

    if (([v10 next] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if ([v11 count])
  {
    v13 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [BRCSharingProcessFolderSubitemsOperation computeURLForItemID:rootURL:];
    }

    goto LABEL_29;
  }

  v14 = [serverDB stringWithSQL:{@"SELECT item_alias_target FROM server_items WHERE item_id = %@ AND zone_rowid = %@", v34, self->_rootClientZone}];
  if (!v14)
  {
    v13 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [BRCSharingProcessFolderSubitemsOperation computeURLForItemID:rootURL:];
    }

LABEL_29:
    v27 = lCopy;

    v28 = 0;
    goto LABEL_22;
  }

  v15 = v14;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v16 = [v14 parseUnsaltedBookmarkDataWithItemID:&v37 mangledID:&v36 error:&v35];
  v17 = v35;
  if ((v16 & 1) == 0)
  {
    v19 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v39 = v15;
      v40 = 2112;
      v41 = v17;
      v42 = 2112;
      v43 = v19;
      _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't parse unsalted bookmark data %@ - %@%@", buf, 0x20u);
    }

    goto LABEL_18;
  }

  v18 = [session serverZoneByMangledID:v36];
  v19 = v18;
  if (v18)
  {
    v20 = v37;
    dbRowID3 = [v18 dbRowID];
    v13 = [serverDB stringWithSQL:{@"SELECT item_filename FROM server_items WHERE item_id = %@ AND zone_rowid = %@", v20, dbRowID3}];

    if (v13)
    {
      [v11 insertObject:v13 atIndex:0];
      v22 = 1;
      goto LABEL_19;
    }

    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 138412546;
    v39 = v37;
    v40 = 2112;
    v41 = v23;
    v25 = v24;
    v26 = "[WARNING] No filename found on alias target %@%@";
    goto LABEL_16;
  }

  v23 = brc_bread_crumbs();
  v24 = brc_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v39 = v36;
    v40 = 2112;
    v41 = v23;
    v25 = v24;
    v26 = "[WARNING] Couldn't find server zone for %@%@";
LABEL_16:
    _os_log_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);
  }

LABEL_17:

LABEL_18:
  v22 = 0;
  v13 = 0;
LABEL_19:

  if (v22)
  {
    goto LABEL_20;
  }

  v28 = 0;
  v27 = lCopy;
LABEL_22:

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)_completeAfterProcessingServerTruthIfNecessaryWithError:(id)error
{
  if (error)
  {
    [(_BRCOperation *)self completedWithResult:0 error:error];
  }

  else
  {
    if (![(NSMutableArray *)self->_sharedServerSubitems count])
    {
      if (self->_processType == 2)
      {
        LOBYTE(v7) = 0;
        return v7;
      }

      v7 = [(NSMutableArray *)self->_aliasItemsToDelete count];
      if (!v7)
      {
        return v7;
      }
    }

    session = [(BRCSyncContext *)self->super.super._syncContext session];
    serverTruthWorkloop = [session serverTruthWorkloop];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __100__BRCSharingProcessFolderSubitemsOperation__completeAfterProcessingServerTruthIfNecessaryWithError___block_invoke;
    v9[3] = &unk_2784FF478;
    v9[4] = self;
    v10 = session;
    v6 = session;
    dispatch_async(serverTruthWorkloop, v9);
  }

  LOBYTE(v7) = 1;
  return v7;
}

void __100__BRCSharingProcessFolderSubitemsOperation__completeAfterProcessingServerTruthIfNecessaryWithError___block_invoke(uint64_t a1)
{
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__48;
  v17[4] = __Block_byref_object_dispose__48;
  v18 = objc_opt_new();
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__48;
  v15[4] = __Block_byref_object_dispose__48;
  v16 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __100__BRCSharingProcessFolderSubitemsOperation__completeAfterProcessingServerTruthIfNecessaryWithError___block_invoke_405;
  v14[3] = &unk_278506A50;
  v14[4] = *(a1 + 32);
  v14[5] = v17;
  v14[6] = v15;
  v2 = MEMORY[0x22AA4A310](v14);
  v3 = [*(a1 + 40) appLibraryByRowID:*(*(a1 + 32) + 608)];
  v4 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
  v5 = [v3 rootFileObjectID];
  v6 = [v5 asString];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__BRCSharingProcessFolderSubitemsOperation__completeAfterProcessingServerTruthIfNecessaryWithError___block_invoke_2;
  v10[3] = &unk_278501D08;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v9 = v2;
  v13 = v9;
  [v4 getUserVisibleURLForItemIdentifier:v6 completionHandler:v10];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
}

void __100__BRCSharingProcessFolderSubitemsOperation__completeAfterProcessingServerTruthIfNecessaryWithError___block_invoke_405(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = *(*(a1 + 32) + 560);
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(*(a1 + 40) + 8) + 40);
        v10 = [*(a1 + 32) computeURLForItemID:*(*(&v24 + 1) + 8 * v8) rootURL:v3];
        [v9 addObject:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = *(*(a1 + 32) + 568);
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(*(a1 + 48) + 8) + 40);
        v17 = [*(a1 + 32) computeURLForItemID:*(*(&v20 + 1) + 8 * v15) rootURL:{v3, v20}];
        [v16 addObject:v17];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  v18 = [MEMORY[0x277CCA9B8] brc_errorFolderHasSharedSubitemsWithSharedByMeURLs:*(*(*(a1 + 40) + 8) + 40) sharedToMeURLs:*(*(*(a1 + 48) + 8) + 40)];
  [*(a1 + 32) completedWithResult:0 error:v18];

  v19 = *MEMORY[0x277D85DE8];
}

void __100__BRCSharingProcessFolderSubitemsOperation__completeAfterProcessingServerTruthIfNecessaryWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) serverTruthWorkloop];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __100__BRCSharingProcessFolderSubitemsOperation__completeAfterProcessingServerTruthIfNecessaryWithError___block_invoke_3;
  v12[3] = &unk_2785003B0;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

uint64_t __100__BRCSharingProcessFolderSubitemsOperation__completeAfterProcessingServerTruthIfNecessaryWithError___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return [*(a1 + 40) completedWithResult:0 error:?];
  }

  else
  {
    return (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 48));
  }
}

- (void)processServerItemsUnderItemID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [BRCSharingProcessFolderSubitemsOperation processServerItemsUnderItemID:completion:];
  }

  session = [(BRCSyncContext *)self->super.super._syncContext session];
  clientTruthWorkloop = [session clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__BRCSharingProcessFolderSubitemsOperation_processServerItemsUnderItemID_completion___block_invoke;
  block[3] = &unk_2784FF5B8;
  block[4] = self;
  v15 = dCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = dCopy;
  dispatch_async(clientTruthWorkloop, block);
}

void __85__BRCSharingProcessFolderSubitemsOperation_processServerItemsUnderItemID_completion___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 248) session];
  v41 = [v3 clientDB];

  v4 = [*(*v2 + 592) dbRowID];
  v5 = *(a1 + 40);
  v6 = [*(*v2 + 592) dbRowID];
  v7 = [v41 fetch:{@"WITH RECURSIVE item_children_needing_fetching (item_id, item_type, item_sharing_options, shared_alias_count, shared_children_count) AS(    SELECT item_id, item_type, item_sharing_options, shared_alias_count, shared_children_count FROM server_items      WHERE zone_rowid = %@ AND item_id = %@ AND (IFNULL(shared_children_count + shared_alias_count, 1) > 0)  UNION ALL     SELECT ip.item_id, ip.item_type, ip.item_sharing_options, ip.shared_alias_count, ip.shared_children_count FROM server_items AS ip INNER JOIN item_children_needing_fetching AS p       WHERE ip.item_parent_id = p.item_id        AND ip.zone_rowid = %@        AND ip.item_type IN (0, 9, 10, 1, 2, 8, 3)        AND ((IFNULL(ip.shared_children_count + ip.shared_alias_count, 1) > 0)            OR (ip.item_sharing_options & 4)            OR ip.item_type = 3)) SELECT item_id, item_type, item_sharing_options FROM item_children_needing_fetching WHERE item_type = 3 OR (item_sharing_options & 4)       OR (item_type IN (9, 10) AND (IFNULL(shared_children_count + shared_alias_count, 1) > 0))", v4, v5, v6}];

  group = dispatch_group_create();
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__48;
  v56[4] = __Block_byref_object_dispose__48;
  v57 = 0;
  while ([v7 next])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [v7 objectOfClass:objc_opt_class() atIndex:0];
    v10 = [v7 intAtIndex:1];
    v11 = [v7 intAtIndex:2];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __85__BRCSharingProcessFolderSubitemsOperation_processServerItemsUnderItemID_completion___block_invoke_2;
    v51[3] = &unk_278502BB0;
    v12 = group;
    v13 = *(a1 + 32);
    v52 = v12;
    v53 = v13;
    v14 = v9;
    v54 = v14;
    v55 = v56;
    v15 = MEMORY[0x22AA4A310](v51);
    v16 = v11;
    if ((v11 & 4) != 0)
    {
      v24 = *(a1 + 32);
      if ((v11 & 0x48) != 0 && *(v24 + 544) != 2)
      {
        v34 = brc_bread_crumbs();
        v35 = brc_default_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(a1 + 40);
          *buf = 138412802;
          v59 = v14;
          v60 = 2112;
          v61 = v36;
          v62 = 2112;
          v63 = v34;
          _os_log_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEFAULT, "[WARNING] subitem %@ is already shared inside %@%@", buf, 0x20u);
        }

        [*(*(a1 + 32) + 560) addObject:v14];
        goto LABEL_31;
      }

      v25 = [*(v24 + 592) serverZone];
      v26 = [*(*(a1 + 32) + 592) serverZone];
      v27 = [v26 dbRowID];
      v28 = [v24 deleteShareInfoFromZone:v25 zoneRowID:v27 itemID:v14 sharingOptions:v16 itemsTable:@"server_items"];

      if (v28)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v10 == 3)
      {
        v17 = *(a1 + 32);
        if (*(v17 + 544) != 2)
        {
          v18 = [*(v17 + 592) serverItemByItemID:v14];
          v19 = [v18 aliasTargetItemID];
          v20 = [v18 aliasTargetClientZone];
          v21 = [v20 serverRankByItemID:v19] == 0;

          if (!v21)
          {
            goto LABEL_31;
          }

          v17 = *(a1 + 32);
        }

        if (([*(v17 + 568) containsObject:v14] & 1) == 0)
        {
          v22 = brc_bread_crumbs();
          v23 = brc_default_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v38 = *(*(a1 + 32) + 600);
            *buf = 138412802;
            v59 = v14;
            v60 = 2112;
            v61 = v38;
            v62 = 2112;
            v63 = v22;
            _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] Found shared-to-me alias to delete %@ in %@%@", buf, 0x20u);
          }

          [*(*(a1 + 32) + 568) addObject:v14];
        }

        goto LABEL_31;
      }

      if (v10 - 9 > 1)
      {
        v32 = brc_bread_crumbs();
        v37 = brc_default_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v59 = v14;
          v60 = 2112;
          v61 = v32;
          _os_log_fault_impl(&dword_223E7A000, v37, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Huh?  We shouldn't be processing this item if it's not shared and not a directory fault %@%@", buf, 0x16u);
        }

LABEL_30:
LABEL_31:
        v29 = 1;
        goto LABEL_32;
      }

      v30 = brc_bread_crumbs();
      v31 = brc_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v59 = v14;
        v60 = 2112;
        v61 = v30;
        _os_log_debug_impl(&dword_223E7A000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] We need to fetch %@ before we can continue%@", buf, 0x16u);
      }

      v32 = [*(*(a1 + 32) + 592) fetchDirectoryContentsIfNecessary:v14 isUserWaiting:1 rescheduleApplyScheduler:0];
      if (!v32)
      {
        v15[2](v15);
        goto LABEL_30;
      }

      v33 = *(a1 + 32);
      objc_sync_enter(v33);
      if (([*(*(a1 + 32) + 584) containsObject:v32] & 1) == 0)
      {
        [*(*(a1 + 32) + 584) addObject:v32];
        objc_sync_exit(v33);

        dispatch_group_enter(v12);
        objc_initWeak(buf, v32);
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __85__BRCSharingProcessFolderSubitemsOperation_processServerItemsUnderItemID_completion___block_invoke_414;
        v46[3] = &unk_278506A78;
        v46[4] = *(a1 + 32);
        objc_copyWeak(&v50, buf);
        v49 = v56;
        v48 = v15;
        v47 = v12;
        [v32 addDirectoryListCompletionBlock:v46];
        [v32 beginObservingChangesWithDelegate:*(a1 + 32)];

        objc_destroyWeak(&v50);
        objc_destroyWeak(buf);
        goto LABEL_30;
      }

      objc_sync_exit(v33);
    }

    v29 = 0;
LABEL_32:

    objc_autoreleasePoolPop(v8);
    if ((v29 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v39 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__BRCSharingProcessFolderSubitemsOperation_processServerItemsUnderItemID_completion___block_invoke_416;
  block[3] = &unk_278506AA0;
  block[4] = *(a1 + 32);
  v44 = *(a1 + 48);
  v45 = v56;
  dispatch_group_notify(group, v39, block);

LABEL_35:
  _Block_object_dispose(v56, 8);

  v40 = *MEMORY[0x277D85DE8];
}

void __85__BRCSharingProcessFolderSubitemsOperation_processServerItemsUnderItemID_completion___block_invoke_2(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__BRCSharingProcessFolderSubitemsOperation_processServerItemsUnderItemID_completion___block_invoke_3;
  v5[3] = &unk_278505AC0;
  v4 = *(a1 + 56);
  v5[4] = v2;
  v7 = v4;
  v6 = *(a1 + 32);
  [v2 processServerItemsUnderItemID:v3 completion:v5];
}

void __85__BRCSharingProcessFolderSubitemsOperation_processServerItemsUnderItemID_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v4 = *(a1 + 32);
    objc_sync_enter(v4);
    v5 = *(*(a1 + 48) + 8);
    v7 = *(v5 + 40);
    v6 = (v5 + 40);
    if (!v7)
    {
      objc_storeStrong(v6, a2);
    }

    objc_sync_exit(v4);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __85__BRCSharingProcessFolderSubitemsOperation_processServerItemsUnderItemID_completion___block_invoke_414(uint64_t a1, void *a2)
{
  v11 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = *(*(a1 + 32) + 584);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [v5 removeObject:WeakRetained];

  objc_sync_exit(v4);
  if (v11)
  {
    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    v8 = *(*(a1 + 56) + 8);
    v10 = *(v8 + 40);
    v9 = (v8 + 40);
    if (!v10)
    {
      objc_storeStrong(v9, a2);
    }

    objc_sync_exit(v7);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  dispatch_group_leave(*(a1 + 40));
}

void __85__BRCSharingProcessFolderSubitemsOperation_processServerItemsUnderItemID_completion___block_invoke_416(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();
  objc_sync_exit(obj);
}

- (BOOL)deleteShareInfoFromZone:(id)zone zoneRowID:(id)d itemID:(id)iD sharingOptions:(unint64_t)options itemsTable:(id)table
{
  optionsCopy = options;
  v49 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  iDCopy = iD;
  syncContext = self->super.super._syncContext;
  tableCopy = table;
  dCopy = d;
  session = [(BRCSyncContext *)syncContext session];
  clientDB = [session clientDB];

  v19 = objc_alloc(MEMORY[0x277CBC5D0]);
  zoneID = [zoneCopy zoneID];
  v21 = [v19 initShareIDWithItemID:iDCopy zoneID:zoneID];

  v22 = [MEMORY[0x277D82C10] nameWithString:tableCopy];

  v23 = [clientDB fetch:{@"SELECT item_type, item_stat_ckinfo, version_ckinfo from %@ WHERE item_id = %@ AND zone_rowid = %@", v22, iDCopy, dCopy}];
  if (![v23 next])
  {
    v28 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      [BRCSharingProcessFolderSubitemsOperation deleteShareInfoFromZone:zoneRowID:itemID:sharingOptions:itemsTable:];
    }

    goto LABEL_7;
  }

  v24 = [v23 intAtIndex:0];
  if (v24 > 0xA)
  {
LABEL_15:
    v28 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      [BRCSharingProcessFolderSubitemsOperation deleteShareInfoFromZone:zoneRowID:itemID:sharingOptions:itemsTable:];
    }

LABEL_7:
    v31 = 0;
    goto LABEL_14;
  }

  v25 = 1 << v24;
  v41 = optionsCopy;
  v42 = clientDB;
  if ((v25 & 0x611) == 0)
  {
    if ((v25 & 0x106) != 0)
    {
      v32 = objc_alloc(MEMORY[0x277CBC5A0]);
      zoneID2 = [zoneCopy zoneID];
      v33 = [iDCopy contentsRecordIDInZoneID:zoneID2];
      v28 = [v32 initWithRecordType:@"content" recordID:v33];

      v29 = 2;
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  v26 = objc_alloc(MEMORY[0x277CBC5A0]);
  zoneID2 = [iDCopy directoryStructureRecordIDInZone:zoneCopy];
  v28 = [v26 initWithRecordType:@"structure" recordID:zoneID2];
  v29 = 1;
LABEL_10:

  v30 = [v23 objectOfClass:objc_opt_class() atIndex:v29];
  [v28 serializeSystemFields:v30];
  v34 = v21;
  v35 = [[BRCShareDeleteInfo alloc] initWithShareID:v21 emptyRecord:v28];
  v36 = brc_bread_crumbs();
  v37 = brc_default_log();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v40 = "full";
    *buf = 136315650;
    if ((v41 & 0x48) == 0)
    {
      v40 = "empty";
    }

    v44 = v40;
    v45 = 2112;
    v46 = v34;
    v47 = 2112;
    v48 = v36;
    _os_log_debug_impl(&dword_223E7A000, v37, OS_LOG_TYPE_DEBUG, "[DEBUG] deleting %s shareID %@%@", buf, 0x20u);
  }

  if (([(NSMutableArray *)self->_shareIDsToDelete containsObject:v35]& 1) == 0)
  {
    [(NSMutableArray *)self->_shareIDsToDelete addObject:v35];
  }

  v31 = 1;
  v21 = v34;
  clientDB = v42;
LABEL_14:

  v38 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)processClientTruthWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCSharingProcessFolderSubitemsOperation processClientTruthWithCompletion:];
  }

  clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->super.super._sessionContext clientReadWriteDatabaseFacade];
  workloop = [clientReadWriteDatabaseFacade workloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__BRCSharingProcessFolderSubitemsOperation_processClientTruthWithCompletion___block_invoke;
  block[3] = &unk_2784FF5B8;
  block[4] = self;
  v12 = clientReadWriteDatabaseFacade;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = clientReadWriteDatabaseFacade;
  dispatch_async(workloop, block);
}

void __77__BRCSharingProcessFolderSubitemsOperation_processClientTruthWithCompletion___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 256) itemFetcher];
  v3 = [v2 itemByRowID:*(a1[4] + 520) dbFacade:a1[5]];
  v4 = [v3 asDirectory];

  v5 = [*(a1[4] + 256) clientReadWriteDatabaseFacade];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__BRCSharingProcessFolderSubitemsOperation_processClientTruthWithCompletion___block_invoke_2;
  v8[3] = &unk_278506AC8;
  v6 = a1[5];
  v8[4] = a1[4];
  v9 = v4;
  v10 = v6;
  v7 = v4;
  [v5 enumerateItemsWithShareIDUnderParent:v7 block:v8];

  (*(a1[6] + 16))();
}

void __77__BRCSharingProcessFolderSubitemsOperation_processClientTruthWithCompletion___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if ((a3 & 4) == 0)
  {
    __77__BRCSharingProcessFolderSubitemsOperation_processClientTruthWithCompletion___block_invoke_2_cold_1();
  }

  if ((a3 & 0x48) != 0 && *(a1[4] + 544) != 2)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = a1[5];
      v23 = 138412802;
      v24 = v7;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] subitem %@ is already shared inside %@%@", &v23, 0x20u);
    }

    [*(a1[4] + 552) addObject:v7];
    v20 = a1[4];
    v21 = *(v20 + 536);
    *(v20 + 536) = v21 - 1;
    if (v21 <= 1)
    {
      *a4 = 1;
    }
  }

  else
  {
    v8 = [v7 zoneRowID];
    v9 = [*(a1[4] + 592) dbRowID];
    v10 = [v8 br_isEqualToNumber:v9];

    v11 = a1[4];
    if (v10)
    {
      v12 = [v11[74] serverZone];
      v13 = [v7 zoneRowID];
      v14 = [v7 itemID];
      [v11 deleteShareInfoFromZone:v12 zoneRowID:v13 itemID:v14 sharingOptions:a3 itemsTable:@"client_items"];
    }

    else
    {
      v15 = [v11[32] itemFetcher];
      v16 = [v15 itemByItemGlobalID:v7 dbFacade:a1[6]];

      [*(a1[4] + 592) itemMovedIntoShareInThisZone:v16 associatedItemID:0];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  if (self->_isFSRoot)
  {
    brc_errorItemNotShareable = [MEMORY[0x277CCA9B8] brc_errorItemNotShareable];
    [(_BRCOperation *)self completedWithResult:0 error:brc_errorItemNotShareable];
  }

  else if (self->_alreadyHasShareID)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(BRCSharingProcessFolderSubitemsOperation *)self main];
    }

    [(_BRCOperation *)self completedWithResult:0 error:0];
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__BRCSharingProcessFolderSubitemsOperation_main__block_invoke;
    v6[3] = &unk_2784FF540;
    v6[4] = self;
    [(BRCSharingProcessFolderSubitemsOperation *)self processClientTruthWithCompletion:v6];
  }
}

uint64_t __48__BRCSharingProcessFolderSubitemsOperation_main__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _completeAfterProcessingClientTruthIfNecessaryWithError:a2];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__BRCSharingProcessFolderSubitemsOperation_main__block_invoke_2;
    v5[3] = &unk_2784FF540;
    v5[4] = v4;
    return [v4 processServerTruthWithCompletion:v5];
  }

  return result;
}

uint64_t __48__BRCSharingProcessFolderSubitemsOperation_main__block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _completeAfterProcessingServerTruthIfNecessaryWithError:a2];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__BRCSharingProcessFolderSubitemsOperation_main__block_invoke_3;
    v5[3] = &unk_2784FF540;
    v5[4] = v4;
    return [v4 removeSharedSubitemsWithCompletion:v5];
  }

  return result;
}

@end