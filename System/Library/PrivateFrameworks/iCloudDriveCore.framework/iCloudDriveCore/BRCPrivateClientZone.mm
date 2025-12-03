@interface BRCPrivateClientZone
- (BOOL)isDocumentScopePublic;
- (BOOL)parentIDHasLiveUnchainedChildren:(id)children;
- (BOOL)recomputeAppSyncBlockState;
- (BOOL)resetFrequencyIsTooHigh;
- (BOOL)validateItemsLoggingToFile:(__sFILE *)file db:(id)db;
- (BOOL)validateStructureLoggingToFile:(__sFILE *)file db:(id)db;
- (BRCAppLibrary)defaultAppLibrary;
- (BRCPrivateServerZone)privateServerZone;
- (NSSet)appLibraryIDs;
- (id)fetchZoneRootItemWithFacade:(id)facade;
- (id)getCreateCloudKitZoneOperation;
- (id)pcsChainOperationForItemID:(id)d;
- (id)plist;
- (id)prepareProblemReportForSyncWithRequestID:(int64_t)d;
- (id)rootItemID;
- (id)serverAliasByUnsaltedBookmarkData:(id)data;
- (id)unchainedItemInfoInServerTruthEnumeratorParentedTo:(id)to;
- (unsigned)pcsChainStateForItem:(id)item;
- (void)_checkResultSetIsEmpty:(id)empty logToFile:(__sFILE *)file reason:(id)reason result:(BOOL *)result;
- (void)_createCloudKitZoneWithGroup:(id)group completion:(id)completion;
- (void)addAppLibrary:(id)library offline:(BOOL)offline;
- (void)clearProblemReport;
- (void)close;
- (void)createCloudKitZoneWithGroup:(id)group completion:(id)completion;
- (void)defaultAppLibrary;
- (void)privateServerZone;
- (void)registerPCSChainingOperation:(id)operation;
- (void)removeAppLibrary:(id)library;
- (void)resume;
- (void)setServerZone:(id)zone;
- (void)syncedDownZoneHealthRequestID:(int64_t)d;
- (void)syncedDownZoneHealthState:(id)state;
- (void)updateWithPlist:(id)plist;
- (void)zoneHealthWasReset;
@end

@implementation BRCPrivateClientZone

- (id)plist
{
  v8.receiver = self;
  v8.super_class = BRCPrivateClientZone;
  plist = [(BRCClientZone *)&v8 plist];
  v4 = plist;
  problemReport = self->_problemReport;
  if (problemReport)
  {
    [plist setObject:problemReport forKeyedSubscript:@"problemReport"];
  }

  zoneHealthState = self->_zoneHealthState;
  if (zoneHealthState)
  {
    [v4 setObject:zoneHealthState forKeyedSubscript:@"zoneHealthState"];
  }

  return v4;
}

- (BRCAppLibrary)defaultAppLibrary
{
  defaultAppLibrary = self->_defaultAppLibrary;
  if (!defaultAppLibrary)
  {
    v6[1] = v2;
    v7 = v3;
    [(BRCPrivateClientZone *)&self->_defaultAppLibrary defaultAppLibrary];
    defaultAppLibrary = v6[0];
    v3 = v7;
  }

  return defaultAppLibrary;
}

- (BRCPrivateServerZone)privateServerZone
{
  serverZone = self->super._serverZone;
  if (!serverZone)
  {
    [(BRCPrivateClientZone *)&self->super._serverZone privateServerZone];
    serverZone = v5;
  }

  asPrivateZone = [(BRCServerZone *)serverZone asPrivateZone];

  return asPrivateZone;
}

- (id)rootItemID
{
  defaultAppLibrary = [(BRCPrivateClientZone *)self defaultAppLibrary];
  rootItemID = [defaultAppLibrary rootItemID];

  return rootItemID;
}

- (id)fetchZoneRootItemWithFacade:(id)facade
{
  facadeCopy = facade;
  defaultAppLibrary = [(BRCPrivateClientZone *)self defaultAppLibrary];
  v6 = [defaultAppLibrary fetchRootItemWithFacade:facadeCopy];

  return v6;
}

