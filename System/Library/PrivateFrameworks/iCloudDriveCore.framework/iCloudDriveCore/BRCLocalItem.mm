@interface BRCLocalItem
+ (BOOL)computeUserVisibleStatusOfLiveItemWithParentVisible:(BOOL)a3 parentIsNonDesktopRoot:(BOOL)a4 parentScope:(unsigned __int8)a5 itemFilename:(id)a6 parentFilename:(id)a7 appLibrary:(id)a8;
+ (BOOL)parseBookmarkData:(id)a3 inAccountSession:(id)a4 itemID:(id *)a5 mangledID:(id *)a6 unsaltedBookmarkData:(id *)a7 error:(id *)a8;
+ (BOOL)parseUnsaltedBookmarkData:(id)a3 itemID:(id *)a4 mangledID:(id *)a5 error:(id *)a6;
+ (unsigned)computeItemScopeFromParentIsRoot:(BOOL)a3 parentIsDocuments:(BOOL)a4 parentScope:(unsigned __int8)a5 logicalName:(id)a6;
- (BOOL)_deleteFromDB:(id)a3 keepAliases:(BOOL)a4;
- (BOOL)_hasFieldChangesNotDiffed;
- (BOOL)_insertInDB:(id)a3 dbRowID:(unint64_t)a4;
- (BOOL)_isInterestingUpdateForNotifsWithDiffs:(unint64_t)a3;
- (BOOL)_updateInDB:(id)a3 diffs:(unint64_t)a4;
- (BOOL)checkIsInDocumentsScopeWithParent:(id)a3;
- (BOOL)dbItemIsMigratingToFPFS;
- (BOOL)forceNeedsSyncUpWithoutDiffs;
- (BOOL)fromReadOnlyDB;
- (BOOL)hasValidCKInfo;
- (BOOL)isAlmostDead;
- (BOOL)isDeadOrMissingInServerTruth;
- (BOOL)isFromInitialScan;
- (BOOL)isIWorkItem;
- (BOOL)isInDocumentOrTrashScope;
- (BOOL)isKnownByServer;
- (BOOL)isKnownByServerOrInFlight;
- (BOOL)isNewToServer:(BOOL *)a3;
- (BOOL)isReadAndUploaded;
- (BOOL)isSharedByMe;
- (BOOL)isSharedToMe;
- (BOOL)isSharedToMeChildItem;
- (BOOL)isSharedToMeTopLevelItem;
- (BOOL)logicalNameNeedsRename;
- (BOOL)markLatestSyncRequestAcknowledgedInZone:(id)a3;
- (BOOL)requiresShareAlias;
- (BOOL)saveToDBAndValidateLocalDiffs;
- (BOOL)saveToDBForServerEdit:(BOOL)a3 keepAliases:(BOOL)a4;
- (BOOL)shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:(BOOL)a3;
- (BOOL)startDownloadInTask:(id)a3 options:(unint64_t)a4 etagIfLoser:(id)a5 stageFileName:(id)a6 error:(id *)a7;
- (BOOL)updateFPCreationItemIdentifier:(id)a3;
- (BOOL)updateFromServerItem:(id)a3;
- (BRCAliasItem)asBRAlias;
- (BRCAppLibrary)appLibrary;
- (BRCClientZone)parentClientZone;
- (BRCDirectoryItem)asDirectory;
- (BRCDocumentItem)asDocument;
- (BRCFSRooted)asFSRoot;
- (BRCFinderBookmarkItem)asFinderBookmark;
- (BRCItemGlobalID)itemGlobalID;
- (BRCItemID)serverPathMatchItemID;
- (BRCShareAcceptationFault)asShareAcceptationFault;
- (BRCSharedToMeTopLevel)asSharedToMeTopLevelItem;
- (BRCSymlinkItem)asSymlink;
- (BRCTopLevelShareable)asShareableItem;
- (BRFileObjectID)fileObjectID;
- (BRFileObjectID)parentFileObjectID;
- (NSDictionary)extendedAttributes;
- (NSError)syncUpError;
- (NSNumber)fileID;
- (NSNumber)parentFileID;
- (NSString)appLibraryID;
- (NSString)bookmarkData;
- (NSString)debugDescription;
- (NSString)digestDescription;
- (NSString)extension;
- (NSString)path;
- (id)_initFromPQLResultSet:(id)a3 session:(id)a4 db:(id)a5 error:(id *)a6;
- (id)_initWithImportObject:(id)a3 error:(id *)a4;
- (id)_initWithLocalItem:(id)a3;
- (id)_initWithServerItem:(id)a3 dbRowID:(unint64_t)a4;
- (id)_syncZoneRowIDs;
- (id)_updateCrossZoneParent:(id)a3;
- (id)baseSideCarRecord;
- (id)baseStructureRecord;
- (id)computeItemPathRelativeToRoot;
- (id)computedDestinationFilenameFromServerItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithContext:(id)a3;
- (id)initFromPQLResultSet:(id)a3 error:(id *)a4;
- (id)initFromPQLResultSet:(id)a3 session:(id)a4 db:(id)a5 error:(id *)a6;
- (id)itemParentGlobalID;
- (id)liveStageFilename;
- (id)osNameNeededToSyncUp;
- (id)parentItemIDInZone;
- (id)parentItemOnFS;
- (id)setOfParentIDs;
- (id)sharedAliasItemID;
- (id)sideCarInfo;
- (id)sideCarRecordID;
- (id)structureRecordBeingDeadInServerTruth:(BOOL)a3 shouldPCSChainStatus:(unsigned __int8)a4 inZone:(id)a5;
- (id)structureRecordID;
- (id)structureRecordIDInZone:(id)a3;
- (id)unsaltedBookmarkData;
- (unint64_t)diffAgainstLocalItem:(id)a3;
- (unint64_t)diffAgainstOriginalItem;
- (unint64_t)diffAgainstServerAliasItem:(id)a3;
- (unint64_t)diffAgainstServerItem:(id)a3;
- (unint64_t)maskForDiffsToSyncUpForZone:(id)a3 sideCarZone:(BOOL)a4 whenClearing:(BOOL)a5;
- (unsigned)uploadStatus;
- (void)_ascendItemHierarchyWithBlock:(id)a3;
- (void)_cheapCheckSavingItem;
- (void)_crossZoneMoveToParent:(id)a3;
- (void)_deleteOldZoneJobs:(id)a3;
- (void)_insertTombstoneForCrossZoneMove:(id)a3;
- (void)_learnItemID:(id)a3 serverItem:(id)a4;
- (void)_markAsDeadTombstoneWithPreviousGlobalID:(id)a3;
- (void)_markBouncedToNextAvailableBounceNumber:(int)a3 ignoreSelf:(BOOL)a4;
- (void)_markNeedsSyncingUp;
- (void)_moveToZoneWhenServerItemIsDead:(id)a3;
- (void)_recomputeUserVisibleAndItemScope;
- (void)_refreshAppLibraryFromParent;
- (void)_restorePreviousGlobalID:(id)a3;
- (void)_sendNotificationIfNeededWithDiffs:(unint64_t)a3 regather:(BOOL)a4;
- (void)_trackUploadV1PerformanceIfNeeded;
- (void)_updateAppLibraryFromParent:(id)a3;
- (void)_updateAppLibraryPristineStatesAfterCreationOrUpdate;
- (void)_updateAppLibraryPristineStatesAfterMarkingDead;
- (void)_updateParent:(id)a3 forceTopLevelShareMove:(BOOL)a4;
- (void)_updatePropagatedInfoIfNeeded;
- (void)_updateSharedZoneBoostingWithDiffs:(unint64_t)a3;
- (void)_updateSyncUpSchedulerWithDiffs:(unint64_t)a3;
- (void)asBRAlias;
- (void)asDirectory;
- (void)asDocument;
- (void)asFSRoot;
- (void)asFinderBookmark;
- (void)asShareAcceptationFault;
- (void)asShareableItem;
- (void)asSharedToMeTopLevelItem;
- (void)asSymlink;
- (void)createSyncUpJob;
- (void)fileObjectID;
- (void)forceNeedsSyncUpWithoutDiffs;
- (void)handleUnknownItemError;
- (void)inheritOSUpgradeNeededFromItem:(id)a3;
- (void)insertTombstoneAliasRecordInZone:(id)a3;
- (void)isReadAndUploaded;
- (void)markDead;
- (void)markDoneMigratingToFPFS;
- (void)markFromInitialScan;
- (void)markImportedItemAsSharedWithImportBookmark:(id)a3 parent:(id)a4;
- (void)markItemForgottenByServer;
- (void)markLatestSyncRequestFailedInZone:(id)a3;
- (void)markLatestSyncRequestRejectedInZone:(id)a3;
- (void)markNeedsDeleteForItemIDTransfer;
- (void)markNeedsDeleteForRescheduleOfItem:(id)a3;
- (void)markNeedsDeleteWhenAlreadyDeadInServerTruth;
- (void)markNeedsOSUpgradeToSyncUpWithName:(id)a3;
- (void)markNeedsUploadOrSyncingUp;
- (void)markRejectedItemRemotelyRevived;
- (void)markRemovedFromFilesystemForServerEdit:(BOOL)a3;
- (void)moveAsideLocally;
- (void)parentFileObjectID;
- (void)parentItemIDInZone;
- (void)parentItemOnFS;
- (void)prepareForSyncUpInZone:(id)a3;
- (void)prepareForSyncUpSideCarZone;
- (void)resetWhileKeepingClientItemsAndWantsUnlink:(BOOL)a3;
- (void)serializeStructuralPluginHints:(id)a3;
- (void)sideCarInfo;
- (void)triggerNotificationIfNeeded;
- (void)updateItemMetadataFromServerItem:(id)a3 appliedSharingPermission:(BOOL)a4;
- (void)updateParentZoneRowID:(id)a3;
- (void)updateStatMetadataFromServerItem:(id)a3;
- (void)updateStructuralCKInfoFromServerItem:(id)a3;
- (void)updateToBeInTrashWithParent:(id)a3 trashPutBackPath:(id)a4 trashPutBackParentID:(id)a5;
- (void)updateToBeUntrashedWithParent:(id)a3;
- (void)updateWithCreationDate:(id)a3;
- (void)updateWithFileSystemFlags:(unint64_t)a3;
- (void)updateWithFinderTagNames:(id)a3;
- (void)updateWithLastUsedDate:(id)a3;
- (void)updateWithXattrs:(id)a3;
- (void)wasMarkedDead;
@end

@implementation BRCLocalItem

- (BOOL)isSharedToMeTopLevelItem
{
  v3 = [(BRCClientZone *)self->_clientZone isSharedZone];
  if (v3)
  {
    return (LOBYTE(self->_sharingOptions) >> 2) & 1;
  }

  return v3;
}

- (BRCItemGlobalID)itemGlobalID
{
  v3 = [BRCItemGlobalID alloc];
  v4 = [(BRCClientZone *)self->_clientZone dbRowID];
  v5 = [(BRCItemGlobalID *)v3 initWithZoneRowID:v4 itemID:self->_itemID];

  return v5;
}

- (id)parentItemIDInZone
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(BRCLocalItem *)self itemID];
  v4 = [v3 isNonDesktopRoot];

  if (v4)
  {
    [BRCLocalItem parentItemIDInZone];
  }

  if ([(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    v5 = [BRCItemID alloc];
    v6 = [(BRCServerZone *)self->_serverZone dbRowID];
    v7 = [(BRCItemID *)v5 _initAsZoneRootWithZoneRowID:v6];

    if (v7)
    {
      goto LABEL_5;
    }

LABEL_10:
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalItem parentItemIDInZone];
    }

    goto LABEL_19;
  }

  v7 = [(BRCStatInfo *)self->_st parentID];
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ([v7 isNonDesktopRoot] || (v8 = -[BRCClientZone itemTypeByItemID:dbFacade:](self->_clientZone, "itemTypeByItemID:dbFacade:", v7, self->_dbFacade), v8 <= 0xA) && ((1 << v8) & 0x611) != 0)
  {
    v9 = v7;
    goto LABEL_20;
  }

  if (v8 == 255)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = [(BRCItemID *)self->_itemID debugItemIDString];
      v15 = [v7 debugItemIDString];
      clientZone = self->_clientZone;
      v21 = 138413058;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = clientZone;
      v27 = 2112;
      v28 = v12;
      _os_log_fault_impl(&dword_223E7A000, v13, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: orphan detected %@ under parent %@ in %@%@", &v21, 0x2Au);
    }
  }

  else
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v19 = [v7 debugItemIDString];
      v20 = BRCPrettyPrintEnumWithContext(v8, &brc_item_type_pretty_entries, 0);
      v21 = 138413058;
      v22 = self;
      v23 = 2112;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      v27 = 2112;
      v28 = v12;
      _os_log_fault_impl(&dword_223E7A000, v13, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: item parented to a document: %@ parented to %@ type %@%@", &v21, 0x2Au);
    }
  }

LABEL_19:
  v9 = 0;
LABEL_20:

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)isKnownByServerOrInFlight
{
  if ([(BRCLocalItem *)self inFlightSyncUpDiffs])
  {
    return 1;
  }

  return [(BRCLocalItem *)self isKnownByServer];
}

- (id)parentItemOnFS
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(BRCLocalItem *)self isFSRoot])
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalItem parentItemOnFS];
    }

    v5 = 0;
  }

  else
  {
    v6 = [(BRCClientZone *)self->_clientZone parentsOfCZMFaults];
    v7 = [v6 objectForKeyedSubscript:self->_itemID];

    if (v7 && ![(BRCPQLConnection *)self->_db isReadonly])
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        itemID = self->_itemID;
        v25 = 138412802;
        v26 = v7;
        v27 = 2112;
        v28 = itemID;
        v29 = 2112;
        v30 = v10;
        _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Using parent %@ for %@ because it's in the CZM fault list%@", &v25, 0x20u);
      }

      v3 = [(BRCLocalItem *)v7 itemID];
      session = self->_session;
      v13 = [(BRCLocalItem *)v7 zoneRowID];
      v4 = [(BRCAccountSession *)session serverZoneByRowID:v13];
    }

    else
    {
      v3 = [(BRCStatInfo *)self->_st parentID];
      if (!v3)
      {
        v8 = brc_bread_crumbs();
        v9 = brc_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          [BRCLocalItem parentItemOnFS];
        }
      }

      v4 = [(BRCAccountSession *)self->_session serverZoneByRowID:self->_parentZoneRowID];
    }

    v14 = [v4 clientZone];
    v15 = [v14 itemByItemID:v3 dbFacade:self->_dbFacade];

    if (!v15)
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v22 = [(BRCItemID *)self->_itemID debugItemIDString];
        v23 = [v3 debugItemIDString];
        v25 = 138413058;
        v26 = v22;
        v27 = 2112;
        v28 = v23;
        v29 = 2112;
        v30 = v4;
        v31 = 2112;
        v32 = v16;
        _os_log_fault_impl(&dword_223E7A000, v17, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: orphan detected %@ under parent %@ in %@%@", &v25, 0x2Au);
      }
    }

    if ([(BRCItemID *)v15 isDocument])
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v25 = 138412802;
        v26 = self;
        v27 = 2112;
        v28 = v15;
        v29 = 2112;
        v30 = v18;
        _os_log_fault_impl(&dword_223E7A000, v19, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: item parented to a document: %@ parented to %@%@", &v25, 0x20u);
      }

      v15 = 0;
    }

    v5 = [(BRCItemID *)v15 asDirectory];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)diffAgainstOriginalItem
{
  if (self->_orig)
  {
    return [(BRCLocalItem *)self diffAgainstLocalItem:?];
  }

  else
  {
    return 0xFF003FF3FF7FFFLL;
  }
}

- (BOOL)isSharedToMeChildItem
{
  v3 = [(BRCClientZone *)self->_clientZone isSharedZone];
  if (v3)
  {
    LOBYTE(v3) = (self->_sharingOptions & 4) == 0;
  }

  return v3;
}

- (BRFileObjectID)fileObjectID
{
  if ([(BRCLocalItem *)self isZoneRoot])
  {
    v3 = objc_alloc(MEMORY[0x277CFAE48]);
    v4 = [(BRCAppLibrary *)self->_appLibrary dbRowID];
    v5 = [v4 unsignedLongLongValue];
    v6 = v3;
    v7 = 1;
LABEL_5:
    v9 = [v6 initWithRowID:v5 type:v7];

    goto LABEL_12;
  }

  if ([(BRCItemID *)self->_itemID isDocumentsFolder])
  {
    v8 = objc_alloc(MEMORY[0x277CFAE48]);
    v4 = [(BRCAppLibrary *)self->_appLibrary dbRowID];
    v5 = [v4 unsignedLongLongValue];
    v6 = v8;
    v7 = 4;
    goto LABEL_5;
  }

  v10 = [(BRCLocalItem *)self st];
  v11 = [v10 type];
  if (v11 > 0xA)
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalItem fileObjectID];
    }

    v9 = 0;
  }

  else
  {
    if (((1 << v11) & 0x639) != 0)
    {
      v12 = objc_alloc(MEMORY[0x277CFAE48]);
      dbRowID = self->_dbRowID;
      v14 = 3;
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x277CFAE48]);
      dbRowID = self->_dbRowID;
      v14 = 2;
    }

    v9 = [v12 initWithRowID:dbRowID type:v14];
  }

LABEL_12:

  return v9;
}

- (BOOL)hasValidCKInfo
{
  v2 = [(BRCStatInfo *)self->_st ckInfo];
  v3 = v2 != 0;

  return v3;
}

- (BRCAppLibrary)appLibrary
{
  appLibrary = self->_appLibrary;
  if (!appLibrary)
  {
    [(BRCLocalItem *)self _refreshAppLibraryFromParent];
    appLibrary = self->_appLibrary;
  }

  v4 = appLibrary;

  return v4;
}

- (void)_updateAppLibraryPristineStatesAfterCreationOrUpdate
{
  if (![(BRCLocalItem *)self isFSRoot]&& [(BRCLocalItem *)self isLive])
  {
    v3 = [(BRCLocalItem *)self appLibrary];
    if (v3)
    {
      v10 = v3;
      v4 = [(BRCLocalItem *)self appLibrary];
      v5 = [v4 dbRowID];
      v6 = [BRCItemID documentsItemIDWithAppLibraryRowID:v5];

      v7 = [(BRCStatInfo *)self->_st parentID];
      LODWORD(v5) = [v7 isEqualToItemID:v6];

      if (v5)
      {
        [v10 didCreateDocumentScopedItem];
      }

      else if (![(BRCItemID *)self->_itemID isEqualToItemID:v6])
      {
        v8 = [(BRCStatInfo *)self->_st parentID];
        v9 = [v8 isNonDesktopRoot];

        if (v9)
        {
          [v10 didCreateDataScopedItem];
        }
      }

      v3 = v10;
    }
  }
}

- (unsigned)uploadStatus
{
  if ([(BRCLocalItem *)self isIdleOrRejected])
  {
    return 3;
  }

  v3 = [(BRCLocalItem *)self itemID];
  if ([v3 isDocumentsFolder])
  {

    return 3;
  }

  v4 = [(BRCLocalItem *)self isMigratingToFPFS];

  if (v4)
  {
    return 3;
  }

  if ([(BRCLocalItem *)self syncUpState]== 4)
  {
    v5 = 2;
    if (![(BRCLocalItem *)self isDeadOrMissingInServerTruth])
    {
      localDiffs = self->_localDiffs;
      if ((([(BRCLocalItem *)self inFlightSyncUpDiffs]| localDiffs) & 0xEFFFFFFFFFFFF7FFLL) != 0)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }

  else if ([(BRCLocalItem *)self isDocument])
  {
    return 1;
  }

  else
  {
    return 2;
  }

  return v5;
}

- (BOOL)isKnownByServer
{
  if ([(BRCLocalItem *)self hasValidCKInfo])
  {
    return 1;
  }

  knownByServer = self->_knownByServer;
  if (!knownByServer)
  {
    itemID = self->_itemID;
    db = self->_db;
    v7 = [(BRCClientZone *)self->_clientZone dbRowID];
    v8 = [(PQLConnection *)db numberWithSQL:@"SELECT 1 FROM server_items WHERE item_id = %@ AND zone_rowid = %@ LIMIT 1", itemID, v7];
    v9 = self->_knownByServer;
    self->_knownByServer = v8;

    knownByServer = self->_knownByServer;
    if (!knownByServer)
    {
      self->_knownByServer = MEMORY[0x277CBEC28];

      knownByServer = self->_knownByServer;
    }
  }

  return [(NSNumber *)knownByServer BOOLValue];
}

- (BRCItemID)serverPathMatchItemID
{
  serverPathMatchID = self->_serverPathMatchID;
  if (!serverPathMatchID)
  {
    db = self->_db;
    itemID = self->_itemID;
    v6 = [(BRCStatInfo *)self->_st parentID];
    v7 = [(BRCLocalStatInfo *)self->_st logicalNameWithoutLocalBounce];
    v8 = [(BRCClientZone *)self->_clientZone dbRowID];
    v9 = [(PQLConnection *)db itemIDWithSQL:@"SELECT item_id FROM server_items WHERE item_id != %@ AND item_parent_id = %@ AND item_filename = %@ AND +zone_rowid = %@", itemID, v6, v7, v8];
    v10 = self->_serverPathMatchID;
    self->_serverPathMatchID = v9;

    serverPathMatchID = self->_serverPathMatchID;
    if (!serverPathMatchID)
    {
      v11 = [MEMORY[0x277CBEB68] null];
      v12 = self->_serverPathMatchID;
      self->_serverPathMatchID = v11;

      serverPathMatchID = self->_serverPathMatchID;
    }
  }

  v13 = [MEMORY[0x277CBEB68] null];

  if (serverPathMatchID == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = self->_serverPathMatchID;
  }

  return v14;
}

- (BOOL)isDeadOrMissingInServerTruth
{
  itemID = self->_itemID;
  db = self->_db;
  v4 = [(BRCClientZone *)self->_clientZone dbRowID];
  v5 = [(PQLConnection *)db numberWithSQL:@"SELECT 1 FROM server_items WHERE item_id = %@ AND item_state = 0 AND zone_rowid = %@ LIMIT 1", itemID, v4];
  LOBYTE(itemID) = [v5 BOOLValue];

  return itemID ^ 1;
}

- (NSError)syncUpError
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (self->_syncUpState == 8)
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = _BRLocalizedStringWithFormat();

    if (v3)
    {
LABEL_12:
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA050];
      v16 = *MEMORY[0x277CCA450];
      v17[0] = v3;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:{1, v15}];
      v11 = [v8 errorWithDomain:v9 code:3328 userInfo:v10];

      v12 = v11;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if ([(BRCClientZone *)self->_clientZone isSyncBlockedBecauseOSNeedsUpgrade])
  {
    v5 = [(BRCClientZone *)self->_clientZone osNameRequiredToSync];
    goto LABEL_8;
  }

  if ([(BRCLocalItem *)self needsOSUpgradeToSyncUp])
  {
    v5 = [(BRCLocalItem *)self osNameNeededToSyncUp];
LABEL_8:
    v6 = v5;
    if (v5)
    {
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = v6;
      v3 = _BRLocalizedStringWithFormat();

LABEL_11:
      goto LABEL_12;
    }

LABEL_10:
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = _BRLocalizedStringWithFormat();
    goto LABEL_11;
  }

  v12 = 0;
