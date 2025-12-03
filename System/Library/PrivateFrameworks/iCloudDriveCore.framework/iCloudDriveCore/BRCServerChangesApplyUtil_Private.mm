@interface BRCServerChangesApplyUtil_Private
+ (BOOL)_handleApplyingDeletedUnlistedDirectoryIfNecessary:(id)necessary localItem:(id)item parent:(id)parent;
+ (BOOL)appLibraryUndergoingCZM:(id)m zone:(id)zone rank:(int64_t)rank parentID:(id)d scheduler:(id)scheduler session:(id)session;
+ (BOOL)itemUndergoingCZMToAnotherZone:(id)zone si:(id)si clientZone:(id)clientZone rank:(int64_t)rank scheduler:(id)scheduler zone:(id)a8;
+ (BOOL)localItemHasUnsyncedChanges:(id)changes si:(id)si rank:(int64_t)rank scheduler:(id)scheduler clientZone:(id)zone zone:(id)a8 isDeleteOfShareRoot:(BOOL)root session:(id)self0;
+ (BOOL)serverItemDeadWithNoLiveLocalItem:(id)item si:(id)si rank:(int64_t)rank scheduler:(id)scheduler clientZone:(id)zone zone:(id)a8;
+ (BOOL)serverItemWouldBeParentedToDeadFolder:(id)folder si:(id)si rank:(int64_t)rank scheduler:(id)scheduler zone:(id)zone diffs:(unint64_t)diffs;
@end

@implementation BRCServerChangesApplyUtil_Private

