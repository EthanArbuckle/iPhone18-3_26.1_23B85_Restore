@interface BRCSyncDownOperation
- (BOOL)handleZoneNotFoundIfSyncingDownForTheFirstTime:(id)time;
- (id)createActivity;
- (id)initDeltaSyncWithServerZone:(id)zone sessionContext:(id)context syncDownHandler:(id)handler;
- (void)_fetchInitialZoneIfNecessaryWithCreatedZone:(id)zone;
- (void)_performAfterFetchingRecordChanges:(id)changes;
- (void)_saveInitialServerZoneData:(id)data clientChangeTokenData:(id)tokenData;
- (void)_setupOperationDiscrationaryStatus;
- (void)_startCreateZoneAndSubscriptionAndSyncDown;
- (void)_startSyncDown;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRCSyncDownOperation

- (void)_setupOperationDiscrationaryStatus
{
  clientZone = [(BRCServerZone *)self->_serverZone clientZone];
  if ([clientZone hasHighPriorityWatchers])
  {
    [(_BRCOperation *)self setNonDiscretionary:1];
  }

  lastAttemptedSyncDownDate = [clientZone lastAttemptedSyncDownDate];
  if (lastAttemptedSyncDownDate || ([clientZone hasCompletedInitialSyncDownOnce] & 1) != 0)
  {
  }

  else if ([(BRCServerZone *)self->_serverZone isCloudDocsZone])
  {
    v4 = [BRCUserDefaults defaultsForMangledID:0];
    [v4 forceForegroundGracePeriod];
    v6 = v5;

    metadataSyncContext = [(BRCServerZone *)self->_serverZone metadataSyncContext];
    [metadataSyncContext forceContainerForegroundForDuration:v6];

    syncContextProvider = [(BRCSessionContext *)self->super._sessionContext syncContextProvider];
    sharedMetadataSyncContext = [syncContextProvider sharedMetadataSyncContext];
    [sharedMetadataSyncContext forceContainerForegroundForDuration:v6];

    [(_BRCOperation *)self setNonDiscretionary:1];
  }
}

