@interface BRCContainerMetadataSyncDownOperation
- (BOOL)shouldRetryForError:(id)a3;
- (BRCContainerMetadataSyncDownOperation)initWithSessionContext:(id)a3 syncContext:(id)a4 state:(id)a5 containerSyncDownCallback:(id)a6;
- (id)createActivity;
- (void)_completedWithServerChangeToken:(id)a3 requestID:(unint64_t)a4;
- (void)_updateContainerMetadataFromRecord:(id)a3 appLibrary:(id)a4 stripIcons:(BOOL)a5;
- (void)main;
- (void)performAfterCreatingZoneIfNeeded:(id)a3;
- (void)performAfterFetchingAssetContents:(id)a3;
- (void)performAfterFetchingRecordChanges:(id)a3;
@end

@implementation BRCContainerMetadataSyncDownOperation

- (BRCContainerMetadataSyncDownOperation)initWithSessionContext:(id)a3 syncContext:(id)a4 state:(id)a5 containerSyncDownCallback:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = BRCContainerMetadataSyncDownOperation;
  v13 = [(_BRCOperation *)&v16 initWithName:@"sync-down/container-metadata" syncContext:a4 sessionContext:a3];
  v14 = v13;
  if (v13)
  {
    [(_BRCOperation *)v13 setNonDiscretionary:[(BRCContainerMetadataSyncPersistedState *)v13->_state hasCaughtUpAtLeastOnce]^ 1];
    objc_storeStrong(&v14->_state, a5);
    objc_storeStrong(&v14->_containerSyncDownCallback, a6);
  }

  return v14;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync-down/container-metadata", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)performAfterCreatingZoneIfNeeded:(id)a3
{
  v9 = a3;
  v4 = [(BRCContainerMetadataSyncPersistedState *)self->_state serverChangeToken];

  if (v4)
  {
    v9[2](v9, 0);
  }

  else
  {
    v5 = [BRCCreateZoneAndSubscribeOperation alloc];
    sessionContext = self->super._sessionContext;
    v7 = [MEMORY[0x277CBC5F8] brc_containerMetadataZoneID];
    v8 = [(BRCCreateZoneAndSubscribeOperation *)v5 initWithSessionContext:sessionContext zoneID:v7];

    [(BRCCreateZoneAndSubscribeOperation *)v8 setOptimisticSubscribe:1];
    [(BRCCreateZoneAndSubscribeOperation *)v8 setCreateZoneAndSubscribeCompletionBlock:v9];
    [(_BRCOperation *)self addSubOperation:v8];
  }
}

- (void)_updateContainerMetadataFromRecord:(id)a3 appLibrary:(id)a4 stripIcons:(BOOL)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(BRCSessionContext *)self->super._sessionContext clientReadWriteDatabaseFacade];
  v11 = [v10 serialQueue];

  if (v11)
  {
    v12 = [v8 brc_containerMetadataPropertiesData];
    if (v12)
    {
      if (![v9 shouldSaveContainerMetadataServerside])
      {
LABEL_16:
        objc_initWeak(buf, v9);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __98__BRCContainerMetadataSyncDownOperation__updateContainerMetadataFromRecord_appLibrary_stripIcons___block_invoke_3;
        v22[3] = &unk_2784FFDF8;
        objc_copyWeak(&v24, buf);
        v23 = v8;
        dispatch_async(v11, v22);

        objc_destroyWeak(&v24);
        objc_destroyWeak(buf);
        goto LABEL_17;
      }

      if (a5)
      {
        v13 = 0;
      }

      else
      {
        v13 = [v8 brc_containerMetadataIconPaths];
      }

      v16 = [v9 containerMetadata];
      v17 = [v16 isDocumentScopePublic];

      v18 = [v9 containerMetadata];
      [v18 updateMetadataWithRecordData:v12 iconPaths:v13];

      v19 = [v9 containerMetadata];
      v20 = [v19 isDocumentScopePublic];

      if (v17 != v20)
      {
        objc_initWeak(buf, v9);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __98__BRCContainerMetadataSyncDownOperation__updateContainerMetadataFromRecord_appLibrary_stripIcons___block_invoke;
        block[3] = &unk_2784FF400;
        objc_copyWeak(&v26, buf);
        dispatch_async(v11, block);
        objc_destroyWeak(&v26);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v13 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v28 = v8;
        v29 = 2112;
        v30 = v13;
        _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] no data in record %@%@", buf, 0x16u);
      }
    }

    goto LABEL_16;
  }

  v12 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v12;
    _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Serial queue is nil%@", buf, 0xCu);
  }

