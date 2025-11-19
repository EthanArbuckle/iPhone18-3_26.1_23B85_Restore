@interface BRCDirectoryItem
- (BOOL)_insertInDB:(id)a3 dbRowID:(unint64_t)a4;
- (BOOL)_insertRecursiveProperties;
- (BOOL)_recomputeChildItemCount;
- (BOOL)_repopulateRecursivePropertiesIfNecessary;
- (BOOL)_updateInDB:(id)a3 diffs:(unint64_t)a4;
- (BOOL)_updateRecursiveProperties;
- (BOOL)containsDirFault;
- (BOOL)containsOverQuotaItems;
- (BOOL)containsPendingDeleteDocuments;
- (BOOL)containsPendingUploadOrSyncUp;
- (BOOL)handlePathMatchConflictForDirectoryCreationIfNecessary;
- (BOOL)hasDeadChildren;
- (BOOL)hasLiveChildren;
- (BOOL)hasShareIDAndIsOwnedByMe;
- (BOOL)isAppLibraryTrashFolder;
- (BOOL)isCrossZoneMoveTombstone;
- (BOOL)isDirectory;
- (BOOL)isDirectoryFault;
- (BOOL)isDirectoryWithPackageName;
- (BOOL)isShareableItem;
- (BOOL)isSharedByMeOrContainsSharedByMeItem;
- (BOOL)isSharedToMeOrContainsSharedToMeItem;
- (BOOL)mergeContentsIntoDirectory:(id)a3;
- (BOOL)possiblyContainsSharedItem;
- (BOOL)updateFromServerItem:(id)a3;
- (id)_initFromPQLResultSet:(id)a3 session:(id)a4 db:(id)a5 error:(id *)a6;
- (id)_initWithLocalItem:(id)a3;
- (id)_initWithServerItem:(id)a3 dbRowID:(unint64_t)a4;
- (id)_serverChildItemCount;
- (id)_serverChildItemCountIncludingHiddenFiles;
- (id)asShareableItem;
- (id)childItemCount;
- (id)clientZonesChildrenNeedingSyncUpAreIn;
- (id)collaborationIdentifierIfComputable;
- (id)descriptionWithContext:(id)a3;
- (id)folderAppLibraryRootRecord;
- (id)folderRootStructureRecord;
- (id)serverQuotaUsage;
- (unint64_t)diffAgainstLocalItem:(id)a3;
- (unint64_t)diffAgainstServerItem:(id)a3;
- (void)_crossZoneMoveToParent:(id)a3;
- (void)_insertZombieForCrossZoneMove;
- (void)_learnItemID:(id)a3 serverItem:(id)a4;
- (void)_markZombieForCrossZoneMove;
- (void)_retryPostponedIfNeededForDiffs:(unint64_t)a3;
- (void)_signalPropagationToChildrenForce:(BOOL)a3;
- (void)documentsDirectoryUpdatedDocumentsScopePublic;
- (void)markChildPropagationComplete;
- (void)markDirectoryMergeOrCrossZonePropagationComplete;
- (void)markNeedsDeleteForItemIDTransfer;
- (void)markRemovedFromFilesystemRecursively:(BOOL)a3;
- (void)prepareForSyncUpInZone:(id)a3;
@end

@implementation BRCDirectoryItem

- (BOOL)isDirectory
{
  v2 = [(BRCStatInfo *)self->super._st type];
  if (v2 > 0xA || ((1 << v2) & 0x611) == 0)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [BRCDirectoryItem isDirectory];
    }
  }

  return 1;
}

- (BOOL)isDirectoryWithPackageName
{
  v3 = [(BRCStatInfo *)self->super._st type];
  if (v3 > 0xA || ((1 << v3) & 0x611) == 0)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [BRCDirectoryItem isDirectory];
    }
  }

  v5 = [(BRCLocalStatInfo *)self->super._st logicalNameWithoutLocalBounce];
  v6 = [v5 br_isPackageRoot];

  return v6;
}

- (BOOL)_updateRecursiveProperties
{
  v3 = [(BRCStatInfo *)self->super._st type];
  v4 = [(BRCLocalItem *)self->super._orig st];
  v5 = [v4 type];

  if (v3 == v5)
  {
    v6 = 1;
    goto LABEL_17;
  }

  if (([(BRCStatInfo *)self->super._st type]- 9) <= 1u)
  {
    v7 = [(BRCLocalItem *)self->super._orig st];
    v8 = [v7 type];

    if (!v8)
    {
      v11 = [(BRCPQLConnection *)self->super._db execute:@"UPDATE item_recursive_properties SET item_type = %d, dir_faults_count = dir_faults_count + 1 WHERE item_rowid = %llu", [(BRCStatInfo *)self->super._st type], self->super._dbRowID];
      goto LABEL_16;
    }
  }

  if (![(BRCStatInfo *)self->super._st type])
  {
    v9 = [(BRCLocalItem *)self->super._orig st];
    v10 = ([v9 type] - 9);

    if (v10 <= 1)
    {
      v11 = [(BRCPQLConnection *)self->super._db execute:@"UPDATE item_recursive_properties SET item_type = %d, dir_faults_count = dir_faults_count - 1 WHERE item_rowid = %llu", [(BRCStatInfo *)self->super._st type], self->super._dbRowID];
LABEL_16:
      v6 = v11;
      goto LABEL_17;
    }
  }

  v6 = [(BRCPQLConnection *)self->super._db execute:@"UPDATE item_recursive_properties SET item_type = %d WHERE item_rowid = %llu", [(BRCStatInfo *)self->super._st type], self->super._dbRowID];
  if ([(BRCStatInfo *)self->super._st type]== 4)
  {
    goto LABEL_17;
  }

  v12 = [(BRCLocalItem *)self->super._orig st];
  if ([v12 type] != 4)
  {
    v13 = [(BRCLocalItem *)self->super._orig st];
    v14 = [v13 type];

    if (v14 == 10)
    {
      goto LABEL_17;
    }

    v12 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [BRCDirectoryItem _updateRecursiveProperties];
    }
  }

LABEL_17:
  sharingOptions = self->super._sharingOptions;
  if ((([(BRCLocalItem *)self->super._orig sharingOptions]^ sharingOptions) & 4) != 0)
  {
    if (([(BRCPQLConnection *)self->super._db isBatchSuspended]& 1) == 0)
    {
      [BRCDirectoryItem _updateRecursiveProperties];
    }

    if ((self->super._sharingOptions & 4) != 0)
    {
      if ([(BRCServerZone *)self->super._serverZone isSharedZone])
      {
        v20 = "shared_to_me_count = shared_to_me_count + 1";
      }

      else
      {
        v20 = "shared_by_me_count = shared_by_me_count + 1";
      }

      v19 = [MEMORY[0x277D82C18] rawInjection:v20 length:43];
      if (!v6)
      {
        LOBYTE(v6) = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v17 = [(BRCLocalItem *)self->super._orig serverZone];
      if ([v17 isSharedZone])
      {
        v18 = "shared_to_me_count = shared_to_me_count - 1";
      }

      else
      {
        v18 = "shared_by_me_count = shared_by_me_count - 1";
      }

      v19 = [MEMORY[0x277D82C18] rawInjection:v18 length:43];

      if (!v6)
      {
        goto LABEL_32;
      }
    }

    LOBYTE(v6) = [(BRCPQLConnection *)self->super._db execute:@"UPDATE item_recursive_properties SET %@ WHERE item_rowid = %llu", v19, self->super._dbRowID];
LABEL_32:
  }

  return v6;
}