- (id)initDeltaSyncWithServerZone:(id)zone sessionContext:(id)context syncDownHandler:(id)handler
{
  zoneCopy = zone;
  handlerCopy = handler;
  contextCopy = context;
  zoneName = [zoneCopy zoneName];
  v13 = [@"sync-down/" stringByAppendingString:zoneName];

  ownerName = [zoneCopy ownerName];
  v15 = [ownerName isEqualToString:*MEMORY[0x277CBBF28]];

  if ((v15 & 1) == 0)
  {
    ownerName2 = [zoneCopy ownerName];
    v17 = [v13 stringByAppendingFormat:@":%@", ownerName2];

    v13 = v17;
  }

  metadataSyncContext = [zoneCopy metadataSyncContext];
  v23.receiver = self;
  v23.super_class = BRCSyncDownOperation;
  v19 = [(_BRCOperation *)&v23 initWithName:v13 syncContext:metadataSyncContext sessionContext:contextCopy];

  if (v19)
  {
    [(BRCSyncDownOperation *)v19 setQueuePriority:4];
    objc_storeStrong(&v19->_serverZone, zone);
    [(BRCSyncDownOperation *)v19 _setupOperationDiscrationaryStatus];
    date = [MEMORY[0x277CBEAA8] date];
    clientZone = [(BRCServerZone *)v19->_serverZone clientZone];
    [clientZone setLastAttemptedSyncDownDate:date];

    objc_storeStrong(&v19->_syncDownHandler, handler);
  }

  return v19;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync-down", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_performAfterFetchingRecordChanges:(id)changes
{
  v130 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  group = [(_BRCOperation *)self group];
  name = [group name];
  br_syncDownPeriodic = [MEMORY[0x277CBC4F8] br_syncDownPeriodic];
  name2 = [br_syncDownPeriodic name];
  v56 = [name isEqualToString:name2];

  v120[0] = 0;
  v120[1] = v120;
  v120[2] = 0x2020000000;
  v121 = 0;
  v8 = self->_serverZone;
  v114 = 0;
  v115 = &v114;
  v116 = 0x3032000000;
  v117 = __Block_byref_object_copy__54;
  v118 = __Block_byref_object_dispose__54;
  v119 = 0;
  v9 = [[BRCPendingChangesStream alloc] initWithServerZone:v8];
  lastError = [(BRCPendingChangesStream *)v9 lastError];

  if (lastError)
  {
    lastError2 = [(BRCPendingChangesStream *)v9 lastError];
    changesCopy[2](changesCopy, 0, lastError2);
  }

  else
  {
    v108 = 0;
    v109 = &v108;
    v110 = 0x3032000000;
    v111 = __Block_byref_object_copy__54;
    v112 = __Block_byref_object_dispose__54;
    v113 = 0;
    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke;
    v107[3] = &unk_278507DA0;
    v107[4] = &v114;
    v107[5] = &v108;
    [(BRCPendingChangesStream *)v9 fetchTokenState:v107];
    if (!v115[5])
    {
      changeState = [(BRCServerZone *)v8 changeState];
      changeToken = [changeState changeToken];
      v14 = v115[5];
      v115[5] = changeToken;
    }

    mangledID = [(BRCServerZone *)v8 mangledID];
    v54 = [BRCUserDefaults defaultsForMangledID:mangledID];

    location = 0uLL;
    v104 = 0;
    __brc_create_section(1, "[BRCSyncDownOperation _performAfterFetchingRecordChanges:]", 105, 0, &location);
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v9;
      v19 = location;
      if (v109[5])
      {
        v20 = @"starting";
      }

      else
      {
        v20 = @"continuing";
      }

      mangledID2 = [(BRCServerZone *)v8 mangledID];
      aliasTargetContainerString = [mangledID2 aliasTargetContainerString];
      v23 = [v115[5] descriptionWithContext:0];
      v24 = v23;
      *buf = 134219266;
      v25 = &stru_2837504F0;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      if (v56)
      {
        v25 = @" periodic sync.";
      }

      *&buf[14] = v20;
      *&buf[22] = 2112;
      v126 = aliasTargetContainerString;
      *v127 = 2112;
      *&v127[2] = v23;
      *&v127[10] = 2112;
      *&v127[12] = v25;
      v128 = 2112;
      v129 = v16;
      _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_INFO, "[INFO] ┣%llx %@ fetch record changes operation for %@ from token %@. %@%@", buf, 0x3Eu);

      v9 = v18;
    }

    v105 = location;
    v106 = v104;
    v57 = objc_opt_new();
    [v57 setPreviousServerChangeToken:v115[5]];
    [v57 setResultsLimit:{objc_msgSend(v54, "maxRecordCountInFetchRecordsOperation")}];
    v26 = [MEMORY[0x277CBC5A0] desiredKeysWithMask:185];
    [v57 setDesiredKeys:v26];

    v27 = objc_alloc(MEMORY[0x277CBC3B8]);
    zoneID = [(BRCServerZone *)v8 zoneID];
    v124 = zoneID;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v124 count:1];
    zoneID2 = [(BRCServerZone *)v8 zoneID];
    v122 = zoneID2;
    v123 = v57;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
    v32 = [v27 initWithRecordZoneIDs:v29 configurationsByRecordZoneID:v31];

    [v32 setShouldFetchAssetContents:0];
    if ([(BRCServerZone *)v8 isSharedZone])
    {
      shouldFetchAllChanges = 0;
    }

    else
    {
      shouldFetchAllChanges = [v54 shouldFetchAllChanges];
    }

    [v32 setFetchAllChanges:{shouldFetchAllChanges, v54}];
    [v32 setShouldReportAllPerItemFailures:{objc_msgSend(v55, "shouldReportAllPerItemFailures")}];
    mangledID3 = [(BRCServerZone *)v8 mangledID];
    v35 = [BRCUserDefaults defaultsForMangledID:mangledID3];
    supportsEnhancedDrivePrivacy = [v35 supportsEnhancedDrivePrivacy];

    if (supportsEnhancedDrivePrivacy)
    {
      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 3221225472;
      v102[2] = __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_25;
      v102[3] = &unk_278507DC8;
      v102[4] = self;
      [v32 setZoneAttributesChangedBlock:v102];
    }

    clientZone = [(BRCServerZone *)self->_serverZone clientZone];
    v38 = [clientZone fetchRecordSubResourcesWithParentOperation:self pendingChangesStream:v9 contentRecordsFetchedInline:1 sessionContext:self->super._sessionContext];

    v39 = dispatch_group_create();
    callbackQueue = [v38 callbackQueue];
    [v32 setCallbackQueue:callbackQueue];

    objc_initWeak(&location, v32);
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_29;
    v93[3] = &unk_278507DF0;
    objc_copyWeak(&v98, &location);
    v99 = v105;
    v100 = v106;
    v41 = v8;
    v94 = v41;
    v42 = v38;
    selfCopy = self;
    v97 = v120;
    v101 = v56;
    v95 = v42;
    [v32 setPerRecordChangeCompletionBlock:v93];
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_31;
    v87[3] = &unk_278500518;
    objc_copyWeak(&v90, &location);
    v91 = v105;
    v92 = v106;
    v43 = v42;
    v88 = v43;
    v89 = v120;
    [v32 setRecordWithIDWasDeletedBlock:v87];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v126 = __Block_byref_object_copy__54;
    *v127 = __Block_byref_object_dispose__54;
    *&v127[8] = 0;
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_33;
    v80[3] = &unk_278507E18;
    objc_copyWeak(&v84, &location);
    v85 = v105;
    v86 = v106;
    v44 = v43;
    selfCopy2 = self;
    v83 = buf;
    v81 = v44;
    v45 = MEMORY[0x22AA4A310](v80);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_40;
    v73[3] = &unk_278507E68;
    objc_copyWeak(&v77, &location);
    v78 = v105;
    v79 = v106;
    v46 = v45;
    v76 = v46;
    v47 = v39;
    v74 = v47;
    v48 = v44;
    v75 = v48;
    [v32 setRecordZoneFetchCompletionBlock:v73];
    if ([v32 fetchAllChanges])
    {
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_2_44;
      v71[3] = &unk_278507E90;
      v72 = v46;
      [v32 setRecordZoneChangeTokensUpdatedBlock:v71];
    }

    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_3;
    v59[3] = &unk_278507EE0;
    objc_copyWeak(&v67, &location);
    v49 = v47;
    v60 = v49;
    v50 = v41;
    v68 = v105;
    v69 = v106;
    v61 = v50;
    v65 = buf;
    v51 = v48;
    v62 = v51;
    selfCopy3 = self;
    v52 = changesCopy;
    v70 = v56;
    v64 = v52;
    v66 = v120;
    [v32 setFetchRecordZoneChangesCompletionBlock:v59];
    [(_BRCOperation *)self addSubOperation:v32];

    objc_destroyWeak(&v67);
    objc_destroyWeak(&v77);

    objc_destroyWeak(&v84);
    _Block_object_dispose(buf, 8);

    objc_destroyWeak(&v90);
    objc_destroyWeak(&v98);
    objc_destroyWeak(&location);

    _Block_object_dispose(&v108, 8);
  }

  _Block_object_dispose(&v114, 8);
  _Block_object_dispose(v120, 8);

  v53 = *MEMORY[0x277D85DE8];
}