- (void)registerPCSChainingOperation:(id)operation
{
  operationCopy = operation;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pcsChainFolderOperations = selfCopy->_pcsChainFolderOperations;
  if (!pcsChainFolderOperations)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    v7 = selfCopy->_pcsChainFolderOperations;
    selfCopy->_pcsChainFolderOperations = weakToWeakObjectsMapTable;

    pcsChainFolderOperations = selfCopy->_pcsChainFolderOperations;
  }

  rootItemID = [operationCopy rootItemID];
  [(NSMapTable *)pcsChainFolderOperations setObject:operationCopy forKey:rootItemID];

  objc_sync_exit(selfCopy);
}

- (id)pcsChainOperationForItemID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMapTable *)selfCopy->_pcsChainFolderOperations objectForKey:dCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (NSSet)appLibraryIDs
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  appLibraries = [(BRCPrivateClientZone *)self appLibraries];
  v5 = [appLibraries countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(appLibraries);
        }

        appLibraryID = [*(*(&v12 + 1) + 8 * i) appLibraryID];
        [v3 addObject:appLibraryID];
      }

      v6 = [appLibraries countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)addAppLibrary:(id)library offline:(BOOL)offline
{
  libraryCopy = library;
  if (!offline)
  {
    [(BRCPQLConnection *)self->super._db assertOnQueue];
  }

  [(NSMutableSet *)self->_appLibraries addObject:libraryCopy];
  zoneName = [(BRCClientZone *)self zoneName];
  appLibraryID = [libraryCopy appLibraryID];
  v9 = [zoneName isEqualToString:appLibraryID];

  if (v9)
  {
    objc_storeStrong(&self->_defaultAppLibrary, library);
  }
}

- (void)removeAppLibrary:(id)library
{
  db = self->super._db;
  libraryCopy = library;
  [(BRCPQLConnection *)db assertOnQueue];
  [(NSMutableSet *)self->_appLibraries removeObject:libraryCopy];
}

- (void)createCloudKitZoneWithGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  createZoneQueue = self->_createZoneQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__BRCPrivateClientZone_createCloudKitZoneWithGroup_completion___block_invoke;
  block[3] = &unk_2784FF5B8;
  block[4] = self;
  v12 = groupCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = groupCopy;
  dispatch_sync(createZoneQueue, block);
}

- (void)_createCloudKitZoneWithGroup:(id)group completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_createZoneQueue);
  if (!self->_createZoneOperation)
  {
    objc_initWeak(&location, self);
    v21 = 0uLL;
    v22 = 0;
    __brc_create_section(0, "[BRCPrivateClientZone _createCloudKitZoneWithGroup:completion:]", 172, 0, &v21);
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = v21;
      zoneName = [(BRCClientZone *)self zoneName];
      *buf = 134218498;
      v27 = v15;
      v28 = 2112;
      v29 = zoneName;
      v30 = 2112;
      v31 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx scheduling zone creation operation for %@%@", buf, 0x20u);
    }

    v23 = v21;
    v24 = v22;
    v10 = [[BRCCreateZoneAndSubscribeOperation alloc] initWithServerZone:self->super._serverZone sessionContext:self->super._session];
    createZoneOperation = self->_createZoneOperation;
    self->_createZoneOperation = v10;

    [(_BRCOperation *)self->_createZoneOperation setGroup:groupCopy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__BRCPrivateClientZone__createCloudKitZoneWithGroup_completion___block_invoke;
    v17[3] = &unk_278504460;
    v19 = v23;
    v20 = v24;
    objc_copyWeak(&v18, &location);
    [(BRCCreateZoneAndSubscribeOperation *)self->_createZoneOperation setCreateZoneAndSubscribeCompletionBlock:v17];
    [(_BRCOperation *)self->_createZoneOperation schedule];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  zoneCreationCompletionBlocks = self->_zoneCreationCompletionBlocks;
  v13 = MEMORY[0x22AA4A310](completionCopy);
  [(NSMutableArray *)zoneCreationCompletionBlocks addObject:v13];

  v14 = *MEMORY[0x277D85DE8];
}

