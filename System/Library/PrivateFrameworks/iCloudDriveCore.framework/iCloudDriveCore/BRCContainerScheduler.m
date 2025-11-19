@interface BRCContainerScheduler
- (BOOL)_hasMetadataToSyncUpToContainerMetadata;
- (BRCContainerScheduler)initWithAccountSession:(id)a3 pushWorkloop:(id)a4;
- (id)_newSyncDeadlineSourceWithName:(id)a3;
- (id)internalZoneSyncDownAnalyticsErrors;
- (id)internalZoneSyncUpAnalyticsErrors;
- (unint64_t)recoverAndReportMissingJobs;
- (void)_connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)_markContainerMetadataNeedsSyncUp;
- (void)_printSyncErrorIfNecessaryWithThrottle:(id)a3 context:(id)a4 error:(id)a5 now:(int64_t)a6;
- (void)_scheduleAfterFlush:(id)a3;
- (void)_scheduleCrossZoneMovePCSPrep;
- (void)_scheduleUpdatePushTopicsRegistration;
- (void)_syncScheduleForContainersMetadata;
- (void)_syncScheduleForSharedDatabase;
- (void)_syncScheduleForSideCar;
- (void)_syncScheduleForZoneHealth;
- (void)_unscheduleClientZone:(id)a3;
- (void)_updatePushTopicsRegistration;
- (void)close;
- (void)closeContainers;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)didChangeSyncStatusForContainerMetadataForContainer:(id)a3;
- (void)didChangeSyncStatusForZoneHealthForContainer:(id)a3;
- (void)didInitialSyncDownForClientZone:(id)a3;
- (void)dumpToContext:(id)a3 includeAllItems:(BOOL)a4 db:(id)a5;
- (void)enablePushNotifications;
- (void)finishedHealthSyncDownCallback:(unint64_t)a3 error:(id)a4;
- (void)notifyAfterNextZoneHealthSyncDown:(id)a3;
- (void)receivedUpdatedSideCarServerChangeToken:(id)a3 requestID:(unint64_t)a4;
- (void)receivedUpdatedZoneHealthCallback:(id)a3 requestID:(unint64_t)a4;
- (void)redoZonePCSPreperation;
- (void)resume;
- (void)schedulePeriodicSyncInGroup:(id)a3 completion:(id)a4;
- (void)scheduleSyncDownForContainerMetadataWithGroup:(id)a3;
- (void)scheduleSyncDownForSharedDatabaseImmediately:(BOOL)a3;
- (void)scheduleSyncDownForSideCarWithGroup:(id)a3;
- (void)scheduleSyncDownForZoneHealthWithGroup:(id)a3;
- (void)scheduleSyncUpForSideCar;
- (void)setup;
- (void)syncContextDidBecomeBackground:(id)a3;
- (void)syncContextDidBecomeForeground:(id)a3;
@end

@implementation BRCContainerScheduler

- (BRCContainerScheduler)initWithAccountSession:(id)a3 pushWorkloop:(id)a4
{
  v7 = a3;
  v8 = a4;
  v108.receiver = self;
  v108.super_class = BRCContainerScheduler;
  v9 = [(BRCContainerScheduler *)&v108 init];
  if (v9)
  {
    v10 = [BRCUserDefaults defaultsForMangledID:0];
    objc_initWeak(&location, v9);
    objc_storeStrong(&v9->_session, a3);
    v11 = [(BRCAccountSession *)v9->_session clientState];
    v12 = [v11 objectForKeyedSubscript:@"syncUpBudget"];
    syncUpBudget = v9->_syncUpBudget;
    v9->_syncUpBudget = v12;

    v14 = v12;
    v15 = v9->_syncUpBudget;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v14;
    }

    else
    {
      v16 = objc_alloc_init(BRCSyncBudgetThrottle);

      objc_storeStrong(&v9->_syncUpBudget, v16);
      v17 = v9->_syncUpBudget;
      v18 = [(BRCAccountSession *)v9->_session clientState];
      [v18 setObject:v17 forKeyedSubscript:@"syncUpBudget"];
    }

    v19 = [BRCDeadlineScheduler alloc];
    v20 = [(BRCAccountSession *)v9->_session fairClientDBScheduler];
    v21 = [(BRCDeadlineScheduler *)v19 initWithName:@"com.apple.brc.sync" fairScheduler:v20];
    syncScheduler = v9->_syncScheduler;
    v9->_syncScheduler = v21;

    v23 = [v10 syncUpThrottle];
    [v23 minWait];
    [(BRCDeadlineScheduler *)v9->_syncScheduler setCoalescingLeeway:brc_interval_to_nsec() / 10];

    v104[0] = MEMORY[0x277D85DD0];
    v104[1] = 3221225472;
    v104[2] = __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke;
    v104[3] = &unk_278502478;
    v91 = v16;
    v105 = v91;
    v24 = v10;
    v106 = v24;
    [(BRCDeadlineScheduler *)v9->_syncScheduler setComputeNextAdmissibleDateForScheduling:v104];
    v25 = [(BRCContainerScheduler *)v9 _newSyncDeadlineSourceWithName:@"metadata-sync"];
    containerMetadataSyncSource = v9->_containerMetadataSyncSource;
    v9->_containerMetadataSyncSource = v25;

    v27 = v9->_containerMetadataSyncSource;
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_10;
    v102[3] = &unk_2784FF400;
    objc_copyWeak(&v103, &location);
    [(BRCDeadlineSource *)v27 setEventHandler:v102];
    v28 = [BRCSyncOperationThrottle alloc];
    v29 = [MEMORY[0x277CFAE60] containerMetadataMangledID];
    v30 = [(BRCSyncOperationThrottle *)v28 initWithMangledID:v29 isSyncDown:1];
    containerMetadataSyncDownThrottle = v9->_containerMetadataSyncDownThrottle;
    v9->_containerMetadataSyncDownThrottle = v30;

    v32 = [BRCSyncOperationThrottle alloc];
    v33 = [MEMORY[0x277CFAE60] containerMetadataMangledID];
    v34 = [(BRCSyncOperationThrottle *)v32 initWithMangledID:v33 isSyncDown:0];
    containerMetadataSyncUpThrottle = v9->_containerMetadataSyncUpThrottle;
    v9->_containerMetadataSyncUpThrottle = v34;

    v36 = [(BRCContainerScheduler *)v9 _newSyncDeadlineSourceWithName:@"shared-db-sync"];
    sharedDatabaseSyncSource = v9->_sharedDatabaseSyncSource;
    v9->_sharedDatabaseSyncSource = v36;

    v38 = v9->_sharedDatabaseSyncSource;
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_2;
    v100[3] = &unk_2784FF400;
    objc_copyWeak(&v101, &location);
    [(BRCDeadlineSource *)v38 setEventHandler:v100];
    v39 = [BRCSyncOperationThrottle alloc];
    v40 = [MEMORY[0x277CFAE60] sharedDatabaseMangledID];
    v41 = [(BRCSyncOperationThrottle *)v39 initWithMangledID:v40 isSyncDown:1];
    sharedDatabaseSyncDownThrottle = v9->_sharedDatabaseSyncDownThrottle;
    v9->_sharedDatabaseSyncDownThrottle = v41;

    v43 = [(BRCContainerScheduler *)v9 _newSyncDeadlineSourceWithName:@"zone-health-sync"];
    zoneHealthSyncSource = v9->_zoneHealthSyncSource;
    v9->_zoneHealthSyncSource = v43;

    v45 = v9->_zoneHealthSyncSource;
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_3;
    v98[3] = &unk_2784FF400;
    objc_copyWeak(&v99, &location);
    [(BRCDeadlineSource *)v45 setEventHandler:v98];
    v46 = [BRCSyncOperationThrottle alloc];
    v47 = [MEMORY[0x277CFAE60] zoneHealthMangledID];
    v48 = [(BRCSyncOperationThrottle *)v46 initWithMangledID:v47 isSyncDown:0];
    zoneHealthSyncUpThrottle = v9->_zoneHealthSyncUpThrottle;
    v9->_zoneHealthSyncUpThrottle = v48;

    v50 = [BRCSyncOperationThrottle alloc];
    v51 = [MEMORY[0x277CFAE60] zoneHealthMangledID];
    v52 = [(BRCSyncOperationThrottle *)v50 initWithMangledID:v51 isSyncDown:1];
    zoneHealthSyncDownThrottle = v9->_zoneHealthSyncDownThrottle;
    v9->_zoneHealthSyncDownThrottle = v52;

    v54 = [(BRCContainerScheduler *)v9 _newSyncDeadlineSourceWithName:@"migrate-pcs-sync"];
    migrateZonePCSSource = v9->_migrateZonePCSSource;
    v9->_migrateZonePCSSource = v54;

    v56 = v9->_migrateZonePCSSource;
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_4;
    v96[3] = &unk_2784FF400;
    objc_copyWeak(&v97, &location);
    [(BRCDeadlineSource *)v56 setEventHandler:v96];
    v57 = [(BRCContainerScheduler *)v9 _newSyncDeadlineSourceWithName:@"side-car-sync"];
    sideCarSyncSource = v9->_sideCarSyncSource;
    v9->_sideCarSyncSource = v57;

    v59 = v9->_sideCarSyncSource;
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_5;
    v94[3] = &unk_2784FF400;
    objc_copyWeak(&v95, &location);
    [(BRCDeadlineSource *)v59 setEventHandler:v94];
    v60 = [BRCSyncOperationThrottle alloc];
    v61 = [MEMORY[0x277CFAE60] sideCarMangledID];
    v62 = [(BRCSyncOperationThrottle *)v60 initWithMangledID:v61 isSyncDown:0];
    sideCarSyncUpThrottle = v9->_sideCarSyncUpThrottle;
    v9->_sideCarSyncUpThrottle = v62;

    v64 = [BRCSyncOperationThrottle alloc];
    v65 = [MEMORY[0x277CFAE60] sideCarMangledID];
    v66 = [(BRCSyncOperationThrottle *)v64 initWithMangledID:v65 isSyncDown:1];
    sideCarSyncDownThrottle = v9->_sideCarSyncDownThrottle;
    v9->_sideCarSyncDownThrottle = v66;

    v68 = +[BRCAccountsManager sharedManager];
    v9->_isInSyncBubble = [v68 isInSyncBubble];

    isInSyncBubble = v9->_isInSyncBubble;
    objc_storeStrong(&v9->_pushWorkloop, a4);
    if (!isInSyncBubble)
    {
      v70 = [BRCFairSource alloc];
      v71 = [(BRCAccountSession *)v9->_session fairClientDBScheduler];
      v72 = [(BRCFairSource *)v70 initWithName:@"push" scheduler:v71];
      pushSource = v9->_pushSource;
      v9->_pushSource = v72;

      [(BRCFairSource *)v9->_pushSource setWorkloop:v9->_pushWorkloop];
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_6;
      v92[3] = &unk_2784FF400;
      objc_copyWeak(&v93, &location);
      [(BRCFairSource *)v9->_pushSource setEventHandler:v92];
      v74 = brc_bread_crumbs();
      v75 = brc_default_log();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        [BRCContainerScheduler initWithAccountSession:pushWorkloop:];
      }

      objc_destroyWeak(&v93);
    }

    v76 = [(BRCPersistedState *)BRCContainerMetadataSyncPersistedState loadFromClientStateInSession:v9->_session];
    containerMetadataPersistedState = v9->_containerMetadataPersistedState;
    v9->_containerMetadataPersistedState = v76;

    v78 = [(BRCPersistedState *)BRCZoneHealthSyncPersistedState loadFromClientStateInSession:v9->_session];
    zoneHealthPersistedState = v9->_zoneHealthPersistedState;
    v9->_zoneHealthPersistedState = v78;

    v80 = [(BRCPersistedState *)BRCSideCarSyncPersistedState loadFromClientStateInSession:v9->_session];
    sideCarSyncPersistedState = v9->_sideCarSyncPersistedState;
    v9->_sideCarSyncPersistedState = v80;

    v82 = [BRCSideCarSyncDownHandler alloc];
    v83 = v9->_sideCarSyncPersistedState;
    v84 = [v7 serverState];
    v85 = [v7 applyScheduler];
    v86 = [(BRCSideCarSyncDownHandler *)v82 initWithSessionContext:v7 sideCarPersistedState:v83 serverPersistedState:v84 applyScheduler:v85];
    sideCarSyncDownHandler = v9->_sideCarSyncDownHandler;
    v9->_sideCarSyncDownHandler = v86;

    v88 = [[BRCPeriodicSyncScheduler alloc] initWithContainerScheduler:v9 session:v9->_session];
    periodicSyncScheduler = v9->_periodicSyncScheduler;
    v9->_periodicSyncScheduler = v88;

    objc_destroyWeak(&v95);
    objc_destroyWeak(&v97);
    objc_destroyWeak(&v99);
    objc_destroyWeak(&v101);
    objc_destroyWeak(&v103);

    objc_destroyWeak(&location);
  }

  return v9;
}

