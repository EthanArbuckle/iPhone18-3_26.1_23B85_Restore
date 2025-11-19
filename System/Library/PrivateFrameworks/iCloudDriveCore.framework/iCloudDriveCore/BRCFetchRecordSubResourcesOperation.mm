@interface BRCFetchRecordSubResourcesOperation
- (BOOL)_hasRecordsPendingSubResources;
- (BOOL)_markSubResourceRecordAsFetchedIfNecessary:(id)a3;
- (BOOL)_willFetchRecordForDeserialize:(id)a3;
- (BOOL)saveRecordsWithQueryCursor:(id)a3;
- (BOOL)saveRecordsWithServerChangeToken:(id)a3 clientChangeToken:(int64_t)a4 syncStatus:(int64_t)a5;
- (BOOL)shouldRetryForError:(id)a3;
- (id)createActivity;
- (id)initAndScheduleWithServerZone:(id)a3 parentOperation:(id)a4 pendingChangesStream:(id)a5 contentRecordsFetchedInline:(BOOL)a6 fetchResourcesHandler:(id)a7 sessionContext:(id)a8;
- (id)records;
- (int64_t)_compareRecordsForSaveWithFirstRecord:(id)a3 secondRecord:(id)a4;
- (void)_cleanUpAfterSavingRecords;
- (void)_createSubResourceGroupsFromPendingChangesStreamIfNecessary;
- (void)_dump;
- (void)_fetchRecordsBlockingSaveIfNecessary;
- (void)_notifyWhenRecordsAreFetched:(id)a3;
- (void)_prepareToSaveRecords;
- (void)_saveRecordsToPendingChangesWithServerChangeToken:(id)a3 clientChangeToken:(int64_t)a4;
- (void)_scheduleDeserialize;
- (void)_scheduleXattrFetch;
- (void)_startWithParentOperation:(id)a3;
- (void)addRecord:(id)a3;
- (void)addRecordIDToDeserialize:(id)a3 recordType:(int64_t)a4;
- (void)cancel;
- (void)dealloc;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
- (void)notifyWhenCaughtUp:(BOOL)a3 whenRecordsAreFetchedAndFinish:(id)a4;
- (void)recordIDWasDeleted:(id)a3;
- (void)shareIDWasDeleted:(id)a3;
- (void)stop;
- (void)stopWithError:(id)a3;
@end

@implementation BRCFetchRecordSubResourcesOperation

- (void)_prepareToSaveRecords
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v3);

  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BRCFetchRecordSubResourcesOperation *)&self->super.super.super.isa _prepareToSaveRecords];
  }

  [(BRCServerZone *)self->_serverZone handleMovedZoneNames:self->_movedZoneNames];
  [(NSMutableSet *)self->_movedZoneNames removeAllObjects];
  v65 = objc_opt_new();
  v66 = objc_opt_new();
  do
  {
    v6 = [(NSMutableDictionary *)self->_subResourceRecordsByID allValues];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __60__BRCFetchRecordSubResourcesOperation__prepareToSaveRecords__block_invoke;
    v83[3] = &unk_278508170;
    v83[4] = self;
    v7 = [v6 sortedArrayUsingComparator:v83];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
    if (!v8)
    {
      goto LABEL_32;
    }

    v9 = *v80;
    do
    {
      v10 = 0;
      do
      {
        if (*v80 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v79 + 1) + 8 * v10);
        if ([v11 isWaitingOnShareIDFetch])
        {
          v12 = [v11 recordIDNeedingFetch];
          v13 = [(NSMutableDictionary *)self->_recordsByID objectForKeyedSubscript:v12];
          if (v13 || [(BRCPendingChangesStream *)self->_pendingChangesStream hasFetchRecordByID:v12])
          {

            goto LABEL_13;
          }

          v26 = [(NSMutableDictionary *)self->_subResourceRecordsByID objectForKeyedSubscript:v12];
          v27 = [v26 record];
          v28 = v27 == 0;

          if (v28)
          {
            v29 = [v11 recordID];
            v30 = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
            v31 = [v29 brc_itemIDWithZoneAppRetriever:v30];

            v32 = [v11 recordID];
            [v65 setObject:v32 forKeyedSubscript:v31];
          }

          else
          {
LABEL_13:
            v14 = brc_bread_crumbs();
            v15 = brc_default_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v35 = [v11 recordID];
              v36 = [(BRCFetchRecordSubResourcesOperation *)self name];
              *buf = 138412802;
              *&buf[4] = v35;
              *&buf[12] = 2112;
              *&buf[14] = v36;
              *&buf[22] = 2112;
              v86 = v14;
              _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ no longer needs to fetch shareID in %@ because it's fetched in pending changes stream%@", buf, 0x20u);
            }

            [v11 setRecordIDNeedingFetch:0];
            [(BRCFetchRecordSubResourcesOperation *)self _markSubResourceRecordAsFetchedIfNecessary:v11];
          }
        }

        v16 = [v11 recordIDBlockingSave];

        if (!v16)
        {
          goto LABEL_25;
        }

        v17 = [v11 recordIDBlockingSave];
        v18 = [(NSMutableDictionary *)self->_recordsByID objectForKeyedSubscript:v17];
        if (v18)
        {
        }

        else if (![(BRCPendingChangesStream *)self->_pendingChangesStream hasFetchRecordByID:v17])
        {
          v21 = [(NSMutableDictionary *)self->_subResourceRecordsByID objectForKeyedSubscript:v17];
          v22 = v21 == 0;

          if (v22)
          {
            v23 = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
            v24 = [v17 brc_itemIDWithZoneAppRetriever:v23];

            v25 = [v11 recordID];
            [v66 setObject:v25 forKeyedSubscript:v24];
          }

          goto LABEL_24;
        }

        v19 = brc_bread_crumbs();
        v20 = brc_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v33 = [v11 recordID];
          v34 = [(BRCFetchRecordSubResourcesOperation *)self name];
          *buf = 138412802;
          *&buf[4] = v33;
          *&buf[12] = 2112;
          *&buf[14] = v34;
          *&buf[22] = 2112;
          v86 = v19;
          _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ is no longer blocked from save in %@ because the blocker is fetched in pending changes stream%@", buf, 0x20u);
        }

        [v11 setRecordIDBlockingSave:0];
        [(BRCFetchRecordSubResourcesOperation *)self _markSubResourceRecordAsFetchedIfNecessary:v11];
LABEL_24:

LABEL_25:
        ++v10;
      }

      while (v8 != v10);
      v37 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
      v8 = v37;
    }

    while (v37);
LABEL_32:

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v86) = 0;
    if ([v65 count] || objc_msgSend(v66, "count"))
    {
      v38 = [(BRCServerZone *)self->_serverZone clientZone];
      v39 = [(BRCSessionContext *)self->super._sessionContext clientReadWriteDatabaseFacade];
      v40 = [v39 workloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__BRCFetchRecordSubResourcesOperation__prepareToSaveRecords__block_invoke_53;
      block[3] = &unk_2785081E8;
      v41 = v65;
      v74 = v41;
      v42 = v38;
      v75 = v42;
      v76 = self;
      v78 = buf;
      v43 = v66;
      v77 = v43;
      dispatch_async_and_wait(v40, block);

      [v41 removeAllObjects];
      [v43 removeAllObjects];
    }

    v44 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  while ((v44 & 1) != 0);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v45 = [(NSMutableDictionary *)self->_subResourceRecordsByID objectEnumerator];
  v46 = [v45 countByEnumeratingWithState:&v69 objects:v84 count:16];
  if (v46)
  {
    v47 = *v70;
LABEL_38:
    v48 = 0;
    while (1)
    {
      if (*v70 != v47)
      {
        objc_enumerationMutation(v45);
      }

      v49 = *(*(&v69 + 1) + 8 * v48);
      if (self->_xattrFetchingGroup)
      {
        if (self->_deserializeGroup)
        {
          break;
        }
      }

      v50 = [*(*(&v69 + 1) + 8 * v48) xattrSignature];
      if (v50)
      {
        v51 = self->_xattrFetchingGroup == 0;

        if (v51)
        {
          v52 = brc_bread_crumbs();
          v53 = brc_default_log();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            v62 = [(BRCFetchRecordSubResourcesOperation *)self name];
            *buf = 138412546;
            *&buf[4] = v62;
            *&buf[12] = 2112;
            *&buf[14] = v52;
            v67 = v62;
            _os_log_debug_impl(&dword_223E7A000, v53, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ starting to wait for xattr fetches%@", buf, 0x16u);
          }

          v54 = dispatch_group_create();
          xattrFetchingGroup = self->_xattrFetchingGroup;
          self->_xattrFetchingGroup = v54;

          dispatch_group_enter(self->_xattrFetchingGroup);
          dispatch_source_merge_data(self->_xattrFetchingSource, 1uLL);
        }
      }

      v56 = [v49 recordIDNeedingFetch];
      if (v56)
      {
        v57 = self->_deserializeGroup == 0;

        if (v57)
        {
          v58 = brc_bread_crumbs();
          v59 = brc_default_log();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            v63 = [(BRCFetchRecordSubResourcesOperation *)self name];
            *buf = 138412546;
            *&buf[4] = v63;
            *&buf[12] = 2112;
            *&buf[14] = v58;
            _os_log_debug_impl(&dword_223E7A000, v59, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ starting to wait for deserialize fetches%@", buf, 0x16u);
          }

          v60 = dispatch_group_create();
          deserializeGroup = self->_deserializeGroup;
          self->_deserializeGroup = v60;

          dispatch_group_enter(self->_deserializeGroup);
          dispatch_source_merge_data(self->_deserializeSource, 1uLL);
        }
      }

      if (v46 == ++v48)
      {
        v46 = [v45 countByEnumeratingWithState:&v69 objects:v84 count:16];
        if (v46)
        {
          goto LABEL_38;
        }

        break;
      }
    }
  }

  [(BRCFetchRecordSubResourcesOperation *)self _createSubResourceGroupsFromPendingChangesStreamIfNecessary];
  v64 = *MEMORY[0x277D85DE8];
}

- (void)_createSubResourceGroupsFromPendingChangesStreamIfNecessary
{
  v3 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v3);

  if (!self->_xattrFetchingGroup && [(BRCPendingChangesStream *)self->_pendingChangesStream hasXattrsToFetch])
  {
    v4 = dispatch_group_create();
    xattrFetchingGroup = self->_xattrFetchingGroup;
    self->_xattrFetchingGroup = v4;

    dispatch_group_enter(self->_xattrFetchingGroup);
    dispatch_source_merge_data(self->_xattrFetchingSource, 1uLL);
  }

  if (!self->_deserializeGroup && [(BRCPendingChangesStream *)self->_pendingChangesStream hasRecordIDsToDeserialize])
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BRCFetchRecordSubResourcesOperation _createSubResourceGroupsFromPendingChangesStreamIfNecessary];
    }

    v8 = dispatch_group_create();
    deserializeGroup = self->_deserializeGroup;
    self->_deserializeGroup = v8;

    dispatch_group_enter(self->_deserializeGroup);
    dispatch_source_merge_data(self->_deserializeSource, 1uLL);
  }
}

- (BOOL)_hasRecordsPendingSubResources
{
  if ([(NSMutableDictionary *)self->_subResourceRecordsByID count])
  {
    return 1;
  }

  pendingChangesStream = self->_pendingChangesStream;

  return [(BRCPendingChangesStream *)pendingChangesStream hasSubResourceRecords];
}

- (void)_cleanUpAfterSavingRecords
{
  v3 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v3);

  [(NSMutableDictionary *)self->_subResourceRecordsByID removeAllObjects];
  [(NSMutableDictionary *)self->_recordsByID removeAllObjects];
  [(NSMutableArray *)self->_deletedShareIDs removeAllObjects];
  [(NSMutableArray *)self->_deletedRecordIDs removeAllObjects];
  if (self->_deserializeState == 1)
  {
    self->_deserializeState = 0;
    deserializeSource = self->_deserializeSource;

    dispatch_resume(deserializeSource);
  }
}