- (BOOL)isCrossZoneMoveTombstone
{
  v3 = [(BRCLocalItem *)self->super._orig asDirectory];
  if (-[BRCLocalItem isDead](self, "isDead") && ([v3 isDead] & 1) == 0)
  {
    v5 = [(BRCLocalItem *)self itemGlobalID];
    v4 = [v5 isEqualToItemGlobalID:v3[26]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_insertRecursiveProperties
{
  v3 = [(BRCStatInfo *)self->super._st parentID];
  if (-[BRCItemID isDocumentsFolder](self->super._itemID, "isDocumentsFolder") || (-[BRCLocalStatInfo logicalName](self->super._st, "logicalName"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEqualToString:*MEMORY[0x277CFADB8]], v4, v5))
  {

    v3 = 0;
  }

  db = self->super._db;
  dbRowID = self->super._dbRowID;
  itemID = self->super._itemID;
  v9 = [(BRCStatInfo *)self->super._st type];
  v10 = [(BRCClientZone *)self->super._clientZone dbRowID];
  LODWORD(db) = [(BRCPQLConnection *)db execute:@"INSERT OR REPLACE INTO item_recursive_properties (item_rowid, item_id, item_parent_id, item_type, zone_rowid, item_parent_zone_rowid) VALUES (%llu, %@, %@, %u, %@, %@)", dbRowID, itemID, v3, v9, v10, self->super._parentZoneRowID];

  if (db)
  {
    v11 = [(BRCDirectoryItem *)self _repopulateRecursivePropertiesIfNecessary];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_repopulateRecursivePropertiesIfNecessary
{
  db = self->super._db;
  itemID = self->super._itemID;
  v5 = [(BRCClientZone *)self->super._clientZone dbRowID];
  v6 = [(BRCPQLConnection *)db fetch:@"SELECT SUM(dir_faults_count), SUM(uploaded_size), SUM(needs_upload_size), SUM(uploaded_count), SUM(needs_upload_count), SUM(synced_up_count), SUM(needs_sync_up_count), SUM(over_quota_count), SUM(shared_by_me_count), SUM(shared_to_me_count), SUM(needs_delete_doc_count) FROM item_recursive_properties WHERE item_parent_id = %@ AND item_parent_zone_rowid = %@", itemID, v5];

  if ([v6 next])
  {
    v7 = -[BRCPQLConnection execute:](self->super._db, "execute:", @"UPDATE item_recursive_properties SET  dir_faults_count = %lld, uploaded_size = %lld, needs_upload_size = %lld, uploaded_count = %lld, needs_upload_count = %lld, synced_up_count = %lld, needs_sync_up_count = %lld, over_quota_count = %lld, shared_by_me_count = %lld, shared_to_me_count = %lld, needs_delete_doc_count = %lld  WHERE item_rowid = %llu ", [v6 unsignedLongLongAtIndex:0] + -[BRCDirectoryItem isDirectoryFault](self, "isDirectoryFault"), objc_msgSend(v6, "unsignedLongLongAtIndex:", 1), objc_msgSend(v6, "unsignedLongLongAtIndex:", 2), objc_msgSend(v6, "unsignedLongLongAtIndex:", 3), objc_msgSend(v6, "unsignedLongLongAtIndex:", 4), objc_msgSend(v6, "unsignedLongLongAtIndex:", 5), objc_msgSend(v6, "unsignedLongLongAtIndex:", 6), objc_msgSend(v6, "unsignedLongLongAtIndex:", 7), objc_msgSend(v6, "unsignedLongLongAtIndex:", 8) + -[BRCDirectoryItem hasShareIDAndIsOwnedByMe](self, "hasShareIDAndIsOwnedByMe"), objc_msgSend(v6, "unsignedLongLongAtIndex:", 9) + -[BRCLocalItem isSharedToMeTopLevelItem](self, "isSharedToMeTopLevelItem"), objc_msgSend(v6, "unsignedLongLongAtIndex:", 10), self->super._dbRowID);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isDirectoryFault
{
  v3 = [(BRCStatInfo *)self->super._st type];
  if (v3 > 0xA || ((1 << v3) & 0x611) == 0)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [BRCDirectoryItem isDirectory];
    }
  }

  if (([(BRCStatInfo *)self->super._st type]- 9) < 2u)
  {
    return 1;
  }

  if (![(BRCLocalItem *)self isFSRoot])
  {
    return 0;
  }

  v6 = [(BRCLocalItem *)self appLibrary];
  v5 = ([v6 state] & 0x2000000) == 0;

  return v5;
}

- (BOOL)hasShareIDAndIsOwnedByMe
{
  v3 = [(BRCLocalItem *)self isOwnedByMe];
  if (v3)
  {
    return (LOBYTE(self->super._sharingOptions) >> 2) & 1;
  }

  return v3;
}

- (id)folderRootStructureRecord
{
  if ([(BRCDirectoryItem *)self isDirectory])
  {
    v3 = [(BRCLocalItem *)self itemID];
    v4 = [v3 structureRecordIDForItemType:-[BRCStatInfo type](self->super._st zone:"type") aliasTargetZoneIsShared:{self->super._serverZone, 1}];

    v5 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"structure" recordID:v4];
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [BRCDirectoryItem(CKConversions) folderRootStructureRecord];
    }

    v5 = 0;
  }

  return v5;
}

- (id)folderAppLibraryRootRecord
{
  v3 = [(BRCLocalItem *)self clientZone];
  if (![v3 isPrivateZone])
  {
    goto LABEL_6;
  }

  v4 = [(BRCLocalItem *)self appLibrary];
  if (([v4 wasMovedToCloudDocs] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v5 = [(BRCLocalItem *)self appLibrary];
  v6 = [v5 isCloudDocsAppLibrary];

  if ((v6 & 1) == 0)
  {
    v7 = MEMORY[0x277CBC5A0];
    v8 = [(BRCLocalItem *)self appLibrary];
    v9 = [v8 mangledID];
    v10 = [(BRCLocalItem *)self structureRecordID];
    v11 = [v10 zoneID];
    v12 = [v7 rootAppLibraryRecordForAppLibraryID:v9 zoneID:v11];

    goto LABEL_8;
  }

LABEL_7:
  v13 = MEMORY[0x277CBC5A0];
  v8 = [(BRCLocalItem *)self structureRecordID];
  v9 = [v8 zoneID];
  v12 = [v13 rootDirectoryRecordForZoneID:v9];
LABEL_8:

  return v12;
}

- (void)_signalPropagationToChildrenForce:(BOOL)a3
{
  if (!a3)
  {
    v4 = [(BRCLocalItem *)self->super._orig st];
    v5 = [v4 processingStamp];
    if (v5)
    {
      v6 = v5;
      v7 = [(BRCLocalStatInfo *)self->super._st processingStamp];

      if (!v7)
      {
        v8 = brc_bread_crumbs();
        v9 = brc_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          [(BRCDirectoryItem(FPFSAdditions) *)self _signalPropagationToChildrenForce:v8, v9];
        }

        return;
      }
    }

    else
    {
    }
  }

  [(BRCLocalStatInfo *)self->super._st _markNeedsPropertiesPropagatedToChildren];
  v10 = [(BRCAccountSession(FPFSAdditions) *)self->super._session fsImporter];
  [v10 signal];
}

- (void)documentsDirectoryUpdatedDocumentsScopePublic
{
  if ([(BRCItemID *)self->super._itemID isDocumentsFolder])
  {
    v3 = [(BRCLocalItem *)self appLibrary];
    v4 = [v3 containerMetadata];
    self->super._isUserVisible = [v4 isDocumentScopePublic];

    self->super._localDiffs |= 0x8000000000uLL;
    [(BRCLocalItem *)self markForceNotify];

    [(BRCDirectoryItem *)self signalPropagationToChildren];
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [BRCDirectoryItem(FPFSAdditions) documentsDirectoryUpdatedDocumentsScopePublic];
    }
  }
}

- (void)markRemovedFromFilesystemRecursively:(BOOL)a3
{
  v3 = a3;
  v12.receiver = self;
  v12.super_class = BRCDirectoryItem;
  [(BRCLocalItem *)&v12 markRemovedFromFilesystemRecursively:?];
  if (self->_previousItemGlobalID)
  {
    [(BRCDirectoryItem *)self markDirectoryMergeOrCrossZonePropagationComplete];
  }

  if (v3)
  {
    if ([(BRCDirectoryItem *)self containsDirFault])
    {
      v5 = [(BRCStatInfo *)self->super._st ckInfo];
      if ([v5 hasDeletionChangeToken])
      {
LABEL_10:

        goto LABEL_11;
      }

      v6 = [(BRCLocalItem *)self isSharedToMeTopLevelItem];

      if (!v6)
      {
        v7 = brc_bread_crumbs();
        v8 = brc_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [(BRCDirectoryItem(FPFSAdditions) *)self markRemovedFromFilesystemRecursively:v7, v8];
        }

        v5 = [(BRCServerZone *)self->super._serverZone changeState];
        v9 = [v5 changeToken];
        v10 = [v9 data];
        v11 = [(BRCStatInfo *)self->super._st ckInfo];
        [v11 setDeletionChangeToken:v10];

        goto LABEL_10;
      }
    }

LABEL_11:
    [(BRCLocalStatInfo *)self->super._st _markNeedsPropertiesPropagatedToChildren];
  }
}

- (void)markDirectoryMergeOrCrossZonePropagationComplete
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(BRCAccountSession *)self->super._session itemFetcher];
  v4 = [v3 itemByItemGlobalID:self->_previousItemGlobalID];
  v5 = [v4 asDirectory];

  if (!v5)
  {
    [BRCDirectoryItem(FPFSAdditions) markDirectoryMergeOrCrossZonePropagationComplete];
  }

  if (([v5 isLost] & 1) == 0)
  {
    [BRCDirectoryItem(FPFSAdditions) markDirectoryMergeOrCrossZonePropagationComplete];
  }

  v6 = [(BRCItemGlobalID *)self->_previousItemGlobalID zoneRowID];
  v7 = [(BRCClientZone *)self->super._clientZone dbRowID];
  v8 = [v6 br_isEqualToNumber:v7];

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = "Cross zone move";
    v17 = 136315906;
    if (v8)
    {
      v16 = "Directory merge";
    }

    v18 = v16;
    v19 = 2112;
    v20 = self;
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] %s propagation completed for item %@. Deleting tombstone item %@%@", &v17, 0x2Au);
  }

  [v5 markRemovedFromFilesystemRecursively:1];
  [v5 markNeedsUploadOrSyncingUp];
  [v5 saveToDB];
  v11 = [(BRCAccountSession *)self->super._session applyScheduler];
  v12 = [v5 serverZone];
  [v11 rescheduleSuspendedJobsMatching:v12 inState:17];

  v13 = [v5 clientZone];
  [v13 scheduleSyncUp];

  previousItemGlobalID = self->_previousItemGlobalID;
  self->_previousItemGlobalID = 0;

  v15 = *MEMORY[0x277D85DE8];
}

