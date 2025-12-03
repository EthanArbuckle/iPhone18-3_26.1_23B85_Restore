@interface BRCServerZone
- (BOOL)_markItemDeadForRecordID:(id)d;
- (BOOL)_markShareIDDead:(id)dead;
- (BOOL)_populateParticipantsAndSendUserNotificationsIfNeededWithShare:(id)share;
- (BOOL)_saveDeletedRecordIDs:(id)ds;
- (BOOL)_saveEditedAliasRecord:(id)record zonesNeedingAllocRanks:(id)ranks error:(id *)error;
- (BOOL)_saveEditedContentRecords:(id)records zonesNeedingAllocRanks:(id)ranks;
- (BOOL)_saveEditedDirOrDocStructureRecord:(id)record error:(id *)error;
- (BOOL)_saveEditedDocumentContentRecord:(id)record error:(id *)error;
- (BOOL)_saveEditedFinderBookmarkRecord:(id)record error:(id *)error;
- (BOOL)_saveEditedRecord:(id)record zonesNeedingAllocRanks:(id)ranks error:(id *)error;
- (BOOL)_saveEditedShareRecord:(id)record error:(id *)error;
- (BOOL)_saveEditedShareRecords:(id)records deletedShareRecordIDs:(id)ds zonesNeedingAllocRanks:(id)ranks;
- (BOOL)_saveEditedStructureRecords:(id)records zonesNeedingAllocRanks:(id)ranks;
- (BOOL)_saveEditedSymlinkRecord:(id)record error:(id *)error;
- (BOOL)_saveItemID:(id)d stat:(id)stat serverMetrics:(id)metrics record:(id)record error:(id *)error;
- (BOOL)_saveItemID:(id)d stat:(id)stat serverMetrics:(id)metrics record:(id)record origName:(id)name base:(id)base no:(id)no ext:(id)self0;
- (BOOL)_saveItemID:(id)d version:(id)version record:(id)record contentBoundaryKey:(id)key iWorkSharingOptions:(unint64_t)options;
- (BOOL)_savePendingChangesDeletedRecordIDsIgnoringRecordIDs:(id)ds pendingChangeStream:(id)stream;
- (BOOL)_savePendingChangesEditedContentRecordsIgnoringRecordIDs:(id)ds zonesNeedingAllocRanks:(id)ranks pendingChangeStream:(id)stream;
- (BOOL)_savePendingChangesEditedStructureRecordsIgnoringRecordIDs:(id)ds zonesNeedingAllocRanks:(id)ranks pendingChangeStream:(id)stream;
- (BOOL)_savePendingChangesSharesIgnoringRecordIDs:(id)ds zonesNeedingAllocRanks:(id)ranks pendingChangeStream:(id)stream;
- (BOOL)_shouldSendNotification;
- (BOOL)_updateParticipantsTableForShare:(id)share;
- (BOOL)_verifyChildbasehashSaltKeysForItemID:(id)d saltInfo:(id)info record:(id)record;
- (BOOL)allocateRanksWhenCaughtUp:(BOOL)up;
- (BOOL)dumpStatusToContext:(id)context error:(id *)error;
- (BOOL)dumpTablesToContext:(id)context includeAllItems:(BOOL)items error:(id *)error;
- (BOOL)hasFetchedServerZoneState;
- (BOOL)isCloudDocsZone;
- (BOOL)isEqual:(id)equal;
- (BOOL)resetServerTruthAndDestroyZone:(BOOL)zone;
- (BOOL)saveQueryRecords:(id)records zonesNeedingAllocRanks:(id)ranks error:(id *)error;
- (BOOL)setStateBits:(unsigned int)bits;
- (BOOL)shouldRecreateServerZoneAfterError:(id)error;
- (BOOL)validateItemsLoggingToFile:(__sFILE *)file db:(id)db;
- (BOOL)validateStructureLoggingToFile:(__sFILE *)file db:(id)db;
- (BRCServerZone)initWithMangledID:(id)d dbRowID:(id)iD plist:(id)plist session:(id)session;
- (BRCSyncContext)metadataSyncContext;
- (BRMangledID)mangledID;
- (CKRecordZoneID)zoneID;
- (NSMutableDictionary)plist;
- (id)_userNotificationRequestApprovedMetadataWithShare:(id)share;
- (id)asPrivateZone;
- (id)asSharedZone;
- (id)descriptionWithContext:(id)context;
- (id)directDirectoryChildItemIDsOfParentEnumerator:(id)enumerator;
- (id)itemByItemID:(id)d db:(id)db;
- (id)itemsEnumeratorWithDB:(id)b;
- (id)jobsDescription;
- (id)matchingJobsWhereSQLClause;
- (unint64_t)didListDirectoryChangesWithResults:(id)results pendingFetchChanges:(id)changes;
- (unint64_t)didSyncDownRequestID:(unint64_t)d serverChangeToken:(id)token editedRecords:(id)records deletedRecordIDs:(id)ds deletedShareRecordIDs:(id)iDs allocRankZones:(id *)zones caughtUp:(BOOL)up pendingChanges:(id)self0;
- (unint64_t)hash;
- (unsigned)zoneCreationState;
- (void)_collectTombstoneForRank:(unint64_t)rank;
- (void)_recomputeMinLastUsedTime;
- (void)_removeRequestAccessNotificationsIfNeededWithShare:(id)share notificationIDsToKeep:(id)keep;
- (void)_reportCantSaveProblem:(id)problem record:(id)record;
- (void)_sendApprovedNotificationIfNeededWithShare:(id)share;
- (void)_userNotificationMetadataWithShare:(id)share requester:(id)requester completionHandler:(id)handler;
- (void)addForegroundClient:(id)client;
- (void)asPrivateZone;
- (void)asSharedZone;
- (void)checkIfFinishedFullSync;
- (void)clearStateBits:(unsigned int)bits;
- (void)collectTombstoneRanks:(id)ranks;
- (void)deactivateFromClientZone;
- (void)decrementFetchRecentsAndFavoritesRetriesLeft;
- (void)deleteAllContentsOnServerWithCompletionBlock:(id)block;
- (void)failedListingDirectoryChanges:(id)changes serverTruthCallback:(id)callback clientTruthCallback:(id)truthCallback folderItemID:(id)d;
- (void)forceMoveToCloudDocs;
- (void)handleMovedZoneNames:(id)names;
- (void)plist;
- (void)removeForegroundClient:(id)client;
- (void)resetFetchRecentsAndFavoritesRetriesLeft;
- (void)scheduleMoveToCloudDocs;
@end

@implementation BRCServerZone

- (void)_recomputeMinLastUsedTime
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  numberOfGreedyRecentlyUsedItems = [v3 numberOfGreedyRecentlyUsedItems];

  if (numberOfGreedyRecentlyUsedItems)
  {
    v5 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT item_lastusedtime FROM server_items ORDER BY item_lastusedtime DESC LIMIT 1 OFFSET %lld", numberOfGreedyRecentlyUsedItems];
    unsignedLongLongValue = [v5 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  serverState = [(BRCAccountSession *)self->_session serverState];
  minLastUsedTime = [serverState minLastUsedTime];

  if (minLastUsedTime != unsignedLongLongValue)
  {
    serverState2 = [(BRCAccountSession *)self->_session serverState];
    [serverState2 setMinLastUsedTime:unsignedLongLongValue];

    serverState3 = [(BRCAccountSession *)self->_session serverState];
    [serverState3 saveToDB:self->_db];
  }
}

- (BOOL)isCloudDocsZone
{
  clientZone = [(BRCServerZone *)self clientZone];
  isCloudDocsZone = [clientZone isCloudDocsZone];

  return isCloudDocsZone;
}

- (BRMangledID)mangledID
{
  v3 = objc_alloc(MEMORY[0x277CFAE60]);
  zoneName = [(BRCServerZone *)self zoneName];
  ownerName = [(BRCServerZone *)self ownerName];
  v6 = [v3 initWithZoneName:zoneName ownerName:ownerName];

  return v6;
}

- (void)checkIfFinishedFullSync
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] %@ has no more directory faults so it is now full sync%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (NSMutableDictionary)plist
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:6];
  changeState = [(BRCServerZone *)self changeState];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_state];
  [v3 setObject:v5 forKeyedSubscript:@"state"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(changeState, "clientRequestID")}];
  [v3 setObject:v6 forKeyedSubscript:@"clientRequestID"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(changeState, "lastSyncDownStatus")}];
  [v3 setObject:v7 forKeyedSubscript:@"lastSyncStatus"];

  lastSyncDownDate = [changeState lastSyncDownDate];

  if (lastSyncDownDate)
  {
    lastSyncDownDate2 = [changeState lastSyncDownDate];
    [v3 setObject:lastSyncDownDate2 forKeyedSubscript:@"lastSyncDownDate"];
  }

  changeToken = [changeState changeToken];

  if (changeToken)
  {
    changeToken2 = [changeState changeToken];
    [v3 setObject:changeToken2 forKeyedSubscript:@"changeToken"];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fetchRecentsAndFavoritesRetriesLeft];
  [v3 setObject:v12 forKeyedSubscript:@"fetchRecentsAndFavoritesRetriesLeft"];

  if ([(BRCServerZone *)self isSharedZone])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = MEMORY[0x277CCABB0];
      v14 = changeState;
      v15 = [v13 numberWithBool:{objc_msgSend(v14, "everCaughtUp")}];
      [v3 setObject:v15 forKeyedSubscript:@"everCaughtUp"];

      v16 = MEMORY[0x277CCABB0];
      newlyCreatedDuringInitialSync = [v14 newlyCreatedDuringInitialSync];

      v18 = [v16 numberWithBool:newlyCreatedDuringInitialSync];
      [v3 setObject:v18 forKeyedSubscript:@"newlyCreatedDuringInitialSync"];
    }

    else
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [BRCServerZone plist];
      }
    }
  }

  return v3;
}

- (BRCSyncContext)metadataSyncContext
{
  metadataSyncContext = self->_metadataSyncContext;
  if (!metadataSyncContext)
  {
    syncContextProvider = [(BRCAccountSession *)self->_session syncContextProvider];
    mangledID = [(BRCServerZone *)self mangledID];
    v6 = [syncContextProvider metadataSyncContextForMangledID:mangledID];
    v7 = self->_metadataSyncContext;
    self->_metadataSyncContext = v6;

    metadataSyncContext = self->_metadataSyncContext;
  }

  return metadataSyncContext;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_zoneName hash];
  ownerName = [(BRCServerZone *)self ownerName];
  v5 = [ownerName hash];

  return v5 ^ v3;
}

- (unsigned)zoneCreationState
{
  if (![(BRCClientZone *)self->_clientZone hasCompletedInitialSyncDownOnce])
  {
    return 0;
  }

  changeState = [(BRCServerZone *)self changeState];
  changeToken = [changeState changeToken];
  if (changeToken)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (CKRecordZoneID)zoneID
{
  v3 = objc_alloc(MEMORY[0x277CBC5F8]);
  zoneName = self->_zoneName;
  ownerName = [(BRCServerZone *)self ownerName];
  v6 = [v3 initWithZoneName:zoneName ownerName:ownerName];

  return v6;
}

- (void)scheduleMoveToCloudDocs
{
  session = [(BRCServerZone *)self session];
  resetQueue = [session resetQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__BRCServerZone_BRCZoneMigration__scheduleMoveToCloudDocs__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(resetQueue, block);
}

void __58__BRCServerZone_BRCZoneMigration__scheduleMoveToCloudDocs__block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v2 = [*(a1 + 32) db];
  v3 = [v2 serialQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__BRCServerZone_BRCZoneMigration__scheduleMoveToCloudDocs__block_invoke_2;
  v4[3] = &unk_278502208;
  v4[4] = *(a1 + 32);
  v4[5] = &v5;
  dispatch_sync(v3, v4);

  if (*(v6 + 24) == 1)
  {
    [*(a1 + 32) forceMoveToCloudDocs];
  }

  _Block_object_dispose(&v5, 8);
}

void __58__BRCServerZone_BRCZoneMigration__scheduleMoveToCloudDocs__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isCloudDocsZone])
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __58__BRCServerZone_BRCZoneMigration__scheduleMoveToCloudDocs__block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    goto LABEL_9;
  }

  if (([*(a1 + 32) state] & 2) != 0)
  {
LABEL_9:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    return;
  }

  [*(a1 + 32) setStateBits:2];
  [*(a1 + 32) resetServerTruth];
  v10 = [*(a1 + 32) db];
  [v10 flush];
}

- (id)asPrivateZone
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRCServerZone asPrivateZone];
  }

  return 0;
}

- (id)asSharedZone
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRCServerZone asSharedZone];
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(NSString *)self->_zoneName isEqualToString:v5->_zoneName])
      {
        ownerName = [(BRCServerZone *)self ownerName];
        ownerName2 = [(BRCServerZone *)v5 ownerName];
        v8 = [ownerName isEqualToString:ownerName2];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)descriptionWithContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    changeState = [(BRCServerZone *)self changeState];
    v6 = [changeState descriptionWithContext:contextCopy];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    changeState = [(BRCServerZone *)self mangledID];
    dbRowID = self->_dbRowID;
    changeState2 = [(BRCServerZone *)self changeState];
    v10 = [changeState2 descriptionWithContext:0];
    v6 = [v7 stringWithFormat:@"<%@[%@] %@>", changeState, dbRowID, v10];
  }

  return v6;
}

- (BRCServerZone)initWithMangledID:(id)d dbRowID:(id)iD plist:(id)plist session:(id)session
{
  dCopy = d;
  iDCopy = iD;
  plistCopy = plist;
  sessionCopy = session;
  v40.receiver = self;
  v40.super_class = BRCServerZone;
  v14 = [(BRCServerZone *)&v40 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_session, session);
    serverDB = [sessionCopy serverDB];
    db = v15->_db;
    v15->_db = serverDB;

    serverReadWriteDatabaseFacade = [sessionCopy serverReadWriteDatabaseFacade];
    dbFacade = v15->_dbFacade;
    v15->_dbFacade = serverReadWriteDatabaseFacade;

    objc_storeStrong(&v15->_dbRowID, iD);
    appLibraryOrZoneName = [dCopy appLibraryOrZoneName];
    zoneName = v15->_zoneName;
    v15->_zoneName = appLibraryOrZoneName;

    isSharedZone = [(BRCServerZone *)v15 isSharedZone];
    v23 = off_2784FDCB8;
    if (!isSharedZone)
    {
      v23 = off_2784FDC78;
    }

    v24 = objc_alloc_init(*v23);
    changeState = v15->_changeState;
    v15->_changeState = v24;

    v26 = objc_opt_new();
    failedListDirectoryOperations = v15->_failedListDirectoryOperations;
    v15->_failedListDirectoryOperations = v26;

    v28 = [BRCUserDefaults defaultsForMangledID:0];
    v15->_fetchRecentsAndFavoritesRetriesLeft = [v28 fetchRecentsAndFavoritesMaxRetries];

    if (plistCopy)
    {
      v29 = [plistCopy objectForKeyedSubscript:@"state"];
      v15->_state = [v29 unsignedIntValue];

      v30 = [plistCopy objectForKeyedSubscript:@"lastSyncDownDate"];
      [(BRCServerChangeState *)v15->_changeState setLastSyncDownDate:v30];

      v31 = [plistCopy objectForKeyedSubscript:@"lastSyncStatus"];
      -[BRCServerChangeState setLastSyncDownStatus:](v15->_changeState, "setLastSyncDownStatus:", [v31 unsignedIntegerValue]);

      v32 = [plistCopy objectForKeyedSubscript:@"changeToken"];
      [(BRCServerChangeState *)v15->_changeState setChangeToken:v32];

      v33 = [plistCopy objectForKeyedSubscript:@"clientRequestID"];
      -[BRCServerChangeState setClientRequestID:](v15->_changeState, "setClientRequestID:", [v33 unsignedLongLongValue]);

      if ([(BRCServerZone *)v15 isSharedZone])
      {
        v34 = v15->_changeState;
        v35 = [plistCopy objectForKeyedSubscript:@"everCaughtUp"];
        -[BRCServerChangeState setEverCaughtUp:](v34, "setEverCaughtUp:", [v35 BOOLValue]);

        v36 = [plistCopy objectForKeyedSubscript:@"newlyCreatedDuringInitialSync"];
        -[BRCServerChangeState setNewlyCreatedDuringInitialSync:](v34, "setNewlyCreatedDuringInitialSync:", [v36 BOOLValue]);
      }

      v37 = [plistCopy objectForKey:@"fetchRecentsAndFavoritesRetriesLeft"];

      if (v37)
      {
        v38 = [plistCopy objectForKeyedSubscript:@"fetchRecentsAndFavoritesRetriesLeft"];
        v15->_fetchRecentsAndFavoritesRetriesLeft = [v38 unsignedIntValue];
      }
    }
  }

  return v15;
}

- (void)deactivateFromClientZone
{
  serialQueue = [(BRCPQLConnection *)self->_db serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__BRCServerZone_deactivateFromClientZone__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

void __41__BRCServerZone_deactivateFromClientZone__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
}

- (BOOL)_verifyChildbasehashSaltKeysForItemID:(id)d saltInfo:(id)info record:(id)record
{
  dCopy = d;
  infoCopy = info;
  recordCopy = record;
  if (![(BRCClientZone *)self->_clientZone enhancedDrivePrivacyEnabled])
  {
    goto LABEL_4;
  }

  childBasehashSalt = [infoCopy childBasehashSalt];
  if (!childBasehashSalt)
  {
    goto LABEL_4;
  }

  v12 = childBasehashSalt;
  childBasehashSalt2 = [infoCopy childBasehashSalt];
  brc_truncatedSHA256 = [childBasehashSalt2 brc_truncatedSHA256];
  childBasehashSaltValidation = [infoCopy childBasehashSaltValidation];
  v16 = [brc_truncatedSHA256 isEqualToData:childBasehashSaltValidation];

  if ((v16 & 1) == 0)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [BRCServerZone _verifyChildbasehashSaltKeysForItemID:saltInfo:record:];
    }

    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    mangledID = [(BRCServerZone *)self mangledID];
    v24 = [AppTelemetryTimeSeriesEvent newEDPKeysMismatchForRecordID:recordName mangledID:mangledID];

    session = [(BRCServerZone *)self session];
    analyticsReporter = [session analyticsReporter];
    [analyticsReporter postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v24];

    v17 = 0;
  }

  else
  {
LABEL_4:
    v17 = 1;
  }

  return v17;
}

