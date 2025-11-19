@interface BRCDocumentItem
+ (BOOL)isDocumentAutomaticallyEvictableWithExtension:(id)a3;
+ (BOOL)isDocumentAutomaticallyEvictableWithName:(id)a3;
+ (BOOL)shouldDocumentBeGreedyWithName:(id)a3;
- (BOOL)_insertInDB:(id)a3 dbRowID:(unint64_t)a4;
- (BOOL)_isInFlightSyncContent;
- (BOOL)_isInterestingUpdateForNotifs;
- (BOOL)_needsSyncBubbleRecomputeForError:(id)a3 origError:(id)a4;
- (BOOL)_nukePackageItemsFromDB:(id)a3;
- (BOOL)_updateInDB:(id)a3 diffs:(unint64_t)a4;
- (BOOL)_updatePackageItemsIfNecessaryWithImportObject:(id)a3 error:(id *)a4;
- (BOOL)contentRecordNeedsForceAllFieldsWhenDeadInServerTruth:(BOOL)a3;
- (BOOL)hasShareIDAndIsOwnedByMe;
- (BOOL)hasValidCKInfo;
- (BOOL)isAutomaticallyEvictable;
- (BOOL)isCrossZoneMoveTombstone;
- (BOOL)isDocument;
- (BOOL)isDocumentBeingCopiedToNewZone;
- (BOOL)isEvictable;
- (BOOL)isPackage;
- (BOOL)isVisibleIniCloudDrive;
- (BOOL)markLatestSyncRequestAcknowledgedInZone:(id)a3;
- (BOOL)shouldBeGreedy;
- (BOOL)shouldHaveThumbnail;
- (BOOL)shouldTransferThumbnail;
- (BOOL)startDownloadInTask:(id)a3 options:(unint64_t)a4 etagIfLoser:(id)a5 stageFileName:(id)a6 error:(id *)a7;
- (BOOL)supportsServerSideAssetCopies;
- (BOOL)updateFromServerItem:(id)a3;
- (BOOL)validateLoggingToFile:(__sFILE *)a3;
- (NSDictionary)conflictLoserState;
- (NSError)uploadError;
- (id)_initFromPQLResultSet:(id)a3 session:(id)a4 db:(id)a5 error:(id *)a6;
- (id)_initWithImportObject:(id)a3 error:(id *)a4;
- (id)_initWithLocalItem:(id)a3;
- (id)_initWithServerItem:(id)a3 dbRowID:(unint64_t)a4;
- (id)aliasItemID;
- (id)baseRecordClearAllFields:(BOOL)a3;
- (id)collaborationIdentifierIfComputable;
- (id)descriptionWithContext:(id)a3;
- (id)documentRecordID;
- (id)syncContextUsedForTransfers;
- (unint64_t)diffAgainstLocalItem:(id)a3;
- (unint64_t)diffAgainstServerItem:(id)a3;
- (void)_crossZoneMoveToParent:(id)a3;
- (void)_insertTombstoneForPreviousZoneGlobalID;
- (void)_markAsDeadTombstoneWithPreviousGlobalID;
- (void)_reIngestFromFileProviderWithIsFirstAttempt:(BOOL)a3;
- (void)_updateRecursivePropertiesInDB:(id)a3 dbRowID:(unint64_t)a4 diffs:(unint64_t)a5;
- (void)_updateUploadJobIfNeededWithDiffs:(unint64_t)a3;
- (void)addResolvedConflictLoserEtag:(id)a3;
- (void)appDidResolveConflictLoserWithEtag:(id)a3;
- (void)handleUnknownItemError;
- (void)isPackage;
- (void)learnContentVersionFromVersionIdentifier:(id)a3;
- (void)markCrossZoneMovedForServerAssetCopyWithParentItem:(id)a3;
- (void)markDead;
- (void)markDoneMigratingToFPFS;
- (void)markForceNeedsSyncUp;
- (void)markForceUpload;
- (void)markItemForgottenByServer;
- (void)markLatestSyncRequestRejectedInZone:(id)a3;
- (void)markNeedsReading;
- (void)markNeedsUploadOrSyncingUp;
- (void)markOverQuotaWithError:(id)a3;
- (void)markUploadedWithRecord:(id)a3;
- (void)recoverDamagedDocumentIfNecessaryWithError:(id)a3;
- (void)updateContentsCKInfoAndDeviceIDFromServerItem:(id)a3;
- (void)updateVersionMetadataFromServerItem:(id)a3 preventVersionDiffs:(BOOL)a4;
- (void)updateWithContentModificationDate:(id)a3;
@end

@implementation BRCDocumentItem

- (BOOL)isDocument
{
  if (![(BRCLocalItem *)self isFinderBookmark])
  {
    v3 = [(BRCStatInfo *)self->super._st type];
    if (v3 > 8 || ((1 << v3) & 0x106) == 0)
    {
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [BRCDocumentItem isPackage];
      }
    }
  }

  return 1;
}

- (BOOL)isCrossZoneMoveTombstone
{
  v3 = [(BRCLocalItem *)self->super._orig asDocument];
  if (!-[BRCLocalItem isDead](self, "isDead") || -[BRCDocumentItem isDocumentBeingCopiedToNewZone](self, "isDocumentBeingCopiedToNewZone") || ([v3 isDead] & 1) != 0 || !objc_msgSend(v3, "isDocumentBeingCopiedToNewZone"))
  {
    v7 = 0;
  }

  else
  {
    v4 = [(BRCLocalItem *)self itemGlobalID];
    v5 = [v3 currentVersion];
    v6 = [v5 previousItemGlobalID];
    v7 = [v4 isEqualToItemGlobalID:v6];
  }

  return v7;
}

- (NSDictionary)conflictLoserState
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableSet *)self->_resolvedConflictLoserEtags count];
  if (v3)
  {
    resolvedConflictLoserEtags = self->_resolvedConflictLoserEtags;
    v7 = @"r";
    v8[0] = resolvedConflictLoserEtags;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isVisibleIniCloudDrive
{
  if ([(BRCLocalItem *)self isInDocumentScope])
  {
    if ([(BRCClientZone *)self->super._clientZone isSharedZone])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v4 = [(BRCClientZone *)self->super._clientZone asPrivateClientZone];
      v5 = [v4 defaultAppLibrary];

      v6 = [v5 containerMetadata];
      if ([v6 isDocumentScopePublic])
      {
        v3 = [v6 isCloudSyncTCCDisabled] ^ 1;
      }

      else
      {
        LOBYTE(v3) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)isDocumentBeingCopiedToNewZone
{
  v2 = [(BRCLocalVersion *)self->_currentVersion previousItemGlobalID];
  v3 = v2 != 0;

  return v3;
}

- (NSError)uploadError
{
  v3 = [(BRCLocalItem *)self syncUpError];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(BRCDocumentItem *)self currentVersion];
    v5 = [v6 uploadError];
  }

  return v5;
}

- (BOOL)isEvictable
{
  v3 = [(BRCLocalItem *)self appLibrary];
  v4 = [v3 mangledID];
  v5 = [BRCUserDefaults defaultsForMangledID:v4];

  v6 = [(BRCLocalStatInfo *)self->super._st logicalName];
  v7 = [v6 br_pathExtension];
  v8 = [v7 lowercaseString];
  v9 = v8;
  v10 = &stru_2837504F0;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [v5 nonEvictableExtensions];
  v13 = [v12 containsObject:v11];

  v14 = (v13 & 1) == 0 && [(BRCLocalItem *)self isIdleOrRejected];
  return v14;
}

- (BOOL)shouldBeGreedy
{
  v3 = [(BRCLocalItem *)self appLibrary];
  v4 = [v3 mangledID];
  v5 = [BRCUserDefaults defaultsForMangledID:v4];
  [v5 maximumDocumentAgeToBeGreedy];
  v7 = v6;

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-v7];
  [v8 timeIntervalSince1970];
  v10 = v9;

  v11 = [(BRCDocumentItem *)self currentVersion];
  v12 = [v11 mtime];

  if (v12 < v10 || (-[BRCLocalItem appLibrary](self, "appLibrary"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isDocumentScopePublic], v13, !v14) || -[BRCLocalItem isInTrashScope](self, "isInTrashScope") || -[BRCLocalItem isInDataScope](self, "isInDataScope"))
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    v17 = [(BRCLocalItem *)self appLibrary];
    v15 = [v17 shouldEvictUploadedItems] ^ 1;
  }

  return v15;
}

- (id)aliasItemID
{
  if ([(BRCLocalItem *)self isSharedToMeTopLevelItem])
  {
    v3 = [(BRCLocalItem *)self asSharedToMeTopLevelItem];
    v4 = [v3 sharedAliasItemID];
  }

  else
  {
    v3 = [(BRCLocalItem *)self appLibrary];
    if ([v3 wasMovedToCloudDocs])
    {
      v4 = 0;
    }

    else
    {
      v5 = [BRCItemID alloc];
      v6 = [(BRCItemID *)self->super._itemID itemIDString];
      v4 = [(BRCItemID *)v5 initWithAliasUUID:v6];
    }
  }

  return v4;
}

- (BOOL)isPackage
{
  if (![(BRCLocalItem *)self isFinderBookmark])
  {
    v3 = [(BRCStatInfo *)self->super._st type];
    if (v3 > 8 || ((1 << v3) & 0x106) == 0)
    {
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [BRCDocumentItem isPackage];
      }
    }
  }

  return [(BRCVersion *)self->_currentVersion isPackage];
}

- (id)collaborationIdentifierIfComputable
{
  if ([(BRCDocumentItem *)self isShareableItem])
  {
    v3 = objc_alloc(MEMORY[0x277CBC5D0]);
    v4 = [(BRCDocumentItem *)self asShareableItem];
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

+ (BOOL)isDocumentAutomaticallyEvictableWithExtension:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [BRCUserDefaults defaultsForMangledID:0];
  v5 = [v4 nonEvictableExtensions];
  if (![v5 containsObject:v3])
  {
    v6 = [v4 nonAutoEvictableExtensions];
    v7 = [v6 containsObject:v3];

    if (v7)
    {
      goto LABEL_4;
    }

    v9 = +[BRCUTITypeCache defaultCache];
    v10 = [v9 UTIForExtension:v3];

    if (!v10)
    {
      v8 = 1;
LABEL_27:

      goto LABEL_28;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [v4 autoEvictableUTIs];
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
LABEL_8:
      v15 = 0;
      while (1)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if (UTTypeConformsTo(v10, *(*(&v26 + 1) + 8 * v15)))
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v13)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = [v4 nonAutoEvictableUTIs];
      v16 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v23;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v11);
            }

            if (UTTypeConformsTo(v10, *(*(&v22 + 1) + 8 * i)))
            {
              v8 = 0;
              goto LABEL_26;
            }
          }

          v17 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
          v8 = 1;
          if (v17)
          {
            continue;
          }

          goto LABEL_26;
        }
      }
    }

    v8 = 1;
LABEL_26:

    goto LABEL_27;
  }

LABEL_4:
  v8 = 0;
LABEL_28:

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)isDocumentAutomaticallyEvictableWithName:(id)a3
{
  v4 = [a3 br_pathExtension];
  v5 = [v4 lowercaseString];

  LOBYTE(a1) = [a1 isDocumentAutomaticallyEvictableWithExtension:v5];
  return a1;
}

- (BOOL)isAutomaticallyEvictable
{
  if (![(BRCDocumentItem *)self isEvictable])
  {
    return 0;
  }

  if (![(BRCDocumentItem *)self hasLocalContent])
  {
    return 0;
  }

  v3 = objc_opt_class();
  v4 = [(BRCLocalStatInfo *)self->super._st logicalName];
  LODWORD(v3) = [v3 isDocumentAutomaticallyEvictableWithName:v4];

  if (!v3)
  {
    return 0;
  }

  v5 = [(BRCLocalItem *)self appLibrary];
  v6 = [v5 mangledID];
  v7 = [BRCUserDefaults defaultsForMangledID:v6];

  v8 = [v7 minAutomaticallyEvictableFilesize];
  v9 = [(BRCVersion *)self->_currentVersion size]>= v8;

  return v9;
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

+ (BOOL)shouldDocumentBeGreedyWithName:(id)a3
{
  v3 = [a3 br_pathExtension];
  v4 = [v3 lowercaseString];

  v5 = [BRCUserDefaults defaultsForMangledID:0];
  v6 = [v5 nonEvictableExtensions];
  if ([v6 containsObject:v4])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 shouldBeGreedyExtensions];
    v7 = [v8 containsObject:v4];
  }

  return v7;
}

- (BOOL)shouldHaveThumbnail
{
  v3 = [(BRCLocalItem *)self st];
  v4 = [v3 logicalName];
  v5 = [v4 br_pathExtension];
  v6 = [v5 lowercaseString];
  v7 = v6;
  v8 = &stru_2837504F0;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [(BRCLocalItem *)self appLibrary];
  v11 = [v10 mangledID];
  v12 = [BRCUserDefaults defaultsForMangledID:v11];
  v13 = [v12 blacklistedThumbnailExtensions];

  LOBYTE(v10) = [v13 containsObject:v9];
  v14 = (v10 & 1) == 0 && [(BRCLocalItem *)self isInDocumentScope];

  return v14;
}