- (void)_fetchRecordsBlockingSaveIfNecessary
{
  v2 = self;
  v56 = *MEMORY[0x277D85DE8];
  v3 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v3);

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v4 = [(NSMutableDictionary *)v2->_subResourceRecordsByID objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v46;
    *&v6 = 138412290;
    v43 = v6;
    do
    {
      v9 = 0;
      v44 = v7;
      do
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v45 + 1) + 8 * v9);
        v11 = [v10 recordIDNeedingFetch];
        if (v11)
        {
        }

        else
        {
          v12 = [v10 recordIDBlockingSave];
          if (v12)
          {
            v13 = v12;
            v14 = v8;
            v15 = v4;
            v16 = v2;
            subResourceRecordsByID = v2->_subResourceRecordsByID;
            v18 = [v10 recordIDBlockingSave];
            v19 = [(NSMutableDictionary *)subResourceRecordsByID objectForKeyedSubscript:v18];
            if (v19)
            {

              v2 = v16;
              v4 = v15;
              v8 = v14;
              v7 = v44;
            }

            else
            {
              pendingChangesStream = v16->_pendingChangesStream;
              v21 = [v10 recordIDBlockingSave];
              LOBYTE(pendingChangesStream) = [(BRCPendingChangesStream *)pendingChangesStream hasRecordIDBlockedOnSubResources:v21];

              v2 = v16;
              v4 = v15;
              v8 = v14;
              v7 = v44;
              if ((pendingChangesStream & 1) == 0)
              {
                v22 = brc_bread_crumbs();
                v23 = brc_default_log();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  v24 = [v10 recordIDBlockingSave];
                  v25 = [v10 recordID];
                  *buf = 138412802;
                  v50 = v24;
                  v51 = 2112;
                  v52 = v25;
                  v53 = 2112;
                  v54 = v22;
                  _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEFAULT, "[WARNING] We need to fetch %@ to unblock %@ from saving, but it wasn't found.  Forcing fetch%@", buf, 0x20u);
                }

                v26 = [v10 recordIDBlockingSave];
                [v10 setRecordIDNeedingFetch:v26];

                if (!v2->_deserializeGroup)
                {
                  v27 = brc_bread_crumbs();
                  v28 = brc_default_log();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = v43;
                    v50 = v27;
                    _os_log_debug_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] Creating _deserializeGroup because we have more records to deserialize in memory%@", buf, 0xCu);
                  }

                  v29 = dispatch_group_create();
                  deserializeGroup = v2->_deserializeGroup;
                  v2->_deserializeGroup = v29;

                  dispatch_group_enter(v2->_deserializeGroup);
                  dispatch_source_merge_data(v2->_deserializeSource, 1uLL);
                }
              }
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v31 = [v4 countByEnumeratingWithState:&v45 objects:v55 count:16];
      v7 = v31;
    }

    while (v31);
  }

  v32 = v2->_pendingChangesStream;
  v33 = [(NSMutableDictionary *)v2->_subResourceRecordsByID objectEnumerator];
  v34 = [(BRCPendingChangesStream *)v32 copyBlockingSaveRecordsToNeedingFetchIgnoringRecords:v33];

  if (v34)
  {
    v35 = brc_bread_crumbs();
    v36 = brc_default_log();
    if (os_log_type_enabled(v36, 0x90u))
    {
      v42 = [(BRCFetchRecordSubResourcesOperation *)v2 name];
      *buf = 134218498;
      v50 = v34;
      v51 = 2112;
      v52 = v42;
      v53 = 2112;
      v54 = v35;
      _os_log_error_impl(&dword_223E7A000, v36, 0x90u, "[ERROR] We need to fetch %llu records in the pending changes stream to allow saving for %@.  Forcing fetch%@", buf, 0x20u);
    }

    if (!v2->_deserializeGroup)
    {
      v37 = brc_bread_crumbs();
      v38 = brc_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [BRCFetchRecordSubResourcesOperation _createSubResourceGroupsFromPendingChangesStreamIfNecessary];
      }

      v39 = dispatch_group_create();
      v40 = v2->_deserializeGroup;
      v2->_deserializeGroup = v39;

      dispatch_group_enter(v2->_deserializeGroup);
      dispatch_source_merge_data(v2->_deserializeSource, 1uLL);
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  if (!self->_error)
  {
    if (self->_xattrFetchingGroup)
    {
      [BRCFetchRecordSubResourcesOperation stop];
    }

    if (self->_deserializeGroup)
    {
      [BRCFetchRecordSubResourcesOperation stop];
    }

    if ([(NSMutableDictionary *)self->_recordsByID count])
    {
      [BRCFetchRecordSubResourcesOperation stop];
    }

    if ([(NSMutableDictionary *)self->_subResourceRecordsByID count])
    {
      [BRCFetchRecordSubResourcesOperation stop];
    }

    if ([(NSMutableArray *)self->_deletedShareIDs count])
    {
      [BRCFetchRecordSubResourcesOperation stop];
    }

    if ([(NSMutableArray *)self->_deletedRecordIDs count])
    {
      [BRCFetchRecordSubResourcesOperation stop];
    }

    if ([(NSMutableSet *)self->_movedZoneNames count])
    {
      [BRCFetchRecordSubResourcesOperation stop];
    }

    if ([(BRCPendingChangesStream *)self->_pendingChangesStream hasXattrsToFetch])
    {
      [BRCFetchRecordSubResourcesOperation stop];
    }

    if ([(BRCPendingChangesStream *)self->_pendingChangesStream hasRecordIDsToDeserialize])
    {
      [BRCFetchRecordSubResourcesOperation stop];
    }
  }

  [(BRCFetchRecordSubResourcesOperation *)self stopWithError:0];
}

uint64_t __43__BRCFetchRecordSubResourcesOperation_main__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__BRCFetchRecordSubResourcesOperation_main__block_invoke_2;
  v3[3] = &unk_2784FF450;
  v3[4] = v1;
  return [v1 _notifyWhenRecordsAreFetched:v3];
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "fetch-record-subresources", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 512);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  operationGroup = self->_operationGroup;
  v4 = [(_BRCOperation *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__BRCFetchRecordSubResourcesOperation_main__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_group_notify(operationGroup, v4, block);
}

- (id)records
{
  if ([(NSMutableDictionary *)self->_subResourceRecordsByID count]|| self->_pendingChangesStream)
  {
    [BRCFetchRecordSubResourcesOperation records];
  }

  v3 = [(NSMutableDictionary *)self->_recordsByID allValues];

  return v3;
}

- (id)initAndScheduleWithServerZone:(id)a3 parentOperation:(id)a4 pendingChangesStream:(id)a5 contentRecordsFetchedInline:(BOOL)a6 fetchResourcesHandler:(id)a7 sessionContext:(id)a8
{
  v15 = a3;
  v16 = a4;
  v74 = a5;
  obj = a7;
  v73 = a7;
  v75 = a8;
  if (!v15 || !v16)
  {
    [BRCFetchRecordSubResourcesOperation initAndScheduleWithServerZone:parentOperation:pendingChangesStream:contentRecordsFetchedInline:fetchResourcesHandler:sessionContext:];
  }

  v17 = [v16 operationID];
  v18 = [v17 UUIDString];
  v19 = [@"record-fetcher" stringByAppendingPathComponent:v18];
  v20 = [v15 metadataSyncContext];
  v81.receiver = self;
  v81.super_class = BRCFetchRecordSubResourcesOperation;
  v21 = [(_BRCOperation *)&v81 initWithName:v19 syncContext:v20 sessionContext:v75];

  if (v21)
  {
    [v21 setNonDiscretionary:1];
    v21[629] = a6;
    objc_storeStrong(v21 + 63, a3);
    objc_opt_class();
    v71 = v16;
    v21[626] = objc_opt_isKindOfClass() & 1;
    v70 = v15;
    v22 = [v15 mangledID];
    v23 = [BRCUserDefaults defaultsForMangledID:v22];

    if (v21[626] == 1)
    {
      if ([v23 canSaveRecordsDirectlyForDeltaSync])
      {
        v24 = [*(v21 + 63) failedListItemIDs];
        v25 = v21 + 627;
        v21[627] = [v24 count] == 0;

        goto LABEL_10;
      }

      v26 = 0;
    }

    else
    {
      v26 = [v23 canSaveRecordsDirectlyForList];
    }

    v25 = v21 + 627;
    v21[627] = v26;
LABEL_10:
    v27 = [v23 canSaveRecordsDirectlyWithDeletes];
    v21[628] = v27;
    if (*v25 == 1 && (v27 & 1) == 0 && v21[626] == 1)
    {
      *v25 = [v74 hasRecordDeletes] ^ 1;
    }

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v29 = *(v21 + 65);
    *(v21 + 65) = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v31 = *(v21 + 66);
    *(v21 + 66) = v30;

    v32 = objc_opt_new();
    v33 = *(v21 + 67);
    *(v21 + 67) = v32;

    v34 = objc_opt_new();
    v35 = *(v21 + 68);
    *(v21 + 68) = v34;

    v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v37 = *(v21 + 69);
    *(v21 + 69) = v36;

    objc_storeStrong(v21 + 64, a5);
    objc_storeStrong(v21 + 79, obj);
    v38 = [*(v21 + 63) mangledID];
    v39 = [BRCUserDefaults defaultsForMangledID:v38];
    *(v21 + 150) = [v39 subResourceFetchLoopCacheSize];

    v40 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v41 = *(v21 + 76);
    *(v21 + 76) = v40;

    if (!v74)
    {
      v21[624] = 2;
    }

    v42 = dispatch_group_create();
    v43 = *(v21 + 70);
    *(v21 + 70) = v42;

    v44 = [v21 callbackQueue];
    v45 = MEMORY[0x277D85CE8];
    v46 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, v44);
    v47 = *(v21 + 72);
    *(v21 + 72) = v46;

    v48 = [v21 callbackQueue];
    v49 = dispatch_source_create(v45, 0, 0, v48);
    v50 = *(v21 + 74);
    *(v21 + 74) = v49;

    objc_initWeak(&location, v21);
    v51 = *(v21 + 72);
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __171__BRCFetchRecordSubResourcesOperation_initAndScheduleWithServerZone_parentOperation_pendingChangesStream_contentRecordsFetchedInline_fetchResourcesHandler_sessionContext___block_invoke;
    v78[3] = &unk_2784FF400;
    objc_copyWeak(&v79, &location);
    v52 = v51;
    v53 = v78;
    v54 = v52;
    v55 = v53;
    v56 = v55;
    v57 = MEMORY[0x277CFB010];
    v58 = v55;
    if (*MEMORY[0x277CFB010])
    {
      v58 = (*MEMORY[0x277CFB010])(v55);
    }

    v59 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v58);
    dispatch_source_set_event_handler(v54, v59);

    v60 = *(v21 + 74);
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __171__BRCFetchRecordSubResourcesOperation_initAndScheduleWithServerZone_parentOperation_pendingChangesStream_contentRecordsFetchedInline_fetchResourcesHandler_sessionContext___block_invoke_7;
    v76[3] = &unk_2784FF400;
    objc_copyWeak(&v77, &location);
    v61 = v60;
    v62 = v76;
    v63 = v61;
    v64 = v62;
    v65 = v64;
    v66 = *v57;
    v67 = v64;
    v16 = v71;
    if (v66)
    {
      v67 = v66(v64);
    }

    v68 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v67);
    dispatch_source_set_event_handler(v63, v68);

    dispatch_resume(*(v21 + 72));
    dispatch_resume(*(v21 + 74));
    [v21 _startWithParentOperation:v71];
    objc_destroyWeak(&v77);
    objc_destroyWeak(&v79);
    objc_destroyWeak(&location);

    v15 = v70;
  }

  return v21;
}

