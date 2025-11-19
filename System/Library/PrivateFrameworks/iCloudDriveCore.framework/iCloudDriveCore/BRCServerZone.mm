@interface BRCServerZone
- (BOOL)_markItemDeadForRecordID:(id)a3;
- (BOOL)_markShareIDDead:(id)a3;
- (BOOL)_populateParticipantsAndSendUserNotificationsIfNeededWithShare:(id)a3;
- (BOOL)_saveDeletedRecordIDs:(id)a3;
- (BOOL)_saveEditedAliasRecord:(id)a3 zonesNeedingAllocRanks:(id)a4 error:(id *)a5;
- (BOOL)_saveEditedContentRecords:(id)a3 zonesNeedingAllocRanks:(id)a4;
- (BOOL)_saveEditedDirOrDocStructureRecord:(id)a3 error:(id *)a4;
- (BOOL)_saveEditedDocumentContentRecord:(id)a3 error:(id *)a4;
- (BOOL)_saveEditedFinderBookmarkRecord:(id)a3 error:(id *)a4;
- (BOOL)_saveEditedRecord:(id)a3 zonesNeedingAllocRanks:(id)a4 error:(id *)a5;
- (BOOL)_saveEditedShareRecord:(id)a3 error:(id *)a4;
- (BOOL)_saveEditedShareRecords:(id)a3 deletedShareRecordIDs:(id)a4 zonesNeedingAllocRanks:(id)a5;
- (BOOL)_saveEditedStructureRecords:(id)a3 zonesNeedingAllocRanks:(id)a4;
- (BOOL)_saveEditedSymlinkRecord:(id)a3 error:(id *)a4;
- (BOOL)_saveItemID:(id)a3 stat:(id)a4 serverMetrics:(id)a5 record:(id)a6 error:(id *)a7;
- (BOOL)_saveItemID:(id)a3 stat:(id)a4 serverMetrics:(id)a5 record:(id)a6 origName:(id)a7 base:(id)a8 no:(id)a9 ext:(id)a10;
- (BOOL)_saveItemID:(id)a3 version:(id)a4 record:(id)a5 contentBoundaryKey:(id)a6 iWorkSharingOptions:(unint64_t)a7;
- (BOOL)_savePendingChangesDeletedRecordIDsIgnoringRecordIDs:(id)a3 pendingChangeStream:(id)a4;
- (BOOL)_savePendingChangesEditedContentRecordsIgnoringRecordIDs:(id)a3 zonesNeedingAllocRanks:(id)a4 pendingChangeStream:(id)a5;
- (BOOL)_savePendingChangesEditedStructureRecordsIgnoringRecordIDs:(id)a3 zonesNeedingAllocRanks:(id)a4 pendingChangeStream:(id)a5;
- (BOOL)_savePendingChangesSharesIgnoringRecordIDs:(id)a3 zonesNeedingAllocRanks:(id)a4 pendingChangeStream:(id)a5;
- (BOOL)_shouldSendNotification;
- (BOOL)_updateParticipantsTableForShare:(id)a3;
- (BOOL)_verifyChildbasehashSaltKeysForItemID:(id)a3 saltInfo:(id)a4 record:(id)a5;
- (BOOL)allocateRanksWhenCaughtUp:(BOOL)a3;
- (BOOL)dumpStatusToContext:(id)a3 error:(id *)a4;
- (BOOL)dumpTablesToContext:(id)a3 includeAllItems:(BOOL)a4 error:(id *)a5;
- (BOOL)hasFetchedServerZoneState;
- (BOOL)isCloudDocsZone;
- (BOOL)isEqual:(id)a3;
- (BOOL)resetServerTruthAndDestroyZone:(BOOL)a3;
- (BOOL)saveQueryRecords:(id)a3 zonesNeedingAllocRanks:(id)a4 error:(id *)a5;
- (BOOL)setStateBits:(unsigned int)a3;
- (BOOL)shouldRecreateServerZoneAfterError:(id)a3;
- (BOOL)validateItemsLoggingToFile:(__sFILE *)a3 db:(id)a4;
- (BOOL)validateStructureLoggingToFile:(__sFILE *)a3 db:(id)a4;
- (BRCServerZone)initWithMangledID:(id)a3 dbRowID:(id)a4 plist:(id)a5 session:(id)a6;
- (BRCSyncContext)metadataSyncContext;
- (BRMangledID)mangledID;
- (CKRecordZoneID)zoneID;
- (NSMutableDictionary)plist;
- (id)_userNotificationRequestApprovedMetadataWithShare:(id)a3;
- (id)asPrivateZone;
- (id)asSharedZone;
- (id)descriptionWithContext:(id)a3;
- (id)directDirectoryChildItemIDsOfParentEnumerator:(id)a3;
- (id)itemByItemID:(id)a3 db:(id)a4;
- (id)itemsEnumeratorWithDB:(id)a3;
- (id)jobsDescription;
- (id)matchingJobsWhereSQLClause;
- (unint64_t)didListDirectoryChangesWithResults:(id)a3 pendingFetchChanges:(id)a4;
- (unint64_t)didSyncDownRequestID:(unint64_t)a3 serverChangeToken:(id)a4 editedRecords:(id)a5 deletedRecordIDs:(id)a6 deletedShareRecordIDs:(id)a7 allocRankZones:(id *)a8 caughtUp:(BOOL)a9 pendingChanges:(id)a10;
- (unint64_t)hash;
- (unsigned)zoneCreationState;
- (void)_collectTombstoneForRank:(unint64_t)a3;
- (void)_recomputeMinLastUsedTime;
- (void)_removeRequestAccessNotificationsIfNeededWithShare:(id)a3 notificationIDsToKeep:(id)a4;
- (void)_reportCantSaveProblem:(id)a3 record:(id)a4;
- (void)_sendApprovedNotificationIfNeededWithShare:(id)a3;
- (void)_userNotificationMetadataWithShare:(id)a3 requester:(id)a4 completionHandler:(id)a5;
- (void)addForegroundClient:(id)a3;
- (void)asPrivateZone;
- (void)asSharedZone;
- (void)checkIfFinishedFullSync;
- (void)clearStateBits:(unsigned int)a3;
- (void)collectTombstoneRanks:(id)a3;
- (void)deactivateFromClientZone;
- (void)decrementFetchRecentsAndFavoritesRetriesLeft;
- (void)deleteAllContentsOnServerWithCompletionBlock:(id)a3;
- (void)failedListingDirectoryChanges:(id)a3 serverTruthCallback:(id)a4 clientTruthCallback:(id)a5 folderItemID:(id)a6;
- (void)forceMoveToCloudDocs;
- (void)handleMovedZoneNames:(id)a3;
- (void)plist;
- (void)removeForegroundClient:(id)a3;
- (void)resetFetchRecentsAndFavoritesRetriesLeft;
- (void)scheduleMoveToCloudDocs;
@end

@implementation BRCServerZone

- (void)_recomputeMinLastUsedTime
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  v4 = [v3 numberOfGreedyRecentlyUsedItems];

  if (v4)
  {
    v5 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT item_lastusedtime FROM server_items ORDER BY item_lastusedtime DESC LIMIT 1 OFFSET %lld", v4];
    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = -1;
  }

  v7 = [(BRCAccountSession *)self->_session serverState];
  v8 = [v7 minLastUsedTime];

  if (v8 != v6)
  {
    v9 = [(BRCAccountSession *)self->_session serverState];
    [v9 setMinLastUsedTime:v6];

    v10 = [(BRCAccountSession *)self->_session serverState];
    [v10 saveToDB:self->_db];
  }
}

- (BOOL)isCloudDocsZone
{
  v2 = [(BRCServerZone *)self clientZone];
  v3 = [v2 isCloudDocsZone];

  return v3;
}

- (BRMangledID)mangledID
{
  v3 = objc_alloc(MEMORY[0x277CFAE60]);
  v4 = [(BRCServerZone *)self zoneName];
  v5 = [(BRCServerZone *)self ownerName];
  v6 = [v3 initWithZoneName:v4 ownerName:v5];

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
  v4 = [(BRCServerZone *)self changeState];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_state];
  [v3 setObject:v5 forKeyedSubscript:@"state"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "clientRequestID")}];
  [v3 setObject:v6 forKeyedSubscript:@"clientRequestID"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "lastSyncDownStatus")}];
  [v3 setObject:v7 forKeyedSubscript:@"lastSyncStatus"];

  v8 = [v4 lastSyncDownDate];

  if (v8)
  {
    v9 = [v4 lastSyncDownDate];
    [v3 setObject:v9 forKeyedSubscript:@"lastSyncDownDate"];
  }

  v10 = [v4 changeToken];

  if (v10)
  {
    v11 = [v4 changeToken];
    [v3 setObject:v11 forKeyedSubscript:@"changeToken"];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fetchRecentsAndFavoritesRetriesLeft];
  [v3 setObject:v12 forKeyedSubscript:@"fetchRecentsAndFavoritesRetriesLeft"];

  if ([(BRCServerZone *)self isSharedZone])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = MEMORY[0x277CCABB0];
      v14 = v4;
      v15 = [v13 numberWithBool:{objc_msgSend(v14, "everCaughtUp")}];
      [v3 setObject:v15 forKeyedSubscript:@"everCaughtUp"];

      v16 = MEMORY[0x277CCABB0];
      v17 = [v14 newlyCreatedDuringInitialSync];

      v18 = [v16 numberWithBool:v17];
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
    v4 = [(BRCAccountSession *)self->_session syncContextProvider];
    v5 = [(BRCServerZone *)self mangledID];
    v6 = [v4 metadataSyncContextForMangledID:v5];
    v7 = self->_metadataSyncContext;
    self->_metadataSyncContext = v6;

    metadataSyncContext = self->_metadataSyncContext;
  }

  return metadataSyncContext;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_zoneName hash];
  v4 = [(BRCServerZone *)self ownerName];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (unsigned)zoneCreationState
{
  if (![(BRCClientZone *)self->_clientZone hasCompletedInitialSyncDownOnce])
  {
    return 0;
  }

  v3 = [(BRCServerZone *)self changeState];
  v4 = [v3 changeToken];
  if (v4)
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
  v5 = [(BRCServerZone *)self ownerName];
  v6 = [v3 initWithZoneName:zoneName ownerName:v5];

  return v6;
}

- (void)scheduleMoveToCloudDocs
{
  v3 = [(BRCServerZone *)self session];
  v4 = [v3 resetQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__BRCServerZone_BRCZoneMigration__scheduleMoveToCloudDocs__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(v4, block);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(NSString *)self->_zoneName isEqualToString:v5->_zoneName])
      {
        v6 = [(BRCServerZone *)self ownerName];
        v7 = [(BRCServerZone *)v5 ownerName];
        v8 = [v6 isEqualToString:v7];
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

- (id)descriptionWithContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BRCServerZone *)self changeState];
    v6 = [v5 descriptionWithContext:v4];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v5 = [(BRCServerZone *)self mangledID];
    dbRowID = self->_dbRowID;
    v9 = [(BRCServerZone *)self changeState];
    v10 = [v9 descriptionWithContext:0];
    v6 = [v7 stringWithFormat:@"<%@[%@] %@>", v5, dbRowID, v10];
  }

  return v6;
}

- (BRCServerZone)initWithMangledID:(id)a3 dbRowID:(id)a4 plist:(id)a5 session:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v40.receiver = self;
  v40.super_class = BRCServerZone;
  v14 = [(BRCServerZone *)&v40 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_session, a6);
    v16 = [v13 serverDB];
    db = v15->_db;
    v15->_db = v16;

    v18 = [v13 serverReadWriteDatabaseFacade];
    dbFacade = v15->_dbFacade;
    v15->_dbFacade = v18;

    objc_storeStrong(&v15->_dbRowID, a4);
    v20 = [v10 appLibraryOrZoneName];
    zoneName = v15->_zoneName;
    v15->_zoneName = v20;

    v22 = [(BRCServerZone *)v15 isSharedZone];
    v23 = off_2784FDCB8;
    if (!v22)
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

    if (v12)
    {
      v29 = [v12 objectForKeyedSubscript:@"state"];
      v15->_state = [v29 unsignedIntValue];

      v30 = [v12 objectForKeyedSubscript:@"lastSyncDownDate"];
      [(BRCServerChangeState *)v15->_changeState setLastSyncDownDate:v30];

      v31 = [v12 objectForKeyedSubscript:@"lastSyncStatus"];
      -[BRCServerChangeState setLastSyncDownStatus:](v15->_changeState, "setLastSyncDownStatus:", [v31 unsignedIntegerValue]);

      v32 = [v12 objectForKeyedSubscript:@"changeToken"];
      [(BRCServerChangeState *)v15->_changeState setChangeToken:v32];

      v33 = [v12 objectForKeyedSubscript:@"clientRequestID"];
      -[BRCServerChangeState setClientRequestID:](v15->_changeState, "setClientRequestID:", [v33 unsignedLongLongValue]);

      if ([(BRCServerZone *)v15 isSharedZone])
      {
        v34 = v15->_changeState;
        v35 = [v12 objectForKeyedSubscript:@"everCaughtUp"];
        -[BRCServerChangeState setEverCaughtUp:](v34, "setEverCaughtUp:", [v35 BOOLValue]);

        v36 = [v12 objectForKeyedSubscript:@"newlyCreatedDuringInitialSync"];
        -[BRCServerChangeState setNewlyCreatedDuringInitialSync:](v34, "setNewlyCreatedDuringInitialSync:", [v36 BOOLValue]);
      }

      v37 = [v12 objectForKey:@"fetchRecentsAndFavoritesRetriesLeft"];

      if (v37)
      {
        v38 = [v12 objectForKeyedSubscript:@"fetchRecentsAndFavoritesRetriesLeft"];
        v15->_fetchRecentsAndFavoritesRetriesLeft = [v38 unsignedIntValue];
      }
    }
  }

  return v15;
}