uint64_t __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  brc_interval_from_nsec();
  [v3 updateForTime:?];
  [*v2 availableBudgetWithDefaults:v2[1]];
  v5 = v4;
  [v2[1] syncUpMinimalBudget];
  if (v5 >= v6)
  {
    return 0;
  }

  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_cold_1(v2);
  }

  [*(a1 + 32) nextDateWithBudgetWithDefaults:*(a1 + 40)];
  return brc_interval_to_nsec();
}

void __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _syncScheduleForContainersMetadata];
}

void __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _syncScheduleForSharedDatabase];
}

void __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _syncScheduleForZoneHealth];
}

void __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleCrossZoneMovePCSPrep];
}

void __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _syncScheduleForSideCar];
}

void __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePushTopicsRegistration];
}

- (void)enablePushNotifications
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Enabling push topics registration%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (id)_newSyncDeadlineSourceWithName:(id)a3
{
  v4 = a3;
  v5 = [BRCDeadlineSource alloc];
  v6 = [(BRCAccountSession *)self->_session defaultScheduler];
  v7 = [(BRCDeadlineSource *)v5 initWithScheduler:v6 name:v4];

  v8 = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  [(BRCDeadlineSource *)v7 setWorkloop:v8];

  return v7;
}

- (void)_unscheduleClientZone:(id)a3
{
  v3 = a3;
  [v3 setDelegate:0];
  v4 = [v3 syncDeadlineSource];

  [v4 cancel];
}

- (void)closeContainers
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx shutting down periodic metadata sync%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __40__BRCContainerScheduler_closeContainers__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) cancel];
  v2 = *(*(a1 + 32) + 120);
  if (v2)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    __brc_create_section(0, "[BRCContainerScheduler closeContainers]_block_invoke", 325, 0, &v17);
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __40__BRCContainerScheduler_closeContainers__block_invoke_cold_1(&v17);
    }

    [v2 cancel];
    [*(a1 + 40) addObject:v2];
    __brc_leave_section(&v17);
  }

  [*(*(a1 + 32) + 24) cancel];
  v5 = *(*(a1 + 32) + 168);

  if (v5)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    __brc_create_section(0, "[BRCContainerScheduler closeContainers]_block_invoke", 332, 0, &v17);
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __40__BRCContainerScheduler_closeContainers__block_invoke_cold_2(&v17);
    }

    [v5 cancel];
    [*(a1 + 40) addObject:v5];
    __brc_leave_section(&v17);
  }

  [*(*(a1 + 32) + 32) cancel];
  v8 = *(*(a1 + 32) + 208);

  if (v8)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    __brc_create_section(0, "[BRCContainerScheduler closeContainers]_block_invoke", 339, 0, &v17);
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __40__BRCContainerScheduler_closeContainers__block_invoke_cold_3(&v17);
    }

    [v8 cancel];
    [*(a1 + 40) addObject:v8];
    __brc_leave_section(&v17);
  }

  [*(*(a1 + 32) + 328) cancel];
  v11 = *(*(a1 + 32) + 320);

  if (v11)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    __brc_create_section(0, "[BRCContainerScheduler closeContainers]_block_invoke", 346, 0, &v17);
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __40__BRCContainerScheduler_closeContainers__block_invoke_cold_4(&v17);
    }

    [v11 cancel];
    [*(a1 + 40) addObject:v11];
    __brc_leave_section(&v17);
  }

  [*(*(a1 + 32) + 40) cancel];
  v14 = *(*(a1 + 32) + 264);

  if (v14)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    __brc_create_section(0, "[BRCContainerScheduler closeContainers]_block_invoke", 353, 0, &v17);
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __40__BRCContainerScheduler_closeContainers__block_invoke_cold_5(&v17);
    }

    [v14 cancel];
    [*(a1 + 40) addObject:v14];
    __brc_leave_section(&v17);
  }
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_38(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 312);
  if (v2)
  {
    memset(v7, 0, sizeof(v7));
    __brc_create_section(0, "[BRCContainerScheduler closeContainers]_block_invoke", 363, 0, v7);
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __40__BRCContainerScheduler_closeContainers__block_invoke_38_cold_1(v7);
    }

    [v2 cancel];
    [*(a1 + 40) addObject:v2];
    __brc_leave_section(v7);
  }

  v5 = [*(a1 + 32) session];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__BRCContainerScheduler_closeContainers__block_invoke_39;
  v6[3] = &unk_278500298;
  v6[4] = *(a1 + 32);
  [v5 enumerateClientZones:v6];
}

uint64_t __40__BRCContainerScheduler_closeContainers__block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __40__BRCContainerScheduler_closeContainers__block_invoke_39_cold_1();
  }

  [*(a1 + 32) _unscheduleClientZone:v3];
  return 1;
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_41(uint64_t a1)
{
  [*(*(a1 + 32) + 48) cancel];
  [*(*(a1 + 32) + 80) setEnabledTopics:MEMORY[0x277CBEBF8] ignoredTopics:MEMORY[0x277CBEBF8] opportunisticTopics:MEMORY[0x277CBEBF8]];
  [*(*(a1 + 32) + 80) shutdown];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;
}

- (void)close
{
  v3 = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__BRCContainerScheduler_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async_and_wait(v3, block);

  syncScheduler = self->_syncScheduler;
  self->_syncScheduler = 0;
}

void __30__BRCContainerScheduler_close__block_invoke(uint64_t a1)
{
  v22 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = *(a1 + 32);
  v3 = [*(v2 + 8) personaIdentifier];
  v4 = BRPersonaSpecificName();
  [v22 removeObserver:v2 name:v4 object:0];

  v5 = *(a1 + 32);
  v6 = [*(v5 + 8) personaIdentifier];
  v7 = BRPersonaSpecificName();
  [v22 removeObserver:v5 name:v7 object:0];

  [*(*(a1 + 32) + 304) close];
  [*(*(a1 + 32) + 368) _close];
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  *(v10 + 24) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 32);
  *(v12 + 32) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 328);
  *(v14 + 328) = 0;

  v16 = *(a1 + 32);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;

  v18 = *(a1 + 32);
  v19 = *(v18 + 304);
  *(v18 + 304) = 0;

  v20 = *(a1 + 32);
  v21 = *(v20 + 8);
  *(v20 + 8) = 0;
}

- (void)setup
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx loading containers%@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)schedulePeriodicSyncInGroup:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRCAccountSession *)self->_session clientDB];
  [v8 assertOnQueue];

  if (self->_periodicSyncOperation)
  {
    v9 = [MEMORY[0x277CCA9B8] brc_errorOperationAlreadyRunning:@"Periodic Sync"];
    v7[2](v7, v9);
  }

  else
  {
    memset(v21, 0, sizeof(v21));
    __brc_create_section(0, "[BRCContainerScheduler schedulePeriodicSyncInGroup:completion:]", 469, 0, v21);
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [BRCContainerScheduler schedulePeriodicSyncInGroup:v21 completion:?];
    }

    v12 = [BRCPeriodicSyncOperation alloc];
    v13 = [(BRCContainerMetadataSyncPersistedState *)self->_containerMetadataPersistedState serverChangeToken];
    v14 = [(BRCZoneHealthSyncPersistedState *)self->_zoneHealthPersistedState serverChangeToken];
    v15 = [(BRCSideCarSyncPersistedState *)self->_sideCarSyncPersistedState serverChangeToken];
    v16 = [(BRCPeriodicSyncOperation *)v12 initWithContainerScheduler:self metadataChangeToken:v13 zoneHealthChangeToken:v14 sideCarChangeToken:v15 sessionContext:self->_session];

    v17 = [(_BRCOperation *)v16 callbackQueue];
    v18 = [(BRCAccountSession *)self->_session clientTruthWorkloop];
    dispatch_set_target_queue(v17, v18);

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__BRCContainerScheduler_schedulePeriodicSyncInGroup_completion___block_invoke;
    v19[3] = &unk_2785024A0;
    v19[4] = self;
    v20 = v7;
    [(_BRCOperation *)v16 setFinishBlock:v19];
    [(_BRCOperation *)v16 setGroup:v6];
    objc_storeStrong(&self->_periodicSyncOperation, v16);
    [(_BRCOperation *)v16 schedule];
    [(BRCContainerScheduler *)self scheduleSyncDownForSharedDatabaseImmediately:0];

    __brc_leave_section(v21);
  }
}

