@interface BRCDirectoryItem
- (BOOL)_insertInDB:(id)b dbRowID:(unint64_t)d;
- (BOOL)_insertRecursiveProperties;
- (BOOL)_recomputeChildItemCount;
- (BOOL)_repopulateRecursivePropertiesIfNecessary;
- (BOOL)_updateInDB:(id)b diffs:(unint64_t)diffs;
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
- (BOOL)mergeContentsIntoDirectory:(id)directory;
- (BOOL)possiblyContainsSharedItem;
- (BOOL)updateFromServerItem:(id)item;
- (id)_initFromPQLResultSet:(id)set session:(id)session db:(id)db error:(id *)error;
- (id)_initWithLocalItem:(id)item;
- (id)_initWithServerItem:(id)item dbRowID:(unint64_t)d;
- (id)_serverChildItemCount;
- (id)_serverChildItemCountIncludingHiddenFiles;
- (id)asShareableItem;
- (id)childItemCount;
- (id)clientZonesChildrenNeedingSyncUpAreIn;
- (id)collaborationIdentifierIfComputable;
- (id)descriptionWithContext:(id)context;
- (id)folderAppLibraryRootRecord;
- (id)folderRootStructureRecord;
- (id)serverQuotaUsage;
- (unint64_t)diffAgainstLocalItem:(id)item;
- (unint64_t)diffAgainstServerItem:(id)item;
- (void)_crossZoneMoveToParent:(id)parent;
- (void)_insertZombieForCrossZoneMove;
- (void)_learnItemID:(id)d serverItem:(id)item;
- (void)_markZombieForCrossZoneMove;
- (void)_retryPostponedIfNeededForDiffs:(unint64_t)diffs;
- (void)_signalPropagationToChildrenForce:(BOOL)force;
- (void)documentsDirectoryUpdatedDocumentsScopePublic;
- (void)markChildPropagationComplete;
- (void)markDirectoryMergeOrCrossZonePropagationComplete;
- (void)markNeedsDeleteForItemIDTransfer;
- (void)markRemovedFromFilesystemRecursively:(BOOL)recursively;
- (void)prepareForSyncUpInZone:(id)zone;
@end

@implementation BRCDirectoryItem

- (BOOL)isDirectory
{
  type = [(BRCStatInfo *)self->super._st type];
  if (type > 0xA || ((1 << type) & 0x611) == 0)
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
  type = [(BRCStatInfo *)self->super._st type];
  if (type > 0xA || ((1 << type) & 0x611) == 0)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [BRCDirectoryItem isDirectory];
    }
  }

  logicalNameWithoutLocalBounce = [(BRCLocalStatInfo *)self->super._st logicalNameWithoutLocalBounce];
  br_isPackageRoot = [logicalNameWithoutLocalBounce br_isPackageRoot];

  return br_isPackageRoot;
}