LABEL_17:
  v21 = *MEMORY[0x277D85DE8];
}

void __98__BRCContainerMetadataSyncDownOperation__updateContainerMetadataFromRecord_appLibrary_stripIcons___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didUpdateDocumentScopePublic];
}

void __98__BRCContainerMetadataSyncDownOperation__updateContainerMetadataFromRecord_appLibrary_stripIcons___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) recordChangeTag];
  [WeakRetained setContainerMetadataEtag:v2];
}

- (void)performAfterFetchingRecordChanges:(id)a3
{
  v75[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x2020000000;
  v70 = 0;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x2020000000;
  v68 = 0;
  v5 = [(_BRCOperation *)self group];
  v6 = [v5 name];
  v7 = [MEMORY[0x277CBC4F8] br_syncDownPeriodic];
  v8 = [v7 name];
  v9 = [v6 isEqualToString:v8];

  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(BRCSideCarSyncDownOperation *)v10 _createSyncDownOperation];
    }
  }

  v12 = [MEMORY[0x277CBC5F8] brc_containerMetadataZoneID];
  v13 = objc_opt_new();
  v14 = +[BRCUserDefaults defaultsForMetadataContainer];
  [v13 setResultsLimit:{objc_msgSend(v14, "maxRecordCountInFetchRecordsOperation")}];

  v15 = BRContainerIconCKAssetKeys();
  v16 = [v15 allObjects];
  v17 = [v16 arrayByAddingObject:@"infoPlist"];
  [v13 setDesiredKeys:v17];

  v18 = [(BRCContainerMetadataSyncPersistedState *)self->_state serverChangeToken];
  [v13 setPreviousServerChangeToken:v18];

  v19 = objc_alloc(MEMORY[0x277CBC3B8]);
  v75[0] = v12;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:1];
  v73 = v12;
  v74 = v13;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
  v22 = [v19 initWithRecordZoneIDs:v20 optionsByRecordZoneID:v21];

  v23 = objc_opt_new();
  [v22 setConfiguration:v23];

  v24 = [v22 configuration];
  [v24 setSourceApplicationBundleIdentifier:*MEMORY[0x277CFAD58]];

  [v22 setShouldFetchAssetContents:0];
  v63 = 0uLL;
  v64 = 0;
  __brc_create_section(0, "[BRCContainerMetadataSyncDownOperation performAfterFetchingRecordChanges:]", 150, 0, &v63);
  v25 = brc_bread_crumbs();
  v26 = brc_default_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v63;
    *&buf[12] = 2112;
    *&buf[14] = v22;
    *&buf[22] = 2112;
    v72 = v25;
    _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx starting fetch container-metadata changes operation %@%@", buf, 0x20u);
  }

  v65 = v63;
  v66 = v64;
  [v22 setFetchAllChanges:0];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke;
  v59[3] = &unk_278502690;
  v60 = v65;
  v62 = v9;
  v59[4] = self;
  v59[5] = v67;
  v61 = v66;
  v59[6] = v69;
  [v22 setRecordChangedBlock:v59];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v72) = 0;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_18;
  v52[3] = &unk_2785026E0;
  v57 = v65;
  v58 = v66;
  v55 = buf;
  v52[4] = self;
  v27 = v12;
  v53 = v27;
  v56 = v69;
  v28 = v4;
  v54 = v28;
  [v22 setRecordZoneFetchCompletionBlock:v52];
  v40 = MEMORY[0x277D85DD0];
  v41 = 3221225472;
  v42 = __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_2;
  v43 = &unk_278502708;
  v49 = v65;
  v50 = v66;
  v51 = v9;
  v47 = v67;
  v44 = self;
  v29 = v27;
  v45 = v29;
  v48 = buf;
  v30 = v28;
  v46 = v30;
  [v22 setFetchRecordZoneChangesCompletionBlock:&v40];
  v31 = [MEMORY[0x277CBEB18] array];
  recordIDsForDesiredAssets = self->_recordIDsForDesiredAssets;
  self->_recordIDsForDesiredAssets = v31;

  v33 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"infoPlist", 0, v40, v41, v42, v43, v44}];
  desiredKeysForDesiredAssets = self->_desiredKeysForDesiredAssets;
  self->_desiredKeysForDesiredAssets = v33;

  v35 = [MEMORY[0x277CBEB38] dictionary];
  recordIDsToVersionETagsForDesiredAssets = self->_recordIDsToVersionETagsForDesiredAssets;
  self->_recordIDsToVersionETagsForDesiredAssets = v35;

  v37 = [MEMORY[0x277CBEB58] set];
  containerIDsUpdated = self->_containerIDsUpdated;
  self->_containerIDsUpdated = v37;

  [(_BRCOperation *)self addSubOperation:v22];
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v67, 8);
  _Block_object_dispose(v69, 8);

  v39 = *MEMORY[0x277D85DE8];
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v57 = *(a1 + 56);
  v58 = *(a1 + 72);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  v50 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v40 = [v3 recordID];
    v41 = [v3 allKeys];
    v42 = [v3 recordChangeTag];
    v43 = [v3 modifiedByDevice];
    *buf = 134219266;
    v61 = v57;
    v62 = 2112;
    v63 = v40;
    v64 = 2112;
    v65 = v41;
    v66 = 2112;
    v67 = v42;
    v68 = 2112;
    v69 = v43;
    v70 = 2112;
    v71 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx got container-metadata changes for %@ keys:%@ changeTag:%@ modified:%@%@", buf, 0x3Eu);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (*(a1 + 80) == 1)
  {
    v6 = [*(*(a1 + 32) + 256) periodicSyncInvestigation];
    v7 = [v3 brc_lastEditorDeviceName];
    [v6 addEditingDevice:v7];
  }

  v8 = [v50 recordID];
  v49 = [v8 recordName];

  v9 = v49;
  if ([MEMORY[0x277CFAE60] validateContainerID:v49])
  {
    v48 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:v49];
    v56 = 0;
    v10 = [*(*(a1 + 32) + 256) zoneAppRetriever];
    v11 = [v10 getOrCreateAppLibraryAndPrivateZonesIfNecessary:v48 appLibraryExists:&v56];

    *(*(*(a1 + 48) + 8) + 24) = v56 ^ 1;
    if (!v11)
    {
LABEL_21:

      v9 = v49;
      goto LABEL_22;
    }

    v12 = *(*(a1 + 32) + 536);
    v13 = [v11 appLibraryID];
    [v12 addObject:v13];

    v14 = [v50 brc_containerMetadataPropertiesData];
    v46 = v14;
    if (v14)
    {
      v55 = 0;
      v47 = [MEMORY[0x277CCAC58] propertyListWithData:v14 options:0 format:0 error:{&v55, v14}];
      v15 = v55;
      if (!v15)
      {
        v23 = brc_bread_crumbs();
        v24 = brc_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v61 = v47;
          v62 = 2112;
          v63 = v48;
          v64 = 2112;
          v65 = v23;
          _os_log_debug_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] received container-metadata properties plist %@ for %@%@", buf, 0x20u);
        }

        if (![MEMORY[0x277CFAE20] isDocumentScopePublicWithProperties:v47 mangledID:v48])
        {
          v19 = 1;
          goto LABEL_17;
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v16 = [v50 brc_containerMetadataIconNames];
        v19 = 0;
        v25 = [v16 countByEnumeratingWithState:&v51 objects:v59 count:16];
        if (v25)
        {
          v26 = *v52;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v52 != v26)
              {
                objc_enumerationMutation(v16);
              }

              v28 = *(*(&v51 + 1) + 8 * i);
              v29 = [v11 containerMetadata];
              v30 = [v29 hasIconWithName:v28];

              if ((v30 & 1) == 0)
              {
                v19 = brc_bread_crumbs();
                v31 = brc_default_log();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                {
                  v34 = [v11 appLibraryID];
                  *buf = 138412802;
                  v61 = v28;
                  v62 = 2112;
                  v63 = v34;
                  v64 = 2112;
                  v65 = v19;
                  _os_log_debug_impl(&dword_223E7A000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] we'll download icon %@ for container %@%@", buf, 0x20u);
                }

                v32 = *(*(a1 + 32) + 520);
                v33 = BRContainerIconCKAssetKeyForName();
                [v32 addObject:v33];

                LOBYTE(v19) = 1;
              }
            }

            v25 = [v16 countByEnumeratingWithState:&v51 objects:v59 count:16];
          }

          while (v25);

          if (v19)
          {
            v35 = *(*(a1 + 32) + 512);
            v36 = [v50 recordID];
            [v35 addObject:v36];

            v37 = *(*(a1 + 32) + 528);
            v38 = [v50 etag];
            v39 = [v50 recordID];
            [v37 setObject:v38 forKey:v39];

LABEL_20:
            goto LABEL_21;
          }

          v19 = 0;