- (BOOL)shouldTransferThumbnail
{
  if ([(BRCLocalItem *)self isFinderBookmark]|| [(BRCDocumentItem *)self isDocumentBeingCopiedToNewZone]|| ![(BRCDocumentItem *)self shouldHaveThumbnail])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v3 = [(BRCDocumentItem *)self currentVersion];
    v4 = [v3 isSmallAndMostRecentClientsGenerateThumbnails] ^ 1;
  }

  return v4;
}

- (BOOL)_isInterestingUpdateForNotifs
{
  v3 = [(BRCLocalItem *)self orig];
  v4 = [v3 currentVersion];
  v5 = [v4 uploadError];
  if (v5)
  {
  }

  else
  {
    v16 = [(BRCLocalVersion *)self->_currentVersion uploadError];

    if (v16)
    {
LABEL_8:
      v15 = 1;
      goto LABEL_9;
    }
  }

  v6 = [v3 queryItemStatus];
  if (v6 != [(BRCDocumentItem *)self queryItemStatus])
  {
    goto LABEL_8;
  }

  v7 = [v3 downloadStatus];
  if (v7 != [(BRCDocumentItem *)self downloadStatus])
  {
    goto LABEL_8;
  }

  v8 = [v3 uploadStatus];
  if (v8 != [(BRCLocalItem *)self uploadStatus])
  {
    goto LABEL_8;
  }

  v9 = [(BRCDocumentItem *)self currentVersion];
  v10 = [v9 conflictLoserEtags];
  v11 = [v10 count] == 0;
  v12 = [v3 currentVersion];
  v13 = [v12 conflictLoserEtags];
  v14 = [v13 count];

  v15 = v11 ^ (v14 == 0);
LABEL_9:

  return v15;
}

- (id)descriptionWithContext:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BRCDocumentItem;
  v5 = [(BRCLocalItem *)&v12 descriptionWithContext:v4];
  v6 = v5;
  if (self->_fileIDForUpload)
  {
    [v5 appendFormat:@" up-id{fid:%@, gen:%@}", self->_fileIDForUpload, self->_generationIDForUpload];
  }

  currentVersion = self->_currentVersion;
  if (currentVersion)
  {
    v8 = [(BRCLocalVersion *)currentVersion descriptionWithContext:v4];
    [v6 appendFormat:@" ct{%@}", v8];
  }

  if ([(NSMutableSet *)self->_resolvedConflictLoserEtags count])
  {
    v9 = [(NSMutableSet *)self->_resolvedConflictLoserEtags allObjects];
    v10 = [v9 componentsJoinedByString:{@", "}];
    [v6 appendFormat:@" resolved-losers:{%@}", v10];
  }

  return v6;
}

- (id)_initWithServerItem:(id)a3 dbRowID:(unint64_t)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = BRCDocumentItem;
  v7 = [(BRCLocalItem *)&v18 _initWithServerItem:v6 dbRowID:a4];
  if (v7)
  {
    v8 = [v6 latestVersion];

    if (v8)
    {
      if (([v6 isDocument] & 1) == 0)
      {
        [BRCDocumentItem _initWithServerItem:dbRowID:];
      }

      v9 = [BRCLocalVersion alloc];
      v10 = [v6 latestVersion];
      v11 = [(BRCLocalVersion *)v9 initWithVersion:v10];
      v12 = *(v7 + 26);
      *(v7 + 26) = v11;

      v13 = [*(v7 + 26) copy];
      v14 = *(v7 + 12);
      v15 = *(v14 + 208);
      *(v14 + 208) = v13;
    }

    else
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [BRCDocumentItem _initWithServerItem:dbRowID:];
      }
    }
  }

  return v7;
}

- (id)_initWithLocalItem:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = BRCDocumentItem;
  v5 = [(BRCLocalItem *)&v16 _initWithLocalItem:v4];
  if (v5)
  {
    v6 = [v4 asDocument];
    v7 = [v6[26] copy];
    v8 = v5[26];
    v5[26] = v7;

    v9 = [v6[28] copy];
    v10 = v5[28];
    v5[28] = v9;

    v11 = [v6[29] copy];
    v12 = v5[29];
    v5[29] = v11;

    v13 = [v6[27] mutableCopy];
    v14 = v5[27];
    v5[27] = v13;
  }

  return v5;
}

- (BOOL)hasValidCKInfo
{
  v3 = [(BRCLocalItem *)self isTopLevelSharedItem];
  v4 = [(BRCVersion *)self->_currentVersion ckInfo];
  v5 = v4;
  if (v3)
  {
    v6 = v4 != 0;
  }

  else if (v4)
  {
    v7 = [(BRCStatInfo *)self->super._st ckInfo];
    v6 = v7 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)diffAgainstServerItem:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = BRCDocumentItem;
  v5 = [(BRCLocalItem *)&v17 diffAgainstServerItem:v4];
  if (v4 && ([v4 isDocument] & 1) == 0)
  {
    [BRCDocumentItem diffAgainstServerItem:];
  }

  if ([v4 isDocument])
  {
    if (self->_currentVersion)
    {
      v6 = [v4 latestVersion];

      if (v6)
      {
        v7 = [v4 latestVersion];
        v5 |= [(BRCVersion *)self->_currentVersion diffAgainst:v7];
        if ([(BRCClientZone *)self->super._clientZone isSharedZone])
        {
          v5 &= ~0x1000000uLL;
        }

        if ((v5 & 0x2000000) != 0)
        {
          v8 = [(BRCVersion *)self->_currentVersion editedSinceShared];
          if ([v8 BOOLValue])
          {
            v9 = [v7 editedSinceShared];
            v10 = [v9 BOOLValue];

            if ((v10 & 1) == 0)
            {
              v5 &= ~0x2000000uLL;
            }
          }

          else
          {
          }
        }

        if ((v5 & 0x800000) != 0)
        {
          goto LABEL_21;
        }

LABEL_19:
        resolvedConflictLoserEtags = self->_resolvedConflictLoserEtags;
        v14 = [v4 latestVersion];
        v15 = [v14 conflictLoserEtags];
        LOBYTE(resolvedConflictLoserEtags) = [(NSMutableSet *)resolvedConflictLoserEtags intersectsSet:v15];

        if (resolvedConflictLoserEtags)
        {
          v5 |= 0x800000uLL;
        }

        goto LABEL_21;
      }

      currentVersion = self->_currentVersion;
    }

    else
    {
      currentVersion = 0;
    }

    v12 = [v4 latestVersion];

    if (currentVersion != v12)
    {
      v5 |= 0x3FF0000uLL;
    }

    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_21:

  return v5;
}

- (unint64_t)diffAgainstLocalItem:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = BRCDocumentItem;
  v5 = [(BRCLocalItem *)&v30 diffAgainstLocalItem:v4];
  if (v4 && ([v4 isDocument] & 1) == 0)
  {
    [BRCDocumentItem diffAgainstLocalItem:];
  }

  if ([v4 isDocument])
  {
    v6 = [v4 asDocument];
    v7 = v6;
    if (self->_currentVersion)
    {
      v8 = [v6 currentVersion];

      currentVersion = self->_currentVersion;
      if (v8)
      {
        v10 = [(BRCLocalVersion *)currentVersion diffAgainstLocalVersion:v7[26]]| v5;
        if ((v10 & 0x400000000) != 0)
        {
          goto LABEL_21;
        }

LABEL_14:
        fileIDForUpload = self->_fileIDForUpload;
        v12 = [v7 fileIDForUpload];
        v13 = fileIDForUpload;
        v14 = v12;
        v15 = v14;
        if (v13 == v14)
        {
          v16 = 0;
        }

        else if (v14)
        {
          v16 = [(NSNumber *)v13 isEqual:v14]^ 1;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          v10 |= 0x400000000uLL;
        }

LABEL_21:
        if ((v10 & 0x800000000) != 0)
        {
          if ((v10 & 0x800000) != 0)
          {
LABEL_39:
            if ([(BRCClientZone *)self->super._clientZone isSharedZone])
            {
              v5 = v10 & 0xFFFFFFFFFEFFFFFFLL;
            }

            else
            {
              v5 = v10;
            }

            if ([(BRCLocalItem *)self isSharedToMeTopLevelItem])
            {
              v5 &= ~0x40000uLL;
            }

            goto LABEL_45;
          }
        }

        else
        {
          generationIDForUpload = self->_generationIDForUpload;
          v18 = [v7 generationIDForUpload];
          v19 = generationIDForUpload;
          v20 = v18;
          v21 = v20;
          if (v19 == v20)
          {
            v22 = 0;
          }

          else if (v20)
          {
            v22 = ![(BRCGenerationID *)v19 isEqual:v20];
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            v10 |= 0x800000000uLL;
          }

          if ((v10 & 0x800000) != 0)
          {
            goto LABEL_39;
          }
        }

        resolvedConflictLoserEtags = self->_resolvedConflictLoserEtags;
        v24 = [v7 resolvedConflictLoserEtags];
        v25 = resolvedConflictLoserEtags;
        v26 = v24;
        v27 = v26;
        if (v25 == v26)
        {
          v28 = 0;
        }

        else if (v26)
        {
          v28 = [(NSMutableSet *)v25 isEqual:v26]^ 1;
        }

        else
        {
          v28 = 1;
        }

        if (v28)
        {
          v10 |= 0x800000uLL;
        }

        goto LABEL_39;
      }
    }

    else
    {
      currentVersion = 0;
    }

    if (currentVersion == v7[26])
    {
      v10 = v5;
    }

    else
    {
      v10 = v5 | 0x7000003FF0000;
    }

    if ((v10 & 0x400000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

LABEL_45:

  return v5;
}

- (BOOL)validateLoggingToFile:(__sFILE *)a3
{
  v8.receiver = self;
  v8.super_class = BRCDocumentItem;
  v5 = [(BRCLocalItem *)&v8 validateLoggingToFile:?];
  currentVersion = self->_currentVersion;
  if (currentVersion)
  {
    if (v5)
    {
      LOBYTE(v5) = [(BRCVersion *)currentVersion check:self->super._itemID logToFile:a3];
    }
  }

  else if (![(BRCLocalItem *)self isDead])
  {
    fprintf(a3, "item %s is a live document without a version\n", [(BRCItemID *)self->super._itemID UTF8String]);
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)syncContextUsedForTransfers
{
  serverZone = self->super._serverZone;
  v3 = [(BRCLocalItem *)self appLibrary];
  v4 = [BRCSyncContext transferContextForServerZone:serverZone appLibrary:v3];

  return v4;
}

- (void)updateContentsCKInfoAndDeviceIDFromServerItem:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 latestVersion];
  v6 = [v5 ckInfo];

  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v6 etag];
    v15 = 138412802;
    v16 = v14;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] updating ct-etag:%@ from server item: %@%@", &v15, 0x20u);
  }

  if (!v4)
  {
    [BRCDocumentItem updateContentsCKInfoAndDeviceIDFromServerItem:];
  }

  if (([v4 isDocument] & 1) == 0)
  {
    [BRCDocumentItem updateContentsCKInfoAndDeviceIDFromServerItem:];
  }

  if ([(BRCDocumentItem *)self isDocument])
  {
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [BRCDocumentItem updateContentsCKInfoAndDeviceIDFromServerItem:];
    if (v6)
    {
      goto LABEL_9;
    }
  }

  [BRCDocumentItem updateContentsCKInfoAndDeviceIDFromServerItem:];
LABEL_9:
  if ([(BRCDocumentItem *)self isDocumentBeingCopiedToNewZone])
  {
    v9 = [(BRCVersion *)self->_currentVersion ckInfo];
    v10 = [v9 etagBeforeCrossZoneMove];
    [v6 setEtagBeforeCrossZoneMove:v10];
  }

  [(BRCVersion *)self->_currentVersion setCkInfo:v6];
  v11 = [v4 latestVersion];
  v12 = [v11 lastEditorDeviceOrUserRowID];
  [(BRCVersion *)self->_currentVersion setLastEditorDeviceOrUserRowID:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateVersionMetadataFromServerItem:(id)a3 preventVersionDiffs:(BOOL)a4
{
  v4 = a4;
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (([v6 isDocument] & 1) == 0)
  {
    [BRCDocumentItem updateVersionMetadataFromServerItem:preventVersionDiffs:];
  }

  v7 = [v6 latestVersion];

  if (!v7)
  {
    [BRCDocumentItem updateVersionMetadataFromServerItem:preventVersionDiffs:];
  }

  v8 = [v6 latestVersion];
  v9 = [v8 diffAgainst:self->_currentVersion];

  if ((v9 & 0x100000) != 0)
  {
    v13 = brc_bread_crumbs();
    isa = brc_default_log();
    if (os_log_type_enabled(isa, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 latestVersion];
      currentVersion = self->_currentVersion;
      v30 = 134218754;
      v31 = v9;
      v32 = 2112;
      v33 = v15;
      v34 = 2112;
      v35 = currentVersion;
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&dword_223E7A000, isa, OS_LOG_TYPE_DEFAULT, "[WARNING] We think this is a meta only update but it isn't (%llu)!\n latest-version: %@\n current-verions: %@%@", &v30, 0x2Au);
    }

    goto LABEL_25;
  }

  v10 = [(BRCVersion *)self->_currentVersion editedSinceShared];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = 1;
    goto LABEL_19;
  }

  if ([(BRCLocalItem *)self isSharedToMe]|| [(BRCLocalItem *)self isSharedByMe])
  {
    v17 = [(BRCVersion *)self->_currentVersion ckInfo];
    v18 = [v17 etag];
    v12 = v18 != 0;
    if (!v18)
    {
LABEL_17:

      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(BRCDocumentItem *)self diffAgainstServerItem:v6]& 0x1A0000;

    if (v20)
    {
      v17 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [BRCDocumentItem updateVersionMetadataFromServerItem:? preventVersionDiffs:?];
      }

      goto LABEL_17;
    }
  }

  v12 = 0;