void __64__BRCPrivateClientZone__createCloudKitZoneWithGroup_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v15 = v12;
    v16 = 2112;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx finished zone creation with error: %@%@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained[67];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__BRCPrivateClientZone__createCloudKitZoneWithGroup_completion___block_invoke_5;
  v10[3] = &unk_2784FF478;
  v10[4] = WeakRetained;
  v11 = v3;
  v8 = v3;
  dispatch_sync(v7, v10);

  __brc_leave_section(&v12);
  v9 = *MEMORY[0x277D85DE8];
}

void __64__BRCPrivateClientZone__createCloudKitZoneWithGroup_completion___block_invoke_5(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 544) copy];
  [*(*(a1 + 32) + 544) removeAllObjects];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 40);
        (*(*(*(&v12 + 1) + 8 * v7) + 16))(*(*(&v12 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 528);
  *(v9 + 528) = 0;

  v11 = *MEMORY[0x277D85DE8];
}

- (id)getCreateCloudKitZoneOperation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__28;
  v10 = __Block_byref_object_dispose__28;
  v11 = 0;
  createZoneQueue = self->_createZoneQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__BRCPrivateClientZone_getCreateCloudKitZoneOperation__block_invoke;
  v5[3] = &unk_278502000;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(createZoneQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setServerZone:(id)zone
{
  zoneCopy = zone;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BRCPrivateClientZone setServerZone:];
  }

  serverZone = self->super._serverZone;
  self->super._serverZone = zoneCopy;
}

- (void)resume
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Activation done%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)close
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] zoneCreationOp finished%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __29__BRCPrivateClientZone_close__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 528));
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 cancel];
}

- (void)updateWithPlist:(id)plist
{
  v9.receiver = self;
  v9.super_class = BRCPrivateClientZone;
  plistCopy = plist;
  [(BRCClientZone *)&v9 updateWithPlist:plistCopy];
  v5 = [plistCopy objectForKeyedSubscript:{@"problemReport", v9.receiver, v9.super_class}];
  problemReport = self->_problemReport;
  self->_problemReport = v5;

  v7 = [plistCopy objectForKeyedSubscript:@"zoneHealthState"];

  zoneHealthState = self->_zoneHealthState;
  self->_zoneHealthState = v7;
}

- (void)clearProblemReport
{
  [(BRCPQLConnection *)self->super._db assertOnQueue];
  problemReport = self->_problemReport;
  self->_problemReport = 0;

  [(BRCClientZone *)self setNeedsSave:1];
}

uint64_t __57__BRCPrivateClientZone_reportProblemWithType_recordName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 568);
  if (v3)
  {
    v4 = v3;
    v5 = *(v2 + 568);
    *(v2 + 568) = v4;
  }

  else
  {
    v6 = objc_alloc_init(BRCProblemReport);
    v7 = *(a1 + 32);
    v5 = *(v7 + 568);
    *(v7 + 568) = v6;
  }

  [*(*(a1 + 32) + 568) addProblemWithType:*(a1 + 48) recordName:*(a1 + 40)];
  [*(a1 + 32) setNeedsSave:1];
  v8 = *(*(a1 + 32) + 24);

  return [v8 didChangeSyncStatusForZoneHealthForContainer:?];
}