LABEL_17:
          v20 = brc_bread_crumbs();
          v21 = brc_default_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v44 = [v50 recordID];
            v45 = [v50 recordChangeTag];
            *buf = 138412802;
            v61 = v44;
            v62 = 2112;
            v63 = v45;
            v64 = 2112;
            v65 = v20;
            _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] updating container-metadata %@ at etag:%@ (no asset downloaded)%@", buf, 0x20u);
          }

          [*(a1 + 32) _updateContainerMetadataFromRecord:v50 appLibrary:v11 stripIcons:v19];
          goto LABEL_20;
        }

LABEL_16:

        goto LABEL_17;
      }

      v16 = v15;
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        *buf = 138412802;
        v61 = v49;
        v62 = 2112;
        v63 = v16;
        v64 = 2112;
        v65 = v17;
        _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] failed parsing container-metadata plist for container %@: %@%@", buf, 0x20u);
      }
    }

    else
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_cold_1();
      }

      v47 = 0;
    }

    v19 = 1;
    goto LABEL_16;
  }

LABEL_22:

  __brc_leave_section(&v57);
  v22 = *MEMORY[0x277D85DE8];
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_18(uint64_t a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v45 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v31 = *(a1 + 72);
  v32 = *(a1 + 88);
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219266;
    v34 = v31;
    if (a5)
    {
      v24 = "no";
    }

    else
    {
      v24 = "yes";
    }

    v35 = 2112;
    v36 = v12;
    v37 = 2080;
    v38 = v24;
    v39 = 2112;
    v40 = v13;
    v41 = 2112;
    v42 = v14;
    v43 = 2112;
    v44 = v15;
    _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx container-metadata receieved server change token %@, caught-up:%s client change token %@ error:%@%@", buf, 0x3Eu);
  }

  *(*(a1 + 32) + 552) = a5;
  v17 = [v14 brc_cloudKitErrorForZone:*(a1 + 40)];
  v18 = *(a1 + 32);
  v19 = *(v18 + 256);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_21;
  v25[3] = &unk_2785026B8;
  v30 = *(a1 + 64);
  v25[4] = v18;
  v20 = v13;
  v26 = v20;
  v29 = *(a1 + 48);
  v21 = v12;
  v27 = v21;
  v22 = v17;
  v28 = v22;
  [v19 performAsyncOnClientReadWriteDatabaseWorkloop:v25];

  __brc_leave_section(&v31);
  v23 = *MEMORY[0x277D85DE8];
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_21(uint64_t a1, void *a2)
{
  v7 = a2;
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    [*(*(a1 + 32) + 544) recievedNewNonExistingAppLibraryCallback];
  }

  v3 = [*(a1 + 40) bytes];
  if (v3)
  {
    v4 = *v3;
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 48);
  (*(*(a1 + 64) + 16))();
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_2_cold_1(&v8);
  }

  if (!v3 && *(a1 + 96) == 1 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v6 = [*(*(a1 + 32) + 256) periodicSyncInvestigation];
    v7 = [*(a1 + 40) zoneName];
    [v6 addZoneWithNoRealChanges:v7];
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  __brc_leave_section(&v8);
}