void __64__BRCContainerScheduler_schedulePeriodicSyncInGroup_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      __64__BRCContainerScheduler_schedulePeriodicSyncInGroup_completion___block_invoke_cold_1();
    }
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 312);
  *(v7 + 312) = 0;

  (*(*(a1 + 40) + 16))();
}

- (BOOL)_hasMetadataToSyncUpToContainerMetadata
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [(BRCContainerScheduler *)self session];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__BRCContainerScheduler__hasMetadataToSyncUpToContainerMetadata__block_invoke;
  v4[3] = &unk_2785024C8;
  v4[4] = &v5;
  [v2 enumerateAppLibraries:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (unint64_t)recoverAndReportMissingJobs
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  dispatch_assert_queue_V2(v3);

  if ([(BRCContainerScheduler *)self _hasMetadataToSyncUpToContainerMetadata]&& (self->_containerMetadataSyncState & 0xF) == 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] container-metadata has things to sync-up but it is not marked as needs-sync-up%@", &v8, 0xCu);
    }

    [(BRCContainerScheduler *)self _markContainerMetadataNeedsSyncUp];
    result = 1;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)resume
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Sync: resuming sync%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __31__BRCContainerScheduler_resume__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 zoneHealthNeedsSyncUp];
  if (v3)
  {
    *(*(a1 + 32) + 200) |= 1u;
  }

  return v3 ^ 1u;
}

- (void)didInitialSyncDownForClientZone:(id)a3
{
  v4 = a3;
  if ([v4 isCloudDocsZone])
  {
    memset(v8, 0, sizeof(v8));
    __brc_create_section(0, "[BRCContainerScheduler didInitialSyncDownForClientZone:]", 653, 0, v8);
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCContainerScheduler didInitialSyncDownForClientZone:v8];
    }

    v7 = [(BRCContainerScheduler *)self session];
    [v7 markAccountMigrationComplete];

    __brc_leave_section(v8);
  }
}

- (void)scheduleSyncDownForContainerMetadataWithGroup:(id)a3
{
  v4 = a3;
  v5 = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__BRCContainerScheduler_scheduleSyncDownForContainerMetadataWithGroup___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_with_logs_4(v5, v7);
}

uint64_t __71__BRCContainerScheduler_scheduleSyncDownForContainerMetadataWithGroup___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __71__BRCContainerScheduler_scheduleSyncDownForContainerMetadataWithGroup___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 104) |= 2u;
  [*(*(a1 + 32) + 96) setNeedsContainerMetadataSyncDown:1];
  [*(*(a1 + 32) + 96) setCkGroup:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 8) clientDB];
  [v4 forceBatchStart];

  return [*(*(a1 + 32) + 16) signal];
}

- (void)scheduleSyncDownForSharedDatabaseImmediately:(BOOL)a3
{
  v5 = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__BRCContainerScheduler_scheduleSyncDownForSharedDatabaseImmediately___block_invoke;
  v6[3] = &unk_278500EE0;
  v7 = a3;
  v6[4] = self;
  dispatch_async_with_logs_4(v5, v6);
}

uint64_t __70__BRCContainerScheduler_scheduleSyncDownForSharedDatabaseImmediately___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0;
  }

  else
  {
    v3 = [BRCUserDefaults defaultsForMangledID:0];
    v2 = [v3 sharedDbSyncDownCoalesceNanoseconds];
  }

  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __70__BRCContainerScheduler_scheduleSyncDownForSharedDatabaseImmediately___block_invoke_cold_1();
  }

  v6 = brc_current_date_nsec();
  *(*(a1 + 32) + 160) |= 2u;
  [*(*(a1 + 32) + 96) setNeedsSharedDBSyncDown:1];
  v7 = [*(*(a1 + 32) + 8) clientDB];
  [v7 forceBatchStart];

  return [*(*(a1 + 32) + 24) signalWithDeadline:v6 + v2];
}

- (void)scheduleSyncDownForZoneHealthWithGroup:(id)a3
{
  v4 = a3;
  v5 = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__BRCContainerScheduler_scheduleSyncDownForZoneHealthWithGroup___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_with_logs_4(v5, v7);
}

uint64_t __64__BRCContainerScheduler_scheduleSyncDownForZoneHealthWithGroup___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __64__BRCContainerScheduler_scheduleSyncDownForZoneHealthWithGroup___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 200) |= 2u;
  [*(*(a1 + 32) + 192) setNeedsSyncDown:1];
  [*(*(a1 + 32) + 192) setCkGroup:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 8) clientDB];
  [v4 forceBatchStart];

  return [*(*(a1 + 32) + 32) signal];
}

- (void)scheduleSyncDownForSideCarWithGroup:(id)a3
{
  v4 = a3;
  v5 = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__BRCContainerScheduler_scheduleSyncDownForSideCarWithGroup___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_with_logs_4(v5, v7);
}

uint64_t __61__BRCContainerScheduler_scheduleSyncDownForSideCarWithGroup___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __61__BRCContainerScheduler_scheduleSyncDownForSideCarWithGroup___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 256) |= 2u;
  [*(*(a1 + 32) + 248) setNeedsSync:1];
  [*(*(a1 + 32) + 248) setCkGroup:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 8) clientDB];
  [v4 forceBatchStart];

  return [*(*(a1 + 32) + 40) signal];
}

- (void)redoZonePCSPreperation
{
  v3 = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__BRCContainerScheduler_redoZonePCSPreperation__block_invoke;
  v4[3] = &unk_2784FF450;
  v4[4] = self;
  dispatch_async_with_logs_4(v3, v4);
}

uint64_t __47__BRCContainerScheduler_redoZonePCSPreperation__block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __47__BRCContainerScheduler_redoZonePCSPreperation__block_invoke_cold_1();
  }

  v4 = [*(*(a1 + 32) + 8) clientState];
  [v4 setNeedsPCSMigration:1];

  return [*(*(a1 + 32) + 328) signal];
}

- (void)scheduleSyncUpForSideCar
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] marking side-car needs-sync-up%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didChangeSyncStatusForZoneHealthForContainer:(id)a3
{
  v4 = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__BRCContainerScheduler_didChangeSyncStatusForZoneHealthForContainer___block_invoke;
  v5[3] = &unk_2784FF450;
  v5[4] = self;
  dispatch_async_with_logs_4(v4, v5);
}

uint64_t __70__BRCContainerScheduler_didChangeSyncStatusForZoneHealthForContainer___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __70__BRCContainerScheduler_didChangeSyncStatusForZoneHealthForContainer___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 200) |= 1u;
  return [*(*(a1 + 32) + 32) signal];
}

- (void)_markContainerMetadataNeedsSyncUp
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2112;
  *&v4[14] = a1;
  OUTLINED_FUNCTION_4(&dword_223E7A000, a2, a3, "[DEBUG] marking container-metadata needs-sync-up with deadline: %lld%@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)didChangeSyncStatusForContainerMetadataForContainer:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__BRCContainerScheduler_didChangeSyncStatusForContainerMetadataForContainer___block_invoke;
  v6[3] = &unk_2784FF400;
  objc_copyWeak(&v7, &location);
  dispatch_async_with_logs_4(v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __77__BRCContainerScheduler_didChangeSyncStatusForContainerMetadataForContainer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _markContainerMetadataNeedsSyncUp];
}

- (void)_scheduleAfterFlush:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(BRCAccountSession *)self->_session clientDB];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__BRCContainerScheduler__scheduleAfterFlush___block_invoke;
  v7[3] = &unk_2784FF518;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 scheduleFlushWithCheckpoint:0 whenFlushed:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __45__BRCContainerScheduler__scheduleAfterFlush___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[46] workloop];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__BRCContainerScheduler__scheduleAfterFlush___block_invoke_2;
    v6[3] = &unk_2784FFBC8;
    v5 = *(a1 + 32);
    v6[4] = v3;
    v7 = v5;
    dispatch_async(v4, v6);
  }
}

- (void)_syncScheduleForContainersMetadata
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] done syncing container-metadata%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__BRCContainerScheduler__syncScheduleForContainersMetadata__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v43 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 120);
  *(v6 + 120) = 0;

  v45 = 0;
  v8 = [v5 brc_containerResetErrorForSharedZone:0 resetReason:&v45];
  v9 = *(*(a1 + 32) + 104);
  if (v8)
  {
    v10 = objc_alloc(MEMORY[0x277CFAE60]);
    v11 = [v10 initWithZoneName:*MEMORY[0x277CFAD58] ownerName:*MEMORY[0x277CBBF28]];
    v12 = [*(*(a1 + 32) + 8) clientZoneByMangledID:v11];
    v13 = [v12 enhancedDrivePrivacyEnabled];
    v14 = [*(*(a1 + 32) + 96) lastSyncDownDate];
    v15 = [AppTelemetryTimeSeriesEvent newZoneResetEventWithZoneMangledID:v11 enhancedDrivePrivacyEnabled:v13 lastSyncDate:v14 error:v5 errorDescription:v45];

    v16 = [*(*(a1 + 32) + 8) analyticsReporter];
    [v16 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v15];

    memset(v44, 0, sizeof(v44));
    __brc_create_section(0, "[BRCContainerScheduler _syncScheduleForContainersMetadata]_block_invoke", 890, 0, v44);
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v39 = v44[0];
      v40 = BRCPrettyPrintEnum();
      *buf = 134218498;
      v47 = v39;
      v48 = 2080;
      v49 = v40;
      v50 = 2112;
      v51 = v17;
      _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx resetting container-metadata: %s%@", buf, 0x20u);
    }

    v19 = v9;
    if (v8 != 1)
    {
      [*(*(a1 + 32) + 8) enumerateAppLibraries:&__block_literal_global_25];
      v19 = v9 | 1;
    }

    [*(*(a1 + 32) + 96) containerMetadataWasReset];
    __brc_leave_section(v44);

    v20 = v19 | 2;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v31 = *(a1 + 32);
    if (isKindOfClass)
    {
      [*(v31 + 136) updateForError:v5];
      objc_storeStrong((*(a1 + 32) + 152), a3);
      v32 = objc_loadWeakRetained((a1 + 40));
      v11 = v32;
      v20 = v9 | 0x12;
      if (!v5 && ![v32 shouldPerformAnotherBatch])
      {
        v20 = v9 & 0xFFFFFFEC | 0x12;
      }
    }

    else
    {
      [*(v31 + 128) updateForError:v5];
      objc_storeStrong((*(a1 + 32) + 144), a3);
      v33 = objc_loadWeakRetained((a1 + 40));
      v11 = v33;
      v20 = v9;
      if (!v5)
      {
        v34 = [v33 shouldFetchAnotherBatch];
        v35 = v9 & 0xFFFFFFCD;
        if (v34)
        {
          v35 = v9;
        }

        v20 = v35 & 0xFFFFFFCF | 0x20;
      }

      if ([*(a1 + 32) _hasMetadataToSyncUpToContainerMetadata])
      {
        v36 = brc_bread_crumbs();
        v37 = brc_default_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          __59__BRCContainerScheduler__syncScheduleForContainersMetadata__block_invoke_cold_1();
        }

        v20 |= 1u;
      }
    }
  }

  if ((v20 & 2) == 0)
  {
    [*(*(a1 + 32) + 96) setNeedsContainerMetadataSyncDown:0];
    [*(*(a1 + 32) + 96) setHasCaughtUpAtLeastOnce:1];
    v21 = [*(*(a1 + 32) + 8) clientDB];
    [v21 forceBatchStart];
  }

  v22 = brc_bread_crumbs();
  v23 = brc_default_log();
  v24 = v20 & 0xFFFFFFF3;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    if (*(*(a1 + 32) + 104))
    {
      v38 = BRCPrettyPrintBitmap();
    }

    else
    {
      v38 = @"idle";
    }

    v41 = v38;
    if (v24)
    {
      v42 = BRCPrettyPrintBitmap();
    }

    else
    {
      v42 = @"idle";
    }

    *buf = 138412802;
    v47 = v41;
    v48 = 2112;
    v49 = v42;
    v50 = 2112;
    v51 = v22;
    _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] Container metadata sync state (%@) -> (%@)%@", buf, 0x20u);
  }

  v26 = *(a1 + 32);
  v25 = a1 + 32;
  *(v26 + 104) = v24;
  [*(*v25 + 16) signal];
  v27 = [*(*v25 + 8) periodicSyncInvestigation];
  [v27 completeInvestigationIfNecessaryWithOldSyncState:v9 newSyncState:*(*v25 + 104)];

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __59__BRCContainerScheduler__syncScheduleForContainersMetadata__block_invoke_63(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 containerMetadataEtag];

  if (v3)
  {
    [v2 setContainerMetadataEtag:0];
    [v2 setContainerMetadataNeedsSyncUp:1];
  }

  return 1;
}