- (void)deactivateFromClientZone
{
  v3 = [(BRCPQLConnection *)self->_db serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__BRCServerZone_deactivateFromClientZone__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __41__BRCServerZone_deactivateFromClientZone__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
}

- (BOOL)_verifyChildbasehashSaltKeysForItemID:(id)a3 saltInfo:(id)a4 record:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(BRCClientZone *)self->_clientZone enhancedDrivePrivacyEnabled])
  {
    goto LABEL_4;
  }

  v11 = [v9 childBasehashSalt];
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = v11;
  v13 = [v9 childBasehashSalt];
  v14 = [v13 brc_truncatedSHA256];
  v15 = [v9 childBasehashSaltValidation];
  v16 = [v14 isEqualToData:v15];

  if ((v16 & 1) == 0)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [BRCServerZone _verifyChildbasehashSaltKeysForItemID:saltInfo:record:];
    }

    v21 = [v10 recordID];
    v22 = [v21 recordName];
    v23 = [(BRCServerZone *)self mangledID];
    v24 = [AppTelemetryTimeSeriesEvent newEDPKeysMismatchForRecordID:v22 mangledID:v23];

    v25 = [(BRCServerZone *)self session];
    v26 = [v25 analyticsReporter];
    [v26 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v24];

    v17 = 0;
  }

  else
  {
LABEL_4:
    v17 = 1;
  }

  return v17;
}