LABEL_19:
  v13 = [(BRCLocalVersion *)self->_currentVersion uploadError];
  v22 = [BRCLocalVersion alloc];
  v23 = [v6 latestVersion];
  v24 = [(BRCLocalVersion *)v22 initWithServerVersion:v23];
  v25 = self->_currentVersion;
  self->_currentVersion = v24;

  if (v12)
  {
    [(BRCVersion *)self->_currentVersion setEditedSinceShared:MEMORY[0x277CBEC38]];
  }

  if ([v13 br_isCloudDocsErrorCode:43])
  {
    [(BRCLocalVersion *)self->_currentVersion setUploadError:v13];
  }

  if (v4)
  {
    v26 = self->_currentVersion;
    orig = self->super._orig;
    v28 = v26;
    isa = orig[1].super.isa;
    orig[1].super.isa = v28;
LABEL_25:
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)markItemForgottenByServer
{
  v3.receiver = self;
  v3.super_class = BRCDocumentItem;
  [(BRCLocalItem *)&v3 markItemForgottenByServer];
  [(BRCVersion *)self->_currentVersion setCkInfo:0];
}

- (void)appDidResolveConflictLoserWithEtag:(id)a3
{
  v4 = a3;
  v5 = [(BRCPQLConnection *)self->super._db isBatchSuspended];
  db = self->super._db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__BRCDocumentItem_appDidResolveConflictLoserWithEtag___block_invoke;
  v9[3] = &unk_278500FA8;
  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 20;
  }

  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(BRCPQLConnection *)db performWithFlags:v7 action:v9];
}

uint64_t __54__BRCDocumentItem_appDidResolveConflictLoserWithEtag___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 208) conflictLoserEtags];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __54__BRCDocumentItem_appDidResolveConflictLoserWithEtag___block_invoke_cold_2((a1 + 40));
    }

    [*(a1 + 32) addResolvedConflictLoserEtag:*(a1 + 40)];
    if (([*(a1 + 32) needsReading] & 1) == 0)
    {
      [*(a1 + 32) markNeedsReading];
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __54__BRCDocumentItem_appDidResolveConflictLoserWithEtag___block_invoke_cold_1((a1 + 40));
    }
  }

  return [*(a1 + 32) saveToDB];
}

- (void)markDead
{
  v9.receiver = self;
  v9.super_class = BRCDocumentItem;
  [(BRCLocalItem *)&v9 markDead];
  if ([(BRCDocumentItem *)self isDocumentBeingCopiedToNewZone])
  {
    [(BRCDocumentItem *)self _insertTombstoneForPreviousZoneGlobalID];
  }

  v3 = [[BRCLocalVersion alloc] initForPackage:[(BRCVersion *)self->_currentVersion isPackage]];
  v4 = [(BRCVersion *)self->_currentVersion originalPOSIXName];
  [(BRCVersion *)v3 setOriginalPOSIXName:v4];

  v5 = [(BRCVersion *)self->_currentVersion ckInfo];
  [(BRCVersion *)v3 setCkInfo:v5];

  currentVersion = self->_currentVersion;
  self->_currentVersion = v3;
  v7 = v3;

  v8 = [(BRCAccountSession *)self->super._session fsDownloader];

  [v8 cancelAndCleanupItemDownloads:self];
}

- (void)markNeedsReading
{
  if ([(BRCDocumentItem *)self isDocumentBeingCopiedToNewZone])
  {
    [(BRCDocumentItem *)self clearVersionSignatures:0 isPackage:[(BRCVersion *)self->_currentVersion isPackage]];
    [(BRCDocumentItem *)self _insertTombstoneForPreviousZoneGlobalID];
  }

  [(BRCDocumentItem *)self markNeedsUploadOrSyncingUp];
}

- (void)markLatestSyncRequestRejectedInZone:(id)a3
{
  v4 = a3;
  localDiffs = self->super._localDiffs;
  if (([(BRCLocalItem *)self metadataSyncUpMask:0]& localDiffs) == 0)
  {
    [(BRCLocalVersion *)self->_currentVersion setUploadedAssets:0];
  }

  v10.receiver = self;
  v10.super_class = BRCDocumentItem;
  [(BRCLocalItem *)&v10 markLatestSyncRequestRejectedInZone:v4];
  if (self->super._syncUpState != 1)
  {
    [(BRCDocumentItem *)self markForceUpload];
  }

  if ([(BRCDocumentItem *)self isDocumentBeingCopiedToNewZone])
  {
    v6 = [(BRCClientZone *)self->super._clientZone dbRowID];
    v7 = [v4 br_isEqualToNumber:v6];

    if (v7)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [BRCDocumentItem markLatestSyncRequestRejectedInZone:];
      }

      [(BRCDocumentItem *)self _insertTombstoneForPreviousZoneGlobalID];
    }
  }
}

- (BOOL)markLatestSyncRequestAcknowledgedInZone:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BRCDocumentItem;
  v5 = [(BRCLocalItem *)&v12 markLatestSyncRequestAcknowledgedInZone:v4];
  if (v5)
  {
    if (([(BRCLocalItem *)self localDiffs]& 0x800000) == 0)
    {
      resolvedConflictLoserEtags = self->_resolvedConflictLoserEtags;
      self->_resolvedConflictLoserEtags = 0;
    }

    if ((self->super._localDiffs & 0x1FE0000) == 0)
    {
      [(BRCLocalVersion *)self->_currentVersion setUploadedAssets:0];
    }

    if ([(BRCDocumentItem *)self isDocumentBeingCopiedToNewZone])
    {
      v7 = [(BRCClientZone *)self->super._clientZone dbRowID];
      v8 = [v4 br_isEqualToNumber:v7];

      if (v8)
      {
        v9 = brc_bread_crumbs();
        v10 = brc_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [BRCDocumentItem markLatestSyncRequestRejectedInZone:];
        }

        [(BRCDocumentItem *)self _insertTombstoneForPreviousZoneGlobalID];
      }
    }
  }

  return v5;
}

- (void)handleUnknownItemError
{
  [(BRCVersion *)self->_currentVersion setCkInfo:0];
  v3.receiver = self;
  v3.super_class = BRCDocumentItem;
  [(BRCLocalItem *)&v3 handleUnknownItemError];
}

- (void)markForceUpload
{
  v15 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  __brc_create_section(0, "[BRCDocumentItem markForceUpload]", 921, 0, v8);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = v8[0];
    v7 = [(BRCLocalItem *)self itemID];
    *buf = 134218498;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx marking force upload: %@%@", buf, 0x20u);
  }

  if ([(BRCDocumentItem *)self hasFileIDForUpload]|| [(BRCDocumentItem *)self isDocumentBeingCopiedToNewZone])
  {
    [(BRCDocumentItem *)self clearVersionSignatures:3 isPackage:[(BRCVersion *)self->_currentVersion isPackage]];
    [(BRCDocumentItem *)self markNeedsUploadOrSyncingUp];
  }

  else
  {
    [(BRCDocumentItem *)self reIngestFromFileProvider];
  }

  __brc_leave_section(v8);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)markForceNeedsSyncUp
{
  v16 = *MEMORY[0x277D85DE8];
  memset(v9, 0, sizeof(v9));
  __brc_create_section(0, "[BRCDocumentItem markForceNeedsSyncUp]", 934, 0, v9);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = v9[0];
    v7 = [(BRCLocalItem *)self itemID];
    *buf = 134218498;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx marking force needs-syncup: %@%@", buf, 0x20u);
  }

  self->super._localDiffs |= 0x20000uLL;
  v8.receiver = self;
  v8.super_class = BRCDocumentItem;
  [(BRCLocalItem *)&v8 markForceNeedsSyncUp];
  __brc_leave_section(v9);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)markUploadedWithRecord:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(v47, 0, sizeof(v47));
  __brc_create_section(0, "[BRCDocumentItem markUploadedWithRecord:]", 944, 0, v47);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v30 = v47[0];
    v31 = [(BRCLocalItem *)self itemID];
    *buf = 134218498;
    v49 = v30;
    v50 = 2112;
    v51 = v31;
    v52 = 2112;
    v53 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx marking uploaded %@%@", buf, 0x20u);
  }

  if (self->super._syncUpState == 3)
  {
    if (!v4)
    {
      v34 = brc_bread_crumbs();
      v35 = brc_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        [BRCDocumentItem markUploadedWithRecord:];
      }
    }

    v7 = [(BRCLocalItem *)self isFinderBookmark];
    v8 = kBRRecordKeyFinderBookmarkContent;
    if (!v7)
    {
      v8 = kBRRecordKeyFileContent;
    }

    v9 = [v4 objectForKeyedSubscript:*v8];
    v10 = [v4 objectForKeyedSubscript:@"pkgSignature"];
    v11 = [v4 objectForKeyedSubscript:@"thumb1024"];
    if (v9)
    {
      v12 = [v9 signature];
    }

    else
    {
      v12 = v10;
    }

    v13 = v12;
    v46 = [v11 signature];
    if (v9)
    {
      if (self->_currentVersion)
      {
        if ([v9 isRereferencedAssetUpload])
        {
          goto LABEL_14;
        }

        v14 = [v9 size];
        if (v14 == [(BRCVersion *)self->_currentVersion size])
        {
          goto LABEL_14;
        }

        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          v32 = [v9 size];
          v33 = [(BRCVersion *)self->_currentVersion size];
          *buf = 134218498;
          v49 = v32;
          v50 = 2048;
          v51 = v33;
          v52 = 2112;
          v53 = v26;
          _os_log_fault_impl(&dword_223E7A000, v27, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: CK disagrees on the item size: %lld != %lld%@", buf, 0x20u);
        }
      }

      else
      {
        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          v28 = [(BRCLocalItem *)self itemID];
          [(BRCDocumentItem *)v28 markUploadedWithRecord:v26, buf, v27];
        }
      }

      [(BRCDocumentItem *)self markNeedsReading];
LABEL_36:

      goto LABEL_37;
    }

LABEL_14:
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v49 = self;
      v50 = 2112;
      v51 = v13;
      v52 = 2112;
      v53 = v15;
      _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] marking uploaded %@, signature:%@%@", buf, 0x20u);
    }

    if ((v9 == 0) != (v10 != 0))
    {
      v36 = brc_bread_crumbs();
      v37 = brc_default_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        [BRCDocumentItem markUploadedWithRecord:];
      }
    }

    if (!v13)
    {
      v38 = brc_bread_crumbs();
      v39 = brc_default_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        [BRCDocumentItem markUploadedWithRecord:];
      }
    }

    currentVersion = self->_currentVersion;
    if (!currentVersion)
    {
      v40 = brc_bread_crumbs();
      v41 = brc_default_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
      {
        [BRCDocumentItem markUploadedWithRecord:];
      }

      currentVersion = self->_currentVersion;
    }

    v18 = [(BRCVersion *)currentVersion contentSignature];
    if (([v18 brc_signatureIsPendingPlaceHolder] & 1) == 0)
    {
      v19 = [(BRCDocumentItem *)self isDocumentBeingCopiedToNewZone];

      if (v19)
      {
LABEL_22:
        v20 = [(BRCVersion *)self->_currentVersion thumbnailSignature];
        if (([v20 brc_signatureIsPendingPlaceHolder] & 1) == 0)
        {
          v21 = [(BRCDocumentItem *)self isDocumentBeingCopiedToNewZone];

          if (v21)
          {
            goto LABEL_25;
          }

          v20 = brc_bread_crumbs();
          v45 = brc_default_log();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
          {
            [BRCDocumentItem markUploadedWithRecord:];
          }
        }

LABEL_25:
        v22 = [(BRCLocalVersion *)self->_currentVersion uploadedAssets];
        v23 = v22 == 0;

        if (!v23)
        {
          v42 = brc_bread_crumbs();
          v43 = brc_default_log();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
          {
            [BRCDocumentItem markUploadedWithRecord:];
          }
        }

        [(BRCLocalVersion *)self->_currentVersion setUploadError:0];
        [(BRCVersion *)self->_currentVersion setContentSignature:v13];
        [(BRCLocalVersion *)self->_currentVersion setUploadedAssets:v4];
        [(BRCVersion *)self->_currentVersion setThumbnailSignature:v46];
        -[BRCVersion setThumbnailSize:](self->_currentVersion, "setThumbnailSize:", [v11 size]);
        [(BRCLocalItem *)self _markNeedsSyncingUp];
        if (![(BRCLocalItem *)self needsSyncUp])
        {
          [(BRCLocalVersion *)self->_currentVersion setUploadedAssets:0];
        }

        v24 = brc_bread_crumbs();
        v25 = brc_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [BRCDocumentItem markUploadedWithRecord:];
        }

        goto LABEL_36;
      }

      v18 = brc_bread_crumbs();
      v44 = brc_default_log();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        [BRCDocumentItem markUploadedWithRecord:];
      }
    }

    goto LABEL_22;
  }

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    [BRCDocumentItem markUploadedWithRecord:];
  }