uint64_t __59__BRCContainerScheduler__syncScheduleForContainersMetadata__block_invoke_65(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((a2 + 120), *(a1 + 32));
  v3 = *(a1 + 32);

  return [v3 schedule];
}

- (void)_syncScheduleForSharedDatabase
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] done syncing shared-db%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__BRCContainerScheduler__syncScheduleForSharedDatabase__block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 168);
  *(v7 + 168) = 0;

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = "NO";
    *v17 = 136315650;
    if (a2)
    {
      v16 = "YES";
    }

    *&v17[4] = v16;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Finished sharedb sync down with more coming: %s, error %@%@", v17, 0x20u);
  }

  [*(*(a1 + 32) + 176) updateForError:v6];
  objc_storeStrong((*(a1 + 32) + 184), a3);
  if (v6)
  {
    v11 = 2;
  }

  else
  {
    v11 = 32;
  }

  if (!v6 && a2)
  {
    *(*(a1 + 32) + 160) |= 2u;
    v11 = 32;
  }

  *(*(a1 + 32) + 160) |= v11;
  v12 = *(a1 + 32);
  v13 = *(v12 + 160);
  if ((v13 & 2) == 0)
  {
    [*(v12 + 96) setNeedsSharedDBSyncDown:0];
    v14 = [*(*(a1 + 32) + 8) clientDB];
    [v14 forceBatchStart];

    v12 = *(a1 + 32);
    v13 = *(v12 + 160);
  }

  *(v12 + 160) = v13 & 0xFFFFFFF3;
  [*(*(a1 + 32) + 24) signal];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_syncScheduleForZoneHealth
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] done syncing zone-health%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__BRCContainerScheduler__syncScheduleForZoneHealth__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(*(a1 + 32) + 368) workloop];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 32);
  v8 = *(v7 + 200);
  v9 = *(v7 + 208);
  *(v7 + 208) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = *(*(a1 + 32) + 352);
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      do
      {
        v15 = 0;
        do
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v36 + 1) + 8 * v15++) + 16))();
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v13);
    }

    v16 = *(a1 + 32);
    v17 = *(v16 + 352);
    *(v16 + 352) = 0;
  }

  v35 = 0;
  if (![v5 brc_containerResetErrorForSharedZone:0 resetReason:&v35])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 32) + 216) updateForError:v5];
      objc_storeStrong((*(a1 + 32) + 232), a3);
      v27 = *(a1 + 32);
      v28 = *(v27 + 200);
      if (v5)
      {
        v29 = v28 | 2;
      }

      else
      {
        *(v27 + 200) = v28 | 0x20;
        v27 = *(a1 + 32);
        v29 = *(v27 + 200) & 0xFFFFFFEF;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_22;
      }

      [*(*(a1 + 32) + 224) updateForError:v5];
      objc_storeStrong((*(a1 + 32) + 240), a3);
      v27 = *(a1 + 32);
      v30 = *(v27 + 200);
      if (v5)
      {
        v29 = v30 | 0x13;
      }

      else
      {
        *(v27 + 200) = v30 | 0x10;
        if (![WeakRetained shouldPerformAnotherBatch])
        {
          goto LABEL_22;
        }

        v27 = *(a1 + 32);
        v29 = *(v27 + 200) | 1;
      }
    }

    *(v27 + 200) = v29;
    goto LABEL_22;
  }

  v18 = brc_bread_crumbs();
  v19 = brc_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v18;
    _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Resetting zone health%@", buf, 0xCu);
  }

  v20 = objc_alloc(MEMORY[0x277CFAE60]);
  v21 = [v20 initWithZoneName:*MEMORY[0x277CFADD0] ownerName:*MEMORY[0x277CBBF28]];
  v22 = [*(*(a1 + 32) + 8) clientZoneByMangledID:v21];
  v23 = [v22 enhancedDrivePrivacyEnabled];
  v24 = [*(*(a1 + 32) + 192) lastSyncDownDate];
  v25 = [AppTelemetryTimeSeriesEvent newZoneResetEventWithZoneMangledID:v21 enhancedDrivePrivacyEnabled:v23 lastSyncDate:v24 error:v5 errorDescription:v35];

  v26 = [*(*(a1 + 32) + 8) analyticsReporter];
  [v26 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v25];

  [*(*(a1 + 32) + 8) enumeratePrivateClientZones:&__block_literal_global_81];
  [*(*(a1 + 32) + 192) zoneHealthWasReset];

LABEL_22:
  *(*(a1 + 32) + 200) &= 0xFFFFFFF3;
  v31 = *(a1 + 32);
  if ((*(v31 + 200) & 2) == 0)
  {
    [*(v31 + 192) setNeedsSyncDown:0];
    v32 = [*(*(a1 + 32) + 8) clientDB];
    [v32 forceBatchStart];

    v31 = *(a1 + 32);
  }

  [*(v31 + 32) signal];
  v33 = [*(*(a1 + 32) + 8) periodicSyncInvestigation];
  [v33 completeInvestigationIfNecessaryWithOldSyncState:v8 newSyncState:*(*(a1 + 32) + 200)];

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_syncScheduleForSideCar
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] done syncing side-car%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__BRCContainerScheduler__syncScheduleForSideCar__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 368) workloop];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 32);
  v8 = *(v7 + 256);
  v9 = *(v7 + 264);
  *(v7 + 264) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v27 = 0;
  if ([v5 brc_containerResetErrorForSharedZone:0 resetReason:&v27])
  {
    v11 = objc_alloc(MEMORY[0x277CFAE60]);
    v12 = [v11 initWithZoneName:*MEMORY[0x277CFB070] ownerName:*MEMORY[0x277CBBF28]];
    v13 = [*(*(a1 + 32) + 8) clientZoneByMangledID:v12];
    v14 = [v13 enhancedDrivePrivacyEnabled];
    v15 = [*(*(a1 + 32) + 248) lastSyncDownDate];
    v16 = [AppTelemetryTimeSeriesEvent newZoneResetEventWithZoneMangledID:v12 enhancedDrivePrivacyEnabled:v14 lastSyncDate:v15 error:v5 errorDescription:v27];

    v17 = [*(*(a1 + 32) + 8) analyticsReporter];
    [v17 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v16];

    v18 = [*(*(a1 + 32) + 8) serverTruthWorkloop];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __48__BRCContainerScheduler__syncScheduleForSideCar__block_invoke_2;
    v26[3] = &unk_2784FF450;
    v26[4] = *(a1 + 32);
    dispatch_async_with_logs_4(v18, v26);

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(*(a1 + 32) + 272) updateForError:v5];
    objc_storeStrong((*(a1 + 32) + 288), a3);
    v19 = *(a1 + 32);
    v20 = *(v19 + 256);
    if (v5)
    {
      v21 = v20 | 2;
    }

    else
    {
      *(v19 + 256) = v20 | 0x20;
      v19 = *(a1 + 32);
      v21 = *(v19 + 256) & 0xFFFFFFEF;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  [*(*(a1 + 32) + 280) updateForError:v5];
  objc_storeStrong((*(a1 + 32) + 296), a3);
  v19 = *(a1 + 32);
  v22 = *(v19 + 256);
  if (v5)
  {
    v21 = v22 | 0x13;
LABEL_10:
    *(v19 + 256) = v21;
    goto LABEL_11;
  }

  *(v19 + 256) = v22 | 0x10;
  if ([WeakRetained shouldPerformAnotherBatch])
  {
    v19 = *(a1 + 32);
    v21 = *(v19 + 256) | 1;
    goto LABEL_10;
  }

LABEL_11:
  *(*(a1 + 32) + 256) &= 0xFFFFFFF3;
  v23 = *(a1 + 32);
  if ((*(v23 + 256) & 3) == 0)
  {
    [*(v23 + 248) setNeedsSync:0];
    v24 = [*(*(a1 + 32) + 8) clientDB];
    [v24 forceBatchStart];

    v23 = *(a1 + 32);
  }

  [*(v23 + 40) signal];
  v25 = [*(*(a1 + 32) + 8) periodicSyncInvestigation];
  [v25 completeInvestigationIfNecessaryWithOldSyncState:v8 newSyncState:*(*(a1 + 32) + 256)];
}

uint64_t __48__BRCContainerScheduler__syncScheduleForSideCar__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEFAULT, "[WARNING] Resetting side car zone%@", &v7, 0xCu);
  }

  [*(*(a1 + 32) + 8) enumerateSharedClientZones:&__block_literal_global_90_0];
  v4 = [*(*(a1 + 32) + 8) serverDB];
  [v4 execute:@"DELETE FROM side_car_lookahead"];

  result = [*(*(a1 + 32) + 248) sideCarZoneWasReset];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __48__BRCContainerScheduler__syncScheduleForSideCar__block_invoke_87(uint64_t a1, void *a2)
{
  v2 = [a2 serverZone];
  v3 = [v2 asSharedZone];
  [v3 sideCarZoneWasReset];

  return 1;
}

