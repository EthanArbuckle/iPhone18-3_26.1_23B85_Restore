@interface BRCServerChangesApplier
- (BOOL)_handleServerItemBRAliasIfNeeded:(id)a3 li:(id)a4 jobID:(int64_t)a5 zone:(id)a6 diffs:(unint64_t)a7;
- (BRCServerChangesApplier)initWithAccountSession:(id)a3;
- (void)applyChanges:(id)a3 localItem:(id)a4 rank:(int64_t)a5 zone:(id)a6;
@end

@implementation BRCServerChangesApplier

- (BRCServerChangesApplier)initWithAccountSession:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRCServerChangesApplier;
  v6 = [(BRCServerChangesApplier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
  }

  return v7;
}

- (BOOL)_handleServerItemBRAliasIfNeeded:(id)a3 li:(id)a4 jobID:(int64_t)a5 zone:(id)a6 diffs:(unint64_t)a7
{
  v11 = a3;
  v12 = a6;
  if (([a4 isBRAlias] & 1) != 0 || objc_msgSend(v11, "isBRAlias"))
  {
    v13 = [(BRCAccountSession *)self->_session applyScheduler];
    v14 = [v11 aliasTargetClientZone];
    if ([v14 isSharedZone])
    {
      v15 = [v11 aliasTargetItemID];
      v16 = [v14 serverItemByItemID:v15];
      if (v16)
      {
        v17 = v16;
        v18 = brc_bread_crumbs();
        v19 = brc_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [BRCServerChangesApplier _handleServerItemBRAliasIfNeeded:li:jobID:zone:diffs:];
        }

        v20 = [v14 itemByItemID:v15];
        [v13 createApplyJobFromServerItem:v17 localItem:v20 state:1 kind:2];

        goto LABEL_14;
      }
    }

    if (![v11 aliasTargetIsShared])
    {
LABEL_15:
      v24 = [v12 dbRowID];
      [v13 setState:0 forRank:a5 zoneRowID:v24];

      v21 = 1;
      goto LABEL_16;
    }

    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [BRCServerChangesApplier _handleServerItemBRAliasIfNeeded:li:jobID:zone:diffs:];
    }

    v15 = [(BRCAccountSession *)self->_session containerScheduler];
    [v15 scheduleSyncDownForSharedDatabaseImmediately:0];
LABEL_14:

    goto LABEL_15;
  }

  v21 = 0;
LABEL_16:

  return v21;
}

- (void)applyChanges:(id)a3 localItem:(id)a4 rank:(int64_t)a5 zone:(id)a6
{
  v134 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v112 = [v11 clientZone];
  v110 = [(BRCAccountSession *)self->_session applyScheduler];
  v121 = [v10 diffAgainstServerItem:v9];
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
    v123 = v30;
    v124 = 2048;
    if (!v10)
    {
      v33 = "existing";
    }

    v125 = a5;
    v126 = 2080;
    v127 = v33;
    v128 = 2112;
    v129 = v9;
    v130 = 2112;
    v131 = v31;
    v132 = 2112;
    v133 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Apply Changes[%lld]: %s item: %@\n diffs: %@%@", buf, 0x3Eu);
  }

  if (!(v9 | v10))
  {
    v102 = brc_bread_crumbs();
    v103 = brc_default_log();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
    {
      [BRCServerChangesApplier applyChanges:localItem:rank:zone:];
    }
  }

  if (!v112)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v123 = v9;
      v124 = 2112;
      v125 = v10;
      v126 = 2112;
      v127 = v14;
      _os_log_fault_impl(&dword_223E7A000, v15, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: no client zone when applying %@ and %@%@", buf, 0x20u);
    }
  }

  v16 = [BRCServerChangesApplyUtil deletingShareRoot:v9 localItem:v10];
  v17 = [(BRCServerChangesApplier *)self _handleServerItemBRAliasIfNeeded:v9 li:v10 jobID:a5 zone:v11 diffs:v121];
  LOBYTE(v104) = v16;
  if ([BRCServerChangesApplyUtil checkEarlyExitsPriorToApplying:v10 si:v9 rank:a5 scheduler:v110 zone:v11 session:self->_session isDeleteOfShareRoot:v104 diffs:v121 clientZone:v112]|| v17)
  {
    goto LABEL_87;
  }

  if (![v9 isLive])
  {
    if (![BRCServerChangesApplyUtil handleApplyChangesForUnliveServerItem:v10 isDeleteOfShareRoot:v16 rank:a5 scheduler:v110 zone:v11 session:self->_session])
    {
      [v10 markDead];
      [v10 saveToDBForServerEdit:1 keepAliases:0];
      v29 = [v10 clientZone];
      [v29 didApplyTombstoneForRank:{objc_msgSend(v9, "rank")}];

      v109 = v10;
LABEL_86:
      v99 = [v11 dbRowID];
      [v110 setState:0 forRank:a5 zoneRowID:v99];

      v10 = v109;
      goto LABEL_87;
    }

    goto LABEL_87;
  }

  v119 = 0;
  if ([v10 isShareAcceptationFault])
  {
    v18 = [v10 asShareAcceptationFault];
    [v18 markNeedsTransformIntoNormalFault];

    v119 = 1;
  }

  if ([v9 isDirectoryFault])
  {
    v19 = [v9 itemID];
    if ([v19 isDocumentsFolder])
    {
      v20 = [v10 appLibrary];
      v21 = ([v20 state] & 0x4000000) == 0;

      if (v21)
      {
        goto LABEL_18;
      }

      v22 = [v10 appLibrary];
      [v22 clearStateBits:0x4000000];

      v19 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [BRCServerChangesApplier applyChanges:localItem:rank:zone:];
      }
    }
  }