void __171__BRCFetchRecordSubResourcesOperation_initAndScheduleWithServerZone_parentOperation_pendingChangesStream_contentRecordsFetchedInline_fetchResourcesHandler_sessionContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  memset(v7, 0, sizeof(v7));
  __brc_create_section(0, "[BRCFetchRecordSubResourcesOperation initAndScheduleWithServerZone:parentOperation:pendingChangesStream:contentRecordsFetchedInline:fetchResourcesHandler:sessionContext:]_block_invoke", 152, 0, v7);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = v7[0];
    v6 = [WeakRetained name];
    *buf = 134218498;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@ scheduling xattr fetch%@", buf, 0x20u);
  }

  [WeakRetained _scheduleXattrFetch];
  __brc_leave_section(v7);

  v4 = *MEMORY[0x277D85DE8];
}

void __171__BRCFetchRecordSubResourcesOperation_initAndScheduleWithServerZone_parentOperation_pendingChangesStream_contentRecordsFetchedInline_fetchResourcesHandler_sessionContext___block_invoke_7(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  memset(v7, 0, sizeof(v7));
  __brc_create_section(0, "[BRCFetchRecordSubResourcesOperation initAndScheduleWithServerZone:parentOperation:pendingChangesStream:contentRecordsFetchedInline:fetchResourcesHandler:sessionContext:]_block_invoke", 158, 0, v7);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = v7[0];
    v6 = [WeakRetained name];
    *buf = 134218498;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@ scheduling deserialize%@", buf, 0x20u);
  }

  [WeakRetained _scheduleDeserialize];
  __brc_leave_section(v7);

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRetryForError:(id)a3
{
  v4 = a3;
  if ([v4 brc_containsCloudKitErrorCode:11])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BRCFetchRecordSubResourcesOperation;
    v5 = [(_BRCOperation *)&v7 shouldRetryForError:v4];
  }

  return v5;
}

- (void)addRecord:(id)a3
{
  v132 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(BRCSessionContext *)self->super._sessionContext clientReadWriteDatabaseFacade];
  [v6 assertNotOnQueue];

  v7 = [(BRCSessionContext *)self->super._sessionContext serverReadWriteDatabaseFacade];
  [v7 assertNotOnQueue];

  if (!self->_error && ([(BRCFetchRecordSubResourcesOperation *)self isCancelled]& 1) == 0)
  {
    if (self->_isDoneFetchingRecords)
    {
      [BRCFetchRecordSubResourcesOperation addRecord:];
    }

    if (([v4 brc_isInterestingRecordForSyncDown] & 1) == 0)
    {
      v9 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(BRCFetchRecordSubResourcesOperation *)self name];
        v23 = [v4 recordID];
        v24 = [v23 recordName];
        *buf = 138412802;
        v127 = v22;
        v128 = 2112;
        v129 = v24;
        v130 = 2112;
        v131 = v9;
        _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ got a record we're not interested in: '%@'%@", buf, 0x20u);
      }

      goto LABEL_106;
    }

    [v4 processAppLibraryDataWithMovedZoneNames:self->_movedZoneNames serverZone:self->_serverZone isDeltaSync:self->_isDeltaSync];
    if (([v4 brc_isInterestingRecordForSave] & 1) == 0)
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v98 = [(BRCFetchRecordSubResourcesOperation *)self name];
        v99 = [v4 recordID];
        v100 = [v99 recordName];
        *buf = 138412802;
        v127 = v98;
        v128 = 2112;
        v129 = v100;
        v130 = 2112;
        v131 = v25;
        _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ ignoring record we're not interested in saving named: %@%@", buf, 0x20u);
      }

      pendingChangesStream = self->_pendingChangesStream;
      v9 = [v4 recordID];
      [(BRCPendingChangesStream *)pendingChangesStream unblockRecordSavesWaitingOnRecordID:v9];
      goto LABEL_106;
    }

    ++self->_recordsRequested;
    self->_recordsRequestedTotalMetadataSize += [v4 size];
    v8 = [v4 recordID];
    v9 = v8;
    if (!self->_contentRecordsFetchedInline)
    {
      v10 = [(BRCFetchSubResourceRecord *)v8 recordName];
      if ([v10 hasPrefix:@"documentStructure/"])
      {
        v11 = [v10 substringFromIndex:{objc_msgSend(@"documentStructure/", "length")}];
        v12 = [@"documentContent/" stringByAppendingString:v11];

        v13 = objc_alloc(MEMORY[0x277CBC5D0]);
        v14 = [v4 recordID];
        v15 = [v14 zoneID];
        v16 = [v13 initWithRecordName:v12 zoneID:v15];

        [(BRCFetchRecordSubResourcesOperation *)self addRecordIDToDeserialize:v16];
        v10 = v12;
      }
    }

    v17 = [v4 share];

    if (!v17)
    {
      v124 = 0;
      goto LABEL_24;
    }

    v18 = [v4 share];
    v19 = [v18 recordID];

    v20 = [(NSMutableDictionary *)self->_recordsByID objectForKeyedSubscript:v19];
    if (v20)
    {
    }

    else if (![(BRCPendingChangesStream *)self->_pendingChangesStream hasFetchRecordByID:v19])
    {
      v83 = brc_bread_crumbs();
      v84 = brc_default_log();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
      {
        v109 = [(BRCFetchRecordSubResourcesOperation *)self name];
        *buf = 138412802;
        v127 = v109;
        v128 = 2112;
        v129 = v19;
        v130 = 2112;
        v131 = v83;
        _os_log_debug_impl(&dword_223E7A000, v84, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ needs to fetch shareID %@%@", buf, 0x20u);
      }

      v124 = v19;
      goto LABEL_23;
    }

    v124 = 0;
LABEL_23:

LABEL_24:
    v28 = [v4 objectForKeyedSubscript:@"xattr"];
    v29 = [v4 encryptedValues];
    v30 = [v29 objectForKeyedSubscript:@"xattrSignature"];

    objc_opt_class();
    v122 = v30;
    v123 = v28;
    if (objc_opt_isKindOfClass())
    {
      if (v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = [v28 signature];
      }

      v33 = v31;
      v34 = [(BRCSessionContext *)self->super._sessionContext xattrStager];
      [v34 urlForXattrSignature:v33];
      v36 = v35 = v33;

      if ([v36 checkResourceIsReachableAndReturnError:0])
      {
        v37 = v35;
        v125 = 0;
        v32 = v124;
      }

      else
      {
        v125 = v35;
        v37 = brc_bread_crumbs();
        v38 = brc_default_log();
        v32 = v124;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v108 = [(BRCFetchRecordSubResourcesOperation *)self name];
          *buf = 138412802;
          v127 = v108;
          v128 = 2112;
          v129 = v125;
          v130 = 2112;
          v131 = v37;
          _os_log_debug_impl(&dword_223E7A000, v38, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ needs to fetch xattr signature %@%@", buf, 0x20u);
        }
      }
    }

    else
    {
      v125 = 0;
      v32 = v124;
    }

    v39 = [v4 recordType];
    v40 = [v39 isEqualToString:@"content"];

    if (v40)
    {
      v41 = [(BRCFetchSubResourceRecord *)v9 recordName];
      if (([v41 hasPrefix:@"documentContent/"] & 1) == 0)
      {
        [BRCFetchRecordSubResourcesOperation addRecord:];
      }

      v121 = v41;
      v42 = [v41 substringFromIndex:{objc_msgSend(@"documentContent/", "length")}];
      v43 = [@"documentStructure/" stringByAppendingString:v42];

      v44 = objc_alloc(MEMORY[0x277CBC5D0]);
      v45 = [(BRCFetchSubResourceRecord *)v9 zoneID];
      v119 = v43;
      v46 = [v44 initWithRecordName:v43 zoneID:v45];

      v47 = [(NSMutableDictionary *)self->_subResourceRecordsByID objectForKeyedSubscript:v46];
      if (v47)
      {
        v48 = brc_bread_crumbs();
        v49 = brc_default_log();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v117 = [v46 recordName];
          v103 = [v4 recordID];
          v104 = [v103 recordName];
          *buf = 138412802;
          v127 = v117;
          v128 = 2112;
          v129 = v104;
          v105 = v104;
          v130 = 2112;
          v131 = v48;
          _os_log_debug_impl(&dword_223E7A000, v49, OS_LOG_TYPE_DEBUG, "[DEBUG] Release block %@ on %@%@", buf, 0x20u);
        }

        v50 = [v47 recordIDBlockingSave];
        v51 = [v4 recordID];
        v52 = [v50 isEqual:v51];

        if (v52)
        {
          [v47 setRecordIDBlockingSave:0];
          [(BRCFetchRecordSubResourcesOperation *)self _markSubResourceRecordAsFetchedIfNecessary:v47];
        }

        else
        {
          v71 = brc_bread_crumbs();
          v72 = brc_default_log();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            v115 = [v4 recordID];
            v73 = [v115 recordName];
            [v47 recordIDBlockingSave];
            v74 = v116 = v71;
            v75 = [v74 recordName];
            *buf = 138412802;
            v127 = v73;
            v128 = 2112;
            v129 = v75;
            v130 = 2112;
            v131 = v116;
            _os_log_impl(&dword_223E7A000, v72, OS_LOG_TYPE_DEFAULT, "[WARNING] Expected recordIDBlockingSave %@ got %@%@", buf, 0x20u);

            v71 = v116;
          }
        }
      }

      v76 = self->_pendingChangesStream;
      v77 = [v4 recordID];
      [(BRCPendingChangesStream *)v76 unblockRecord:v46 waitingOnRecord:v77];

      if (-[BRCServerZone isSharedZone](self->_serverZone, "isSharedZone") && ([v4 share], (v78 = objc_claimAutoreleasedReturnValue()) != 0))
      {

        v63 = 0;
        v64 = v125;
        v65 = &OBJC_IVAR___BRCAccountSession__serverDB;
      }

      else
      {
        v65 = &OBJC_IVAR___BRCAccountSession__serverDB;
        v79 = [(NSMutableDictionary *)self->_recordsByID objectForKeyedSubscript:v46];
        v61 = v119;
        if (v79)
        {

          v63 = 0;
          v64 = v125;
LABEL_83:

          v32 = v124;
          goto LABEL_84;
        }

        v82 = [(BRCPendingChangesStream *)self->_pendingChangesStream hasFetchRecordByID:v46];

        if (v82)
        {
          v63 = 0;
          v64 = v125;
        }

        else
        {
          v86 = brc_bread_crumbs();
          v87 = brc_default_log();
          v64 = v125;
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
          {
            v118 = [v4 recordID];
            v110 = [v118 recordName];
            v111 = [v46 recordName];
            *buf = 138412802;
            v127 = v110;
            v128 = 2112;
            v129 = v111;
            v130 = 2112;
            v131 = v86;
            _os_log_debug_impl(&dword_223E7A000, v87, OS_LOG_TYPE_DEBUG, "[DEBUG] Block %@ on %@%@", buf, 0x20u);

            v65 = &OBJC_IVAR___BRCAccountSession__serverDB;
          }

          v63 = v46;
        }
      }

      v61 = v119;
      goto LABEL_83;
    }

    v53 = [v4 recordType];
    if ([v53 isEqualToString:@"structure"])
    {
      v54 = [(BRCFetchSubResourceRecord *)v9 recordName];
      v55 = [v54 hasPrefix:@"documentStructure/"];

      if (v55)
      {
        v56 = [(BRCFetchSubResourceRecord *)v9 recordName];
        v57 = [v56 substringFromIndex:{objc_msgSend(@"documentStructure/", "length")}];
        v58 = [@"documentContent/" stringByAppendingString:v57];

        v59 = objc_alloc(MEMORY[0x277CBC5D0]);
        v60 = [(BRCFetchSubResourceRecord *)v9 zoneID];
        v121 = v58;
        v61 = [v59 initWithRecordName:v58 zoneID:v60];

        if (-[BRCServerZone isSharedZone](self->_serverZone, "isSharedZone") && ([v4 share], (v62 = objc_claimAutoreleasedReturnValue()) != 0))
        {

          v63 = 0;
          v64 = v125;
          v65 = &OBJC_IVAR___BRCAccountSession__serverDB;
        }

        else
        {
          v85 = [(NSMutableDictionary *)self->_subResourceRecordsByID objectForKeyedSubscript:v61];
          v64 = v125;
          v65 = &OBJC_IVAR___BRCAccountSession__serverDB;
          if (v85)
          {
          }

          else
          {
            v101 = [(BRCPendingChangesStream *)self->_pendingChangesStream hasRecordIDBlockedOnSubResources:v61];

            if (!v101)
            {
              v106 = brc_bread_crumbs();
              v107 = brc_default_log();
              if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
              {
                [v4 recordID];
                v112 = v120 = v61;
                v113 = [v112 recordName];
                v114 = [v120 recordName];
                *buf = 138412802;
                v127 = v113;
                v128 = 2112;
                v129 = v114;
                v130 = 2112;
                v131 = v106;
                _os_log_debug_impl(&dword_223E7A000, v107, OS_LOG_TYPE_DEBUG, "[DEBUG] Block %@ on %@%@", buf, 0x20u);

                v65 = &OBJC_IVAR___BRCAccountSession__serverDB;
                v61 = v120;
              }

              v61 = v61;
              v63 = v61;
              goto LABEL_84;
            }
          }

          v63 = 0;
        }

LABEL_84:

LABEL_85:
        if (v32 || v64 || v63)
        {
          v90 = [[BRCFetchSubResourceRecord alloc] initWithChangedRecord:v4 recordIDNeedingFetch:v32 xattrSignatureNeedingFetch:v64 recordIDBlockingSave:v63];
          if ([(NSMutableArray *)self->_deletedShareIDs containsObject:v9])
          {
            [BRCFetchRecordSubResourcesOperation addRecord:];
          }

          if ([(NSMutableArray *)self->_deletedRecordIDs containsObject:v9])
          {
            [BRCFetchRecordSubResourcesOperation addRecord:];
          }

          v94 = v65[450];
          v95 = [*(&self->super.super.super.isa + v94) objectForKeyedSubscript:v9];

          if (v95)
          {
            [BRCFetchRecordSubResourcesOperation addRecord:];
          }

          [(NSMutableDictionary *)self->_subResourceRecordsByID setObject:v90 forKeyedSubscript:v9];
          [(NSMutableArray *)self->_deletedShareIDs removeObject:v9];
          [(NSMutableArray *)self->_deletedRecordIDs removeObject:v9];
          [*(&self->super.super.super.isa + v94) removeObjectForKey:v9];
          v91 = brc_bread_crumbs();
          v96 = brc_default_log();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
          {
            v102 = [(BRCFetchRecordSubResourcesOperation *)self name];
            *buf = 138412802;
            v127 = v102;
            v128 = 2112;
            v129 = v90;
            v130 = 2112;
            v131 = v91;
            _os_log_debug_impl(&dword_223E7A000, v96, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ record changed %@ which needs subResources fetched%@", buf, 0x20u);
          }
        }

        else
        {
          if ([(NSMutableArray *)self->_deletedShareIDs containsObject:v9])
          {
            [BRCFetchRecordSubResourcesOperation addRecord:];
          }

          if ([(NSMutableArray *)self->_deletedRecordIDs containsObject:v9])
          {
            [BRCFetchRecordSubResourcesOperation addRecord:];
          }

          v88 = v65[450];
          v89 = [*(&self->super.super.super.isa + v88) objectForKeyedSubscript:v9];

          if (v89)
          {
            [BRCFetchRecordSubResourcesOperation addRecord:];
          }

          [*(&self->super.super.super.isa + v88) setObject:v4 forKeyedSubscript:v9];
          [(NSMutableArray *)self->_deletedShareIDs removeObject:v9];
          [(NSMutableArray *)self->_deletedRecordIDs removeObject:v9];
          [(NSMutableDictionary *)self->_subResourceRecordsByID removeObjectForKey:v9];
          v90 = brc_bread_crumbs();
          v91 = brc_default_log();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
          {
            v92 = [(BRCFetchRecordSubResourcesOperation *)self name];
            v93 = [v4 debugDescription];
            *buf = 138412802;
            v127 = v92;
            v128 = 2112;
            v129 = v93;
            v130 = 2112;
            v131 = v90;
            _os_log_debug_impl(&dword_223E7A000, v91, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ record changed %@%@", buf, 0x20u);
          }
        }

LABEL_106:
        goto LABEL_107;
      }
    }

    else
    {
    }

    v66 = [v4 recordType];
    v67 = [v66 isEqualToString:*MEMORY[0x277CBC050]];

    if (!v67)
    {
      v63 = 0;
      v64 = v125;
      v65 = &OBJC_IVAR___BRCAccountSession__serverDB;
      goto LABEL_85;
    }

    v121 = [(BRCFetchSubResourceRecord *)v9 brc_shareItemID];
    v61 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
    if (!v61)
    {
      v68 = brc_bread_crumbs();
      v69 = brc_default_log();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v127 = v4;
        v128 = 2112;
        v129 = v68;
        _os_log_impl(&dword_223E7A000, v69, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't determine record type for root share record %@%@", buf, 0x16u);
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v61 isEqualToString:*MEMORY[0x277CFAD00]])
    {
      v70 = [v121 structureRecordIDForItemType:0 zone:self->_serverZone aliasTargetZoneIsShared:1];
    }

    else
    {
      v80 = [(BRCServerZone *)self->_serverZone zoneID];
      v70 = [v121 contentsRecordIDInZoneID:v80];
    }

    v65 = &OBJC_IVAR___BRCAccountSession__serverDB;
    v81 = [(NSMutableDictionary *)self->_recordsByID objectForKeyedSubscript:v70];
    v64 = v125;
    if (v81)
    {
    }

    else if (![(BRCPendingChangesStream *)self->_pendingChangesStream hasFetchRecordByID:v70])
    {
      v63 = v70;
      goto LABEL_78;
    }

    v63 = 0;
LABEL_78:

    goto LABEL_84;
  }

LABEL_107:

  v97 = *MEMORY[0x277D85DE8];
}