LABEL_13:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isAlmostDead
{
  v3 = [(BRCStatInfo *)self->_st state];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(BRCStatInfo *)self->_st state]== -3;
  }

  return v3;
}

- (void)_cheapCheckSavingItem
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.appLibrary%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (BRFileObjectID)parentFileObjectID
{
  v3 = [(BRCStatInfo *)self->_st parentID];
  v4 = [v3 isNonDesktopRoot];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CFAE48]);
    v6 = [(BRCStatInfo *)self->_st parentID];
    v7 = [v6 appLibraryRowID];
    v8 = [v7 unsignedLongLongValue];
    v9 = v5;
    v10 = 1;
LABEL_5:
    v14 = [v9 initWithRowID:v8 type:v10];

LABEL_6:
    goto LABEL_7;
  }

  v11 = [(BRCStatInfo *)self->_st parentID];
  v12 = [v11 isDocumentsFolder];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277CFAE48]);
    v6 = [(BRCStatInfo *)self->_st parentID];
    v7 = [v6 appLibraryRowID];
    v8 = [v7 unsignedLongLongValue];
    v9 = v13;
    v10 = 4;
    goto LABEL_5;
  }

  if (![(BRCLocalItem *)self isZoneRoot])
  {
    db = self->_db;
    v19 = [(BRCStatInfo *)self->_st parentID];
    v6 = [(PQLConnection *)db numberWithSQL:@"SELECT rowid FROM client_items WHERE item_id = %@ AND zone_rowid = %@", v19, self->_parentZoneRowID];

    if (v6)
    {
      v14 = [objc_alloc(MEMORY[0x277CFAE48]) initWithRowID:objc_msgSend(v6 type:{"unsignedLongLongValue"), 3}];
    }

    else
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        [BRCLocalItem parentFileObjectID];
      }

      v14 = 0;
    }

    goto LABEL_6;
  }

  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    [BRCLocalItem parentFileObjectID];
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (NSDictionary)extendedAttributes
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__16;
  v18 = __Block_byref_object_dispose__16;
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __34__BRCLocalItem_extendedAttributes__block_invoke;
  v13[3] = &unk_2785022A8;
  v13[4] = self;
  v13[5] = &v14;
  v3 = MEMORY[0x22AA4A310](v13);
  st = self->_st;
  v5 = [(BRCAccountSession *)self->_session xattrStager];
  v6 = [(BRCStatInfo *)st lazyXattrWithXattrStager:v5];
  (v3)[2](v3, v6);

  if ([(BRCLocalItem *)self isDocument])
  {
    v7 = [(BRCLocalItem *)self asDocument];
    v8 = [v7 currentVersion];
    v9 = [(BRCAccountSession *)self->_session xattrStager];
    v10 = [v8 lazyXattrWithXattrStager:v9];
    (v3)[2](v3, v10);
  }

  if ([v15[5] count])
  {
    v11 = v15[5];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v11;
}

void __34__BRCLocalItem_extendedAttributes__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v18 = v3;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17 = [[BRFieldXattrBlob alloc] initWithData:v3];
    v4 = [(BRFieldXattrBlob *)v17 xattrs];
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = [v9 name];

          if (v10)
          {
            v11 = [v9 value];
            v12 = *(*(*(a1 + 40) + 8) + 40);
            v13 = [v9 name];
            [v12 setObject:v11 forKeyedSubscript:v13];
          }

          else
          {
            v11 = brc_bread_crumbs();
            v13 = brc_default_log();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
            {
              v14 = *(a1 + 32);
              v15 = [v9 value];
              *buf = 138412802;
              v24 = v14;
              v25 = 2112;
              v26 = v15;
              v27 = 2112;
              v28 = v11;
              _os_log_fault_impl(&dword_223E7A000, v13, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Got a nil xattr name while building xattr for %@, xattr value %@%@", buf, 0x20u);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v29 count:16];
      }

      while (v6);
    }

    v3 = v18;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)itemParentGlobalID
{
  v3 = [BRCItemGlobalID alloc];
  v4 = [(BRCLocalItem *)self parentClientZone];
  v5 = [v4 dbRowID];
  v6 = [(BRCStatInfo *)self->_st parentID];
  v7 = [(BRCItemGlobalID *)v3 initWithZoneRowID:v5 itemID:v6];

  return v7;
}

- (BOOL)fromReadOnlyDB
{
  db = self->_db;
  v3 = [(BRCAccountSession *)self->_session readOnlyDB];
  LOBYTE(db) = db == v3;

  return db;
}

- (BRCClientZone)parentClientZone
{
  v2 = [(BRCAccountSession *)self->_session serverZoneByRowID:self->_parentZoneRowID];
  v3 = [v2 clientZone];

  return v3;
}

- (void)_recomputeUserVisibleAndItemScope
{
  v25 = *MEMORY[0x277D85DE8];
  if (![(BRCItemID *)self->_itemID isDocumentsFolder])
  {
    v3 = [(BRCStatInfo *)self->_st parentID];
    v18 = [v3 isNonDesktopRoot];
    if (v18)
    {
      v4 = [(BRCAppLibrary *)self->_appLibrary includesDataScope]^ 1;
      if ([(BRCAppLibrary *)self->_appLibrary includesDataScope])
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }

      v6 = *MEMORY[0x277CFAD60];
    }

    else
    {
      if ([v3 isDocumentsFolder])
      {
        v6 = *MEMORY[0x277CFAD50];
        v5 = 2;
        v7 = 1;
        v4 = 1;
LABEL_16:
        v13 = [(BRCLocalStatInfo *)self->_st logicalName];
        self->_isUserVisible = [BRCLocalItem computeUserVisibleStatusOfLiveItemWithParentVisible:v4 parentIsNonDesktopRoot:v18 parentScope:v5 itemFilename:v13 parentFilename:v6 appLibrary:self->_appLibrary];

        v14 = [(BRCLocalStatInfo *)self->_st logicalName];
        [(BRCLocalStatInfo *)self->_st setItemScope:[BRCLocalItem computeItemScopeFromParentIsRoot:v18 parentIsDocuments:v7 parentScope:v5 logicalName:v14]];

        goto LABEL_17;
      }

      db = self->_db;
      v9 = [(BRCStatInfo *)self->_st parentID];
      v10 = [(BRCPQLConnection *)db fetch:@"SELECT item_user_visible, item_scope, item_filename FROM client_items WHERE item_id = %@ AND zone_rowid = %@", v9, self->_parentZoneRowID];

      if ([v10 next])
      {
        v4 = [v10 BOOLAtIndex:0];
        v5 = [v10 intAtIndex:1];
        v6 = [v10 stringAtIndex:2];
      }

      else
      {
        v11 = brc_bread_crumbs();
        v12 = brc_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          v16 = [(BRCStatInfo *)self->_st parentID];
          parentZoneRowID = self->_parentZoneRowID;
          *buf = 138412802;
          v20 = v16;
          v21 = 2112;
          v22 = parentZoneRowID;
          v23 = 2112;
          v24 = v11;
          _os_log_fault_impl(&dword_223E7A000, v12, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Can't find parent %@(%@)%@", buf, 0x20u);
        }

        v5 = 0;
        v4 = 0;
        v6 = @"UNKNOWN";
      }
    }

    v7 = 0;
    goto LABEL_16;
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)logicalNameNeedsRename
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(BRCLocalStatInfo *)self->_st rawBouncedLogicalName];
  if (v3)
  {
    v4 = v3;
    v5 = [(BRCLocalStatInfo *)self->_st rawBouncedLogicalName];
    v6 = [(BRCLocalStatInfo *)self->_st logicalNameWithoutLocalBounce];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
LABEL_3:
      LOBYTE(v3) = 0;
      goto LABEL_14;
    }

    v24 = 0;
    v8 = [(BRCLocalStatInfo *)self->_st logicalNameWithoutLocalBounce];
    v9 = [v8 br_stringByDeletingPathBounceNo:&v24];

    v10 = [(BRCLocalStatInfo *)self->_st logicalName];
    v11 = [v10 br_stringByDeletingPathBounceNo:&v24];

    if ([v9 isEqualToString:v11])
    {
      v12 = [(BRCAccountSession *)self->_session serverZoneByRowID:self->_parentZoneRowID];
      v13 = [v12 clientZone];

      v14 = [(BRCStatInfo *)self->_st parentID];
      v15 = [(BRCLocalStatInfo *)self->_st logicalNameWithoutLocalBounce];
      v16 = [(BRCLocalItem *)self itemGlobalID];
      v17 = [v13 existsByParentID:v14 andLogicalName:v15 excludingItemGlobalID:v16];

      if (v17)
      {

        goto LABEL_3;
      }

      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [BRCLocalItem(FPFSAdditions) logicalNameNeedsRename];
      }
    }

    else
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v26 = v9;
        v27 = 2112;
        v28 = v11;
        v29 = 2112;
        v30 = v18;
        _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] Needs rename because local name %@ differs from real name %@%@", buf, 0x20u);
      }
    }

    LOBYTE(v3) = 1;
  }

LABEL_14:
  v22 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_hasFieldChangesNotDiffed
{
  localDiffs = self->_localDiffs;
  if (localDiffs != [(BRCLocalItem *)self->_orig localDiffs])
  {
    return 1;
  }

  v4 = [(BRCStatInfo *)self->_st type];
  v5 = [(BRCLocalItem *)self->_orig st];
  v6 = [v5 type];

  if (v4 != v6)
  {
    return 1;
  }

  v7 = [(BRCLocalStatInfo *)self->_st processingStamp];
  v8 = [(BRCLocalItem *)self->_orig st];
  v9 = [v8 processingStamp];

  if (v7 != v9)
  {
    return 1;
  }

  notifsRank = self->_notifsRank;
  return notifsRank != [(BRCLocalItem *)self->_orig notifsRank];
}

- (BOOL)isSharedToMe
{
  if ([(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    return 1;
  }

  return [(BRCLocalItem *)self isSharedToMeChildItem];
}

- (NSString)bookmarkData
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BRCItemID *)self->_itemID itemIDString];
  v5 = [v3 bookmarkDataWithItemResolutionString:v4 serverZone:self->_serverZone];

  return v5;
}

+ (BOOL)parseUnsaltedBookmarkData:(id)a3 itemID:(id *)a4 mangledID:(id *)a5 error:(id *)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [v9 componentsSeparatedByString:@"/"];
  if ([v10 count] == 2)
  {
    v11 = objc_alloc(MEMORY[0x277CFAE60]);
    v12 = [v10 objectAtIndexedSubscript:0];
    v13 = [v11 initWithAliasTargetContainerString:v12];

    if (v13)
    {
      v14 = [BRCItemID alloc];
      v15 = [v10 objectAtIndexedSubscript:1];
      v16 = [(BRCItemID *)v14 initWithUUIDString:v15];

      if (v16)
      {
        if (a5)
        {
          objc_storeStrong(a5, v13);
        }

        if (a4)
        {
          objc_storeStrong(a4, v16);
        }

        v17 = 1;
        goto LABEL_27;
      }

      v24 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"unsaltedBookmarkData" value:v9];
      if (v24)
      {
        v25 = brc_bread_crumbs();
        v26 = brc_default_log();
        if (os_log_type_enabled(v26, 0x90u))
        {
          v32 = "(passed to caller)";
          v33 = 136315906;
          v34 = "+[BRCLocalItem(BRCBookmarkAdditions) parseUnsaltedBookmarkData:itemID:mangledID:error:]";
          v35 = 2080;
          if (!a6)
          {
            v32 = "(ignored by caller)";
          }

          v36 = v32;
          v37 = 2112;
          v38 = v24;
          v39 = 2112;
          v40 = v25;
          _os_log_error_impl(&dword_223E7A000, v26, 0x90u, "[ERROR] %s: %s error: %@%@", &v33, 0x2Au);
        }
      }

      if (a6)
      {
        v27 = v24;
        *a6 = v24;
      }
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"unsaltedBookmarkData" value:v9];
      if (v16)
      {
        v21 = brc_bread_crumbs();
        v22 = brc_default_log();
        if (os_log_type_enabled(v22, 0x90u))
        {
          v31 = "(passed to caller)";
          v33 = 136315906;
          v34 = "+[BRCLocalItem(BRCBookmarkAdditions) parseUnsaltedBookmarkData:itemID:mangledID:error:]";
          v35 = 2080;
          if (!a6)
          {
            v31 = "(ignored by caller)";
          }

          v36 = v31;
          v37 = 2112;
          v38 = v16;
          v39 = 2112;
          v40 = v21;
          _os_log_error_impl(&dword_223E7A000, v22, 0x90u, "[ERROR] %s: %s error: %@%@", &v33, 0x2Au);
        }
      }

      if (a6)
      {
        v23 = v16;
        v17 = 0;
        *a6 = v16;
LABEL_27:

        goto LABEL_28;
      }
    }

    v17 = 0;
    goto LABEL_27;
  }

  v13 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"unsaltedBookmarkData" value:v9];
  if (v13)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, 0x90u))
    {
      v30 = "(passed to caller)";
      v33 = 136315906;
      v34 = "+[BRCLocalItem(BRCBookmarkAdditions) parseUnsaltedBookmarkData:itemID:mangledID:error:]";
      v35 = 2080;
      if (!a6)
      {
        v30 = "(ignored by caller)";
      }

      v36 = v30;
      v37 = 2112;
      v38 = v13;
      v39 = 2112;
      v40 = v18;
      _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] %s: %s error: %@%@", &v33, 0x2Au);
    }
  }

  if (a6)
  {
    v20 = v13;
    v17 = 0;
    *a6 = v13;
  }

  else
  {
    v17 = 0;
  }

LABEL_28:

  v28 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (BOOL)parseBookmarkData:(id)a3 inAccountSession:(id)a4 itemID:(id *)a5 mangledID:(id *)a6 unsaltedBookmarkData:(id *)a7 error:(id *)a8
{
  v71 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = [v13 componentsSeparatedByString:@"/"];
  if ([v15 count] == 3)
  {
    location = a6;
    v62 = v13;
    v16 = [v15 objectAtIndexedSubscript:0];
    v17 = [v15 objectAtIndexedSubscript:1];
    v18 = [v15 objectAtIndexedSubscript:2];
    obj = [objc_alloc(MEMORY[0x277CFAE60]) initWithAliasTargetContainerString:v16];
    v19 = [v14 accountFacade];
    v20 = [v19 accountDSID];

    v21 = v18;
    v22 = v17;
    v60 = v20;
    v59 = [v17 brc_SHA1WithSalt:v20];
    if (([v21 isEqualToString:?] & 1) == 0 && (objc_msgSend(v21, "isEqualToString:", @"BRGetFileNameFromServerInfoBlob") & 1) == 0)
    {
      v38 = v21;
      v39 = a8;
      v40 = brc_bread_crumbs();
      v41 = brc_default_log();
      v42 = v59;
      if (os_log_type_enabled(v41, 0x90u))
      {
        *buf = 138413058;
        v64 = v38;
        v65 = 2112;
        v66 = v59;
        v67 = 2112;
        v68 = v62;
        v69 = 2112;
        v70 = v40;
        _os_log_error_impl(&dword_223E7A000, v41, 0x90u, "[ERROR] checksum from bookmark %@ is not equal to expected checksum %@ for %@%@", buf, 0x2Au);
      }

      if (v39)
      {
        [MEMORY[0x277CCA9B8] brc_errorAccountMismatch];
        *v39 = v33 = 0;
      }

      else
      {
        v33 = 0;
      }

      v21 = v38;
      v22 = v17;
      v23 = obj;
      goto LABEL_39;
    }

    v23 = obj;
    v24 = a7;
    if (a5)
    {
      v25 = [v22 componentsSeparatedByString:@":"];
      v56 = v14;
      v57 = v22;
      if ([v25 count] == 2 && objc_msgSend(v22, "hasPrefix:", @"docID:"))
      {
        v26 = *a5;
        *a5 = 0;

        v27 = brc_bread_crumbs();
        v28 = brc_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v64 = v27;
          _os_log_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEFAULT, "[WARNING] can't parse docID based bookmark%@", buf, 0xCu);
        }
      }

      else
      {
        v34 = v21;
        if ([obj isShared])
        {
          v35 = [v14 sharedClientZoneByMangledID:obj];
          v36 = [v35 dbRowID];
          v37 = 0;
        }

        else
        {
          v35 = [v14 appLibraryByMangledID:obj];
          v37 = [v35 dbRowID];
          v36 = 0;
        }

        v43 = [[BRCItemID alloc] initWithString:v57 libraryRowID:v37 sharedZoneRowID:v36];
        v44 = *a5;
        *a5 = v43;

        a8 = v55;
        v21 = v34;
      }

      v14 = v56;
      if (!*a5)
      {
        v47 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"bookmarkData" value:v62];
        if (v47)
        {
          v48 = brc_bread_crumbs();
          v49 = brc_default_log();
          if (os_log_type_enabled(v49, 0x90u))
          {
            v54 = "(passed to caller)";
            *buf = 136315906;
            v64 = "+[BRCLocalItem(BRCBookmarkAdditions) parseBookmarkData:inAccountSession:itemID:mangledID:unsaltedBookmarkData:error:]";
            v65 = 2080;
            if (!a8)
            {
              v54 = "(ignored by caller)";
            }

            v66 = v54;
            v67 = 2112;
            v68 = v47;
            v69 = 2112;
            v70 = v48;
            _os_log_error_impl(&dword_223E7A000, v49, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }

          v23 = obj;
        }

        if (a8)
        {
          v50 = v47;
          *a8 = v47;
        }

        v33 = 0;
        v22 = v57;
        v42 = v59;
        goto LABEL_39;
      }

      v22 = v57;
    }

    if (location)
    {
      objc_storeStrong(location, obj);
    }

    v42 = v59;
    if (v24)
    {
      v45 = [v16 stringByAppendingPathComponent:v22];
      v46 = *v24;
      *v24 = v45;
    }

    v33 = 1;
LABEL_39:

    v13 = v62;
    goto LABEL_40;
  }

  v16 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"bookmarkData" value:v13];
  if (v16)
  {
    v29 = a8;
    v30 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (os_log_type_enabled(v31, 0x90u))
    {
      v53 = "(passed to caller)";
      *buf = 136315906;
      v64 = "+[BRCLocalItem(BRCBookmarkAdditions) parseBookmarkData:inAccountSession:itemID:mangledID:unsaltedBookmarkData:error:]";
      v65 = 2080;
      if (!v29)
      {
        v53 = "(ignored by caller)";
      }

      v66 = v53;
      v67 = 2112;
      v68 = v16;
      v69 = 2112;
      v70 = v30;
      _os_log_error_impl(&dword_223E7A000, v31, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }

    a8 = v29;
  }

  if (a8)
  {
    v32 = v16;
    v33 = 0;
    *a8 = v16;
  }

  else
  {
    v33 = 0;
  }

LABEL_40:

  v51 = *MEMORY[0x277D85DE8];
  return v33;
}