LABEL_37:

  __brc_leave_section(v47);
  v29 = *MEMORY[0x277D85DE8];
}

- (void)markNeedsUploadOrSyncingUp
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Uploading document being copied into a new zone which is missing an upload asset%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)markOverQuotaWithError:(id)a3
{
  currentVersion = self->_currentVersion;
  v5 = a3;
  [(BRCLocalVersion *)currentVersion _clearSignatures:3 isPackage:[(BRCVersion *)currentVersion isPackage]];
  self->super._syncUpState = 3;
  [(BRCLocalVersion *)self->_currentVersion setUploadError:v5];
}

- (void)_markAsDeadTombstoneWithPreviousGlobalID
{
  v3 = [(BRCLocalVersion *)self->_currentVersion previousItemGlobalID];
  [(BRCLocalVersion *)self->_currentVersion setPreviousItemGlobalID:0];
  v4 = [(BRCVersion *)self->_currentVersion ckInfo];
  [v4 revertEtagsForOldZoneTombstone];

  v5.receiver = self;
  v5.super_class = BRCDocumentItem;
  [(BRCLocalItem *)&v5 _markAsDeadTombstoneWithPreviousGlobalID:v3];
}

- (void)_insertTombstoneForPreviousZoneGlobalID
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

- (BOOL)_isInFlightSyncContent
{
  v2 = self;
  v3 = [(BRCClientZone *)self->super._clientZone dbRowID];
  LOBYTE(v2) = ([(BRCLocalItem *)v2 inFlightSyncUpDiffsInZoneRowID:v3]& 0x180000) != 0;

  return v2;
}

- (BOOL)supportsServerSideAssetCopies
{
  v30 = *MEMORY[0x277D85DE8];
  if ((self->super._localDiffs & 0x180000) == 0)
  {
    v3 = [(BRCVersion *)self->_currentVersion contentSignature];
    if ([v3 brc_signatureIsValid])
    {
      v4 = [(BRCDocumentItem *)self _isInFlightSyncContent];

      if (!v4)
      {
        v5 = [(BRCClientZone *)self->super._clientZone mangledID];
        v6 = [BRCUserDefaults defaultsForMangledID:v5];

        LOBYTE(v5) = [v6 supportsServerSideAssetCopies];
        v7 = *MEMORY[0x277D85DE8];
        return v5;
      }
    }

    else
    {
    }
  }

  localDiffs = self->super._localDiffs;
  v10 = [(BRCVersion *)self->_currentVersion contentSignature];

  v11 = [(BRCVersion *)self->_currentVersion contentSignature];
  v12 = [v11 brc_signatureIsValid];

  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = v10 != 0;
    v17 = [MEMORY[0x277CCABB0] numberWithBool:(localDiffs & 0x180000) != 0];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    v19 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    v20 = 138413314;
    v21 = v17;
    v22 = 2112;
    v23 = v18;
    v24 = 2112;
    v25 = v19;
    v26 = 2112;
    v27 = self;
    v28 = 2112;
    v29 = v13;
    _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] skip supportsServerSideAssetCopies: has local diffs [%@], content signature [%@] valid [%@] --> NO\n item: %@%@", &v20, 0x34u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)markCrossZoneMovedForServerAssetCopyWithParentItem:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [BRCDocumentItem markCrossZoneMovedForServerAssetCopyWithParentItem:];
  }

  if (![(BRCDocumentItem *)self supportsServerSideAssetCopies])
  {
    [BRCDocumentItem markCrossZoneMovedForServerAssetCopyWithParentItem:];
  }

  v5 = [(BRCLocalItem *)self itemGlobalID];
  v6 = [v4 itemGlobalID];
  session = self->super._session;
  v8 = [v6 zoneRowID];
  v9 = [(BRCAccountSession *)session serverZoneByRowID:v8];
  v10 = [v9 clientZone];

  v11 = [(BRCLocalVersion *)self->_currentVersion previousItemGlobalID];
  v12 = [v6 itemID];
  [(BRCStatInfo *)self->super._st setParentID:v12];

  v13 = [v6 zoneRowID];
  parentZoneRowID = self->super._parentZoneRowID;
  self->super._parentZoneRowID = v13;

  objc_storeStrong(&self->super._clientZone, v10);
  self->super._serverZone = [v10 serverZone];
  self->super._orig->_syncUpState = 0;
  v47 = v5;
  if (v11)
  {
    v15 = [v11 zoneRowID];
    v16 = [v10 dbRowID];
    v17 = [v15 br_isEqualToNumber:v16];

    if (v17)
    {
      v18 = [v11 itemID];
      v19 = [v10 serverItemByItemID:v18];

      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v49 = self;
        v50 = 2112;
        v51 = v19;
        v52 = 2112;
        v53 = v20;
        _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] Item moved back into its original zone %@ si: %@%@", buf, 0x20u);
      }

      [(BRCLocalVersion *)self->_currentVersion setPreviousItemGlobalID:0];
      v22 = [(BRCLocalItem *)self inFlightSyncUpDiffs];
      if (v22)
      {
        v46 = v4;
        v23 = brc_bread_crumbs();
        v24 = brc_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = v23;
          _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEFAULT, "[WARNING] Item has in-flight diffs in the current zone. We need to be sure to insert a tombstone%@", buf, 0xCu);
        }

        v25 = [(BRCDocumentItem *)self copy];
        v26 = [v25 currentVersion];
        v27 = [v26 ckInfo];
        [v27 clearCrossZoneMoveEtag];

        v28 = [v25 st];
        v29 = [v28 ckInfo];
        [v29 clearCrossZoneMoveEtag];

        v30 = [(BRCLocalItem *)self->super._orig itemGlobalID];
        [v25 _restorePreviousGlobalID:v30];

        [v25 markDead];
        [v25 markNeedsUploadOrSyncingUp];
        v4 = v46;
      }

      else
      {
        v25 = 0;
      }

      v41 = [(BRCStatInfo *)self->super._st ckInfo];
      [v41 revertEtagsForOldZoneTombstone];

      v42 = [(BRCVersion *)self->_currentVersion ckInfo];
      [v42 revertEtagsForOldZoneTombstone];

      v43 = [v11 itemID];
      [(BRCLocalItem *)self learnItemID:v43 serverItem:v19];

      [(BRCDocumentItem *)self markNeedsUploadOrSyncingUp];
      v39 = v25;
      if (!v22)
      {
        goto LABEL_23;
      }

LABEL_22:
      [(BRCLocalItem *)self saveToDB];
      [v25 saveToDB];
      v39 = v25;
      goto LABEL_23;
    }

    v34 = brc_bread_crumbs();
    v35 = brc_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v49 = self;
      v50 = 2112;
      v51 = v34;
      _os_log_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEFAULT, "[WARNING] Item already has a previous zone so ignore the existing zone for %@%@", buf, 0x16u);
    }
  }

  else
  {
    v31 = brc_bread_crumbs();
    v32 = brc_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v49 = self;
      v50 = 2112;
      v51 = v10;
      v52 = 2112;
      v53 = v31;
      _os_log_impl(&dword_223E7A000, v32, OS_LOG_TYPE_DEFAULT, "[WARNING] Item %@ moved into new zone which supports server side asset copies %@%@", buf, 0x20u);
    }

    [(BRCLocalVersion *)self->_currentVersion setPreviousItemGlobalID:v5];
    v33 = [(BRCStatInfo *)self->super._st ckInfo];
    [v33 markCrossZoneMoved];

    v34 = [(BRCVersion *)self->_currentVersion ckInfo];
    [v34 markCrossZoneMoved];
  }

  v36 = objc_opt_new();
  [(BRCLocalItem *)self learnItemID:v36 serverItem:0];

  self->super._sharingOptions = [v4 sharingOptions] & 0x78;
  v37 = brc_bread_crumbs();
  v38 = brc_default_log();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    sharingOptions = self->super._sharingOptions;
    v45 = BRCPrettyPrintBitmap();
    *buf = 138412802;
    v49 = v45;
    v50 = 2112;
    v51 = v4;
    v52 = 2112;
    v53 = v37;
    _os_log_debug_impl(&dword_223E7A000, v38, OS_LOG_TYPE_DEBUG, "[DEBUG] learning sharing options %@ from parent %@%@", buf, 0x20u);
  }

  [(BRCDocumentItem *)self markNeedsUploadOrSyncingUp];
  v25 = 0;
  v39 = 0;
  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_23:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_crossZoneMoveToParent:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BRCLocalItem *)self clientZone];
  v6 = [v5 enhancedDrivePrivacyEnabled];
  v7 = [v4 clientZone];
  v8 = v6 ^ [v7 enhancedDrivePrivacyEnabled];

  if (![(BRCDocumentItem *)self supportsServerSideAssetCopies]|| (v8 & 1) != 0)
  {
    if ((self->super._localDiffs & 0x180000) == 0 && ![(BRCDocumentItem *)self _isInFlightSyncContent])
    {
      v9 = [(BRCVersion *)self->_currentVersion contentSignature];
      v10 = [v9 brc_signatureIsValid];

      if (!(v8 & 1 | ((v10 & 1) == 0)))
      {
        v11 = brc_bread_crumbs();
        v12 = brc_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          [BRCDocumentItem _crossZoneMoveToParent:];
        }
      }
    }

    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BRCDocumentItem _crossZoneMoveToParent:];
    }

    v15 = [(BRCAccountSession *)self->super._session globalProgress];
    [v15 didDeleteDocument:self];

    v16 = [(BRCDocumentItem *)self copy];
    [v16 markDead];
    v17 = [v16 itemGlobalID];
    [v16 _restorePreviousGlobalID:v17];

    [v16 markNeedsUploadOrSyncingUp];
    v18 = [v4 itemGlobalID];
    session = self->super._session;
    v20 = [v18 zoneRowID];
    v21 = [(BRCAccountSession *)session serverZoneByRowID:v20];
    v22 = [v21 clientZone];

    v23 = [v18 itemID];
    [(BRCStatInfo *)self->super._st setParentID:v23];

    v24 = [v18 zoneRowID];
    parentZoneRowID = self->super._parentZoneRowID;
    self->super._parentZoneRowID = v24;

    objc_storeStrong(&self->super._clientZone, v22);
    self->super._serverZone = [v22 serverZone];
    self->super._orig->_syncUpState = 0;
    v26 = objc_opt_new();
    [(BRCLocalItem *)self learnItemID:v26 serverItem:0];

    [(BRCDocumentItem *)self markItemForgottenByServer];
    self->super._sharingOptions = [v4 sharingOptions] & 0x78;
    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sharingOptions = self->super._sharingOptions;
      v33 = BRCPrettyPrintBitmap();
      *buf = 138412802;
      v37 = v33;
      v38 = 2112;
      v39 = v4;
      v40 = 2112;
      v41 = v27;
      _os_log_debug_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] learning sharing options %@ from parent %@%@", buf, 0x20u);
    }

    [(BRCDocumentItem *)self markForceUpload];
    db = self->super._db;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __42__BRCDocumentItem__crossZoneMoveToParent___block_invoke;
    v34[3] = &unk_278500FA8;
    v34[4] = self;
    v35 = v16;
    v30 = v16;
    [(BRCPQLConnection *)db groupInTransaction:v34];
  }

  else
  {
    [(BRCDocumentItem *)self markCrossZoneMovedForServerAssetCopyWithParentItem:v4];
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __42__BRCDocumentItem__crossZoneMoveToParent___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) saveToDB];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 saveToDB];
  }

  return result;
}

- (BOOL)contentRecordNeedsForceAllFieldsWhenDeadInServerTruth:(BOOL)a3
{
  if (a3 || (self->super._localDiffs & 0x900000) != 0)
  {
    return 1;
  }

  v5 = [(BRCVersion *)self->_currentVersion ckInfo];
  v6 = [v5 etag];
  v3 = v6 == 0;

  return v3;
}