void __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v12 = v6;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

void __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 requiredFeatures];
  v5 = [v4 recordFeatures];

  if ([v5 hasValue:*MEMORY[0x277CFAC38] forName:*MEMORY[0x277CFAC30]])
  {
    v6 = *(*(a1 + 32) + 256);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_2;
    v9[3] = &unk_2784FFE90;
    v7 = v3;
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    [v6 performAsyncOnClientReadWriteDatabaseWorkloop:v9];
  }
}

void __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CFAE60]);
  v3 = [*(a1 + 32) zoneID];
  v4 = [v2 initWithRecordZoneID:v3];

  v5 = [*(*(a1 + 40) + 256) zoneAppRetriever];
  v6 = [v5 clientZoneByMangledID:v4];

  if (([v6 enhancedDrivePrivacyEnabled] & 1) == 0)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_notifications_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_2_cold_1();
    }

    [v6 setStateBits:0x400000];
  }
}

void __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_29(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v27 = *(a1 + 72);
  v28 = *(a1 + 88);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [WeakRetained operationID];
    *buf = 134218498;
    v31 = v27;
    v32 = 2112;
    v33 = v13;
    v34 = 2112;
    v35 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_INFO, "[INFO] ┳%llx got a record in operation %@%@", buf, 0x20u);
  }

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v7 debugDescription];
    __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_29_cold_1(v16, v14, v29, v15);
  }

  if (!(v7 | v8))
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_29_cold_2();
    }

    v8 = 0;
    goto LABEL_25;
  }

  if (v8)
  {
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = [v7 recordID];
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  v19 = [v7 etag];
  v20 = v19 == 0;

  if (v20)
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_29_cold_3();
    }
  }