- (unint64_t)diffAgainstServerAliasItem:(id)a3
{
  v4 = a3;
  if (![(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    [BRCLocalItem(BRCSharedToMeTopLevel) diffAgainstServerAliasItem:];
  }

  v5 = [(BRCLocalItem *)self st];
  v6 = [v4 st];

  v7 = [v5 diffAgainst:v6];
  return v7;
}

- (id)sharedAliasItemID
{
  if (![(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    [BRCLocalItem(BRCSharedToMeTopLevel) sharedAliasItemID];
  }

  itemID = self->_itemID;
  v4 = [(BRCServerZone *)self->_serverZone ownerName];
  v5 = [(BRCItemID *)itemID derivedAliasItemIDWithOwnerName:v4];

  return v5;
}

- (id)structureRecordIDInZone:(id)a3
{
  v4 = a3;
  if (![(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    [BRCLocalItem(BRCSharedToMeTopLevel) structureRecordIDInZone:];
  }

  v5 = [(BRCAccountSession *)self->_session itemFetcher];
  v6 = [v5 serverAliasItemForSharedItem:self inZone:v4];

  v7 = [v6 itemID];
  v8 = [v6 st];
  v9 = [v7 structureRecordIDForItemType:objc_msgSend(v8 zone:"type") aliasTargetZoneIsShared:{v4, 1}];

  return v9;
}

- (id)structureRecordBeingDeadInServerTruth:(BOOL)a3 shouldPCSChainStatus:(unsigned __int8)a4 inZone:(id)a5
{
  v6 = a5;
  if (![(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    [BRCLocalItem(BRCSharedToMeTopLevel) structureRecordBeingDeadInServerTruth:shouldPCSChainStatus:inZone:];
  }

  if (![(BRCServerZone *)self->_serverZone isSharedZone])
  {
    [BRCLocalItem(BRCSharedToMeTopLevel) structureRecordBeingDeadInServerTruth:shouldPCSChainStatus:inZone:];
  }

  if (([v6 isPrivateZone] & 1) == 0)
  {
    [BRCLocalItem(BRCSharedToMeTopLevel) structureRecordBeingDeadInServerTruth:shouldPCSChainStatus:inZone:];
  }

  v7 = [(BRCAccountSession *)self->_session itemFetcher];
  v8 = [v7 serverAliasItemForSharedItem:self inZone:v6];

  v9 = [v8 itemID];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [(BRCLocalItem *)self sharedAliasItemID];
  }

  v65 = v11;

  v12 = [(BRCLocalItem *)self diffAgainstOriginalItem];
  localDiffs = self->_localDiffs;
  v64 = v8;
  if (v8)
  {
    v14 = [(BRCStatInfo *)self->_st ckInfo];

    if (v14)
    {
      v61 = 1;
      goto LABEL_20;
    }
  }

  v15 = [(BRCServerZone *)self->_serverZone zoneName];
  v16 = *MEMORY[0x277CFAD68];
  v17 = [v15 isEqualToString:*MEMORY[0x277CFAD68]];

  if (v17)
  {
    v61 = 0;
    goto LABEL_20;
  }

  v18 = objc_alloc(MEMORY[0x277CFAE60]);
  v19 = [(BRCServerZone *)self->_serverZone ownerName];
  v20 = [v18 initWithZoneName:v16 ownerName:v19];

  v21 = MEMORY[0x277CCACA8];
  v22 = [(BRCItemID *)self->_itemID itemIDString];
  v23 = [v21 unsaltedBookmarkDataWithItemResolutionString:v22 serverZoneMangledID:v20];

  v24 = [v6 clientZone];
  v25 = [v24 asPrivateClientZone];
  v26 = [v25 serverAliasByUnsaltedBookmarkData:v23];

  if (!v26)
  {

    v61 = 0;
    v8 = v64;
LABEL_20:
    v62 = [v65 structureRecordIDForItemType:3 zone:v6 aliasTargetZoneIsShared:1];
    v30 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"structure" recordID:v62];
    v33 = [(BRCStatInfo *)self->_st ckInfo];
    v34 = [(BRCStatInfo *)self->_st parentID];
    itemID = self->_itemID;
    serverZone = self->_serverZone;
    BYTE2(v60) = a4;
    BYTE1(v60) = v8 == 0;
    v37 = localDiffs | v12;
    LOBYTE(v60) = [(BRCLocalItem *)self isDirectory];
    [BRCAliasItem fillStructureRecord:"fillStructureRecord:inZone:itemID:ckInfo:parentID:targetItemID:targetZone:diffs:isFolderShare:beingDeadInServerTruth:shouldPCSChainStatus:" inZone:v30 itemID:v6 ckInfo:v65 parentID:v33 targetItemID:v34 targetZone:itemID diffs:serverZone isFolderShare:v37 beingDeadInServerTruth:v60 shouldPCSChainStatus:?];

    if (!v61 || (v37 & 0x800) != 0)
    {
      v38 = [(BRCLocalItem *)self st];
      [v30 setLastUsedTime:{objc_msgSend(v38, "lastUsedTime")}];
    }

    if ((v37 & 0x1000) != 0)
    {
      v39 = 0;
    }

    else
    {
      v39 = v61;
    }

    v29 = v64;
    if ((v39 & 1) == 0)
    {
      v40 = [(BRCLocalItem *)self st];
      if ([v40 favoriteRank])
      {
        v41 = MEMORY[0x277CCABB0];
        v42 = [(BRCLocalItem *)self st];
        v43 = [v41 numberWithLongLong:{objc_msgSend(v42, "favoriteRank")}];
        [v30 setObject:v43 forKeyedSubscript:@"favoriteRank"];
      }

      else
      {
        [v30 setObject:0 forKeyedSubscript:@"favoriteRank"];
      }
    }

    if ((v37 & 0x40) != 0)
    {
      v44 = [(BRCLocalItem *)self appLibrary];
      if ([v44 isCloudDocsAppLibrary])
      {
        v45 = [(BRCLocalItem *)self clientZone];
        if ([v45 isCloudDocsZone])
        {
          v46 = [(BRCLocalItem *)self parentItemIDInZone];
          v47 = [v46 isNonDesktopRoot];

          v29 = v64;
        }

        else
        {
          v47 = 0;
        }

        v48 = v37;
      }

      else
      {
        v48 = v37;
        v47 = 0;
      }

      v49 = v29 == 0;

      v50 = [(BRCLocalItem *)self parentItemIDInZone];
      v51 = [v50 isDocumentsFolder];

      v52 = [(BRCLocalItem *)self st];
      v37 = [v52 logicalName];
      LOBYTE(v59) = v51;
      v29 = v64;
      [v30 serializeFilename:v37 forCreation:v49 setExtension:1 inSharedAlias:1 basehashSaltIfNotShareAlias:0 parentIDIsCloudDocsRoot:v47 parentIDIsDocumentsFolder:v59];

      LOWORD(v37) = v48;
    }

    if ((v37 & 0x200) != 0)
    {
      v53 = 0;
    }

    else
    {
      v53 = v61;
    }

    if ((v53 & 1) == 0)
    {
      v54 = [(BRCLocalItem *)self st];
      v55 = [v54 finderTags];
      [v30 serializeFinderTags:v55 forCreation:v29 == 0];
    }

    [(BRCLocalItem *)self serializeStructuralPluginHints:v30];
    v56 = [(BRCLocalItem *)self session];
    v57 = [v30 validateEnhancedDrivePrivacyFieldsWithSession:v56 error:0];

    if (v57)
    {
      v30 = v30;
      v32 = v30;
    }

    else
    {
      v32 = 0;
    }

    v31 = v62;
    goto LABEL_48;
  }

  v27 = brc_bread_crumbs();
  v28 = brc_default_log();
  v29 = v64;
  if (os_log_type_enabled(v28, 0x90u))
  {
    [BRCLocalItem(BRCSharedToMeTopLevel) structureRecordBeingDeadInServerTruth:shouldPCSChainStatus:inZone:];
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
LABEL_48:

  return v32;
}

- (void)insertTombstoneAliasRecordInZone:(id)a3
{
  v4 = a3;
  v5 = [(BRCAccountSession *)self->_session itemFetcher];
  v6 = [v5 serverAliasItemForSharedItem:self inZone:v4];

  if (v6)
  {
    v7 = [v6 serverZone];

    v8 = [v7 clientZone];
    v9 = [v6 itemID];
    v10 = [v8 itemByItemID:v9];
    v11 = [v10 asBRAlias];

    if ([v11 isDead])
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [BRCLocalItem(BRCSharedToMeTopLevel) insertTombstoneAliasRecordInZone:];
      }
    }

    else
    {
      if (v11)
      {
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          [BRCLocalItem(BRCSharedToMeTopLevel) insertTombstoneAliasRecordInZone:];
        }
      }

      else
      {
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [BRCLocalItem(BRCSharedToMeTopLevel) insertTombstoneAliasRecordInZone:];
        }
      }

      v16 = [(BRCLocalItem *)self db];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __72__BRCLocalItem_BRCSharedToMeTopLevel__insertTombstoneAliasRecordInZone___block_invoke;
      v17[3] = &unk_2784FF788;
      v18 = v6;
      v19 = self;
      [v16 groupInBatch:v17];

      v12 = v18;
    }
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(BRCLocalItem(BRCSharedToMeTopLevel) *)v11 insertTombstoneAliasRecordInZone:v12];
    }

    v7 = v4;
  }
}

void __72__BRCLocalItem_BRCSharedToMeTopLevel__insertTombstoneAliasRecordInZone___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newLocalItemWithDBRowID:0];
  v6 = [v2 asBRAlias];

  v3 = [*(*(a1 + 40) + 80) ckInfo];
  v4 = [v6 st];
  [v4 setCkInfo:v3];

  v5 = [v6 st];
  [v5 setItemScope:2];

  [v6 saveToDB];
  [v6 markDead];
  [v6 markNeedsUploadOrSyncingUpWithAliasTarget:*(a1 + 40)];
  [v6 saveToDB];
}

- (void)updateParentZoneRowID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([(BRCPQLConnection *)self->_db isBatchSuspended]& 1) != 0)
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_14:
    v8 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(BRCLocalItem(BRCSharedToMeTopLevel) *)v8 updateParentZoneRowID:v10];
    }

    goto LABEL_16;
  }

  [BRCLocalItem(BRCSharedToMeTopLevel) updateParentZoneRowID:];
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (([(BRCZoneRowID *)self->_parentZoneRowID br_isEqualToNumber:v5]& 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = self;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] Parent zone updated on %@, clearing ckinfo and inserting dead item%@", &v16, 0x16u);
    }

    v8 = [(BRCAccountSession *)self->_session serverZoneByRowID:self->_parentZoneRowID];
    [(BRCLocalItem *)self insertTombstoneAliasRecordInZone:v8];
    v9 = [(BRCAccountSession *)self->_session serverZoneByRowID:v5];
    v10 = [v9 clientZone];

    v11 = [(BRCAccountSession *)self->_session itemFetcher];
    v12 = [v11 localAliasForSharedItem:self inZone:v10];

    if (v12)
    {
      if (([v12 isDead] & 1) == 0)
      {
        [BRCLocalItem(BRCSharedToMeTopLevel) updateParentZoneRowID:];
      }

      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [BRCLocalItem(BRCSharedToMeTopLevel) updateParentZoneRowID:];
      }

      [v12 markNeedsDeleteForRescheduleOfItem:0];
      [v12 saveToDB];
    }

    objc_storeStrong(&self->_parentZoneRowID, a3);
    [(BRCStatInfo *)self->_st setCkInfo:0];

LABEL_16:
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)requiresShareAlias
{
  if (-[BRCStatInfo favoriteRank](self->_st, "favoriteRank") || -[BRCStatInfo lastUsedTime](self->_st, "lastUsedTime") || (-[BRCStatInfo finderTags](self->_st, "finderTags"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 length], v3, v4))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    session = self->_session;
    v8 = [(BRCLocalItem *)self clientZone];
    v9 = [v8 asSharedClientZone];
    v10 = [(BRCLocalItem *)self st];
    v11 = [v10 logicalName];
    v12 = [v11 br_pathExtension];
    v13 = [v12 lowercaseString];
    v14 = [(BRCAccountSession *)session fallbackAppLibraryForClientZone:v9 extension:v13];

    v15 = [(BRCStatInfo *)self->_st parentID];
    v16 = [v14 documentsFolderItemID];
    v5 = [v15 isEqualToItemID:v16] ^ 1;
  }

  return v5;
}

- (BRCAliasItem)asBRAlias
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRCLocalItem asBRAlias];
  }

  return 0;
}

- (BRCDirectoryItem)asDirectory
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRCLocalItem asDirectory];
  }

  return 0;
}

- (BRCDocumentItem)asDocument
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRCLocalItem asDocument];
  }

  return 0;
}

- (BRCTopLevelShareable)asShareableItem
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRCLocalItem asShareableItem];
  }

  return 0;
}

- (BRCFSRooted)asFSRoot
{
  if ([(BRCLocalItem *)self isDirectory]&& [(BRCLocalItem *)self isFSRoot])
  {
    v3 = self;
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalItem asFSRoot];
    }

    v3 = 0;
  }

  return v3;
}

- (BRCSymlinkItem)asSymlink
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRCLocalItem asSymlink];
  }

  return 0;
}

- (BRCFinderBookmarkItem)asFinderBookmark
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRCLocalItem asFinderBookmark];
  }

  return 0;
}

- (BRCShareAcceptationFault)asShareAcceptationFault
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRCLocalItem asShareAcceptationFault];
  }

  return 0;
}

- (NSString)path
{
  if (self->_resolvedPath)
  {
    v3 = self->_path;
  }

  else
  {
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v5 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
    v6 = [(BRCLocalItem *)self fileObjectID];
    v7 = [v6 asString];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __20__BRCLocalItem_path__block_invoke;
    v11[3] = &unk_278502230;
    v11[4] = self;
    v12 = v4;
    v8 = v4;
    [v5 getUserVisibleURLForItemIdentifier:v7 completionHandler:v11];

    v9 = dispatch_time(0, 10000000000);
    dispatch_group_wait(v8, v9);
    self->_resolvedPath = 1;
    v3 = self->_path;
  }

  return v3;
}

void __20__BRCLocalItem_path__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 32);
      v14 = 138412802;
      v15 = v13;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Got an error while computing the URL of %@ - %@%@", &v14, 0x20u);
    }
  }

  if (v5)
  {
    v9 = [v5 path];
    v10 = *(a1 + 32);
    v11 = *(v10 + 200);
    *(v10 + 200) = v9;
  }

  dispatch_group_leave(*(a1 + 40));

  v12 = *MEMORY[0x277D85DE8];
}

- (NSString)extension
{
  v2 = [(BRCLocalItem *)self logicalName];
  v3 = [v2 br_pathExtension];

  return v3;
}

- (NSString)appLibraryID
{
  v2 = [(BRCLocalItem *)self appLibrary];
  v3 = [v2 appLibraryID];

  return v3;
}

- (BOOL)isFromInitialScan
{
  if ((self->_localDiffs & 0x8000000000000000) != 0)
  {
    return ![(BRCLocalItem *)self isKnownByServerOrInFlight:v2];
  }

  else
  {
    return 0;
  }
}

- (BOOL)checkIsInDocumentsScopeWithParent:(id)a3
{
  v4 = a3;
  isInDocumentScope = self->_isInDocumentScope;
  if (!isInDocumentScope)
  {
    v7 = [(BRCLocalItem *)self appLibrary];
    if ([v7 includesDataScope])
    {
      v8 = [v4 isFSRoot];
      v9 = MEMORY[0x277CBEC28];
      if (v8)
      {
        v6 = 0;
      }

      else
      {
        v12 = [(BRCStatInfo *)self->_st parentID];
        v13 = [v12 isDocumentsFolder];

        v14 = MEMORY[0x277CBEC38];
        if ((v13 & 1) == 0)
        {
          if (v4)
          {
            if ([v4 checkIsInDocumentsScopeWithParent:0])
            {
              v15 = v14;
            }

            else
            {
              v15 = v9;
            }

            v16 = v15;
          }

          else
          {
            v17 = [(BRCLocalItem *)self clientZone];
            v18 = [v17 isSharedZone];

            v16 = MEMORY[0x277CBEC38];
            if ((v18 & 1) == 0)
            {
              session = self->_session;
              v26 = [(BRCLocalItem *)self itemGlobalID];
              v19 = [BRCItemGlobalID alloc];
              v28 = [v7 defaultClientZone];
              v20 = [v28 dbRowID];
              v21 = [v7 dbRowID];
              v22 = [BRCItemID documentsItemIDWithAppLibraryRowID:v21];
              v23 = [(BRCItemGlobalID *)v19 initWithZoneRowID:v20 itemID:v22];
              v24 = [(BRCAccountSession *)session globalID:v26 isStrictChildOfGlobalID:v23];

              if (!v24)
              {
                v16 = v9;
              }
            }
          }

          v25 = self->_isInDocumentScope;
          self->_isInDocumentScope = v16;

          isInDocumentScope = self->_isInDocumentScope;
          goto LABEL_2;
        }

        v6 = 1;
        v9 = MEMORY[0x277CBEC38];
      }
    }

    else
    {
      v6 = 1;
      v9 = MEMORY[0x277CBEC38];
    }

    v10 = self->_isInDocumentScope;
    self->_isInDocumentScope = v9;

    goto LABEL_8;
  }

LABEL_2:
  v6 = [(NSNumber *)isInDocumentScope BOOLValue];
LABEL_8:

  return v6;
}

- (BOOL)isInDocumentOrTrashScope
{
  if ([(BRCLocalItem *)self isInDocumentScope])
  {
    return 1;
  }

  return [(BRCLocalItem *)self isInTrashScope];
}

- (NSNumber)parentFileID
{
  parentFileID = self->_parentFileID;
  if (!parentFileID)
  {
    v4 = [(BRCLocalItem *)self parentItemOnFS];
    v5 = [v4 fileID];
    v6 = self->_parentFileID;
    self->_parentFileID = v5;

    parentFileID = self->_parentFileID;
  }

  v7 = parentFileID;

  return v7;
}

- (NSNumber)fileID
{
  if ([(BRCLocalItem *)self isDocument])
  {
    v3 = [(BRCLocalItem *)self asDocument];
    v4 = [v3 fileIDForUpload];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_refreshAppLibraryFromParent
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: asked to refresh the app library of a root item%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isNewToServer:(BOOL *)a3
{
  v5 = [(BRCLocalItem *)self st];
  v6 = [v5 ckInfo];
  v7 = [v6 etag];

  if (v7)
  {
    result = [(BRCLocalItem *)self isDeadOrMissingInServerTruth];
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    result = 1;
    if (!a3)
    {
      return result;
    }
  }

  *a3 = v7 == 0;
  return result;
}

- (BRCSharedToMeTopLevel)asSharedToMeTopLevelItem
{
  if ([(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    v3 = self;
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalItem asSharedToMeTopLevelItem];
    }

    v3 = 0;
  }

  return v3;
}

- (BOOL)isSharedByMe
{
  v3 = [(BRCLocalItem *)self isOwnedByMe];
  if (v3)
  {

    LOBYTE(v3) = [(BRCLocalItem *)self isShared];
  }

  return v3;
}

- (BOOL)shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:(BOOL)a3
{
  if (a3)
  {
    v4 = [BRCUserDefaults defaultsForMangledID:0];
    v5 = [v4 supportsEnhancedDrivePrivacy];

    return v5;
  }

  else
  {
    clientZone = self->_clientZone;

    return [(BRCClientZone *)clientZone enhancedDrivePrivacyEnabled];
  }
}

- (void)inheritOSUpgradeNeededFromItem:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4[14])
  {
    [BRCLocalItem inheritOSUpgradeNeededFromItem:];
  }

  p_minimumSupportedOSRowID = &self->_minimumSupportedOSRowID;
  if (self->_minimumSupportedOSRowID)
  {
    [BRCLocalItem inheritOSUpgradeNeededFromItem:];
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(BRCLocalItem *)self itemID];
    v10 = v4[14];
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: inheriting %@ minimum supported OS%@", &v11, 0x20u);
  }

  objc_storeStrong(p_minimumSupportedOSRowID, v4[14]);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)osNameNeededToSyncUp
{
  if (self->_minimumSupportedOSRowID)
  {
    v3 = [(BRCPQLConnection *)self->_db fetchObjectOfClass:objc_opt_class() sql:@"SELECT name FROM os_names WHERE rowid = %@", self->_minimumSupportedOSRowID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)markNeedsOSUpgradeToSyncUpWithName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ needs %@ to sync-up%@", buf, 0x20u);
  }

  if (![(BRCPQLConnection *)self->_db execute:@"INSERT OR IGNORE INTO os_names (name) VALUES (%@)", v4])
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalItem markNeedsOSUpgradeToSyncUpWithName:];
    }
  }

  v9 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT rowid FROM os_names WHERE name = %@", v4];
  minimumSupportedOSRowID = self->_minimumSupportedOSRowID;
  self->_minimumSupportedOSRowID = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (id)descriptionWithContext:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:128];
  [v5 appendFormat:@"r:%lld ", self->_dbRowID];
  if (v4)
  {
    v6 = [BRCDumpContext stringFromItemID:self->_itemID context:v4];
    [v5 appendFormat:@"i:%@ ", v6];
  }

  else
  {
    v6 = [(BRCClientZone *)self->_clientZone mangledID];
    v7 = [(BRCItemID *)self->_itemID debugItemIDString];
    [v5 appendFormat:@"i:%@:%@ ", v6, v7];
  }

  v8 = [(BRCAppLibrary *)self->_appLibrary dbRowID];
  [v5 appendFormat:@"al:%@ ", v8];

  if ([(BRCUserRowID *)self->_ownerKey BOOLValue])
  {
    [v5 appendFormat:@"o:%@ ", self->_ownerKey];
  }

  v9 = [(BRCLocalItem *)self fileObjectID];
  [v5 appendFormat:@"foid:%@ ", v9];

  if (self->_localDiffs)
  {
    v10 = BRCItemFieldsPrettyPrint();
    [v5 appendFormat:@"ld{%@} ", v10];
  }

  v11 = BRCPrettyPrintEnumWithContext(self->_syncUpState, &brc_sync_up_state_pretty_entries, v4);
  [v5 appendFormat:@"up:%@", v11];

  if (self->_minimumSupportedOSRowID)
  {
    v12 = [BRCDumpContext highlightedString:@"needs-os-upgrade" type:3 context:v4];
    [v5 appendFormat:@" %@:%@", v12, self->_minimumSupportedOSRowID];
  }

  [v5 appendFormat:@" uv:%d", self->_isUserVisible];
  if ([(BRCLocalItem *)self isDirectory])
  {
    v13 = [(BRCLocalItem *)self asDirectory];
    [v5 appendFormat:@" mt:%lld", objc_msgSend(v13, "mtime")];
  }

  parentZoneRowID = self->_parentZoneRowID;
  v15 = [(BRCClientZone *)self->_clientZone dbRowID];
  LOBYTE(parentZoneRowID) = [(BRCZoneRowID *)parentZoneRowID br_isEqualToNumber:v15];

  if ((parentZoneRowID & 1) == 0)
  {
    [v5 appendFormat:@" pzone:%@", self->_parentZoneRowID];
  }

  sideCarCKInfo = self->_sideCarCKInfo;
  if (sideCarCKInfo)
  {
    v17 = [(BRFieldCKInfo *)sideCarCKInfo etag];
    [v5 appendFormat:@" ppm:%@", v17];
  }

  v18 = [(BRCLocalStatInfo *)self->_st descriptionWithContext:v4 origName:0];
  [v5 appendFormat:@" st{%@", v18];

  if (self->_parentFileID)
  {
    [v5 appendFormat:@" pino:%@", self->_parentFileID];
  }

  [v5 appendString:@"}"];
  if (self->_sharingOptions)
  {
    v19 = BRCPrettyPrintBitmap();
    [v5 appendFormat:@" sharing-options:{%@}", v19];
  }

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  itemID = self->_itemID;
  v6 = [(BRCLocalStatInfo *)self->_st filename];
  v7 = [v6 fp_obfuscatedFilename];
  v8 = [v3 stringWithFormat:@"<%@:%p {ID : %@ name : %@}>", v4, self, itemID, v7];;

  return v8;
}

- (NSString)digestDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BRCLocalStatInfo *)self->_st filename];
  v5 = [v4 fp_obfuscatedFilename];
  v6 = [v3 stringWithFormat:@"%@ id:%@", v5, self->_itemID];

  return v6;
}