- (id)prepareProblemReportForSyncWithRequestID:(int64_t)d
{
  [(BRCPQLConnection *)self->super._db assertOnQueue];
  if ([(BRCProblemReport *)self->_problemReport needsSyncUp])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
    [(BRCProblemReport *)self->_problemReport setPendingRequestID:v5];

    v6 = [(BRCProblemReport *)self->_problemReport copy];
    [(BRCProblemReport *)self->_problemReport setNeedsSyncUp:0];
    [(BRCClientZone *)self setNeedsSave:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)syncedDownZoneHealthRequestID:(int64_t)d
{
  v17 = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->super._db assertOnQueue];
  pendingRequestID = [(BRCProblemReport *)self->_problemReport pendingRequestID];

  if (pendingRequestID)
  {
    pendingRequestID2 = [(BRCProblemReport *)self->_problemReport pendingRequestID];
    longLongValue = [pendingRequestID2 longLongValue];

    if (longLongValue <= d)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(BRCPrivateClientZone *)self syncedDownZoneHealthRequestID:v10, v11];
      }

      [(BRCProblemReport *)self->_problemReport setPendingRequestID:0];
    }

    else
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        selfCopy = self;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] problem report for %@ wasn't acked%@", &v13, 0x16u);
      }

      [(BRCProblemReport *)self->_problemReport setPendingRequestID:0];
      [(BRCProblemReport *)self->_problemReport setNeedsSyncUp:1];
    }
  }

  [(BRCClientZone *)self setNeedsSave:1];
  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)resetFrequencyIsTooHigh
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] now];
  lastResets = self->_lastResets;
  if (!lastResets)
  {
    v21 = [MEMORY[0x277CBEB18] arrayWithObject:v3];
    v22 = self->_lastResets;
    self->_lastResets = v21;

    goto LABEL_9;
  }

  [(NSMutableArray *)lastResets addObject:v3];
  v5 = [(NSMutableArray *)self->_lastResets count];
  v6 = [BRCUserDefaults defaultsForMangledID:0];
  healthZoneMaxNumberOfResets = [v6 healthZoneMaxNumberOfResets];

  if (v5 <= healthZoneMaxNumberOfResets)
  {
LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  v8 = [(NSMutableArray *)self->_lastResets objectAtIndex:0];
  [v3 timeIntervalSinceDate:v8];
  v10 = v9;
  v11 = [BRCUserDefaults defaultsForMangledID:0];
  [v11 healthZoneTimeIntervalForMaxNumberOfResets];
  v13 = v12;

  if (v10 >= v13)
  {
    [(NSMutableArray *)self->_lastResets removeObjectAtIndex:0];
    goto LABEL_9;
  }

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [BRCUserDefaults defaultsForMangledID:0];
    healthZoneMaxNumberOfResets2 = [v16 healthZoneMaxNumberOfResets];
    v18 = [BRCUserDefaults defaultsForMangledID:0];
    [v18 healthZoneTimeIntervalForMaxNumberOfResets];
    v25 = 134218498;
    v26 = healthZoneMaxNumberOfResets2;
    v27 = 2048;
    v28 = v19;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Zone has resetted more than %lu times during the last %f seconds%@", &v25, 0x20u);
  }

  [(NSMutableArray *)self->_lastResets removeObjectAtIndex:0];
  v20 = 1;
LABEL_10:

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)syncedDownZoneHealthState:(id)state
{
  v26 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  [(BRCPQLConnection *)self->super._db assertOnQueue];
  v6 = self->_zoneHealthState;
  objc_storeStrong(&self->_zoneHealthState, state);
  [(BRCClientZone *)self setNeedsSave:1];
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    zoneHealthState = self->_zoneHealthState;
    v18 = 138413058;
    selfCopy = self;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = zoneHealthState;
    v24 = 2112;
    v25 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] zone-health changed for %@ previous %@ new %@%@", &v18, 0x2Au);
  }

  if (-[BRCServerZoneHealthState state](v6, "state") >= 1 && ![stateCopy state])
  {
    problemReport = self->_problemReport;
    if (problemReport && [(BRCProblemReport *)problemReport shouldResetAfterFixingState]|| (self->super._state & 0x10000) != 0)
    {
      if ([(BRCPrivateClientZone *)self resetFrequencyIsTooHigh])
      {
        [(BRCPrivateClientZone *)self reportProblemWithType:19 recordName:0];
      }

      else
      {
        v15 = brc_bread_crumbs();
        v16 = brc_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412290;
          selfCopy = v15;
          _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] We had a problem and the zone is healthy again, resetting the zone%@", &v18, 0xCu);
        }

        [(BRCClientZone *)self scheduleResetServerAndClientTruthsForReason:@"zone became healthy"];
      }

      goto LABEL_5;
    }

    v11 = self->_problemReport;
    if (v11 && ![(BRCProblemReport *)v11 shouldResetAfterFixingState])
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        selfCopy = v12;
        v14 = "[WARNING] We had a problem and the zone is healthy again, no need to reset the zone%@";
        goto LABEL_20;
      }
    }

    else
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        selfCopy = v12;
        v14 = "[WARNING] Server told us the zone is healthy again, but we didn't have a problem%@";
