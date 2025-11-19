@interface BRCSideCarSyncUpOperation
- (BRCSideCarSyncUpOperation)initWithSession:(id)a3;
- (id)_itemsNeedingSyncUpEnumerator;
- (id)createActivity;
- (void)_markItemsFailedSync;
- (void)_syncUpRecordBatchWithModifiedRecords:(id)a3 deletedRecordIDs:(id)a4 recordIDToZoneMap:(id)a5 requestID:(unint64_t)a6;
- (void)fakeSyncForItem:(id)a3 itemRank:(unint64_t)a4;
- (void)main;
@end

@implementation BRCSideCarSyncUpOperation

- (BRCSideCarSyncUpOperation)initWithSession:(id)a3
{
  v5 = a3;
  v6 = [v5 syncContextProvider];
  v7 = [v6 sideCarSyncContext];
  v10.receiver = self;
  v10.super_class = BRCSideCarSyncUpOperation;
  v8 = [(_BRCOperation *)&v10 initWithName:@"side-car.sync-up" syncContext:v7 sessionContext:v5];

  if (v8)
  {
    objc_storeStrong(&v8->_session, a3);
  }

  return v8;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync/side-car-sync-up", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_markItemsFailedSync
{
  sessionContext = self->super._sessionContext;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__BRCSideCarSyncUpOperation__markItemsFailedSync__block_invoke;
  v3[3] = &unk_278500F30;
  v3[4] = self;
  [(BRCSessionContext *)sessionContext performSyncOnClientReadWriteDatabaseWorkloop:v3];
}

void __49__BRCSideCarSyncUpOperation__markItemsFailedSync__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__BRCSideCarSyncUpOperation__markItemsFailedSync__block_invoke_2;
  v5[3] = &unk_278500F08;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  [v4 performWithFlags:4 action:v5];
}

uint64_t __49__BRCSideCarSyncUpOperation__markItemsFailedSync__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(*(a1 + 32) + 256) itemFetcher];
  v3 = [v2 itemsWithSideCarInFlightDiffsEnumeratorWithDBFacade:*(a1 + 40)];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        [v8 markLatestSyncRequestFailedInZone:&unk_2837B00E8];
        [v8 saveToDBForServerEdit:1 keepAliases:1];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_syncUpRecordBatchWithModifiedRecords:(id)a3 deletedRecordIDs:(id)a4 recordIDToZoneMap:(id)a5 requestID:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v30 = a6;
  v13 = [v10 count];
  if (v13 + [v11 count])
  {
    if (!a6)
    {
      [BRCSideCarSyncUpOperation _syncUpRecordBatchWithModifiedRecords:deletedRecordIDs:recordIDToZoneMap:requestID:];
    }

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BRCSideCarSyncUpOperation _syncUpRecordBatchWithModifiedRecords:v14 deletedRecordIDs:a6 recordIDToZoneMap:v15 requestID:?];
    }

    v16 = objc_alloc(MEMORY[0x277CBC4A0]);
    v17 = [v11 allKeys];
    v18 = [v16 initWithRecordsToSave:v10 recordIDsToDelete:v17];

    [v18 setRecordIDsToDeleteToEtags:v11];
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v30 length:8];
    [v18 setClientChangeTokenData:v19];

    objc_initWeak(&location, v18);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __112__BRCSideCarSyncUpOperation__syncUpRecordBatchWithModifiedRecords_deletedRecordIDs_recordIDToZoneMap_requestID___block_invoke;
    v24[3] = &unk_278500F80;
    objc_copyWeak(v28, &location);
    v24[4] = self;
    v25 = v10;
    v26 = v11;
    v27 = v12;
    v28[1] = v30;
    [v18 setModifyRecordsCompletionBlock:v24];
    v20 = [(BRCAccountSession *)self->_session clientTruthWorkloop];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __112__BRCSideCarSyncUpOperation__syncUpRecordBatchWithModifiedRecords_deletedRecordIDs_recordIDToZoneMap_requestID___block_invoke_14;
    v22[3] = &unk_2784FF478;
    v22[4] = self;
    v23 = v18;
    v21 = v18;
    dispatch_async(v20, v22);

    objc_destroyWeak(v28);
    objc_destroyWeak(&location);
  }

  else
  {
    [(_BRCOperation *)self completedWithResult:0 error:0];
  }
}