LABEL_17:
  if ([v9 brc_isCloudKitPCSDecryptionFailure] && objc_msgSend(*(a1 + 32), "isPrivateZone"))
  {
    v23 = [*(a1 + 32) clientZone];
    v24 = [v23 asPrivateClientZone];
    v25 = [v8 recordName];
    [v24 reportProblemWithType:12 recordName:v25];
  }

  if (!v7)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      v34 = 2112;
      v35 = v17;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] Record fetch failed for %@ with error %@%@", buf, 0x20u);
    }

    goto LABEL_25;
  }

  [*(a1 + 40) addRecord:v7];
  *(*(*(a1 + 56) + 8) + 24) = 1;
  if (*(a1 + 96) == 1)
  {
    v17 = [*(*(a1 + 48) + 256) periodicSyncInvestigation];
    v18 = [v7 brc_lastEditorDeviceName];
    [v17 addEditingDevice:v18];
LABEL_25:
  }

  __brc_leave_section(&v27);

  v26 = *MEMORY[0x277D85DE8];
}

void __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v16 = *(a1 + 56);
  v17 = *(a1 + 72);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = [WeakRetained operationID];
    *buf = 134218498;
    v19 = v16;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx got a deletion in operation %@%@", buf, 0x20u);
  }

  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] record was deleted: %@%@", buf, 0x16u);
  }

  v12 = [v6 isEqualToString:*MEMORY[0x277CBC050]];
  v13 = *(a1 + 32);
  if (v12)
  {
    [v13 shareIDWasDeleted:v5];
  }

  else
  {
    [v13 recordIDWasDeleted:v5];
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  __brc_leave_section(&v16);

  v14 = *MEMORY[0x277D85DE8];
}