LABEL_20:
        _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, v14, &v18, 0xCu);
      }
    }
  }

LABEL_5:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)zoneHealthWasReset
{
  [(BRCPQLConnection *)self->super._db assertOnQueue];
  zoneHealthState = self->_zoneHealthState;
  self->_zoneHealthState = 0;

  [(BRCProblemReport *)self->_problemReport setNeedsSyncUp:1];

  [(BRCClientZone *)self setNeedsSave:1];
}

- (BOOL)recomputeAppSyncBlockState
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = +[BRCCloudDocsAppsMonitor cloudDocsAppsMonitor];
  hasFetchedInitialApps = [v3 hasFetchedInitialApps];

  isSyncBlockedBecauseAppNotInstalled = [(BRCClientZone *)self isSyncBlockedBecauseAppNotInstalled];
  v6 = isSyncBlockedBecauseAppNotInstalled;
  if (hasFetchedInitialApps)
  {
    mangledID = [(BRCClientZone *)self mangledID];
    v8 = [(BRCClientZone *)self shouldSyncMangledID:mangledID];
  }

  else
  {
    v8 = !isSyncBlockedBecauseAppNotInstalled;
  }

  memset(v28, 0, sizeof(v28));
  __brc_create_section(0, "[BRCPrivateClientZone recomputeAppSyncBlockState]", 404, 0, v28);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v31 = v28[0];
    v32 = 2112;
    selfCopy3 = self;
    v34 = 2112;
    v35 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx recomputing app sync block state for %@%@", buf, 0x20u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_appLibraries;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v12)
  {
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v24 + 1) + 8 * v14++) recomputeShouldEvictState];
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v12);
  }

  v15 = v6 ^ v8;
  if ((v6 ^ v8))
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v22 = "enabled";
      *buf = 136315650;
      if (v6)
      {
        v22 = "disabled";
      }

      v31 = v22;
      v32 = 2112;
      selfCopy3 = self;
      v34 = 2112;
      v35 = v16;
      _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] sync remaining %s for %@%@", buf, 0x20u);
    }
  }

  else
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v23 = "disabled";
      *buf = 136315650;
      if (v8)
      {
        v23 = "enabled";
      }

      v31 = v23;
      v32 = 2112;
      selfCopy3 = self;
      v34 = 2112;
      v35 = v18;
      _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] updating sync state to be %s for %@%@", buf, 0x20u);
    }

    if (v8)
    {
      [(BRCClientZone *)self clearStateBits:4096];
    }

    else
    {
      [(BRCClientZone *)self setStateBits:4096];
    }

    [(BRCClientZone *)self setNeedsSave:1, v24];
  }

  __brc_leave_section(v28);
  v20 = *MEMORY[0x277D85DE8];
  return v15 ^ 1;
}

- (id)serverAliasByUnsaltedBookmarkData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    [BRCPrivateClientZone serverAliasByUnsaltedBookmarkData:];
  }

  db = self->super._db;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__BRCPrivateClientZone_serverAliasByUnsaltedBookmarkData___block_invoke;
  v8[3] = &unk_2784FF910;
  v8[4] = self;
  v6 = [(BRCPQLConnection *)db fetchObject:v8 sql:@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE item_filename = %@ AND item_type = 3 AND zone_rowid = %@", dataCopy, self->super._dbRowID];

  return v6;
}

id __58__BRCPrivateClientZone_serverAliasByUnsaltedBookmarkData___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 session];
  v7 = [v6 newServerItemFromPQLResultSet:v5 error:a3];

  return v7;
}

- (BOOL)isDocumentScopePublic
{
  defaultAppLibrary = [(BRCPrivateClientZone *)self defaultAppLibrary];
  containerMetadata = [defaultAppLibrary containerMetadata];
  isDocumentScopePublic = [containerMetadata isDocumentScopePublic];

  return isDocumentScopePublic;
}

