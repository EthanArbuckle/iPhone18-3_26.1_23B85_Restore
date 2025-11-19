@interface BRCServerChangesApplyUtil_Private
+ (BOOL)_handleApplyingDeletedUnlistedDirectoryIfNecessary:(id)a3 localItem:(id)a4 parent:(id)a5;
+ (BOOL)appLibraryUndergoingCZM:(id)a3 zone:(id)a4 rank:(int64_t)a5 parentID:(id)a6 scheduler:(id)a7 session:(id)a8;
+ (BOOL)itemUndergoingCZMToAnotherZone:(id)a3 si:(id)a4 clientZone:(id)a5 rank:(int64_t)a6 scheduler:(id)a7 zone:(id)a8;
+ (BOOL)localItemHasUnsyncedChanges:(id)a3 si:(id)a4 rank:(int64_t)a5 scheduler:(id)a6 clientZone:(id)a7 zone:(id)a8 isDeleteOfShareRoot:(BOOL)a9 session:(id)a10;
+ (BOOL)serverItemDeadWithNoLiveLocalItem:(id)a3 si:(id)a4 rank:(int64_t)a5 scheduler:(id)a6 clientZone:(id)a7 zone:(id)a8;
+ (BOOL)serverItemWouldBeParentedToDeadFolder:(id)a3 si:(id)a4 rank:(int64_t)a5 scheduler:(id)a6 zone:(id)a7 diffs:(unint64_t)a8;
@end

@implementation BRCServerChangesApplyUtil_Private

+ (BOOL)itemUndergoingCZMToAnotherZone:(id)a3 si:(id)a4 clientZone:(id)a5 rank:(int64_t)a6 scheduler:(id)a7 zone:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a8;
  v17 = [v13 isDocument];
  v18 = 0;
  if (!a3 && v17)
  {
    v29 = a6;
    v19 = [v14 db];
    v20 = [v13 itemID];
    v21 = [v13 clientZone];
    v22 = [v21 dbRowID];
    v23 = [v19 numberWithSQL:{@"SELECT 1 FROM client_items WHERE version_old_zone_item_id = %@ AND version_old_zone_rowid = %@", v20, v22}];
    v24 = [v23 BOOLValue];

    if (v24)
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        +[BRCServerChangesApplyUtil_Private itemUndergoingCZMToAnotherZone:si:clientZone:rank:scheduler:zone:];
      }

      v27 = [v16 dbRowID];
      [v15 setState:17 forRank:v29 zoneRowID:v27];

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

+ (BOOL)appLibraryUndergoingCZM:(id)a3 zone:(id)a4 rank:(int64_t)a5 parentID:(id)a6 scheduler:(id)a7 session:(id)a8
{
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  if (a3)
  {
    goto LABEL_10;
  }

  if (![v14 isNonDesktopRoot])
  {
    goto LABEL_10;
  }

  if (![v13 isCloudDocsZone])
  {
    goto LABEL_10;
  }

  v29 = [v14 appLibraryRowID];
  v17 = [v13 clientZone];
  v18 = [v17 asPrivateClientZone];
  v19 = [v18 defaultAppLibrary];
  v20 = [v19 dbRowID];
  v21 = [v29 isEqual:v20];

  if (v21)
  {
    goto LABEL_10;
  }

  v22 = [v14 appLibraryRowID];
  v23 = [v16 appLibraryByRowID:v22];

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

  v26 = [v13 dbRowID];
  [v15 setState:27 forRank:a5 zoneRowID:v26];

  v27 = 1;
LABEL_11:

  return v27;
}

+ (BOOL)_handleApplyingDeletedUnlistedDirectoryIfNecessary:(id)a3 localItem:(id)a4 parent:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 isDead];
  v11 = 0;
  if (v8 || !v10)
  {
    goto LABEL_12;
  }

  v12 = [v9 st];
  v13 = [v12 ckInfo];
  if (([v13 hasDeletionChangeToken] & 1) == 0)
  {

    goto LABEL_11;
  }

  v14 = [v7 clientZone];
  v15 = [v9 clientZone];
  v16 = [v14 isEqualToClientZone:v15];

  if (!v16)
  {
LABEL_11:
    v11 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v29 = 138412802;
    v30 = v7;
    v31 = 2112;
    v32 = v9;
    v33 = 2112;
    v34 = v17;
    _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] New item %@ older than a deleted directory %@ so marking dead%@", &v29, 0x20u);
  }

  v8 = [v7 newLocalItemWithDBRowID:{objc_msgSend(0, "dbRowID")}];
  [v8 markDead];
  v19 = [v9 st];
  v20 = [v19 ckInfo];
  v21 = [v20 deletionChangeToken];

  if ([v8 isDocument])
  {
    v22 = [v8 asDocument];
    v23 = [v22 currentVersion];
    v24 = [v23 ckInfo];
    [v24 setDeletionChangeToken:v21];
  }

  v25 = [v8 st];
  v26 = [v25 ckInfo];
  [v26 setDeletionChangeToken:v21];

  [v8 markNeedsUploadOrSyncingUp];
  [v8 saveToDB];

  v11 = 1;