- (void)addRecordIDToDeserialize:(id)a3 recordType:(int64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v7);

  if (!self->_error && ([(BRCFetchRecordSubResourcesOperation *)self isCancelled]& 1) == 0)
  {
    v8 = [(NSMutableDictionary *)self->_subResourceRecordsByID objectForKeyedSubscript:v6];
    if (v8 || ([(NSMutableDictionary *)self->_recordsByID objectForKeyedSubscript:v6], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else if (![(BRCPendingChangesStream *)self->_pendingChangesStream hasFetchRecordByID:v6])
    {
      if (self->_isDoneFetchingRecords)
      {
        [BRCFetchRecordSubResourcesOperation addRecordIDToDeserialize:recordType:];
      }

      if ([(NSMutableArray *)self->_deletedShareIDs containsObject:v6])
      {
        [BRCFetchRecordSubResourcesOperation addRecordIDToDeserialize:recordType:];
      }

      if ([(NSMutableArray *)self->_deletedRecordIDs containsObject:v6])
      {
        [BRCFetchRecordSubResourcesOperation addRecordIDToDeserialize:recordType:];
      }

      v13 = [(NSMutableDictionary *)self->_recordsByID objectForKeyedSubscript:v6];

      if (v13)
      {
        [BRCFetchRecordSubResourcesOperation addRecordIDToDeserialize:recordType:];
      }

      v14 = [(NSMutableDictionary *)self->_subResourceRecordsByID objectForKeyedSubscript:v6];

      if (v14)
      {
        [BRCFetchRecordSubResourcesOperation addRecordIDToDeserialize:recordType:];
      }

      v9 = [[BRCFetchSubResourceRecord alloc] initWithRecordIDNeedingFetch:v6 recordType:a4];
      [(NSMutableDictionary *)self->_subResourceRecordsByID setObject:v9 forKeyedSubscript:v6];
      [(NSMutableArray *)self->_deletedShareIDs removeObject:v6];
      [(NSMutableArray *)self->_deletedRecordIDs removeObject:v6];
      [(NSMutableDictionary *)self->_recordsByID removeObjectForKey:v6];
      v10 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [(BRCFetchRecordSubResourcesOperation *)self name];
        v17 = 138412802;
        v18 = v16;
        v19 = 2112;
        v20 = v6;
        v21 = 2112;
        v22 = v10;
        _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ scheduling recordID deserialize for %@%@", &v17, 0x20u);
      }

      goto LABEL_8;
    }

    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(BRCFetchRecordSubResourcesOperation *)self name];
      v17 = 138412802;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ has no need to deserialize %@ because we've already fetch it%@", &v17, 0x20u);
    }

LABEL_8:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)recordIDWasDeleted:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v5);

  if (!self->_error && ([(BRCFetchRecordSubResourcesOperation *)self isCancelled]& 1) == 0)
  {
    if (!self->_canSaveDirectlyWithDeletes)
    {
      self->_canSaveDirectly = 0;
    }

    if ([v4 brc_isZoneRootRecordID])
    {
      v6 = brc_bread_crumbs();
      v7 = brc_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(BRCFetchRecordSubResourcesOperation *)self name];
        *buf = 138412802;
        v24 = v8;
        v25 = 2112;
        v26 = v4;
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ Zone root record ID was deleted %@%@", buf, 0x20u);
      }

      v9 = [(BRCServerZone *)self->_serverZone clientZone];
      [v9 handleRootRecordDeletion];
    }

    else if ([v4 brc_isAppLibraryRootRecordID])
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(BRCFetchRecordSubResourcesOperation *)self name];
        *buf = 138412802;
        v24 = v12;
        v25 = 2112;
        v26 = v4;
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ App library root record ID was deleted %@%@", buf, 0x20u);
      }

      v13 = [(BRCSessionContext *)self->super._sessionContext clientReadWriteDatabaseFacade];
      v14 = [v13 workloop];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __58__BRCFetchRecordSubResourcesOperation_recordIDWasDeleted___block_invoke;
      v21[3] = &unk_2784FF478;
      v21[4] = self;
      v22 = v4;
      dispatch_async_and_wait(v14, v21);
    }

    else
    {
      if ([(NSMutableArray *)self->_deletedRecordIDs containsObject:v4])
      {
        [BRCFetchRecordSubResourcesOperation recordIDWasDeleted:];
      }

      v15 = [(NSMutableDictionary *)self->_recordsByID objectForKeyedSubscript:v4];

      if (v15)
      {
        [BRCFetchRecordSubResourcesOperation recordIDWasDeleted:];
      }

      v16 = [(NSMutableDictionary *)self->_subResourceRecordsByID objectForKeyedSubscript:v4];

      if (v16)
      {
        [BRCFetchRecordSubResourcesOperation recordIDWasDeleted:];
      }

      [(NSMutableArray *)self->_deletedRecordIDs addObject:v4];
      [(NSMutableDictionary *)self->_recordsByID removeObjectForKey:v4];
      [(NSMutableDictionary *)self->_subResourceRecordsByID removeObjectForKey:v4];
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v20 = [(BRCFetchRecordSubResourcesOperation *)self name];
        *buf = 138412802;
        v24 = v20;
        v25 = 2112;
        v26 = v4;
        v27 = 2112;
        v28 = v17;
        _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ record ID was deleted %@%@", buf, 0x20u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __58__BRCFetchRecordSubResourcesOperation_recordIDWasDeleted___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 256) zoneAppRetriever];
  v3 = [*(a1 + 40) brc_appLibraryRootZoneName];
  v4 = [v2 appLibraryByID:v3];

  [v4 clearStateBits:134217730];
}