void __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_33(uint64_t a1, void *a2, void *a3, void *a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = [WeakRetained recordZoneChangesStatusByZoneID];
  v12 = [v11 objectForKeyedSubscript:v7];
  v13 = [v12 unsignedLongValue];

  v47 = *(a1 + 64);
  v48 = *(a1 + 80);
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v34 = [v8 descriptionWithContext:0];
    v35 = [WeakRetained operationID];
    *buf = 134219266;
    v50 = v47;
    v51 = 2112;
    v52 = v34;
    v53 = 2112;
    v54 = v9;
    v55 = 2112;
    v56 = v35;
    v57 = 2048;
    v58 = v13;
    v59 = 2112;
    v60 = v14;
    _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx received updated server change token %@ client change token %@ in operation %@ status %ld%@", buf, 0x3Eu);
  }

  v16 = [*(a1 + 32) error];
  if (v16)
  {

LABEL_6:
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v17 = [*(a1 + 32) error];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }

    [WeakRetained cancel];
    goto LABEL_9;
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    goto LABEL_6;
  }

  if (v13 == 1)
  {
    v21 = [*(*(a1 + 40) + 504) changeState];
    v22 = [v21 changeToken];
    v23 = [v22 isEqual:v8];

    if (v23)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_33_cold_1();
      }

      v46 = [*(*(a1 + 40) + 256) analyticsReporter];
      v26 = [WeakRetained operationID];
      v27 = [*(*(a1 + 40) + 504) mangledID];
      v28 = MEMORY[0x277CCABB0];
      v29 = [*(*(a1 + 40) + 504) clientZone];
      v30 = [v28 numberWithBool:{objc_msgSend(v29, "enhancedDrivePrivacyEnabled")}];
      [v46 aggregateReportForAppTelemetryIdentifier:41 itemID:v26 zoneMangledID:v27 enhancedDrivePrivacyEnabled:v30 error:0];
    }
  }

  v31 = v9;
  v32 = [v9 bytes];
  if (v32)
  {
    v33 = *v32;
  }

  else
  {
    v33 = 0;
  }

  if (([*(a1 + 32) saveRecordsWithServerChangeToken:v8 clientChangeToken:v33 syncStatus:v13] & 1) == 0)
  {
    v36 = brc_bread_crumbs();
    v37 = brc_default_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      v44 = [WeakRetained operationID];
      v45 = [v8 descriptionWithContext:0];
      *buf = 138412802;
      v50 = v44;
      v51 = 2112;
      v52 = v45;
      v53 = 2112;
      v54 = v36;
      _os_log_fault_impl(&dword_223E7A000, v37, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: broken structure in op %@ change token %@%@", buf, 0x20u);
    }

    v38 = MEMORY[0x277CCA9B8];
    v39 = [WeakRetained operationID];
    v40 = [v8 descriptionWithContext:0];
    v41 = [v38 br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: broken structure in op %@ change token %@", v39, v40}];

    v42 = *(*(a1 + 48) + 8);
    v43 = *(v42 + 40);
    *(v42 + 40) = v41;

    [*(a1 + 40) cancel];
  }

LABEL_9:
  __brc_leave_section(&v47);

  v20 = *MEMORY[0x277D85DE8];
}

void __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_40(uint64_t a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v27 = *(a1 + 64);
  v28 = *(a1 + 80);
  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v20 = [WeakRetained operationID];
    *buf = 134218498;
    v30 = v27;
    v31 = 2112;
    v32 = v20;
    v33 = 2112;
    v34 = v16;
    _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx fetch changes completion for zone in operation %@%@", buf, 0x20u);
  }

  if (!v14)
  {
    (*(*(a1 + 48) + 16))();
    dispatch_group_enter(*(a1 + 32));
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_41;
    v21[3] = &unk_278507E40;
    v18 = *(a1 + 40);
    v26 = *(a1 + 48);
    v22 = v11;
    v23 = v12;
    v24 = v13;
    v25 = *(a1 + 32);
    [v18 notifyWhenCaughtUp:a5 ^ 1u whenRecordsAreFetchedAndFinish:v21];
  }

  __brc_leave_section(&v27);

  v19 = *MEMORY[0x277D85DE8];
}

void __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_41(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  (*(a1[8] + 16))();
  v5 = a1[7];

  dispatch_group_leave(v5);
}

void __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v5 = *(a1 + 32);
  v6 = [WeakRetained callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_4;
  block[3] = &unk_278507EB8;
  v14 = *(a1 + 40);
  v15 = v3;
  v20 = *(a1 + 96);
  v21 = *(a1 + 112);
  v16 = WeakRetained;
  v7 = *(a1 + 72);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = *(a1 + 56);
  v12 = v8;
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = v7;
  v17 = v12;
  v18 = v9;
  v22 = *(a1 + 120);
  v19 = *(a1 + 80);
  v10 = WeakRetained;
  v11 = v3;
  dispatch_group_notify(v5, v6, block);
}