- (void)performAfterFetchingAssetContents:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:self->_recordIDsForDesiredAssets];
  [v5 setRecordIDsToVersionETags:self->_recordIDsToVersionETagsForDesiredAssets];
  [v5 setDesiredKeys:self->_desiredKeysForDesiredAssets];
  v6 = [v5 operationID];
  v27 = 0uLL;
  v28 = 0;
  __brc_create_section(0, "[BRCContainerMetadataSyncDownOperation performAfterFetchingAssetContents:]", 256, 0, &v27);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    recordIDsForDesiredAssets = self->_recordIDsForDesiredAssets;
    *buf = 134218754;
    *&buf[4] = v27;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    *&buf[22] = 2112;
    v30 = recordIDsForDesiredAssets;
    v31 = 2112;
    v32 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx adding sub-operation to fetch asset contents: %@ for records: %@%@", buf, 0x2Au);
  }

  *&buf[16] = v28;
  *buf = v27;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingAssetContents___block_invoke;
  v24[3] = &unk_278502730;
  v25 = v27;
  v26 = v28;
  v24[4] = self;
  [v5 setPerRecordCompletionBlock:v24];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingAssetContents___block_invoke_31;
  v19 = &unk_278502758;
  v22 = *buf;
  v23 = *&buf[16];
  v20 = v6;
  v21 = v4;
  v9 = v4;
  v10 = v6;
  [v5 setFetchRecordsCompletionBlock:&v16];
  v11 = self->_recordIDsForDesiredAssets;
  self->_recordIDsForDesiredAssets = 0;

  desiredKeysForDesiredAssets = self->_desiredKeysForDesiredAssets;
  self->_desiredKeysForDesiredAssets = 0;

  recordIDsToVersionETagsForDesiredAssets = self->_recordIDsToVersionETagsForDesiredAssets;
  self->_recordIDsToVersionETagsForDesiredAssets = 0;

  [(_BRCOperation *)self addSubOperation:v5, v16, v17, v18, v19];
  v14 = *MEMORY[0x277D85DE8];
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingAssetContents___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v33 = *(a1 + 40);
  v34 = *(a1 + 56);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v36 = v33;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    v41 = 2112;
    v42 = v10;
    _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx per record callback: %@ - %@%@", buf, 0x2Au);
  }

  if ([v9 brc_isCloudKitUnknownItemError])
  {
    v12 = [*(*(a1 + 32) + 256) zoneAppRetriever];
    v13 = objc_alloc(MEMORY[0x277CFAE60]);
    v14 = [v8 zoneID];
    v15 = [v13 initWithRecordZoneID:v14];
    v16 = [v12 clientZoneByMangledID:v15];
    v17 = [v16 enhancedDrivePrivacyEnabled];

    v18 = [*(*(a1 + 32) + 256) analyticsReporter];
    v19 = [AppTelemetryTimeSeriesEvent newMissingAssetContentEventWithRecordID:v8 enhancedDrivePrivacyEnabled:v17];
    [v18 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v19];
  }

  if (!v9)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingAssetContents___block_invoke_cold_1();
    }

    v22 = [v7 recordID];
    v23 = [v22 recordName];

    v24 = [*(*(a1 + 32) + 256) zoneAppRetriever];
    v25 = [v24 appLibraryByID:v23];

    if (v25)
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v31 = [v7 recordID];
        v32 = [v7 recordChangeTag];
        *buf = 138412802;
        v36 = v31;
        v37 = 2112;
        v38 = v32;
        v39 = 2112;
        v40 = v26;
        _os_log_debug_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] updating container metadata %@ at etag:%@ (after asset download)%@", buf, 0x20u);
      }

      [*(a1 + 32) _updateContainerMetadataFromRecord:v7 appLibrary:v25 stripIcons:0];
    }

    else
    {
      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, 0x90u))
      {
        __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingAssetContents___block_invoke_cold_2();
      }
    }
  }

  __brc_leave_section(&v33);

  v30 = *MEMORY[0x277D85DE8];
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingAssetContents___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    *buf = 134218498;
    v17 = v14;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx finished %@%@", buf, 0x20u);
  }

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v5 count];
    *buf = 134218498;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[NOTICE] fetched %lu containers metadata from the cloud - %@%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v14);

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRetryForError:(id)a3
{
  v4 = a3;
  if ([v4 brc_isResetError])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BRCContainerMetadataSyncDownOperation;
    v5 = [(_BRCOperation *)&v7 shouldRetryForError:v4];
  }

  return v5;
}