- (void)shareIDWasDeleted:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v5);

  if (!self->_error && ([(BRCFetchRecordSubResourcesOperation *)self isCancelled]& 1) == 0)
  {
    v6 = [(NSMutableDictionary *)self->_recordsByID objectForKeyedSubscript:v4];

    if (v6)
    {
      [BRCFetchRecordSubResourcesOperation shareIDWasDeleted:];
    }

    if ([(NSMutableArray *)self->_deletedShareIDs containsObject:v4])
    {
      [BRCFetchRecordSubResourcesOperation shareIDWasDeleted:];
    }

    [(NSMutableDictionary *)self->_recordsByID removeObjectForKey:v4];
    [(NSMutableArray *)self->_deletedShareIDs addObject:v4];
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(BRCFetchRecordSubResourcesOperation *)self name];
      v11 = 138412802;
      v12 = v10;
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ share ID was deleted %@%@", &v11, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_notifyWhenRecordsAreFetched:(id)a3
{
  v4 = a3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __68__BRCFetchRecordSubResourcesOperation__notifyWhenRecordsAreFetched___block_invoke;
  v15 = &unk_278500048;
  v16 = self;
  v5 = v4;
  v17 = v5;
  v6 = MEMORY[0x22AA4A310](&v12);
  v7 = v6;
  if (self->_deserializeGroup)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCFetchRecordSubResourcesOperation _notifyWhenRecordsAreFetched:];
    }

    deserializeGroup = self->_deserializeGroup;
    v11 = [(_BRCOperation *)self callbackQueue:v12];
    dispatch_group_notify(deserializeGroup, v11, v7);
  }

  else
  {
    (*(v6 + 16))(v6);
  }
}

void __68__BRCFetchRecordSubResourcesOperation__notifyWhenRecordsAreFetched___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[71])
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __68__BRCFetchRecordSubResourcesOperation__notifyWhenRecordsAreFetched___block_invoke_cold_1();
    }

    v5 = *(a1 + 32);
    v6 = v5[71];
    v7 = [v5 callbackQueue];
    dispatch_group_notify(v6, v7, *(a1 + 40));
  }

  else
  {
    v8 = [v2 callbackQueue];
    dispatch_async(v8, *(a1 + 40));
  }
}

- (void)notifyWhenCaughtUp:(BOOL)a3 whenRecordsAreFetchedAndFinish:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v7);

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [BRCFetchRecordSubResourcesOperation notifyWhenCaughtUp:? whenRecordsAreFetchedAndFinish:?];
  }

  if (self->_pendingChangesStream)
  {
    if ([(NSMutableDictionary *)self->_recordsByID count]|| [(NSMutableArray *)self->_deletedShareIDs count]|| [(NSMutableArray *)self->_deletedRecordIDs count]|| [(NSMutableDictionary *)self->_subResourceRecordsByID count])
    {
      [BRCFetchRecordSubResourcesOperation notifyWhenCaughtUp:whenRecordsAreFetchedAndFinish:];
    }

    [(BRCFetchRecordSubResourcesOperation *)self _createSubResourceGroupsFromPendingChangesStreamIfNecessary];
  }

  else
  {
    [(BRCFetchRecordSubResourcesOperation *)self _prepareToSaveRecords];
  }

  self->_deserializeState = 2;
  if (v4)
  {
    [(BRCFetchRecordSubResourcesOperation *)self _fetchRecordsBlockingSaveIfNecessary];
  }

  else
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [BRCFetchRecordSubResourcesOperation notifyWhenCaughtUp:whenRecordsAreFetchedAndFinish:];
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__BRCFetchRecordSubResourcesOperation_notifyWhenCaughtUp_whenRecordsAreFetchedAndFinish___block_invoke;
  v13[3] = &unk_2784FFBC8;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  [(BRCFetchRecordSubResourcesOperation *)self _notifyWhenRecordsAreFetched:v13];
}

uint64_t __89__BRCFetchRecordSubResourcesOperation_notifyWhenCaughtUp_whenRecordsAreFetchedAndFinish___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __89__BRCFetchRecordSubResourcesOperation_notifyWhenCaughtUp_whenRecordsAreFetchedAndFinish___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) stop];
}

- (void)_startWithParentOperation:(id)a3
{
  v4 = a3;
  if (self->_isDoneFetchingRecords)
  {
    [BRCFetchRecordSubResourcesOperation _startWithParentOperation:];
  }

  dispatch_group_enter(self->_operationGroup);
  [v4 addSubOperation:self];
}

- (void)stopWithError:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v6);

  if (v5 && !self->_error)
  {
    objc_storeStrong(&self->_error, a3);
  }

  if (!self->_isDoneFetchingRecords)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(BRCFetchRecordSubResourcesOperation *)self name];
      v13 = 138412802;
      v14 = v12;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ stopping fetching records with error %@%@", &v13, 0x20u);
    }

    dispatch_group_leave(self->_operationGroup);
    self->_isDoneFetchingRecords = 1;
  }

  if (self->_deserializeState == 1)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [BRCFetchRecordSubResourcesOperation stopWithError:?];
    }

    self->_deserializeState = 0;
    dispatch_resume(self->_deserializeSource);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v7.receiver = self;
  v7.super_class = BRCFetchRecordSubResourcesOperation;
  [(_BRCOperation *)&v7 cancel];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCFetchRecordSubResourcesOperation cancel];
  }

  v5 = [(_BRCOperation *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__BRCFetchRecordSubResourcesOperation_cancel__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(v5, block);
}

void __45__BRCFetchRecordSubResourcesOperation_cancel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  [v1 stopWithError:v2];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v8);

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(BRCFetchRecordSubResourcesOperation *)self name];
    v15 = [(_BRCOperation *)self operationID];
    v16 = [v6 brc_isCloudKitCancellationError];
    v17 = &stru_2837504F0;
    *buf = 138413058;
    v20 = v14;
    v21 = 2112;
    if (v16)
    {
      v17 = @" operation cancelled.";
    }

    v22 = v15;
    v23 = 2112;
    v24 = v17;
    v25 = 2112;
    v26 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ %@ finished record fetcher.%@%@", buf, 0x2Au);
  }

  if (([(BRCFetchRecordSubResourcesOperation *)self isCancelled]& 1) == 0 && self->_xattrFetchingGroup)
  {
    [BRCFetchRecordSubResourcesOperation finishWithResult:error:];
  }

  if (([(BRCFetchRecordSubResourcesOperation *)self isCancelled]& 1) == 0 && self->_deserializeGroup)
  {
    [BRCFetchRecordSubResourcesOperation finishWithResult:error:];
  }

  if (!v6)
  {
    if (self->_queryFinishedServerTruthCallback)
    {
      [BRCFetchRecordSubResourcesOperation finishWithResult:error:];
    }

    if (self->_queryFinishedClientTruthCallback)
    {
      [BRCFetchRecordSubResourcesOperation finishWithResult:error:];
    }
  }

  queryFinishedServerTruthCallback = self->_queryFinishedServerTruthCallback;
  self->_queryFinishedServerTruthCallback = 0;

  queryFinishedClientTruthCallback = self->_queryFinishedClientTruthCallback;
  self->_queryFinishedClientTruthCallback = 0;

  v18.receiver = self;
  v18.super_class = BRCFetchRecordSubResourcesOperation;
  [(_BRCOperation *)&v18 finishWithResult:v7 error:v6];

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_willFetchRecordForDeserialize:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableOrderedSet *)self->_loopDetectionCache containsObject:v4];
  if (v5)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [BRCFetchRecordSubResourcesOperation _willFetchRecordForDeserialize:];
    }

    v8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Fetch loop trying to fetch %@", v4}];
    [(BRCFetchRecordSubResourcesOperation *)self stopWithError:v8];
  }

  else
  {
    [(NSMutableOrderedSet *)self->_loopDetectionCache addObject:v4];
    if (self->_loopDetectionCacheSize < [(NSMutableOrderedSet *)self->_loopDetectionCache count])
    {
      [(NSMutableOrderedSet *)self->_loopDetectionCache removeObjectAtIndex:0];
    }
  }

  return v5 ^ 1;
}

- (void)_scheduleDeserialize
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v3);

  if (self->_error || [(BRCFetchRecordSubResourcesOperation *)self isCancelled])
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v27 = [(BRCFetchRecordSubResourcesOperation *)self name];
      error = self->_error;
      *buf = 138412802;
      v46 = v27;
      if (error)
      {
        v29 = @"Operation had an error";
      }

      else
      {
        v29 = @"Operation canceled";
      }

      v47 = 2112;
      v48 = v29;
      v49 = 2112;
      v50 = v4;
      _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ leaving deserialize group. %@%@", buf, 0x20u);
    }

    dispatch_group_leave(self->_deserializeGroup);
    deserializeGroup = self->_deserializeGroup;
    self->_deserializeGroup = 0;
  }

  else
  {
    if (self->_isDoneFetchingRecords)
    {
      [BRCFetchRecordSubResourcesOperation _scheduleDeserialize];
    }

    if (self->_deserializeState == 1)
    {
      [BRCFetchRecordSubResourcesOperation _scheduleDeserialize];
    }

    v8 = objc_opt_new();
    v9 = [(BRCServerZone *)self->_serverZone mangledID];
    v10 = [BRCUserDefaults defaultsForMangledID:v9];

    v11 = [v10 maxRecordCountInFetchRecordsOperation];
    pendingChangesStream = self->_pendingChangesStream;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __59__BRCFetchRecordSubResourcesOperation__scheduleDeserialize__block_invoke;
    v42[3] = &unk_2785080A8;
    deserializeGroup = v8;
    v43 = deserializeGroup;
    v44 = v11;
    [(BRCPendingChangesStream *)pendingChangesStream enumerateRecordsNeedingMetadataFetchWithBlock:v42];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = [(NSMutableDictionary *)self->_subResourceRecordsByID objectEnumerator];
    v14 = [v13 countByEnumeratingWithState:&v38 objects:v53 count:16];
    if (v14)
    {
      v15 = *v39;
LABEL_12:
      v16 = 0;
      while (1)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v38 + 1) + 8 * v16);
        if ([(OS_dispatch_group *)deserializeGroup count]>= v11)
        {
          break;
        }

        v18 = [v17 recordIDNeedingFetch];
        if (v18)
        {
          if (![(BRCFetchRecordSubResourcesOperation *)self _willFetchRecordForDeserialize:v18])
          {

            goto LABEL_33;
          }

          [(OS_dispatch_group *)deserializeGroup addObject:v18];
        }

        if (v14 == ++v16)
        {
          v14 = [v13 countByEnumeratingWithState:&v38 objects:v53 count:16];
          if (v14)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    if ([(OS_dispatch_group *)deserializeGroup count])
    {
      dispatch_suspend(self->_deserializeSource);
      v36[0] = 0;
      v36[1] = v36;
      v36[2] = 0x2020000000;
      v37 = 1;
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2020000000;
      v35 = 0;
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v30 = [(BRCFetchRecordSubResourcesOperation *)self name];
        v31 = [(OS_dispatch_group *)deserializeGroup count];
        *buf = 138413058;
        v46 = v30;
        v47 = 2048;
        v48 = v31;
        v49 = 2112;
        v50 = deserializeGroup;
        v51 = 2112;
        v52 = v19;
        _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ fetching %lu records to deserialize - %@%@", buf, 0x2Au);
      }

      v21 = [[BRFetchRecordsOperation alloc] initWithRecordIDs:deserializeGroup];
      [(BRFetchRecordsOperation *)v21 setShouldFetchAssetContent:0];
      v22 = [(_BRCOperation *)self callbackQueue];
      [(BRFetchRecordsOperation *)v21 setCallbackQueue:v22];

      v23 = [MEMORY[0x277CBC5A0] desiredKeysWithMask:185];
      [(BRFetchRecordsOperation *)v21 setDesiredKeys:v23];

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __59__BRCFetchRecordSubResourcesOperation__scheduleDeserialize__block_invoke_39;
      v33[3] = &unk_2785080D0;
      v33[4] = self;
      v33[5] = v34;
      v33[6] = v36;
      [(BRFetchRecordsOperation *)v21 setPerRecordCompletionBlock:v33];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __59__BRCFetchRecordSubResourcesOperation__scheduleDeserialize__block_invoke_41;
      v32[3] = &unk_2785080F8;
      v32[4] = self;
      v32[5] = v34;
      v32[6] = v36;
      [(BRFetchRecordsOperation *)v21 setFetchRecordsCompletionBlock:v32];
      [(_BRCOperation *)self addSubOperation:v21];

      _Block_object_dispose(v34, 8);
      _Block_object_dispose(v36, 8);
    }

    else
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [(BRCFetchRecordSubResourcesOperation *)self _scheduleDeserialize];
      }

      dispatch_group_leave(self->_deserializeGroup);
      v26 = self->_deserializeGroup;
      self->_deserializeGroup = 0;
    }