LABEL_18:
  v24 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
  [v24 analyzeServerBouncingOfItem:v10 withServerItem:v9];

  if ([v10 logicalNameNeedsRename])
  {
    v25 = [v10 st];
    [v25 clearBouncedName];
  }

  if (![BRCServerChangesApplyUtil handleEtagsChangesOnly:v10 si:v9 rank:a5 scheduler:v110 zone:v11 diffs:&v121 needsSave:&v119])
  {
    if (v10 && ![v10 isDead])
    {
      v109 = v10;
      if ([v10 isIdleOrRejected])
      {
        v35 = brc_bread_crumbs();
        v36 = brc_default_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          [BRCServerChangesApplier applyChanges:localItem:rank:zone:];
        }

        [v10 updateFromServerItem:v9];
        v119 = 1;
        v109 = v10;
      }

LABEL_62:
      if ((v121 & 0x60) == 0)
      {
        goto LABEL_76;
      }

      v62 = [v109 parentClientZone];
      v63 = [v109 st];
      v64 = [v63 parentID];
      v65 = [v109 st];
      v66 = [v65 logicalName];
      v67 = [v109 itemID];
      v108 = [v62 itemByParentID:v64 andLogicalName:v66 excludingItemID:v67];

      v68 = v108;
      if (v108)
      {
        v69 = [v108 itemID];
        v70 = [v69 isDocumentsFolder];

        if (v70)
        {
          v71 = brc_bread_crumbs();
          v72 = brc_default_log();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
          {
            [BRCServerChangesApplier applyChanges:localItem:rank:zone:];
          }

          [v109 markBouncedToNextAvailableBounceNumber:512];
          v73 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
          [v73 handleBounceIncidentDuringApplyWithServerItem:v9 bounceReason:512];

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
          v76 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
          [v76 handleBounceIncidentDuringApplyWithServerItem:v9 bounceReason:502];

          [v108 saveToDB];
          v77 = [v108 st];
          v78 = [v77 logicalNameWithoutLocalBounce];
          v79 = [v109 orig];
          v80 = [v79 st];
          v81 = [v80 logicalName];
          v82 = [v78 isEqualToString:v81];

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

          v85 = [v108 clientZone];
          v86 = [v108 itemID];
          v87 = [v85 serverItemByItemID:v86];

          v88 = [(BRCAccountSession *)self->_session applyScheduler];
          [v88 createApplyJobFromServerItem:v87 localItem:v108 state:1 kind:2];
        }

        v68 = v108;
      }

LABEL_75:

LABEL_76:
      if ([v9 isLive] && objc_msgSend(v109, "isRejected"))
      {
        v89 = brc_bread_crumbs();
        v90 = brc_default_log();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v123 = self;
          v124 = 2112;
          v125 = v89;
          _os_log_impl(&dword_223E7A000, v90, OS_LOG_TYPE_DEFAULT, "[WARNING] Rejected item was revived.  Marking sync as idle to apply server version for %@%@", buf, 0x16u);
        }

        [v109 markRejectedItemRemotelyRevived];
        v119 = 1;
      }

      if (v119 == 1)
      {
        [v109 saveToDBForServerEdit:1 keepAliases:0];
        if (!v10)
        {
          v91 = [v109 itemID];
          v92 = +[BRCUserNotificationManager sharedManager];
          v93 = [v91 itemIDString];
          v94 = [v92 hasPendingNotificationsForIdentifier:v93];

          if (v94)
          {
            v95 = [v109 fileObjectID];
            v96 = [v109 clientZone];
            v97 = [v96 db];
            v113[0] = MEMORY[0x277D85DD0];
            v113[1] = 3221225472;
            v113[2] = __60__BRCServerChangesApplier_applyChanges_localItem_rank_zone___block_invoke_15;
            v113[3] = &unk_2784FF478;
            v98 = v95;
            v114 = v98;
            v115 = v91;
            [v97 scheduleFlushWithCheckpoint:0 whenFlushed:v113];
          }
        }
      }

      goto LABEL_86;
    }

    v26 = [v9 parentZoneOnFS];
    v107 = [v26 clientZone];

    if (v107)
    {
      v27 = v10 != 0;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      v28 = 0;
LABEL_50:
      v109 = [v9 newLocalItemWithDBRowID:{objc_msgSend(v10, "dbRowID")}];

      v119 = 1;
      if (v28)
      {
        [v109 markBouncedToNextAvailableBounceNumber:500];
        v46 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
        [v46 handleBounceIncidentDuringApplyWithServerItem:v9 bounceReason:500];
      }

      if ([v109 isSharedToMeTopLevelItem])
      {
        v47 = [v9 asSharedItem];
        v106 = [v47 fallbackParentAppLibraryOnFS];

        v48 = [v106 defaultClientZone];
        v49 = [v109 asShareableItem];
        v105 = [v49 unsaltedBookmarkData];

        v50 = [v48 serverAliasByUnsaltedBookmarkData:v105];
        LODWORD(v49) = v50 == 0;

        if (v49)
        {
          v51 = brc_bread_crumbs();
          v52 = brc_default_log();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v123 = v51;
            _os_log_impl(&dword_223E7A000, v52, OS_LOG_TYPE_DEFAULT, "[WARNING] No alias pointing to new item shared container, forcing sync down on private container%@", buf, 0xCu);
          }

          v53 = [v48 serverZone];
          v54 = [v53 state];

          if ((v54 & 4) != 0)
          {
            [v48 scheduleSyncDown];
          }

          else
          {
            v55 = [v9 itemGlobalID];
            v56 = [v48 serverZone];
            v57 = [BRCItemID shareAliasRecordIDFromTargetItemID:v55 zone:v56 hasDerivedShareAlias:0];

            v58 = [v48 locateRecordIfNecessaryForRecordID:v57 isUserWaiting:0];
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
        if (v10)
        {
          v101 = @"revived";
        }

        v123 = v101;
        v124 = 2112;
        v125 = v109;
        v126 = 2112;
        v127 = v60;
        _os_log_debug_impl(&dword_223E7A000, v61, OS_LOG_TYPE_DEBUG, "[DEBUG] Created reservation for %@ item: %@%@", buf, 0x20u);
      }

      goto LABEL_62;
    }

    v34 = [v9 parentItemIDOnFS];
    v118 = 0;
    if ([BRCServerChangesApplyUtil handleNonRevivedItemIfNecessary:0 si:v9 rank:a5 scheduler:v110 zone:v11 hasInitialScanItemTypeMismatch:&v118])
    {

      goto LABEL_87;
    }

    if (v118 == 1)
    {
      v37 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
      [v37 reportInitialScanItemTypeMismatch:v9];
    }

    v38 = [v9 st];
    v39 = [v38 logicalName];
    v40 = [v107 itemByParentID:v34 andLogicalName:v39];

    if (v40)
    {
      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v123 = v40;
        v124 = 2112;
        v125 = v9;
        v126 = 2112;
        v127 = v41;
        _os_log_debug_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEBUG, "[DEBUG] Found item %@ that collides with %@%@", buf, 0x20u);
      }

      if (-[BRCServerChangesApplier isDead](v40, "isDead") & 1) == 0 && ([v9 isSharedToMeTopLevelItem])
      {
        v28 = 1;
LABEL_49:

        goto LABEL_50;
      }

      v43 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
      v44 = [v43 analyzeBouncingOfItem:v40 withServerItem:v9 bounceReason:501];

      [(BRCServerChangesApplier *)v40 markBouncedToNextAvailableBounceNumber:v44];
      v45 = [(BRCAccountSession *)self->_session bouncingAnalyzer];
      [v45 handleBounceIncidentDuringApplyWithServerItem:v9 bounceReason:v44];

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