uint64_t __48__BRCContainerScheduler__syncScheduleForSideCar__block_invoke_2_94(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((a2 + 264), *(a1 + 32));
  v3 = *(a1 + 32);

  return [v3 schedule];
}

- (void)_printSyncErrorIfNecessaryWithThrottle:(id)a3 context:(id)a4 error:(id)a5 now:(int64_t)a6
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  [v20 nextTry];
  v11 = v10;
  brc_interval_from_nsec();
  if (v11 > v12)
  {
    [v8 pushIndentation];
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    if ([v20 isSyncDown])
    {
      v14 = @"down";
    }

    else
    {
      v14 = @"up";
    }

    [v20 nextTry];
    v16 = v15;
    brc_interval_from_nsec();
    v18 = [v13 initWithFormat:@" [sync-%@ throttled (next-try:in %.01fs)] error: %@", v14, v16 - v17, v9];
    v19 = [BRCDumpContext highlightedString:v18 type:3 context:v8];

    [v8 writeLineWithFormat:@"%@", v19];
    [v8 popIndentation];
  }
}

- (void)dumpToContext:(id)a3 includeAllItems:(BOOL)a4 db:(id)a5
{
  v7 = a3;
  v8 = a5;
  v78 = [BRCUserDefaults defaultsForMangledID:0];
  v9 = +[BRCSystemResourcesManager manager];
  if ([v9 isNetworkReachable])
  {
    v77 = @"online";
  }

  else
  {
    v77 = [BRCDumpContext stringFromErrorString:@"offline" context:v7];
  }

  if ([v9 isPowerOK])
  {
    v76 = @"healthy";
  }

  else
  {
    v76 = [BRCDumpContext stringFromErrorString:@"low" context:v7];
  }

  v10 = [(BRCAccountSession *)self->_session volume];
  v11 = [v9 hasEnoughSpaceForDevice:{objc_msgSend(v10, "deviceID")}];

  if (v11)
  {
    v12 = @"healthy";
  }

  else
  {
    v12 = [BRCDumpContext stringFromErrorString:@"low disk" context:v7];
  }

  v13 = +[BRCContainerCellularSettings containerCellularSettings];
  v14 = [v13 isCellularEnabled];

  if (v14)
  {
    v75 = @"enabled";
  }

  else
  {
    v75 = [BRCDumpContext stringFromErrorString:@"disabled" context:v7];
  }

  v79 = [v8 fetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(*) from server_items"];
  v74 = [v8 fetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(*) from client_items"];
  v70 = [v74 unsignedLongLongValue] > 0x3E8 || objc_msgSend(v79, "unsignedLongLongValue") >= 0x3E9;
  v15 = [(BRCAccountSession *)self->_session volume];
  v16 = [v15 fsTypeName];
  v17 = [v16 uppercaseString];
  v18 = [v7 highlightedString:v17 type:7];

  v71 = v18;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", v12, v18];

  v20 = self;
  objc_sync_enter(v20);
  environmentName = v20->_environmentName;
  if (environmentName)
  {
    v73 = environmentName;
  }

  else
  {
    v73 = [BRCDumpContext stringFromErrorString:@"no environment" context:v7];
  }

  v22 = [(NSData *)v20->_pushToken description];
  v23 = v22;
  v68 = v9;
  v69 = v8;
  if (v22)
  {
    v72 = v22;
  }

  else
  {
    v72 = [BRCDumpContext stringFromErrorString:@"no token" context:v7];
  }

  objc_sync_exit(v20);
  v24 = [(BRCAccountSession *)self->_session fsUploader];
  v25 = [v24 quotaAvailableForOwner:*MEMORY[0x277CBBF28]];

  v26 = [(objc_class *)getUIDeviceClass() currentDevice];
  v27 = [v26 name];

  [v7 writeLineWithFormat:@"system"];
  [v7 writeLineWithFormat:@"-----------------------------------------------------"];
  [v7 pushIndentation];
  [v7 writeLineWithFormat:@"+ network: %@", v77];
  [v7 writeLineWithFormat:@"+ disk:    %@", v19];
  [v7 writeLineWithFormat:@"+ power:   %@", v76];
  v28 = [(BRCAccountSession *)self->_session hasOptimizeStorageEnabled];
  v29 = "disabled";
  if (v28)
  {
    v29 = "enabled";
  }

  [v7 writeLineWithFormat:@"+ optimize storage: %s", v29];
  v67 = v27;
  v30 = [v27 fp_obfuscatedFilename];
  [v7 writeLineWithFormat:@"+ device name:   %@", v30];

  [v7 writeLineWithFormat:@"+ cellular: %@", v75];
  [v7 popIndentation];
  [v7 writeLineWithFormat:&stru_2837504F0];
  [v7 writeLineWithFormat:@"scheduler"];
  [v7 writeLineWithFormat:@"-----------------------------------------------------"];
  [v7 pushIndentation];
  v31 = +[BRCDumpContext stringFromCount:context:](BRCDumpContext, "stringFromCount:context:", [v74 unsignedLongLongValue], v7);
  v32 = +[BRCDumpContext stringFromCount:context:](BRCDumpContext, "stringFromCount:context:", [v79 unsignedLongLongValue], v7);
  [v7 writeLineWithFormat:@"+ items:                 client:%@, server: %@", v31, v32];

  if (v70)
  {
    v33 = [BRCDumpContext highlightedString:@"output may be truncated" type:3 context:v7];
    [v7 writeLineWithFormat:@"                         warning: %@", v33];
  }

  [v7 writeLineWithFormat:@"+ push environment:      %@", v73];
  [v7 writeLineWithFormat:@"+ push token:            %@", v72];
  v34 = [(BRCSyncBudgetThrottle *)v20->_syncUpBudget debugDescriptionWithDefaults:v78];
  [v7 writeLineWithFormat:@"+ global sync up budget: %@", v34];

  v35 = [(BRCOperationSubclass *)v20->_periodicSyncOperation descriptionWithContext:v7];
  v36 = v35;
  v37 = @"idle";
  if (v35)
  {
    v37 = v35;
  }

  [v7 writeLineWithFormat:@"+ periodic sync:         %@", v37];

  if (v25)
  {
    v38 = +[BRCDumpContext stringFromByteCount:context:](BRCDumpContext, "stringFromByteCount:context:", [v25 longLongValue], v7);
    v39 = [(BRCAccountSession *)self->_session fsUploader];
    v40 = [v39 isDefaultOwnerOutOfQuota];
    v41 = @" [pending-quota]";
    if (!v40)
    {
      v41 = &stru_2837504F0;
    }

    [v7 writeLineWithFormat:@"+ available quota:       %@%@", v38, v41];
  }

  v42 = brc_current_date_nsec();
  if (v20->_containerMetadataSyncState)
  {
    v43 = BRCPrettyPrintBitmap();
  }

  else
  {
    v43 = @"idle";
  }

  v44 = [(BRCOperationSubclass *)v20->_containerMetadataSyncOperation descriptionWithContext:v7];
  v45 = v44;
  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = &stru_2837504F0;
  }

  [v7 writeLineWithFormat:@"+ container-metadata:    %@ %@", v43, v46];

  [(BRCContainerScheduler *)v20 _printSyncErrorIfNecessaryWithThrottle:v20->_containerMetadataSyncDownThrottle context:v7 error:v20->_lastContainerMetadataSyncDownError now:v42];
  [(BRCContainerScheduler *)v20 _printSyncErrorIfNecessaryWithThrottle:v20->_containerMetadataSyncUpThrottle context:v7 error:v20->_lastContainerMetadataSyncUpError now:v42];
  if (v20->_sharedDBSyncState)
  {
    v47 = BRCPrettyPrintBitmap();
  }

  else
  {
    v47 = @"idle";
  }

  v48 = [(BRCOperationSubclass *)v20->_sharedDatabaseSyncOperation descriptionWithContext:v7];
  v49 = v48;
  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = &stru_2837504F0;
  }

  [v7 writeLineWithFormat:@"+ sharedb:               %@ %@", v47, v50];

  [(BRCContainerScheduler *)v20 _printSyncErrorIfNecessaryWithThrottle:v20->_sharedDatabaseSyncDownThrottle context:v7 error:v20->_lastSharedDatabaseSyncDownError now:v42];
  if (v20->_zoneHealthSyncState)
  {
    v51 = BRCPrettyPrintBitmap();
  }

  else
  {
    v51 = @"idle";
  }

  v52 = [(BRCOperationSubclass *)v20->_zoneHealthSyncOperation descriptionWithContext:v7];
  v53 = v52;
  if (v52)
  {
    v54 = v52;
  }

  else
  {
    v54 = &stru_2837504F0;
  }

  [v7 writeLineWithFormat:@"+ zone-health:           %@ %@", v51, v54];

  [(BRCContainerScheduler *)v20 _printSyncErrorIfNecessaryWithThrottle:v20->_zoneHealthSyncDownThrottle context:v7 error:v20->_lastZoneHealthSyncDownError now:v42];
  [(BRCContainerScheduler *)v20 _printSyncErrorIfNecessaryWithThrottle:v20->_zoneHealthSyncUpThrottle context:v7 error:v20->_lastZoneHealthSyncUpError now:v42];
  if (v20->_sideCarSyncState)
  {
    v55 = BRCPrettyPrintBitmap();
  }

  else
  {
    v55 = @"idle";
  }

  v56 = [(BRCOperationSubclass *)v20->_sideCarSyncOperation descriptionWithContext:v7];
  v57 = v56;
  if (v56)
  {
    v58 = v56;
  }

  else
  {
    v58 = &stru_2837504F0;
  }

  [v7 writeLineWithFormat:@"+ side-car:              %@ %@", v55, v58];

  [(BRCContainerScheduler *)v20 _printSyncErrorIfNecessaryWithThrottle:v20->_sideCarSyncDownThrottle context:v7 error:v20->_lastSideCarSyncDownError now:v42];
  [(BRCContainerScheduler *)v20 _printSyncErrorIfNecessaryWithThrottle:v20->_sideCarSyncUpThrottle context:v7 error:v20->_lastSideCarSyncUpError now:v42];
  migrateZonePCSOperation = v20->_migrateZonePCSOperation;
  if (migrateZonePCSOperation)
  {
    v60 = [(_BRCOperation *)migrateZonePCSOperation descriptionWithContext:v7];
    [v7 writeLineWithFormat:@"+ pcs-migration:         %@", v60];
  }

  else
  {
    v60 = [(BRCAccountSession *)self->_session clientState];
    v61 = [v60 PCSMigrationComplete];
    v62 = @"unfinished";
    if (v61)
    {
      v62 = @"complete";
    }

    [v7 writeLineWithFormat:@"+ pcs-migration:         %@", v62];
  }

  v80 = 0;
  v63 = [(BRCAccountSession *)self->_session fetchAccountWaitOperationWithAccountReady:&v80];
  v64 = v63;
  if (v63)
  {
    if (([v63 isFinished] & 1) == 0)
    {
      v65 = [v64 descriptionWithContext:v7];
LABEL_67:
      v66 = v65;
      [v7 writeLineWithFormat:@"+ account: %@", v65];
    }
  }

  else if ((v80 & 1) == 0)
  {
    v65 = [v7 highlightedString:@"not ready" type:3];
    goto LABEL_67;
  }

  [v7 popIndentation];
  [v7 writeLineWithFormat:&stru_2837504F0];
}