- (BOOL)_saveItemID:(id)d stat:(id)stat serverMetrics:(id)metrics record:(id)record origName:(id)name base:(id)base no:(id)no ext:(id)self0
{
  v191 = *MEMORY[0x277D85DE8];
  dCopy = d;
  statCopy = stat;
  metricsCopy = metrics;
  recordCopy = record;
  nameCopy = name;
  baseCopy = base;
  noCopy = no;
  extCopy = ext;
  dbFacade = self->_dbFacade;
  v21 = recordCopy;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  ownerName = [zoneID ownerName];
  v25 = [(BRCDatabaseFacade *)dbFacade userKeyForOwnerName:ownerName];

  v172 = v25;
  v176 = dCopy;
  if (v25)
  {
    v171 = metricsCopy;
    v166 = noCopy;
    v167 = v21;
    if ([(BRCServerZone *)self isSharedZone])
    {
LABEL_35:
      v180 = 0;
      if (-[BRCServerZone isSharedZone](self, "isSharedZone") && ([statCopy parentID], v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v62, "isSharedZoneRoot"), v62, (v63 & 1) == 0))
      {
        db = self->_db;
        dbRowID = [(BRCServerZone *)self dbRowID];
        v67 = [(BRCPQLConnection *)db fetch:@"SELECT item_favoriterank, item_lastusedtime, item_finder_tags, item_side_car_ckinfo FROM server_items WHERE item_id = %@ AND zone_rowid = %@", v176, dbRowID];

        next = [v67 next];
        if (next)
        {
          [statCopy setFavoriteRank:{objc_msgSend(v67, "longLongAtIndex:", 0)}];
          [statCopy setLastUsedTime:{objc_msgSend(v67, "longLongAtIndex:", 1)}];
          v69 = [v67 dataAtIndex:2];
          [statCopy setFinderTags:v69];

          v170 = [v67 objectOfClass:objc_opt_class() atIndex:3];
          v70 = v67;
        }

        else
        {
          asSharedZone = [(BRCServerZone *)self asSharedZone];
          v72 = [v176 sideCarRecordNameWithZone:asSharedZone];

          v70 = [(BRCPQLConnection *)self->_db fetch:@"SELECT item_favoriterank, item_lastusedtime, item_finder_tags, item_side_car_ckinfo FROM side_car_lookahead WHERE record_name = %@", v72];
          if ([v70 next])
          {
            [statCopy setFavoriteRank:{objc_msgSend(v70, "longLongAtIndex:", 0)}];
            [statCopy setLastUsedTime:{objc_msgSend(v70, "longLongAtIndex:", 1)}];
            v73 = [v70 dataAtIndex:2];
            [statCopy setFinderTags:v73];

            v170 = [v70 objectOfClass:objc_opt_class() atIndex:3];
            [(BRCPQLConnection *)self->_db execute:@"DELETE FROM side_car_lookahead WHERE record_name = %@", v72];
          }

          else
          {
            v170 = 0;
          }
        }

        v64 = next ^ 1;
      }

      else
      {
        v170 = 0;
        v64 = 0;
      }

      type = [statCopy type];
      v75 = -1;
      if (type <= 0xA && ((1 << type) & 0x611) != 0)
      {
        [v21 deserializeFolderSharingOptions:&v180];
        if (([(BRCServerZone *)self state]& 4) != 0)
        {
          [statCopy setType:0];
        }

        else
        {
          v76 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT item_type FROM server_items WHERE item_id = %@ AND zone_rowid = %@", v176, self->_dbRowID];
          v77 = v76;
          if (v76)
          {
            [BRCServerZone _saveItemID:v76 stat:statCopy serverMetrics:v64 record:buf origName:? base:? no:? ext:?];
            v64 = buf[0];
          }

          else
          {
            mangledID = [(BRCServerZone *)self mangledID];
            v79 = [BRCUserDefaults defaultsForMangledID:mangledID];
            forceDeltaInitialSync = [v79 forceDeltaInitialSync];

            if (forceDeltaInitialSync)
            {
              v81 = 0;
            }

            else
            {
              v81 = 9;
            }

            [statCopy setType:v81];
            v64 = 1;
          }
        }

        v75 = -5;
      }

      parent = [v21 parent];

      if (parent)
      {
        type2 = [statCopy type];
        v84 = 2;
        if (type2 <= 0xA && ((1 << type2) & 0x611) != 0)
        {
          if (([v21 hasChainPCS] & 1) == 0)
          {
            v85 = brc_bread_crumbs();
            v86 = brc_default_log();
            if (os_log_type_enabled(v86, 0x90u))
            {
              [BRCServerZone _saveItemID:stat:serverMetrics:record:origName:base:no:ext:];
            }

            clientTruthWorkloop = [(BRCAccountSession *)self->_session clientTruthWorkloop];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __76__BRCServerZone__saveItemID_stat_serverMetrics_record_origName_base_no_ext___block_invoke;
            block[3] = &unk_2784FF478;
            block[4] = self;
            v179 = v176;
            dispatch_async(clientTruthWorkloop, block);
          }

          v84 = 2;
        }
      }

      else if ([v21 hasChainPCS])
      {
        v84 = 4;
      }

      else
      {
        v84 = 1;
      }

      v168 = v84;
      v88 = [[BRCBasehashSaltInfo alloc] initWithRecord:v21];
      if (![(BRCServerZone *)self _verifyChildbasehashSaltKeysForItemID:v176 saltInfo:v88 record:v21])
      {
        brc_generateBogusKey = [MEMORY[0x277CBEA90] brc_generateBogusKey];
        [(BRCBasehashSaltInfo *)v88 setChildBasehashSalt:brc_generateBogusKey];
      }

      if ((v64 & 1) == 0)
      {
        v151 = v180;
        v153 = self->_db;
        ckInfo = [statCopy ckInfo];
        state = [statCopy state];
        type3 = [statCopy type];
        mode = [statCopy mode];
        birthtime = [statCopy birthtime];
        lastUsedTime = [statCopy lastUsedTime];
        favoriteRank = [statCopy favoriteRank];
        parentID = [statCopy parentID];
        v97 = statCopy[7];
        if (!v97)
        {
          v97 = &stru_2837504F0;
        }

        v147 = v97;
        isHiddenExt = [statCopy isHiddenExt];
        finderTags = [statCopy finderTags];
        xattrSignature = [statCopy xattrSignature];
        trashPutBackPath = [statCopy trashPutBackPath];
        trashPutBackParentID = [statCopy trashPutBackParentID];
        aliasTarget = [statCopy aliasTarget];
        creatorRowID = [statCopy creatorRowID];
        quotaUsed = [v171 quotaUsed];
        recursiveChildCount = [v171 recursiveChildCount];
        sharedByMeRecursiveCount = [v171 sharedByMeRecursiveCount];
        sharedAliasRecursiveCount = [v171 sharedAliasRecursiveCount];
        childCount = [v171 childCount];
        childBasehashSalt = [(BRCBasehashSaltInfo *)v88 childBasehashSalt];
        saltingState = [(BRCBasehashSaltInfo *)v88 saltingState];
        basehashSaltValidation = [(BRCBasehashSaltInfo *)v88 basehashSaltValidation];
        v154 = [(BRCPQLConnection *)v153 execute:@"UPDATE server_items SET   item_rank = NULL, item_depth = 0, item_origname = %@, pcs_state = %d, item_sharing_options = (%lu | (item_sharing_options & %lu)), item_side_car_ckinfo = %@, item_stat_ckinfo = %@, item_state = %d, item_type = %d, item_mode = %d, item_birthtime = %lld, item_lastusedtime = %lld, item_favoriterank = %lld, item_parent_id = %@, item_filename = %@, item_hidden_ext = %d, item_finder_tags = %@, item_xattr_signature = %@, item_trash_put_back_path = %@, item_trash_put_back_parent_id = %@, item_alias_target = %@, item_creator = %@, quota_used = %@, recursive_child_count = %@, shared_children_count = %@, shared_alias_count = %@, child_count = %@, child_basehash_salt = %@, salting_state = %u, basehash_salt_validation_key = %@ WHERE item_id = %@ AND zone_rowid = %@", nameCopy, v168, v151, v75, v170, ckInfo, state, type3, mode, birthtime, lastUsedTime, favoriteRank, parentID, v147, isHiddenExt, finderTags, xattrSignature, trashPutBackPath, trashPutBackParentID, aliasTarget, creatorRowID, quotaUsed, recursiveChildCount, sharedByMeRecursiveCount, sharedAliasRecursiveCount, childCount, childBasehashSalt, saltingState, basehashSaltValidation, v176, self->_dbRowID];

        if (!v154)
        {
          v43 = 0;
          metricsCopy = v171;
          noCopy = v166;
          v21 = v167;
          goto LABEL_103;
        }

        if ([(BRCPQLConnection *)self->_db changes])
        {
LABEL_93:
          if ([(BRCPQLConnection *)self->_db changes]!= 1)
          {
            [BRCServerZone _saveItemID:stat:serverMetrics:record:origName:base:no:ext:];
          }

          type4 = [statCopy type];
          metricsCopy = v171;
          noCopy = v166;
          v21 = v167;
          if (type4 <= 0xA && ((1 << type4) & 0x611) != 0 && ([v167 modificationDate], v117 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v117, "timeIntervalSince1970"), v119 = v118, v117, !-[BRCPQLConnection execute:](self->_db, "execute:", @"UPDATE server_items SET  version_mtime = %lld  WHERE item_id = %@ AND zone_rowid = %@", v119, v176, self->_dbRowID)))
          {
            v43 = 0;
          }

          else
          {
            if ([(BRCPQLConnection *)self->_db changes]!= 1)
            {
              [BRCServerZone _saveItemID:stat:serverMetrics:record:origName:base:no:ext:];
            }

            v43 = 1;
          }

          goto LABEL_103;
        }
      }

      if (([v176 isDocumentsFolder] & 1) == 0 && -[NSArray containsObject:](self->_directoriesCreatedLastSyncUp, "containsObject:", v176) && objc_msgSend(statCopy, "type") == 9)
      {
        v90 = brc_bread_crumbs();
        v91 = brc_default_log();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          [v176 debugItemIDString];
          v93 = v92 = v88;
          *buf = 138412546;
          v182 = v93;
          v183 = 2112;
          v184 = v90;
          _os_log_impl(&dword_223E7A000, v91, OS_LOG_TYPE_DEFAULT, "[NOTICE] Promoting %@ to be a normal directory because it was created from our own sync up%@", buf, 0x16u);

          v88 = v92;
        }

        [statCopy setType:0];
      }

      if ([statCopy type] == 9)
      {
        childCount2 = [v171 childCount];
        if (childCount2)
        {
          v95 = childCount2;
          childCount3 = [v171 childCount];
          if ([childCount3 unsignedLongLongValue])
          {
          }

          else
          {
            v156 = v88;
            mangledID2 = [(BRCServerZone *)self mangledID];
            v104 = [BRCUserDefaults defaultsForMangledID:mangledID2];
            promoteEmptyDirectoryFromDirFault = [v104 promoteEmptyDirectoryFromDirFault];

            v88 = v156;
            if (promoteEmptyDirectoryFromDirFault)
            {
              v106 = brc_bread_crumbs();
              v107 = brc_default_log();
              if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
              {
                debugItemIDString = [v176 debugItemIDString];
                *buf = 138412546;
                v182 = debugItemIDString;
                v183 = 2112;
                v184 = v106;
                _os_log_impl(&dword_223E7A000, v107, OS_LOG_TYPE_DEFAULT, "[NOTICE] Promoting %@ to be a normal directory because it has no children%@", buf, 0x16u);

                v88 = v156;
              }

              [statCopy setType:0];
            }
          }
        }
      }

      v157 = v180;
      v159 = self->_db;
      ckInfo2 = [statCopy ckInfo];
      state2 = [statCopy state];
      type5 = [statCopy type];
      mode2 = [statCopy mode];
      birthtime2 = [statCopy birthtime];
      lastUsedTime2 = [statCopy lastUsedTime];
      favoriteRank2 = [statCopy favoriteRank];
      parentID2 = [statCopy parentID];
      v109 = statCopy[7];
      if (!v109)
      {
        v109 = &stru_2837504F0;
      }

      v134 = v109;
      isHiddenExt2 = [statCopy isHiddenExt];
      finderTags2 = [statCopy finderTags];
      xattrSignature2 = [statCopy xattrSignature];
      trashPutBackPath2 = [statCopy trashPutBackPath];
      trashPutBackParentID2 = [statCopy trashPutBackParentID];
      aliasTarget2 = [statCopy aliasTarget];
      creatorRowID2 = [statCopy creatorRowID];
      dbRowID = self->_dbRowID;
      quotaUsed2 = [v171 quotaUsed];
      recursiveChildCount2 = [v171 recursiveChildCount];
      sharedByMeRecursiveCount2 = [v171 sharedByMeRecursiveCount];
      sharedAliasRecursiveCount2 = [v171 sharedAliasRecursiveCount];
      childCount4 = [v171 childCount];
      childBasehashSalt2 = [(BRCBasehashSaltInfo *)v88 childBasehashSalt];
      saltingState2 = [(BRCBasehashSaltInfo *)v88 saltingState];
      basehashSaltValidation2 = [(BRCBasehashSaltInfo *)v88 basehashSaltValidation];
      v115 = [(BRCPQLConnection *)v159 execute:@"INSERT INTO server_items(item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_rank, item_origname, pcs_state, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, zone_rowid, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count, child_basehash_salt, salting_state, basehash_salt_validation_key) VALUES(%@, %@, %ld, %@, NULL, %@, %d, %@, %d, %d, %d, %lld, %lld, %lld, %@, %@, %d, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %u, %@)", v176, v172, v157, v170, nameCopy, v168, ckInfo2, state2, type5, mode2, birthtime2, lastUsedTime2, favoriteRank2, parentID2, v134, isHiddenExt2, finderTags2, xattrSignature2, trashPutBackPath2, trashPutBackParentID2, aliasTarget2, creatorRowID2, dbRowID, quotaUsed2, recursiveChildCount2, sharedByMeRecursiveCount2, sharedAliasRecursiveCount2, childCount4, childBasehashSalt2, saltingState2, basehashSaltValidation2];

      if (v115)
      {
        goto LABEL_93;
      }

      v43 = 0;
      metricsCopy = v171;
      noCopy = v166;
      v21 = v167;
LABEL_103:

      goto LABEL_104;
    }

    v26 = self->_db;
    parentID3 = [statCopy parentID];
    logicalName = [statCopy logicalName];
    v29 = [(PQLConnection *)v26 itemIDWithSQL:@"SELECT item_id FROM server_items  WHERE item_id != %@ AND item_parent_id = %@ AND item_filename = %@ AND +zone_rowid = %@", dCopy, parentID3, logicalName, self->_dbRowID];

    if ([v29 isDocumentsFolder] & 1) != 0 || (v30 = objc_msgSend(dCopy, "isDocumentsFolder"), !v29) || (v30)
    {
LABEL_34:

      goto LABEL_35;
    }

    v31 = self->_db;
    parentID4 = [statCopy parentID];
    v33 = [(BRCPQLConnection *)v31 fetch:@"SELECT item_origname, item_filename FROM server_items  WHERE item_id = %@ AND item_parent_id = %@ AND +zone_rowid = %@", dCopy, parentID4, self->_dbRowID];

    if ([v33 next])
    {
      v34 = [v33 stringAtIndex:0];
      logicalName2 = [statCopy logicalName];
      v36 = [v34 isEqualToString:logicalName2];

      if (v36)
      {
        v37 = brc_bread_crumbs();
        v38 = brc_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v182 = dCopy;
          v183 = 2112;
          v184 = v29;
          v185 = 2112;
          v186 = v37;
          _os_log_debug_impl(&dword_223E7A000, v38, OS_LOG_TYPE_DEBUG, "[DEBUG] Keeping bounce of %@ even though it clashes with %@%@", buf, 0x20u);
        }

        v39 = [v33 stringAtIndex:1];
        [statCopy setLogicalName:v39];
        v40 = nameCopy;
        nameCopy = v34;
        goto LABEL_32;
      }
    }

    integerValue = [noCopy integerValue];
    if (integerValue <= 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = integerValue;
    }

    v49 = v48 + 1;
    if (v48 == -1)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v50 = MEMORY[0x277CCACA8];
      v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v49];
      stringValue = [v51 stringValue];
      v39 = [v50 br_representableHFSFileNameWithBase:baseCopy suffix:stringValue extension:extCopy makeDotFile:0];

      if (![(BRCPQLConnection *)self->_db execute:@"UPDATE OR IGNORE server_items SET  item_rank = NULL, item_depth = 0, item_filename = %@, item_origname = IFNULL(item_origname, item_filename) WHERE zone_rowid = %@ AND item_id = %@", v39, self->_dbRowID, v29])
      {
        v53 = brc_bread_crumbs();
        v54 = brc_default_log();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
        {
          lastError = [(BRCPQLConnection *)self->_db lastError];
          localizedDescription = [lastError localizedDescription];
          *buf = 138412546;
          v182 = localizedDescription;
          v183 = 2112;
          v184 = v53;
          _os_log_fault_impl(&dword_223E7A000, v54, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: got a SQL Error: %@%@", buf, 0x16u);
        }
      }

      if ([(BRCPQLConnection *)self->_db changes])
      {
        break;
      }

      v55 = brc_bread_crumbs();
      v56 = brc_default_log();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v182 = v29;
        v183 = 2112;
        v184 = v39;
        v185 = 2112;
        v186 = v55;
        _os_log_debug_impl(&dword_223E7A000, v56, OS_LOG_TYPE_DEBUG, "[DEBUG] Not bouncing %@ to %@ because that's not a unique filename%@", buf, 0x20u);
      }

      if (__CFADD__(v49++, 1))
      {
        goto LABEL_33;
      }
    }

    v40 = brc_bread_crumbs();
    v60 = brc_default_log();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      logicalName3 = [statCopy logicalName];
      *buf = 138413314;
      v182 = v29;
      v183 = 2112;
      v184 = logicalName3;
      v185 = 2112;
      v186 = v39;
      v187 = 2112;
      v188 = v176;
      v189 = 2112;
      v190 = v40;
      _os_log_impl(&dword_223E7A000, v60, OS_LOG_TYPE_DEFAULT, "[WARNING] Bounced itemID %@ from %@ to %@ because it clashes with %@%@", buf, 0x34u);
    }

LABEL_32:
LABEL_33:

    goto LABEL_34;
  }

  v41 = brc_bread_crumbs();
  v42 = brc_default_log();
  if (os_log_type_enabled(v42, 0x90u))
  {
    recordID2 = [v21 recordID];
    zoneID2 = [recordID2 zoneID];
    ownerName2 = [zoneID2 ownerName];
    *buf = 138412802;
    v182 = dCopy;
    v183 = 2112;
    v184 = ownerName2;
    v185 = 2112;
    v186 = v41;
    _os_log_error_impl(&dword_223E7A000, v42, 0x90u, "[ERROR] can't save %@: missing ownerKey for ownerName %@%@", buf, 0x20u);
  }

  v43 = 0;
LABEL_104:

  v120 = *MEMORY[0x277D85DE8];
  return v43;
}

void __76__BRCServerZone__saveItemID_stat_serverMetrics_record_origName_base_no_ext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mangledID];
  v3 = [*(a1 + 32) clientZone];
  v4 = [v3 enhancedDrivePrivacyEnabled];
  v5 = [*(a1 + 40) itemIDString];
  v7 = [AppTelemetryTimeSeriesEvent newChainedDirectoryMissingChainPCSEventWithZoneMangledID:v2 enhancedDrivePrivacyEnabled:v4 itemIDString:v5];

  v6 = [*(*(a1 + 32) + 16) analyticsReporter];
  [v6 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v7];
}

- (BOOL)_saveItemID:(id)d stat:(id)stat serverMetrics:(id)metrics record:(id)record error:(id *)error
{
  v98 = *MEMORY[0x277D85DE8];
  dCopy = d;
  statCopy = stat;
  metricsCopy = metrics;
  recordCopy = record;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  logicalName = [statCopy logicalName];
  br_nameIsRepresentableOnHFS = [logicalName br_nameIsRepresentableOnHFS];

  v17 = 0;
  logicalName2 = 0;
  if ((br_nameIsRepresentableOnHFS & 1) == 0)
  {
    v84 = 0;
    v19 = [recordCopy deserializeFilename:0 basename:&v87 bounceno:&v85 extension:&v86 userInfo:0 error:&v84];
    v17 = v84;
    if ((v19 & 1) == 0)
    {
      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v89 = v17;
        v90 = 2112;
        v91 = recordCopy;
        v92 = 2112;
        errorCopy4 = v41;
        _os_log_fault_impl(&dword_223E7A000, v42, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't deserialize filename: %@ of %@%@", buf, 0x20u);
      }

      if (error)
      {
        v43 = v17;
        logicalName2 = 0;
        errorCopy = error;
        LOBYTE(error) = 0;
        *errorCopy = v17;
      }

      else
      {
        logicalName2 = 0;
      }

      goto LABEL_57;
    }

    errorCopy2 = error;
    v20 = metricsCopy;
    logicalName2 = [statCopy logicalName];
    v21 = MEMORY[0x277CCACA8];
    v22 = v87;
    stringValue = [v85 stringValue];
    v24 = [v21 br_representableHFSFileNameWithBase:v22 suffix:stringValue extension:v86 makeDotFile:0];
    [statCopy setLogicalName:v24];

    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      logicalName3 = [statCopy logicalName];
      lastModifiedUserRecordID = [recordCopy lastModifiedUserRecordID];
      *buf = 138413314;
      v89 = logicalName3;
      v90 = 2112;
      v91 = logicalName2;
      v92 = 2112;
      errorCopy4 = dCopy;
      v94 = 2112;
      v95 = lastModifiedUserRecordID;
      v96 = 2112;
      v97 = v25;
      _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEFAULT, "[WARNING] changing filename to %@ because %@ is unrepresentable (item ID: %@, last editor: %@)%@", buf, 0x34u);
    }

    metricsCopy = v20;
    error = errorCopy2;
  }

  logicalName4 = [statCopy logicalName];
  br_isSideFaultName = [logicalName4 br_isSideFaultName];

  logicalName5 = [statCopy logicalName];
  v32 = [logicalName5 br_isExcludedWithMaximumDepth:1];

  if ((br_isSideFaultName & 1) != 0 || v32)
  {
    if (!logicalName2)
    {
      logicalName2 = [statCopy logicalName];
    }

    br_emptyFilenameAlternativeName = [MEMORY[0x277CCACA8] br_emptyFilenameAlternativeName];
    v35 = v87;
    v87 = br_emptyFilenameAlternativeName;

    v36 = v85;
    v85 = 0;

    logicalName6 = [statCopy logicalName];
    br_pathExtension = [logicalName6 br_pathExtension];
    v39 = v86;
    v86 = br_pathExtension;

    v81 = dCopy;
    if (v86)
    {
      v40 = [v87 stringByAppendingPathExtension:?];
      [statCopy setLogicalName:v40];
    }

    else
    {
      [statCopy setLogicalName:v87];
    }

    v45 = metricsCopy;
    logicalName7 = [statCopy logicalName];
    if ([logicalName7 br_isSideFaultName])
    {
    }

    else
    {
      logicalName8 = [statCopy logicalName];
      v48 = [logicalName8 br_isExcludedWithMaximumDepth:1];

      if (!v48)
      {
        goto LABEL_28;
      }
    }

    if ([statCopy type] == 1 && (objc_msgSend(logicalName2, "br_isPackageRoot") & 1) != 0)
    {
      v49 = @"pkg";
    }

    else
    {
      v49 = 0;
    }

    v50 = v86;
    v86 = v49;

    if (v86)
    {
      v51 = [v87 stringByAppendingPathExtension:?];
      [statCopy setLogicalName:v51];
    }

    else
    {
      [statCopy setLogicalName:v87];
    }

LABEL_28:
    v52 = brc_bread_crumbs();
    v53 = brc_default_log();
    if (os_log_type_enabled(v53, 0x90u))
    {
      logicalName9 = [statCopy logicalName];
      v77 = "an excluded";
      *buf = 138413058;
      v89 = logicalName9;
      v90 = 2112;
      if (br_isSideFaultName)
      {
        v77 = "a side fault";
      }

      v91 = logicalName2;
      v92 = 2080;
      errorCopy4 = v77;
      v94 = 2112;
      v95 = v52;
      _os_log_error_impl(&dword_223E7A000, v53, 0x90u, "[ERROR] changing filename to %@ because %@ is %s name%@", buf, 0x2Au);
    }

    logicalName10 = [statCopy logicalName];
    if ([logicalName10 br_isSideFaultName])
    {

      metricsCopy = v45;
      selfCopy5 = self;
    }

    else
    {
      logicalName11 = [statCopy logicalName];
      v56 = [logicalName11 br_isExcludedWithMaximumDepth:1];

      metricsCopy = v45;
      selfCopy5 = self;
      if (!v56)
      {
        dCopy = v81;
        goto LABEL_35;
      }
    }

    v57 = brc_bread_crumbs();
    v58 = brc_default_log();
    dCopy = v81;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      [BRCServerZone _saveItemID:stat:serverMetrics:record:error:];
    }

    goto LABEL_35;
  }

  selfCopy5 = self;
LABEL_35:
  if (v87)
  {
    goto LABEL_38;
  }

  v83 = v17;
  v59 = [recordCopy deserializeFilename:0 basename:&v87 bounceno:&v85 extension:&v86 userInfo:0 error:&v83];
  v60 = v83;

  if (v59)
  {
    v17 = v60;
    selfCopy5 = self;
LABEL_38:
    if ([(BRCServerZone *)selfCopy5 _saveItemID:dCopy stat:statCopy serverMetrics:metricsCopy record:recordCopy origName:logicalName2 base:v85 no:v86 ext:?])
    {
      if ([(BRCPQLConnection *)selfCopy5->_db changes])
      {
        LOBYTE(error) = 1;
      }

      else
      {
        v69 = recordCopy;
        errorCopy3 = error;
        error = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"no record to update: %@", dCopy}];
        if (error)
        {
          v71 = brc_bread_crumbs();
          v72 = brc_default_log();
          if (os_log_type_enabled(v72, 0x90u))
          {
            v79 = "(passed to caller)";
            *buf = 136315906;
            v89 = "[BRCServerZone _saveItemID:stat:serverMetrics:record:error:]";
            v90 = 2080;
            if (!errorCopy3)
            {
              v79 = "(ignored by caller)";
            }

            v91 = v79;
            v92 = 2112;
            errorCopy4 = error;
            v94 = 2112;
            v95 = v71;
            _os_log_error_impl(&dword_223E7A000, v72, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (errorCopy3)
        {
          errorCopy5 = error;
          *errorCopy3 = error;
        }

        LOBYTE(error) = 0;
        recordCopy = v69;
      }
    }

    else
    {
      v61 = brc_bread_crumbs();
      v62 = brc_default_log();
      if (os_log_type_enabled(v62, 0x90u))
      {
        lastError = [(BRCPQLConnection *)selfCopy5->_db lastError];
        *buf = 138412802;
        v89 = dCopy;
        v90 = 2112;
        v91 = lastError;
        v92 = 2112;
        errorCopy4 = v61;
        _os_log_error_impl(&dword_223E7A000, v62, 0x90u, "[ERROR] Failed to update record (%@): %@%@", buf, 0x20u);

        selfCopy5 = self;
      }

      if (error)
      {
        lastError2 = [(BRCPQLConnection *)selfCopy5->_db lastError];
        errorCopy6 = error;
        LOBYTE(error) = 0;
        *errorCopy6 = lastError2;
      }
    }

    goto LABEL_57;
  }

  v65 = brc_bread_crumbs();
  v66 = brc_default_log();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412802;
    v89 = v60;
    v90 = 2112;
    v91 = recordCopy;
    v92 = 2112;
    errorCopy4 = v65;
    _os_log_fault_impl(&dword_223E7A000, v66, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't deserialize filename: %@ of %@%@", buf, 0x20u);
  }

  if (error)
  {
    v67 = v60;
    errorCopy7 = error;
    LOBYTE(error) = 0;
    *errorCopy7 = v60;
  }

  v17 = v60;
LABEL_57:

  v74 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)_saveItemID:(id)d version:(id)version record:(id)record contentBoundaryKey:(id)key iWorkSharingOptions:(unint64_t)options
{
  v45 = *MEMORY[0x277D85DE8];
  dCopy = d;
  versionCopy = version;
  recordCopy = record;
  db = self->_db;
  keyCopy = key;
  originalPOSIXName = [versionCopy originalPOSIXName];
  ckInfo = [versionCopy ckInfo];
  mtime = [versionCopy mtime];
  v31 = [versionCopy size];
  thumbnailSize = [versionCopy thumbnailSize];
  thumbnailSignature = [versionCopy thumbnailSignature];
  contentSignature = [versionCopy contentSignature];
  xattrSignature = [versionCopy xattrSignature];
  editedSinceShared = [versionCopy editedSinceShared];
  lastEditorDeviceOrUserRowID = [versionCopy lastEditorDeviceOrUserRowID];
  conflictLoserEtags = [versionCopy conflictLoserEtags];
  quarantineInfo = [versionCopy quarantineInfo];
  v18 = [(BRCPQLConnection *)db execute:@"UPDATE server_items    SET item_rank = NULL, item_depth = 0, item_sharing_options = (%lu | (item_sharing_options & %lu)), content_boundary_key = %@, version_name = %@, version_ckinfo = %@, version_mtime = %lld, version_size = %lld, version_thumb_size = %lld, version_thumb_signature = %@, version_content_signature = %@, version_xattr_signature = %@, version_edited_since_shared = %@, version_device = %@, version_conflict_loser_etags = %@, version_quarantine_info = %@  WHERE item_id = %@ AND zone_rowid = %@", options, -8, keyCopy, originalPOSIXName, ckInfo, mtime, v31, thumbnailSize, thumbnailSignature, contentSignature, xattrSignature, editedSinceShared, lastEditorDeviceOrUserRowID, conflictLoserEtags, quarantineInfo, dCopy, self->_dbRowID];

  if (!v18)
  {
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, 0x90u))
    {
      v21 = recordCopy;
      v26 = [recordCopy debugDescription];
      lastError = [(BRCPQLConnection *)self->_db lastError];
      *buf = 138412802;
      v40 = v26;
      v41 = 2112;
      v42 = lastError;
      v43 = 2112;
      v44 = v22;
      _os_log_error_impl(&dword_223E7A000, v23, 0x90u, "[ERROR] failed saving document %@: %@%@", buf, 0x20u);

      v19 = 0;
      v20 = dCopy;
    }

    else
    {
      v19 = 0;
      v21 = recordCopy;
      v20 = dCopy;
    }