- (void)markChildPropagationComplete
{
  [(BRCLocalStatInfo *)self->super._st _markChildPropagationComplete];
  [(BRCLocalItem *)self markNeedsUploadOrSyncingUp];
  clientZone = self->super._clientZone;

  [(BRCClientZone *)clientZone scheduleSyncUp];
}

- (BOOL)handlePathMatchConflictForDirectoryCreationIfNecessary
{
  if (([(BRCPQLConnection *)self->super._db isBatchSuspended]& 1) == 0)
  {
    [BRCDirectoryItem(FPFSAdditions) handlePathMatchConflictForDirectoryCreationIfNecessary];
  }

  clientZone = self->super._clientZone;
  v4 = [(BRCStatInfo *)self->super._st parentID];
  v5 = [(BRCLocalStatInfo *)self->super._st logicalName];
  v6 = [(BRCClientZone *)clientZone itemByParentID:v4 andLogicalName:v5];

  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [BRCDirectoryItem(FPFSAdditions) handlePathMatchConflictForDirectoryCreationIfNecessary];
  }

  v9 = [(BRCStatInfo *)self->super._st ckInfo];
  v10 = [v9 etag];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v13 = [(BRCClientZone *)self->super._clientZone mangledID];
  v14 = [BRCUserDefaults defaultsForMangledID:v13];
  v15 = [v14 reviveDeadDirsOnNewDirCreations];

  if (v15)
  {
    v16 = self->super._clientZone;
    v17 = [(BRCStatInfo *)self->super._st parentID];
    v18 = [(BRCLocalStatInfo *)self->super._st logicalName];
    v12 = [(BRCClientZone *)v16 deadItemByParentID:v17 andUnbouncedLogicalName:v18];

    v9 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [BRCDirectoryItem(FPFSAdditions) handlePathMatchConflictForDirectoryCreationIfNecessary];
    }

    goto LABEL_10;
  }

  v12 = 0;
LABEL_11:
  if ([v12 isDead])
  {
    v19 = [v12 st];
    v20 = [v19 processingStamp];
    v21 = !v20 && [v12 isDirectory] && (objc_msgSend(v12, "sharingOptions") & 4) == 0;

    if (!v6)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v21 = 0;
    if (!v6)
    {
      goto LABEL_25;
    }
  }

  if ([v6 isDead])
  {
    goto LABEL_25;
  }

  v22 = [(BRCLocalItem *)self itemID];
  if (([v22 isDocumentsFolder] & 1) == 0)
  {

LABEL_31:
    v35 = brc_bread_crumbs();
    v36 = brc_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [BRCDirectoryItem(FPFSAdditions) handlePathMatchConflictForDirectoryCreationIfNecessary];
    }

    [(BRCLocalItem *)self markBouncedToNextAvailableBounceNumber:510];
    if (v21)
    {
      goto LABEL_26;
    }

LABEL_34:
    v34 = 0;
    goto LABEL_35;
  }

  v23 = [v6 itemID];
  v24 = [v23 isDocumentsFolder];

  if (v24)
  {
    goto LABEL_31;
  }

  v25 = brc_bread_crumbs();
  v26 = brc_default_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [(BRCDirectoryItem(FPFSAdditions) *)v25 handlePathMatchConflictForDirectoryCreationIfNecessary];
  }

  [v6 markBouncedToNextAvailableBounceNumber:511];
  [v6 saveToDB];
LABEL_25:
  if (!v21)
  {
    goto LABEL_34;
  }

LABEL_26:
  v27 = brc_bread_crumbs();
  v28 = brc_default_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [BRCDirectoryItem(FPFSAdditions) handlePathMatchConflictForDirectoryCreationIfNecessary];
  }

  v29 = self->super._clientZone;
  v30 = [v12 itemID];
  v31 = [(BRCClientZone *)v29 serverItemByItemID:v30];

  db = self->super._db;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __89__BRCDirectoryItem_FPFSAdditions__handlePathMatchConflictForDirectoryCreationIfNecessary__block_invoke;
  v38[3] = &unk_278503250;
  v39 = v12;
  v40 = self;
  v41 = v31;
  v33 = v31;
  v34 = [(BRCPQLConnection *)db groupInTransaction:v38];

LABEL_35:
  return v34;
}