- (void)addResolvedConflictLoserEtag:(id)a3
{
  resolvedConflictLoserEtags = self->_resolvedConflictLoserEtags;
  if (resolvedConflictLoserEtags)
  {
    v9 = a3;
    [(NSMutableSet *)resolvedConflictLoserEtags addObject:v9];
    v4 = v9;
  }

  else
  {
    v6 = MEMORY[0x277CBEB58];
    v7 = a3;
    v8 = [[v6 alloc] initWithObjects:{v7, 0}];

    v4 = self->_resolvedConflictLoserEtags;
    self->_resolvedConflictLoserEtags = v8;
  }
}

- (void)learnContentVersionFromVersionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BRCDocumentItem *)self currentVersion];
  [v5 _learnVersionFromStoredLocalVersionIdentifier:v4];

  self->super._localDiffs |= 0x400000000000000uLL;
}

- (void)_updateUploadJobIfNeededWithDiffs:(unint64_t)a3
{
  if (self->super._syncUpState == 3)
  {
    if ([(BRCLocalVersion *)self->_currentVersion shouldRecreateUploadJobGivenDiffs:a3]|| (clientZone = self->super._clientZone, [(BRCLocalItem *)self->super._orig clientZone], v6 = objc_claimAutoreleasedReturnValue(), LOBYTE(clientZone) = [(BRCClientZone *)clientZone isEqualToClientZone:v6], v6, (clientZone & 1) == 0))
    {
      v7 = [(BRCAccountSession *)self->super._session fsUploader];
      [v7 cancelAndCleanupItemUpload:self];

LABEL_7:
      memset(v23, 0, sizeof(v23));
      __brc_create_section(0, "[BRCDocumentItem _updateUploadJobIfNeededWithDiffs:]", 1330, 0, v23);
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [BRCDocumentItem _updateUploadJobIfNeededWithDiffs:v23];
      }

      if (([(BRCPQLConnection *)self->super._db isBatchSuspended]& 1) == 0)
      {
        v19 = brc_bread_crumbs();
        v20 = brc_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          [BRCDocumentItem _updateUploadJobIfNeededWithDiffs:];
        }
      }

      v10 = [(BRCLocalItem *)self serverZone];
      v11 = [v10 dbRowID];
      v12 = [(BRCLocalItem *)self inFlightSyncUpDiffsInZoneRowID:v11];

      syncUpState = self->super._syncUpState;
      if (syncUpState == 3)
      {
        if ([(BRCLocalItem *)self isDead])
        {
          v21 = brc_bread_crumbs();
          v22 = brc_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            [BRCDocumentItem _updateUploadJobIfNeededWithDiffs:];
          }
        }

        [(BRCAccountSession *)self->super._session fsUploader];
        if (v12)
          generationIDForUpload = {;
          [generationIDForUpload setState:31 forItem:self];
        }

        else
          generationIDForUpload = {;
          [generationIDForUpload uploadItem:self];
        }
      }

      else if (syncUpState == 4)
      {
        generationIDForUpload = [(BRCAccountSession *)self->super._session fsUploader];
        [generationIDForUpload setState:31 forItem:self];
      }

      else
      {
        v15 = [(BRCAccountSession *)self->super._session fsUploader];
        [v15 cancelAndCleanupItemUpload:self];

        if (!self->_fileIDForUpload || [(BRCLocalItem *)self isMigratingToFPFS])
        {
          goto LABEL_21;
        }

        v16 = [(BRCAccountSession *)self->super._session stageRegistry];
        v17 = [(BRCLocalItem *)self liveStageFilename];
        [v16 unlinkLiveStageFilename:v17];

        fileIDForUpload = self->_fileIDForUpload;
        self->_fileIDForUpload = 0;

        generationIDForUpload = self->_generationIDForUpload;
        self->_generationIDForUpload = 0;
      }

LABEL_21:
      __brc_leave_section(v23);
      return;
    }
  }

  if ((a3 & 0x20000000000000) != 0)
  {
    goto LABEL_7;
  }
}

- (BOOL)_nukePackageItemsFromDB:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 execute:{@"DELETE FROM client_pkg_upload_items WHERE item_rowid = %llu", self->super._dbRowID}];
  if (v5 && [v4 changes] >= 1)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v4 changes];
      dbRowID = self->super._dbRowID;
      *buf = 134218498;
      v13 = v10;
      v14 = 2048;
      v15 = dbRowID;
      v16 = 2112;
      v17 = v6;
      _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] removed %lld items in pkg [%llu]%@", buf, 0x20u);
    }

    if (([(BRCPQLConnection *)self->super._db isBatchSuspended]& 1) == 0)
    {
      [BRCDocumentItem _nukePackageItemsFromDB:];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_updateRecursivePropertiesInDB:(id)a3 dbRowID:(unint64_t)a4 diffs:(unint64_t)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (([v7 isBatchSuspended] & 1) == 0)
  {
    [BRCDocumentItem _updateRecursivePropertiesInDB:dbRowID:diffs:];
  }

  v8 = [(BRCLocalItem *)self->super._orig asDocument];
  if ((self->super._sharingOptions & 4) != 0 || ([(BRCLocalItem *)self->super._orig sharingOptions]& 4) != 0)
  {
    v9 = 1073741826;
  }

  else
  {
    v9 = 2;
  }

  if (((v9 & 0xFFFFFFFFFFFFLL | 0x22000000000000) & a5) != 0 || (-[BRCLocalItem clientZone](self->super._orig, "clientZone"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqualToClientZone:self->super._clientZone], v10, (v11 & 1) == 0))
  {
    if ([(BRCLocalItem *)self needsUpload])
    {
      v12 = [(BRCDocumentItem *)self currentVersion];
      v13 = [v12 size];

      v14 = 1;
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v15 = [(BRCLocalItem *)self needsSyncUp];
    v16 = [(BRCLocalItem *)self->super._orig needsUpload];
    if (v16 != [(BRCLocalItem *)self needsUpload]&& [(BRCLocalItem *)self->super._orig needsUpload]&& [(BRCLocalItem *)self needsSyncUp])
    {
      v17 = [v8 currentVersion];
      v18 = [v17 size];
    }

    else
    {
      v18 = 0;
    }

    v19 = [(BRCLocalItem *)self->super._orig needsSyncUp];
    if (v19 == [(BRCLocalItem *)self needsSyncUp])
    {
      v20 = 0;
    }

    else
    {
      v20 = [(BRCLocalItem *)self->super._orig needsSyncUp];
    }

    v49 = v15;
    v21 = [(BRCDocumentItem *)self uploadError];
    v22 = [v21 brc_isCloudKitOutOfQuota];

    v23 = v22;
    if ((self->super._sharingOptions & 4) != 0)
    {
      v24 = [(BRCServerZone *)self->super._serverZone isSharedZone];
      v46 = !v24;
      v47 = v24;
    }

    else
    {
      v46 = 0;
      v47 = 0;
    }

    v50 = v8;
    v43 = [(BRCLocalItem *)self isAlmostDead];
    if (v13)
    {
      v25 = 1;
    }

    else
    {
      v25 = v14;
    }

    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      itemID = self->super._itemID;
      *buf = 138414338;
      v53 = itemID;
      v54 = 2048;
      v55 = v23;
      v56 = 2048;
      v57 = v25;
      v58 = 2048;
      v59 = v13;
      v60 = 2048;
      v61 = v18 != 0;
      v62 = 2048;
      v63 = v18;
      v64 = 2048;
      v65 = v49;
      v66 = 2048;
      v67 = v20;
      v68 = 2112;
      v69 = v26;
      _os_log_debug_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] updating recursive properties starting from document %@:\n quota:    %lld\n upload:   {needs:(count:%lld size:%lld) done:(count:%lld size:%lld)}\n sync-up:  {needs:%lld done:%lld}\n%@", buf, 0x5Cu);
    }

    v44 = v25;
    v45 = v18 != 0;
    v48 = v18;
    v28 = v13;

    v29 = [(BRCStatInfo *)self->super._st type];
    if (v29 == 8 || v29 == 2)
    {
      v31 = 1;
    }

    else
    {
      v31 = v29;
    }

    if (v31 == 7)
    {
      v32 = 6;
    }

    else
    {
      v32 = v31;
    }

    v33 = [(BRCStatInfo *)self->super._st parentID];
    v34 = self->super._itemID;
    v35 = [(BRCClientZone *)self->super._clientZone dbRowID];
    v36 = [(BRCLocalItem *)self parentClientZone];
    v37 = [v36 dbRowID];
    v38 = [v7 execute:{@"INSERT OR IGNORE INTO item_recursive_properties (item_rowid, item_parent_id, item_id, zone_rowid, item_type, item_parent_zone_rowid) VALUES  (%lld, %@, %@, %@, %d, %@)", a4, v33, v34, v35, v32, v37}];

    if ((v38 & 1) == 0)
    {
      v39 = brc_bread_crumbs();
      v40 = brc_default_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        [BRCDocumentItem _updateRecursivePropertiesInDB:v7 dbRowID:? diffs:?];
      }

      v8 = v50;
      goto LABEL_44;
    }

    v8 = v50;
    if (([v7 execute:{@"UPDATE item_recursive_properties SET  dir_faults_count = %lld, uploaded_size = %lld, needs_upload_size = %lld, uploaded_count = %lld, needs_upload_count = %lld, synced_up_count = %lld, needs_sync_up_count = %lld, over_quota_count = %lld, shared_by_me_count = %lld, shared_to_me_count = %lld, needs_delete_doc_count = %lld  WHERE item_rowid = %llu ", 0, v48, v28, v45, v44, v20, v49, v23, v46, v47, v43, a4}] & 1) == 0)
    {
      v39 = brc_bread_crumbs();
      v40 = brc_default_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        [BRCDocumentItem _updateRecursivePropertiesInDB:v7 dbRowID:? diffs:?];
      }