LABEL_11:

    goto LABEL_12;
  }

  if ([(BRCPQLConnection *)self->_db changes]!= 1)
  {
    v21 = recordCopy;
    v20 = dCopy;
    if (([(BRCServerZone *)self state]& 4) != 0 || [(BRCPQLConnection *)self->_db changes])
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v40 = dCopy;
        v41 = 2112;
        v42 = versionCopy;
        v43 = 2112;
        v44 = v22;
        _os_log_fault_impl(&dword_223E7A000, v23, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: document without a structure:\n    i:%@ %@\n\n   this typically indicates either of two problems:\n    - either we failed processing the last sync down and we\n       failed inserting the structure record,\n    - or the server forgot to send us a structure record.%@", buf, 0x20u);
      }

      v19 = 0;
    }

    else
    {
      v22 = brc_bread_crumbs();
      v19 = 1;
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v40 = dCopy;
        v41 = 2112;
        v42 = versionCopy;
        v43 = 2112;
        v44 = v22;
        _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] Document without a structure record but we haven't completed full sync.  Dropping the record on the floor for now i:%@ %@%@", buf, 0x20u);
      }
    }

    goto LABEL_11;
  }

  v19 = 1;
  v21 = recordCopy;
  v20 = dCopy;
LABEL_12:

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_saveEditedDirOrDocStructureRecord:(id)record error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  location = 0;
  recordID = [recordCopy recordID];
  zoneAppRetriever = [(BRCAccountSession *)self->_session zoneAppRetriever];
  v9 = [recordID brc_itemIDWithZoneAppRetriever:zoneAppRetriever error:&location];

  v26 = 0;
  v27 = 0;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [BRCServerZone _saveEditedDirOrDocStructureRecord:error:];
  }

  if (!v9)
  {
    v15 = location;
    if (v15)
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, 0x90u))
      {
        v24 = "(passed to caller)";
        *buf = 136315906;
        v30 = "[BRCServerZone _saveEditedDirOrDocStructureRecord:error:]";
        v31 = 2080;
        if (!error)
        {
          v24 = "(ignored by caller)";
        }

        v32 = v24;
        v33 = 2112;
        v34 = v15;
        v35 = 2112;
        v36 = v16;
        _os_log_error_impl(&dword_223E7A000, v17, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v18 = v15;
      *error = v15;
    }

    goto LABEL_16;
  }

  session = self->_session;
  obj = location;
  v13 = [recordCopy deserializeStatInfo:&v27 serverMetrics:&v26 itemID:v9 session:session error:&obj];
  objc_storeStrong(&location, obj);
  if ((v13 & 1) == 0)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, 0x90u))
    {
      v23 = [recordCopy debugDescription];
      *buf = 138412802;
      v30 = v23;
      v31 = 2112;
      v32 = location;
      v33 = 2112;
      v34 = v19;
      _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] can't deserialize %@: %@%@", buf, 0x20u);
    }

    if (error)
    {
      v14 = 0;
      *error = location;
      goto LABEL_17;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v14 = [(BRCServerZone *)self _saveItemID:v9 stat:v27 serverMetrics:v26 record:recordCopy error:error];
LABEL_17:

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)_saveEditedDocumentContentRecord:(id)record error:(id *)error
{
  v89 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  location = 0;
  recordID = [recordCopy recordID];
  zoneAppRetriever = [(BRCAccountSession *)self->_session zoneAppRetriever];
  v9 = [recordID brc_itemIDWithZoneAppRetriever:zoneAppRetriever error:&location];

  if ([(BRCServerZone *)self isSharedZone])
  {
    share = [recordCopy share];
    v11 = share != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [BRCServerZone _saveEditedDocumentContentRecord:error:];
  }

  if (!v9)
  {
    v35 = location;
    if (v35)
    {
      v36 = brc_bread_crumbs();
      v37 = brc_default_log();
      if (os_log_type_enabled(v37, 0x90u))
      {
        v50 = "(passed to caller)";
        *buf = 136315906;
        v82 = "[BRCServerZone _saveEditedDocumentContentRecord:error:]";
        v83 = 2080;
        if (!error)
        {
          v50 = "(ignored by caller)";
        }

        v84 = v50;
        v85 = 2112;
        v86 = v35;
        v87 = 2112;
        v88 = v36;
        _os_log_error_impl(&dword_223E7A000, v37, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v38 = v35;
      *error = v35;
    }

    v18 = 0;
    v19 = 0;
    v17 = 0;
    goto LABEL_38;
  }

  v79 = 0;
  if (v11)
  {
    v14 = &v78;
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v78 = 0;
  }

  v77 = 0;
  clientZone = [(BRCServerZone *)self clientZone];
  obj = location;
  v16 = [recordCopy deserializeVersion:&v79 fakeStatInfo:v14 contentBoundaryKey:&v77 clientZone:clientZone error:&obj];
  v17 = v79;
  v18 = 0;
  if (v11)
  {
    v18 = v78;
  }

  v19 = v77;
  objc_storeStrong(&location, obj);

  if (v16)
  {
    if (v11 && ![(BRCServerZone *)self _saveItemID:v9 stat:v18 serverMetrics:0 record:recordCopy error:error])
    {
      goto LABEL_38;
    }

    v74 = location;
    v75 = 0;
    v20 = [recordCopy deserializeiWorkSharingOptions:&v75 error:&v74];
    objc_storeStrong(&location, v74);
    if (v20)
    {
      creatorUserRecordID = [recordCopy creatorUserRecordID];
      recordName = [creatorUserRecordID recordName];

      cachedCurrentUserRecordName = [(BRCAccountSession *)self->_session cachedCurrentUserRecordName];
      v73 = 0;
      v24 = [recordCopy brc_lastModifiedUserRecordNameWithCurrentUserRecordName:cachedCurrentUserRecordName personNameComponents:&v73];
      v66 = v73;

      v25 = v24;
      v67 = v24;
      if (v24)
      {
        if (([recordName isEqualToString:v24] & 1) == 0)
        {
          editedSinceShared = [v17 editedSinceShared];
          bOOLValue = [editedSinceShared BOOLValue];

          v25 = v67;
          if ((bOOLValue & 1) == 0)
          {
            v28 = brc_bread_crumbs();
            v29 = brc_default_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              [BRCServerZone _saveEditedDocumentContentRecord:error:];
            }

            [v17 setEditedSinceShared:MEMORY[0x277CBEC38]];
            v25 = v67;
          }
        }
      }

      if ([v25 isEqualToString:*MEMORY[0x277CBBF28]])
      {
        v30 = recordName;
        lastEditorDeviceName = [v17 lastEditorDeviceName];
        v32 = [lastEditorDeviceName rangeOfString:@":_"];
        dbFacade = self->_dbFacade;
        if (v32 == 64)
        {
          v34 = [(BRCReadWriteServerDatabaseFacade *)dbFacade getOrCreateUserKeyForOwnerName:v67];
          [v17 setLastEditorRowID:v34];
        }

        else
        {
          v34 = [(BRCReadWriteServerDatabaseFacade *)dbFacade createDeviceKeyForName:lastEditorDeviceName];
          [v17 setLastEditorDeviceRowID:v34];
        }

        recordName = v30;
LABEL_56:

        if ([v17 isPackage])
        {
          v71 = location;
          v72 = 0;
          v54 = [recordCopy deserializeFilename:0 basename:0 bounceno:0 extension:&v72 userInfo:0 error:&v71];
          objc_storeStrong(&location, v71);
          if ((v54 & 1) == 0)
          {
            v57 = brc_bread_crumbs();
            v58 = brc_default_log();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412802;
              v82 = location;
              v83 = 2112;
              v84 = recordCopy;
              v85 = 2112;
              v86 = v57;
              _os_log_fault_impl(&dword_223E7A000, v58, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't deserialize extension: %@ of %@%@", buf, 0x20u);
            }

            if (error)
            {
              *error = location;
            }

            v42 = 0;
            goto LABEL_74;
          }

          v55 = [recordCopy objectForKeyedSubscript:@"ignorePkgExtension"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            bOOLValue2 = [v55 BOOLValue];
          }

          else
          {
            bOOLValue2 = 0;
          }

          if (v72)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && (([v72 brc_isForcedPackageExtension] | bOOLValue2) & 1) == 0)
            {
              v59 = recordName;
              v60 = brc_bread_crumbs();
              v61 = brc_default_log();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
              {
                [BRCServerZone _saveEditedDocumentContentRecord:? error:?];
              }

              [MEMORY[0x277CCACA8] brc_addForcedPackageExtension:v72];
              recordName = v59;
            }
          }
        }

        analyticsReporter = [(BRCAccountSession *)self->_session analyticsReporter];
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __56__BRCServerZone__saveEditedDocumentContentRecord_error___block_invoke;
        v68[3] = &unk_2785029A8;
        v63 = recordCopy;
        v69 = v63;
        selfCopy = self;
        [analyticsReporter lookupFSEventToSyncUpEventByItemID:v9 accessor:v68];

        v42 = [(BRCServerZone *)self _saveItemID:v9 version:v17 record:v63 contentBoundaryKey:v19 iWorkSharingOptions:v75];
LABEL_74:

        goto LABEL_39;
      }

      [(BRCReadWriteServerDatabaseFacade *)self->_dbFacade getOrCreateUserKeyForOwnerName:v25];
      v46 = v45 = v25;
      [v17 setLastEditorRowID:v46];

      if (!v66)
      {
        lastEditorDeviceName = 0;
        goto LABEL_56;
      }

      v65 = recordName;
      v47 = [(BRCDatabaseFacade *)self->_dbFacade userIdentityForName:v45];
      v48 = v47;
      if (v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = objc_alloc_init(BRFieldUserIdentity);
      }

      lastEditorDeviceName = v49;

      nameComponents = [lastEditorDeviceName nameComponents];
      if (!nameComponents)
      {
        goto LABEL_53;
      }

      v52 = nameComponents;
      nameComponents2 = [lastEditorDeviceName nameComponents];
      if (([nameComponents2 br_shouldOverwriteExistingName] & 1) == 0)
      {

        goto LABEL_55;
      }

      br_shouldOverwriteExistingName = [v66 br_shouldOverwriteExistingName];

      if ((br_shouldOverwriteExistingName & 1) == 0)
      {
LABEL_53:
        [lastEditorDeviceName setNameComponents:v66];
        [(BRCPQLConnection *)self->_db execute:@"UPDATE users SET user_plist = %@ WHERE user_name = %@", lastEditorDeviceName, v67];
      }

LABEL_55:
      recordName = v65;
      goto LABEL_56;
    }

    v39 = brc_bread_crumbs();
    v40 = brc_default_log();
    if (!os_log_type_enabled(v40, 0x90u))
    {
      goto LABEL_36;
    }

    v41 = [recordCopy debugDescription];
    *buf = 138412802;
    v82 = v41;
    v83 = 2112;
    v84 = location;
    v85 = 2112;
    v86 = v39;
  }

  else
  {
    v39 = brc_bread_crumbs();
    v40 = brc_default_log();
    if (!os_log_type_enabled(v40, 0x90u))
    {
      goto LABEL_36;
    }

    v41 = [recordCopy debugDescription];
    *buf = 138412802;
    v82 = v41;
    v83 = 2112;
    v84 = location;
    v85 = 2112;
    v86 = v39;
  }

  _os_log_error_impl(&dword_223E7A000, v40, 0x90u, "[ERROR] can't deserialize %@: %@%@", buf, 0x20u);

LABEL_36:
  if (!error)
  {
LABEL_38:
    v42 = 0;
    goto LABEL_39;
  }

  v42 = 0;
  *error = location;
LABEL_39:

  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

void __56__BRCServerZone__saveEditedDocumentContentRecord_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 modificationDate];
  [v4 setEndTime:v5];

  v6 = [*(*(a1 + 40) + 16) analyticsReporter];
  [v6 submitEventMetric:v4];
}

- (BOOL)_saveEditedSymlinkRecord:(id)record error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  location = 0;
  recordID = [recordCopy recordID];
  zoneAppRetriever = [(BRCAccountSession *)self->_session zoneAppRetriever];
  v9 = [recordID brc_itemIDWithZoneAppRetriever:zoneAppRetriever error:&location];

  v37 = 0;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [BRCServerZone _saveEditedSymlinkRecord:error:];
  }

  if (!v9)
  {
    v16 = location;
    if (v16)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        v30 = "(passed to caller)";
        *buf = 136315906;
        v40 = "[BRCServerZone _saveEditedSymlinkRecord:error:]";
        v41 = 2080;
        if (!error)
        {
          v30 = "(ignored by caller)";
        }

        v42 = v30;
        v43 = 2112;
        v44 = v16;
        v45 = 2112;
        v46 = v17;
        _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v19 = v16;
      *error = v16;
    }

    goto LABEL_19;
  }

  session = self->_session;
  obj = location;
  v13 = [recordCopy deserializeStatInfo:&v37 serverMetrics:0 itemID:v9 session:session error:&obj];
  objc_storeStrong(&location, obj);
  if (v13)
  {
    if ([(BRCServerZone *)self _saveItemID:v9 stat:v37 serverMetrics:0 record:recordCopy error:error])
    {
      v34 = location;
      v35 = 0;
      v14 = [recordCopy deserializeSymlinkTarget:&v35 error:&v34];
      objc_storeStrong(&location, v34);
      if (v14)
      {
        if ([(BRCPQLConnection *)self->_db execute:@"UPDATE server_items    SET version_name = %@  WHERE item_id = %@ AND zone_rowid = %@", v35, v9, self->_dbRowID])
        {
          v15 = 1;
LABEL_31:

          goto LABEL_20;
        }

        v27 = brc_bread_crumbs();
        v28 = brc_default_log();
        if (os_log_type_enabled(v28, 0x90u))
        {
          v32 = [recordCopy debugDescription];
          lastError = [(BRCPQLConnection *)self->_db lastError];
          *buf = 138412802;
          v40 = v32;
          v41 = 2112;
          v42 = lastError;
          v43 = 2112;
          v44 = v27;
          _os_log_error_impl(&dword_223E7A000, v28, 0x90u, "[ERROR] failed saving symlink %@: %@%@", buf, 0x20u);
        }

        if (error)
        {
          lastError2 = [(BRCPQLConnection *)self->_db lastError];
          goto LABEL_29;
        }
      }

      else
      {
        v24 = brc_bread_crumbs();
        v25 = brc_default_log();
        if (os_log_type_enabled(v25, 0x90u))
        {
          v31 = [recordCopy debugDescription];
          *buf = 138412802;
          v40 = v31;
          v41 = 2112;
          v42 = location;
          v43 = 2112;
          v44 = v24;
          _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] can't deserialize %@: %@%@", buf, 0x20u);
        }

        if (error)
        {
          lastError2 = location;
LABEL_29:
          v15 = 0;
          *error = lastError2;
          goto LABEL_31;
        }
      }

      v15 = 0;
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  v20 = brc_bread_crumbs();
  v21 = brc_default_log();
  if (os_log_type_enabled(v21, 0x90u))
  {
    v29 = [recordCopy debugDescription];
    *buf = 138412802;
    v40 = v29;
    v41 = 2112;
    v42 = location;
    v43 = 2112;
    v44 = v20;
    _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] can't deserialize %@: %@%@", buf, 0x20u);
  }

  if (!error)
  {
LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  v15 = 0;
  *error = location;
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_saveEditedFinderBookmarkRecord:(id)record error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  recordID = [recordCopy recordID];
  zoneAppRetriever = [(BRCAccountSession *)self->_session zoneAppRetriever];
  v9 = [recordID brc_itemIDWithZoneAppRetriever:zoneAppRetriever];

  v35 = 0;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [BRCServerZone _saveEditedFinderBookmarkRecord:error:];
  }

  session = self->_session;
  v34 = 0;
  v13 = [recordCopy deserializeStatInfo:&v35 serverMetrics:0 itemID:v9 session:session error:&v34];
  v14 = v34;
  if ((v13 & 1) == 0)
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, 0x90u))
    {
      v29 = [recordCopy debugDescription];
      *buf = 138412802;
      v37 = v29;
      v38 = 2112;
      v39 = v14;
      v40 = 2112;
      v41 = v21;
      _os_log_error_impl(&dword_223E7A000, v22, 0x90u, "[ERROR] can't deserialize %@: %@%@", buf, 0x20u);
    }

    if (error)
    {
      v23 = v14;
      v18 = 0;
      v17 = 0;
      v20 = 0;
      *error = v14;
      goto LABEL_18;
    }

LABEL_11:
    v18 = 0;
    v17 = 0;
    v20 = 0;
    goto LABEL_18;
  }

  if (![(BRCServerZone *)self _saveItemID:v9 stat:v35 serverMetrics:0 record:recordCopy error:error])
  {
    goto LABEL_11;
  }

  v32 = 0;
  v33 = 0;
  clientZone = self->_clientZone;
  v31 = v14;
  v16 = [recordCopy deserializeVersion:&v33 fakeStatInfo:0 contentBoundaryKey:&v32 clientZone:clientZone error:&v31];
  v17 = v33;
  v18 = v32;
  v19 = v31;

  if (v16)
  {
    v20 = [(BRCServerZone *)self _saveItemID:v9 version:v17 record:recordCopy contentBoundaryKey:v18 iWorkSharingOptions:0];
  }

  else
  {
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, 0x90u))
    {
      v30 = [recordCopy debugDescription];
      *buf = 138412802;
      v37 = v30;
      v38 = 2112;
      v39 = v19;
      v40 = 2112;
      v41 = v24;
      _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] can't deserialize %@: %@%@", buf, 0x20u);
    }

    if (error)
    {
      v26 = v19;
      v20 = 0;
      *error = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  v14 = v19;
LABEL_18:

  v27 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)_saveEditedAliasRecord:(id)record zonesNeedingAllocRanks:(id)ranks error:(id *)error
{
  v87 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  ranksCopy = ranks;
  dbFacade = self->_dbFacade;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  ownerName = [zoneID ownerName];
  v14 = [(BRCDatabaseFacade *)dbFacade userKeyForOwnerName:ownerName];

  v75 = v14;
  if (v14)
  {
    location = 0;
    recordID2 = [recordCopy recordID];
    zoneAppRetriever = [(BRCAccountSession *)self->_session zoneAppRetriever];
    v17 = [recordID2 brc_itemIDWithZoneAppRetriever:zoneAppRetriever error:&location];

    v77 = 0;
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [BRCServerZone _saveEditedAliasRecord:zonesNeedingAllocRanks:error:];
    }

    if (v17)
    {
      v76 = location;
      v20 = [recordCopy deserializeAliasInfo:&v77 serverZone:self error:&v76];
      objc_storeStrong(&location, v76);
      if (v20)
      {
        errorCopy = error;
        v74 = ranksCopy;
        dbRowID = self->_dbRowID;
        db = self->_db;
        v68 = recordCopy;
        parent = [recordCopy parent];
        ckInfo = [v77 ckInfo];
        state = [v77 state];
        type = [v77 type];
        mode = [v77 mode];
        birthtime = [v77 birthtime];
        lastUsedTime = [v77 lastUsedTime];
        favoriteRank = [v77 favoriteRank];
        parentID = [v77 parentID];
        if (v77[7])
        {
          v22 = v77[7];
        }

        else
        {
          v22 = &stru_2837504F0;
        }

        isHiddenExt = [v77 isHiddenExt];
        finderTags = [v77 finderTags];
        xattrSignature = [v77 xattrSignature];
        trashPutBackPath = [v77 trashPutBackPath];
        trashPutBackParentID = [v77 trashPutBackParentID];
        aliasTarget = [v77 aliasTarget];
        creatorRowID = [v77 creatorRowID];
        v29 = v17;
        v30 = creatorRowID;
        v59 = state;
        v73 = v29;
        v31 = 1;
        if (parent)
        {
          v31 = 2;
        }

        v32 = [(BRCPQLConnection *)db execute:@"INSERT OR REPLACE INTO server_items(zone_rowid, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_rank, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator) VALUES(%@, %d, %@, %@, %ld, %@, NULL, %@, %d, %d, %d, %lld, %lld, %lld, %@, %@, %d, %@, %@, %@, %@, %@, %@)", dbRowID, v31, v29, v75, 0, 0, ckInfo, v59, type, mode, birthtime, lastUsedTime, favoriteRank, parentID, v22, isHiddenExt, finderTags, xattrSignature, trashPutBackPath, trashPutBackParentID, aliasTarget, creatorRowID];

        if (v32)
        {
          _aliasTargetMangledID = [v77 _aliasTargetMangledID];
          v34 = [(BRCAccountSession *)self->_session clientZoneByMangledID:_aliasTargetMangledID];
          v17 = v73;
          ranksCopy = v74;
          recordCopy = v68;
          if ([v34 isSharedZone])
          {
            v35 = self->_db;
            _aliasTargetItemID = [v77 _aliasTargetItemID];
            dbRowID = [v34 dbRowID];
            [(BRCPQLConnection *)v35 execute:@"UPDATE server_items SET item_rank = NULL WHERE item_id = %@ AND zone_rowid = %@", _aliasTargetItemID, dbRowID];

            if ([(BRCPQLConnection *)self->_db changes])
            {
              v38 = brc_bread_crumbs();
              v39 = brc_default_log();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                _aliasTargetItemID2 = [v77 _aliasTargetItemID];
                *buf = 138412802;
                v80 = _aliasTargetItemID2;
                v81 = 2112;
                v82 = v73;
                v83 = 2112;
                v84 = v38;
                _os_log_debug_impl(&dword_223E7A000, v39, OS_LOG_TYPE_DEBUG, "[DEBUG] Requesting a new item rank for target %@ of %@%@", buf, 0x20u);
              }

              serverZone = [v34 serverZone];
              [v74 addObject:serverZone];
            }
          }

          v41 = 1;
          goto LABEL_36;
        }

        v50 = brc_bread_crumbs();
        v51 = brc_default_log();
        ranksCopy = v74;
        recordCopy = v68;
        if (os_log_type_enabled(v51, 0x90u))
        {
          v56 = [v68 debugDescription];
          lastError = [(BRCPQLConnection *)self->_db lastError];
          *buf = 138412802;
          v80 = v56;
          v81 = 2112;
          v82 = lastError;
          v83 = 2112;
          v84 = v50;
          _os_log_error_impl(&dword_223E7A000, v51, 0x90u, "[ERROR] failed saving alias %@: %@%@", buf, 0x20u);
        }

        v17 = v73;
        if (errorCopy)
        {
          [(BRCPQLConnection *)self->_db lastError];
          *errorCopy = v41 = 0;
          goto LABEL_36;
        }
      }

      else
      {
        v48 = brc_bread_crumbs();
        v49 = brc_default_log();
        if (os_log_type_enabled(v49, 0x90u))
        {
          v54 = [recordCopy debugDescription];
          *buf = 138412802;
          v80 = v54;
          v81 = 2112;
          v82 = location;
          v83 = 2112;
          v84 = v48;
          _os_log_error_impl(&dword_223E7A000, v49, 0x90u, "[ERROR] can't deserialize %@: %@%@", buf, 0x20u);
        }

        if (error)
        {
          v41 = 0;
          *error = location;
LABEL_36:

          goto LABEL_37;
        }
      }
    }

    else
    {
      v44 = location;
      if (v44)
      {
        v45 = brc_bread_crumbs();
        v46 = brc_default_log();
        if (os_log_type_enabled(v46, 0x90u))
        {
          v55 = "(passed to caller)";
          *buf = 136315906;
          v80 = "[BRCServerZone _saveEditedAliasRecord:zonesNeedingAllocRanks:error:]";
          v81 = 2080;
          if (!error)
          {
            v55 = "(ignored by caller)";
          }

          v82 = v55;
          v83 = 2112;
          v84 = v44;
          v85 = 2112;
          v86 = v45;
          _os_log_error_impl(&dword_223E7A000, v46, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (error)
      {
        v47 = v44;
        *error = v44;
      }
    }

    v41 = 0;
    goto LABEL_36;
  }

  v42 = brc_bread_crumbs();
  v43 = brc_default_log();
  if (os_log_type_enabled(v43, 0x90u))
  {
    [BRCServerZone _saveEditedAliasRecord:recordCopy zonesNeedingAllocRanks:v42 error:v43];
  }

  v41 = 0;
LABEL_37:

  v52 = *MEMORY[0x277D85DE8];
  return v41;
}

- (void)_userNotificationMetadataWithShare:(id)share requester:(id)requester completionHandler:(id)handler
{
  shareCopy = share;
  requesterCopy = requester;
  handlerCopy = handler;
  userIdentity = [requesterCopy userIdentity];
  nameComponents = [userIdentity nameComponents];

  v39 = nameComponents;
  br_formattedName = [nameComponents br_formattedName];
  v41 = requesterCopy;
  if ([br_formattedName length])
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = _BRLocalizedStringWithFormat();

    lookupInfo = [MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class(), br_formattedName}];
    brc_sharedRootDisplayName = [shareCopy brc_sharedRootDisplayName];
    v16 = _BRLocalizedStringWithFormat();
  }

  else
  {
    userIdentity2 = [requesterCopy userIdentity];
    lookupInfo = [userIdentity2 lookupInfo];

    emailAddress = [lookupInfo emailAddress];
    if (!emailAddress)
    {
      emailAddress = [lookupInfo phoneNumber];
      if (!emailAddress)
      {
        v16 = 0;
        v13 = 0;
        goto LABEL_7;
      }
    }

    brc_sharedRootDisplayName = emailAddress;
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = _BRLocalizedStringWithFormat();

    v20 = [MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class(), brc_sharedRootDisplayName}];
    brc_sharedRootDisplayName2 = [shareCopy brc_sharedRootDisplayName];
    v16 = _BRLocalizedStringWithFormat();
  }