- (void)_checkResultSetIsEmpty:(id)empty logToFile:(__sFILE *)file reason:(id)reason result:(BOOL *)result
{
  v26 = *MEMORY[0x277D85DE8];
  emptyCopy = empty;
  reasonCopy = reason;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [emptyCopy enumerateObjectsOfClass:objc_opt_class()];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        *result = 0;
        fprintf(file, "itemID %s %s\n", [v16 UTF8String], objc_msgSend(reasonCopy, "UTF8String"));
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  error = [emptyCopy error];

  if (error)
  {
    *result = 0;
    error2 = [emptyCopy error];
    v19 = [error2 description];
    fprintf(file, "SQL error: %s\n", [v19 UTF8String]);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)validateStructureLoggingToFile:(__sFILE *)file db:(id)db
{
  dbCopy = db;
  v19 = 1;
  defaultAppLibrary = [(BRCPrivateClientZone *)self defaultAppLibrary];
  rootItemID = [defaultAppLibrary rootItemID];

  fprintf(file, "client truth structure validation (%s)\n=================================\n", [(NSString *)self->super._zoneName UTF8String]);
  if (([dbCopy execute:@"DROP TABLE IF EXISTS items_checks"] & 1) != 0 && (objc_msgSend(dbCopy, "execute:", @"CREATE TABLE items_checks (item_id blob PRIMARY KEY, depth integer not null)") & 1) != 0 && (objc_msgSend(dbCopy, "execute:", @"CREATE INDEX items_checks__depth__idx ON items_checks (depth)") & 1) != 0 && objc_msgSend(dbCopy, "execute:", @"INSERT INTO items_checks (item_id, depth) VALUES (%@, 0)", rootItemID))
  {
    v9 = 0;
    while ([dbCopy changes])
    {
      v10 = [dbCopy execute:{@"INSERT INTO items_checks    SELECT c.item_id, %lld      FROM items_checks AS p INNER JOIN client_items AS c ON (p.item_id = c.item_parent_id)     WHERE zone_rowid = %@ AND p.depth = %lld", v9 + 1, self->super._dbRowID, v9}];
      ++v9;
      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v15 = [dbCopy fetch:{@"SELECT item_id FROM client_items WHERE zone_rowid = %@   AND item_id NOT IN(SELECT item_id FROM items_checks)", self->super._dbRowID}];
    [(BRCPrivateClientZone *)self _checkResultSetIsEmpty:v15 logToFile:file reason:@"is an orphan or part of a cycle" result:&v19];
    v16 = [dbCopy fetch:{@"SELECT c.item_id      FROM client_items AS c INNER JOIN client_items AS p ON (c.item_parent_id = p.item_id)     WHERE c.item_state != 1 AND p.item_state = 1       AND c.zone_rowid = %@ AND p.zone_rowid = %@", self->super._dbRowID, self->super._dbRowID}];

    [(BRCPrivateClientZone *)self _checkResultSetIsEmpty:v16 logToFile:file reason:@"is a live item parented to a tombstone" result:&v19];
    v17 = [dbCopy fetch:{@"SELECT c.item_id      FROM client_items AS c INNER JOIN client_items AS p ON (c.item_parent_id = p.item_id)     WHERE p.item_type IN (1, 2, 8, 5, 6, 7)       AND c.zone_rowid = %@ AND p.zone_rowid = %@", self->super._dbRowID, self->super._dbRowID}];

    [(BRCPrivateClientZone *)self _checkResultSetIsEmpty:v17 logToFile:file reason:@"is parented to a document" result:&v19];
    v18 = [dbCopy fetch:{@"SELECT o.item_id       FROM client_items AS o  WHERE zone_rowid = %@ AND EXISTS(SELECT 1 FROM client_items AS n WHERE ((   n.item_parent_id = o.item_parent_id      AND item_filename = IFNULL(o.item_localname, o.item_filename)      AND item_localname IS NULL)  OR(   n.item_parent_id = o.item_parent_id      AND item_localname = IFNULL(o.item_localname, o.item_filename)) )  AND n.item_id != o.item_id  AND n.zone_rowid = %@)", self->super._dbRowID, self->super._dbRowID}];

    [(BRCPrivateClientZone *)self _checkResultSetIsEmpty:v18 logToFile:file reason:@"is parented to a document" result:&v19];
    if (v19 == 1)
    {
      fputs("OK\n", file);
    }

    fputc(10, file);
    v13 = v19;
  }

  else
  {
LABEL_8:
    lastError = [dbCopy lastError];
    v12 = [lastError description];
    fprintf(file, "SQL error: %s\n", [v12 UTF8String]);

    v13 = 0;
  }

  return v13 & 1;
}

- (BOOL)validateItemsLoggingToFile:(__sFILE *)file db:(id)db
{
  v21 = *MEMORY[0x277D85DE8];
  dbCopy = db;
  fprintf(file, "local items checks (%s)\n===================\n", [(NSString *)self->super._zoneName UTF8String]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(BRCClientZone *)self itemsEnumeratorWithDB:dbCopy];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v8)
  {

LABEL_11:
    fputs("OK\n", file);
    v13 = 1;
    goto LABEL_12;
  }

  v9 = v8;
  v10 = *v17;
  v11 = 1;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v11 &= [*(*(&v16 + 1) + 8 * i) validateLoggingToFile:file];
    }

    v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v9);

  if (v11)
  {
    goto LABEL_11;
  }

  v13 = 0;