- (BOOL)_saveItemID:(id)a3 stat:(id)a4 serverMetrics:(id)a5 record:(id)a6 origName:(id)a7 base:(id)a8 no:(id)a9 ext:(id)a10
{
  v191 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v177 = a4;
  v17 = a5;
  v18 = a6;
  v175 = a7;
  v174 = a8;
  v19 = a9;
  v173 = a10;
  dbFacade = self->_dbFacade;
  v21 = v18;
  v22 = [v18 recordID];
  v23 = [v22 zoneID];
  v24 = [v23 ownerName];
  v25 = [(BRCDatabaseFacade *)dbFacade userKeyForOwnerName:v24];

  v172 = v25;
  v176 = v16;
  if (v25)
  {
    v171 = v17;
    v166 = v19;
    v167 = v21;
    if ([(BRCServerZone *)self isSharedZone])
    {
LABEL_35:
      v180 = 0;
      if (-[BRCServerZone isSharedZone](self, "isSharedZone") && ([v177 parentID], v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v62, "isSharedZoneRoot"), v62, (v63 & 1) == 0))
      {
        db = self->_db;
        v66 = [(BRCServerZone *)self dbRowID];
        v67 = [(BRCPQLConnection *)db fetch:@"SELECT item_favoriterank, item_lastusedtime, item_finder_tags, item_side_car_ckinfo FROM server_items WHERE item_id = %@ AND zone_rowid = %@", v176, v66];

        v68 = [v67 next];
        if (v68)
        {
          [v177 setFavoriteRank:{objc_msgSend(v67, "longLongAtIndex:", 0)}];
          [v177 setLastUsedTime:{objc_msgSend(v67, "longLongAtIndex:", 1)}];
          v69 = [v67 dataAtIndex:2];
          [v177 setFinderTags:v69];

          v170 = [v67 objectOfClass:objc_opt_class() atIndex:3];
          v70 = v67;
        }

        else
        {
          v71 = [(BRCServerZone *)self asSharedZone];
          v72 = [v176 sideCarRecordNameWithZone:v71];

          v70 = [(BRCPQLConnection *)self->_db fetch:@"SELECT item_favoriterank, item_lastusedtime, item_finder_tags, item_side_car_ckinfo FROM side_car_lookahead WHERE record_name = %@", v72];
          if ([v70 next])
          {
            [v177 setFavoriteRank:{objc_msgSend(v70, "longLongAtIndex:", 0)}];
            [v177 setLastUsedTime:{objc_msgSend(v70, "longLongAtIndex:", 1)}];
            v73 = [v70 dataAtIndex:2];
            [v177 setFinderTags:v73];

            v170 = [v70 objectOfClass:objc_opt_class() atIndex:3];
            [(BRCPQLConnection *)self->_db execute:@"DELETE FROM side_car_lookahead WHERE record_name = %@", v72];
          }

          else
          {
            v170 = 0;
          }
        }

        v64 = v68 ^ 1;
      }

      else
      {
        v170 = 0;
        v64 = 0;
      }

      v74 = [v177 type];
      v75 = -1;
      if (v74 <= 0xA && ((1 << v74) & 0x611) != 0)
      {
        [v21 deserializeFolderSharingOptions:&v180];
        if (([(BRCServerZone *)self state]& 4) != 0)
        {
          [v177 setType:0];
        }

        else
        {
          v76 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT item_type FROM server_items WHERE item_id = %@ AND zone_rowid = %@", v176, self->_dbRowID];
          v77 = v76;
          if (v76)
          {
            [BRCServerZone _saveItemID:v76 stat:v177 serverMetrics:v64 record:buf origName:? base:? no:? ext:?];
            v64 = buf[0];
          }

          else
          {
            v78 = [(BRCServerZone *)self mangledID];
            v79 = [BRCUserDefaults defaultsForMangledID:v78];
            v80 = [v79 forceDeltaInitialSync];

            if (v80)
            {
              v81 = 0;
            }

            else
            {
              v81 = 9;
            }

            [v177 setType:v81];
            v64 = 1;
          }
        }

        v75 = -5;
      }

      v82 = [v21 parent];

      if (v82)
      {
        v83 = [v177 type];
        v84 = 2;
        if (v83 <= 0xA && ((1 << v83) & 0x611) != 0)
        {
          if (([v21 hasChainPCS] & 1) == 0)
          {
            v85 = brc_bread_crumbs();
            v86 = brc_default_log();
            if (os_log_type_enabled(v86, 0x90u))
            {
              [BRCServerZone _saveItemID:stat:serverMetrics:record:origName:base:no:ext:];
            }

            v87 = [(BRCAccountSession *)self->_session clientTruthWorkloop];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __76__BRCServerZone__saveItemID_stat_serverMetrics_record_origName_base_no_ext___block_invoke;
            block[3] = &unk_2784FF478;
            block[4] = self;
            v179 = v176;
            dispatch_async(v87, block);
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
        v89 = [MEMORY[0x277CBEA90] brc_generateBogusKey];
        [(BRCBasehashSaltInfo *)v88 setChildBasehashSalt:v89];
      }

      if ((v64 & 1) == 0)
      {
        v151 = v180;
        v153 = self->_db;
        v164 = [v177 ckInfo];
        v149 = [v177 state];
        v145 = [v177 type];
        v143 = [v177 mode];
        v141 = [v177 birthtime];
        v137 = [v177 lastUsedTime];
        v133 = [v177 favoriteRank];
        v162 = [v177 parentID];
        v97 = v177[7];
        if (!v97)
        {
          v97 = &stru_2837504F0;
        }

        v147 = v97;
        v125 = [v177 isHiddenExt];
        v160 = [v177 finderTags];
        v139 = [v177 xattrSignature];
        v135 = [v177 trashPutBackPath];
        v131 = [v177 trashPutBackParentID];
        v129 = [v177 aliasTarget];
        v127 = [v177 creatorRowID];
        v123 = [v171 quotaUsed];
        v158 = [v171 recursiveChildCount];
        v122 = [v171 sharedByMeRecursiveCount];
        v98 = [v171 sharedAliasRecursiveCount];
        v99 = [v171 childCount];
        v100 = [(BRCBasehashSaltInfo *)v88 childBasehashSalt];
        v101 = [(BRCBasehashSaltInfo *)v88 saltingState];
        v102 = [(BRCBasehashSaltInfo *)v88 basehashSaltValidation];
        v154 = [(BRCPQLConnection *)v153 execute:@"UPDATE server_items SET   item_rank = NULL, item_depth = 0, item_origname = %@, pcs_state = %d, item_sharing_options = (%lu | (item_sharing_options & %lu)), item_side_car_ckinfo = %@, item_stat_ckinfo = %@, item_state = %d, item_type = %d, item_mode = %d, item_birthtime = %lld, item_lastusedtime = %lld, item_favoriterank = %lld, item_parent_id = %@, item_filename = %@, item_hidden_ext = %d, item_finder_tags = %@, item_xattr_signature = %@, item_trash_put_back_path = %@, item_trash_put_back_parent_id = %@, item_alias_target = %@, item_creator = %@, quota_used = %@, recursive_child_count = %@, shared_children_count = %@, shared_alias_count = %@, child_count = %@, child_basehash_salt = %@, salting_state = %u, basehash_salt_validation_key = %@ WHERE item_id = %@ AND zone_rowid = %@", v175, v168, v151, v75, v170, v164, v149, v145, v143, v141, v137, v133, v162, v147, v125, v160, v139, v135, v131, v129, v127, v123, v158, v122, v98, v99, v100, v101, v102, v176, self->_dbRowID];

        if (!v154)
        {
          v43 = 0;
          v17 = v171;
          v19 = v166;
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

          v116 = [v177 type];
          v17 = v171;
          v19 = v166;
          v21 = v167;
          if (v116 <= 0xA && ((1 << v116) & 0x611) != 0 && ([v167 modificationDate], v117 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v117, "timeIntervalSince1970"), v119 = v118, v117, !-[BRCPQLConnection execute:](self->_db, "execute:", @"UPDATE server_items SET  version_mtime = %lld  WHERE item_id = %@ AND zone_rowid = %@", v119, v176, self->_dbRowID)))
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

      if (([v176 isDocumentsFolder] & 1) == 0 && -[NSArray containsObject:](self->_directoriesCreatedLastSyncUp, "containsObject:", v176) && objc_msgSend(v177, "type") == 9)
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

        [v177 setType:0];
      }

      if ([v177 type] == 9)
      {
        v94 = [v171 childCount];
        if (v94)
        {
          v95 = v94;
          v96 = [v171 childCount];
          if ([v96 unsignedLongLongValue])
          {
          }

          else
          {
            v156 = v88;
            v103 = [(BRCServerZone *)self mangledID];
            v104 = [BRCUserDefaults defaultsForMangledID:v103];
            v105 = [v104 promoteEmptyDirectoryFromDirFault];

            v88 = v156;
            if (v105)
            {
              v106 = brc_bread_crumbs();
              v107 = brc_default_log();
              if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
              {
                v108 = [v176 debugItemIDString];
                *buf = 138412546;
                v182 = v108;
                v183 = 2112;
                v184 = v106;
                _os_log_impl(&dword_223E7A000, v107, OS_LOG_TYPE_DEFAULT, "[NOTICE] Promoting %@ to be a normal directory because it has no children%@", buf, 0x16u);

                v88 = v156;
              }

              [v177 setType:0];
            }
          }
        }
      }

      v157 = v180;
      v159 = self->_db;
      v165 = [v177 ckInfo];
      v155 = [v177 state];
      v152 = [v177 type];
      v150 = [v177 mode];
      v148 = [v177 birthtime];
      v144 = [v177 lastUsedTime];
      v142 = [v177 favoriteRank];
      v163 = [v177 parentID];
      v109 = v177[7];
      if (!v109)
      {
        v109 = &stru_2837504F0;
      }

      v134 = v109;
      v132 = [v177 isHiddenExt];
      v146 = [v177 finderTags];
      v161 = [v177 xattrSignature];
      v140 = [v177 trashPutBackPath];
      v138 = [v177 trashPutBackParentID];
      v136 = [v177 aliasTarget];
      v126 = [v177 creatorRowID];
      dbRowID = self->_dbRowID;
      v128 = [v171 quotaUsed];
      v130 = [v171 recursiveChildCount];
      v124 = [v171 sharedByMeRecursiveCount];
      v111 = [v171 sharedAliasRecursiveCount];
      v112 = [v171 childCount];
      v113 = [(BRCBasehashSaltInfo *)v88 childBasehashSalt];
      v114 = [(BRCBasehashSaltInfo *)v88 saltingState];
      v115 = [(BRCBasehashSaltInfo *)v88 basehashSaltValidation];
      v169 = [(BRCPQLConnection *)v159 execute:@"INSERT INTO server_items(item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_rank, item_origname, pcs_state, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, zone_rowid, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count, child_basehash_salt, salting_state, basehash_salt_validation_key) VALUES(%@, %@, %ld, %@, NULL, %@, %d, %@, %d, %d, %d, %lld, %lld, %lld, %@, %@, %d, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %u, %@)", v176, v172, v157, v170, v175, v168, v165, v155, v152, v150, v148, v144, v142, v163, v134, v132, v146, v161, v140, v138, v136, v126, dbRowID, v128, v130, v124, v111, v112, v113, v114, v115];

      if (v169)
      {
        goto LABEL_93;
      }

      v43 = 0;
      v17 = v171;
      v19 = v166;
      v21 = v167;
LABEL_103:

      goto LABEL_104;
    }

    v26 = self->_db;
    v27 = [v177 parentID];
    v28 = [v177 logicalName];
    v29 = [(PQLConnection *)v26 itemIDWithSQL:@"SELECT item_id FROM server_items  WHERE item_id != %@ AND item_parent_id = %@ AND item_filename = %@ AND +zone_rowid = %@", v16, v27, v28, self->_dbRowID];

    if ([v29 isDocumentsFolder] & 1) != 0 || (v30 = objc_msgSend(v16, "isDocumentsFolder"), !v29) || (v30)
    {
LABEL_34:

      goto LABEL_35;
    }

    v31 = self->_db;
    v32 = [v177 parentID];
    v33 = [(BRCPQLConnection *)v31 fetch:@"SELECT item_origname, item_filename FROM server_items  WHERE item_id = %@ AND item_parent_id = %@ AND +zone_rowid = %@", v16, v32, self->_dbRowID];

    if ([v33 next])
    {
      v34 = [v33 stringAtIndex:0];
      v35 = [v177 logicalName];
      v36 = [v34 isEqualToString:v35];

      if (v36)
      {
        v37 = brc_bread_crumbs();
        v38 = brc_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v182 = v16;
          v183 = 2112;
          v184 = v29;
          v185 = 2112;
          v186 = v37;
          _os_log_debug_impl(&dword_223E7A000, v38, OS_LOG_TYPE_DEBUG, "[DEBUG] Keeping bounce of %@ even though it clashes with %@%@", buf, 0x20u);
        }

        v39 = [v33 stringAtIndex:1];
        [v177 setLogicalName:v39];
        v40 = v175;
        v175 = v34;
        goto LABEL_32;
      }
    }

    v47 = [v19 integerValue];
    if (v47 <= 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = v47;
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
      v52 = [v51 stringValue];
      v39 = [v50 br_representableHFSFileNameWithBase:v174 suffix:v52 extension:v173 makeDotFile:0];

      if (![(BRCPQLConnection *)self->_db execute:@"UPDATE OR IGNORE server_items SET  item_rank = NULL, item_depth = 0, item_filename = %@, item_origname = IFNULL(item_origname, item_filename) WHERE zone_rowid = %@ AND item_id = %@", v39, self->_dbRowID, v29])
      {
        v53 = brc_bread_crumbs();
        v54 = brc_default_log();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
        {
          v58 = [(BRCPQLConnection *)self->_db lastError];
          v59 = [v58 localizedDescription];
          *buf = 138412546;
          v182 = v59;
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
      v61 = [v177 logicalName];
      *buf = 138413314;
      v182 = v29;
      v183 = 2112;
      v184 = v61;
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
    v44 = [v21 recordID];
    v45 = [v44 zoneID];
    v46 = [v45 ownerName];
    *buf = 138412802;
    v182 = v16;
    v183 = 2112;
    v184 = v46;
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

- (BOOL)_saveItemID:(id)a3 stat:(id)a4 serverMetrics:(id)a5 record:(id)a6 error:(id *)a7
{
  v98 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  v15 = [v12 logicalName];
  v16 = [v15 br_nameIsRepresentableOnHFS];

  v17 = 0;
  v18 = 0;
  if ((v16 & 1) == 0)
  {
    v84 = 0;
    v19 = [v14 deserializeFilename:0 basename:&v87 bounceno:&v85 extension:&v86 userInfo:0 error:&v84];
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
        v91 = v14;
        v92 = 2112;
        v93 = v41;
        _os_log_fault_impl(&dword_223E7A000, v42, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't deserialize filename: %@ of %@%@", buf, 0x20u);
      }

      if (a7)
      {
        v43 = v17;
        v18 = 0;
        v44 = a7;
        LOBYTE(a7) = 0;
        *v44 = v17;
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_57;
    }

    v80 = a7;
    v20 = v13;
    v18 = [v12 logicalName];
    v21 = MEMORY[0x277CCACA8];
    v22 = v87;
    v23 = [v85 stringValue];
    v24 = [v21 br_representableHFSFileNameWithBase:v22 suffix:v23 extension:v86 makeDotFile:0];
    [v12 setLogicalName:v24];

    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v12 logicalName];
      v28 = [v14 lastModifiedUserRecordID];
      *buf = 138413314;
      v89 = v27;
      v90 = 2112;
      v91 = v18;
      v92 = 2112;
      v93 = v11;
      v94 = 2112;
      v95 = v28;
      v96 = 2112;
      v97 = v25;
      _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEFAULT, "[WARNING] changing filename to %@ because %@ is unrepresentable (item ID: %@, last editor: %@)%@", buf, 0x34u);
    }

    v13 = v20;
    a7 = v80;
  }

  v29 = [v12 logicalName];
  v30 = [v29 br_isSideFaultName];

  v31 = [v12 logicalName];
  v32 = [v31 br_isExcludedWithMaximumDepth:1];

  if ((v30 & 1) != 0 || v32)
  {
    if (!v18)
    {
      v18 = [v12 logicalName];
    }

    v34 = [MEMORY[0x277CCACA8] br_emptyFilenameAlternativeName];
    v35 = v87;
    v87 = v34;

    v36 = v85;
    v85 = 0;

    v37 = [v12 logicalName];
    v38 = [v37 br_pathExtension];
    v39 = v86;
    v86 = v38;

    v81 = v11;
    if (v86)
    {
      v40 = [v87 stringByAppendingPathExtension:?];
      [v12 setLogicalName:v40];
    }

    else
    {
      [v12 setLogicalName:v87];
    }

    v45 = v13;
    v46 = [v12 logicalName];
    if ([v46 br_isSideFaultName])
    {
    }

    else
    {
      v47 = [v12 logicalName];
      v48 = [v47 br_isExcludedWithMaximumDepth:1];

      if (!v48)
      {
        goto LABEL_28;
      }
    }

    if ([v12 type] == 1 && (objc_msgSend(v18, "br_isPackageRoot") & 1) != 0)
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
      [v12 setLogicalName:v51];
    }

    else
    {
      [v12 setLogicalName:v87];
    }

LABEL_28:
    v52 = brc_bread_crumbs();
    v53 = brc_default_log();
    if (os_log_type_enabled(v53, 0x90u))
    {
      v76 = [v12 logicalName];
      v77 = "an excluded";
      *buf = 138413058;
      v89 = v76;
      v90 = 2112;
      if (v30)
      {
        v77 = "a side fault";
      }

      v91 = v18;
      v92 = 2080;
      v93 = v77;
      v94 = 2112;
      v95 = v52;
      _os_log_error_impl(&dword_223E7A000, v53, 0x90u, "[ERROR] changing filename to %@ because %@ is %s name%@", buf, 0x2Au);
    }

    v54 = [v12 logicalName];
    if ([v54 br_isSideFaultName])
    {

      v13 = v45;
      v33 = self;
    }

    else
    {
      v55 = [v12 logicalName];
      v56 = [v55 br_isExcludedWithMaximumDepth:1];

      v13 = v45;
      v33 = self;
      if (!v56)
      {
        v11 = v81;
        goto LABEL_35;
      }
    }

    v57 = brc_bread_crumbs();
    v58 = brc_default_log();
    v11 = v81;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      [BRCServerZone _saveItemID:stat:serverMetrics:record:error:];
    }

    goto LABEL_35;
  }

  v33 = self;
LABEL_35:
  if (v87)
  {
    goto LABEL_38;
  }

  v83 = v17;
  v59 = [v14 deserializeFilename:0 basename:&v87 bounceno:&v85 extension:&v86 userInfo:0 error:&v83];
  v60 = v83;

  if (v59)
  {
    v17 = v60;
    v33 = self;
LABEL_38:
    if ([(BRCServerZone *)v33 _saveItemID:v11 stat:v12 serverMetrics:v13 record:v14 origName:v18 base:v85 no:v86 ext:?])
    {
      if ([(BRCPQLConnection *)v33->_db changes])
      {
        LOBYTE(a7) = 1;
      }

      else
      {
        v69 = v14;
        v70 = a7;
        a7 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"no record to update: %@", v11}];
        if (a7)
        {
          v71 = brc_bread_crumbs();
          v72 = brc_default_log();
          if (os_log_type_enabled(v72, 0x90u))
          {
            v79 = "(passed to caller)";
            *buf = 136315906;
            v89 = "[BRCServerZone _saveItemID:stat:serverMetrics:record:error:]";
            v90 = 2080;
            if (!v70)
            {
              v79 = "(ignored by caller)";
            }

            v91 = v79;
            v92 = 2112;
            v93 = a7;
            v94 = 2112;
            v95 = v71;
            _os_log_error_impl(&dword_223E7A000, v72, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (v70)
        {
          v73 = a7;
          *v70 = a7;
        }

        LOBYTE(a7) = 0;
        v14 = v69;
      }
    }

    else
    {
      v61 = brc_bread_crumbs();
      v62 = brc_default_log();
      if (os_log_type_enabled(v62, 0x90u))
      {
        v78 = [(BRCPQLConnection *)v33->_db lastError];
        *buf = 138412802;
        v89 = v11;
        v90 = 2112;
        v91 = v78;
        v92 = 2112;
        v93 = v61;
        _os_log_error_impl(&dword_223E7A000, v62, 0x90u, "[ERROR] Failed to update record (%@): %@%@", buf, 0x20u);

        v33 = self;
      }

      if (a7)
      {
        v63 = [(BRCPQLConnection *)v33->_db lastError];
        v64 = a7;
        LOBYTE(a7) = 0;
        *v64 = v63;
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
    v91 = v14;
    v92 = 2112;
    v93 = v65;
    _os_log_fault_impl(&dword_223E7A000, v66, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't deserialize filename: %@ of %@%@", buf, 0x20u);
  }

  if (a7)
  {
    v67 = v60;
    v68 = a7;
    LOBYTE(a7) = 0;
    *v68 = v60;
  }

  v17 = v60;
LABEL_57:

  v74 = *MEMORY[0x277D85DE8];
  return a7;
}

- (BOOL)_saveItemID:(id)a3 version:(id)a4 record:(id)a5 contentBoundaryKey:(id)a6 iWorkSharingOptions:(unint64_t)a7
{
  v45 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v38 = a5;
  db = self->_db;
  v35 = a6;
  v34 = [v12 originalPOSIXName];
  v33 = [v12 ckInfo];
  v32 = [v12 mtime];
  v31 = [v12 size];
  v30 = [v12 thumbnailSize];
  v29 = [v12 thumbnailSignature];
  v28 = [v12 contentSignature];
  v13 = [v12 xattrSignature];
  v14 = [v12 editedSinceShared];
  v15 = [v12 lastEditorDeviceOrUserRowID];
  v16 = [v12 conflictLoserEtags];
  v17 = [v12 quarantineInfo];
  v18 = [(BRCPQLConnection *)db execute:@"UPDATE server_items    SET item_rank = NULL, item_depth = 0, item_sharing_options = (%lu | (item_sharing_options & %lu)), content_boundary_key = %@, version_name = %@, version_ckinfo = %@, version_mtime = %lld, version_size = %lld, version_thumb_size = %lld, version_thumb_signature = %@, version_content_signature = %@, version_xattr_signature = %@, version_edited_since_shared = %@, version_device = %@, version_conflict_loser_etags = %@, version_quarantine_info = %@  WHERE item_id = %@ AND zone_rowid = %@", a7, -8, v35, v34, v33, v32, v31, v30, v29, v28, v13, v14, v15, v16, v17, v11, self->_dbRowID];

  if (!v18)
  {
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, 0x90u))
    {
      v21 = v38;
      v26 = [v38 debugDescription];
      v27 = [(BRCPQLConnection *)self->_db lastError];
      *buf = 138412802;
      v40 = v26;
      v41 = 2112;
      v42 = v27;
      v43 = 2112;
      v44 = v22;
      _os_log_error_impl(&dword_223E7A000, v23, 0x90u, "[ERROR] failed saving document %@: %@%@", buf, 0x20u);

      v19 = 0;
      v20 = v11;
    }

    else
    {
      v19 = 0;
      v21 = v38;
      v20 = v11;
    }

LABEL_11:

    goto LABEL_12;
  }

  if ([(BRCPQLConnection *)self->_db changes]!= 1)
  {
    v21 = v38;
    v20 = v11;
    if (([(BRCServerZone *)self state]& 4) != 0 || [(BRCPQLConnection *)self->_db changes])
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v40 = v11;
        v41 = 2112;
        v42 = v12;
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
        v40 = v11;
        v41 = 2112;
        v42 = v12;
        v43 = 2112;
        v44 = v22;
        _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] Document without a structure record but we haven't completed full sync.  Dropping the record on the floor for now i:%@ %@%@", buf, 0x20u);
      }
    }

    goto LABEL_11;
  }

  v19 = 1;
  v21 = v38;
  v20 = v11;