void __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_4(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) zoneID];
  v3 = [*(a1 + 40) brc_cloudKitErrorForZone:v2];
  v21 = *(a1 + 96);
  v22 = *(a1 + 112);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v20 = [*(a1 + 48) operationID];
    *buf = 134218498;
    v24 = v21;
    v25 = 2112;
    v26 = v20;
    v27 = 2112;
    v28 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx fetch changes completed for operation %@%@", buf, 0x20u);
  }

  if (v3)
  {
    if (([v3 brc_isCloudKitCancellationError] & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = *(*(*(a1 + 80) + 8) + 40);
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_8:
    v7 = v6;

    v3 = v7;
    goto LABEL_9;
  }

  v6 = *(*(*(a1 + 80) + 8) + 40);
  if (v6)
  {
    goto LABEL_8;
  }

  v3 = [*(a1 + 56) error];
  if (!v3)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_4_cold_2();
    }

    if (*(a1 + 120) != 1 || (*(*(*(a1 + 88) + 8) + 24) & 1) != 0)
    {
      v3 = 0;
      goto LABEL_22;
    }

    v8 = [*(*(a1 + 64) + 256) periodicSyncInvestigation];
    v9 = [*(*(a1 + 64) + 504) zoneName];
    [v8 addZoneWithNoRealChanges:v9];
    v3 = 0;
LABEL_21:

LABEL_22:
    v15 = [*(a1 + 48) recordZoneChangesStatusByZoneID];
    v16 = [v15 objectForKeyedSubscript:v2];
    [v16 unsignedLongValue];

    (*(*(a1 + 72) + 16))();
    goto LABEL_23;
  }

LABEL_9:
  if ([*(a1 + 56) isExecuting])
  {
    [*(a1 + 56) cancel];
  }

  if (![*(a1 + 64) handleZoneNotFoundIfSyncingDownForTheFirstTime:v3])
  {
    if ([v3 brc_isCloudKitCancellationError])
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __59__BRCSyncDownOperation__performAfterFetchingRecordChanges___block_invoke_4_cold_1();
      }
    }

    else
    {
      v8 = [*(a1 + 32) zoneName];
      v10 = [*(a1 + 32) ownerName];
      v11 = [v10 isEqualToString:*MEMORY[0x277CBBF28]];

      if ((v11 & 1) == 0)
      {
        v12 = [*(a1 + 32) ownerName];
        v13 = [v8 stringByAppendingFormat:@":%@", v12];

        v8 = v13;
      }

      v9 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, 0x90u))
      {
        *buf = 138412802;
        v24 = v8;
        v25 = 2112;
        v26 = v3;
        v27 = 2112;
        v28 = v9;
        _os_log_error_impl(&dword_223E7A000, v14, 0x90u, "[ERROR] sync-down failed for %@: %@%@", buf, 0x20u);
      }
    }

    goto LABEL_21;
  }

  (*(*(a1 + 72) + 16))();
LABEL_23:
  __brc_leave_section(&v21);

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleZoneNotFoundIfSyncingDownForTheFirstTime:(id)time
{
  timeCopy = time;
  v5 = self->_serverZone;
  if (-[BRCServerZone hasFetchedServerZoneState](v5, "hasFetchedServerZoneState") || ![timeCopy brc_isCloudKitErrorImplyingZoneNeedsCreation])
  {
    v8 = 0;
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncDownOperation handleZoneNotFoundIfSyncingDownForTheFirstTime:];
    }

    [(BRCSyncDownHandler *)self->_syncDownHandler zoneIsSyncingForTheFirstTime];
    v8 = 1;
  }

  return v8;
}

- (void)_startSyncDown
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __38__BRCSyncDownOperation__startSyncDown__block_invoke;
  v2[3] = &unk_278507F08;
  v2[4] = self;
  [(BRCSyncDownOperation *)self _performAfterFetchingRecordChanges:v2];
}

void __38__BRCSyncDownOperation__startSyncDown__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithInteger:a2];
  [v4 completedWithResult:v7 error:v6];
}