- (id)internalZoneSyncDownAnalyticsErrors
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(BRCSyncOperationThrottle *)self->_sideCarSyncDownThrottle delay];
  v5 = v4;
  v6 = +[BRCUserDefaults defaultsForSideCar];
  [v6 syncDownDelayForFailure];
  v8 = v7;

  if (v5 <= v8)
  {
    v10 = 0;
  }

  else
  {
    v9 = [(NSError *)self->_lastSideCarSyncDownError brc_telemetryReportableErrorWithRecordName:0];
    v10 = [MEMORY[0x277CFAE60] sideCarMangledID];
    v11 = [(BRCContainerScheduler *)self session];
    v12 = [v11 clientZoneByMangledID:v10];
    v13 = [v12 enhancedDrivePrivacyEnabled];

    v14 = [[BRCErrorGrouping alloc] initWithError:v9 pcsChained:0 enhancedDrivePrivacyEnabled:v13];
    [v3 setObject:v14 forKeyedSubscript:v10];
  }

  [(BRCSyncOperationThrottle *)self->_zoneHealthSyncDownThrottle delay];
  v16 = v15;
  v17 = [MEMORY[0x277CFAE60] zoneHealthMangledID];
  v18 = [BRCUserDefaults defaultsForMangledID:v17];
  [v18 syncDownDelayForFailure];
  v20 = v19;

  if (v16 > v20)
  {
    v21 = [(NSError *)self->_lastZoneHealthSyncDownError brc_telemetryReportableErrorWithRecordName:0];
    v22 = [MEMORY[0x277CFAE60] zoneHealthMangledID];

    v23 = [(BRCContainerScheduler *)self session];
    v24 = [v23 clientZoneByMangledID:v22];
    v25 = [v24 enhancedDrivePrivacyEnabled];

    v26 = [[BRCErrorGrouping alloc] initWithError:v21 pcsChained:0 enhancedDrivePrivacyEnabled:v25];
    v27 = [MEMORY[0x277CFAE60] zoneHealthMangledID];
    [v3 setObject:v26 forKeyedSubscript:v27];

    v10 = v22;
  }

  [(BRCSyncOperationThrottle *)self->_containerMetadataSyncDownThrottle delay];
  v29 = v28;
  v30 = +[BRCUserDefaults defaultsForMetadataContainer];
  [v30 syncDownDelayForFailure];
  v32 = v31;

  if (v29 > v32)
  {
    v33 = [(NSError *)self->_lastContainerMetadataSyncDownError brc_telemetryReportableErrorWithRecordName:0];
    v34 = [MEMORY[0x277CFAE60] containerMetadataMangledID];

    v35 = [(BRCContainerScheduler *)self session];
    v36 = [v35 clientZoneByMangledID:v34];
    v37 = [v36 enhancedDrivePrivacyEnabled];

    v38 = [[BRCErrorGrouping alloc] initWithError:v33 pcsChained:0 enhancedDrivePrivacyEnabled:v37];
    [v3 setObject:v38 forKeyedSubscript:v34];

    v10 = v34;
  }

  [(BRCSyncOperationThrottle *)self->_sharedDatabaseSyncDownThrottle delay];
  v40 = v39;
  v41 = +[BRCUserDefaults defaultsForSharedZone];
  [v41 syncDownDelayForFailure];
  v43 = v42;

  if (v40 > v43)
  {
    v44 = [(NSError *)self->_lastSharedDatabaseSyncDownError brc_telemetryReportableErrorWithRecordName:0];
    v45 = [MEMORY[0x277CFAE60] sharedDatabaseMangledID];

    v46 = [(BRCContainerScheduler *)self session];
    v47 = [v46 clientZoneByMangledID:v45];
    v48 = [v47 enhancedDrivePrivacyEnabled];

    v49 = [[BRCErrorGrouping alloc] initWithError:v44 pcsChained:0 enhancedDrivePrivacyEnabled:v48];
    [v3 setObject:v49 forKeyedSubscript:v45];

    v10 = v45;
  }

  return v3;
}

- (id)internalZoneSyncUpAnalyticsErrors
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(BRCSyncOperationThrottle *)self->_sideCarSyncUpThrottle delay];
  v5 = v4;
  v6 = +[BRCUserDefaults defaultsForSideCar];
  [v6 syncUpDelayForFailure];
  v8 = v7;

  if (v5 <= v8)
  {
    v10 = 0;
  }

  else
  {
    v9 = [(NSError *)self->_lastSideCarSyncUpError brc_telemetryReportableErrorWithRecordName:0];
    v10 = [MEMORY[0x277CFAE60] sideCarMangledID];
    v11 = [(BRCContainerScheduler *)self session];
    v12 = [v11 clientZoneByMangledID:v10];
    v13 = [v12 enhancedDrivePrivacyEnabled];

    v14 = [[BRCErrorGrouping alloc] initWithError:v9 pcsChained:0 enhancedDrivePrivacyEnabled:v13];
    [v3 setObject:v14 forKeyedSubscript:v10];
  }

  [(BRCSyncOperationThrottle *)self->_zoneHealthSyncUpThrottle delay];
  v16 = v15;
  v17 = [MEMORY[0x277CFAE60] zoneHealthMangledID];
  v18 = [BRCUserDefaults defaultsForMangledID:v17];
  [v18 syncUpDelayForFailure];
  v20 = v19;

  if (v16 > v20)
  {
    v21 = [(NSError *)self->_lastZoneHealthSyncUpError brc_telemetryReportableErrorWithRecordName:0];
    v22 = [MEMORY[0x277CFAE60] zoneHealthMangledID];

    v23 = [(BRCContainerScheduler *)self session];
    v24 = [v23 clientZoneByMangledID:v22];
    v25 = [v24 enhancedDrivePrivacyEnabled];

    v26 = [[BRCErrorGrouping alloc] initWithError:v21 pcsChained:0 enhancedDrivePrivacyEnabled:v25];
    [v3 setObject:v26 forKeyedSubscript:v22];

    v10 = v22;
  }

  [(BRCSyncOperationThrottle *)self->_containerMetadataSyncUpThrottle delay];
  v28 = v27;
  v29 = +[BRCUserDefaults defaultsForMetadataContainer];
  [v29 syncUpDelayForFailure];
  v31 = v30;

  if (v28 > v31)
  {
    v32 = [(NSError *)self->_lastContainerMetadataSyncUpError brc_telemetryReportableErrorWithRecordName:0];
    v33 = [MEMORY[0x277CFAE60] containerMetadataMangledID];

    v34 = [(BRCContainerScheduler *)self session];
    v35 = [v34 clientZoneByMangledID:v33];
    v36 = [v35 enhancedDrivePrivacyEnabled];

    v37 = [[BRCErrorGrouping alloc] initWithError:v32 pcsChained:0 enhancedDrivePrivacyEnabled:v36];
    [v3 setObject:v37 forKeyedSubscript:v33];

    v10 = v33;
  }

  return v3;
}

- (void)receivedUpdatedSideCarServerChangeToken:(id)a3 requestID:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v6 descriptionWithContext:0];
    v11 = 138412802;
    v12 = v10;
    v13 = 2048;
    v14 = a4;
    v15 = 2112;
    v16 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Updated side car sync token:%@ requestID:%lld%@", &v11, 0x20u);
  }

  [(BRCSideCarSyncPersistedState *)self->_sideCarSyncPersistedState updateWithServerChangeToken:v6 requestID:a4];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleCrossZoneMovePCSPrep
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: _migrateZonePCSOperation == nil%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__BRCContainerScheduler__scheduleCrossZoneMovePCSPrep__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 368) workloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__BRCContainerScheduler__scheduleCrossZoneMovePCSPrep__block_invoke_2;
  block[3] = &unk_2784FF450;
  block[4] = *(a1 + 32);
  dispatch_async_and_wait(v2, block);
}

void __54__BRCContainerScheduler__scheduleCrossZoneMovePCSPrep__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 328) resume];
  v2 = *(a1 + 32);
  v3 = *(v2 + 320);
  *(v2 + 320) = 0;
}

- (void)syncContextDidBecomeForeground:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v4 = [(BRCAccountSession *)self->_session personaIdentifier];
  if ([v4 isEqualToString:@"__defaultPersonaID__"])
  {
  }

  else
  {
    v5 = [(BRCAccountSession *)self->_session personaIdentifier];

    if (v5)
    {
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (syncContextDidBecomeForeground____personaOnceToken != -1)
  {
    [BRCContainerScheduler syncContextDidBecomeForeground:];
  }

  v5 = syncContextDidBecomeForeground____personalPersona;
  v6 = 1;
LABEL_8:
  v7 = [MEMORY[0x277D77BF8] sharedManager];
  v8 = [v7 currentPersona];

  v33 = 0;
  v9 = [v8 userPersonaUniqueString];
  v10 = v9;
  if (v9 == v5 || ([v9 isEqualToString:v5] & 1) != 0)
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v32 = 0;
    v21 = [v8 copyCurrentPersonaContextWithError:&v32];
    v22 = v32;
    v23 = v33;
    v33 = v21;

    if (v22)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, 0x90u))
      {
        [BRCContainerScheduler syncContextDidBecomeForeground:];
      }
    }

    v11 = [v8 br_generateAndRestorePersonaContextWithPersonaUniqueString:v5];

    if (v11)
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, 0x90u))
      {
        v28 = [(BRCAccountSession *)self->_session personaIdentifier];
        *buf = 138412802;
        v35 = v28;
        v36 = 2112;
        v37 = v11;
        v38 = 2112;
        v39 = v26;
        _os_log_error_impl(&dword_223E7A000, v27, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_34:
    }
  }

  else
  {
    if (v6 && ([v8 isDataSeparatedPersona] & 1) == 0)
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v11 = 0;
      goto LABEL_34;
    }

    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      __br_notify_register_dispatch_block_invoke_cold_3();
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  }