LABEL_7:
  if (v13 && v16)
  {
    v21 = objc_alloc_init(BRCUserNotificationMetadata);
    [(BRCUserNotificationMetadata *)v21 setTitle:v13];
    [(BRCUserNotificationMetadata *)v21 setBody:v16];
    if ([shareCopy isFolderShare])
    {
      v22 = handlerCopy;
      (*(handlerCopy + 2))(handlerCopy, v21);
    }

    else
    {
      v24 = MEMORY[0x277CCACA8];
      brc_sharedRootDisplayName3 = [shareCopy brc_sharedRootDisplayName];
      etag = [shareCopy etag];
      v36 = [v24 stringWithFormat:@"%@-%@", brc_sharedRootDisplayName3, etag];

      session = [(BRCServerZone *)self session];
      stageRegistry = [session stageRegistry];
      v35 = [stageRegistry createURLForUserNotificationThumbnailGenerationWithStageID:v36];

      v29 = [BRCSharingUtil typeForShare:shareCopy];
      v30 = +[BRCThumbnailGenerationManager defaultManager];
      clientZone = [(BRCServerZone *)self clientZone];
      mangledID = [clientZone mangledID];
      session = self->_session;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __80__BRCServerZone__userNotificationMetadataWithShare_requester_completionHandler___block_invoke;
      v42[3] = &unk_2785029D0;
      v21 = v21;
      v43 = v21;
      v44 = v29;
      v22 = handlerCopy;
      v45 = handlerCopy;
      v34 = v29;
      [v30 getLocalThumbnailWithShare:shareCopy mangledID:mangledID targetURL:v35 sessionContext:session completionHandler:v42];
    }
  }

  else
  {
    v21 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [BRCServerZone _userNotificationMetadataWithShare:requester:completionHandler:];
    }

    v22 = handlerCopy;
  }
}

uint64_t __80__BRCServerZone__userNotificationMetadataWithShare_requester_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setThumbnailURL:a2];
  v3 = *(a1 + 40);
  if (v3)
  {
    v8 = @"itemType";
    v9[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [*(a1 + 32) setUserInfo:v4];
  }

  v5 = *(a1 + 32);
  result = (*(*(a1 + 48) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_userNotificationRequestApprovedMetadataWithShare:(id)share
{
  shareCopy = share;
  v4 = [BRFieldUserIdentity alloc];
  owner = [shareCopy owner];
  userIdentity = [owner userIdentity];
  v7 = [(BRFieldUserIdentity *)v4 initWithCKUserIdentity:userIdentity];

  nameComponents = [(BRFieldUserIdentity *)v7 nameComponents];
  br_formattedName = [nameComponents br_formattedName];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  brc_sharedRootDisplayName = [shareCopy brc_sharedRootDisplayName];

  v12 = _BRLocalizedStringWithFormat();

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class(), br_formattedName, brc_sharedRootDisplayName}];
  v14 = _BRLocalizedStringWithFormat();

  v15 = objc_alloc_init(BRCUserNotificationMetadata);
  [(BRCUserNotificationMetadata *)v15 setTitle:v12];
  [(BRCUserNotificationMetadata *)v15 setBody:v14];

  return v15;
}

- (BOOL)_shouldSendNotification
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  requestForAccessNotifications = [v3 requestForAccessNotifications];

  if (!requestForAccessNotifications)
  {
    return 0;
  }

  if (![(BRCServerZone *)self isSharedZone])
  {
    if ([(BRCServerZone *)self isPrivateZone])
    {
      if (([(BRCServerZone *)self state]& 0x20) != 0)
      {
        changeState = [(BRCServerZone *)self changeState];
        hasNeverSyncedDown = [changeState hasNeverSyncedDown];

        if (!hasNeverSyncedDown)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  changeState2 = [(BRCServerZone *)self changeState];
  if (!changeState2)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [BRCServerZone plist];
    }

    goto LABEL_17;
  }

  serverState = [(BRCAccountSession *)self->_session serverState];
  sharedDatabaseChangeState = [serverState sharedDatabaseChangeState];
  everCaughtUp = [sharedDatabaseChangeState everCaughtUp];

  if (!everCaughtUp)
  {
LABEL_17:
    v13 = 0;
LABEL_19:

    return v13;
  }

  if ([changeState2 newlyCreatedDuringInitialSync] && (-[BRCServerZone state](self, "state") & 0x20) != 0 && (-[BRCServerZone changeState](self, "changeState"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hasNeverSyncedDown"), v9, !v10) || (objc_msgSend(changeState2, "newlyCreatedDuringInitialSync") & 1) == 0)
  {
    v13 = 1;
    goto LABEL_19;
  }

  return 0;
}

- (void)_sendApprovedNotificationIfNeededWithShare:(id)share
{
  shareCopy = share;
  if ([(BRCServerZone *)self _shouldSendNotification])
  {
    currentUserParticipant = [shareCopy currentUserParticipant];
    if (currentUserParticipant)
    {
      v6 = currentUserParticipant;
      currentUserParticipant2 = [shareCopy currentUserParticipant];
      isApprovedRequester = [currentUserParticipant2 isApprovedRequester];

      if (isApprovedRequester)
      {
        v9 = [(BRCClientZone *)self->_clientZone db];
        serialQueue = [v9 serialQueue];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __60__BRCServerZone__sendApprovedNotificationIfNeededWithShare___block_invoke;
        v11[3] = &unk_2784FF478;
        v11[4] = self;
        v12 = shareCopy;
        dispatch_async(serialQueue, v11);
      }
    }
  }
}

void __60__BRCServerZone__sendApprovedNotificationIfNeededWithShare___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientZone];
  v3 = [*(a1 + 40) recordID];
  v4 = [v3 brc_shareItemID];
  v5 = [v2 existsByItemID:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 40) owner];
    v7 = [v6 userIdentity];
    v8 = [v7 userRecordID];
    v19 = [v8 recordName];

    v9 = [BRCUserNotificationRequestAccessApprovedRequestID alloc];
    v10 = *(a1 + 40);
    v11 = [*(*(a1 + 32) + 16) accountHandler];
    v12 = [v11 acAccountID];
    v13 = [(BRCUserNotificationRequestAccess *)v9 initWithCKShare:v10 userRecordName:v19 accountID:v12];

    v14 = [*(a1 + 32) _userNotificationRequestApprovedMetadataWithShare:*(a1 + 40)];
    v15 = +[BRCUserNotificationManager sharedManager];
    v16 = [*(a1 + 40) recordID];
    v17 = [v16 brc_shareItemID];
    v18 = [v17 itemIDString];
    [v15 addPendingNotificationWithMetadata:v14 requestID:v13 forKey:v18];
  }
}

- (void)_removeRequestAccessNotificationsIfNeededWithShare:(id)share notificationIDsToKeep:(id)keep
{
  shareCopy = share;
  keepCopy = keep;
  accountHandler = [(BRCAccountSession *)self->_session accountHandler];
  acAccountID = [accountHandler acAccountID];

  v10 = +[BRCUserNotificationManager sharedManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__BRCServerZone__removeRequestAccessNotificationsIfNeededWithShare_notificationIDsToKeep___block_invoke;
  v14[3] = &unk_2785029F8;
  v15 = acAccountID;
  v16 = shareCopy;
  v17 = keepCopy;
  v11 = keepCopy;
  v12 = shareCopy;
  v13 = acAccountID;
  [v10 removeDeliveredNotificationsMatchingPredicate:v14];
}

uint64_t __90__BRCServerZone__removeRequestAccessNotificationsIfNeededWithShare_notificationIDsToKeep___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
    v5 = [v4 accountID];
    if ([v5 isEqualToString:*(a1 + 32)])
    {
      v6 = [v4 recordName];
      v7 = [*(a1 + 40) recordID];
      v8 = [v7 recordName];
      if ([v6 isEqualToString:v8])
      {
        v9 = [*(a1 + 48) containsObject:v4] ^ 1;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_updateParticipantsTableForShare:(id)share
{
  v93 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  recordID = [shareCopy recordID];
  brc_shareItemID = [recordID brc_shareItemID];

  v5 = MEMORY[0x277CBEB38];
  participants = [shareCopy participants];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(participants, "count")}];

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  participants2 = [shareCopy participants];
  v9 = [participants2 countByEnumeratingWithState:&v85 objects:v92 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v86;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v86 != v11)
        {
          objc_enumerationMutation(participants2);
        }

        v13 = *(*(&v85 + 1) + 8 * i);
        if ([v13 acceptanceStatus] == 2)
        {
          userIdentity = [v13 userIdentity];
          userRecordID = [userIdentity userRecordID];
          recordName = [userRecordID recordName];
          [v7 setObject:v13 forKeyedSubscript:recordName];
        }
      }

      v10 = [participants2 countByEnumeratingWithState:&v85 objects:v92 count:16];
    }

    while (v10);
  }

  v17 = MEMORY[0x277CBEB38];
  requesters = [shareCopy requesters];
  v19 = [v17 dictionaryWithCapacity:{objc_msgSend(requesters, "count")}];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v64 = shareCopy;
  requesters2 = [shareCopy requesters];
  v21 = [requesters2 countByEnumeratingWithState:&v81 objects:v91 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v82;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v82 != v23)
        {
          objc_enumerationMutation(requesters2);
        }

        v25 = *(*(&v81 + 1) + 8 * j);
        userIdentity2 = [v25 userIdentity];
        userRecordID2 = [userIdentity2 userRecordID];
        recordName2 = [userRecordID2 recordName];
        [v19 setObject:v25 forKeyedSubscript:recordName2];
      }

      v22 = [requesters2 countByEnumeratingWithState:&v81 objects:v91 count:16];
    }

    while (v22);
  }

  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __50__BRCServerZone__updateParticipantsTableForShare___block_invoke;
  v78[3] = &unk_278502A20;
  v78[4] = self;
  v29 = brc_shareItemID;
  v79 = v29;
  v30 = v64;
  v80 = v30;
  v65 = MEMORY[0x22AA4A310](v78);
  v31 = objc_opt_new();
  dbFacade = self->_dbFacade;
  dbRowID = self->_dbRowID;
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __50__BRCServerZone__updateParticipantsTableForShare___block_invoke_186;
  v74[3] = &unk_278502A48;
  v62 = v7;
  v75 = v62;
  v60 = v19;
  v76 = v60;
  v34 = v31;
  v77 = v34;
  [(BRCReadWriteServerDatabaseFacade *)dbFacade updateParticipantsForSharedItemID:v29 zoneRowID:dbRowID paticipantFlagsCallblock:v74];
  [(BRCReadWriteServerDatabaseFacade *)self->_dbFacade deleteParticipantsForSharedItemID:v29 zoneRowID:self->_dbRowID participantOptions:0x8000000000000000];
  v35 = [BRCUserDefaults defaultsForMangledID:0];
  LODWORD(dbFacade) = [v35 requestForAccess];

  v58 = v30;
  v59 = v29;
  if (dbFacade)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    requesters3 = [v30 requesters];
    v37 = [requesters3 countByEnumeratingWithState:&v70 objects:v90 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v71;
LABEL_20:
      v40 = 0;
      while (1)
      {
        if (*v71 != v39)
        {
          objc_enumerationMutation(requesters3);
        }

        v41 = *(*(&v70 + 1) + 8 * v40);
        userIdentity3 = [v41 userIdentity];
        userRecordID3 = [userIdentity3 userRecordID];
        recordName3 = [userRecordID3 recordName];
        v45 = [v34 containsObject:recordName3];

        if ((v45 & 1) == 0 && !(v65)[2](v65, v41, 1))
        {
          goto LABEL_40;
        }

        if (v38 == ++v40)
        {
          v38 = [requesters3 countByEnumeratingWithState:&v70 objects:v90 count:16];
          if (v38)
          {
            goto LABEL_20;
          }

          break;
        }
      }
    }

    v30 = v58;
    v29 = v59;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  requesters3 = [v30 participants];
  v46 = [requesters3 countByEnumeratingWithState:&v66 objects:v89 count:16];
  if (!v46)
  {
    v55 = 1;
    goto LABEL_43;
  }

  v47 = v46;
  v48 = *v67;
LABEL_30:
  v49 = 0;
  while (1)
  {
    if (*v67 != v48)
    {
      objc_enumerationMutation(requesters3);
    }

    v50 = *(*(&v66 + 1) + 8 * v49);
    if (([v50 isCurrentUser] & 1) == 0 && objc_msgSend(v50, "acceptanceStatus") == 2)
    {
      userIdentity4 = [v50 userIdentity];
      userRecordID4 = [userIdentity4 userRecordID];
      recordName4 = [userRecordID4 recordName];
      v54 = [v34 containsObject:recordName4];

      if ((v54 & 1) == 0 && !(v65)[2](v65, v50, 0))
      {
        break;
      }
    }

    if (v47 == ++v49)
    {
      v47 = [requesters3 countByEnumeratingWithState:&v66 objects:v89 count:16];
      if (v47)
      {
        goto LABEL_30;
      }

      v55 = 1;
      goto LABEL_41;
    }
  }

LABEL_40:
  v55 = 0;
LABEL_41:
  v30 = v58;
  v29 = v59;
LABEL_43:

  v56 = *MEMORY[0x277D85DE8];
  return v55;
}

uint64_t __50__BRCServerZone__updateParticipantsTableForShare___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 userIdentity];
  v7 = [v6 userRecordID];
  v8 = [v7 recordName];

  if (!v8)
  {
    __50__BRCServerZone__updateParticipantsTableForShare___block_invoke_cold_1();
  }

  v9 = [*(*(a1 + 32) + 96) insertOrReplaceParticipantForSharedItemID:*(a1 + 40) zoneRowID:*(*(a1 + 32) + 40) participantUserName:v8 shareParticipantsOptions:{+[BRCSharingUtil optionsWithParticipant:isRequester:](BRCSharingUtil, "optionsWithParticipant:isRequester:", v5, a3)}];
  if ((v9 & 1) == 0)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      v14 = [*(a1 + 48) debugDescription];
      v15 = [*(*(a1 + 32) + 24) lastError];
      v16 = 138413058;
      v17 = v8;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v10;
      _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] failed saving participant %@ of share %@: %@%@", &v16, 0x2Au);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

unint64_t __50__BRCServerZone__updateParticipantsTableForShare___block_invoke_186(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 48);
    v7 = [v4 userIdentity];
    v8 = [v7 userRecordID];
    v9 = [v8 recordName];
    [v6 addObject:v9];
  }

  else
  {
    v11 = [*(a1 + 40) objectForKeyedSubscript:v3];
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 48);
      v14 = [v11 userIdentity];
      v15 = [v14 userRecordID];
      v16 = [v15 recordName];
      [v13 addObject:v16];

      v10 = 1;
      goto LABEL_6;
    }
  }

  v10 = [BRCSharingUtil optionsWithParticipant:v5 isRequester:0];
LABEL_6:

  return v10;
}

- (BOOL)_populateParticipantsAndSendUserNotificationsIfNeededWithShare:(id)share
{
  v35 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  requestForAccess = [v5 requestForAccess];

  if (requestForAccess)
  {
    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (!shareCopy)
    {
      [BRCServerZone _populateParticipantsAndSendUserNotificationsIfNeededWithShare:];
    }

    recordID = [shareCopy recordID];
    brc_shareItemID = [recordID brc_shareItemID];

    if ([(BRCServerZone *)self _shouldSendNotification])
    {
      owner = [shareCopy owner];
      isCurrentUser = [owner isCurrentUser];

      if (isCurrentUser)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        obj = [shareCopy requesters];
        v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v31;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v31 != v12)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v30 + 1) + 8 * i);
              userIdentity = [v14 userIdentity];
              userRecordID = [userIdentity userRecordID];
              recordName = [userRecordID recordName];

              v18 = [BRCUserNotificationRequestAccessRequestID alloc];
              accountHandler = [(BRCAccountSession *)self->_session accountHandler];
              acAccountID = [accountHandler acAccountID];
              v21 = [(BRCUserNotificationRequestAccess *)v18 initWithCKShare:shareCopy userRecordName:recordName accountID:acAccountID];

              [v27 addObject:v21];
              if (![(BRCReadWriteServerDatabaseFacade *)self->_dbFacade doesParticipantExistForItemID:brc_shareItemID zoneRowID:self->_dbRowID userName:recordName])
              {
                v28[0] = MEMORY[0x277D85DD0];
                v28[1] = 3221225472;
                v28[2] = __80__BRCServerZone__populateParticipantsAndSendUserNotificationsIfNeededWithShare___block_invoke;
                v28[3] = &unk_278502A70;
                v29 = v21;
                [(BRCServerZone *)self _userNotificationMetadataWithShare:shareCopy requester:v14 completionHandler:v28];
              }
            }

            v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v11);
        }
      }
    }

    v22 = [(BRCServerZone *)self _updateParticipantsTableForShare:shareCopy];
    if (v22)
    {
      [(BRCServerZone *)self _sendApprovedNotificationIfNeededWithShare:shareCopy];
      [(BRCServerZone *)self _removeRequestAccessNotificationsIfNeededWithShare:shareCopy notificationIDsToKeep:v27];
    }
  }

  else
  {
    LOBYTE(v22) = 1;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

void __80__BRCServerZone__populateParticipantsAndSendUserNotificationsIfNeededWithShare___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BRCUserNotificationManager sharedManager];
  [v4 scheduleNotificationWithMetadata:v3 requestID:*(a1 + 32)];
}

- (BOOL)_saveEditedShareRecord:(id)record error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v39 = 0;
  recordID = [recordCopy recordID];
  brc_shareItemID = [recordID brc_shareItemID];

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [BRCServerZone _saveEditedShareRecord:error:];
  }

  isSharedZone = [(BRCServerZone *)self isSharedZone];
  currentUserParticipant = [recordCopy currentUserParticipant];
  role = [currentUserParticipant role];

  if (isSharedZone)
  {
    if (role != 1)
    {
      goto LABEL_9;
    }

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [BRCServerZone _saveEditedShareRecord:error:];
    }
  }

  else
  {
    if (role == 1)
    {
      goto LABEL_9;
    }

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [BRCServerZone _saveEditedShareRecord:error:];
    }
  }

LABEL_9:
  [BRCSharingUtil learnParticipantIdentitiesForShare:recordCopy forceUpdate:0 dbFacade:self->_dbFacade];
  if (!brc_shareItemID)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v19;
      _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] ignoring unknown itemID on share%@", buf, 0xCu);
    }

    v17 = 0;
LABEL_21:
    v21 = 1;
    goto LABEL_31;
  }

  v38 = 0;
  v16 = [recordCopy deserializeSharingOptions:&v39 error:&v38];
  v17 = v38;
  if (v16)
  {
    v18 = -2;
    if ((v39 & 0x20) == 0)
    {
      v18 = -1;
    }

    if (![(BRCPQLConnection *)self->_db execute:@"UPDATE server_items    SET item_rank = NULL, item_sharing_options = (%lu | (item_sharing_options & %lu)), item_mode = (%ld | (item_mode & %lu)), item_depth = 0  WHERE item_id = %@ AND zone_rowid = %@", v39, 7, ((v39 & 0x20) >> 5) ^ 1, v18, brc_shareItemID, self->_dbRowID])
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, 0x90u))
      {
        v35 = [recordCopy debugDescription];
        lastError = [(BRCPQLConnection *)self->_db lastError];
        *buf = 138412802;
        v41 = v35;
        v42 = 2112;
        v43 = lastError;
        v44 = 2112;
        v45 = v25;
        _os_log_error_impl(&dword_223E7A000, v26, 0x90u, "[ERROR] failed saving document %@: %@%@", buf, 0x20u);
      }

      if (!error)
      {
        goto LABEL_30;
      }

LABEL_29:
      [(BRCPQLConnection *)self->_db lastError];
      *error = v21 = 0;
      goto LABEL_31;
    }

    if ([(BRCPQLConnection *)self->_db changes]== 1)
    {
      if (![(BRCServerZone *)self _populateParticipantsAndSendUserNotificationsIfNeededWithShare:recordCopy])
      {
        if (!error)
        {
LABEL_30:
          v21 = 0;
          goto LABEL_31;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, 0x90u))
      {
        [BRCServerZone _saveEditedShareRecord:error:];
      }

      if ([(BRCServerZone *)self isPrivateZone])
      {
        asPrivateClientZone = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
        recordID2 = [recordCopy recordID];
        recordName = [recordID2 recordName];
        [asPrivateClientZone reportProblemWithType:10 recordName:recordName];
      }
    }

    goto LABEL_21;
  }

  v22 = brc_bread_crumbs();
  v23 = brc_default_log();
  if (os_log_type_enabled(v23, 0x90u))
  {
    v34 = [recordCopy debugDescription];
    *buf = 138412802;
    v41 = v34;
    v42 = 2112;
    v43 = v17;
    v44 = 2112;
    v45 = v22;
    _os_log_error_impl(&dword_223E7A000, v23, 0x90u, "[ERROR] can't deserialize %@: %@%@", buf, 0x20u);
  }

  if (!error)
  {
    goto LABEL_30;
  }

  v24 = v17;
  v21 = 0;
  *error = v17;
LABEL_31:

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)_saveEditedRecord:(id)record zonesNeedingAllocRanks:(id)ranks error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  ranksCopy = ranks;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];

  recordType = [recordCopy recordType];
  recordID2 = [recordCopy recordID];
  brc_isZoneRootRecordID = [recordID2 brc_isZoneRootRecordID];

  if (brc_isZoneRootRecordID)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  recordID3 = [recordCopy recordID];
  brc_isAppLibraryRootRecordID = [recordID3 brc_isAppLibraryRootRecordID];

  if (brc_isAppLibraryRootRecordID)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
LABEL_6:
      [BRCServerZone _saveEditedRecord:zonesNeedingAllocRanks:error:];
    }

LABEL_7:

LABEL_8:
    v19 = 0;
    goto LABEL_21;
  }

  if ([recordType isEqualToString:@"structure"])
  {
    if ([recordName hasPrefix:@"directory/"] || objc_msgSend(recordName, "hasPrefix:", @"documentStructure/"))
    {
      v20 = [(BRCServerZone *)self _saveEditedDirOrDocStructureRecord:recordCopy error:error];
    }

    else if ([recordName hasPrefix:@"alias/"] || objc_msgSend(recordName, "hasPrefix:", @"shareAlias/"))
    {
      v20 = [(BRCServerZone *)self _saveEditedAliasRecord:recordCopy zonesNeedingAllocRanks:ranksCopy error:error];
    }

    else if ([recordName hasPrefix:@"symlink/"])
    {
      v20 = [(BRCServerZone *)self _saveEditedSymlinkRecord:recordCopy error:error];
    }

    else
    {
      if (![recordName hasPrefix:@"finderBookmark/"])
      {
        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          [BRCServerZone _saveEditedRecord:zonesNeedingAllocRanks:error:];
        }

        v28 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: structure record which isn't a directory or document"];
        if (v28)
        {
          v29 = brc_bread_crumbs();
          v30 = brc_default_log();
          if (os_log_type_enabled(v30, 0x90u))
          {
            v32 = "(passed to caller)";
            v33 = 136315906;
            v34 = "[BRCServerZone _saveEditedRecord:zonesNeedingAllocRanks:error:]";
            v35 = 2080;
            if (!error)
            {
              v32 = "(ignored by caller)";
            }

            v36 = v32;
            v37 = 2112;
            v38 = v28;
            v39 = 2112;
            v40 = v29;
            _os_log_error_impl(&dword_223E7A000, v30, 0x90u, "[ERROR] %s: %s error: %@%@", &v33, 0x2Au);
          }
        }

        if (error)
        {
          v31 = v28;
          *error = v28;
        }

        goto LABEL_8;
      }

      v20 = [(BRCServerZone *)self _saveEditedFinderBookmarkRecord:recordCopy error:error];
    }

LABEL_20:
    v19 = v20;
    goto LABEL_21;
  }

  if ([recordType isEqualToString:@"content"])
  {
    v20 = [(BRCServerZone *)self _saveEditedDocumentContentRecord:recordCopy error:error];
    goto LABEL_20;
  }

  if ([recordType isEqualToString:*MEMORY[0x277CBC050]])
  {
    v20 = [(BRCServerZone *)self _saveEditedShareRecord:recordCopy error:error];
    goto LABEL_20;
  }

  v23 = brc_bread_crumbs();
  v24 = brc_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    recordType2 = [recordCopy recordType];
    v33 = 138412546;
    v34 = recordType2;
    v35 = 2112;
    v36 = v23;
    _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEFAULT, "[WARNING] Consistent state but unknown record type (recordType: %@).%@", &v33, 0x16u);
  }

  v19 = 1;