LABEL_44:
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (BOOL)_insertInDB:(id)a3 dbRowID:(unint64_t)a4
{
  v74 = a3;
  v77 = [(BRCClientZone *)self->super._clientZone dbRowID];
  itemID = self->super._itemID;
  ownerKey = self->super._ownerKey;
  sharingOptions = self->super._sharingOptions;
  sideCarCKInfo = self->super._sideCarCKInfo;
  parentZoneRowID = self->super._parentZoneRowID;
  localDiffs = self->super._localDiffs;
  notifsRank = self->super._notifsRank;
  syncUpState = self->super._syncUpState;
  v56 = [(BRCLocalItem *)self appLibrary];
  v76 = [v56 dbRowID];
  minimumSupportedOSRowID = self->super._minimumSupportedOSRowID;
  isUserVisible = self->super._isUserVisible;
  v78 = [(BRCStatInfo *)self->super._st ckInfo];
  v44 = [(BRCStatInfo *)self->super._st state];
  v43 = [(BRCStatInfo *)self->super._st type];
  v42 = [(BRCStatInfo *)self->super._st mode];
  v41 = [(BRCStatInfo *)self->super._st birthtime];
  v40 = [(BRCStatInfo *)self->super._st lastUsedTime];
  v39 = [(BRCStatInfo *)self->super._st favoriteRank];
  v75 = [(BRCStatInfo *)self->super._st parentID];
  st = self->super._st;
  logicalName = st->super._logicalName;
  if (!logicalName)
  {
    logicalName = &stru_2837504F0;
  }

  v38 = logicalName;
  v37 = [(BRCStatInfo *)st isHiddenExt];
  v67 = [(BRCStatInfo *)self->super._st finderTags];
  v72 = [(BRCStatInfo *)self->super._st xattrSignature];
  v73 = [(BRCStatInfo *)self->super._st trashPutBackPath];
  v71 = [(BRCStatInfo *)self->super._st trashPutBackParentID];
  v66 = [(BRCStatInfo *)self->super._st aliasTarget];
  v70 = [(BRCStatInfo *)self->super._st creatorRowID];
  v69 = [(BRCLocalStatInfo *)self->super._st processingStamp];
  v68 = [(BRCLocalStatInfo *)self->super._st rawBouncedLogicalName];
  v35 = [(BRCLocalStatInfo *)self->super._st itemScope];
  v34 = [(BRCLocalStatInfo *)self->super._st localChangeCount];
  v61 = [(BRCLocalStatInfo *)self->super._st oldVersionIdentifier];
  v64 = [(BRCLocalStatInfo *)self->super._st fpCreationItemIdentifier];
  v65 = [(BRCVersion *)self->_currentVersion originalPOSIXName];
  v60 = [(BRCVersion *)self->_currentVersion ckInfo];
  v29 = [(BRCVersion *)self->_currentVersion mtime];
  v7 = [(BRCVersion *)self->_currentVersion size];
  v27 = [(BRCVersion *)self->_currentVersion thumbnailSize];
  v63 = [(BRCVersion *)self->_currentVersion thumbnailSignature];
  v62 = [(BRCVersion *)self->_currentVersion contentSignature];
  v59 = [(BRCVersion *)self->_currentVersion xattrSignature];
  v32 = [(BRCVersion *)self->_currentVersion editedSinceShared];
  v58 = [(BRCVersion *)self->_currentVersion lastEditorDeviceOrUserRowID];
  v30 = [(BRCVersion *)self->_currentVersion conflictLoserEtags];
  v26 = [(BRCVersion *)self->_currentVersion quarantineInfo];
  v28 = [(BRCLocalVersion *)self->_currentVersion uploadedAssets];
  v36 = [(BRCLocalVersion *)self->_currentVersion uploadError];
  v8 = [v36 brc_strippedError];
  v33 = [(BRCLocalVersion *)self->_currentVersion previousItemGlobalID];
  v9 = [v33 itemID];
  v31 = [(BRCLocalVersion *)self->_currentVersion previousItemGlobalID];
  v10 = [v31 zoneRowID];
  v11 = [(BRCLocalVersion *)self->_currentVersion localChangeCount];
  v25 = [(BRCLocalVersion *)self->_currentVersion oldVersionIdentifier];
  v12 = [(BRCDocumentItem *)self conflictLoserState];
  v13 = [(BRCDocumentItem *)self fileIDForUpload];
  [(BRCDocumentItem *)self generationIDForUpload];
  v14 = v24 = v7;
  v55 = [v74 execute:{@"INSERT INTO client_items(rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation) VALUES(%lld, %@, %@, %@, %ld, %@, %@, %d, %lld, %lld, %@, %@, %d, %@, %d, %d, %d, %lld, %lld, %lld, %@, %@, %d, %@, %@, %@, %@, %@, %@, %@, %@, %d, %llu, %@, %@, %@, %@, %lld, %lld, %lld, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %llu, %@, %@, %@, %@)", a4, v77, itemID, ownerKey, sharingOptions, sideCarCKInfo, parentZoneRowID, syncUpState, localDiffs, notifsRank, v76, minimumSupportedOSRowID, isUserVisible, v78, v44, v43, v42, v41, v40, v39, v75, v38, v37, v67, v72, v73, v71, v66, v70, v69, v68, v35, v34, v61, v64, v65, v60, v29, v24, v27, v63, v62, v59, v32, v58, v30, v26, v28, v8, v9, v10, v11, v25, v12, v13, v14}];

  if (v55)
  {
    v79.receiver = self;
    v79.super_class = BRCDocumentItem;
    v15 = v74;
    if ([(BRCLocalItem *)&v79 _insertInDB:v74 dbRowID:a4])
    {
      [(BRCDocumentItem *)self _updateUploadJobIfNeededWithDiffs:0xFF003FF3FF7FFFLL];
      v16 = [(BRCDocumentItem *)self currentVersion];
      v17 = [v16 uploadError];

      if (v17)
      {
        v18 = [(BRCLocalItem *)self db];
        v19 = [(BRCDocumentItem *)self currentVersion];
        v20 = [v19 uploadError];
        [v18 execute:{@"UPDATE client_items SET version_upload_error = %@ WHERE rowid = %lld", v20, -[BRCLocalItem dbRowID](self, "dbRowID")}];
      }

      v21 = [(BRCAccountSession *)self->super._session globalProgress];
      [v21 didUpdateDocument:self];

      [(BRCDocumentItem *)self _updateRecursivePropertiesInDB:v74 dbRowID:a4 diffs:0xFF003FF3FF7FFFLL];
      v22 = 1;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v15 = v74;
  }

  return v22;
}

- (BOOL)_updateInDB:(id)a3 diffs:(unint64_t)a4
{
  v126 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ((a4 & 0x100000000) != 0 && [(BRCLocalItem *)self isDead])
  {
    [(BRCDocumentItem *)self _nukePackageItemsFromDB:v6];
  }

  v116 = v6;
  if ([(BRCDocumentItem *)self isDocumentBeingCopiedToNewZone]|| [(BRCLocalItem *)self->super._orig isDocumentBeingCopiedToNewZone])
  {
    clientZone = self->super._clientZone;
    v8 = [(BRCLocalItem *)self->super._orig clientZone];
    LOBYTE(clientZone) = [(BRCClientZone *)clientZone isEqualToClientZone:v8];

    if ((clientZone & 1) == 0)
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [BRCDocumentItem _updateInDB:diffs:];
      }

      v11 = [BRCItemDBRowIDAndZoneJobIdentifier alloc];
      dbRowID = self->super._dbRowID;
      v13 = [(BRCLocalItem *)self->super._orig clientZone];
      v14 = [v13 dbRowID];
      v15 = [(BRCItemDBRowIDAndZoneJobIdentifier *)v11 initWithItemDBRowID:dbRowID zoneRowID:v14];

      v16 = [(BRCAccountSession *)self->super._session fsDownloader];
      [v16 deleteJobsMatching:v15];

      v17 = [(BRCAccountSession *)self->super._session fsUploader];
      [v17 deleteJobsMatching:v15];
    }
  }

  [(BRCDocumentItem *)self _updateUploadJobIfNeededWithDiffs:a4];
  v61 = a4;
  if ((a4 & 0x2010000) != 0)
  {
    v18 = [(BRCVersion *)self->_currentVersion conflictLoserEtags];
    v19 = [v18 count];

    if (v19)
    {
      v20 = [(BRCAccountSession *)self->super._session fsDownloader];
      [v20 rescheduleJobsPendingWinnerForItem:self];
    }
  }

  v115 = [(BRCClientZone *)self->super._clientZone dbRowID];
  itemID = self->super._itemID;
  ownerKey = self->super._ownerKey;
  sharingOptions = self->super._sharingOptions;
  sideCarCKInfo = self->super._sideCarCKInfo;
  parentZoneRowID = self->super._parentZoneRowID;
  localDiffs = self->super._localDiffs;
  notifsRank = self->super._notifsRank;
  syncUpState = self->super._syncUpState;
  v96 = [(BRCLocalItem *)self appLibrary];
  v114 = [v96 dbRowID];
  minimumSupportedOSRowID = self->super._minimumSupportedOSRowID;
  isUserVisible = self->super._isUserVisible;
  v112 = [(BRCStatInfo *)self->super._st ckInfo];
  v84 = [(BRCStatInfo *)self->super._st state];
  v81 = [(BRCStatInfo *)self->super._st type];
  v83 = [(BRCStatInfo *)self->super._st mode];
  v82 = [(BRCStatInfo *)self->super._st birthtime];
  v80 = [(BRCStatInfo *)self->super._st lastUsedTime];
  v79 = [(BRCStatInfo *)self->super._st favoriteRank];
  v108 = [(BRCStatInfo *)self->super._st parentID];
  st = self->super._st;
  logicalName = st->super._logicalName;
  if (!logicalName)
  {
    logicalName = &stru_2837504F0;
  }

  v78 = logicalName;
  v77 = [(BRCStatInfo *)st isHiddenExt];
  v110 = [(BRCStatInfo *)self->super._st finderTags];
  v113 = [(BRCStatInfo *)self->super._st xattrSignature];
  v111 = [(BRCStatInfo *)self->super._st trashPutBackPath];
  v109 = [(BRCStatInfo *)self->super._st trashPutBackParentID];
  v106 = [(BRCStatInfo *)self->super._st aliasTarget];
  v107 = [(BRCStatInfo *)self->super._st creatorRowID];
  v105 = [(BRCLocalStatInfo *)self->super._st processingStamp];
  v102 = [(BRCLocalStatInfo *)self->super._st rawBouncedLogicalName];
  v75 = [(BRCLocalStatInfo *)self->super._st itemScope];
  v74 = [(BRCLocalStatInfo *)self->super._st localChangeCount];
  v104 = [(BRCLocalStatInfo *)self->super._st oldVersionIdentifier];
  v103 = [(BRCLocalStatInfo *)self->super._st fpCreationItemIdentifier];
  v101 = [(BRCVersion *)self->_currentVersion originalPOSIXName];
  v100 = [(BRCVersion *)self->_currentVersion ckInfo];
  v68 = [(BRCVersion *)self->_currentVersion mtime];
  v23 = [(BRCVersion *)self->_currentVersion size];
  v66 = [(BRCVersion *)self->_currentVersion thumbnailSize];
  v98 = [(BRCVersion *)self->_currentVersion thumbnailSignature];
  v99 = [(BRCVersion *)self->_currentVersion contentSignature];
  v72 = [(BRCVersion *)self->_currentVersion xattrSignature];
  v71 = [(BRCVersion *)self->_currentVersion editedSinceShared];
  v97 = [(BRCVersion *)self->_currentVersion lastEditorDeviceOrUserRowID];
  v64 = [(BRCVersion *)self->_currentVersion conflictLoserEtags];
  v69 = [(BRCVersion *)self->_currentVersion quarantineInfo];
  v67 = [(BRCLocalVersion *)self->_currentVersion uploadedAssets];
  v76 = [(BRCLocalVersion *)self->_currentVersion uploadError];
  v63 = [v76 brc_strippedError];
  v73 = [(BRCLocalVersion *)self->_currentVersion previousItemGlobalID];
  v65 = [v73 itemID];
  v70 = [(BRCLocalVersion *)self->_currentVersion previousItemGlobalID];
  v24 = [v70 zoneRowID];
  v25 = [(BRCLocalVersion *)self->_currentVersion localChangeCount];
  v62 = [(BRCLocalVersion *)self->_currentVersion oldVersionIdentifier];
  v26 = [(BRCDocumentItem *)self conflictLoserState];
  v27 = [(BRCDocumentItem *)self fileIDForUpload];
  v28 = [(BRCDocumentItem *)self generationIDForUpload];
  v95 = [v116 execute:{@"UPDATE client_items SET  zone_rowid = %@, item_id = %@, item_creator_id = %@, item_sharing_options = %ld, item_side_car_ckinfo = %@, item_parent_zone_rowid = %@, item_localsyncupstate = %d, item_local_diffs = %llu, item_notifs_rank = %lld, app_library_rowid = %@, item_min_supported_os_rowid = %@, item_user_visible = %d, item_stat_ckinfo = %@, item_state = %d, item_type = %d, item_mode = %d, item_birthtime = %lld, item_lastusedtime = %lld, item_favoriterank = %lld, item_parent_id = %@, item_filename = %@, item_hidden_ext = %d, item_finder_tags = %@, item_xattr_signature = %@, item_trash_put_back_path = %@, item_trash_put_back_parent_id = %@, item_alias_target = %@, item_creator = %@, item_processing_stamp = %@, item_bouncedname = %@, item_scope = %d, item_local_change_count = %llu, item_old_version_identifier = %@, fp_creation_item_identifier = %@, version_name = %@, version_ckinfo = %@, version_mtime = %lld, version_size = %lld, version_thumb_size = %lld, version_thumb_signature = %@, version_content_signature = %@, version_xattr_signature = %@, version_edited_since_shared = %@, version_device = %@, version_conflict_loser_etags = %@, version_quarantine_info = %@, version_uploaded_assets = %@, version_upload_error = %@, version_old_zone_item_id = %@, version_old_zone_rowid = %@, version_local_change_count = %llu, version_old_version_identifier = %@, item_live_conflict_loser_etags = %@, item_file_id = %@, item_generation = %@  WHERE rowid = %llu", v115, itemID, ownerKey, sharingOptions, sideCarCKInfo, parentZoneRowID, syncUpState, localDiffs, notifsRank, v114, minimumSupportedOSRowID, isUserVisible, v112, v84, v81, v83, v82, v80, v79, v108, v78, v77, v110, v113, v111, v109, v106, v107, v105, v102, v75, v74, v104, v103, v101, v100, v68, v23, v66, v98, v99, v72, v71, v97, v64, v69, v67, v63, v65, v24, v25, v62, v26, v27, v28, self->super._dbRowID}];

  if (v95)
  {
    v29 = v61;
    [(BRCDocumentItem *)self _updateRecursivePropertiesInDB:v116 dbRowID:self->super._dbRowID diffs:v61];
    if ((v61 & 0x100000) != 0)
    {
      v30 = [(BRCAccountSession *)self->super._session fsDownloader];
      [v30 cancelOngoingDownloadsDueToMoreRecentServerVersionForItem:self];
    }

    if ((v61 & 0x80000000) != 0)
    {
      v31 = [(BRCAccountSession *)self->super._session applyScheduler];
      v32 = [(BRCLocalItem *)self unsaltedBookmarkData];
      v33 = [v116 fetch:{@"SELECT zone_rowid, item_rank FROM server_items WHERE item_alias_target = %@ AND item_type = 3", v32}];

      if ([v33 next])
      {
        do
        {
          v34 = [v33 numberAtIndex:0];
          v35 = [(BRCAccountSession *)self->super._session serverZoneByRowID:v34];
          v36 = [v33 longLongAtIndex:1];
          v37 = brc_bread_crumbs();
          v38 = brc_default_log();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v39 = [v35 zoneName];
            *buf = 134218498;
            v121 = v36;
            v122 = 2112;
            v123 = v39;
            v124 = 2112;
            v125 = v37;
            _os_log_debug_impl(&dword_223E7A000, v38, OS_LOG_TYPE_DEBUG, "[DEBUG] Apply Changes[%lld]: Rescheduling reverse-alias in %@%@", buf, 0x20u);
          }

          [v31 setState:1 andApplyKind:1 forRank:v36 zoneRowID:v34];
        }

        while (([v33 next] & 1) != 0);
      }

      v29 = v61;
    }

    v42 = [(BRCLocalItem *)self session];
    v43 = [v42 globalProgress];
    [v43 didUpdateDocument:self];

    v44 = [(BRCLocalItem *)self syncUpState];
    if ((v29 & 0x60) != 0 && (v44 & 3) != 0)
    {
      v45 = [(BRCLocalItem *)self parentClientZone];
      v46 = [(BRCLocalItem *)self orig];
      v47 = [v46 clientZone];
      v48 = [v45 isEqualToClientZone:v47];

      if (v48)
      {
        v49 = [MEMORY[0x277CCAB98] defaultCenter];
        v118 = @"throttleID";
        v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[BRCLocalItem dbRowID](self, "dbRowID")}];
        v119 = v50;
        v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
        [v49 postNotificationName:@"BRCDocumentReparentNotification" object:0 userInfo:v51];
      }
    }

    v52 = [(BRCLocalVersion *)self->_currentVersion uploadError];
    v53 = [(BRCLocalItem *)self->super._orig asDocument];
    v54 = [v53 currentVersion];
    v55 = [v54 uploadError];
    v56 = [(BRCDocumentItem *)self _needsSyncBubbleRecomputeForError:v52 origError:v55];

    if (v56)
    {
      [(BRCClientZone *)self->super._clientZone recomputeAllItemsDidUploadState];
    }

    orig = self->super._orig;
    v41 = v116;
    if (orig && ![(BRCLocalItem *)orig isOnDisk]&& [(BRCLocalItem *)self isOnDisk])
    {
      v58 = [(BRCAccountSession *)self->super._session applyScheduler];
      [v58 rescheduleMissingTargetAliasesWithTarget:self];
    }

    v117.receiver = self;
    v117.super_class = BRCDocumentItem;
    v40 = [(BRCLocalItem *)&v117 _updateInDB:v116 diffs:v29];
  }

  else
  {
    v40 = 0;
    v41 = v116;
  }

  v59 = *MEMORY[0x277D85DE8];
  return v40;
}