+ (BOOL)itemUndergoingCZMToAnotherZone:(id)zone si:(id)si clientZone:(id)clientZone rank:(int64_t)rank scheduler:(id)scheduler zone:(id)a8
{
  siCopy = si;
  clientZoneCopy = clientZone;
  schedulerCopy = scheduler;
  v16 = a8;
  isDocument = [siCopy isDocument];
  v18 = 0;
  if (!zone && isDocument)
  {
    rankCopy = rank;
    v19 = [clientZoneCopy db];
    itemID = [siCopy itemID];
    clientZone = [siCopy clientZone];
    dbRowID = [clientZone dbRowID];
    v23 = [v19 numberWithSQL:{@"SELECT 1 FROM client_items WHERE version_old_zone_item_id = %@ AND version_old_zone_rowid = %@", itemID, dbRowID}];
    bOOLValue = [v23 BOOLValue];

    if (bOOLValue)
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        +[BRCServerChangesApplyUtil_Private itemUndergoingCZMToAnotherZone:si:clientZone:rank:scheduler:zone:];
      }

      dbRowID2 = [v16 dbRowID];
      [schedulerCopy setState:17 forRank:rankCopy zoneRowID:dbRowID2];

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

+ (BOOL)appLibraryUndergoingCZM:(id)m zone:(id)zone rank:(int64_t)rank parentID:(id)d scheduler:(id)scheduler session:(id)session
{
  zoneCopy = zone;
  dCopy = d;
  schedulerCopy = scheduler;
  sessionCopy = session;
  if (m)
  {
    goto LABEL_10;
  }

  if (![dCopy isNonDesktopRoot])
  {
    goto LABEL_10;
  }

  if (![zoneCopy isCloudDocsZone])
  {
    goto LABEL_10;
  }

  appLibraryRowID = [dCopy appLibraryRowID];
  clientZone = [zoneCopy clientZone];
  asPrivateClientZone = [clientZone asPrivateClientZone];
  defaultAppLibrary = [asPrivateClientZone defaultAppLibrary];
  dbRowID = [defaultAppLibrary dbRowID];
  v21 = [appLibraryRowID isEqual:dbRowID];

  if (v21)
  {
    goto LABEL_10;
  }

  appLibraryRowID2 = [dCopy appLibraryRowID];
  v23 = [sessionCopy appLibraryByRowID:appLibraryRowID2];

  if (([v23 state] & 0x200000) != 0)
  {

LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  v24 = brc_bread_crumbs();
  v25 = brc_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    +[BRCServerChangesApplyUtil_Private appLibraryUndergoingCZM:zone:rank:parentID:scheduler:session:];
  }

  dbRowID2 = [zoneCopy dbRowID];
  [schedulerCopy setState:27 forRank:rank zoneRowID:dbRowID2];

  v27 = 1;
LABEL_11:

  return v27;
}

+ (BOOL)_handleApplyingDeletedUnlistedDirectoryIfNecessary:(id)necessary localItem:(id)item parent:(id)parent
{
  v35 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  itemCopy = item;
  parentCopy = parent;
  isDead = [parentCopy isDead];
  v11 = 0;
  if (itemCopy || !isDead)
  {
    goto LABEL_12;
  }

  v12 = [parentCopy st];
  ckInfo = [v12 ckInfo];
  if (([ckInfo hasDeletionChangeToken] & 1) == 0)
  {

    goto LABEL_11;
  }

  clientZone = [necessaryCopy clientZone];
  clientZone2 = [parentCopy clientZone];
  v16 = [clientZone isEqualToClientZone:clientZone2];

  if (!v16)
  {
LABEL_11:
    v11 = 0;
    itemCopy = 0;
    goto LABEL_12;
  }

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v29 = 138412802;
    v30 = necessaryCopy;
    v31 = 2112;
    v32 = parentCopy;
    v33 = 2112;
    v34 = v17;
    _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] New item %@ older than a deleted directory %@ so marking dead%@", &v29, 0x20u);
  }

  itemCopy = [necessaryCopy newLocalItemWithDBRowID:{objc_msgSend(0, "dbRowID")}];
  [itemCopy markDead];
  v19 = [parentCopy st];
  ckInfo2 = [v19 ckInfo];
  deletionChangeToken = [ckInfo2 deletionChangeToken];

  if ([itemCopy isDocument])
  {
    asDocument = [itemCopy asDocument];
    currentVersion = [asDocument currentVersion];
    ckInfo3 = [currentVersion ckInfo];
    [ckInfo3 setDeletionChangeToken:deletionChangeToken];
  }

  v25 = [itemCopy st];
  ckInfo4 = [v25 ckInfo];
  [ckInfo4 setDeletionChangeToken:deletionChangeToken];

  [itemCopy markNeedsUploadOrSyncingUp];
  [itemCopy saveToDB];

  v11 = 1;
LABEL_12:

  v27 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (BOOL)serverItemWouldBeParentedToDeadFolder:(id)folder si:(id)si rank:(int64_t)rank scheduler:(id)scheduler zone:(id)zone diffs:(unint64_t)diffs
{
  diffsCopy = diffs;
  v43 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  siCopy = si;
  schedulerCopy = scheduler;
  zoneCopy = zone;
  if (folderCopy && (diffsCopy & 0x20) == 0 || ![siCopy isLive])
  {
    goto LABEL_8;
  }

  parentLocalItemOnFS = [siCopy parentLocalItemOnFS];
  v19 = parentLocalItemOnFS;
  if (!parentLocalItemOnFS)
  {
    if (([self _handleApplyingDeletedUnlistedDirectoryIfNecessary:siCopy localItem:folderCopy parent:0] & 1) == 0)
    {
      if ([siCopy shouldBeGreedyForApply])
      {
        clientZone = [siCopy clientZone];
        parentItemIDOnFS = [siCopy parentItemIDOnFS];
        v24 = [clientZone serverItemByItemID:parentItemIDOnFS];

        if (!v24)
        {
          v30 = brc_bread_crumbs();
          v31 = brc_default_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            +[BRCServerChangesApplyUtil_Private serverItemWouldBeParentedToDeadFolder:si:rank:scheduler:zone:diffs:];
          }

          dbRowID = [zoneCopy dbRowID];
          [schedulerCopy setState:16 forRank:rank zoneRowID:dbRowID];

          parentZoneOnFS = [siCopy parentZoneOnFS];
          clientZone2 = [parentZoneOnFS clientZone];
          parentItemIDOnFS2 = [siCopy parentItemIDOnFS];
          v35 = [clientZone2 fetchParentChainIfNecessaryWithParentItemID:parentItemIDOnFS2 isUserWaiting:0];

          goto LABEL_14;
        }
      }

LABEL_12:
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        if (v19)
        {
          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@" parent = %@", v19];
        }

        else
        {
          v36 = &stru_2837504F0;
        }

        *buf = 134218498;
        rankCopy = rank;
        v39 = 2112;
        v40 = v36;
        v41 = 2112;
        v42 = v25;
        _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] Apply Changes[%lld]: postponing rank (missing parent)%@%@", buf, 0x20u);
        if (v19)
        {
        }
      }

      parentZoneOnFS = [zoneCopy dbRowID];
      [schedulerCopy setState:21 forRank:rank zoneRowID:parentZoneOnFS];