LABEL_11:
  v12 = [v31 object];
  if (([v12 isShared] & 1) == 0)
  {
    v13 = [v12 contextIdentifier];
    v14 = [(BRCAccountSession *)self->_session appLibraryByID:v13];
    v15 = [v14 defaultClientZone];
    v16 = [v15 isSyncBlockedBecauseAppNotInstalled];

    if (v16)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v17;
        _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] Container became foreground that we didn't think was installed, forcing an apps list refresh%@", buf, 0xCu);
      }

      v19 = +[BRCCloudDocsAppsMonitor cloudDocsAppsMonitor];
      [v19 forceRefetchAppList];
    }
  }

  [(BRCContainerScheduler *)self _scheduleUpdatePushTopicsRegistration];

  _BRRestorePersona();
  v20 = *MEMORY[0x277D85DE8];
}

void __56__BRCContainerScheduler_syncContextDidBecomeForeground___block_invoke()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = syncContextDidBecomeForeground____personalPersona;
  syncContextDidBecomeForeground____personalPersona = v0;
}

- (void)syncContextDidBecomeBackground:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BRCAccountSession *)self->_session personaIdentifier];
  if ([v5 isEqualToString:@"__defaultPersonaID__"])
  {
  }

  else
  {
    v6 = [(BRCAccountSession *)self->_session personaIdentifier];

    if (v6)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (syncContextDidBecomeBackground____personaOnceToken != -1)
  {
    [BRCContainerScheduler syncContextDidBecomeBackground:];
  }

  v6 = syncContextDidBecomeBackground____personalPersona;
  v7 = 1;
LABEL_8:
  v8 = [MEMORY[0x277D77BF8] sharedManager];
  v9 = [v8 currentPersona];

  v25 = 0;
  v10 = [v9 userPersonaUniqueString];
  v11 = v10;
  if (v10 == v6 || ([v10 isEqualToString:v6] & 1) != 0)
  {
    v12 = 0;
    goto LABEL_11;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v24 = 0;
    v14 = [v9 copyCurrentPersonaContextWithError:&v24];
    v15 = v24;
    v16 = v25;
    v25 = v14;

    if (v15)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        [BRCContainerScheduler syncContextDidBecomeForeground:];
      }
    }

    v12 = [v9 br_generateAndRestorePersonaContextWithPersonaUniqueString:v6];

    if (v12)
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, 0x90u))
      {
        v21 = [(BRCAccountSession *)self->_session personaIdentifier];
        *buf = 138412802;
        v27 = v21;
        v28 = 2112;
        v29 = v12;
        v30 = 2112;
        v31 = v19;
        _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_28:
    }
  }

  else
  {
    if (v7 && ([v9 isDataSeparatedPersona] & 1) == 0)
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v12 = 0;
      goto LABEL_28;
    }

    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __br_notify_register_dispatch_block_invoke_cold_3();
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  }

LABEL_11:
  [(BRCContainerScheduler *)self _scheduleUpdatePushTopicsRegistration];

  _BRRestorePersona();
  v13 = *MEMORY[0x277D85DE8];
}

void __56__BRCContainerScheduler_syncContextDidBecomeBackground___block_invoke()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = syncContextDidBecomeBackground____personalPersona;
  syncContextDidBecomeBackground____personalPersona = v0;
}

- (void)_scheduleUpdatePushTopicsRegistration
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] scheduling push topics registration%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updatePushTopicsRegistration
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] foreground topics: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __54__BRCContainerScheduler__updatePushTopicsRegistration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 defaultClientZone];
  if (([v4 isSyncBlockedBecauseAppNotInstalled] & 1) == 0 && ((objc_msgSend(v3, "isCloudDocsAppLibrary") & 1) != 0 || !objc_msgSend(v3, "wasMovedToCloudDocs") || objc_msgSend(v3, "isAppInstalled")))
  {
    v5 = *(a1 + 32);
    v6 = [v3 appLibraryID];
    v7 = [v5 _pushTopicForIdentifier:v6];

    v8 = *(a1 + 32);
    v9 = [v4 zoneName];
    v10 = [v8 _pushTopicForIdentifier:v9];

    if ([v3 isForeground])
    {
      v11 = 40;
    }

    else
    {
      v11 = 48;
    }

    [*(a1 + v11) addObject:v7];
    if ([v4 isForeground])
    {
      v12 = 40;
    }

    else
    {
      v12 = 48;
    }

    [*(a1 + v12) addObject:v10];
  }

  return 1;
}

uint64_t __54__BRCContainerScheduler__updatePushTopicsRegistration__block_invoke_262(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v3 = [*(a1 + 40) allObjects];
  v4 = [*(a1 + 48) allObjects];
  [v2 setEnabledTopics:v3 ignoredTopics:MEMORY[0x277CBEBF8] opportunisticTopics:v4];

  v5 = *(*(a1 + 32) + 80);

  return [v5 setDelegate:?];
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    environmentName = self->_environmentName;
    v16 = 138413314;
    v17 = environmentName;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] received %@ push token %@ for %@:%@%@", &v16, 0x34u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v5 = a4;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCContainerScheduler connection:didReceivePublicToken:];
  }

  v8 = self;
  objc_sync_enter(v8);
  pushToken = v8->_pushToken;
  v8->_pushToken = v5;

  objc_sync_exit(v8);
}

- (void)_connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v109 = *MEMORY[0x277D85DE8];
  v82 = a3;
  v6 = a4;
  v85 = self;
  if (self->_isInSyncBubble)
  {
    [BRCContainerScheduler _connection:didReceiveIncomingMessage:];
  }

  v83 = os_transaction_create();
  session = self->_session;
  v86 = v6;
  v84 = session;
  v8 = [@"com.apple.icloud-container." stringByAppendingString:*MEMORY[0x277CFACF8]];
  v9 = [v86 topic];
  LOBYTE(session) = [v9 hasPrefix:v8];

  if (session)
  {
    v10 = [v86 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"ck"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        [BRCContainerScheduler _connection:didReceiveIncomingMessage:];
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_35;
    }

    v12 = v11;
    v13 = [v12 objectForKeyedSubscript:@"met"];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v12 objectForKeyedSubscript:@"fet"];
    }

    v11 = v15;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v80 = [v12 objectForKeyedSubscript:@"met"];
        v81 = @"fet";
        *buf = 138412802;
        if (v80)
        {
          v81 = @"met";
        }

        *&buf[4] = v81;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        *&buf[22] = 2112;
        v101 = v30;
        _os_log_fault_impl(&dword_223E7A000, v23, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: invalid push payload[%@] %@%@", buf, 0x20u);
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_34;
    }

    v19 = [v11 objectForKeyedSubscript:@"zid"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [BRCContainerScheduler _connection:didReceiveIncomingMessage:];
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_33;
    }

    v20 = [v11 objectForKeyedSubscript:@"dbs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 intValue];
      switch(v21)
      {
        case 1:
          v22 = 0;
          v17 = @"private";
          break;
        case 3:
          v25 = [v11 objectForKeyedSubscript:@"zoid"];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v22 = brc_bread_crumbs();
            v69 = brc_default_log();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
            {
              [BRCContainerScheduler _connection:didReceiveIncomingMessage:];
            }

            v16 = 0;
            v18 = 0;
            v23 = v19;
            v19 = v25;
            v17 = @"shared";
            goto LABEL_33;
          }

          v22 = v25;
          v17 = @"shared";
          v20 = v22;
          break;
        case 2:
          v22 = 0;
          v17 = @"public";
          break;
        default:
          v17 = [v20 description];
          v26 = v17;
          v22 = 0;
          break;
      }

      v27 = [(BRCAccountSession *)v84 cachedCurrentUserRecordName];
      if (v27 && [v22 isEqualToString:v27])
      {
        v28 = *MEMORY[0x277CBBF28];

        v22 = v28;
      }

      v16 = [objc_alloc(MEMORY[0x277CFAE60]) initWithZoneName:v19 ownerName:v22];
      v29 = v16;
      v18 = v11;
    }

    else
    {
      v22 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [BRCContainerScheduler _connection:didReceiveIncomingMessage:];
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v23 = v19;
    v19 = v20;
LABEL_33:

    v30 = v11;
    v11 = v19;
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    v61 = [v86 topic];
    v62 = v61;
    v63 = [v61 UTF8String];
    v64 = v8;
    *buf = 136315650;
    *&buf[4] = v63;
    *&buf[12] = 2080;
    *&buf[14] = [v8 UTF8String];
    *&buf[22] = 2112;
    v101 = v11;
    _os_log_fault_impl(&dword_223E7A000, v12, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: invalid push topic '%s' (expected prefix '%s')%@", buf, 0x20u);
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
LABEL_36:

  v31 = v16;
  v32 = v17;
  if (v18)
  {
    memset(v93, 0, sizeof(v93));
    __brc_create_section(0, "[BRCContainerScheduler _connection:didReceiveIncomingMessage:]", 1911, 0, v93);
    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v54 = v93[0];
      v55 = [v86 topic];
      v56 = [v82 publicToken];
      v57 = [v86 priority];
      v58 = +[BRCSystemResourcesManager manager];
      v59 = [v58 isSystemInDarkWake];
      v60 = "NO";
      *buf = 134219778;
      *&buf[4] = v54;
      *&buf[12] = 2112;
      if (v59)
      {
        v60 = "YES";
      }

      *&buf[14] = v32;
      *&buf[22] = 2112;
      v101 = v55;
      *v102 = 2112;
      *&v102[2] = v18;
      *&v102[10] = 2112;
      *&v102[12] = v56;
      v103 = 2048;
      v104 = v57;
      v105 = 2080;
      v106 = v60;
      v107 = 2112;
      v108 = v33;
      _os_log_debug_impl(&dword_223E7A000, v34, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx received a push in the %@ database for topic:'%@' payload:%@ token:%@ priority:%ld DarkWake:%s%@", buf, 0x52u);
    }

    kdebug_trace();
    v35 = [MEMORY[0x277CBC4F8] br_syncDownPushTriggered];
    v36 = [v31 appLibraryOrZoneName];
    v37 = [v36 isEqualToString:*MEMORY[0x277CFAD58]];

    if (v37)
    {
      v38 = brc_bread_crumbs();
      v39 = brc_default_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v38;
        _os_log_impl(&dword_223E7A000, v39, OS_LOG_TYPE_DEFAULT, "[NOTICE] received a push for the container-metadata zone%@", buf, 0xCu);
      }

      [(BRCContainerScheduler *)v85 scheduleSyncDownForContainerMetadataWithGroup:v35];
      goto LABEL_75;
    }

    v42 = [v31 appLibraryOrZoneName];
    v43 = [v42 isEqualToString:*MEMORY[0x277CFADD0]];

    if (v43)
    {
      v44 = brc_bread_crumbs();
      v45 = brc_default_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v44;
        _os_log_impl(&dword_223E7A000, v45, OS_LOG_TYPE_DEFAULT, "[NOTICE] received a push for the zone-health zone%@", buf, 0xCu);
      }

      [(BRCContainerScheduler *)v85 scheduleSyncDownForZoneHealthWithGroup:v35];
      goto LABEL_75;
    }

    v46 = [v31 appLibraryOrZoneName];
    v47 = [v46 isEqualToString:*MEMORY[0x277CFB070]];

    if (v47)
    {
      v48 = brc_bread_crumbs();
      v49 = brc_default_log();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v48;
        _os_log_impl(&dword_223E7A000, v49, OS_LOG_TYPE_DEFAULT, "[NOTICE] received a push for the side-car zone%@", buf, 0xCu);
      }

      [(BRCContainerScheduler *)v85 scheduleSyncDownForSideCarWithGroup:v35];
      goto LABEL_75;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v101 = __Block_byref_object_copy__18;
    *v102 = __Block_byref_object_dispose__18;
    *&v102[8] = [(BRCAccountSession *)v85->_session clientZoneByMangledID:v31];
    v50 = [(BRCAccountSession *)v85->_session appLibraryByMangledID:v31];
    v51 = v50;
    if (*(*&buf[8] + 40))
    {
      v52 = brc_bread_crumbs();
      v53 = brc_default_log();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *v94 = 138412546;
        v95 = v31;
        v96 = 2112;
        v97 = v52;
        _os_log_impl(&dword_223E7A000, v53, OS_LOG_TYPE_DEFAULT, "[NOTICE] received a push for client zone %@%@", v94, 0x16u);
      }
    }

    else if (v50)
    {
      v65 = [v50 defaultClientZone];
      v66 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v65;

      v52 = brc_bread_crumbs();
      v53 = brc_default_log();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v67 = [v51 defaultClientZone];
        v68 = [v67 mangledID];
        *v94 = 138412802;
        v95 = v31;
        v96 = 2112;
        v97 = v68;
        v98 = 2112;
        v99 = v52;
        _os_log_impl(&dword_223E7A000, v53, OS_LOG_TYPE_DEFAULT, "[NOTICE] received a push for app library %@ -> zone %@%@", v94, 0x20u);
      }
    }

    else
    {
      if ([v31 isShared])
      {
        v70 = brc_bread_crumbs();
        v71 = brc_default_log();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *v94 = 138412546;
          v95 = v31;
          v96 = 2112;
          v97 = v70;
          _os_log_impl(&dword_223E7A000, v71, OS_LOG_TYPE_DEFAULT, "[NOTICE] receiving a push for an unknown ID shared zone %@, creating the zone%@", v94, 0x16u);
        }

        v72 = [(BRCAccountSession *)v85->_session getOrCreateSharedZones:v31];
        v52 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v72;
        goto LABEL_74;
      }

      v73 = v85->_session;
      v74 = objc_alloc(MEMORY[0x277CFAE60]);
      v75 = [v74 initWithZoneName:*MEMORY[0x277CFAD68] ownerName:0];
      v76 = [(BRCAccountSession *)v73 clientZoneByMangledID:v75];
      v77 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v76;

      v52 = brc_bread_crumbs();
      v53 = brc_default_log();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *v94 = 138412546;
        v95 = v31;
        v96 = 2112;
        v97 = v52;
        _os_log_impl(&dword_223E7A000, v53, OS_LOG_TYPE_DEFAULT, "[NOTICE] receiving a push for an unknown ID %@ -> com.apple.CloudDocs%@", v94, 0x16u);
      }
    }