LABEL_12:

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_saveEditedDirOrDocStructureRecord:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  location = 0;
  v7 = [v6 recordID];
  v8 = [(BRCAccountSession *)self->_session zoneAppRetriever];
  v9 = [v7 brc_itemIDWithZoneAppRetriever:v8 error:&location];

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
        if (!a4)
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

    if (a4)
    {
      v18 = v15;
      *a4 = v15;
    }

    goto LABEL_16;
  }

  session = self->_session;
  obj = location;
  v13 = [v6 deserializeStatInfo:&v27 serverMetrics:&v26 itemID:v9 session:session error:&obj];
  objc_storeStrong(&location, obj);
  if ((v13 & 1) == 0)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, 0x90u))
    {
      v23 = [v6 debugDescription];
      *buf = 138412802;
      v30 = v23;
      v31 = 2112;
      v32 = location;
      v33 = 2112;
      v34 = v19;
      _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] can't deserialize %@: %@%@", buf, 0x20u);
    }

    if (a4)
    {
      v14 = 0;
      *a4 = location;
      goto LABEL_17;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v14 = [(BRCServerZone *)self _saveItemID:v9 stat:v27 serverMetrics:v26 record:v6 error:a4];
LABEL_17:

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)_saveEditedDocumentContentRecord:(id)a3 error:(id *)a4
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = a3;
  location = 0;
  v7 = [v6 recordID];
  v8 = [(BRCAccountSession *)self->_session zoneAppRetriever];
  v9 = [v7 brc_itemIDWithZoneAppRetriever:v8 error:&location];

  if ([(BRCServerZone *)self isSharedZone])
  {
    v10 = [v6 share];
    v11 = v10 != 0;
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
        if (!a4)
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

    if (a4)
    {
      v38 = v35;
      *a4 = v35;
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
  v15 = [(BRCServerZone *)self clientZone];
  obj = location;
  v16 = [v6 deserializeVersion:&v79 fakeStatInfo:v14 contentBoundaryKey:&v77 clientZone:v15 error:&obj];
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
    if (v11 && ![(BRCServerZone *)self _saveItemID:v9 stat:v18 serverMetrics:0 record:v6 error:a4])
    {
      goto LABEL_38;
    }

    v74 = location;
    v75 = 0;
    v20 = [v6 deserializeiWorkSharingOptions:&v75 error:&v74];
    objc_storeStrong(&location, v74);
    if (v20)
    {
      v21 = [v6 creatorUserRecordID];
      v22 = [v21 recordName];

      v23 = [(BRCAccountSession *)self->_session cachedCurrentUserRecordName];
      v73 = 0;
      v24 = [v6 brc_lastModifiedUserRecordNameWithCurrentUserRecordName:v23 personNameComponents:&v73];
      v66 = v73;

      v25 = v24;
      v67 = v24;
      if (v24)
      {
        if (([v22 isEqualToString:v24] & 1) == 0)
        {
          v26 = [v17 editedSinceShared];
          v27 = [v26 BOOLValue];

          v25 = v67;
          if ((v27 & 1) == 0)
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
        v30 = v22;
        v31 = [v17 lastEditorDeviceName];
        v32 = [v31 rangeOfString:@":_"];
        dbFacade = self->_dbFacade;
        if (v32 == 64)
        {
          v34 = [(BRCReadWriteServerDatabaseFacade *)dbFacade getOrCreateUserKeyForOwnerName:v67];
          [v17 setLastEditorRowID:v34];
        }

        else
        {
          v34 = [(BRCReadWriteServerDatabaseFacade *)dbFacade createDeviceKeyForName:v31];
          [v17 setLastEditorDeviceRowID:v34];
        }

        v22 = v30;
LABEL_56:

        if ([v17 isPackage])
        {
          v71 = location;
          v72 = 0;
          v54 = [v6 deserializeFilename:0 basename:0 bounceno:0 extension:&v72 userInfo:0 error:&v71];
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
              v84 = v6;
              v85 = 2112;
              v86 = v57;
              _os_log_fault_impl(&dword_223E7A000, v58, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't deserialize extension: %@ of %@%@", buf, 0x20u);
            }

            if (a4)
            {
              *a4 = location;
            }

            v42 = 0;
            goto LABEL_74;
          }

          v55 = [v6 objectForKeyedSubscript:@"ignorePkgExtension"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v56 = [v55 BOOLValue];
          }

          else
          {
            v56 = 0;
          }

          if (v72)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && (([v72 brc_isForcedPackageExtension] | v56) & 1) == 0)
            {
              v59 = v22;
              v60 = brc_bread_crumbs();
              v61 = brc_default_log();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
              {
                [BRCServerZone _saveEditedDocumentContentRecord:? error:?];
              }

              [MEMORY[0x277CCACA8] brc_addForcedPackageExtension:v72];
              v22 = v59;
            }
          }
        }

        v62 = [(BRCAccountSession *)self->_session analyticsReporter];
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __56__BRCServerZone__saveEditedDocumentContentRecord_error___block_invoke;
        v68[3] = &unk_2785029A8;
        v63 = v6;
        v69 = v63;
        v70 = self;
        [v62 lookupFSEventToSyncUpEventByItemID:v9 accessor:v68];

        v42 = [(BRCServerZone *)self _saveItemID:v9 version:v17 record:v63 contentBoundaryKey:v19 iWorkSharingOptions:v75];
LABEL_74:

        goto LABEL_39;
      }

      [(BRCReadWriteServerDatabaseFacade *)self->_dbFacade getOrCreateUserKeyForOwnerName:v25];
      v46 = v45 = v25;
      [v17 setLastEditorRowID:v46];

      if (!v66)
      {
        v31 = 0;
        goto LABEL_56;
      }

      v65 = v22;
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

      v31 = v49;

      v51 = [v31 nameComponents];
      if (!v51)
      {
        goto LABEL_53;
      }

      v52 = v51;
      v53 = [v31 nameComponents];
      if (([v53 br_shouldOverwriteExistingName] & 1) == 0)
      {

        goto LABEL_55;
      }

      v64 = [v66 br_shouldOverwriteExistingName];

      if ((v64 & 1) == 0)
      {
LABEL_53:
        [v31 setNameComponents:v66];
        [(BRCPQLConnection *)self->_db execute:@"UPDATE users SET user_plist = %@ WHERE user_name = %@", v31, v67];
      }

LABEL_55:
      v22 = v65;
      goto LABEL_56;
    }

    v39 = brc_bread_crumbs();
    v40 = brc_default_log();
    if (!os_log_type_enabled(v40, 0x90u))
    {
      goto LABEL_36;
    }

    v41 = [v6 debugDescription];
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

    v41 = [v6 debugDescription];
    *buf = 138412802;
    v82 = v41;
    v83 = 2112;
    v84 = location;
    v85 = 2112;
    v86 = v39;
  }

  _os_log_error_impl(&dword_223E7A000, v40, 0x90u, "[ERROR] can't deserialize %@: %@%@", buf, 0x20u);

LABEL_36:
  if (!a4)
  {
LABEL_38:
    v42 = 0;
    goto LABEL_39;
  }

  v42 = 0;
  *a4 = location;
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

- (BOOL)_saveEditedSymlinkRecord:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  location = 0;
  v7 = [v6 recordID];
  v8 = [(BRCAccountSession *)self->_session zoneAppRetriever];
  v9 = [v7 brc_itemIDWithZoneAppRetriever:v8 error:&location];

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
        if (!a4)
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

    if (a4)
    {
      v19 = v16;
      *a4 = v16;
    }

    goto LABEL_19;
  }

  session = self->_session;
  obj = location;
  v13 = [v6 deserializeStatInfo:&v37 serverMetrics:0 itemID:v9 session:session error:&obj];
  objc_storeStrong(&location, obj);
  if (v13)
  {
    if ([(BRCServerZone *)self _saveItemID:v9 stat:v37 serverMetrics:0 record:v6 error:a4])
    {
      v34 = location;
      v35 = 0;
      v14 = [v6 deserializeSymlinkTarget:&v35 error:&v34];
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
          v32 = [v6 debugDescription];
          v33 = [(BRCPQLConnection *)self->_db lastError];
          *buf = 138412802;
          v40 = v32;
          v41 = 2112;
          v42 = v33;
          v43 = 2112;
          v44 = v27;
          _os_log_error_impl(&dword_223E7A000, v28, 0x90u, "[ERROR] failed saving symlink %@: %@%@", buf, 0x20u);
        }

        if (a4)
        {
          v26 = [(BRCPQLConnection *)self->_db lastError];
          goto LABEL_29;
        }
      }

      else
      {
        v24 = brc_bread_crumbs();
        v25 = brc_default_log();
        if (os_log_type_enabled(v25, 0x90u))
        {
          v31 = [v6 debugDescription];
          *buf = 138412802;
          v40 = v31;
          v41 = 2112;
          v42 = location;
          v43 = 2112;
          v44 = v24;
          _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] can't deserialize %@: %@%@", buf, 0x20u);
        }

        if (a4)
        {
          v26 = location;
LABEL_29:
          v15 = 0;
          *a4 = v26;
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
    v29 = [v6 debugDescription];
    *buf = 138412802;
    v40 = v29;
    v41 = 2112;
    v42 = location;
    v43 = 2112;
    v44 = v20;
    _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] can't deserialize %@: %@%@", buf, 0x20u);
  }

  if (!a4)
  {
LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  v15 = 0;
  *a4 = location;
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_saveEditedFinderBookmarkRecord:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 recordID];
  v8 = [(BRCAccountSession *)self->_session zoneAppRetriever];
  v9 = [v7 brc_itemIDWithZoneAppRetriever:v8];

  v35 = 0;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [BRCServerZone _saveEditedFinderBookmarkRecord:error:];
  }

  session = self->_session;
  v34 = 0;
  v13 = [v6 deserializeStatInfo:&v35 serverMetrics:0 itemID:v9 session:session error:&v34];
  v14 = v34;
  if ((v13 & 1) == 0)
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, 0x90u))
    {
      v29 = [v6 debugDescription];
      *buf = 138412802;
      v37 = v29;
      v38 = 2112;
      v39 = v14;
      v40 = 2112;
      v41 = v21;
      _os_log_error_impl(&dword_223E7A000, v22, 0x90u, "[ERROR] can't deserialize %@: %@%@", buf, 0x20u);
    }

    if (a4)
    {
      v23 = v14;
      v18 = 0;
      v17 = 0;
      v20 = 0;
      *a4 = v14;
      goto LABEL_18;
    }

LABEL_11:
    v18 = 0;
    v17 = 0;
    v20 = 0;
    goto LABEL_18;
  }

  if (![(BRCServerZone *)self _saveItemID:v9 stat:v35 serverMetrics:0 record:v6 error:a4])
  {
    goto LABEL_11;
  }

  v32 = 0;
  v33 = 0;
  clientZone = self->_clientZone;
  v31 = v14;
  v16 = [v6 deserializeVersion:&v33 fakeStatInfo:0 contentBoundaryKey:&v32 clientZone:clientZone error:&v31];
  v17 = v33;
  v18 = v32;
  v19 = v31;

  if (v16)
  {
    v20 = [(BRCServerZone *)self _saveItemID:v9 version:v17 record:v6 contentBoundaryKey:v18 iWorkSharingOptions:0];
  }

  else
  {
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, 0x90u))
    {
      v30 = [v6 debugDescription];
      *buf = 138412802;
      v37 = v30;
      v38 = 2112;
      v39 = v19;
      v40 = 2112;
      v41 = v24;
      _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] can't deserialize %@: %@%@", buf, 0x20u);
    }

    if (a4)
    {
      v26 = v19;
      v20 = 0;
      *a4 = v19;
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

- (BOOL)_saveEditedAliasRecord:(id)a3 zonesNeedingAllocRanks:(id)a4 error:(id *)a5
{
  v87 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  dbFacade = self->_dbFacade;
  v11 = [v8 recordID];
  v12 = [v11 zoneID];
  v13 = [v12 ownerName];
  v14 = [(BRCDatabaseFacade *)dbFacade userKeyForOwnerName:v13];

  v75 = v14;
  if (v14)
  {
    location = 0;
    v15 = [v8 recordID];
    v16 = [(BRCAccountSession *)self->_session zoneAppRetriever];
    v17 = [v15 brc_itemIDWithZoneAppRetriever:v16 error:&location];

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
      v20 = [v8 deserializeAliasInfo:&v77 serverZone:self error:&v76];
      objc_storeStrong(&location, v76);
      if (v20)
      {
        v60 = a5;
        v74 = v9;
        dbRowID = self->_dbRowID;
        db = self->_db;
        v68 = v8;
        v69 = [v8 parent];
        v67 = [v77 ckInfo];
        v72 = [v77 state];
        v66 = [v77 type];
        v65 = [v77 mode];
        v64 = [v77 birthtime];
        v63 = [v77 lastUsedTime];
        v62 = [v77 favoriteRank];
        v21 = [v77 parentID];
        if (v77[7])
        {
          v22 = v77[7];
        }

        else
        {
          v22 = &stru_2837504F0;
        }

        v23 = [v77 isHiddenExt];
        v61 = [v77 finderTags];
        v24 = [v77 xattrSignature];
        v25 = [v77 trashPutBackPath];
        v26 = [v77 trashPutBackParentID];
        v27 = [v77 aliasTarget];
        v28 = [v77 creatorRowID];
        v29 = v17;
        v30 = v28;
        v59 = v72;
        v73 = v29;
        v31 = 1;
        if (v69)
        {
          v31 = 2;
        }

        v32 = [(BRCPQLConnection *)db execute:@"INSERT OR REPLACE INTO server_items(zone_rowid, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_rank, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator) VALUES(%@, %d, %@, %@, %ld, %@, NULL, %@, %d, %d, %d, %lld, %lld, %lld, %@, %@, %d, %@, %@, %@, %@, %@, %@)", dbRowID, v31, v29, v75, 0, 0, v67, v59, v66, v65, v64, v63, v62, v21, v22, v23, v61, v24, v25, v26, v27, v28];

        if (v32)
        {
          v33 = [v77 _aliasTargetMangledID];
          v34 = [(BRCAccountSession *)self->_session clientZoneByMangledID:v33];
          v17 = v73;
          v9 = v74;
          v8 = v68;
          if ([v34 isSharedZone])
          {
            v35 = self->_db;
            v36 = [v77 _aliasTargetItemID];
            v37 = [v34 dbRowID];
            [(BRCPQLConnection *)v35 execute:@"UPDATE server_items SET item_rank = NULL WHERE item_id = %@ AND zone_rowid = %@", v36, v37];

            if ([(BRCPQLConnection *)self->_db changes])
            {
              v38 = brc_bread_crumbs();
              v39 = brc_default_log();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                v58 = [v77 _aliasTargetItemID];
                *buf = 138412802;
                v80 = v58;
                v81 = 2112;
                v82 = v73;
                v83 = 2112;
                v84 = v38;
                _os_log_debug_impl(&dword_223E7A000, v39, OS_LOG_TYPE_DEBUG, "[DEBUG] Requesting a new item rank for target %@ of %@%@", buf, 0x20u);
              }

              v40 = [v34 serverZone];
              [v74 addObject:v40];
            }
          }

          v41 = 1;
          goto LABEL_36;
        }

        v50 = brc_bread_crumbs();
        v51 = brc_default_log();
        v9 = v74;
        v8 = v68;
        if (os_log_type_enabled(v51, 0x90u))
        {
          v56 = [v68 debugDescription];
          v57 = [(BRCPQLConnection *)self->_db lastError];
          *buf = 138412802;
          v80 = v56;
          v81 = 2112;
          v82 = v57;
          v83 = 2112;
          v84 = v50;
          _os_log_error_impl(&dword_223E7A000, v51, 0x90u, "[ERROR] failed saving alias %@: %@%@", buf, 0x20u);
        }

        v17 = v73;
        if (v60)
        {
          [(BRCPQLConnection *)self->_db lastError];
          *v60 = v41 = 0;
          goto LABEL_36;
        }
      }

      else
      {
        v48 = brc_bread_crumbs();
        v49 = brc_default_log();
        if (os_log_type_enabled(v49, 0x90u))
        {
          v54 = [v8 debugDescription];
          *buf = 138412802;
          v80 = v54;
          v81 = 2112;
          v82 = location;
          v83 = 2112;
          v84 = v48;
          _os_log_error_impl(&dword_223E7A000, v49, 0x90u, "[ERROR] can't deserialize %@: %@%@", buf, 0x20u);
        }

        if (a5)
        {
          v41 = 0;
          *a5 = location;
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
          if (!a5)
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

      if (a5)
      {
        v47 = v44;
        *a5 = v44;
      }
    }

    v41 = 0;
    goto LABEL_36;
  }

  v42 = brc_bread_crumbs();
  v43 = brc_default_log();
  if (os_log_type_enabled(v43, 0x90u))
  {
    [BRCServerZone _saveEditedAliasRecord:v8 zonesNeedingAllocRanks:v42 error:v43];
  }

  v41 = 0;
LABEL_37:

  v52 = *MEMORY[0x277D85DE8];
  return v41;
}

- (void)_userNotificationMetadataWithShare:(id)a3 requester:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v40 = a5;
  v9 = [v8 userIdentity];
  v10 = [v9 nameComponents];

  v39 = v10;
  v11 = [v10 br_formattedName];
  v41 = v8;
  if ([v11 length])
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = _BRLocalizedStringWithFormat();

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class(), v11}];
    v15 = [v7 brc_sharedRootDisplayName];
    v16 = _BRLocalizedStringWithFormat();
  }

  else
  {
    v17 = [v8 userIdentity];
    v14 = [v17 lookupInfo];

    v18 = [v14 emailAddress];
    if (!v18)
    {
      v18 = [v14 phoneNumber];
      if (!v18)
      {
        v16 = 0;
        v13 = 0;
        goto LABEL_7;
      }
    }

    v15 = v18;
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = _BRLocalizedStringWithFormat();

    v20 = [MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class(), v15}];
    v33 = [v7 brc_sharedRootDisplayName];
    v16 = _BRLocalizedStringWithFormat();
  }

