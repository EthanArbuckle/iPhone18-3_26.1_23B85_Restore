@interface BRCClientZone
- (BOOL)_checkIfEnumeratorContainsNonDiscretionaryOp:(id)op;
- (BOOL)_crossZoneMoveDocumentsToZone:(id)zone;
- (BOOL)_deleteRelevantPackageItemsWithDB:(id)b error:(id *)error;
- (BOOL)_dumpItemsToContext:(id)context includeAllItems:(BOOL)items error:(id *)error;
- (BOOL)_hasNonDiscretionaryServerStitchingOperation;
- (BOOL)_isIdle;
- (BOOL)_isSideSyncOperationBlockedWithName:(id)name isWaitingOnShareAccept:(BOOL)accept;
- (BOOL)_performHardResetOnClientItemsAndWantsUnlink:(BOOL)unlink db:(id)db error:(id *)error;
- (BOOL)_postHardResetHandlingWithDB:(id)b completionBlock:(id)block error:(id *)error;
- (BOOL)_resetItemsTable;
- (BOOL)_shouldFailSyncDownWaitImmediately;
- (BOOL)dumpActivityToContext:(id)context includeExpensiveActivity:(BOOL)activity error:(id *)error;
- (BOOL)dumpStatusToContext:(id)context error:(id *)error;
- (BOOL)enhancedDrivePrivacyEnabled;
- (BOOL)handleSaltingErrorIfNeeded:(id)needed record:(id)record;
- (BOOL)handleZoneLevelErrorIfNeeded:(id)needed forItemCreation:(BOOL)creation;
- (BOOL)hasHighPriorityWatchers;
- (BOOL)isCloudDocsZone;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToClientZone:(id)zone;
- (BOOL)isForeground;
- (BOOL)isSyncBlocked;
- (BOOL)removeItemIsDownloadedBlock:(id)block;
- (BOOL)removeItemOnDiskBlock:(id)block;
- (BOOL)removeSyncDownForItemIDBlock:(id)block;
- (BOOL)setStateBits:(unsigned int)bits;
- (BOOL)shouldSyncMangledID:(id)d;
- (BOOL)validateItemsLoggingToFile:(__sFILE *)file db:(id)db;
- (BOOL)validateStructureLoggingToFile:(__sFILE *)file db:(id)db;
- (BRCClientZone)init;
- (BRCClientZone)initWithMangledID:(id)d dbRowID:(id)iD plist:(id)plist session:(id)session initialCreation:(BOOL)creation;
- (BRCItemID)rootItemID;
- (NSArray)syncThrottles;
- (NSMutableDictionary)plist;
- (char)serverItemTypeByItemID:(id)d dbFacade:(id)facade;
- (id)_cancelAllOperationsForReset;
- (id)asPrivateClientZone;
- (id)asSharedClientZone;
- (id)cancelFetchParentChainOperationAndReschedule:(id)reschedule;
- (id)cancelListOperationAndReschedule:(id)reschedule;
- (id)cancelLocateRecordOperationAndReschedule:(id)reschedule;
- (id)childBaseSaltForItemID:(id)d;
- (id)contentBoundaryKeyForItemID:(id)d withDB:(id)b;
- (id)deadItemByParentID:(id)d andUnbouncedLogicalName:(id)name;
- (id)descriptionWithContext:(id)context;
- (id)directUnsaltedNonAliasItemsInServerTruthEnumeratorParentedTo:(id)to;
- (id)directoryItemIDsCreatedLastSyncUp;
- (id)documentsNotIdleEnumeratorWithStartingRowID:(unint64_t)d batchSize:(unint64_t)size;
- (id)fetchDirectoryContentsIfNecessary:(id)necessary isUserWaiting:(BOOL)waiting rescheduleApplyScheduler:(BOOL)scheduler;
- (id)insertParentChainForItem:(id)item;
- (id)itemByFileID:(unint64_t)d dbFacade:(id)facade;
- (id)itemByItemID:(id)d dbFacade:(id)facade;
- (id)itemByParentID:(id)d andLogicalName:(id)name excludingItemID:(id)iD;
- (id)itemByRowID:(unint64_t)d;
- (id)itemCountPendingUploadOrSyncUpAndReturnError:(id *)error;
- (id)itemsEnumeratorWithDB:(id)b;
- (id)itemsEnumeratorWithParentID:(id)d andLogicalName:(id)name;
- (id)itemsParentedToThisZoneButLivingInAnOtherZone;
- (id)itemsWithInFlightDiffsEnumerator;
- (id)liveItemByParentID:(id)d andCaseInsensitiveLogicalName:(id)name excludingItemGlobalID:(id)iD;
- (id)liveItemByParentID:(id)d andLogicalName:(id)name excludingItemGlobalID:(id)iD;
- (id)popDownloadedBlockForItemID:(id)d;
- (id)popOnDiskBlockForItemID:(id)d;
- (id)serverItemByItemID:(id)d dbFacade:(id)facade;
- (id)serverItemByParentID:(id)d andLogicalName:(id)name;
- (id)serverItemByRank:(int64_t)rank;
- (id)sizeOfItemsNeedingSyncUpOrUploadAndReturnError:(id *)error;
- (id)syncDownAnalyticsError;
- (id)syncDownImmediately;
- (id)syncUpAnalyticsError;
- (int64_t)throttleHashWithItemID:(id)d;
- (unint64_t)allocateSyncUpRequestID;
- (unsigned)_activateState:(unsigned int)state origState:(unsigned int)origState;
- (unsigned)_appLibrariesState;
- (unsigned)saltingStateForItemID:(id)d;
- (unsigned)syncUpBatchSize;
- (void)_allItemsDidUploadWithError:(id)error;
- (void)_appendToString:(id)string descriptionOfFieldNamed:(id)named inResultSet:(id)set pos:(int *)pos containsSize:(BOOL)size context:(id)context;
- (void)_blockSyncDownOnStitchingOperations;
- (void)_cancelOutOfBandOperations;
- (void)_decreaseSyncUpBatchSizeAfterError;
- (void)_deleteJobsMatchingServerZone;
- (void)_didSyncDownRequestID:(unint64_t)d maxApplyRank:(int64_t)rank caughtUpWithServer:(BOOL)server syncDownDate:(id)date isFixingState:(BOOL)state;
- (void)_enumerateAndClearLocateBlocksForRecordID:(id)d exists:(BOOL)exists;
- (void)_finishedReset:(unint64_t)reset signpostTracker:(id)tracker completionHandler:(id)handler;
- (void)_fixupEnhancedDrivePrivacyState;
- (void)_fixupMissingCrossMovedItems;
- (void)_flushIdleBlocksIfNeeded;
- (void)_forDBUpgrade_setStateBits:(unsigned int)bits clearStateBits:(unsigned int)stateBits;
- (void)_increaseSyncUpBatchSizeAfterSuccess;
- (void)_isIdle;
- (void)_learnCKInfosFromSavedRecords:(id)records isOutOfBandModifyRecords:(BOOL)modifyRecords basedOnOriginalVersion:(BOOL)version;
- (void)_markLatestSyncRequestFailed;
- (void)_markRequestIDAcked;
- (void)_performAfterResetServerAndClientSharedTruthsAndUnlinkData:(id)data;
- (void)_performAfterResetServerAndClientTruthsAndUnlinkData:(id)data;
- (void)_performAfterResetServerAndClientTruthsAndUnlinkDataAndPurgeTheZone:(id)zone;
- (void)_performResetAndWantsUnlink:(BOOL)unlink clientTruthBlock:(id)block completionBlock:(id)completionBlock;
- (void)_prepareForForegroundSyncDown;
- (void)_recreateSyncBudgetsAndThrottlesIfNeeded;
- (void)_registerFetchParentChainOperation:(id)operation;
- (void)_registerListOperation:(id)operation shareAcceptOperation:(id)acceptOperation;
- (void)_registerLocateRecordOperation:(id)operation;
- (void)_registerOperation:(id)operation throttler:(id)throttler;
- (void)_removeAllShareAcceptanceBlocks;
- (void)_removeDownloadedBlockToPerformForItemID:(id)d;
- (void)_removeOnDiskBlockToPerformForItemID:(id)d;
- (void)_reset:(unint64_t)_reset completionHandler:(id)handler;
- (void)_resetAndDeleteServerTruthData;
- (void)_resetChildBasehashSaltsIfNeeded;
- (void)_scheduleZoneResetForUninstalledAppIfNecessary;
- (void)_shouldFailSyncDownWaitImmediately;
- (void)_startSync;
- (void)_syncUpOfRecords:(id)records createdAppLibraryNames:(id)names didFinishWithError:(id)error errorWasOnPCSChainedItem:(BOOL)item throttledItemInBatch:(BOOL)batch;
- (void)addOutOfBandOperation:(id)operation;
- (void)addSyncDownDependency:(id)dependency;
- (void)asPrivateClientZone;
- (void)asSharedClientZone;
- (void)beginSyncBubbleActivityIfNecessary;
- (void)cancelReset;
- (void)clearAndRefetchRecentAndFavoriteDocuments;
- (void)clearSyncStateBits:(unsigned int)bits;
- (void)clearSyncUpError;
- (void)close;
- (void)dealloc;
- (void)didApplyTombstoneForRank:(int64_t)rank;
- (void)didClearOutOfQuota;
- (void)didGCTombstoneRanks:(id)ranks;
- (void)disconnectNSMDQListenerAsync;
- (void)fetchRecentAndFavoriteDocuments:(BOOL)documents;
- (void)flushAppliedTombstones;
- (void)handleRootRecordDeletion;
- (void)itemMovedIntoShareInThisZone:(id)zone associatedItemID:(id)d;
- (void)networkReachabilityChanged:(BOOL)changed;
- (void)notifyClient:(id)client afterNextSyncDown:(id)down;
- (void)notifyClient:(id)client whenFaultingIsDone:(id)done;
- (void)notifyClient:(id)client whenIdle:(id)idle;
- (void)performBlock:(id)block whenItemWithIDIsDownloaded:(id)downloaded;
- (void)performBlock:(id)block whenItemWithRecordIDIsOnDisk:(id)disk;
- (void)performBlock:(id)block whenLocatingCompletesForItemWithRecordID:(id)d;
- (void)performBlock:(id)block whenSyncDownCompletesLookingForItemID:(id)d;
- (void)prepareDirectoryForSyncUp:(id)up;
- (void)recomputeAllItemsDidUploadState;
- (void)registerAllItemsDidUploadTracker:(id)tracker;
- (void)removeOutOfBandOperation:(id)operation;
- (void)removeSyncDownDependency:(id)dependency;
- (void)resetSyncBudgetAndThrottle;
- (void)resume;
- (void)rootItemID;
- (void)scheduleApplyWithLocalItem:(id)item serverItem:(id)serverItem;
- (void)scheduleReset:(unint64_t)reset completionHandler:(id)handler;
- (void)scheduleResetServerAndClientTruthsForReason:(id)reason completionHandler:(id)handler;
- (void)scheduleSyncDownFirst;
- (void)scheduleSyncDownForOOBModifyRecordsAckForItemID:(id)d;
- (void)scheduleSyncDownWithGroup:(id)group;
- (void)scheduleSyncUp;
- (void)setNeedsSave:(BOOL)save;
- (void)setSyncStateBits:(unsigned int)bits;
- (void)signalFaultingWatchersWithError:(id)error;
- (void)syncDownImmediately;
- (void)syncDownOperation:(id)operation didFinishWithError:(id)error status:(int64_t)status;
- (void)unregisterAllItemsDidUploadTracker:(id)tracker;
- (void)updateWithPlist:(id)plist;
@end

@implementation BRCClientZone

- (BOOL)isSyncBlocked
{
  if (([(BRCClientZone *)self state]& 0x201000) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return ([(BRCServerZone *)self->_serverZone state]>> 1) & 1;
  }

  return v3;
}

- (void)_flushIdleBlocksIfNeeded
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  mangledID = [v0 mangledID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)scheduleSyncUp
{
  [(BRCPQLConnection *)self->_db assertOnQueue];
  [(BRCClientZone *)self setSyncStateBits:1];
  self->_syncUpRetryAfter = 0;
}

- (BOOL)isCloudDocsZone
{
  isPrivateZone = [(BRCClientZone *)self isPrivateZone];
  if (isPrivateZone)
  {
    zoneName = self->_zoneName;
    v5 = *MEMORY[0x277CFAD68];

    LOBYTE(isPrivateZone) = [(NSString *)zoneName isEqualToString:v5];
  }

  return isPrivateZone;
}

- (BOOL)isForeground
{
  serverZone = [(BRCClientZone *)self serverZone];
  metadataSyncContextIfExists = [serverZone metadataSyncContextIfExists];
  isForeground = [metadataSyncContextIfExists isForeground];

  return isForeground;
}

- (NSMutableDictionary)plist
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:12];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_state];
  [v3 setObject:v4 forKeyedSubscript:@"state"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_requestID];
  [v3 setObject:v5 forKeyedSubscript:@"requestID"];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_lastInsertedRank];
  [v3 setObject:v6 forKeyedSubscript:@"lastApplyRank"];

  appliedTombstoneRanks = self->_appliedTombstoneRanks;
  if (appliedTombstoneRanks)
  {
    [v3 setObject:appliedTombstoneRanks forKeyedSubscript:@"appliedTombstoneRanks"];
  }

  syncUpThrottle = self->_syncUpThrottle;
  if (syncUpThrottle)
  {
    [v3 setObject:syncUpThrottle forKeyedSubscript:@"syncUpThrottle"];
  }

  syncUpBudget = self->_syncUpBudget;
  if (syncUpBudget)
  {
    [v3 setObject:syncUpBudget forKeyedSubscript:@"syncUpBudget"];
  }

  syncUpBackoffRatio = self->_syncUpBackoffRatio;
  if (syncUpBackoffRatio)
  {
    [v3 setObject:syncUpBackoffRatio forKeyedSubscript:@"syncUpBackoffRatio"];
  }

  syncDownThrottle = self->_syncDownThrottle;
  if (syncDownThrottle)
  {
    [v3 setObject:syncDownThrottle forKeyedSubscript:@"syncDownThrottle"];
  }

  lastSyncDownDate = self->_lastSyncDownDate;
  if (lastSyncDownDate)
  {
    [v3 setObject:lastSyncDownDate forKeyedSubscript:@"lastSyncDownDate"];
  }

  osNameRequiredToSync = self->_osNameRequiredToSync;
  if (osNameRequiredToSync)
  {
    [v3 setObject:osNameRequiredToSync forKeyedSubscript:@"osNameRequiredToSync"];
  }

  syncDownGroup = self->_syncDownGroup;
  if (syncDownGroup)
  {
    [v3 setObject:syncDownGroup forKeyedSubscript:@"syncDownGroup"];
  }

  appUninstalledDate = self->_appUninstalledDate;
  if (appUninstalledDate)
  {
    [v3 setObject:appUninstalledDate forKeyedSubscript:@"appUninstalledDate"];
  }

  return v3;
}

- (void)flushAppliedTombstones
{
  OUTLINED_FUNCTION_17_2(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_startSync
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: We are alreadying syncing but we tried to sync again%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (unsigned)syncUpBatchSize
{
  mangledID = [(BRCClientZone *)self mangledID];
  v4 = [BRCUserDefaults defaultsForMangledID:mangledID];
  maxRecordCountInModifyRecordsOperation = [v4 maxRecordCountInModifyRecordsOperation];

  syncUpBatchSizeMultiplier = self->_syncUpBatchSizeMultiplier;
  v7 = (syncUpBatchSizeMultiplier * maxRecordCountInModifyRecordsOperation);
  if (syncUpBatchSizeMultiplier >= 1.0)
  {
    v7 = maxRecordCountInModifyRecordsOperation;
  }

  if (v7 <= 2)
  {
    return 2;
  }

  else
  {
    return v7;
  }
}

- (unsigned)_appLibrariesState
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(BRCClientZone *)self isPrivateZone])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    asPrivateClientZone = [(BRCClientZone *)self asPrivateClientZone];
    appLibraries = [asPrivateClientZone appLibraries];

    v5 = [appLibraries countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(appLibraries);
          }

          v7 |= [*(*(&v12 + 1) + 8 * i) state];
        }

        v6 = [appLibraries countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL __27__BRCClientZone__startSync__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  brc_current_date_nsec();
  v29 = 0;
  v4 = *(a1 + 32);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  v7 = [v6 syncUpScheduler];
  LODWORD(v8) = *(a1 + 64);
  v9 = [BRCSyncUpOperation syncUpOperationForZone:v5 sessionContext:v6 syncUpCallback:v7 maxCost:&v29 retryAfter:v8];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = [MEMORY[0x277CBC4F8] br_syncUp];
  [*(*(*(a1 + 40) + 8) + 40) setGroup:v12];

  objc_storeStrong((*(a1 + 32) + 104), *(*(*(a1 + 40) + 8) + 40));
  brc_current_date_nsec();
  v13 = *(*(a1 + 32) + 104);
  if (v13)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __27__BRCClientZone__startSync__block_invoke_cold_3();
    }

    [*(a1 + 32) setSyncStateBits:4];
    objc_initWeak(&location, *(*(*(a1 + 40) + 8) + 40));
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __27__BRCClientZone__startSync__block_invoke_190;
    v25[3] = &unk_2785036F8;
    objc_copyWeak(&v27, &location);
    v25[4] = *(a1 + 32);
    v16 = v3;
    v26 = v16;
    [*(*(*(a1 + 40) + 8) + 40) setSyncUpCompletionBlock:v25];
    [v16 forceBatchStart];
    [v16 makeNextFlushFullSync];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    if (v29 < 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __27__BRCClientZone__startSync__block_invoke_cold_1();
      }

      v19 = v29 + *(a1 + 56);
    }

    else
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __27__BRCClientZone__startSync__block_invoke_cold_2();
      }

      [*(a1 + 32) clearSyncStateBits:1];
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *(*(a1 + 32) + 88) = v19;
    *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 88);
    v22 = *(*(a1 + 32) + 152);
    brc_interval_from_nsec();
    [v22 updateAfterSchedulingTaskWithMinimumDelay:v23 * 10.0];
  }

  return v13 != 0;
}

void __23__BRCClientZone_resume__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startSync];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)enhancedDrivePrivacyEnabled
{
  mangledID = [(BRCClientZone *)self mangledID];
  v4 = [BRCUserDefaults defaultsForMangledID:mangledID];
  supportsEnhancedDrivePrivacy = [v4 supportsEnhancedDrivePrivacy];

  if (!supportsEnhancedDrivePrivacy)
  {
LABEL_5:
    LOBYTE(v9) = 0;
    return v9;
  }

  mangledID2 = [(BRCClientZone *)self mangledID];
  v7 = [BRCUserDefaults defaultsForMangledID:mangledID2];
  enhancedDrivePrivacyForced = [v7 enhancedDrivePrivacyForced];

  if ((enhancedDrivePrivacyForced & 1) == 0)
  {
    mangledID3 = [(BRCClientZone *)self mangledID];
    v11 = [BRCUserDefaults defaultsForMangledID:mangledID3];
    enhancedDrivePrivacyRolledBack = [v11 enhancedDrivePrivacyRolledBack];

    if ((enhancedDrivePrivacyRolledBack & 1) == 0)
    {
      return ([(BRCClientZone *)self state]>> 22) & 1;
    }

    goto LABEL_5;
  }

  LOBYTE(v9) = 1;
  return v9;
}

- (NSArray)syncThrottles
{
  v23 = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->_db assertOnQueue];
  syncThrottles = self->_syncThrottles;
  if (syncThrottles)
  {
    v4 = syncThrottles;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    mangledID = [(BRCClientZone *)self mangledID];
    v7 = [BRCUserDefaults defaultsForMangledID:mangledID];
    syncThrottles = [v7 syncThrottles];

    v9 = [syncThrottles countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(syncThrottles);
          }

          v13 = [[BRCSyncThrottle alloc] initWithName:@"defaultSyncThrottle" andParameters:*(*(&v18 + 1) + 8 * i)];
          if (v13)
          {
            [array addObject:v13];
          }
        }

        v10 = [syncThrottles countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v14 = [array copy];
    v15 = self->_syncThrottles;
    self->_syncThrottles = v14;

    v4 = self->_syncThrottles;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)clearSyncUpError
{
  lastSyncUpError = self->_lastSyncUpError;
  self->_lastSyncUpError = 0;
  MEMORY[0x2821F96F8]();
}

void __27__BRCClientZone__startSync__block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Sync: nothing to sync up%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_fixupEnhancedDrivePrivacyState
{
  v15 = *MEMORY[0x277D85DE8];
  mangledID = [(BRCClientZone *)self mangledID];
  v4 = [BRCUserDefaults defaultsForMangledID:mangledID];
  v5 = v4;
  state = self->_state;
  if ((state & 0x400000) != 0)
  {
    if ([v4 supportsEnhancedDrivePrivacy])
    {
      state = self->_state;
      if ((state & 0x400000) == 0)
      {
        goto LABEL_2;
      }

      if (([v5 enhancedDrivePrivacyRolledBack] & 1) == 0)
      {
        state = self->_state;
        goto LABEL_2;
      }

      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 138412546;
        *&v14[4] = mangledID;
        *&v14[12] = 2112;
        *&v14[14] = v10;
        v12 = "[WARNING] Stripping enhanced drive privacy bit because it was rolled back %@%@";
LABEL_15:
        _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, v12, v14, 0x16u);
      }
    }

    else
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 138412546;
        *&v14[4] = mangledID;
        *&v14[12] = 2112;
        *&v14[14] = v10;
        v12 = "[WARNING] Stripping enhanced drive privacy bit because it's not supported on %@%@";
        goto LABEL_15;
      }
    }

    v9 = self->_state & 0xFFBFFFFF;
LABEL_17:
    self->_state = v9;
    [(BRCClientZone *)self setNeedsSave:1, *v14, *&v14[16]];
    goto LABEL_18;
  }

LABEL_2:
  if ((state & 0x400000) == 0 && [v5 supportsEnhancedDrivePrivacy] && objc_msgSend(v5, "enhancedDrivePrivacyForced"))
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 138412546;
      *&v14[4] = mangledID;
      *&v14[12] = 2112;
      *&v14[14] = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] Adding enhanced drive privacy bit because it's forced on %@%@", v14, 0x16u);
    }

    v9 = self->_state | 0x400000;
    goto LABEL_17;
  }

LABEL_18:

  v13 = *MEMORY[0x277D85DE8];
}

- (id)directUnsaltedNonAliasItemsInServerTruthEnumeratorParentedTo:(id)to
{
  toCopy = to;
  v5 = [(BRCClientZone *)self db];
  dbRowID = [(BRCClientZone *)self dbRowID];
  v7 = [v5 fetch:{@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE item_parent_id = %@ AND basehash_salt_validation_key IS NULL AND item_type != 3 and zone_rowid = %@", toCopy, dbRowID}];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __104__BRCClientZone_BRCBaseHashSaltAdditions__directUnsaltedNonAliasItemsInServerTruthEnumeratorParentedTo___block_invoke;
  v10[3] = &unk_2784FF910;
  v10[4] = self;
  v8 = [v7 enumerateObjects:v10];

  return v8;
}

id __104__BRCClientZone_BRCBaseHashSaltAdditions__directUnsaltedNonAliasItemsInServerTruthEnumeratorParentedTo___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 session];
  v7 = [v6 newServerItemFromPQLResultSet:v5 error:a3];

  return v7;
}

- (unsigned)saltingStateForItemID:(id)d
{
  dCopy = d;
  if ([dCopy isNonDesktopRoot])
  {
    if (![(BRCClientZone *)self isPrivateZone])
    {
      [BRCClientZone(BRCBaseHashSaltAdditions) saltingStateForItemID:];
    }

    session = [(BRCClientZone *)self session];
    appLibraryRowID = [dCopy appLibraryRowID];

    v7 = [session appLibraryByRowID:appLibraryRowID];

    if (![v7 rootRecordCreated])
    {
      v11 = -1;
      goto LABEL_10;
    }

    saltingState = [v7 saltingState];
  }

  else
  {
    v9 = [(BRCClientZone *)self db];
    dbRowID = [(BRCClientZone *)self dbRowID];
    v7 = [v9 numberWithSQL:{@"SELECT salting_state FROM server_items WHERE item_id = %@ AND zone_rowid = %@ LIMIT 1", dCopy, dbRowID}];

    if (!v7)
    {
      return -1;
    }

    saltingState = [v7 intValue];
  }

  v11 = saltingState;
LABEL_10:

  return v11;
}

- (id)childBaseSaltForItemID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy isNonDesktopRoot])
  {
    if (![(BRCClientZone *)self isPrivateZone])
    {
      [BRCClientZone(BRCBaseHashSaltAdditions) childBaseSaltForItemID:];
    }

    session = [(BRCClientZone *)self session];
    appLibraryRowID = [dCopy appLibraryRowID];
    v7 = [session appLibraryByRowID:appLibraryRowID];
    childBasehashSalt = [v7 childBasehashSalt];
  }

  else
  {
    session = [(BRCClientZone *)self db];
    appLibraryRowID = [(BRCClientZone *)self dbRowID];
    childBasehashSalt = [session dataWithSQL:{@"SELECT child_basehash_salt FROM server_items WHERE item_id = %@ AND zone_rowid = %@ LIMIT 1", dCopy, appLibraryRowID}];
  }

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    brc_truncatedSHA256 = [childBasehashSalt brc_truncatedSHA256];
    brc_hexadecimalString = [brc_truncatedSHA256 brc_hexadecimalString];
    v15 = [dCopy debugDescription];
    *buf = 138412802;
    v17 = brc_hexadecimalString;
    v18 = 2112;
    v19 = v15;
    v20 = 2112;
    v21 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Found child basehash salt %@ from database for %@%@", buf, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return childBasehashSalt;
}

- (void)cancelReset
{
  if (self->_resetTimer)
  {
    resetQueue = [(BRCAccountSession *)self->_session resetQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__BRCClientZone_BRCZoneReset__cancelReset__block_invoke;
    block[3] = &unk_2784FF450;
    block[4] = self;
    dispatch_sync(resetQueue, block);
  }
}

void __42__BRCClientZone_BRCZoneReset__cancelReset__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 304);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 304);
    *(v3 + 304) = 0;
  }
}

- (void)scheduleReset:(unint64_t)reset completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  resetQueue = [(BRCAccountSession *)self->_session resetQueue];
  memset(v19, 0, sizeof(v19));
  __brc_create_section(0, "[BRCClientZone(BRCZoneReset) scheduleReset:completionHandler:]", 97, 0, v19);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = v19[0];
    v14 = BRCPrettyPrintEnum();
    *buf = 134218754;
    v21 = v13;
    v22 = 2080;
    v23 = v14;
    v24 = 2112;
    selfCopy = self;
    v26 = 2112;
    v27 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx scheduling reset %s of %@%@", buf, 0x2Au);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__BRCClientZone_BRCZoneReset__scheduleReset_completionHandler___block_invoke;
  v15[3] = &unk_2785018C8;
  v15[4] = self;
  resetCopy = reset;
  v10 = handlerCopy;
  v17 = v10;
  v11 = resetQueue;
  v16 = v11;
  dispatch_async_with_logs_3(v11, v15);

  __brc_leave_section(v19);
  v12 = *MEMORY[0x277D85DE8];
}

void __63__BRCClientZone_BRCZoneReset__scheduleReset_completionHandler___block_invoke(uint64_t a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__15;
  v68 = __Block_byref_object_dispose__15;
  v69 = 0;
  v2 = [*(*(a1 + 32) + 64) serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__BRCClientZone_BRCZoneReset__scheduleReset_completionHandler___block_invoke_2;
  block[3] = &unk_278502140;
  block[4] = *(a1 + 32);
  block[5] = &v70;
  v3 = *(a1 + 56);
  block[6] = &v64;
  block[7] = v3;
  dispatch_sync(v2, block);

  if (v71[3])
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __63__BRCClientZone_BRCZoneReset__scheduleReset_completionHandler___block_invoke_cold_1([v65[5] count], v4, v83, v5);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v6 = v65[5];
    v7 = [v6 countByEnumeratingWithState:&v59 objects:v82 count:16];
    if (v7)
    {
      v8 = *v60;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v60 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v59 + 1) + 8 * i) waitUntilFinished];
        }

        v7 = [v6 countByEnumeratingWithState:&v59 objects:v82 count:16];
      }

      while (v7);
    }

    v10 = [*(a1 + 32) isSharedZone];
    v11 = *(*(a1 + 32) + 8);
    if (v10)
    {
      v12 = [v11 throttleProvider];
      [v12 sharedAppLibraryResetThrottle];
    }

    else
    {
      v12 = [v11 throttleProvider];
      [v12 appLibraryResetThrottle];
    }
    v14 = ;

    v15 = [*(a1 + 32) zoneName];
    v16 = [BRCThrottle throttleHashFormat:@"%@~%d", v15, v71[3]];

    v17 = [v14 nsecsToNextRetry:v16 now:brc_current_date_nsec() increment:0];
    [v14 incrementRetryCount:v16];
    if (v17)
    {
      if (v17 < 0x7FFFFFFFFFFFFFFFLL)
      {
        v55 = 0uLL;
        v56 = 0;
        __brc_create_section(0, "[BRCClientZone(BRCZoneReset) scheduleReset:completionHandler:]_block_invoke", 181, 0, &v55);
        v22 = brc_bread_crumbs();
        v23 = brc_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v39 = v55;
          brc_interval_from_nsec();
          v40 = *(a1 + 32);
          *buf = 134218754;
          v75 = v39;
          v76 = 2048;
          v77 = v41;
          v78 = 2112;
          v79 = v40;
          v80 = 2112;
          v81 = v22;
          _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx waiting %.3f secs to reset %@%@", buf, 0x2Au);
        }

        v57 = v55;
        v58 = v56;
        if (*(*(a1 + 32) + 304))
        {
          v42 = brc_bread_crumbs();
          v43 = brc_default_log();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
          {
            __63__BRCClientZone_BRCZoneReset__scheduleReset_completionHandler___block_invoke_cold_2(v42, v43, v44, v45, v46, v47, v48, v49);
          }
        }

        v24 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 40));
        v25 = *(a1 + 32);
        v26 = *(v25 + 304);
        *(v25 + 304) = v24;

        v27 = *(*(a1 + 32) + 304);
        v28 = dispatch_time(0, v17);
        dispatch_source_set_timer(v27, v28, 0xFFFFFFFFFFFFFFFFLL, 0);
        v29 = *(a1 + 32);
        v30 = *(v29 + 304);
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __63__BRCClientZone_BRCZoneReset__scheduleReset_completionHandler___block_invoke_7;
        v50[3] = &unk_278502168;
        v53 = v57;
        v54 = v58;
        v50[4] = v29;
        v52 = &v70;
        v51 = *(a1 + 48);
        v31 = v30;
        v32 = v50;
        v33 = v31;
        v34 = v32;
        v35 = v34;
        v36 = v34;
        if (*MEMORY[0x277CFB010])
        {
          v36 = (*MEMORY[0x277CFB010])(v34);
        }

        v37 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v36);
        dispatch_source_set_event_handler(v33, v37);

        dispatch_resume(*(*(a1 + 32) + 304));
      }

      else
      {
        v18 = brc_bread_crumbs();
        v19 = brc_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 32);
          *buf = 138412546;
          v75 = v20;
          v76 = 2112;
          v77 = v18;
          _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] giving up on resetting %@%@", buf, 0x16u);
        }

        v21 = *(a1 + 48);
        if (v21)
        {
          (*(v21 + 16))();
        }
      }
    }

    else
    {
      [*(a1 + 32) _reset:v71[3] completionHandler:*(a1 + 48)];
    }
  }

  else
  {
    v13 = *(a1 + 48);
    if (v13)
    {
      (*(v13 + 16))();
    }
  }

  _Block_object_dispose(&v64, 8);

  _Block_object_dispose(&v70, 8);
  v38 = *MEMORY[0x277D85DE8];
}

void __63__BRCClientZone_BRCZoneReset__scheduleReset_completionHandler___block_invoke_2(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  if ((v2 & 0x20000) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = *(a1 + 56);
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  if ([*(a1 + 32) isPrivateZone])
  {
    v4 = [*(a1 + 32) asPrivateClientZone];
    v5 = [v4 defaultAppLibrary];
    v6 = [v5 state];
  }

  else
  {
    v6 = 0;
  }

  if (*(*(*(a1 + 40) + 8) + 24) <= 2uLL)
  {
    v7 = 256;
  }

  else
  {
    v7 = 131328;
  }

  if ([*(a1 + 32) isPrivateZone])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [*(a1 + 32) asPrivateClientZone];
    v9 = [v8 appLibraries];

    v10 = [v9 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v10)
    {
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v31 + 1) + 8 * i) setStateBits:8];
        }

        v10 = [v9 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v10);
    }
  }

  memset(v30, 0, sizeof(v30));
  __brc_create_section(0, "[BRCClientZone(BRCZoneReset) scheduleReset:completionHandler:]_block_invoke", 125, 0, v30);
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v21 = v30[0];
    v22 = *(*(*(a1 + 40) + 8) + 24);
    v23 = BRCPrettyPrintEnum();
    v24 = *(a1 + 32);
    *buf = 134218754;
    v36 = v21;
    v37 = 2080;
    v38 = v23;
    v39 = 2112;
    v40 = v24;
    v41 = 2112;
    v42 = v13;
    _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx reset %s of %@%@", buf, 0x2Au);
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v25 = BRCClientZoneStatePrettyPrint(v2);
      v26 = BRCAppLibraryStatePrettyPrint(v6);
      v27 = BRCClientZoneStatePrettyPrint(v7 & ~v2);
      *buf = 138413058;
      v36 = v25;
      v37 = 2112;
      v38 = v26;
      v39 = 2112;
      v40 = v27;
      v41 = 2112;
      v42 = v18;
      _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] zone is already resetting (zone:%@,appLibrary:%@) but adding (%@) for the next reset%@", buf, 0x2Au);
    }

    [*(a1 + 32) setStateBits:v7];
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 64);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __63__BRCClientZone_BRCZoneReset__scheduleReset_completionHandler___block_invoke_3;
    v28[3] = &unk_278502118;
    v29 = v7;
    v17 = *(a1 + 48);
    v28[4] = v15;
    v28[5] = v17;
    [v16 performWithFlags:16 action:v28];
  }

  [*(*(a1 + 32) + 8) saveClientZoneToDB:?];
  __brc_leave_section(v30);
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __63__BRCClientZone_BRCZoneReset__scheduleReset_completionHandler___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setStateBits:*(a1 + 48)];
  [*(a1 + 32) clearSyncStateBits:15];
  v2 = [*(a1 + 32) _cancelAllOperationsForReset];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = BRCClientZoneStatePrettyPrint(*(a1 + 48));
    v10 = *(a1 + 32);
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] flushing reset state (%@) for container %@%@", &v11, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

void __63__BRCClientZone_BRCZoneReset__scheduleReset_completionHandler___block_invoke_7(uint64_t a1)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __63__BRCClientZone_BRCZoneReset__scheduleReset_completionHandler___block_invoke_7_cold_1(&v6);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 304);
  *(v4 + 304) = 0;

  [*(a1 + 32) _reset:*(*(*(a1 + 48) + 8) + 24) completionHandler:{*(a1 + 40), v6, v7}];
  __brc_leave_section(&v6);
}

- (void)_reset:(unint64_t)_reset completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  resetQueue = [(BRCAccountSession *)self->_session resetQueue];
  dispatch_assert_queue_V2(resetQueue);

  if (self->_activated)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      mangledID = [(BRCClientZone *)self mangledID];
      *buf = 138412802;
      v35 = mangledID;
      v36 = 2080;
      v37 = BRCPrettyPrintEnum();
      v38 = 2112;
      v39 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[NOTICE] resetting %@: %s%@", buf, 0x20u);
    }

    v11 = [[BRCSignpostTracker alloc] initWithLabel:2];
    v12 = v11;
    switch(_reset)
    {
      case 4uLL:
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __56__BRCClientZone_BRCZoneReset___reset_completionHandler___block_invoke_3;
        v25[3] = &unk_2784FF5B8;
        v25[4] = self;
        v26 = v11;
        v27 = handlerCopy;
        [(BRCClientZone *)self _performAfterResetServerAndClientTruthsAndUnlinkDataAndPurgeTheZone:v25];

        v13 = v26;
        break;
      case 3uLL:
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __56__BRCClientZone_BRCZoneReset___reset_completionHandler___block_invoke_2;
        v28[3] = &unk_2784FF5B8;
        v28[4] = self;
        v29 = v11;
        v30 = handlerCopy;
        [(BRCClientZone *)self _performAfterResetServerAndClientTruthsAndUnlinkData:v28];

        v13 = v29;
        break;
      case 2uLL:
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __56__BRCClientZone_BRCZoneReset___reset_completionHandler___block_invoke;
        v31[3] = &unk_2784FF5B8;
        v31[4] = self;
        v32 = v11;
        v33 = handlerCopy;
        [(BRCClientZone *)self _performResetAndWantsUnlink:0 clientTruthBlock:0 completionBlock:v31];

        v13 = v32;
        break;
      default:
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          [(BRCClientZone(BRCZoneReset) *)v16 _reset:v17 completionHandler:v18, v19, v20, v21, v22, v23];
        }

        goto LABEL_18;
    }

LABEL_18:
    goto LABEL_19;
  }

  v14 = brc_bread_crumbs();
  v15 = brc_notifications_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [(BRCClientZone(BRCZoneReset) *)self _reset:v14 completionHandler:v15];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_resetChildBasehashSaltsIfNeeded
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(BRCClientZone *)self isPrivateZone])
  {
    asPrivateClientZone = [(BRCClientZone *)self asPrivateClientZone];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    appLibraries = [asPrivateClientZone appLibraries];
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

          v9 = *(*(&v12 + 1) + 8 * i);
          childBasehashSalt = [v9 childBasehashSalt];

          if (childBasehashSalt)
          {
            [v9 resetChildBasehashSalt];
          }
        }

        v6 = [appLibraries countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resetAndDeleteServerTruthData
{
  v3 = self->_session;
  v4 = [(BRCServerZone *)self->_serverZone db];
  serialQueue = [v4 serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__BRCClientZone_BRCZoneReset___resetAndDeleteServerTruthData__block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  dispatch_sync(serialQueue, v7);
}

void __61__BRCClientZone_BRCZoneReset___resetAndDeleteServerTruthData__block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __61__BRCClientZone_BRCZoneReset___resetAndDeleteServerTruthData__block_invoke_cold_1(a1);
  }

  [*(*(a1 + 32) + 16) resetServerTruth];
  v4 = [*(a1 + 40) stageRegistry];
  [v4 removeDatabaseObjectsForZone:*(*(a1 + 32) + 16)];
}

- (void)_deleteJobsMatchingServerZone
{
  applyScheduler = [(BRCAccountSession *)self->_session applyScheduler];
  [applyScheduler deleteNonRejectionJobsForZone:self->_serverZone];

  fsUploader = [(BRCAccountSession *)self->_session fsUploader];
  [fsUploader deleteJobsMatching:self->_serverZone];

  fsDownloader = [(BRCAccountSession *)self->_session fsDownloader];
  [fsDownloader deleteJobsMatching:self->_serverZone];

  syncUpScheduler = [(BRCAccountSession *)self->_session syncUpScheduler];
  [syncUpScheduler deleteJobsMatching:self->_serverZone];
}

- (BOOL)_deleteRelevantPackageItemsWithDB:(id)b error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  bCopy = b;
  v7 = [bCopy executeWithSlowStatementRadar:@"<rdar://problem/23829401>" sql:{@"DELETE FROM client_pkg_upload_items WHERE item_rowid IN (SELECT rowid FROM client_items WHERE zone_rowid = %@ AND +item_type = 1 AND  HEX(SUBSTR(version_content_signature, 1, 1)) = '1B')", self->_dbRowID}];
  if ((v7 & 1) == 0)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      [BRCClientZone(BRCZoneReset) _deleteRelevantPackageItemsWithDB:bCopy error:?];
    }

    lastError = [bCopy lastError];
    if (lastError)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, 0x90u))
      {
        v16 = "(passed to caller)";
        *buf = 136315906;
        v18 = "[BRCClientZone(BRCZoneReset) _deleteRelevantPackageItemsWithDB:error:]";
        v19 = 2080;
        if (!error)
        {
          v16 = "(ignored by caller)";
        }

        v20 = v16;
        v21 = 2112;
        v22 = lastError;
        v23 = 2112;
        v24 = v11;
        _os_log_error_impl(&dword_223E7A000, v12, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v13 = lastError;
      *error = lastError;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_performHardResetOnClientItemsAndWantsUnlink:(BOOL)unlink db:(id)db error:(id *)error
{
  unlinkCopy = unlink;
  v53 = *MEMORY[0x277D85DE8];
  dbCopy = db;
  if ([(BRCClientZone *)self _deleteRelevantPackageItemsWithDB:dbCopy error:error])
  {
    if (unlinkCopy)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      lastError2 = [(BRCClientZone *)self allItemsSortedByDepthDescending:1];
      v10 = [lastError2 countByEnumeratingWithState:&v40 objects:v52 count:16];
      if (v10)
      {
        v11 = v10;
        v38 = dbCopy;
        v12 = *v41;
        v39 = *MEMORY[0x277CFACB0];
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v41 != v12)
            {
              objc_enumerationMutation(lastError2);
            }

            v14 = *(*(&v40 + 1) + 8 * i);
            itemID = [v14 itemID];
            isDocumentsFolder = [itemID isDocumentsFolder];

            if (isDocumentsFolder)
            {
              v17 = brc_bread_crumbs();
              v18 = brc_default_log();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v45 = v14;
                v46 = 2112;
                v47 = v17;
                _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] Reseting documents %@%@", buf, 0x16u);
              }

              [v14 resetWhileKeepingClientItemsAndWantsUnlink:1];
              [v14 markNeedsUploadOrSyncingUp];
            }

            else
            {
              v19 = brc_bread_crumbs();
              v20 = brc_default_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v45 = v14;
                v46 = 2112;
                v47 = v19;
                _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] Unlinking item %@%@", buf, 0x16u);
              }

              [v14 markForceRejected];
            }

            if (([v14 saveToDB] & 1) == 0)
            {
              v21 = [v14 db];
              lastError = [v21 lastError];
              v23 = lastError;
              if (lastError)
              {
                v24 = lastError;
              }

              else
              {
                v25 = brc_bread_crumbs();
                v26 = brc_default_log();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412290;
                  v45 = v25;
                  _os_log_fault_impl(&dword_223E7A000, v26, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to save to db without an error%@", buf, 0xCu);
                }

                v24 = [MEMORY[0x277CCA9B8] br_errorWithDomain:v39 code:15 description:@"unreachable: Failed to save to db without an error"];
              }

              v27 = v24;

              v28 = brc_bread_crumbs();
              v29 = brc_default_log();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v45 = v14;
                v46 = 2112;
                v47 = v27;
                v48 = 2112;
                v49 = v28;
                _os_log_debug_impl(&dword_223E7A000, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] Failed to save item %@ while resetting - %@%@", buf, 0x20u);
              }
            }
          }

          v11 = [lastError2 countByEnumeratingWithState:&v40 objects:v52 count:16];
        }

        while (v11);
        dbCopy = v38;
      }

LABEL_37:

      goto LABEL_38;
    }

    if (([dbCopy execute:{@"DELETE FROM client_items WHERE zone_rowid = %@", self->_dbRowID}] & 1) == 0)
    {
      v30 = brc_bread_crumbs();
      v31 = brc_default_log();
      if (os_log_type_enabled(v31, 0x90u))
      {
        [BRCClientZone(BRCZoneReset) _performHardResetOnClientItemsAndWantsUnlink:dbCopy db:? error:?];
      }

      lastError2 = [dbCopy lastError];
      if (lastError2)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, 0x90u))
        {
          v37 = "(passed to caller)";
          *buf = 136315906;
          v45 = "[BRCClientZone(BRCZoneReset) _performHardResetOnClientItemsAndWantsUnlink:db:error:]";
          v46 = 2080;
          if (!error)
          {
            v37 = "(ignored by caller)";
          }

          v47 = v37;
          v48 = 2112;
          v49 = lastError2;
          v50 = 2112;
          v51 = v32;
          _os_log_error_impl(&dword_223E7A000, v33, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (error)
      {
        v34 = lastError2;
        *error = lastError2;
      }

      goto LABEL_37;
    }

    LOBYTE(unlinkCopy) = 1;
  }

  else
  {
    LOBYTE(unlinkCopy) = 0;
  }

LABEL_38:

  v35 = *MEMORY[0x277D85DE8];
  return unlinkCopy;
}

- (BOOL)_postHardResetHandlingWithDB:(id)b completionBlock:(id)block error:(id *)error
{
  v57 = *MEMORY[0x277D85DE8];
  bCopy = b;
  blockCopy = block;
  if (![(BRCClientZone *)self isPrivateZone])
  {
LABEL_13:
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    itemsParentedToThisZoneButLivingInAnOtherZone = [(BRCClientZone *)self itemsParentedToThisZoneButLivingInAnOtherZone];
    v23 = [itemsParentedToThisZoneButLivingInAnOtherZone countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(itemsParentedToThisZoneButLivingInAnOtherZone);
          }

          v27 = *(*(&v39 + 1) + 8 * i);
          v28 = objc_autoreleasePoolPush();
          appLibrary = [v27 appLibrary];
          [appLibrary clearStateBits:0x40000];

          objc_autoreleasePoolPop(v28);
        }

        v24 = [itemsParentedToThisZoneButLivingInAnOtherZone countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v24);
    }

    if ([(BRCClientZone *)self isPrivateZone])
    {
      asPrivateClientZone = [(BRCClientZone *)self asPrivateClientZone];
      [asPrivateClientZone clearProblemReport];
    }

    blockCopy[2](blockCopy);
    v31 = 1;
    goto LABEL_29;
  }

  asPrivateClientZone2 = [(BRCClientZone *)self asPrivateClientZone];
  defaultAppLibrary = [asPrivateClientZone2 defaultAppLibrary];
  documentsFolderItemID = [defaultAppLibrary documentsFolderItemID];
  dbRowID = [(BRCClientZone *)self dbRowID];
  v14 = [bCopy executeWithSlowStatementRadar:@"<rdar://problem//26848061>" sql:{@"UPDATE client_items SET item_parent_id = %@ WHERE item_parent_zone_rowid != zone_rowid AND item_parent_zone_rowid = %@", documentsFolderItemID, dbRowID}];

  if (v14)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    appLibraries = [asPrivateClientZone2 appLibraries];
    v16 = [appLibraries countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v44;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(appLibraries);
          }

          v20 = *(*(&v43 + 1) + 8 * j);
          [v20 setStateBits:1310720];
          clientReadWriteDatabaseFacade = [(BRCAccountSession *)self->_session clientReadWriteDatabaseFacade];
          [clientReadWriteDatabaseFacade saveAppLibrary:v20];

          if ([v20 includesDataScope])
          {
            [v20 recreateDocumentsFolderIfNeededInDB];
          }
        }

        v17 = [appLibraries countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v17);
    }

    goto LABEL_13;
  }

  lastError = [bCopy lastError];
  if (lastError)
  {
    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, 0x90u))
    {
      v38 = "(passed to caller)";
      *buf = 136315906;
      v50 = "[BRCClientZone(BRCZoneReset) _postHardResetHandlingWithDB:completionBlock:error:]";
      v51 = 2080;
      if (!error)
      {
        v38 = "(ignored by caller)";
      }

      v52 = v38;
      v53 = 2112;
      v54 = lastError;
      v55 = 2112;
      v56 = v33;
      _os_log_error_impl(&dword_223E7A000, v34, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v35 = lastError;
    *error = lastError;
  }

  v31 = 0;
LABEL_29:

  v36 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)_performResetAndWantsUnlink:(BOOL)unlink clientTruthBlock:(id)block completionBlock:(id)completionBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v10 = self->_session;
  resetQueue = [(BRCAccountSession *)v10 resetQueue];
  dispatch_assert_queue_V2(resetQueue);
  [(BRCClientZone *)self _resetAndDeleteServerTruthData];
  serialQueue = [(BRCPQLConnection *)self->_db serialQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__BRCClientZone_BRCZoneReset___performResetAndWantsUnlink_clientTruthBlock_completionBlock___block_invoke;
  v15[3] = &unk_2785021B8;
  v15[4] = self;
  v16 = blockCopy;
  unlinkCopy = unlink;
  v17 = completionBlockCopy;
  v13 = completionBlockCopy;
  v14 = blockCopy;
  dispatch_sync(serialQueue, v15);
}

void __92__BRCClientZone_BRCZoneReset___performResetAndWantsUnlink_clientTruthBlock_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetChildBasehashSaltsIfNeeded];
  v2 = *(*(a1 + 32) + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __92__BRCClientZone_BRCZoneReset___performResetAndWantsUnlink_clientTruthBlock_completionBlock___block_invoke_2;
  v4[3] = &unk_278502190;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v7 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v2 performWithFlags:46 action:v4];
}

uint64_t __92__BRCClientZone_BRCZoneReset___performResetAndWantsUnlink_clientTruthBlock_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }

  [*(a1 + 32) _deleteJobsMatchingServerZone];
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __92__BRCClientZone_BRCZoneReset___performResetAndWantsUnlink_clientTruthBlock_completionBlock___block_invoke_2_cold_1((a1 + 32));
  }

  if ([*(a1 + 32) supportsKeepingClientItemsDuringReset])
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __92__BRCClientZone_BRCZoneReset___performResetAndWantsUnlink_clientTruthBlock_completionBlock___block_invoke_2_cold_4(a1);
    }

    v9 = *(a1 + 32);
    v10 = [v9 _getRelevantClientTruthItemEnumerator];
    [v9 _performSoftResetOnItems:v10 wantsUnlink:*(a1 + 56)];

    (*(*(a1 + 48) + 16))();
    goto LABEL_9;
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  v24 = 0;
  v14 = [v12 _performHardResetOnClientItemsAndWantsUnlink:v13 db:v3 error:&v24];
  v15 = v24;
  if ((v14 & 1) == 0)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, 0x90u))
    {
      __92__BRCClientZone_BRCZoneReset___performResetAndWantsUnlink_clientTruthBlock_completionBlock___block_invoke_2_cold_2();
    }

    goto LABEL_18;
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 48);
  v23 = v15;
  v18 = [v16 _postHardResetHandlingWithDB:v3 completionBlock:v17 error:&v23];
  v19 = v23;

  if ((v18 & 1) == 0)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, 0x90u))
    {
      __92__BRCClientZone_BRCZoneReset___performResetAndWantsUnlink_clientTruthBlock_completionBlock___block_invoke_2_cold_3();
    }

    v15 = v19;
LABEL_18:

    v11 = 0;
    goto LABEL_19;
  }

LABEL_9:
  v11 = 1;
LABEL_19:

  return v11;
}

- (void)_performAfterResetServerAndClientSharedTruthsAndUnlinkData:(id)data
{
  dataCopy = data;
  if (![(BRCClientZone *)self isSharedZone])
  {
    [BRCClientZone(BRCZoneReset) _performAfterResetServerAndClientSharedTruthsAndUnlinkData:];
  }

  [(BRCClientZone *)self _performResetAndWantsUnlink:1 clientTruthBlock:0 completionBlock:dataCopy];
}

- (void)_performAfterResetServerAndClientTruthsAndUnlinkData:(id)data
{
  dataCopy = data;
  if ([(BRCClientZone *)self isSharedZone])
  {
    [(BRCClientZone *)self _performAfterResetServerAndClientSharedTruthsAndUnlinkData:dataCopy];
  }

  else
  {
    [(BRCClientZone *)self _performAfterResetServerAndClientPrivateTruthsAndUnlinkData:dataCopy];
  }
}

- (void)_performAfterResetServerAndClientTruthsAndUnlinkDataAndPurgeTheZone:(id)zone
{
  zoneCopy = zone;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __99__BRCClientZone_BRCZoneReset___performAfterResetServerAndClientTruthsAndUnlinkDataAndPurgeTheZone___block_invoke;
  v6[3] = &unk_278500048;
  v6[4] = self;
  v7 = zoneCopy;
  v5 = zoneCopy;
  [(BRCClientZone *)self _performAfterResetServerAndClientTruthsAndUnlinkData:v6];
}

void __99__BRCClientZone_BRCZoneReset___performAfterResetServerAndClientTruthsAndUnlinkDataAndPurgeTheZone___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 64) assertOnQueue];
  v2 = [*(*(a1 + 32) + 8) resetQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __99__BRCClientZone_BRCZoneReset___performAfterResetServerAndClientTruthsAndUnlinkDataAndPurgeTheZone___block_invoke_2;
  v4[3] = &unk_278500048;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async_with_logs_3(v2, v4);
}

void __99__BRCClientZone_BRCZoneReset___performAfterResetServerAndClientTruthsAndUnlinkDataAndPurgeTheZone___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __99__BRCClientZone_BRCZoneReset___performAfterResetServerAndClientTruthsAndUnlinkDataAndPurgeTheZone___block_invoke_3;
  v4[3] = &unk_278500048;
  v4[4] = v2;
  v5 = v1;
  [v3 deleteAllContentsOnServerWithCompletionBlock:v4];
}

void __99__BRCClientZone_BRCZoneReset___performAfterResetServerAndClientTruthsAndUnlinkDataAndPurgeTheZone___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) serialQueue];
  dispatch_assert_queue_not_V2(v2);

  v3 = [*(*(a1 + 32) + 64) serialQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __99__BRCClientZone_BRCZoneReset___performAfterResetServerAndClientTruthsAndUnlinkDataAndPurgeTheZone___block_invoke_4;
  v5[3] = &unk_278500048;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async_with_logs_3(v3, v5);
}

void __99__BRCClientZone_BRCZoneReset___performAfterResetServerAndClientTruthsAndUnlinkDataAndPurgeTheZone___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __99__BRCClientZone_BRCZoneReset___performAfterResetServerAndClientTruthsAndUnlinkDataAndPurgeTheZone___block_invoke_5;
  v2[3] = &unk_2785021E0;
  v3 = *(a1 + 40);
  [v1 performWithFlags:8 action:v2];
}

- (id)_cancelAllOperationsForReset
{
  v131 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  selfCopy = self;
  if ([(BRCClientZone *)self isSharedZone])
  {
    serverZone = [(BRCClientZone *)self serverZone];
    asSharedZone = [serverZone asSharedZone];
    transferSyncContext = [asSharedZone transferSyncContext];

    uploadStream = [transferSyncContext uploadStream];
    operations = [uploadStream operations];
    [v3 addObjectsFromArray:operations];

    allDownloadOperations = [transferSyncContext allDownloadOperations];
    [v3 addObjectsFromArray:allDownloadOperations];
  }

  else
  {
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    asPrivateClientZone = [(BRCClientZone *)self asPrivateClientZone];
    appLibraries = [asPrivateClientZone appLibraries];

    v12 = [appLibraries countByEnumeratingWithState:&v116 objects:v130 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v117;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v117 != v14)
          {
            objc_enumerationMutation(appLibraries);
          }

          transferSyncContext2 = [*(*(&v116 + 1) + 8 * i) transferSyncContext];
          uploadStream2 = [transferSyncContext2 uploadStream];
          operations2 = [uploadStream2 operations];
          [v3 addObjectsFromArray:operations2];

          allDownloadOperations2 = [transferSyncContext2 allDownloadOperations];
          [v3 addObjectsFromArray:allDownloadOperations2];
        }

        v13 = [appLibraries countByEnumeratingWithState:&v116 objects:v130 count:16];
      }

      while (v13);
    }
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v20 = v3;
  v21 = [v20 countByEnumeratingWithState:&v112 objects:v129 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v113;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v113 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v112 + 1) + 8 * j);
        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v126 = v25;
          v127 = 2112;
          v128 = v26;
          _os_log_debug_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] Cancelling operation for reset %@%@", buf, 0x16u);
        }

        [(_BRCOperation *)v25 cancel];
      }

      v22 = [v20 countByEnumeratingWithState:&v112 objects:v129 count:16];
    }

    while (v22);
  }

  v28 = selfCopy->_syncUpOperation;
  if (v28)
  {
    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone(BRCZoneReset) _cancelAllOperationsForReset];
    }

    [v20 addObject:v28];
    [(_BRCOperation *)v28 cancel];
  }

  syncUpOperation = selfCopy->_syncUpOperation;
  selfCopy->_syncUpOperation = 0;

  lastSyncUpError = selfCopy->_lastSyncUpError;
  selfCopy->_lastSyncUpError = 0;

  v33 = selfCopy->_syncDownOperation;
  if (v33)
  {
    v34 = brc_bread_crumbs();
    v35 = brc_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone(BRCZoneReset) _cancelAllOperationsForReset];
    }

    [v20 addObject:v33];
    [(_BRCOperation *)v33 cancel];
  }

  syncDownOperation = selfCopy->_syncDownOperation;
  selfCopy->_syncDownOperation = 0;

  lastSyncDownError = selfCopy->_lastSyncDownError;
  selfCopy->_lastSyncDownError = 0;

  v38 = selfCopy->_fetchRecentsOperation;
  if (v38)
  {
    v39 = brc_bread_crumbs();
    v40 = brc_default_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone(BRCZoneReset) _cancelAllOperationsForReset];
    }

    [v20 addObject:v38];
    [(_BRCOperation *)v38 cancel];
  }

  fetchRecentsOperation = selfCopy->_fetchRecentsOperation;
  selfCopy->_fetchRecentsOperation = 0;

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_locateRecordOperations allValues];
  v43 = [allValues countByEnumeratingWithState:&v108 objects:v124 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v109;
    do
    {
      v46 = 0;
      v47 = v38;
      do
      {
        if (*v109 != v45)
        {
          objc_enumerationMutation(allValues);
        }

        v38 = *(*(&v108 + 1) + 8 * v46);

        v48 = brc_bread_crumbs();
        v49 = brc_default_log();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v126 = v38;
          v127 = 2112;
          v128 = v48;
          _os_log_debug_impl(&dword_223E7A000, v49, OS_LOG_TYPE_DEBUG, "[DEBUG] Cancelling operation for reset %@%@", buf, 0x16u);
        }

        [v20 addObject:v38];
        [(_BRCOperation *)v38 cancel];
        ++v46;
        v47 = v38;
      }

      while (v44 != v46);
      v44 = [allValues countByEnumeratingWithState:&v108 objects:v124 count:16];
    }

    while (v44);
  }

  p_isa = &selfCopy->super.isa;
  [(NSMutableDictionary *)selfCopy->_locateRecordOperations removeAllObjects];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  allValues2 = [(NSMutableDictionary *)selfCopy->_fetchParentOperations allValues];
  v52 = [allValues2 countByEnumeratingWithState:&v104 objects:v123 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = 0;
    v55 = *v105;
    do
    {
      v56 = 0;
      v57 = v54;
      do
      {
        if (*v105 != v55)
        {
          objc_enumerationMutation(allValues2);
        }

        v54 = *(*(&v104 + 1) + 8 * v56);

        v58 = brc_bread_crumbs();
        v59 = brc_default_log();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v126 = v54;
          v127 = 2112;
          v128 = v58;
          _os_log_debug_impl(&dword_223E7A000, v59, OS_LOG_TYPE_DEBUG, "[DEBUG] Cancelling operation for reset %@%@", buf, 0x16u);
        }

        [v20 addObject:v54];
        [(_BRCOperation *)v54 cancel];
        ++v56;
        v57 = v54;
      }

      while (v53 != v56);
      v53 = [allValues2 countByEnumeratingWithState:&v104 objects:v123 count:16];
    }

    while (v53);

    p_isa = &selfCopy->super.isa;
  }

  [p_isa[27] removeAllObjects];
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  allValues3 = [p_isa[26] allValues];
  v61 = [allValues3 countByEnumeratingWithState:&v100 objects:v122 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = 0;
    v64 = *v101;
    do
    {
      v65 = 0;
      v66 = v63;
      do
      {
        if (*v101 != v64)
        {
          objc_enumerationMutation(allValues3);
        }

        v63 = *(*(&v100 + 1) + 8 * v65);

        v67 = brc_bread_crumbs();
        v68 = brc_default_log();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v126 = v63;
          v127 = 2112;
          v128 = v67;
          _os_log_debug_impl(&dword_223E7A000, v68, OS_LOG_TYPE_DEBUG, "[DEBUG] Cancelling operation for reset %@%@", buf, 0x16u);
        }

        [v20 addObject:v63];
        [(_BRCOperation *)v63 cancel];
        ++v65;
        v66 = v63;
      }

      while (v62 != v65);
      v62 = [allValues3 countByEnumeratingWithState:&v100 objects:v122 count:16];
    }

    while (v62);

    p_isa = &selfCopy->super.isa;
  }

  [p_isa[26] removeAllObjects];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  allValues4 = [p_isa[25] allValues];
  v70 = [allValues4 countByEnumeratingWithState:&v96 objects:v121 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = 0;
    v73 = *v97;
    do
    {
      v74 = 0;
      v75 = v72;
      do
      {
        if (*v97 != v73)
        {
          objc_enumerationMutation(allValues4);
        }

        v72 = *(*(&v96 + 1) + 8 * v74);

        v76 = brc_bread_crumbs();
        v77 = brc_default_log();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v126 = v72;
          v127 = 2112;
          v128 = v76;
          _os_log_debug_impl(&dword_223E7A000, v77, OS_LOG_TYPE_DEBUG, "[DEBUG] Cancelling operation for reset %@%@", buf, 0x16u);
        }

        [v20 addObject:v72];
        [(_BRCOperation *)v72 cancel];
        ++v74;
        v75 = v72;
      }

      while (v71 != v74);
      v71 = [allValues4 countByEnumeratingWithState:&v96 objects:v121 count:16];
    }

    while (v71);

    p_isa = &selfCopy->super.isa;
  }

  [p_isa[25] removeAllObjects];
  if ([p_isa[2] isPrivateZone])
  {
    asPrivateClientZone2 = [p_isa asPrivateClientZone];
    getCreateCloudKitZoneOperation = [asPrivateClientZone2 getCreateCloudKitZoneOperation];

    if (getCreateCloudKitZoneOperation)
    {
      v80 = brc_bread_crumbs();
      v81 = brc_default_log();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
      {
        [BRCClientZone(BRCZoneReset) _cancelAllOperationsForReset];
      }

      [v20 addObject:getCreateCloudKitZoneOperation];
      [getCreateCloudKitZoneOperation cancel];
    }
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v82 = p_isa[24];
  v83 = [v82 countByEnumeratingWithState:&v92 objects:v120 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = 0;
    v86 = *v93;
    do
    {
      v87 = 0;
      v88 = v85;
      do
      {
        if (*v93 != v86)
        {
          objc_enumerationMutation(v82);
        }

        v85 = *(*(&v92 + 1) + 8 * v87);

        [v85 schedule];
        ++v87;
        v88 = v85;
      }

      while (v84 != v87);
      v84 = [v82 countByEnumeratingWithState:&v92 objects:v120 count:16];
    }

    while (v84);
  }

  [p_isa[24] removeAllObjects];
  [p_isa _removeAllShareAcceptanceBlocks];
  v89 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_finishedReset:(unint64_t)reset signpostTracker:(id)tracker completionHandler:(id)handler
{
  v90 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  handlerCopy = handler;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"reset %s", BRCPrettyPrintEnum()];
  memset(v77, 0, sizeof(v77));
  __brc_create_section(0, "[BRCClientZone(BRCZoneReset) _finishedReset:signpostTracker:completionHandler:]", 605, 0, v77);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v83 = v77[0];
    v84 = 2112;
    selfCopy3 = v51;
    v86 = 2112;
    selfCopy = self;
    v88 = 2112;
    v89 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx finishing %@ of %@%@", buf, 0x2Au);
  }

  v10 = ![(BRCClientZone *)self isSharedZone];
  if (reset < 3)
  {
    LOBYTE(v10) = 1;
  }

  if ((v10 & 1) == 0)
  {
    [(BRCClientZone *)self _flushIdleBlocksIfNeeded];
  }

  if (reset <= 2)
  {
    v11 = 256;
  }

  else
  {
    v11 = 131328;
  }

  [(BRCClientZone *)self clearStateBits:v11];
  if ([(BRCClientZone *)self isPrivateZone])
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    asPrivateClientZone = [(BRCClientZone *)self asPrivateClientZone];
    appLibraries = [asPrivateClientZone appLibraries];

    v14 = [appLibraries countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (v14)
    {
      v15 = *v74;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v74 != v15)
          {
            objc_enumerationMutation(appLibraries);
          }

          [*(*(&v73 + 1) + 8 * i) clearStateBits:503316482];
        }

        v14 = [appLibraries countByEnumeratingWithState:&v73 objects:v81 count:16];
      }

      while (v14);
    }
  }

  if (([(BRCClientZone *)self state]& 0x20000) != 0)
  {
    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v83 = v51;
      v84 = 2112;
      selfCopy3 = self;
      v86 = 2112;
      selfCopy = v27;
      _os_log_debug_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] finished %@ of %@ but we still need to delete data%@", buf, 0x20u);
    }

    [(BRCClientZone *)self scheduleResetServerAndClientTruthsForReason:@"still-wants-data-unlinked"];
  }

  else
  {
    lastSyncDownDate = self->_lastSyncDownDate;
    self->_lastSyncDownDate = 0;

    [(BRCClientZone *)self clearSyncStateBits:63];
    [(BRCClientZone *)self setStateBits:16];
    [(BRCClientZone *)self scheduleSyncDown];
    if ([(BRCClientZone *)self isPrivateZone])
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      asPrivateClientZone2 = [(BRCClientZone *)self asPrivateClientZone];
      appLibraries2 = [asPrivateClientZone2 appLibraries];

      v20 = [appLibraries2 countByEnumeratingWithState:&v69 objects:v80 count:16];
      if (v20)
      {
        v21 = *v70;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v70 != v21)
            {
              objc_enumerationMutation(appLibraries2);
            }

            v23 = *(*(&v69 + 1) + 8 * j);
            [v23 clearStateBits:134217730];
            clientReadWriteDatabaseFacade = [(BRCAccountSession *)self->_session clientReadWriteDatabaseFacade];
            [clientReadWriteDatabaseFacade saveAppLibrary:v23];
          }

          v20 = [appLibraries2 countByEnumeratingWithState:&v69 objects:v80 count:16];
        }

        while (v20);
      }
    }

    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v83 = v51;
      v84 = 2112;
      selfCopy3 = self;
      v86 = 2112;
      selfCopy = v25;
      _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] finished %@ of %@%@", buf, 0x20u);
    }
  }

  [(BRCAccountSession *)self->_session saveClientZoneToDB:self];
  v29 = dispatch_group_create();
  if (reset > 2)
  {
    if (![(BRCClientZone *)self isPrivateZone])
    {
      goto LABEL_54;
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    asPrivateClientZone3 = [(BRCClientZone *)self asPrivateClientZone];
    appLibraries3 = [asPrivateClientZone3 appLibraries];

    v37 = [appLibraries3 countByEnumeratingWithState:&v56 objects:v78 count:16];
    if (v37)
    {
      v38 = *v57;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v57 != v38)
          {
            objc_enumerationMutation(appLibraries3);
          }

          [*(*(&v56 + 1) + 8 * k) clearStateBits:8];
        }

        v37 = [appLibraries3 countByEnumeratingWithState:&v56 objects:v78 count:16];
      }

      while (v37);
    }
  }

  else if ([(BRCClientZone *)self isPrivateZone])
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    asPrivateClientZone4 = [(BRCClientZone *)self asPrivateClientZone];
    appLibraries3 = [asPrivateClientZone4 appLibraries];

    v32 = [appLibraries3 countByEnumeratingWithState:&v65 objects:v79 count:16];
    if (v32)
    {
      v33 = *v66;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v66 != v33)
          {
            objc_enumerationMutation(appLibraries3);
          }

          v35 = *(*(&v65 + 1) + 8 * m);
          dispatch_group_enter(v29);
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __80__BRCClientZone_BRCZoneReset___finishedReset_signpostTracker_completionHandler___block_invoke;
          v63[3] = &unk_2784FF540;
          v64 = v29;
          [v35 reimportLibraryRootAndFinishResetWithCompletion:v63];
        }

        v32 = [appLibraries3 countByEnumeratingWithState:&v65 objects:v79 count:16];
      }

      while (v32);
    }
  }

  else
  {
    appLibraries3 = [(BRCPQLConnection *)self->_db fetch:@"SELECT rowid, item_type FROM client_items  WHERE zone_rowid = %@ AND (item_sharing_options & 4) != 0", self->_dbRowID];
    while ([appLibraries3 next])
    {
      v42 = objc_autoreleasePoolPush();
      v43 = [appLibraries3 longLongAtIndex:0];
      v44 = [appLibraries3 intAtIndex:1];
      v45 = objc_alloc(MEMORY[0x277CFAE48]);
      if (v44 - 1 < 2 || v44 == 8)
      {
        v47 = 2;
      }

      else
      {
        v47 = 3;
      }

      v48 = [v45 initWithRowID:v43 type:v47];
      asString = [v48 asString];
      dispatch_group_enter(v29);
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __80__BRCClientZone_BRCZoneReset___finishedReset_signpostTracker_completionHandler___block_invoke_2;
      v60[3] = &unk_2784FFFA8;
      v50 = asString;
      v61 = v50;
      v62 = v29;
      [BRCImportUtil reimportItemsBelowItemWithIdentifier:v50 completionHandler:v60];

      objc_autoreleasePoolPop(v42);
    }
  }

LABEL_54:
  [trackerCopy endSignpostEvent];
  if (handlerCopy)
  {
    serialQueue = [(BRCPQLConnection *)self->_db serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__BRCClientZone_BRCZoneReset___finishedReset_signpostTracker_completionHandler___block_invoke_46;
    block[3] = &unk_278501520;
    v55 = handlerCopy;
    dispatch_group_notify(v29, serialQueue, block);
  }

  __brc_leave_section(v77);
  v41 = *MEMORY[0x277D85DE8];
}

void __80__BRCClientZone_BRCZoneReset___finishedReset_signpostTracker_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, 0x90u))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] Failed to signal reimport of %@ - %@%@", &v8, 0x20u);
  }

  dispatch_group_leave(*(a1 + 40));
  v6 = *MEMORY[0x277D85DE8];
}

- (id)asPrivateClientZone
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRCClientZone asPrivateClientZone];
  }

  return 0;
}

- (id)asSharedClientZone
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRCClientZone asSharedClientZone];
  }

  return 0;
}

- (BRCItemID)rootItemID
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRCClientZone rootItemID];
  }

  return 0;
}

- (void)_decreaseSyncUpBatchSizeAfterError
{
  mangledID = [(BRCClientZone *)self mangledID];
  v4 = [BRCUserDefaults defaultsForMangledID:mangledID];
  [v4 modifyRecordsCountMultiplicativeDecrease];
  v6 = v5;

  self->_syncUpBatchSizeMultiplier = v6 * self->_syncUpBatchSizeMultiplier;
}

- (void)_increaseSyncUpBatchSizeAfterSuccess
{
  if (self->_syncUpBatchSizeMultiplier < 1.0)
  {
    mangledID = [(BRCClientZone *)self mangledID];
    v4 = [BRCUserDefaults defaultsForMangledID:mangledID];
    [v4 modifyRecordsCountAdditiveIncreaseFraction];
    v6 = v5;

    v7 = v6 + self->_syncUpBatchSizeMultiplier;
    if (v7 > 1.0)
    {
      v7 = 1.0;
    }

    self->_syncUpBatchSizeMultiplier = v7;
  }
}

- (void)setNeedsSave:(BOOL)save
{
  if (self->_needsSave != save)
  {
    if (save)
    {
      [(BRCPQLConnection *)self->_db forceBatchStart];
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [BRCAppLibrary setNeedsSave:];
      }
    }

    self->_needsSave = save;
  }
}

- (BRCClientZone)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[BRCClientZone init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (BRCClientZone)initWithMangledID:(id)d dbRowID:(id)iD plist:(id)plist session:(id)session initialCreation:(BOOL)creation
{
  creationCopy = creation;
  dCopy = d;
  iDCopy = iD;
  plistCopy = plist;
  sessionCopy = session;
  v56.receiver = self;
  v56.super_class = BRCClientZone;
  v17 = [(BRCClientZone *)&v56 init];
  v18 = v17;
  if (v17)
  {
    v17->_isInitialCreation = creationCopy;
    clientDB = [sessionCopy clientDB];
    db = v18->_db;
    v18->_db = clientDB;

    clientReadWriteDatabaseFacade = [sessionCopy clientReadWriteDatabaseFacade];
    dbFacade = v18->_dbFacade;
    v18->_dbFacade = clientReadWriteDatabaseFacade;

    objc_storeStrong(&v18->_dbRowID, iD);
    objc_storeStrong(&v18->_session, session);
    objc_storeStrong(&v18->_mangledID, d);
    appLibraryOrZoneName = [dCopy appLibraryOrZoneName];
    zoneName = v18->_zoneName;
    v18->_zoneName = appLibraryOrZoneName;

    ownerName = [dCopy ownerName];
    ownerName = v18->_ownerName;
    v18->_ownerName = ownerName;

    v27 = brc_task_tracker_create("zone-tracker");
    taskTracker = v18->_taskTracker;
    v18->_taskTracker = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    syncDownDependencies = v18->_syncDownDependencies;
    v18->_syncDownDependencies = v29;

    v18->_shouldShowiCloudDriveAppInstallationNotification = 1;
    v18->_syncUpBatchSizeMultiplier = 1.0;
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    currentSyncDownBarriers = v18->_currentSyncDownBarriers;
    v18->_currentSyncDownBarriers = v31;

    v33 = objc_opt_new();
    blockedOperationsOnInitialSync = v18->_blockedOperationsOnInitialSync;
    v18->_blockedOperationsOnInitialSync = v33;

    v35 = objc_opt_new();
    runningListOperations = v18->_runningListOperations;
    v18->_runningListOperations = v35;

    v37 = objc_opt_new();
    recursiveListOperations = v18->_recursiveListOperations;
    v18->_recursiveListOperations = v37;

    v39 = objc_opt_new();
    fetchParentOperations = v18->_fetchParentOperations;
    v18->_fetchParentOperations = v39;

    v41 = objc_opt_new();
    locateRecordOperations = v18->_locateRecordOperations;
    v18->_locateRecordOperations = v41;

    v43 = objc_opt_new();
    directoriesCreatedLastSyncUp = v18->_directoriesCreatedLastSyncUp;
    v18->_directoriesCreatedLastSyncUp = v43;

    v45 = [BRCUserDefaults defaultsForMangledID:dCopy];
    serverStitchingThrottleParams = [v45 serverStitchingThrottleParams];

    v47 = [[BRCThrottle alloc] initWithName:@"server-stitching-throttle" andParameters:serverStitchingThrottleParams];
    serverStitchingOperationThrottle = v18->_serverStitchingOperationThrottle;
    v18->_serverStitchingOperationThrottle = v47;

    v49 = [BRCUserDefaults defaultsForMangledID:dCopy];
    locateRecordsThrottleParams = [v49 locateRecordsThrottleParams];

    v51 = [[BRCThrottle alloc] initWithName:@"locate-records-throttle" andParameters:locateRecordsThrottleParams];
    locateRecordsOperationThrottle = v18->_locateRecordsOperationThrottle;
    v18->_locateRecordsOperationThrottle = v51;

    if (creationCopy)
    {
      br_syncDownInitial = [MEMORY[0x277CBC4F8] br_syncDownInitial];
      syncDownGroup = v18->_syncDownGroup;
      v18->_syncDownGroup = br_syncDownInitial;

      [(BRCClientZone *)v18 setNeedsSave:1];
    }

    else
    {
      [(BRCClientZone *)v18 updateWithPlist:plistCopy];
    }

    [(BRCClientZone *)v18 _recreateSyncBudgetsAndThrottlesIfNeeded];
  }

  return v18;
}

- (void)dealloc
{
  if (self->_hasWorkDidUpdateObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_hasWorkDidUpdateObserver];
  }

  v4.receiver = self;
  v4.super_class = BRCClientZone;
  [(BRCClientZone *)&v4 dealloc];
}

- (void)_recreateSyncBudgetsAndThrottlesIfNeeded
{
  if (!self->_syncUpThrottle)
  {
    v3 = [[BRCSyncOperationThrottle alloc] initWithMangledID:self->_mangledID isSyncDown:0];
    syncUpThrottle = self->_syncUpThrottle;
    self->_syncUpThrottle = v3;

    [(BRCClientZone *)self setNeedsSave:1];
  }

  if (!self->_syncDownThrottle)
  {
    v5 = [[BRCSyncOperationThrottle alloc] initWithMangledID:self->_mangledID isSyncDown:1];
    syncDownThrottle = self->_syncDownThrottle;
    self->_syncDownThrottle = v5;

    [(BRCClientZone *)self setNeedsSave:1];
  }

  if (!self->_syncUpBudget)
  {
    v7 = objc_alloc_init(BRCSyncBudgetThrottle);
    syncUpBudget = self->_syncUpBudget;
    self->_syncUpBudget = v7;

    [(BRCClientZone *)self setNeedsSave:1];
  }

  if (!self->_syncUpBackoffRatio)
  {
    v9 = objc_alloc_init(BRCSyncOperationBackoffRatio);
    syncUpBackoffRatio = self->_syncUpBackoffRatio;
    self->_syncUpBackoffRatio = v9;

    [(BRCClientZone *)self setNeedsSave:1];
  }
}

- (void)updateWithPlist:(id)plist
{
  plistCopy = plist;
  v5 = [plistCopy objectForKeyedSubscript:@"state"];
  self->_state = [v5 unsignedIntValue];

  v6 = [plistCopy objectForKeyedSubscript:@"requestID"];
  self->_requestID = [v6 unsignedLongLongValue];

  v7 = [plistCopy objectForKeyedSubscript:@"lastApplyRank"];
  self->_lastInsertedRank = [v7 longLongValue];

  v8 = [plistCopy objectForKeyedSubscript:@"appliedTombstoneRanks"];
  v9 = [v8 mutableCopy];
  appliedTombstoneRanks = self->_appliedTombstoneRanks;
  self->_appliedTombstoneRanks = v9;

  v11 = [plistCopy objectForKeyedSubscript:@"syncUpThrottle"];
  p_syncUpThrottle = &self->_syncUpThrottle;
  syncUpThrottle = self->_syncUpThrottle;
  self->_syncUpThrottle = v11;

  v14 = [plistCopy objectForKeyedSubscript:@"syncUpBudget"];
  syncUpBudget = self->_syncUpBudget;
  self->_syncUpBudget = v14;

  v16 = [plistCopy objectForKeyedSubscript:@"syncUpBackoffRatio"];
  syncUpBackoffRatio = self->_syncUpBackoffRatio;
  self->_syncUpBackoffRatio = v16;

  v18 = [plistCopy objectForKeyedSubscript:@"syncDownThrottle"];
  syncDownThrottle = self->_syncDownThrottle;
  self->_syncDownThrottle = v18;

  v20 = [plistCopy objectForKeyedSubscript:@"lastSyncDownDate"];
  lastSyncDownDate = self->_lastSyncDownDate;
  self->_lastSyncDownDate = v20;

  v22 = [plistCopy objectForKeyedSubscript:@"osNameRequiredToSync"];
  osNameRequiredToSync = self->_osNameRequiredToSync;
  self->_osNameRequiredToSync = v22;

  v24 = [plistCopy objectForKeyedSubscript:@"syncDownGroup"];
  syncDownGroup = self->_syncDownGroup;
  self->_syncDownGroup = v24;

  v26 = [plistCopy objectForKeyedSubscript:@"appUninstalledDate"];

  appUninstalledDate = self->_appUninstalledDate;
  self->_appUninstalledDate = v26;

  if (!self->_syncUpBudget || (v28 = *p_syncUpThrottle) == 0 || !self->_syncDownThrottle)
  {
    [(BRCClientZone *)&self->_syncUpThrottle updateWithPlist:?];
    v28 = v29;
  }

  [(BRCSyncOperationThrottle *)v28 setMangledID:self->_mangledID];
  [(BRCSyncOperationThrottle *)self->_syncDownThrottle setMangledID:self->_mangledID];
}

- (void)resume
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Activation done%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)close
{
  OUTLINED_FUNCTION_21(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __22__BRCClientZone_close__block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x277D85DE8];
  v62 = 0uLL;
  v63 = 0;
  __brc_create_section(0, "[BRCClientZone close]_block_invoke", 602, 0, &v62);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v37 = *(a1 + 32);
    *buf = 134218498;
    v72 = v62;
    v73 = 2112;
    v74 = v37;
    v75 = 2112;
    v76 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx %@ - Canceling operations%@", buf, 0x20u);
  }

  v64 = v62;
  v65 = v63;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 104));
  v62 = v64;
  v63 = v65;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v38 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 134218498;
    v72 = v62;
    v73 = 2112;
    v74 = v38;
    v75 = 2112;
    v76 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx Canceling syncUpOp: %@%@", buf, 0x20u);
  }

  [*(*(*(a1 + 48) + 8) + 40) cancel];
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 128));
  v60 = v64;
  v61 = v65;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v39 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 134218498;
    v72 = v60;
    v73 = 2112;
    v74 = v39;
    v75 = 2112;
    v76 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx Canceling syncDownOp: %@%@", buf, 0x20u);
  }

  [*(*(*(a1 + 56) + 8) + 40) cancel];
  v8 = [*(*(a1 + 32) + 16) deleteAllContentsOperation];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  [*(*(*(a1 + 64) + 8) + 40) cancel];
  v11 = [*(*(a1 + 32) + 8) applyScheduler];
  [v11 stopMonitoringFaultingForZone:*(a1 + 32)];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v12 = [*(*(a1 + 32) + 208) allValues];
  v13 = [v12 countByEnumeratingWithState:&v56 objects:v70 count:16];
  if (v13)
  {
    v14 = *v57;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v57 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v56 + 1) + 8 * i);
        [v16 cancel];
        [*(a1 + 40) addObject:v16];
      }

      v13 = [v12 countByEnumeratingWithState:&v56 objects:v70 count:16];
    }

    while (v13);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v17 = [*(*(a1 + 32) + 200) allValues];
  v18 = [v17 countByEnumeratingWithState:&v52 objects:v69 count:16];
  if (v18)
  {
    v19 = *v53;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v52 + 1) + 8 * j);
        [v21 cancel];
        [*(a1 + 40) addObject:v21];
      }

      v18 = [v17 countByEnumeratingWithState:&v52 objects:v69 count:16];
    }

    while (v18);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v22 = [*(*(a1 + 32) + 216) allValues];
  v23 = [v22 countByEnumeratingWithState:&v48 objects:v68 count:16];
  if (v23)
  {
    v24 = *v49;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v49 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v48 + 1) + 8 * k);
        [v26 cancel];
        [*(a1 + 40) addObject:v26];
      }

      v23 = [v22 countByEnumeratingWithState:&v48 objects:v68 count:16];
    }

    while (v23);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v27 = [*(*(a1 + 32) + 224) allValues];
  v28 = [v27 countByEnumeratingWithState:&v44 objects:v67 count:16];
  if (v28)
  {
    v29 = *v45;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v44 + 1) + 8 * m);
        [v31 cancel];
        [*(a1 + 40) addObject:v31];
      }

      v28 = [v27 countByEnumeratingWithState:&v44 objects:v67 count:16];
    }

    while (v28);
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(*(a1 + 32) + 232));
  [*(*(*(a1 + 72) + 8) + 40) cancel];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v32 = *(*(a1 + 32) + 192);
  v33 = [v32 countByEnumeratingWithState:&v40 objects:v66 count:16];
  if (v33)
  {
    v34 = *v41;
    do
    {
      for (n = 0; n != v33; ++n)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(v32);
        }

        [*(*(&v40 + 1) + 8 * n) schedule];
      }

      v33 = [v32 countByEnumeratingWithState:&v40 objects:v66 count:16];
    }

    while (v33);
  }

  [*(*(a1 + 32) + 192) removeAllObjects];
  __brc_leave_section(&v60);
  __brc_leave_section(&v62);
  v36 = *MEMORY[0x277D85DE8];
}

void __22__BRCClientZone_close__block_invoke_89(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [*(a1 + 32) asPrivateClientZone];
  v2 = [v1 appLibraries];

  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) close];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)scheduleResetServerAndClientTruthsForReason:(id)reason completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  handlerCopy = handler;
  if (scheduleResetServerAndClientTruthsForReason_completionHandler__onceToken != -1)
  {
    [BRCClientZone scheduleResetServerAndClientTruthsForReason:completionHandler:];
  }

  v8 = [BRCUserDefaults defaultsForMangledID:self->_mangledID];
  resetReasonsToTriggerTTR = [v8 resetReasonsToTriggerTTR];

  if ([resetReasonsToTriggerTTR containsObject:reasonCopy])
  {
    reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Zone Reset: %@", reasonCopy];
    tapToRadarManager = [(BRCAccountSession *)self->_session tapToRadarManager];
    brc_errorZoneReset = [MEMORY[0x277CCA9B8] brc_errorZoneReset];
    [tapToRadarManager requestTapToRadarWithTitle:reasonCopy description:reasonCopy keywords:MEMORY[0x277CBEBF8] attachments:MEMORY[0x277CBEBF8] sendFullLog:0 displayReason:@"it got to an invalid state" triggerRootCause:brc_errorZoneReset additionalDevices:0];
  }

  if (([scheduleResetServerAndClientTruthsForReason_completionHandler__reasonsToIgnoreForABC containsObject:reasonCopy] & 1) == 0)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [BRCClientZone scheduleResetServerAndClientTruthsForReason:completionHandler:];
    }
  }

  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = reasonCopy;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Container needs server and client truths reset: %@%@", buf, 0x16u);
  }

  v17 = +[BRCEventsAnalytics sharedAnalytics];
  [v17 registerAndSendNewContainerResetWithOutcome:reasonCopy];

  v18 = [AppTelemetryTimeSeriesEvent newZoneResetEventWithZoneMangledID:self->_mangledID enhancedDrivePrivacyEnabled:[(BRCClientZone *)self enhancedDrivePrivacyEnabled] lastSyncDate:self->_lastSyncDownDate error:0 errorDescription:reasonCopy];
  analyticsReporter = [(BRCAccountSession *)self->_session analyticsReporter];
  [analyticsReporter postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v18];

  [(BRCClientZone *)self scheduleReset:2 completionHandler:handlerCopy];
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __79__BRCClientZone_scheduleResetServerAndClientTruthsForReason_completionHandler___block_invoke()
{
  scheduleResetServerAndClientTruthsForReason_completionHandler__reasonsToIgnoreForABC = [MEMORY[0x277CBEB98] setWithObjects:{@"crash-recovery", @"ipc-com.apple.finder", @"CKUnderlyingErrorContainerReset", @"CKErrorUserDeleteZone", @"CKErrorZoneNotFound", @"CKErrorSharedZoneNotFound", @"still-wants-data-unlinked", @"zone became healthy", @"start-scan", @"testing", 0}];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)handleZoneLevelErrorIfNeeded:(id)needed forItemCreation:(BOOL)creation
{
  creationCopy = creation;
  v42 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  v31 = 0;
  v32 = 0;
  v7 = [neededCopy brc_isCloudKitErrorUnsupportedOSForZoneAndGetMinimumSupported:&v31];
  v8 = v31;
  v9 = v31;
  if (v7)
  {
    objc_storeStrong(&self->_osNameRequiredToSync, v8);
    [(BRCClientZone *)self setStateBits:0x200000];
  }

  serverZone = [(BRCClientZone *)self serverZone];
  hasFetchedServerZoneState = [serverZone hasFetchedServerZoneState];

  if ((hasFetchedServerZoneState & 1) != 0 || creationCopy)
  {
    v12 = [neededCopy brc_containerResetErrorForSharedZone:-[BRCClientZone isSharedZone](self resetReason:{"isSharedZone"), &v32}];
    if (v12)
    {
      v13 = v12;
      if (([neededCopy brc_containsCloudKitErrorCode:26] & 1) != 0 || objc_msgSend(neededCopy, "brc_containsCloudKitErrorCode:", 28))
      {
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
LABEL_21:

          v25 = +[BRCEventsAnalytics sharedAnalytics];
          [v25 registerAndSendNewContainerResetWithOutcome:v32];

          mangledID = self->_mangledID;
          enhancedDrivePrivacyEnabled = [(BRCClientZone *)self enhancedDrivePrivacyEnabled];
          containerScheduler = [AppTelemetryTimeSeriesEvent newZoneResetEventWithZoneMangledID:mangledID enhancedDrivePrivacyEnabled:enhancedDrivePrivacyEnabled lastSyncDate:self->_lastSyncDownDate error:neededCopy errorDescription:v32];
          analyticsReporter = [(BRCAccountSession *)self->_session analyticsReporter];
          [analyticsReporter postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:containerScheduler];

          [(BRCClientZone *)self scheduleReset:v13];
          v21 = 1;
LABEL_22:

          goto LABEL_23;
        }

        mangledID = [(BRCClientZone *)self mangledID];
        v17 = [mangledID debugDescription];
        *buf = 138413058;
        v35 = v17;
        v36 = 2048;
        v37 = v13;
        v38 = 2112;
        v39 = neededCopy;
        v40 = 2112;
        v41 = v14;
        _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Container %@ needs reset - %lu for %@%@", buf, 0x2Au);
      }

      else
      {
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_21;
        }

        mangledID = [(BRCClientZone *)self mangledID];
        v17 = [mangledID debugDescription];
        *buf = 138413058;
        v35 = v17;
        v36 = 2048;
        v37 = v13;
        v38 = 2112;
        v39 = neededCopy;
        v40 = 2112;
        v41 = v14;
        _os_log_fault_impl(&dword_223E7A000, v15, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Container %@ needs reset - %lu for %@%@", buf, 0x2Au);
      }

      goto LABEL_21;
    }
  }

  if ([neededCopy brc_isCloudKitErrorZoneMigrated])
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v18;
      _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Server zone has been moved to cloud docs%@", buf, 0xCu);
    }

    session = self->_session;
    serverZone = self->_serverZone;
    v21 = 1;
    containerScheduler = [MEMORY[0x277CBEA60] arrayWithObjects:&serverZone count:1];
    [(BRCAccountSession *)session scheduleZoneMovesToCloudDocs:containerScheduler];
    goto LABEL_22;
  }

  if ([neededCopy brc_isCloudKitErrorNeedsPCSPrep])
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v23;
      _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEFAULT, "[WARNING] Server tells us we need to redo PCS prep%@", buf, 0xCu);
    }

    containerScheduler = [(BRCAccountSession *)self->_session containerScheduler];
    [containerScheduler redoZonePCSPreperation];
    v21 = 0;
    goto LABEL_22;
  }

  v21 = 0;
LABEL_23:

  v29 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)handleSaltingErrorIfNeeded:(id)needed record:(id)record
{
  v66 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  recordCopy = record;
  if (!neededCopy)
  {
    v14 = 0;
    goto LABEL_36;
  }

  if (([neededCopy brc_isCloudKitValidationKeyMismatchError] & 1) == 0 && !objc_msgSend(neededCopy, "brc_isStaleRecordUpdateError"))
  {
    v55 = 0;
    v15 = [neededCopy brc_isCloudKitParentValidationKeyMismatchErrorWithFieldName:&v55];
    v16 = v55;
    if (v15)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        v59 = recordCopy;
        v60 = 2112;
        v61 = v16;
        v62 = 2112;
        v63 = neededCopy;
        v64 = 2112;
        v65 = v17;
        _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] Encountered parent validation key error for record:%@ field:%@ error:%@%@", buf, 0x2Au);
      }

      v19 = [recordCopy objectForKeyedSubscript:@"parent"];
      v20 = v19;
      if (v19)
      {
        parent = v19;
      }

      else
      {
        parent = [recordCopy parent];
      }

      v34 = parent;

      recordID = [v34 recordID];

      if (!recordID)
      {
        [BRCClientZone handleSaltingErrorIfNeeded:record:];
      }

      v36 = [(BRCClientZone *)self db];
      serialQueue = [v36 serialQueue];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __51__BRCClientZone_handleSaltingErrorIfNeeded_record___block_invoke_128;
      v53[3] = &unk_2784FF478;
      v53[4] = self;
      v54 = v34;
      v25 = v34;
      dispatch_async(serialQueue, v53);
    }

    else
    {
      v52 = 0;
      recordID2 = [recordCopy recordID];
      zoneID = [recordID2 zoneID];
      v24 = [neededCopy brc_isCloudKitHasUnsaltedChildrenWithUnsaltedRecord:&v52 zoneID:zoneID];
      v25 = v52;

      if (v24)
      {
        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413058;
          v59 = recordCopy;
          v60 = 2112;
          v61 = neededCopy;
          v62 = 2112;
          v63 = v25;
          v64 = 2112;
          v65 = v26;
          _os_log_debug_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] Encountered unsalted children error for record:%@ error:%@ unsalted-records:%@%@", buf, 0x2Au);
        }

        v28 = [(BRCClientZone *)self db];
        serialQueue2 = [v28 serialQueue];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __51__BRCClientZone_handleSaltingErrorIfNeeded_record___block_invoke_129;
        v49[3] = &unk_2784FF478;
        v50 = v25;
        selfCopy = self;
        dispatch_async(serialQueue2, v49);

        v30 = v50;
      }

      else
      {
        if (![neededCopy brc_isCloudKitDestinationNeedsSalting])
        {
          v14 = 0;
LABEL_35:

          goto LABEL_36;
        }

        v31 = [recordCopy objectForKeyedSubscript:@"parent"];
        v32 = v31;
        if (v31)
        {
          parent2 = v31;
        }

        else
        {
          parent2 = [recordCopy parent];
        }

        v38 = parent2;

        v39 = brc_bread_crumbs();
        v40 = brc_default_log();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          recordID3 = [v38 recordID];
          *buf = 138412802;
          v59 = recordID3;
          v60 = 2112;
          v61 = neededCopy;
          v62 = 2112;
          v63 = v39;
          _os_log_debug_impl(&dword_223E7A000, v40, OS_LOG_TYPE_DEBUG, "[DEBUG] Encountered destination record:%@ should be salted error:%@%@", buf, 0x20u);
        }

        recordID4 = [v38 recordID];

        if (!recordID4)
        {
          [BRCClientZone handleSaltingErrorIfNeeded:record:];
        }

        v42 = [(BRCClientZone *)self db];
        serialQueue3 = [v42 serialQueue];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __51__BRCClientZone_handleSaltingErrorIfNeeded_record___block_invoke_130;
        v47[3] = &unk_2784FF478;
        v47[4] = self;
        v48 = v38;
        v30 = v38;
        dispatch_async(serialQueue3, v47);
      }
    }

    v14 = 1;
    goto LABEL_35;
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v59 = recordCopy;
    v60 = 2112;
    v61 = neededCopy;
    v62 = 2112;
    v63 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Encountered validation key error for record:%@ error:%@%@", buf, 0x20u);
  }

  recordID5 = [recordCopy recordID];
  if (([recordID5 brc_isZoneRootRecordID] & 1) == 0)
  {
    recordID6 = [recordCopy recordID];
    [recordID6 brc_isAppLibraryRootRecordID];
  }

  v12 = [(BRCClientZone *)self db];
  serialQueue4 = [v12 serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__BRCClientZone_handleSaltingErrorIfNeeded_record___block_invoke;
  block[3] = &unk_2784FF478;
  block[4] = self;
  v57 = recordCopy;
  dispatch_async(serialQueue4, block);

  v14 = 1;
LABEL_36:

  v44 = *MEMORY[0x277D85DE8];
  return v14;
}

void __51__BRCClientZone_handleSaltingErrorIfNeeded_record___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) recordID];
  v2 = [v1 locateRecordIfNecessaryForRecordID:v3 isUserWaiting:0];
}

void __51__BRCClientZone_handleSaltingErrorIfNeeded_record___block_invoke_128(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) recordID];
  v2 = [v1 locateRecordIfNecessaryForRecordID:v3 isUserWaiting:0];
}

void __51__BRCClientZone_handleSaltingErrorIfNeeded_record___block_invoke_129(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) locateRecordIfNecessaryForRecordID:*(*(&v9 + 1) + 8 * v6++) isUserWaiting:{0, v9}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __51__BRCClientZone_handleSaltingErrorIfNeeded_record___block_invoke_130(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) recordID];
  v2 = [v1 locateRecordIfNecessaryForRecordID:v3 isUserWaiting:0];
}

- (id)itemCountPendingUploadOrSyncUpAndReturnError:(id *)error
{
  if (error)
  {
    v5 = *error;
    *error = 0;
  }

  v6 = [(BRCClientZone *)self db];
  dbRowID = [(BRCServerZone *)self->_serverZone dbRowID];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__BRCClientZone_itemCountPendingUploadOrSyncUpAndReturnError___block_invoke;
  v11[3] = &__block_descriptor_40_e48_v28__0__sqlite3_context__8i16___sqlite3_value_20l;
  v11[4] = error;
  v8 = MEMORY[0x22AA4A310](v11);
  v9 = [v6 numberWithSQL:{@"SELECT COUNT(1) FROM client_items WHERE item_localsyncupstate IN (3, 4) AND zone_rowid = %@  AND call_block(%p, version_upload_error, item_id)", dbRowID, v8}];

  return v9;
}

void __62__BRCClientZone_itemCountPendingUploadOrSyncUpAndReturnError___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, uint64_t a4)
{
  if ([BRCItemID isDocumentsItemIDWithSQLiteValue:*(a4 + 8)])
  {

    sqlite3_result_int(a2, 0);
  }

  else
  {
    v7 = *(a1 + 32);

    checkErrorIsRetriable(a2, a4, v7);
  }
}

- (id)sizeOfItemsNeedingSyncUpOrUploadAndReturnError:(id *)error
{
  if ([(BRCClientZone *)self isSyncBlocked])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone sizeOfItemsNeedingSyncUpOrUploadAndReturnError:];
    }

    v7 = 0;
    goto LABEL_7;
  }

  v5 = [(BRCClientZone *)self itemCountPendingUploadOrSyncUpAndReturnError:error];
  if ([v5 intValue])
  {
    v8 = [(BRCClientZone *)self db];
    dbRowID = [(BRCServerZone *)self->_serverZone dbRowID];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__BRCClientZone_sizeOfItemsNeedingSyncUpOrUploadAndReturnError___block_invoke;
    v14[3] = &__block_descriptor_40_e48_v28__0__sqlite3_context__8i16___sqlite3_value_20l;
    v14[4] = error;
    v10 = MEMORY[0x22AA4A310](v14);
    v6 = [v8 numberWithSQL:{@"SELECT SUM(version_size) FROM client_items WHERE item_localsyncupstate IN (3, 4)   AND zone_rowid = %@   AND call_block(%p, version_upload_error)", dbRowID, v10}];

    integerValue = [v6 integerValue];
    integerValue2 = [v5 integerValue];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + 100 * integerValue2];
LABEL_7:

    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)beginSyncBubbleActivityIfNecessary
{
  v18 = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->_db assertOnQueue];
  if (self->_bubbleSyncTask)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      bubbleSyncTask = self->_bubbleSyncTask;
      *buf = 138412802;
      selfCopy2 = self;
      v14 = 2112;
      unsignedLongLongValue = bubbleSyncTask;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - We already have a bubble sync task %@%@", buf, 0x20u);
    }

LABEL_8:

    goto LABEL_9;
  }

  v3 = [(BRCClientZone *)self sizeOfItemsNeedingSyncUpOrUploadAndReturnError:0];
  if (v3)
  {
    v6 = MEMORY[0x277D77C28];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Still %@ bytes need to sync to the server", v3];
    v8 = [v6 taskWithName:@"com.apple.bird.uploads" reason:v7 forBundleID:self->_zoneName];

    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v14 = 2048;
      unsignedLongLongValue = [v3 unsignedLongLongValue];
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@ - shared iPad: needs to sync items in the sync bubble (sz:%llu)%@", buf, 0x20u);
    }

    [v8 setContentSize:{objc_msgSend(v3, "unsignedIntegerValue")}];
    [v8 begin];
    v4 = self->_bubbleSyncTask;
    self->_bubbleSyncTask = v8;
    goto LABEL_8;
  }

LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)registerAllItemsDidUploadTracker:(id)tracker
{
  trackerCopy = tracker;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  v9 = 0;
  v5 = [(BRCClientZone *)self sizeOfItemsNeedingSyncUpOrUploadAndReturnError:&v9];
  if (v5)
  {
    allItemsDidUploadTrackers = self->_allItemsDidUploadTrackers;
    if (!allItemsDidUploadTrackers)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v8 = self->_allItemsDidUploadTrackers;
      self->_allItemsDidUploadTrackers = v7;

      allItemsDidUploadTrackers = self->_allItemsDidUploadTrackers;
    }

    [(NSMutableArray *)allItemsDidUploadTrackers addObject:trackerCopy];
  }

  else
  {
    [trackerCopy clientZone:self didFinishUploadingAllItemsWithError:v9];
  }
}

- (void)unregisterAllItemsDidUploadTracker:(id)tracker
{
  db = self->_db;
  trackerCopy = tracker;
  [(BRCPQLConnection *)db assertOnQueue];
  [(NSMutableArray *)self->_allItemsDidUploadTrackers removeObject:trackerCopy];

  if (![(NSMutableArray *)self->_allItemsDidUploadTrackers count])
  {
    allItemsDidUploadTrackers = self->_allItemsDidUploadTrackers;
    self->_allItemsDidUploadTrackers = 0;
  }
}

- (void)disconnectNSMDQListenerAsync
{
  OUTLINED_FUNCTION_21(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __45__BRCClientZone_disconnectNSMDQListenerAsync__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    *buf = 134218498;
    v9 = v6;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx disconnected NSMDQ listeners for %@%@", buf, 0x20u);
  }

  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_forDBUpgrade_setStateBits:(unsigned int)bits clearStateBits:(unsigned int)stateBits
{
  state = self->_state;
  v5 = (state | bits) & ~stateBits;
  if (state != v5)
  {
    [(BRCClientZone *)self setNeedsSave:1];
    self->_state = v5;
  }
}

- (void)_scheduleZoneResetForUninstalledAppIfNecessary
{
  v30 = *MEMORY[0x277D85DE8];
  if (self->_resetAfterAppUninstallTimer)
  {
    goto LABEL_11;
  }

  if ((self->_state & 0x1000) == 0)
  {
    goto LABEL_11;
  }

  if (![(BRCClientZone *)self isPrivateZone])
  {
    goto LABEL_11;
  }

  v3 = [(BRCClientZone *)self db];
  dbRowID = [(BRCClientZone *)self dbRowID];
  v5 = [v3 numberWithSQL:{@"SELECT 1 FROM client_items ci WHERE ci.zone_rowid = %@ AND NOT item_id_is_documents(ci.item_id)", dbRowID}];

  if (!v5)
  {
LABEL_11:
    v20 = *MEMORY[0x277D85DE8];
    return;
  }

  if (!self->_appUninstalledDate)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    appUninstalledDate = self->_appUninstalledDate;
    self->_appUninstalledDate = v6;

    [(BRCClientZone *)self setNeedsSave:1];
  }

  v8 = [BRCUserDefaults defaultsForMangledID:0];
  [v8 zoneAutoResetDelayInSecAfterAppUninstall];
  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  [v11 timeIntervalSinceDate:self->_appUninstalledDate];
  v13 = v10 - v12;

  if (v13 > 0.0)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      zoneName = [(BRCClientZone *)self zoneName];
      *location = 134218498;
      *&location[4] = v13;
      v26 = 2112;
      v27 = zoneName;
      v28 = 2112;
      v29 = v14;
      _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] schedule zone reset timer to run after %f sec for %@%@", location, 0x20u);
    }

    objc_initWeak(location, self);
    v16 = objc_alloc(MEMORY[0x277CFAEF8]);
    clientTruthWorkloop = [(BRCAccountSession *)self->_session clientTruthWorkloop];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __63__BRCClientZone__scheduleZoneResetForUninstalledAppIfNecessary__block_invoke;
    v23[3] = &unk_278500FD8;
    objc_copyWeak(&v24, location);
    v18 = [v16 initWithName:@"zone-auto-reset" interval:clientTruthWorkloop callbackQueue:v23 block:v13];
    resetAfterAppUninstallTimer = self->_resetAfterAppUninstallTimer;
    self->_resetAfterAppUninstallTimer = v18;

    [(BRTimer *)self->_resetAfterAppUninstallTimer start];
    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
    goto LABEL_11;
  }

  v21 = *MEMORY[0x277D85DE8];

  [(BRCClientZone *)self scheduleReset:3];
}

uint64_t __63__BRCClientZone__scheduleZoneResetForUninstalledAppIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(WeakRetained + 73) & 0x10) != 0)
    {
      v3 = brc_bread_crumbs();
      v4 = brc_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __63__BRCClientZone__scheduleZoneResetForUninstalledAppIfNecessary__block_invoke_cold_1();
      }

      [v2 scheduleReset:3];
    }

    v5 = v2[59];
    v2[59] = 0;
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __63__BRCClientZone__scheduleZoneResetForUninstalledAppIfNecessary__block_invoke_cold_2();
    }
  }

  return 0;
}

- (unsigned)_activateState:(unsigned int)state origState:(unsigned int)origState
{
  v38 = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->_db assertOnQueue];
  if (self->_state != state)
  {
    [(BRCClientZone *)self setNeedsSave:1];
    self->_state = state;
  }

  if ((state & 0x100) != 0)
  {
    self->_state = state & 0xFFFFFFEF;
  }

  [(BRCClientZone *)self _fixupEnhancedDrivePrivacyState];
  state = self->_state;
  v8 = state ^ origState;
  if (state != origState)
  {
    if (self->_needsSave)
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v29 = BRCPrettyPrintBitmapWithContext(origState, &local_container_state_entries, 0);
        *buf = 138412802;
        selfCopy = self;
        v34 = 2112;
        v35 = v29;
        v36 = 2112;
        v37 = v9;
        _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ state changed, was %@%@", buf, 0x20u);
      }
    }

    if ((v8 & 0x200000) != 0)
    {
      if ((self->_state & 0x200000) != 0)
      {
        [(BRCClientZone *)self disconnectNSMDQListenerAsync];
      }

      else
      {
        osNameRequiredToSync = self->_osNameRequiredToSync;
        self->_osNameRequiredToSync = 0;
      }
    }

    v12 = self->_state & 0x201000;
    if ((origState & 0x201000) != v12)
    {
      if (v12)
      {
        applyScheduler = [(BRCAccountSession *)self->_session applyScheduler];
        [applyScheduler deleteJobsMatching:self->_serverZone];

        if ((origState & 0x1000) == 0 && (self->_state & 0x1000) != 0 && [(BRCClientZone *)self isPrivateZone])
        {
          v14 = [MEMORY[0x277CBEAA8] now];
          appUninstalledDate = self->_appUninstalledDate;
          self->_appUninstalledDate = v14;

          [(BRCClientZone *)self setNeedsSave:1];
          [(BRCClientZone *)self _scheduleZoneResetForUninstalledAppIfNecessary];
        }
      }

      else
      {
        if (self->_resetAfterAppUninstallTimer)
        {
          v16 = brc_bread_crumbs();
          v17 = brc_default_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [BRCClientZone _activateState:origState:];
          }

          [(BRTimer *)self->_resetAfterAppUninstallTimer stop];
          resetAfterAppUninstallTimer = self->_resetAfterAppUninstallTimer;
          self->_resetAfterAppUninstallTimer = 0;
        }

        v19 = self->_appUninstalledDate;
        self->_appUninstalledDate = 0;

        [(BRCClientZone *)self setNeedsSave:1];
        applyScheduler2 = [(BRCAccountSession *)self->_session applyScheduler];
        [applyScheduler2 repopulateJobsForZone:self->_serverZone];

        [(BRCClientZone *)self scheduleSyncDown];
        [(BRCClientZone *)self scheduleSyncUp];
      }
    }

    if ((v8 & 0x400000) != 0)
    {
      v21 = self->_session;
      if ([(BRCClientZone *)self isCloudDocsZone])
      {
        session = self->_session;
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __42__BRCClientZone__activateState_origState___block_invoke;
        v30[3] = &unk_2785002E8;
        v31 = v21;
        [(BRCAccountSession *)session enumeratePrivateClientZones:v30];
        documentsFolderItemID = v31;
      }

      else
      {
        if (![(BRCClientZone *)self isPrivateZone])
        {
LABEL_31:
          if ([(BRCClientZone *)self isPrivateZone])
          {
            [(BRCClientZone *)self _bumpNotificationRankOnTopLevelFolderSharesParentedToZone];
          }

          else
          {
            [(BRCClientZone *)self _bumpNotificationRankOnTopLevelFolderSharesInZone];
          }

          goto LABEL_35;
        }

        asPrivateClientZone = [(BRCClientZone *)self asPrivateClientZone];
        defaultAppLibrary = [asPrivateClientZone defaultAppLibrary];
        documentsFolderItemID = [defaultAppLibrary documentsFolderItemID];

        v26 = [[BRCItemGlobalID alloc] initWithZoneRowID:self->_dbRowID itemID:documentsFolderItemID];
        [(BRCAccountSession *)v21 bumpNotificationRankOnItemGlobalID:v26];
      }

      goto LABEL_31;
    }
  }

LABEL_35:
  [(BRCClientZone *)self _flushIdleBlocksIfNeeded];
  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __42__BRCClientZone__activateState_origState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 defaultAppLibrary];
  v5 = [v4 documentsFolderItemID];

  v6 = [BRCItemGlobalID alloc];
  v7 = [v3 dbRowID];

  v8 = [(BRCItemGlobalID *)v6 initWithZoneRowID:v7 itemID:v5];
  [*(a1 + 32) bumpNotificationRankOnItemGlobalID:v8];

  return 1;
}

- (BOOL)setStateBits:(unsigned int)bits
{
  state = self->_state;
  v4 = (bits & ~state) != 0;
  [(BRCClientZone *)self _activateState:state | bits origState:?];
  return v4;
}

- (BOOL)isEqualToClientZone:(id)zone
{
  zoneCopy = zone;
  mangledID = [zoneCopy mangledID];
  if (mangledID)
  {
    v6 = [(BRMangledID *)self->_mangledID isEqualToMangledID:zoneCopy[7]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCClientZone *)self isEqualToClientZone:equalCopy];
  }

  return v5;
}

- (id)descriptionWithContext:(id)context
{
  contextCopy = context;
  changeState = [(BRCServerZone *)self->_serverZone changeState];
  if ([(BRCClientZone *)self isForeground])
  {
    v6 = @"foreground";
    v7 = 7;
  }

  else
  {
    v6 = @"background";
    v7 = 2;
  }

  v18 = [BRCDumpContext highlightedString:v6 type:v7 context:contextCopy];
  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = [(BRMangledID *)self->_mangledID description];
  fp_obfuscatedDotSeparatedComponents = [v8 fp_obfuscatedDotSeparatedComponents];
  dbRowID = self->_dbRowID;
  v10 = BRCPrettyPrintBitmapWithContext(self->_state, &local_container_state_entries, contextCopy);
  v11 = BRCServerZoneStatePrettyPrintWithContext([(BRCServerZone *)self->_serverZone state], contextCopy);
  if ([(BRCClientZone *)self syncState])
  {
    v12 = BRCPrettyPrintBitmap();
  }

  else
  {
    v12 = @"idle";
  }

  v13 = [changeState descriptionWithContext:contextCopy];
  v14 = [v17 initWithFormat:@"<%@[%@] %@ {client:%@ server:%@ sync:%@ %@ rid:%llu appuninstalled:%@}>", fp_obfuscatedDotSeparatedComponents, dbRowID, v18, v10, v11, v12, v13, self->_requestID, self->_appUninstalledDate];

  return v14;
}

id __34__BRCClientZone_itemByDocumentID___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 session];
  v8 = [v7 newLocalItemFromPQLResultSet:v6 db:*(*(a1 + 32) + 64) error:a3];

  return v8;
}

- (id)itemByFileID:(unint64_t)d dbFacade:(id)facade
{
  session = self->_session;
  facadeCopy = facade;
  itemFetcher = [(BRCAccountSession *)session itemFetcher];
  v9 = [itemFetcher globalItemByFileID:d zoneRowID:self->_dbRowID dbFacade:facadeCopy];

  return v9;
}

- (id)serverItemByParentID:(id)d andLogicalName:(id)name
{
  session = self->_session;
  nameCopy = name;
  dCopy = d;
  itemFetcher = [(BRCAccountSession *)session itemFetcher];
  v10 = [itemFetcher serverItemByParentID:dCopy andLogicalName:nameCopy zoneRowID:self->_dbRowID dbFacade:self->_dbFacade];

  return v10;
}

- (id)itemByParentID:(id)d andLogicalName:(id)name excludingItemID:(id)iD
{
  session = self->_session;
  iDCopy = iD;
  nameCopy = name;
  dCopy = d;
  itemFetcher = [(BRCAccountSession *)session itemFetcher];
  v13 = [itemFetcher itemByParentID:dCopy andLogicalName:nameCopy excludingItemID:iDCopy zoneRowID:self->_dbRowID];

  return v13;
}

- (id)itemsEnumeratorWithParentID:(id)d andLogicalName:(id)name
{
  session = self->_session;
  nameCopy = name;
  dCopy = d;
  itemFetcher = [(BRCAccountSession *)session itemFetcher];
  v10 = [itemFetcher clientItemsEnumeratorWithParentID:dCopy andLogicalName:nameCopy zoneRowID:self->_dbRowID];

  return v10;
}

- (char)serverItemTypeByItemID:(id)d dbFacade:(id)facade
{
  dCopy = d;
  facadeCopy = facade;
  if ([dCopy isSharedZoneRoot])
  {
    integerValue = 4;
  }

  else if ([dCopy isNonDesktopRoot])
  {
    session = self->_session;
    appLibraryRowID = [dCopy appLibraryRowID];
    v11 = [(BRCAccountSession *)session appLibraryByRowID:appLibraryRowID];
    state = [v11 state];

    if ((state & 0x2000000) != 0)
    {
      integerValue = 4;
    }

    else
    {
      integerValue = 9;
    }
  }

  else
  {
    dbRowID = [(BRCClientZone *)self dbRowID];
    v14 = [facadeCopy serverItemTypeForItemWithID:dCopy zoneRowID:dbRowID];

    if (v14)
    {
      integerValue = [v14 integerValue];
    }

    else if ([dCopy isDocumentsFolder])
    {
      v15 = self->_session;
      appLibraryRowID2 = [dCopy appLibraryRowID];
      v17 = [(BRCAccountSession *)v15 appLibraryByRowID:appLibraryRowID2];
      state2 = [v17 state];

      if ((state2 & 0x4000000) != 0)
      {
        integerValue = 0;
      }

      else
      {
        integerValue = 9;
      }
    }

    else
    {
      integerValue = -1;
    }
  }

  return integerValue;
}

- (id)itemsEnumeratorWithDB:(id)b
{
  bCopy = b;
  v5 = [bCopy fetch:{@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE zone_rowid = %@", self->_dbRowID}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__BRCClientZone_itemsEnumeratorWithDB___block_invoke;
  v9[3] = &unk_2784FF938;
  v9[4] = self;
  v10 = bCopy;
  v6 = bCopy;
  v7 = [v5 enumerateObjects:v9];

  return v7;
}

id __39__BRCClientZone_itemsEnumeratorWithDB___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 session];
  v8 = [v7 newLocalItemFromPQLResultSet:v6 db:*(a1 + 40) error:a3];

  return v8;
}

- (id)itemsWithInFlightDiffsEnumerator
{
  itemFetcher = [(BRCAccountSession *)self->_session itemFetcher];
  v4 = [itemFetcher clientItemsWithInFlightDiffsEnumeratorInZone:self->_dbRowID];

  return v4;
}

- (id)documentsNotIdleEnumeratorWithStartingRowID:(unint64_t)d batchSize:(unint64_t)size
{
  v5 = [(BRCPQLConnection *)self->_db fetch:@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE zone_rowid = %@    AND item_type IN (1, 6)    AND (item_localsyncupstate IN(      3, 4))   AND item_scope = 2   AND rowid > %lld ORDER BY rowid ASC LIMIT %lld", self->_dbRowID, d, size];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__BRCClientZone_documentsNotIdleEnumeratorWithStartingRowID_batchSize___block_invoke;
  v8[3] = &unk_2784FF910;
  v8[4] = self;
  v6 = [v5 enumerateObjects:v8];

  return v6;
}

id __71__BRCClientZone_documentsNotIdleEnumeratorWithStartingRowID_batchSize___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 session];
  v8 = [*(a1 + 32) session];
  v9 = [v8 clientDB];
  v10 = [v7 newLocalItemFromPQLResultSet:v6 db:v9 error:a3];

  return v10;
}

- (void)didClearOutOfQuota
{
  OUTLINED_FUNCTION_21(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSyncStateBits:(unsigned int)bits
{
  v28 = *MEMORY[0x277D85DE8];
  isSyncBlocked = [(BRCClientZone *)self isSyncBlocked];
  if ((bits & 3) != 0 && isSyncBlocked)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone setSyncStateBits:];
    }

    [(BRCClientZone *)self clearSyncStateBits:3];
    bits &= 0xFFFFFFFC;
  }

  v8 = atomic_fetch_or(&self->_syncState, bits);
  v9 = v8 | bits;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  if (v8 != (v8 | bits))
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if (v8)
      {
        v21 = BRCPrettyPrintBitmap();
      }

      else
      {
        v21 = @"idle";
      }

      v22 = 138412802;
      selfCopy = self;
      v24 = 2112;
      v25 = v21;
      v26 = 2112;
      v27 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] sync state changed: %@, was %@%@", &v22, 0x20u);
    }

    v12 = MEMORY[0x277CFAE20];
    mangledID = self->_mangledID;
    v14 = *MEMORY[0x277CFABD8];
    if (((v8 | bits) & 0xA) != 0)
    {
      v15 = (2 * ((v9 & 5) != 0)) | 4;
    }

    else
    {
      v15 = 2 * ((v9 & 5) != 0);
    }

    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
    [v12 postContainerStatusChangeNotificationWithID:mangledID key:v14 value:v17];
  }

  if ((bits & 0xF) != 0 && (v8 & 0xF) == 0)
  {
    [(BRCClientZone *)self setStateBits:16];
  }

  if ((bits & 0x20) != 0 && (v8 & 0x20) == 0)
  {
    [(BRCClientZoneDelegate *)self->_delegate didInitialSyncDownForClientZone:self];
  }

  if ((v9 & 0x23) == 1)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone setSyncStateBits:];
    }

    [(BRCClientZone *)self setSyncStateBits:2];
  }

  if ((bits & 3) != 0 && (v9 & 0xC) == 0)
  {
    [(BRCDeadlineSource *)self->_syncDeadlineSource signal];
  }

  [(BRCClientZone *)self _flushIdleBlocksIfNeeded];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)clearSyncStateBits:(unsigned int)bits
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = atomic_fetch_and(&self->_syncState, ~bits);
  v5 = v4 & ~bits;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  if (v4 != v5)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v4)
      {
        v18 = BRCPrettyPrintBitmap();
      }

      else
      {
        v18 = @"idle";
      }

      v19 = 138412802;
      selfCopy = self;
      v21 = 2112;
      v22 = v18;
      v23 = 2112;
      v24 = v6;
      _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ sync state changed, was %@%@", &v19, 0x20u);
    }

    v8 = MEMORY[0x277CFAE20];
    mangledID = self->_mangledID;
    v10 = *MEMORY[0x277CFABD8];
    if ((v5 & 0xA) != 0)
    {
      v11 = (2 * ((v5 & 5) != 0)) | 4;
    }

    else
    {
      v11 = 2 * ((v5 & 5) != 0);
    }

    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
    [v8 postContainerStatusChangeNotificationWithID:mangledID key:v10 value:v13];
  }

  if ((v4 & 0xF) != 0 && (v5 & 0xF) == 0)
  {
    [(BRCClientZone *)self clearStateBits:16];
  }

  session = [(BRCClientZone *)self session];
  periodicSyncInvestigation = [session periodicSyncInvestigation];
  [periodicSyncInvestigation completeInvestigationIfNecessaryWithOldSyncState:v4 newSyncState:v5];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addSyncDownDependency:(id)dependency
{
  dependencyCopy = dependency;
  completionBlock = [dependencyCopy completionBlock];
  objc_initWeak(&location, dependencyCopy);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__BRCClientZone_addSyncDownDependency___block_invoke;
  v12[3] = &unk_2785036A8;
  v6 = completionBlock;
  v12[4] = self;
  v13 = v6;
  objc_copyWeak(&v14, &location);
  [dependencyCopy setCompletionBlock:v12];
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  serialQueue = [clientDB serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__BRCClientZone_addSyncDownDependency___block_invoke_2;
  v10[3] = &unk_2784FF478;
  v10[4] = self;
  v11 = dependencyCopy;
  v9 = dependencyCopy;
  dispatch_async(serialQueue, v10);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __39__BRCClientZone_addSyncDownDependency___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v3 removeSyncDownDependency:WeakRetained];
}

void __39__BRCClientZone_addSyncDownDependency___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 416) addObject:*(a1 + 40)];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138412802;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] added %@ as a sync-down dependency of %@%@", &v7, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)addOutOfBandOperation:(id)operation
{
  operationCopy = operation;
  completionBlock = [operationCopy completionBlock];
  objc_initWeak(&location, operationCopy);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__BRCClientZone_addOutOfBandOperation___block_invoke;
  v12[3] = &unk_2785036A8;
  v6 = completionBlock;
  v12[4] = self;
  v13 = v6;
  objc_copyWeak(&v14, &location);
  [operationCopy setCompletionBlock:v12];
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  serialQueue = [clientDB serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__BRCClientZone_addOutOfBandOperation___block_invoke_2;
  v10[3] = &unk_2784FF478;
  v10[4] = self;
  v11 = operationCopy;
  v9 = operationCopy;
  dispatch_async(serialQueue, v10);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __39__BRCClientZone_addOutOfBandOperation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v3 removeOutOfBandOperation:WeakRetained];
}

void __39__BRCClientZone_addOutOfBandOperation___block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 40);
  [*(*(a1 + 32) + 432) addObject:*(a1 + 40)];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __39__BRCClientZone_addOutOfBandOperation___block_invoke_2_cold_1(v1);
  }
}

- (void)removeOutOfBandOperation:(id)operation
{
  operationCopy = operation;
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  serialQueue = [clientDB serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__BRCClientZone_removeOutOfBandOperation___block_invoke;
  v8[3] = &unk_2784FF478;
  v8[4] = self;
  v9 = operationCopy;
  v7 = operationCopy;
  dispatch_async(serialQueue, v8);
}

void __42__BRCClientZone_removeOutOfBandOperation___block_invoke(uint64_t a1)
{
  v1 = (a1 + 40);
  [*(*(a1 + 32) + 432) removeObject:*(a1 + 40)];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __42__BRCClientZone_removeOutOfBandOperation___block_invoke_cold_1(v1);
  }
}

- (void)_cancelOutOfBandOperations
{
  v14 = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->_db assertOnQueue];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_outOfBandSyncOperations;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeSyncDownDependency:(id)dependency
{
  dependencyCopy = dependency;
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  serialQueue = [clientDB serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__BRCClientZone_removeSyncDownDependency___block_invoke;
  v8[3] = &unk_2784FF478;
  v8[4] = self;
  v9 = dependencyCopy;
  v7 = dependencyCopy;
  dispatch_async(serialQueue, v8);
}

void __42__BRCClientZone_removeSyncDownDependency___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 416) removeObject:*(a1 + 40)];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138412802;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] removed %@ as a sync-down dependency of %@%@", &v7, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)syncDownImmediately
{
  v48 = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->_db assertOnQueue];
  memset(v40, 0, sizeof(v40));
  __brc_create_section(1, "[BRCClientZone syncDownImmediately]", 1600, 0, v40);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v40[0];
    mangledID = [(BRCClientZone *)self mangledID];
    *buf = 134218498;
    v43 = v5;
    v44 = 2112;
    v45 = mangledID;
    v46 = 2112;
    v47 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@: starting sync down%@", buf, 0x20u);
  }

  if (self->_activated)
  {
    serverState = [(BRCAccountSession *)self->_session serverState];
    mangledID = self->_mangledID;
    v39 = 0;
    v33 = [serverState migrationQueryKeyForMangledID:mangledID continuationCursor:&v39];
    v34 = v39;

    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (v33)
    {
      v10 = [[BRCMigrationQueryOperation alloc] initWithServerZone:selfCopy->_serverZone migrationKey:v33 continuationCursor:v34 sessionContext:self->_session];
      syncDownOperation = selfCopy->_syncDownOperation;
      selfCopy->_syncDownOperation = &v10->super;
    }

    else
    {
      v14 = [BRCSyncDownHandler alloc];
      serverZone = selfCopy->_serverZone;
      applyScheduler = [(BRCAccountSession *)self->_session applyScheduler];
      syncDownOperation = [(BRCSyncDownHandler *)v14 initWithServerZone:serverZone applyScheduler:applyScheduler];

      v17 = [[BRCSyncDownOperation alloc] initDeltaSyncWithServerZone:selfCopy->_serverZone sessionContext:self->_session syncDownHandler:syncDownOperation];
      v18 = selfCopy->_syncDownOperation;
      selfCopy->_syncDownOperation = v17;
    }

    [(BRCClientZone *)selfCopy _blockSyncDownOnStitchingOperations];
    objc_sync_exit(selfCopy);

    if (selfCopy->_syncDownGroup)
    {
      [(_BRCOperation *)selfCopy->_syncDownOperation setGroup:?];
    }

    else
    {
      if ([(BRCServerZone *)selfCopy->_serverZone hasFetchedServerZoneState])
      {
        [MEMORY[0x277CBC4F8] br_syncDown];
      }

      else
      {
        [MEMORY[0x277CBC4F8] br_syncDownInitial];
      }
      v19 = ;
      [(_BRCOperation *)selfCopy->_syncDownOperation setGroup:v19, v33];
    }

    if (v33)
    {
      syncDownGroup = selfCopy->_syncDownGroup;
      selfCopy->_syncDownGroup = 0;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v21 = selfCopy->_syncDownDependencies;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v22)
    {
      v23 = *v36;
      do
      {
        v24 = 0;
        do
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v35 + 1) + 8 * v24);
          v26 = brc_bread_crumbs();
          v27 = brc_default_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v43 = v25;
            v44 = 2112;
            v45 = v26;
            _os_log_debug_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] adding sync down dependency: %@%@", buf, 0x16u);
          }

          [(_BRCOperation *)selfCopy->_syncDownOperation addDependency:v25];
          ++v24;
        }

        while (v22 != v24);
        v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v22);
    }

    [(NSMutableArray *)selfCopy->_currentSyncDownBarriers addObjectsFromArray:selfCopy->_nextSyncDownBarriers];
    [(NSMutableArray *)selfCopy->_nextSyncDownBarriers removeAllObjects];
    [(BRCClientZone *)selfCopy setSyncStateBits:8];
    [(BRCClientZone *)selfCopy clearSyncStateBits:2];
    [(BRCSyncOperationThrottle *)selfCopy->_syncDownThrottle updateAfterSchedulingTask];
    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [(BRCClientZone *)&selfCopy->_syncDownThrottle syncDownImmediately];
    }

    [(BRCClientZone *)selfCopy _cancelOutOfBandOperations];
    [(_BRCOperation *)selfCopy->_syncDownOperation schedule];
    v30 = selfCopy->_syncDownOperation;
    selfCopy->_syncDeadlineSourceResumer = v30;
    v13 = v30;
    v12 = v33;
  }

  else
  {
    v34 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone syncDownImmediately];
    }

    v13 = 0;
  }

  __brc_leave_section(v40);
  v31 = *MEMORY[0x277D85DE8];

  return v13;
}

void __27__BRCClientZone__startSync__block_invoke_190(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v25 = v7;
    v12 = [WeakRetained createdAppLibraryNames];
    v24 = [v11 encounteredErrorOnPCSChainedItem];
    v13 = [v11 throttledItemInBatch];
    v14 = [v9 brc_isCloudKitOutOfQuota];
    v15 = [*(*(a1 + 32) + 8) fsUploader];
    v16 = [*(a1 + 32) serverZone];
    v17 = [v16 ownerName];
    if (v14)
    {
      [v15 ownerDidReceiveOutOfQuotaError:v17];
    }

    else
    {
      [v15 scheduleQuotaFetchIfNeededForOwner:v17];
    }

    v7 = v25;
    v18 = v24;
  }

  else
  {
    v18 = 0;
    v13 = 0;
    v12 = 0;
  }

  v19 = *(a1 + 40);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __27__BRCClientZone__startSync__block_invoke_2;
  v26[3] = &unk_2785036D0;
  v27 = v7;
  v28 = v8;
  v29 = v12;
  v30 = v9;
  v31 = v18;
  v32 = v13;
  v20 = v9;
  v21 = v12;
  v22 = v8;
  v23 = v7;
  [v19 performWithFlags:4 action:v26];
}

uint64_t __27__BRCClientZone__startSync__block_invoke_194(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 104))
  {
    [*(v2 + 152) updateAfterSchedulingTask];
  }

  else
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __27__BRCClientZone__startSync__block_invoke_194_cold_1(a1);
    }

    if (([*(*(*(a1 + 40) + 8) + 40) isCancelled] & 1) == 0)
    {
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        __27__BRCClientZone__startSync__block_invoke_194_cold_2();
      }

      [*(*(*(a1 + 40) + 8) + 40) cancel];
    }
  }

  [*(a1 + 32) _cancelOutOfBandOperations];
  return [*(*(*(a1 + 40) + 8) + 40) schedule];
}

- (void)scheduleSyncDownWithGroup:(id)group
{
  groupCopy = group;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  if (!self->_syncDownGroup || ([(BRCClientZone *)self syncState]& 0xA) == 0)
  {
    objc_storeStrong(&self->_syncDownGroup, group);
  }

  [(BRCClientZone *)self setSyncStateBits:2];
}

- (void)scheduleSyncDownFirst
{
  [(BRCPQLConnection *)self->_db assertOnQueue];

  [(BRCClientZone *)self setSyncStateBits:66];
}

- (void)scheduleSyncDownForOOBModifyRecordsAckForItemID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  [(BRCClientZone *)self setSyncStateBits:194];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_locateRecordOperations allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v9++) itemMarkedForOOBSync:dCopy];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)resetSyncBudgetAndThrottle
{
  [(BRCPQLConnection *)self->_db assertOnQueue];
  lastSyncDownError = self->_lastSyncDownError;
  self->_lastSyncDownError = 0;

  lastSyncUpError = self->_lastSyncUpError;
  self->_lastSyncUpError = 0;

  [(BRCSyncBudgetThrottle *)self->_syncUpBudget clear];
  [(BRCSyncOperationThrottle *)self->_syncUpThrottle clear];
  [(BRCSyncOperationBackoffRatio *)self->_syncUpBackoffRatio clear];
  [(BRCSyncOperationThrottle *)self->_syncDownThrottle clear];
  syncDeadlineSource = self->_syncDeadlineSource;

  [(BRCDeadlineSource *)syncDeadlineSource signal];
}

- (void)prepareDirectoryForSyncUp:(id)up
{
  v15 = *MEMORY[0x277D85DE8];
  upCopy = up;
  if (([upCopy isKnownByServer] & 1) == 0 && (objc_msgSend(upCopy, "localDiffs") & 0x400000000000000) == 0 && (-[BRCServerZone state](self->_serverZone, "state") & 4) == 0)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = upCopy;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] Item %@ isn't known by the server so marking it as created by the current device%@", &v11, 0x16u);
    }

    v7 = self->_directoriesCreatedLastSyncUp;
    objc_sync_enter(v7);
    directoriesCreatedLastSyncUp = self->_directoriesCreatedLastSyncUp;
    itemID = [upCopy itemID];
    [(NSMutableArray *)directoriesCreatedLastSyncUp addObject:itemID];

    objc_sync_exit(v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)directoryItemIDsCreatedLastSyncUp
{
  v3 = self->_directoriesCreatedLastSyncUp;
  objc_sync_enter(v3);
  if ([(NSMutableArray *)self->_directoriesCreatedLastSyncUp count])
  {
    v4 = [(NSMutableArray *)self->_directoriesCreatedLastSyncUp copy];
    [(NSMutableArray *)self->_directoriesCreatedLastSyncUp removeAllObjects];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v3);

  return v4;
}

- (void)_markLatestSyncRequestFailed
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  itemsWithInFlightDiffsEnumerator = [(BRCClientZone *)self itemsWithInFlightDiffsEnumerator];
  v4 = [itemsWithInFlightDiffsEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(itemsWithInFlightDiffsEnumerator);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        dbRowID = [(BRCServerZone *)self->_serverZone dbRowID];
        [v8 markLatestSyncRequestFailedInZone:dbRowID];

        [v8 saveToDB];
        ++v7;
      }

      while (v5 != v7);
      v5 = [itemsWithInFlightDiffsEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(BRCClientZone *)self _markRequestIDAcked];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_markRequestIDAcked
{
  [(BRCPQLConnection *)self->_db assertOnQueue];
  [(BRCClientZone *)self setNeedsSave:1];
  self->_requestID |= 1uLL;
}

- (unint64_t)allocateSyncUpRequestID
{
  [(BRCPQLConnection *)self->_db assertOnQueue];
  [(BRCClientZone *)self setNeedsSave:1];
  self->_requestID = (self->_requestID | 1) + 1;
  [(BRCClientZone *)self setSyncStateBits:256];
  return self->_requestID;
}

- (void)_learnCKInfosFromSavedRecords:(id)records isOutOfBandModifyRecords:(BOOL)modifyRecords basedOnOriginalVersion:(BOOL)version
{
  modifyRecordsCopy = modifyRecords;
  v161 = *MEMORY[0x277D85DE8];
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  obj = records;
  v145 = [obj countByEnumeratingWithState:&v148 objects:v160 count:16];
  if (v145)
  {
    v144 = *v149;
    selfCopy = self;
    do
    {
      v6 = 0;
      do
      {
        if (*v149 != v144)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v148 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [[BRFieldCKInfo alloc] initWithRecord:v7];
        recordID = [v7 recordID];
        zoneAppRetriever = [(BRCAccountSession *)self->_session zoneAppRetriever];
        v12 = [recordID brc_itemIDWithZoneAppRetriever:zoneAppRetriever];

        brc_updateDroppedReason = [v7 brc_updateDroppedReason];
        brc_oplockMergeEtag = [v7 brc_oplockMergeEtag];
        v15 = brc_oplockMergeEtag;
        if (brc_updateDroppedReason)
        {
          v16 = brc_bread_crumbs();
          v17 = brc_default_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            recordID2 = [v7 recordID];
            *buf = 138412802;
            v153 = recordID2;
            v154 = 2112;
            v155 = brc_updateDroppedReason;
            v156 = 2112;
            v157 = v16;
            _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] Not learning anything about %@ because the update was dropped: %@%@", buf, 0x20u);
          }

LABEL_12:

          goto LABEL_13;
        }

        if (brc_oplockMergeEtag)
        {
          v16 = brc_bread_crumbs();
          v17 = brc_default_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            recordID3 = [v7 recordID];
            etag = [v7 etag];
            *buf = 138413058;
            v153 = recordID3;
            v154 = 2112;
            v155 = v15;
            v156 = 2112;
            v157 = etag;
            v158 = 2112;
            v159 = v16;
            _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] Not learning anything about %@ because the server merged ETag %@ to produce %@%@", buf, 0x2Au);

            self = selfCopy;
          }

          goto LABEL_12;
        }

        if (v12 && ([v12 isNonDesktopRoot] & 1) == 0)
        {
          etag2 = [(BRFieldCKInfo *)v9 etag];
          v20 = [etag2 length];

          if (v20)
          {
            v146[0] = MEMORY[0x277D85DD0];
            v146[1] = 3221225472;
            v146[2] = __95__BRCClientZone__learnCKInfosFromSavedRecords_isOutOfBandModifyRecords_basedOnOriginalVersion___block_invoke;
            v146[3] = &unk_2784FF870;
            v138 = v9;
            v147 = v138;
            v139 = MEMORY[0x22AA4A310](v146);
            recordType = [v7 recordType];
            v22 = [recordType isEqualToString:@"structure"];

            if (v22)
            {
              clientZone = selfCopy;
              recordID4 = [v7 recordID];
              recordName = [recordID4 recordName];
              v25 = [recordName hasPrefix:@"shareAlias/"];

              if (!v25)
              {
                v135 = 0;
                v127 = 0;
                goto LABEL_35;
              }

              recordID5 = [v7 recordID];
              zoneAppRetriever2 = [(BRCAccountSession *)selfCopy->_session zoneAppRetriever];
              v127 = [recordID5 brc_itemIDWithZoneAppRetriever:zoneAppRetriever2];

              v135 = clientZone;
              v28 = [v7 objectForKeyedSubscript:@"target"];
              objc_opt_class();
              LOBYTE(zoneAppRetriever2) = objc_opt_isKindOfClass();

              if (zoneAppRetriever2)
              {
                v29 = [v7 objectForKeyedSubscript:@"target"];
                v141 = objc_alloc(MEMORY[0x277CFAE60]);
                recordID6 = [v29 recordID];
                zoneID = [recordID6 zoneID];
                v130 = [v141 initWithRecordZoneID:zoneID];

                recordID7 = [v29 recordID];
                zoneAppRetriever3 = [(BRCAccountSession *)selfCopy->_session zoneAppRetriever];
                v122 = [recordID7 brc_itemIDWithZoneAppRetriever:zoneAppRetriever3];

                v34 = [(BRCAccountSession *)selfCopy->_session serverZoneByMangledID:v130];
                clientZone = [v34 clientZone];

                v35 = v130;
                v12 = v122;
              }

              else
              {
                v29 = [(BRCClientZone *)v135 serverItemByItemID:v12];
                aliasTargetItemID = [v29 aliasTargetItemID];

                clientZone = [v29 aliasTargetClientZone];
                v35 = v135;
                v12 = aliasTargetItemID;
              }

              if (v12 && clientZone)
              {
LABEL_35:
                v46 = selfCopy;
                v47 = brc_bread_crumbs();
                v48 = brc_default_log();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                {
                  debugItemIDString = [v12 debugItemIDString];
                  etag3 = [(BRFieldCKInfo *)v138 etag];
                  *buf = 138412802;
                  v153 = debugItemIDString;
                  v154 = 2112;
                  v155 = etag3;
                  v107 = etag3;
                  v156 = 2112;
                  v157 = v47;
                  _os_log_debug_impl(&dword_223E7A000, v48, OS_LOG_TYPE_DEBUG, "[DEBUG] Learn structural ETag for %@: %@%@", buf, 0x20u);

                  v46 = selfCopy;
                }

                db = v46->_db;
                dbRowID = [(BRCClientZone *)clientZone dbRowID];
                v51 = [(BRCPQLConnection *)db fetch:@"SELECT item_stat_ckinfo, item_local_change_count, version_old_zone_item_id IS NOT NULL, item_parent_zone_rowid FROM client_items WHERE zone_rowid = %@ AND item_id = %@", dbRowID, v12];

                v120 = v51;
                if ([v51 next])
                {
                  v52 = [v51 objectOfClass:objc_opt_class() atIndex:0];
                  v53 = [v51 unsignedLongLongAtIndex:1];
                  v124 = v52;
                  etag4 = [v52 etag];
                  v55 = etag4;
                  v56 = &stru_2837504F0;
                  if (etag4)
                  {
                    v56 = etag4;
                  }

                  v57 = v56;
                  if (v53)
                  {
                    v113 = v53;
                    v58 = v57;
                    v113 = [(__CFString *)v57 stringByAppendingFormat:@"%llu", v113];;

                    v131 = v113;
                    v51 = v120;
                  }

                  else
                  {
                    v131 = v57;
                  }

                  if ([v51 BOOLAtIndex:2])
                  {
                    etagBeforeCrossZoneMove = [v124 etagBeforeCrossZoneMove];
                    [(BRFieldCKInfo *)v138 setEtagBeforeCrossZoneMove:etagBeforeCrossZoneMove];

                    v51 = v120;
                  }

                  v79 = [v51 objectOfClass:objc_opt_class() atIndex:3];

                  v60 = v12;
                  v117 = v79;
                  if (v135)
                  {
                    v125 = v60;
                    if (!v79 || (-[BRCClientZone dbRowID](v135, "dbRowID"), v80 = objc_claimAutoreleasedReturnValue(), v81 = [v80 isEqualToNumber:v79], v80, (v81 & 1) != 0))
                    {
                      v61 = v131;
                      v60 = v125;
                      goto LABEL_85;
                    }

                    v94 = brc_bread_crumbs();
                    v95 = brc_default_log();
                    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v153 = v94;
                      _os_log_impl(&dword_223E7A000, v95, OS_LOG_TYPE_DEFAULT, "[WARNING] Share alias target item changed zones while we were syncing! Updating etag of any share alias instead%@", buf, 0xCu);
                    }

                    v60 = v127;
                    v96 = v135;

                    clientZone = v96;
                  }

                  v61 = v131;
                  goto LABEL_85;
                }

                v60 = v12;
                v61 = 0;
                v117 = 0;
LABEL_85:
                v116 = selfCopy->_db;
                dbRowID2 = [(BRCClientZone *)clientZone dbRowID];
                v126 = v60;
                v114 = v60;
                v133 = v61;
                self = selfCopy;
                [(BRCPQLConnection *)v116 execute:@"UPDATE client_items SET item_stat_ckinfo = %@, item_local_change_count = 0, item_old_version_identifier = %@  WHERE zone_rowid = %@ AND item_id = %@", v138, v61, dbRowID2, v114];

                if (![(BRCPQLConnection *)selfCopy->_db changes])
                {
                  recordID8 = [v7 recordID];
                  recordName2 = [recordID8 recordName];
                  v100 = [recordName2 hasPrefix:@"documentStructure/"];

                  self = selfCopy;
                  if (v100)
                  {
                    v101 = brc_bread_crumbs();
                    v102 = brc_default_log();
                    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v153 = v12;
                      v154 = 2112;
                      v155 = v101;
                      _os_log_impl(&dword_223E7A000, v102, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't locate the item to learn stat info for %@, checking to see if it has undergone a CZM%@", buf, 0x16u);
                    }

                    v103 = selfCopy->_db;
                    v104 = MEMORY[0x22AA4A310](v139);
                    v105 = v103;
                    self = selfCopy;
                    [(BRCPQLConnection *)v105 execute:@"UPDATE client_items SET item_stat_ckinfo = call_block(%p, item_stat_ckinfo) WHERE version_old_zone_rowid = %@ AND version_old_zone_item_id = %@", v104, selfCopy->_dbRowID, v12];
                  }
                }

LABEL_91:
                goto LABEL_92;
              }

              v62 = brc_bread_crumbs();
              v63 = brc_default_log();
              self = selfCopy;
              if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v153 = v7;
                v154 = 2112;
                v155 = v62;
                _os_log_fault_impl(&dword_223E7A000, v63, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't locate alias target for %@%@", buf, 0x16u);
              }

              v64 = clientZone;
LABEL_94:
            }

            else
            {
              recordType2 = [v7 recordType];
              v39 = [recordType2 isEqualToString:@"content"];

              if (v39)
              {
                self = selfCopy;
                v123 = [v7 brc_currentUserOwnsLastEditorDeviceWithSessionContext:selfCopy->_session];
                if (v123)
                {
                  brc_lastEditorDeviceName = [v7 brc_lastEditorDeviceName];
                  clientZone = [(BRCDatabaseFacade *)selfCopy->_dbFacade deviceKeyForName:brc_lastEditorDeviceName];
                }

                else
                {
                  cachedCurrentUserRecordName = [(BRCAccountSession *)selfCopy->_session cachedCurrentUserRecordName];
                  brc_lastEditorDeviceName = [v7 brc_lastModifiedUserRecordNameWithCurrentUserRecordName:cachedCurrentUserRecordName personNameComponents:0];

                  v66 = MEMORY[0x277CCABB0];
                  v67 = [(BRCDatabaseFacade *)selfCopy->_dbFacade userKeyForOwnerName:brc_lastEditorDeviceName];
                  v68 = -[v67 longLongValue];
                  v69 = v66;
                  self = selfCopy;
                  clientZone = [v69 numberWithLongLong:v68];
                }

                v70 = [(BRCPQLConnection *)self->_db fetch:@"SELECT version_ckinfo, version_local_change_count, version_old_zone_item_id IS NOT NULL FROM client_items WHERE zone_rowid = %@ AND item_id = %@", self->_dbRowID, v12];
                v132 = v70;
                if ([v70 next])
                {
                  v71 = [v70 objectOfClass:objc_opt_class() atIndex:0];
                  v136 = [v70 unsignedLongLongAtIndex:1];
                  v128 = v71;
                  etag5 = [v71 etag];
                  v73 = etag5;
                  v74 = &stru_2837504F0;
                  if (etag5)
                  {
                    v74 = etag5;
                  }

                  v75 = v74;
                  v76 = v75;
                  if (v136)
                  {
                    v136 = [(__CFString *)v75 stringByAppendingFormat:@"%llu", v136];;

                    v137 = v136;
                    self = selfCopy;
                  }

                  else
                  {
                    v137 = v75;
                  }

                  v70 = v132;
                  if ([v132 BOOLAtIndex:2])
                  {
                    etagBeforeCrossZoneMove2 = [v128 etagBeforeCrossZoneMove];
                    [(BRFieldCKInfo *)v138 setEtagBeforeCrossZoneMove:etagBeforeCrossZoneMove2];

                    self = selfCopy;
                  }
                }

                else
                {
                  v137 = 0;
                }

                if (!version)
                {
                  v83 = brc_bread_crumbs();
                  v84 = brc_default_log();
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v153 = v83;
                    _os_log_debug_impl(&dword_223E7A000, v84, OS_LOG_TYPE_DEBUG, "[DEBUG] Ignoring the old etag as we uploaded a version which is not equivalent to the old etag and local change count%@", buf, 0xCu);
                  }

                  v137 = 0;
                  v70 = v132;
                }

                if (clientZone)
                {
                  v129 = brc_bread_crumbs();
                  v85 = brc_default_log();
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
                  {
                    debugItemIDString2 = [v12 debugItemIDString];
                    etag6 = [(BRFieldCKInfo *)v138 etag];
                    if (v123)
                    {
                      [v7 brc_lastEditorDeviceName];
                    }

                    else
                    {
                      [v7 modifiedByDevice];
                    }
                    v110 = ;
                    *buf = 138413058;
                    v153 = debugItemIDString2;
                    v154 = 2112;
                    v155 = etag6;
                    v156 = 2112;
                    v157 = v110;
                    v158 = 2112;
                    v159 = v129;
                    _os_log_debug_impl(&dword_223E7A000, v85, OS_LOG_TYPE_DEBUG, "[DEBUG] Learn content ETag and Last Editor for %@: %@, %@%@", buf, 0x2Au);

                    v70 = v132;
                  }

                  v86 = v137;
                  [(BRCPQLConnection *)self->_db execute:@"UPDATE client_items SET version_ckinfo = %@, version_device = %@, version_local_change_count = 0, version_old_version_identifier = %@ WHERE zone_rowid = %@ AND item_id = %@", v138, clientZone, v137, self->_dbRowID, v12];
                }

                else
                {
                  v87 = brc_bread_crumbs();
                  v88 = brc_default_log();
                  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
                  {
                    etag7 = [(BRFieldCKInfo *)v138 etag];
                    *buf = 138412802;
                    v153 = v12;
                    v154 = 2112;
                    v155 = etag7;
                    v156 = 2112;
                    v157 = v87;
                    _os_log_debug_impl(&dword_223E7A000, v88, OS_LOG_TYPE_DEBUG, "[DEBUG] Learn content ETag for %@: %@%@", buf, 0x20u);

                    self = selfCopy;
                  }

                  v86 = v137;
                  [(BRCPQLConnection *)self->_db execute:@"UPDATE client_items SET version_ckinfo = %@, version_local_change_count = 0, version_old_version_identifier = %@ WHERE zone_rowid = %@ AND item_id = %@", v138, v137, self->_dbRowID, v12];
                  v70 = v132;
                }

                if (![(BRCPQLConnection *)self->_db changes])
                {
                  v89 = brc_bread_crumbs();
                  v90 = brc_default_log();
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v153 = v12;
                    v154 = 2112;
                    v155 = v89;
                    _os_log_impl(&dword_223E7A000, v90, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't locate the item to learn version info for %@, checking to see if it has undergone a CZM%@", buf, 0x16u);
                  }

                  v91 = selfCopy->_db;
                  v92 = MEMORY[0x22AA4A310](v139);
                  v93 = v91;
                  self = selfCopy;
                  [(BRCPQLConnection *)v93 execute:@"UPDATE client_items SET version_ckinfo = call_block(%p, version_ckinfo) WHERE version_old_zone_rowid = %@ AND version_old_zone_item_id = %@", v92, selfCopy->_dbRowID, v12];

                  v70 = v132;
                }

                goto LABEL_91;
              }

              recordType3 = [v7 recordType];
              v42 = [recordType3 isEqualToString:@"perParticipantMetadata"];

              if (v42)
              {
                v43 = brc_bread_crumbs();
                v44 = brc_default_log();
                self = selfCopy;
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                {
                  etag8 = [(BRFieldCKInfo *)v138 etag];
                  *buf = 138412802;
                  v153 = v12;
                  v154 = 2112;
                  v155 = etag8;
                  v156 = 2112;
                  v157 = v43;
                  _os_log_debug_impl(&dword_223E7A000, v44, OS_LOG_TYPE_DEBUG, "[DEBUG] Learn side-car ETag for %@: %@%@", buf, 0x20u);

                  self = selfCopy;
                }

                [(BRCPQLConnection *)self->_db execute:@"UPDATE client_items SET item_side_car_ckinfo = %@ WHERE zone_rowid = %@ AND item_id = %@", v138, self->_dbRowID, v12];
              }

              else
              {
                self = selfCopy;
              }

LABEL_92:
              if (modifyRecordsCopy)
              {
                v64 = [(BRCClientZone *)self itemByItemID:v12];
                [v64 scheduleSyncDownForOOBModifyRecordsAck];
                [v64 saveToDB];
                goto LABEL_94;
              }
            }

            v16 = v147;
LABEL_13:

            goto LABEL_14;
          }

          self = selfCopy;
        }

LABEL_14:

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v145 != v6);
      v111 = [obj countByEnumeratingWithState:&v148 objects:v160 count:16];
      v145 = v111;
    }

    while (v111);
  }

  v112 = *MEMORY[0x277D85DE8];
}

void __95__BRCClientZone__learnCKInfosFromSavedRecords_isOutOfBandModifyRecords_basedOnOriginalVersion___block_invoke(uint64_t a1, sqlite3_context *a2, int a3, void *a4)
{
  if (a3 != 1)
  {
    __95__BRCClientZone__learnCKInfosFromSavedRecords_isOutOfBandModifyRecords_basedOnOriginalVersion___block_invoke_cold_1();
  }

  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __95__BRCClientZone__learnCKInfosFromSavedRecords_isOutOfBandModifyRecords_basedOnOriginalVersion___block_invoke_cold_2();
  }

  v9 = [BRFieldCKInfo newFromSqliteValue:*a4];
  v10 = [*(a1 + 32) etag];
  [v9 setEtagBeforeCrossZoneMove:v10];

  v11 = [v9 data];
  sqlite3_result_blob(a2, [v11 bytes], objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_syncUpOfRecords:(id)records createdAppLibraryNames:(id)names didFinishWithError:(id)error errorWasOnPCSChainedItem:(BOOL)item throttledItemInBatch:(BOOL)batch
{
  batchCopy = batch;
  v74 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  namesCopy = names;
  errorCopy = error;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  memset(v60, 0, sizeof(v60));
  __brc_create_section(0, "[BRCClientZone _syncUpOfRecords:createdAppLibraryNames:didFinishWithError:errorWasOnPCSChainedItem:throttledItemInBatch:]", 2170, 0, v60);
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v48 = v60[0];
    [(BRCSyncUpOperation *)self->_syncUpOperation cost];
    v50 = v49;
    v51 = [recordsCopy count];
    *buf = 134219266;
    v52 = @"(successful)";
    v63 = v48;
    if (errorCopy)
    {
      v52 = errorCopy;
    }

    v64 = 2112;
    selfCopy2 = self;
    v66 = 2048;
    v67 = v50;
    v68 = 2048;
    v69 = v51;
    v70 = 2112;
    v71 = v52;
    v72 = 2112;
    v73 = v15;
    _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Sync: completed sync up for %@, cost:%.1f, itemCount:%llu %@%@", buf, 0x3Eu);
  }

  if (!errorCopy)
  {
    containerScheduler = [(BRCAccountSession *)self->_session containerScheduler];
    syncUpBudget = [containerScheduler syncUpBudget];
    [(BRCSyncUpOperation *)self->_syncUpOperation cost];
    [syncUpBudget consume:?];

    syncUpBudget = self->_syncUpBudget;
    [(BRCSyncUpOperation *)self->_syncUpOperation cost];
    [(BRCSyncBudgetThrottle *)syncUpBudget consume:?];
    [(BRCClientZone *)self _increaseSyncUpBatchSizeAfterSuccess];
  }

  syncUpOperation = self->_syncUpOperation;
  self->_syncUpOperation = 0;

  objc_storeStrong(&self->_lastSyncUpError, error);
  self->_lastSyncUpErrorWasOnChainedItem = item;
  [(BRCSyncOperationBackoffRatio *)self->_syncUpBackoffRatio newSyncOperationWithError:errorCopy];
  if ([(__CFString *)errorCopy brc_containsCloudKitErrorCode:27])
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone _syncUpOfRecords:createdAppLibraryNames:didFinishWithError:errorWasOnPCSChainedItem:throttledItemInBatch:];
    }

    [(BRCClientZone *)self _decreaseSyncUpBatchSizeAfterError];
  }

  if (errorCopy)
  {
    if ([(__CFString *)errorCopy brc_isResetError])
    {
      brc_bread_crumbs();
      v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [BRCClientZone _syncUpOfRecords:? createdAppLibraryNames:? didFinishWithError:? errorWasOnPCSChainedItem:? throttledItemInBatch:?];
      }
    }

    else if ([(__CFString *)errorCopy brc_isCloudKitErrorRequiringAssetRescan])
    {
      brc_bread_crumbs();
      v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        requestID = self->_requestID;
        *buf = 134218498;
        v63 = requestID;
        v64 = 2112;
        selfCopy2 = errorCopy;
        v66 = 2112;
        v67 = v23;
        _os_log_debug_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync: requestID:%llu failed sending: %@%@", buf, 0x20u);
      }
    }

    else
    {
      brc_bread_crumbs();
      v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, 0x90u))
      {
        v54 = self->_requestID;
        *buf = 134218498;
        v63 = v54;
        v64 = 2112;
        selfCopy2 = errorCopy;
        v66 = 2112;
        v67 = v23;
        _os_log_error_impl(&dword_223E7A000, v24, 0x90u, "[ERROR] Sync: requestID:%llu failed sending: %@%@", buf, 0x20u);
      }
    }

    v36 = +[BRCAccountsManager sharedManager];
    [v36 retrySyncBubbleLaterIfNeededWithError:errorCopy];

    if (([(__CFString *)errorCopy brc_isEverRetriable]& 1) == 0)
    {
      [(BRCClientZone *)self recomputeAllItemsDidUploadState];
    }

    if (([(__CFString *)errorCopy brc_isResetError]& 1) != 0 || ![(__CFString *)errorCopy brc_isCloudKitErrorSafeToSyncUpWithoutSyncDown])
    {
      v34 = 19;
    }

    else
    {
      [(BRCClientZone *)self _markLatestSyncRequestFailed];
      userInfo = [(__CFString *)errorCopy userInfo];
      v38 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __122__BRCClientZone__syncUpOfRecords_createdAppLibraryNames_didFinishWithError_errorWasOnPCSChainedItem_throttledItemInBatch___block_invoke;
      v59[3] = &unk_278503748;
      v59[4] = self;
      [v38 enumerateKeysAndObjectsUsingBlock:v59];

      v34 = 1;
    }

    v39 = +[BRCAutoBugCaptureReporter sharedABCReporter];
    [v39 captureLogsForOperationType:@"SyncHealth" ofSubtype:@"SyncUp" forError:errorCopy];
  }

  else
  {
    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone _syncUpOfRecords:? createdAppLibraryNames:? didFinishWithError:? errorWasOnPCSChainedItem:? throttledItemInBatch:?];
    }

    if ([(BRCClientZone *)self isPrivateZone])
    {
      asPrivateClientZone = [(BRCClientZone *)self asPrivateClientZone];
      defaultAppLibrary = [asPrivateClientZone defaultAppLibrary];
      [defaultAppLibrary setStateBits:2];
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v29 = namesCopy;
    v30 = [v29 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v30)
    {
      v31 = *v56;
      do
      {
        v32 = 0;
        do
        {
          if (*v56 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = [(BRCAccountSession *)self->_session appLibraryByID:*(*(&v55 + 1) + 8 * v32), v55];
          [v33 setStateBits:2];

          ++v32;
        }

        while (v30 != v32);
        v30 = [v29 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v30);
    }

    [(BRCClientZone *)self learnCKInfosFromSavedRecords:recordsCopy isOutOfBandModifyRecords:0];
    v34 = 18;
  }

  [(BRCClientZone *)self setSyncStateBits:v34, v55];
  [(BRCClientZone *)self clearSyncStateBits:4];
  if (batchCopy && (-[BRCClientZone mangledID](self, "mangledID"), v40 = objc_claimAutoreleasedReturnValue(), +[BRCUserDefaults defaultsForMangledID:](BRCUserDefaults, "defaultsForMangledID:", v40), v41 = objc_claimAutoreleasedReturnValue(), v42 = [v41 treatPerItemThrottleAsOperationSuccess], v41, v40, (v42 & 1) != 0))
  {
    v43 = 0;
  }

  else
  {
    v43 = errorCopy;
  }

  [(BRCSyncOperationThrottle *)self->_syncUpThrottle updateForError:v43];
  if (errorCopy || ([(BRCClientZone *)self syncDownImmediately], v44 = objc_claimAutoreleasedReturnValue(), v44, !v44))
  {
    [(BRCDeadlineSource *)self->_syncDeadlineSource resume];
    [(BRCDeadlineSource *)self->_syncDeadlineSource signal];
  }

  [(BRCClientZone *)self handleZoneLevelErrorIfNeeded:errorCopy forItemCreation:1];
  brc_bread_crumbs();
  v45 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v46 = brc_default_log();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    syncUpThrottle = self->_syncUpThrottle;
    *buf = 138412802;
    v63 = syncUpThrottle;
    v64 = 2112;
    selfCopy2 = self;
    v66 = 2112;
    v67 = v45;
    _os_log_debug_impl(&dword_223E7A000, v46, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync: updated sync-up throttle: %@\n      and container state: %@%@", buf, 0x20u);
  }

  __brc_leave_section(v60);
  v47 = *MEMORY[0x277D85DE8];
}

void __122__BRCClientZone__syncUpOfRecords_createdAppLibraryNames_didFinishWithError_errorWasOnPCSChainedItem_throttledItemInBatch___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([v5 brc_isCloudKitOutOfQuota])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(a1 + 32);
      v7 = [v6[1] zoneAppRetriever];
      v8 = [v12 brc_itemIDWithZoneAppRetriever:v7];
      v9 = [v6 itemByItemID:v8];

      if (([v9 isDead] & 1) == 0 && objc_msgSend(v9, "needsSyncUp") && objc_msgSend(v9, "isDocument"))
      {
        v10 = [*(*(a1 + 32) + 8) fsUploader];
        v11 = [v9 asDocument];
        [v10 finishedSyncingUpItem:v11 withOutOfQuotaError:v5];
      }
    }
  }
}

- (BOOL)_isIdle
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(BRCClientZone *)self isPrivateZone])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    asPrivateClientZone = [(BRCClientZone *)self asPrivateClientZone];
    appLibraries = [asPrivateClientZone appLibraries];

    v5 = [appLibraries countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(appLibraries);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          if (([v9 state] & 4) != 0)
          {
            v10 = brc_bread_crumbs();
            v11 = brc_default_log();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              selfCopy = self;
              v28 = 2112;
              v29 = v9;
              v30 = 2112;
              v31 = v10;
              _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ isn't idle because %@ needs lost%@", buf, 0x20u);
            }

            goto LABEL_29;
          }
        }

        v6 = [appLibraries countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  if ((self->_state & 0x110) != 0)
  {
    appLibraries = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone _isIdle];
    }
  }

  else
  {
    v12 = atomic_load(&self->_syncState);
    if ((v12 & 0xF) != 0)
    {
      appLibraries = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [BRCClientZone _isIdle];
      }
    }

    else
    {
      fsDownloader = [(BRCAccountSession *)self->_session fsDownloader];
      v14 = [fsDownloader haveActiveJobsMatching:self->_serverZone];

      if (v14)
      {
        appLibraries = brc_bread_crumbs();
        v10 = brc_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [BRCClientZone _isIdle];
        }
      }

      else
      {
        fsUploader = [(BRCAccountSession *)self->_session fsUploader];
        v16 = [fsUploader haveActiveJobsMatching:self->_serverZone];

        if (v16)
        {
          appLibraries = brc_bread_crumbs();
          v10 = brc_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            [BRCClientZone _isIdle];
          }
        }

        else
        {
          applyScheduler = [(BRCAccountSession *)self->_session applyScheduler];
          [applyScheduler deleteExpiredJobs];

          applyScheduler2 = [(BRCAccountSession *)self->_session applyScheduler];
          v19 = [applyScheduler2 haveActiveJobsMatching:self->_serverZone];

          if (!v19)
          {
            result = 1;
            goto LABEL_30;
          }

          appLibraries = brc_bread_crumbs();
          v10 = brc_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            [BRCClientZone _isIdle];
          }
        }
      }
    }
  }

LABEL_29:

  result = 0;
LABEL_30:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)notifyClient:(id)client afterNextSyncDown:(id)down
{
  clientCopy = client;
  downCopy = down;
  serialQueue = [(BRCPQLConnection *)self->_db serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__BRCClientZone_notifyClient_afterNextSyncDown___block_invoke;
  block[3] = &unk_2784FF5B8;
  v12 = clientCopy;
  selfCopy = self;
  v14 = downCopy;
  v9 = downCopy;
  v10 = clientCopy;
  dispatch_async(serialQueue, block);
}

void __48__BRCClientZone_notifyClient_afterNextSyncDown___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __48__BRCClientZone_notifyClient_afterNextSyncDown___block_invoke_cold_1(a1);
  }

  v4 = *(a1 + 40);
  if (v4[76])
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
    v4 = *(a1 + 40);
  }

  if ([v4 isSyncBlocked])
  {
    v6 = [MEMORY[0x277CCA9B8] brc_errorSyncBlocked];

    v5 = v6;
  }

  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = *(*(a1 + 40) + 128);
    if (v7 && ([v7 nonDiscretionary] & 1) == 0)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __48__BRCClientZone_notifyClient_afterNextSyncDown___block_invoke_cold_2();
      }

      [*(a1 + 40) _prepareForForegroundSyncDown];
    }

    v10 = *(*(a1 + 40) + 368);
    if (!v10)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = *(a1 + 40);
      v13 = *(v12 + 368);
      *(v12 + 368) = v11;

      v10 = *(*(a1 + 40) + 368);
    }

    v14 = MEMORY[0x22AA4A310](*(a1 + 48));
    [v10 addObject:v14];
  }
}

- (void)notifyClient:(id)client whenIdle:(id)idle
{
  clientCopy = client;
  idleCopy = idle;
  serialQueue = [(BRCPQLConnection *)self->_db serialQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__BRCClientZone_notifyClient_whenIdle___block_invoke;
  v11[3] = &unk_2785037C0;
  v12 = clientCopy;
  v13 = idleCopy;
  v11[4] = self;
  v9 = clientCopy;
  v10 = idleCopy;
  dispatch_async_with_logs_5(serialQueue, v11);
}

void __39__BRCClientZone_notifyClient_whenIdle___block_invoke(id *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = [a1[4] mangledID];
  if ((*(*v2 + 76) & 1) == 0)
  {
    v4 = a1[6];
    v5 = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
    goto LABEL_5;
  }

  if ([*v2 isSyncBlocked])
  {
    v4 = a1[6];
    v5 = [MEMORY[0x277CCA9B8] brc_errorSyncBlocked];
LABEL_5:
    v6 = v5;
    v4[2](v4, 0, v5);

    goto LABEL_6;
  }

  if ([a1[4] _isIdle])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __39__BRCClientZone_notifyClient_whenIdle___block_invoke_cold_1();
    }

    (*(a1[6] + 2))();
  }

  else
  {
    v30 = 0uLL;
    v31 = 0;
    __brc_create_section(0, "[BRCClientZone notifyClient:whenIdle:]_block_invoke", 2390, 0, &v30);
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v21 = a1[5];
      *location = 134218754;
      *&location[4] = v30;
      v35 = 2112;
      v36 = v3;
      v37 = 2112;
      v38 = v21;
      v39 = 2112;
      v40 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx waiting for %@ to be idle for %@ because it is busy%@", location, 0x2Au);
    }

    v32 = v30;
    v33 = v31;
    v12 = *(a1[4] + 49);
    if (!v12)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = a1[4];
      v15 = v14[49];
      v14[49] = v13;

      v12 = *(a1[4] + 49);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __39__BRCClientZone_notifyClient_whenIdle___block_invoke_241;
    v24[3] = &unk_278503770;
    v28 = v32;
    v29 = v33;
    v25 = v3;
    v26 = a1[5];
    v27 = a1[6];
    v16 = MEMORY[0x22AA4A310](v24);
    [v12 addObject:v16];

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    objc_initWeak(location, a1[4]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __39__BRCClientZone_notifyClient_whenIdle___block_invoke_243;
    v22[3] = &unk_278503798;
    objc_copyWeak(&v23, location);
    v18 = [v17 addObserverForName:@"BRCFSSchedulerBaseDidUpdateHasWorkNotification" object:0 queue:0 usingBlock:v22];
    v19 = a1[4];
    v20 = v19[48];
    v19[48] = v18;

    objc_destroyWeak(&v23);
    objc_destroyWeak(location);
  }

LABEL_6:

  v7 = *MEMORY[0x277D85DE8];
}

void __39__BRCClientZone_notifyClient_whenIdle___block_invoke_241(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    *buf = 134218754;
    v12 = v9;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx %@ is now idle, notifying %@%@", buf, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
  __brc_leave_section(&v9);

  v6 = *MEMORY[0x277D85DE8];
}

void __39__BRCClientZone_notifyClient_whenIdle___block_invoke_243(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained[1] personaIdentifier];
    if ([v6 isEqualToString:@"__defaultPersonaID__"])
    {
    }

    else
    {
      v7 = [v5[1] personaIdentifier];

      if (v7)
      {
        v8 = 0;
        goto LABEL_9;
      }
    }

    if (_block_invoke___personaOnceToken_0 != -1)
    {
      __39__BRCClientZone_notifyClient_whenIdle___block_invoke_243_cold_1();
    }

    v7 = _block_invoke___personalPersona_0;
    v8 = 1;
LABEL_9:
    v9 = [MEMORY[0x277D77BF8] sharedManager];
    v10 = [v9 currentPersona];

    v28 = 0;
    v11 = [v10 userPersonaUniqueString];
    v12 = v11;
    if (v11 == v7 || ([v11 isEqualToString:v7] & 1) != 0)
    {
      v13 = 0;
    }

    else
    {
      if (voucher_process_can_use_arbitrary_personas())
      {
        v27 = 0;
        v16 = [v10 copyCurrentPersonaContextWithError:&v27];
        v17 = v27;
        v18 = v28;
        v28 = v16;

        if (v17)
        {
          v19 = brc_bread_crumbs();
          v20 = brc_default_log();
          if (os_log_type_enabled(v20, 0x90u))
          {
            __39__BRCClientZone_notifyClient_whenIdle___block_invoke_243_cold_4();
          }
        }

        v13 = [v10 br_generateAndRestorePersonaContextWithPersonaUniqueString:v7];

        if (!v13)
        {
          goto LABEL_12;
        }

        v21 = brc_bread_crumbs();
        v22 = brc_default_log();
        if (os_log_type_enabled(v22, 0x90u))
        {
          v23 = [v5[1] personaIdentifier];
          *buf = 138412802;
          v30 = v23;
          v31 = 2112;
          v32 = v13;
          v33 = 2112;
          v34 = v21;
          _os_log_error_impl(&dword_223E7A000, v22, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
        }
      }

      else
      {
        if (!v8 || ([v10 isDataSeparatedPersona] & 1) != 0)
        {
          v24 = brc_bread_crumbs();
          v25 = brc_default_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            __br_notify_register_dispatch_block_invoke_cold_3();
          }

          v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
          goto LABEL_12;
        }

        v21 = brc_bread_crumbs();
        v22 = brc_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          __br_notify_register_dispatch_block_invoke_cold_2();
        }

        v13 = 0;
      }
    }

LABEL_12:
    v14 = [v5[8] serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__BRCClientZone_notifyClient_whenIdle___block_invoke_251;
    block[3] = &unk_2784FF450;
    block[4] = v5;
    dispatch_async(v14, block);

    _BRRestorePersona();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __39__BRCClientZone_notifyClient_whenIdle___block_invoke_2()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke___personalPersona_0;
  _block_invoke___personalPersona_0 = v0;
}

void __39__BRCClientZone_notifyClient_whenIdle___block_invoke_251(uint64_t a1)
{
  memset(v4, 0, sizeof(v4));
  __brc_create_section(0, "[BRCClientZone notifyClient:whenIdle:]_block_invoke", 2417, 0, v4);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __39__BRCClientZone_notifyClient_whenIdle___block_invoke_251_cold_1(v4);
  }

  [*(a1 + 32) _flushIdleBlocksIfNeeded];
  __brc_leave_section(v4);
}

- (void)syncDownOperation:(id)operation didFinishWithError:(id)error status:(int64_t)status
{
  operationCopy = operation;
  errorCopy = error;
  fsUploader = [(BRCAccountSession *)self->_session fsUploader];
  ownerName = [(BRCServerZone *)self->_serverZone ownerName];
  [fsUploader scheduleQuotaFetchIfNeededForOwner:ownerName];

  db = self->_db;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__BRCClientZone_syncDownOperation_didFinishWithError_status___block_invoke;
  v15[3] = &unk_278503860;
  v15[4] = self;
  v16 = operationCopy;
  v17 = errorCopy;
  statusCopy = status;
  v13 = errorCopy;
  v14 = operationCopy;
  [(BRCPQLConnection *)db performWithFlags:9 action:v15];
}

uint64_t __61__BRCClientZone_syncDownOperation_didFinishWithError_status___block_invoke(uint64_t a1, void *a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = (a1 + 32);
  if (*(v4 + 136) == *(a1 + 40))
  {
    v8 = *(v4 + 128);
    *(v4 + 128) = 0;

    *(*v5 + 17) = 0;
    [*(*v5 + 23) resume];
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __61__BRCClientZone_syncDownOperation_didFinishWithError_status___block_invoke_cold_1((a1 + 32));
    }
  }

  objc_storeStrong((*(a1 + 32) + 144), *(a1 + 48));
  [*(*(a1 + 32) + 176) updateForError:*(a1 + 48)];
  [*(a1 + 32) handleZoneLevelErrorIfNeeded:*(a1 + 48) forItemCreation:0];
  v9 = *(a1 + 56);
  v10 = [*(a1 + 32) mangledID];
  v11 = [BRCUserDefaults defaultsForMangledID:v10];
  v12 = [v11 onlyTreatCaughtUpAsConsistent];

  if (v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  if (v9 > 2)
  {
    goto LABEL_10;
  }

  v31 = *(a1 + 48);
  if (v31)
  {
    if (([v31 brc_isCloudKitCancellationError] & 1) == 0 && (objc_msgSend(*(a1 + 48), "brc_isUserInitiatedRetriable") & 1) == 0)
    {
LABEL_10:
      v14 = *v5;
      v15 = *(*v5 + 44);
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __61__BRCClientZone_syncDownOperation_didFinishWithError_status___block_invoke_253;
      v68[3] = &unk_2785037E8;
      v68[4] = v14;
      [v15 enumerateKeysAndObjectsUsingBlock:v68];
      v16 = *(*v5 + 44);
      *(*v5 + 44) = 0;

      if (([*v5 isSharedZone] & 1) == 0)
      {
        v17 = [*v5 asPrivateClientZone];
        v18 = *(*v5 + 39);
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __61__BRCClientZone_syncDownOperation_didFinishWithError_status___block_invoke_255;
        v66[3] = &unk_278503810;
        v67 = v17;
        v19 = v17;
        [v18 enumerateKeysAndObjectsUsingBlock:v66];
      }

      v20 = *(a1 + 32);
      v21 = *(v20 + 312);
      *(v20 + 312) = 0;

      if (*(a1 + 48))
      {
        v54 = v13;
        v55 = v9;
        v22 = objc_opt_new();
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v23 = *(*v5 + 24);
        v24 = [v23 countByEnumeratingWithState:&v62 objects:v74 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v63;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v63 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v62 + 1) + 8 * i);
              if ([v28 nonDiscretionary])
              {
                v29 = brc_bread_crumbs();
                v30 = brc_default_log();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v71 = v28;
                  v72 = 2112;
                  v73 = v29;
                  _os_log_debug_impl(&dword_223E7A000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] Failing op %@ because the sync down failed%@", buf, 0x16u);
                }

                [v28 completedWithResult:0 error:*(a1 + 48)];
                [v28 cancel];
                [v28 schedule];
                [v22 addObject:v28];
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v62 objects:v74 count:16];
          }

          while (v25);
        }

        v5 = (a1 + 32);
        [*(*(a1 + 32) + 192) removeObjectsInArray:v22];

        v13 = v54;
        v9 = v55;
      }

      goto LABEL_31;
    }

    if (*(a1 + 48))
    {
      goto LABEL_31;
    }
  }

  if ([*(*v5 + 44) count])
  {
    v32 = objc_opt_new();
    v33 = *v5;
    v34 = *(*v5 + 44);
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __61__BRCClientZone_syncDownOperation_didFinishWithError_status___block_invoke_258;
    v60[3] = &unk_278503838;
    v60[4] = v33;
    v61 = v32;
    v35 = v32;
    [v34 enumerateKeysAndObjectsUsingBlock:v60];
    [*(*v5 + 44) removeObjectsForKeys:v35];
  }

LABEL_31:
  if (v9 <= v13)
  {
    LODWORD(v38) = 0;
    v37 = 8;
LABEL_39:
    v38 = v38 | 2;
    goto LABEL_40;
  }

  v36 = *(a1 + 48);
  if (!v36 && v9 <= 2)
  {
    if ([*v5 hasHighPriorityWatchers])
    {
      v37 = 8;
    }

    else
    {
      v37 = 344;
    }

    LODWORD(v38) = 32;
    goto LABEL_39;
  }

  v38 = 32 * (v36 == 0);
  if (v36)
  {
    v37 = 8;
  }

  else
  {
    v37 = 344;
  }

  if (v9 < 3 || v36)
  {
    goto LABEL_39;
  }

LABEL_40:
  [*v5 clearSyncStateBits:{v37, v54, v55}];
  [*v5 setSyncStateBits:v38];
  [*(*v5 + 23) signal];
  if (v9 > 2 || *(a1 + 48))
  {
    if ([*(*v5 + 47) count])
    {
      v39 = brc_bread_crumbs();
      v40 = brc_default_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v71 = v39;
        _os_log_impl(&dword_223E7A000, v40, OS_LOG_TYPE_DEFAULT, "[NOTICE] signaling sync down waiters%@", buf, 0xCu);
      }
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v41 = *(*v5 + 47);
    v42 = [v41 countByEnumeratingWithState:&v56 objects:v69 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v57;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v57 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(a1 + 48);
          (*(*(*(&v56 + 1) + 8 * j) + 16))();
        }

        v43 = [v41 countByEnumeratingWithState:&v56 objects:v69 count:16];
      }

      while (v43);
    }

    [*(*v5 + 47) removeAllObjects];
  }

  v47 = +[BRCAccountsManager sharedManager];
  [v47 retrySyncBubbleLaterIfNeededWithError:*(a1 + 48)];

  v48 = *(a1 + 48);
  if (v48)
  {
    if (([v48 brc_isEverRetriable] & 1) == 0)
    {
      [*v5 recomputeAllItemsDidUploadState];
    }

    if (*(a1 + 48))
    {
      v49 = +[BRCAutoBugCaptureReporter sharedABCReporter];
      [v49 captureLogsForOperationType:@"SyncHealth" ofSubtype:@"SyncDown" forError:*(a1 + 48)];
    }
  }

  v50 = brc_bread_crumbs();
  v51 = brc_default_log();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    __61__BRCClientZone_syncDownOperation_didFinishWithError_status___block_invoke_cold_2(v5);
  }

  v52 = *MEMORY[0x277D85DE8];
  return 1;
}

void __61__BRCClientZone_syncDownOperation_didFinishWithError_status___block_invoke_253(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) itemByItemID:v5];
  if (!v7)
  {
    v7 = [*(a1 + 32) insertParentChainForItem:v5];
  }

  if (![v7 isLive] || objc_msgSend(v7, "isShareAcceptationFault"))
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __61__BRCClientZone_syncDownOperation_didFinishWithError_status___block_invoke_253_cold_1();
    }

    v10 = [*(a1 + 32) serverItemByItemID:v5];
    v11 = v10;
    if (v10 && [v10 isLive] && ((objc_msgSend(v7, "isIdleOrRejected") & 1) != 0 || objc_msgSend(v7, "isShareAcceptationFault")))
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v28 = v7;
        v29 = 2112;
        v30 = v11;
        v31 = 2112;
        v32 = v12;
        _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] Updating item idle item %@ from server item %@ to fulfill the locate item request%@", buf, 0x20u);
      }

      [v7 updateFromServerItem:v11];
      if ([v7 saveToDBForServerEdit:1 keepAliases:0])
      {
        goto LABEL_19;
      }

      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, 0x90u))
      {
        __61__BRCClientZone_syncDownOperation_didFinishWithError_status___block_invoke_253_cold_2();
      }
    }

    else
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v28 = v7;
        v29 = 2112;
        v30 = v11;
        v31 = 2112;
        v32 = v14;
        _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't update local item %@ from server item %@%@", buf, 0x20u);
      }
    }

    v7 = 0;
LABEL_19:
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        (*(*(*(&v22 + 1) + 8 * v20) + 16))(*(*(&v22 + 1) + 8 * v20), [v7 isLive]);
        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __61__BRCClientZone_syncDownOperation_didFinishWithError_status___block_invoke_255(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = [v5 serverAliasByUnsaltedBookmarkData:a2];
  v7 = [v8 itemID];
  (a3)[2](v6, v7);
}

void __61__BRCClientZone_syncDownOperation_didFinishWithError_status___block_invoke_258(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) serverItemByItemID:v5];
  v8 = [v7 isLive];

  if (v8)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v15 + 1) + 8 * v13) + 16))(*(*(&v15 + 1) + 8 * v13));
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    [*(a1 + 40) addObject:{v5, v15}];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_fixupMissingCrossMovedItems
{
  v12 = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->_db executeWithSlowStatementRadar:@"<rdar://problem/26073809> _fixupMissingCrossMovedItems causes slow SQL assertions" sql:@"UPDATE client_items SET item_localsyncupstate = 1 WHERE zone_rowid = %@   AND item_localsyncupstate = 0   AND (item_local_diffs & 0x2000000000000000) != 0   AND NOT EXISTS (SELECT * FROM server_items WHERE server_items.item_id = client_items.item_id AND zone_rowid = %@)", self->_dbRowID, self->_dbRowID];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    changes = [(BRCPQLConnection *)self->_db changes];
    *buf = 134218242;
    v9 = changes;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] marked %lld items rejected after cross zone move%@", buf, 0x16u);
  }

  if ([(BRCPQLConnection *)self->_db changes])
  {
    applyScheduler = [(BRCAccountSession *)self->_session applyScheduler];
    [applyScheduler repopulateJobsForZone:self->_serverZone];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_didSyncDownRequestID:(unint64_t)d maxApplyRank:(int64_t)rank caughtUpWithServer:(BOOL)server syncDownDate:(id)date isFixingState:(BOOL)state
{
  serverCopy = server;
  v150 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  applyScheduler = [(BRCAccountSession *)self->_session applyScheduler];
  if (!state)
  {
    requestID = self->_requestID;
    if (requestID)
    {
      if (requestID < d)
      {
        [BRCClientZone _didSyncDownRequestID:self maxApplyRank:d caughtUpWithServer:? syncDownDate:? isFixingState:?];
      }
    }
  }

  if (!self->_lastSyncDownDate)
  {
    [(BRCClientZone *)self scheduleSyncUp];
  }

  if ([(NSMutableArray *)self->_blockedOperationsOnInitialSync count])
  {
    changeState = [(BRCServerZone *)self->_serverZone changeState];
    changeToken = [changeState changeToken];

    if (changeToken)
    {
      [(NSMutableArray *)self->_blockedOperationsOnInitialSync sortWithOptions:16 usingComparator:&__block_literal_global_270];
    }

    else
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        dCopy3 = v13;
        _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] The zone wasn't found on sync down so failing all blocked operations right away%@", buf, 0xCu);
      }

      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v15 = self->_blockedOperationsOnInitialSync;
      v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v128 objects:v149 count:16];
      if (v16)
      {
        v17 = *v129;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v129 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v128 + 1) + 8 * i);
            v20 = MEMORY[0x277CCA9B8];
            appLibraryOrZoneName = [(BRMangledID *)self->_mangledID appLibraryOrZoneName];
            v22 = [v20 brc_errorClientZoneNotFound:appLibraryOrZoneName];
            [v19 completedWithResult:0 error:v22];

            [v19 cancel];
          }

          v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v128 objects:v149 count:16];
        }

        while (v16);
      }
    }

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v23 = self->_blockedOperationsOnInitialSync;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v124 objects:v148 count:16];
    if (v24)
    {
      v25 = *v125;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v125 != v25)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v124 + 1) + 8 * j) schedule];
        }

        v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v124 objects:v148 count:16];
      }

      while (v24);
    }

    [(NSMutableArray *)self->_blockedOperationsOnInitialSync removeAllObjects];
  }

  self->_lastInsertedRank = rank;
  objc_storeStrong(&self->_lastSyncDownDate, date);
  [(BRCClientZone *)self setNeedsSave:1];
  if (serverCopy)
  {
    if ([(BRCClientZone *)self isPrivateZone])
    {
      v123 = 0u;
      v121 = 0u;
      v122 = 0u;
      v120 = 0u;
      asPrivateClientZone = [(BRCClientZone *)self asPrivateClientZone];
      appLibraries = [asPrivateClientZone appLibraries];

      v29 = [appLibraries countByEnumeratingWithState:&v120 objects:v147 count:16];
      if (v29)
      {
        v30 = 0;
        v31 = *v121;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v121 != v31)
            {
              objc_enumerationMutation(appLibraries);
            }

            v33 = *(*(&v120 + 1) + 8 * k);
            if (([v33 state] & 0x400000) != 0)
            {
              [v33 clearStateBits:0x400000];
              v30 = 1;
            }
          }

          v29 = [appLibraries countByEnumeratingWithState:&v120 objects:v147 count:16];
        }

        while (v29);

        if (v30)
        {
          [(BRCClientZone *)self _fixupMissingCrossMovedItems];
        }
      }

      else
      {
      }
    }

    if (([(BRCClientZone *)self syncState]& 0x82) == 0x80)
    {
      [(BRCPQLConnection *)self->_db execute:@"UPDATE client_items SET item_local_diffs = (item_local_diffs & (~%lld)) WHERE zone_rowid = %@ AND (item_local_diffs & %lld) != 0", 0x1000000000000000, self->_dbRowID, 0x1000000000000000];
      changes = [(BRCPQLConnection *)self->_db changes];
      v37 = brc_bread_crumbs();
      v38 = brc_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [BRCClientZone _didSyncDownRequestID:maxApplyRank:caughtUpWithServer:syncDownDate:isFixingState:];
      }

      [(BRCClientZone *)self clearSyncStateBits:128];
      if (changes)
      {
        applyScheduler2 = [(BRCAccountSession *)self->_session applyScheduler];
        [applyScheduler2 rescheduleSuspendedJobsMatching:self->_serverZone inState:22];
      }
    }

    v40 = self->_requestID;
    if (v40 != d && v40)
    {
      if ((d | 1) == v40)
      {
        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          [BRCClientZone _didSyncDownRequestID:maxApplyRank:caughtUpWithServer:syncDownDate:isFixingState:];
        }
      }

      else
      {
        v101 = brc_bread_crumbs();
        v102 = brc_default_log();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          v103 = self->_requestID;
          *buf = 134218754;
          dCopy3 = d;
          v134 = 2048;
          v135 = v103;
          v136 = 2112;
          selfCopy = self;
          v138 = 2112;
          v139 = v101;
          _os_log_impl(&dword_223E7A000, v102, OS_LOG_TYPE_DEFAULT, "[WARNING] Marking latest sync request failed because the requestIDs differ %llu vs %llu for %@\n%@", buf, 0x2Au);
        }

        if (self->_requestID < d)
        {
          self->_requestID = d;
        }

        [(BRCClientZone *)self _markLatestSyncRequestFailed];
        v104 = atomic_load(&self->_syncState);
        if ((v104 & 0x100) != 0 && !self->_lastSyncUpError)
        {
          v105 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFABD0] code:32 userInfo:0];
          [(BRCSyncOperationBackoffRatio *)self->_syncUpBackoffRatio newSyncOperationWithError:v105];
          [(BRCSyncOperationThrottle *)self->_syncUpThrottle updateForError:v105];
        }
      }

      goto LABEL_145;
    }

    if (!v40)
    {
      self->_requestID = d;
    }

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    obj = [(BRCClientZone *)self itemsWithInFlightDiffsEnumerator];
    v114 = [obj countByEnumeratingWithState:&v116 objects:v146 count:16];
    if (v114)
    {
      v112 = *v117;
      do
      {
        v43 = 0;
        do
        {
          if (*v117 != v112)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v116 + 1) + 8 * v43);
          v45 = objc_autoreleasePoolPush();
          itemID = [v44 itemID];
          v47 = [(BRCClientZone *)self serverItemByItemID:itemID];

          isSharedToMeTopLevelItem = [v44 isSharedToMeTopLevelItem];
          if (v47)
          {
            v49 = 0;
          }

          else
          {
            v49 = isSharedToMeTopLevelItem;
          }

          if (v49 == 1)
          {
            itemFetcher = [(BRCAccountSession *)self->_session itemFetcher];
            serverZone = [(BRCClientZone *)self serverZone];
            v47 = [itemFetcher serverAliasItemForSharedItem:v44 inZone:serverZone];
          }

          v52 = brc_bread_crumbs();
          v53 = brc_default_log();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218754;
            dCopy3 = d;
            v134 = 2112;
            v135 = v44;
            v136 = 2112;
            selfCopy = v47;
            v138 = 2112;
            v139 = v52;
            _os_log_debug_impl(&dword_223E7A000, v53, OS_LOG_TYPE_DEBUG, "[DEBUG] received item in request:%llu\n   local:  %@\n   server: %@\n%@", buf, 0x2Au);
          }

          if ([v44 isBRAlias])
          {
            if (v47)
            {
              v54 = ([v44 diffAgainstServerItem:v47] & 0x63) == 1;
              [applyScheduler createApplyJobFromServerItem:v47 localItem:0 state:1 kind:2];
              if (v54)
              {
                [v44 updateStructuralCKInfoFromServerItem:v47];
              }

              goto LABEL_95;
            }

            goto LABEL_106;
          }

          isSharedToMeTopLevelItem2 = [v44 isSharedToMeTopLevelItem];
          if (v47)
          {
            if (isSharedToMeTopLevelItem2 && [(BRCClientZone *)v47 isBRAlias])
            {
              asSharedToMeTopLevelItem = [v44 asSharedToMeTopLevelItem];
              v57 = [asSharedToMeTopLevelItem diffAgainstServerAliasItem:v47];
            }

            else
            {
              v57 = [v44 diffAgainstServerItem:v47];
            }

            if (([v44 localDiffs] & 0x1000000000000000) != 0)
            {
              v58 = 0;
            }

            else
            {
              v58 = (v57 & 0x7FFF) == 1;
              if ((v57 & 0x3FF0000) == 0x10000)
              {
                isDocument = [v44 isDocument];
                goto LABEL_89;
              }
            }

            isDocument = 0;
LABEL_89:
            v66 = brc_bread_crumbs();
            v67 = brc_default_log();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              v89 = BRCItemFieldsPrettyPrint();
              v90 = v89;
              *buf = 134219522;
              if (v58)
              {
                v91 = "YES";
              }

              else
              {
                v91 = "NO";
              }

              dCopy3 = d;
              if (isDocument)
              {
                v92 = "YES";
              }

              else
              {
                v92 = "NO";
              }

              v134 = 2112;
              v135 = v44;
              v136 = 2112;
              selfCopy = v47;
              v138 = 2112;
              v139 = v89;
              v140 = 2080;
              v141 = v91;
              v142 = 2080;
              v143 = v92;
              v144 = 2112;
              v145 = v66;
              _os_log_debug_impl(&dword_223E7A000, v67, OS_LOG_TYPE_DEBUG, "[DEBUG] item acknowledged in requestID:%llu\n   local:  %@\n   server: %@\n   diffs:  %@\n learning etag: structural:%s content:%s%@", buf, 0x48u);
            }

            [applyScheduler createApplyJobFromServerItem:v47 localItem:0 state:1 kind:2];
            if (v58)
            {
              [v44 updateStructuralCKInfoFromServerItem:v47];
              if ((isDocument & 1) == 0)
              {
                goto LABEL_95;
              }
            }

            else if (!isDocument)
            {
              goto LABEL_95;
            }

            asDocument = [v44 asDocument];
            [asDocument updateContentsCKInfoAndDeviceIDFromServerItem:v47];

            goto LABEL_95;
          }

          if (isSharedToMeTopLevelItem2 && [(BRCClientZone *)self isPrivateZone])
          {
            v60 = brc_bread_crumbs();
            v61 = brc_default_log();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              dCopy3 = v44;
              v134 = 2112;
              v135 = v60;
              _os_log_debug_impl(&dword_223E7A000, v61, OS_LOG_TYPE_DEBUG, "[DEBUG] Alias was rejected when syncing up in private zone %@%@", buf, 0x16u);
            }

            dbRowID = [(BRCServerZone *)self->_serverZone dbRowID];
            [v44 markLatestSyncRequestAcknowledgedInZone:dbRowID];

            [v44 saveToDBForServerEdit:1 keepAliases:0];
            clientZone = [v44 clientZone];
            itemID2 = [v44 itemID];
            v65 = [clientZone serverItemByItemID:itemID2];

            [applyScheduler createApplyJobFromServerItem:v65 localItem:v44 state:1 kind:2];
          }

          else
          {
            memset(v115, 0, sizeof(v115));
            __brc_create_section(0, "[BRCClientZone _didSyncDownRequestID:maxApplyRank:caughtUpWithServer:syncDownDate:isFixingState:]", 2774, 0, v115);
            v70 = brc_bread_crumbs();
            v71 = brc_default_log();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218498;
              dCopy3 = v115[0];
              v134 = 2112;
              v135 = v44;
              v136 = 2112;
              selfCopy = v70;
              _os_log_debug_impl(&dword_223E7A000, v71, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Resolving server-side folded path-match for: %@%@", buf, 0x20u);
            }

            v72 = [v44 st];
            parentID = [v72 parentID];
            v74 = [v44 st];
            logicalNameWithoutLocalBounce = [v74 logicalNameWithoutLocalBounce];
            v47 = [(BRCClientZone *)self serverItemByParentID:parentID andLogicalName:logicalNameWithoutLocalBounce];

            if (!v47)
            {
              goto LABEL_105;
            }

            if (([(BRCClientZone *)v47 canPathMatchMergeWithLocalItem:v44]& 1) == 0)
            {
              v76 = brc_bread_crumbs();
              v77 = brc_default_log();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                dCopy3 = v47;
                v134 = 2112;
                v135 = v44;
                v136 = 2112;
                selfCopy = v76;
                _os_log_impl(&dword_223E7A000, v77, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't merge %@ with %@%@", buf, 0x20u);
              }

LABEL_105:
              __brc_leave_section(v115);
LABEL_106:
              v78 = brc_bread_crumbs();
              v79 = brc_default_log();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                dCopy3 = v78;
                _os_log_debug_impl(&dword_223E7A000, v79, OS_LOG_TYPE_DEBUG, "[DEBUG] we couldn't find a suitable path-match, mark the item as rejected%@", buf, 0xCu);
              }

              dbRowID2 = [(BRCServerZone *)self->_serverZone dbRowID];
              [v44 markLatestSyncRequestRejectedInZone:dbRowID2];

              [v44 saveToDBForServerEdit:1 keepAliases:0];
              goto LABEL_109;
            }

            if ([v44 isDead])
            {
              __brc_leave_section(v115);
LABEL_133:
              [applyScheduler createApplyJobFromServerItem:v47 localItem:0 state:1 kind:2];
LABEL_95:
              dbRowID3 = [(BRCServerZone *)self->_serverZone dbRowID];
              [v44 markLatestSyncRequestAcknowledgedInZone:dbRowID3];

              [v44 saveToDBForServerEdit:1 keepAliases:0];
              goto LABEL_109;
            }

            itemID3 = [(BRCClientZone *)v47 itemID];
            v82 = [(BRCClientZone *)self itemByItemID:itemID3];
            v83 = brc_bread_crumbs();
            v84 = brc_default_log();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              dCopy3 = v47;
              v134 = 2112;
              v135 = v83;
              _os_log_debug_impl(&dword_223E7A000, v84, OS_LOG_TYPE_DEBUG, "[DEBUG] Found a path-match in the server truth: %@%@", buf, 0x16u);
            }

            if (!v82)
            {
              v95 = brc_bread_crumbs();
              v96 = brc_default_log();
              if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
              {
                itemID4 = [v44 itemID];
                *buf = 138412802;
                dCopy3 = itemID3;
                v134 = 2112;
                v135 = itemID4;
                v136 = 2112;
                selfCopy = v95;
                _os_log_debug_impl(&dword_223E7A000, v96, OS_LOG_TYPE_DEBUG, "[DEBUG] path-match is new, learn new item ID %@ instead of %@%@", buf, 0x20u);
              }

              [v44 learnItemID:itemID3 serverItem:v47];
LABEL_132:

              __brc_leave_section(v115);
              if (v47)
              {
                goto LABEL_133;
              }

              goto LABEL_106;
            }

            if (![v82 isDirectory] || !objc_msgSend(v44, "isDirectory"))
            {
              v93 = brc_bread_crumbs();
              v94 = brc_default_log();
              if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                dCopy3 = v93;
                _os_log_debug_impl(&dword_223E7A000, v94, OS_LOG_TYPE_DEBUG, "[DEBUG] path-match exists on the filesystem. Forcing a rejection%@", buf, 0xCu);
              }

              v47 = 0;
              goto LABEL_132;
            }

            v85 = brc_bread_crumbs();
            v86 = brc_default_log();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              dCopy3 = v85;
              _os_log_debug_impl(&dword_223E7A000, v86, OS_LOG_TYPE_DEBUG, "[DEBUG] path-match exists on the filesystem. Merging the contents of the directories%@", buf, 0xCu);
            }

            asDirectory = [v44 asDirectory];
            asDirectory2 = [v82 asDirectory];
            [asDirectory mergeContentsIntoDirectory:asDirectory2];

            __brc_leave_section(v115);
          }

LABEL_109:
          objc_autoreleasePoolPop(v45);
          ++v43;
        }

        while (v114 != v43);
        v98 = [obj countByEnumeratingWithState:&v116 objects:v146 count:16];
        v114 = v98;
      }

      while (v98);
    }

    v99 = brc_bread_crumbs();
    v100 = brc_default_log();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone _didSyncDownRequestID:maxApplyRank:caughtUpWithServer:syncDownDate:isFixingState:];
    }

    [(BRCClientZone *)self scheduleSyncUp];
    [(BRCClientZone *)self _markRequestIDAcked];
    [(BRCClientZone *)self recomputeAllItemsDidUploadState];
  }

  else
  {
    v34 = brc_bread_crumbs();
    v35 = brc_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      dCopy3 = v34;
      _os_log_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEFAULT, "[WARNING] not enumerating in-flight items until we are caught up.%@", buf, 0xCu);
    }
  }

LABEL_145:

  v106 = *MEMORY[0x277D85DE8];
}

uint64_t __98__BRCClientZone__didSyncDownRequestID_maxApplyRank_caughtUpWithServer_syncDownDate_isFixingState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 nonDiscretionary];
  v7 = [v5 nonDiscretionary];
  if (!v6 || v7)
  {
    v9 = [v5 nonDiscretionary];
    v8 = v9 & ([v4 nonDiscretionary] ^ 1);
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (BOOL)_crossZoneMoveDocumentsToZone:(id)zone
{
  v33 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  if ([(BRCClientZone *)self isEqualToClientZone:zoneCopy])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [BRCClientZone _crossZoneMoveDocumentsToZone:];
    }

    v7 = 0;
  }

  else
  {
    memset(v24, 0, sizeof(v24));
    __brc_create_section(0, "[BRCClientZone _crossZoneMoveDocumentsToZone:]", 2860, 0, v24);
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218754;
      v26 = v24[0];
      v27 = 2112;
      selfCopy = self;
      v29 = 2112;
      v30 = zoneCopy;
      v31 = 2112;
      v32 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx cross zone move documents from %@ to %@%@", buf, 0x2Au);
    }

    v10 = self->_session;
    v11 = [(BRCClientZone *)self db];
    asPrivateClientZone = [(BRCClientZone *)self asPrivateClientZone];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke;
    v18[3] = &unk_2785038A8;
    v13 = asPrivateClientZone;
    v19 = v13;
    v14 = v11;
    v20 = v14;
    selfCopy2 = self;
    v15 = v10;
    v22 = v15;
    v23 = zoneCopy;
    v7 = [v14 performWithFlags:24 action:v18];

    __brc_leave_section(v24);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke(uint64_t a1, void *a2)
{
  v126 = *MEMORY[0x277D85DE8];
  v92 = a2;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v3 = [*(a1 + 32) itemsWithInFlightDiffsEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v108 objects:v125 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v109;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v109 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v108 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [*(a1 + 32) serverZone];
        v11 = [v10 dbRowID];
        [v8 markLatestSyncRequestFailedInZone:v11];

        [v8 saveToDB];
        objc_autoreleasePoolPop(v9);
      }

      v5 = [v3 countByEnumeratingWithState:&v108 objects:v125 count:16];
    }

    while (v5);
  }

  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) dbRowID];
  v14 = [v12 fetch:{@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE zone_rowid = %@ AND item_type in (1, 2, 6, 7)", v13}];

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_2;
  v103[3] = &unk_2784FF910;
  v93 = (a1 + 40);
  v103[4] = *(a1 + 48);
  v91 = v14;
  obj = [v14 enumerateObjects:v103];
  v15 = [obj countByEnumeratingWithState:&v104 objects:v124 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v105;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v105 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v104 + 1) + 8 * j);
        v20 = objc_autoreleasePoolPush();
        v21 = brc_bread_crumbs();
        v22 = brc_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v115 = v19;
          v116 = 2112;
          v117 = v21;
          _os_log_debug_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] cleaning up %@%@", buf, 0x16u);
        }

        v23 = [v19 asDocument];
        v24 = [*(a1 + 56) fsUploader];
        [v24 cancelAndCleanupItemUpload:v23];

        v25 = [*(a1 + 56) fsDownloader];
        [v25 cancelAndCleanupItemDownloads:v23];

        v26 = [v23 currentVersion];
        v27 = [v26 uploadedAssets];

        if (v27 || [v23 needsUpload])
        {
          [v23 markNeedsReading];
          [v23 saveToDB];
        }

        v28 = *(a1 + 40);
        v29 = [*(a1 + 64) dbRowID];
        [v28 execute:{@"UPDATE client_uploads SET zone_rowid = %@ WHERE throttle_id = %lld", v29, objc_msgSend(v23, "dbRowID")}];

        v30 = *(a1 + 40);
        v31 = [*(a1 + 64) dbRowID];
        [v30 execute:{@"UPDATE client_downloads SET zone_rowid = %@ WHERE throttle_id = %lld", v31, objc_msgSend(v23, "dbRowID")}];

        if ([v23 needsReading] && objc_msgSend(*v93, "changes") <= 0)
        {
          __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_cold_1(v122, &v123);
        }

        objc_autoreleasePoolPop(v20);
      }

      v16 = [obj countByEnumeratingWithState:&v104 objects:v124 count:16];
    }

    while (v16);
  }

  v32 = [v14 error];

  if (v32)
  {
    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_cold_2();
    }

LABEL_79:
    v83 = 0;
    goto LABEL_80;
  }

  v35 = *(a1 + 40);
  v36 = [*(a1 + 32) dbRowID];
  v37 = [v35 execute:{@"DELETE FROM client_unapplied_table WHERE zone_rowid = %@", v36}];

  if (v37)
  {
    v38 = *(a1 + 40);
    v39 = [*(a1 + 64) dbRowID];
    v40 = [*(a1 + 32) dbRowID];
    v37 = [v38 execute:{@"UPDATE client_sync_up SET zone_rowid = %@ WHERE zone_rowid = %@   AND throttle_state != 0", v39, v40}];

    if (v37)
    {
      v41 = *(a1 + 40);
      v42 = [*(a1 + 32) dbRowID];
      v37 = [v41 execute:{@"DELETE FROM client_sync_up WHERE zone_rowid = %@   AND throttle_state = 0", v42}];

      if (v37)
      {
        v43 = *(a1 + 40);
        v44 = [*(a1 + 32) dbRowID];
        v37 = [v43 execute:{@"DELETE FROM client_uploads WHERE zone_rowid = %@", v44}];
      }
    }
  }

  if (![*v93 changes])
  {
    if (!v37)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_cold_3();
  if (v37)
  {
LABEL_32:
    v45 = *(a1 + 40);
    v46 = [*(a1 + 32) dbRowID];
    v37 = [v45 execute:{@"DELETE FROM client_downloads WHERE zone_rowid = %@", v46}];
  }

LABEL_33:
  if ([*v93 changes])
  {
    __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_cold_4();
    if (!v37)
    {
      goto LABEL_77;
    }
  }

  else if (!v37)
  {
    goto LABEL_77;
  }

  v47 = *(a1 + 40);
  v48 = [*(a1 + 32) dbRowID];
  LODWORD(v47) = [v47 execute:{@"DELETE FROM client_items WHERE zone_rowid = %@ AND item_type = 3", v48}];

  if (!v47)
  {
    goto LABEL_77;
  }

  v49 = *(a1 + 40);
  v50 = [*(a1 + 64) dbRowID];
  v51 = [*(a1 + 32) dbRowID];
  LODWORD(v49) = [v49 execute:{@"UPDATE client_items SET zone_rowid = %@, item_stat_ckinfo = call_block(%p, item_stat_ckinfo), version_ckinfo   = call_block(%p, version_ckinfo), item_local_diffs = (item_local_diffs | %lld)  WHERE zone_rowid = %@", v50, &__block_literal_global_305, &__block_literal_global_305, 0x2000000000000000, v51}];

  if (!v49)
  {
    goto LABEL_77;
  }

  v52 = *(a1 + 40);
  v53 = [*(a1 + 64) dbRowID];
  v54 = [*(a1 + 32) dbRowID];
  LODWORD(v52) = [v52 execute:{@"UPDATE client_items SET item_parent_zone_rowid = %@ WHERE item_parent_zone_rowid = %@", v53, v54}];

  if (!v52)
  {
    goto LABEL_77;
  }

  v55 = *(a1 + 40);
  v56 = [*(a1 + 32) dbRowID];
  LODWORD(v55) = [v55 execute:{@"UPDATE client_items SET version_old_zone_rowid = NULL, version_old_zone_item_id = NULL WHERE version_old_zone_rowid = %@", v56}];

  if (!v55)
  {
    goto LABEL_77;
  }

  v57 = *(a1 + 40);
  v58 = [*(a1 + 64) dbRowID];
  v59 = [*(a1 + 32) dbRowID];
  LODWORD(v57) = [v57 execute:{@"UPDATE client_items SET version_old_zone_rowid = %@ WHERE version_old_zone_rowid = %@", v58, v59}];

  if (!v57 || (v60 = *(a1 + 40), [*(a1 + 32) dbRowID], v61 = objc_claimAutoreleasedReturnValue(), LOBYTE(v60) = objc_msgSend(v60, "execute:", @"DELETE FROM client_zones WHERE rowid = %@", v61), v61, (v60 & 1) == 0))
  {
LABEL_77:
    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_cold_5();
    }

    goto LABEL_79;
  }

  v62 = brc_bread_crumbs();
  v63 = brc_default_log();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v64 = [*(a1 + 40) changes];
    v65 = *(a1 + 32);
    v66 = *(a1 + 64);
    *buf = 134218754;
    v115 = v64;
    v116 = 2112;
    v117 = v65;
    v118 = 2112;
    v119 = v66;
    v120 = 2112;
    v121 = v62;
    _os_log_impl(&dword_223E7A000, v63, OS_LOG_TYPE_DEFAULT, "[NOTICE] cross zone moved %lld items from %@ to %@!%@", buf, 0x2Au);
  }

  [*(a1 + 64) scheduleSyncUp];
  [*(a1 + 64) scheduleSyncDownFirst];
  v67 = [*(a1 + 32) appLibraries];
  v68 = [v67 copy];

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v33 = v68;
  v69 = [v33 countByEnumeratingWithState:&v99 objects:v113 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v100;
    while (2)
    {
      for (k = 0; k != v70; ++k)
      {
        if (*v100 != v71)
        {
          objc_enumerationMutation(v33);
        }

        v73 = *(*(&v99 + 1) + 8 * k);
        [*(a1 + 32) removeAppLibrary:v73];
        [v73 associateWithClientZone:*(a1 + 64)];
        [v73 setStateBits:6291456];
        v74 = [*(a1 + 64) serverZone];
        v75 = [v74 state];

        if ((v75 & 0x20) != 0)
        {
          [v73 setStateBits:369098752];
        }

        else
        {
          [v73 clearStateBits:369098752];
        }

        if (([*(*(a1 + 48) + 464) saveAppLibrary:v73] & 1) == 0)
        {
          v84 = brc_bread_crumbs();
          v85 = brc_default_log();
          if (os_log_type_enabled(v85, 0x90u))
          {
            __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_cold_6();
          }

          v34 = v33;
LABEL_70:
          v87 = v92;
          goto LABEL_71;
        }
      }

      v70 = [v33 countByEnumeratingWithState:&v99 objects:v113 count:16];
      if (v70)
      {
        continue;
      }

      break;
    }
  }

  v76 = [MEMORY[0x277CBEB18] array];
  v77 = [*(a1 + 64) defaultAppLibrary];
  [v76 addObject:v77];

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v34 = v76;
  v78 = [v34 countByEnumeratingWithState:&v95 objects:v112 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v96;
    while (2)
    {
      for (m = 0; m != v79; ++m)
      {
        if (*v96 != v80)
        {
          objc_enumerationMutation(v34);
        }

        v82 = *(*(&v95 + 1) + 8 * m);
        [v82 setStateBits:0x200000];
        if (([*(*(a1 + 48) + 464) saveAppLibrary:v82] & 1) == 0)
        {
          v85 = brc_bread_crumbs();
          v86 = brc_default_log();
          if (os_log_type_enabled(v86, 0x90u))
          {
            v90 = [*v93 lastError];
            *buf = 138412802;
            v115 = v82;
            v116 = 2112;
            v117 = v90;
            v118 = 2112;
            v119 = v85;
            _os_log_error_impl(&dword_223E7A000, v86, 0x90u, "[ERROR] can't save cross zone move state for appLibrary %@: %@%@", buf, 0x20u);
          }

          v84 = v34;
          goto LABEL_70;
        }
      }

      v79 = [v34 countByEnumeratingWithState:&v95 objects:v112 count:16];
      if (v79)
      {
        continue;
      }

      break;
    }
  }

  if ([*(*(a1 + 48) + 8) saveClientZoneToDB:*(a1 + 64)])
  {
    v83 = 1;
LABEL_80:
    v87 = v92;
    goto LABEL_81;
  }

  v84 = brc_bread_crumbs();
  v85 = brc_default_log();
  v87 = v92;
  if (os_log_type_enabled(v85, 0x90u))
  {
    __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_cold_7();
  }

LABEL_71:

  v83 = 0;
LABEL_81:

  v88 = *MEMORY[0x277D85DE8];
  return v83;
}

id __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 session];
  v8 = [*(a1 + 32) session];
  v9 = [v8 clientDB];
  v10 = [v7 newLocalItemFromPQLResultSet:v6 db:v9 error:a3];

  return v10;
}

void __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_303(uint64_t a1, sqlite3_context *a2, uint64_t a3, void *a4)
{
  v6 = [BRFieldCKInfo newFromSqliteValue:*a4];
  [v6 markCrossZoneMoved];
  v5 = [v6 data];
  sqlite3_result_blob(a2, [v5 bytes], objc_msgSend(v5, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_allItemsDidUploadWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  if (![(BRCClientZone *)self _hasAllItemsDidUploadHandlers])
  {
    [BRCClientZone _allItemsDidUploadWithError:];
  }

  if (errorCopy)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = errorCopy;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] shared iPad: calling the upload handler because sync is failing: %@%@", buf, 0x16u);
    }
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone _allItemsDidUploadWithError:];
    }
  }

  bubbleSyncTask = self->_bubbleSyncTask;
  if (bubbleSyncTask)
  {
    [(UMUserSyncTask *)bubbleSyncTask end];
    v8 = self->_bubbleSyncTask;
    self->_bubbleSyncTask = 0;
  }

  allItemsDidUploadTrackers = self->_allItemsDidUploadTrackers;
  if (allItemsDidUploadTrackers)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = allItemsDidUploadTrackers;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v17 + 1) + 8 * v14++) clientZone:self didFinishUploadingAllItemsWithError:{errorCopy, v17}];
        }

        while (v12 != v14);
        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    v15 = self->_allItemsDidUploadTrackers;
    self->_allItemsDidUploadTrackers = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)recomputeAllItemsDidUploadState
{
  v20 = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->_db assertOnQueue];
  if (![(BRCClientZone *)self _hasAllItemsDidUploadHandlers])
  {
LABEL_16:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  p_lastSyncDownError = &self->_lastSyncDownError;
  lastSyncDownError = self->_lastSyncDownError;
  if ((!lastSyncDownError || [(NSError *)lastSyncDownError brc_isEverRetriable]) && ((p_lastSyncDownError = &self->_lastSyncUpError, (lastSyncUpError = self->_lastSyncUpError) == 0) || [(NSError *)lastSyncUpError brc_isEverRetriable]) || (v6 = *p_lastSyncDownError) == 0)
  {
    v13 = 0;
    v8 = [(BRCClientZone *)self itemCountPendingUploadOrSyncUpAndReturnError:&v13];
    if ([v8 intValue])
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v15 = v8;
        v16 = 2112;
        selfCopy = self;
        v18 = 2112;
        v19 = v9;
        _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] shared iPad: Still need to sync up %@ more items for sync bubble for %@%@", buf, 0x20u);
      }
    }

    else
    {
      [(BRCClientZone *)self _allItemsDidUploadWithError:v13];
    }

    goto LABEL_16;
  }

  v12 = v6;
  [(BRCClientZone *)self _allItemsDidUploadWithError:v6];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleRootRecordDeletion
{
  db = self->_db;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__BRCClientZone_handleRootRecordDeletion__block_invoke;
  v3[3] = &unk_2784FFA48;
  v3[4] = self;
  [(BRCPQLConnection *)db performWithFlags:17 action:v3];
}

uint64_t __41__BRCClientZone_handleRootRecordDeletion__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isPrivateZone])
  {
    v2 = [*(a1 + 32) asPrivateClientZone];
    v3 = [v2 defaultAppLibrary];
    [v3 clearStateBits:2];
  }

  if (([*(a1 + 32) isCloudDocsZone] & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [v4 asPrivateClientZone];
    v6 = [v5 defaultAppLibrary];
    v7 = [v6 dbRowID];
    v8 = [BRCItemID documentsItemIDWithAppLibraryRowID:v7];
    v9 = [v4 itemByItemID:v8];

    [v9 markForceNeedsSyncUp];
    [v9 saveToDB];
  }

  return 1;
}

- (void)didGCTombstoneRanks:(id)ranks
{
  ranksCopy = ranks;
  serialQueue = [(BRCPQLConnection *)self->_db serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__BRCClientZone_didGCTombstoneRanks___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = ranksCopy;
  v6 = ranksCopy;
  dispatch_async(serialQueue, v7);
}

uint64_t __37__BRCClientZone_didGCTombstoneRanks___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) activated];
  if (result)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __37__BRCClientZone_didGCTombstoneRanks___block_invoke_cold_1(a1);
    }

    [*(*(a1 + 32) + 264) removeIndexes:*(a1 + 40)];
    if (![*(*(a1 + 32) + 264) count])
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 264);
      *(v5 + 264) = 0;
    }

    return [*(a1 + 32) setNeedsSave:1];
  }

  return result;
}

- (void)didApplyTombstoneForRank:(int64_t)rank
{
  if (rank >= 1)
  {
    appliedTombstoneRanks = self->_appliedTombstoneRanks;
    if (appliedTombstoneRanks)
    {
      [(NSMutableIndexSet *)appliedTombstoneRanks addIndex:rank];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndex:rank];
      v6 = self->_appliedTombstoneRanks;
      self->_appliedTombstoneRanks = v5;
    }

    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone didApplyTombstoneForRank:];
    }

    [(BRCClientZone *)self setNeedsSave:1];
  }
}

- (void)scheduleApplyWithLocalItem:(id)item serverItem:(id)serverItem
{
  itemCopy = item;
  serverItemCopy = serverItem;
  if (itemCopy && ([itemCopy isDead] & 1) == 0)
  {
    v7 = itemCopy;
    v8 = 2;
  }

  else
  {
    v7 = 0;
    v8 = 1;
  }

  applyScheduler = [(BRCAccountSession *)self->_session applyScheduler];
  [applyScheduler createApplyJobFromServerItem:serverItemCopy localItem:v7 state:1 kind:v8];
}

- (BOOL)_checkIfEnumeratorContainsNonDiscretionaryOp:(id)op
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  opCopy = op;
  v4 = [opCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(opCopy);
        }

        if ([*(*(&v9 + 1) + 8 * i) nonDiscretionary])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [opCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_hasNonDiscretionaryServerStitchingOperation
{
  objectEnumerator = [(NSMutableDictionary *)self->_runningListOperations objectEnumerator];
  if ([(BRCClientZone *)self _checkIfEnumeratorContainsNonDiscretionaryOp:objectEnumerator])
  {
    v4 = 1;
  }

  else
  {
    objectEnumerator2 = [(NSMutableDictionary *)self->_recursiveListOperations objectEnumerator];
    if ([(BRCClientZone *)self _checkIfEnumeratorContainsNonDiscretionaryOp:objectEnumerator2])
    {
      v4 = 1;
    }

    else
    {
      objectEnumerator3 = [(NSMutableDictionary *)self->_fetchParentOperations objectEnumerator];
      if ([(BRCClientZone *)self _checkIfEnumeratorContainsNonDiscretionaryOp:objectEnumerator3])
      {
        v4 = 1;
      }

      else
      {
        objectEnumerator4 = [(NSMutableDictionary *)self->_locateRecordOperations objectEnumerator];
        v4 = [(BRCClientZone *)self _checkIfEnumeratorContainsNonDiscretionaryOp:objectEnumerator4];
      }
    }
  }

  return v4;
}

- (void)_registerOperation:(id)operation throttler:(id)throttler
{
  v50 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  db = self->_db;
  throttlerCopy = throttler;
  [(BRCPQLConnection *)db assertOnQueue];
  [(BRCServerZone *)operationCopy setOperationThrottle:throttlerCopy];

  mangledID = [(BRCServerZone *)self->_serverZone mangledID];
  v10 = [BRCUserDefaults defaultsForMangledID:mangledID];

  clientZone = [(BRCServerZone *)self->_serverZone clientZone];
  if ([clientZone isSyncBlockedBecauseAppNotInstalled])
  {
    nonDiscretionary = [(BRCServerZone *)operationCopy nonDiscretionary];

    if (nonDiscretionary)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        serverZone = self->_serverZone;
        v42 = 138412802;
        v43 = serverZone;
        v44 = 2112;
        v45 = operationCopy;
        v46 = 2112;
        v47 = v13;
        _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] The zone %@ is blocked because the app isn't installed but we have a non-discretionary op %@. Unblocking the zone%@", &v42, 0x20u);
      }

      [(BRCClientZone *)self clearStateBits:4096];
    }
  }

  else
  {
  }

  if (self->_syncDownOperation)
  {
    nonDiscretionary2 = [(BRCServerZone *)operationCopy nonDiscretionary];
    nonDiscretionary3 = [(_BRCOperation *)self->_syncDownOperation nonDiscretionary];
    if (nonDiscretionary2 && !nonDiscretionary3)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [BRCClientZone _registerOperation:throttler:];
      }

      [(BRCSyncOperationThrottle *)self->_syncDownThrottle graceNextRequest];
      [(_BRCOperation *)self->_syncDownOperation cancel];
      [(BRCClientZone *)self scheduleSyncDown];
    }

    [(BRCServerZone *)operationCopy addDependency:self->_syncDownOperation];
  }

  if (![(BRCClientZone *)self isSharedZone]&& [(BRCServerZone *)self->_serverZone zoneCreationState]== 2)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone _registerOperation:throttler:];
    }

    v22 = MEMORY[0x277CCA9B8];
    appLibraryOrZoneName = [(BRMangledID *)self->_mangledID appLibraryOrZoneName];
    v24 = [v22 brc_errorClientZoneNotFound:appLibraryOrZoneName];
    [(BRCServerZone *)operationCopy completedWithResult:0 error:v24];

    [(BRCServerZone *)operationCopy cancel];
    goto LABEL_22;
  }

  clientZone2 = [(BRCServerZone *)self->_serverZone clientZone];
  if ([clientZone2 hasCompletedInitialSyncDownOnce])
  {

LABEL_22:
    [(BRCServerZone *)operationCopy schedule];
    goto LABEL_23;
  }

  allowsDirectoryListBeforeInitialChangeToken = [v10 allowsDirectoryListBeforeInitialChangeToken];

  if (allowsDirectoryListBeforeInitialChangeToken)
  {
    goto LABEL_22;
  }

  [v10 throttleThresholdBeforeImmediatelyFailingNonDiscretionaryOp];
  v29 = v28;
  [(BRCSyncOperationThrottle *)self->_syncDownThrottle nextTry];
  v31 = v30;
  brc_current_date_nsec();
  brc_interval_from_nsec();
  v33 = v32;
  if ([(BRCServerZone *)operationCopy nonDiscretionary]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && !self->_syncDownOperation && v31 > v29 + v33)
  {
    lastSyncDownError = self->_lastSyncDownError;
    if (lastSyncDownError)
    {
      brc_errorOperationCancelled = lastSyncDownError;
    }

    else
    {
      brc_errorOperationCancelled = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    }

    v38 = brc_errorOperationCancelled;
    v39 = brc_bread_crumbs();
    v40 = brc_default_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [BRCDumpContext stringFromInterval:0 context:v31 - v33];
      v42 = 138413058;
      v43 = operationCopy;
      v44 = 2112;
      v45 = v41;
      v46 = 2112;
      v47 = v38;
      v48 = 2112;
      v49 = v39;
      _os_log_impl(&dword_223E7A000, v40, OS_LOG_TYPE_DEFAULT, "[WARNING] Failing non-discretionary list operation %@ right away because we are heavily throttled (next try %@) %@%@", &v42, 0x2Au);
    }

    [(BRCServerZone *)operationCopy completedWithResult:0 error:v38];
    [(BRCServerZone *)operationCopy cancel];
    [(BRCServerZone *)operationCopy schedule];
  }

  else
  {
    v36 = brc_bread_crumbs();
    v37 = brc_default_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone _registerOperation:throttler:];
    }

    [(NSMutableArray *)self->_blockedOperationsOnInitialSync addObject:operationCopy];
    [(BRCClientZone *)self scheduleSyncDownFirst];
  }

LABEL_23:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_registerListOperation:(id)operation shareAcceptOperation:(id)acceptOperation
{
  operationCopy = operation;
  acceptOperationCopy = acceptOperation;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [BRCClientZone _registerListOperation:shareAcceptOperation:];
  }

  [(BRCClientZone *)self _registerServerStitchingOperation:operationCopy];
  if (acceptOperationCopy)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone _registerListOperation:shareAcceptOperation:];
    }

    [operationCopy addDependency:acceptOperationCopy];
  }

  changeState = [(BRCServerZone *)self->_serverZone changeState];
  changeToken = [changeState changeToken];
  if (changeToken)
  {
  }

  else
  {
    isSyncBlockedBecauseAppNotInstalled = [(BRCClientZone *)self isSyncBlockedBecauseAppNotInstalled];

    if (!isSyncBlockedBecauseAppNotInstalled)
    {
      clientZone = [(BRCServerZone *)self->_serverZone clientZone];
      [clientZone scheduleSyncDownFirst];

      goto LABEL_11;
    }
  }

  [(BRCClientZone *)self _blockLowPriorityStitchingOperationsForOperation:operationCopy];
LABEL_11:
  runningListOperations = self->_runningListOperations;
  folderToList = [operationCopy folderToList];
  [(NSMutableDictionary *)runningListOperations setObject:operationCopy forKeyedSubscript:folderToList];
}

- (id)cancelListOperationAndReschedule:(id)reschedule
{
  db = self->_db;
  rescheduleCopy = reschedule;
  [(BRCPQLConnection *)db assertOnQueue];
  runningListOperations = self->_runningListOperations;
  folderToList = [rescheduleCopy folderToList];
  [(NSMutableDictionary *)runningListOperations removeObjectForKey:folderToList];

  folderToList2 = [rescheduleCopy folderToList];
  v9 = -[BRCClientZone fetchDirectoryContentsIfNecessary:isUserWaiting:rescheduleApplyScheduler:](self, "fetchDirectoryContentsIfNecessary:isUserWaiting:rescheduleApplyScheduler:", folderToList2, [rescheduleCopy nonDiscretionary], objc_msgSend(rescheduleCopy, "rescheduleApply"));

  [rescheduleCopy cancelToBeReplacedByOperation:v9];

  return v9;
}

- (void)_registerFetchParentChainOperation:(id)operation
{
  operationCopy = operation;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  parentIDToList = [operationCopy parentIDToList];
  if (parentIDToList)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone _registerFetchParentChainOperation:];
    }

    [(BRCClientZone *)self _registerServerStitchingOperation:operationCopy];
    [(BRCClientZone *)self _blockLowPriorityStitchingOperationsForOperation:operationCopy];
    [(NSMutableDictionary *)self->_fetchParentOperations setObject:operationCopy forKeyedSubscript:parentIDToList];
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [BRCClientZone _registerFetchParentChainOperation:];
    }
  }
}

- (id)cancelFetchParentChainOperationAndReschedule:(id)reschedule
{
  db = self->_db;
  rescheduleCopy = reschedule;
  [(BRCPQLConnection *)db assertOnQueue];
  parentIDToList = [rescheduleCopy parentIDToList];
  [(NSMutableDictionary *)self->_fetchParentOperations removeObjectForKey:parentIDToList];
  v7 = -[BRCClientZone fetchParentChainIfNecessaryWithParentItemID:isUserWaiting:](self, "fetchParentChainIfNecessaryWithParentItemID:isUserWaiting:", parentIDToList, [rescheduleCopy nonDiscretionary]);
  [rescheduleCopy cancelToBeReplacedByOperation:v7];

  return v7;
}

- (void)_registerLocateRecordOperation:(id)operation
{
  operationCopy = operation;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  recordID = [operationCopy recordID];
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCClientZone _registerLocateRecordOperation:];
  }

  [(BRCClientZone *)self _registerOperation:operationCopy throttler:self->_locateRecordsOperationThrottle];
  [(BRCClientZone *)self _blockLowPriorityStitchingOperationsForOperation:operationCopy];
  [(NSMutableDictionary *)self->_locateRecordOperations setObject:operationCopy forKeyedSubscript:recordID];
}

- (id)cancelLocateRecordOperationAndReschedule:(id)reschedule
{
  db = self->_db;
  rescheduleCopy = reschedule;
  [(BRCPQLConnection *)db assertOnQueue];
  recordID = [rescheduleCopy recordID];
  [(NSMutableDictionary *)self->_locateRecordOperations removeObjectForKey:recordID];
  v7 = -[BRCClientZone locateRecordIfNecessaryForRecordID:isUserWaiting:](self, "locateRecordIfNecessaryForRecordID:isUserWaiting:", recordID, [rescheduleCopy nonDiscretionary]);
  [rescheduleCopy cancelToBeReplacedByOperation:v7];

  return v7;
}

- (BOOL)_isSideSyncOperationBlockedWithName:(id)name isWaitingOnShareAccept:(BOOL)accept
{
  nameCopy = name;
  if (!self->_activated)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone _isSideSyncOperationBlockedWithName:isWaitingOnShareAccept:];
    }

    goto LABEL_7;
  }

  if ([(BRCClientZone *)self isSyncBlockedBecauseOSNeedsUpgrade])
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone _isSideSyncOperationBlockedWithName:isWaitingOnShareAccept:];
    }

LABEL_7:

    v9 = 1;
    goto LABEL_8;
  }

  if ((self->_state & 0x100) != 0)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone _isSideSyncOperationBlockedWithName:isWaitingOnShareAccept:];
    }

    goto LABEL_7;
  }

  if ([(BRCServerZone *)self->_serverZone zoneCreationState]!= 2)
  {
    v9 = 0;
    goto LABEL_8;
  }

  isSyncBlockedBecauseAppNotInstalled = [(BRCClientZone *)self isSyncBlockedBecauseAppNotInstalled];
  v9 = 0;
  if (!isSyncBlockedBecauseAppNotInstalled && !accept)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone _isSideSyncOperationBlockedWithName:isWaitingOnShareAccept:];
    }

    goto LABEL_7;
  }

LABEL_8:

  return v9;
}

- (id)fetchDirectoryContentsIfNecessary:(id)necessary isUserWaiting:(BOOL)waiting rescheduleApplyScheduler:(BOOL)scheduler
{
  schedulerCopy = scheduler;
  waitingCopy = waiting;
  v62 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  if ([(BRCClientZone *)self isSharedZone])
  {
    asSharedClientZone = [(BRCClientZone *)self asSharedClientZone];
    v10 = [asSharedClientZone shareAcceptOperationForItemID:necessaryCopy];
  }

  else
  {
    v10 = 0;
  }

  if ([(BRCClientZone *)self _isSideSyncOperationBlockedWithName:@"list" isWaitingOnShareAccept:v10 != 0])
  {
    v11 = 0;
    goto LABEL_24;
  }

  if (!necessaryCopy)
  {
    v12 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [BRCClientZone fetchDirectoryContentsIfNecessary:isUserWaiting:rescheduleApplyScheduler:];
    }

    goto LABEL_22;
  }

  v12 = [[BRCItemGlobalID alloc] initWithZoneRowID:self->_dbRowID itemID:necessaryCopy];
  if (([(BRCServerZone *)self->_serverZone state]& 4) != 0)
  {
    if (schedulerCopy)
    {
      v16 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT item_type FROM client_items WHERE item_id = %@ AND zone_rowid = %@", necessaryCopy, self->_dbRowID];
      if ([v16 intValue] == 9)
      {
        applyScheduler = [(BRCAccountSession *)self->_session applyScheduler];
        [applyScheduler rescheduleItemsParentedToItemGlobalID:v12];
      }
    }

    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone fetchDirectoryContentsIfNecessary:necessaryCopy isUserWaiting:? rescheduleApplyScheduler:?];
    }

    goto LABEL_22;
  }

  v13 = [(NSMutableDictionary *)self->_runningListOperations objectForKeyedSubscript:necessaryCopy];
  v11 = v13;
  if (waitingCopy && v13)
  {
    if (![(_BRCOperation *)v13 nonDiscretionary])
    {
      v14 = v11;
      goto LABEL_31;
    }

LABEL_28:
    if (schedulerCopy)
    {
      [(BRCListDirectoryContentsOperation *)v11 setRescheduleApply:1];
    }

    goto LABEL_23;
  }

  if (v13)
  {
    goto LABEL_28;
  }

  v14 = 0;
LABEL_31:
  failedListItemIDs = [(BRCServerZone *)self->_serverZone failedListItemIDs];
  v23 = [failedListItemIDs containsObject:necessaryCopy];

  if (!v23)
  {
    v26 = [(BRCClientZone *)self serverItemTypeByItemID:necessaryCopy dbFacade:self->_dbFacade];
    if (v26 == -1)
    {
      v26 = [(BRCClientZone *)self itemTypeByItemID:necessaryCopy dbFacade:self->_dbFacade];
    }

    if (v26 - 9 >= 2 && v26 != 255)
    {
      if (schedulerCopy)
      {
        v39 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT item_type FROM client_items WHERE item_id = %@ AND zone_rowid = %@", necessaryCopy, self->_dbRowID];
        if ([v39 intValue] == 9)
        {
          applyScheduler2 = [(BRCAccountSession *)self->_session applyScheduler];
          [applyScheduler2 rescheduleItemsParentedToItemGlobalID:v12];
        }
      }

      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        debugItemIDString = [necessaryCopy debugItemIDString];
        *location = 138413058;
        *&location[4] = debugItemIDString;
        v56 = 2112;
        selfCopy = self;
        v58 = 1024;
        v59 = v26;
        v60 = 2112;
        v61 = v41;
        _os_log_debug_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEBUG, "[DEBUG] Can't list item %@ in zone %@ which isn't a directory fault %d%@", location, 0x26u);
      }

      [BRCAppLibrary didListItemID:necessaryCopy sessionContext:self->_session];
      goto LABEL_22;
    }

    if ([necessaryCopy isDocumentsFolder])
    {
      session = self->_session;
      appLibraryRowID = [necessaryCopy appLibraryRowID];
      v29 = [(BRCAccountSession *)session appLibraryByRowID:appLibraryRowID];

      if (([v29 includesDataScope] & 1) == 0)
      {
        v43 = brc_bread_crumbs();
        v44 = brc_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          mangledID = [v29 mangledID];
          v46 = [mangledID debugDescription];
          *location = 138412546;
          *&location[4] = v46;
          v56 = 2112;
          selfCopy = v43;
          _os_log_impl(&dword_223E7A000, v44, OS_LOG_TYPE_DEFAULT, "[WARNING] Got request to list documents directory of app library that don't have data scope. AppLibrary [%@].%@", location, 0x16u);
        }

        goto LABEL_22;
      }
    }

    v30 = [BRCListDirectoryContentsOperation alloc];
    v31 = v14;
    v33 = self->_session;
    serverZone = self->_serverZone;
    from[1] = MEMORY[0x277D85DD0];
    from[2] = 3221225472;
    from[3] = __90__BRCClientZone_fetchDirectoryContentsIfNecessary_isUserWaiting_rescheduleApplyScheduler___block_invoke;
    from[4] = &unk_2784FF478;
    from[5] = self;
    v54 = necessaryCopy;
    v34 = v30;
    v48 = v54;
    v35 = v31;
    v36 = [BRCListDirectoryContentsOperation initWithItemID:v34 sessionContext:"initWithItemID:sessionContext:zone:isUserWaiting:rescheduleApplyBlock:" zone:? isUserWaiting:? rescheduleApplyBlock:?];
    [(BRCListDirectoryContentsOperation *)v36 setRescheduleApply:[(BRCListDirectoryContentsOperation *)v31 rescheduleApply]| schedulerCopy];
    objc_initWeak(location, self);
    if (v31)
    {
      v37 = brc_bread_crumbs();
      v38 = brc_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [BRCClientZone fetchDirectoryContentsIfNecessary:isUserWaiting:rescheduleApplyScheduler:];
      }

      [(BRCListDirectoryContentsOperation *)v35 cancelToBeReplacedByOperation:v36];
    }

    else
    {
      objc_initWeak(from, v36);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __90__BRCClientZone_fetchDirectoryContentsIfNecessary_isUserWaiting_rescheduleApplyScheduler___block_invoke_331;
      v49[3] = &unk_2785038D0;
      objc_copyWeak(&v51, location);
      objc_copyWeak(&v52, from);
      v50 = v48;
      [(BRCListDirectoryContentsOperation *)v36 addDirectoryListCompletionBlock:v49];

      objc_destroyWeak(&v52);
      objc_destroyWeak(&v51);
      objc_destroyWeak(from);
    }

    [(BRCClientZone *)self _registerListOperation:v36 shareAcceptOperation:v10];
    v11 = v36;
    objc_destroyWeak(location);

    goto LABEL_23;
  }

  v24 = brc_bread_crumbs();
  v25 = brc_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [BRCClientZone fetchDirectoryContentsIfNecessary:necessaryCopy isUserWaiting:? rescheduleApplyScheduler:?];
  }

LABEL_22:
  v11 = 0;
LABEL_23:

LABEL_24:
  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

void __90__BRCClientZone_fetchDirectoryContentsIfNecessary_isUserWaiting_rescheduleApplyScheduler___block_invoke(uint64_t a1)
{
  v2 = [BRCItemGlobalID alloc];
  v3 = [*(*(a1 + 32) + 16) dbRowID];
  v5 = [(BRCItemGlobalID *)v2 initWithZoneRowID:v3 itemID:*(a1 + 40)];

  v4 = [*(*(a1 + 32) + 8) applyScheduler];
  [v4 rescheduleItemsParentedToItemGlobalID:v5];
}

void __90__BRCClientZone_fetchDirectoryContentsIfNecessary_isUserWaiting_rescheduleApplyScheduler___block_invoke_331(id *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v6 = [WeakRetained db];
    v7 = [v6 serialQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __90__BRCClientZone_fetchDirectoryContentsIfNecessary_isUserWaiting_rescheduleApplyScheduler___block_invoke_2;
    v15[3] = &unk_2784FF478;
    v15[4] = WeakRetained;
    v16 = a1[4];
    dispatch_async(v7, v15);
  }

  if (v3)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [a1[4] debugItemIDString];
      *buf = 138413058;
      v18 = v10;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v3;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed listing directory %@ in %@ - %@%@", buf, 0x2Au);
    }

    [WeakRetained handleZoneLevelErrorIfNeeded:v3 forItemCreation:0];
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = [a1[4] debugItemIDString];
      *buf = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v11;
      _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Finished listing contents of %@ in %@%@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __90__BRCClientZone_fetchRecursiveDirectoryContentsIfNecessary_isUserWaiting_rescheduleApply___block_invoke(uint64_t a1)
{
  v2 = [BRCItemGlobalID alloc];
  v3 = [*(a1 + 32) dbRowID];
  v5 = [(BRCItemGlobalID *)v2 initWithZoneRowID:v3 itemID:*(a1 + 40)];

  v4 = [*(*(a1 + 32) + 8) applyScheduler];
  [v4 rescheduleItemsRecursivelyUnderFolder:v5];
}

void __90__BRCClientZone_fetchRecursiveDirectoryContentsIfNecessary_isUserWaiting_rescheduleApply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained db];
    v8 = [v7 serialQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __90__BRCClientZone_fetchRecursiveDirectoryContentsIfNecessary_isUserWaiting_rescheduleApply___block_invoke_3;
    v13[3] = &unk_2784FF478;
    v13[4] = v6;
    v14 = *(a1 + 32);
    dispatch_async(v8, v13);
  }

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = [*(a1 + 32) debugItemIDString];
    *buf = 138412802;
    v16 = v12;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Finished listing contents of %@ with error %@%@", buf, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __75__BRCClientZone_fetchParentChainIfNecessaryWithParentItemID_isUserWaiting___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained db];
    v5 = [v4 serialQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __75__BRCClientZone_fetchParentChainIfNecessaryWithParentItemID_isUserWaiting___block_invoke_2;
    v6[3] = &unk_2784FF478;
    v6[4] = v3;
    v7 = *(a1 + 32);
    dispatch_async(v5, v6);
  }
}

void __87__BRCClientZone__locateRecordIfNecessaryForRecordID_isUserWaiting_maxOperationBackoff___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained db];
    v5 = [v4 serialQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __87__BRCClientZone__locateRecordIfNecessaryForRecordID_isUserWaiting_maxOperationBackoff___block_invoke_2;
    v6[3] = &unk_2784FF478;
    v6[4] = v3;
    v7 = *(a1 + 32);
    dispatch_async(v5, v6);
  }
}

- (void)clearAndRefetchRecentAndFavoriteDocuments
{
  v3 = [(BRCServerZone *)self->_serverZone db];
  serialQueue = [v3 serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__BRCClientZone_clearAndRefetchRecentAndFavoriteDocuments__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __58__BRCClientZone_clearAndRefetchRecentAndFavoriteDocuments__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) clearStateBits:24];
  v2 = [*(*(a1 + 32) + 8) clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__BRCClientZone_clearAndRefetchRecentAndFavoriteDocuments__block_invoke_2;
  block[3] = &unk_2784FF450;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

- (void)fetchRecentAndFavoriteDocuments:(BOOL)documents
{
  documentsCopy = documents;
  v57 = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->_db assertOnQueue];
  v5 = [(BRCServerZone *)self->_serverZone db];
  serialQueue = [v5 serialQueue];

  if (serialQueue)
  {
    changeState = [(BRCServerZone *)self->_serverZone changeState];
    changeToken = [changeState changeToken];
    if (changeToken)
    {
    }

    else
    {
      hasCompletedInitialSyncDownOnce = [(BRCClientZone *)self hasCompletedInitialSyncDownOnce];

      if (!hasCompletedInitialSyncDownOnce)
      {
        v24 = brc_bread_crumbs();
        v25 = brc_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [BRCClientZone fetchRecentAndFavoriteDocuments:?];
        }

        goto LABEL_24;
      }
    }

    changeState2 = [(BRCServerZone *)self->_serverZone changeState];
    changeToken2 = [changeState2 changeToken];
    if (changeToken2)
    {
    }

    else
    {
      hasCompletedInitialSyncDownOnce2 = [(BRCClientZone *)self hasCompletedInitialSyncDownOnce];

      if (hasCompletedInitialSyncDownOnce2)
      {
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [BRCClientZone fetchRecentAndFavoriteDocuments:?];
        }

        v18 = [(BRCServerZone *)self->_serverZone db];
        serialQueue2 = [v18 serialQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__BRCClientZone_fetchRecentAndFavoriteDocuments___block_invoke;
        block[3] = &unk_2784FF450;
        block[4] = self;
        dispatch_async(serialQueue2, block);

        goto LABEL_36;
      }
    }

    if (self->_fetchRecentsOperation)
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [BRCClientZone fetchRecentAndFavoriteDocuments:?];
      }

      if (documentsCopy)
      {
        v22 = brc_bread_crumbs();
        v23 = brc_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [BRCClientZone fetchRecentAndFavoriteDocuments:?];
        }

        self->_invokeFetchRecentsOperation = 1;
      }

      goto LABEL_36;
    }

    if ([(BRCServerZone *)self->_serverZone hasFetchedRecentsAndFavorites])
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [BRCClientZone fetchRecentAndFavoriteDocuments:?];
      }

LABEL_24:

      goto LABEL_36;
    }

    if (([(BRCServerZone *)self->_serverZone state]& 4) != 0)
    {
      v30 = brc_bread_crumbs();
      v31 = brc_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [BRCClientZone fetchRecentAndFavoriteDocuments:?];
      }

      v32 = [(BRCServerZone *)self->_serverZone db];
      serialQueue3 = [v32 serialQueue];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __49__BRCClientZone_fetchRecentAndFavoriteDocuments___block_invoke_349;
      v51[3] = &unk_2784FF450;
      v51[4] = self;
      dispatch_async(serialQueue3, v51);
    }

    else if ([(BRCClientZone *)self isSharedZone])
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [BRCClientZone fetchRecentAndFavoriteDocuments:?];
      }

      v28 = [(BRCServerZone *)self->_serverZone db];
      serialQueue4 = [v28 serialQueue];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __49__BRCClientZone_fetchRecentAndFavoriteDocuments___block_invoke_350;
      v50[3] = &unk_2784FF450;
      v50[4] = self;
      dispatch_async(serialQueue4, v50);
    }

    else
    {
      asPrivateClientZone = [(BRCClientZone *)self asPrivateClientZone];
      defaultAppLibrary = [asPrivateClientZone defaultAppLibrary];
      containerMetadata = [defaultAppLibrary containerMetadata];
      isDocumentScopePublic = [containerMetadata isDocumentScopePublic];

      if (isDocumentScopePublic)
      {
        if (![(BRCClientZone *)self _isSideSyncOperationBlockedWithName:@"fetch recents and favorites"])
        {
          v39 = [[BRCFetchRecentAndFavoriteDocumentsOperation alloc] initWithServerZone:self->_serverZone sessionContext:self->_session];
          fetchRecentsOperation = self->_fetchRecentsOperation;
          self->_fetchRecentsOperation = v39;

          objc_initWeak(buf, self);
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __49__BRCClientZone_fetchRecentAndFavoriteDocuments___block_invoke_2;
          v47[3] = &unk_278503970;
          objc_copyWeak(&v48, buf);
          [(_BRCOperation *)self->_fetchRecentsOperation setFinishBlock:v47];
          v41 = brc_bread_crumbs();
          v42 = brc_default_log();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            [BRCClientZone fetchRecentAndFavoriteDocuments:?];
          }

          [(BRCClientZone *)self _registerServerStitchingOperation:self->_fetchRecentsOperation];
          objc_destroyWeak(&v48);
          objc_destroyWeak(buf);
        }
      }

      else
      {
        v43 = brc_bread_crumbs();
        v44 = brc_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          [BRCClientZone fetchRecentAndFavoriteDocuments:?];
        }

        v45 = [(BRCServerZone *)self->_serverZone db];
        serialQueue5 = [v45 serialQueue];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __49__BRCClientZone_fetchRecentAndFavoriteDocuments___block_invoke_351;
        v49[3] = &unk_2784FF450;
        v49[4] = self;
        dispatch_async(serialQueue5, v49);
      }
    }
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      serverZone = self->_serverZone;
      *buf = 138412546;
      v54 = serverZone;
      v55 = 2112;
      v56 = v9;
      _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] Zone doesn't have a serial queue anymore %@%@", buf, 0x16u);
    }
  }

LABEL_36:
  v34 = *MEMORY[0x277D85DE8];
}

void __49__BRCClientZone_fetchRecentAndFavoriteDocuments___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained db];
  v7 = [v6 serialQueue];

  if (v7)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = WeakRetained[29];
      *buf = 138413058;
      v17 = v13;
      v18 = 2112;
      v19 = WeakRetained;
      v20 = 2112;
      v21 = v4;
      v22 = 2112;
      v23 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Finished fetching recent documents (operation %@) for %@ - %@%@", buf, 0x2Au);
    }

    v10 = [WeakRetained db];
    v11 = [v10 serialQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__BRCClientZone_fetchRecentAndFavoriteDocuments___block_invoke_356;
    v14[3] = &unk_2784FF478;
    v14[4] = WeakRetained;
    v15 = v4;
    dispatch_async(v11, v14);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __49__BRCClientZone_fetchRecentAndFavoriteDocuments___block_invoke_356(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 232);
  *(v2 + 232) = 0;

  if (([*(a1 + 40) brc_isCloudKitCancellationError] & 1) != 0 || (result = objc_msgSend(*(a1 + 40), "brc_isRetriable"), result))
  {
    result = [*(a1 + 32) state];
    if ((result & 0x100) == 0)
    {
      result = [*(a1 + 32) activated];
      if (result)
      {
        *(*(a1 + 32) + 240) = 1;
      }
    }
  }

  v5 = *(a1 + 32);
  if (*(v5 + 240) == 1)
  {
    *(v5 + 240) = 0;
    v6 = *(a1 + 32);

    return [v6 fetchRecentAndFavoriteDocuments];
  }

  return result;
}

- (BOOL)dumpStatusToContext:(id)context error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v8 = self->_session;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 1;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v37 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __43__BRCClientZone_dumpStatusToContext_error___block_invoke;
  v26[3] = &unk_278503998;
  v32 = v38;
  v21 = contextCopy;
  v27 = v21;
  v9 = v7;
  v28 = v9;
  selfCopy = self;
  v10 = v8;
  v30 = v10;
  v31 = 0;
  v33 = &v34;
  v35[3] = v26;
  if ([(BRCClientZone *)self isPrivateZone])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    asPrivateClientZone = [(BRCClientZone *)self asPrivateClientZone];
    appLibraries = [asPrivateClientZone appLibraries];

    v13 = [appLibraries countByEnumeratingWithState:&v22 objects:v40 count:16];
    if (v13)
    {
      v14 = *v23;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(appLibraries);
          }

          v16 = v35[3];
          rootItemID = [*(*(&v22 + 1) + 8 * i) rootItemID];
          LOBYTE(v16) = (*(v16 + 16))(v16, rootItemID, 0, @"/", error);

          if ((v16 & 1) == 0)
          {
            v18 = 0;
            goto LABEL_13;
          }
        }

        v13 = [appLibraries countByEnumeratingWithState:&v22 objects:v40 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v18 = 1;
LABEL_13:
  }

  else
  {
    v18 = 1;
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v38, 8);

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __43__BRCClientZone_dumpStatusToContext_error___block_invoke(uint64_t a1, void *a2, int a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a4;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2020000000;
  v69 = 1;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __43__BRCClientZone_dumpStatusToContext_error___block_invoke_2;
  v63[3] = &unk_278502BD8;
  v66 = *(a1 + 72);
  v64 = *(a1 + 32);
  v67 = v68;
  v53 = v8;
  v65 = v53;
  v59 = MEMORY[0x22AA4A310](v63);
  v9 = [*(a1 + 32) db];
  v10 = [v9 fetch:{@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation     FROM client_items    WHERE item_parent_id = %@  AND NOT item_id_is_documents(item_id) ORDER BY item_filename", v7}];
  v52 = v7;

  v54 = v10;
  do
  {
    v11 = [v10 next];
    if (!v11)
    {
      break;
    }

    v12 = objc_autoreleasePoolPush();
    v13 = [v10 integerAtIndex:0];
    if ([*(a1 + 32) isCancelled])
    {
      v14 = 1;
    }

    else
    {
      if (![*(a1 + 40) containsIndex:v13])
      {
        [*(a1 + 40) addIndex:v13];
        v18 = [*(a1 + 48) session];
        v19 = [*(a1 + 32) db];
        v20 = [v18 newLocalItemFromPQLResultSet:v10 db:v19 error:a5];

        if (v20)
        {
          v21 = [*(a1 + 56) fsUploader];
          v62 = [v21 descriptionForItem:v20 context:*(a1 + 32)];

          v22 = [*(a1 + 56) applyScheduler];
          v61 = [v22 descriptionForRejectedItem:v20 context:*(a1 + 32)];

          v23 = [*(a1 + 56) fsDownloader];
          v60 = [v23 descriptionForItem:v20 context:*(a1 + 32)];

          v24 = [*(a1 + 56) syncUpScheduler];
          v25 = [v24 descriptionForItem:v20 context:*(a1 + 32)];

          v58 = v25;
          v26 = (v62 | v61 | v60 | v25) != 0;
          if ([v20 syncUpState])
          {
            v27 = [v20 appLibrary];
            if (([v27 state] & 0x40000) == 0)
            {

              goto LABEL_13;
            }

            v36 = [v20 itemID];
            v37 = [v36 isDocumentsFolder];

            if (!v26 && (v37 & 1) != 0)
            {
LABEL_16:
              v38 = 0;
              if (!v26)
              {
                goto LABEL_17;
              }

LABEL_21:
              v41 = objc_alloc_init(MEMORY[0x277CCAB68]);
              v42 = v41;
              if (v62)
              {
                [v41 appendFormat:@" upload{%@}", v62];
              }

              if (v61)
              {
                [v42 appendFormat:@" rejected{%@}", v61];
              }

              if (v60)
              {
                [v42 appendFormat:@" downloader{%@}", v60];
              }

              if (v58)
              {
                [v42 appendFormat:@" sync-up{%@}", v58];
              }

              [*(a1 + 32) writeLineWithFormat:@">%@", v42];

              if (v38)
              {
                goto LABEL_30;
              }

              goto LABEL_31;
            }
          }

          else if (!(v62 | v61 | v60 | v25))
          {
            goto LABEL_16;
          }

LABEL_13:
          v59[2]();
          [*(a1 + 32) pushIndentation];
          v55 = v26;
          v28 = [v20 clientZone];
          v29 = *(a1 + 48);

          if (v28 == v29)
          {
            v35 = &stru_2837504F0;
          }

          else
          {
            v30 = objc_alloc(MEMORY[0x277CCACA8]);
            v31 = [v20 clientZone];
            v32 = [v31 mangledID];
            v33 = [v32 description];
            v34 = [v33 br_obfuscateAliasTarget];
            v35 = [v30 initWithFormat:@"zone:%@ ", v34];
          }

          v39 = *(a1 + 32);
          v40 = [v20 descriptionWithContext:v39];
          [v39 writeLineWithFormat:@"%@%@", v35, v40, v52];

          v38 = 1;
          if (v55)
          {
            goto LABEL_21;
          }

LABEL_17:
          if (v38)
          {
LABEL_30:
            [*(a1 + 32) popIndentation];
          }

LABEL_31:
          v43 = [v20 isDirectory] ^ 1;
          if (a3 > 99)
          {
            LOBYTE(v43) = 1;
          }

          if (v43)
          {
            goto LABEL_36;
          }

          v44 = *(a1 + 64);
          v45 = [v20 itemID];
          LOBYTE(v44) = [v44 containsObject:v45];

          if (v44)
          {
            goto LABEL_36;
          }

          v46 = *(*(*(a1 + 80) + 8) + 24);
          v47 = [v20 itemID];
          v48 = [v20 st];
          v49 = [v48 filename];
          v50 = [v53 stringByAppendingPathComponent:v49];
          LODWORD(v46) = (*(v46 + 16))(v46, v47, (a3 + 1), v50, a5);

          if (v46)
          {
LABEL_36:
            v14 = 0;
          }

          else
          {
            v14 = 1;
          }

          v10 = v54;
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_39;
      }

      v59[2]();
      [*(a1 + 32) pushIndentation];
      v15 = *(a1 + 32);
      v16 = [v10 objectOfClass:objc_opt_class() atIndex:2];
      v17 = [BRCDumpContext stringFromItemID:v16 context:*(a1 + 32)];
      [v15 writeLineWithFormat:@"ERROR: item ID %@ seen twice", v17];

      [*(a1 + 32) popIndentation];
      v14 = 2;
    }

LABEL_39:
    objc_autoreleasePoolPop(v12);
  }

  while ((v14 | 2) == 2);

  _Block_object_dispose(v68, 8);
  return v11 ^ 1u;
}

uint64_t __43__BRCClientZone_dumpStatusToContext_error___block_invoke_2(uint64_t result)
{
  v1 = result;
  if (*(*(*(result + 48) + 8) + 24) == 1)
  {
    [*(result + 32) writeLineWithFormat:@"Client Truth Unclean Items:"];
    result = [*(v1 + 32) writeLineWithFormat:@"--------------------------"];
    *(*(*(v1 + 48) + 8) + 24) = 0;
  }

  if (*(*(*(v1 + 56) + 8) + 24) == 1)
  {
    result = [*(v1 + 32) writeLineWithFormat:@"Under %@", *(v1 + 40)];
    *(*(*(v1 + 56) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)_resetItemsTable
{
  v10 = *MEMORY[0x277D85DE8];
  abc_report_panic_with_signature();
  [MEMORY[0x277CCACA8] stringWithFormat:@"implement this in subclass"];
  objc_claimAutoreleasedReturnValue();
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = brc_append_system_info_to_message();
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v2;
    _os_log_fault_impl(&dword_223E7A000, v3, OS_LOG_TYPE_FAULT, "[CRIT] %@%@", &v6, 0x16u);
  }

  brc_append_system_info_to_message();
  uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
  __assert_rtn("[BRCClientZone _resetItemsTable]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/containers/BRCClientZone.m", 4051, uTF8String);
}

- (id)itemsParentedToThisZoneButLivingInAnOtherZone
{
  itemFetcher = [(BRCAccountSession *)self->_session itemFetcher];
  v4 = [itemFetcher clientItemsParentedToPassedZoneButLivingInAnOtherZone:self->_dbRowID];

  return v4;
}

- (id)serverItemByRank:(int64_t)rank
{
  itemFetcher = [(BRCAccountSession *)self->_session itemFetcher];
  v6 = [itemFetcher serverItemByRank:rank zoneRowID:self->_dbRowID dbFacade:self->_dbFacade];

  return v6;
}

- (id)serverItemByItemID:(id)d dbFacade:(id)facade
{
  session = self->_session;
  facadeCopy = facade;
  dCopy = d;
  itemFetcher = [(BRCAccountSession *)session itemFetcher];
  v10 = [itemFetcher serverItemByItemID:dCopy zoneRowID:self->_dbRowID dbFacade:facadeCopy];

  return v10;
}

- (id)itemByItemID:(id)d dbFacade:(id)facade
{
  facadeCopy = facade;
  dCopy = d;
  v8 = [[BRCItemGlobalID alloc] initWithZoneRowID:self->_dbRowID itemID:dCopy];

  itemFetcher = [(BRCAccountSession *)self->_session itemFetcher];
  v10 = [itemFetcher itemByItemGlobalID:v8 dbFacade:facadeCopy];

  return v10;
}

- (id)itemByRowID:(unint64_t)d
{
  itemFetcher = [(BRCAccountSession *)self->_session itemFetcher];
  v6 = [itemFetcher itemByRowID:d zoneRowID:self->_dbRowID];

  return v6;
}

- (BOOL)validateItemsLoggingToFile:(__sFILE *)file db:(id)db
{
  v13 = *MEMORY[0x277D85DE8];
  dbCopy = db;
  abc_report_panic_with_signature();
  [MEMORY[0x277CCACA8] stringWithFormat:@"must implement in subclass"];
  objc_claimAutoreleasedReturnValue();
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v7 = brc_append_system_info_to_message();
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_fault_impl(&dword_223E7A000, v6, OS_LOG_TYPE_FAULT, "[CRIT] %@%@", &v9, 0x16u);
  }

  brc_append_system_info_to_message();
  uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
  __assert_rtn("[BRCClientZone validateItemsLoggingToFile:db:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/containers/BRCClientZone.m", 4160, uTF8String);
}

- (BOOL)validateStructureLoggingToFile:(__sFILE *)file db:(id)db
{
  v13 = *MEMORY[0x277D85DE8];
  dbCopy = db;
  abc_report_panic_with_signature();
  [MEMORY[0x277CCACA8] stringWithFormat:@"must implement in subclass"];
  objc_claimAutoreleasedReturnValue();
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v7 = brc_append_system_info_to_message();
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_fault_impl(&dword_223E7A000, v6, OS_LOG_TYPE_FAULT, "[CRIT] %@%@", &v9, 0x16u);
  }

  brc_append_system_info_to_message();
  uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
  __assert_rtn("[BRCClientZone validateStructureLoggingToFile:db:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/containers/BRCClientZone.m", 4165, uTF8String);
}

- (void)_removeAllShareAcceptanceBlocks
{
  v85 = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->_db assertOnQueue];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v84 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] calling and removing all share acceptance blocks%@", buf, 0xCu);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_downloadedBlockToPerformForItemID objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v73;
    do
    {
      v9 = 0;
      do
      {
        if (*v73 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        (*(*(*(&v72 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v72 objects:v82 count:16];
    }

    while (v7);
  }

  downloadedBlockToPerformForItemID = self->_downloadedBlockToPerformForItemID;
  self->_downloadedBlockToPerformForItemID = 0;

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  objectEnumerator2 = [(NSMutableDictionary *)self->_onDiskBlockToPerformForItemID objectEnumerator];
  v12 = [objectEnumerator2 countByEnumeratingWithState:&v68 objects:v81 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v69;
    do
    {
      v15 = 0;
      do
      {
        if (*v69 != v14)
        {
          objc_enumerationMutation(objectEnumerator2);
        }

        (*(*(*(&v68 + 1) + 8 * v15++) + 16))();
      }

      while (v13 != v15);
      v13 = [objectEnumerator2 countByEnumeratingWithState:&v68 objects:v81 count:16];
    }

    while (v13);
  }

  onDiskBlockToPerformForItemID = self->_onDiskBlockToPerformForItemID;
  self->_onDiskBlockToPerformForItemID = 0;

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  objectEnumerator3 = [(NSMutableDictionary *)self->_syncDownBlockToPerformForItemID objectEnumerator];
  v18 = [objectEnumerator3 countByEnumeratingWithState:&v64 objects:v80 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v65;
    do
    {
      v21 = 0;
      do
      {
        if (*v65 != v20)
        {
          objc_enumerationMutation(objectEnumerator3);
        }

        v22 = *(*(&v64 + 1) + 8 * v21);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v23 = v22;
        v24 = [v23 countByEnumeratingWithState:&v60 objects:v79 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v61;
          do
          {
            v27 = 0;
            do
            {
              if (*v61 != v26)
              {
                objc_enumerationMutation(v23);
              }

              (*(*(*(&v60 + 1) + 8 * v27++) + 16))();
            }

            while (v25 != v27);
            v25 = [v23 countByEnumeratingWithState:&v60 objects:v79 count:16];
          }

          while (v25);
        }

        ++v21;
      }

      while (v21 != v19);
      v19 = [objectEnumerator3 countByEnumeratingWithState:&v64 objects:v80 count:16];
    }

    while (v19);
  }

  syncDownBlockToPerformForItemID = self->_syncDownBlockToPerformForItemID;
  self->_syncDownBlockToPerformForItemID = 0;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  objectEnumerator4 = [(NSMutableDictionary *)self->_locateBlocksToPerformForRecordID objectEnumerator];
  v30 = [objectEnumerator4 countByEnumeratingWithState:&v56 objects:v78 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v57;
    do
    {
      v33 = 0;
      do
      {
        if (*v57 != v32)
        {
          objc_enumerationMutation(objectEnumerator4);
        }

        v34 = *(*(&v56 + 1) + 8 * v33);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v35 = v34;
        v36 = [v35 countByEnumeratingWithState:&v52 objects:v77 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v53;
          do
          {
            v39 = 0;
            do
            {
              if (*v53 != v38)
              {
                objc_enumerationMutation(v35);
              }

              (*(*(*(&v52 + 1) + 8 * v39++) + 16))();
            }

            while (v37 != v39);
            v37 = [v35 countByEnumeratingWithState:&v52 objects:v77 count:16];
          }

          while (v37);
        }

        ++v33;
      }

      while (v33 != v31);
      v31 = [objectEnumerator4 countByEnumeratingWithState:&v56 objects:v78 count:16];
    }

    while (v31);
  }

  locateBlocksToPerformForRecordID = self->_locateBlocksToPerformForRecordID;
  self->_locateBlocksToPerformForRecordID = 0;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  objectEnumerator5 = [(NSMutableDictionary *)self->_syncDownBlockToPerformForBookmarkData objectEnumerator];
  v42 = [objectEnumerator5 countByEnumeratingWithState:&v48 objects:v76 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v49;
    do
    {
      v45 = 0;
      do
      {
        if (*v49 != v44)
        {
          objc_enumerationMutation(objectEnumerator5);
        }

        (*(*(*(&v48 + 1) + 8 * v45++) + 16))();
      }

      while (v43 != v45);
      v43 = [objectEnumerator5 countByEnumeratingWithState:&v48 objects:v76 count:16];
    }

    while (v43);
  }

  syncDownBlockToPerformForBookmarkData = self->_syncDownBlockToPerformForBookmarkData;
  self->_syncDownBlockToPerformForBookmarkData = 0;

  v47 = *MEMORY[0x277D85DE8];
}

- (void)_removeOnDiskBlockToPerformForItemID:(id)d
{
  db = self->_db;
  dCopy = d;
  [(BRCPQLConnection *)db assertOnQueue];
  [(NSMutableDictionary *)self->_onDiskBlockToPerformForItemID removeObjectForKey:dCopy];

  if (![(NSMutableDictionary *)self->_onDiskBlockToPerformForItemID count])
  {
    onDiskBlockToPerformForItemID = self->_onDiskBlockToPerformForItemID;
    self->_onDiskBlockToPerformForItemID = 0;
  }
}

- (void)_removeDownloadedBlockToPerformForItemID:(id)d
{
  db = self->_db;
  dCopy = d;
  [(BRCPQLConnection *)db assertOnQueue];
  [(NSMutableDictionary *)self->_downloadedBlockToPerformForItemID removeObjectForKey:dCopy];

  if (![(NSMutableDictionary *)self->_downloadedBlockToPerformForItemID count])
  {
    downloadedBlockToPerformForItemID = self->_downloadedBlockToPerformForItemID;
    self->_downloadedBlockToPerformForItemID = 0;
  }
}

- (id)popOnDiskBlockForItemID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = dCopy;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] popOnDiskBlockForItemID [%@]%@", &v11, 0x16u);
  }

  if (dCopy)
  {
    [(BRCPQLConnection *)self->_db assertOnQueue];
    v7 = [(NSMutableDictionary *)self->_onDiskBlockToPerformForItemID objectForKeyedSubscript:dCopy];
    [(BRCClientZone *)self _removeOnDiskBlockToPerformForItemID:dCopy];
    v8 = MEMORY[0x22AA4A310](v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)popDownloadedBlockForItemID:(id)d
{
  if (d)
  {
    db = self->_db;
    dCopy = d;
    [(BRCPQLConnection *)db assertOnQueue];
    v6 = [(NSMutableDictionary *)self->_downloadedBlockToPerformForItemID objectForKeyedSubscript:dCopy];
    [(BRCClientZone *)self _removeDownloadedBlockToPerformForItemID:dCopy];

    v7 = MEMORY[0x22AA4A310](v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)performBlock:(id)block whenItemWithRecordIDIsOnDisk:(id)disk
{
  v37 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  diskCopy = disk;
  zoneAppRetriever = [(BRCAccountSession *)self->_session zoneAppRetriever];
  v9 = [diskCopy brc_itemIDWithZoneAppRetriever:zoneAppRetriever];

  v27 = 0uLL;
  v28 = 0;
  __brc_create_section(0, "[BRCClientZone performBlock:whenItemWithRecordIDIsOnDisk:]", 4247, 0, &v27);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v32 = v27;
    v33 = 2112;
    v34 = v9;
    v35 = 2112;
    v36 = v10;
    _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx waiting for item %@ to be on disk%@", buf, 0x20u);
  }

  v29 = v27;
  v30 = v28;
  if (blockCopy && v9)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __59__BRCClientZone_performBlock_whenItemWithRecordIDIsOnDisk___block_invoke;
    v23[3] = &unk_2785039C0;
    v25 = v29;
    v26 = v30;
    v24 = blockCopy;
    v12 = MEMORY[0x22AA4A310](v23);
    clientDB = [(BRCAccountSession *)self->_session clientDB];
    serialQueue = [clientDB serialQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__BRCClientZone_performBlock_whenItemWithRecordIDIsOnDisk___block_invoke_430;
    v19[3] = &unk_2785003B0;
    v19[4] = self;
    v20 = v9;
    blockCopy = v12;
    v22 = blockCopy;
    v21 = diskCopy;
    dispatch_async_with_logs_5(serialQueue, v19);

    v15 = v24;
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = MEMORY[0x22AA4A310](blockCopy);
      *buf = 138412802;
      v32 = v17;
      v33 = 2112;
      v34 = v9;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ and %@ must be non nil to register action%@", buf, 0x20u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __59__BRCClientZone_performBlock_whenItemWithRecordIDIsOnDisk___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __59__BRCClientZone_performBlock_whenItemWithRecordIDIsOnDisk___block_invoke_cold_1(&v7);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v6);
  __brc_leave_section(&v7);
}

void __59__BRCClientZone_performBlock_whenItemWithRecordIDIsOnDisk___block_invoke_430(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) itemByItemID:*(a1 + 40)];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __59__BRCClientZone_performBlock_whenItemWithRecordIDIsOnDisk___block_invoke_2;
  v24[3] = &unk_2785039E8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v25 = v3;
  v26 = v4;
  v27 = *(a1 + 56);
  v5 = MEMORY[0x22AA4A310](v24);
  if (([*(a1 + 32) state] & 0x100) != 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138412802;
      v29 = v11;
      v30 = 2112;
      v31 = v2;
      v32 = 2112;
      v33 = v6;
      v8 = "[WARNING] %@ is resetting. Not waiting on faulting of %@%@";
      v9 = v7;
      v10 = 32;
      goto LABEL_7;
    }

LABEL_8:

    (*(*(a1 + 56) + 16))();
    goto LABEL_9;
  }

  if ([v2 isAlmostDead])
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = v2;
      v30 = 2112;
      v31 = v6;
      v8 = "[WARNING] %@ is dead, not waiting on faulting.%@";
      v9 = v7;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v2)
  {
    if (([v2 isOnDisk] & 1) == 0)
    {
      (v5)[2](v5, v2);
      goto LABEL_9;
    }

    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __59__BRCClientZone_performBlock_whenItemWithRecordIDIsOnDisk___block_invoke_430_cold_1();
    }

    goto LABEL_8;
  }

  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 40);
    *buf = 138412546;
    v29 = v15;
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] Local item not found. Wait for the item [%@] to be on disk.%@", buf, 0x16u);
  }

  v16 = *(a1 + 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59__BRCClientZone_performBlock_whenItemWithRecordIDIsOnDisk___block_invoke_432;
  v20[3] = &unk_278503A38;
  v17 = *(a1 + 56);
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v22 = v17;
  v20[4] = v18;
  v21 = v19;
  v23 = v5;
  [v16 performBlock:v20 whenLocatingCompletesForItemWithRecordID:*(a1 + 48)];

LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
}

void __59__BRCClientZone_performBlock_whenItemWithRecordIDIsOnDisk___block_invoke_2(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = v3;
    if (!v3)
    {
      v11 = a1[4];
    }

    v12 = 138412546;
    v13 = v11;
    v14 = 2112;
    v15 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Waiting for %@ to be available%@", &v12, 0x16u);
  }

  if (!*(a1[5] + 336))
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = a1[5];
    v8 = *(v7 + 336);
    *(v7 + 336) = v6;
  }

  v9 = MEMORY[0x22AA4A310](a1[6]);
  [*(a1[5] + 336) setObject:v9 forKeyedSubscript:a1[4]];

  v10 = *MEMORY[0x277D85DE8];
}

void __59__BRCClientZone_performBlock_whenItemWithRecordIDIsOnDisk___block_invoke_432(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(*(a1 + 32) + 8) clientTruthWorkloop];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__BRCClientZone_performBlock_whenItemWithRecordIDIsOnDisk___block_invoke_2_433;
    v11[3] = &unk_278503A10;
    v10 = *(a1 + 32);
    v4 = *(&v10 + 1);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    v12 = v10;
    v13 = v7;
    dispatch_async_with_logs_5(v3, v11);
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = *(*(a1 + 48) + 16);

    v9();
  }
}

void __59__BRCClientZone_performBlock_whenItemWithRecordIDIsOnDisk___block_invoke_2_433(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) itemByItemID:*(a1 + 40)];
  if ([v2 isOnDisk])
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      v7 = v2;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ is on disk after syncing down and refreshing%@", &v6, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)performBlock:(id)block whenItemWithIDIsDownloaded:(id)downloaded
{
  v34 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  downloadedCopy = downloaded;
  v24 = 0uLL;
  v25 = 0;
  __brc_create_section(0, "[BRCClientZone performBlock:whenItemWithIDIsDownloaded:]", 4312, 0, &v24);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v29 = v24;
    v30 = 2112;
    v31 = downloadedCopy;
    v32 = 2112;
    v33 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx waiting for item %@ to be downloaded%@", buf, 0x20u);
  }

  v26 = v24;
  v27 = v25;
  if (blockCopy && downloadedCopy)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __57__BRCClientZone_performBlock_whenItemWithIDIsDownloaded___block_invoke;
    v20[3] = &unk_278503A60;
    v22 = v26;
    v23 = v27;
    v21 = blockCopy;
    v10 = MEMORY[0x22AA4A310](v20);
    clientDB = [(BRCAccountSession *)self->_session clientDB];
    serialQueue = [clientDB serialQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__BRCClientZone_performBlock_whenItemWithIDIsDownloaded___block_invoke_434;
    v17[3] = &unk_2784FF5B8;
    v17[4] = self;
    v18 = downloadedCopy;
    blockCopy = v10;
    v19 = blockCopy;
    dispatch_async_with_logs_5(serialQueue, v17);

    v13 = v21;
  }

  else
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = MEMORY[0x22AA4A310](blockCopy);
      *buf = 138412802;
      v29 = v15;
      v30 = 2112;
      v31 = downloadedCopy;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ and %@ must be non nil to register action%@", buf, 0x20u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __57__BRCClientZone_performBlock_whenItemWithIDIsDownloaded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __57__BRCClientZone_performBlock_whenItemWithIDIsDownloaded___block_invoke_cold_1(&v7);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3, v6);
  __brc_leave_section(&v7);
}

void __57__BRCClientZone_performBlock_whenItemWithIDIsDownloaded___block_invoke_434(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) itemByItemID:*(a1 + 40)];
  v3 = [v2 asDocument];

  if (([*(a1 + 32) state] & 0x100) != 0)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412802;
      v24 = v9;
      v25 = 2112;
      v26 = v3;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ is resetting. Not waiting on download of %@%@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  if ([v3 hasLocalContent])
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __57__BRCClientZone_performBlock_whenItemWithIDIsDownloaded___block_invoke_434_cold_2();
    }

    v6 = *(*(a1 + 48) + 16);
    goto LABEL_17;
  }

  v10 = +[BRCSystemResourcesManager manager];
  v11 = [v10 isNetworkReachable];

  if ((v11 & 1) == 0)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __57__BRCClientZone_performBlock_whenItemWithIDIsDownloaded___block_invoke_434_cold_1();
    }

LABEL_16:

    v6 = *(*(a1 + 48) + 16);
LABEL_17:
    v6();
    goto LABEL_18;
  }

  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v21 = v3;
    if (!v3)
    {
      v21 = *(a1 + 40);
    }

    *buf = 138412546;
    v24 = v21;
    v25 = 2112;
    v26 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] Waiting for %@ to be downloaded%@", buf, 0x16u);
  }

  if (!*(*(a1 + 32) + 344))
  {
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v15 = *(a1 + 32);
    v16 = *(v15 + 344);
    *(v15 + 344) = v14;
  }

  v17 = MEMORY[0x22AA4A310](*(a1 + 48));
  [*(*(a1 + 32) + 344) setObject:v17 forKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v18 = [*(*(a1 + 32) + 8) clientDB];
    v19 = [v18 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__BRCClientZone_performBlock_whenItemWithIDIsDownloaded___block_invoke_435;
    block[3] = &unk_2784FF450;
    block[4] = *(a1 + 32);
    dispatch_async(v19, block);
  }

LABEL_18:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_prepareForForegroundSyncDown
{
  v11 = *MEMORY[0x277D85DE8];
  syncDownOperation = self->_syncDownOperation;
  if (syncDownOperation && ![(_BRCOperation *)syncDownOperation nonDiscretionary])
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Cancelling sync down operation that uses a background session%@", &v9, 0xCu);
    }

    [(_BRCOperation *)self->_syncDownOperation cancel];
    [(BRCSyncOperationThrottle *)self->_syncDownThrottle graceNextRequest];
  }

  if (self->_syncUpOperation)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] Cancelling sync up operation because we need to sync down now%@", &v9, 0xCu);
    }

    [(_BRCOperation *)self->_syncUpOperation cancel];
  }

  [(BRCClientZone *)self scheduleSyncDownFirst];
  [(BRCDeadlineSource *)self->_syncDeadlineSource signal];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldFailSyncDownWaitImmediately
{
  v13 = *MEMORY[0x277D85DE8];
  if (([(BRCClientZone *)self state]& 0x100) != 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ is resetting. Not waiting on sync down%@", &v9, 0x16u);
    }

    goto LABEL_8;
  }

  v3 = +[BRCSystemResourcesManager manager];
  isNetworkReachable = [v3 isNetworkReachable];

  if ((isNetworkReachable & 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BRCClientZone _shouldFailSyncDownWaitImmediately];
    }

LABEL_8:

    result = 1;
    goto LABEL_9;
  }

  result = 0;
LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)performBlock:(id)block whenSyncDownCompletesLookingForItemID:(id)d
{
  v40 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  dCopy = d;
  v28 = 0uLL;
  v29 = 0;
  __brc_create_section(0, "[BRCClientZone performBlock:whenSyncDownCompletesLookingForItemID:]", 4386, 0, &v28);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v33 = v28;
    v34 = 2112;
    selfCopy = self;
    v36 = 2112;
    v37 = dCopy;
    v38 = 2112;
    v39 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx %@ - waiting sync down to complete for item %@%@", buf, 0x2Au);
  }

  v30 = v28;
  v31 = v29;
  if (blockCopy && dCopy)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__BRCClientZone_performBlock_whenSyncDownCompletesLookingForItemID___block_invoke;
    v23[3] = &unk_278503AB0;
    v26 = v30;
    v27 = v31;
    v10 = blockCopy;
    v25 = v10;
    v23[4] = self;
    v11 = dCopy;
    v24 = v11;
    v12 = MEMORY[0x22AA4A310](v23);
    clientTruthWorkloop = [(BRCAccountSession *)self->_session clientTruthWorkloop];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __68__BRCClientZone_performBlock_whenSyncDownCompletesLookingForItemID___block_invoke_437;
    v19[3] = &unk_278503A10;
    v19[4] = self;
    v20 = v11;
    v21 = v12;
    v22 = v10;
    v14 = v12;
    dispatch_async_with_logs_5(clientTruthWorkloop, v19);

    v15 = v25;
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = MEMORY[0x22AA4A310](blockCopy);
      *buf = 138412802;
      v33 = v17;
      v34 = 2112;
      selfCopy = dCopy;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ and %@ must be non nil to register action%@", buf, 0x20u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __68__BRCClientZone_performBlock_whenSyncDownCompletesLookingForItemID___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v17 = *(a1 + 56);
    v18 = *(a1 + 72);
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __68__BRCClientZone_performBlock_whenSyncDownCompletesLookingForItemID___block_invoke_cold_2(&v17);
    }

    (*(*(a1 + 48) + 16))();
LABEL_12:
    __brc_leave_section(&v17);
    return;
  }

  if (![*(a1 + 32) _shouldFailSyncDownWaitImmediately])
  {
    v17 = *(a1 + 56);
    v18 = *(a1 + 72);
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __68__BRCClientZone_performBlock_whenSyncDownCompletesLookingForItemID___block_invoke_cold_1(&v17);
    }

    v8 = [*(*(a1 + 32) + 8) clientTruthWorkloop];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__BRCClientZone_performBlock_whenSyncDownCompletesLookingForItemID___block_invoke_436;
    v12[3] = &unk_278503A88;
    v15 = *(a1 + 56);
    v16 = *(a1 + 72);
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14 = v9;
    v12[4] = v10;
    v13 = v11;
    dispatch_async_with_logs_5(v8, v12);

    goto LABEL_12;
  }

  v5 = *(*(a1 + 48) + 16);

  v5();
}

void __68__BRCClientZone_performBlock_whenSyncDownCompletesLookingForItemID___block_invoke_436(uint64_t a1)
{
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __68__BRCClientZone_performBlock_whenSyncDownCompletesLookingForItemID___block_invoke_2;
  v12 = &unk_2785039C0;
  v14 = *(a1 + 56);
  v15 = *(a1 + 72);
  v13 = *(a1 + 48);
  v2 = MEMORY[0x22AA4A310](&v9);
  v3 = *(*(a1 + 32) + 352);
  if (!v3)
  {
    v4 = objc_opt_new();
    v5 = *(a1 + 32);
    v6 = *(v5 + 352);
    *(v5 + 352) = v4;

    v3 = *(*(a1 + 32) + 352);
  }

  v7 = [v3 objectForKeyedSubscript:{*(a1 + 40), v9, v10, v11, v12}];
  if (!v7)
  {
    v7 = objc_opt_new();
    [*(*(a1 + 32) + 352) setObject:v7 forKeyedSubscript:*(a1 + 40)];
  }

  v8 = MEMORY[0x22AA4A310](v2);
  [v7 addObject:v8];

  [*(a1 + 32) _prepareForForegroundSyncDown];
}

void __68__BRCClientZone_performBlock_whenSyncDownCompletesLookingForItemID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __68__BRCClientZone_performBlock_whenSyncDownCompletesLookingForItemID___block_invoke_2_cold_1(&v7);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v6);
  __brc_leave_section(&v7);
}

void __68__BRCClientZone_performBlock_whenSyncDownCompletesLookingForItemID___block_invoke_437(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) serverItemByItemID:*(a1 + 40)];
  v3 = [*(a1 + 32) itemByItemID:*(a1 + 40)];
  if (!v3)
  {
    v3 = [*(a1 + 32) insertParentChainForItem:*(a1 + 40)];
  }

  if ([v3 isLive] && (objc_msgSend(v3, "isShareAcceptationFault") & 1) == 0 || v2 && (objc_msgSend(v2, "isLive") && objc_msgSend(v3, "isIdleOrRejected") && (objc_msgSend(v3, "updateFromServerItem:", v2), objc_msgSend(v3, "saveToDBForServerEdit:keepAliases:", 1, 0)) || objc_msgSend(v2, "isLive")))
  {
    v4 = *(*(a1 + 48) + 16);
LABEL_13:
    v4();
    goto LABEL_21;
  }

  if ([*(a1 + 32) _shouldFailSyncDownWaitImmediately])
  {
    v4 = *(*(a1 + 56) + 16);
    goto LABEL_13;
  }

  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = 138412802;
    v17 = v14;
    v18 = 2112;
    v19 = v15;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] Waiting for sync down for %@ in %@%@", &v16, 0x20u);
  }

  v7 = *(*(a1 + 32) + 352);
  if (!v7)
  {
    v8 = objc_opt_new();
    v9 = *(a1 + 32);
    v10 = *(v9 + 352);
    *(v9 + 352) = v8;

    v7 = *(*(a1 + 32) + 352);
  }

  v11 = [v7 objectForKeyedSubscript:*(a1 + 40)];
  if (!v11)
  {
    v11 = objc_opt_new();
    [*(*(a1 + 32) + 352) setObject:v11 forKeyedSubscript:*(a1 + 40)];
  }

  v12 = MEMORY[0x22AA4A310](*(a1 + 48));
  [v11 addObject:v12];

  [*(a1 + 32) _prepareForForegroundSyncDown];
LABEL_21:

  v13 = *MEMORY[0x277D85DE8];
}

- (id)insertParentChainForItem:(id)item
{
  itemCopy = item;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__26;
  v18 = __Block_byref_object_dispose__26;
  v19 = 0;
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__BRCClientZone_insertParentChainForItem___block_invoke;
  v10[3] = &unk_278503AD8;
  v6 = itemCopy;
  v11 = v6;
  selfCopy = self;
  v13 = &v14;
  LOBYTE(self) = [clientDB groupInTransaction:v10];

  if ((self & 1) == 0)
  {
    v7 = v15[5];
    v15[5] = 0;
  }

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

uint64_t __42__BRCClientZone_insertParentChainForItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [BRCUserDefaults defaultsForMangledID:0];
  v5 = [v4 maxSyncPathDepth];

  v6 = [v3 fetch:{@" WITH RECURSIVE item_parents (item_id, zone_rowid, height) AS(    SELECT item_parent_id, zone_rowid, 0 FROM server_items      WHERE item_id = %@ AND zone_rowid = %@  UNION ALL     SELECT si.item_parent_id, si.zone_rowid, p.height + 1 FROM server_items AS si  INNER JOIN item_parents AS p USING (item_id, zone_rowid)      LIMIT %u) SELECT ip.item_id, ip.zone_rowid FROM item_parents AS ip WHERE NOT EXISTS (SELECT 1 FROM client_items AS ci WHERE ip.item_id = ci.item_id   AND ip.zone_rowid = ci.zone_rowid) AND NOT item_id_is_root(ip.item_id) ORDER BY ip.height DESC", *(a1 + 32), *(*(a1 + 40) + 32), v5}];
  while ([v6 next])
  {
    v7 = [v6 objectOfClass:objc_opt_class() atIndex:0];
    v8 = [v6 numberAtIndex:1];
    v9 = [*(*(a1 + 40) + 8) serverZoneByRowID:v8];
    v10 = [v9 clientZone];
    v11 = [v10 serverItemByItemID:v7];
    v12 = [v11 newLocalItemWithDBRowID:0];
    v13 = [v12 saveToDB];

    if ((v13 & 1) == 0)
    {
      v14 = 0;
      goto LABEL_8;
    }
  }

  if ([*(a1 + 40) existsByItemID:*(a1 + 32)])
  {
    v14 = 1;
  }

  else
  {
    v15 = [*(a1 + 40) serverItemByItemID:*(a1 + 32)];
    v16 = [v15 newLocalItemWithDBRowID:0];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v14 = [*(*(*(a1 + 48) + 8) + 40) saveToDB];
  }

LABEL_8:

  return v14;
}

- (void)_enumerateAndClearLocateBlocksForRecordID:(id)d exists:(BOOL)exists
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = [(NSMutableDictionary *)self->_locateBlocksToPerformForRecordID objectForKeyedSubscript:dCopy];
  [(NSMutableDictionary *)self->_locateBlocksToPerformForRecordID removeObjectForKey:dCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v13 + 1) + 8 * v11) + 16))(*(*(&v13 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)performBlock:(id)block whenLocatingCompletesForItemWithRecordID:(id)d
{
  v44 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  dCopy = d;
  zoneAppRetriever = [(BRCAccountSession *)self->_session zoneAppRetriever];
  v9 = [dCopy brc_itemIDWithZoneAppRetriever:zoneAppRetriever];

  v32 = 0uLL;
  v33 = 0;
  __brc_create_section(0, "[BRCClientZone performBlock:whenLocatingCompletesForItemWithRecordID:]", 4525, 0, &v32);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v37 = v32;
    v38 = 2112;
    v39 = v9;
    v40 = 2112;
    v41 = dCopy;
    v42 = 2112;
    v43 = v10;
    _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx waiting to locate item [%@] with record ID [%@]%@", buf, 0x2Au);
  }

  v34 = v32;
  v35 = v33;
  if (dCopy && blockCopy && v9)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __71__BRCClientZone_performBlock_whenLocatingCompletesForItemWithRecordID___block_invoke;
    v25[3] = &unk_278503B28;
    v30 = v34;
    v31 = v35;
    v12 = v9;
    v26 = v12;
    v13 = blockCopy;
    v29 = v13;
    selfCopy = self;
    v28 = dCopy;
    v14 = MEMORY[0x22AA4A310](v25);
    clientTruthWorkloop = [(BRCAccountSession *)self->_session clientTruthWorkloop];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__BRCClientZone_performBlock_whenLocatingCompletesForItemWithRecordID___block_invoke_453;
    v21[3] = &unk_278503A10;
    v21[4] = self;
    v22 = v12;
    v23 = v14;
    v24 = v13;
    v16 = v14;
    dispatch_async_with_logs_5(clientTruthWorkloop, v21);

    v17 = v26;
  }

  else
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = MEMORY[0x22AA4A310](blockCopy);
      *buf = 138413058;
      v37 = v19;
      v38 = 2112;
      v39 = v9;
      v40 = 2112;
      v41 = dCopy;
      v42 = 2112;
      v43 = v17;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] %@, %@ and %@ must be non nil to register action%@", buf, 0x2Au);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __71__BRCClientZone_performBlock_whenLocatingCompletesForItemWithRecordID___block_invoke(uint64_t a1, int a2, int a3)
{
  v51 = *MEMORY[0x277D85DE8];
  if (a2 && (a3 & 1) == 0)
  {
    v43 = *(a1 + 64);
    v44 = *(a1 + 80);
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v30 = [*(a1 + 32) debugItemIDString];
      *buf = 134218498;
      v46 = v43;
      v47 = 2112;
      v48 = v30;
      v49 = 2112;
      v50 = v4;
      _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx Item [%@] already located. Execute block directly.%@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
    __brc_leave_section(&v43);
    goto LABEL_31;
  }

  if (a2 && a3)
  {
    v6 = [BRCUserDefaults defaultsForMangledID:0];
    v7 = [v6 maxSyncPathDepth];

    v8 = [*(*(a1 + 40) + 8) clientDB];
    v9 = [v8 fetch:{@" WITH RECURSIVE item_parents (item_parent_id, zone_rowid, height) AS(    SELECT item_parent_id, zone_rowid, 0 FROM server_items      WHERE item_id = %@ AND zone_rowid = %@  UNION ALL     SELECT si.item_parent_id, si.zone_rowid, p.height + 1 FROM server_items AS si  INNER JOIN item_parents AS p where (si.item_id = p.item_parent_id)  LIMIT %u) SELECT item_parent_id FROM item_parents ORDER BY height DESC", *(a1 + 32), *(*(a1 + 40) + 32), v7}];

    if ([v9 next])
    {
      v10 = [v9 objectOfClass:objc_opt_class() atIndex:0];
      if (([v10 isNonDesktopRoot] & 1) != 0 || objc_msgSend(v10, "isDocumentsFolder"))
      {
        v43 = *(a1 + 64);
        v44 = *(a1 + 80);
        v11 = brc_bread_crumbs();
        v12 = brc_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v34 = [*(a1 + 32) debugItemIDString];
          *buf = 134218498;
          v46 = v43;
          v47 = 2112;
          v48 = v34;
          v49 = 2112;
          v50 = v11;
          _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx Item [%@] already located. Parent chain confirmed. Execute block directly.%@", buf, 0x20u);
        }

        (*(*(a1 + 56) + 16))();
        __brc_leave_section(&v43);

        goto LABEL_31;
      }
    }

    else
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        __71__BRCClientZone_performBlock_whenLocatingCompletesForItemWithRecordID___block_invoke_cold_1();
      }
    }
  }

  v43 = *(a1 + 64);
  v44 = *(a1 + 80);
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v31 = [*(a1 + 32) debugItemIDString];
    *buf = 134218498;
    v46 = v43;
    v47 = 2112;
    v48 = v31;
    v49 = 2112;
    v50 = v15;
    _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx Need to locate item [%@]%@", buf, 0x20u);
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __71__BRCClientZone_performBlock_whenLocatingCompletesForItemWithRecordID___block_invoke_444;
  v38[3] = &unk_278503B00;
  v41 = *(a1 + 64);
  v42 = *(a1 + 80);
  v39 = *(a1 + 32);
  v40 = *(a1 + 56);
  v17 = MEMORY[0x22AA4A310](v38);
  v18 = *(*(a1 + 40) + 360);
  if (!v18)
  {
    v19 = objc_opt_new();
    v20 = *(a1 + 40);
    v21 = *(v20 + 360);
    *(v20 + 360) = v19;

    v18 = *(*(a1 + 40) + 360);
  }

  v22 = [v18 objectForKeyedSubscript:*(a1 + 48)];
  if (!v22)
  {
    v22 = objc_opt_new();
    [*(*(a1 + 40) + 360) setObject:v22 forKeyedSubscript:*(a1 + 48)];
  }

  v23 = MEMORY[0x22AA4A310](v17);
  [v22 addObject:v23];

  v24 = [*(a1 + 40) locateRecordIfNecessaryForRecordID:*(a1 + 48) isUserWaiting:1];
  if (v24)
  {
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __71__BRCClientZone_performBlock_whenLocatingCompletesForItemWithRecordID___block_invoke_445;
    v35[3] = &unk_2784FFD80;
    v25 = *(a1 + 48);
    v26 = *(a1 + 40);
    v36 = v25;
    v37 = v26;
    [v24 addLocateRecordCompletionBlock:v35];
  }

  else
  {
    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, 0x90u))
    {
      v32 = [*(a1 + 32) debugItemIDString];
      v33 = *(a1 + 48);
      *buf = 138412802;
      v46 = v32;
      v47 = 2112;
      v48 = v33;
      v49 = 2112;
      v50 = v27;
      _os_log_error_impl(&dword_223E7A000, v28, 0x90u, "[ERROR] Fail to create LocateRecordOperation for item [%@] with record ID [%@] --> Fail all waiting blocks.%@", buf, 0x20u);
    }

    [*(a1 + 40) _enumerateAndClearLocateBlocksForRecordID:*(a1 + 48) exists:0];
  }

  __brc_leave_section(&v43);
LABEL_31:
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __71__BRCClientZone_performBlock_whenLocatingCompletesForItemWithRecordID___block_invoke_444(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(a1 + 32) debugItemIDString];
      *buf = 134218498;
      v12 = v9;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v3;
      _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx Item [%@] located successfully%@", buf, 0x20u);
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = [*(a1 + 32) debugItemIDString];
      *buf = 134218498;
      v12 = v9;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx Item [%@] was not located%@", buf, 0x20u);
    }
  }

  __brc_leave_section(&v9);
  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __71__BRCClientZone_performBlock_whenLocatingCompletesForItemWithRecordID___block_invoke_445(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"fail";
    v9 = *(a1 + 32);
    v11 = 138413058;
    if (a2)
    {
      v8 = @"success";
    }

    v12 = v9;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] Locate record ID [%@]: %@ with error %@%@", &v11, 0x2Au);
  }

  [*(a1 + 40) _enumerateAndClearLocateBlocksForRecordID:*(a1 + 32) exists:a2];
  v10 = *MEMORY[0x277D85DE8];
}

void __71__BRCClientZone_performBlock_whenLocatingCompletesForItemWithRecordID___block_invoke_453(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) serverItemByItemID:*(a1 + 40)];
  v4 = [*(v2 - 1) itemByItemID:*v2];
  if (!v4)
  {
    v4 = [*(a1 + 32) insertParentChainForItem:*(a1 + 40)];
  }

  if ([v4 isLive] && (objc_msgSend(v4, "isShareAcceptationFault") & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3)
  {
    if ([v3 isLive])
    {
      if ([v4 isIdleOrRejected])
      {
        [v4 updateFromServerItem:v3];
        if ([v4 saveToDBForServerEdit:1 keepAliases:0])
        {
LABEL_9:
          v5 = *(*(a1 + 48) + 16);
LABEL_21:
          v5();
          goto LABEL_22;
        }
      }
    }

    if ([v3 isLive])
    {
      v5 = *(*(a1 + 48) + 16);
      goto LABEL_21;
    }
  }

  if (([*(a1 + 32) state] & 0x100) != 0)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = [*(a1 + 40) debugItemIDString];
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ is resetting. Not waiting to locate item [%@]%@", &v15, 0x20u);
    }

    goto LABEL_20;
  }

  v6 = +[BRCSystemResourcesManager manager];
  v7 = [v6 isNetworkReachable];

  if (v7)
  {
LABEL_20:
    v5 = *(*(a1 + 48) + 16);
    goto LABEL_21;
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __71__BRCClientZone_performBlock_whenLocatingCompletesForItemWithRecordID___block_invoke_453_cold_1();
  }

  (*(*(a1 + 56) + 16))();
LABEL_22:

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasHighPriorityWatchers
{
  v3 = [(NSMutableDictionary *)self->_syncDownBlockToPerformForItemID count];
  v4 = [(NSMutableDictionary *)self->_locateBlocksToPerformForRecordID count]+ v3;
  v5 = [(NSMutableDictionary *)self->_syncDownBlockToPerformForBookmarkData count];
  v6 = v4 + v5 + [(NSMutableDictionary *)self->_downloadedBlockToPerformForItemID count];
  v7 = [(NSMutableDictionary *)self->_onDiskBlockToPerformForItemID count];
  v8 = v6 + v7 + [(NSMutableArray *)self->_nextSyncDownBarriers count];
  return v8 + [(NSMutableArray *)self->_blockedOperationsOnInitialSync count]!= 0;
}

- (BOOL)removeItemOnDiskBlock:(id)block
{
  blockCopy = block;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  serialQueue = [clientDB serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__BRCClientZone_removeItemOnDiskBlock___block_invoke;
  block[3] = &unk_278500D08;
  v10 = blockCopy;
  v11 = &v12;
  block[4] = self;
  v7 = blockCopy;
  dispatch_sync(serialQueue, block);

  LOBYTE(blockCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return blockCopy;
}

void __39__BRCClientZone_removeItemOnDiskBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) popOnDiskBlockForItemID:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = v2 != 0;
}

- (BOOL)removeItemIsDownloadedBlock:(id)block
{
  blockCopy = block;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  serialQueue = [clientDB serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__BRCClientZone_removeItemIsDownloadedBlock___block_invoke;
  block[3] = &unk_278500D08;
  v10 = blockCopy;
  v11 = &v12;
  block[4] = self;
  v7 = blockCopy;
  dispatch_sync(serialQueue, block);

  LOBYTE(blockCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return blockCopy;
}

void __45__BRCClientZone_removeItemIsDownloadedBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) popDownloadedBlockForItemID:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = v2 != 0;
}

- (BOOL)removeSyncDownForItemIDBlock:(id)block
{
  blockCopy = block;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  serialQueue = [clientDB serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__BRCClientZone_removeSyncDownForItemIDBlock___block_invoke;
  block[3] = &unk_278500D08;
  v10 = blockCopy;
  v11 = &v12;
  block[4] = self;
  v7 = blockCopy;
  dispatch_sync(serialQueue, block);

  LOBYTE(blockCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return blockCopy;
}

uint64_t __46__BRCClientZone_removeSyncDownForItemIDBlock___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 352) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = v2 != 0;

  v3 = a1[5];
  v4 = *(a1[4] + 352);

  return [v4 removeObjectForKey:v3];
}

- (id)syncDownAnalyticsError
{
  v3 = [BRCUserDefaults defaultsForMangledID:self->_mangledID];
  [v3 syncDownDelayForFailure];
  v5 = v4;

  v6 = atomic_load(&self->_syncState);
  if ((v6 & 2) != 0 && self->_lastSyncDownError && ([(BRCSyncOperationThrottle *)self->_syncDownThrottle delay], v7 > v5) && (lastSyncDownError = self->_lastSyncDownError, v13 = 0, [(NSError *)lastSyncDownError brc_telemetryReportableErrorWithRecordName:&v13], v9 = objc_claimAutoreleasedReturnValue(), v10 = [(BRCClientZone *)self enhancedDrivePrivacyEnabled], v9))
  {
    v11 = [[BRCErrorGrouping alloc] initWithError:v9 pcsChained:0 enhancedDrivePrivacyEnabled:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)syncUpAnalyticsError
{
  v3 = [BRCUserDefaults defaultsForMangledID:self->_mangledID];
  [v3 syncUpDelayForFailure];
  v5 = v4;

  v6 = atomic_load(&self->_syncState);
  if ((v6 & 1) != 0 && self->_lastSyncUpError && ([(BRCSyncOperationThrottle *)self->_syncUpThrottle delay], v7 > v5) && (lastSyncUpError = self->_lastSyncUpError, v14 = 0, [(NSError *)lastSyncUpError brc_telemetryReportableErrorWithRecordName:&v14], v9 = objc_claimAutoreleasedReturnValue(), lastSyncUpErrorWasOnChainedItem = self->_lastSyncUpErrorWasOnChainedItem, v11 = [(BRCClientZone *)self enhancedDrivePrivacyEnabled], v9))
  {
    v12 = [[BRCErrorGrouping alloc] initWithError:v9 pcsChained:lastSyncUpErrorWasOnChainedItem enhancedDrivePrivacyEnabled:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)networkReachabilityChanged:(BOOL)changed
{
  if (!changed)
  {
    if ([(BRCClientZone *)self hasHighPriorityWatchers])
    {
      serialQueue = [(BRCPQLConnection *)self->_db serialQueue];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __44__BRCClientZone_networkReachabilityChanged___block_invoke;
      v5[3] = &unk_2784FF450;
      v5[4] = self;
      dispatch_async_with_logs_5(serialQueue, v5);
    }
  }
}

void __44__BRCClientZone_networkReachabilityChanged___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) personaIdentifier];
  v3 = *(a1 + 32);
  BRPerformWithPersonaAndError();
}

void __44__BRCClientZone_networkReachabilityChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __44__BRCClientZone_networkReachabilityChanged___block_invoke_2_cold_1();
    }
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    __brc_create_section(0, "[BRCClientZone networkReachabilityChanged:]_block_invoke", 4731, 0, v8);
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __44__BRCClientZone_networkReachabilityChanged___block_invoke_2_cold_2(v8);
    }

    [*(a1 + 32) _removeAllShareAcceptanceBlocks];
    __brc_leave_section(v8);
  }
}

- (int64_t)throttleHashWithItemID:(id)d
{
  dCopy = d;
  mangledID = [(BRCClientZone *)self mangledID];
  v6 = [mangledID hash];
  v7 = [dCopy hash];

  return v7 ^ v6;
}

- (void)_appendToString:(id)string descriptionOfFieldNamed:(id)named inResultSet:(id)set pos:(int *)pos containsSize:(BOOL)size context:(id)context
{
  sizeCopy = size;
  stringCopy = string;
  namedCopy = named;
  setCopy = set;
  contextCopy = context;
  if (sizeCopy)
  {
    ++*pos;
    v16 = [setCopy unsignedLongLongAtIndex:?];
    ++*pos;
    v17 = [setCopy unsignedLongLongAtIndex:?];
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  ++*pos;
  v18 = [setCopy unsignedLongLongAtIndex:?];
  ++*pos;
  v19 = [setCopy unsignedLongLongAtIndex:?];
  v20 = v19;
  if (v16 || v17 || v18 || v19)
  {
    if (sizeCopy)
    {
      v21 = [BRCDumpContext stringFromByteCount:v17 context:contextCopy];
      v22 = [BRCDumpContext stringFromByteCount:v16 context:contextCopy];
      [stringCopy appendFormat:@"%@{needs:(count:%lld, size:%@) done:(count:%lld, size:%@)} ", namedCopy, v20, v21, v18, v22];
    }

    else
    {
      [stringCopy appendFormat:@"%@{needs:%lld done:%lld} ", namedCopy, v19, v18];
    }
  }
}

- (BOOL)_dumpItemsToContext:(id)context includeAllItems:(BOOL)items error:(id *)error
{
  v73 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v10 = self->_session;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2050000000;
  v70 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __59__BRCClientZone__dumpItemsToContext_includeAllItems_error___block_invoke;
  v55[3] = &unk_278503B50;
  v11 = contextCopy;
  v56 = v11;
  v60 = &v63;
  itemsCopy = items;
  v42 = v9;
  v57 = v42;
  selfCopy = self;
  v41 = v10;
  v59 = v41;
  v61 = &v67;
  v68[3] = v55;
  selfCopy2 = self;
  if ([(BRCClientZone *)self isPrivateZone])
  {
    asPrivateClientZone = [(BRCClientZone *)self asPrivateClientZone];
    appLibraries = [asPrivateClientZone appLibraries];
    v14 = [appLibraries count];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    asPrivateClientZone2 = [(BRCClientZone *)self asPrivateClientZone];
    obj = [asPrivateClientZone2 appLibraries];

    v16 = [obj countByEnumeratingWithState:&v51 objects:v72 count:16];
    if (v16)
    {
      v17 = *v52;
      v18 = 1;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v52 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v51 + 1) + 8 * i);
          if (v14 >= 2)
          {
            if ((v18 & 1) == 0)
            {
              [v11 writeLineWithFormat:&stru_2837504F0];
            }

            logName = [v20 logName];
            dbRowID = [v20 dbRowID];
            [v11 writeLineWithFormat:@"----------------------%@[%@]----------------------", logName, dbRowID];

            v18 = 0;
          }

          fetchRootItem = [v20 fetchRootItem];
          v24 = [fetchRootItem descriptionWithContext:v11];
          [v11 writeLineWithFormat:@"%@", v24];

          *(v64 + 6) = 0;
          v25 = v68[3];
          itemGlobalID = [fetchRootItem itemGlobalID];
          (*(v25 + 16))(v25, itemGlobalID, 0, error);

          LOBYTE(v25) = [v11 isCancelled];
          if (v25)
          {
            v38 = 0;
            goto LABEL_31;
          }
        }

        v16 = [obj countByEnumeratingWithState:&v51 objects:v72 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }
  }

  [v11 writeLineWithFormat:&stru_2837504F0];
  v27 = [v11 db];
  obj = [v27 numberWithSQL:{@"SELECT COUNT(*) FROM client_items WHERE zone_rowid = %@", selfCopy2->_dbRowID}];

  unsignedIntegerValue = [obj unsignedIntegerValue];
  if (unsignedIntegerValue > [v42 count])
  {
    if (![(BRCClientZone *)selfCopy2 isSharedZone])
    {
      [v11 writeLineWithFormat:@"ORPHANED ITEMS:"];
    }

    v29 = [v11 db];
    v30 = [v29 fetch:{@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE zone_rowid = %@ AND NOT indexset_contains(%p, rowid)", selfCopy2->_dbRowID, v42}];
    *(v64 + 6) = 0;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __59__BRCClientZone__dumpItemsToContext_includeAllItems_error___block_invoke_2;
    v45[3] = &unk_2784FF938;
    v45[4] = selfCopy2;
    v31 = v29;
    v46 = v31;
    v32 = [v30 enumerateObjects:v45];
    v33 = [v32 countByEnumeratingWithState:&v47 objects:v71 count:16];
    if (v33)
    {
      v34 = *v48;
      while (2)
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v48 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v47 + 1) + 8 * j);
          ++*(v64 + 6);
          if (([v11 shouldKeepDumpingWithItemCount:? includeAllItems:?] & 1) == 0)
          {

            v38 = 0;
            goto LABEL_30;
          }

          v37 = [v36 descriptionWithContext:v11];
          [v11 writeLineWithFormat:@"%@", v37];
        }

        v33 = [v32 countByEnumeratingWithState:&v47 objects:v71 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    [v11 writeLineWithFormat:&stru_2837504F0];
    v38 = 1;
LABEL_30:
  }

  else
  {
    v38 = 1;
  }

LABEL_31:

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);

  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t __59__BRCClientZone__dumpItemsToContext_includeAllItems_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) db];
  v8 = [v6 itemID];
  v9 = [v6 zoneRowID];
  v10 = [v7 fetch:{@"SELECT ci.rowid, ci.zone_rowid, ci.item_id, ci.item_creator_id, ci.item_sharing_options, ci.item_side_car_ckinfo, ci.item_parent_zone_rowid, ci.item_localsyncupstate, ci.item_local_diffs, ci.item_notifs_rank, ci.app_library_rowid, ci.item_min_supported_os_rowid, ci.item_user_visible, ci.item_stat_ckinfo, ci.item_state, ci.item_type, ci.item_mode, ci.item_birthtime, ci.item_lastusedtime, ci.item_favoriterank, ci.item_parent_id, ci.item_filename, ci.item_hidden_ext, ci.item_finder_tags, ci.item_xattr_signature, ci.item_trash_put_back_path, ci.item_trash_put_back_parent_id, ci.item_alias_target, ci.item_creator, ci.item_processing_stamp, ci.item_bouncedname, ci.item_scope, ci.item_local_change_count, ci.item_old_version_identifier, ci.fp_creation_item_identifier, ci.version_name, ci.version_ckinfo, ci.version_mtime, ci.version_size, ci.version_thumb_size, ci.version_thumb_signature, ci.version_content_signature, ci.version_xattr_signature, ci.version_edited_since_shared, ci.version_device, ci.version_conflict_loser_etags, ci.version_quarantine_info, ci.version_uploaded_assets, ci.version_upload_error, ci.version_old_zone_item_id, ci.version_old_zone_rowid, ci.version_local_change_count, ci.version_old_version_identifier, ci.item_live_conflict_loser_etags, ci.item_file_id, ci.item_generation     FROM client_items AS ci     LEFT JOIN item_recursive_properties AS rp      ON ci.rowid = rp.item_rowid    WHERE ci.item_parent_id = %@ AND ci.item_parent_zone_rowid = %@ ORDER BY (rp.needs_sync_up_count + rp.needs_upload_count + rp.needs_delete_doc_count) DESC", v8, v9}];

  v11 = v10;
  if ([v10 next])
  {
    v49 = a3;
    v50 = v10;
    v46 = v6;
    v47 = a3;
    v12 = a4;
    v51 = a3;
    while (1)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      ++*(*(*(a1 + 64) + 8) + 24);
      v15 = *(a1 + 80);
      if (![v14 shouldKeepDumpingWithItemCount:? includeAllItems:?])
      {
        break;
      }

      v16 = [v11 integerAtIndex:0];
      if ([*(a1 + 40) containsIndex:v16])
      {
        v17 = *(a1 + 32);
        v18 = [v11 objectOfClass:objc_opt_class() atIndex:2];
        v19 = [BRCDumpContext stringFromItemID:v18 context:*(a1 + 32)];
        [v17 writeLineWithFormat:@"%*sERROR: item ID %@ seen twice", a3, "", v19];
      }

      else
      {
        [*(a1 + 40) addIndex:v16];
        v20 = [*(a1 + 48) session];
        v21 = [*(a1 + 32) db];
        v18 = [v20 newLocalItemFromPQLResultSet:v11 db:v21 error:v12];

        if (!v18)
        {
          goto LABEL_32;
        }

        v22 = [v18 clientZone];
        v23 = *(a1 + 48);

        if (v22 == v23)
        {
          v19 = &stru_2837504F0;
        }

        else
        {
          v24 = objc_alloc(MEMORY[0x277CCACA8]);
          v25 = [v18 clientZone];
          v26 = [v25 mangledID];
          v27 = [v26 description];
          v28 = [v27 br_obfuscateAliasTarget];
          v19 = [v24 initWithFormat:@"zone:%@ ", v28];

          v12 = a4;
          a3 = v51;

          v11 = v50;
        }

        v29 = *(a1 + 32);
        v30 = [v18 descriptionWithContext:v29];
        [v29 writeLineWithFormat:@"%*s%@%@", v49, "", v19, v30];

        [*(a1 + 48) _dumpRecursivePropertiesOfItemByRowID:v16 context:*(a1 + 32) depth:a3];
        if ([*(a1 + 32) liveDaemon])
        {
          v31 = [*(a1 + 56) fsUploader];
          v32 = [v31 descriptionForItem:v18 context:*(a1 + 32)];

          v33 = [*(a1 + 56) applyScheduler];
          v34 = [v33 descriptionForRejectedItem:v18 context:*(a1 + 32)];

          v35 = [*(a1 + 56) fsDownloader];
          v36 = [v35 descriptionForItem:v18 context:*(a1 + 32)];

          v37 = [*(a1 + 56) syncUpScheduler];
          v38 = [v37 descriptionForItem:v18 context:*(a1 + 32)];

          if (v32 || v34 || v36 || v38)
          {
            v39 = objc_alloc_init(MEMORY[0x277CCAB68]);
            v40 = v39;
            if (v32)
            {
              [v39 appendFormat:@" upload{%@}", v32];
            }

            if (v34)
            {
              [v40 appendFormat:@" rejected{%@}", v34];
            }

            if (v36)
            {
              [v40 appendFormat:@" downloader{%@}", v36];
            }

            if (v38)
            {
              [v40 appendFormat:@" sync-up{%@}", v38];
            }

            [*(a1 + 32) writeLineWithFormat:@"%*s>%@", v47, "", v40];
          }

          v11 = v50;
          a3 = v51;
        }

        v41 = [v18 isDirectory];
        if (a3 <= 99)
        {
          if (v41)
          {
            v42 = *(*(*(a1 + 72) + 8) + 24);
            v43 = [v18 itemGlobalID];
            LOBYTE(v42) = (*(v42 + 16))(v42, v43, (a3 + 1), v12);

            if ((v42 & 1) == 0)
            {

LABEL_32:
              break;
            }
          }
        }
      }

      objc_autoreleasePoolPop(v13);
      if (([v11 next] & 1) == 0)
      {
        v44 = 1;
        goto LABEL_34;
      }
    }

    objc_autoreleasePoolPop(v13);
    v44 = 0;
LABEL_34:
    v6 = v46;
  }

  else
  {
    v44 = 1;
  }

  return v44;
}

id __59__BRCClientZone__dumpItemsToContext_includeAllItems_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 session];
  v8 = [v7 newLocalItemFromPQLResultSet:v6 db:*(a1 + 40) error:a3];

  return v8;
}

- (BOOL)dumpActivityToContext:(id)context includeExpensiveActivity:(BOOL)activity error:(id *)error
{
  activityCopy = activity;
  v135 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (!self->_activated)
  {
    goto LABEL_95;
  }

  v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
  syncState = [(BRCClientZone *)self syncState];
  brc_current_date_nsec();
  v100 = [BRCUserDefaults defaultsForMangledID:self->_mangledID];
  if ([(BRCClientZone *)self isPrivateZone])
  {
    asPrivateClientZone = [(BRCClientZone *)self asPrivateClientZone];
    defaultAppLibrary = [asPrivateClientZone defaultAppLibrary];
    isGreedy = [defaultAppLibrary isGreedy];
    v12 = @"(greedy)";
    if (!isGreedy)
    {
      v12 = &stru_2837504F0;
    }

    [contextCopy writeLineWithFormat:@"pending activity %@", v12];
  }

  else
  {
    [contextCopy writeLineWithFormat:@"pending activity %@", &stru_2837504F0];
  }

  [contextCopy writeLineWithFormat:@"================"];
  if (activityCopy)
  {
    fsDownloader = [(BRCAccountSession *)self->_session fsDownloader];
    v14 = [fsDownloader aggregateDescriptionForJobsMatching:self->_serverZone context:contextCopy];
    [contextCopy writeLineWithFormat:@"+ downloads:%@", v14];
  }

  else
  {
    [contextCopy writeLineWithFormat:@"+ downloads: not dumping"];
  }

  [contextCopy pushIndentation];
  selfCopy = self;
  v98 = activityCopy;
  if ([(BRCClientZone *)self isPrivateZone])
  {
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    asPrivateClientZone2 = [(BRCClientZone *)self asPrivateClientZone];
    appLibraries = [asPrivateClientZone2 appLibraries];

    obj = appLibraries;
    v105 = [appLibraries countByEnumeratingWithState:&v127 objects:v134 count:16];
    if (v105)
    {
      v103 = *v128;
      do
      {
        for (i = 0; i != v105; ++i)
        {
          if (*v128 != v103)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v127 + 1) + 8 * i);
          v123 = 0u;
          v124 = 0u;
          v125 = 0u;
          v126 = 0u;
          transferSyncContextIfExists = [v18 transferSyncContextIfExists];
          allDownloadOperations = [transferSyncContextIfExists allDownloadOperations];

          v21 = [allDownloadOperations countByEnumeratingWithState:&v123 objects:v133 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v124;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v124 != v23)
                {
                  objc_enumerationMutation(allDownloadOperations);
                }

                v25 = *(*(&v123 + 1) + 8 * j);
                logName = [v18 logName];
                v27 = [v25 descriptionWithContext:contextCopy];
                [contextCopy writeLineWithFormat:@"%@: %@", logName, v27];
              }

              v22 = [allDownloadOperations countByEnumeratingWithState:&v123 objects:v133 count:16];
            }

            while (v22);
          }
        }

        v105 = [obj countByEnumeratingWithState:&v127 objects:v134 count:16];
      }

      while (v105);
    }

    self = selfCopy;
    activityCopy = v98;
  }

  [contextCopy popIndentation];
  if (activityCopy)
  {
    fsUploader = [(BRCAccountSession *)self->_session fsUploader];
    v29 = [fsUploader aggregateDescriptionForJobsMatching:self->_serverZone context:contextCopy];
    [contextCopy writeLineWithFormat:@"+ uploads:  %@", v29];
  }

  else
  {
    [contextCopy writeLineWithFormat:@"+ uploads:  not dumping"];
  }

  [contextCopy pushIndentation];
  fsUploader2 = [(BRCAccountSession *)self->_session fsUploader];
  thumbnailGenerationManager = [fsUploader2 thumbnailGenerationManager];
  [contextCopy writeLineWithFormat:@"%@", thumbnailGenerationManager];

  if ([(BRCClientZone *)self isPrivateZone])
  {
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    asPrivateClientZone3 = [(BRCClientZone *)self asPrivateClientZone];
    appLibraries2 = [asPrivateClientZone3 appLibraries];

    obja = appLibraries2;
    v106 = [appLibraries2 countByEnumeratingWithState:&v119 objects:v132 count:16];
    if (v106)
    {
      v104 = *v120;
      do
      {
        for (k = 0; k != v106; ++k)
        {
          if (*v120 != v104)
          {
            objc_enumerationMutation(obja);
          }

          v35 = *(*(&v119 + 1) + 8 * k);
          v115 = 0u;
          v116 = 0u;
          v117 = 0u;
          v118 = 0u;
          transferSyncContextIfExists2 = [v35 transferSyncContextIfExists];
          uploadStream = [transferSyncContextIfExists2 uploadStream];
          operations = [uploadStream operations];

          v39 = [operations countByEnumeratingWithState:&v115 objects:v131 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v116;
            do
            {
              for (m = 0; m != v40; ++m)
              {
                if (*v116 != v41)
                {
                  objc_enumerationMutation(operations);
                }

                v43 = *(*(&v115 + 1) + 8 * m);
                logName2 = [v35 logName];
                v45 = [v43 descriptionWithContext:contextCopy];
                [contextCopy writeLineWithFormat:@"%@: %@", logName2, v45];
              }

              v40 = [operations countByEnumeratingWithState:&v115 objects:v131 count:16];
            }

            while (v40);
          }
        }

        v106 = [obja countByEnumeratingWithState:&v119 objects:v132 count:16];
      }

      while (v106);
    }

    self = selfCopy;
    activityCopy = v98;
  }

  if (self->_allItemsDidUploadTrackers)
  {
    [contextCopy writeLineWithFormat:@"sync bubble waiting"];
  }

  [contextCopy popIndentation];
  if (activityCopy)
  {
    applyScheduler = [(BRCAccountSession *)self->_session applyScheduler];
    v47 = [applyScheduler aggregateDescriptionForJobsMatching:self->_serverZone context:contextCopy];
    [contextCopy writeLineWithFormat:@"+ apply:    %@", v47];
  }

  else
  {
    [contextCopy writeLineWithFormat:@"+ reader:   not dumping"];
    [contextCopy writeLineWithFormat:@"+ apply:    not dumping"];
  }

  if ([(NSMutableDictionary *)self->_runningListOperations count])
  {
    [contextCopy writeLineWithFormat:@"+ list:"];
    [contextCopy pushIndentation];
    v48 = [(NSMutableDictionary *)self->_runningListOperations copy];
    v113[0] = MEMORY[0x277D85DD0];
    v113[1] = 3221225472;
    v113[2] = __70__BRCClientZone_dumpActivityToContext_includeExpensiveActivity_error___block_invoke;
    v113[3] = &unk_278503B78;
    v49 = contextCopy;
    v114 = v49;
    [v48 enumerateKeysAndObjectsUsingBlock:v113];

    [v49 popIndentation];
  }

  if ([(NSMutableDictionary *)self->_recursiveListOperations count])
  {
    [contextCopy writeLineWithFormat:@"+ rec-list:"];
    [contextCopy pushIndentation];
    v50 = [(NSMutableDictionary *)self->_recursiveListOperations copy];
    v111[0] = MEMORY[0x277D85DD0];
    v111[1] = 3221225472;
    v111[2] = __70__BRCClientZone_dumpActivityToContext_includeExpensiveActivity_error___block_invoke_2;
    v111[3] = &unk_278503BA0;
    v51 = contextCopy;
    v112 = v51;
    [v50 enumerateKeysAndObjectsUsingBlock:v111];

    [v51 popIndentation];
  }

  if ([(NSMutableDictionary *)self->_fetchParentOperations count])
  {
    [contextCopy writeLineWithFormat:@"+ fetch-parent:"];
    [contextCopy pushIndentation];
    v52 = [(NSMutableDictionary *)self->_fetchParentOperations copy];
    v109[0] = MEMORY[0x277D85DD0];
    v109[1] = 3221225472;
    v109[2] = __70__BRCClientZone_dumpActivityToContext_includeExpensiveActivity_error___block_invoke_3;
    v109[3] = &unk_278503BC8;
    v53 = contextCopy;
    v110 = v53;
    [v52 enumerateKeysAndObjectsUsingBlock:v109];

    [v53 popIndentation];
  }

  if ([(NSMutableDictionary *)self->_locateRecordOperations count])
  {
    [contextCopy writeLineWithFormat:@"+ locate-record:"];
    [contextCopy pushIndentation];
    v54 = [(NSMutableDictionary *)self->_locateRecordOperations copy];
    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = __70__BRCClientZone_dumpActivityToContext_includeExpensiveActivity_error___block_invoke_4;
    v107[3] = &unk_278503BF0;
    v55 = contextCopy;
    v108 = v55;
    [v54 enumerateKeysAndObjectsUsingBlock:v107];

    [v55 popIndentation];
  }

  if (self->_fetchRecentsOperation)
  {
    [contextCopy writeLineWithFormat:@"+ fetch-recents:"];
    [contextCopy pushIndentation];
    [contextCopy writeLineWithFormat:@"%@", self->_fetchRecentsOperation];
    [contextCopy popIndentation];
  }

  [(BRCClientZone *)self _appLibrariesState];
  if ([contextCopy liveDaemon])
  {
    if (self->_syncUpOperation)
    {
      v56 = @" [sync-up running]";
      v57 = syncState;
    }

    else
    {
      v57 = syncState;
      if ((self->_state & 0x100) == 0 && (syncState & 0x71) == 0x21)
      {
        syncUpRetryAfter = self->_syncUpRetryAfter;
        brc_interval_from_nsec();
        v60 = v59;
        [(BRCSyncOperationThrottle *)self->_syncUpThrottle nextTry];
        if (v61 <= v60)
        {
          v63 = @"because of item ";
        }

        else
        {
          [(BRCSyncOperationThrottle *)self->_syncUpThrottle nextTry];
          v60 = v62;
          v63 = &stru_2837504F0;
        }

        [(BRCSyncBudgetThrottle *)self->_syncUpBudget nextDateWithBudgetWithDefaults:v100];
        if (v92 > v60)
        {
          [(BRCSyncBudgetThrottle *)self->_syncUpBudget nextDateWithBudgetWithDefaults:v100];
          v60 = v93;
          v63 = @"for budget ";
        }

        brc_interval_from_nsec();
        if (v60 <= v94)
        {
          v64 = @" [sync-up waiting to be scheduled]";
          v65 = 7;
        }

        else
        {
          v95 = objc_alloc(MEMORY[0x277CCACA8]);
          brc_interval_from_nsec();
          v64 = [v95 initWithFormat:@" [sync-up throttled %@(next-try:in %.01fs)]", v63, v60 - v96];
          v65 = 3;
        }

        v57 = syncState;
        goto LABEL_74;
      }

      v56 = @" [sync-up waiting for sync down]";
    }

    if (v57)
    {
      v64 = v56;
    }

    else
    {
      v64 = 0;
    }

    if (v57)
    {
      v65 = 7;
    }

    else
    {
      v65 = 0;
    }

LABEL_74:
    if (self->_syncDownOperation)
    {
      v66 = 0;
      v67 = 0;
    }

    else
    {
      v66 = 0;
      if ((self->_state & 0x100) != 0)
      {
        v67 = 0;
      }

      else
      {
        v67 = 0;
        if ((v57 & 2) != 0)
        {
          [(BRCSyncOperationThrottle *)self->_syncDownThrottle nextTry];
          v88 = v87;
          brc_interval_from_nsec();
          if (v88 <= v89)
          {
            v66 = @" [sync-down waiting to be scheduled]";
            v67 = 7;
          }

          else
          {
            v90 = MEMORY[0x277CCACA8];
            brc_interval_from_nsec();
            v66 = [v90 stringWithFormat:@" [sync-down throttled (next-try:in %.01fs)]", v88 - v91];
            v67 = 3;
          }
        }
      }
    }

    if (v64)
    {
      v68 = [BRCDumpContext highlightedString:v64 type:v65 context:contextCopy];
      [v8 appendString:v68];
    }

    if (v66)
    {
      v69 = [BRCDumpContext highlightedString:v66 type:v67 context:contextCopy];
      [v8 appendString:v69];
    }

    [v8 appendFormat:@" [scheduling: %@]", self->_syncDeadlineSource];
    [contextCopy writeLineWithFormat:@"+ sync:      %@", v8];
    syncUpScheduler = [(BRCAccountSession *)self->_session syncUpScheduler];
    v71 = [syncUpScheduler aggregateDescriptionForJobsMatching:self->_serverZone context:contextCopy];
    [contextCopy writeLineWithFormat:@"  up:        %@", v71];

    v72 = [(BRCSyncBudgetThrottle *)self->_syncUpBudget debugDescriptionWithDefaults:v100];
    [contextCopy writeLineWithFormat:@"  up-budget: %@", v72];

    lastSyncUpError = self->_lastSyncUpError;
    if (lastSyncUpError)
    {
      brc_obfuscate = [(NSError *)lastSyncUpError brc_obfuscate];
      v75 = [BRCDumpContext stringFromError:brc_obfuscate context:contextCopy];
      [contextCopy writeLineWithFormat:@"  up-error:  %@", v75];
    }

    lastSyncDownError = self->_lastSyncDownError;
    if (lastSyncDownError)
    {
      brc_obfuscate2 = [(NSError *)lastSyncDownError brc_obfuscate];
      v78 = [BRCDumpContext stringFromError:brc_obfuscate2 context:contextCopy];
      [contextCopy writeLineWithFormat:@"  dn-error   %@", v78];
    }

    syncUpOperation = self->_syncUpOperation;
    if (syncUpOperation || (syncUpOperation = self->_syncDownOperation) != 0)
    {
      v80 = [syncUpOperation descriptionWithContext:contextCopy];
      [contextCopy writeLineWithFormat:@"  operation: %@", v80];
    }

    session = [(BRCClientZone *)self session];
    serverState = [session serverState];
    mangledID = [(BRCClientZone *)self mangledID];
    v84 = [serverState dumpMigrationQueriesForMangledID:mangledID];

    if (v84)
    {
      [contextCopy writeLineWithFormat:@"+ migration: %@", v84];
    }
  }

  if ([(NSSet *)self->_itemIDsBlockedFromSyncForCZMProcessing count])
  {
    [contextCopy writeLineWithFormat:@"+ process-removal: %@", self->_itemIDsBlockedFromSyncForCZMProcessing];
  }

  if ([(NSMutableArray *)self->_faultsLiveBarriers count])
  {
    [contextCopy writeLineWithFormat:@"+ barriers:  %ld", -[NSMutableArray count](self->_faultsLiveBarriers, "count")];
  }

LABEL_95:
  v85 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)shouldSyncMangledID:(id)d
{
  dCopy = d;
  v5 = [BRCUserDefaults defaultsForMangledID:dCopy];
  forceSyncOverride = [v5 forceSyncOverride];

  if (forceSyncOverride == 1)
  {
    goto LABEL_7;
  }

  if (forceSyncOverride == 255)
  {
    v7 = 0;
    goto LABEL_8;
  }

  if (-[BRCClientZone isSharedZone](self, "isSharedZone") || (-[BRCAccountSession appLibraryByMangledID:](self->_session, "appLibraryByMangledID:", dCopy), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 hasLocalChanges], v8, (v9 & 1) != 0) || -[BRCClientZone _hasNonDiscretionaryServerStitchingOperation](self, "_hasNonDiscretionaryServerStitchingOperation"))
  {
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  appLibraryOrZoneName = [dCopy appLibraryOrZoneName];
  session = [(BRCClientZone *)self session];
  v13 = [session appLibraryByMangledID:dCopy];
  containerMetadata = [v13 containerMetadata];
  isDocumentScopePublic = [containerMetadata isDocumentScopePublic];

  v16 = [appLibraryOrZoneName isEqualToString:*MEMORY[0x277CFAD68]];
  v7 = 1;
  if ((isDocumentScopePublic & 1) == 0 && (v16 & 1) == 0)
  {
    v17 = +[BRCCloudDocsAppsMonitor cloudDocsAppsMonitor];
    v7 = [v17 isApplicationInstalledForContainerID:appLibraryOrZoneName];
  }

LABEL_8:
  return v7;
}

- (id)liveItemByParentID:(id)d andLogicalName:(id)name excludingItemGlobalID:(id)iD
{
  iDCopy = iD;
  nameCopy = name;
  dCopy = d;
  v11 = [[BRCPQLInjectionExcludingItemGlobalID alloc] initWithExcludingItemGlobalID:iDCopy];

  v12 = [(BRCPQLConnection *)self->_db fetch:@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE ((item_parent_id = %@ AND item_filename = %@ AND item_parent_zone_rowid = %@        AND item_bouncedname IS NULL)   OR  (item_parent_id = %@ AND item_bouncedname = %@ AND item_parent_zone_rowid = %@))  AND item_state != 1  %@ LIMIT 1", dCopy, nameCopy, self->_dbRowID, dCopy, nameCopy, self->_dbRowID, v11];
  if ([v12 next])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __88__BRCClientZone_FPFSAdditions__liveItemByParentID_andLogicalName_excludingItemGlobalID___block_invoke;
    v16[3] = &unk_2784FF910;
    v16[4] = self;
    v13 = [v12 object:v16];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithSqliteCode:12 andMessage:@"item not found"];
    [(BRCPQLConnection *)self->_db setLastError:v14];

    v13 = 0;
  }

  return v13;
}

id __88__BRCClientZone_FPFSAdditions__liveItemByParentID_andLogicalName_excludingItemGlobalID___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 session];
  v8 = [v7 newLocalItemFromPQLResultSet:v6 db:*(*(a1 + 32) + 64) error:a3];

  return v8;
}

- (id)liveItemByParentID:(id)d andCaseInsensitiveLogicalName:(id)name excludingItemGlobalID:(id)iD
{
  iDCopy = iD;
  nameCopy = name;
  dCopy = d;
  v11 = [[BRCPQLInjectionExcludingItemGlobalID alloc] initWithExcludingItemGlobalID:iDCopy];

  v12 = [(BRCPQLConnection *)self->_db fetch:@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE ((item_parent_id = %@ AND item_filename = %@ COLLATE NOCASE AND item_parent_zone_rowid = %@        AND item_bouncedname IS NULL)   OR  (item_parent_id = %@ AND item_bouncedname = %@ COLLATE NOCASE AND item_parent_zone_rowid = %@))  AND item_state != 1  %@ LIMIT 1", dCopy, nameCopy, self->_dbRowID, dCopy, nameCopy, self->_dbRowID, v11];
  if ([v12 next])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __103__BRCClientZone_FPFSAdditions__liveItemByParentID_andCaseInsensitiveLogicalName_excludingItemGlobalID___block_invoke;
    v16[3] = &unk_2784FF910;
    v16[4] = self;
    v13 = [v12 object:v16];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithSqliteCode:12 andMessage:@"item not found"];
    [(BRCPQLConnection *)self->_db setLastError:v14];

    v13 = 0;
  }

  return v13;
}

id __103__BRCClientZone_FPFSAdditions__liveItemByParentID_andCaseInsensitiveLogicalName_excludingItemGlobalID___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 session];
  v8 = [v7 newLocalItemFromPQLResultSet:v6 db:*(*(a1 + 32) + 64) error:a3];

  return v8;
}

- (id)deadItemByParentID:(id)d andUnbouncedLogicalName:(id)name
{
  v5 = [(BRCPQLConnection *)self->_db fetch:@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE item_parent_id = %@ AND item_filename = %@ AND item_parent_zone_rowid = %@ AND zone_rowid = %@ AND item_state IN (1, -3) LIMIT 1", d, name, self->_dbRowID, self->_dbRowID];
  if ([v5 next])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__BRCClientZone_FPFSAdditions__deadItemByParentID_andUnbouncedLogicalName___block_invoke;
    v9[3] = &unk_2784FF910;
    v9[4] = self;
    v6 = [v5 object:v9];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithSqliteCode:12 andMessage:@"item not found"];
    [(BRCPQLConnection *)self->_db setLastError:v7];

    v6 = 0;
  }

  return v6;
}

id __75__BRCClientZone_FPFSAdditions__deadItemByParentID_andUnbouncedLogicalName___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 session];
  v8 = [v7 newLocalItemFromPQLResultSet:v6 db:*(*(a1 + 32) + 64) error:a3];

  return v8;
}

- (void)itemMovedIntoShareInThisZone:(id)zone associatedItemID:(id)d
{
  zoneCopy = zone;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  db = self->_db;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__BRCClientZone_FPFSAdditions__itemMovedIntoShareInThisZone_associatedItemID___block_invoke;
  v8[3] = &unk_2784FFA48;
  v9 = zoneCopy;
  v7 = zoneCopy;
  [(BRCPQLConnection *)db groupInTransaction:v8];
}

uint64_t __78__BRCClientZone_FPFSAdditions__itemMovedIntoShareInThisZone_associatedItemID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 st];
  v4 = [v3 logicalName];
  v5 = [*(a1 + 32) parentItemOnFS];
  [v2 updateWithLogicalName:v4 newParent:v5 forceTopLevelShareMove:1];

  [*(a1 + 32) saveToDB];
  return 1;
}

- (void)signalFaultingWatchersWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = self->_faultsLiveBarriers;
  faultsLiveBarriers = self->_faultsLiveBarriers;
  self->_faultsLiveBarriers = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v5;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v13 + 1) + 8 * v11) + 16))(*(*(&v13 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)notifyClient:(id)client whenFaultingIsDone:(id)done
{
  clientCopy = client;
  doneCopy = done;
  serialQueue = [(BRCPQLConnection *)self->_db serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__BRCClientZone_FPFSAdditions__notifyClient_whenFaultingIsDone___block_invoke;
  block[3] = &unk_2784FF5B8;
  v12 = clientCopy;
  selfCopy = self;
  v14 = doneCopy;
  v9 = doneCopy;
  v10 = clientCopy;
  dispatch_async(serialQueue, block);
}

void __64__BRCClientZone_FPFSAdditions__notifyClient_whenFaultingIsDone___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __64__BRCClientZone_FPFSAdditions__notifyClient_whenFaultingIsDone___block_invoke_cold_1(a1, v2, v3);
  }

  v4 = *(a1 + 40);
  if (*(v4 + 76))
  {
    v5 = *(v4 + 328);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = *(a1 + 40);
      v8 = *(v7 + 328);
      *(v7 + 328) = v6;

      v5 = *(*(a1 + 40) + 328);
    }

    v9 = MEMORY[0x22AA4A310](*(a1 + 48));
    [v5 addObject:v9];

    v10 = [*(*(a1 + 40) + 8) applyScheduler];
    [v10 monitorFaultingForZone:*(a1 + 40)];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
    (*(*(a1 + 48) + 16))();
  }
}

- (id)contentBoundaryKeyForItemID:(id)d withDB:(id)b
{
  bCopy = b;
  dCopy = d;
  dbRowID = [(BRCClientZone *)self dbRowID];
  v9 = [bCopy dataWithSQL:{@"SELECT content_boundary_key FROM server_items WHERE item_id = %@ AND zone_rowid = %@", dCopy, dbRowID}];

  return v9;
}

void __63__BRCClientZone_BRCZoneReset__scheduleReset_completionHandler___block_invoke_cold_1(int a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a1;
  *(buf + 4) = 2112;
  *(buf + 10) = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] waiting for %u cancelled operations to finish%@", buf, 0x12u);
}

void __63__BRCClientZone_BRCZoneReset__scheduleReset_completionHandler___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, a2, a3, "[CRIT] Assertion failed: !self->_resetTimer%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __63__BRCClientZone_BRCZoneReset__scheduleReset_completionHandler___block_invoke_7_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 134218242;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┳%llx continuing reset%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __61__BRCClientZone_BRCZoneReset___resetAndDeleteServerTruthData__block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] deleting from server truth for %@%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __92__BRCClientZone_BRCZoneReset___performResetAndWantsUnlink_clientTruthBlock_completionBlock___block_invoke_2_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] deleting from client truth for %@%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __92__BRCClientZone_BRCZoneReset___performResetAndWantsUnlink_clientTruthBlock_completionBlock___block_invoke_2_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] Received the following error while doing the hard reset phase - %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __92__BRCClientZone_BRCZoneReset___performResetAndWantsUnlink_clientTruthBlock_completionBlock___block_invoke_2_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] Received the following error while doing the post hard reset phase - %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __92__BRCClientZone_BRCZoneReset___performResetAndWantsUnlink_clientTruthBlock_completionBlock___block_invoke_2_cold_4(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = "";
  if (*(a1 + 56))
  {
    v1 = " and unlinking data";
  }

  LODWORD(v5) = 136315394;
  *(&v5 + 4) = v1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] Keeping client items during reset%s%@", v5, DWORD2(v5));
  v4 = *MEMORY[0x277D85DE8];
}

- (void)asPrivateClientZone
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: -asPrivateClientZone called on a shared zone%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asSharedClientZone
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: -asSharedClientZone called on a private zone%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)rootItemID
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: must be implemented in subclass%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateWithPlist:(void *)a1 .cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _syncUpBudget && _syncUpThrottle && _syncDownThrottle%@", &v7, 0xCu);
  }

  *a2 = *a1;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)scheduleResetServerAndClientTruthsForReason:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleSaltingErrorIfNeeded:record:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: parent.recordID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)handleSaltingErrorIfNeeded:record:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: parent.recordID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)sizeOfItemsNeedingSyncUpOrUploadAndReturnError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__BRCClientZone__scheduleZoneResetForUninstalledAppIfNecessary__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 zoneName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __63__BRCClientZone__scheduleZoneResetForUninstalledAppIfNecessary__block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] client zone deallocated%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_activateState:origState:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 zoneName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setSyncStateBits:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Ignoring sync state change because sync is disabled for this container%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSyncStateBits:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Asking for sync up but we never synced down, do that first%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__BRCClientZone_addOutOfBandOperation___block_invoke_2_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__BRCClientZone_removeOutOfBandOperation___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_blockSyncDownOnStitchingOperations
{
  OUTLINED_FUNCTION_21(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncDownImmediately
{
  OUTLINED_FUNCTION_21(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __27__BRCClientZone__startSync__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19_0(v1);
  brc_interval_from_nsec();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __27__BRCClientZone__startSync__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_18();
  v7 = *MEMORY[0x277D85DE8];
  [*(*v0 + 104) cost];
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __27__BRCClientZone__startSync__block_invoke_194_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*(*(a1 + 40) + 8) + 40);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __27__BRCClientZone__startSync__block_invoke_194_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Forcing cancel on sync op%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __95__BRCClientZone__learnCKInfosFromSavedRecords_isOutOfBandModifyRecords_basedOnOriginalVersion___block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: argc == 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __95__BRCClientZone__learnCKInfosFromSavedRecords_isOutOfBandModifyRecords_basedOnOriginalVersion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Located ckinfo in previous zone%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_syncUpOfRecords:createdAppLibraryNames:didFinishWithError:errorWasOnPCSChainedItem:throttledItemInBatch:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] decreasing sync-up batch size since server says we exceeded limits%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_syncUpOfRecords:(uint64_t)a1 createdAppLibraryNames:didFinishWithError:errorWasOnPCSChainedItem:throttledItemInBatch:.cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 488);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_syncUpOfRecords:(uint64_t)a1 createdAppLibraryNames:didFinishWithError:errorWasOnPCSChainedItem:throttledItemInBatch:.cold.3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 488);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_isIdle
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__BRCClientZone_notifyClient_afterNextSyncDown___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __48__BRCClientZone_notifyClient_afterNextSyncDown___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Cancelling the discretionary sync down operation since we have a barrier sync down request%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__BRCClientZone_notifyClient_whenIdle___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Client zone is already idle%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__BRCClientZone_notifyClient_whenIdle___block_invoke_243_cold_4()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __39__BRCClientZone_notifyClient_whenIdle___block_invoke_251_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__BRCClientZone_syncDownOperation_didFinishWithError_status___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 136);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __61__BRCClientZone_syncDownOperation_didFinishWithError_status___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  v8 = *(v1 + 176);
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __61__BRCClientZone_syncDownOperation_didFinishWithError_status___block_invoke_253_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__BRCClientZone_syncDownOperation_didFinishWithError_status___block_invoke_253_cold_2()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 db];
  v7 = [v1 lastError];
  OUTLINED_FUNCTION_10_0();
  _os_log_error_impl(v2, v3, 0x90u, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_didSyncDownRequestID:(uint64_t)a3 maxApplyRank:caughtUpWithServer:syncDownDate:isFixingState:.cold.1(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v9 = *a1;
    v10[0] = 67110146;
    v10[1] = 0;
    v11 = 2048;
    v12 = v9;
    v13 = 2048;
    v14 = a3;
    v15 = 2112;
    v16 = a2;
    v17 = 2112;
    v18 = v3;
    _os_log_fault_impl(&dword_223E7A000, v7, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: isFixingState || (_requestID == 0 || requestID <= _requestID) isFixingState = %d, _requestID = %llu, requestID = %llu, zone = %@%@", v10, 0x30u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_didSyncDownRequestID:maxApplyRank:caughtUpWithServer:syncDownDate:isFixingState:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_didSyncDownRequestID:maxApplyRank:caughtUpWithServer:syncDownDate:isFixingState:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_didSyncDownRequestID:maxApplyRank:caughtUpWithServer:syncDownDate:isFixingState:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_crossZoneMoveDocumentsToZone:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Not cross zone moving a zone to itself%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_cold_1(uint8_t *a1, void *a2)
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !document.needsReading || db.changes > 0%@", a1, 0xCu);
  }
}

void __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 error];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_15_0(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x277D85DE8];
}

void __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_cold_3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: db.changes == 0%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_cold_4()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: db.changes == 0%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_18();
  v0 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_19_0(v1) lastError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_15_0(v3, v4, v5, v6, v7);

  v8 = *MEMORY[0x277D85DE8];
}

void __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_18();
  v0 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_19_0(v1) lastError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_0();
  _os_log_error_impl(v3, v4, 0x90u, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __47__BRCClientZone__crossZoneMoveDocumentsToZone___block_invoke_cold_7()
{
  OUTLINED_FUNCTION_18();
  v0 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_19_0(v1) lastError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_0();
  _os_log_error_impl(v3, v4, 0x90u, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_allItemsDidUploadWithError:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self._hasAllItemsDidUploadHandlers%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_allItemsDidUploadWithError:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __37__BRCClientZone_didGCTombstoneRanks___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)didApplyTombstoneForRank:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_registerOperation:throttler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_registerOperation:throttler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] The server zone hasn't been created yet so failing the operation right away%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_registerOperation:throttler:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_registerListOperation:shareAcceptOperation:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v0 folderToList];
  v3 = [v2 debugItemIDString];
  [v1 nonDiscretionary];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_registerListOperation:shareAcceptOperation:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_registerFetchParentChainOperation:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_registerFetchParentChainOperation:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_registerLocateRecordOperation:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isSideSyncOperationBlockedWithName:isWaitingOnShareAccept:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isSideSyncOperationBlockedWithName:isWaitingOnShareAccept:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isSideSyncOperationBlockedWithName:isWaitingOnShareAccept:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isSideSyncOperationBlockedWithName:isWaitingOnShareAccept:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchDirectoryContentsIfNecessary:(void *)a1 isUserWaiting:rescheduleApplyScheduler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugItemIDString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchDirectoryContentsIfNecessary:isUserWaiting:rescheduleApplyScheduler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchDirectoryContentsIfNecessary:(void *)a1 isUserWaiting:rescheduleApplyScheduler:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugItemIDString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchDirectoryContentsIfNecessary:isUserWaiting:rescheduleApplyScheduler:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: no itemID passed to this list operation%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecursiveDirectoryContentsIfNecessary:isUserWaiting:rescheduleApply:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecursiveDirectoryContentsIfNecessary:(void *)a1 isUserWaiting:(uint64_t)a2 rescheduleApply:(uint64_t)a3 .cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_8(&dword_223E7A000, v6, v4, "[DEBUG] Forcing %@ to list all changes because we cancelled an old version%@", v5);
}

- (void)fetchRecursiveDirectoryContentsIfNecessary:(void *)a1 isUserWaiting:(uint64_t)a2 rescheduleApply:(uint64_t)a3 .cold.3(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_8(&dword_223E7A000, v6, v4, "[DEBUG] Starting to recursive list the contents of %@%@", v5);
}

- (void)fetchRecursiveDirectoryContentsIfNecessary:(void *)a1 isUserWaiting:rescheduleApply:.cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugItemIDString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecursiveDirectoryContentsIfNecessary:isUserWaiting:rescheduleApply:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: no itemID passed to this recursive list operation%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchParentChainIfNecessaryWithParentItemID:isUserWaiting:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Inserted parent chain for itemID because we already completed full sync%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchParentChainIfNecessaryWithParentItemID:isUserWaiting:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: no itemID passed to this parent chain%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_locateRecordIfNecessaryForRecordID:isUserWaiting:maxOperationBackoff:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Can't locate share alias record in a shared zone%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_locateRecordIfNecessaryForRecordID:isUserWaiting:maxOperationBackoff:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: no recordID passed to this locate operation%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecentAndFavoriteDocuments:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_17_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecentAndFavoriteDocuments:(uint64_t)a1 .cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_17_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecentAndFavoriteDocuments:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 216);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecentAndFavoriteDocuments:(uint64_t)a1 .cold.4(uint64_t a1)
{
  OUTLINED_FUNCTION_17_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecentAndFavoriteDocuments:(uint64_t)a1 .cold.5(uint64_t a1)
{
  OUTLINED_FUNCTION_17_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecentAndFavoriteDocuments:(uint64_t *)a1 .cold.6(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecentAndFavoriteDocuments:(uint64_t)a1 .cold.7(uint64_t a1)
{
  OUTLINED_FUNCTION_17_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecentAndFavoriteDocuments:(uint64_t)a1 .cold.8(uint64_t a1)
{
  OUTLINED_FUNCTION_17_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecentAndFavoriteDocuments:(uint64_t)a1 .cold.9(uint64_t a1)
{
  OUTLINED_FUNCTION_17_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__BRCClientZone_performBlock_whenItemWithRecordIDIsOnDisk___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__BRCClientZone_performBlock_whenItemWithRecordIDIsOnDisk___block_invoke_430_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __57__BRCClientZone_performBlock_whenItemWithIDIsDownloaded___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__BRCClientZone_performBlock_whenItemWithIDIsDownloaded___block_invoke_434_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __57__BRCClientZone_performBlock_whenItemWithIDIsDownloaded___block_invoke_434_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_shouldFailSyncDownWaitImmediately
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __68__BRCClientZone_performBlock_whenSyncDownCompletesLookingForItemID___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__BRCClientZone_performBlock_whenSyncDownCompletesLookingForItemID___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__BRCClientZone_performBlock_whenSyncDownCompletesLookingForItemID___block_invoke_2_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__BRCClientZone_performBlock_whenLocatingCompletesForItemWithRecordID___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Item in server items table. We should get at least that item parent id%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__BRCClientZone_performBlock_whenLocatingCompletesForItemWithRecordID___block_invoke_453_cold_1()
{
  OUTLINED_FUNCTION_18();
  v0 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_19_0(v1) debugItemIDString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __44__BRCClientZone_networkReachabilityChanged___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__BRCClientZone_networkReachabilityChanged___block_invoke_2_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_dumpRecursivePropertiesOfItemByRowID:context:depth:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: pos == ITEM_RECURSIVE_PROPERTIES_FIELDS_COUNT%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __64__BRCClientZone_FPFSAdditions__notifyClient_whenFaultingIsDone___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Queueing faults live barrier for %@%@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end