- (void)_completedWithServerChangeToken:(id)a3 requestID:(unint64_t)a4
{
  v6 = a3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  sessionContext = self->super._sessionContext;
  v16 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__BRCContainerMetadataSyncDownOperation__completedWithServerChangeToken_requestID___block_invoke;
  v11[3] = &unk_2785027A0;
  v11[4] = self;
  v13 = v15;
  v14 = a4;
  v8 = v6;
  v12 = v8;
  [(BRCSessionContext *)sessionContext performAsyncOnClientReadWriteDatabaseWorkloop:v11];
  v9 = [(_BRCOperation *)self callbackQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__BRCContainerMetadataSyncDownOperation__completedWithServerChangeToken_requestID___block_invoke_37;
  v10[3] = &unk_278502000;
  v10[4] = self;
  v10[5] = v15;
  dispatch_async(v9, v10);

  _Block_object_dispose(v15, 8);
}

void __83__BRCContainerMetadataSyncDownOperation__completedWithServerChangeToken_requestID___block_invoke(void *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v20 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = *(a1[4] + 536);
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [*(a1[4] + 256) zoneAppRetriever];
        v11 = [v10 appLibraryByID:v8];

        v12 = [v11 defaultClientZone];
        v13 = [v12 recomputeAppSyncBlockState];

        if (v13)
        {
          atomic_store(1u, (*(a1[6] + 8) + 24));
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v5);
  }

  v14 = [*(a1[4] + 256) zoneAppRetriever];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__BRCContainerMetadataSyncDownOperation__completedWithServerChangeToken_requestID___block_invoke_2;
  v21[3] = &__block_descriptor_40_e23_B16__0__BRCAppLibrary_8l;
  v21[4] = a1[7];
  [v14 enumerateAppLibraries:v21];

  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = a1[5];
    v19 = a1[7];
    *buf = 138412802;
    v27 = v18;
    v28 = 2048;
    v29 = v19;
    v30 = 2112;
    v31 = v15;
    _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] remembering container-metadata server change token %@ requestID %llu%@", buf, 0x20u);
  }

  [*(a1[4] + 504) updateWithServerChangeToken:a1[5] requestID:a1[7]];
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __83__BRCContainerMetadataSyncDownOperation__completedWithServerChangeToken_requestID___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 containerMetadataSyncRequestID];
  if (v4)
  {
    v5 = v4;
    if (v4 == *(a1 + 32))
    {
      v6 = brc_bread_crumbs();
      v7 = brc_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __83__BRCContainerMetadataSyncDownOperation__completedWithServerChangeToken_requestID___block_invoke_2_cold_1();
      }

      [v3 setContainerMetadataNeedsSyncUp:0];
    }

    else
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v13 = 138413058;
        v14 = v3;
        v15 = 2048;
        v16 = v5;
        v17 = 2048;
        v18 = v10;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Sync up of app library container metdata failed for %@ because requestIDs differ %lld vs %lld%@", &v13, 0x2Au);
      }
    }

    [v3 setContainerMetadataSyncRequestID:0];
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __83__BRCContainerMetadataSyncDownOperation__completedWithServerChangeToken_requestID___block_invoke_37(uint64_t a1)
{
  v2 = atomic_load((*(*(a1 + 40) + 8) + 24));
  if (v2)
  {
    [*(*(a1 + 32) + 544) appSyncStateChangedCallback];
  }

  v3 = *(a1 + 32);

  return [v3 completedWithResult:0 error:0];
}