LABEL_12:

  v27 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (BOOL)serverItemWouldBeParentedToDeadFolder:(id)a3 si:(id)a4 rank:(int64_t)a5 scheduler:(id)a6 zone:(id)a7 diffs:(unint64_t)a8
{
  v8 = a8;
  v43 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  if (v14 && (v8 & 0x20) == 0 || ![v15 isLive])
  {
    goto LABEL_8;
  }

  v18 = [v15 parentLocalItemOnFS];
  v19 = v18;
  if (!v18)
  {
    if (([a1 _handleApplyingDeletedUnlistedDirectoryIfNecessary:v15 localItem:v14 parent:0] & 1) == 0)
    {
      if ([v15 shouldBeGreedyForApply])
      {
        v22 = [v15 clientZone];
        v23 = [v15 parentItemIDOnFS];
        v24 = [v22 serverItemByItemID:v23];

        if (!v24)
        {
          v30 = brc_bread_crumbs();
          v31 = brc_default_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            +[BRCServerChangesApplyUtil_Private serverItemWouldBeParentedToDeadFolder:si:rank:scheduler:zone:diffs:];
          }

          v32 = [v17 dbRowID];
          [v16 setState:16 forRank:a5 zoneRowID:v32];

          v27 = [v15 parentZoneOnFS];
          v33 = [v27 clientZone];
          v34 = [v15 parentItemIDOnFS];
          v35 = [v33 fetchParentChainIfNecessaryWithParentItemID:v34 isUserWaiting:0];

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
        v38 = a5;
        v39 = 2112;
        v40 = v36;
        v41 = 2112;
        v42 = v25;
        _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] Apply Changes[%lld]: postponing rank (missing parent)%@%@", buf, 0x20u);
        if (v19)
        {
        }
      }

      v27 = [v17 dbRowID];
      [v16 setState:21 forRank:a5 zoneRowID:v27];
LABEL_14:
    }

LABEL_15:

    v21 = 1;
    goto LABEL_16;
  }

  v20 = [v18 isDead];
  if ([a1 _handleApplyingDeletedUnlistedDirectoryIfNecessary:v15 localItem:v14 parent:v19])
  {
    goto LABEL_15;
  }

  if (v20)
  {
    goto LABEL_12;
  }

LABEL_8:
  v21 = 0;
LABEL_16:

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (BOOL)serverItemDeadWithNoLiveLocalItem:(id)a3 si:(id)a4 rank:(int64_t)a5 scheduler:(id)a6 clientZone:(id)a7 zone:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (v14 && ![v14 isDead] || v13 && !objc_msgSend(v13, "isDead"))
  {
    v22 = 0;
  }

  else
  {
    [v13 markNeedsDeleteForRescheduleOfItem:0];
    if ([v13 isSharedToMeTopLevelItem])
    {
      v18 = [v13 asSharedToMeTopLevelItem];
      [v18 insertTombstoneAliasRecordInZone:0];
    }

    [v13 saveToDBForServerEdit:1 keepAliases:0];
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      +[BRCServerChangesApplyUtil_Private serverItemDeadWithNoLiveLocalItem:si:rank:scheduler:clientZone:zone:];
    }

    v21 = [v17 dbRowID];
    [v15 setState:0 forRank:a5 zoneRowID:v21];

    [v16 didApplyTombstoneForRank:a5];
    v22 = 1;
  }

  return v22;
}

+ (BOOL)localItemHasUnsyncedChanges:(id)a3 si:(id)a4 rank:(int64_t)a5 scheduler:(id)a6 clientZone:(id)a7 zone:(id)a8 isDeleteOfShareRoot:(BOOL)a9 session:(id)a10
{
  v88 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a10;
  if (!a9)
  {
    if (([v15 localDiffs] & 0x1000000000000000) != 0)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
      }

      v26 = [v19 dbRowID];
      v27 = v17;
      v28 = 22;
      goto LABEL_13;
    }

    if ([BRCServerChangesApplyUtil shouldForceApplyContentForItem:v15])
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
      }

      goto LABEL_4;
    }

    if (!v15 || ([v15 isIdleOrRejected] & 1) != 0)
    {
      goto LABEL_5;
    }

    if ([v16 isDead])
    {
      v31 = [v15 isDead];
      if (([v15 isDirectory] & 1) == 0 && v31)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
        }

        [v15 markNeedsDeleteForRescheduleOfItem:0];
        [v15 saveToDB];
LABEL_47:
        [v18 didApplyTombstoneForRank:a5];
        v26 = [v19 dbRowID];
        v27 = v17;
        v28 = 0;
LABEL_13:
        [v27 setState:v28 forRank:a5 zoneRowID:v26];

