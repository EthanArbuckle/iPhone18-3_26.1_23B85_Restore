@interface BRCServerChangesApplyUtil
+ (BOOL)checkEarlyExitsPriorToApplying:(id)applying si:(id)si rank:(int64_t)rank scheduler:(id)scheduler zone:(id)zone session:(id)session isDeleteOfShareRoot:(BOOL)root diffs:(unint64_t)self0 clientZone:(id)self1;
+ (BOOL)deletingShareRoot:(id)root localItem:(id)item;
+ (BOOL)handleApplyChangesForUnliveServerItem:(id)item isDeleteOfShareRoot:(BOOL)root rank:(int64_t)rank scheduler:(id)scheduler zone:(id)zone session:(id)session;
+ (BOOL)handleEtagsChangesOnly:(id)only si:(id)si rank:(int64_t)rank scheduler:(id)scheduler zone:(id)zone diffs:(unint64_t *)diffs needsSave:(BOOL *)save;
+ (BOOL)handleNonRevivedItemIfNecessary:(id)necessary si:(id)si rank:(int64_t)rank scheduler:(id)scheduler zone:(id)zone hasInitialScanItemTypeMismatch:(BOOL *)mismatch;
@end

@implementation BRCServerChangesApplyUtil

+ (BOOL)checkEarlyExitsPriorToApplying:(id)applying si:(id)si rank:(int64_t)rank scheduler:(id)scheduler zone:(id)zone session:(id)session isDeleteOfShareRoot:(BOOL)root diffs:(unint64_t)self0 clientZone:(id)self1
{
  applyingCopy = applying;
  siCopy = si;
  schedulerCopy = scheduler;
  zoneCopy = zone;
  sessionCopy = session;
  clientZoneCopy = clientZone;
  LOBYTE(v25) = root;
  if ([BRCServerChangesApplyUtil_Private localItemHasUnsyncedChanges:applyingCopy si:siCopy rank:rank scheduler:schedulerCopy clientZone:clientZoneCopy zone:zoneCopy isDeleteOfShareRoot:v25 session:sessionCopy]|| [BRCServerChangesApplyUtil_Private serverItemDeadWithNoLiveLocalItem:applyingCopy si:siCopy rank:rank scheduler:schedulerCopy clientZone:clientZoneCopy zone:zoneCopy]|| [BRCServerChangesApplyUtil_Private serverItemWouldBeParentedToDeadFolder:applyingCopy si:siCopy rank:rank scheduler:schedulerCopy zone:zoneCopy diffs:diffs])
  {
    v22 = 1;
  }

  else
  {
    parentItemIDOnFS = [siCopy parentItemIDOnFS];
    v22 = [BRCServerChangesApplyUtil_Private appLibraryUndergoingCZM:applyingCopy zone:zoneCopy rank:rank parentID:parentItemIDOnFS scheduler:schedulerCopy session:sessionCopy]|| [BRCServerChangesApplyUtil_Private itemUndergoingCZMToAnotherZone:applyingCopy si:siCopy clientZone:clientZoneCopy rank:rank scheduler:schedulerCopy zone:zoneCopy];
  }

  return v22;
}