- (void)_saveInitialServerZoneData:(id)data clientChangeTokenData:(id)tokenData
{
  [(BRCSyncDownHandler *)self->_syncDownHandler saveInitialServerZoneData:data clientChangeTokenData:tokenData];

  [(_BRCOperation *)self completedWithResult:&unk_2837B0B08 error:0];
}

- (void)_fetchInitialZoneIfNecessaryWithCreatedZone:(id)zone
{
  v13[1] = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  v5 = zoneCopy;
  if (zoneCopy)
  {
    currentServerChangeToken = [zoneCopy currentServerChangeToken];
    clientChangeToken = [v5 clientChangeToken];
    [(BRCSyncDownOperation *)self _saveInitialServerZoneData:currentServerChangeToken clientChangeTokenData:clientChangeToken];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CBC3D0]);
    zoneID = [(BRCServerZone *)self->_serverZone zoneID];
    v13[0] = zoneID;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    currentServerChangeToken = [v8 initWithRecordZoneIDs:v10];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__BRCSyncDownOperation__fetchInitialZoneIfNecessaryWithCreatedZone___block_invoke;
    v12[3] = &unk_278500DC8;
    v12[4] = self;
    [currentServerChangeToken setFetchRecordZonesCompletionBlock:v12];
    [(_BRCOperation *)self addSubOperation:currentServerChangeToken];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __68__BRCSyncDownOperation__fetchInitialZoneIfNecessaryWithCreatedZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 504);
  v7 = a2;
  v8 = [v6 zoneID];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!(v5 | v9))
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __68__BRCSyncDownOperation__fetchInitialZoneIfNecessaryWithCreatedZone___block_invoke_cold_1();
    }

    v5 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: no fetched zone and no error"];
  }

  v12 = *(a1 + 32);
  if (v5)
  {
    [v12 completedWithResult:0 error:v5];
  }

  else
  {
    v13 = [v9 currentServerChangeToken];
    v14 = [v9 clientChangeToken];
    [v12 _saveInitialServerZoneData:v13 clientChangeTokenData:v14];
  }
}

- (void)_startCreateZoneAndSubscriptionAndSyncDown
{
  v3 = self->_serverZone;
  changeState = [(BRCServerZone *)self->_serverZone changeState];
  hasNeverSyncedDown = [changeState hasNeverSyncedDown];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  if (!hasNeverSyncedDown || [(BRCServerZone *)self->_serverZone isSharedZone]|| ([(BRCServerZone *)self->_serverZone state]& 4) != 0)
  {
    forceDeltaInitialSync = 1;
  }

  else
  {
    mangledID = [(BRCServerZone *)self->_serverZone mangledID];
    v7 = [BRCUserDefaults defaultsForMangledID:mangledID];
    forceDeltaInitialSync = [v7 forceDeltaInitialSync];
  }

  v26 = forceDeltaInitialSync;
  if ((v24[3] & 1) == 0)
  {
    clientZone = [(BRCServerZone *)self->_serverZone clientZone];
    v10 = [clientZone db];
    serialQueue = [v10 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__BRCSyncDownOperation__startCreateZoneAndSubscriptionAndSyncDown__block_invoke;
    block[3] = &unk_278502000;
    v22 = &v23;
    v21 = v3;
    dispatch_sync(serialQueue, block);
  }

  if (hasNeverSyncedDown && ![(BRCServerZone *)self->_serverZone isSharedZone])
  {
    objc_initWeak(&location, self);
    v12 = [[BRCCreateZoneAndSubscribeOperation alloc] initWithServerZone:v3 sessionContext:self->super._sessionContext];
    clientZone2 = [(BRCServerZone *)v3 clientZone];
    isCloudDocsZone = [clientZone2 isCloudDocsZone];

    if (isCloudDocsZone)
    {
      [(BRCCreateZoneAndSubscribeOperation *)v12 setSubscriptionOnly:0];
      [(BRCCreateZoneAndSubscribeOperation *)v12 setOptimisticSubscribe:1];
    }

    else
    {
      [(BRCCreateZoneAndSubscribeOperation *)v12 setSubscriptionOnly:1];
    }

    objc_initWeak(&from, v12);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__BRCSyncDownOperation__startCreateZoneAndSubscriptionAndSyncDown__block_invoke_2;
    v15[3] = &unk_278507F30;
    objc_copyWeak(&v16, &location);
    v15[4] = &v23;
    objc_copyWeak(&v17, &from);
    [(BRCCreateZoneAndSubscribeOperation *)v12 setCreateZoneAndSubscribeCompletionBlock:v15];
    [(_BRCOperation *)self addSubOperation:v12];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&from);

    objc_destroyWeak(&location);
  }

  else if (*(v24 + 24) == 1)
  {
    [(BRCSyncDownOperation *)self _startSyncDown];
  }

  else
  {
    [(BRCSyncDownOperation *)self _fetchInitialZoneIfNecessaryWithCreatedZone:0];
  }

  _Block_object_dispose(&v23, 8);
}