LABEL_74:
    v78 = [(BRCDeadlineScheduler *)v85->_syncScheduler workloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__BRCContainerScheduler__connection_didReceiveIncomingMessage___block_invoke;
    block[3] = &unk_2785025F8;
    v92 = buf;
    v88 = v35;
    v89 = v31;
    v90 = v85;
    v91 = v83;
    dispatch_async(v78, block);

    _Block_object_dispose(buf, 8);
LABEL_75:

    __brc_leave_section(v93);
    goto LABEL_76;
  }

  v40 = brc_bread_crumbs();
  v41 = brc_default_log();
  if (os_log_type_enabled(v41, 0x90u))
  {
    [(BRCContainerScheduler *)v86 _connection:v40 didReceiveIncomingMessage:v41];
  }

LABEL_76:
  v79 = *MEMORY[0x277D85DE8];
}

void __63__BRCContainerScheduler__connection_didReceiveIncomingMessage___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 64);
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    memset(v16, 0, sizeof(v16));
    __brc_create_section(0, "[BRCContainerScheduler _connection:didReceiveIncomingMessage:]_block_invoke", 1957, 0, v16);
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(*(*v2 + 8) + 40);
      *buf = 134218498;
      v18 = v16[0];
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v3;
      _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx scheduling sync down for client zone %@ because of a push%@", buf, 0x20u);
    }

    [*(*(*v2 + 8) + 40) clearStateBits:0x200000];
    [*(*(*(a1 + 64) + 8) + 40) scheduleSyncDownWithGroup:*(a1 + 32)];
    __brc_leave_section(v16);
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] no zone found, dropping the push%@", buf, 0xCu);
    }
  }

  if ([*(a1 + 40) isShared])
  {
    [*(a1 + 48) scheduleSyncDownForSharedDatabaseImmediately:*(*(*(a1 + 64) + 8) + 40) == 0];
  }

  if ([*(*(*v2 + 8) + 40) isSharedZone])
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = [*(a1 + 40) appLibraryOrZoneName];
    v9 = [v7 privateClientZoneByID:v8];
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __63__BRCContainerScheduler__connection_didReceiveIncomingMessage___block_invoke_cold_1(v2);
      }

      [*(*(*(a1 + 64) + 8) + 40) scheduleSyncDownWithGroup:*(a1 + 32)];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRCAccountSession *)self->_session personaIdentifier];
  v11 = v7;
  v9 = v7;
  v10 = v6;
  BRPerformWithPersonaAndError();
}

void __62__BRCContainerScheduler_connection_didReceiveIncomingMessage___block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __62__BRCContainerScheduler_connection_didReceiveIncomingMessage___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[4];

    [v7 _connection:v5 didReceiveIncomingMessage:v6];
  }
}

- (void)notifyAfterNextZoneHealthSyncDown:(id)a3
{
  v4 = a3;
  v5 = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__BRCContainerScheduler_notifyAfterNextZoneHealthSyncDown___block_invoke;
  v7[3] = &unk_278500048;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(v5, v7);
}

void __59__BRCContainerScheduler_notifyAfterNextZoneHealthSyncDown___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 352);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 352);
    *(v4 + 352) = v3;

    v2 = *(*(a1 + 32) + 352);
  }

  v6 = MEMORY[0x22AA4A310](*(a1 + 40));
  [v2 addObject:v6];
}

- (void)finishedHealthSyncDownCallback:(unint64_t)a3 error:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v13 = a3;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Completed zone health sync requestID:%lld error:%@%@", buf, 0x20u);
  }

  if (!v6)
  {
    session = self->_session;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__BRCContainerScheduler_finishedHealthSyncDownCallback_error___block_invoke;
    v11[3] = &__block_descriptor_40_e30_B16__0__BRCPrivateClientZone_8l;
    v11[4] = a3;
    [(BRCAccountSession *)session enumeratePrivateClientZones:v11];
    self->_zoneHealthSyncState &= ~2u;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)receivedUpdatedZoneHealthCallback:(id)a3 requestID:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v6 descriptionWithContext:0];
    v11 = 138412802;
    v12 = v10;
    v13 = 2048;
    v14 = a4;
    v15 = 2112;
    v16 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Updated zone health sync token:%@ requestID:%lld%@", &v11, 0x20u);
  }

  [(BRCZoneHealthSyncPersistedState *)self->_zoneHealthPersistedState updateWithServerChangeToken:v6 requestID:a4];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)initWithAccountSession:pushWorkloop:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Push notification source created in a disabled state%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] Sync: no global budget anymore: %@%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx cancelling containerMetadataSyncSource...%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx cancelling sharedDatabaseSyncSource%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx cancelling zoneHealthSyncSource%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_cold_4(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx cancelling migrateZonePCSSource%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_cold_5(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx cancelling sideCarSyncSource%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_38_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx cancelling periodicSyncOperation%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_39_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] unscheduling client zone %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)schedulePeriodicSyncInGroup:(uint64_t *)a1 completion:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx Considering containers needing forced sync down%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __64__BRCContainerScheduler_schedulePeriodicSyncInGroup_completion___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)didInitialSyncDownForClientZone:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx just synced down the default container%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __71__BRCContainerScheduler_scheduleSyncDownForContainerMetadataWithGroup___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] marking container-metadata needs-sync-down%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__BRCContainerScheduler_scheduleSyncDownForSharedDatabaseImmediately___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] scheduling sync for sharedb in %llus%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __64__BRCContainerScheduler_scheduleSyncDownForZoneHealthWithGroup___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] scheduling sync for zone-health%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__BRCContainerScheduler_scheduleSyncDownForSideCarWithGroup___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] scheduling sync for side-car%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__BRCContainerScheduler_redoZonePCSPreperation__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] scheduling sync for zone-pcs%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__BRCContainerScheduler_didChangeSyncStatusForZoneHealthForContainer___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] marking zone-health needs-sync-up%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__BRCContainerScheduler__syncScheduleForContainersMetadata__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] container-metadata still have things to sync up%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncContextDidBecomeForeground:.cold.4()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)connection:didReceivePublicToken:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] received public push token %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_connection:didReceiveIncomingMessage:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: !_isInSyncBubble%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_connection:didReceiveIncomingMessage:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_connection:didReceiveIncomingMessage:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_connection:didReceiveIncomingMessage:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_connection:didReceiveIncomingMessage:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_connection:(NSObject *)a3 didReceiveIncomingMessage:.cold.6(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a1 topic];
  v7 = [a1 userInfo];
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = a2;
  _os_log_error_impl(&dword_223E7A000, a3, 0x90u, "[ERROR] unable to parse push for topic:'%@' payload:%@%@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __63__BRCContainerScheduler__connection_didReceiveIncomingMessage___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  v2 = *(*(v1 + 8) + 40);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v3, v4, "[DEBUG] Also scheduling a sync down on the private zone %@%@");
  v5 = *MEMORY[0x277D85DE8];
}

void __62__BRCContainerScheduler_connection_didReceiveIncomingMessage___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: dropping push notification because we can't adopt persona%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end