LABEL_14:
        v23 = 1;
        goto LABEL_15;
      }

      if (([v16 isBRAlias] & v31) == 1)
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
      [v15 isDirectory];
      [v16 isBRAlias];
    }

    v34 = [v16 itemID];
    if ([v34 isDocumentsFolder])
    {
      v35 = [v15 itemID];
      v36 = [v35 isDocumentsFolder];

      if (v36)
      {
        v37 = brc_bread_crumbs();
        v38 = brc_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          +[BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:si:rank:scheduler:clientZone:zone:isDeleteOfShareRoot:session:];
        }

        v39 = [v15 serverZone];
        [v15 prepareForSyncUpInZone:v39];

        v40 = [v15 serverZone];
        v41 = [v40 dbRowID];
        [v15 markLatestSyncRequestAcknowledgedInZone:v41];

        [v15 saveToDB];
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
      v72 = [v16 isDead];
      v73 = "";
      *buf = 138412802;
      v83 = v15;
      if (v72)
      {
        v73 = "\n(dead in server truth)";
      }

      v84 = 2080;
      v85 = v73;
      v86 = 2112;
      v87 = v42;
      _os_log_debug_impl(&dword_223E7A000, v43, OS_LOG_TYPE_DEBUG, "[DEBUG] Suspending rank for item with conflicts: %@%s%@", buf, 0x20u);
    }

    if ([v15 isMigratingToFPFS])
    {
      v44 = 15;
    }

    else
    {
      v44 = 22;
    }

    v45 = [v19 dbRowID];
    [v17 setState:v44 forRank:a5 zoneRowID:v45];

    if (!v16)
    {
LABEL_58:
      if ([v15 isSharedToMeChildItem])
      {
        v57 = [v15 st];
        v58 = [v57 ckInfo];

        if (!v58)
        {
          v59 = [v15 localDiffs];
          v60 = [v15 clientZone];
          v61 = [v60 dbRowID];
          v62 = [v15 inFlightSyncUpDiffsInZoneRowID:v61] | v59;

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

              v65 = [v16 st];
              v66 = [v65 ckInfo];
              v67 = [v15 st];
              [v67 setCkInfo:v66];

              [v15 saveToDBForServerEdit:1 keepAliases:1];
              v68 = [v20 containerScheduler];
              [v68 scheduleSyncUpForSideCar];
            }
          }
        }
      }

      v69 = [v15 appLibrary];
      if (([v69 state] & 4) != 0 || !objc_msgSend(v15, "needsSyncUp"))
      {
        goto LABEL_71;
      }

      v70 = [v15 clientZone];
      if ([v70 isSyncBlocked])
      {
        goto LABEL_70;
      }

      v71 = [v15 clientZone];
      if (([v71 syncState] & 5) != 0)
      {

LABEL_70:
LABEL_71:

        goto LABEL_14;
      }

      v74 = [v20 syncUpScheduler];
      v81 = [v74 jobStateFor:v15];

      if (v81 != 50)
      {
        goto LABEL_14;
      }

      v75 = [v15 itemID];
      if (([v75 isDocumentsFolder] & 1) == 0)
      {
        v76 = [v15 isSharedToMe];

        if (v76)
        {
LABEL_82:
          v69 = [v15 clientZone];
          [v69 scheduleSyncUp];
          goto LABEL_71;
        }

        v75 = brc_bread_crumbs();
        v77 = brc_default_log();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          v78 = [v15 clientZone];
          *buf = 138412546;
          v83 = v78;
          v84 = 2112;
          v85 = v75;
          _os_log_impl(&dword_223E7A000, v77, OS_LOG_TYPE_DEFAULT, "[WARNING] client zone %@ forgot to sync up!%@", buf, 0x16u);
        }
      }

      goto LABEL_82;
    }

    v46 = [v15 st];
    v47 = [v46 ckInfo];
    if (v47 || ([v19 isPrivateZone] & 1) == 0)
    {
      if (![v15 isDocument])
      {
        if (([v15 sharingOptions] & 0x7C) != 4)
        {

          goto LABEL_58;
        }

        v54 = [v15 localDiffs];

        if ((v54 & 0x1000000000000000) != 0)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      }

      v80 = v46;
      v48 = [v15 asDocument];
      v49 = [v48 currentVersion];
      v50 = [v49 ckInfo];
      if (v50)
      {
        v51 = v50;
        if (([v15 sharingOptions] & 0x7C) != 4)
        {

          goto LABEL_58;
        }

        v79 = [v15 localDiffs];

        if ((v79 & 0x1000000000000000) != 0)
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
      v83 = v15;
      v84 = 2112;
      v85 = v16;
      v86 = 2112;
      v87 = v55;
      _os_log_debug_impl(&dword_223E7A000, v56, OS_LOG_TYPE_DEBUG, "[DEBUG] Learning sharing options on local item %@ from %@%@", buf, 0x20u);
    }

    [v15 setSharingOptions:{objc_msgSend(v16, "sharingOptions")}];
    [v15 saveToDBForServerEdit:1 keepAliases:1];
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