- (BOOL)_updateRecursiveProperties
{
  type = [(BRCStatInfo *)self->super._st type];
  v4 = [(BRCLocalItem *)self->super._orig st];
  type2 = [v4 type];

  if (type == type2)
  {
    v6 = 1;
    goto LABEL_17;
  }

  if (([(BRCStatInfo *)self->super._st type]- 9) <= 1u)
  {
    v7 = [(BRCLocalItem *)self->super._orig st];
    type3 = [v7 type];

    if (!type3)
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
    type4 = [v13 type];

    if (type4 == 10)
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
      serverZone = [(BRCLocalItem *)self->super._orig serverZone];
      if ([serverZone isSharedZone])
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
  asDirectory = [(BRCLocalItem *)self->super._orig asDirectory];
  if (-[BRCLocalItem isDead](self, "isDead") && ([asDirectory isDead] & 1) == 0)
  {
    itemGlobalID = [(BRCLocalItem *)self itemGlobalID];
    v4 = [itemGlobalID isEqualToItemGlobalID:asDirectory[26]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_insertRecursiveProperties
{
  parentID = [(BRCStatInfo *)self->super._st parentID];
  if (-[BRCItemID isDocumentsFolder](self->super._itemID, "isDocumentsFolder") || (-[BRCLocalStatInfo logicalName](self->super._st, "logicalName"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEqualToString:*MEMORY[0x277CFADB8]], v4, v5))
  {

    parentID = 0;
  }

  db = self->super._db;
  dbRowID = self->super._dbRowID;
  itemID = self->super._itemID;
  type = [(BRCStatInfo *)self->super._st type];
  dbRowID = [(BRCClientZone *)self->super._clientZone dbRowID];
  LODWORD(db) = [(BRCPQLConnection *)db execute:@"INSERT OR REPLACE INTO item_recursive_properties (item_rowid, item_id, item_parent_id, item_type, zone_rowid, item_parent_zone_rowid) VALUES (%llu, %@, %@, %u, %@, %@)", dbRowID, itemID, parentID, type, dbRowID, self->super._parentZoneRowID];

  if (db)
  {
    _repopulateRecursivePropertiesIfNecessary = [(BRCDirectoryItem *)self _repopulateRecursivePropertiesIfNecessary];
  }

  else
  {
    _repopulateRecursivePropertiesIfNecessary = 0;
  }

  return _repopulateRecursivePropertiesIfNecessary;
}

- (BOOL)_repopulateRecursivePropertiesIfNecessary
{
  db = self->super._db;
  itemID = self->super._itemID;
  dbRowID = [(BRCClientZone *)self->super._clientZone dbRowID];
  v6 = [(BRCPQLConnection *)db fetch:@"SELECT SUM(dir_faults_count), SUM(uploaded_size), SUM(needs_upload_size), SUM(uploaded_count), SUM(needs_upload_count), SUM(synced_up_count), SUM(needs_sync_up_count), SUM(over_quota_count), SUM(shared_by_me_count), SUM(shared_to_me_count), SUM(needs_delete_doc_count) FROM item_recursive_properties WHERE item_parent_id = %@ AND item_parent_zone_rowid = %@", itemID, dbRowID];

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
  type = [(BRCStatInfo *)self->super._st type];
  if (type > 0xA || ((1 << type) & 0x611) == 0)
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

  appLibrary = [(BRCLocalItem *)self appLibrary];
  v5 = ([appLibrary state] & 0x2000000) == 0;

  return v5;
}

- (BOOL)hasShareIDAndIsOwnedByMe
{
  isOwnedByMe = [(BRCLocalItem *)self isOwnedByMe];
  if (isOwnedByMe)
  {
    return (LOBYTE(self->super._sharingOptions) >> 2) & 1;
  }

  return isOwnedByMe;
}

- (id)folderRootStructureRecord
{
  if ([(BRCDirectoryItem *)self isDirectory])
  {
    itemID = [(BRCLocalItem *)self itemID];
    v4 = [itemID structureRecordIDForItemType:-[BRCStatInfo type](self->super._st zone:"type") aliasTargetZoneIsShared:{self->super._serverZone, 1}];

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
  clientZone = [(BRCLocalItem *)self clientZone];
  if (![clientZone isPrivateZone])
  {
    goto LABEL_6;
  }

  appLibrary = [(BRCLocalItem *)self appLibrary];
  if (([appLibrary wasMovedToCloudDocs] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  appLibrary2 = [(BRCLocalItem *)self appLibrary];
  isCloudDocsAppLibrary = [appLibrary2 isCloudDocsAppLibrary];

  if ((isCloudDocsAppLibrary & 1) == 0)
  {
    v7 = MEMORY[0x277CBC5A0];
    appLibrary3 = [(BRCLocalItem *)self appLibrary];
    mangledID = [appLibrary3 mangledID];
    structureRecordID = [(BRCLocalItem *)self structureRecordID];
    zoneID = [structureRecordID zoneID];
    v12 = [v7 rootAppLibraryRecordForAppLibraryID:mangledID zoneID:zoneID];

    goto LABEL_8;
  }

LABEL_7:
  v13 = MEMORY[0x277CBC5A0];
  appLibrary3 = [(BRCLocalItem *)self structureRecordID];
  mangledID = [appLibrary3 zoneID];
  v12 = [v13 rootDirectoryRecordForZoneID:mangledID];
LABEL_8:

  return v12;
}

- (void)_signalPropagationToChildrenForce:(BOOL)force
{
  if (!force)
  {
    v4 = [(BRCLocalItem *)self->super._orig st];
    processingStamp = [v4 processingStamp];
    if (processingStamp)
    {
      v6 = processingStamp;
      processingStamp2 = [(BRCLocalStatInfo *)self->super._st processingStamp];

      if (!processingStamp2)
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
  fsImporter = [(BRCAccountSession(FPFSAdditions) *)self->super._session fsImporter];
  [fsImporter signal];
}

- (void)documentsDirectoryUpdatedDocumentsScopePublic
{
  if ([(BRCItemID *)self->super._itemID isDocumentsFolder])
  {
    appLibrary = [(BRCLocalItem *)self appLibrary];
    containerMetadata = [appLibrary containerMetadata];
    self->super._isUserVisible = [containerMetadata isDocumentScopePublic];

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

- (void)markRemovedFromFilesystemRecursively:(BOOL)recursively
{
  recursivelyCopy = recursively;
  v12.receiver = self;
  v12.super_class = BRCDirectoryItem;
  [(BRCLocalItem *)&v12 markRemovedFromFilesystemRecursively:?];
  if (self->_previousItemGlobalID)
  {
    [(BRCDirectoryItem *)self markDirectoryMergeOrCrossZonePropagationComplete];
  }

  if (recursivelyCopy)
  {
    if ([(BRCDirectoryItem *)self containsDirFault])
    {
      ckInfo = [(BRCStatInfo *)self->super._st ckInfo];
      if ([ckInfo hasDeletionChangeToken])
      {
LABEL_10:

        goto LABEL_11;
      }

      isSharedToMeTopLevelItem = [(BRCLocalItem *)self isSharedToMeTopLevelItem];

      if (!isSharedToMeTopLevelItem)
      {
        v7 = brc_bread_crumbs();
        v8 = brc_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [(BRCDirectoryItem(FPFSAdditions) *)self markRemovedFromFilesystemRecursively:v7, v8];
        }

        ckInfo = [(BRCServerZone *)self->super._serverZone changeState];
        changeToken = [ckInfo changeToken];
        data = [changeToken data];
        ckInfo2 = [(BRCStatInfo *)self->super._st ckInfo];
        [ckInfo2 setDeletionChangeToken:data];

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
  itemFetcher = [(BRCAccountSession *)self->super._session itemFetcher];
  v4 = [itemFetcher itemByItemGlobalID:self->_previousItemGlobalID];
  asDirectory = [v4 asDirectory];

  if (!asDirectory)
  {
    [BRCDirectoryItem(FPFSAdditions) markDirectoryMergeOrCrossZonePropagationComplete];
  }

  if (([asDirectory isLost] & 1) == 0)
  {
    [BRCDirectoryItem(FPFSAdditions) markDirectoryMergeOrCrossZonePropagationComplete];
  }

  zoneRowID = [(BRCItemGlobalID *)self->_previousItemGlobalID zoneRowID];
  dbRowID = [(BRCClientZone *)self->super._clientZone dbRowID];
  v8 = [zoneRowID br_isEqualToNumber:dbRowID];

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
    selfCopy = self;
    v21 = 2112;
    v22 = asDirectory;
    v23 = 2112;
    v24 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] %s propagation completed for item %@. Deleting tombstone item %@%@", &v17, 0x2Au);
  }

  [asDirectory markRemovedFromFilesystemRecursively:1];
  [asDirectory markNeedsUploadOrSyncingUp];
  [asDirectory saveToDB];
  applyScheduler = [(BRCAccountSession *)self->super._session applyScheduler];
  serverZone = [asDirectory serverZone];
  [applyScheduler rescheduleSuspendedJobsMatching:serverZone inState:17];

  clientZone = [asDirectory clientZone];
  [clientZone scheduleSyncUp];

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
  parentID = [(BRCStatInfo *)self->super._st parentID];
  logicalName = [(BRCLocalStatInfo *)self->super._st logicalName];
  v6 = [(BRCClientZone *)clientZone itemByParentID:parentID andLogicalName:logicalName];

  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [BRCDirectoryItem(FPFSAdditions) handlePathMatchConflictForDirectoryCreationIfNecessary];
  }

  ckInfo = [(BRCStatInfo *)self->super._st ckInfo];
  etag = [ckInfo etag];
  if (etag)
  {
    v11 = etag;
    v12 = 0;
LABEL_10:

    goto LABEL_11;
  }

  mangledID = [(BRCClientZone *)self->super._clientZone mangledID];
  v14 = [BRCUserDefaults defaultsForMangledID:mangledID];
  reviveDeadDirsOnNewDirCreations = [v14 reviveDeadDirsOnNewDirCreations];

  if (reviveDeadDirsOnNewDirCreations)
  {
    v16 = self->super._clientZone;
    parentID2 = [(BRCStatInfo *)self->super._st parentID];
    logicalName2 = [(BRCLocalStatInfo *)self->super._st logicalName];
    v12 = [(BRCClientZone *)v16 deadItemByParentID:parentID2 andUnbouncedLogicalName:logicalName2];

    ckInfo = brc_bread_crumbs();
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
    processingStamp = [v19 processingStamp];
    v21 = !processingStamp && [v12 isDirectory] && (objc_msgSend(v12, "sharingOptions") & 4) == 0;

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

  itemID = [(BRCLocalItem *)self itemID];
  if (([itemID isDocumentsFolder] & 1) == 0)
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

  itemID2 = [v6 itemID];
  isDocumentsFolder = [itemID2 isDocumentsFolder];

  if (isDocumentsFolder)
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
  itemID3 = [v12 itemID];
  v31 = [(BRCClientZone *)v29 serverItemByItemID:itemID3];

  db = self->super._db;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __89__BRCDirectoryItem_FPFSAdditions__handlePathMatchConflictForDirectoryCreationIfNecessary__block_invoke;
  v38[3] = &unk_278503250;
  v39 = v12;
  selfCopy = self;
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

- (BOOL)updateFromServerItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = BRCDirectoryItem;
  v5 = [(BRCLocalItem *)&v9 updateFromServerItem:itemCopy];
  if (v5)
  {
    self->_mtime = [itemCopy directoryMtime];
    if ([itemCopy isDirectoryFault])
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

- (BOOL)mergeContentsIntoDirectory:(id)directory
{
  directoryCopy = directory;
  v5 = directoryCopy;
  if (directoryCopy && !directoryCopy[26])
  {
    db = self->super._db;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__BRCDirectoryItem_FPFSAdditions__mergeContentsIntoDirectory___block_invoke;
    v11[3] = &unk_278500FA8;
    v12 = directoryCopy;
    selfCopy = self;
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
  ckInfo = [v3[10] ckInfo];
  [ckInfo revertEtagsForOldZoneTombstone];

  [v3 _markZombieForCrossZoneMove];
  [v3 saveToDB];
}

- (void)_crossZoneMoveToParent:(id)parent
{
  v4 = [(BRCLocalItem *)self _updateCrossZoneParent:parent];
  previousItemGlobalID = self->_previousItemGlobalID;
  self->_previousItemGlobalID = v4;

  [(BRCLocalItem *)self markForceNeedsSyncUp];
  [(BRCLocalItem *)self saveToDB];

  [(BRCDirectoryItem *)self _insertZombieForCrossZoneMove];
}

- (unint64_t)diffAgainstServerItem:(id)item
{
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = BRCDirectoryItem;
  v5 = [(BRCLocalItem *)&v17 diffAgainstServerItem:itemCopy];
  if ([(BRCDirectoryItem *)self isDirectoryWithPackageName])
  {
    logicalName = [(BRCLocalStatInfo *)self->super._st logicalName];
    v7 = [itemCopy st];
    logicalName2 = [v7 logicalName];
    v9 = [logicalName isEqualToString:logicalName2];

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
    logicalNameWithoutLocalBounce = [(BRCLocalStatInfo *)self->super._st logicalNameWithoutLocalBounce];
    v12 = [itemCopy st];
    logicalName3 = [v12 logicalName];
    if ([logicalNameWithoutLocalBounce isEqualToString:logicalName3])
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

  mtime = [(BRCDirectoryItem *)self mtime];
  if (mtime == [itemCopy directoryMtime])
  {
    v15 = v5;
  }

  else
  {
    v15 = v5 | 0x4000;
  }

  return v15;
}

- (unint64_t)diffAgainstLocalItem:(id)item
{
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = BRCDirectoryItem;
  v5 = [(BRCLocalItem *)&v14 diffAgainstLocalItem:itemCopy];
  if ((v5 & 0x4000000000000) == 0)
  {
    previousItemGlobalID = self->_previousItemGlobalID;
    asDirectory = [itemCopy asDirectory];
    v8 = asDirectory[26];
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

- (id)_initFromPQLResultSet:(id)set session:(id)session db:(id)db error:(id *)error
{
  setCopy = set;
  v19.receiver = self;
  v19.super_class = BRCDirectoryItem;
  v11 = [(BRCLocalItem *)&v19 _initFromPQLResultSet:setCopy session:session db:db error:error];
  if (v11)
  {
    v12 = [setCopy objectOfClass:objc_opt_class() atIndex:49];
    v13 = [setCopy numberAtIndex:50];
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

    v11[27] = [setCopy longLongAtIndex:37];
  }

  return v11;
}

- (id)_initWithServerItem:(id)item dbRowID:(unint64_t)d
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = BRCDirectoryItem;
  v7 = [(BRCLocalItem *)&v13 _initWithServerItem:itemCopy dbRowID:d];
  if (v7)
  {
    *(v7 + 27) = [itemCopy directoryMtime];
    v8 = [itemCopy st];
    if ([v8 type])
    {
    }

    else
    {
      notificationManager = [*(v7 + 1) notificationManager];
      itemGlobalID = [itemCopy itemGlobalID];
      v11 = [notificationManager hasWatcherMatchingGlobalItemID:itemGlobalID];

      if ((v11 & 1) == 0)
      {
        [*(v7 + 10) setType:9];
      }
    }
  }

  return v7;
}

- (id)_initWithLocalItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = BRCDirectoryItem;
  v5 = [(BRCLocalItem *)&v8 _initWithLocalItem:itemCopy];
  if (v5)
  {
    asDirectory = [itemCopy asDirectory];
    *(v5 + 27) = *(asDirectory + 216);
    objc_storeStrong(v5 + 26, *(asDirectory + 208));
  }

  return v5;
}

- (void)_learnItemID:(id)d serverItem:(id)item
{
  dCopy = d;
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = BRCDirectoryItem;
  [(BRCLocalItem *)&v14 _learnItemID:dCopy serverItem:itemCopy];
  if (itemCopy)
  {
    v8 = [(BRCLocalItem *)self st];
    v9 = [itemCopy st];
    [v8 setType:{objc_msgSend(v9, "type")}];

LABEL_8:
    goto LABEL_9;
  }

  if ([dCopy isDocumentsFolder])
  {
    appLibrary = [(BRCLocalItem *)self appLibrary];
    state = [appLibrary state];

    v12 = [(BRCLocalItem *)self st];
    v8 = v12;
    if ((state & 0x4000000) != 0)
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
  logicalName = [(BRCLocalStatInfo *)self->super._st logicalName];
  v4 = [logicalName isEqualToString:*MEMORY[0x277CFADB8]];

  if (!v4)
  {
    return 0;
  }

  appLibrary = [(BRCLocalItem *)self appLibrary];
  isCloudDocsAppLibrary = [appLibrary isCloudDocsAppLibrary];

  parentID = [(BRCStatInfo *)self->super._st parentID];
  v8 = parentID;
  if (isCloudDocsAppLibrary)
  {
    isNonDesktopRoot = [parentID isNonDesktopRoot];
  }

  else
  {
    isNonDesktopRoot = [parentID isDocumentsFolder];
  }

  v10 = isNonDesktopRoot;

  return v10;
}

- (id)descriptionWithContext:(id)context
{
  v7.receiver = self;
  v7.super_class = BRCDirectoryItem;
  v4 = [(BRCLocalItem *)&v7 descriptionWithContext:context];
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
      dbRowID = [(BRCClientZone *)self->super._clientZone dbRowID];
      v8 = [(PQLConnection *)db numberWithSQL:@"SELECT IFNULL(shared_children_count, 0) | IFNULL(shared_alias_count, 0) FROM server_items WHERE item_id = %@ AND zone_rowid = %@", itemID, dbRowID];

      bOOLValue = [v8 BOOLValue];
      goto LABEL_7;
    }

LABEL_6:
    bOOLValue = 0;
    goto LABEL_7;
  }

  bOOLValue = 1;
LABEL_7:

  return bOOLValue;
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
      dbRowID = [(BRCClientZone *)self->super._clientZone dbRowID];
      v8 = [(PQLConnection *)db numberWithSQL:@"SELECT shared_children_count FROM server_items WHERE item_id = %@ AND zone_rowid = %@", itemID, dbRowID];

      bOOLValue = [v8 BOOLValue];
      goto LABEL_7;
    }

LABEL_6:
    bOOLValue = 0;
    goto LABEL_7;
  }

  bOOLValue = 1;
LABEL_7:

  return bOOLValue;
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
      dbRowID = [(BRCClientZone *)self->super._clientZone dbRowID];
      v8 = [(PQLConnection *)db numberWithSQL:@"SELECT shared_alias_count FROM server_items WHERE item_id = %@ AND zone_rowid = %@", itemID, dbRowID];

      bOOLValue = [v8 BOOLValue];
      goto LABEL_7;
    }

LABEL_6:
    bOOLValue = 0;
    goto LABEL_7;
  }

  bOOLValue = 1;
LABEL_7:

  return bOOLValue;
}

- (BOOL)containsOverQuotaItems
{
  v2 = [(PQLConnection *)self->super._db numberWithSQL:@"SELECT over_quota_count FROM item_recursive_properties WHERE item_rowid = %llu", self->super._dbRowID];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)containsDirFault
{
  if ([(BRCDirectoryItem *)self isDirectoryFault])
  {
    return 1;
  }

  v4 = [(PQLConnection *)self->super._db numberWithSQL:@"SELECT dir_faults_count FROM item_recursive_properties WHERE item_rowid = %llu", self->super._dbRowID];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)containsPendingUploadOrSyncUp
{
  v2 = [(PQLConnection *)self->super._db numberWithSQL:@"SELECT 1 FROM item_recursive_properties WHERE item_rowid = %llu AND (needs_sync_up_count != 0 OR needs_upload_count != 0)", self->super._dbRowID];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)containsPendingDeleteDocuments
{
  db = self->super._db;
  dbRowID = self->super._dbRowID;
  dbRowID = [(BRCClientZone *)self->super._clientZone dbRowID];
  v5 = [(PQLConnection *)db numberWithSQL:@"WITH RECURSIVE pending_delete_children (item_id, item_type, needs_delete_doc_count) AS(    SELECT item_id, item_type, needs_delete_doc_count FROM item_recursive_properties      WHERE item_rowid = %llu AND needs_delete_doc_count != 0  UNION ALL     SELECT ip.item_id, ip.item_type, ip.needs_delete_doc_count FROM item_recursive_properties AS ip INNER JOIN pending_delete_children AS p WHERE ip.item_parent_id = p.item_id AND ip.zone_rowid = %@ AND ip.needs_delete_doc_count != 0) SELECT 1 FROM pending_delete_children AS pdc WHERE pdc.needs_delete_doc_count != 0 AND pdc.item_type IN (1, 2, 8) LIMIT 1", dbRowID, dbRowID];

  LOBYTE(dbRowID) = [v5 BOOLValue];
  return dbRowID;
}

- (BOOL)hasDeadChildren
{
  db = self->super._db;
  itemID = self->super._itemID;
  dbRowID = [(BRCClientZone *)self->super._clientZone dbRowID];
  v5 = [(PQLConnection *)db numberWithSQL:@"SELECT 1 FROM client_items WHERE item_parent_id = %@ AND item_state = 1 AND item_parent_zone_rowid = %@ LIMIT 1", itemID, dbRowID];

  LOBYTE(dbRowID) = [v5 BOOLValue];
  return dbRowID;
}

- (BOOL)hasLiveChildren
{
  v3 = [(BRCClientZone *)self->super._clientZone db];
  itemID = self->super._itemID;
  dbRowID = [(BRCClientZone *)self->super._clientZone dbRowID];
  v6 = [v3 numberWithSQL:{@"SELECT 1 FROM client_items WHERE item_parent_id = %@    AND item_state IN (0)   AND item_parent_zone_rowid = %@ LIMIT 1", itemID, dbRowID}];

  LOBYTE(dbRowID) = [v6 BOOLValue];
  return dbRowID;
}

- (id)_serverChildItemCountIncludingHiddenFiles
{
  clientZone = self->super._clientZone;
  itemID = self->super._itemID;
  dbFacade = [(BRCLocalItem *)self dbFacade];
  v5 = [(BRCClientZone *)clientZone serverChildCountWithParentID:itemID dbFacade:dbFacade];

  return v5;
}

- (id)_serverChildItemCount
{
  v24 = *MEMORY[0x277D85DE8];
  _serverChildItemCountIncludingHiddenFiles = [(BRCDirectoryItem *)self _serverChildItemCountIncludingHiddenFiles];
  if (_serverChildItemCountIncludingHiddenFiles)
  {
    v4 = _serverChildItemCountIncludingHiddenFiles;
    clientZone = self->super._clientZone;
    itemID = self->super._itemID;
    dbFacade = [(BRCLocalItem *)self dbFacade];
    v8 = [(BRCClientZone *)clientZone serverHiddenChildCountWithParentID:itemID dbFacade:dbFacade];

    longLongValue = [v4 longLongValue];
    v10 = longLongValue - [v8 longLongValue];
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
        selfCopy = self;
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
      _serverChildItemCount = [(BRCDirectoryItem *)self _serverChildItemCount];
      childItemCount = self->_childItemCount;
      self->_childItemCount = _serverChildItemCount;
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
  dbFacade = [(BRCLocalItem *)self dbFacade];
  v5 = [(BRCClientZone *)clientZone serverQuotaUsageWithParentID:itemID dbFacade:dbFacade];

  return v5;
}

- (id)clientZonesChildrenNeedingSyncUpAreIn
{
  v31 = *MEMORY[0x277D85DE8];
  v21 = objc_opt_new();
  db = self->super._db;
  itemID = self->super._itemID;
  dbRowID = [(BRCClientZone *)self->super._clientZone dbRowID];
  v6 = [(BRCPQLConnection *)db fetch:@"SELECT DISTINCT zone_rowid FROM client_items WHERE item_parent_id = %@   AND item_parent_zone_rowid = %@    AND item_localsyncupstate = 4   AND item_state IN (0, 1)", itemID, dbRowID];

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
        clientZone = [v12 clientZone];
        if (clientZone)
        {
          [v21 addObject:clientZone];
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

- (void)_retryPostponedIfNeededForDiffs:(unint64_t)diffs
{
  diffsCopy = diffs;
  if ([(BRCLocalItem *)self isDead])
  {
    if ([(BRCLocalItem *)self isKnownByServerOrInFlight])
    {
      return;
    }
  }

  else if ((diffsCopy & 0x80000000) == 0)
  {
    if (![(BRCLocalItem *)self isOnDisk])
    {
      return;
    }

    orig = [(BRCLocalItem *)self orig];
    isOnDisk = [orig isOnDisk];

    if ((isOnDisk & 1) != 0 || ![(BRCLocalItem *)self isKnownByServerOrInFlight])
    {
      return;
    }
  }

  applyScheduler = [(BRCAccountSession *)self->super._session applyScheduler];
  [applyScheduler didCreateMissingParentID:self->super._itemID zone:self->super._serverZone];
}

- (BOOL)_recomputeChildItemCount
{
  db = self->super._db;
  itemID = [(BRCLocalItem *)self itemID];
  dbRowID = [(BRCClientZone *)self->super._clientZone dbRowID];
  LOBYTE(db) = [(BRCPQLConnection *)db execute:@"UPDATE client_items AS parent SET visible_child_count = (SELECT COUNT(*) FROM client_items AS child WHERE child.item_parent_id = parent.item_id AND child.item_parent_zone_rowid = parent.zone_rowid AND (child.item_user_visible = 1 OR (child.item_scope == 3 AND child.item_filename != .Trash))) WHERE parent.item_id = %@ AND parent.zone_rowid = %@", itemID, dbRowID];

  return db;
}

- (BOOL)_insertInDB:(id)b dbRowID:(unint64_t)d
{
  bCopy = b;
  [(BRCDirectoryItem *)self _retryPostponedIfNeededForDiffs:0xFF003FF3FF7FFFLL];
  dbRowID = [(BRCClientZone *)self->super._clientZone dbRowID];
  mtime = self->_mtime;
  itemID = self->super._itemID;
  ownerKey = self->super._ownerKey;
  sharingOptions = self->super._sharingOptions;
  sideCarCKInfo = self->super._sideCarCKInfo;
  parentZoneRowID = self->super._parentZoneRowID;
  localDiffs = self->super._localDiffs;
  notifsRank = self->super._notifsRank;
  syncUpState = self->super._syncUpState;
  appLibrary = [(BRCLocalItem *)self appLibrary];
  dbRowID2 = [appLibrary dbRowID];
  minimumSupportedOSRowID = self->super._minimumSupportedOSRowID;
  isUserVisible = self->super._isUserVisible;
  ckInfo = [(BRCStatInfo *)self->super._st ckInfo];
  state = [(BRCStatInfo *)self->super._st state];
  type = [(BRCStatInfo *)self->super._st type];
  mode = [(BRCStatInfo *)self->super._st mode];
  birthtime = [(BRCStatInfo *)self->super._st birthtime];
  lastUsedTime = [(BRCStatInfo *)self->super._st lastUsedTime];
  favoriteRank = [(BRCStatInfo *)self->super._st favoriteRank];
  parentID = [(BRCStatInfo *)self->super._st parentID];
  st = self->super._st;
  logicalName = st->super._logicalName;
  if (!logicalName)
  {
    logicalName = &stru_2837504F0;
  }

  v21 = logicalName;
  isHiddenExt = [(BRCStatInfo *)st isHiddenExt];
  finderTags = [(BRCStatInfo *)self->super._st finderTags];
  xattrSignature = [(BRCStatInfo *)self->super._st xattrSignature];
  trashPutBackPath = [(BRCStatInfo *)self->super._st trashPutBackPath];
  trashPutBackParentID = [(BRCStatInfo *)self->super._st trashPutBackParentID];
  aliasTarget = [(BRCStatInfo *)self->super._st aliasTarget];
  creatorRowID = [(BRCStatInfo *)self->super._st creatorRowID];
  processingStamp = [(BRCLocalStatInfo *)self->super._st processingStamp];
  rawBouncedLogicalName = [(BRCLocalStatInfo *)self->super._st rawBouncedLogicalName];
  itemScope = [(BRCLocalStatInfo *)self->super._st itemScope];
  localChangeCount = [(BRCLocalStatInfo *)self->super._st localChangeCount];
  oldVersionIdentifier = [(BRCLocalStatInfo *)self->super._st oldVersionIdentifier];
  [(BRCLocalStatInfo *)self->super._st fpCreationItemIdentifier];
  v14 = v17 = itemScope;
  v41 = [bCopy execute:{@"INSERT INTO client_items(rowid, zone_rowid, version_mtime, visible_child_count, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier) VALUES(%lld, %@, %lld, 0, %@, %@, %ld, %@, %@, %d, %lld, %lld, %@, %@, %d, %@, %d, %d, %d, %lld, %lld, %lld, %@, %@, %d, %@, %@, %@, %@, %@, %@, %@, %@, %d, %llu, %@, %@)", d, dbRowID, mtime, itemID, ownerKey, sharingOptions, sideCarCKInfo, parentZoneRowID, syncUpState, localDiffs, notifsRank, dbRowID2, minimumSupportedOSRowID, isUserVisible, ckInfo, state, type, mode, birthtime, lastUsedTime, favoriteRank, parentID, v21, isHiddenExt, finderTags, xattrSignature, trashPutBackPath, trashPutBackParentID, aliasTarget, creatorRowID, processingStamp, rawBouncedLogicalName, v17, localChangeCount, oldVersionIdentifier, v14}];

  v15 = v41 && (v49.receiver = self, v49.super_class = BRCDirectoryItem, [(BRCLocalItem *)&v49 _insertInDB:bCopy dbRowID:d]) && [(BRCDirectoryItem *)self _insertRecursiveProperties]&& [(BRCDirectoryItem *)self _recomputeChildItemCount];
  return v15;
}

- (BOOL)_updateInDB:(id)b diffs:(unint64_t)diffs
{
  v101 = *MEMORY[0x277D85DE8];
  bCopy = b;
  if ((diffs & 0x80000000) != 0 && (previousItemGlobalID = self->_previousItemGlobalID, [(BRCLocalItem *)self->super._orig itemGlobalID], v8 = objc_claimAutoreleasedReturnValue(), LOBYTE(previousItemGlobalID) = [(BRCItemGlobalID *)previousItemGlobalID isEqualToItemGlobalID:v8], v8, (previousItemGlobalID & 1) == 0))
  {
    if (([bCopy isBatchSuspended] & 1) == 0)
    {
      [BRCDirectoryItem _updateInDB:diffs:];
    }

    itemID = self->super._itemID;
    dbRowID = [(BRCClientZone *)self->super._clientZone dbRowID];
    itemID = [(BRCLocalItem *)self->super._orig itemID];
    dbRowID2 = [(BRCClientZone *)self->super._clientZone dbRowID];
    v9 = [bCopy execute:{@"UPDATE client_items   SET item_parent_id = %@, item_parent_zone_rowid = %@ WHERE item_parent_id = %@   AND item_parent_zone_rowid = %@", itemID, dbRowID, itemID, dbRowID2}];

    changes = [bCopy changes];
    if (changes >= 1)
    {
      v20 = changes;
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        itemID2 = [(BRCLocalItem *)self->super._orig itemID];
        v52 = self->super._itemID;
        *buf = 134218754;
        v94 = v20;
        v95 = 2112;
        v96 = itemID2;
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

  if ((diffs & 0x4000000000000) != 0)
  {
    itemID3 = [(BRCItemGlobalID *)self->_previousItemGlobalID itemID];
    zoneRowID = [(BRCItemGlobalID *)self->_previousItemGlobalID zoneRowID];
    v12 = [bCopy execute:{@"UPDATE client_items   SET version_old_zone_item_id = %@, version_old_zone_rowid = %@ WHERE rowid = %llu", itemID3, zoneRowID, self->super._dbRowID}];

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
    orig = [(BRCLocalItem *)self orig];
    isAlmostDead = [orig isAlmostDead];

    if ((isAlmostDead & 1) == 0)
    {
      diffsCopy = diffs;
      v84 = bCopy;
      if (([bCopy isBatchSuspended] & 1) == 0)
      {
        [BRCDirectoryItem _updateInDB:diffs:];
      }

      v24 = [(BRCClientZone *)self->super._clientZone db];
      itemID4 = [(BRCLocalItem *)self itemID];
      dbRowID3 = [(BRCClientZone *)self->super._clientZone dbRowID];
      v27 = [v24 fetch:{@"SELECT si.rowid FROM server_items AS si INNER JOIN client_unapplied_table AS ap ON si.item_rank = ap.throttle_id WHERE si.item_parent_id = %@   AND si.zone_rowid = %@   AND si.item_type = 3   AND ap.throttle_state = 24", itemID4, dbRowID3}];

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
            itemFetcher = [(BRCAccountSession *)self->super._session itemFetcher];
            v35 = [itemFetcher serverItemByRowID:{objc_msgSend(v33, "longLongValue")}];

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
      diffs = diffsCopy;
      [(BRCDirectoryItem *)self _retryPostponedIfNeededForDiffs:diffsCopy];
      bCopy = v84;
      goto LABEL_36;
    }
  }

  v9 = 1;
LABEL_18:
  isLive = [(BRCLocalItem *)self isLive];
  if ((diffs & 0x40001040000060) != 0 && isLive)
  {
    [(BRCDirectoryItem *)self signalPropagationToChildren];
    [(BRCDirectoryItem *)self _retryPostponedIfNeededForDiffs:diffs];
    if ((v9 & 1) == 0)
    {
LABEL_43:
      LOBYTE(v9) = 0;
      goto LABEL_45;
    }
  }

  else
  {
    [(BRCDirectoryItem *)self _retryPostponedIfNeededForDiffs:diffs];
    if (!v9)
    {
      goto LABEL_45;
    }
  }

LABEL_36:
  v85 = bCopy;
  dbRowID4 = [(BRCClientZone *)self->super._clientZone dbRowID];
  v77 = self->super._itemID;
  ownerKey = self->super._ownerKey;
  sharingOptions = self->super._sharingOptions;
  sideCarCKInfo = self->super._sideCarCKInfo;
  parentZoneRowID = self->super._parentZoneRowID;
  localDiffs = self->super._localDiffs;
  notifsRank = self->super._notifsRank;
  syncUpState = self->super._syncUpState;
  appLibrary = [(BRCLocalItem *)self appLibrary];
  dbRowID5 = [appLibrary dbRowID];
  minimumSupportedOSRowID = self->super._minimumSupportedOSRowID;
  isUserVisible = self->super._isUserVisible;
  ckInfo = [(BRCStatInfo *)self->super._st ckInfo];
  state = [(BRCStatInfo *)self->super._st state];
  type = [(BRCStatInfo *)self->super._st type];
  mode = [(BRCStatInfo *)self->super._st mode];
  birthtime = [(BRCStatInfo *)self->super._st birthtime];
  lastUsedTime = [(BRCStatInfo *)self->super._st lastUsedTime];
  favoriteRank = [(BRCStatInfo *)self->super._st favoriteRank];
  parentID = [(BRCStatInfo *)self->super._st parentID];
  st = self->super._st;
  logicalName = st->super._logicalName;
  if (!logicalName)
  {
    logicalName = &stru_2837504F0;
  }

  v57 = logicalName;
  isHiddenExt = [(BRCStatInfo *)st isHiddenExt];
  finderTags = [(BRCStatInfo *)self->super._st finderTags];
  xattrSignature = [(BRCStatInfo *)self->super._st xattrSignature];
  trashPutBackPath = [(BRCStatInfo *)self->super._st trashPutBackPath];
  trashPutBackParentID = [(BRCStatInfo *)self->super._st trashPutBackParentID];
  aliasTarget = [(BRCStatInfo *)self->super._st aliasTarget];
  creatorRowID = [(BRCStatInfo *)self->super._st creatorRowID];
  processingStamp = [(BRCLocalStatInfo *)self->super._st processingStamp];
  rawBouncedLogicalName = [(BRCLocalStatInfo *)self->super._st rawBouncedLogicalName];
  itemScope = [(BRCLocalStatInfo *)self->super._st itemScope];
  localChangeCount = [(BRCLocalStatInfo *)self->super._st localChangeCount];
  oldVersionIdentifier = [(BRCLocalStatInfo *)self->super._st oldVersionIdentifier];
  [(BRCLocalStatInfo *)self->super._st fpCreationItemIdentifier];
  v47 = v53 = localChangeCount;
  v78 = [v85 execute:{@"UPDATE client_items SET zone_rowid = %@, item_id = %@, item_creator_id = %@, item_sharing_options = %ld, item_side_car_ckinfo = %@, item_parent_zone_rowid = %@, item_localsyncupstate = %d, item_local_diffs = %llu, item_notifs_rank = %lld, app_library_rowid = %@, item_min_supported_os_rowid = %@, item_user_visible = %d, item_stat_ckinfo = %@, item_state = %d, item_type = %d, item_mode = %d, item_birthtime = %lld, item_lastusedtime = %lld, item_favoriterank = %lld, item_parent_id = %@, item_filename = %@, item_hidden_ext = %d, item_finder_tags = %@, item_xattr_signature = %@, item_trash_put_back_path = %@, item_trash_put_back_parent_id = %@, item_alias_target = %@, item_creator = %@, item_processing_stamp = %@, item_bouncedname = %@, item_scope = %d, item_local_change_count = %llu, item_old_version_identifier = %@, fp_creation_item_identifier = %@, version_mtime = %lld  WHERE rowid = %llu", dbRowID4, v77, ownerKey, sharingOptions, sideCarCKInfo, parentZoneRowID, syncUpState, localDiffs, notifsRank, dbRowID5, minimumSupportedOSRowID, isUserVisible, ckInfo, state, type, mode, birthtime, lastUsedTime, favoriteRank, parentID, v57, isHiddenExt, finderTags, xattrSignature, trashPutBackPath, trashPutBackParentID, aliasTarget, creatorRowID, processingStamp, rawBouncedLogicalName, itemScope, v53, oldVersionIdentifier, v47, self->_mtime, self->super._dbRowID}];

  if (!v78)
  {
    LOBYTE(v9) = 0;
    bCopy = v85;
    goto LABEL_45;
  }

  v87.receiver = self;
  v87.super_class = BRCDirectoryItem;
  bCopy = v85;
  if (![(BRCLocalItem *)&v87 _updateInDB:v85 diffs:diffs])
  {
    goto LABEL_43;
  }

  _updateRecursiveProperties = [(BRCDirectoryItem *)self _updateRecursiveProperties];
  LOBYTE(v9) = (diffs & 0x80000000) == 0 && _updateRecursiveProperties;
  if ((diffs & 0x80000000) != 0 && _updateRecursiveProperties)
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

- (void)prepareForSyncUpInZone:(id)zone
{
  v6.receiver = self;
  v6.super_class = BRCDirectoryItem;
  zoneCopy = zone;
  [(BRCLocalItem *)&v6 prepareForSyncUpInZone:zoneCopy];
  clientZone = [zoneCopy clientZone];

  [clientZone prepareDirectoryForSyncUp:self];
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
    clientZone = [(BRCLocalItem *)self clientZone];
    if ([clientZone isCloudDocsZone])
    {
      mangledID = [(BRCLocalItem *)self st];
      parentID = [mangledID parentID];
      if ([parentID isNonDesktopRoot])
      {
        logicalName = [(BRCLocalStatInfo *)self->super._st logicalName];
        if ([logicalName isEqualToString:*MEMORY[0x277CFAD80]])
        {

          LOBYTE(v3) = 0;
LABEL_12:

          return v3;
        }

        logicalName2 = [(BRCLocalStatInfo *)self->super._st logicalName];
        v10 = [logicalName2 isEqualToString:*MEMORY[0x277CFAD90]];

        if (v10)
        {
          goto LABEL_3;
        }

LABEL_11:
        clientZone = [(BRCLocalItem *)self appLibrary];
        mangledID = [clientZone mangledID];
        parentID = [BRCUserDefaults defaultsForMangledID:mangledID];
        v3 = [parentID isBlacklistedFromFolderSharing] ^ 1;
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
    selfCopy = self;
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [BRCDirectoryItem asShareableItem];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)collaborationIdentifierIfComputable
{
  if ([(BRCDirectoryItem *)self isShareableItem])
  {
    v3 = objc_alloc(MEMORY[0x277CBC5D0]);
    asShareableItem = [(BRCDirectoryItem *)self asShareableItem];
    v5 = [v3 initShareIDWithShareableItem:asShareableItem];

    session = [(BRCLocalItem *)self session];
    cachedCurrentUserRecordNameIfExists = [session cachedCurrentUserRecordNameIfExists];
    v8 = [v5 brc_collaborationIdentifierWithCachedCurrentUserRecordName:cachedCurrentUserRecordNameIfExists];
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