- (id)_initWithServerItem:(id)a3 dbRowID:(unint64_t)a4
{
  v6 = a3;
  v36.receiver = self;
  v36.super_class = BRCLocalItem;
  v7 = [(BRCLocalItem *)&v36 init];
  v8 = v7;
  if (v7)
  {
    v7->_dbRowID = a4;
    v9 = [v6 itemID];
    itemID = v8->_itemID;
    v8->_itemID = v9;

    v11 = [v6 ownerKey];
    ownerKey = v8->_ownerKey;
    v8->_ownerKey = v11;

    v13 = [v6 sideCarInfo];
    v14 = [v13 ckInfo];
    sideCarCKInfo = v8->_sideCarCKInfo;
    v8->_sideCarCKInfo = v14;

    v8->_sharingOptions = [v6 sharingOptions];
    v8->_serverZone = [v6 serverZone];
    v16 = [v6 clientZone];
    clientZone = v8->_clientZone;
    v8->_clientZone = v16;

    v18 = [(BRCClientZone *)v8->_clientZone db];
    db = v8->_db;
    v8->_db = v18;

    v20 = [v6 session];
    v8->_session = v20;
    v21 = [(BRCAccountSession *)v20 getClientDBFacadeFromDB:v8->_db];
    dbFacade = v8->_dbFacade;
    v8->_dbFacade = v21;

    v23 = [BRCLocalStatInfo alloc];
    v24 = [v6 st];
    v25 = [(BRCStatInfo *)v23 initWithStatInfo:v24];
    st = v8->_st;
    v8->_st = v25;

    v27 = [v6 parentItemIDOnFS];
    [(BRCStatInfo *)v8->_st setParentID:v27];

    v28 = [v6 parentZoneOnFS];
    v29 = [v28 dbRowID];
    parentZoneRowID = v8->_parentZoneRowID;
    v8->_parentZoneRowID = v29;

    v31 = [v6 predictedAppLibrary];
    appLibrary = v8->_appLibrary;
    v8->_appLibrary = v31;

    [(BRCLocalItem *)v8 _recomputeUserVisibleAndItemScope];
    v33 = [(BRCLocalItem *)v8 copy];
    orig = v8->_orig;
    v8->_orig = v33;
  }

  return v8;
}

- (id)_initWithLocalItem:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BRCLocalItem;
  v5 = [(BRCLocalItem *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_clientZone, v4[3]);
    objc_storeStrong(&v6->_db, v4[4]);
    objc_storeStrong(&v6->_dbFacade, v4[5]);
    objc_storeStrong(&v6->_sideCarCKInfo, v4[21]);
    objc_storeStrong(&v6->_appLibrary, v4[6]);
    v6->_serverZone = v4[2];
    v6->_session = v4[1];
    v6->_dbRowID = v4[16];
    objc_storeStrong(&v6->_itemID, v4[7]);
    objc_storeStrong(&v6->_parentFileID, v4[20]);
    v7 = [v4[10] copy];
    st = v6->_st;
    v6->_st = v7;

    objc_storeStrong(&v6->_parentZoneRowID, v4[8]);
    v6->_syncUpState = *(v4 + 22);
    objc_storeStrong(&v6->_ownerKey, v4[9]);
    v6->_sharingOptions = v4[18];
    objc_storeStrong(&v6->_orig, v4[12]);
    v6->_localDiffs = v4[13];
    objc_storeStrong(&v6->_parentZoneRowID, v4[8]);
    objc_storeStrong(&v6->_minimumSupportedOSRowID, v4[14]);
    v6->_isUserVisible = *(v4 + 120);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 _initWithLocalItem:self];
}

- (id)initFromPQLResultSet:(id)a3 error:(id *)a4
{
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [BRCLocalItem initFromPQLResultSet:error:];
  }

  return 0;
}

- (id)_initFromPQLResultSet:(id)a3 session:(id)a4 db:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v36.receiver = self;
  v36.super_class = BRCLocalItem;
  v12 = [(BRCLocalItem *)&v36 init];
  v13 = v12;
  if (v12)
  {
    v12->_session = v10;
    v12->_dbRowID = [v9 unsignedLongAtIndex:0];
    v14 = [v9 numberAtIndex:1];
    v13->_serverZone = [(BRCAccountSession *)v10 serverZoneByRowID:v14];

    v15 = [(BRCServerZone *)v13->_serverZone clientZone];
    clientZone = v13->_clientZone;
    v13->_clientZone = v15;

    objc_storeStrong(&v13->_db, a5);
    v17 = [(BRCAccountSession *)v10 getClientDBFacadeFromDB:v11];
    dbFacade = v13->_dbFacade;
    v13->_dbFacade = v17;

    v19 = [v9 objectOfClass:objc_opt_class() atIndex:2];
    itemID = v13->_itemID;
    v13->_itemID = v19;

    v21 = [v9 numberAtIndex:3];
    ownerKey = v13->_ownerKey;
    v13->_ownerKey = v21;

    v13->_sharingOptions = [v9 integerAtIndex:4];
    v23 = [v9 objectOfClass:objc_opt_class() atIndex:5];
    sideCarCKInfo = v13->_sideCarCKInfo;
    v13->_sideCarCKInfo = v23;

    v25 = [v9 numberAtIndex:6];
    parentZoneRowID = v13->_parentZoneRowID;
    v13->_parentZoneRowID = v25;

    v13->_syncUpState = [v9 unsignedIntAtIndex:7];
    v13->_localDiffs = [v9 unsignedLongLongAtIndex:8];
    v13->_notifsRank = [v9 longLongAtIndex:9];
    v27 = [v9 numberAtIndex:10];
    v28 = [v9 numberAtIndex:11];
    minimumSupportedOSRowID = v13->_minimumSupportedOSRowID;
    v13->_minimumSupportedOSRowID = v28;

    v13->_isUserVisible = [v9 BOOLAtIndex:12];
    v30 = [[BRCLocalStatInfo alloc] initFromResultSet:v9 pos:13];
    st = v13->_st;
    v13->_st = v30;

    if (v27)
    {
      v32 = [(BRCAccountSession *)v10 appLibraryByRowID:v27];
      appLibrary = v13->_appLibrary;
      v13->_appLibrary = v32;
    }

    else
    {
      appLibrary = brc_bread_crumbs();
      v34 = brc_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        [BRCLocalItem _initFromPQLResultSet:session:db:error:];
      }
    }
  }

  return v13;
}

- (id)initFromPQLResultSet:(id)a3 session:(id)a4 db:(id)a5 error:(id *)a6
{
  v6 = [(BRCLocalItem *)self _initFromPQLResultSet:a3 session:a4 db:a5 error:a6];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 copy];
    v9 = v7[12];
    v7[12] = v8;
  }

  return v7;
}

- (id)sideCarInfo
{
  if ([(BRCLocalItem *)self isSharedToMeChildItem])
  {
    v3 = objc_alloc_init(BRCSideCarInfo);
    [(BRCSideCarInfo *)v3 setLastUsedTime:[(BRCStatInfo *)self->_st lastUsedTime]];
    [(BRCSideCarInfo *)v3 setFavoriteRank:[(BRCStatInfo *)self->_st favoriteRank]];
    v4 = [(BRCStatInfo *)self->_st finderTags];
    [(BRCSideCarInfo *)v3 setFinderTags:v4];

    [(BRCSideCarInfo *)v3 setCkInfo:self->_sideCarCKInfo];
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalItem sideCarInfo];
    }

    v3 = 0;
  }

  return v3;
}

- (void)_updateAppLibraryPristineStatesAfterMarkingDead
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] remove documents folder%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (unint64_t)maskForDiffsToSyncUpForZone:(id)a3 sideCarZone:(BOOL)a4 whenClearing:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    if ([v8 isPrivateZone] && (objc_msgSend(v8, "dbRowID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToNumber:", self->_parentZoneRowID), v9, (v10 & 1) != 0))
    {
      v11 = 32765;
    }

    else if ([v8 isPrivateZone])
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = self;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] No diffs to sync in the wrong zone for %@%@", &v18, 0x16u);
      }

      v11 = 0;
    }

    else if (v5)
    {
      v11 = 0xFCFF00BFF3FF0002;
    }

    else
    {
      v11 = 0xFCFF00BFF2FB0002;
    }
  }

  else
  {
    v12 = [(BRCLocalItem *)self isSharedToMeChildItem];
    v13 = 6656;
    if (!v6)
    {
      v13 = 0xFCFF00BFF3FF65FFLL;
    }

    if (v12)
    {
      v11 = v13;
    }

    else
    {
      v11 = 0xFCFF00BFF3FF7FFFLL;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)createSyncUpJob
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] we have diffs to send%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (id)unsaltedBookmarkData
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BRCItemID *)self->_itemID itemIDString];
  v5 = [(BRCServerZone *)self->_serverZone mangledID];
  v6 = [v3 unsaltedBookmarkDataWithItemResolutionString:v4 serverZoneMangledID:v5];

  return v6;
}

- (id)_syncZoneRowIDs
{
  v18[2] = *MEMORY[0x277D85DE8];
  if ([(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    v3 = [(BRCLocalItem *)self clientZone];
    v4 = [v3 dbRowID];
    v18[0] = v4;
    v5 = [(BRCLocalItem *)self parentClientZone];
    v6 = [v5 dbRowID];
    v18[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  }

  else
  {
    v8 = [(BRCLocalItem *)self isSharedToMeChildItem];
    v3 = [(BRCLocalItem *)self clientZone];
    v9 = [v3 dbRowID];
    v4 = v9;
    if (v8)
    {
      v16 = v9;
      v17 = &unk_2837B0148;
      v10 = MEMORY[0x277CBEA60];
      v11 = &v16;
      v12 = 2;
    }

    else
    {
      v15 = v9;
      v10 = MEMORY[0x277CBEA60];
      v11 = &v15;
      v12 = 1;
    }

    v7 = [v10 arrayWithObjects:v11 count:{v12, v15, v16, v17}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_updateSyncUpSchedulerWithDiffs:(unint64_t)a3
{
  v41 = *MEMORY[0x277D85DE8];
  if ((a3 & 0x20000000000000) == 0 && (![(BRCLocalItem *)self isSharedToMe]|| self->_syncUpState != 4))
  {
    clientZone = self->_clientZone;
    v5 = [(BRCLocalItem *)self->_orig clientZone];
    LOBYTE(clientZone) = [(BRCClientZone *)clientZone isEqualToClientZone:v5];

    if (clientZone)
    {
      if ([(BRCLocalItem *)self->_orig syncUpState]== 4 && self->_syncUpState != 4)
      {
        v6 = brc_bread_crumbs();
        v7 = brc_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          [BRCLocalItem _updateSyncUpSchedulerWithDiffs:];
        }

        goto LABEL_40;
      }

      goto LABEL_41;
    }
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [BRCLocalItem _updateSyncUpSchedulerWithDiffs:];
  }

  syncUpState = self->_syncUpState;
  if (!syncUpState)
  {
    v6 = [(BRCAccountSession *)self->_session syncUpScheduler];
    [v6 deleteSyncUpJobsForItem:self];
    goto LABEL_40;
  }

  if (syncUpState == 4)
  {
    [(BRCLocalItem *)self createSyncUpJob];
    goto LABEL_41;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = [(BRCLocalItem *)self _syncZoneRowIDs];
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (!v12)
  {
    v15 = 0;
    goto LABEL_35;
  }

  v14 = v12;
  v15 = 0;
  v16 = *v31;
  *&v13 = 138412290;
  v29 = v13;
  do
  {
    v17 = 0;
    do
    {
      if (*v31 != v16)
      {
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v30 + 1) + 8 * v17);
      if ([(BRCLocalItem *)self inFlightSyncUpDiffsInZoneRowID:v18, v29])
      {
        v19 = brc_bread_crumbs();
        v15 = 1;
        v20 = brc_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v35 = v18;
          v36 = 2112;
          v37 = v19;
          _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] Not finishing sync up because item is in-flight in %@%@", buf, 0x16u);
        }

LABEL_24:

        goto LABEL_28;
      }

      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v35 = self;
        v36 = 2112;
        v37 = v18;
        v38 = 2112;
        v39 = v21;
        _os_log_debug_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] Finishing sync up for %@ in %@%@", buf, 0x20u);
      }

      v23 = [(BRCAccountSession *)self->_session syncUpScheduler];
      v24 = [v23 finishSyncUpForItem:self inZone:v18 success:1];

      if (v24)
      {
        v19 = brc_bread_crumbs();
        v20 = brc_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          *buf = v29;
          v35 = v19;
          _os_log_fault_impl(&dword_223E7A000, v20, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: syncUpDiffs == 0%@", buf, 0xCu);
        }

        goto LABEL_24;
      }

LABEL_28:
      ++v17;
    }

    while (v14 != v17);
    v25 = [v11 countByEnumeratingWithState:&v30 objects:v40 count:16];
    v14 = v25;
  }

  while (v25);
LABEL_35:

  if (self->_syncUpState == 3 && (v15 & 1) == 0)
  {
    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [BRCLocalItem _updateSyncUpSchedulerWithDiffs:];
    }

    v6 = [(BRCAccountSession *)self->_session fsUploader];
    [v6 rescheduleSuspendedJobsMatching:self inState:31];
LABEL_40:
  }

LABEL_41:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)_updateSharedZoneBoostingWithDiffs:(unint64_t)a3
{
  if ([(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    if ((a3 & 0x40000000000000) != 0 && [(BRCLocalItem *)self isOnDisk]&& [(BRCLocalItem *)self->_orig isOnDisk])
    {
      v5 = [(BRCLocalItem *)self->_orig appLibrary];
      v6 = [(BRCServerZone *)self->_serverZone asSharedZone];
      [v5 _removeTargetSharedServerZoneIfNecessary:v6];

      appLibrary = self->_appLibrary;
      v8 = [(BRCLocalItem *)self asSharedToMeTopLevelItem];
      [(BRCAppLibrary *)appLibrary _addTargetSharedServerZoneForSharedItem:v8];
    }

    if ([(BRCLocalItem *)self isOnDisk]&& (![(BRCLocalItem *)self->_orig isOnDisk]|| [(BRCLocalItem *)self->_orig needsInsert]))
    {
      v9 = self->_appLibrary;
      v13 = [(BRCLocalItem *)self asSharedToMeTopLevelItem];
      [(BRCAppLibrary *)v9 _addTargetSharedServerZoneForSharedItem:?];
    }

    else
    {
      if (![(BRCLocalItem *)self->_orig isOnDisk]|| [(BRCLocalItem *)self isOnDisk])
      {
        return;
      }

      v12 = self->_appLibrary;
      v13 = [(BRCServerZone *)self->_serverZone asSharedZone];
      [(BRCAppLibrary *)v12 _removeTargetSharedServerZoneIfNecessary:?];
    }
  }

  else
  {
    if (![(BRCLocalItem *)self->_orig isSharedToMeTopLevelItem])
    {
      return;
    }

    v10 = self->_appLibrary;
    v13 = [(BRCLocalItem *)self->_orig serverZone];
    v11 = [v13 asSharedZone];
    [(BRCAppLibrary *)v10 _removeTargetSharedServerZoneIfNecessary:v11];
  }
}

- (void)wasMarkedDead
{
  v6 = [(BRCAccountSession *)self->_session applyScheduler];
  itemID = self->_itemID;
  v4 = [(BRCLocalItem *)self->_orig st];
  v5 = [v4 parentID];
  [v6 didReparentOrKillItemID:itemID parentItemID:v5 zone:self->_serverZone];

  [(BRCLocalItem *)self _updateAppLibraryPristineStatesAfterMarkingDead];
}

- (BOOL)_insertInDB:(id)a3 dbRowID:(unint64_t)a4
{
  if (!self->_appLibrary)
  {
    [BRCLocalItem _insertInDB:dbRowID:];
  }

  self->_dbRowID = a4;
  [(BRCLocalItem *)self _updateAppLibraryPristineStatesAfterCreationOrUpdate];
  [(BRCLocalItem *)self _updateSyncUpSchedulerWithDiffs:0xFCFF00BFF3FF7FFFLL];
  [(BRCLocalItem *)self _updateSharedZoneBoostingWithDiffs:0];
  return 1;
}

- (void)_deleteOldZoneJobs:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v23 = 138412802;
    v24 = self;
    v25 = 2112;
    v26 = v4;
    v27 = 2112;
    v28 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] Deleting old zone sync up job for a CZM item: %@ in zone row id: %@%@", &v23, 0x20u);
  }

  v7 = [(BRCLocalItem *)self itemID];
  v8 = [(BRCLocalItem *)self orig];
  v9 = [v8 itemID];
  v10 = [v7 isEqualToItemID:v9];

  if (v10)
  {
    [BRCLocalItem _deleteOldZoneJobs:];
  }

  v11 = [(BRCStatInfo *)self->_st ckInfo];
  v12 = [v11 etag];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [(BRCLocalItem *)self->_orig st];
  v15 = [v14 ckInfo];
  v16 = [v15 etagBeforeCrossZoneMove];
  v17 = [(BRCStatInfo *)self->_st ckInfo];
  v18 = [v17 etag];
  if ([v16 isEqualToString:v18])
  {

LABEL_11:
LABEL_12:

    goto LABEL_13;
  }

  v19 = [(BRCLocalItem *)self isDirectory];

  if (!v19)
  {
    v11 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalItem _deleteOldZoneJobs:];
    }

    goto LABEL_11;
  }

LABEL_13:
  v20 = [[BRCItemDBRowIDAndZoneJobIdentifier alloc] initWithItemDBRowID:self->_dbRowID zoneRowID:v4];
  v21 = [(BRCAccountSession *)self->_session syncUpScheduler];
  [v21 deleteJobsMatching:v20];

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateInDB:(id)a3 diffs:(unint64_t)a4
{
  clientZone = self->_clientZone;
  v7 = [(BRCLocalItem *)self->_orig clientZone];
  LOBYTE(clientZone) = [(BRCClientZone *)clientZone isEqualToClientZone:v7];

  if ((clientZone & 1) == 0)
  {
    v8 = [(BRCLocalItem *)self->_orig clientZone];
    v9 = [v8 dbRowID];
    [(BRCLocalItem *)self _deleteOldZoneJobs:v9];

    v10 = [(BRCLocalItem *)self clientZone];
    if ([v10 isSharedZone])
    {
    }

    else
    {
      v11 = [(BRCLocalItem *)self->_orig clientZone];
      v12 = [v11 isSharedZone];

      if (v12)
      {
        [(BRCLocalItem *)self _deleteOldZoneJobs:&unk_2837B0148];
      }
    }
  }

  if ([(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    v13 = [(BRCLocalItem *)self parentClientZone];
    v14 = [(BRCLocalItem *)self->_orig parentClientZone];
    v15 = [v13 isEqualToClientZone:v14];

    if ((v15 & 1) == 0)
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [BRCLocalItem _updateInDB:diffs:];
      }

      v18 = [BRCItemDBRowIDAndZoneJobIdentifier alloc];
      dbRowID = self->_dbRowID;
      v20 = [(BRCLocalItem *)self->_orig parentClientZone];
      v21 = [v20 dbRowID];
      v22 = [(BRCItemDBRowIDAndZoneJobIdentifier *)v18 initWithItemDBRowID:dbRowID zoneRowID:v21];

      v23 = [(BRCAccountSession *)self->_session syncUpScheduler];
      [v23 deleteJobsMatching:v22];
    }
  }

  if (![(BRCLocalItem *)self->_orig isDead]&& [(BRCLocalItem *)self isDead])
  {
    [(BRCLocalItem *)self wasMarkedDead];
  }

  if ((a4 & 0x20) != 0)
  {
    v24 = [(BRCAccountSession *)self->_session applyScheduler];
    itemID = self->_itemID;
    v26 = [(BRCLocalItem *)self->_orig st];
    v27 = [v26 parentID];
    [v24 didReparentOrKillItemID:itemID parentItemID:v27 zone:self->_serverZone];
  }

  if (![(BRCLocalItem *)self->_orig isRejected]&& [(BRCLocalItem *)self isRejected])
  {
    v28 = [(BRCAccountSession *)self->_session applyScheduler];
    [v28 createApplyJobFromServerItem:0 localItem:self state:1 kind:0];
  }

  if ([(BRCLocalItem *)self->_orig isMigratingToFPFS])
  {
    if (![(BRCLocalItem *)self isMigratingToFPFS])
    {
      v29 = [(BRCClientZone *)self->_clientZone serverRankByItemID:self->_itemID];
      if (v29)
      {
        v30 = v29;
        v31 = [(BRCAccountSession *)self->_session applyScheduler];
        v32 = [(BRCServerZone *)self->_serverZone dbRowID];
        [v31 rescheduleItemRank:v30 zoneRowID:v32 matchingState:15];
      }
    }
  }

  if ([(BRCLocalItem *)self isIdleOrRejected])
  {
    if (![(BRCLocalItem *)self->_orig isIdleOrRejected])
    {
      v33 = [(BRCClientZone *)self->_clientZone serverRankByItemID:self->_itemID];
      if (v33)
      {
        v34 = v33;
        v35 = [(BRCAccountSession *)self->_session applyScheduler];
        v36 = [(BRCServerZone *)self->_serverZone dbRowID];
        [v35 rescheduleItemRank:v34 zoneRowID:v36 matchingState:22];
      }
    }
  }

  [(BRCLocalItem *)self _updateSharedZoneBoostingWithDiffs:a4];
  [(BRCLocalItem *)self _updateSyncUpSchedulerWithDiffs:a4];
  [(BRCLocalItem *)self _updateAppLibraryPristineStatesAfterCreationOrUpdate];
  return 1;
}