LABEL_7:
  if (v13 && v16)
  {
    v21 = objc_alloc_init(BRCUserNotificationMetadata);
    [(BRCUserNotificationMetadata *)v21 setTitle:v13];
    [(BRCUserNotificationMetadata *)v21 setBody:v16];
    if ([v7 isFolderShare])
    {
      v22 = v40;
      (*(v40 + 2))(v40, v21);
    }

    else
    {
      v24 = MEMORY[0x277CCACA8];
      v25 = [v7 brc_sharedRootDisplayName];
      v26 = [v7 etag];
      v36 = [v24 stringWithFormat:@"%@-%@", v25, v26];

      v27 = [(BRCServerZone *)self session];
      v28 = [v27 stageRegistry];
      v35 = [v28 createURLForUserNotificationThumbnailGenerationWithStageID:v36];

      v29 = [BRCSharingUtil typeForShare:v7];
      v30 = +[BRCThumbnailGenerationManager defaultManager];
      v31 = [(BRCServerZone *)self clientZone];
      v32 = [v31 mangledID];
      session = self->_session;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __80__BRCServerZone__userNotificationMetadataWithShare_requester_completionHandler___block_invoke;
      v42[3] = &unk_2785029D0;
      v21 = v21;
      v43 = v21;
      v44 = v29;
      v22 = v40;
      v45 = v40;
      v34 = v29;
      [v30 getLocalThumbnailWithShare:v7 mangledID:v32 targetURL:v35 sessionContext:session completionHandler:v42];
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

    v22 = v40;
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

- (id)_userNotificationRequestApprovedMetadataWithShare:(id)a3
{
  v3 = a3;
  v4 = [BRFieldUserIdentity alloc];
  v5 = [v3 owner];
  v6 = [v5 userIdentity];
  v7 = [(BRFieldUserIdentity *)v4 initWithCKUserIdentity:v6];

  v8 = [(BRFieldUserIdentity *)v7 nameComponents];
  v9 = [v8 br_formattedName];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v3 brc_sharedRootDisplayName];

  v12 = _BRLocalizedStringWithFormat();

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class(), v9, v11}];
  v14 = _BRLocalizedStringWithFormat();

  v15 = objc_alloc_init(BRCUserNotificationMetadata);
  [(BRCUserNotificationMetadata *)v15 setTitle:v12];
  [(BRCUserNotificationMetadata *)v15 setBody:v14];

  return v15;
}

- (BOOL)_shouldSendNotification
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  v4 = [v3 requestForAccessNotifications];

  if (!v4)
  {
    return 0;
  }

  if (![(BRCServerZone *)self isSharedZone])
  {
    if ([(BRCServerZone *)self isPrivateZone])
    {
      if (([(BRCServerZone *)self state]& 0x20) != 0)
      {
        v11 = [(BRCServerZone *)self changeState];
        v12 = [v11 hasNeverSyncedDown];

        if (!v12)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  v5 = [(BRCServerZone *)self changeState];
  if (!v5)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [BRCServerZone plist];
    }

    goto LABEL_17;
  }

  v6 = [(BRCAccountSession *)self->_session serverState];
  v7 = [v6 sharedDatabaseChangeState];
  v8 = [v7 everCaughtUp];

  if (!v8)
  {
LABEL_17:
    v13 = 0;
LABEL_19:

    return v13;
  }

  if ([v5 newlyCreatedDuringInitialSync] && (-[BRCServerZone state](self, "state") & 0x20) != 0 && (-[BRCServerZone changeState](self, "changeState"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hasNeverSyncedDown"), v9, !v10) || (objc_msgSend(v5, "newlyCreatedDuringInitialSync") & 1) == 0)
  {
    v13 = 1;
    goto LABEL_19;
  }

  return 0;
}

- (void)_sendApprovedNotificationIfNeededWithShare:(id)a3
{
  v4 = a3;
  if ([(BRCServerZone *)self _shouldSendNotification])
  {
    v5 = [v4 currentUserParticipant];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 currentUserParticipant];
      v8 = [v7 isApprovedRequester];

      if (v8)
      {
        v9 = [(BRCClientZone *)self->_clientZone db];
        v10 = [v9 serialQueue];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __60__BRCServerZone__sendApprovedNotificationIfNeededWithShare___block_invoke;
        v11[3] = &unk_2784FF478;
        v11[4] = self;
        v12 = v4;
        dispatch_async(v10, v11);
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

- (void)_removeRequestAccessNotificationsIfNeededWithShare:(id)a3 notificationIDsToKeep:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRCAccountSession *)self->_session accountHandler];
  v9 = [v8 acAccountID];

  v10 = +[BRCUserNotificationManager sharedManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__BRCServerZone__removeRequestAccessNotificationsIfNeededWithShare_notificationIDsToKeep___block_invoke;
  v14[3] = &unk_2785029F8;
  v15 = v9;
  v16 = v6;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  v13 = v9;
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

- (BOOL)_updateParticipantsTableForShare:(id)a3
{
  v93 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 recordID];
  v61 = [v4 brc_shareItemID];

  v5 = MEMORY[0x277CBEB38];
  v6 = [v3 participants];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v8 = [v3 participants];
  v9 = [v8 countByEnumeratingWithState:&v85 objects:v92 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v85 + 1) + 8 * i);
        if ([v13 acceptanceStatus] == 2)
        {
          v14 = [v13 userIdentity];
          v15 = [v14 userRecordID];
          v16 = [v15 recordName];
          [v7 setObject:v13 forKeyedSubscript:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v85 objects:v92 count:16];
    }

    while (v10);
  }

  v17 = MEMORY[0x277CBEB38];
  v18 = [v3 requesters];
  v19 = [v17 dictionaryWithCapacity:{objc_msgSend(v18, "count")}];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v64 = v3;
  v20 = [v3 requesters];
  v21 = [v20 countByEnumeratingWithState:&v81 objects:v91 count:16];
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
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v81 + 1) + 8 * j);
        v26 = [v25 userIdentity];
        v27 = [v26 userRecordID];
        v28 = [v27 recordName];
        [v19 setObject:v25 forKeyedSubscript:v28];
      }

      v22 = [v20 countByEnumeratingWithState:&v81 objects:v91 count:16];
    }

    while (v22);
  }

  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __50__BRCServerZone__updateParticipantsTableForShare___block_invoke;
  v78[3] = &unk_278502A20;
  v78[4] = self;
  v29 = v61;
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
    v36 = [v30 requesters];
    v37 = [v36 countByEnumeratingWithState:&v70 objects:v90 count:16];
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
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v70 + 1) + 8 * v40);
        v42 = [v41 userIdentity];
        v43 = [v42 userRecordID];
        v44 = [v43 recordName];
        v45 = [v34 containsObject:v44];

        if ((v45 & 1) == 0 && !(v65)[2](v65, v41, 1))
        {
          goto LABEL_40;
        }

        if (v38 == ++v40)
        {
          v38 = [v36 countByEnumeratingWithState:&v70 objects:v90 count:16];
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
  v36 = [v30 participants];
  v46 = [v36 countByEnumeratingWithState:&v66 objects:v89 count:16];
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
      objc_enumerationMutation(v36);
    }

    v50 = *(*(&v66 + 1) + 8 * v49);
    if (([v50 isCurrentUser] & 1) == 0 && objc_msgSend(v50, "acceptanceStatus") == 2)
    {
      v51 = [v50 userIdentity];
      v52 = [v51 userRecordID];
      v53 = [v52 recordName];
      v54 = [v34 containsObject:v53];

      if ((v54 & 1) == 0 && !(v65)[2](v65, v50, 0))
      {
        break;
      }
    }

    if (v47 == ++v49)
    {
      v47 = [v36 countByEnumeratingWithState:&v66 objects:v89 count:16];
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

- (BOOL)_populateParticipantsAndSendUserNotificationsIfNeededWithShare:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  v6 = [v5 requestForAccess];

  if (v6)
  {
    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (!v4)
    {
      [BRCServerZone _populateParticipantsAndSendUserNotificationsIfNeededWithShare:];
    }

    v7 = [v4 recordID];
    v26 = [v7 brc_shareItemID];

    if ([(BRCServerZone *)self _shouldSendNotification])
    {
      v8 = [v4 owner];
      v9 = [v8 isCurrentUser];

      if (v9)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        obj = [v4 requesters];
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
              v15 = [v14 userIdentity];
              v16 = [v15 userRecordID];
              v17 = [v16 recordName];

              v18 = [BRCUserNotificationRequestAccessRequestID alloc];
              v19 = [(BRCAccountSession *)self->_session accountHandler];
              v20 = [v19 acAccountID];
              v21 = [(BRCUserNotificationRequestAccess *)v18 initWithCKShare:v4 userRecordName:v17 accountID:v20];

              [v27 addObject:v21];
              if (![(BRCReadWriteServerDatabaseFacade *)self->_dbFacade doesParticipantExistForItemID:v26 zoneRowID:self->_dbRowID userName:v17])
              {
                v28[0] = MEMORY[0x277D85DD0];
                v28[1] = 3221225472;
                v28[2] = __80__BRCServerZone__populateParticipantsAndSendUserNotificationsIfNeededWithShare___block_invoke;
                v28[3] = &unk_278502A70;
                v29 = v21;
                [(BRCServerZone *)self _userNotificationMetadataWithShare:v4 requester:v14 completionHandler:v28];
              }
            }

            v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v11);
        }
      }
    }

    v22 = [(BRCServerZone *)self _updateParticipantsTableForShare:v4];
    if (v22)
    {
      [(BRCServerZone *)self _sendApprovedNotificationIfNeededWithShare:v4];
      [(BRCServerZone *)self _removeRequestAccessNotificationsIfNeededWithShare:v4 notificationIDsToKeep:v27];
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

- (BOOL)_saveEditedShareRecord:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v39 = 0;
  v7 = [v6 recordID];
  v8 = [v7 brc_shareItemID];

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [BRCServerZone _saveEditedShareRecord:error:];
  }

  v11 = [(BRCServerZone *)self isSharedZone];
  v12 = [v6 currentUserParticipant];
  v13 = [v12 role];

  if (v11)
  {
    if (v13 != 1)
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
    if (v13 == 1)
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
  [BRCSharingUtil learnParticipantIdentitiesForShare:v6 forceUpdate:0 dbFacade:self->_dbFacade];
  if (!v8)
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
  v16 = [v6 deserializeSharingOptions:&v39 error:&v38];
  v17 = v38;
  if (v16)
  {
    v18 = -2;
    if ((v39 & 0x20) == 0)
    {
      v18 = -1;
    }

    if (![(BRCPQLConnection *)self->_db execute:@"UPDATE server_items    SET item_rank = NULL, item_sharing_options = (%lu | (item_sharing_options & %lu)), item_mode = (%ld | (item_mode & %lu)), item_depth = 0  WHERE item_id = %@ AND zone_rowid = %@", v39, 7, ((v39 & 0x20) >> 5) ^ 1, v18, v8, self->_dbRowID])
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, 0x90u))
      {
        v35 = [v6 debugDescription];
        v36 = [(BRCPQLConnection *)self->_db lastError];
        *buf = 138412802;
        v41 = v35;
        v42 = 2112;
        v43 = v36;
        v44 = 2112;
        v45 = v25;
        _os_log_error_impl(&dword_223E7A000, v26, 0x90u, "[ERROR] failed saving document %@: %@%@", buf, 0x20u);
      }

      if (!a4)
      {
        goto LABEL_30;
      }