+ (BOOL)handleApplyChangesForUnliveServerItem:(id)item isDeleteOfShareRoot:(BOOL)root rank:(int64_t)rank scheduler:(id)scheduler zone:(id)zone session:(id)session
{
  rootCopy = root;
  v67 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  schedulerCopy = scheduler;
  zoneCopy = zone;
  sessionCopy = session;
  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v48 = @"NO";
    *buf = 138412802;
    v62 = itemCopy;
    v63 = 2112;
    if (rootCopy)
    {
      v48 = @"YES";
    }

    v64 = v48;
    v65 = 2112;
    v66 = v17;
    _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] handleApplyChangesForUnliveServerItem for %@\ndelete share root: %@%@", buf, 0x20u);
  }

  if (![itemCopy isFSRoot])
  {
    if (!rootCopy || ![itemCopy isDocument])
    {
      goto LABEL_34;
    }

    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      +[BRCServerChangesApplyUtil handleApplyChangesForUnliveServerItem:isDeleteOfShareRoot:rank:scheduler:zone:session:];
    }

    localDiffs = [itemCopy localDiffs];
    inFlightSyncUpDiffs = [itemCopy inFlightSyncUpDiffs];
    if (([itemCopy needsUpload] & 1) == 0 && ((inFlightSyncUpDiffs | localDiffs) & 0x180000) == 0)
    {
      asDocument = [itemCopy asDocument];
      currentVersion = [asDocument currentVersion];
      uploadError = [currentVersion uploadError];
      v30 = [uploadError br_isCloudDocsErrorCode:43];

      if (!v30)
      {
        goto LABEL_34;
      }
    }

    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke;
    v55[3] = &unk_278502F80;
    v56 = itemCopy;
    v31 = sessionCopy;
    v57 = v31;
    v58 = schedulerCopy;
    rankCopy = rank;
    v59 = zoneCopy;
    v32 = MEMORY[0x22AA4A310](v55);
    clientDB = [v31 clientDB];
    v34 = [clientDB groupInTransaction:v32];

    if ((v34 & 1) == 0)
    {
LABEL_34:
      if (![itemCopy isDirectory] || (objc_msgSend(itemCopy, "asDirectory"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "hasLiveChildren"), v35, !v36))
      {
        v22 = 0;
        goto LABEL_31;
      }

      v37 = brc_bread_crumbs();
      v38 = brc_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        +[BRCServerChangesApplyUtil handleApplyChangesForUnliveServerItem:isDeleteOfShareRoot:rank:scheduler:zone:session:];
      }

      if (rootCopy)
      {
        rankCopy2 = rank;
        v39 = [itemCopy db];
        itemID = [itemCopy itemID];
        clientZone = [itemCopy clientZone];
        dbRowID = [clientZone dbRowID];
        v43 = [v39 fetch:{@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE item_stat_ckinfo IS NULL AND item_parent_id = %@ AND zone_rowid = %@", itemID, dbRowID}];

        if ([v43 next])
        {
          do
          {
            v44 = objc_autoreleasePoolPush();
            v53[0] = MEMORY[0x277D85DD0];
            v53[1] = 3221225472;
            v53[2] = __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_36;
            v53[3] = &unk_2784FF910;
            v54 = sessionCopy;
            v45 = [v43 object:v53];
            v46 = brc_bread_crumbs();
            v47 = brc_default_log();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v62 = itemCopy;
              v63 = 2112;
              v64 = v46;
              _os_log_debug_impl(&dword_223E7A000, v47, OS_LOG_TYPE_DEBUG, "[DEBUG] Marking item unknown to server %@ as rejected%@", buf, 0x16u);
            }

            [v45 markForceRejected];
            [v45 saveToDB];

            objc_autoreleasePoolPop(v44);
          }

          while (([v43 next] & 1) != 0);
        }

        rank = rankCopy2;
      }

      dbRowID2 = [zoneCopy dbRowID];
      [schedulerCopy setState:25 forRank:rank zoneRowID:dbRowID2];
    }

    v22 = 1;
    goto LABEL_31;
  }

  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    +[BRCServerChangesApplyUtil handleApplyChangesForUnliveServerItem:isDeleteOfShareRoot:rank:scheduler:zone:session:];
  }

  [itemCopy markItemForgottenByServer];
  [itemCopy markForceNeedsSyncUp];
  dbRowID3 = [zoneCopy dbRowID];
  [schedulerCopy setState:0 forRank:rank zoneRowID:dbRowID3];

  v22 = 1;
  [itemCopy saveToDBForServerEdit:1 keepAliases:0];