LABEL_21:

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_markShareIDDead:(id)dead
{
  v21 = *MEMORY[0x277D85DE8];
  deadCopy = dead;
  brc_shareItemID = [deadCopy brc_shareItemID];
  if (![(BRCPQLConnection *)self->_db execute:@"UPDATE server_items AS si   SET item_sharing_options = ((item_sharing_options & %ld) | IFNULL((SELECT (pi.item_sharing_options & %ld) FROM server_items AS pi WHERE si.item_parent_id = pi.item_id AND si.zone_rowid = pi.zone_rowid), 0)) WHERE si.zone_rowid = %@ AND si.item_id = %@", 7, 120, self->_dbRowID, brc_shareItemID])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (!os_log_type_enabled(v9, 0x90u))
    {
LABEL_12:

      v12 = 0;
      goto LABEL_13;
    }

    lastError = [(BRCPQLConnection *)self->_db lastError];
    *buf = 138412802;
    v16 = brc_shareItemID;
    v17 = 2112;
    v18 = lastError;
    v19 = 2112;
    v20 = v8;
    v11 = "[ERROR] failed saving tombstone share %@: %@%@";
LABEL_15:
    _os_log_error_impl(&dword_223E7A000, v9, 0x90u, v11, buf, 0x20u);

    goto LABEL_12;
  }

  if ([(BRCPQLConnection *)self->_db changes])
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BRCServerZone _markShareIDDead:];
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = deadCopy;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] deleted shareID %@ was for already dead item%@", buf, 0x16u);
    }
  }

  if (![(BRCReadWriteServerDatabaseFacade *)self->_dbFacade deleteParticipantsForSharedItemID:brc_shareItemID zoneRowID:self->_dbRowID])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (!os_log_type_enabled(v9, 0x90u))
    {
      goto LABEL_12;
    }

    lastError = [(BRCPQLConnection *)self->_db lastError];
    *buf = 138412802;
    v16 = brc_shareItemID;
    v17 = 2112;
    v18 = lastError;
    v19 = 2112;
    v20 = v8;
    v11 = "[ERROR] failed removing share %@ from participants table: %@%@";
    goto LABEL_15;
  }

  v12 = 1;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_markItemDeadForRecordID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  zoneAppRetriever = [(BRCAccountSession *)self->_session zoneAppRetriever];
  v6 = [dCopy brc_itemIDWithZoneAppRetriever:zoneAppRetriever];

  if (v6)
  {
    serverReadWriteDatabaseFacade = [(BRCAccountSession *)self->_session serverReadWriteDatabaseFacade];
    zoneID = [dCopy zoneID];
    ownerName = [zoneID ownerName];
    v10 = [serverReadWriteDatabaseFacade userKeyForOwnerName:ownerName];

    if (v10)
    {
      rootItemID = [(BRCClientZone *)self->_clientZone rootItemID];
      db = self->_db;
      itemIDString = [v6 itemIDString];
      v14 = [(BRCPQLConnection *)db execute:@"UPDATE server_items SET item_state = 1, item_filename = %@, item_rank = NULL, item_depth = 0, item_parent_id = %@ WHERE zone_rowid = %@ AND item_id = %@", itemIDString, rootItemID, self->_dbRowID, v6];

      if (v14)
      {
        if ([(BRCPQLConnection *)self->_db changes])
        {
          v15 = brc_bread_crumbs();
          v16 = brc_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            [BRCServerZone _markItemDeadForRecordID:];
          }
        }

        else
        {
          v15 = brc_bread_crumbs();
          v16 = brc_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            [BRCServerZone _markItemDeadForRecordID:];
          }
        }
      }

      else
      {
        v15 = brc_bread_crumbs();
        v16 = brc_default_log();
        if (os_log_type_enabled(v16, 0x90u))
        {
          lastError = [(BRCPQLConnection *)self->_db lastError];
          *buf = 138412802;
          v23 = v6;
          v24 = 2112;
          v25 = lastError;
          v26 = 2112;
          v27 = v15;
          _os_log_error_impl(&dword_223E7A000, v16, 0x90u, "[ERROR] failed saving tombstone %@: %@%@", buf, 0x20u);
        }
      }
    }

    else
    {
      rootItemID = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, 0x90u))
      {
        zoneID2 = [dCopy zoneID];
        ownerName2 = [zoneID2 ownerName];
        *buf = 138412802;
        v23 = v6;
        v24 = 2112;
        v25 = ownerName2;
        v26 = 2112;
        v27 = rootItemID;
        _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] can't save %@: missing ownerKey for ownerName %@%@", buf, 0x20u);
      }

      v14 = 0;
    }
  }

  else
  {
    v10 = brc_bread_crumbs();
    rootItemID = brc_default_log();
    if (os_log_type_enabled(rootItemID, OS_LOG_TYPE_FAULT))
    {
      [BRCServerZone _markItemDeadForRecordID:];
    }

    v14 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)_savePendingChangesEditedStructureRecordsIgnoringRecordIDs:(id)ds zonesNeedingAllocRanks:(id)ranks pendingChangeStream:(id)stream
{
  dsCopy = ds;
  ranksCopy = ranks;
  if (stream)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __119__BRCServerZone__savePendingChangesEditedStructureRecordsIgnoringRecordIDs_zonesNeedingAllocRanks_pendingChangeStream___block_invoke;
    v12[3] = &unk_278502A98;
    v13 = dsCopy;
    selfCopy = self;
    v15 = ranksCopy;
    v10 = [stream enumerateRecordsOfType:1 block:v12];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t __119__BRCServerZone__savePendingChangesEditedStructureRecordsIgnoringRecordIDs_zonesNeedingAllocRanks_pendingChangeStream___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) containsObject:a2])
  {
    v6 = 1;
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11 = 0;
    v6 = [v7 _saveEditedRecord:v5 zonesNeedingAllocRanks:v8 error:&v11];
    v9 = v11;
    if ((v6 & 1) == 0)
    {
      [*(a1 + 40) _reportCantSaveProblem:v9 record:v5];
    }
  }

  return v6;
}

- (BOOL)_savePendingChangesEditedContentRecordsIgnoringRecordIDs:(id)ds zonesNeedingAllocRanks:(id)ranks pendingChangeStream:(id)stream
{
  dsCopy = ds;
  ranksCopy = ranks;
  if (stream)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __117__BRCServerZone__savePendingChangesEditedContentRecordsIgnoringRecordIDs_zonesNeedingAllocRanks_pendingChangeStream___block_invoke;
    v12[3] = &unk_278502A98;
    v13 = dsCopy;
    selfCopy = self;
    v15 = ranksCopy;
    v10 = [stream enumerateRecordsOfType:2 block:v12];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t __117__BRCServerZone__savePendingChangesEditedContentRecordsIgnoringRecordIDs_zonesNeedingAllocRanks_pendingChangeStream___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) containsObject:a2])
  {
    v6 = 1;
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11 = 0;
    v6 = [v7 _saveEditedRecord:v5 zonesNeedingAllocRanks:v8 error:&v11];
    v9 = v11;
    if ((v6 & 1) == 0)
    {
      [*(a1 + 40) _reportCantSaveProblem:v9 record:v5];
    }
  }

  return v6;
}

- (BOOL)_savePendingChangesDeletedRecordIDsIgnoringRecordIDs:(id)ds pendingChangeStream:(id)stream
{
  dsCopy = ds;
  streamCopy = stream;
  if (streamCopy)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __90__BRCServerZone__savePendingChangesDeletedRecordIDsIgnoringRecordIDs_pendingChangeStream___block_invoke;
    v14[3] = &unk_278502AC0;
    v8 = dsCopy;
    v15 = v8;
    selfCopy = self;
    if ([streamCopy enumerateRecordsOfType:-1 block:v14])
    {
      if ([(BRCServerZone *)self isSharedZone])
      {
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __90__BRCServerZone__savePendingChangesDeletedRecordIDsIgnoringRecordIDs_pendingChangeStream___block_invoke_2;
        v11[3] = &unk_278502AC0;
        v12 = v8;
        selfCopy2 = self;
        v9 = [streamCopy enumerateRecordsOfType:-2 block:v11];
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __90__BRCServerZone__savePendingChangesDeletedRecordIDsIgnoringRecordIDs_pendingChangeStream___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3] & 1) != 0 || (objc_msgSend(*(a1 + 40), "_markItemDeadForRecordID:", v3))
  {
    v4 = 1;
  }

  else
  {
    v5 = [*(*(a1 + 40) + 48) asPrivateClientZone];
    v6 = [v3 recordName];
    [v5 reportProblemWithType:5 recordName:v6];

    v4 = 0;
  }

  return v4;
}

uint64_t __90__BRCServerZone__savePendingChangesDeletedRecordIDsIgnoringRecordIDs_pendingChangeStream___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3] & 1) != 0 || (objc_msgSend(*(a1 + 40), "_markItemDeadForRecordID:", v3))
  {
    v4 = 1;
  }

  else
  {
    v5 = [*(*(a1 + 40) + 48) asPrivateClientZone];
    v6 = [v3 recordName];
    [v5 reportProblemWithType:5 recordName:v6];

    v4 = 0;
  }

  return v4;
}

- (BOOL)_savePendingChangesSharesIgnoringRecordIDs:(id)ds zonesNeedingAllocRanks:(id)ranks pendingChangeStream:(id)stream
{
  dsCopy = ds;
  ranksCopy = ranks;
  streamCopy = stream;
  if (streamCopy)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __103__BRCServerZone__savePendingChangesSharesIgnoringRecordIDs_zonesNeedingAllocRanks_pendingChangeStream___block_invoke;
    v17[3] = &unk_278502A98;
    v11 = dsCopy;
    v18 = v11;
    selfCopy = self;
    v20 = ranksCopy;
    if ([streamCopy enumerateRecordsOfType:3 block:v17])
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __103__BRCServerZone__savePendingChangesSharesIgnoringRecordIDs_zonesNeedingAllocRanks_pendingChangeStream___block_invoke_2;
      v14[3] = &unk_278502AC0;
      v15 = v11;
      selfCopy2 = self;
      v12 = [streamCopy enumerateRecordsOfType:-3 block:v14];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

uint64_t __103__BRCServerZone__savePendingChangesSharesIgnoringRecordIDs_zonesNeedingAllocRanks_pendingChangeStream___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) containsObject:a2])
  {
    v6 = 1;
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11 = 0;
    v6 = [v7 _saveEditedRecord:v5 zonesNeedingAllocRanks:v8 error:&v11];
    v9 = v11;
    if ((v6 & 1) == 0)
    {
      [*(a1 + 40) _reportCantSaveProblem:v9 record:v5];
    }
  }

  return v6;
}

uint64_t __103__BRCServerZone__savePendingChangesSharesIgnoringRecordIDs_zonesNeedingAllocRanks_pendingChangeStream___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3] & 1) != 0 || (objc_msgSend(*(a1 + 40), "_markShareIDDead:", v3))
  {
    v4 = 1;
  }

  else
  {
    v5 = [*(*(a1 + 40) + 48) asPrivateClientZone];
    v6 = [v3 recordName];
    [v5 reportProblemWithType:5 recordName:v6];

    v4 = 0;
  }

  return v4;
}

- (BOOL)_saveEditedStructureRecords:(id)records zonesNeedingAllocRanks:(id)ranks
{
  v32 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  ranksCopy = ranks;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = recordsCopy;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v10 = *MEMORY[0x277CBC050];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        recordType = [v12 recordType];
        v15 = [recordType isEqualToString:@"content"];

        if ((v15 & 1) == 0)
        {
          recordType2 = [v12 recordType];
          v17 = [recordType2 isEqualToString:v10];

          if ((v17 & 1) == 0)
          {
            v26 = 0;
            v18 = [(BRCServerZone *)self _saveEditedRecord:v12 zonesNeedingAllocRanks:ranksCopy error:&v26];
            v19 = v26;
            v20 = v19;
            if (!v18)
            {
              [(BRCServerZone *)self _reportCantSaveProblem:v19 record:v12];

              objc_autoreleasePoolPop(v13);
              v21 = 0;
              goto LABEL_14;
            }
          }
        }

        objc_autoreleasePoolPop(v13);
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v21 = 1;
LABEL_14:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)_saveDeletedRecordIDs:(id)ds
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  dsCopy = ds;
  v5 = [dsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(dsCopy);
      }

      v9 = *(*(&v18 + 1) + 8 * v8);
      v10 = objc_autoreleasePoolPush();
      recordName = [v9 recordName];
      if (![recordName hasPrefix:@"documentContent/"])
      {
        break;
      }

      isSharedZone = [(BRCServerZone *)self isSharedZone];

      if (isSharedZone)
      {
        goto LABEL_10;
      }

LABEL_11:
      objc_autoreleasePoolPop(v10);
      if (v6 == ++v8)
      {
        v6 = [dsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

LABEL_10:
    if (![(BRCServerZone *)self _markItemDeadForRecordID:v9])
    {
      asPrivateClientZone = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
      recordName2 = [v9 recordName];
      [asPrivateClientZone reportProblemWithType:5 recordName:recordName2];

      objc_autoreleasePoolPop(v10);
      v13 = 0;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_13:
  v13 = 1;
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_reportCantSaveProblem:(id)problem record:(id)record
{
  problemCopy = problem;
  recordID = [record recordID];
  recordName = [recordID recordName];

  domain = [problemCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CFACB0]])
  {
    code = [problemCopy code];

    if (code == 1005)
    {
      v10 = 11;
    }

    else
    {
      v10 = 5;
    }
  }

  else
  {

    v10 = 5;
  }

  asPrivateClientZone = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
  [asPrivateClientZone reportProblemWithType:v10 recordName:recordName];
}

- (BOOL)_saveEditedContentRecords:(id)records zonesNeedingAllocRanks:(id)ranks
{
  v29 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  ranksCopy = ranks;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = recordsCopy;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v25;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        recordType = [v12 recordType];
        v15 = [recordType isEqualToString:@"content"];

        if (v15)
        {
          v23 = v9;
          v16 = [(BRCServerZone *)self _saveEditedRecord:v12 zonesNeedingAllocRanks:ranksCopy error:&v23];
          v17 = v23;

          if (!v16)
          {
            [(BRCServerZone *)self _reportCantSaveProblem:v17 record:v12];
            objc_autoreleasePoolPop(v13);
            v18 = 0;
            goto LABEL_14;
          }

          v9 = v17;
        }

        objc_autoreleasePoolPop(v13);
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v18 = 1;
    v17 = v9;
  }

  else
  {
    v17 = 0;
    v18 = 1;
  }

LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_saveEditedShareRecords:(id)records deletedShareRecordIDs:(id)ds zonesNeedingAllocRanks:(id)ranks
{
  v46 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  dsCopy = ds;
  ranksCopy = ranks;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = recordsCopy;
  v10 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    v13 = *MEMORY[0x277CBC050];
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        recordType = [v15 recordType];
        v18 = [recordType isEqualToString:v13];

        if (v18)
        {
          v39 = 0;
          v19 = [(BRCServerZone *)self _saveEditedRecord:v15 zonesNeedingAllocRanks:ranksCopy error:&v39];
          v20 = v39;
          asPrivateClientZone = v20;
          if (!v19)
          {
            [(BRCServerZone *)self _reportCantSaveProblem:v20 record:v15];
            v23 = v9;
            v22 = dsCopy;
LABEL_22:

            objc_autoreleasePoolPop(v16);
            v29 = 0;
            goto LABEL_23;
          }
        }

        objc_autoreleasePoolPop(v16);
      }

      v11 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = dsCopy;
  v23 = dsCopy;
  v24 = [v23 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    while (2)
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v35 + 1) + 8 * j);
        v16 = objc_autoreleasePoolPush();
        if (![(BRCServerZone *)self _markShareIDDead:v28])
        {
          asPrivateClientZone = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
          recordName = [v28 recordName];
          [asPrivateClientZone reportProblemWithType:5 recordName:recordName];

          goto LABEL_22;
        }

        objc_autoreleasePoolPop(v16);
      }

      v25 = [v23 countByEnumeratingWithState:&v35 objects:v44 count:16];
      v29 = 1;
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v29 = 1;
  }