uint64_t __89__BRCDirectoryItem_FPFSAdditions__handlePathMatchConflictForDirectoryCreationIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) st];
  v3 = [v2 ckInfo];

  v4 = [*(*(a1 + 40) + 80) ckInfo];
  v5 = [v4 etagBeforeCrossZoneMove];
  [v3 setEtagBeforeCrossZoneMove:v5];

  v6 = [*(a1 + 32) itemID];
  [*(a1 + 32) markNeedsDeleteForItemIDTransfer];
  if (![*(a1 + 32) saveToDB])
  {
    goto LABEL_6;
  }

  [*(a1 + 40) learnItemID:v6 serverItem:*(a1 + 48)];
  [*(*(a1 + 40) + 80) setCkInfo:v3];
  *(*(a1 + 40) + 88) = 4;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __89__BRCDirectoryItem_FPFSAdditions__handlePathMatchConflictForDirectoryCreationIfNecessary__block_invoke_cold_1(v7, v8);
  }

  if ([*(a1 + 40) _insertRecursiveProperties])
  {
    v9 = [*(a1 + 40) saveToDB];
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  return v9;
}

- (BOOL)updateFromServerItem:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BRCDirectoryItem;
  v5 = [(BRCLocalItem *)&v9 updateFromServerItem:v4];
  if (v5)
  {
    self->_mtime = [v4 directoryMtime];
    if ([v4 isDirectoryFault])
    {
      if (![(BRCDirectoryItem *)self isDirectoryFault])
      {
        v6 = brc_bread_crumbs();
        v7 = brc_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [BRCDirectoryItem(FPFSAdditions) updateFromServerItem:];
        }

        [(BRCStatInfo *)self->super._st setType:9];
      }
    }
  }

  return v5;
}

- (BOOL)mergeContentsIntoDirectory:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && !v4[26])
  {
    db = self->super._db;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__BRCDirectoryItem_FPFSAdditions__mergeContentsIntoDirectory___block_invoke;
    v11[3] = &unk_278500FA8;
    v12 = v4;
    v13 = self;
    v8 = [(BRCPQLConnection *)db groupInTransaction:v11];
    v6 = v12;
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [BRCDirectoryItem(FPFSAdditions) mergeContentsIntoDirectory:];
    }

    v8 = 0;
  }

  return v8;
}

uint64_t __62__BRCDirectoryItem_FPFSAdditions__mergeContentsIntoDirectory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) itemGlobalID];
  v3 = *(a1 + 32);
  v4 = *(v3 + 208);
  *(v3 + 208) = v2;

  v5 = [*(a1 + 40) st];
  v6 = [v5 ckInfo];
  v7 = [v6 etag];
  v8 = [*(*(a1 + 40) + 80) ckInfo];
  [v8 setEtagBeforeCrossZoneMove:v7];

  [*(a1 + 32) signalPropagationToChildren];
  result = [*(a1 + 32) saveToDB];
  if (result)
  {
    [*(a1 + 40) _markZombieForCrossZoneMove];
    v10 = *(a1 + 40);

    return [v10 saveToDB];
  }

  return result;
}

- (void)_markZombieForCrossZoneMove
{
  [(BRCLocalStatInfo *)self->super._st _markZombieForCrossZoneMove];
  self->super._isUserVisible = 0;
  previousItemGlobalID = self->_previousItemGlobalID;
  self->_previousItemGlobalID = 0;
}

- (void)_insertZombieForCrossZoneMove
{
  if (([(BRCPQLConnection *)self->super._db isBatchSuspended]& 1) == 0)
  {
    [BRCDirectoryItem(FPFSAdditions) _insertZombieForCrossZoneMove];
  }

  v3 = [(BRCDirectoryItem *)self copy];
  [v3 _restorePreviousGlobalID:self->_previousItemGlobalID];
  v4 = [v3[10] ckInfo];
  [v4 revertEtagsForOldZoneTombstone];

  [v3 _markZombieForCrossZoneMove];
  [v3 saveToDB];
}

- (void)_crossZoneMoveToParent:(id)a3
{
  v4 = [(BRCLocalItem *)self _updateCrossZoneParent:a3];
  previousItemGlobalID = self->_previousItemGlobalID;
  self->_previousItemGlobalID = v4;

  [(BRCLocalItem *)self markForceNeedsSyncUp];
  [(BRCLocalItem *)self saveToDB];

  [(BRCDirectoryItem *)self _insertZombieForCrossZoneMove];
}

- (unint64_t)diffAgainstServerItem:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = BRCDirectoryItem;
  v5 = [(BRCLocalItem *)&v17 diffAgainstServerItem:v4];
  if ([(BRCDirectoryItem *)self isDirectoryWithPackageName])
  {
    v6 = [(BRCLocalStatInfo *)self->super._st logicalName];
    v7 = [v4 st];
    v8 = [v7 logicalName];
    v9 = [v6 isEqualToString:v8];

    v10 = v5 & 0xFFFFFFFFFFFFFFBFLL;
    if ((v9 & ((v5 & 0x40) != 0)) != 0)
    {
      v5 &= ~0x40uLL;
    }
  }

  else
  {
    v10 = v5 & 0xFFFFFFFFFFFFFFBFLL;
  }

  if ([(BRCDirectoryItem *)self isDirectoryWithPackageName])
  {
    v11 = [(BRCLocalStatInfo *)self->super._st logicalNameWithoutLocalBounce];
    v12 = [v4 st];
    v13 = [v12 logicalName];
    if ([v11 isEqualToString:v13])
    {

      if ((v5 & 0x40) != 0)
      {
        v5 = v10;
      }
    }

    else
    {
    }
  }

  v14 = [(BRCDirectoryItem *)self mtime];
  if (v14 == [v4 directoryMtime])
  {
    v15 = v5;
  }

  else
  {
    v15 = v5 | 0x4000;
  }

  return v15;
}

- (unint64_t)diffAgainstLocalItem:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BRCDirectoryItem;
  v5 = [(BRCLocalItem *)&v14 diffAgainstLocalItem:v4];
  if ((v5 & 0x4000000000000) == 0)
  {
    previousItemGlobalID = self->_previousItemGlobalID;
    v7 = [v4 asDirectory];
    v8 = v7[26];
    v9 = previousItemGlobalID;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
      v12 = 0;
    }

    else if (v10)
    {
      v12 = ![(BRCItemGlobalID *)v9 isEqual:v10];
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v5 |= 0x4000000000000uLL;
    }
  }

  return v5;
}

- (id)_initFromPQLResultSet:(id)a3 session:(id)a4 db:(id)a5 error:(id *)a6
{
  v10 = a3;
  v19.receiver = self;
  v19.super_class = BRCDirectoryItem;
  v11 = [(BRCLocalItem *)&v19 _initFromPQLResultSet:v10 session:a4 db:a5 error:a6];
  if (v11)
  {
    v12 = [v10 objectOfClass:objc_opt_class() atIndex:49];
    v13 = [v10 numberAtIndex:50];
    v14 = v13;
    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = [[BRCItemGlobalID alloc] initWithZoneRowID:v13 itemID:v12];
      v17 = v11[26];
      v11[26] = v16;
    }

    v11[27] = [v10 longLongAtIndex:37];
  }

  return v11;
}

- (id)_initWithServerItem:(id)a3 dbRowID:(unint64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = BRCDirectoryItem;
  v7 = [(BRCLocalItem *)&v13 _initWithServerItem:v6 dbRowID:a4];
  if (v7)
  {
    *(v7 + 27) = [v6 directoryMtime];
    v8 = [v6 st];
    if ([v8 type])
    {
    }

    else
    {
      v9 = [*(v7 + 1) notificationManager];
      v10 = [v6 itemGlobalID];
      v11 = [v9 hasWatcherMatchingGlobalItemID:v10];

      if ((v11 & 1) == 0)
      {
        [*(v7 + 10) setType:9];
      }
    }
  }

  return v7;
}

- (id)_initWithLocalItem:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BRCDirectoryItem;
  v5 = [(BRCLocalItem *)&v8 _initWithLocalItem:v4];
  if (v5)
  {
    v6 = [v4 asDirectory];
    *(v5 + 27) = *(v6 + 216);
    objc_storeStrong(v5 + 26, *(v6 + 208));
  }

  return v5;
}