LABEL_12:
  fputc(10, file);

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (unsigned)pcsChainStateForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isNonDesktopRoot])
  {
    session = self->super._session;
    appLibraryRowID = [itemCopy appLibraryRowID];
    v7 = [(BRCAccountSession *)session appLibraryByRowID:appLibraryRowID];
    if (([v7 state] & 0x8000000) != 0)
    {
      intValue = 4;
    }

    else
    {
      intValue = 1;
    }
  }

  else
  {
    v9 = [(BRCClientZone *)self db];
    dbRowID = [(BRCClientZone *)self dbRowID];
    appLibraryRowID = [v9 numberWithSQL:{@"SELECT pcs_state FROM server_items WHERE item_id = %@   AND zone_rowid = %@ LIMIT 1", itemCopy, dbRowID}];

    intValue = [appLibraryRowID intValue];
  }

  return intValue;
}

- (BOOL)parentIDHasLiveUnchainedChildren:(id)children
{
  childrenCopy = children;
  v5 = [(BRCClientZone *)self db];
  dbRowID = [(BRCClientZone *)self dbRowID];
  v7 = [v5 fetch:{@"SELECT item_type, pcs_state FROM server_items WHERE item_id = %@ and zone_rowid = %@", childrenCopy, dbRowID}];

  if (![v7 next] || objc_msgSend(v7, "integerAtIndex:", 0) != 9 || (bOOLValue = 1, objc_msgSend(v7, "integerAtIndex:", 1) == 2))
  {
    v9 = [(BRCClientZone *)self db];
    dbRowID2 = [(BRCClientZone *)self dbRowID];
    v11 = [v9 numberWithSQL:{@"SELECT 1 FROM server_items WHERE item_parent_id = %@   AND zone_rowid = %@   AND pcs_state NOT IN (2, 3)   AND item_state = 0 LIMIT 1", childrenCopy, dbRowID2}];

    bOOLValue = [v11 BOOLValue];
  }

  return bOOLValue;
}

- (id)unchainedItemInfoInServerTruthEnumeratorParentedTo:(id)to
{
  toCopy = to;
  v5 = [BRCPQLInjectionPCSChainShareAliasesWhereClause alloc];
  mangledID = [(BRCServerZone *)self->super._serverZone mangledID];
  v7 = [BRCUserDefaults defaultsForMangledID:mangledID];
  v8 = -[BRCPQLInjectionBasedOnConditionBase initWithCondition:](v5, "initWithCondition:", [v7 pcsChainShareAliases]);

  v9 = [(BRCClientZone *)self db];
  dbRowID = [(BRCClientZone *)self dbRowID];
  v11 = [v9 fetch:{@"SELECT item_id, item_type, item_stat_ckinfo, version_ckinfo, pcs_state, item_alias_target FROM server_items WHERE item_parent_id = %@   AND zone_rowid = %@   AND pcs_state NOT IN (2, 3)   AND item_state = 0 %@", toCopy, dbRowID, v8}];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __97__BRCPrivateClientZone_BRCPCSChainAdditions__unchainedItemInfoInServerTruthEnumeratorParentedTo___block_invoke;
  v15[3] = &unk_2784FF938;
  v15[4] = self;
  v16 = toCopy;
  v12 = toCopy;
  v13 = [v11 enumerateObjects:v15];

  return v13;
}