LABEL_33:
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __59__BRCFetchRecordSubResourcesOperation__scheduleDeserialize__block_invoke_39(uint64_t a1, void *a2, void *a3, void *a4)
{
  v68 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = [*(*(a1 + 32) + 520) objectForKeyedSubscript:v8];
  if (v11)
  {

LABEL_4:
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v59 = v8;
      v60 = 2112;
      v61 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] We deserialized record id %@ which was useless because it came later%@", buf, 0x16u);
    }

    v14 = [*(*(a1 + 32) + 520) objectForKeyedSubscript:v8];

    if (!v14)
    {
      [*(*(a1 + 32) + 512) unblockRecordSavesWaitingOnRecordID:v8];
    }

    goto LABEL_38;
  }

  if ([*(*(a1 + 32) + 512) hasFetchRecordByID:v8])
  {
    goto LABEL_4;
  }

  if (v7)
  {
    v47 = v10;
    v48 = v9;
    v49 = v7;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v15 = [*(*(a1 + 32) + 528) allValues];
    v16 = [v15 countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v55;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v55 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v54 + 1) + 8 * i);
          v21 = [v20 recordIDNeedingFetch];
          if (v21)
          {
            v22 = v21;
            v23 = [v20 recordIDNeedingFetch];
            v24 = [v8 isEqual:v23];

            if (v24)
            {
              [v20 setRecordIDNeedingFetch:0];
              [*(a1 + 32) _markSubResourceRecordAsFetchedIfNecessary:v20];
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v54 objects:v67 count:16];
      }

      while (v17);
    }

    v7 = v49;
    [*(a1 + 32) addRecord:v49];
LABEL_37:
    v10 = v47;
    v9 = v48;
    goto LABEL_38;
  }

  if ([v9 brc_isCloudKitUnknownItemError])
  {
    v46 = 512;
    v47 = v10;
    v48 = v9;
    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, 0x90u))
    {
      __59__BRCFetchRecordSubResourcesOperation__scheduleDeserialize__block_invoke_39_cold_1();
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v27 = [*(*(a1 + 32) + 528) allValues];
    v28 = [v27 countByEnumeratingWithState:&v50 objects:v66 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v51;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v51 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v50 + 1) + 8 * j);
          v33 = [v32 recordIDNeedingFetch];
          if (v33)
          {
            v34 = v33;
            v35 = [v32 recordIDNeedingFetch];
            v36 = [v8 isEqual:v35];

            if (v36)
            {
              [v32 setRecordIDNeedingFetch:0];
              [*(a1 + 32) _markSubResourceRecordAsFetchedIfNecessary:v32];
            }
          }

          v37 = [v32 recordIDBlockingSave];
          if (v37)
          {
            v38 = v37;
            v39 = [v32 recordIDBlockingSave];
            v40 = [v8 isEqual:v39];

            if (v40)
            {
              [v32 setRecordIDBlockingSave:0];
              [*(a1 + 32) _markSubResourceRecordAsFetchedIfNecessary:v32];
            }
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v50 objects:v66 count:16];
      }

      while (v29);
    }

    [*(*(a1 + 32) + v46) unblockRecordSavesWaitingOnRecordID:v8];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = 0;
    goto LABEL_37;
  }

  if (v9)
  {
    v42 = v10;
    v43 = brc_bread_crumbs();
    v44 = brc_default_log();
    if (os_log_type_enabled(v44, 0x90u))
    {
      v45 = [*(a1 + 32) name];
      *buf = 138413058;
      v59 = v45;
      v60 = 2112;
      v61 = v8;
      v62 = 2112;
      v63 = v9;
      v64 = 2112;
      v65 = v43;
      _os_log_error_impl(&dword_223E7A000, v44, 0x90u, "[ERROR] %@ Deserialize record failed for %@ - %@%@", buf, 0x2Au);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v10 = v42;
  }

LABEL_38:
  objc_autoreleasePoolPop(v10);

  v41 = *MEMORY[0x277D85DE8];
}

void __59__BRCFetchRecordSubResourcesOperation__scheduleDeserialize__block_invoke_41(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_source_merge_data(*(*(a1 + 32) + 592), 1uLL);
  if ([v4 brc_isCloudKitCancellationError])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(a1 + 32) name];
      v17 = 138412802;
      v18 = v7;
      v19 = 2112;
      v20 = v4;
      v21 = 2112;
      v22 = v5;
      _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] failed to deserialize records for %@: %@%@", &v17, 0x20u);
LABEL_22:
    }
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      v7 = [*(a1 + 32) name];
      v17 = 138412802;
      v18 = v7;
      v19 = 2112;
      v20 = v4;
      v21 = 2112;
      v22 = v5;
      _os_log_error_impl(&dword_223E7A000, v6, 0x90u, "[ERROR] failed to deserialize records for %@: %@%@", &v17, 0x20u);
      goto LABEL_22;
    }
  }

  if (!v4 || *(*(*(a1 + 40) + 8) + 24) == 1 && (*(*(*(a1 + 48) + 8) + 24) & 1) != 0)
  {
    v8 = *(a1 + 32);
    if (*(v8 + 624) == 2)
    {
      [v8 saveRecordsWithQueryCursor:0];
    }

    else
    {
      if (!*(v8 + 616))
      {
        *(v8 + 624) = 1;
        v11 = " but waiting to resume";
        goto LABEL_16;
      }

      *(v8 + 624) = 0;
    }

    dispatch_resume(*(*(a1 + 32) + 592));
    v11 = "";
LABEL_16:
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = [*(a1 + 32) name];
      v17 = 138412802;
      v18 = v15;
      v19 = 2080;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ finished fetching record batch to deserialize%s%@", &v17, 0x20u);
    }

    goto LABEL_19;
  }

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = [*(a1 + 32) name];
    v17 = 138412802;
    v18 = v16;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ encountered an operation error so we should stop %@%@", &v17, 0x20u);
  }

  *(*(a1 + 32) + 624) = 0;
  [*(a1 + 32) stopWithError:v4];
  dispatch_resume(*(*(a1 + 32) + 592));
LABEL_19:

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_markSubResourceRecordAsFetchedIfNecessary:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 recordIDNeedingFetch];
  if (v5 || ([v4 xattrSignature], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v9 = [v4 recordIDBlockingSave];

  if (v9)
  {
    goto LABEL_4;
  }

  v10 = [v4 recordID];
  v11 = [v4 record];
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(BRCFetchRecordSubResourcesOperation *)self name];
    v15 = [v11 debugDescription];
    v16 = 138413058;
    v17 = v14;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ has sub resource that no longer has info to fetch %@ -> %@%@", &v16, 0x2Au);
  }

  [(NSMutableDictionary *)self->_subResourceRecordsByID removeObjectForKey:v10];
  if (v11)
  {
    [(NSMutableDictionary *)self->_recordsByID setObject:v11 forKeyedSubscript:v10];
  }

  v6 = 1;
LABEL_5:

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_dump
{
  v30 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [(NSMutableDictionary *)self->_subResourceRecordsByID allValues];
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        v8 = brc_bread_crumbs();
        v9 = brc_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v26 = v7;
          v27 = 2112;
          v28 = v8;
          _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] %@%@", buf, 0x16u);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v4);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(NSMutableDictionary *)self->_recordsByID allValues];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    while (1)
    {
      if (*v17 != v13)
      {
        objc_enumerationMutation(v10);
      }

      if (!--v12)
      {
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleXattrFetch
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v2);

  v3 = self;
  if (self->_error || [(BRCFetchRecordSubResourcesOperation *)self isCancelled])
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v38 = [(BRCFetchRecordSubResourcesOperation *)self name];
      error = self->_error;
      *buf = 138412802;
      *&buf[4] = v38;
      if (error)
      {
        v40 = @"Operation had an error";
      }

      else
      {
        v40 = @"Operation canceled";
      }

      *&buf[12] = 2112;
      *&buf[14] = v40;
      *&buf[22] = 2112;
      v63 = v4;
      _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ leaving xattr fetch group. %@%@", buf, 0x20u);
    }

    dispatch_group_leave(self->_xattrFetchingGroup);
    xattrFetchingGroup = self->_xattrFetchingGroup;
    self->_xattrFetchingGroup = 0;
  }

  else
  {
    if (self->_isDoneFetchingRecords)
    {
      [BRCFetchRecordSubResourcesOperation _scheduleXattrFetch];
      v3 = self;
    }

    dispatch_suspend(v3->_xattrFetchingSource);
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v10 = [(BRCServerZone *)self->_serverZone mangledID];
    v43 = [BRCUserDefaults defaultsForMangledID:v10];

    v11 = [v43 maxRecordCountInFetchRecordsOperation];
    pendingChangesStream = self->_pendingChangesStream;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __58__BRCFetchRecordSubResourcesOperation__scheduleXattrFetch__block_invoke;
    v57[3] = &unk_278508120;
    xattrFetchingGroup = v8;
    v58 = xattrFetchingGroup;
    v44 = v9;
    v59 = v44;
    v60 = v11;
    [(BRCPendingChangesStream *)pendingChangesStream enumerateRecordsNeedingXattrFetchWithBlock:v57];
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v53 = 0u;
    v13 = [(NSMutableDictionary *)self->_subResourceRecordsByID objectEnumerator];
    v14 = [v13 countByEnumeratingWithState:&v53 objects:v66 count:16];
    if (v14)
    {
      v15 = *v54;
LABEL_10:
      v16 = 0;
      while (1)
      {
        if (*v54 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v53 + 1) + 8 * v16);
        if ([(OS_dispatch_group *)xattrFetchingGroup count]>= v11)
        {
          break;
        }

        v18 = [v17 xattrSignature];
        if (v18)
        {
          v19 = [v17 xattrSignature];
          v20 = [v44 containsObject:v19];

          if ((v20 & 1) == 0)
          {
            v21 = [v17 xattrSignature];
            [v44 addObject:v21];

            v22 = [v17 record];
            v23 = [v22 etag];
            v24 = [v17 recordID];
            [(OS_dispatch_group *)xattrFetchingGroup setObject:v23 forKeyedSubscript:v24];
          }
        }

        if (v14 == ++v16)
        {
          v14 = [v13 countByEnumeratingWithState:&v53 objects:v66 count:16];
          if (v14)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }

    v25 = [(OS_dispatch_group *)xattrFetchingGroup count];
    if (v25)
    {
      memset(v52, 0, sizeof(v52));
      __brc_create_section(0, "[BRCFetchRecordSubResourcesOperation _scheduleXattrFetch]", 808, 0, v52);
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v41 = v52[0];
        v42 = [(BRCFetchRecordSubResourcesOperation *)self name];
        *buf = 134218754;
        *&buf[4] = v41;
        *&buf[12] = 2112;
        *&buf[14] = v42;
        *&buf[22] = 2048;
        v63 = v25;
        v64 = 2112;
        v65 = v26;
        _os_log_debug_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@ fetching %lu xattrs%@", buf, 0x2Au);
      }

      v50 = 0uLL;
      v51 = 0;
      __brc_create_section(0, "[BRCFetchRecordSubResourcesOperation _scheduleXattrFetch]", 809, 0, &v50);
      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [(BRCFetchRecordSubResourcesOperation *)&v50 _scheduleXattrFetch];
      }

      *buf = v50;
      *&buf[16] = v51;
      v30 = objc_alloc(MEMORY[0x277CBC3E0]);
      v31 = [(OS_dispatch_group *)xattrFetchingGroup allKeys];
      v32 = [v30 initWithRecordIDs:v31];

      v61[0] = @"xattr";
      v61[1] = @"xattrSignature";
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
      [v32 setDesiredKeys:v33];

      [v32 setRecordIDsToVersionETags:xattrFetchingGroup];
      v34 = [(_BRCOperation *)self callbackQueue];
      [v32 setCallbackQueue:v34];

      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __58__BRCFetchRecordSubResourcesOperation__scheduleXattrFetch__block_invoke_48;
      v46[3] = &unk_278508148;
      v47 = *buf;
      v46[4] = self;
      v48 = *&buf[16];
      v49 = v25;
      [v32 setFetchRecordsCompletionBlock:v46];
      [(_BRCOperation *)self addSubOperation:v32];

      __brc_leave_section(v52);
    }

    else
    {
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [BRCFetchRecordSubResourcesOperation _scheduleXattrFetch];
      }

      dispatch_resume(self->_xattrFetchingSource);
      dispatch_group_leave(self->_xattrFetchingGroup);
      v37 = self->_xattrFetchingGroup;
      self->_xattrFetchingGroup = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