LABEL_31:

  v50 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke(uint64_t a1)
{
  v92[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (![*(a1 + 32) isTopLevelSharedItem])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_cold_1();
    }

    v10 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:*v2];
    v11 = [*v2 clientZone];
    v12 = [v10 brc_shareItemID];
    v13 = [v11 itemByItemID:v12];

    if (!v13)
    {
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v10 brc_shareItemID];
        v26 = [*v2 itemID];
        v27 = [v26 debugItemIDString];
        *buf = 138412802;
        *&buf[4] = v25;
        v85 = 2112;
        v86 = v27;
        v87 = 2112;
        v88 = v23;
        _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEFAULT, "[WARNING] Could not find share root item %@ for item %@. Just trash ...%@", buf, 0x20u);
      }

      v17 = [*v2 appLibrary];
      v5 = [v17 defaultClientZone];
      v6 = 0;
      v7 = 0;
      goto LABEL_35;
    }

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_cold_2();
    }

    v16 = [v13 extendedAttributes];
    v17 = [v16 objectForKeyedSubscript:@"com.apple.clouddocs.private.recovered-bookmark#N"];

    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v17 encoding:4];
      *buf = 0;
      [v18 parseUnsaltedBookmarkDataWithItemID:buf mangledID:0 error:0];
      v19 = [v13 parentClientZone];
      v20 = [v19 itemByItemID:*buf];
      v6 = [v20 asDirectory];

      if (v6)
      {
        v21 = brc_bread_crumbs();
        v22 = brc_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_cold_3(v6);
        }

        v7 = 0;
        goto LABEL_29;
      }

      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_cold_4(buf);
      }
    }

    v79 = v10;
    v30 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_cold_5(v13);
    }

    v32 = [*(a1 + 40) fsImporter];
    v33 = [v13 appLibrary];
    v83 = 0;
    v34 = [v32 getOrCreateTrashItemInAppLibrary:v33 error:&v83];
    v35 = v83;

    v36 = [*(a1 + 40) fsImporter];
    v37 = [v13 st];
    v38 = [v37 logicalNameWithoutLocalBounce];
    v82 = v35;
    v77 = v34;
    v6 = [v36 createAndImportNewDirectoryWithLogicalName:v38 parentItem:v34 error:&v82];
    v7 = v82;

    v39 = [v13 computeItemPathRelativeToRoot];
    v40 = [v6 st];
    [v40 setTrashPutBackPath:v39];

    v41 = [v13 st];
    v42 = [v41 parentID];
    v43 = [v6 st];
    [v43 setTrashPutBackParentID:v42];

    if ([v6 saveToDB])
    {
      v75 = v17;
      v44 = MEMORY[0x277CCACA8];
      v45 = [v6 itemID];
      v46 = [v45 itemIDString];
      v47 = [v6 clientZone];
      v48 = [v47 mangledID];
      v49 = [v44 unsaltedBookmarkDataWithItemResolutionString:v46 serverZoneMangledID:v48];

      v50 = v49;
      v51 = brc_bread_crumbs();
      v52 = brc_default_log();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_cold_6();
      }

      v91 = @"com.apple.clouddocs.private.recovered-bookmark#N";
      v53 = [v50 dataUsingEncoding:4];
      v92[0] = v53;
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:&v91 count:1];
      [v13 updateWithXattrs:v54];

      [v13 saveToDB];
      v17 = v75;
    }

    if (!v6)
    {
      v57 = brc_bread_crumbs();
      v58 = brc_default_log();
      v10 = v79;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v57;
        _os_log_impl(&dword_223E7A000, v58, OS_LOG_TYPE_DEFAULT, "[WARNING] Could not create parent item in trash. Just trash ...%@", buf, 0xCu);
      }

      v59 = [*v2 appLibrary];
      v5 = [v59 defaultClientZone];

      v6 = 0;
      goto LABEL_35;
    }

    v10 = v79;
LABEL_29:
    v55 = brc_bread_crumbs();
    v56 = brc_default_log();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      v72 = *v2;
      v78 = [v13 st];
      [v78 logicalNameWithoutLocalBounce];
      v73 = v76 = v17;
      [v6 itemGlobalID];
      v74 = v80 = v10;
      *buf = 138413058;
      *&buf[4] = v72;
      v85 = 2112;
      v86 = v73;
      v87 = 2112;
      v88 = v74;
      v89 = 2112;
      v90 = v55;
      _os_log_debug_impl(&dword_223E7A000, v56, OS_LOG_TYPE_DEBUG, "[DEBUG] Trash item %@ under folder %@ with id %@%@", buf, 0x2Au);

      v10 = v80;
      v17 = v76;
    }

    v5 = [v6 clientZone];
LABEL_35:

    goto LABEL_36;
  }

  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_cold_7();
  }

  v5 = [*v2 parentClientZone];
  v6 = 0;
  v7 = 0;
LABEL_36:
  [*(a1 + 32) _moveToZoneWhenServerItemIsDead:v5];
  v60 = [*(a1 + 40) fsImporter];
  v61 = *(a1 + 32);
  v81 = v7;
  v62 = [v60 trashItem:v61 parentItemInTrash:v6 error:&v81];
  v63 = v81;

  if (v62 && ([*v2 markNeedsUploadOrSyncingUp], objc_msgSend(*v2, "saveToDB")))
  {
    v64 = brc_bread_crumbs();
    v65 = brc_default_log();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_cold_8(v2, v64, v65);
    }

    v66 = *(a1 + 64);
    v67 = *(a1 + 48);
    v68 = [*(a1 + 56) dbRowID];
    [v67 setState:0 forRank:v66 zoneRowID:v68];

    v69 = 1;
  }

  else
  {
    v69 = 0;
  }

  v70 = *MEMORY[0x277D85DE8];
  return v69;
}