LABEL_14:
    }

LABEL_15:

    v21 = 1;
    goto LABEL_16;
  }

  isDead = [parentLocalItemOnFS isDead];
  if ([self _handleApplyingDeletedUnlistedDirectoryIfNecessary:siCopy localItem:folderCopy parent:v19])
  {
    goto LABEL_15;
  }

  if (isDead)
  {
    goto LABEL_12;
  }

LABEL_8:
  v21 = 0;
LABEL_16:

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (BOOL)serverItemDeadWithNoLiveLocalItem:(id)item si:(id)si rank:(int64_t)rank scheduler:(id)scheduler clientZone:(id)zone zone:(id)a8
{
  itemCopy = item;
  siCopy = si;
  schedulerCopy = scheduler;
  zoneCopy = zone;
  v17 = a8;
  if (siCopy && ![siCopy isDead] || itemCopy && !objc_msgSend(itemCopy, "isDead"))
  {
    v22 = 0;
  }

  else
  {
    [itemCopy markNeedsDeleteForRescheduleOfItem:0];
    if ([itemCopy isSharedToMeTopLevelItem])
    {
      asSharedToMeTopLevelItem = [itemCopy asSharedToMeTopLevelItem];
      [asSharedToMeTopLevelItem insertTombstoneAliasRecordInZone:0];
    }

    [itemCopy saveToDBForServerEdit:1 keepAliases:0];
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      +[BRCServerChangesApplyUtil_Private serverItemDeadWithNoLiveLocalItem:si:rank:scheduler:clientZone:zone:];
    }

    dbRowID = [v17 dbRowID];
    [schedulerCopy setState:0 forRank:rank zoneRowID:dbRowID];

    [zoneCopy didApplyTombstoneForRank:rank];
    v22 = 1;
  }

  return v22;
}

+ (BOOL)localItemHasUnsyncedChanges:(id)changes si:(id)si rank:(int64_t)rank scheduler:(id)scheduler clientZone:(id)zone zone:(id)a8 isDeleteOfShareRoot:(BOOL)root session:(id)self0
{
  v88 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  siCopy = si;
  schedulerCopy = scheduler;
  zoneCopy = zone;
  v19 = a8;
  sessionCopy = session;
  if (!root)
  {
    if (([changesCopy localDiffs] & 0x1000000000000000) != 0)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
      }

      dbRowID = [v19 dbRowID];
      v27 = schedulerCopy;
      v28 = 22;
      goto LABEL_13;
    }

    if ([BRCServerChangesApplyUtil shouldForceApplyContentForItem:changesCopy])
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
      }

      goto LABEL_4;
    }

    if (!changesCopy || ([changesCopy isIdleOrRejected] & 1) != 0)
    {
      goto LABEL_5;
    }

    if ([siCopy isDead])
    {
      isDead = [changesCopy isDead];
      if (([changesCopy isDirectory] & 1) == 0 && isDead)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
        }

        [changesCopy markNeedsDeleteForRescheduleOfItem:0];
        [changesCopy saveToDB];