BOOL __58__BRCFetchRecordSubResourcesOperation__scheduleXattrFetch__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  [v7 setObject:a3 forKeyedSubscript:a2];
  [*(a1 + 40) addObject:v8];

  return [*(a1 + 32) count] < *(a1 + 48);
}

void __58__BRCFetchRecordSubResourcesOperation__scheduleXattrFetch__block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  v81 = *MEMORY[0x277D85DE8];
  v54 = a2;
  v5 = a3;
  v69 = *(a1 + 40);
  v59 = a1;
  v70 = *(a1 + 56);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v43 = [*(a1 + 32) name];
    *buf = 134218498;
    v74 = v69;
    v75 = 2112;
    v76 = v43;
    v77 = 2112;
    v78 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx %@ finished fetching xattrs%@", buf, 0x20u);
  }

  if (v5)
  {
    if ([v5 brc_isCloudKitCancellationError])
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [*(a1 + 32) name];
        *buf = 138412802;
        v74 = v10;
        v75 = 2112;
        v76 = v5;
        v77 = 2112;
        v78 = v8;
        _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] failed to fetch xattr assets for %@: %@%@", buf, 0x20u);
      }
    }

    else
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, 0x90u))
      {
        v44 = [*(a1 + 32) name];
        *buf = 138412802;
        v74 = v44;
        v75 = 2112;
        v76 = v5;
        v77 = 2112;
        v78 = v8;
        _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] failed to fetch xattr assets for %@: %@%@", buf, 0x20u);
      }
    }

    [*(a1 + 32) stopWithError:v5];
    goto LABEL_46;
  }

  if ([v54 count] == *(a1 + 64))
  {
    v58 = objc_opt_new();
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v11 = [v54 objectEnumerator];
    v12 = [v11 countByEnumeratingWithState:&v65 objects:v72 count:16];
    if (v12)
    {
      v13 = *v66;
      obj = v11;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v66 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v65 + 1) + 8 * i);
          v16 = [v15 objectForKeyedSubscript:@"xattr"];
          v17 = [v15 encryptedValues];
          v18 = [v17 objectForKeyedSubscript:@"xattrSignature"];

          if (!v18)
          {
            v18 = [v16 signature];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [v16 fileURL];
            v20 = v19 == 0;

            if (!v20)
            {
              v64 = 0;
              v21 = [*(*(v59 + 32) + 256) xattrStager];
              v22 = [v16 fileURL];
              v23 = [v21 saveXattrAtURL:v22 forSignature:v18 error:&v64];

              if (v23)
              {
                v24 = brc_bread_crumbs();
                v25 = brc_default_log();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  v55 = [*(v59 + 32) name];
                  v28 = [v18 brc_hexadecimalString];
                  v29 = [v16 size];
                  *buf = 138413058;
                  v74 = v55;
                  v75 = 2112;
                  v76 = v28;
                  v77 = 2048;
                  v78 = v29;
                  v79 = 2112;
                  v80 = v24;
                  _os_log_debug_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ saved xattr for signature: %@ sz:%lld%@", buf, 0x2Au);
                }

                [v58 addObject:v18];
              }

              else
              {
                v26 = brc_bread_crumbs();
                v27 = brc_default_log();
                if (os_log_type_enabled(v27, 0x90u))
                {
                  v30 = [*(v59 + 32) name];
                  v31 = [v18 brc_hexadecimalString];
                  *buf = 138413058;
                  v74 = v30;
                  v75 = 2112;
                  v76 = v31;
                  v77 = 2112;
                  v78 = v64;
                  v79 = 2112;
                  v80 = v26;
                  v56 = v31;
                  _os_log_error_impl(&dword_223E7A000, v27, 0x90u, "[ERROR] %@ failed to store xattr for signature: %@ - %@%@", buf, 0x2Au);
                }

                [*(v59 + 32) stopWithError:v64];
              }

              *(*(v59 + 32) + 656) += [v16 size];
            }
          }
        }

        v11 = obj;
        v12 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
      }

      while (v12);
    }

    [*(*(v59 + 32) + 512) finishedFetchingXattrSignatures:v58];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v32 = [*(*(v59 + 32) + 528) allValues];
    v33 = [v32 countByEnumeratingWithState:&v60 objects:v71 count:16];
    if (v33)
    {
      v34 = 0;
      v35 = *v61;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v61 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v60 + 1) + 8 * j);
          v38 = [v37 xattrSignature];
          if (v38)
          {
            v39 = [v37 xattrSignature];
            v40 = [v58 containsObject:v39];

            if (v40)
            {
              [v37 setXattrSignature:0];
              [*(v59 + 32) _markSubResourceRecordAsFetchedIfNecessary:v37];
              ++v34;
            }
          }
        }

        v33 = [v32 countByEnumeratingWithState:&v60 objects:v71 count:16];
      }

      while (v33);

      if (!v34)
      {
        goto LABEL_42;
      }

      v32 = brc_bread_crumbs();
      v41 = brc_default_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        __58__BRCFetchRecordSubResourcesOperation__scheduleXattrFetch__block_invoke_48_cold_1();
      }
    }

LABEL_42:
    v5 = 0;
    goto LABEL_46;
  }

  v45 = brc_bread_crumbs();
  v46 = brc_default_log();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
  {
    v51 = [v54 count];
    v52 = *(v59 + 64);
    v53 = [*(v59 + 32) name];
    *buf = 134218754;
    v74 = v51;
    v75 = 2048;
    v76 = v52;
    v77 = 2112;
    v78 = v53;
    v79 = 2112;
    v80 = v45;
    _os_log_fault_impl(&dword_223E7A000, v46, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Received %lu xattr records instead of expected %lu records for %@%@", buf, 0x2Au);
  }

  v47 = MEMORY[0x277CCA9B8];
  v48 = [v54 count];
  v49 = *(v59 + 64);
  v50 = [*(v59 + 32) name];
  v5 = [v47 br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Received %lu xattr records instead of expected %lu records for %@", v48, v49, v50}];

  [*(v59 + 32) stopWithError:v5];
LABEL_46:
  dispatch_resume(*(*(v59 + 32) + 576));
  dispatch_source_merge_data(*(*(v59 + 32) + 576), 1uLL);
  __brc_leave_section(&v69);

  v42 = *MEMORY[0x277D85DE8];
}

- (int64_t)_compareRecordsForSaveWithFirstRecord:(id)a3 secondRecord:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 recordType] != 3 && objc_msgSend(v6, "recordType") == 3)
  {
    goto LABEL_7;
  }

  if ([v5 recordType] == 3 && objc_msgSend(v6, "recordType") != 3)
  {
LABEL_11:
    v7 = 1;
    goto LABEL_12;
  }

  if ([v5 recordType] == 2 || objc_msgSend(v6, "recordType") != 2)
  {
    if ([v5 recordType] != 2 || objc_msgSend(v6, "recordType") == 2)
    {
      v7 = 0;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_7:
  v7 = -1;
LABEL_12:

  return v7;
}

void __60__BRCFetchRecordSubResourcesOperation__prepareToSaveRecords__block_invoke_53(uint64_t a1)
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__BRCFetchRecordSubResourcesOperation__prepareToSaveRecords__block_invoke_2;
  v14[3] = &unk_278508198;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v15 = v3;
  v16 = v4;
  v9 = *(a1 + 56);
  v5 = v9;
  v17 = v9;
  [v2 enumerateKeysAndObjectsUsingBlock:v14];
  v6 = *(a1 + 56);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__BRCFetchRecordSubResourcesOperation__prepareToSaveRecords__block_invoke_56;
  v10[3] = &unk_2785081C0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v7;
  v12 = v8;
  v13 = *(a1 + 64);
  [v6 enumerateKeysAndObjectsUsingBlock:v10];
}

void __60__BRCFetchRecordSubResourcesOperation__prepareToSaveRecords__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) serverItemByItemID:v5];
  if (([v7 sharingOptions] & 0x48) != 0)
  {
    v8 = [*(*(a1 + 40) + 528) objectForKeyedSubscript:v6];
    [v8 setRecordIDNeedingFetch:0];
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v8 recordID];
      v23 = [*(a1 + 40) name];
      v26 = 138412802;
      v27 = v22;
      v28 = 2112;
      v29 = v23;
      v30 = 2112;
      v31 = v9;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ no longer needs to fetch shareID in %@ from server truth check%@", &v26, 0x20u);
    }

    v11 = [*(a1 + 40) _markSubResourceRecordAsFetchedIfNecessary:v8];
    v12 = *(*(a1 + 56) + 8);
    if (v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = *(v12 + 24);
    }

    *(v12 + 24) = v13 & 1;
  }

  v14 = [*(a1 + 48) objectForKeyedSubscript:v5];
  if (v14)
  {
    [*(a1 + 48) removeObjectForKey:v5];
    if (v7)
    {
      v15 = [*(*(a1 + 40) + 528) objectForKeyedSubscript:v14];
      [v15 setRecordIDBlockingSave:0];
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v24 = [v15 recordID];
        v25 = [*(a1 + 40) name];
        v26 = 138412802;
        v27 = v24;
        v28 = 2112;
        v29 = v25;
        v30 = 2112;
        v31 = v16;
        _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ is no longer blocked for save in %@ from server truth check%@", &v26, 0x20u);
      }

      v18 = [*(a1 + 40) _markSubResourceRecordAsFetchedIfNecessary:v15];
      v19 = *(*(a1 + 56) + 8);
      if (v18)
      {
        v20 = 1;
      }

      else
      {
        v20 = *(v19 + 24);
      }

      *(v19 + 24) = v20 & 1;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __60__BRCFetchRecordSubResourcesOperation__prepareToSaveRecords__block_invoke_56(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) serverItemByItemID:a2];
  if (v6)
  {
    v7 = [*(*(a1 + 40) + 528) objectForKeyedSubscript:v5];
    [v7 setRecordIDBlockingSave:0];
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v7 recordID];
      v15 = [*(a1 + 40) name];
      v16 = 138412802;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      v20 = 2112;
      v21 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ is no longer blocked for save in %@ from server truth check%@", &v16, 0x20u);
    }

    v10 = [*(a1 + 40) _markSubResourceRecordAsFetchedIfNecessary:v7];
    v11 = *(*(a1 + 48) + 8);
    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = *(v11 + 24);
    }

    *(v11 + 24) = v12 & 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_saveRecordsToPendingChangesWithServerChangeToken:(id)a3 clientChangeToken:(int64_t)a4
{
  pendingChangesStream = self->_pendingChangesStream;
  recordsByID = self->_recordsByID;
  v8 = a3;
  v12 = [(NSMutableDictionary *)recordsByID objectEnumerator];
  deletedRecordIDs = self->_deletedRecordIDs;
  deletedShareIDs = self->_deletedShareIDs;
  v11 = [(NSMutableDictionary *)self->_subResourceRecordsByID objectEnumerator];
  [(BRCPendingChangesStream *)pendingChangesStream saveEditedRecords:v12 deletedRecordIDs:deletedRecordIDs deletedShareIDs:deletedShareIDs subResourceEditedRecords:v11 serverChangeToken:v8 clientChangeToken:a4];
}

