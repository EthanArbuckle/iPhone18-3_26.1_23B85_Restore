@interface BRCServerChangesApplier
- (BOOL)_handleServerItemBRAliasIfNeeded:(id)needed li:(id)li jobID:(int64_t)d zone:(id)zone diffs:(unint64_t)diffs;
- (BRCServerChangesApplier)initWithAccountSession:(id)session;
- (void)applyChanges:(id)changes localItem:(id)item rank:(int64_t)rank zone:(id)zone;
@end

@implementation BRCServerChangesApplier

- (BRCServerChangesApplier)initWithAccountSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = BRCServerChangesApplier;
  v6 = [(BRCServerChangesApplier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
  }

  return v7;
}

- (BOOL)_handleServerItemBRAliasIfNeeded:(id)needed li:(id)li jobID:(int64_t)d zone:(id)zone diffs:(unint64_t)diffs
{
  neededCopy = needed;
  zoneCopy = zone;
  if (([li isBRAlias] & 1) != 0 || objc_msgSend(neededCopy, "isBRAlias"))
  {
    applyScheduler = [(BRCAccountSession *)self->_session applyScheduler];
    aliasTargetClientZone = [neededCopy aliasTargetClientZone];
    if ([aliasTargetClientZone isSharedZone])
    {
      aliasTargetItemID = [neededCopy aliasTargetItemID];
      v16 = [aliasTargetClientZone serverItemByItemID:aliasTargetItemID];
      if (v16)
      {
        v17 = v16;
        v18 = brc_bread_crumbs();
        v19 = brc_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [BRCServerChangesApplier _handleServerItemBRAliasIfNeeded:li:jobID:zone:diffs:];
        }

        v20 = [aliasTargetClientZone itemByItemID:aliasTargetItemID];
        [applyScheduler createApplyJobFromServerItem:v17 localItem:v20 state:1 kind:2];

        goto LABEL_14;
      }
    }

    if (![neededCopy aliasTargetIsShared])
    {
LABEL_15:
      dbRowID = [zoneCopy dbRowID];
      [applyScheduler setState:0 forRank:d zoneRowID:dbRowID];

      v21 = 1;
      goto LABEL_16;
    }

    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [BRCServerChangesApplier _handleServerItemBRAliasIfNeeded:li:jobID:zone:diffs:];
    }

    aliasTargetItemID = [(BRCAccountSession *)self->_session containerScheduler];
    [aliasTargetItemID scheduleSyncDownForSharedDatabaseImmediately:0];
LABEL_14:

    goto LABEL_15;
  }

  v21 = 0;
LABEL_16:

  return v21;
}

- (void)applyChanges:(id)changes localItem:(id)item rank:(int64_t)rank zone:(id)zone
{
  v134 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  itemCopy = item;
  zoneCopy = zone;
  clientZone = [zoneCopy clientZone];
  applyScheduler = [(BRCAccountSession *)self->_session applyScheduler];
  v121 = [itemCopy diffAgainstServerItem:changesCopy];
  memset(v120, 0, sizeof(v120));
  __brc_create_section(0, "[BRCServerChangesApplier applyChanges:localItem:rank:zone:]", 109, 0, v120);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v30 = v120[0];
    v31 = BRCItemFieldsPrettyPrint();
    v32 = v31;
    v33 = "new";
    *buf = 134219266;
    selfCopy = v30;
    v124 = 2048;
    if (!itemCopy)
    {
      v33 = "existing";
    }

    rankCopy = rank;
    v126 = 2080;
    v127 = v33;
    v128 = 2112;
    v129 = changesCopy;
    v130 = 2112;
    v131 = v31;
    v132 = 2112;
    v133 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Apply Changes[%lld]: %s item: %@\n diffs: %@%@", buf, 0x3Eu);
  }

  if (!(changesCopy | itemCopy))
  {
    v102 = brc_bread_crumbs();
    v103 = brc_default_log();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
    {
      [BRCServerChangesApplier applyChanges:localItem:rank:zone:];
    }
  }

  if (!clientZone)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      selfCopy = changesCopy;
      v124 = 2112;
      rankCopy = itemCopy;
      v126 = 2112;
      v127 = v14;
      _os_log_fault_impl(&dword_223E7A000, v15, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: no client zone when applying %@ and %@%@", buf, 0x20u);
    }
  }

  v16 = [BRCServerChangesApplyUtil deletingShareRoot:changesCopy localItem:itemCopy];
  v17 = [(BRCServerChangesApplier *)self _handleServerItemBRAliasIfNeeded:changesCopy li:itemCopy jobID:rank zone:zoneCopy diffs:v121];
  LOBYTE(v104) = v16;
  if ([BRCServerChangesApplyUtil checkEarlyExitsPriorToApplying:itemCopy si:changesCopy rank:rank scheduler:applyScheduler zone:zoneCopy session:self->_session isDeleteOfShareRoot:v104 diffs:v121 clientZone:clientZone]|| v17)
  {
    goto LABEL_87;
  }

  if (![changesCopy isLive])
  {
    if (![BRCServerChangesApplyUtil handleApplyChangesForUnliveServerItem:itemCopy isDeleteOfShareRoot:v16 rank:rank scheduler:applyScheduler zone:zoneCopy session:self->_session])
    {
      [itemCopy markDead];
      [itemCopy saveToDBForServerEdit:1 keepAliases:0];
      clientZone2 = [itemCopy clientZone];
      [clientZone2 didApplyTombstoneForRank:{objc_msgSend(changesCopy, "rank")}];

      v109 = itemCopy;
LABEL_86:
      dbRowID = [zoneCopy dbRowID];
      [applyScheduler setState:0 forRank:rank zoneRowID:dbRowID];

      itemCopy = v109;
      goto LABEL_87;
    }

    goto LABEL_87;
  }

  v119 = 0;
  if ([itemCopy isShareAcceptationFault])
  {
    asShareAcceptationFault = [itemCopy asShareAcceptationFault];
    [asShareAcceptationFault markNeedsTransformIntoNormalFault];

    v119 = 1;
  }

  if ([changesCopy isDirectoryFault])
  {
    itemID = [changesCopy itemID];
    if ([itemID isDocumentsFolder])
    {
      appLibrary = [itemCopy appLibrary];
      v21 = ([appLibrary state] & 0x4000000) == 0;

      if (v21)
      {
        goto LABEL_18;
      }

      appLibrary2 = [itemCopy appLibrary];
      [appLibrary2 clearStateBits:0x4000000];

      itemID = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [BRCServerChangesApplier applyChanges:localItem:rank:zone:];
      }
    }
  }