void __112__BRCSideCarSyncUpOperation__syncUpRecordBatchWithModifiedRecords_deletedRecordIDs_recordIDToZoneMap_requestID___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if ([v9 brc_isCloudKitErrorImplyingZoneNeedsCreation])
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *location = 138412802;
      *&location[4] = WeakRetained;
      v34 = 2112;
      v35 = v9;
      v36 = 2112;
      v37 = v11;
      _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] We need to create the side car zone on %@ - %@%@", location, 0x20u);
    }

    v13 = [MEMORY[0x277CBC5F8] brc_sideCarZoneID];
    objc_initWeak(location, a1[4]);
    v14 = [[BRCCreateZoneAndSubscribeOperation alloc] initWithSessionContext:*(a1[4] + 32) zoneID:v13];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __112__BRCSideCarSyncUpOperation__syncUpRecordBatchWithModifiedRecords_deletedRecordIDs_recordIDToZoneMap_requestID___block_invoke_7;
    v29[3] = &unk_278500F58;
    objc_copyWeak(v32, location);
    v25 = *(a1 + 2);
    v15 = *(&v25 + 1);
    v16 = a1[6];
    v17 = a1[7];
    *&v18 = v16;
    *(&v18 + 1) = v17;
    v30 = v25;
    v31 = v18;
    v32[1] = a1[9];
    [(BRCCreateZoneAndSubscribeOperation *)v14 setCreateZoneAndSubscribeCompletionBlock:v29];
    [a1[4] addSubOperation:v14];

    objc_destroyWeak(v32);
    objc_destroyWeak(location);
  }

  else
  {
    if (v9)
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, 0x90u))
      {
        *location = 138412802;
        *&location[4] = WeakRetained;
        v34 = 2112;
        v35 = v9;
        v36 = 2112;
        v37 = v19;
        _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] Failed syncing up side cars on %@ - %@%@", location, 0x20u);
      }

      [a1[4] _markItemsFailedSync];
    }

    else
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *location = 138412802;
        *&location[4] = v7;
        v34 = 2112;
        v35 = WeakRetained;
        v36 = 2112;
        v37 = v21;
        _os_log_debug_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] finished side car sync up: %@, op: %@%@", location, 0x20u);
      }

      v23 = [*(a1[4] + 63) clientTruthWorkloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __112__BRCSideCarSyncUpOperation__syncUpRecordBatchWithModifiedRecords_deletedRecordIDs_recordIDToZoneMap_requestID___block_invoke_10;
      block[3] = &unk_2784FF478;
      v27 = v7;
      v28 = a1[7];
      dispatch_async_and_wait(v23, block);
    }

    [a1[4] completedWithResult:0 error:v9];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __112__BRCSideCarSyncUpOperation__syncUpRecordBatchWithModifiedRecords_deletedRecordIDs_recordIDToZoneMap_requestID___block_invoke_7(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v4)
  {
    [*(a1 + 32) _markItemsFailedSync];
    [WeakRetained completedWithResult:0 error:v4];
  }

  else
  {
    [WeakRetained _syncUpRecordBatchWithModifiedRecords:*(a1 + 40) deletedRecordIDs:*(a1 + 48) recordIDToZoneMap:*(a1 + 56) requestID:*(a1 + 72)];
  }
}

void __112__BRCSideCarSyncUpOperation__syncUpRecordBatchWithModifiedRecords_deletedRecordIDs_recordIDToZoneMap_requestID___block_invoke_10(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 recordID];
        v10 = [v8 objectForKeyedSubscript:v9];

        if (!v10)
        {
          __112__BRCSideCarSyncUpOperation__syncUpRecordBatchWithModifiedRecords_deletedRecordIDs_recordIDToZoneMap_requestID___block_invoke_10_cold_1(&v18, &v19);
        }

        v17 = v7;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
        [v10 learnCKInfosFromSavedRecords:v11 isOutOfBandModifyRecords:0];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __112__BRCSideCarSyncUpOperation__syncUpRecordBatchWithModifiedRecords_deletedRecordIDs_recordIDToZoneMap_requestID___block_invoke_14(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 504) clientDB];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __112__BRCSideCarSyncUpOperation__syncUpRecordBatchWithModifiedRecords_deletedRecordIDs_recordIDToZoneMap_requestID___block_invoke_2;
  v4[3] = &unk_2784FF478;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 scheduleFlushWithCheckpoint:0 whenFlushed:v4];
}