LABEL_23:

  v31 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)allocateRanksWhenCaughtUp:(BOOL)up
{
  upCopy = up;
  v121 = *MEMORY[0x277D85DE8];
  [(BRCServerZone *)self _recomputeMinLastUsedTime];
  mangledID = [(BRCServerZone *)self mangledID];
  v5 = [BRCUserDefaults defaultsForMangledID:mangledID];
  maxSyncPathDepth = [v5 maxSyncPathDepth];

  serverState = [(BRCAccountSession *)self->_session serverState];
  nextRank = [serverState nextRank];

  state = [(BRCServerZone *)self state];
  if ((state & 4) != 0)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCServerZone allocateRanksWhenCaughtUp:];
    }

    upCopy = 1;
  }

  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v98 = "NO";
    if (upCopy)
    {
      v99 = "YES";
    }

    else
    {
      v99 = "NO";
    }

    *buf = 136315650;
    v116 = v99;
    if ((state & 4) != 0)
    {
      v98 = "YES";
    }

    v117 = 2080;
    *v118 = v98;
    *&v118[8] = 2112;
    *&v118[10] = v10;
    _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] caughtUp [%s] fullSync [%s]%@", buf, 0x20u);
  }

  v12 = (state >> 2) & 1;

  v105 = [[BRCPQLInjectionAllocateRankWhenCaughtUp alloc] initWithCaughtUp:upCopy fullSync:v12];
  v105 = [(BRCPQLConnection *)self->_db fetch:@"SELECT rowid, item_id, item_parent_id, item_state, item_type, version_ckinfo, item_favoriterank, item_lastusedtime, item_finder_tags IS NOT NULL, item_sharing_options   FROM server_items  WHERE zone_rowid = %@ AND item_rank IS NULL %@", self->_dbRowID, v105];
  if ([v105 next])
  {
    v102 = v12 | upCopy;
    v104 = v12 & upCopy;
    v14 = 0x2784FD000uLL;
    v103 = maxSyncPathDepth;
    v107 = maxSyncPathDepth;
    do
    {
      context = objc_autoreleasePoolPush();
      v111 = [v105 unsignedLongLongAtIndex:0];
      v15 = *(v14 + 2888);
      v16 = [v105 objectOfClass:objc_opt_class() atIndex:1];
      v17 = *(v14 + 2888);
      v18 = [v105 objectOfClass:objc_opt_class() atIndex:2];
      v19 = [v105 charAtIndex:3];
      v20 = [v105 charAtIndex:4];
      v21 = [v105 integerAtIndex:9];
      v112 = v16;
      if (v19 == 1)
      {
        if (![(BRCServerZone *)self isSharedZone])
        {
          v28 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT 1 FROM server_items WHERE zone_rowid = %@ AND item_parent_id = %@ AND item_state = 0 LIMIT 1", self->_dbRowID, v16];
          if ([v28 BOOLValue])
          {
            v29 = brc_bread_crumbs();
            v30 = brc_default_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v116 = v112;
              v117 = 2112;
              *v118 = v29;
              _os_log_debug_impl(&dword_223E7A000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] Server killed %@ but it still has live children%@", buf, 0x16u);
            }

            if (upCopy)
            {
              v112 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT COUNT(*) FROM server_items WHERE zone_rowid = %@ AND item_parent_id = %@ AND item_state = 0", self->_dbRowID, v112];

              v32 = brc_bread_crumbs();
              v33 = brc_default_log();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
              {
                uTF8String = [v112 UTF8String];
                intValue = [v112 intValue];
                *buf = 136315650;
                v116 = uTF8String;
                v117 = 1024;
                *v118 = intValue;
                *&v118[4] = 2112;
                *&v118[6] = v32;
                _os_log_fault_impl(&dword_223E7A000, v33, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Server killed %s but it still has %d live children%@", buf, 0x1Cu);
              }

              asPrivateClientZone = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
              itemIDString = [v112 itemIDString];
              v36 = [@"directory/" stringByAppendingString:itemIDString];
              [asPrivateClientZone reportProblemWithType:3 recordName:v36];

              maxSyncPathDepth = v107;
            }

            else
            {
              asPrivateClientZone = brc_bread_crumbs();
              itemIDString = brc_default_log();
              if (os_log_type_enabled(itemIDString, OS_LOG_TYPE_DEBUG))
              {
                intValue2 = [v28 intValue];
                *buf = 138412802;
                v116 = v112;
                v117 = 1024;
                *v118 = intValue2;
                *&v118[4] = 2112;
                *&v118[6] = asPrivateClientZone;
                _os_log_debug_impl(&dword_223E7A000, itemIDString, OS_LOG_TYPE_DEBUG, "[DEBUG] State inconsistent because %@ has %d live children%@", buf, 0x1Cu);
              }

              v112 = v28;
            }

            v103 = 0;
            v23 = -1;
            v28 = v112;
            goto LABEL_61;
          }

          v103 = 0;
          v23 = 0x7FFFFFFFLL;
LABEL_62:

          goto LABEL_63;
        }

        v22 = 0;
        v23 = 0x7FFFFFFFLL;
      }

      else
      {
        v24 = v21;
        if (v20 == 1)
        {
          v25 = [v105 dataAtIndex:5];

          if (!v25)
          {
            if (v104)
            {
              v45 = brc_bread_crumbs();
              v46 = brc_default_log();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v116 = v112;
                v117 = 2112;
                *v118 = v45;
                _os_log_fault_impl(&dword_223E7A000, v46, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: State inconsistent because %@ is a document with no version%@", buf, 0x16u);
              }

              asPrivateClientZone2 = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
              v48 = [*(v14 + 2888) structureRecordPrefixForItemType:1 targetZoneShared:0];
              itemIDString2 = [v112 itemIDString];
              v50 = [v48 stringByAppendingString:itemIDString2];
              [asPrivateClientZone2 reportProblemWithType:4 recordName:v50];

LABEL_42:
            }

            else
            {
              asPrivateClientZone2 = brc_bread_crumbs();
              v48 = brc_default_log();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                itemIDString2 = [v112 itemIDString];
                *buf = 138412546;
                v116 = itemIDString2;
                v117 = 2112;
                *v118 = asPrivateClientZone2;
                _os_log_debug_impl(&dword_223E7A000, v48, OS_LOG_TYPE_DEBUG, "[DEBUG] We haven't received a content record on %@ yet, delaying for now%@", buf, 0x16u);
                goto LABEL_42;
              }
            }

            [(BRCPQLConnection *)self->_db execute:@"UPDATE server_items SET item_type = 9, item_rank = NULL WHERE item_id = %@ AND zone_rowid = %@ AND item_type = 0", v18, self->_dbRowID];
            if (![(BRCPQLConnection *)self->_db changes])
            {
              v22 = 0;
              v23 = -3;
              goto LABEL_64;
            }

            v28 = brc_bread_crumbs();
            asPrivateClientZone = brc_default_log();
            if (os_log_type_enabled(asPrivateClientZone, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v116 = v18;
              v117 = 2112;
              *v118 = v28;
              _os_log_debug_impl(&dword_223E7A000, asPrivateClientZone, OS_LOG_TYPE_DEBUG, "[DEBUG] Updated %@ to be a directory fault because it has a new unapplied item%@", buf, 0x16u);
            }

            v103 = 0;
            v23 = -3;
LABEL_61:

            goto LABEL_62;
          }
        }

        if (([v18 isNonDesktopRoot] & 1) == 0)
        {
          v22 = [(BRCPQLConnection *)self->_db fetchWithSlowStatementRadar:@"<rdar://problem/37451020>" sql:@"WITH RECURSIVE item_parents (item_id, item_state, item_type, depth) AS(    SELECT item_id, item_state, item_type, 0       FROM server_items      WHERE zone_rowid = %@ AND item_id = %@  UNION ALL     SELECT p.item_parent_id, c.item_state, c.item_type, c.depth + 1       FROM server_items AS p INNER JOIN item_parents AS c USING (item_id)      WHERE p.zone_rowid = %@      LIMIT %u) SELECT item_state, depth, item_type FROM item_parents WHERE item_id_is_root(item_id) OR item_type = 4", self->_dbRowID, v18, self->_dbRowID, maxSyncPathDepth];
          if ([v22 next])
          {
            v37 = [v22 charAtIndex:2];
            if (v37 <= 0xA && ((1 << v37) & 0x611) != 0)
            {
              if (v19 || ![v22 unsignedIntegerAtIndex:0])
              {
                v23 = [v22 unsignedIntegerAtIndex:1];
              }

              else
              {
                if (upCopy)
                {
                  v60 = brc_bread_crumbs();
                  v61 = brc_default_log();
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
                  {
                    uTF8String2 = [v112 UTF8String];
                    uTF8String3 = [v18 UTF8String];
                    *buf = 136315650;
                    v116 = uTF8String2;
                    v117 = 2080;
                    *v118 = uTF8String3;
                    *&v118[8] = 2112;
                    *&v118[10] = v60;
                    _os_log_fault_impl(&dword_223E7A000, v61, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Server sent live item %s parented to dead item %s%@", buf, 0x20u);
                  }

                  asPrivateClientZone3 = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
                  v63 = [BRCItemID structureRecordPrefixForItemType:v20 targetZoneShared:0];
                  itemIDString3 = [v112 itemIDString];
                  v65 = [v63 stringByAppendingString:itemIDString3];
                  [asPrivateClientZone3 reportProblemWithType:1 recordName:v65];

                  v14 = 0x2784FD000;
                  v23 = -1;
                  goto LABEL_77;
                }

                v74 = brc_bread_crumbs();
                v75 = brc_default_log();
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v116 = v112;
                  v117 = 2112;
                  *v118 = v18;
                  *&v118[8] = 2112;
                  *&v118[10] = v74;
                  _os_log_impl(&dword_223E7A000, v75, OS_LOG_TYPE_DEFAULT, "[WARNING] Server sent us live item %@ parented to dead item %@ but we haven't completed full sync. Delaying apply%@", buf, 0x20u);
                }

                v23 = -1;
              }

LABEL_91:
              if ((v24 & 0x48) == 0 || (v24 & 4) != 0 || v23 < 0)
              {
                goto LABEL_64;
              }

              v103 = [(BRCPQLConnection *)self->_db fetch:@"WITH RECURSIVE item_parents (item_parent_id, item_sharing_options) AS(    SELECT item_parent_id, item_sharing_options       FROM server_items      WHERE zone_rowid = %@ AND item_id = %@  UNION ALL     SELECT p.item_parent_id, p.item_sharing_options       FROM server_items AS p INNER JOIN item_parents AS c      WHERE p.zone_rowid = %@        AND c.item_parent_id = p.item_id      LIMIT %u) SELECT 1 FROM item_parents WHERE (item_sharing_options & 4) != 0", self->_dbRowID, v18, self->_dbRowID, v103];

              if (([v103 next] & 1) == 0)
              {
                if (!v102)
                {
                  v28 = brc_bread_crumbs();
                  asPrivateClientZone = brc_default_log();
                  if (os_log_type_enabled(asPrivateClientZone, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412802;
                    v116 = v112;
                    v117 = 2112;
                    *v118 = v18;
                    *&v118[8] = 2112;
                    *&v118[10] = v28;
                    _os_log_debug_impl(&dword_223E7A000, asPrivateClientZone, OS_LOG_TYPE_DEBUG, "[DEBUG] Server sent us an item %@ which we couldn't locate share for, but we aren't caught up yet (parented to %@)%@", buf, 0x20u);
                  }

                  goto LABEL_46;
                }

                v101 = brc_bread_crumbs();
                v78 = brc_default_log();
                if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412802;
                  v116 = v112;
                  v117 = 2112;
                  *v118 = v18;
                  *&v118[8] = 2112;
                  *&v118[10] = v101;
                  _os_log_fault_impl(&dword_223E7A000, v78, OS_LOG_TYPE_FAULT, "[CRIT] Server sent us an item %@ which has non-root share options but isn't parented to a share (parented to %@)%@", buf, 0x20u);
                }

                if (![(BRCServerZone *)self _recoverFromCorruptShareOptionsWithItemType:v20 itemID:v112 parentID:v18 sharingOptions:v24])
                {
                  v28 = brc_bread_crumbs();
                  asPrivateClientZone = brc_default_log();
                  if (os_log_type_enabled(asPrivateClientZone, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138412802;
                    v116 = v112;
                    v117 = 2112;
                    *v118 = v18;
                    *&v118[8] = 2112;
                    *&v118[10] = v28;
                    _os_log_fault_impl(&dword_223E7A000, asPrivateClientZone, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Server sent us an item %@ which has non-root share options but isn't parented to a share (parented to %@)%@", buf, 0x20u);
                  }

LABEL_46:
                  v23 = -4;
                  goto LABEL_61;
                }
              }

LABEL_63:
              v22 = v103;
              goto LABEL_64;
            }

            v66 = brc_bread_crumbs();
            v67 = brc_default_log();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412802;
              v116 = v112;
              v117 = 2112;
              *v118 = v18;
              *&v118[8] = 2112;
              *&v118[10] = v66;
              _os_log_fault_impl(&dword_223E7A000, v67, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Server sent item %@ which is parented to a non-directory %@%@", buf, 0x20u);
            }

            asPrivateClientZone4 = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
            v69 = [BRCItemID structureRecordPrefixForItemType:v20 targetZoneShared:0];
            itemIDString4 = [v112 itemIDString];
            v71 = [v69 stringByAppendingString:itemIDString4];
            [asPrivateClientZone4 reportProblemWithType:8 recordName:v71];

            v14 = 0x2784FD000;
            v23 = -5;
LABEL_77:
            maxSyncPathDepth = v107;
            goto LABEL_91;
          }

          if ((state & 4) != 0)
          {
            v39 = brc_bread_crumbs();
            v40 = brc_default_log();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
            {
              uTF8String4 = [v112 UTF8String];
              *buf = 136315394;
              v116 = uTF8String4;
              v117 = 2112;
              *v118 = v39;
              _os_log_fault_impl(&dword_223E7A000, v40, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Server sent item %s which isn't a descendant of 'root'%@", buf, 0x16u);
            }

            asPrivateClientZone5 = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
            v42 = [*(v14 + 2888) structureRecordPrefixForItemType:v20 targetZoneShared:0];
            itemIDString5 = [v112 itemIDString];
            v44 = [v42 stringByAppendingString:itemIDString5];
            [asPrivateClientZone5 reportProblemWithType:2 recordName:v44];

            v14 = 0x2784FD000;
            v23 = -2;
            goto LABEL_77;
          }

          v51 = brc_bread_crumbs();
          v52 = brc_default_log();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v116 = v112;
            v117 = 2112;
            *v118 = v18;
            *&v118[8] = 2112;
            *&v118[10] = v51;
            _os_log_debug_impl(&dword_223E7A000, v52, OS_LOG_TYPE_DEBUG, "[DEBUG] Found orphan when we haven't completed initial sync item [%@] parent [%@].  Delaying apply for now%@", buf, 0x20u);
          }

          v53 = [v105 unsignedLongLongAtIndex:7];
          if ([v105 unsignedLongLongAtIndex:6])
          {
            v54 = brc_bread_crumbs();
            v55 = brc_default_log();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v116 = v54;
              v56 = v55;
              v57 = "[DEBUG] Orphan has favorite rank so fetching parent chain%@";
              goto LABEL_88;
            }

LABEL_89:

            v76 = [(BRCClientZone *)self->_clientZone db];
            serialQueue = [v76 serialQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __43__BRCServerZone_allocateRanksWhenCaughtUp___block_invoke;
            block[3] = &unk_2784FF478;
            block[4] = self;
            v114 = v18;
            dispatch_async(serialQueue, block);

LABEL_90:
            v23 = -2;
            v14 = 0x2784FD000;
            goto LABEL_91;
          }

          serverState2 = [(BRCAccountSession *)self->_session serverState];
          minLastUsedTime = [serverState2 minLastUsedTime];

          if (v53 && v53 >= minLastUsedTime)
          {
            v54 = brc_bread_crumbs();
            v55 = brc_default_log();
            if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_89;
            }

            *buf = 138412290;
            v116 = v54;
            v56 = v55;
            v57 = "[DEBUG] Orphan is recent, so fetching parent chain%@";
          }

          else
          {
            if (![v105 BOOLAtIndex:8])
            {
              goto LABEL_90;
            }

            v54 = brc_bread_crumbs();
            v55 = brc_default_log();
            if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_89;
            }

            *buf = 138412290;
            v116 = v54;
            v56 = v55;
            v57 = "[DEBUG] Orphan has finder tags so fetching parent chain%@";
          }

LABEL_88:
          _os_log_debug_impl(&dword_223E7A000, v56, OS_LOG_TYPE_DEBUG, v57, buf, 0xCu);
          goto LABEL_89;
        }

        v23 = 0;
        v22 = 0;
        if ((v24 & 0x48) == 0 || (v24 & 4) != 0)
        {
          goto LABEL_64;
        }

        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v116 = v112;
          v117 = 2112;
          *v118 = v26;
          _os_log_fault_impl(&dword_223E7A000, v27, OS_LOG_TYPE_FAULT, "[CRIT] Server sent us an item %@ which has non-root share options but should be a root share%@", buf, 0x16u);
        }

        if (![(BRCClientZone *)self->_clientZone isPrivateZone]|| ![(BRCServerZone *)self _recoverFromCorruptShareOptionsWithItemType:v20 itemID:v112 parentID:v18 sharingOptions:v24])
        {
          v28 = brc_bread_crumbs();
          asPrivateClientZone = brc_default_log();
          if (os_log_type_enabled(asPrivateClientZone, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v116 = v112;
            v117 = 2112;
            *v118 = v28;
            _os_log_fault_impl(&dword_223E7A000, asPrivateClientZone, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Server sent us an item %@ which has non-root share options but should be a root share%@", buf, 0x16u);
          }

          v103 = 0;
          goto LABEL_46;
        }

        v23 = 0;
        v22 = 0;
      }

LABEL_64:
      v58 = brc_bread_crumbs();
      v59 = brc_default_log();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        v116 = v111;
        v117 = 2048;
        *v118 = v23;
        *&v118[8] = 2112;
        *&v118[10] = v58;
        _os_log_debug_impl(&dword_223E7A000, v59, OS_LOG_TYPE_DEBUG, "[DEBUG] Setting rowid [%lld] item_depth [%lld]%@", buf, 0x20u);
      }

      [(BRCPQLConnection *)self->_db execute:@"UPDATE server_items SET item_depth = %lld WHERE rowid = %lld", v23, v111];
      objc_autoreleasePoolPop(context);
    }

    while (([v105 next] & 1) != 0);
  }

  v85 = [(BRCPQLConnection *)self->_db fetch:@"SELECT rowid   FROM server_items  WHERE zone_rowid = %@ AND item_rank IS NULL AND item_depth >= 0 ORDER BY item_depth ASC", self->_dbRowID];

  v86 = nextRank;
  if ([v85 next])
  {
    v87 = nextRank;
    do
    {
      v88 = [v85 unsignedLongLongAtIndex:0];
      v89 = brc_bread_crumbs();
      v90 = brc_default_log();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        v116 = v88;
        v117 = 2048;
        *v118 = v87;
        *&v118[8] = 2112;
        *&v118[10] = v89;
        _os_log_debug_impl(&dword_223E7A000, v90, OS_LOG_TYPE_DEBUG, "[DEBUG] Setting rowid [%lld] rank to [%lld]%@", buf, 0x20u);
      }

      v86 = v87 + 1;
      [(BRCPQLConnection *)self->_db execute:@"UPDATE server_items SET item_rank = %lld WHERE rowid = %lld", v87++, v88];
    }

    while (([v85 next] & 1) != 0);
  }

  v91 = brc_bread_crumbs();
  v92 = brc_default_log();
  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
  {
    mangledID2 = [(BRCServerZone *)self mangledID];
    *buf = 138413058;
    v116 = mangledID2;
    v117 = 2048;
    *v118 = nextRank;
    *&v118[8] = 2048;
    *&v118[10] = v86;
    v119 = 2112;
    v120 = v91;
    _os_log_debug_impl(&dword_223E7A000, v92, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Allocated ranks [%lld, %lld]%@", buf, 0x2Au);
  }

  serverState3 = [(BRCAccountSession *)self->_session serverState];
  [serverState3 setNextRank:v86];

  serverState4 = [(BRCAccountSession *)self->_session serverState];
  serverDB = [(BRCAccountSession *)self->_session serverDB];
  [serverState4 saveToDB:serverDB];

  v96 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)handleMovedZoneNames:(id)names
{
  v40 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  if ([namesCopy count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = namesCopy;
    v5 = namesCopy;
    v6 = [v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [objc_alloc(MEMORY[0x277CFAE60]) initWithZoneName:v10 ownerName:0];
        v13 = [(BRCAccountSession *)self->_session getOrCreateAppLibraryAndPrivateZonesIfNecessary:v12];

        if (!v13)
        {
          break;
        }

        objc_autoreleasePoolPop(v11);
        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v14 = v10;

      objc_autoreleasePoolPop(v11);
      if (!v14)
      {
        goto LABEL_15;
      }

      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [(BRCServerZone *)v14 handleMovedZoneNames:v15, v16];
      }
    }

    else
    {
LABEL_10:

LABEL_15:
      v14 = objc_opt_new();
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v17 = v5;
      v18 = [v17 countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v29;
        v21 = *MEMORY[0x277CFAD68];
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v28 + 1) + 8 * i);
            if ([v23 isEqualToString:v21])
            {
              v24 = brc_bread_crumbs();
              v25 = brc_default_log();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v37 = v24;
                _os_log_fault_impl(&dword_223E7A000, v25, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Can't CZM the clouddocs zone%@", buf, 0xCu);
              }
            }

            else
            {
              v24 = [(BRCAccountSession *)self->_session privateServerZoneByID:v23];
              if (v24)
              {
                [v14 addObject:v24];
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v28 objects:v38 count:16];
        }

        while (v19);
      }

      [(BRCAccountSession *)self->_session scheduleZoneMovesToCloudDocs:v14];
    }

    namesCopy = v27;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (unint64_t)didSyncDownRequestID:(unint64_t)d serverChangeToken:(id)token editedRecords:(id)records deletedRecordIDs:(id)ds deletedShareRecordIDs:(id)iDs allocRankZones:(id *)zones caughtUp:(BOOL)up pendingChanges:(id)self0
{
  v75 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  recordsCopy = records;
  dsCopy = ds;
  iDsCopy = iDs;
  changesCopy = changes;
  v19 = self->_session;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v47 = _os_activity_create(&dword_223E7A000, "server-zone/did-sync-down", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v47, &state);
  memset(v65, 0, sizeof(v65));
  __brc_create_section(0, "[BRCServerZone didSyncDownRequestID:serverChangeToken:editedRecords:deletedRecordIDs:deletedShareRecordIDs:allocRankZones:caughtUp:pendingChanges:]", 2013, 0, v65);
  v20 = brc_bread_crumbs();
  v21 = brc_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v38 = v65[0];
    v46 = [recordsCopy count];
    v39 = [dsCopy count];
    *buf = 134218754;
    *&buf[4] = v38;
    *&buf[12] = 2048;
    *&buf[14] = v46;
    *&buf[22] = 2048;
    v73 = v39;
    LOWORD(v74) = 2112;
    *(&v74 + 2) = v20;
    _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx saving sync-down batch (edits:%ld deletions:%ld)%@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v73 = __Block_byref_object_copy__20;
  *&v74 = __Block_byref_object_dispose__20;
  if (up)
  {
    v22 = changesCopy;
  }

  else
  {
    v22 = 0;
  }

  *(&v74 + 1) = v22;
  allValues = [(NSMutableDictionary *)self->_failedListDirectoryOperations allValues];
  [(NSMutableDictionary *)self->_failedListDirectoryOperations removeAllObjects];
  if (!up && [allValues count])
  {
    abc_report_panic_with_signature();
    [MEMORY[0x277CCACA8] stringWithFormat:@"We have failed streams even though we aren't caught up? Crashing to prevent state corruption"];
    objc_claimAutoreleasedReturnValue();
    v40 = brc_bread_crumbs();
    v41 = brc_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
      v42 = brc_append_system_info_to_message();
      __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_cold_3(v42, v40, v71, v41);
    }

    brc_append_system_info_to_message();
    uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
    __assert_rtn("[BRCServerZone didSyncDownRequestID:serverChangeToken:editedRecords:deletedRecordIDs:deletedShareRecordIDs:allocRankZones:caughtUp:pendingChanges:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/containers/BRCServerZone.m", 2020, uTF8String);
  }

  db = self->_db;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __148__BRCServerZone_didSyncDownRequestID_serverChangeToken_editedRecords_deletedRecordIDs_deletedShareRecordIDs_allocRankZones_caughtUp_pendingChanges___block_invoke;
  v51[3] = &unk_278502AE8;
  v45 = dsCopy;
  v52 = v45;
  v44 = recordsCopy;
  v53 = v44;
  selfCopy = self;
  dCopy = d;
  v25 = allValues;
  v55 = v25;
  v26 = iDsCopy;
  v56 = v26;
  zonesCopy = zones;
  upCopy = up;
  v27 = changesCopy;
  v57 = v27;
  v60 = buf;
  v61 = &v67;
  v28 = v19;
  v58 = v28;
  v29 = tokenCopy;
  v59 = v29;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __148__BRCServerZone_didSyncDownRequestID_serverChangeToken_editedRecords_deletedRecordIDs_deletedShareRecordIDs_allocRankZones_caughtUp_pendingChanges___block_invoke_255;
  v50[3] = &unk_278502B10;
  v50[4] = buf;
  [(BRCPQLConnection *)db performWithFlags:9 action:v51 whenFlushed:v50];
  if (v68[3])
  {
    v30 = MEMORY[0x277CFAE20];
    v31 = [(BRCServerZone *)self mangledID:v44];
    v32 = *MEMORY[0x277CFABF8];
    lastSyncDownDate = [(BRCServerChangeState *)self->_changeState lastSyncDownDate];
    distantPast = lastSyncDownDate;
    if (!lastSyncDownDate)
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    [v30 postContainerStatusChangeNotificationWithID:v31 key:v32 value:distantPast];
    if (!lastSyncDownDate)
    {
    }

    v35 = v68[3];
  }

  else
  {
    v35 = 0;
  }

  _Block_object_dispose(buf, 8);
  __brc_leave_section(v65);
  os_activity_scope_leave(&state);

  _Block_object_dispose(&v67, 8);
  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t __148__BRCServerZone_didSyncDownRequestID_serverChangeToken_editedRecords_deletedRecordIDs_deletedShareRecordIDs_allocRankZones_caughtUp_pendingChanges___block_invoke(uint64_t a1, void *a2)
{
  v146 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) count] && objc_msgSend(*(a1 + 40), "count"))
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) count];
      v7 = [*(a1 + 32) count];
      v8 = [*(a1 + 48) mangledID];
      *buf = 134218754;
      v139 = v6;
      v140 = 2048;
      v141 = v7;
      v142 = 2112;
      v143 = v8;
      v144 = 2112;
      v145 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] received %lu edited items and %lu deleted items from the cloud for %@\n%@", buf, 0x2Au);
    }
  }

  else
  {
    if ([*(a1 + 32) count])
    {
      v4 = brc_bread_crumbs();
      v5 = brc_default_log();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v9 = [*(a1 + 32) count];
      v10 = [*(a1 + 48) mangledID];
      *buf = 134218498;
      v139 = v9;
      v140 = 2112;
      v141 = v10;
      v142 = 2112;
      v143 = v4;
      v11 = "[NOTICE] received %lu deleted items from the cloud for %@\n%@";
    }

    else
    {
      v4 = brc_bread_crumbs();
      v5 = brc_default_log();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v12 = [*(a1 + 40) count];
      v10 = [*(a1 + 48) mangledID];
      *buf = 134218498;
      v139 = v12;
      v140 = 2112;
      v141 = v10;
      v142 = 2112;
      v143 = v4;
      v11 = "[NOTICE] received %lu edited items from the cloud for %@\n%@";
    }

    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, v11, buf, 0x20u);
  }