- (BOOL)_deleteFromDB:(id)a3 keepAliases:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (self->_dbRowID)
  {
    if (![v5 execute:{@"DELETE FROM client_items WHERE rowid = %lld", self->_dbRowID}])
    {
      v21 = 0;
      goto LABEL_14;
    }

    if (![(BRCLocalItem *)self->_orig isDead])
    {
      [(BRCLocalItem *)self wasMarkedDead];
    }

    v7 = [(BRCAccountSession *)self->_session fsDownloader];
    [v7 deleteDownloadingJobForItem:self];

    v8 = [(BRCAccountSession *)self->_session fsUploader];
    [v8 deleteUploadingJobForItem:self];

    v9 = [(BRCAccountSession *)self->_session syncUpScheduler];
    [v9 deleteSyncUpJobsForItem:self];

    v10 = +[BRCUploadConstraintChecker defaultChecker];
    [v10 removeItemWithItemID:self->_itemID];

    if ([(BRCLocalItem *)self isMigratingToFPFS])
    {
      v11 = [(BRCClientZone *)self->_clientZone serverRankByItemID:self->_itemID];
      if (v11)
      {
        v12 = v11;
        v13 = [(BRCAccountSession *)self->_session applyScheduler];
        v14 = [(BRCClientZone *)self->_clientZone dbRowID];
        [v13 rescheduleItemRank:v12 zoneRowID:v14 matchingState:15];
      }
    }

    v15 = [(BRCAccountSession *)self->_session recentsEnumerator];
    v16 = [(BRCLocalItem *)self fileObjectID];
    [v15 itemWasDeletedWithFileObjectID:v16 notifRank:{-[BRCLocalItem notifsRank](self, "notifsRank")}];

    if (![(BRCLocalItem *)self isIdleOrRejected])
    {
      v17 = [(BRCClientZone *)self->_clientZone serverRankByItemID:self->_itemID];
      if (v17)
      {
        v18 = v17;
        v19 = [(BRCAccountSession *)self->_session applyScheduler];
        v20 = [(BRCServerZone *)self->_serverZone dbRowID];
        [v19 rescheduleItemRank:v18 zoneRowID:v20 matchingState:22];
      }
    }

    [(BRCLocalItem *)self _updateSharedZoneBoostingWithDiffs:0];
    self->_dbRowID = 0;
  }

  v21 = 1;
LABEL_14:

  return v21;
}

- (BOOL)_isInterestingUpdateForNotifsWithDiffs:(unint64_t)a3
{
  if (self->_forceNotif)
  {
    goto LABEL_2;
  }

  if ([(BRCLocalItem *)self isOnDisk]|| (v3 = [(BRCLocalItem *)self->_orig isOnDisk]))
  {
    if ([(BRCLocalItem *)self needsInsert]&& [(BRCLocalItem *)self isDead])
    {
LABEL_16:
      LOBYTE(v3) = 0;
      return v3;
    }

    v6 = [(BRCLocalItem *)self needsInsert];
    LOBYTE(v3) = 1;
    if ((a3 & 0x80000000) == 0 && !v6)
    {
      if ([(BRCLocalItem *)self isLost])
      {
        v7 = [(BRCLocalItem *)self isOnDisk];
        if ((a3 & 0x80001040000060) == 0 && v7)
        {
          goto LABEL_16;
        }
      }

      if ((a3 & 0x100000000) == 0 && [(BRCLocalItem *)self isDead]|| [(BRCLocalItem *)self isDirectory]&& [(BRCLocalItem *)self->_orig isAlmostDead])
      {
        goto LABEL_16;
      }

      if ((a3 & 0xF8001D704A5B64) != 0)
      {
        goto LABEL_2;
      }

      v8 = [(BRCLocalItem *)self orig];
      v9 = [v8 needsOSUpgradeToSyncUp];
      v10 = [(BRCLocalItem *)self needsOSUpgradeToSyncUp];

      if (v9 != v10)
      {
        goto LABEL_2;
      }

      v11 = [(BRCStatInfo *)self->_st ckInfo];
      v12 = [v11 etag];
      if (v12)
      {
        v13 = v12;
        v14 = [(BRCLocalItem *)self orig];
        v15 = [v14 st];
        v16 = [v15 ckInfo];
        v17 = [v16 etag];
        v18 = [(BRCStatInfo *)self->_st ckInfo];
        v19 = [v18 etag];
        v20 = [v17 isEqualToString:v19];

        if (!v20)
        {
          goto LABEL_2;
        }
      }

      else
      {
      }

      if ([(BRCLocalItem *)self isDocument])
      {
        v21 = [(BRCLocalItem *)self asDocument];
        v22 = [v21 currentVersion];
        v23 = [v22 ckInfo];
        v24 = [v23 etag];
        if (v24)
        {
          v25 = v24;
          v36 = [v21 orig];
          v35 = [v36 asDocument];
          v26 = [v35 currentVersion];
          v27 = [v26 ckInfo];
          v28 = [v27 etag];
          v29 = [v21 currentVersion];
          v30 = [v29 ckInfo];
          [v30 etag];
          v31 = v34 = v22;
          v33 = [v28 isEqualToString:v31];

          if (v33)
          {
            goto LABEL_29;
          }

LABEL_2:
          LOBYTE(v3) = 1;
          return v3;
        }
      }

LABEL_29:

      LOBYTE(v3) = [(BRCLocalItem *)self _isInterestingUpdateForNotifs];
    }
  }

  return v3;
}

- (void)_ascendItemHierarchyWithBlock:(id)a3
{
  v15 = a3;
  v4 = [(BRCLocalItem *)self appLibrary];
  v5 = [v4 mangledID];
  v6 = [BRCUserDefaults defaultsForMangledID:v5];
  v7 = [v6 maxSyncPathDepth];

  db = self->_db;
  v9 = [(BRCStatInfo *)self->_st parentID];
  v10 = [(BRCPQLConnection *)db fetch:@" WITH RECURSIVE item_parents (item_id, zone_rowid, item_file_id) AS(    SELECT item_parent_id, item_parent_zone_rowid, item_file_id FROM client_items      WHERE item_id = %@ AND zone_rowid = %@  UNION ALL     SELECT li.item_parent_id, li.item_parent_zone_rowid, li.item_file_id FROM client_items AS li  INNER JOIN item_parents AS p USING (item_id, zone_rowid)      LIMIT %u) SELECT item_file_id, item_id, zone_rowid FROM item_parents", v9, self->_parentZoneRowID, v7];

  if ([v10 next])
  {
    while (1)
    {
      v11 = [v10 objectOfClass:objc_opt_class() atIndex:0];
      v12 = [v10 objectOfClass:objc_opt_class() atIndex:1];
      v13 = [v10 objectOfClass:objc_opt_class() atIndex:2];
      v14 = [[BRCItemGlobalID alloc] initWithZoneRowID:v13 itemID:v12];
      if ((v15[2](v15, v14, v11) & 1) == 0)
      {
        break;
      }

      if (![v10 next])
      {
        goto LABEL_6;
      }
    }

    [v10 close];
  }

LABEL_6:
}

- (id)setOfParentIDs
{
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = [(BRCLocalItem *)self itemGlobalID];
  v5 = [v3 initWithObjects:{v4, 0}];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__BRCLocalItem_setOfParentIDs__block_invoke;
  v8[3] = &unk_278502258;
  v6 = v5;
  v9 = v6;
  [(BRCLocalItem *)self _ascendItemHierarchyWithBlock:v8];

  return v6;
}

uint64_t __30__BRCLocalItem_setOfParentIDs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:v3];
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __30__BRCLocalItem_setOfParentIDs__block_invoke_cold_1();
    }

    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      __30__BRCLocalItem_setOfParentIDs__block_invoke_cold_2();
    }
  }

  else
  {
    [*(a1 + 32) addObject:v3];
  }

  return v4 ^ 1u;
}

- (BOOL)isIWorkItem
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(BRCLocalStatInfo *)self->_st filename];
  v4 = [v3 br_pathExtension];

  v5 = [(BRCClientZone *)self->_clientZone mangledID];
  v6 = [BRCUserDefaults defaultsForMangledID:v5];
  v7 = [v6 iworkShareableExtensions];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if ([v4 isEqualToString:{*(*(&v14 + 1) + 8 * i), v14}])
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_sendNotificationIfNeededWithDiffs:(unint64_t)a3 regather:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v7 = [(BRCAccountSession *)self->_session notificationManager];
  if (![(BRCLocalItem *)self isBRAlias]&& ![(BRCLocalItem *)self isZoneRoot]&& ([(BRCLocalItem *)self isOnDisk]|| [(BRCLocalItem *)self->_orig isOnDisk]))
  {
    v8 = [(BRCLocalItem *)self itemID];
    v9 = [v8 isDocumentsFolder];

    v10 = [(BRCLocalItem *)self appLibrary];
    if ([v10 hasActiveQueries])
    {
LABEL_8:

      goto LABEL_9;
    }

    v11 = [(BRCLocalItem *)self orig];
    v12 = [v11 appLibrary];
    if ([v12 hasActiveQueries])
    {

      goto LABEL_8;
    }

    if (![(BRCLocalItem *)self isOnDisk])
    {
      v16 = [(BRCLocalItem *)self orig];
      v9 |= [v16 isOnDisk];
    }

    if (v9)
    {
LABEL_9:
      if (v4)
      {
        v13 = [BRCNotification notificationGatheredFromItem:self];
      }

      else
      {
        if ([(BRCLocalItem *)self isBRAlias])
        {
          v14 = brc_bread_crumbs();
          v15 = brc_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            [BRCLocalItem _sendNotificationIfNeededWithDiffs:regather:];
          }

          goto LABEL_28;
        }

        v13 = [[BRCNotification alloc] initWithLocalItem:self itemDiffs:a3];
      }

      v14 = v13;
      if (([(BRCNotification *)v13 isDead]& 1) == 0)
      {
        v17 = [(BRCLocalItem *)self appLibrary];
        if ([v17 hasActiveRecursiveQueries])
        {

LABEL_24:
          v21 = [(BRCLocalItem *)self setOfParentIDs];
          [v14 setParentGlobalIDs:v21];

          goto LABEL_25;
        }

        v18 = [(BRCLocalItem *)self orig];
        v19 = [v18 appLibrary];
        v20 = [v19 hasActiveRecursiveQueries];

        if (v20)
        {
          goto LABEL_24;
        }
      }

LABEL_25:
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v25 = 138412802;
        v26 = v14;
        v27 = 2048;
        v28 = [(BRCLocalItem *)self notifsRank];
        v29 = 2112;
        v30 = v22;
        _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] Queueing notification %@ for rank: %lld%@", &v25, 0x20u);
      }

      [v7 queueUpdate:v14];
LABEL_28:
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)triggerNotificationIfNeeded
{
  if (![(BRCLocalItem *)self isDead])
  {

    [(BRCLocalItem *)self _sendNotificationIfNeededWithDiffs:0 regather:1];
  }
}

- (void)_learnItemID:(id)a3 serverItem:(id)a4
{
  v17 = a3;
  v7 = a4;
  knownByServer = self->_knownByServer;
  self->_knownByServer = 0;

  self->_localDiffs &= ~0x8000000000000000;
  objc_storeStrong(&self->_itemID, a3);
  self->_sharingOptions = [v7 sharingOptions];
  v9 = [v7 ownerKey];

  if (v9)
  {
    v10 = [v7 ownerKey];
    ownerKey = self->_ownerKey;
    self->_ownerKey = v10;
  }

  v12 = [v7 st];
  v13 = [v12 creatorRowID];

  if (v13)
  {
    v14 = [v7 st];
    v15 = [v14 creatorRowID];
    [(BRCStatInfo *)self->_st setCreatorRowID:v15];
  }

  v16 = [(BRCAccountSession *)self->_session applyScheduler];
  [v16 rescheduleSuspendedJobsMatching:self->_serverZone inState:22];
}

- (void)_restorePreviousGlobalID:(id)a3
{
  v4 = a3;
  self->_dbRowID = 0;
  orig = self->_orig;
  self->_orig = 0;

  session = self->_session;
  v7 = [v4 zoneRowID];
  self->_serverZone = [(BRCAccountSession *)session serverZoneByRowID:v7];

  v8 = [(BRCServerZone *)self->_serverZone clientZone];
  clientZone = self->_clientZone;
  self->_clientZone = v8;

  v10 = self->_clientZone;
  v11 = [v4 itemID];
  v12 = [(BRCClientZone *)v10 serverItemByItemID:v11];

  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [BRCLocalItem _restorePreviousGlobalID:];
  }

  if ([v12 isLive] && (objc_msgSend(v12, "isSharedToMeTopLevelItem") & 1) == 0 && (v15 = self->_clientZone, objc_msgSend(v12, "parentItemIDOnServer"), v16 = objc_claimAutoreleasedReturnValue(), LODWORD(v15) = -[BRCClientZone existsByItemID:](v15, "existsByItemID:", v16), v16, v15))
  {
    v17 = [v12 parentItemIDOnServer];
    [(BRCStatInfo *)self->_st setParentID:v17];

    v18 = [(BRCClientZone *)self->_clientZone dbRowID];
    parentZoneRowID = self->_parentZoneRowID;
    self->_parentZoneRowID = v18;
  }

  else
  {
    if ([(BRCClientZone *)self->_clientZone isPrivateZone])
    {
      parentZoneRowID = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
      v20 = [parentZoneRowID dbRowID];
      v21 = self->_parentZoneRowID;
      self->_parentZoneRowID = v20;

      v22 = [parentZoneRowID defaultAppLibrary];
      v23 = [v22 rootItemID];
      [(BRCStatInfo *)self->_st setParentID:v23];
    }

    else
    {
      v24 = [(BRCLocalItem *)self appLibrary];
      v25 = [v24 defaultClientZone];
      v26 = [v25 dbRowID];
      v27 = self->_parentZoneRowID;
      self->_parentZoneRowID = v26;

      parentZoneRowID = [(BRCLocalItem *)self appLibrary];
      v22 = [parentZoneRowID rootItemID];
      [(BRCStatInfo *)self->_st setParentID:v22];
    }
  }

  v28 = [v4 itemID];
  [(BRCLocalItem *)self learnItemID:v28 serverItem:v12];
}

- (void)_markAsDeadTombstoneWithPreviousGlobalID:(id)a3
{
  v4 = a3;
  [(BRCLocalItem *)self markDead];
  [(BRCLocalItem *)self _restorePreviousGlobalID:v4];

  v5 = [(BRCStatInfo *)self->_st ckInfo];
  [v5 revertEtagsForOldZoneTombstone];

  self->_syncUpState = 4;
}

- (BOOL)saveToDBAndValidateLocalDiffs
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(BRCLocalItem *)self orig];
  v4 = [v3 localDiffs];

  v5 = [(BRCLocalItem *)self saveToDB];
  if (([(BRCLocalItem *)self localDiffs]| v4) != v4)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v10 = BRCItemFieldsPrettyPrint();
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      _os_log_fault_impl(&dword_223E7A000, v7, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Item got saved before sync up and a new local diff bit was added: %@%@", &v11, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_trackUploadV1PerformanceIfNeeded
{
  v3 = [(BRCLocalItem *)self fileObjectID];
  v4 = [v3 isAppLibraryDocumentsFolder];

  if (v4)
  {
    return;
  }

  v5 = [(BRCLocalItem *)self->_orig syncUpState];
  syncUpState = self->_syncUpState;
  v7 = +[BRCUploadV1PerformanceTrackerManager sharedManager];
  v18 = [v7 trackerForCurrentPersona];

  if (syncUpState - 3 < 2)
  {
    switch(v5)
    {
      case 7u:
        goto LABEL_9;
      case 4u:
        v10 = [(BRCLocalItem *)self->_orig syncUpError];
        if (v10)
        {
        }

        else
        {
          v14 = [(BRCLocalItem *)self syncUpError];

          if (v14)
          {
            goto LABEL_13;
          }
        }

        [(BRCLocalItem *)self isDocument];
        goto LABEL_15;
      case 0u:
LABEL_9:
        if ((self->_localDiffs & 0x400000000000000) == 0)
        {
          v8 = [(BRCLocalItem *)self fileObjectID];
          v9 = [v8 asString];
          [v18 startTrackingItemWithIdentifier:v9];
LABEL_14:

          goto LABEL_15;
        }

LABEL_11:
        v8 = [(BRCLocalItem *)self fileObjectID];
        v9 = [v8 asString];
        [v18 cancelTrackingItemWithIdentifier:v9];
        goto LABEL_14;
    }

    if ([(BRCLocalItem *)self isDocument]&& v5 == 3)
    {
      v11 = [(BRCLocalItem *)self->_orig asDocument];
      v12 = [v11 currentVersion];
      v13 = [v12 uploadError];
      if (v13)
      {

        goto LABEL_15;
      }

      v15 = [(BRCLocalItem *)self asDocument];
      v16 = [v15 currentVersion];
      v17 = [v16 uploadError];

      if (!v17)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (syncUpState)
    {
      if (syncUpState != 7)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (v5 - 3 <= 1)
    {
LABEL_13:
      v8 = [(BRCLocalItem *)self fileObjectID];
      v9 = [v8 asString];
      [v18 finishTrackingItemWithIdentifier:v9];
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (BOOL)saveToDBForServerEdit:(BOOL)a3 keepAliases:(BOOL)a4
{
  v5 = a3;
  v36 = *MEMORY[0x277D85DE8];
  p_session = &self->_session;
  v8 = [(BRCAccountSession *)self->_session clientDB];
  [v8 assertOnQueue];

  v9 = *p_session;
  memset(v27, 0, sizeof(v27));
  __brc_create_section(0, "[BRCLocalItem saveToDBForServerEdit:keepAliases:]", 2130, 0, v27);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v29 = v27[0];
    v30 = 2112;
    v31 = self;
    v32 = 1024;
    v33 = v5;
    v34 = 2112;
    v35 = v10;
    _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Saving item %@, serverUpdate = %d%@", buf, 0x26u);
  }

  orig = self->_orig;
  if (orig && !self->_syncUpState)
  {
    v20 = [(BRCLocalItem *)orig syncUpState];
    if (v20)
    {
      v13 = 1;
    }

    else
    {
      v13 = v5;
    }

    if (v20 && !v5)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [BRCLocalItem saveToDBForServerEdit:keepAliases:];
      }

      v13 = 1;
    }
  }

  else
  {
    v13 = v5;
  }

  if (self->_forceDeletedAlready)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BRCLocalItem saveToDBForServerEdit:keepAliases:];
    }

    v16 = 1;
  }

  else
  {
    db = self->_db;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke;
    v23[3] = &unk_278502280;
    v23[4] = self;
    v25 = v13;
    v24 = v9;
    v26 = a4;
    v16 = [(BRCPQLConnection *)db groupInTransaction:v23];
  }

  __brc_leave_section(v27);

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke(uint64_t a1, void *a2)
{
  v130 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) diffAgainstOriginalItem];
  v6 = *(*(a1 + 32) + 104);
  if ([*(a1 + 32) isDirectory] && *(a1 + 48) == 1)
  {
    v7 = [*v4 asDirectory];
    v8 = [v7 mtime];
    v9 = [*v4 orig];
    [v9 asDirectory];
    v11 = v10 = v5;
    v12 = a1;
    v13 = [v11 mtime];

    v14 = v8 == v13;
    a1 = v12;
    if (v14)
    {
      v5 = v10;
    }

    else
    {
      v5 = v10 | 0x4000;
    }
  }

  if ((v5 & 0x100000000) != 0 && [*(*v4 + 12) isLost] && (objc_msgSend(*v4, "isLost") & 1) == 0)
  {
    v15 = [*v4 isDead] ^ 1;
  }

  else
  {
    v15 = 0;
  }

  if (![*v4 isDead])
  {
    goto LABEL_29;
  }

  if (*(a1 + 48) == 1 && ([*(*v4 + 12) isDead] & 1) == 0 && objc_msgSend(*v4, "isSharedToMeTopLevelItem"))
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_1(v4);
    }

    v18 = [*v4 asSharedToMeTopLevelItem];
    [v18 insertTombstoneAliasRecordInZone:0];
  }

  if (*(*v4 + 193) != 1)
  {
    v22 = [*(*v4 + 10) processingStamp];

    if (v22)
    {
      v19 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_2();
      }

      v20 = 0;
      goto LABEL_32;
    }

    if ([*v4 isIdleOrRejected])
    {
      v19 = brc_bread_crumbs();
      v20 = 1;
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_4();
      }

      goto LABEL_32;
    }

    if (([*v4 isKnownByServerOrInFlight] & 1) == 0)
    {
      v19 = brc_bread_crumbs();
      v20 = 1;
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_3();
      }

      goto LABEL_32;
    }

LABEL_29:
    v20 = 0;
    goto LABEL_33;
  }

  v19 = brc_bread_crumbs();
  v20 = 1;
  v21 = brc_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_5();
  }

LABEL_32:

LABEL_33:
  if (*(*v4 + 14))
  {
    v23 = v20;
    v24 = [*v4 orig];
    v25 = v24[14];

    if (v25)
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_6();
      }

      v20 = v23;
      if (v15 && ([*v4 isIdleOrRejected] & 1) == 0)
      {
        v28 = brc_bread_crumbs();
        v29 = brc_default_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_7();
        }

        goto LABEL_45;
      }

      if ((v5 & 0x3FF7FFF) != 0)
      {
        v28 = brc_bread_crumbs();
        v29 = brc_default_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_8();
        }