LABEL_29:
      [(BRCPQLConnection *)self->_db lastError];
      *a4 = v21 = 0;
      goto LABEL_31;
    }

    if ([(BRCPQLConnection *)self->_db changes]== 1)
    {
      if (![(BRCServerZone *)self _populateParticipantsAndSendUserNotificationsIfNeededWithShare:v6])
      {
        if (!a4)
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
        v31 = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
        v32 = [v6 recordID];
        v33 = [v32 recordName];
        [v31 reportProblemWithType:10 recordName:v33];
      }
    }

    goto LABEL_21;
  }

  v22 = brc_bread_crumbs();
  v23 = brc_default_log();
  if (os_log_type_enabled(v23, 0x90u))
  {
    v34 = [v6 debugDescription];
    *buf = 138412802;
    v41 = v34;
    v42 = 2112;
    v43 = v17;
    v44 = 2112;
    v45 = v22;
    _os_log_error_impl(&dword_223E7A000, v23, 0x90u, "[ERROR] can't deserialize %@: %@%@", buf, 0x20u);
  }

  if (!a4)
  {
    goto LABEL_30;
  }

  v24 = v17;
  v21 = 0;
  *a4 = v17;
LABEL_31:

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)_saveEditedRecord:(id)a3 zonesNeedingAllocRanks:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 recordID];
  v11 = [v10 recordName];

  v12 = [v8 recordType];
  v13 = [v8 recordID];
  v14 = [v13 brc_isZoneRootRecordID];

  if (v14)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v17 = [v8 recordID];
  v18 = [v17 brc_isAppLibraryRootRecordID];

  if (v18)
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

  if ([v12 isEqualToString:@"structure"])
  {
    if ([v11 hasPrefix:@"directory/"] || objc_msgSend(v11, "hasPrefix:", @"documentStructure/"))
    {
      v20 = [(BRCServerZone *)self _saveEditedDirOrDocStructureRecord:v8 error:a5];
    }

    else if ([v11 hasPrefix:@"alias/"] || objc_msgSend(v11, "hasPrefix:", @"shareAlias/"))
    {
      v20 = [(BRCServerZone *)self _saveEditedAliasRecord:v8 zonesNeedingAllocRanks:v9 error:a5];
    }

    else if ([v11 hasPrefix:@"symlink/"])
    {
      v20 = [(BRCServerZone *)self _saveEditedSymlinkRecord:v8 error:a5];
    }

    else
    {
      if (![v11 hasPrefix:@"finderBookmark/"])
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
            if (!a5)
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

        if (a5)
        {
          v31 = v28;
          *a5 = v28;
        }

        goto LABEL_8;
      }

      v20 = [(BRCServerZone *)self _saveEditedFinderBookmarkRecord:v8 error:a5];
    }

LABEL_20:
    v19 = v20;
    goto LABEL_21;
  }

  if ([v12 isEqualToString:@"content"])
  {
    v20 = [(BRCServerZone *)self _saveEditedDocumentContentRecord:v8 error:a5];
    goto LABEL_20;
  }

  if ([v12 isEqualToString:*MEMORY[0x277CBC050]])
  {
    v20 = [(BRCServerZone *)self _saveEditedShareRecord:v8 error:a5];
    goto LABEL_20;
  }

  v23 = brc_bread_crumbs();
  v24 = brc_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v8 recordType];
    v33 = 138412546;
    v34 = v25;
    v35 = 2112;
    v36 = v23;
    _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEFAULT, "[WARNING] Consistent state but unknown record type (recordType: %@).%@", &v33, 0x16u);
  }

  v19 = 1;
LABEL_21:

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_markShareIDDead:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 brc_shareItemID];
  if (![(BRCPQLConnection *)self->_db execute:@"UPDATE server_items AS si   SET item_sharing_options = ((item_sharing_options & %ld) | IFNULL((SELECT (pi.item_sharing_options & %ld) FROM server_items AS pi WHERE si.item_parent_id = pi.item_id AND si.zone_rowid = pi.zone_rowid), 0)) WHERE si.zone_rowid = %@ AND si.item_id = %@", 7, 120, self->_dbRowID, v5])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (!os_log_type_enabled(v9, 0x90u))
    {
LABEL_12:

      v12 = 0;
      goto LABEL_13;
    }

    v10 = [(BRCPQLConnection *)self->_db lastError];
    *buf = 138412802;
    v16 = v5;
    v17 = 2112;
    v18 = v10;
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
      v16 = v4;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] deleted shareID %@ was for already dead item%@", buf, 0x16u);
    }
  }

  if (![(BRCReadWriteServerDatabaseFacade *)self->_dbFacade deleteParticipantsForSharedItemID:v5 zoneRowID:self->_dbRowID])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (!os_log_type_enabled(v9, 0x90u))
    {
      goto LABEL_12;
    }

    v10 = [(BRCPQLConnection *)self->_db lastError];
    *buf = 138412802;
    v16 = v5;
    v17 = 2112;
    v18 = v10;
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

- (BOOL)_markItemDeadForRecordID:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BRCAccountSession *)self->_session zoneAppRetriever];
  v6 = [v4 brc_itemIDWithZoneAppRetriever:v5];

  if (v6)
  {
    v7 = [(BRCAccountSession *)self->_session serverReadWriteDatabaseFacade];
    v8 = [v4 zoneID];
    v9 = [v8 ownerName];
    v10 = [v7 userKeyForOwnerName:v9];

    if (v10)
    {
      v11 = [(BRCClientZone *)self->_clientZone rootItemID];
      db = self->_db;
      v13 = [v6 itemIDString];
      v14 = [(BRCPQLConnection *)db execute:@"UPDATE server_items SET item_state = 1, item_filename = %@, item_rank = NULL, item_depth = 0, item_parent_id = %@ WHERE zone_rowid = %@ AND item_id = %@", v13, v11, self->_dbRowID, v6];

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
          v17 = [(BRCPQLConnection *)self->_db lastError];
          *buf = 138412802;
          v23 = v6;
          v24 = 2112;
          v25 = v17;
          v26 = 2112;
          v27 = v15;
          _os_log_error_impl(&dword_223E7A000, v16, 0x90u, "[ERROR] failed saving tombstone %@: %@%@", buf, 0x20u);
        }
      }
    }

    else
    {
      v11 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, 0x90u))
      {
        v20 = [v4 zoneID];
        v21 = [v20 ownerName];
        *buf = 138412802;
        v23 = v6;
        v24 = 2112;
        v25 = v21;
        v26 = 2112;
        v27 = v11;
        _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] can't save %@: missing ownerKey for ownerName %@%@", buf, 0x20u);
      }

      v14 = 0;
    }
  }

  else
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [BRCServerZone _markItemDeadForRecordID:];
    }

    v14 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)_savePendingChangesEditedStructureRecordsIgnoringRecordIDs:(id)a3 zonesNeedingAllocRanks:(id)a4 pendingChangeStream:(id)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __119__BRCServerZone__savePendingChangesEditedStructureRecordsIgnoringRecordIDs_zonesNeedingAllocRanks_pendingChangeStream___block_invoke;
    v12[3] = &unk_278502A98;
    v13 = v8;
    v14 = self;
    v15 = v9;
    v10 = [a5 enumerateRecordsOfType:1 block:v12];
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

- (BOOL)_savePendingChangesEditedContentRecordsIgnoringRecordIDs:(id)a3 zonesNeedingAllocRanks:(id)a4 pendingChangeStream:(id)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __117__BRCServerZone__savePendingChangesEditedContentRecordsIgnoringRecordIDs_zonesNeedingAllocRanks_pendingChangeStream___block_invoke;
    v12[3] = &unk_278502A98;
    v13 = v8;
    v14 = self;
    v15 = v9;
    v10 = [a5 enumerateRecordsOfType:2 block:v12];
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