- (void)main
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] ┏%llx Sync: syncing down container metadata%@");
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __45__BRCContainerMetadataSyncDownOperation_main__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (a2)
  {

    return [v4 completedWithResult:0 error:a2];
  }

  else
  {
    v6[5] = v2;
    v6[6] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__BRCContainerMetadataSyncDownOperation_main__block_invoke_2;
    v6[3] = &unk_2785027F0;
    v6[4] = v4;
    return [v4 performAfterFetchingRecordChanges:v6];
  }
}

void __45__BRCContainerMetadataSyncDownOperation_main__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  v9 = *(a1 + 32);
  if (a4)
  {
    [v9 completedWithResult:0 error:a4];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__BRCContainerMetadataSyncDownOperation_main__block_invoke_3;
    v10[3] = &unk_2785027C8;
    v10[4] = v9;
    v11 = v7;
    v12 = a3;
    [v9 performAfterFetchingAssetContents:v10];
  }
}

void __45__BRCContainerMetadataSyncDownOperation_main__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  v4 = [v3 skipContainerRecordsWithMissingAssets];

  if (v4)
  {
    v5 = [v7 brc_checkErrorsFromCloudKit:&__block_literal_global_26];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
LABEL_3:
      [*(a1 + 32) _completedWithServerChangeToken:*(a1 + 40) requestID:*(a1 + 48)];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = v7;
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  [*(a1 + 32) completedWithResult:0 error:v6];
LABEL_6:
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] containerID %@ had no properties plist%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingRecordChanges___block_invoke_2_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] ┳%llx finished operation%@");
  v4 = *MEMORY[0x277D85DE8];
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingAssetContents___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] got asset contents for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __75__BRCContainerMetadataSyncDownOperation_performAfterFetchingAssetContents___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] unknown container %@%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __83__BRCContainerMetadataSyncDownOperation__completedWithServerChangeToken_requestID___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Sync up of app library container metdata succeeded for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end