- (void)fakeSyncForItem:(id)a3 itemRank:(unint64_t)a4
{
  v7 = a3;
  [v7 prepareForSyncUpSideCarZone];
  [v7 markLatestSyncRequestAcknowledgedInZone:&unk_2837B00E8];
  [v7 saveToDBForServerEdit:1 keepAliases:1];
  if (a4)
  {
    v6 = [(BRCAccountSession *)self->_session applyScheduler];
    [v6 createApplyJobFromServerItemRank:a4 localItem:v7 state:1 kind:1];
  }
}

- (void)main
{
  v3 = self->_session;
  v4 = [(BRCAccountSession *)v3 clientTruthWorkloop];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__BRCSideCarSyncUpOperation_main__block_invoke;
  v6[3] = &unk_2784FF478;
  v7 = v3;
  v8 = self;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __33__BRCSideCarSyncUpOperation_main__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientDB];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__BRCSideCarSyncUpOperation_main__block_invoke_2;
  v5[3] = &unk_278500FA8;
  v4 = *(a1 + 32);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  [v2 performWithFlags:12 action:v5];
}

uint64_t __33__BRCSideCarSyncUpOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v88 = *MEMORY[0x277D85DE8];
  v74 = a2;
  v3 = [*(a1 + 32) _itemsNeedingSyncUpEnumerator];
  v76 = +[BRCUserDefaults defaultsForSideCar];
  v4 = [v76 maxRecordCountInModifyRecordsOperation];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v77 = objc_opt_new();
  *(*(a1 + 32) + 512) = 1;
  v7 = [v5 count];
  v81 = v6;
  if ([v6 count] + v7 < v4)
  {
    v80 = v4;
    v73 = a1;
    v79 = v5;
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v3 nextObject];
      if (!v9)
      {
        *(*(a1 + 32) + 512) = 0;
        objc_autoreleasePoolPop(v8);
        break;
      }

      v10 = v9;
      v11 = [v9 sideCarInfo];
      v12 = [v10 localDiffs];
      v13 = [v11 ckInfo];
      v14 = [v13 etag];

      if (([v10 isDead] & 1) != 0 || (v12 & 0x1A00) != 0 && v14 && (objc_msgSend(v11, "hasfieldsToSync") & 1) == 0)
      {
        v15 = [v10 sideCarInfo];
        v16 = [v15 ckInfo];
        v17 = [v16 etag];

        if (!v17)
        {
          v28 = brc_bread_crumbs();
          v29 = brc_default_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v85 = v28;
            _os_log_debug_impl(&dword_223E7A000, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] Faking sync for side car info delete which isn't known to the server%@", buf, 0xCu);
          }

          [*(a1 + 32) fakeSyncForItem:v10 itemRank:0];
          goto LABEL_44;
        }

        v18 = brc_bread_crumbs();
        v19 = brc_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v85 = v10;
          v86 = 2112;
          v87 = v18;
          _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] Deleting side-car record for %@%@", buf, 0x16u);
        }

        v20 = [v10 sideCarRecordID];
        [v5 setObject:v17 forKeyedSubscript:v20];
        goto LABEL_43;
      }

      v21 = [*(a1 + 40) clientDB];
      v22 = [v10 itemID];
      v23 = [v10 clientZone];
      v24 = [v23 dbRowID];
      v17 = [v21 fetch:{@"SELECT item_state, item_side_car_ckinfo, item_rank FROM server_items WHERE item_id = %@ AND zone_rowid = %@", v22, v24}];

      if ([v17 next])
      {
        v25 = [v17 intAtIndex:0];
        v26 = [v17 objectOfClass:objc_opt_class() atIndex:1];
        v78 = [v17 unsignedLongLongAtIndex:2];
        v27 = [v26 etag];

        [v17 close];
        if (([v11 hasfieldsToSync] & 1) == 0)
        {
          v5 = v79;
LABEL_27:
          v39 = v78;
LABEL_29:
          v40 = brc_bread_crumbs();
          v41 = brc_default_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v85 = v10;
            v86 = 2112;
            v87 = v40;
            _os_log_debug_impl(&dword_223E7A000, v41, OS_LOG_TYPE_DEBUG, "[DEBUG] Faking sync of side-car record for %@%@", buf, 0x16u);
          }

          [*(a1 + 32) fakeSyncForItem:v10 itemRank:v39];
          goto LABEL_32;
        }

        v5 = v79;
        if (v25 == 1 && ([v10 isKnownByServer] & 1) != 0)
        {
          goto LABEL_27;
        }

        v20 = [v10 baseSideCarRecord];
        if (v27)
        {
          goto LABEL_24;
        }

        v75 = 1;
      }

      else
      {
        v30 = [v10 itemID];
        v31 = [v10 serverZone];
        v32 = [v31 asSharedZone];
        v33 = [v30 sideCarRecordNameWithZone:v32];

        v34 = [*(a1 + 40) clientDB];
        v35 = [v34 fetchObjectOfClass:objc_opt_class() sql:{@"SELECT item_side_car_ckinfo FROM side_car_lookahead WHERE record_name = %@", v33}];

        v36 = [v35 etag];

        if (![v11 hasfieldsToSync])
        {
          v39 = 0;
          v5 = v79;
          goto LABEL_29;
        }

        v20 = [v10 baseSideCarRecord];
        v78 = 0;
        if (v36)
        {
          v5 = v79;
LABEL_24:
          v37 = [v11 ckInfo];
          v38 = [v37 etag];

          v75 = 0;
          if (v38)
          {
            goto LABEL_40;
          }

          goto LABEL_34;
        }

        v75 = 1;
        v5 = v79;
      }