- (void)_learnItemID:(id)a3 serverItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BRCDirectoryItem;
  [(BRCLocalItem *)&v14 _learnItemID:v6 serverItem:v7];
  if (v7)
  {
    v8 = [(BRCLocalItem *)self st];
    v9 = [v7 st];
    [v8 setType:{objc_msgSend(v9, "type")}];

LABEL_8:
    goto LABEL_9;
  }

  if ([v6 isDocumentsFolder])
  {
    v10 = [(BRCLocalItem *)self appLibrary];
    v11 = [v10 state];

    v12 = [(BRCLocalItem *)self st];
    v8 = v12;
    if ((v11 & 0x4000000) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = 9;
    }

    [v12 setType:v13];
    goto LABEL_8;
  }

LABEL_9:
}

- (BOOL)isAppLibraryTrashFolder
{
  v3 = [(BRCLocalStatInfo *)self->super._st logicalName];
  v4 = [v3 isEqualToString:*MEMORY[0x277CFADB8]];

  if (!v4)
  {
    return 0;
  }

  v5 = [(BRCLocalItem *)self appLibrary];
  v6 = [v5 isCloudDocsAppLibrary];

  v7 = [(BRCStatInfo *)self->super._st parentID];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 isNonDesktopRoot];
  }

  else
  {
    v9 = [v7 isDocumentsFolder];
  }

  v10 = v9;

  return v10;
}

- (id)descriptionWithContext:(id)a3
{
  v7.receiver = self;
  v7.super_class = BRCDirectoryItem;
  v4 = [(BRCLocalItem *)&v7 descriptionWithContext:a3];
  v5 = [v4 mutableCopy];

  if (self->_previousItemGlobalID)
  {
    [v5 appendFormat:@" prev-glob{%@}", self->_previousItemGlobalID];
  }

  if (self->_childItemCount)
  {
    [v5 appendFormat:@" ch:%@", self->_childItemCount];
  }

  return v5;
}