void __66__BRCSyncDownOperation__startCreateZoneAndSubscriptionAndSyncDown__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientZone];
  *(*(*(a1 + 40) + 8) + 24) = [v2 hasItemsWithInFlightDiffs];
}

void __66__BRCSyncDownOperation__startCreateZoneAndSubscriptionAndSyncDown__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    if ([v3 brc_isCloudKitCancellationError])
    {
      v6 = brc_bread_crumbs();
      v7 = brc_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __66__BRCSyncDownOperation__startCreateZoneAndSubscriptionAndSyncDown__block_invoke_2_cold_2();
      }
    }

    else
    {
      if ([v5 handleZoneNotFoundIfSyncingDownForTheFirstTime:v3])
      {
        v8 = &unk_2837B0B20;
        v9 = v5;
        v10 = 0;
LABEL_13:
        [v9 completedWithResult:v8 error:v10];
        goto LABEL_14;
      }

      v6 = brc_bread_crumbs();
      v7 = brc_default_log();
      if (os_log_type_enabled(v7, 0x90u))
      {
        __66__BRCSyncDownOperation__startCreateZoneAndSubscriptionAndSyncDown__block_invoke_2_cold_1();
      }
    }

    v9 = v5;
    v8 = 0;
    v10 = v3;
    goto LABEL_13;
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    [WeakRetained _startSyncDown];
  }

  else
  {
    v11 = objc_loadWeakRetained((a1 + 48));
    v12 = [v11 createdZone];
    [v5 _fetchInitialZoneIfNecessaryWithCreatedZone:v12];
  }

LABEL_14:
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  if (errorCopy)
  {
    integerValue = 0;
  }

  else
  {
    integerValue = [resultCopy integerValue];
  }

  clientZone = [(BRCServerZone *)self->_serverZone clientZone];
  [clientZone syncDownOperation:self didFinishWithError:errorCopy status:integerValue];

  [(BRCSyncDownOperation *)self hash];
  kdebug_trace();
  v10.receiver = self;
  v10.super_class = BRCSyncDownOperation;
  [(_BRCOperation *)&v10 finishWithResult:0 error:errorCopy];
}

- (void)main
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = self->_serverZone;
  memset(v10, 0, sizeof(v10));
  __brc_create_section(0, "[BRCSyncDownOperation main]", 466, 0, v10);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = v10[0];
    mangledID = [(BRCServerZone *)v3 mangledID];
    aliasTargetContainerString = [mangledID aliasTargetContainerString];
    *buf = 134218498;
    v12 = v7;
    v13 = 2112;
    v14 = aliasTargetContainerString;
    v15 = 2112;
    v16 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Sync: fetching record changes for %@%@", buf, 0x20u);
  }

  [(BRCSyncDownOperation *)self hash];
  kdebug_trace();
  [(BRCSyncDownOperation *)self _startCreateZoneAndSubscriptionAndSyncDown];
  __brc_leave_section(v10);

  v6 = *MEMORY[0x277D85DE8];
}

@end