LABEL_47:
        [zoneCopy didApplyTombstoneForRank:rank];
        dbRowID = [v19 dbRowID];
        v27 = schedulerCopy;
        v28 = 0;
LABEL_13:
        [v27 setState:v28 forRank:rank zoneRowID:dbRowID];

LABEL_14:
        v23 = 1;
        goto LABEL_15;
      }

      if (([siCopy isBRAlias] & isDead) == 1)
      {
        v52 = brc_bread_crumbs();
        v53 = brc_default_log();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
        }

        goto LABEL_47;
      }
    }

    else
    {
      [changesCopy isDirectory];
      [siCopy isBRAlias];
    }

    itemID = [siCopy itemID];
    if ([itemID isDocumentsFolder])
    {
      itemID2 = [changesCopy itemID];
      isDocumentsFolder = [itemID2 isDocumentsFolder];

      if (isDocumentsFolder)
      {
        v37 = brc_bread_crumbs();
        v38 = brc_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
        }

        serverZone = [changesCopy serverZone];
        [changesCopy prepareForSyncUpInZone:serverZone];

        serverZone2 = [changesCopy serverZone];
        dbRowID2 = [serverZone2 dbRowID];
        [changesCopy markLatestSyncRequestAcknowledgedInZone:dbRowID2];

        [changesCopy saveToDB];
        goto LABEL_5;
      }
    }

    else
    {
    }

    v42 = brc_bread_crumbs();
    v43 = brc_default_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      isDead2 = [siCopy isDead];
      v73 = "";
      *buf = 138412802;
      v83 = changesCopy;
      if (isDead2)
      {
        v73 = "\n(dead in server truth)";
      }

      v84 = 2080;
      v85 = v73;
      v86 = 2112;
      v87 = v42;
      _os_log_debug_impl(&dword_223E7A000, v43, OS_LOG_TYPE_DEBUG, "[DEBUG] Suspending rank for item with conflicts: %@%s%@", buf, 0x20u);
    }

    if ([changesCopy isMigratingToFPFS])
    {
      v44 = 15;
    }

    else
    {
      v44 = 22;
    }

    dbRowID3 = [v19 dbRowID];
    [schedulerCopy setState:v44 forRank:rank zoneRowID:dbRowID3];

    if (!siCopy)
    {
LABEL_58:
      if ([changesCopy isSharedToMeChildItem])
      {
        v57 = [changesCopy st];
        ckInfo = [v57 ckInfo];

        if (!ckInfo)
        {
          localDiffs = [changesCopy localDiffs];
          clientZone = [changesCopy clientZone];
          dbRowID4 = [clientZone dbRowID];
          v62 = [changesCopy inFlightSyncUpDiffsInZoneRowID:dbRowID4] | localDiffs;

          if (v62)
          {
            if ((v62 & 0xFEFFFFFFFFFFE5FFLL) == 0)
            {
              v63 = brc_bread_crumbs();
              v64 = brc_default_log();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
              {
                +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
              }

              v65 = [siCopy st];
              ckInfo2 = [v65 ckInfo];
              v67 = [changesCopy st];
              [v67 setCkInfo:ckInfo2];

              [changesCopy saveToDBForServerEdit:1 keepAliases:1];
              containerScheduler = [sessionCopy containerScheduler];
              [containerScheduler scheduleSyncUpForSideCar];
            }
          }
        }
      }

      appLibrary = [changesCopy appLibrary];
      if (([appLibrary state] & 4) != 0 || !objc_msgSend(changesCopy, "needsSyncUp"))
      {
        goto LABEL_71;
      }

      clientZone2 = [changesCopy clientZone];
      if ([clientZone2 isSyncBlocked])
      {
        goto LABEL_70;
      }

      clientZone3 = [changesCopy clientZone];
      if (([clientZone3 syncState] & 5) != 0)
      {

LABEL_70:
LABEL_71:

        goto LABEL_14;
      }

      syncUpScheduler = [sessionCopy syncUpScheduler];
      v81 = [syncUpScheduler jobStateFor:changesCopy];

      if (v81 != 50)
      {
        goto LABEL_14;
      }

      itemID3 = [changesCopy itemID];
      if (([itemID3 isDocumentsFolder] & 1) == 0)
      {
        isSharedToMe = [changesCopy isSharedToMe];

        if (isSharedToMe)
        {
LABEL_82:
          appLibrary = [changesCopy clientZone];
          [appLibrary scheduleSyncUp];
          goto LABEL_71;
        }

        itemID3 = brc_bread_crumbs();
        v77 = brc_default_log();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          clientZone4 = [changesCopy clientZone];
          *buf = 138412546;
          v83 = clientZone4;
          v84 = 2112;
          v85 = itemID3;
          _os_log_impl(&dword_223E7A000, v77, OS_LOG_TYPE_DEFAULT, "[WARNING] client zone %@ forgot to sync up!%@", buf, 0x16u);
        }
      }

      goto LABEL_82;
    }

    v46 = [changesCopy st];
    ckInfo3 = [v46 ckInfo];
    if (ckInfo3 || ([v19 isPrivateZone] & 1) == 0)
    {
      if (![changesCopy isDocument])
      {
        if (([changesCopy sharingOptions] & 0x7C) != 4)
        {

          goto LABEL_58;
        }

        localDiffs2 = [changesCopy localDiffs];

        if ((localDiffs2 & 0x1000000000000000) != 0)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      }

      v80 = v46;
      asDocument = [changesCopy asDocument];
      currentVersion = [asDocument currentVersion];
      ckInfo4 = [currentVersion ckInfo];
      if (ckInfo4)
      {
        v51 = ckInfo4;
        if (([changesCopy sharingOptions] & 0x7C) != 4)
        {

          goto LABEL_58;
        }

        localDiffs3 = [changesCopy localDiffs];

        if ((localDiffs3 & 0x1000000000000000) != 0)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      }

      v46 = v80;
    }