BRCPCSChainInfo *__97__BRCPrivateClientZone_BRCPCSChainAdditions__unchainedItemInfoInServerTruthEnumeratorParentedTo___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectOfClass:objc_opt_class() atIndex:0];
  v5 = 1;
  v6 = [v3 intAtIndex:1];
  v27 = [v3 objectOfClass:objc_opt_class() atIndex:2];
  v26 = [v3 objectOfClass:objc_opt_class() atIndex:3];
  v25 = [v3 intAtIndex:4];
  if (v6 == 3)
  {
    v7 = [v3 stringAtIndex:5];
    v28 = 0;
    v29 = 0;
    v8 = [v7 parseUnsaltedBookmarkDataWithItemID:0 mangledID:&v29 error:&v28];
    v9 = v28;
    if ((v8 & 1) == 0)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v31 = v7;
        v32 = 2112;
        v33 = v9;
        v34 = 2112;
        v35 = v10;
        _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't parse unsalted bookmark data %@ - %@%@", buf, 0x20u);
      }
    }

    if (v29)
    {
      v5 = [v29 isShared];
    }

    else
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        __97__BRCPrivateClientZone_BRCPCSChainAdditions__unchainedItemInfoInServerTruthEnumeratorParentedTo___block_invoke_cold_1();
      }
    }
  }

  v14 = [*(a1 + 32) db];
  v15 = [*(a1 + 32) dbRowID];
  v16 = [v14 fetch:{@"SELECT item_stat_ckinfo, version_ckinfo FROM client_items WHERE item_id = %@  AND zone_rowid = %@  AND (item_local_diffs & %lld) != 0", v4, v15, 0x1000000000000000}];

  if ([v16 next])
  {
    v17 = [v16 objectOfClass:objc_opt_class() atIndex:0];
    v18 = [v16 objectOfClass:objc_opt_class() atIndex:1];
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v31 = v27;
      v32 = 2112;
      v33 = v26;
      v34 = 2112;
      v35 = v17;
      v36 = 2112;
      v37 = v18;
      v38 = 2112;
      v39 = v19;
      _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] Overriding structural and content info from (%@, %@) -> (%@, %@) because the item is OOB sync%@", buf, 0x34u);
    }
  }

  else
  {
    v18 = v26;
    v17 = v27;
  }

  LODWORD(v24) = v25;
  v21 = [[BRCPCSChainInfo alloc] initWithItemID:v4 parentID:*(a1 + 40) structuralCKInfo:v17 contentCKInfo:v18 itemType:v6 aliasTargetZoneIsShared:v5 chainState:v24];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)privateServerZone
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  OUTLINED_FUNCTION_1_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: _serverZone%@", v8, v9, v10, v11, 2u);
  }

  *a2 = *self;
  v12 = *MEMORY[0x277D85DE8];
}

- (void)defaultAppLibrary
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  OUTLINED_FUNCTION_1_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: _defaultAppLibrary%@", v8, v9, v10, v11, 2u);
  }

  *a2 = *self;
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setServerZone:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  OUTLINED_FUNCTION_1_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: [serverZone isKindOfClass:[BRCPrivateServerZone class]]%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncedDownZoneHealthRequestID:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] problem report for %@ completed%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)serverAliasByUnsaltedBookmarkData:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  OUTLINED_FUNCTION_1_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: unsaltedBookmarkData%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __97__BRCPrivateClientZone_BRCPCSChainAdditions__unchainedItemInfoInServerTruthEnumeratorParentedTo___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end