LABEL_11:

  v13 = (a1 + 48);
  v14 = *(a1 + 112);
  if (v14 < [*(*(a1 + 48) + 8) clientRequestID])
  {
    __148__BRCServerZone_didSyncDownRequestID_serverChangeToken_editedRecords_deletedRecordIDs_deletedShareRecordIDs_allocRankZones_caughtUp_pendingChanges___block_invoke_cold_1();
  }

  v118 = a1;
  if ([*(a1 + 56) count])
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(a1 + 56) count];
      *buf = 134218242;
      v139 = v17;
      v140 = 2112;
      v141 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Saving %lu failed directory list operations first%@", buf, 0x16u);
    }

    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v18 = *(a1 + 56);
    v19 = [v18 countByEnumeratingWithState:&v129 objects:v137 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v130;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v130 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v129 + 1) + 8 * i);
          v24 = [v23 pendingChangesStream];
          [*v13 _savePendingChangesEditedStructureRecordsIgnoringRecordIDs:0 zonesNeedingAllocRanks:0 pendingChangeStream:v24];
          [*v13 _savePendingChangesEditedContentRecordsIgnoringRecordIDs:0 zonesNeedingAllocRanks:0 pendingChangeStream:v24];
          [*v13 _savePendingChangesSharesIgnoringRecordIDs:0 zonesNeedingAllocRanks:0 pendingChangeStream:v24];
          v25 = [v23 serverTruthCallback];
          if (v25)
          {
            v26 = v25;
            v27 = [v24 lastError];

            if (!v27)
            {
              v28 = [v23 serverTruthCallback];
              v28[2]();
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v129 objects:v137 count:16];
      }

      while (v20);
    }

    a1 = v118;
  }

  v117 = v3;
  v120 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 32)];
  v119 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 64)];
  v29 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{*(a1 + 48), 0}];
  v30 = *(a1 + 120);
  if (v30)
  {
    objc_storeStrong(v30, v29);
  }

  v116 = v29;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v31 = [*(a1 + 40) objectEnumerator];
  v32 = [v31 countByEnumeratingWithState:&v125 objects:v136 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v126;
    v35 = *MEMORY[0x277CBC050];
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v126 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v37 = *(*(&v125 + 1) + 8 * j);
        v38 = [v37 recordType];
        v39 = [v38 isEqualToString:v35];

        v40 = [v37 recordID];
        if (v39)
        {
          [v119 addObject:v40];
        }

        else
        {
          [v120 addObject:v40];

          v40 = [v37 recordType];
          if (([v40 isEqualToString:@"content"] & 1) == 0)
          {
            v41 = [v37 recordType];
            v42 = [v41 isEqualToString:@"structure"];

            if (v42)
            {
              continue;
            }

            v40 = brc_bread_crumbs();
            v43 = brc_default_log();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v139 = v40;
              _os_log_fault_impl(&dword_223E7A000, v43, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: [record.recordType isEqualToString:kBRRecordTypeContent] || [record.recordType isEqualToString:kBRRecordTypeStructure]%@", buf, 0xCu);
            }
          }
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v125 objects:v136 count:16];
    }

    while (v33);
  }

  v44 = *(v118 + 128);
  v45 = [*(v118 + 48) state];
  if ((v44 & 1) == 0)
  {
    v47 = v116;
    v46 = v117;
    if ((v45 & 4) != 0)
    {
      v61 = brc_bread_crumbs();
      v62 = brc_default_log();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        __148__BRCServerZone_didSyncDownRequestID_serverChangeToken_editedRecords_deletedRecordIDs_deletedShareRecordIDs_allocRankZones_caughtUp_pendingChanges___block_invoke_cold_2(v13);
      }

      [*v13 clearStateBits:4];
    }

    goto LABEL_61;
  }

  v47 = v116;
  v46 = v117;
  if ((v45 & 4) != 0 || ([*v13 state] & 0x20) == 0 && !objc_msgSend(*v13, "isSharedZone"))
  {
LABEL_61:
    v63 = [*(*v13 + 6) directoryItemIDsCreatedLastSyncUp];
    v64 = *(*v13 + 11);
    *(*v13 + 11) = v63;

    goto LABEL_62;
  }

  v48 = brc_bread_crumbs();
  v49 = brc_default_log();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = *v13;
    *buf = 138412546;
    v139 = v50;
    v140 = 2112;
    v141 = v48;
    _os_log_impl(&dword_223E7A000, v49, OS_LOG_TYPE_DEFAULT, "[WARNING] Promoting %@ to full sync because we have completed full sync before and now we're caught up again%@", buf, 0x16u);
  }

  [*v13 setStateBits:4];
  v51 = [*v13 mangledID];
  v52 = [BRCUserDefaults defaultsForMangledID:v51];
  v53 = [v52 dbMigrationBatchSize];

  v54 = 0;
  do
  {
    v55 = [*v13 dbRowID];
    v56 = [v117 execute:{@"UPDATE server_items SET item_type = 0 WHERE item_type = 9 AND zone_rowid = %@ LIMIT %lld", v55, v53}];

    v54 += [v117 changes];
  }

  while (v56 && [v117 changes] >= v53);
  v57 = brc_bread_crumbs();
  v58 = brc_default_log();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    v110 = *v13;
    *buf = 134218498;
    v139 = v54;
    v140 = 2112;
    v141 = v110;
    v142 = 2112;
    v143 = v57;
    _os_log_debug_impl(&dword_223E7A000, v58, OS_LOG_TYPE_DEBUG, "[DEBUG] Updated %llu items to be normal directories in %@%@", buf, 0x20u);
  }

  v59 = [*(*v13 + 6) directoryItemIDsCreatedLastSyncUp];
  v60 = *(*v13 + 11);
  *(*v13 + 11) = v59;

  if ((v56 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_62:
  if (![*(v118 + 48) _savePendingChangesEditedStructureRecordsIgnoringRecordIDs:v120 zonesNeedingAllocRanks:v47 pendingChangeStream:*(v118 + 72)])
  {
    goto LABEL_90;
  }

  if (![*(v118 + 48) _savePendingChangesDeletedRecordIDsIgnoringRecordIDs:v120 pendingChangeStream:*(v118 + 72)])
  {
    goto LABEL_90;
  }

  v65 = *(v118 + 48);
  v66 = [*(v118 + 40) objectEnumerator];
  LODWORD(v65) = [v65 _saveEditedStructureRecords:v66 zonesNeedingAllocRanks:v47];

  if (!v65 || ![*(v118 + 48) _saveDeletedRecordIDs:*(v118 + 32)] || !objc_msgSend(*(v118 + 48), "_savePendingChangesEditedContentRecordsIgnoringRecordIDs:zonesNeedingAllocRanks:pendingChangeStream:", v120, v47, *(v118 + 72)) || (v67 = *(v118 + 48), objc_msgSend(*(v118 + 40), "objectEnumerator"), v68 = objc_claimAutoreleasedReturnValue(), LODWORD(v67) = objc_msgSend(v67, "_saveEditedContentRecords:zonesNeedingAllocRanks:", v68, v47), v68, !v67) || (objc_msgSend(*(v118 + 48), "_savePendingChangesSharesIgnoringRecordIDs:zonesNeedingAllocRanks:pendingChangeStream:", v119, v47, *(v118 + 72)) & 1) == 0)
  {
LABEL_90:
    v98 = *(*v13 + 11);
    *(*v13 + 11) = 0;

    goto LABEL_91;
  }

  v69 = *(v118 + 48);
  v70 = [*(v118 + 40) objectEnumerator];
  LOBYTE(v69) = [v69 _saveEditedShareRecords:v70 deletedShareRecordIDs:*(v118 + 64) zonesNeedingAllocRanks:v47];

  v71 = *(v118 + 48);
  v72 = *(v71 + 88);
  *(v71 + 88) = 0;

  if (v69)
  {
    v73 = brc_bread_crumbs();
    v74 = brc_default_log();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      v113 = *(v118 + 48);
      v114 = *(v118 + 112);
      v115 = prettyPrintServerChangeToken(*(v118 + 88), 0);
      *buf = 138413058;
      v139 = v113;
      v140 = 2048;
      v141 = v114;
      v142 = 2112;
      v143 = v115;
      v144 = 2112;
      v145 = v73;
      _os_log_debug_impl(&dword_223E7A000, v74, OS_LOG_TYPE_DEBUG, "[DEBUG] updating %@\nwith requestID:%llu token:%@%@", buf, 0x2Au);
    }

    v75 = brc_bread_crumbs();
    v76 = brc_default_log();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      __148__BRCServerZone_didSyncDownRequestID_serverChangeToken_editedRecords_deletedRecordIDs_deletedShareRecordIDs_allocRankZones_caughtUp_pendingChanges___block_invoke_cold_4();
    }

    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v77 = v47;
    v78 = [v77 countByEnumeratingWithState:&v121 objects:v135 count:16];
    if (v78)
    {
      v79 = v78;
      v80 = *v122;
      while (2)
      {
        for (k = 0; k != v79; ++k)
        {
          if (*v122 != v80)
          {
            objc_enumerationMutation(v77);
          }

          v82 = *(*(&v121 + 1) + 8 * k);
          if (*(v118 + 128) == 1)
          {
            v83 = [*(*(&v121 + 1) + 8 * k) dbRowID];
            v84 = [v82 allocateRanksWhenCaughtUp:{objc_msgSend(v83, "br_isEqualToNumber:", *(*v13 + 5))}];

            if ((v84 & 1) == 0)
            {
              goto LABEL_102;
            }
          }

          else if (([*(*(&v121 + 1) + 8 * k) allocateRanksWhenCaughtUp:0] & 1) == 0)
          {
LABEL_102:
            [*(*(*(v118 + 96) + 8) + 40) destroyDatabase];
            v111 = *(*(v118 + 96) + 8);
            v112 = *(v111 + 40);
            *(v111 + 40) = 0;

            v104 = 0;
            goto LABEL_100;
          }
        }

        v79 = [v77 countByEnumeratingWithState:&v121 objects:v135 count:16];
        if (v79)
        {
          continue;
        }

        break;
      }
    }

    [*(v118 + 48) checkIfFinishedFullSync];
    v85 = [*(v118 + 48) changeState];
    [v85 updateWithServerChangeToken:*(v118 + 88) clientRequestID:*(v118 + 112) caughtUp:*(v118 + 128)];

    v86 = [*(v118 + 48) changeState];
    v87 = [v86 lastSyncDownDate];
    v88 = [*(v118 + 80) serverState];
    [v88 setLastSyncDownDate:v87];

    v89 = [MEMORY[0x277CCA9A0] defaultCenter];
    v90 = *MEMORY[0x277CFAC10];
    v133 = *MEMORY[0x277CFAD08];
    v91 = [*(v118 + 48) changeState];
    v92 = [v91 lastSyncDownDate];
    v134 = v92;
    v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
    [v89 postNotificationName:v90 object:0 userInfo:v93];

    v94 = [*(v118 + 80) serverState];
    v95 = [*(v118 + 48) db];
    [v94 saveToDB:v95];

    if ([*(*(v118 + 48) + 96) saveServerZone:?])
    {
      v96 = [*(v118 + 80) serverState];
      *(*(*(v118 + 104) + 8) + 24) = [v96 nextRank];

      objc_storeStrong((*(*(v118 + 96) + 8) + 40), *(v118 + 72));
      if (!*(*(*(v118 + 96) + 8) + 40))
      {
        v104 = 1;
        goto LABEL_101;
      }

      v77 = brc_bread_crumbs();
      v97 = brc_default_log();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
      {
        __148__BRCServerZone_didSyncDownRequestID_serverChangeToken_editedRecords_deletedRecordIDs_deletedShareRecordIDs_allocRankZones_caughtUp_pendingChanges___block_invoke_cold_5();
      }

      goto LABEL_95;
    }

LABEL_99:
    [*(*(*(v118 + 96) + 8) + 40) destroyDatabase];
    v104 = 0;
    v107 = *(*(v118 + 96) + 8);
    v77 = *(v107 + 40);
    *(v107 + 40) = 0;
    goto LABEL_100;
  }

LABEL_91:
  v99 = [*(*(*(v118 + 96) + 8) + 40) lastError];

  if (!v99)
  {
    v105 = brc_bread_crumbs();
    v106 = brc_default_log();
    if (os_log_type_enabled(v106, 0x90u))
    {
      __148__BRCServerZone_didSyncDownRequestID_serverChangeToken_editedRecords_deletedRecordIDs_deletedShareRecordIDs_allocRankZones_caughtUp_pendingChanges___block_invoke_cold_3(v46, v105, v106);
    }

    goto LABEL_99;
  }

  v100 = brc_bread_crumbs();
  v101 = brc_default_log();
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v139 = v100;
    _os_log_impl(&dword_223E7A000, v101, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed enumerating the changes stream but don't broken structure%@", buf, 0xCu);
  }

  [*(*(*(v118 + 96) + 8) + 40) destroyDatabase];
  v102 = *(*(v118 + 96) + 8);
  v103 = *(v102 + 40);
  *(v102 + 40) = 0;

  v77 = [*(v118 + 80) serverState];
  *(*(*(v118 + 104) + 8) + 24) = [v77 nextRank];
LABEL_95:
  v104 = 1;
LABEL_100:

LABEL_101:
  v108 = *MEMORY[0x277D85DE8];
  return v104;
}

void __148__BRCServerZone_didSyncDownRequestID_serverChangeToken_editedRecords_deletedRecordIDs_deletedShareRecordIDs_allocRankZones_caughtUp_pendingChanges___block_invoke_255(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) destroyDatabase];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (unint64_t)didListDirectoryChangesWithResults:(id)results pendingFetchChanges:(id)changes
{
  v58 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  changesCopy = changes;
  if (([(BRCPQLConnection *)self->_db isInTransaction]& 1) == 0)
  {
    [BRCServerZone didListDirectoryChangesWithResults:pendingFetchChanges:];
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(resultsCopy, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = resultsCopy;
  v10 = [v9 countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(v9);
        }

        recordID = [*(*(&v46 + 1) + 8 * i) recordID];
        [v8 addObject:recordID];
      }

      v11 = [v9 countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v11);
  }

  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v9 count];
    mangledID = [(BRCServerZone *)self mangledID];
    *buf = 134218498;
    v52 = v17;
    v53 = 2112;
    v54 = mangledID;
    v55 = 2112;
    v56 = v15;
    _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[NOTICE] listed %lu edited items from the cloud for %@\n%@", buf, 0x20u);
  }

  v19 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{self, 0}];
  if (![(BRCServerZone *)self _savePendingChangesEditedStructureRecordsIgnoringRecordIDs:v8 zonesNeedingAllocRanks:v19 pendingChangeStream:changesCopy])
  {
    goto LABEL_19;
  }

  if (![(BRCServerZone *)self _savePendingChangesDeletedRecordIDsIgnoringRecordIDs:v8 pendingChangeStream:changesCopy])
  {
    goto LABEL_19;
  }

  objectEnumerator = [v9 objectEnumerator];
  v21 = [(BRCServerZone *)self _saveEditedStructureRecords:objectEnumerator zonesNeedingAllocRanks:v19];

  if (!v21)
  {
    goto LABEL_19;
  }

  if (-[BRCServerZone _savePendingChangesEditedContentRecordsIgnoringRecordIDs:zonesNeedingAllocRanks:pendingChangeStream:](self, "_savePendingChangesEditedContentRecordsIgnoringRecordIDs:zonesNeedingAllocRanks:pendingChangeStream:", v8, v19, changesCopy) && ([v9 objectEnumerator], v22 = objc_claimAutoreleasedReturnValue(), v23 = -[BRCServerZone _saveEditedContentRecords:zonesNeedingAllocRanks:](self, "_saveEditedContentRecords:zonesNeedingAllocRanks:", v22, v19), v22, v23) && -[BRCServerZone _savePendingChangesSharesIgnoringRecordIDs:zonesNeedingAllocRanks:pendingChangeStream:](self, "_savePendingChangesSharesIgnoringRecordIDs:zonesNeedingAllocRanks:pendingChangeStream:", v8, v19, changesCopy))
  {
    objectEnumerator2 = [v9 objectEnumerator];
    v25 = [(BRCServerZone *)self _saveEditedShareRecords:objectEnumerator2 deletedShareRecordIDs:0 zonesNeedingAllocRanks:v19];
  }

  else
  {
LABEL_19:
    v25 = 0;
  }

  v40 = v9;
  selfCopy = self;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = v19;
  v27 = [v26 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v43;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v42 + 1) + 8 * j);
        if (([v31 state] & 4) != 0)
        {
          v32 = brc_bread_crumbs();
          v33 = brc_default_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v52 = v31;
            v53 = 2112;
            v54 = v32;
            _os_log_debug_impl(&dword_223E7A000, v33, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ is no longer full sync because of a non delta sync operation%@", buf, 0x16u);
          }

          [v31 clearStateBits:4];
        }

        if (v25)
        {
          v25 = [v31 allocateRanksWhenCaughtUp:0];
        }

        else
        {
          v25 = 0;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v28);
  }

  v34 = brc_bread_crumbs();
  v35 = brc_default_log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    [BRCServerZone didListDirectoryChangesWithResults:pendingFetchChanges:];
  }

  serverState = [(BRCAccountSession *)selfCopy->_session serverState];
  nextRank = [serverState nextRank];

  if (v25)
  {
    [(BRCServerZone *)selfCopy checkIfFinishedFullSync];
    if (nextRank && ![(BRCReadWriteServerDatabaseFacade *)selfCopy->_dbFacade saveServerZone:selfCopy])
    {
      nextRank = 0;
    }
  }

  else
  {
    nextRank = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return nextRank;
}

- (void)failedListingDirectoryChanges:(id)changes serverTruthCallback:(id)callback clientTruthCallback:(id)truthCallback folderItemID:(id)d
{
  failedListDirectoryOperations = self->_failedListDirectoryOperations;
  dCopy = d;
  truthCallbackCopy = truthCallback;
  callbackCopy = callback;
  changesCopy = changes;
  v15 = [(NSMutableDictionary *)failedListDirectoryOperations objectForKeyedSubscript:dCopy];

  if (v15)
  {
    [BRCServerZone failedListingDirectoryChanges:serverTruthCallback:clientTruthCallback:folderItemID:];
  }

  v16 = [[BRCFailedListSaveObject alloc] initWithPendingChangesStream:changesCopy serverTruthCallback:callbackCopy clientTruthCallback:truthCallbackCopy];

  [(NSMutableDictionary *)self->_failedListDirectoryOperations setObject:v16 forKeyedSubscript:dCopy];
}

- (void)_collectTombstoneForRank:(unint64_t)rank
{
  rank = [(PQLConnection *)self->_db itemIDWithSQL:@"SELECT item_id FROM server_items WHERE zone_rowid = %@ AND item_rank = %lld AND item_state = 1", self->_dbRowID, rank];
  if (rank)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCServerZone _collectTombstoneForRank:];
    }

    if ([(BRCServerZone *)self isPrivateZone])
    {
      db = self->_db;
      clientZone = [(BRCServerZone *)self clientZone];
      rootItemID = [clientZone rootItemID];
      [(BRCPQLConnection *)db execute:@"UPDATE server_items SET item_parent_id = %@ WHERE zone_rowid = %@ AND item_parent_id = %@", rootItemID, self->_dbRowID, rank];
    }

    [(BRCPQLConnection *)self->_db execute:@"DELETE FROM server_items WHERE zone_rowid = %@ AND item_id = %@", self->_dbRowID, rank];
    [(BRCReadWriteServerDatabaseFacade *)self->_dbFacade deleteParticipantsForSharedItemID:rank zoneRowID:self->_dbRowID];
    v10 = +[BRCUploadConstraintChecker defaultChecker];
    [v10 removeItemWithItemID:rank];
  }
}

- (void)collectTombstoneRanks:(id)ranks
{
  ranksCopy = ranks;
  serialQueue = [(BRCPQLConnection *)self->_db serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__BRCServerZone_collectTombstoneRanks___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = ranksCopy;
  v6 = ranksCopy;
  dispatch_async(serialQueue, v7);
}

void __39__BRCServerZone_collectTombstoneRanks___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 48) activated])
  {
    memset(v14, 0, sizeof(v14));
    __brc_create_section(0, "[BRCServerZone collectTombstoneRanks:]_block_invoke", 2267, 0, v14);
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v8 = v14[0];
      v9 = [*(a1 + 40) count];
      v10 = *(*(a1 + 32) + 32);
      *buf = 134218754;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v2;
      _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Starting to GC %ld server tombstones in %@%@", buf, 0x2Au);
    }

    v4 = *(*(a1 + 32) + 24);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__BRCServerZone_collectTombstoneRanks___block_invoke_269;
    v11[3] = &unk_278500FA8;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    [v4 groupInTransaction:v11];
    [*(*(a1 + 32) + 48) didGCTombstoneRanks:*(a1 + 40)];

    __brc_leave_section(v14);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __39__BRCServerZone_collectTombstoneRanks___block_invoke_269(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__BRCServerZone_collectTombstoneRanks___block_invoke_2;
  v3[3] = &unk_278502B38;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  [v1 enumerateIndexesUsingBlock:v3];
  return 1;
}

- (BOOL)resetServerTruthAndDestroyZone:(BOOL)zone
{
  selfCopy = self;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  v5 = selfCopy->_dbRowID;
  db = selfCopy->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__BRCServerZone_resetServerTruthAndDestroyZone___block_invoke;
  v9[3] = &unk_278502B60;
  v9[4] = selfCopy;
  v10 = v5;
  zoneCopy = zone;
  v7 = v5;
  LOBYTE(selfCopy) = [(BRCPQLConnection *)db performWithFlags:26 action:v9];

  return selfCopy;
}

uint64_t __48__BRCServerZone_resetServerTruthAndDestroyZone___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) mangledID];
  v5 = [BRCUserDefaults defaultsForMangledID:v4];
  v6 = [v5 dbMigrationBatchSize];

  do
  {
    if (([v3 execute:{@"DELETE FROM server_items WHERE zone_rowid = %@ LIMIT %lld", *(a1 + 40), v6}] & 1) == 0)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, 0x90u))
      {
        v23 = *(a1 + 40);
        v21 = [v3 lastError];
        *buf = 138412802;
        v25 = v23;
        v26 = 2112;
        v27 = v21;
        v28 = 2112;
        v29 = v13;
        v22 = "[ERROR] failed purging zone %@ - %@%@";
LABEL_21:
        _os_log_error_impl(&dword_223E7A000, v14, 0x90u, v22, buf, 0x20u);
      }

LABEL_12:

      v15 = 0;
      goto LABEL_17;
    }
  }

  while ([v3 changes] >= v6);
  v7 = [*(a1 + 32) mangledID];
  v8 = [BRCUserDefaults defaultsForMangledID:v7];
  v9 = [v8 requestForAccess];

  if (v9)
  {
    while (([*(*(a1 + 32) + 96) deleteParticipantsForZoneRowID:*(a1 + 40) batchSize:v6] & 1) != 0)
    {
      if ([v3 changes] < v6)
      {
        goto LABEL_7;
      }
    }

    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      v20 = *(a1 + 40);
      v21 = [v3 lastError];
      *buf = 138412802;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      v28 = 2112;
      v29 = v13;
      v22 = "[ERROR] failed purging participants for zone %@ - %@%@";
      goto LABEL_21;
    }

    goto LABEL_12;
  }

LABEL_7:
  if (*(a1 + 48) == 1)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __48__BRCServerZone_resetServerTruthAndDestroyZone___block_invoke_cold_2();
    }

    v12 = [v3 execute:{@"DELETE FROM server_zones WHERE rowid = %@", *(a1 + 40)}];
  }

  else
  {
    [*(*(a1 + 32) + 8) forgetChangeTokens];
    [*(*(a1 + 32) + 8) forgetClientRequestID];
    [*(a1 + 32) clearStateBits:60];
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __48__BRCServerZone_resetServerTruthAndDestroyZone___block_invoke_cold_1();
    }

    v12 = [*(*(a1 + 32) + 96) saveServerZone:?];
  }

  v15 = v12;
LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)deleteAllContentsOnServerWithCompletionBlock:(id)block
{
  blockCopy = block;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [BRCServerZone deleteAllContentsOnServerWithCompletionBlock:];
  }

  v6 = dispatch_get_global_queue(0, 0);
  dispatch_async(v6, blockCopy);
}

- (BOOL)shouldRecreateServerZoneAfterError:(id)error
{
  errorCopy = error;
  if ([(BRCServerZone *)self isPrivateZone]&& ![(BRCServerZone *)self hasFetchedServerZoneState])
  {
    brc_isCloudKitErrorImplyingZoneNeedsCreation = [errorCopy brc_isCloudKitErrorImplyingZoneNeedsCreation];
  }

  else
  {
    brc_isCloudKitErrorImplyingZoneNeedsCreation = 0;
  }

  return brc_isCloudKitErrorImplyingZoneNeedsCreation;
}

- (BOOL)hasFetchedServerZoneState
{
  changeState = [(BRCServerZone *)self changeState];
  objc_sync_enter(changeState);
  changeToken = [changeState changeToken];
  v4 = changeToken != 0;

  objc_sync_exit(changeState);
  return v4;
}

- (void)forceMoveToCloudDocs
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Can't move clouddocs to itself%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __37__BRCServerZone_forceMoveToCloudDocs__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v3 = [v2 serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__BRCServerZone_forceMoveToCloudDocs__block_invoke_2;
  block[3] = &unk_278502B88;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  dispatch_sync(v3, block);

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v4 = [*(*(a1 + 48) + 24) serialQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __37__BRCServerZone_forceMoveToCloudDocs__block_invoke_3;
    v5[3] = &unk_2784FF450;
    v5[4] = *(a1 + 48);
    dispatch_sync(v4, v5);
  }
}

void __37__BRCServerZone_forceMoveToCloudDocs__block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = [*(a1[5] + 16) cloudDocsClientZone];
  LOBYTE(v2) = [v2 _crossZoneMoveDocumentsToZone:v3];

  if ((v2 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }
}