- (BOOL)_needsSyncBubbleRecomputeForError:(id)a3 origError:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5 || ([v5 brc_isEverRetriable] & 1) != 0 || v6 && (objc_msgSend(v6, "brc_isEverRetriable") & 1) == 0)
  {
    v8 = +[BRCAccountsManager sharedManager];
    [v8 retrySyncBubbleLaterIfNeededWithError:v5];

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)startDownloadInTask:(id)a3 options:(unint64_t)a4 etagIfLoser:(id)a5 stageFileName:(id)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = BRCDocumentItem;
  if ([(BRCLocalItem *)&v22 startDownloadInTask:a3 options:a4 etagIfLoser:v12 stageFileName:v13 error:a7])
  {
    db = self->super._db;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __79__BRCDocumentItem_startDownloadInTask_options_etagIfLoser_stageFileName_error___block_invoke;
    v17[3] = &unk_278502668;
    v17[4] = self;
    v20 = a4;
    v18 = v12;
    v19 = v13;
    v21 = a7;
    v15 = [(BRCPQLConnection *)db groupInTransaction:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __79__BRCDocumentItem_startDownloadInTask_options_etagIfLoser_stageFileName_error___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) fsDownloader];
  v3 = [v2 scheduleContentDownloadForItem:a1[4] serverItem:0 options:a1[7] etagIfLoser:a1[5] stageFileName:a1[6] error:a1[8]];

  return v3;
}

- (id)documentRecordID
{
  itemID = self->super._itemID;
  v3 = [(BRCServerZone *)self->super._serverZone zoneID];
  v4 = [(BRCItemID *)itemID contentsRecordIDInZoneID:v3];

  return v4;
}

- (id)baseRecordClearAllFields:(BOOL)a3
{
  v3 = a3;
  v5 = [(BRCLocalItem *)self isFinderBookmark];
  v6 = @"content";
  if (v5)
  {
    v6 = @"structure";
  }

  v7 = MEMORY[0x277CBC5A0];
  v8 = v6;
  v9 = [v7 alloc];
  v10 = [(BRCDocumentItem *)self documentRecordID];
  v11 = [v9 initWithRecordType:v8 recordID:v10];

  if (v3)
  {
    [v11 setObject:0 forKeyedSubscript:@"fileContent"];
    [v11 setObject:0 forKeyedSubscript:@"bookmarkContent"];
    [v11 setObject:0 forKeyedSubscript:@"pkgSignature"];
    [v11 setObject:0 forKeyedSubscript:@"pkgContent"];
    [v11 setObject:0 forKeyedSubscript:@"pkgXattrs"];
    [v11 setObject:0 forKeyedSubscript:@"pkgManifest"];
    [v11 setObject:0 forKeyedSubscript:@"pkgSignature"];
    [v11 setObject:0 forKeyedSubscript:@"thumb1024"];
    [v11 setObject:0 forKeyedSubscript:@"thumbQLMetadata"];
  }

  return v11;
}

- (id)_initFromPQLResultSet:(id)a3 session:(id)a4 db:(id)a5 error:(id *)a6
{
  v10 = a3;
  v25.receiver = self;
  v25.super_class = BRCDocumentItem;
  v11 = [(BRCLocalItem *)&v25 _initFromPQLResultSet:v10 session:a4 db:a5 error:a6];
  if (v11)
  {
    v12 = [[BRCLocalVersion alloc] initFromResultSet:v10 pos:35];
    v13 = *(v11 + 26);
    *(v11 + 26) = v12;

    if ([*(v11 + 10) isExecutable] && (objc_msgSend(v11, "isDead") & 1) == 0 && objc_msgSend(*(v11 + 26), "isPackage"))
    {
      *(*(v11 + 10) + 26) &= ~2u;
    }

    if (_allowedClassesForEtags_once != -1)
    {
      [BRCDocumentItem(BRCFPFSAdditions) _initFromPQLResultSet:session:db:error:];
    }

    v14 = _allowedClassesForEtags_allowedClasses;
    v15 = [v10 unarchivedObjectOfClasses:v14 atIndex:53];

    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = [v15 objectForKeyedSubscript:@"r"];
      v17 = [v16 mutableCopy];
      v18 = *(v11 + 27);
      *(v11 + 27) = v17;
    }

    else
    {
      v18 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [BRCDocumentItem(BRCFPFSAdditions) _initFromPQLResultSet:session:db:error:];
      }

      v16 = v15;
      v15 = 0;
    }

    v19 = [v10 numberAtIndex:54];
    v20 = *(v11 + 28);
    *(v11 + 28) = v19;

    v21 = [v10 objectOfClass:objc_opt_class() atIndex:55];
    v22 = *(v11 + 29);
    *(v11 + 29) = v21;
  }

  return v11;
}

- (id)_initWithImportObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = BRCDocumentItem;
  v7 = [(BRCLocalItem *)&v15 _initWithImportObject:v6 error:a4];
  if (v7)
  {
    v8 = [[BRCLocalVersion alloc] initWithImportObject:v6];
    v9 = v7[26];
    v7[26] = v8;

    if ([v7 _updatePackageItemsIfNecessaryWithImportObject:v6 error:a4])
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "fileID")}];
      v11 = v7[28];
      v7[28] = v10;

      v12 = [v6 generationID];
      v13 = v7[29];
      v7[29] = v12;
    }

    else
    {
      v13 = v7;
      v7 = 0;
    }
  }

  return v7;
}

- (void)updateWithContentModificationDate:(id)a3
{
  [a3 timeIntervalSince1970];
  currentVersion = self->_currentVersion;

  [(BRCVersion *)currentVersion setMtime:v4];
}

- (BOOL)_updatePackageItemsIfNecessaryWithImportObject:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(BRCLocalItem *)self needsInsert]&& ![(BRCLocalItem *)self isIdleOrRejected]&& ![(BRCPQLConnection *)self->super._db execute:@"DELETE FROM client_pkg_upload_items WHERE item_rowid = %llu", self->super._dbRowID])
  {
    v16 = [(BRCPQLConnection *)self->super._db lastError];
    if (v16)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        v23 = "(passed to caller)";
        *v42 = 136315906;
        *&v42[4] = "[BRCDocumentItem(BRCFPFSAdditions) _updatePackageItemsIfNecessaryWithImportObject:error:]";
        *&v42[12] = 2080;
        if (!a4)
        {
          v23 = "(ignored by caller)";
        }

        *&v42[14] = v23;
        *&v42[22] = 2112;
        v43 = v16;
        LOWORD(v44) = 2112;
        *(&v44 + 2) = v17;
        _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", v42, 0x2Au);
      }
    }

    if (a4)
    {
      v19 = v16;
      *a4 = v16;
    }

    goto LABEL_22;
  }

  if ([v6 isPackageRoot])
  {
    *v42 = 0;
    *&v42[8] = v42;
    *&v42[16] = 0x3032000000;
    v43 = __Block_byref_object_copy__41;
    *&v44 = __Block_byref_object_dispose__41;
    *(&v44 + 1) = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v7 = [v6 fileURL];
    v29 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __90__BRCDocumentItem_BRCFPFSAdditions___updatePackageItemsIfNecessaryWithImportObject_error___block_invoke;
    v24[3] = &unk_278505A48;
    v25 = v6;
    v26 = self;
    v27 = v42;
    v28 = &v30;
    [BRCFSPackageEnumerator enumerateItemsInPackageAtURL:v7 error:&v29 usingBlock:v24];
    v8 = v29;

    v9 = *(*&v42[8] + 40);
    v10 = (v8 | v9) == 0;
    if (v8 | v9)
    {
      if (!v9)
      {
        v9 = v8;
      }

      v11 = v9;
      if (v11)
      {
        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, 0x90u))
        {
          v22 = "(passed to caller)";
          *buf = 136315906;
          v35 = "[BRCDocumentItem(BRCFPFSAdditions) _updatePackageItemsIfNecessaryWithImportObject:error:]";
          v36 = 2080;
          if (!a4)
          {
            v22 = "(ignored by caller)";
          }

          v37 = v22;
          v38 = 2112;
          v39 = v11;
          v40 = 2112;
          v41 = v12;
          _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (a4)
      {
        v14 = v11;
        *a4 = v11;
      }
    }

    else
    {
      v11 = [(BRCDocumentItem *)self currentVersion];
      [v11 updateWithPackageSize:v31[3]];
    }

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(v42, 8);

    if (!v10)
    {
LABEL_22:
      v15 = 0;
      goto LABEL_23;
    }
  }

  v15 = 1;
LABEL_23:

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

void __90__BRCDocumentItem_BRCFPFSAdditions___updatePackageItemsIfNecessaryWithImportObject_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = [BRCPackageItem alloc];
  v11 = [*(a1 + 32) fileURL];
  v12 = *(a1 + 40);
  v29 = 0;
  v13 = [(BRCPackageItem *)v10 initWithURL:v7 inPackage:v11 forItem:v12 error:&v29];
  v14 = v29;
  v15 = v29;

  if (v13)
  {
    if (![(BRCPackageItem *)v13 saveToDBWithSession:*(*(a1 + 40) + 8)])
    {
      v16 = [*(*(a1 + 40) + 8) clientDB];
      v17 = [v16 lastError];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, 0x90u))
      {
        __90__BRCDocumentItem_BRCFPFSAdditions___updatePackageItemsIfNecessaryWithImportObject_error___block_invoke_cold_1(a1 + 48);
      }

      *a4 = 1;
    }

LABEL_13:
    *(*(*(a1 + 56) + 8) + 24) += [(BRCPackageItem *)v13 size];
    goto LABEL_14;
  }

  if (![v15 br_isCloudDocsErrorCode:43])
  {
    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, 0x90u))
    {
      v28 = [v7 path];
      *buf = 138412802;
      v31 = v28;
      v32 = 2112;
      v33 = v15;
      v34 = 2112;
      v35 = v25;
      _os_log_error_impl(&dword_223E7A000, v26, 0x90u, "[ERROR] Couldn't create import item for %@ - %@%@", buf, 0x20u);
    }

    *a4 = 1;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v14);
    goto LABEL_13;
  }

  v22 = brc_bread_crumbs();
  v23 = brc_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v7 path];
    *buf = 138412546;
    v31 = v24;
    v32 = 2112;
    v33 = v22;
    _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEFAULT, "[WARNING] Ignoring excluded package item from sync %@%@", buf, 0x16u);
  }

LABEL_14:
  objc_autoreleasePoolPop(v9);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)markDoneMigratingToFPFS
{
  if ([(BRCLocalItem *)self isMigratingToFPFS])
  {
    v5.receiver = self;
    v5.super_class = BRCDocumentItem;
    [(BRCLocalItem *)&v5 markDoneMigratingToFPFS];
    fileIDForUpload = self->_fileIDForUpload;
    self->_fileIDForUpload = 0;

    generationIDForUpload = self->_generationIDForUpload;
    self->_generationIDForUpload = 0;
  }
}