- (BOOL)_savePendingChangesDeletedRecordIDsIgnoringRecordIDs:(id)a3 pendingChangeStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __90__BRCServerZone__savePendingChangesDeletedRecordIDsIgnoringRecordIDs_pendingChangeStream___block_invoke;
    v14[3] = &unk_278502AC0;
    v8 = v6;
    v15 = v8;
    v16 = self;
    if ([v7 enumerateRecordsOfType:-1 block:v14])
    {
      if ([(BRCServerZone *)self isSharedZone])
      {
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __90__BRCServerZone__savePendingChangesDeletedRecordIDsIgnoringRecordIDs_pendingChangeStream___block_invoke_2;
        v11[3] = &unk_278502AC0;
        v12 = v8;
        v13 = self;
        v9 = [v7 enumerateRecordsOfType:-2 block:v11];
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

- (BOOL)_savePendingChangesSharesIgnoringRecordIDs:(id)a3 zonesNeedingAllocRanks:(id)a4 pendingChangeStream:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __103__BRCServerZone__savePendingChangesSharesIgnoringRecordIDs_zonesNeedingAllocRanks_pendingChangeStream___block_invoke;
    v17[3] = &unk_278502A98;
    v11 = v8;
    v18 = v11;
    v19 = self;
    v20 = v9;
    if ([v10 enumerateRecordsOfType:3 block:v17])
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __103__BRCServerZone__savePendingChangesSharesIgnoringRecordIDs_zonesNeedingAllocRanks_pendingChangeStream___block_invoke_2;
      v14[3] = &unk_278502AC0;
      v15 = v11;
      v16 = self;
      v12 = [v10 enumerateRecordsOfType:-3 block:v14];
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

- (BOOL)_saveEditedStructureRecords:(id)a3 zonesNeedingAllocRanks:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v25 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v5;
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
        v14 = [v12 recordType];
        v15 = [v14 isEqualToString:@"content"];

        if ((v15 & 1) == 0)
        {
          v16 = [v12 recordType];
          v17 = [v16 isEqualToString:v10];

          if ((v17 & 1) == 0)
          {
            v26 = 0;
            v18 = [(BRCServerZone *)self _saveEditedRecord:v12 zonesNeedingAllocRanks:v25 error:&v26];
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

- (BOOL)_saveDeletedRecordIDs:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v18 + 1) + 8 * v8);
      v10 = objc_autoreleasePoolPush();
      v11 = [v9 recordName];
      if (![v11 hasPrefix:@"documentContent/"])
      {
        break;
      }

      v12 = [(BRCServerZone *)self isSharedZone];

      if (v12)
      {
        goto LABEL_10;
      }

LABEL_11:
      objc_autoreleasePoolPop(v10);
      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
      v14 = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
      v15 = [v9 recordName];
      [v14 reportProblemWithType:5 recordName:v15];

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

- (void)_reportCantSaveProblem:(id)a3 record:(id)a4
{
  v12 = a3;
  v6 = [a4 recordID];
  v7 = [v6 recordName];

  v8 = [v12 domain];
  if ([v8 isEqualToString:*MEMORY[0x277CFACB0]])
  {
    v9 = [v12 code];

    if (v9 == 1005)
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

  v11 = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
  [v11 reportProblemWithType:v10 recordName:v7];
}

- (BOOL)_saveEditedContentRecords:(id)a3 zonesNeedingAllocRanks:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v5;
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
        v14 = [v12 recordType];
        v15 = [v14 isEqualToString:@"content"];

        if (v15)
        {
          v23 = v9;
          v16 = [(BRCServerZone *)self _saveEditedRecord:v12 zonesNeedingAllocRanks:v22 error:&v23];
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

- (BOOL)_saveEditedShareRecords:(id)a3 deletedShareRecordIDs:(id)a4 zonesNeedingAllocRanks:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v33 = a4;
  v34 = a5;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = v8;
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
        v17 = [v15 recordType];
        v18 = [v17 isEqualToString:v13];

        if (v18)
        {
          v39 = 0;
          v19 = [(BRCServerZone *)self _saveEditedRecord:v15 zonesNeedingAllocRanks:v34 error:&v39];
          v20 = v39;
          v21 = v20;
          if (!v19)
          {
            [(BRCServerZone *)self _reportCantSaveProblem:v20 record:v15];
            v23 = v9;
            v22 = v33;
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
  v22 = v33;
  v23 = v33;
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
          v21 = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
          v30 = [v28 recordName];
          [v21 reportProblemWithType:5 recordName:v30];

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

- (BOOL)allocateRanksWhenCaughtUp:(BOOL)a3
{
  v109 = a3;
  v121 = *MEMORY[0x277D85DE8];
  [(BRCServerZone *)self _recomputeMinLastUsedTime];
  v4 = [(BRCServerZone *)self mangledID];
  v5 = [BRCUserDefaults defaultsForMangledID:v4];
  v6 = [v5 maxSyncPathDepth];

  v7 = [(BRCAccountSession *)self->_session serverState];
  v106 = [v7 nextRank];

  v108 = [(BRCServerZone *)self state];
  if ((v108 & 4) != 0)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCServerZone allocateRanksWhenCaughtUp:];
    }

    v109 = 1;
  }

  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v98 = "NO";
    if (v109)
    {
      v99 = "YES";
    }

    else
    {
      v99 = "NO";
    }

    *buf = 136315650;
    v116 = v99;
    if ((v108 & 4) != 0)
    {
      v98 = "YES";
    }

    v117 = 2080;
    *v118 = v98;
    *&v118[8] = 2112;
    *&v118[10] = v10;
    _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] caughtUp [%s] fullSync [%s]%@", buf, 0x20u);
  }

  v12 = (v108 >> 2) & 1;

  v105 = [[BRCPQLInjectionAllocateRankWhenCaughtUp alloc] initWithCaughtUp:v109 fullSync:v12];
  v13 = [(BRCPQLConnection *)self->_db fetch:@"SELECT rowid, item_id, item_parent_id, item_state, item_type, version_ckinfo, item_favoriterank, item_lastusedtime, item_finder_tags IS NOT NULL, item_sharing_options   FROM server_items  WHERE zone_rowid = %@ AND item_rank IS NULL %@", self->_dbRowID, v105];
  if ([v13 next])
  {
    v102 = v12 | v109;
    v104 = v12 & v109;
    v14 = 0x2784FD000uLL;
    v103 = v6;
    v107 = v6;
    do
    {
      context = objc_autoreleasePoolPush();
      v111 = [v13 unsignedLongLongAtIndex:0];
      v15 = *(v14 + 2888);
      v16 = [v13 objectOfClass:objc_opt_class() atIndex:1];
      v17 = *(v14 + 2888);
      v18 = [v13 objectOfClass:objc_opt_class() atIndex:2];
      v19 = [v13 charAtIndex:3];
      v20 = [v13 charAtIndex:4];
      v21 = [v13 integerAtIndex:9];
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

            if (v109)
            {
              v31 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT COUNT(*) FROM server_items WHERE zone_rowid = %@ AND item_parent_id = %@ AND item_state = 0", self->_dbRowID, v112];

              v32 = brc_bread_crumbs();
              v33 = brc_default_log();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
              {
                v79 = [v112 UTF8String];
                v80 = [v31 intValue];
                *buf = 136315650;
                v116 = v79;
                v117 = 1024;
                *v118 = v80;
                *&v118[4] = 2112;
                *&v118[6] = v32;
                _os_log_fault_impl(&dword_223E7A000, v33, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Server killed %s but it still has %d live children%@", buf, 0x1Cu);
              }

              v34 = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
              v35 = [v112 itemIDString];
              v36 = [@"directory/" stringByAppendingString:v35];
              [v34 reportProblemWithType:3 recordName:v36];

              v6 = v107;
            }

            else
            {
              v34 = brc_bread_crumbs();
              v35 = brc_default_log();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                v81 = [v28 intValue];
                *buf = 138412802;
                v116 = v112;
                v117 = 1024;
                *v118 = v81;
                *&v118[4] = 2112;
                *&v118[6] = v34;
                _os_log_debug_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEBUG, "[DEBUG] State inconsistent because %@ has %d live children%@", buf, 0x1Cu);
              }

              v31 = v28;
            }

            v38 = 0;
            v23 = -1;
            v28 = v31;
            goto LABEL_61;
          }

          v38 = 0;
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
          v25 = [v13 dataAtIndex:5];

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

              v47 = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
              v48 = [*(v14 + 2888) structureRecordPrefixForItemType:1 targetZoneShared:0];
              v49 = [v112 itemIDString];
              v50 = [v48 stringByAppendingString:v49];
              [v47 reportProblemWithType:4 recordName:v50];

LABEL_42:
            }

            else
            {
              v47 = brc_bread_crumbs();
              v48 = brc_default_log();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                v49 = [v112 itemIDString];
                *buf = 138412546;
                v116 = v49;
                v117 = 2112;
                *v118 = v47;
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
            v34 = brc_default_log();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v116 = v18;
              v117 = 2112;
              *v118 = v28;
              _os_log_debug_impl(&dword_223E7A000, v34, OS_LOG_TYPE_DEBUG, "[DEBUG] Updated %@ to be a directory fault because it has a new unapplied item%@", buf, 0x16u);
            }

            v38 = 0;
            v23 = -3;
LABEL_61:

            goto LABEL_62;
          }
        }

        if (([v18 isNonDesktopRoot] & 1) == 0)
        {
          v22 = [(BRCPQLConnection *)self->_db fetchWithSlowStatementRadar:@"<rdar://problem/37451020>" sql:@"WITH RECURSIVE item_parents (item_id, item_state, item_type, depth) AS(    SELECT item_id, item_state, item_type, 0       FROM server_items      WHERE zone_rowid = %@ AND item_id = %@  UNION ALL     SELECT p.item_parent_id, c.item_state, c.item_type, c.depth + 1       FROM server_items AS p INNER JOIN item_parents AS c USING (item_id)      WHERE p.zone_rowid = %@      LIMIT %u) SELECT item_state, depth, item_type FROM item_parents WHERE item_id_is_root(item_id) OR item_type = 4", self->_dbRowID, v18, self->_dbRowID, v6];
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
                if (v109)
                {
                  v60 = brc_bread_crumbs();
                  v61 = brc_default_log();
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
                  {
                    v83 = [v112 UTF8String];
                    v84 = [v18 UTF8String];
                    *buf = 136315650;
                    v116 = v83;
                    v117 = 2080;
                    *v118 = v84;
                    *&v118[8] = 2112;
                    *&v118[10] = v60;
                    _os_log_fault_impl(&dword_223E7A000, v61, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Server sent live item %s parented to dead item %s%@", buf, 0x20u);
                  }

                  v62 = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
                  v63 = [BRCItemID structureRecordPrefixForItemType:v20 targetZoneShared:0];
                  v64 = [v112 itemIDString];
                  v65 = [v63 stringByAppendingString:v64];
                  [v62 reportProblemWithType:1 recordName:v65];

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

              v38 = [(BRCPQLConnection *)self->_db fetch:@"WITH RECURSIVE item_parents (item_parent_id, item_sharing_options) AS(    SELECT item_parent_id, item_sharing_options       FROM server_items      WHERE zone_rowid = %@ AND item_id = %@  UNION ALL     SELECT p.item_parent_id, p.item_sharing_options       FROM server_items AS p INNER JOIN item_parents AS c      WHERE p.zone_rowid = %@        AND c.item_parent_id = p.item_id      LIMIT %u) SELECT 1 FROM item_parents WHERE (item_sharing_options & 4) != 0", self->_dbRowID, v18, self->_dbRowID, v103];

              if (([v38 next] & 1) == 0)
              {
                if (!v102)
                {
                  v28 = brc_bread_crumbs();
                  v34 = brc_default_log();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412802;
                    v116 = v112;
                    v117 = 2112;
                    *v118 = v18;
                    *&v118[8] = 2112;
                    *&v118[10] = v28;
                    _os_log_debug_impl(&dword_223E7A000, v34, OS_LOG_TYPE_DEBUG, "[DEBUG] Server sent us an item %@ which we couldn't locate share for, but we aren't caught up yet (parented to %@)%@", buf, 0x20u);
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
                  v34 = brc_default_log();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138412802;
                    v116 = v112;
                    v117 = 2112;
                    *v118 = v18;
                    *&v118[8] = 2112;
                    *&v118[10] = v28;
                    _os_log_fault_impl(&dword_223E7A000, v34, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Server sent us an item %@ which has non-root share options but isn't parented to a share (parented to %@)%@", buf, 0x20u);
                  }

LABEL_46:
                  v23 = -4;
                  goto LABEL_61;
                }
              }

LABEL_63:
              v22 = v38;
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

            v68 = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
            v69 = [BRCItemID structureRecordPrefixForItemType:v20 targetZoneShared:0];
            v70 = [v112 itemIDString];
            v71 = [v69 stringByAppendingString:v70];
            [v68 reportProblemWithType:8 recordName:v71];

            v14 = 0x2784FD000;
            v23 = -5;
LABEL_77:
            v6 = v107;
            goto LABEL_91;
          }

          if ((v108 & 4) != 0)
          {
            v39 = brc_bread_crumbs();
            v40 = brc_default_log();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
            {
              v82 = [v112 UTF8String];
              *buf = 136315394;
              v116 = v82;
              v117 = 2112;
              *v118 = v39;
              _os_log_fault_impl(&dword_223E7A000, v40, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Server sent item %s which isn't a descendant of 'root'%@", buf, 0x16u);
            }

            v41 = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
            v42 = [*(v14 + 2888) structureRecordPrefixForItemType:v20 targetZoneShared:0];
            v43 = [v112 itemIDString];
            v44 = [v42 stringByAppendingString:v43];
            [v41 reportProblemWithType:2 recordName:v44];

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

          v53 = [v13 unsignedLongLongAtIndex:7];
          if ([v13 unsignedLongLongAtIndex:6])
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
            v77 = [v76 serialQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __43__BRCServerZone_allocateRanksWhenCaughtUp___block_invoke;
            block[3] = &unk_2784FF478;
            block[4] = self;
            v114 = v18;
            dispatch_async(v77, block);

LABEL_90:
            v23 = -2;
            v14 = 0x2784FD000;
            goto LABEL_91;
          }

          v72 = [(BRCAccountSession *)self->_session serverState];
          v73 = [v72 minLastUsedTime];

          if (v53 && v53 >= v73)
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
            if (![v13 BOOLAtIndex:8])
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
          v34 = brc_default_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v116 = v112;
            v117 = 2112;
            *v118 = v28;
            _os_log_fault_impl(&dword_223E7A000, v34, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Server sent us an item %@ which has non-root share options but should be a root share%@", buf, 0x16u);
          }

          v38 = 0;
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

    while (([v13 next] & 1) != 0);
  }

  v85 = [(BRCPQLConnection *)self->_db fetch:@"SELECT rowid   FROM server_items  WHERE zone_rowid = %@ AND item_rank IS NULL AND item_depth >= 0 ORDER BY item_depth ASC", self->_dbRowID];

  v86 = v106;
  if ([v85 next])
  {
    v87 = v106;
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
    v100 = [(BRCServerZone *)self mangledID];
    *buf = 138413058;
    v116 = v100;
    v117 = 2048;
    *v118 = v106;
    *&v118[8] = 2048;
    *&v118[10] = v86;
    v119 = 2112;
    v120 = v91;
    _os_log_debug_impl(&dword_223E7A000, v92, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Allocated ranks [%lld, %lld]%@", buf, 0x2Au);
  }

  v93 = [(BRCAccountSession *)self->_session serverState];
  [v93 setNextRank:v86];

  v94 = [(BRCAccountSession *)self->_session serverState];
  v95 = [(BRCAccountSession *)self->_session serverDB];
  [v94 saveToDB:v95];

  v96 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)handleMovedZoneNames:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v4;
    v5 = v4;
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

    v4 = v27;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (unint64_t)didSyncDownRequestID:(unint64_t)a3 serverChangeToken:(id)a4 editedRecords:(id)a5 deletedRecordIDs:(id)a6 deletedShareRecordIDs:(id)a7 allocRankZones:(id *)a8 caughtUp:(BOOL)a9 pendingChanges:(id)a10
{
  v75 = *MEMORY[0x277D85DE8];
  v49 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a10;
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
    v46 = [v15 count];
    v39 = [v16 count];
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
  if (a9)
  {
    v22 = v18;
  }

  else
  {
    v22 = 0;
  }

  *(&v74 + 1) = v22;
  v23 = [(NSMutableDictionary *)self->_failedListDirectoryOperations allValues];
  [(NSMutableDictionary *)self->_failedListDirectoryOperations removeAllObjects];
  if (!a9 && [v23 count])
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
    v43 = [objc_claimAutoreleasedReturnValue() UTF8String];
    __assert_rtn("[BRCServerZone didSyncDownRequestID:serverChangeToken:editedRecords:deletedRecordIDs:deletedShareRecordIDs:allocRankZones:caughtUp:pendingChanges:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/containers/BRCServerZone.m", 2020, v43);
  }

  db = self->_db;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __148__BRCServerZone_didSyncDownRequestID_serverChangeToken_editedRecords_deletedRecordIDs_deletedShareRecordIDs_allocRankZones_caughtUp_pendingChanges___block_invoke;
  v51[3] = &unk_278502AE8;
  v45 = v16;
  v52 = v45;
  v44 = v15;
  v53 = v44;
  v54 = self;
  v62 = a3;
  v25 = v23;
  v55 = v25;
  v26 = v17;
  v56 = v26;
  v63 = a8;
  v64 = a9;
  v27 = v18;
  v57 = v27;
  v60 = buf;
  v61 = &v67;
  v28 = v19;
  v58 = v28;
  v29 = v49;
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
    v33 = [(BRCServerChangeState *)self->_changeState lastSyncDownDate];
    v34 = v33;
    if (!v33)
    {
      v34 = [MEMORY[0x277CBEAA8] distantPast];
    }

    [v30 postContainerStatusChangeNotificationWithID:v31 key:v32 value:v34];
    if (!v33)
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

- (unint64_t)didListDirectoryChangesWithResults:(id)a3 pendingFetchChanges:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([(BRCPQLConnection *)self->_db isInTransaction]& 1) == 0)
  {
    [BRCServerZone didListDirectoryChangesWithResults:pendingFetchChanges:];
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = v6;
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

        v14 = [*(*(&v46 + 1) + 8 * i) recordID];
        [v8 addObject:v14];
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
    v18 = [(BRCServerZone *)self mangledID];
    *buf = 134218498;
    v52 = v17;
    v53 = 2112;
    v54 = v18;
    v55 = 2112;
    v56 = v15;
    _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[NOTICE] listed %lu edited items from the cloud for %@\n%@", buf, 0x20u);
  }

  v19 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{self, 0}];
  if (![(BRCServerZone *)self _savePendingChangesEditedStructureRecordsIgnoringRecordIDs:v8 zonesNeedingAllocRanks:v19 pendingChangeStream:v7])
  {
    goto LABEL_19;
  }

  if (![(BRCServerZone *)self _savePendingChangesDeletedRecordIDsIgnoringRecordIDs:v8 pendingChangeStream:v7])
  {
    goto LABEL_19;
  }

  v20 = [v9 objectEnumerator];
  v21 = [(BRCServerZone *)self _saveEditedStructureRecords:v20 zonesNeedingAllocRanks:v19];

  if (!v21)
  {
    goto LABEL_19;
  }

  if (-[BRCServerZone _savePendingChangesEditedContentRecordsIgnoringRecordIDs:zonesNeedingAllocRanks:pendingChangeStream:](self, "_savePendingChangesEditedContentRecordsIgnoringRecordIDs:zonesNeedingAllocRanks:pendingChangeStream:", v8, v19, v7) && ([v9 objectEnumerator], v22 = objc_claimAutoreleasedReturnValue(), v23 = -[BRCServerZone _saveEditedContentRecords:zonesNeedingAllocRanks:](self, "_saveEditedContentRecords:zonesNeedingAllocRanks:", v22, v19), v22, v23) && -[BRCServerZone _savePendingChangesSharesIgnoringRecordIDs:zonesNeedingAllocRanks:pendingChangeStream:](self, "_savePendingChangesSharesIgnoringRecordIDs:zonesNeedingAllocRanks:pendingChangeStream:", v8, v19, v7))
  {
    v24 = [v9 objectEnumerator];
    v25 = [(BRCServerZone *)self _saveEditedShareRecords:v24 deletedShareRecordIDs:0 zonesNeedingAllocRanks:v19];
  }

  else
  {
LABEL_19:
    v25 = 0;
  }

  v40 = v9;
  v41 = self;
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

  v36 = [(BRCAccountSession *)v41->_session serverState];
  v37 = [v36 nextRank];

  if (v25)
  {
    [(BRCServerZone *)v41 checkIfFinishedFullSync];
    if (v37 && ![(BRCReadWriteServerDatabaseFacade *)v41->_dbFacade saveServerZone:v41])
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

- (void)failedListingDirectoryChanges:(id)a3 serverTruthCallback:(id)a4 clientTruthCallback:(id)a5 folderItemID:(id)a6
{
  failedListDirectoryOperations = self->_failedListDirectoryOperations;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(NSMutableDictionary *)failedListDirectoryOperations objectForKeyedSubscript:v11];

  if (v15)
  {
    [BRCServerZone failedListingDirectoryChanges:serverTruthCallback:clientTruthCallback:folderItemID:];
  }

  v16 = [[BRCFailedListSaveObject alloc] initWithPendingChangesStream:v14 serverTruthCallback:v13 clientTruthCallback:v12];

  [(NSMutableDictionary *)self->_failedListDirectoryOperations setObject:v16 forKeyedSubscript:v11];
}

- (void)_collectTombstoneForRank:(unint64_t)a3
{
  v4 = [(PQLConnection *)self->_db itemIDWithSQL:@"SELECT item_id FROM server_items WHERE zone_rowid = %@ AND item_rank = %lld AND item_state = 1", self->_dbRowID, a3];
  if (v4)
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
      v8 = [(BRCServerZone *)self clientZone];
      v9 = [v8 rootItemID];
      [(BRCPQLConnection *)db execute:@"UPDATE server_items SET item_parent_id = %@ WHERE zone_rowid = %@ AND item_parent_id = %@", v9, self->_dbRowID, v4];
    }

    [(BRCPQLConnection *)self->_db execute:@"DELETE FROM server_items WHERE zone_rowid = %@ AND item_id = %@", self->_dbRowID, v4];
    [(BRCReadWriteServerDatabaseFacade *)self->_dbFacade deleteParticipantsForSharedItemID:v4 zoneRowID:self->_dbRowID];
    v10 = +[BRCUploadConstraintChecker defaultChecker];
    [v10 removeItemWithItemID:v4];
  }
}