LABEL_45:

        v5 |= 0x8000000000000uLL;
        v30 = *(*v4 + 14);
        *(*v4 + 14) = 0;

        [*(*v4 + 3) scheduleSyncUp];
      }
    }

    else
    {
      v20 = v23;
    }
  }

  if (([*v4 isCrossZoneMoveTombstone] & 1) != 0 || !objc_msgSend(*v4, "_isInterestingUpdateForNotifsWithDiffs:", v5))
  {
    v32 = 0;
  }

  else
  {
    v31 = [(BRCPersistedState *)BRCClientRanksPersistedState loadFromClientStateInSession:*(a1 + 40)];
    *(*(a1 + 32) + 136) = [v31 allocateNotifRank];

    v32 = 1;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v33 = [*v4 isSharedToMeChildItem];
    if ((v5 & 0x40) != 0)
    {
      if (v33)
      {
        v34 = [*(*v4 + 21) etag];
        if (v34)
        {
          v35 = v34;
          v111 = a1;
          v112 = v5;
          v113 = v3;
          v36 = [*(*v4 + 10) logicalName];
          v37 = [v36 br_pathExtension];
          v38 = [*(*v4 + 12) st];
          v39 = [v38 logicalName];
          v40 = [v39 br_pathExtension];
          v41 = v40;
          if (v37 == v40)
          {

            v5 = v112;
            v3 = v113;
            a1 = v111;
          }

          else
          {
            v110 = v20;
            v116 = v32;
            v114 = v6;
            [*(*v4 + 10) logicalName];
            v42 = v109 = v36;
            [v42 br_pathExtension];
            v43 = v108 = v37;
            v44 = [*(*v4 + 12) st];
            v45 = [v44 logicalName];
            v46 = [v45 br_pathExtension];
            v107 = [v43 isEqualToString:v46];

            if (v107)
            {
              v5 = v112;
              v3 = v113;
              a1 = v111;
              v6 = v114;
              v32 = v116;
              v20 = v110;
            }

            else
            {
              v47 = brc_bread_crumbs();
              v48 = brc_default_log();
              v5 = v112;
              v3 = v113;
              a1 = v111;
              v6 = v114;
              v32 = v116;
              v20 = v110;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_9();
              }

              if ([*(*v4 + 10) favoriteRank])
              {
                v5 = v112 | 0x1000;
              }

              else if ([*(*v4 + 10) lastUsedTime])
              {
                v5 = v112 | 0x800;
              }
            }
          }
        }
      }
    }

    *(*v4 + 13) |= [*v4 metadataSyncUpMask:1] & v5;
  }

  v49 = *v4;
  if (v20)
  {
    if ([v49 _deleteFromDB:v3 keepAliases:*(a1 + 49)])
    {
      v50 = "Deleted from DB";
LABEL_109:
      v86 = brc_bread_crumbs();
      v87 = brc_default_log();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
      {
        v92 = BRCItemFieldsPrettyPrint();
        v93 = v92;
        v94 = *(a1 + 48);
        *buf = 136316162;
        v121 = v50;
        if (v32)
        {
          v95 = "YES";
        }

        else
        {
          v95 = "NO";
        }

        v122 = 2112;
        if (v94)
        {
          v96 = "YES";
        }

        else
        {
          v96 = "NO";
        }

        v123 = v92;
        v124 = 2080;
        v125 = v95;
        v126 = 2080;
        v127 = v96;
        v128 = 2112;
        v129 = v86;
        _os_log_debug_impl(&dword_223E7A000, v87, OS_LOG_TYPE_DEBUG, "[DEBUG] %s. changedFields:%@ sendNotif:%s serverUpdate:%s%@", buf, 0x34u);
      }

      [*v4 _cheapCheckSavingItem];
      [*v4 _trackUploadV1PerformanceIfNeeded];
      if (v32)
      {
        [*v4 _sendNotificationIfNeededWithDiffs:v5 regather:0];
      }

      v88 = [*v4 copy];
      v78 = *(*v4 + 12);
      *(*v4 + 12) = v88;
      v85 = 1;
      goto LABEL_113;
    }
  }

  else if ([v49 needsInsert])
  {
    v117 = v32;
    v115 = v6;
    v51 = [(BRCPersistedState *)BRCClientRanksPersistedState loadFromClientStateInSession:*(a1 + 40)];
    v52 = [v51 allocateItemRowID];

    if ([*(a1 + 32) isSharedToMeChildItem])
    {
      v53 = [*(*v4 + 1) containerScheduler];
      v54 = [v53 sideCarSyncPersistedState];
      v55 = [v54 lastSyncDownDate];

      if (!v55)
      {
        v56 = brc_bread_crumbs();
        v57 = brc_default_log();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_11();
        }

        v58 = [*(*v4 + 1) containerScheduler];
        v59 = [MEMORY[0x277CBC4F8] br_syncDownInitial];
        [v58 scheduleSyncDownForSideCarWithGroup:v59];
      }
    }

    v60 = brc_bread_crumbs();
    v61 = brc_default_log();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_12(v60, v52, v61);
    }

    v6 = v115;
    v32 = v117;
    if ([*v4 _insertInDB:v3 dbRowID:v52])
    {
      v50 = "Inserted into DB";
      goto LABEL_109;
    }
  }

  else
  {
    if (!v5 && ![*v4 _hasFieldChangesNotDiffed])
    {
      v50 = "Ignored";
      goto LABEL_109;
    }

    if ((*(a1 + 48) & 1) == 0)
    {
      if ((v5 & 0x7FFE) != 0)
      {
        [*(*v4 + 10) bumpLocalChangeCount];
      }

      if ([*v4 isDocument])
      {
        v118 = v32;
        v62 = v6;
        v63 = [*(*v4 + 12) asDocument];
        v64 = [v63 currentVersion];

        v65 = [v64 contentSignature];
        v66 = [v65 brc_signatureIsPendingPlaceHolder];

        v67 = [v64 thumbnailSignature];
        v68 = [v67 brc_signatureIsPendingPlaceHolder];

        if (v66)
        {
          v69 = 1114112;
        }

        else
        {
          v69 = 0x10000;
        }

        if (v68)
        {
          v69 |= 0x400000u;
        }

        v70 = v5 & ~v69 & 0x3FE0000;
        v71 = [*v4 asDocument];
        v72 = [v71 hasFileIDForUpload];

        if (v70 || ((v5 & 0xC00000000) != 0 ? (v73 = v72) : (v73 = 0), v73 == 1))
        {
          v74 = [*v4 asDocument];
          v75 = [v74 currentVersion];
          [v75 bumpLocalChangeCount];
        }

        v6 = v62;
        v32 = v118;
      }
    }

    if ([*v4 isSharedToMeTopLevelItem] && (*(*v4 + 52) & 0x1A69) != 0)
    {
      v76 = [*v4 parentClientZone];
      if ([v76 isPrivateZone] && (*(*v4 + 52) & 0x1A60) == 0)
      {
        v99 = [*(*v4 + 1) itemFetcher];
        v100 = *v4;
        [*v4 parentClientZone];
        v119 = v32;
        v102 = v101 = v6;
        v103 = [v102 serverZone];
        v104 = [v99 serverAliasItemForSharedItem:v100 inZone:v103];

        v6 = v101;
        v32 = v119;

        if (!v104)
        {
          v105 = brc_bread_crumbs();
          v106 = brc_default_log();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
          {
            __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_10();
          }

          *(*v4 + 13) &= 0xFFFFFFFFFFFF8002;
        }
      }

      else
      {
      }
    }

    if ([*v4 _updateInDB:v3 diffs:v5])
    {
      v50 = "Saved into DB";
      goto LABEL_109;
    }
  }

  *(*v4 + 13) = v6;
  v77 = +[BRCUploadV1PerformanceTrackerManager sharedManager];
  v78 = [v77 trackerForCurrentPersona];

  v79 = [*v4 fileObjectID];
  v80 = [v79 asString];
  [v78 cancelTrackingItemWithIdentifier:v80];

  v81 = brc_bread_crumbs();
  v82 = brc_default_log();
  if (os_log_type_enabled(v82, 0x90u))
  {
    v97 = [*v4 itemID];
    v98 = [v3 lastError];
    *buf = 138412802;
    v121 = v97;
    v122 = 2112;
    v123 = v98;
    v124 = 2112;
    v125 = v81;
    _os_log_error_impl(&dword_223E7A000, v82, 0x90u, "[ERROR] failed to save item %@ to DB: %@%@", buf, 0x20u);
  }

  v83 = brc_bread_crumbs();
  v84 = brc_default_log();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
  {
    __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_13();
  }

  v85 = 0;
LABEL_113:

  v89 = *v4;
  if (*(*v4 + 193) == 1)
  {
    v89[194] = v85;
    v89 = *v4;
  }

  v89[195] = 0;

  v90 = *MEMORY[0x277D85DE8];
  return v85;
}

- (unint64_t)diffAgainstServerItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    if ([(BRCLocalItem *)self isDocument])
    {
      v32 = 4093607935;
    }

    else
    {
      v32 = 4026564607;
    }

    goto LABEL_30;
  }

  itemID = self->_itemID;
  v7 = [v4 itemID];
  v8 = itemID;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (!v9)
    {

LABEL_9:
      v12 = 0x80000000;
      goto LABEL_10;
    }

    v11 = [(BRCItemID *)v8 isEqual:v9];

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v12 = 0;
LABEL_10:
  ownerKey = self->_ownerKey;
  v14 = [v5 ownerKey];
  v15 = ownerKey;
  v16 = v14;
  v17 = v16;
  if (v15 == v16)
  {
    v18 = 0;
  }

  else if (v16)
  {
    v18 = [(BRCUserRowID *)v15 isEqual:v16]^ 1;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = v12 | 0x20000000;
  }

  else
  {
    v19 = v12;
  }

  sharingOptions = self->_sharingOptions;
  if (sharingOptions == [v5 sharingOptions])
  {
    v21 = v19;
  }

  else
  {
    v21 = v19 | 0x40000000;
  }

  sideCarCKInfo = self->_sideCarCKInfo;
  v23 = [v5 sideCarInfo];
  v24 = [v23 ckInfo];
  v25 = sideCarCKInfo;
  v26 = v24;
  v27 = v26;
  if (v25 == v26)
  {
    v28 = 0;
  }

  else if (v26)
  {
    v28 = ![(BRFieldCKInfo *)v25 isEqual:v26];
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    v29 = v21 | 0x100000000000000;
  }

  else
  {
    v29 = v21;
  }

  st = self->_st;
  v31 = [v5 st];
  v32 = [(BRCStatInfo *)st diffAgainst:v31]| v29;

LABEL_30:
  if (-[BRCLocalItem isSharedToMeTopLevelItem](self, "isSharedToMeTopLevelItem") && [v5 isSharedToMeTopLevelItem])
  {
    v33 = v32 & 0xFFFFFFFFFFFFFFDFLL;
    v34 = [(BRCAccountSession *)self->_session itemFetcher];
    v35 = [v34 serverAliasItemForSharedItem:self dbFacade:self->_dbFacade];

    if (v35)
    {
      v36 = [(BRCLocalItem *)self asSharedToMeTopLevelItem];
      v37 = [v36 diffAgainstServerAliasItem:v35] & 0x20;
    }

    else
    {
      v38 = [(BRCLocalItem *)self st];
      v39 = [v38 parentID];
      v40 = [(BRCAppLibrary *)self->_appLibrary documentsFolderItemID];
      v41 = [v39 isEqualToItemID:v40];

      if (v41)
      {
        v37 = 0;
      }

      else
      {
        v37 = 32;
      }
    }

    v32 = v37 | v33;
  }

  return v32;
}

+ (BOOL)computeUserVisibleStatusOfLiveItemWithParentVisible:(BOOL)a3 parentIsNonDesktopRoot:(BOOL)a4 parentScope:(unsigned __int8)a5 itemFilename:(id)a6 parentFilename:(id)a7 appLibrary:(id)a8
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  if (([v15 supportsSpotlightIndexing] & 1) == 0)
  {
    if ([v15 isCloudDocsAppLibrary])
    {
      +[BRCLocalItem computeUserVisibleStatusOfLiveItemWithParentVisible:parentIsNonDesktopRoot:parentScope:itemFilename:parentFilename:appLibrary:];
    }

    goto LABEL_14;
  }

  if (v10 == 1 && v11 && ([v13 isEqualToString:*MEMORY[0x277CFAD50]] & 1) != 0)
  {
    goto LABEL_11;
  }

  if (v10 == 1 && v12)
  {
    +[BRCLocalItem computeUserVisibleStatusOfLiveItemWithParentVisible:parentIsNonDesktopRoot:parentScope:itemFilename:parentFilename:appLibrary:];
  }

  if ([v13 hasPrefix:@"."])
  {
LABEL_14:
    LOBYTE(v12) = 0;
    goto LABEL_15;
  }

  if (v10 == 2 && v11)
  {
LABEL_11:
    LOBYTE(v12) = 1;
    goto LABEL_15;
  }

  if (v10 == 3)
  {
    LOBYTE(v12) = [v14 isEqualToString:*MEMORY[0x277CFADB8]];
  }

LABEL_15:

  return v12;
}

- (void)markRejectedItemRemotelyRevived
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _syncUpState == BRC_SUS_REJECTED%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)forceNeedsSyncUpWithoutDiffs
{
  v3 = [(BRCLocalItem *)self hasShareIDAndIsOwnedByMe];
  if (v3)
  {
    if (([(BRCLocalItem *)self sharingOptions]& 0x48) != 0)
    {
      v3 = [(BRCLocalItem *)self isInTrashScope];
      if (v3)
      {
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          [BRCLocalItem forceNeedsSyncUpWithoutDiffs];
        }

        LOBYTE(v3) = 1;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)_markNeedsSyncingUp
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Marking %@ as edited since shared because we are syncing up an edit%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)markNeedsUploadOrSyncingUp
{
  v19 = *MEMORY[0x277D85DE8];
  if (![(BRCLocalItem *)self isRejected])
  {
LABEL_17:
    [(BRCLocalItem *)self _markNeedsSyncingUp];
    goto LABEL_18;
  }

  if ([(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = self;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] Not forcing sync up of share-to-me top level item %@%@", &v15, 0x16u);
    }

    self->_localDiffs = 0;
    goto LABEL_18;
  }

  if (![(BRCLocalItem *)self isSharedToMeChildItem])
  {
LABEL_13:
    v11 = self->_localDiffs | [(BRCLocalItem *)self diffAgainstOriginalItem];
    if ((v11 & [(BRCLocalItem *)self metadataSyncUpMask:0]) != 0)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = self;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] Rejected item %@ has meaningful local diffs.  Forcing re-sync of all fields%@", &v15, 0x16u);
      }

      self->_localDiffs = 0xFF003FF3FF7FFFLL;
    }

    goto LABEL_17;
  }

  v5 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:self];
  v6 = [v5 brc_shareItemID];
  v7 = [(BRCClientZone *)self->_clientZone serverItemByItemID:v6];
  v8 = v7;
  if (v7 && ![v7 isDead])
  {

    goto LABEL_13;
  }

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] Not forcing sync up of share-to-me child item with a dead root share %@%@", &v15, 0x16u);
  }

  self->_localDiffs = 0;
LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)prepareForSyncUpSideCarZone
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.isReadAndUploaded || self.isKnownByServerOrInFlight%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)prepareForSyncUpInZone:(id)a3
{
  v4 = a3;
  if (([(BRCPQLConnection *)self->_db isBatchSuspended]& 1) == 0)
  {
    [BRCLocalItem prepareForSyncUpInZone:];
  }

  if (![(BRCLocalItem *)self isReadAndUploaded]&& ![(BRCLocalItem *)self isKnownByServerOrInFlight])
  {
    [BRCLocalItem prepareForSyncUpInZone:];
  }

  v5 = [(BRCLocalItem *)self maskForDiffsToSyncUpForZone:v4 sideCarZone:0 whenClearing:1];
  localDiffs = self->_localDiffs;
  self->_localDiffs = localDiffs & ~v5;
  if ([v4 isPrivateZone] && -[BRCLocalItem isSharedToMeTopLevelItem](self, "isSharedToMeTopLevelItem"))
  {
    self->_localDiffs &= 0xFFFFFFFFFFFF8000;
  }

  v7 = [(BRCAccountSession *)self->_session syncUpScheduler];
  v8 = [v4 dbRowID];
  [v7 prepareItemForSyncUp:self inFlightDiffs:localDiffs & v5 inZone:v8];
}

- (void)markLatestSyncRequestFailedInZone:(id)a3
{
  v4 = a3;
  if (([(BRCPQLConnection *)self->_db isBatchSuspended]& 1) == 0)
  {
    [BRCLocalItem markLatestSyncRequestFailedInZone:];
  }

  v5 = [(BRCAccountSession *)self->_session syncUpScheduler];
  v6 = [v5 finishSyncUpForItem:self inZone:v4 success:0];

  syncUpState = self->_syncUpState;
  if (syncUpState >= 2)
  {
    self->_localDiffs |= v6;
    if (syncUpState == 4)
    {
      [(BRCLocalItem *)self createSyncUpJob];
      v8 = [v4 br_isEqualToNumber:&unk_2837B0148];
      session = self->_session;
      if (v8)
      {
        v10 = [(BRCAccountSession *)session containerScheduler];
        [v10 scheduleSyncUpForSideCar];
      }

      else
      {
        v10 = [(BRCAccountSession *)session serverZoneByRowID:v4];
        v11 = [v10 clientZone];
        [v11 scheduleSyncUp];
      }
    }
  }
}

- (void)markLatestSyncRequestRejectedInZone:(id)a3
{
  db = self->_db;
  v5 = a3;
  if (([(BRCPQLConnection *)db isBatchSuspended]& 1) == 0)
  {
    [BRCLocalItem markLatestSyncRequestRejectedInZone:];
  }

  v6 = [(BRCAccountSession *)self->_session syncUpScheduler];
  [v6 finishSyncUpForItem:self inZone:v5 success:1];

  if ([(BRCItemID *)self->_itemID isDocumentsFolder])
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalItem markLatestSyncRequestRejectedInZone:];
    }

    [(BRCAppLibrary *)self->_appLibrary clearStateBits:0x4000000];
LABEL_11:
    self->_localDiffs = 0xFF003FF3FF7FFFLL;
    [(BRCLocalItem *)self createSyncUpJob];
    return;
  }

  localDiffs = self->_localDiffs;
  if (([(BRCLocalItem *)self metadataSyncUpMask:0]& localDiffs) != 0)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [BRCLocalItem markLatestSyncRequestRejectedInZone:];
    }

    goto LABEL_11;
  }

  self->_syncUpState = 1;
}

- (BOOL)markLatestSyncRequestAcknowledgedInZone:(id)a3
{
  db = self->_db;
  v5 = a3;
  if (([(BRCPQLConnection *)db isBatchSuspended]& 1) == 0)
  {
    [BRCLocalItem markLatestSyncRequestAcknowledgedInZone:];
  }

  v6 = [(BRCAccountSession *)self->_session syncUpScheduler];
  [v6 finishSyncUpForItem:self inZone:v5 success:1];

  v7 = [(BRCAccountSession *)self->_session syncUpScheduler];
  v8 = [v7 isItemPendingSyncUp:self];

  if (v8)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [BRCLocalItem markLatestSyncRequestAcknowledgedInZone:];
    }

    if ([(BRCLocalItem *)self isSharedToMeChildItem])
    {
      v11 = [(BRCAccountSession *)self->_session containerScheduler];
      [v11 scheduleSyncUpForSideCar];
LABEL_8:
    }
  }

  else
  {
    localDiffs = self->_localDiffs;
    if ((([(BRCLocalItem *)self metadataSyncUpMask:0]| 0x1000000000000000) & localDiffs) == 0)
    {
      self->_syncUpState = 0;
      return v8 ^ 1;
    }

    syncUpState = self->_syncUpState;
    if (syncUpState != 4)
    {
      if (syncUpState)
      {
        return v8 ^ 1;
      }

      v11 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [BRCLocalItem markLatestSyncRequestAcknowledgedInZone:];
      }

      goto LABEL_8;
    }

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BRCLocalItem markLatestSyncRequestAcknowledgedInZone:];
    }

    [(BRCLocalItem *)self createSyncUpJob];
  }

  return v8 ^ 1;
}

- (void)resetWhileKeepingClientItemsAndWantsUnlink:(BOOL)a3
{
  v3 = a3;
  self->_orig->_syncUpState = 0;
  [(BRCLocalItem *)self markItemForgottenByServer];
  self->_localDiffs |= 0x400000000000000uLL;
  if (!v3 || (-[BRCLocalItem itemID](self, "itemID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isDocumentsFolder], v5, v6))
  {
    v7 = [(BRCLocalItem *)self serverZone];
    self->_localDiffs |= [(BRCLocalItem *)self maskForDiffsToSyncUpForZone:v7 sideCarZone:0 whenClearing:0]& 0xFF003FF3FF7FFFLL;
  }
}

- (void)markItemForgottenByServer
{
  knownByServer = self->_knownByServer;
  self->_knownByServer = 0;

  st = self->_st;

  [(BRCStatInfo *)st setCkInfo:0];
}

- (void)handleUnknownItemError
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(BRCStatInfo *)self->_st ckInfo];
  if (v3 || ![(BRCLocalItem *)self isSharedToMeChildItem])
  {

    goto LABEL_8;
  }

  v4 = [(BRCClientZone *)self->_clientZone mangledID];
  v5 = [BRCUserDefaults defaultsForMangledID:v4];
  v6 = [v5 changeItemIDOnUnknownItem];

  if (!v6)
  {
LABEL_8:
    [(BRCLocalItem *)self markItemForgottenByServer];
    goto LABEL_9;
  }

  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] Unknown item must need an itemID change%@", &v12, 0xCu);
  }

  sharingOptions = self->_sharingOptions;
  v10 = objc_alloc_init(BRCItemID);
  [(BRCLocalItem *)self learnItemID:v10 serverItem:0];

  self->_sharingOptions = sharingOptions;
  self->_localDiffs |= 0x8000000000000000;
LABEL_9:
  [(BRCClientZone *)self->_clientZone scheduleSyncDownFirst];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)markDead
{
  v3 = [(BRCLocalItem *)self isSharedToMeTopLevelItem];
  st = self->_st;
  if (v3)
  {
    v5 = [(BRCAppLibrary *)self->_appLibrary documentsFolderItemID];
    [(BRCLocalStatInfo *)st _markDeadAsSharedTopLevelItemWithDocumentsItemID:v5];
  }

  else
  {
    [(BRCLocalStatInfo *)self->_st _markDead];
  }

  [(BRCLocalStatInfo *)self->_st _moveItemAsideWithUUIDString];
  self->_isUserVisible = 0;
}

- (void)markNeedsDeleteForRescheduleOfItem:(id)a3
{
  v5 = a3;
  v4 = [(BRCAccountSession *)self->_session applyScheduler];
  if (![(BRCLocalItem *)self isDead])
  {
    [(BRCLocalItem *)self markDead];
  }

  self->_forceDelete = 1;
  if (v5)
  {
    [v4 createApplyJobFromServerItem:v5 localItem:0 state:1 kind:1];
  }
}

- (void)markNeedsDeleteWhenAlreadyDeadInServerTruth
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.isDead && self.isDeadOrMissingInServerTruth%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)markNeedsDeleteForItemIDTransfer
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

- (void)moveAsideLocally
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _st.state == BRC_ITEM_STATE_TOMBSTONE%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)markRemovedFromFilesystemForServerEdit:(BOOL)a3
{
  [(BRCLocalItem *)self markDead];
  if (!a3)
  {

    [(BRCLocalItem *)self markNeedsUploadOrSyncingUp];
  }
}

- (void)updateStatMetadataFromServerItem:(id)a3
{
  st = self->_st;
  v4 = [a3 st];
  [(BRCLocalStatInfo *)st _updateStatMeta:v4];
}