LABEL_18:
  bouncingAnalyzer = [(BRCAccountSession *)self->_session bouncingAnalyzer];
  [bouncingAnalyzer analyzeServerBouncingOfItem:itemCopy withServerItem:changesCopy];

  if ([itemCopy logicalNameNeedsRename])
  {
    v25 = [itemCopy st];
    [v25 clearBouncedName];
  }

  if (![BRCServerChangesApplyUtil handleEtagsChangesOnly:itemCopy si:changesCopy rank:rank scheduler:applyScheduler zone:zoneCopy diffs:&v121 needsSave:&v119])
  {
    if (itemCopy && ![itemCopy isDead])
    {
      v109 = itemCopy;
      if ([itemCopy isIdleOrRejected])
      {
        v35 = brc_bread_crumbs();
        v36 = brc_default_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          [BRCServerChangesApplier applyChanges:localItem:rank:zone:];
        }

        [itemCopy updateFromServerItem:changesCopy];
        v119 = 1;
        v109 = itemCopy;
      }

LABEL_62:
      if ((v121 & 0x60) == 0)
      {
        goto LABEL_76;
      }

      parentClientZone = [v109 parentClientZone];
      v63 = [v109 st];
      parentID = [v63 parentID];
      v65 = [v109 st];
      logicalName = [v65 logicalName];
      itemID2 = [v109 itemID];
      v108 = [parentClientZone itemByParentID:parentID andLogicalName:logicalName excludingItemID:itemID2];

      v68 = v108;
      if (v108)
      {
        itemID3 = [v108 itemID];
        isDocumentsFolder = [itemID3 isDocumentsFolder];

        if (isDocumentsFolder)
        {
          v71 = brc_bread_crumbs();
          v72 = brc_default_log();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
          {
            [BRCServerChangesApplier applyChanges:localItem:rank:zone:];
          }

          [v109 markBouncedToNextAvailableBounceNumber:512];
          bouncingAnalyzer2 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
          [bouncingAnalyzer2 handleBounceIncidentDuringApplyWithServerItem:changesCopy bounceReason:512];

          v119 = 1;
        }

        else
        {
          v74 = brc_bread_crumbs();
          v75 = brc_default_log();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
          {
            [BRCServerChangesApplier applyChanges:localItem:rank:zone:];
          }

          [v108 markBouncedToNextAvailableBounceNumber:502];
          bouncingAnalyzer3 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
          [bouncingAnalyzer3 handleBounceIncidentDuringApplyWithServerItem:changesCopy bounceReason:502];

          [v108 saveToDB];
          v77 = [v108 st];
          logicalNameWithoutLocalBounce = [v77 logicalNameWithoutLocalBounce];
          orig = [v109 orig];
          v80 = [orig st];
          logicalName2 = [v80 logicalName];
          v82 = [logicalNameWithoutLocalBounce isEqualToString:logicalName2];

          v68 = v108;
          if (!v82)
          {
            goto LABEL_75;
          }

          v83 = brc_bread_crumbs();
          v84 = brc_default_log();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            [BRCServerChangesApplier applyChanges:localItem:rank:zone:];
          }

          clientZone3 = [v108 clientZone];
          itemID4 = [v108 itemID];
          v87 = [clientZone3 serverItemByItemID:itemID4];

          applyScheduler2 = [(BRCAccountSession *)self->_session applyScheduler];
          [applyScheduler2 createApplyJobFromServerItem:v87 localItem:v108 state:1 kind:2];
        }

        v68 = v108;
      }