LABEL_34:
      v42 = [v76 useShareReferenceOnSideCar];
      v43 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:v10];
      v44 = v43;
      if ((v42 & 1) == 0)
      {
        v72 = v3;
        v45 = [v43 brc_shareItemID];
        if (!v45)
        {
          __33__BRCSideCarSyncUpOperation_main__block_invoke_2_cold_1(&v82, &v83);
        }

        v46 = [v10 serverZone];
        v47 = [v46 ownerName];
        v48 = [v45 derivedAliasItemIDWithOwnerName:v47];

        v49 = [v10 appLibrary];
        v50 = [v49 defaultClientZone];
        [v50 serverZone];
        v51 = v71 = v45;
        v70 = [v48 structureRecordIDForItemType:3 zone:v51 aliasTargetZoneIsShared:1];

        v44 = v70;
        v3 = v72;
        v5 = v79;
      }

      if (v44)
      {
        v52 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v44 action:0];
        [v20 setObject:v52 forKeyedSubscript:@"shareReference"];

LABEL_40:
        v53 = v3;
        v54 = brc_bread_crumbs();
        v55 = brc_default_log();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v85 = v10;
          v86 = 2112;
          v87 = v54;
          _os_log_debug_impl(&dword_223E7A000, v55, OS_LOG_TYPE_DEBUG, "[DEBUG] Syncing up side-car record for %@%@", buf, 0x16u);
        }

        v56 = [v10 st];
        v57 = [v56 logicalName];
        v58 = [v57 br_pathExtension];
        [v20 serializeSideCarInfo:v11 filenameExtension:v58 diffs:objc_msgSend(v10 deadInServerTruth:{"localDiffs"), v75}];

        [v81 addObject:v20];
        v59 = [v10 clientZone];
        v60 = [v59 asSharedClientZone];
        v61 = [v20 recordID];
        [v77 setObject:v60 forKeyedSubscript:v61];

        v3 = v53;
        a1 = v73;
        v5 = v79;
LABEL_43:

        [v10 prepareForSyncUpSideCarZone];
        [v10 saveToDB];
        goto LABEL_44;
      }

      v63 = brc_bread_crumbs();
      v64 = brc_default_log();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v85 = v10;
        v86 = 2112;
        v87 = v63;
        _os_log_fault_impl(&dword_223E7A000, v64, OS_LOG_TYPE_FAULT, "[CRIT] Unable to compute reference recordID for %@%@", buf, 0x16u);
      }

      a1 = v73;
      [*(v73 + 32) fakeSyncForItem:v10 itemRank:v78];