- (void)updateItemMetadataFromServerItem:(id)a3 appliedSharingPermission:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (!a4 && (sharingOptions = self->_sharingOptions, (([v6 sharingOptions] ^ sharingOptions) & 0x20) != 0))
  {
    v9 = [v7 sharingOptions] ^ 0x20;
  }

  else
  {
    v9 = [v7 sharingOptions];
  }

  self->_sharingOptions = v9;
  if ((v9 & 4) == 0)
  {
    parentZoneRowID = self->_parentZoneRowID;
    v11 = [(BRCClientZone *)self->_clientZone dbRowID];
    LODWORD(parentZoneRowID) = [(BRCZoneRowID *)parentZoneRowID br_isEqualToNumber:v11];

    if (parentZoneRowID)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [BRCLocalItem updateItemMetadataFromServerItem:appliedSharingPermission:];
      }

      v14 = [(BRCClientZone *)self->_clientZone db];
      v15 = [v7 parentItemIDOnFS];
      v16 = [(BRCClientZone *)self->_clientZone dbRowID];
      v17 = [v14 numberWithSQL:{@"SELECT item_sharing_options FROM client_items WHERE item_id = %@ AND zone_rowid = %@", v15, v16}];

      self->_sharingOptions = self->_sharingOptions & 0xFFFFFFFFFFFFFF83 | [v17 longLongValue] & 0x78;
    }
  }

  v18 = [v7 ownerKey];
  ownerKey = self->_ownerKey;
  self->_ownerKey = v18;
}

- (id)computedDestinationFilenameFromServerItem:(id)a3
{
  v4 = a3;
  v5 = [v4 st];
  v6 = [v5 logicalName];
  v7 = [(BRCLocalItem *)self st];
  v8 = [v7 logicalNameWithoutLocalBounce];
  if ([v6 isEqualToString:v8])
  {
    v9 = [v4 parentItemIDOnFS];
    v10 = [(BRCLocalItem *)self st];
    v11 = [v10 parentID];
    v12 = [v9 isEqualToItemID:v11];

    if (v12)
    {
      v13 = [(BRCLocalItem *)self st];
      v14 = [v13 logicalName];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v13 = [v4 st];
  v14 = [v13 representableName];
LABEL_6:
  v15 = v14;

  return v15;
}

- (void)updateStructuralCKInfoFromServerItem:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 st];
  v6 = [v5 ckInfo];

  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v19 = [v6 etag];
    v20 = 138412802;
    v21 = v19;
    v22 = 2112;
    v23 = v4;
    v24 = 2112;
    v25 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] updating st-etag:%@ from server item: %@%@", &v20, 0x20u);
  }

  if (!v4)
  {
    [BRCLocalItem updateStructuralCKInfoFromServerItem:];
  }

  if (([v4 isSharedToMeTopLevelItem] & 1) == 0 && !v6)
  {
    [BRCLocalItem updateStructuralCKInfoFromServerItem:];
  }

  if ([(BRCLocalItem *)self isDocumentBeingCopiedToNewZone])
  {
    v9 = [(BRCStatInfo *)self->_st ckInfo];
    v10 = [v9 etagBeforeCrossZoneMove];
    [v6 setEtagBeforeCrossZoneMove:v10];
  }

  [(BRCLocalStatInfo *)self->_st _setCKInfo:v6];
  v11 = [v4 st];
  v12 = [v11 creatorRowID];
  [(BRCStatInfo *)self->_st setCreatorRowID:v12];

  if ([(BRCLocalItem *)self isSharedToMeChildItem])
  {
    v13 = [v4 sideCarInfo];
    v14 = [v13 ckInfo];
    sideCarCKInfo = self->_sideCarCKInfo;
    self->_sideCarCKInfo = v14;

    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [BRCLocalItem updateStructuralCKInfoFromServerItem:];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_updateCrossZoneParent:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [BRCLocalItem _updateCrossZoneParent:];
  }

  v5 = [(BRCLocalItem *)self itemGlobalID];
  v6 = [v4 itemGlobalID];
  session = self->_session;
  v8 = [v6 zoneRowID];
  v9 = [(BRCAccountSession *)session serverZoneByRowID:v8];
  v10 = [v9 clientZone];

  v11 = [v6 itemID];
  [(BRCStatInfo *)self->_st setParentID:v11];

  v12 = [v6 zoneRowID];
  parentZoneRowID = self->_parentZoneRowID;
  self->_parentZoneRowID = v12;

  objc_storeStrong(&self->_clientZone, v10);
  self->_serverZone = [v10 serverZone];
  self->_orig->_syncUpState = 0;
  v14 = [(BRCStatInfo *)self->_st ckInfo];
  [v14 markCrossZoneMoved];

  if (-[BRCLocalItem isDirectory](self, "isDirectory") && (-[BRCLocalItem asDirectory](self, "asDirectory"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 handlePathMatchConflictForDirectoryCreationIfNecessary], v15, v16))
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [BRCLocalItem _updateCrossZoneParent:];
    }
  }

  else
  {
    v17 = objc_opt_new();
    [(BRCLocalItem *)self learnItemID:v17 serverItem:0];
  }

  self->_sharingOptions = [v4 sharingOptions] & 0x78;
  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sharingOptions = self->_sharingOptions;
    v24 = BRCPrettyPrintBitmap();
    v25 = 138412802;
    v26 = v24;
    v27 = 2112;
    v28 = v4;
    v29 = 2112;
    v30 = v19;
    _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] learning sharing options %@ from parent %@%@", &v25, 0x20u);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_insertTombstoneForCrossZoneMove:(id)a3
{
  v4 = a3;
  v7 = [(BRCLocalItem *)self copy];
  [v7 _markAsDeadTombstoneWithPreviousGlobalID:v4];

  [v7 markNeedsUploadOrSyncingUp];
  [v7 saveToDB];
  v5 = [(BRCAccountSession *)self->_session applyScheduler];
  v6 = [v7 serverZone];
  [v5 rescheduleSuspendedJobsMatching:v6 inState:17];
}

- (void)_crossZoneMoveToParent:(id)a3
{
  v4 = [(BRCLocalItem *)self _updateCrossZoneParent:a3];
  [(BRCLocalItem *)self saveToDB];
  [(BRCLocalItem *)self _insertTombstoneForCrossZoneMove:v4];
}

- (BOOL)isReadAndUploaded
{
  syncUpState = self->_syncUpState;
  if (syncUpState >= 9)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalItem isReadAndUploaded];
    }

    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0x73u >> syncUpState;
  }

  return v3 & 1;
}

- (BOOL)startDownloadInTask:(id)a3 options:(unint64_t)a4 etagIfLoser:(id)a5 stageFileName:(id)a6 error:(id *)a7
{
  v46 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  memset(v35, 0, sizeof(v35));
  __brc_create_section(0, "[BRCLocalItem startDownloadInTask:options:etagIfLoser:stageFileName:error:]", 3066, 0, v35);
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v33 = v35[0];
    v34 = [(BRCLocalItem *)self appLibrary];
    v29 = [v34 logName];
    v30 = [(BRCLocalItem *)self itemID];
    v31 = BRCPrettyPrintBitmap();
    *buf = 134219010;
    v37 = v33;
    v38 = 2112;
    v39 = v29;
    v40 = 2112;
    v41 = v30;
    v42 = 2112;
    v43 = v31;
    v44 = 2112;
    v45 = v14;
    _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx request to download client item %@:%@ with options %@%@", buf, 0x34u);
  }

  v16 = [(BRCLocalItem *)self isDead];
  if (v16)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(BRCLocalItem *)self itemID];
      *buf = 138412546;
      v37 = v19;
      v38 = 2112;
      v39 = v17;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] ignoring download request for %@ because item is dead%@", buf, 0x16u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = [(BRCLocalItem *)self itemID];
    v22 = [v21 itemIDString];
    v23 = [v20 brc_errorItemNotFound:v22];

    if (v23)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, 0x90u))
      {
        v32 = "(passed to caller)";
        *buf = 136315906;
        v37 = "[BRCLocalItem startDownloadInTask:options:etagIfLoser:stageFileName:error:]";
        v38 = 2080;
        if (!a7)
        {
          v32 = "(ignored by caller)";
        }

        v39 = v32;
        v40 = 2112;
        v41 = v23;
        v42 = 2112;
        v43 = v24;
        _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a7)
    {
      v26 = v23;
      *a7 = v23;
    }
  }

  __brc_leave_section(v35);

  v27 = *MEMORY[0x277D85DE8];
  return !v16;
}

- (id)baseStructureRecord
{
  if ([(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalItem(CKConversions) baseStructureRecord];
    }

    v5 = 0;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CBC5A0]);
    v7 = [(BRCLocalItem *)self structureRecordID];
    v5 = [v6 initWithRecordType:@"structure" recordID:v7];
  }

  return v5;
}

- (id)sideCarRecordID
{
  if ([(BRCLocalItem *)self isSharedToMeChildItem])
  {
    v3 = [(BRCLocalItem *)self itemID];
    v4 = [(BRCLocalItem *)self serverZone];
    v5 = [v4 asSharedZone];
    v6 = [v3 sideCarRecordIDWithZone:v5];
  }

  else
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalItem(CKConversions) sideCarRecordID];
    }

    v6 = 0;
  }

  return v6;
}

- (id)baseSideCarRecord
{
  v3 = objc_alloc(MEMORY[0x277CBC5A0]);
  v4 = [(BRCLocalItem *)self sideCarRecordID];
  v5 = [v3 initWithRecordType:@"perParticipantMetadata" recordID:v4];

  return v5;
}

- (void)serializeStructuralPluginHints:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BRCLocalItem *)self isFromInitialScan];
  v6 = [(BRCLocalItem *)self serverPathMatchItemID];
  if (v6)
  {
    v7 = [(BRCClientZone *)self->_clientZone itemByItemID:v6];
    v8 = v7;
    if (!v7 || ![(BRCLocalItem *)v7 isDead]&& v5)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_20;
    }

    v11 = [(BRCLocalItem *)v8 structureRecordID];
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138412802;
      v25 = self;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v12;
      _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] path match info for %@ is %@%@", &v24, 0x20u);
    }

    v10 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v11 action:0];
    v14 = [(BRCLocalItem *)v8 st];
    v15 = [v14 ckInfo];
    v9 = [v15 etag];

    if (v9)
    {
      if (v10)
      {
LABEL_19:

LABEL_20:
        if (!v5)
        {
          goto LABEL_21;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412802;
        v25 = v8;
        v26 = 2112;
        v27 = self;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] we have no etag for %@\npath matching: %@%@", &v24, 0x20u);
      }

      if (v10)
      {
        goto LABEL_19;
      }
    }

    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412802;
      v25 = v8;
      v26 = 2112;
      v27 = self;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] we have no reference for %@\npath matching: %@%@", &v24, 0x20u);
    }

    goto LABEL_19;
  }

  v9 = 0;
  v10 = 0;
  if (!v5)
  {
LABEL_21:
    if (!v10 || !v9)
    {
      goto LABEL_32;
    }
  }

LABEL_23:
  v20 = [v4 pluginFields];
  if (v20)
  {
    v21 = [v4 pluginFields];
    v22 = [v21 mutableCopy];
  }

  else
  {
    v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  }

  if (v5)
  {
    [v22 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"br_initialItem"];
  }

  if (v10 && v9)
  {
    [v22 setObject:v10 forKeyedSubscript:@"br_pathMatchID"];
    [v22 setObject:v9 forKeyedSubscript:@"br_pathMatchEtag"];
  }

  [v4 setPluginFields:v22];

LABEL_32:
  v23 = *MEMORY[0x277D85DE8];
}

- (id)structureRecordID
{
  if ([(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalItem(CKConversions) structureRecordID];
    }

    v5 = 0;
  }

  else
  {
    v6 = [(BRCLocalItem *)self itemID];
    v7 = [(BRCStatInfo *)self->_st type];
    serverZone = self->_serverZone;
    if ([(BRCLocalItem *)self isBRAlias])
    {
      v9 = [(BRCLocalItem *)self asBRAlias];
      v10 = [v9 targetClientZone];
      v5 = [v6 structureRecordIDForItemType:v7 zone:serverZone aliasTargetZoneIsShared:{objc_msgSend(v10, "isSharedZone")}];
    }

    else
    {
      v5 = [v6 structureRecordIDForItemType:v7 zone:serverZone aliasTargetZoneIsShared:1];
    }
  }

  return v5;
}

- (BOOL)dbItemIsMigratingToFPFS
{
  v2 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT item_localsyncupstate FROM client_items WHERE rowid = %llu", self->_dbRowID];
  v3 = [v2 intValue];

  return (v3 - 5) < 2;
}

- (void)markFromInitialScan
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCLocalItem(FPFSAdditions) markFromInitialScan];
  }

  self->_localDiffs |= 0x8000000000000000;
}

- (void)markDoneMigratingToFPFS
{
  if ([(BRCLocalItem *)self isMigratingToFPFS])
  {
    if ([(BRCLocalItem *)self hasValidCKInfo])
    {
      v3 = 0;
    }

    else
    {
      v3 = 4;
    }

    self->_syncUpState = v3;
  }
}

- (void)_markBouncedToNextAvailableBounceNumber:(int)a3 ignoreSelf:(BOOL)a4
{
  *&v46[5] = *MEMORY[0x277D85DE8];
  v5 = [(BRCLocalStatInfo *)self->_st logicalNameWithoutLocalBounce];
  v6 = [(BRCLocalStatInfo *)self->_st rawBouncedLogicalName];
  v7 = v6;
  v40 = 0;
  v41 = 0;
  v35 = v5;
  if (!v6)
  {
    v6 = v5;
  }

  v8 = [v6 br_stringByDeletingPathBounceNo:&v41 andPathExtension:&v40];
  v9 = v40;
  if ((v41 + 1) > 2)
  {
    v10 = v41 + 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = [(BRCAppLibrary *)self->_appLibrary mangledID];
  v12 = [BRCUserDefaults defaultsForMangledID:v11];
  v13 = [v12 ubiquitousMigrationMaxBouncingAttempts];

  if (v7)
  {
    *buf = 0;
    v14 = [v35 br_stringByDeletingPathBounceNo:buf];
    v15 = v41;
    if (*buf != v41)
    {
      v10 = *buf;
    }
  }

  else
  {
    v15 = v41;
  }

  if (v10 < v15 + v13)
  {
    v36 = v9;
    v37 = v13;
    do
    {
      if (v7)
      {
        v16 = v10 == v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      if (v10 != 1 && (v17 & 1) == 0)
      {
        if (v10)
        {
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        }

        else
        {
          v18 = 0;
        }

        v39 = v18;
        v19 = [v18 stringValue];
        v20 = [v8 brc_representableHFSFileNameWithSuffix:v19 addedExtension:v9 makeDotFile:0];

        if ([v7 isEqualToString:v20])
        {
          [BRCLocalItem(FPFSAdditions) _markBouncedToNextAvailableBounceNumber:v45 ignoreSelf:v46];
        }

        v21 = [(BRCLocalItem *)self parentClientZone];
        v22 = [(BRCLocalItem *)self st];
        v23 = [v22 parentID];
        if (a4)
        {
          v24 = [(BRCLocalItem *)self itemGlobalID];
          v25 = v20;
          v26 = [v21 liveItemByParentID:v23 andCaseInsensitiveLogicalName:v20 excludingItemGlobalID:v24];

          v9 = v36;
        }

        else
        {
          v25 = v20;
          v26 = [v21 liveItemByParentID:v23 andCaseInsensitiveLogicalName:v20 excludingItemGlobalID:0];
        }

        if (!v26)
        {
          v27 = [v35 isEqualToString:v25];
          st = self->_st;
          if (v27)
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

          [(BRCLocalStatInfo *)self->_st setRawBouncedLogicalName:v29];
          v30 = brc_bread_crumbs();
          v31 = brc_default_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            *&buf[4] = self;
            v43 = 2112;
            v44 = v30;
            _os_log_debug_impl(&dword_223E7A000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] Locally bounced %@%@", buf, 0x16u);
          }

          break;
        }

        v15 = v41;
        v13 = v37;
      }

      ++v10;
    }

    while (v10 < v15 + v13);
  }

  if (a3)
  {
    v32 = [(BRCAccountSession *)self->_session analyticsReporter];
    [v32 aggregateReportForAppTelemetryIdentifier:a3 error:0];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_updateAppLibraryFromParent:(id)a3
{
  v4 = [a3 appLibrary];
  appLibrary = self->_appLibrary;
  self->_appLibrary = v4;

  if (!self->_appLibrary)
  {
    [BRCLocalItem(FPFSAdditions) _updateAppLibraryFromParent:];
  }
}

- (void)_updateParent:(id)a3 forceTopLevelShareMove:(BOOL)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(BRCLocalItem *)self clientZone];
  v8 = [v6 clientZone];
  if (!a4 && [(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    v9 = [v6 clientZone];
    v10 = [v9 isSharedZone];

    if (!v10)
    {
      goto LABEL_4;
    }

LABEL_8:
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v49 = self;
      v50 = 2112;
      v51 = v7;
      v52 = 2112;
      v53 = v8;
      v54 = 2112;
      v55 = v11;
      _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] Item %@ is moving across zones from %@ to %@%@", buf, 0x2Au);
    }

    goto LABEL_10;
  }

  if (v7 != v8)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ([(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    v11 = [(BRCLocalItem *)self asSharedToMeTopLevelItem];
    v12 = [v6 clientZone];
    v13 = [v12 dbRowID];
    [(BRCLocalItem *)v11 updateParentZoneRowID:v13];

    goto LABEL_6;
  }

  if (![(BRCLocalItem *)self isSharedToMeChildItem])
  {
    goto LABEL_17;
  }

  v11 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:self];
  v12 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:v6];
  if (!v12 || (-[BRCLocalItem recordName](v11, "recordName"), v14 = objc_claimAutoreleasedReturnValue(), -[NSObject recordName](v12, "recordName"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v14 isEqualToString:v15], v15, v14, (v16 & 1) == 0))
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v49 = v11;
      v50 = 2112;
      v51 = v12;
      v52 = 2112;
      v53 = v17;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] This is a cross share move from %@ to %@%@", buf, 0x20u);
    }

LABEL_10:
    [(BRCLocalItem *)self _crossZoneMoveToParent:v6];
    goto LABEL_18;
  }

LABEL_6:

LABEL_17:
  v19 = [v6 itemID];
  [(BRCStatInfo *)self->_st setParentID:v19];

  v20 = [v6 clientZone];
  v21 = [v20 dbRowID];
  parentZoneRowID = self->_parentZoneRowID;
  self->_parentZoneRowID = v21;

LABEL_18:
  [(BRCLocalItem *)self _updateAppLibraryFromParent:v6];
  v23 = [v6 itemScope];
  v24 = [v6 clientZone];
  v25 = [v24 zoneName];
  v47 = self;
  v44 = v8;
  v45 = v7;
  if ([v25 isEqualToString:*MEMORY[0x277CFAB80]])
  {
    [v6 st];
    v27 = v26 = v23;
    v28 = [v27 logicalName];
    v29 = [v28 isEqualToString:*MEMORY[0x277CFAD50]];

    if (v29)
    {
      v26 = 2;
    }

    v46 = v26;
  }

  else
  {
    v46 = v23;
  }

  v30 = [v6 isUserVisible];
  v31 = [v6 itemID];
  v32 = [v31 isNonDesktopRoot];
  v33 = [(BRCLocalStatInfo *)v47->_st logicalName];
  v34 = [v6 isZoneRoot];
  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v43 = [v6 st];
    v35 = [v43 logicalName];
  }

  v36 = [v6 appLibrary];
  v47->_isUserVisible = [BRCLocalItem computeUserVisibleStatusOfLiveItemWithParentVisible:v30 parentIsNonDesktopRoot:v32 parentScope:v46 itemFilename:v33 parentFilename:v35 appLibrary:v36];

  if ((v34 & 1) == 0)
  {
  }

  v37 = [v6 itemID];
  v38 = [v37 isNonDesktopRoot];
  v39 = [v6 itemID];
  v40 = [v39 isDocumentsFolder];
  v41 = [(BRCLocalStatInfo *)v47->_st logicalName];
  [(BRCLocalStatInfo *)v47->_st setItemScope:[BRCLocalItem computeItemScopeFromParentIsRoot:v38 parentIsDocuments:v40 parentScope:v46 logicalName:v41]];

  if ((v47->_sharingOptions & 4) == 0)
  {
    v47->_sharingOptions = [v6 sharingOptions] & 0x78;
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_updatePropagatedInfoIfNeeded
{
  if (([(BRCLocalItem *)self diffAgainstOriginalItem]& 0x1000000060) != 0)
  {
    [(BRCLocalItem *)self _refreshAppLibraryFromParent];

    [(BRCLocalItem *)self _recomputeUserVisibleAndItemScope];
  }
}

- (BOOL)updateFromServerItem:(id)a3
{
  v4 = a3;
  if ([(BRCLocalItem *)self isIdleOrRejected]|| [(BRCLocalItem *)self isShareAcceptationFault])
  {
    v5 = [v4 parentZoneOnFS];
    v6 = [v5 dbRowID];
    parentZoneRowID = self->_parentZoneRowID;
    self->_parentZoneRowID = v6;

    if ([v4 isBRAlias])
    {
      [(BRCLocalStatInfo *)self->_st _updateStatAliasMeta:v4];
    }

    else
    {
      v8 = [v4 ownerKey];
      ownerKey = self->_ownerKey;
      self->_ownerKey = v8;

      self->_sharingOptions = [v4 sharingOptions];
      [(BRCLocalStatInfo *)self->_st _updateStatMetaFromServer:v4];
      v10 = [(BRCLocalStatInfo *)self->_st rawBouncedLogicalName];
      if (v10)
      {
        v11 = v10;
        v12 = [(BRCLocalItem *)self parentClientZone];
        v13 = [(BRCLocalItem *)self st];
        v14 = [v13 parentID];
        v15 = [(BRCLocalItem *)self st];
        v16 = [v15 logicalNameWithoutLocalBounce];
        v17 = [(BRCLocalItem *)self itemGlobalID];
        v22 = [v12 existsByParentID:v14 andLogicalName:v16 excludingItemGlobalID:v17];

        if ((v22 & 1) == 0)
        {
          [(BRCLocalStatInfo *)self->_st clearBouncedName];
        }
      }

      [(BRCLocalItem *)self updateItemMetadataFromServerItem:v4 appliedSharingPermission:0];
    }

    [(BRCLocalItem *)self _updatePropagatedInfoIfNeeded];
    v18 = 1;
  }

  else
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalItem(FPFSAdditions) updateFromServerItem:];
    }

    v18 = 0;
  }

  return v18;
}