- (void)_reIngestFromFileProviderWithIsFirstAttempt:(BOOL)a3
{
  self->super._syncUpState = 7;
  v5 = [(BRCLocalItem *)self fileObjectID];
  v6 = [(BRCLocalItem *)self session];
  fileIDForUpload = self->_fileIDForUpload;
  self->_fileIDForUpload = 0;

  generationIDForUpload = self->_generationIDForUpload;
  self->_generationIDForUpload = 0;

  v9 = [v5 asString];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__BRCDocumentItem_BRCFPFSAdditions___reIngestFromFileProviderWithIsFirstAttempt___block_invoke;
  v12[3] = &unk_278505A98;
  v13 = v5;
  v14 = v6;
  v15 = a3;
  v10 = v6;
  v11 = v5;
  [BRCImportUtil requestModificationOfItemIdentifier:v9 completionHandler:v12];
}

void __81__BRCDocumentItem_BRCFPFSAdditions___reIngestFromFileProviderWithIsFirstAttempt___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 fp_isFileProviderError:-1005] & 1) != 0 || objc_msgSend(v3, "br_isCocoaErrorCode:", 4353))
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __81__BRCDocumentItem_BRCFPFSAdditions___reIngestFromFileProviderWithIsFirstAttempt___block_invoke_cold_2(a1);
    }

    v6 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__BRCDocumentItem_BRCFPFSAdditions___reIngestFromFileProviderWithIsFirstAttempt___block_invoke_22;
    v11[3] = &unk_278505A70;
    v12 = v6;
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    [v12 performAsyncOnClientReadWriteDatabaseWorkloop:v11];

    v7 = v12;
  }

  else
  {
    if (v3)
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, 0x90u))
      {
        v9 = *(a1 + 32);
        *buf = 138412802;
        v16 = v9;
        v17 = 2112;
        v18 = v3;
        v19 = 2112;
        v20 = v7;
        _os_log_error_impl(&dword_223E7A000, v8, 0x90u, "[ERROR] Failed to re-ingest item %@ - %@%@", buf, 0x20u);
      }
    }

    else
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __81__BRCDocumentItem_BRCFPFSAdditions___reIngestFromFileProviderWithIsFirstAttempt___block_invoke_cold_1(a1);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __81__BRCDocumentItem_BRCFPFSAdditions___reIngestFromFileProviderWithIsFirstAttempt___block_invoke_22(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) itemFetcher];
  v5 = [v4 itemByFileObjectID:*(a1 + 40) dbFacade:v3];
  v6 = [v5 asDocument];

  if ([v6 syncUpState] == 7)
  {
    v7 = [v6 clientZone];
    v8 = [v6 itemID];
    v9 = [v7 serverItemByItemID:v8 dbFacade:v3];

    if (v9 || (*(a1 + 48) & 1) == 0)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v17 = v6;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] Marking %@ as delete for re-apply %@", buf, 0x16u);
      }

      [v6 markNeedsDeleteForRescheduleOfItem:v9];
      [v6 saveToDB];
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __81__BRCDocumentItem_BRCFPFSAdditions___reIngestFromFileProviderWithIsFirstAttempt___block_invoke_23;
      v13[3] = &unk_2784FF478;
      v14 = *(a1 + 40);
      v15 = v6;
      [v3 scheduleFlushWithCheckpoint:0 whenFlushed:v13];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __81__BRCDocumentItem_BRCFPFSAdditions___reIngestFromFileProviderWithIsFirstAttempt___block_invoke_23(uint64_t a1)
{
  v2 = [*(a1 + 32) asString];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81__BRCDocumentItem_BRCFPFSAdditions___reIngestFromFileProviderWithIsFirstAttempt___block_invoke_2;
  v3[3] = &unk_2784FF540;
  v4 = *(a1 + 40);
  [BRCImportUtil forceIngestionForItemID:v2 completionHandler:v3];
}

- (BOOL)updateFromServerItem:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BRCDocumentItem;
  v5 = [(BRCLocalItem *)&v32 updateFromServerItem:v4];
  if (v5 && ([v4 isBRAlias] & 1) == 0)
  {
    if (!v4)
    {
      [BRCDocumentItem(BRCFPFSAdditions) updateFromServerItem:];
    }

    if (([v4 isDocument] & 1) == 0)
    {
      [BRCDocumentItem(BRCFPFSAdditions) updateFromServerItem:];
    }

    if (![(BRCDocumentItem *)self isDocument])
    {
      [BRCDocumentItem(BRCFPFSAdditions) updateFromServerItem:];
    }

    if (![(BRCLocalItem *)self isIdleOrRejected])
    {
      [BRCDocumentItem(BRCFPFSAdditions) updateFromServerItem:];
    }

    v6 = [(BRCVersion *)self->_currentVersion ckInfo];
    v7 = [v6 etag];

    v8 = [v4 latestVersion];
    v9 = [v8 ckInfo];
    v10 = [v9 etag];

    if (!v10)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [BRCDocumentItem(BRCFPFSAdditions) updateFromServerItem:];
      }

      currentVersion = self->_currentVersion;
      self->_currentVersion = 0;
      goto LABEL_34;
    }

    v11 = [(BRCVersion *)self->_currentVersion editedSinceShared];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      v13 = 1;
LABEL_23:
      v17 = [v4 latestVersion];

      if (!v17)
      {
LABEL_35:

        goto LABEL_36;
      }

      currentVersion = [(BRCVersion *)self->_currentVersion quarantineInfo];
      v18 = [(BRCLocalVersion *)self->_currentVersion uploadError];
      v29 = [(BRCLocalVersion *)self->_currentVersion oldVersionIdentifier];
      v31 = v7;
      v19 = [BRCLocalVersion alloc];
      v20 = [v4 latestVersion];
      v21 = [(BRCLocalVersion *)v19 initWithServerVersion:v20];
      v22 = self->_currentVersion;
      self->_currentVersion = v21;

      if ([v31 isEqual:v10])
      {
        [(BRCLocalVersion *)self->_currentVersion setOldVersionIdentifier:v29];
      }

      if (v13)
      {
        [(BRCVersion *)self->_currentVersion setEditedSinceShared:MEMORY[0x277CBEC38]];
      }

      if ([v18 br_isCloudDocsErrorCode:{43, v29}])
      {
        [(BRCLocalVersion *)self->_currentVersion setUploadError:v18];
      }

      v23 = [(BRCLocalItem *)self->super._orig st];
      v24 = [v23 filename];
      v25 = [v24 br_pathExtension];

      v26 = [(BRCLocalStatInfo *)self->super._st filename];
      v27 = [v26 br_pathExtension];

      if (!(v25 | v27) || [v25 isEqualToString:v27])
      {
        [(BRCVersion *)self->_currentVersion setQuarantineInfo:currentVersion];
      }

      v7 = v31;
LABEL_34:

      goto LABEL_35;
    }

    if ([(BRCLocalItem *)self isSharedToMe])
    {
      if (!v7)
      {
        v13 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      if (![(BRCLocalItem *)self isSharedByMe]|| !v7)
      {
        goto LABEL_23;
      }
    }

    v13 = ([(BRCDocumentItem *)self diffAgainstServerItem:v4]& 0x1A0000) != 0;
    goto LABEL_23;
  }

LABEL_36:

  return v5;
}

- (void)recoverDamagedDocumentIfNecessaryWithError:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  v6 = [v5 recoverDamagedDocumentOnDisk];

  if (v6 && [v4 br_isCloudDocsErrorCode:151])
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v16 = 138412802;
      v17 = self;
      v18 = 2112;
      v19 = v4;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] Recovering damaged document %@ with error %@%@", &v16, 0x20u);
    }

    v9 = [(BRCLocalItem *)self clientZone];
    v10 = [(BRCLocalItem *)self itemID];
    v11 = [v9 itemByItemID:v10];

    v12 = [(BRCLocalItem *)self clientZone];
    v13 = [(BRCLocalItem *)self itemID];
    v14 = [v12 serverItemByItemID:v13];

    [v11 markNeedsDeleteForRescheduleOfItem:v14];
    [v11 saveToDB];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)isPackage
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: self.isFinderBookmark || BRCItemTypeIsDocument(_st.type)%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initWithServerItem:dbRowID:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: item.isDocument%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_initWithServerItem:dbRowID:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v4 = v0;
  _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: document without a version:\n    %@\n\n   this typically indicates either of two problems:\n    - either we failed processing the last sync down and we\n      saved the structure record but not the contents record,\n    - or the server forgot to send us a contents record.%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)diffAgainstServerItem:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !info || info.isDocument%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)diffAgainstLocalItem:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !info || info.isDocument%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)clearVersionSignatures:(NSObject *)a3 isPackage:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = BRCPrettyPrintBitmap();
  OUTLINED_FUNCTION_1_0();
  v8 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Clearing signatures: %@%@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateContentsCKInfoAndDeviceIDFromServerItem:.cold.1()
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

- (void)updateContentsCKInfoAndDeviceIDFromServerItem:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: serverItem.isDocument%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateContentsCKInfoAndDeviceIDFromServerItem:.cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.isDocument%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateContentsCKInfoAndDeviceIDFromServerItem:.cold.4()
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

- (void)updateVersionMetadataFromServerItem:preventVersionDiffs:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: serverItem.isDocument%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateVersionMetadataFromServerItem:preventVersionDiffs:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: serverItem.latestVersion%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateVersionMetadataFromServerItem:(uint64_t)a1 preventVersionDiffs:.cold.3(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] Marking %@ as edited since shared because the item differs in edit mask%@");
  v4 = *MEMORY[0x277D85DE8];
}

void __54__BRCDocumentItem_appDidResolveConflictLoserWithEtag___block_invoke_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] there is no conflict loser with etag %@%@");
  v4 = *MEMORY[0x277D85DE8];
}

void __54__BRCDocumentItem_appDidResolveConflictLoserWithEtag___block_invoke_cold_2(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] removing conflict loser with etag %@%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)markLatestSyncRequestRejectedInZone:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Clearing prev zone rowID and inserting tombstone for item which finished syncing to the new zone%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)markUploadedWithRecord:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] API MISUSE: state isn't needs-upload%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)markUploadedWithRecord:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: record%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)markUploadedWithRecord:(uint8_t *)buf .cold.3(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_223E7A000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: no version on uploaded document %@%@", buf, 0x16u);
}

- (void)markUploadedWithRecord:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: (fileAsset && !pkgSignature) || (!fileAsset && pkgSignature)%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)markUploadedWithRecord:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: signature%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)markUploadedWithRecord:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: _currentVersion%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)markUploadedWithRecord:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: _currentVersion.contentSignature.brc_signatureIsPendingPlaceHolder || self.isDocumentBeingCopiedToNewZone%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)markUploadedWithRecord:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: _currentVersion.thumbnailSignature.brc_signatureIsPendingPlaceHolder || self.isDocumentBeingCopiedToNewZone%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)markUploadedWithRecord:.cold.9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: _currentVersion.uploadedAssets == nil%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)markUploadedWithRecord:.cold.10()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] item is now uploaded: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)markCrossZoneMovedForServerAssetCopyWithParentItem:.cold.1()
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

- (void)markCrossZoneMovedForServerAssetCopyWithParentItem:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.supportsServerSideAssetCopies%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_crossZoneMoveToParent:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: (_localDiffs & (BRC_IF_CONTENT_SIZE|BRC_IF_CONTENT_SIGNATURE)) != 0 || [self _isInFlightSyncContent] || !_currentVersion.contentSignature.brc_signatureIsValid || !enhancedDrivePrivacyMatches%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_crossZoneMoveToParent:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Document %@ is being cross zone moved with local changes or enhanced drive privacy mismatch%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_updateUploadJobIfNeededWithDiffs:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] ┏%llx updating upload jobs%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_updateUploadJobIfNeededWithDiffs:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: _db.isBatchSuspended%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateUploadJobIfNeededWithDiffs:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: !self.isDead%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_nukePackageItemsFromDB:.cold.1()
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

- (void)_updateRecursivePropertiesInDB:dbRowID:diffs:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: db.isBatchSuspended%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_updateRecursivePropertiesInDB:(void *)a1 dbRowID:diffs:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 lastError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v2, v3, "[CRIT] UNREACHABLE: can't update recursive properties: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateInDB:diffs:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Updating zone info for a CZM item and deleting old zone jobs%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __90__BRCDocumentItem_BRCFPFSAdditions___updatePackageItemsIfNecessaryWithImportObject_error___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v1, v2, 0x90u, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __81__BRCDocumentItem_BRCFPFSAdditions___reIngestFromFileProviderWithIsFirstAttempt___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __81__BRCDocumentItem_BRCFPFSAdditions___reIngestFromFileProviderWithIsFirstAttempt___block_invoke_cold_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v1, v2, 0x90u, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end