LABEL_32:
LABEL_44:

      objc_autoreleasePoolPop(v8);
      v62 = [v5 count];
    }

    while ([v81 count] + v62 < v80);
  }

  v65 = [*(*(a1 + 32) + 248) session];
  v66 = [v65 containerScheduler];
  v67 = [v66 sideCarSyncPersistedState];

  if (!v67)
  {
    __33__BRCSideCarSyncUpOperation_main__block_invoke_2_cold_2();
  }

  [*(a1 + 32) _syncUpRecordBatchWithModifiedRecords:v81 deletedRecordIDs:v5 recordIDToZoneMap:v77 requestID:{objc_msgSend(v67, "allocateNextRequestID")}];

  v68 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_itemsNeedingSyncUpEnumerator
{
  v3 = [(BRCAccountSession *)self->_session clientDB];
  v4 = [v3 fetch:{@"SELECT li.rowid, li.zone_rowid, li.item_id, li.item_creator_id, li.item_sharing_options, li.item_side_car_ckinfo, li.item_parent_zone_rowid, li.item_localsyncupstate, li.item_local_diffs, li.item_notifs_rank, li.app_library_rowid, li.item_min_supported_os_rowid, li.item_user_visible, li.item_stat_ckinfo, li.item_state, li.item_type, li.item_mode, li.item_birthtime, li.item_lastusedtime, li.item_favoriterank, li.item_parent_id, li.item_filename, li.item_hidden_ext, li.item_finder_tags, li.item_xattr_signature, li.item_trash_put_back_path, li.item_trash_put_back_parent_id, li.item_alias_target, li.item_creator, li.item_processing_stamp, li.item_bouncedname, li.item_scope, li.item_local_change_count, li.item_old_version_identifier, li.fp_creation_item_identifier, li.version_name, li.version_ckinfo, li.version_mtime, li.version_size, li.version_thumb_size, li.version_thumb_signature, li.version_content_signature, li.version_xattr_signature, li.version_edited_since_shared, li.version_device, li.version_conflict_loser_etags, li.version_quarantine_info, li.version_uploaded_assets, li.version_upload_error, li.version_old_zone_item_id, li.version_old_zone_rowid, li.version_local_change_count, li.version_old_version_identifier, li.item_live_conflict_loser_etags, li.item_file_id, li.item_generation FROM client_items AS li  INNER JOIN client_sync_up AS su    ON su.throttle_id = li.rowid  WHERE         su.throttle_state = 50    AND su.throttle_state != 0    AND su.zone_rowid = %@    AND su.in_flight_diffs IS NULL    AND li.item_stat_ckinfo IS NOT NULL    AND li.item_localsyncupstate = 4    AND li.item_min_supported_os_rowid IS NULL", &unk_2837B00E8}];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__BRCSideCarSyncUpOperation__itemsNeedingSyncUpEnumerator__block_invoke;
  v7[3] = &unk_2784FF910;
  v7[4] = self;
  v5 = [v4 enumerateObjects:v7];

  return v5;
}

id __58__BRCSideCarSyncUpOperation__itemsNeedingSyncUpEnumerator__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 504);
  v5 = a2;
  v6 = [v4 clientDB];
  v7 = [v4 newLocalItemFromPQLResultSet:v5 db:v6 error:a3];

  return v7;
}

- (void)_syncUpRecordBatchWithModifiedRecords:deletedRecordIDs:recordIDToZoneMap:requestID:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: requestID%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_syncUpRecordBatchWithModifiedRecords:(os_log_t)log deletedRecordIDs:recordIDToZoneMap:requestID:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a2;
  v6 = 2112;
  v7 = a1;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Syncing up side car records with request %llu%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __112__BRCSideCarSyncUpOperation__syncUpRecordBatchWithModifiedRecords_deletedRecordIDs_recordIDToZoneMap_requestID___block_invoke_10_cold_1(_DWORD *a1, void *a2)
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    OUTLINED_FUNCTION_22(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: clientZone%@");
  }
}

void __33__BRCSideCarSyncUpOperation_main__block_invoke_2_cold_1(_DWORD *a1, void *a2)
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    OUTLINED_FUNCTION_22(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: itemID%@");
  }
}

void __33__BRCSideCarSyncUpOperation_main__block_invoke_2_cold_2()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: state%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end