- (void)_moveToZoneWhenServerItemIsDead:(id)a3
{
  v9 = a3;
  v5 = objc_opt_new();
  [(BRCLocalItem *)self learnItemID:v5 serverItem:0];

  [(BRCLocalItem *)self markItemForgottenByServer];
  objc_storeStrong(&self->_clientZone, a3);
  self->_serverZone = [v9 serverZone];
  v6 = [(BRCLocalStatInfo *)self->_st rawBouncedLogicalName];
  st = self->_st;
  if (v6)
  {
    [(BRCStatInfo *)st setLogicalName:v6];
  }

  else
  {
    v8 = [(BRCLocalStatInfo *)st logicalName];
    [(BRCStatInfo *)self->_st setLogicalName:v8];
  }
}

- (void)updateWithFinderTagNames:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc_init(BRFieldFinderTags);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(BRFieldFinderTags *)v5 addTags:*(*(&v14 + 1) + 8 * v10++), v14];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    st = self->_st;
    v12 = [(BRFieldFinderTags *)v5 data];
    [(BRCStatInfo *)st setFinderTags:v12];
  }

  else
  {
    [(BRCStatInfo *)self->_st setFinderTags:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateWithLastUsedDate:(id)a3
{
  st = self->_st;
  [a3 timeIntervalSince1970];

  [(BRCStatInfo *)st setLastUsedTime:v4];
}

- (void)updateToBeInTrashWithParent:(id)a3 trashPutBackPath:(id)a4 trashPutBackParentID:(id)a5
{
  v8 = a4;
  parentZoneRowID = self->_parentZoneRowID;
  v10 = a5;
  v11 = a3;
  v12 = [v11 zoneRowID];
  if ([(BRCZoneRowID *)parentZoneRowID br_isEqualToNumber:v12])
  {
LABEL_6:

    goto LABEL_7;
  }

  v13 = [(BRCAccountSession *)self->_session serverZoneByRowID:self->_parentZoneRowID];
  v14 = [v13 isSharedZone];

  if ((v14 & 1) == 0)
  {
    v12 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [BRCLocalItem(FPFSAdditions) updateToBeInTrashWithParent:trashPutBackPath:trashPutBackParentID:];
    }

    goto LABEL_6;
  }

LABEL_7:
  [(BRCStatInfo *)self->_st setTrashPutBackPath:v8];
  [(BRCStatInfo *)self->_st setTrashPutBackParentID:v10];

  st = self->_st;
  v17 = [v11 itemID];
  [(BRCStatInfo *)st setParentID:v17];

  v18 = [v11 zoneRowID];

  v19 = self->_parentZoneRowID;
  self->_parentZoneRowID = v18;

  [(BRCLocalStatInfo *)self->_st setItemScope:3];
  [(BRCLocalItem *)self _recomputeUserVisibleAndItemScope];
}

- (void)updateToBeUntrashedWithParent:(id)a3
{
  parentZoneRowID = self->_parentZoneRowID;
  v5 = a3;
  v6 = [v5 zoneRowID];
  LOBYTE(parentZoneRowID) = [(BRCZoneRowID *)parentZoneRowID br_isEqualToNumber:v6];

  if ((parentZoneRowID & 1) == 0)
  {
    [BRCLocalItem(FPFSAdditions) updateToBeUntrashedWithParent:];
  }

  [(BRCStatInfo *)self->_st setTrashPutBackPath:0];
  [(BRCStatInfo *)self->_st setTrashPutBackParentID:0];
  st = self->_st;
  v8 = [v5 itemID];
  [(BRCStatInfo *)st setParentID:v8];

  v9 = [v5 zoneRowID];

  v10 = self->_parentZoneRowID;
  self->_parentZoneRowID = v9;

  [(BRCLocalStatInfo *)self->_st setItemScope:2];
  [(BRCLocalItem *)self _recomputeUserVisibleAndItemScope];
}

- (void)updateWithCreationDate:(id)a3
{
  [a3 timeIntervalSince1970];
  st = self->_st;

  [(BRCStatInfo *)st setBirthtime:v4];
}

- (void)updateWithFileSystemFlags:(unint64_t)a3
{
  st = self->_st;
  v6 = [(BRCLocalItem *)self isPackage]|| [(BRCLocalItem *)self isDirectory];
  [(BRCLocalStatInfo *)st updateWithFileSystemFlags:a3 ignoreExecutable:v6];
  if ((a3 & 8) != 0)
  {
    self->_isUserVisible = 0;
  }

  else if (!self->_isUserVisible && ![(BRCLocalItem *)self isInDataScope])
  {

    [(BRCLocalItem *)self _recomputeUserVisibleAndItemScope];
  }
}

- (void)updateWithXattrs:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v23 = 0;
  obj = 0;
  [BRFieldXattrBlob loadXattrsFromDictionary:a3 structuralBlob:&obj contentBlob:&v23];
  v4 = [(BRCAccountSession *)self->_session xattrStager];
  objc_storeStrong(&self->_st->super._lazyXattr, obj);
  v5 = [obj brc_signature];
  st = self->_st;
  xattrSignature = st->super._xattrSignature;
  st->super._xattrSignature = v5;

  if (obj)
  {
    v22 = 0;
    if (([v4 saveXattrBlob:obj forSignature:self->_st->super._xattrSignature error:&v22] & 1) == 0)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v20 = [(BRCStatInfo *)self->_st xattrSignature];
        *buf = 138412802;
        v26 = v20;
        v27 = 2112;
        v28 = v22;
        v29 = 2112;
        v30 = v8;
        _os_log_fault_impl(&dword_223E7A000, v9, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to save xattr blob to stage for signature %@ - %@%@", buf, 0x20u);
      }
    }
  }

  if ([(BRCLocalItem *)self isDocument])
  {
    v10 = [(BRCLocalItem *)self asDocument];
    v11 = [v10 currentVersion];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong((v11 + 72), v23);
      v13 = [v23 brc_signature];
      [v12 setXattrSignature:v13];

      v14 = v23;
      if (v23)
      {
        v22 = 0;
        v15 = [v12 xattrSignature];
        v16 = [v4 saveXattrBlob:v14 forSignature:v15 error:&v22];

        if ((v16 & 1) == 0)
        {
          v17 = brc_bread_crumbs();
          v18 = brc_default_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            v21 = [(BRCStatInfo *)self->_st xattrSignature];
            *buf = 138412802;
            v26 = v21;
            v27 = 2112;
            v28 = v22;
            v29 = 2112;
            v30 = v17;
            _os_log_fault_impl(&dword_223E7A000, v18, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to save xattr blob to stage for signature %@ - %@%@", buf, 0x20u);
          }
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_initWithImportObject:(id)a3 error:(id *)a4
{
  v7 = a3;
  v33.receiver = self;
  v33.super_class = BRCLocalItem;
  v8 = [(BRCLocalItem *)&v33 init];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = [v7 session];
  v8->_session = v9;
  v10 = [(BRCAccountSession *)v9 clientDB];
  db = v8->_db;
  v8->_db = v10;

  v12 = [(BRCAccountSession *)v8->_session clientReadWriteDatabaseFacade];
  dbFacade = v8->_dbFacade;
  v8->_dbFacade = v12;

  v14 = [v7 appLibrary];
  v15 = 48;
  appLibrary = v8->_appLibrary;
  v8->_appLibrary = v14;

  if ([v7 isDocumentsFolder])
  {
    v17 = [(BRCAppLibrary *)v8->_appLibrary defaultClientZone];
    clientZone = v8->_clientZone;
    v8->_clientZone = v17;

    v8->_serverZone = [(BRCClientZone *)v8->_clientZone serverZone];
    v19 = [(BRCAppLibrary *)v8->_appLibrary documentsFolderItemID];
  }

  else
  {
    session = v8->_session;
    v15 = [v7 parentItemGlobalID];
    v4 = [v15 zoneRowID];
    v8->_serverZone = [(BRCAccountSession *)session serverZoneByRowID:v4];

    v21 = [(BRCServerZone *)v8->_serverZone clientZone];
    v22 = v8->_clientZone;
    v8->_clientZone = v21;

    v19 = objc_alloc_init(BRCItemID);
  }

  itemID = v8->_itemID;
  v8->_itemID = v19;

  v24 = [v7 parentItemGlobalID];
  v25 = [v24 zoneRowID];
  parentZoneRowID = v8->_parentZoneRowID;
  v8->_parentZoneRowID = v25;

  v27 = [(BRCServerZone *)v8->_serverZone isPrivateZone];
  if (v27)
  {
    v28 = &unk_2837B0238;
  }

  else
  {
    v29 = v8->_dbFacade;
    v15 = [(BRCServerZone *)v8->_serverZone asSharedZone];
    v4 = [v15 ownerName];
    v28 = [(BRCDatabaseFacade *)v29 userKeyForOwnerName:v4];
  }

  objc_storeStrong(&v8->_ownerKey, v28);
  if (!v27)
  {
  }

  v30 = [[BRCLocalStatInfo alloc] initWithImportObject:v7 error:a4];
  st = v8->_st;
  v8->_st = v30;

  if (v30)
  {
    v8->_isUserVisible = [v7 isUserVisible];
    v8->_sharingOptions = [v7 sharingOptions];
    -[BRCLocalStatInfo setItemScope:](v8->_st, "setItemScope:", [v7 itemScope]);
LABEL_12:
    v30 = v8;
  }

  return v30;
}

- (id)computeItemPathRelativeToRoot
{
  v3 = [(BRCLocalItem *)self appLibrary];
  v4 = [v3 mangledID];
  v5 = [BRCUserDefaults defaultsForMangledID:v4];
  v6 = [v5 maxSyncPathDepth];

  v7 = objc_opt_new();
  if ([(BRCLocalItem *)self isFSRoot])
  {
    v8 = @"/";
  }

  else
  {
    db = self->_db;
    v10 = [(BRCStatInfo *)self->_st parentID];
    v11 = [(BRCPQLConnection *)db fetch:@" WITH RECURSIVE item_parents (item_id, zone_rowid, item_filename) AS(    SELECT item_parent_id, item_parent_zone_rowid, item_filename FROM client_items      WHERE item_id = %@ AND zone_rowid = %@ AND NOT item_id_is_documents(item_id)  UNION ALL     SELECT li.item_parent_id, li.item_parent_zone_rowid, li.item_filename FROM client_items AS li  INNER JOIN item_parents AS p USING (item_id, zone_rowid)      WHERE NOT item_id_is_documents(li.item_id)      LIMIT %u) SELECT item_filename FROM item_parents", v10, self->_parentZoneRowID, v6];

    if ([v11 next])
    {
      do
      {
        v12 = [v11 stringAtIndex:0];
        [v7 insertObject:v12 atIndex:0];
      }

      while (([v11 next] & 1) != 0);
    }

    v13 = [(BRCLocalItem *)self st];
    v14 = [v13 logicalName];
    [v7 addObject:v14];

    v8 = [MEMORY[0x277CCACA8] pathWithComponents:v7];
  }

  return v8;
}

- (id)liveStageFilename
{
  v3 = [(BRCLocalItem *)self fileObjectID];
  v4 = [v3 asString];

  v5 = [(BRCLocalItem *)self st];
  v6 = [v5 filename];
  v7 = [v6 br_pathExtension];

  if (v7)
  {
    v8 = [v4 stringByAppendingPathExtension:v7];
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v9;
}

- (void)markImportedItemAsSharedWithImportBookmark:(id)a3 parent:(id)a4
{
  v6 = a3;
  v7 = a4;
  session = self->_session;
  v9 = [v6 mangledID];
  self->_serverZone = [(BRCAccountSession *)session serverZoneByMangledID:v9];

  v10 = [(BRCServerZone *)self->_serverZone clientZone];
  clientZone = self->_clientZone;
  self->_clientZone = v10;

  if (!self->_clientZone)
  {
    [BRCLocalItem(FPFSAdditions) markImportedItemAsSharedWithImportBookmark:parent:];
  }

  v12 = [v6 itemID];
  itemID = self->_itemID;
  self->_itemID = v12;

  v14 = [v7 clientZone];
  v15 = [v14 isEqualToClientZone:self->_clientZone];

  if (v15)
  {
    v16 = [v7 sharingOptions] & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v16 = 68;
  }

  self->_sharingOptions = v16;
}

- (BOOL)updateFPCreationItemIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v3 = [(BRCLocalStatInfo *)self->_st fpCreationItemIdentifier];
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  v6 = [(BRCLocalStatInfo *)self->_st fpCreationItemIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (!v5)
  {

    if (v7)
    {
      goto LABEL_5;
    }

LABEL_7:
    [(BRCLocalStatInfo *)self->_st setFpCreationItemIdentifier:v5];
    v8 = [(BRCPQLConnection *)self->_db execute:@"UPDATE client_items SET fp_creation_item_identifier = %@ WHERE rowid = %llu", v5, self->_dbRowID];
    goto LABEL_8;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v8 = 1;
LABEL_8:

  return v8;
}

+ (unsigned)computeItemScopeFromParentIsRoot:(BOOL)a3 parentIsDocuments:(BOOL)a4 parentScope:(unsigned __int8)a5 logicalName:(id)a6
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v9 = a6;
  v10 = v9;
  if (v6 == 1 && v8)
  {
    if ([v9 isEqualToString:*MEMORY[0x277CFAD90]])
    {
LABEL_4:
      LOBYTE(v6) = 2;
      goto LABEL_15;
    }

    v11 = 0;
  }

  else
  {
    v11 = v6 == 2;
    if ((v8 || v7) && v6 == 2)
    {
      if ([v9 isEqualToString:*MEMORY[0x277CFADB8]])
      {
        LOBYTE(v6) = 3;
      }

      else
      {
        LOBYTE(v6) = 2;
      }

      goto LABEL_15;
    }
  }

  if (v7)
  {
    LOBYTE(v6) = 2;
  }

  if (!v11 && v7)
  {
    +[BRCLocalItem(FPFSAdditions) computeItemScopeFromParentIsRoot:parentIsDocuments:parentScope:logicalName:];
    goto LABEL_4;
  }

LABEL_15:

  return v6;
}

- (unint64_t)diffAgainstLocalItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v35 = 0xFF003FF3FF7FFFLL;
    goto LABEL_51;
  }

  v6 = v4[7];
  v7 = self->_itemID;
  v8 = v6;
  OUTLINED_FUNCTION_16_1();
  if (v9)
  {

    goto LABEL_7;
  }

  if (v6)
  {
    v10 = OUTLINED_FUNCTION_17_0();

    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v11 = 0x80000000;
LABEL_10:
  v12 = v5[9];
  v13 = self->_ownerKey;
  v14 = v12;
  OUTLINED_FUNCTION_16_1();
  if (v9)
  {

    goto LABEL_17;
  }

  if (!v12)
  {

    goto LABEL_16;
  }

  v15 = OUTLINED_FUNCTION_17_0();

  if ((v15 & 1) == 0)
  {
LABEL_16:
    v11 |= 0x20000000uLL;
  }

LABEL_17:
  if (self->_sharingOptions == v5[18])
  {
    v16 = v11;
  }

  else
  {
    v16 = v11 | 0x40000000;
  }

  if (self->_syncUpState != *(v5 + 22))
  {
    v16 |= 0x20000000000000uLL;
  }

  if (self->_isUserVisible == *(v5 + 120))
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 | 0x80000000000000;
  }

  if ((v17 & 0x40000000000000) == 0)
  {
    v18 = [(BRCLocalItem *)self appLibrary];
    v19 = [v18 dbRowID];
    v20 = [v5 appLibrary];
    v21 = [v20 dbRowID];
    v22 = v19;
    v23 = v21;
    v24 = v23;
    if (v22 == v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23 ? [v22 isEqual:v23] ^ 1 : 1;
    }

    if (v25)
    {
      v17 |= 0x40000000000000uLL;
    }
  }

  if ((v17 & 0x8000000000000) == 0)
  {
    v26 = v5[14];
    v27 = self->_minimumSupportedOSRowID;
    v28 = v26;
    OUTLINED_FUNCTION_16_1();
    if (v9)
    {

      goto LABEL_41;
    }

    if (v26)
    {
      v29 = OUTLINED_FUNCTION_17_0();

      if (v29)
      {
        goto LABEL_41;
      }
    }

    else
    {
    }

    v17 |= 0x8000000000000uLL;
  }

LABEL_41:
  v30 = v5[21];
  v31 = self->_sideCarCKInfo;
  v32 = v30;
  OUTLINED_FUNCTION_16_1();
  if (v9)
  {
  }

  else
  {
    if (v30)
    {
      v33 = OUTLINED_FUNCTION_17_0();

      if (v33)
      {
        goto LABEL_48;
      }
    }

    else
    {
    }

    v17 |= 0x100000000000000uLL;
  }

LABEL_48:
  v34 = [(BRCLocalStatInfo *)self->_st diffAgainstLocalInfo:v5[10]];
  v35 = v34 | v17;
  if (((v34 | v17) & 8) != 0 && ![(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    v35 &= ~8uLL;
  }

LABEL_51:

  return v35;
}

- (void)asBRAlias
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: -asBRAlias called on a non alias%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asDirectory
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: -asDirectory called on a non directory%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asDocument
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: -asDocument called on a non document%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asShareableItem
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: -asShareableItem called on a non shareable item%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asFSRoot
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: -asFSRoot called on a non root%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asSymlink
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: -asSymlink called on a non symlink%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asFinderBookmark
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: -asFinderBookmark called on a non symlink%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asShareAcceptationFault
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: -asShareAcceptationFault called on a non fault%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fileObjectID
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: unknown item type%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)parentFileObjectID
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Asked parent file objectID on a zone root%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asSharedToMeTopLevelItem
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)inheritOSUpgradeNeededFromItem:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: parentItem->_minimumSupportedOSRowID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)inheritOSUpgradeNeededFromItem:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !_minimumSupportedOSRowID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)markNeedsOSUpgradeToSyncUpWithName:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: can't add the OS NAME%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initFromPQLResultSet:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Local items must be initialized with initFromPQLResultSet:container:error:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initFromPQLResultSet:session:db:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Can't find app library%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sideCarInfo
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Asked for side car info on an item that doesn't have side cars%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)parentItemIDInZone
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: item without parentID%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)parentItemOnFS
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Can't ask the parent item of a FS root%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateSyncUpSchedulerWithDiffs:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateSyncUpSchedulerWithDiffs:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Detected sync up state change%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateSyncUpSchedulerWithDiffs:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Rescheduling upload for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_insertInDB:dbRowID:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _appLibrary%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_deleteOldZoneJobs:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: ![self.itemID isEqualToItemID:self.orig.itemID]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_deleteOldZoneJobs:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: _st.ckInfo.etag == nil || [_orig.st.ckInfo.etagBeforeCrossZoneMove isEqualToString:_st.ckInfo.etag] || self.isDirectory%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateInDB:diffs:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Deleting old parent zone sync up job for a CZM shared item: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __30__BRCLocalItem_setOfParentIDs__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Circular parenting chain%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __30__BRCLocalItem_setOfParentIDs__block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Encountered circular parenting chain%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_sendNotificationIfNeededWithDiffs:regather:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Can't create a notification out of an alias item%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_restorePreviousGlobalID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Existing server item %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)saveToDBForServerEdit:keepAliases:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] overwriting serverUpdate to YES because the item is moving to IDLE%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveToDBForServerEdit:keepAliases:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Item is already force-deleted, skipping save%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] Inserting a tombstone for the alias of %@ if necessary%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Not deleting until we send the delete to children%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Deleting tombstone because it's no known to server%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Deleting tombstone because it's synced up%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Force deletion has been asked, comply%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] item with a minimum supported OS just changed, checking if we need to reattempt upload%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] item went out of lost state%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] this item changed significantly%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Forcing sync up of side car zone when item changed path extension%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_10()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] we don't have a corresponding alias item, and the diffs do not require alias creation, dropping the diffs%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_11()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] We received our first shared to me child item, schedulding side car sync%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_12(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2112;
  *&v4[14] = a1;
  OUTLINED_FUNCTION_4(&dword_223E7A000, a2, a3, "[DEBUG] Inserting item with rowid = %llu%@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __50__BRCLocalItem_saveToDBForServerEdit_keepAliases___block_invoke_cold_13()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)computeUserVisibleStatusOfLiveItemWithParentVisible:parentIsNonDesktopRoot:parentScope:itemFilename:parentFilename:appLibrary:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !appLibrary.isCloudDocsAppLibrary%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (void)computeUserVisibleStatusOfLiveItemWithParentVisible:parentIsNonDesktopRoot:parentScope:itemFilename:parentFilename:appLibrary:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: parentScope != BRC_ITEM_SCOPE_DATA || !parentVisible%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)forceNeedsSyncUpWithoutDiffs
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Forcing sync up of shared item in the trash %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)prepareForSyncUpInZone:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _db.isBatchSuspended%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)prepareForSyncUpInZone:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.isReadAndUploaded || self.isKnownByServerOrInFlight%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)markLatestSyncRequestFailedInZone:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _db.isBatchSuspended%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)markLatestSyncRequestRejectedInZone:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _db.isBatchSuspended%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)markLatestSyncRequestRejectedInZone:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Rejected item %@ has meaningful local diffs.  Forcing sync on all%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)markLatestSyncRequestRejectedInZone:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)markLatestSyncRequestAcknowledgedInZone:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _db.isBatchSuspended%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)markLatestSyncRequestAcknowledgedInZone:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: _syncUpState != BRC_SUS_IDLE%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)markLatestSyncRequestAcknowledgedInZone:.cold.3()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x277D85DE8];
  v0 = BRCItemFieldsPrettyPrint();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] we still have diffs to send: %@%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)markLatestSyncRequestAcknowledgedInZone:.cold.4()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 itemID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] we are still syncing %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateItemMetadataFromServerItem:appliedSharingPermission:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Learning parent sharing options because there is no shareID on this item%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateStructuralCKInfoFromServerItem:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: serverItem%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateStructuralCKInfoFromServerItem:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: ckInfo%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateStructuralCKInfoFromServerItem:.cold.3()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*v0 etag];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Also updating side car ckinfo:%@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateCrossZoneParent:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: parentItem%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_updateCrossZoneParent:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Skipping learning new itemID because we handled the conflict with a revival%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isReadAndUploaded
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: invalid sync up state%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end