LABEL_75:

LABEL_76:
      if ([changesCopy isLive] && objc_msgSend(v109, "isRejected"))
      {
        v89 = brc_bread_crumbs();
        v90 = brc_default_log();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy = self;
          v124 = 2112;
          rankCopy = v89;
          _os_log_impl(&dword_223E7A000, v90, OS_LOG_TYPE_DEFAULT, "[WARNING] Rejected item was revived.  Marking sync as idle to apply server version for %@%@", buf, 0x16u);
        }

        [v109 markRejectedItemRemotelyRevived];
        v119 = 1;
      }

      if (v119 == 1)
      {
        [v109 saveToDBForServerEdit:1 keepAliases:0];
        if (!itemCopy)
        {
          itemID5 = [v109 itemID];
          v92 = +[BRCUserNotificationManager sharedManager];
          itemIDString = [itemID5 itemIDString];
          v94 = [v92 hasPendingNotificationsForIdentifier:itemIDString];

          if (v94)
          {
            fileObjectID = [v109 fileObjectID];
            clientZone4 = [v109 clientZone];
            v97 = [clientZone4 db];
            v113[0] = MEMORY[0x277D85DD0];
            v113[1] = 3221225472;
            v113[2] = __60__BRCServerChangesApplier_applyChanges_localItem_rank_zone___block_invoke_15;
            v113[3] = &unk_2784FF478;
            v98 = fileObjectID;
            v114 = v98;
            v115 = itemID5;
            [v97 scheduleFlushWithCheckpoint:0 whenFlushed:v113];
          }
        }
      }

      goto LABEL_86;
    }

    parentZoneOnFS = [changesCopy parentZoneOnFS];
    clientZone5 = [parentZoneOnFS clientZone];

    if (clientZone5)
    {
      v27 = itemCopy != 0;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      v28 = 0;
LABEL_50:
      v109 = [changesCopy newLocalItemWithDBRowID:{objc_msgSend(itemCopy, "dbRowID")}];

      v119 = 1;
      if (v28)
      {
        [v109 markBouncedToNextAvailableBounceNumber:500];
        bouncingAnalyzer4 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
        [bouncingAnalyzer4 handleBounceIncidentDuringApplyWithServerItem:changesCopy bounceReason:500];
      }

      if ([v109 isSharedToMeTopLevelItem])
      {
        asSharedItem = [changesCopy asSharedItem];
        fallbackParentAppLibraryOnFS = [asSharedItem fallbackParentAppLibraryOnFS];

        defaultClientZone = [fallbackParentAppLibraryOnFS defaultClientZone];
        asShareableItem = [v109 asShareableItem];
        unsaltedBookmarkData = [asShareableItem unsaltedBookmarkData];

        v50 = [defaultClientZone serverAliasByUnsaltedBookmarkData:unsaltedBookmarkData];
        LODWORD(asShareableItem) = v50 == 0;

        if (asShareableItem)
        {
          v51 = brc_bread_crumbs();
          v52 = brc_default_log();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy = v51;
            _os_log_impl(&dword_223E7A000, v52, OS_LOG_TYPE_DEFAULT, "[WARNING] No alias pointing to new item shared container, forcing sync down on private container%@", buf, 0xCu);
          }

          serverZone = [defaultClientZone serverZone];
          state = [serverZone state];

          if ((state & 4) != 0)
          {
            [defaultClientZone scheduleSyncDown];
          }

          else
          {
            itemGlobalID = [changesCopy itemGlobalID];
            serverZone2 = [defaultClientZone serverZone];
            v57 = [BRCItemID shareAliasRecordIDFromTargetItemID:itemGlobalID zone:serverZone2 hasDerivedShareAlias:0];

            v58 = [defaultClientZone locateRecordIfNecessaryForRecordID:v57 isUserWaiting:0];
            v116[0] = MEMORY[0x277D85DD0];
            v116[1] = 3221225472;
            v116[2] = __60__BRCServerChangesApplier_applyChanges_localItem_rank_zone___block_invoke;
            v116[3] = &unk_278502540;
            v59 = v57;
            v117 = v59;
            [v58 addLocateRecordCompletionBlock:v116];
          }
        }
      }

      v60 = brc_bread_crumbs();
      v61 = brc_default_log();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        v101 = @"new";
        *buf = 138412802;
        if (itemCopy)
        {
          v101 = @"revived";
        }

        selfCopy = v101;
        v124 = 2112;
        rankCopy = v109;
        v126 = 2112;
        v127 = v60;
        _os_log_debug_impl(&dword_223E7A000, v61, OS_LOG_TYPE_DEBUG, "[DEBUG] Created reservation for %@ item: %@%@", buf, 0x20u);
      }

      goto LABEL_62;
    }

    parentItemIDOnFS = [changesCopy parentItemIDOnFS];
    v118 = 0;
    if ([BRCServerChangesApplyUtil handleNonRevivedItemIfNecessary:0 si:changesCopy rank:rank scheduler:applyScheduler zone:zoneCopy hasInitialScanItemTypeMismatch:&v118])
    {

      goto LABEL_87;
    }

    if (v118 == 1)
    {
      bouncingAnalyzer5 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
      [bouncingAnalyzer5 reportInitialScanItemTypeMismatch:changesCopy];
    }

    v38 = [changesCopy st];
    logicalName3 = [v38 logicalName];
    v40 = [clientZone5 itemByParentID:parentItemIDOnFS andLogicalName:logicalName3];

    if (v40)
    {
      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        selfCopy = v40;
        v124 = 2112;
        rankCopy = changesCopy;
        v126 = 2112;
        v127 = v41;
        _os_log_debug_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEBUG, "[DEBUG] Found item %@ that collides with %@%@", buf, 0x20u);
      }

      if (-[BRCServerChangesApplier isDead](v40, "isDead") & 1) == 0 && ([changesCopy isSharedToMeTopLevelItem])
      {
        v28 = 1;
LABEL_49:

        goto LABEL_50;
      }

      bouncingAnalyzer6 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
      v44 = [bouncingAnalyzer6 analyzeBouncingOfItem:v40 withServerItem:changesCopy bounceReason:501];

      [(BRCServerChangesApplier *)v40 markBouncedToNextAvailableBounceNumber:v44];
      bouncingAnalyzer7 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
      [bouncingAnalyzer7 handleBounceIncidentDuringApplyWithServerItem:changesCopy bounceReason:v44];

      [(BRCServerChangesApplier *)v40 saveToDB];
    }

    v28 = 0;
    goto LABEL_49;
  }