- (void)collectTombstoneRanks:(id)a3
{
  v4 = a3;
  v5 = [(BRCPQLConnection *)self->_db serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__BRCServerZone_collectTombstoneRanks___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (BOOL)resetServerTruthAndDestroyZone:(BOOL)a3
{
  v4 = self;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  v5 = v4->_dbRowID;
  db = v4->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__BRCServerZone_resetServerTruthAndDestroyZone___block_invoke;
  v9[3] = &unk_278502B60;
  v9[4] = v4;
  v10 = v5;
  v11 = a3;
  v7 = v5;
  LOBYTE(v4) = [(BRCPQLConnection *)db performWithFlags:26 action:v9];

  return v4;
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

- (void)deleteAllContentsOnServerWithCompletionBlock:(id)a3
{
  v3 = a3;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [BRCServerZone deleteAllContentsOnServerWithCompletionBlock:];
  }

  v6 = dispatch_get_global_queue(0, 0);
  dispatch_async(v6, v3);
}

- (BOOL)shouldRecreateServerZoneAfterError:(id)a3
{
  v4 = a3;
  if ([(BRCServerZone *)self isPrivateZone]&& ![(BRCServerZone *)self hasFetchedServerZoneState])
  {
    v5 = [v4 brc_isCloudKitErrorImplyingZoneNeedsCreation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasFetchedServerZoneState
{
  v2 = [(BRCServerZone *)self changeState];
  objc_sync_enter(v2);
  v3 = [v2 changeToken];
  v4 = v3 != 0;

  objc_sync_exit(v2);
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

- (BOOL)saveQueryRecords:(id)a3 zonesNeedingAllocRanks:(id)a4 error:(id *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v8;
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

        v14 = v14 && [(BRCServerZone *)self _saveEditedRecord:*(*(&v18 + 1) + 8 * i) zonesNeedingAllocRanks:v9 error:a5, v18];
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

- (BOOL)setStateBits:(unsigned int)a3
{
  v30 = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->_db assertOnQueue];
  state = self->_state;
  v6 = a3 | 0x38;
  if ((a3 & 4) == 0)
  {
    v6 = a3;
  }

  v7 = state | v6;
  self->_state = state | v6;
  if ((state | v6) != state)
  {
    [(BRCServerZone *)self setNeedsSave:1];
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(BRCServerZone *)self mangledID];
      v19 = BRCPrettyPrintBitmapWithContext(state, &server_zone_state_entries, 0);
      v20 = BRCPrettyPrintBitmapWithContext(self->_state, &server_zone_state_entries, 0);
      *buf = 138413058;
      v23 = v18;
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
      v11 = [v10 serialQueue];

      if (v11)
      {
        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [BRCServerZone setStateBits:];
        }

        v14 = [(BRCClientZone *)self->_clientZone db];
        v15 = [v14 serialQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __30__BRCServerZone_setStateBits___block_invoke;
        block[3] = &unk_2784FF450;
        block[4] = self;
        dispatch_async(v15, block);
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

- (void)clearStateBits:(unsigned int)a3
{
  v20 = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->_db assertOnQueue];
  state = self->_state;
  self->_state = state & ~a3;
  if ((state & a3) != 0)
  {
    [(BRCServerZone *)self setNeedsSave:1];
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(BRCServerZone *)self mangledID];
      v10 = BRCPrettyPrintBitmapWithContext(state, &server_zone_state_entries, 0);
      v11 = BRCPrettyPrintBitmapWithContext(self->_state, &server_zone_state_entries, 0);
      v12 = 138413058;
      v13 = v9;
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

- (void)addForegroundClient:(id)a3
{
  v4 = a3;
  v5 = [(BRCServerZone *)self metadataSyncContext];
  [v5 addForegroundClient:v4];
}

- (void)removeForegroundClient:(id)a3
{
  v4 = a3;
  v5 = [(BRCServerZone *)self metadataSyncContext];
  [v5 removeForegroundClient:v4];
}

- (id)itemByItemID:(id)a3 db:(id)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__BRCServerZone_itemByItemID_db___block_invoke;
  v6[3] = &unk_2784FF910;
  v6[4] = self;
  v4 = [a4 fetchObject:v6 sql:{@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE item_id = %@ AND zone_rowid = %@", a3, self->_dbRowID}];

  return v4;
}

id __33__BRCServerZone_itemByItemID_db___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(*(a1 + 32) + 16) newServerItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)itemsEnumeratorWithDB:(id)a3
{
  v4 = [a3 fetch:{@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE zone_rowid = %@", self->_dbRowID}];
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

- (id)directDirectoryChildItemIDsOfParentEnumerator:(id)a3
{
  v3 = [(BRCPQLConnection *)self->_db fetch:@"SELECT item_id FROM server_items WHERE zone_rowid = %@   AND item_parent_id = %@   AND item_type = 0", self->_dbRowID, a3];
  v4 = [v3 enumerateObjectsOfClass:objc_opt_class()];

  return v4;
}

- (BOOL)dumpStatusToContext:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
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
  v8 = v6;
  v26 = v8;
  v27 = self;
  v9 = v7;
  v28 = v9;
  v29 = 0;
  v31 = &v33;
  v32 = &v41;
  v42[3] = v25;
  if (a4)
  {
    *a4 = v34[5];
  }

  if ([(BRCServerZone *)self isPrivateZone])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [(BRCServerZone *)self clientZone];
    v11 = [v10 asPrivateClientZone];
    v12 = [v11 appLibraries];

    v13 = [v12 countByEnumeratingWithState:&v21 objects:v45 count:16];
    if (v13)
    {
      v14 = *v22;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = v42[3];
          v17 = [*(*(&v21 + 1) + 8 * i) rootItemID];
          LOBYTE(v16) = (*(v16 + 16))(v16, v17, 0, @"/", a4);

          if ((v16 & 1) == 0)
          {
            v18 = 0;
            goto LABEL_15;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v21 objects:v45 count:16];
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

- (BOOL)dumpTablesToContext:(id)a3 includeAllItems:(BOOL)a4 error:(id *)a5
{
  v52 = a4;
  v85 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__20;
  v82 = __Block_byref_object_dispose__20;
  v83 = 0;
  v8 = [(BRCServerZone *)self descriptionWithContext:v6];
  [v6 writeLineWithFormat:@"server items (%@)", v8];

  [v6 writeLineWithFormat:@"============"];
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
  v9 = v6;
  v63 = v9;
  v64 = self;
  v66 = &v70;
  v69 = v52;
  v51 = v7;
  v65 = v51;
  v67 = &v78;
  v68 = &v74;
  v75[3] = v62;
  v10 = [(BRCServerZone *)self clientZone];
  LODWORD(v8) = [v10 isPrivateZone];

  if (v8)
  {
    v11 = [(BRCServerZone *)self clientZone];
    v12 = [v11 asPrivateClientZone];
    v13 = [v12 appLibraries];
    v14 = [v13 count];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v15 = [(BRCServerZone *)self clientZone];
    v16 = [v15 asPrivateClientZone];
    obj = [v16 appLibraries];

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

            v22 = [v21 logName];
            v23 = [v21 dbRowID];
            [v9 writeLineWithFormat:@"----------------------%@[%@]----------------------", v22, v23];

            v19 = 0;
          }

          *(v71 + 6) = 0;
          v24 = v75[3];
          v25 = [v21 rootItemID];
          (*(v24 + 16))(v24, v25, 0, a5);

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

  v27 = [obj unsignedIntegerValue];
  if (v27 == [v51 count])
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
        v39 = [v36 brc_hexadecimalString];
        v40 = [BRCDumpContext highlightedString:v39 type:2 context:v9];
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
  v47 = [(BRCPendingChangesStream *)v46 dumpTablesToContext:v9 includeAllItems:v52 error:a5];
  v45 = v47;
  if (a5)
  {
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  if (v48)
  {
    *a5 = v79[5];
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

- (BOOL)validateStructureLoggingToFile:(__sFILE *)a3 db:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a4;
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
  v8 = [objc_claimAutoreleasedReturnValue() UTF8String];
  __assert_rtn("[BRCServerZone validateStructureLoggingToFile:db:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/containers/BRCServerZone.m", 2807, v8);
}

- (BOOL)validateItemsLoggingToFile:(__sFILE *)a3 db:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a4;
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
  v8 = [objc_claimAutoreleasedReturnValue() UTF8String];
  __assert_rtn("[BRCServerZone validateItemsLoggingToFile:db:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/containers/BRCServerZone.m", 2812, v8);
}

- (id)jobsDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(BRCServerZone *)self dbRowID];
  v4 = [v2 stringWithFormat:@"z:%@", v3];

  return v4;
}

- (id)matchingJobsWhereSQLClause
{
  v2 = MEMORY[0x277D82C08];
  v3 = [(BRCServerZone *)self dbRowID];
  v4 = [v2 formatInjection:{@"zone_rowid = %@", v3}];

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