id __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_36(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 clientDB];
  v7 = [v4 newLocalItemFromPQLResultSet:v5 db:v6 error:a3];

  return v7;
}

+ (BOOL)deletingShareRoot:(id)root localItem:(id)item
{
  itemCopy = item;
  isDead = [root isDead];
  if (root && !isDead)
  {
    goto LABEL_3;
  }

  if ([itemCopy isSharedToMeTopLevelItem])
  {
    isDead2 = 1;
    goto LABEL_11;
  }

  if ([itemCopy isSharedToMeChildItem])
  {
    v8 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:itemCopy];
    brc_shareItemID = [v8 brc_shareItemID];
    clientZone = [itemCopy clientZone];
    v11 = [clientZone serverItemByItemID:brc_shareItemID];

    if (v11)
    {
      isDead2 = [v11 isDead];
    }

    else
    {
      isDead2 = 1;
    }
  }

  else
  {
LABEL_3:
    isDead2 = 0;
  }

LABEL_11:

  return isDead2;
}

+ (BOOL)handleNonRevivedItemIfNecessary:(id)necessary si:(id)si rank:(int64_t)rank scheduler:(id)scheduler zone:(id)zone hasInitialScanItemTypeMismatch:(BOOL *)mismatch
{
  v47 = *MEMORY[0x277D85DE8];
  siCopy = si;
  schedulerCopy = scheduler;
  zoneCopy = zone;
  if (!necessary)
  {
    if (mismatch)
    {
      *mismatch = 0;
    }

    parentItemIDOnFS = [siCopy parentItemIDOnFS];
    clientZone = [siCopy clientZone];
    v19 = [siCopy st];
    logicalName = [v19 logicalName];
    v21 = [clientZone itemByParentID:parentItemIDOnFS andLogicalName:logicalName];

    if (![v21 isFromInitialScan])
    {
      goto LABEL_40;
    }

    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v42 = v21;
      v43 = 2112;
      v44 = siCopy;
      v45 = 2112;
      v46 = v22;
      _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] Found a freshly scanned item from an initial scan that path matches: %@ for server item: %@%@", buf, 0x20u);
    }

    clientZone2 = [v21 clientZone];
    clientZone3 = [siCopy clientZone];
    if (![clientZone2 isEqualToClientZone:clientZone3])
    {
      goto LABEL_35;
    }

    if ([v21 isFSRoot] && (objc_msgSend(siCopy, "isDirectory") & 1) != 0)
    {
      goto LABEL_22;
    }

    v40 = [v21 st];
    type = [v40 type];
    v39 = [siCopy st];
    type2 = [v39 type];
    if (type != type2)
    {
      if (type > 0xA)
      {
        goto LABEL_34;
      }

      if (((1 << type) & 0x611) == 0)
      {
        if (((1 << type) & 0x106) != 0)
        {
LABEL_15:
          if (type2 > 8 || ((1 << type2) & 0x106) == 0)
          {
            if (type != 6)
            {
              goto LABEL_34;
            }

            goto LABEL_29;
          }

          goto LABEL_21;
        }

        if (type == 6)
        {
LABEL_29:
          v34 = type2;

          if (v34 != 6)
          {
LABEL_36:
            v35 = brc_bread_crumbs();
            v36 = brc_default_log();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              +[BRCServerChangesApplyUtil handleNonRevivedItemIfNecessary:si:rank:scheduler:zone:hasInitialScanItemTypeMismatch:];
            }

            if (mismatch)
            {
              v16 = 0;
              *mismatch = 1;
LABEL_41:

              goto LABEL_42;
            }

LABEL_40:
            v16 = 0;
            goto LABEL_41;
          }

LABEL_23:
          v28 = brc_bread_crumbs();
          v29 = brc_default_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            +[BRCServerChangesApplyUtil handleNonRevivedItemIfNecessary:si:rank:scheduler:zone:hasInitialScanItemTypeMismatch:];
          }

          itemID = [siCopy itemID];
          [v21 learnItemID:itemID serverItem:siCopy];

          [v21 saveToDBForServerEdit:1 keepAliases:0];
          v31 = brc_bread_crumbs();
          v32 = brc_default_log();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            +[BRCServerChangesApplyUtil handleNonRevivedItemIfNecessary:si:rank:scheduler:zone:hasInitialScanItemTypeMismatch:];
          }

          dbRowID = [zoneCopy dbRowID];
          [schedulerCopy setState:22 forRank:rank zoneRowID:dbRowID];

          v16 = 1;
          goto LABEL_41;
        }