- (BOOL)saveQueryRecords:(id)records zonesNeedingAllocRanks:(id)ranks error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  ranksCopy = ranks;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = recordsCopy;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    v14 = 1;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v14 = v14 && [(BRCServerZone *)self _saveEditedRecord:*(*(&v18 + 1) + 8 * i) zonesNeedingAllocRanks:ranksCopy error:error, v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)setStateBits:(unsigned int)bits
{
  v30 = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->_db assertOnQueue];
  state = self->_state;
  bitsCopy = bits | 0x38;
  if ((bits & 4) == 0)
  {
    bitsCopy = bits;
  }

  v7 = state | bitsCopy;
  self->_state = state | bitsCopy;
  if ((state | bitsCopy) != state)
  {
    [(BRCServerZone *)self setNeedsSave:1];
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      mangledID = [(BRCServerZone *)self mangledID];
      v19 = BRCPrettyPrintBitmapWithContext(state, &server_zone_state_entries, 0);
      v20 = BRCPrettyPrintBitmapWithContext(self->_state, &server_zone_state_entries, 0);
      *buf = 138413058;
      v23 = mangledID;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ server state changed, %@ -> %@%@", buf, 0x2Au);
    }

    if (((v7 ^ state) & 0x18) != 0 && (~self->_state & 0x18) == 0)
    {
      v10 = [(BRCClientZone *)self->_clientZone db];
      serialQueue = [v10 serialQueue];

      if (serialQueue)
      {
        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [BRCServerZone setStateBits:];
        }

        v14 = [(BRCClientZone *)self->_clientZone db];
        serialQueue2 = [v14 serialQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __30__BRCServerZone_setStateBits___block_invoke;
        block[3] = &unk_2784FF450;
        block[4] = self;
        dispatch_async(serialQueue2, block);
      }
    }
  }

  result = v7 != state;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void __30__BRCServerZone_setStateBits___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isPrivateZone] && (objc_msgSend(*(*(a1 + 32) + 48), "isSyncBlocked") & 1) == 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = [*(*(a1 + 32) + 48) asPrivateClientZone];
    v3 = [v2 appLibraries];

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
          [v8 fetchPristineness];
          [v8 scheduleFullLibraryContentsFetch];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  v9 = [*(*(a1 + 32) + 16) fsDownloader];
  [v9 rescheduleJobsPendingRecentsAndFavoritesFetchInZone:*(a1 + 32)];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)clearStateBits:(unsigned int)bits
{
  v20 = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->_db assertOnQueue];
  state = self->_state;
  self->_state = state & ~bits;
  if ((state & bits) != 0)
  {
    [(BRCServerZone *)self setNeedsSave:1];
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      mangledID = [(BRCServerZone *)self mangledID];
      v10 = BRCPrettyPrintBitmapWithContext(state, &server_zone_state_entries, 0);
      v11 = BRCPrettyPrintBitmapWithContext(self->_state, &server_zone_state_entries, 0);
      v12 = 138413058;
      v13 = mangledID;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v6;
      _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ server state changed, %@ -> %@%@", &v12, 0x2Au);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)resetFetchRecentsAndFavoritesRetriesLeft
{
  [(BRCPQLConnection *)self->_db assertOnQueue];
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  self->_fetchRecentsAndFavoritesRetriesLeft = [v3 fetchRecentsAndFavoritesMaxRetries];

  [(BRCServerZone *)self setNeedsSave:1];
}

- (void)decrementFetchRecentsAndFavoritesRetriesLeft
{
  [(BRCPQLConnection *)self->_db assertOnQueue];
  fetchRecentsAndFavoritesRetriesLeft = self->_fetchRecentsAndFavoritesRetriesLeft;
  if (fetchRecentsAndFavoritesRetriesLeft)
  {
    self->_fetchRecentsAndFavoritesRetriesLeft = fetchRecentsAndFavoritesRetriesLeft - 1;

    [(BRCServerZone *)self setNeedsSave:1];
  }
}

- (void)addForegroundClient:(id)client
{
  clientCopy = client;
  metadataSyncContext = [(BRCServerZone *)self metadataSyncContext];
  [metadataSyncContext addForegroundClient:clientCopy];
}

- (void)removeForegroundClient:(id)client
{
  clientCopy = client;
  metadataSyncContext = [(BRCServerZone *)self metadataSyncContext];
  [metadataSyncContext removeForegroundClient:clientCopy];
}

- (id)itemByItemID:(id)d db:(id)db
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__BRCServerZone_itemByItemID_db___block_invoke;
  v6[3] = &unk_2784FF910;
  v6[4] = self;
  v4 = [db fetchObject:v6 sql:{@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE item_id = %@ AND zone_rowid = %@", d, self->_dbRowID}];

  return v4;
}

id __33__BRCServerZone_itemByItemID_db___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(*(a1 + 32) + 16) newServerItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)itemsEnumeratorWithDB:(id)b
{
  v4 = [b fetch:{@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE zone_rowid = %@", self->_dbRowID}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__BRCServerZone_itemsEnumeratorWithDB___block_invoke;
  v7[3] = &unk_2784FF910;
  v7[4] = self;
  v5 = [v4 enumerateObjects:v7];

  return v5;
}

id __39__BRCServerZone_itemsEnumeratorWithDB___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(*(a1 + 32) + 16) newServerItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)directDirectoryChildItemIDsOfParentEnumerator:(id)enumerator
{
  enumerator = [(BRCPQLConnection *)self->_db fetch:@"SELECT item_id FROM server_items WHERE zone_rowid = %@   AND item_parent_id = %@   AND item_type = 0", self->_dbRowID, enumerator];
  v4 = [enumerator enumerateObjectsOfClass:objc_opt_class()];

  return v4;
}

- (BOOL)dumpStatusToContext:(id)context error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v44 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 1;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__20;
  v37 = __Block_byref_object_dispose__20;
  v38 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __43__BRCServerZone_dumpStatusToContext_error___block_invoke;
  v25[3] = &unk_278502C00;
  v30 = v39;
  v8 = contextCopy;
  v26 = v8;
  selfCopy = self;
  v9 = v7;
  v28 = v9;
  v29 = 0;
  v31 = &v33;
  v32 = &v41;
  v42[3] = v25;
  if (error)
  {
    *error = v34[5];
  }

  if ([(BRCServerZone *)self isPrivateZone])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    clientZone = [(BRCServerZone *)self clientZone];
    asPrivateClientZone = [clientZone asPrivateClientZone];
    appLibraries = [asPrivateClientZone appLibraries];

    v13 = [appLibraries countByEnumeratingWithState:&v21 objects:v45 count:16];
    if (v13)
    {
      v14 = *v22;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(appLibraries);
          }

          v16 = v42[3];
          rootItemID = [*(*(&v21 + 1) + 8 * i) rootItemID];
          LOBYTE(v16) = (*(v16 + 16))(v16, rootItemID, 0, @"/", error);

          if ((v16 & 1) == 0)
          {
            v18 = 0;
            goto LABEL_15;
          }
        }

        v13 = [appLibraries countByEnumeratingWithState:&v21 objects:v45 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v18 = 1;
LABEL_15:
  }

  else
  {
    v18 = 1;
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v41, 8);

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __43__BRCServerZone_dumpStatusToContext_error___block_invoke(uint64_t a1, void *a2, int a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a4;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 1;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __43__BRCServerZone_dumpStatusToContext_error___block_invoke_2;
  v40[3] = &unk_278502BD8;
  v43 = *(a1 + 64);
  v41 = *(a1 + 32);
  v44 = v45;
  v36 = v8;
  v42 = v36;
  v38 = MEMORY[0x22AA4A310](v40);
  v9 = [*(a1 + 32) db];
  v10 = [v9 fetch:{@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count, rowid      FROM server_items    WHERE zone_rowid = %@ AND item_parent_id = %@  AND NOT item_id_is_documents(item_id) ORDER BY item_filename", *(*(a1 + 40) + 40), v7}];
  v34 = v7;

  do
  {
    v11 = [v10 next];
    if (!v11)
    {
      break;
    }

    v12 = objc_autoreleasePoolPush();
    if ([*(a1 + 32) isCancelled])
    {
      v13 = 1;
    }

    else
    {
      v14 = [v10 integerAtIndex:44];
      if ([*(a1 + 48) containsIndex:v14])
      {
        v38[2]();
        [*(a1 + 32) pushIndentation];
        v15 = *(a1 + 32);
        v16 = [v10 objectOfClass:objc_opt_class() atIndex:4];
        v17 = [BRCDumpContext stringFromItemID:v16 context:*(a1 + 32)];
        [v15 writeLineWithFormat:@"ERROR: item ID %@ seen twice", v17];

        [*(a1 + 32) popIndentation];
        v13 = 2;
      }

      else
      {
        [*(a1 + 48) addIndex:v14];
        v18 = *(*(a1 + 40) + 16);
        v19 = *(*(a1 + 72) + 8);
        obj = *(v19 + 40);
        v20 = [v18 newServerItemFromPQLResultSet:v10 error:&obj];
        objc_storeStrong((v19 + 40), obj);
        if (v20)
        {
          v21 = [*(*(a1 + 40) + 16) applyScheduler];
          v22 = [v21 descriptionForServerItem:v20 context:*(a1 + 32)];

          if (v22)
          {
            v38[2]();
            [*(a1 + 32) pushIndentation];
            v23 = *(a1 + 32);
            v24 = [v20 descriptionWithContext:v23];
            [v23 writeLineWithFormat:@"%@", v24];

            [*(a1 + 32) writeLineWithFormat:@"> apply{%@}", v22];
            [*(a1 + 32) popIndentation];
          }

          v25 = [v20 isDirectory] ^ 1;
          if (a3 > 99)
          {
            LOBYTE(v25) = 1;
          }

          if (v25)
          {
            goto LABEL_15;
          }

          v26 = *(a1 + 56);
          v27 = [v20 itemID];
          LOBYTE(v26) = [v26 containsObject:v27];

          if (v26)
          {
            goto LABEL_15;
          }

          v28 = *(*(*(a1 + 80) + 8) + 24);
          v35 = [v20 itemID];
          v29 = [v20 st];
          v30 = [v29 displayName];
          v31 = [v36 stringByAppendingPathComponent:v30];
          LODWORD(v28) = (*(v28 + 16))(v28, v35, (a3 + 1), v31, a5);

          if (v28)
          {
LABEL_15:
            v13 = 0;
          }

          else
          {
            v13 = 1;
          }
        }

        else
        {
          v13 = 1;
        }
      }
    }

    objc_autoreleasePoolPop(v12);
  }

  while ((v13 | 2) == 2);

  _Block_object_dispose(v45, 8);
  return v11 ^ 1u;
}

uint64_t __43__BRCServerZone_dumpStatusToContext_error___block_invoke_2(uint64_t result)
{
  v1 = result;
  if (*(*(*(result + 48) + 8) + 24) == 1)
  {
    [*(result + 32) writeLineWithFormat:@"Needs Apply Changes:"];
    result = [*(v1 + 32) writeLineWithFormat:@"-------------------"];
    *(*(*(v1 + 48) + 8) + 24) = 0;
  }

  if (*(*(*(v1 + 56) + 8) + 24) == 1)
  {
    result = [*(v1 + 32) writeLineWithFormat:@"Under %@", *(v1 + 40)];
    *(*(*(v1 + 56) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)dumpTablesToContext:(id)context includeAllItems:(BOOL)items error:(id *)error
{
  itemsCopy = items;
  v85 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__20;
  v82 = __Block_byref_object_dispose__20;
  v83 = 0;
  v8 = [(BRCServerZone *)self descriptionWithContext:contextCopy];
  [contextCopy writeLineWithFormat:@"server items (%@)", v8];

  [contextCopy writeLineWithFormat:@"============"];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2050000000;
  v77 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __59__BRCServerZone_dumpTablesToContext_includeAllItems_error___block_invoke;
  v62[3] = &unk_278502C28;
  v9 = contextCopy;
  v63 = v9;
  selfCopy = self;
  v66 = &v70;
  v69 = itemsCopy;
  v51 = v7;
  v65 = v51;
  v67 = &v78;
  v68 = &v74;
  v75[3] = v62;
  clientZone = [(BRCServerZone *)self clientZone];
  LODWORD(v8) = [clientZone isPrivateZone];

  if (v8)
  {
    clientZone2 = [(BRCServerZone *)self clientZone];
    asPrivateClientZone = [clientZone2 asPrivateClientZone];
    appLibraries = [asPrivateClientZone appLibraries];
    v14 = [appLibraries count];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    clientZone3 = [(BRCServerZone *)self clientZone];
    asPrivateClientZone2 = [clientZone3 asPrivateClientZone];
    obj = [asPrivateClientZone2 appLibraries];

    v17 = [obj countByEnumeratingWithState:&v58 objects:v84 count:16];
    if (v17)
    {
      v18 = *v59;
      v19 = 1;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v59 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v58 + 1) + 8 * i);
          if (v14 >= 2)
          {
            if ((v19 & 1) == 0)
            {
              [v9 writeLineWithFormat:&stru_2837504F0];
            }

            logName = [v21 logName];
            dbRowID = [v21 dbRowID];
            [v9 writeLineWithFormat:@"----------------------%@[%@]----------------------", logName, dbRowID];

            v19 = 0;
          }

          *(v71 + 6) = 0;
          v24 = v75[3];
          rootItemID = [v21 rootItemID];
          (*(v24 + 16))(v24, rootItemID, 0, error);

          if ([v9 isCancelled])
          {
            v45 = 0;
            goto LABEL_36;
          }
        }

        v17 = [obj countByEnumeratingWithState:&v58 objects:v84 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }
  }

  [v9 writeLineWithFormat:&stru_2837504F0];
  v26 = [v9 db];
  obj = [v26 numberWithSQL:{@"SELECT COUNT(*) FROM server_items WHERE zone_rowid = %@", self->_dbRowID}];

  unsignedIntegerValue = [obj unsignedIntegerValue];
  if (unsignedIntegerValue == [v51 count])
  {
    v28 = 0;
  }

  else
  {
    if (![(BRCServerZone *)self isSharedZone])
    {
      [v9 writeLineWithFormat:@"ORPHANED ITEMS:"];
    }

    v29 = [v9 db];
    dbRowID = self->_dbRowID;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __59__BRCServerZone_dumpTablesToContext_includeAllItems_error___block_invoke_2;
    v56[3] = &unk_2784FF870;
    v57 = v51;
    v31 = MEMORY[0x22AA4A310](v56);
    v28 = [v29 fetch:{@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count, validation_key(content_boundary_key) FROM server_items WHERE zone_rowid = %@ AND call_block(%@, rowid)", dbRowID, v31}];

    *(v71 + 6) = 0;
    while ([v28 next])
    {
      v32 = objc_autoreleasePoolPush();
      session = self->_session;
      v34 = (v79 + 5);
      v55 = v79[5];
      v35 = [(BRCAccountSession *)session newServerItemFromPQLResultSet:v28 error:&v55];
      objc_storeStrong(v34, v55);
      v36 = [v28 dataAtIndex:44];
      v37 = v36;
      if (v36)
      {
        v38 = MEMORY[0x277CCACA8];
        brc_hexadecimalString = [v36 brc_hexadecimalString];
        v40 = [BRCDumpContext highlightedString:brc_hexadecimalString type:2 context:v9];
        v41 = [v38 stringWithFormat:@" ctvk{%@}", v40];
      }

      else
      {
        v41 = &stru_2837504F0;
      }

      ++*(v71 + 6);
      v42 = [v9 shouldKeepDumpingWithItemCount:? includeAllItems:?];
      v43 = v42;
      if (v42)
      {
        v44 = [v35 descriptionWithContext:v9];
        [v9 writeLineWithFormat:@"%@%@", v44, v41];
      }

      objc_autoreleasePoolPop(v32);
      if ((v43 & 1) == 0)
      {
        v45 = 0;
        v46 = v57;
        goto LABEL_35;
      }
    }

    [v9 writeLineWithFormat:&stru_2837504F0];
  }

  v46 = [[BRCPendingChangesStream alloc] initWithServerZone:self];
  v47 = [(BRCPendingChangesStream *)v46 dumpTablesToContext:v9 includeAllItems:itemsCopy error:error];
  v45 = v47;
  if (error)
  {
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  if (v48)
  {
    *error = v79[5];
  }

LABEL_35:

LABEL_36:
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);

  v49 = *MEMORY[0x277D85DE8];
  return v45;
}

uint64_t __59__BRCServerZone_dumpTablesToContext_includeAllItems_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) db];
  v8 = [v7 fetch:{@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count, rowid, validation_key(content_boundary_key)     FROM server_items    WHERE zone_rowid = %@ AND item_parent_id = %@", *(*(a1 + 40) + 40), v6}];

  if ([v8 next])
  {
    v31 = v6;
    while (1)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [v8 integerAtIndex:44];
      v11 = [v8 dataAtIndex:45];
      v12 = *(a1 + 32);
      ++*(*(*(a1 + 56) + 8) + 24);
      v13 = *(a1 + 80);
      if (![v12 shouldKeepDumpingWithItemCount:? includeAllItems:?])
      {
        break;
      }

      if ([*(a1 + 48) containsIndex:v10])
      {
        v14 = *(a1 + 32);
        v15 = [v8 objectOfClass:objc_opt_class() atIndex:4];
        v16 = [BRCDumpContext stringFromItemID:v15 context:*(a1 + 32)];
        [v14 writeLineWithFormat:@"%*sERROR: item ID %@ seen twice", a3, "", v16];
      }

      else
      {
        [*(a1 + 48) addIndex:v10];
        v17 = *(*(a1 + 40) + 16);
        v18 = *(*(a1 + 64) + 8);
        obj = *(v18 + 40);
        v15 = [v17 newServerItemFromPQLResultSet:v8 error:&obj];
        objc_storeStrong((v18 + 40), obj);
        if (!v15)
        {
          goto LABEL_20;
        }

        if (v11)
        {
          v19 = MEMORY[0x277CCACA8];
          v20 = [v11 brc_hexadecimalString];
          v21 = [BRCDumpContext highlightedString:v20 type:2 context:*(a1 + 32)];
          v16 = [v19 stringWithFormat:@" ctvk{%@}", v21];
        }

        else
        {
          v16 = &stru_2837504F0;
        }

        v22 = *(a1 + 32);
        v23 = [v15 descriptionWithContext:v22];
        [v22 writeLineWithFormat:@"%*s%@%@", a3, "", v23, v16];

        v24 = [*(*(a1 + 40) + 16) applyScheduler];
        v25 = [v24 descriptionForServerItem:v15 context:*(a1 + 32)];

        if (v25)
        {
          [*(a1 + 32) writeLineWithFormat:@"%*s> apply{%@}", a3, "", v25];
        }

        v26 = [v15 isDirectory];
        if (a3 <= 99)
        {
          if (v26)
          {
            v27 = *(*(*(a1 + 72) + 8) + 24);
            v28 = [v15 itemID];
            LOBYTE(v27) = (*(v27 + 16))(v27, v28, (a3 + 1), a4);

            if ((v27 & 1) == 0)
            {

LABEL_20:
              break;
            }
          }
        }
      }

      objc_autoreleasePoolPop(v9);
      if (([v8 next] & 1) == 0)
      {
        v29 = 1;
        goto LABEL_22;
      }
    }

    objc_autoreleasePoolPop(v9);
    v29 = 0;
LABEL_22:
    v6 = v31;
  }

  else
  {
    v29 = 1;
  }

  return v29;
}

void __59__BRCServerZone_dumpTablesToContext_includeAllItems_error___block_invoke_2(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 1)
  {
    __59__BRCServerZone_dumpTablesToContext_includeAllItems_error___block_invoke_2_cold_1();
  }

  v7 = [*(a1 + 32) containsIndex:sqlite3_value_int64(*a4)];
  sqlite3_result_int64(a2, v7 ^ 1u);
}

- (BOOL)validateStructureLoggingToFile:(__sFILE *)file db:(id)db
{
  v13 = *MEMORY[0x277D85DE8];
  dbCopy = db;
  abc_report_panic_with_signature();
  [MEMORY[0x277CCACA8] stringWithFormat:@"you must override this"];
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
  __assert_rtn("[BRCServerZone validateStructureLoggingToFile:db:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/containers/BRCServerZone.m", 2807, uTF8String);
}

- (BOOL)validateItemsLoggingToFile:(__sFILE *)file db:(id)db
{
  v13 = *MEMORY[0x277D85DE8];
  dbCopy = db;
  abc_report_panic_with_signature();
  [MEMORY[0x277CCACA8] stringWithFormat:@"you must override this"];
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
  __assert_rtn("[BRCServerZone validateItemsLoggingToFile:db:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/containers/BRCServerZone.m", 2812, uTF8String);
}

- (id)jobsDescription
{
  v2 = MEMORY[0x277CCACA8];
  dbRowID = [(BRCServerZone *)self dbRowID];
  v4 = [v2 stringWithFormat:@"z:%@", dbRowID];

  return v4;
}

- (id)matchingJobsWhereSQLClause
{
  v2 = MEMORY[0x277D82C08];
  dbRowID = [(BRCServerZone *)self dbRowID];
  v4 = [v2 formatInjection:{@"zone_rowid = %@", dbRowID}];

  return v4;
}

void __58__BRCServerZone_BRCZoneMigration__scheduleMoveToCloudDocs__block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, a2, a3, "[CRIT] UNREACHABLE: can't czm move clouddocs zone%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)asPrivateZone
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: This is not a private zone%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asSharedZone
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: This is not a shared zone%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)plist
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: shared zone should have share server state%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_verifyChildbasehashSaltKeysForItemID:saltInfo:record:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Got unexpected basehash validation key for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveItemID:(char)a3 stat:(_BYTE *)a4 serverMetrics:record:origName:base:no:ext:.cold.1(void *a1, void *a2, char a3, _BYTE *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  [a2 setType:{objc_msgSend(a1, "longLongValue")}];
  v7 = [a2 type];
  if (v7 > 0xA || ((1 << v7) & 0x611) == 0)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = 138412290;
      v12 = v9;
      _os_log_fault_impl(&dword_223E7A000, v10, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: BRCItemTypeIsDirectory(st.type)%@", &v11, 0xCu);
    }
  }

  *a4 = a3 & 1;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_saveItemID:stat:serverMetrics:record:origName:base:no:ext:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_saveItemID:stat:serverMetrics:record:origName:base:no:ext:.cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _db.changes == 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_saveItemID:stat:serverMetrics:record:origName:base:no:ext:.cold.4()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _db.changes == 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_saveItemID:stat:serverMetrics:record:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: !(st.logicalName.br_isSideFaultName || [st.logicalName br_isExcludedWithMaximumDepth:1])%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveEditedDirOrDocStructureRecord:error:.cold.1()
{
  OUTLINED_FUNCTION_9_3();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 parent];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_11_2(&dword_223E7A000, v2, v3, "[DEBUG] saving consistent structure record (%@) to db %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_saveEditedDocumentContentRecord:error:.cold.1()
{
  OUTLINED_FUNCTION_9_3();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 parent];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_11_2(&dword_223E7A000, v2, v3, "[DEBUG] saving consistent document record (%@) to db %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_saveEditedDocumentContentRecord:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Marking %@ as edited since shared because the modifier name is different%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveEditedDocumentContentRecord:(uint64_t *)a1 error:.cold.3(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] Adding %@ to the list of force package extensions (according to CKRecord)%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_saveEditedSymlinkRecord:error:.cold.1()
{
  OUTLINED_FUNCTION_9_3();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 parent];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_11_2(&dword_223E7A000, v2, v3, "[DEBUG] saving consistent symlink structure record (%@) to db %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_saveEditedFinderBookmarkRecord:error:.cold.1()
{
  OUTLINED_FUNCTION_9_3();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 parent];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_11_2(&dword_223E7A000, v2, v3, "[DEBUG] saving consistent finder bookmark structure record (%@) to db %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_saveEditedAliasRecord:zonesNeedingAllocRanks:error:.cold.1()
{
  OUTLINED_FUNCTION_9_3();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 parent];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_11_2(&dword_223E7A000, v2, v3, "[DEBUG] saving consistent alias structure record (%@) to db %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_saveEditedAliasRecord:(void *)a1 zonesNeedingAllocRanks:(uint64_t)a2 error:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [a1 recordID];
  v7 = [a1 recordID];
  v8 = [v7 zoneID];
  v9 = [v8 ownerName];
  OUTLINED_FUNCTION_3();
  v13 = 2112;
  v14 = v10;
  v15 = 2112;
  v16 = a2;
  _os_log_error_impl(&dword_223E7A000, a3, 0x90u, "[ERROR] can't save %@: missing ownerKey for ownerName %@%@", v12, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_userNotificationMetadataWithShare:requester:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: We couldn't generate a proper title or body for requester: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __50__BRCServerZone__updateParticipantsTableForShare___block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: participantUserName%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_populateParticipantsAndSendUserNotificationsIfNeededWithShare:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: share%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_saveEditedShareRecord:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] saving consistent share record to db %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveEditedShareRecord:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: share.currentUserParticipant.role == CKShareParticipantRoleOwner%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveEditedShareRecord:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: share.currentUserParticipant.role != CKShareParticipantRoleOwner%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveEditedShareRecord:error:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_saveEditedRecord:zonesNeedingAllocRanks:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: structure record which isn't a directory or document%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveEditedRecord:zonesNeedingAllocRanks:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Can't save zone root record %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_markShareIDDead:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] marked shareID dead %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_markItemDeadForRecordID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] saving consistent record delete to db %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_markItemDeadForRecordID:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Not inserting tombstone entry for %@ because we don't have a server item already.  Let's go through rejected code path for perf.%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_markItemDeadForRecordID:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Couldn't decode itemID from recordID %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_recoverFromCorruptShareOptionsWithItemType:itemID:parentID:sharingOptions:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] Stripping share options for something that doesn't seem to need them %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_recoverFromCorruptShareOptionsWithItemType:itemID:parentID:sharingOptions:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_recoverFromCorruptShareOptionsWithItemType:itemID:parentID:sharingOptions:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] Fixing up sharing options to have shareID for something that looks like a shared zone root for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_recoverFromCorruptShareOptionsWithItemType:itemID:parentID:sharingOptions:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)allocateRanksWhenCaughtUp:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Forcing caught up state because we completed full sync so we must have synced down an unrelated zone%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleMovedZoneNames:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_1_0();
  v7 = a2;
  _os_log_fault_impl(&dword_223E7A000, a3, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Can't create app library and zones for zone named: %s%@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __148__BRCServerZone_didSyncDownRequestID_serverChangeToken_editedRecords_deletedRecordIDs_deletedShareRecordIDs_allocRankZones_caughtUp_pendingChanges___block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: requestID >= self->_changeState.clientRequestID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __148__BRCServerZone_didSyncDownRequestID_serverChangeToken_editedRecords_deletedRecordIDs_deletedShareRecordIDs_allocRankZones_caughtUp_pendingChanges___block_invoke_cold_2(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] %@ is no longer full sync because of a large delta sync operation%@");
  v4 = *MEMORY[0x277D85DE8];
}

void __148__BRCServerZone_didSyncDownRequestID_serverChangeToken_editedRecords_deletedRecordIDs_deletedShareRecordIDs_allocRankZones_caughtUp_pendingChanges___block_invoke_cold_3(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 lastError];
  OUTLINED_FUNCTION_1_0();
  v9 = a2;
  OUTLINED_FUNCTION_20(&dword_223E7A000, a3, v6, "[ERROR] something went wrong while saving to the db: %@%@", v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __148__BRCServerZone_didSyncDownRequestID_serverChangeToken_editedRecords_deletedRecordIDs_deletedShareRecordIDs_allocRankZones_caughtUp_pendingChanges___block_invoke_cold_4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Allocating ranks for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __148__BRCServerZone_didSyncDownRequestID_serverChangeToken_editedRecords_deletedRecordIDs_deletedShareRecordIDs_allocRankZones_caughtUp_pendingChanges___block_invoke_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Delta sync successfully alloced rank so allowing finished changes stream to be destroyed%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didListDirectoryChangesWithResults:pendingFetchChanges:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _db.isInTransaction%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)didListDirectoryChangesWithResults:pendingFetchChanges:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Listed directory changes in zones %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)failedListingDirectoryChanges:serverTruthCallback:clientTruthCallback:folderItemID:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _failedListDirectoryOperations[itemID] == nil%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_collectTombstoneForRank:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Removing applied tombstone: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __48__BRCServerZone_resetServerTruthAndDestroyZone___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Finished resetting server truth%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__BRCServerZone_resetServerTruthAndDestroyZone___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Finishing destroying server truth%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllContentsOnServerWithCompletionBlock:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: attempted delete all content on an unsupported zone type: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setStateBits:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] done fetching recents and favorites for: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __59__BRCServerZone_dumpTablesToContext_includeAllItems_error___block_invoke_2_cold_1()
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

@end