- (BOOL)possiblyContainsSharedItem
{
  v3 = [(BRCPQLConnection *)self->super._db fetch:@"SELECT shared_by_me_count | shared_to_me_count, dir_faults_count FROM item_recursive_properties WHERE item_rowid = %llu", self->super._dbRowID];
  if (![v3 next])
  {
    goto LABEL_6;
  }

  if (([v3 BOOLAtIndex:0] & 1) == 0)
  {
    if ([v3 BOOLAtIndex:1])
    {
      db = self->super._db;
      itemID = self->super._itemID;
      v7 = [(BRCClientZone *)self->super._clientZone dbRowID];
      v8 = [(PQLConnection *)db numberWithSQL:@"SELECT IFNULL(shared_children_count, 0) | IFNULL(shared_alias_count, 0) FROM server_items WHERE item_id = %@ AND zone_rowid = %@", itemID, v7];

      v4 = [v8 BOOLValue];
      goto LABEL_7;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = 1;
LABEL_7:

  return v4;
}

- (BOOL)isSharedByMeOrContainsSharedByMeItem
{
  v3 = [(BRCPQLConnection *)self->super._db fetch:@"SELECT shared_by_me_count, dir_faults_count FROM item_recursive_properties WHERE item_rowid = %llu", self->super._dbRowID];
  if (![v3 next])
  {
    goto LABEL_6;
  }

  if (([v3 BOOLAtIndex:0] & 1) == 0)
  {
    if ([v3 BOOLAtIndex:1])
    {
      db = self->super._db;
      itemID = self->super._itemID;
      v7 = [(BRCClientZone *)self->super._clientZone dbRowID];
      v8 = [(PQLConnection *)db numberWithSQL:@"SELECT shared_children_count FROM server_items WHERE item_id = %@ AND zone_rowid = %@", itemID, v7];

      v4 = [v8 BOOLValue];
      goto LABEL_7;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = 1;
LABEL_7:

  return v4;
}

- (BOOL)isSharedToMeOrContainsSharedToMeItem
{
  v3 = [(BRCPQLConnection *)self->super._db fetch:@"SELECT shared_to_me_count, dir_faults_count FROM item_recursive_properties WHERE item_rowid = %llu", self->super._dbRowID];
  if (![v3 next])
  {
    goto LABEL_6;
  }

  if (([v3 BOOLAtIndex:0] & 1) == 0)
  {
    if ([v3 BOOLAtIndex:1])
    {
      db = self->super._db;
      itemID = self->super._itemID;
      v7 = [(BRCClientZone *)self->super._clientZone dbRowID];
      v8 = [(PQLConnection *)db numberWithSQL:@"SELECT shared_alias_count FROM server_items WHERE item_id = %@ AND zone_rowid = %@", itemID, v7];

      v4 = [v8 BOOLValue];
      goto LABEL_7;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = 1;
LABEL_7:

  return v4;
}

- (BOOL)containsOverQuotaItems
{
  v2 = [(PQLConnection *)self->super._db numberWithSQL:@"SELECT over_quota_count FROM item_recursive_properties WHERE item_rowid = %llu", self->super._dbRowID];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)containsDirFault
{
  if ([(BRCDirectoryItem *)self isDirectoryFault])
  {
    return 1;
  }

  v4 = [(PQLConnection *)self->super._db numberWithSQL:@"SELECT dir_faults_count FROM item_recursive_properties WHERE item_rowid = %llu", self->super._dbRowID];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)containsPendingUploadOrSyncUp
{
  v2 = [(PQLConnection *)self->super._db numberWithSQL:@"SELECT 1 FROM item_recursive_properties WHERE item_rowid = %llu AND (needs_sync_up_count != 0 OR needs_upload_count != 0)", self->super._dbRowID];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)containsPendingDeleteDocuments
{
  db = self->super._db;
  dbRowID = self->super._dbRowID;
  v4 = [(BRCClientZone *)self->super._clientZone dbRowID];
  v5 = [(PQLConnection *)db numberWithSQL:@"WITH RECURSIVE pending_delete_children (item_id, item_type, needs_delete_doc_count) AS(    SELECT item_id, item_type, needs_delete_doc_count FROM item_recursive_properties      WHERE item_rowid = %llu AND needs_delete_doc_count != 0  UNION ALL     SELECT ip.item_id, ip.item_type, ip.needs_delete_doc_count FROM item_recursive_properties AS ip INNER JOIN pending_delete_children AS p WHERE ip.item_parent_id = p.item_id AND ip.zone_rowid = %@ AND ip.needs_delete_doc_count != 0) SELECT 1 FROM pending_delete_children AS pdc WHERE pdc.needs_delete_doc_count != 0 AND pdc.item_type IN (1, 2, 8) LIMIT 1", dbRowID, v4];

  LOBYTE(v4) = [v5 BOOLValue];
  return v4;
}

- (BOOL)hasDeadChildren
{
  db = self->super._db;
  itemID = self->super._itemID;
  v4 = [(BRCClientZone *)self->super._clientZone dbRowID];
  v5 = [(PQLConnection *)db numberWithSQL:@"SELECT 1 FROM client_items WHERE item_parent_id = %@ AND item_state = 1 AND item_parent_zone_rowid = %@ LIMIT 1", itemID, v4];

  LOBYTE(v4) = [v5 BOOLValue];
  return v4;
}

- (BOOL)hasLiveChildren
{
  v3 = [(BRCClientZone *)self->super._clientZone db];
  itemID = self->super._itemID;
  v5 = [(BRCClientZone *)self->super._clientZone dbRowID];
  v6 = [v3 numberWithSQL:{@"SELECT 1 FROM client_items WHERE item_parent_id = %@    AND item_state IN (0)   AND item_parent_zone_rowid = %@ LIMIT 1", itemID, v5}];

  LOBYTE(v5) = [v6 BOOLValue];
  return v5;
}

- (id)_serverChildItemCountIncludingHiddenFiles
{
  clientZone = self->super._clientZone;
  itemID = self->super._itemID;
  v4 = [(BRCLocalItem *)self dbFacade];
  v5 = [(BRCClientZone *)clientZone serverChildCountWithParentID:itemID dbFacade:v4];

  return v5;
}

- (id)_serverChildItemCount
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(BRCDirectoryItem *)self _serverChildItemCountIncludingHiddenFiles];
  if (v3)
  {
    v4 = v3;
    clientZone = self->super._clientZone;
    itemID = self->super._itemID;
    v7 = [(BRCLocalItem *)self dbFacade];
    v8 = [(BRCClientZone *)clientZone serverHiddenChildCountWithParentID:itemID dbFacade:v7];

    v9 = [v4 longLongValue];
    v10 = v9 - [v8 longLongValue];
    if (v10 < 0)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v16 = 138413058;
        v17 = v4;
        v18 = 2112;
        v19 = v8;
        v20 = 2112;
        v21 = self;
        v22 = 2112;
        v23 = v11;
        _os_log_fault_impl(&dword_223E7A000, v12, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: server count %@ minus hidden count %@ is less than 0 for %@%@", &v16, 0x2Au);
      }

      v10 = 0;
    }

    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v10];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)childItemCount
{
  if (!self->_childItemCount)
  {
    if ([(BRCDirectoryItem *)self isDirectoryFault])
    {
      v3 = [(BRCDirectoryItem *)self _serverChildItemCount];
      childItemCount = self->_childItemCount;
      self->_childItemCount = v3;
    }

    else
    {
      clientZone = self->super._clientZone;
      itemID = self->super._itemID;
      childItemCount = [(BRCLocalItem *)self dbFacade];
      v7 = [(BRCClientZone *)clientZone clientChildCountWithParentID:itemID dbFacade:childItemCount];
      v8 = self->_childItemCount;
      self->_childItemCount = v7;
    }
  }

  v9 = self->_childItemCount;

  return v9;
}

- (id)serverQuotaUsage
{
  clientZone = self->super._clientZone;
  itemID = self->super._itemID;
  v4 = [(BRCLocalItem *)self dbFacade];
  v5 = [(BRCClientZone *)clientZone serverQuotaUsageWithParentID:itemID dbFacade:v4];

  return v5;
}

- (id)clientZonesChildrenNeedingSyncUpAreIn
{
  v31 = *MEMORY[0x277D85DE8];
  v21 = objc_opt_new();
  db = self->super._db;
  itemID = self->super._itemID;
  v5 = [(BRCClientZone *)self->super._clientZone dbRowID];
  v6 = [(BRCPQLConnection *)db fetch:@"SELECT DISTINCT zone_rowid FROM client_items WHERE item_parent_id = %@   AND item_parent_zone_rowid = %@    AND item_localsyncupstate = 4   AND item_state IN (0, 1)", itemID, v5];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [v6 enumerateObjectsOfClass:objc_opt_class()];
  v7 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [(BRCAccountSession *)self->super._session serverZoneByRowID:v11];
        v13 = [v12 clientZone];
        if (v13)
        {
          [v21 addObject:v13];
        }

        else
        {
          v14 = brc_bread_crumbs();
          v15 = brc_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v27 = v11;
            v28 = 2112;
            v29 = v14;
            _os_log_fault_impl(&dword_223E7A000, v15, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Can't find clientZone for zoneID %@%@", buf, 0x16u);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  if ([v21 count])
  {
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)_retryPostponedIfNeededForDiffs:(unint64_t)a3
{
  v3 = a3;
  if ([(BRCLocalItem *)self isDead])
  {
    if ([(BRCLocalItem *)self isKnownByServerOrInFlight])
    {
      return;
    }
  }

  else if ((v3 & 0x80000000) == 0)
  {
    if (![(BRCLocalItem *)self isOnDisk])
    {
      return;
    }

    v5 = [(BRCLocalItem *)self orig];
    v6 = [v5 isOnDisk];

    if ((v6 & 1) != 0 || ![(BRCLocalItem *)self isKnownByServerOrInFlight])
    {
      return;
    }
  }

  v7 = [(BRCAccountSession *)self->super._session applyScheduler];
  [v7 didCreateMissingParentID:self->super._itemID zone:self->super._serverZone];
}

- (BOOL)_recomputeChildItemCount
{
  db = self->super._db;
  v4 = [(BRCLocalItem *)self itemID];
  v5 = [(BRCClientZone *)self->super._clientZone dbRowID];
  LOBYTE(db) = [(BRCPQLConnection *)db execute:@"UPDATE client_items AS parent SET visible_child_count = (SELECT COUNT(*) FROM client_items AS child WHERE child.item_parent_id = parent.item_id AND child.item_parent_zone_rowid = parent.zone_rowid AND (child.item_user_visible = 1 OR (child.item_scope == 3 AND child.item_filename != .Trash))) WHERE parent.item_id = %@ AND parent.zone_rowid = %@", v4, v5];

  return db;
}

- (BOOL)_insertInDB:(id)a3 dbRowID:(unint64_t)a4
{
  v48 = a3;
  [(BRCDirectoryItem *)self _retryPostponedIfNeededForDiffs:0xFF003FF3FF7FFFLL];
  v47 = [(BRCClientZone *)self->super._clientZone dbRowID];
  mtime = self->_mtime;
  itemID = self->super._itemID;
  ownerKey = self->super._ownerKey;
  sharingOptions = self->super._sharingOptions;
  sideCarCKInfo = self->super._sideCarCKInfo;
  parentZoneRowID = self->super._parentZoneRowID;
  localDiffs = self->super._localDiffs;
  notifsRank = self->super._notifsRank;
  syncUpState = self->super._syncUpState;
  v42 = [(BRCLocalItem *)self appLibrary];
  v45 = [v42 dbRowID];
  minimumSupportedOSRowID = self->super._minimumSupportedOSRowID;
  isUserVisible = self->super._isUserVisible;
  v46 = [(BRCStatInfo *)self->super._st ckInfo];
  v29 = [(BRCStatInfo *)self->super._st state];
  v28 = [(BRCStatInfo *)self->super._st type];
  v27 = [(BRCStatInfo *)self->super._st mode];
  v26 = [(BRCStatInfo *)self->super._st birthtime];
  v23 = [(BRCStatInfo *)self->super._st lastUsedTime];
  v22 = [(BRCStatInfo *)self->super._st favoriteRank];
  v44 = [(BRCStatInfo *)self->super._st parentID];
  st = self->super._st;
  logicalName = st->super._logicalName;
  if (!logicalName)
  {
    logicalName = &stru_2837504F0;
  }

  v21 = logicalName;
  v20 = [(BRCStatInfo *)st isHiddenExt];
  v25 = [(BRCStatInfo *)self->super._st finderTags];
  v24 = [(BRCStatInfo *)self->super._st xattrSignature];
  v18 = [(BRCStatInfo *)self->super._st trashPutBackPath];
  v19 = [(BRCStatInfo *)self->super._st trashPutBackParentID];
  v7 = [(BRCStatInfo *)self->super._st aliasTarget];
  v8 = [(BRCStatInfo *)self->super._st creatorRowID];
  v9 = [(BRCLocalStatInfo *)self->super._st processingStamp];
  v10 = [(BRCLocalStatInfo *)self->super._st rawBouncedLogicalName];
  v11 = [(BRCLocalStatInfo *)self->super._st itemScope];
  v12 = [(BRCLocalStatInfo *)self->super._st localChangeCount];
  v13 = [(BRCLocalStatInfo *)self->super._st oldVersionIdentifier];
  [(BRCLocalStatInfo *)self->super._st fpCreationItemIdentifier];
  v14 = v17 = v11;
  v41 = [v48 execute:{@"INSERT INTO client_items(rowid, zone_rowid, version_mtime, visible_child_count, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier) VALUES(%lld, %@, %lld, 0, %@, %@, %ld, %@, %@, %d, %lld, %lld, %@, %@, %d, %@, %d, %d, %d, %lld, %lld, %lld, %@, %@, %d, %@, %@, %@, %@, %@, %@, %@, %@, %d, %llu, %@, %@)", a4, v47, mtime, itemID, ownerKey, sharingOptions, sideCarCKInfo, parentZoneRowID, syncUpState, localDiffs, notifsRank, v45, minimumSupportedOSRowID, isUserVisible, v46, v29, v28, v27, v26, v23, v22, v44, v21, v20, v25, v24, v18, v19, v7, v8, v9, v10, v17, v12, v13, v14}];

  v15 = v41 && (v49.receiver = self, v49.super_class = BRCDirectoryItem, [(BRCLocalItem *)&v49 _insertInDB:v48 dbRowID:a4]) && [(BRCDirectoryItem *)self _insertRecursiveProperties]&& [(BRCDirectoryItem *)self _recomputeChildItemCount];
  return v15;
}

- (BOOL)_updateInDB:(id)a3 diffs:(unint64_t)a4
{
  v101 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ((a4 & 0x80000000) != 0 && (previousItemGlobalID = self->_previousItemGlobalID, [(BRCLocalItem *)self->super._orig itemGlobalID], v8 = objc_claimAutoreleasedReturnValue(), LOBYTE(previousItemGlobalID) = [(BRCItemGlobalID *)previousItemGlobalID isEqualToItemGlobalID:v8], v8, (previousItemGlobalID & 1) == 0))
  {
    if (([v6 isBatchSuspended] & 1) == 0)
    {
      [BRCDirectoryItem _updateInDB:diffs:];
    }

    itemID = self->super._itemID;
    v16 = [(BRCClientZone *)self->super._clientZone dbRowID];
    v17 = [(BRCLocalItem *)self->super._orig itemID];
    v18 = [(BRCClientZone *)self->super._clientZone dbRowID];
    v9 = [v6 execute:{@"UPDATE client_items   SET item_parent_id = %@, item_parent_zone_rowid = %@ WHERE item_parent_id = %@   AND item_parent_zone_rowid = %@", itemID, v16, v17, v18}];

    v19 = [v6 changes];
    if (v19 >= 1)
    {
      v20 = v19;
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v51 = [(BRCLocalItem *)self->super._orig itemID];
        v52 = self->super._itemID;
        *buf = 134218754;
        v94 = v20;
        v95 = 2112;
        v96 = v51;
        v97 = 2112;
        v98 = v52;
        v99 = 2112;
        v100 = v21;
        _os_log_debug_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] Updated %llu items from parent %@ to %@%@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if ((a4 & 0x4000000000000) != 0)
  {
    v10 = [(BRCItemGlobalID *)self->_previousItemGlobalID itemID];
    v11 = [(BRCItemGlobalID *)self->_previousItemGlobalID zoneRowID];
    v12 = [v6 execute:{@"UPDATE client_items   SET version_old_zone_item_id = %@, version_old_zone_rowid = %@ WHERE rowid = %llu", v10, v11, self->super._dbRowID}];

    if ((v12 & 1) == 0)
    {
      v9 = 0;
      goto LABEL_18;
    }
  }

  else if (!v9)
  {
    goto LABEL_18;
  }

  if ([(BRCLocalItem *)self isAlmostDead])
  {
    v13 = [(BRCLocalItem *)self orig];
    v14 = [v13 isAlmostDead];

    if ((v14 & 1) == 0)
    {
      v54 = a4;
      v84 = v6;
      if (([v6 isBatchSuspended] & 1) == 0)
      {
        [BRCDirectoryItem _updateInDB:diffs:];
      }

      v24 = [(BRCClientZone *)self->super._clientZone db];
      v25 = [(BRCLocalItem *)self itemID];
      v26 = [(BRCClientZone *)self->super._clientZone dbRowID];
      v27 = [v24 fetch:{@"SELECT si.rowid FROM server_items AS si INNER JOIN client_unapplied_table AS ap ON si.item_rank = ap.throttle_id WHERE si.item_parent_id = %@   AND si.zone_rowid = %@   AND si.item_type = 3   AND ap.throttle_state = 24", v25, v26}];

      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v82 = v27;
      v28 = [v27 enumerateObjectsOfClass:objc_opt_class()];
      v29 = [v28 countByEnumeratingWithState:&v88 objects:v92 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v89;
        do
        {
          v32 = 0;
          do
          {
            if (*v89 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v88 + 1) + 8 * v32);
            v34 = [(BRCAccountSession *)self->super._session itemFetcher];
            v35 = [v34 serverItemByRowID:{objc_msgSend(v33, "longLongValue")}];

            v36 = brc_bread_crumbs();
            v37 = brc_default_log();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v94 = v35;
              v95 = 2112;
              v96 = v36;
              _os_log_debug_impl(&dword_223E7A000, v37, OS_LOG_TYPE_DEBUG, "[DEBUG] Inserting tombstone for alias %@ which is pending target%@", buf, 0x16u);
            }

            v38 = [v35 newLocalItemWithDBRowID:0];
            [v38 markDead];
            [v38 markForceNeedsSyncUp];
            [v38 saveToDB];

            ++v32;
          }

          while (v30 != v32);
          v30 = [v28 countByEnumeratingWithState:&v88 objects:v92 count:16];
        }

        while (v30);
      }

      [(BRCDirectoryItem *)self signalPropagationToChildren];
      a4 = v54;
      [(BRCDirectoryItem *)self _retryPostponedIfNeededForDiffs:v54];
      v6 = v84;
      goto LABEL_36;
    }
  }

  v9 = 1;
LABEL_18:
  v23 = [(BRCLocalItem *)self isLive];
  if ((a4 & 0x40001040000060) != 0 && v23)
  {
    [(BRCDirectoryItem *)self signalPropagationToChildren];
    [(BRCDirectoryItem *)self _retryPostponedIfNeededForDiffs:a4];
    if ((v9 & 1) == 0)
    {
LABEL_43:
      LOBYTE(v9) = 0;
      goto LABEL_45;
    }
  }

  else
  {
    [(BRCDirectoryItem *)self _retryPostponedIfNeededForDiffs:a4];
    if (!v9)
    {
      goto LABEL_45;
    }
  }

LABEL_36:
  v85 = v6;
  v86 = [(BRCClientZone *)self->super._clientZone dbRowID];
  v77 = self->super._itemID;
  ownerKey = self->super._ownerKey;
  sharingOptions = self->super._sharingOptions;
  sideCarCKInfo = self->super._sideCarCKInfo;
  parentZoneRowID = self->super._parentZoneRowID;
  localDiffs = self->super._localDiffs;
  notifsRank = self->super._notifsRank;
  syncUpState = self->super._syncUpState;
  v79 = [(BRCLocalItem *)self appLibrary];
  v83 = [v79 dbRowID];
  minimumSupportedOSRowID = self->super._minimumSupportedOSRowID;
  isUserVisible = self->super._isUserVisible;
  v81 = [(BRCStatInfo *)self->super._st ckInfo];
  v67 = [(BRCStatInfo *)self->super._st state];
  v66 = [(BRCStatInfo *)self->super._st type];
  v65 = [(BRCStatInfo *)self->super._st mode];
  v64 = [(BRCStatInfo *)self->super._st birthtime];
  v62 = [(BRCStatInfo *)self->super._st lastUsedTime];
  v60 = [(BRCStatInfo *)self->super._st favoriteRank];
  v80 = [(BRCStatInfo *)self->super._st parentID];
  st = self->super._st;
  logicalName = st->super._logicalName;
  if (!logicalName)
  {
    logicalName = &stru_2837504F0;
  }

  v57 = logicalName;
  v56 = [(BRCStatInfo *)st isHiddenExt];
  v63 = [(BRCStatInfo *)self->super._st finderTags];
  v61 = [(BRCStatInfo *)self->super._st xattrSignature];
  v59 = [(BRCStatInfo *)self->super._st trashPutBackPath];
  v58 = [(BRCStatInfo *)self->super._st trashPutBackParentID];
  v41 = [(BRCStatInfo *)self->super._st aliasTarget];
  v42 = [(BRCStatInfo *)self->super._st creatorRowID];
  v43 = [(BRCLocalStatInfo *)self->super._st processingStamp];
  v44 = [(BRCLocalStatInfo *)self->super._st rawBouncedLogicalName];
  v45 = [(BRCLocalStatInfo *)self->super._st itemScope];
  v46 = [(BRCLocalStatInfo *)self->super._st localChangeCount];
  v55 = [(BRCLocalStatInfo *)self->super._st oldVersionIdentifier];
  [(BRCLocalStatInfo *)self->super._st fpCreationItemIdentifier];
  v47 = v53 = v46;
  v78 = [v85 execute:{@"UPDATE client_items SET zone_rowid = %@, item_id = %@, item_creator_id = %@, item_sharing_options = %ld, item_side_car_ckinfo = %@, item_parent_zone_rowid = %@, item_localsyncupstate = %d, item_local_diffs = %llu, item_notifs_rank = %lld, app_library_rowid = %@, item_min_supported_os_rowid = %@, item_user_visible = %d, item_stat_ckinfo = %@, item_state = %d, item_type = %d, item_mode = %d, item_birthtime = %lld, item_lastusedtime = %lld, item_favoriterank = %lld, item_parent_id = %@, item_filename = %@, item_hidden_ext = %d, item_finder_tags = %@, item_xattr_signature = %@, item_trash_put_back_path = %@, item_trash_put_back_parent_id = %@, item_alias_target = %@, item_creator = %@, item_processing_stamp = %@, item_bouncedname = %@, item_scope = %d, item_local_change_count = %llu, item_old_version_identifier = %@, fp_creation_item_identifier = %@, version_mtime = %lld  WHERE rowid = %llu", v86, v77, ownerKey, sharingOptions, sideCarCKInfo, parentZoneRowID, syncUpState, localDiffs, notifsRank, v83, minimumSupportedOSRowID, isUserVisible, v81, v67, v66, v65, v64, v62, v60, v80, v57, v56, v63, v61, v59, v58, v41, v42, v43, v44, v45, v53, v55, v47, self->_mtime, self->super._dbRowID}];

  if (!v78)
  {
    LOBYTE(v9) = 0;
    v6 = v85;
    goto LABEL_45;
  }

  v87.receiver = self;
  v87.super_class = BRCDirectoryItem;
  v6 = v85;
  if (![(BRCLocalItem *)&v87 _updateInDB:v85 diffs:a4])
  {
    goto LABEL_43;
  }

  v48 = [(BRCDirectoryItem *)self _updateRecursiveProperties];
  LOBYTE(v9) = (a4 & 0x80000000) == 0 && v48;
  if ((a4 & 0x80000000) != 0 && v48)
  {
    LOBYTE(v9) = [(BRCDirectoryItem *)self _recomputeChildItemCount];
  }

LABEL_45:

  v49 = *MEMORY[0x277D85DE8];
  return v9;
}

void __46__BRCDirectoryItem__deleteFromDB_keepAliases___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __46__BRCDirectoryItem__deleteFromDB_keepAliases___block_invoke_cold_1(a4, v7, v8);
  }

  if (sqlite3_value_int(*a4) != 1)
  {
    __46__BRCDirectoryItem__deleteFromDB_keepAliases___block_invoke_cold_2();
  }

  if (*(a1 + 32))
  {
    v9 = 5;
  }

  else
  {
    v9 = 1;
  }

  v10 = 1;
  if (*(a1 + 32))
  {
    v10 = 2;
  }

  v11 = v9;
  v12 = sqlite3_value_int(a4[v10]);
  sqlite3_result_blob(a2, &v11, 5, 0xFFFFFFFFFFFFFFFFLL);
}

void __46__BRCDirectoryItem__deleteFromDB_keepAliases___block_invoke_116(uint64_t a1, sqlite3_context *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(out, 0, sizeof(out));
  memset(v4, 0, sizeof(v4));
  uuid_generate_random(out);
  uuid_unparse(out, v4);
  sqlite3_result_text(a2, v4, 36, 0xFFFFFFFFFFFFFFFFLL);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)prepareForSyncUpInZone:(id)a3
{
  v6.receiver = self;
  v6.super_class = BRCDirectoryItem;
  v4 = a3;
  [(BRCLocalItem *)&v6 prepareForSyncUpInZone:v4];
  v5 = [v4 clientZone];

  [v5 prepareDirectoryForSyncUp:self];
}

- (BOOL)isShareableItem
{
  if ((self->super._sharingOptions & 4) != 0)
  {
    LOBYTE(v3) = 1;
    return v3;
  }

  if (![(BRCItemID *)self->super._itemID isDocumentsFolder])
  {
    v4 = [(BRCLocalItem *)self clientZone];
    if ([v4 isCloudDocsZone])
    {
      v5 = [(BRCLocalItem *)self st];
      v6 = [v5 parentID];
      if ([v6 isNonDesktopRoot])
      {
        v7 = [(BRCLocalStatInfo *)self->super._st logicalName];
        if ([v7 isEqualToString:*MEMORY[0x277CFAD80]])
        {

          LOBYTE(v3) = 0;
LABEL_12:

          return v3;
        }

        v9 = [(BRCLocalStatInfo *)self->super._st logicalName];
        v10 = [v9 isEqualToString:*MEMORY[0x277CFAD90]];

        if (v10)
        {
          goto LABEL_3;
        }

LABEL_11:
        v4 = [(BRCLocalItem *)self appLibrary];
        v5 = [v4 mangledID];
        v6 = [BRCUserDefaults defaultsForMangledID:v5];
        v3 = [v6 isBlacklistedFromFolderSharing] ^ 1;
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

LABEL_3:
  LOBYTE(v3) = 0;
  return v3;
}

- (id)asShareableItem
{
  if ([(BRCDirectoryItem *)self isShareableItem])
  {
    v3 = self;
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [BRCDirectoryItem asShareableItem];
    }

    v3 = 0;
  }

  return v3;
}

- (id)collaborationIdentifierIfComputable
{
  if ([(BRCDirectoryItem *)self isShareableItem])
  {
    v3 = objc_alloc(MEMORY[0x277CBC5D0]);
    v4 = [(BRCDirectoryItem *)self asShareableItem];
    v5 = [v3 initShareIDWithShareableItem:v4];

    v6 = [(BRCLocalItem *)self session];
    v7 = [v6 cachedCurrentUserRecordNameIfExists];
    v8 = [v5 brc_collaborationIdentifierWithCachedCurrentUserRecordName:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)markNeedsDeleteForItemIDTransfer
{
  v3.receiver = self;
  v3.super_class = BRCDirectoryItem;
  [(BRCLocalItem *)&v3 markNeedsDeleteForItemIDTransfer];
  self->_needsDeleteForItemIDTransfer = 1;
}

void __89__BRCDirectoryItem_FPFSAdditions__handlePathMatchConflictForDirectoryCreationIfNecessary__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Recalculating the recursive properties for the revived item%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end