LABEL_34:

LABEL_35:
        goto LABEL_36;
      }

      if (type2 > 0xA || ((1 << type2) & 0x611) == 0)
      {
        if (type - 1 < 2)
        {
          goto LABEL_15;
        }

        if (type == 6)
        {
          goto LABEL_29;
        }

        if (type == 8)
        {
          goto LABEL_15;
        }

        goto LABEL_34;
      }
    }

LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v16 = 0;
LABEL_42:

  v37 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (BOOL)handleEtagsChangesOnly:(id)only si:(id)si rank:(int64_t)rank scheduler:(id)scheduler zone:(id)zone diffs:(unint64_t *)diffs needsSave:(BOOL *)save
{
  onlyCopy = only;
  siCopy = si;
  schedulerCopy = scheduler;
  zoneCopy = zone;
  if (!onlyCopy)
  {
    goto LABEL_8;
  }

  v18 = *diffs;
  if ((*diffs & 0x7FFF) == 1)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      +[BRCServerChangesApplyUtil handleEtagsChangesOnly:si:rank:scheduler:zone:diffs:needsSave:];
    }

    [onlyCopy updateStructuralCKInfoFromServerItem:siCopy];
    *save = 1;
    v18 = *diffs & 0xFFFFFFFFFFFFFFFELL;
    *diffs = v18;
  }

  if (v18 || ([onlyCopy isDocument] & 1) != 0)
  {
LABEL_8:
    v21 = 0;
  }

  else
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      +[BRCServerChangesApplyUtil handleEtagsChangesOnly:si:rank:scheduler:zone:diffs:needsSave:];
    }

    dbRowID = [zoneCopy dbRowID];
    [schedulerCopy setState:0 forRank:rank zoneRowID:dbRowID];

    v21 = 1;
    if (save)
    {
      [onlyCopy saveToDBForServerEdit:1 keepAliases:0];
    }
  }

  return v21;
}

+ (void)handleApplyChangesForUnliveServerItem:isDeleteOfShareRoot:rank:scheduler:zone:session:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Deleting share root for document %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)handleApplyChangesForUnliveServerItem:isDeleteOfShareRoot:rank:scheduler:zone:session:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Apply Changes[%lld]: postponing rank (live child)%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)handleApplyChangesForUnliveServerItem:isDeleteOfShareRoot:rank:scheduler:zone:session:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] the fs root was remotely deleted, we need to recreate it and reupload it%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Document is under some share root%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Found share root %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_cold_3(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 itemID];
  v2 = [v1 debugItemIDString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v3, v4, "[DEBUG] Found previously created folder in trash: %@%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_cold_4(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*a1 debugItemIDString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Could not find previously created folder in trash: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_cold_5(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 st];
  v2 = [v1 logicalNameWithoutLocalBounce];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v3, v4, "[DEBUG] Create folder %@ under trash%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_cold_6()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Saving trashURLBookmarkDataToSet: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Document is top level shared --> Just trash%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __115__BRCServerChangesApplyUtil_handleApplyChangesForUnliveServerItem_isDeleteOfShareRoot_rank_scheduler_zone_session___block_invoke_cold_8(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_4(&dword_223E7A000, a2, a3, "[DEBUG] Item after trash %@%@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)handleNonRevivedItemIfNecessary:si:rank:scheduler:zone:hasInitialScanItemTypeMismatch:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Item type does not match with the server item type%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)handleNonRevivedItemIfNecessary:si:rank:scheduler:zone:hasInitialScanItemTypeMismatch:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Item type matches with the server item type%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)handleNonRevivedItemIfNecessary:si:rank:scheduler:zone:hasInitialScanItemTypeMismatch:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Suspending rank since freshly scanned means either same content or conflict: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)handleEtagsChangesOnly:si:rank:scheduler:zone:diffs:needsSave:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Accepting Structural Etag update for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)handleEtagsChangesOnly:si:rank:scheduler:zone:diffs:needsSave:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Remove rank for item with no real changes: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end