LABEL_54:
    v55 = brc_bread_crumbs();
    v56 = brc_default_log();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v83 = changesCopy;
      v84 = 2112;
      v85 = siCopy;
      v86 = 2112;
      v87 = v55;
      _os_log_debug_impl(&dword_223E7A000, v56, OS_LOG_TYPE_DEBUG, "[DEBUG] Learning sharing options on local item %@ from %@%@", buf, 0x20u);
    }

    [changesCopy setSharingOptions:{objc_msgSend(siCopy, "sharingOptions")}];
    [changesCopy saveToDBForServerEdit:1 keepAliases:1];
    goto LABEL_58;
  }

  v21 = brc_bread_crumbs();
  v22 = brc_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
  }

LABEL_4:

LABEL_5:
  v23 = 0;
LABEL_15:

  v29 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (void)itemUndergoingCZMToAnotherZone:si:clientZone:rank:scheduler:zone:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Apply Changes[%lld]: postponing rank (item CZM processing)%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)appLibraryUndergoingCZM:zone:rank:parentID:scheduler:session:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Apply Changes[%lld]: postponing rank (ongoing cross-zone migration)%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)serverItemWouldBeParentedToDeadFolder:si:rank:scheduler:zone:diffs:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Apply Changes[%lld]: postponing rank (missing parent while greedy)%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)serverItemDeadWithNoLiveLocalItem:si:rank:scheduler:clientZone:zone:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Dead item doesn't need any action%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Suspending rank for item which needs an OOB sync ack %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Forcing deletion of item dead in both client and server truth %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Learning structure etag on item with only side car diffs %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Removing local diffs of auto-created documents directory%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Ignoring deletion of share alias with a locally dead item%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:.cold.6()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Not suspending download of an item that needs CZM processing %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:.cold.7()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Don't suspend delete of shared to me item %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end