LABEL_87:
  __brc_leave_section(v120);

  v100 = *MEMORY[0x277D85DE8];
}

void __60__BRCServerChangesApplier_applyChanges_localItem_rank_zone___block_invoke(uint64_t a1, int a2, void *a3)
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
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] Fetch share alias for share alias record ID [%@]: %@ with error %@%@", &v11, 0x2Au);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __60__BRCServerChangesApplier_applyChanges_localItem_rank_zone___block_invoke_15(uint64_t a1)
{
  v2 = [*(a1 + 32) asString];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__BRCServerChangesApplier_applyChanges_localItem_rank_zone___block_invoke_2;
  v3[3] = &unk_278505BB0;
  v4 = *(a1 + 40);
  [BRCImportUtil forceLatestVersionOnDiskForItemID:v2 completionHandler:v3];
}

void __60__BRCServerChangesApplier_applyChanges_localItem_rank_zone___block_invoke_2(uint64_t a1)
{
  v3 = +[BRCUserNotificationManager sharedManager];
  v2 = [*(a1 + 32) itemIDString];
  [v3 schedulePendingNotificationWithIdentifier:v2];
}

- (void)_handleServerItemBRAliasIfNeeded:li:jobID:zone:diffs:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Forwarding server alias rank bump to target item %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_handleServerItemBRAliasIfNeeded:li:jobID:zone:diffs:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Encountered a share alias, syncing down shared database to detect %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)applyChanges:localItem:rank:zone:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: li || si%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)applyChanges:localItem:rank:zone:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Clearing the listed docs bit on the documents folder because the documents folder is a dir-fault%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)applyChanges:localItem:rank:zone:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Updating item %@ from server item%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)applyChanges:localItem:rank:zone:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Bouncing by path item %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)applyChanges:localItem:rank:zone:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] We are vacating where the bypath item want's to be. Scheduling apply%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)applyChanges:localItem:rank:zone:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Collision with the Documents folder. We should bounce our item and not the Documents Folder%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end