- (BOOL)saveRecordsWithServerChangeToken:(id)a3 clientChangeToken:(int64_t)a4 syncStatus:(int64_t)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v9);

  error = self->_error;
  if (!error)
  {
    [(BRCFetchRecordSubResourcesOperation *)self _prepareToSaveRecords];
    v11 = [(BRCFetchRecordSubResourcesOperation *)self _hasRecordsPendingSubResources];
    if (self->_queryFinishedServerTruthCallback)
    {
      [BRCFetchRecordSubResourcesOperation saveRecordsWithServerChangeToken:clientChangeToken:syncStatus:];
    }

    if (self->_queryFinishedClientTruthCallback)
    {
      [BRCFetchRecordSubResourcesOperation saveRecordsWithServerChangeToken:clientChangeToken:syncStatus:];
    }

    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v23 = [(BRCFetchRecordSubResourcesOperation *)self name];
      v24 = [v8 descriptionWithContext:0];
      v25 = v24;
      canSaveDirectly = self->_canSaveDirectly;
      *buf = 138413570;
      v32 = v23;
      v27 = "YES";
      v33 = 2112;
      v28 = a5 == 3 || canSaveDirectly;
      v35 = 2048;
      if (a5 == 3)
      {
        v29 = "YES";
      }

      else
      {
        v29 = "NO";
      }

      v34 = v24;
      if (v11)
      {
        v27 = "NO";
      }

      v36 = a4;
      if (v28)
      {
        v30 = v27;
      }

      else
      {
        v30 = "NO";
      }

      v37 = 2080;
      v38 = v29;
      v39 = 2080;
      v40 = v30;
      v41 = 2112;
      v42 = v12;
      _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ saving records with server change token:%@ requestID:%llu caught up:%s directly:%s%@", buf, 0x3Eu);
    }

    if (v11)
    {
      [(BRCFetchRecordSubResourcesOperation *)self _saveRecordsToPendingChangesWithServerChangeToken:v8 clientChangeToken:a4];
      if (a5 == 3)
      {
        [(BRCFetchRecordSubResourcesOperation *)self _fetchRecordsBlockingSaveIfNecessary];
      }
    }

    else
    {
      if (a5 == 3 || self->_canSaveDirectly)
      {
        if ([(BRCFetchRecordSubResourcesHandler *)self->_fetchResourcesHandler saveChangedRecords:self->_recordsByID deletedRecordIDs:self->_deletedRecordIDs deletedShareRecordIDs:self->_deletedShareIDs clientChangeToken:a4 serverChangeToken:v8 caughtUp:a5 == 3 pendingChanges:self->_pendingChangesStream])
        {
          v14 = brc_bread_crumbs();
          v15 = brc_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [BRCFetchRecordSubResourcesOperation saveRecordsWithServerChangeToken:? clientChangeToken:? syncStatus:?];
          }

          [(BRCPendingChangesStream *)self->_pendingChangesStream destroyDatabase];
          v16 = [[BRCPendingChangesStream alloc] initWithServerZone:self->_serverZone];
          pendingChangesStream = self->_pendingChangesStream;
          self->_pendingChangesStream = v16;

          goto LABEL_20;
        }

        v18 = brc_bread_crumbs();
        v19 = brc_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [(BRCFetchRecordSubResourcesOperation *)self name];
          *buf = 138412546;
          v32 = v20;
          v33 = 2112;
          v34 = v18;
          _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ Allocating ranks failed when not caught up.  We'll save to pending changes from now on%@", buf, 0x16u);
        }

        self->_canSaveDirectly = 0;
      }

      [(BRCFetchRecordSubResourcesOperation *)self _saveRecordsToPendingChangesWithServerChangeToken:v8 clientChangeToken:a4];
    }

LABEL_20:
    [(BRCFetchRecordSubResourcesOperation *)self _cleanUpAfterSavingRecords];
  }

  v21 = *MEMORY[0x277D85DE8];
  return error == 0;
}

- (BOOL)saveRecordsWithQueryCursor:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v5);

  if (!self->_error)
  {
    if (v4 && !self->_pendingChangesStream)
    {
      [BRCFetchRecordSubResourcesOperation saveRecordsWithQueryCursor:];
    }

    canSaveDirectly = self->_canSaveDirectly;
    [(BRCFetchRecordSubResourcesOperation *)self _prepareToSaveRecords];
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v38 = [(BRCFetchRecordSubResourcesOperation *)self name];
      v39 = "NO";
      *v51 = 138413058;
      *&v51[4] = v38;
      *&v51[12] = 2112;
      if (canSaveDirectly)
      {
        v39 = "YES";
      }

      *&v51[14] = v4;
      *&v51[22] = 2080;
      v52 = v39;
      v53 = 2112;
      v54 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ saving records with query cursor:%@ directly:%s%@", v51, 0x2Au);
    }

    if (!canSaveDirectly && v4 != 0)
    {
      pendingChangesStream = self->_pendingChangesStream;
      if (!pendingChangesStream)
      {
        [(BRCFetchRecordSubResourcesOperation *)&self->_pendingChangesStream saveRecordsWithQueryCursor:v51];
        pendingChangesStream = *v51;
      }

      v12 = [(NSMutableDictionary *)self->_recordsByID objectEnumerator];
      v13 = [(NSMutableDictionary *)self->_subResourceRecordsByID objectEnumerator];
      [(BRCPendingChangesStream *)pendingChangesStream saveEditedRecords:v12 subResourceEditedRecords:v13 queryCursor:v4];

      v6 = 1;
      goto LABEL_32;
    }

    *v51 = 0;
    *&v51[8] = v51;
    *&v51[16] = 0x2020000000;
    v52 = 0;
    if (v4)
    {
      v10 = 0;
    }

    else
    {
      v10 = ![(BRCFetchRecordSubResourcesOperation *)self _hasRecordsPendingSubResources];
    }

    v14 = self->_serverZone;
    v15 = [(BRCSessionContext *)self->super._sessionContext serverReadWriteDatabaseFacade];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __66__BRCFetchRecordSubResourcesOperation_saveRecordsWithQueryCursor___block_invoke;
    v43[3] = &unk_278508210;
    v43[4] = self;
    v45 = v51;
    v16 = v14;
    v44 = v16;
    v46 = v10;
    [v15 performWithFlags:25 action:v43];

    if (*(*&v51[8] + 24))
    {
      v17 = [(BRCSessionContext *)self->super._sessionContext clientReadWriteDatabaseFacade];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __66__BRCFetchRecordSubResourcesOperation_saveRecordsWithQueryCursor___block_invoke_2;
      v41[3] = &unk_278508238;
      v41[4] = self;
      v41[5] = v51;
      v42 = v10;
      [v17 performWithFlags:41 action:v41];

      if (v10)
      {
        v18 = brc_bread_crumbs();
        v19 = brc_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = [(BRCFetchRecordSubResourcesOperation *)self name];
          [(BRCFetchRecordSubResourcesOperation *)v20 saveRecordsWithQueryCursor:v18, buf, v19];
        }

        [(BRCPendingChangesStream *)self->_pendingChangesStream destroyDatabase];
        v21 = self->_pendingChangesStream;
        self->_pendingChangesStream = 0;
      }

      else
      {
        v32 = self->_pendingChangesStream;
        v21 = [(NSMutableDictionary *)self->_subResourceRecordsByID objectEnumerator];
        v33 = [(NSMutableDictionary *)self->_recordsByID objectEnumerator];
        [(BRCPendingChangesStream *)v32 saveSubResourceRecords:v21 afterSavingMainTableItems:v33 queryCursor:v4];
      }
    }

    else
    {
      self->_canSaveDirectly = 0;
      v22 = self->_pendingChangesStream;
      v23 = [(NSMutableDictionary *)self->_recordsByID objectEnumerator];
      v24 = [(NSMutableDictionary *)self->_subResourceRecordsByID objectEnumerator];
      [(BRCPendingChangesStream *)v22 saveEditedRecords:v23 subResourceEditedRecords:v24 queryCursor:v4];

      v25 = [(BRCPendingChangesStream *)self->_pendingChangesStream lastError];

      if (v25)
      {
        v26 = [(BRCPendingChangesStream *)self->_pendingChangesStream lastError];
        [(BRCFetchRecordSubResourcesOperation *)self stopWithError:v26];
      }

      if (v10)
      {
        v27 = brc_bread_crumbs();
        v28 = brc_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [(BRCFetchRecordSubResourcesOperation *)self name];
          *buf = 138412546;
          v48 = v29;
          v49 = 2112;
          v50 = v27;
          _os_log_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ got a (temporary) broken structure while listing directory contents%@", buf, 0x16u);
        }

        v30 = [(BRCSessionContext *)self->super._sessionContext clientReadWriteDatabaseFacade];
        v31 = [v30 workloop];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __66__BRCFetchRecordSubResourcesOperation_saveRecordsWithQueryCursor___block_invoke_61;
        v40[3] = &unk_2784FF450;
        v40[4] = self;
        dispatch_async(v31, v40);

        v6 = 0;
        goto LABEL_31;
      }

      v34 = brc_bread_crumbs();
      v35 = brc_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = v34;
        _os_log_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEFAULT, "[WARNING] Allocating ranks failed when not caught up and listing.  We'll save to pending changes from now on%@", buf, 0xCu);
      }
    }

    v6 = 1;
LABEL_31:

    _Block_object_dispose(v51, 8);
LABEL_32:
    [(BRCFetchRecordSubResourcesOperation *)self _cleanUpAfterSavingRecords];
    goto LABEL_33;
  }

  v6 = 0;
LABEL_33:

  v36 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL __66__BRCFetchRecordSubResourcesOperation_saveRecordsWithQueryCursor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 520) allValues];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) didListDirectoryChangesWithResults:v2 pendingFetchChanges:*(*(a1 + 32) + 512)];
  v3 = *(*(a1 + 32) + 664);
  v4 = *(a1 + 48);
  if (v3 && *(*(v4 + 8) + 24) && *(a1 + 56) == 1)
  {
    (*(v3 + 16))();
    v5 = *(a1 + 32);
    v6 = *(v5 + 664);
    *(v5 + 664) = 0;

    v4 = *(a1 + 48);
  }

  v7 = *(*(v4 + 8) + 24) != 0;

  return v7;
}

uint64_t __66__BRCFetchRecordSubResourcesOperation_saveRecordsWithQueryCursor___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 632) zoneRankWasUpdatedToRank:*(*(*(a1 + 40) + 8) + 24)];
  v2 = *(*(a1 + 32) + 672);
  if (v2 && *(a1 + 48) == 1)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 672);
    *(v3 + 672) = 0;
  }

  return 1;
}

void __66__BRCFetchRecordSubResourcesOperation_saveRecordsWithQueryCursor___block_invoke_61(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 504) clientZone];
  [v1 scheduleSyncDownFirst];
}

@end