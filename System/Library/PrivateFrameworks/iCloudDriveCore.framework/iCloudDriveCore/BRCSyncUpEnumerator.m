@interface BRCSyncUpEnumerator
- (BOOL)_checkForSharesWithinSharesWithItem:(id)a3;
- (BOOL)_checkIfParentNeedsRevivalWithParentItem:(id)a3 item:(id)a4;
- (BOOL)_checkIfShouldDenylistForChildrenOfItemBeingCopiedToNewZone:(id)a3;
- (BOOL)_checkIfShouldDenylistForParentDirectoryFaultWithItem:(id)a3;
- (BOOL)_checkIfShouldDenylistForPathMatch:(id)a3;
- (BOOL)_denyListDescendantStackAndItemIfThrottledOrNeedsOSUpgrade:(id)a3 now:(unint64_t)a4;
- (BOOL)_handlePendingShareItemWithPendingDeleteChildren:(id)a3;
- (BOOL)_handleSharedItemWhichMovedToNewShare:(id)a3 rootItem:(id)a4;
- (BOOL)handleItemForOSUpgrade:(id)a3 parentItemID:(id)a4;
- (BOOL)isDenyListed:(id)a3;
- (BOOL)shouldDenylistRemainingDeletionParentStackForItem:(id)a3;
- (BRCSyncUpEnumerator)initWithClientZone:(id)a3;
- (id)_documentsOrAliasesNeedingSyncUpEnumerator;
- (id)_liveDirectoriesNeedingSyncUpEnumerator;
- (id)_nextLiveItem;
- (id)_nextTombstone;
- (id)_tombstoneLeavesNeedingSyncUpEnumerator;
- (id)nextObject;
- (void)_denyListDescendantStack:(id)a3 parentItem:(id)a4 andAddToSet:(id)a5 descendantBlock:(id)a6;
- (void)invalidate;
@end

@implementation BRCSyncUpEnumerator

- (id)nextObject
{
  v19 = *MEMORY[0x277D85DE8];
  stage = self->_stage;
  if (stage <= 3)
  {
    do
    {
      if ((stage - 1) > 1)
      {
        if (stage == 3)
        {
          v4 = [(BRCSyncUpEnumerator *)self _nextTombstone];
          if (v4)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v4 = [(BRCSyncUpEnumerator *)self _nextLiveItem];
        if (v4)
        {
          goto LABEL_31;
        }
      }

      v5 = self->_stage;
      stage = v5 + 1;
      self->_stage = v5 + 1;
      if (v5 <= 0)
      {
        if (v5 == -1)
        {
          enumerator = brc_bread_crumbs();
          v7 = brc_default_log();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v18 = enumerator;
            _os_log_fault_impl(&dword_223E7A000, v7, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Sync: shouldn't be here%@", buf, 0xCu);
          }

LABEL_27:

          goto LABEL_28;
        }

        if (!v5)
        {
          v8 = brc_bread_crumbs();
          v9 = brc_default_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v18 = v8;
            _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync: enumerating documents needing sync up%@", buf, 0xCu);
          }

          v10 = [(BRCSyncUpEnumerator *)self _documentsOrAliasesNeedingSyncUpEnumerator];
LABEL_24:
          enumerator = self->_enumerator;
          self->_enumerator = v10;
LABEL_28:

          stage = self->_stage;
        }
      }

      else
      {
        switch(v5)
        {
          case 1:
            v11 = brc_bread_crumbs();
            v12 = brc_default_log();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v18 = v11;
              _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync: enumerating live or new directories%@", buf, 0xCu);
            }

            v10 = [(BRCSyncUpEnumerator *)self _liveDirectoriesNeedingSyncUpEnumerator];
            goto LABEL_24;
          case 2:
            v13 = brc_bread_crumbs();
            v14 = brc_default_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v18 = v13;
              _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync: enumerating tombstones%@", buf, 0xCu);
            }

            v10 = [(BRCSyncUpEnumerator *)self _tombstoneLeavesNeedingSyncUpEnumerator];
            goto LABEL_24;
          case 3:
            enumerator = brc_bread_crumbs();
            v7 = brc_default_log();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v18 = enumerator;
              _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync: done enumerating all stages%@", buf, 0xCu);
            }

            goto LABEL_27;
        }
      }
    }

    while (stage < 4);
  }

  v4 = 0;
LABEL_31:
  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_documentsOrAliasesNeedingSyncUpEnumerator
{
  v3 = [(BRCClientZone *)self->_clientZone db];
  v4 = [(BRCClientZone *)self->_clientZone dbRowID];
  v5 = [v3 fetch:{@"SELECT li.rowid, li.zone_rowid, li.item_id, li.item_creator_id, li.item_sharing_options, li.item_side_car_ckinfo, li.item_parent_zone_rowid, li.item_localsyncupstate, li.item_local_diffs, li.item_notifs_rank, li.app_library_rowid, li.item_min_supported_os_rowid, li.item_user_visible, li.item_stat_ckinfo, li.item_state, li.item_type, li.item_mode, li.item_birthtime, li.item_lastusedtime, li.item_favoriterank, li.item_parent_id, li.item_filename, li.item_hidden_ext, li.item_finder_tags, li.item_xattr_signature, li.item_trash_put_back_path, li.item_trash_put_back_parent_id, li.item_alias_target, li.item_creator, li.item_processing_stamp, li.item_bouncedname, li.item_scope, li.item_local_change_count, li.item_old_version_identifier, li.fp_creation_item_identifier, li.version_name, li.version_ckinfo, li.version_mtime, li.version_size, li.version_thumb_size, li.version_thumb_signature, li.version_content_signature, li.version_xattr_signature, li.version_edited_since_shared, li.version_device, li.version_conflict_loser_etags, li.version_quarantine_info, li.version_uploaded_assets, li.version_upload_error, li.version_old_zone_item_id, li.version_old_zone_rowid, li.version_local_change_count, li.version_old_version_identifier, li.item_live_conflict_loser_etags, li.item_file_id, li.item_generation FROM client_items AS li  INNER JOIN client_sync_up AS su    ON su.throttle_id = li.rowid  WHERE         su.throttle_state = 50    AND su.zone_rowid = %@    AND su.in_flight_diffs IS NULL    AND li.item_type IN (1, 2, 8, 5, 6, 7, 3)    AND li.item_state = 0    AND li.item_localsyncupstate = 4    AND li.item_min_supported_os_rowid IS NULL ORDER BY su.retry_count ASC", v4}];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__BRCSyncUpEnumerator__documentsOrAliasesNeedingSyncUpEnumerator__block_invoke;
  v8[3] = &unk_2784FF910;
  v8[4] = self;
  v6 = [v5 enumerateObjects:v8];

  return v6;
}

- (id)_nextLiveItem
{
  v73 = *MEMORY[0x277D85DE8];
  v60 = brc_current_date_nsec();
  v3 = [(NSMutableArray *)self->_stack lastObject];
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = objc_autoreleasePoolPush();
      ++self->_currentDepth;
      [(NSMutableArray *)self->_stack removeLastObject];
      if (self->_currentDepth >= self->_maxDepth)
      {
        tooDeepItems = self->_tooDeepItems;
        v10 = [v4 itemID];
        [(NSMutableArray *)tooDeepItems addObject:v10];

        [v4 markCannotSynchronizeForTooDeepHierarchy];
        [v4 saveToDB];
      }

      else
      {
        if ([v4 isDirectory])
        {
          v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_currentDepth];
          visitedItemIDsToDepthMap = self->_visitedItemIDsToDepthMap;
          v8 = [v4 itemID];
          [(NSMutableDictionary *)visitedItemIDsToDepthMap setObject:v6 forKeyedSubscript:v8];
        }

        if ((-[NSMutableIndexSet containsIndex:](self->_returned, "containsIndex:", [v4 dbRowID]) & 1) == 0 && objc_msgSend(v4, "syncUpState") == 4 && !-[BRCSyncUpEnumerator _denyListDescendantStackAndItemIfThrottledOrNeedsOSUpgrade:now:](self, "_denyListDescendantStackAndItemIfThrottledOrNeedsOSUpgrade:now:", v4, v60))
        {
          -[NSMutableIndexSet addIndex:](self->_returned, "addIndex:", [v4 dbRowID]);
          v54 = v4;
          objc_autoreleasePoolPop(v5);
          v55 = v54;
          goto LABEL_69;
        }
      }

      objc_autoreleasePoolPop(v5);
      v11 = [(NSMutableArray *)self->_stack lastObject];

      v4 = v11;
    }

    while (v11);
  }

  self->_currentDepth = 0;
  if ([(NSMutableArray *)self->_stack count])
  {
    [BRCSyncUpEnumerator _nextLiveItem];
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v12 = self->_enumerator;
  v61 = [(PQLEnumeration *)v12 countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (!v61)
  {
    goto LABEL_59;
  }

  v14 = 0;
  v15 = *v63;
  *&v13 = 138412546;
  v57 = v13;
  v58 = *v63;
  v59 = v12;
LABEL_16:
  v16 = 0;
  while (1)
  {
    if (*v63 != v15)
    {
      objc_enumerationMutation(v12);
    }

    v54 = *(*(&v62 + 1) + 8 * v16);

    if (([(NSMutableIndexSet *)self->_returned containsIndex:[(PQLEnumeration *)v54 dbRowID]]& 1) != 0)
    {
      v14 = v54;
      goto LABEL_54;
    }

    v17 = [(PQLEnumeration *)v54 itemID];
    v18 = [(BRCSyncUpEnumerator *)self isDenyListed:v17];

    if (!v18)
    {
      break;
    }

LABEL_53:
    v14 = v54;
    v15 = v58;
    v12 = v59;
LABEL_54:
    if (++v16 == v61)
    {
      v46 = [(PQLEnumeration *)v12 countByEnumeratingWithState:&v62 objects:v72 count:16];
      v61 = v46;
      if (!v46)
      {

LABEL_59:
        v55 = 0;
        v54 = v12;
        goto LABEL_69;
      }

      goto LABEL_16;
    }
  }

  while (2)
  {
    v19 = [(PQLEnumeration *)v54 clientZone];
    if ([v19 isEqualToClientZone:self->_clientZone])
    {
    }

    else
    {
      v20 = [(PQLEnumeration *)v54 parentClientZone];
      v21 = [v20 isEqualToClientZone:self->_clientZone];

      if (v21)
      {
        v22 = [(PQLEnumeration *)v54 parentItemOnFS];
        v23 = [v22 itemID];
        v24 = v22;
        goto LABEL_27;
      }
    }

    v23 = [(PQLEnumeration *)v54 parentItemIDInZone];
    v24 = 0;
LABEL_27:
    v25 = self->_tooDeepItems;
    v26 = [(PQLEnumeration *)v54 itemID];
    LODWORD(v25) = [(NSMutableArray *)v25 containsObject:v26];

    if (v25)
    {
      self->_currentDepth = self->_maxDepth + 1;
      goto LABEL_52;
    }

    [(NSMutableArray *)self->_stack addObject:v54];
    v27 = [(PQLEnumeration *)v54 isLost];
    v28 = v27;
    if (v27)
    {
      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v41 = [(PQLEnumeration *)v54 itemID];
        *buf = v57;
        v67 = v41;
        v68 = 2112;
        v69 = v29;
        _os_log_debug_impl(&dword_223E7A000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync: denylist %@ because it's lost%@", buf, 0x16u);
      }
    }

    v31 = [(BRCClientZone *)self->_clientZone itemIDsBlockedFromSyncForCZMProcessing];
    v32 = [(PQLEnumeration *)v54 itemGlobalID];
    v33 = [v31 containsObject:v32];

    if (!v33)
    {
      if ((v28 & 1) != 0 || [(BRCSyncUpEnumerator *)self _checkForSharesWithinSharesWithItem:v54]|| [(BRCSyncUpEnumerator *)self _checkIfShouldDenylistForParentDirectoryFaultWithItem:v54]|| [(BRCSyncUpEnumerator *)self _checkIfShouldDenylistForPathMatch:v54]|| [(NSMutableSet *)self->_itemIDsLostOrThrottled containsObject:v23])
      {
        goto LABEL_51;
      }

      if ([(BRCSyncUpEnumerator *)self handleItemForOSUpgrade:v54 parentItemID:v23]|| [(BRCSyncUpEnumerator *)self _handlePendingShareItemWithPendingDeleteChildren:v54])
      {
        goto LABEL_52;
      }

      v34 = [(NSMutableDictionary *)self->_visitedItemIDsToDepthMap objectForKey:v23];

      if (v34)
      {
        v44 = [(NSMutableDictionary *)self->_visitedItemIDsToDepthMap objectForKeyedSubscript:v23];
        self->_currentDepth = [v44 intValue];

        goto LABEL_52;
      }

      if ([v23 isNonDesktopRoot])
      {
        goto LABEL_52;
      }

      v35 = v24;
      if (!v24)
      {
        v36 = [0 clientZone];
        v37 = [(PQLEnumeration *)v54 clientZone];
        v38 = [v36 isEqualToClientZone:v37];

        if (v38)
        {
          goto LABEL_60;
        }

        if (!v23)
        {
          goto LABEL_61;
        }

        v39 = [(PQLEnumeration *)v54 clientZone];
        v35 = [v39 itemByItemID:v23];

        if (!v35)
        {
LABEL_60:

LABEL_61:
          v47 = brc_bread_crumbs();
          v48 = brc_default_log();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            clientZone = self->_clientZone;
            *buf = 138412802;
            v67 = clientZone;
            v68 = 2112;
            v69 = v54;
            v70 = 2112;
            v71 = v47;
            _os_log_fault_impl(&dword_223E7A000, v48, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: reset needed for %@ because of orphan %@%@", buf, 0x20u);
          }

          [(BRCClientZone *)self->_clientZone scheduleResetServerAndClientTruthsForReason:@"orphan.live"];
          v55 = 0;
          goto LABEL_68;
        }
      }

      [(BRCSyncUpEnumerator *)self _checkIfParentNeedsRevivalWithParentItem:v35 item:v54];
      v40 = v35;

      v54 = v40;
      continue;
    }

    break;
  }

  v42 = brc_bread_crumbs();
  v43 = brc_default_log();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    v45 = [(PQLEnumeration *)v54 itemID];
    *buf = v57;
    v67 = v45;
    v68 = 2112;
    v69 = v42;
    _os_log_debug_impl(&dword_223E7A000, v43, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync: denylist %@ because it's already being processed for CZM%@", buf, 0x16u);
  }

LABEL_51:
  [(BRCSyncUpEnumerator *)self _denyListDescendantStack:self->_stack parentItem:v54 andAddToSet:self->_itemIDsLostOrThrottled];
LABEL_52:

  if (![(NSMutableArray *)self->_stack count])
  {
    goto LABEL_53;
  }

  if ([(NSMutableArray *)self->_stack count]>= 2)
  {
    v49 = 1;
    do
    {
      v50 = [(NSMutableArray *)self->_stack objectAtIndexedSubscript:v49];
      v51 = [(NSMutableArray *)self->_stack objectAtIndexedSubscript:v49 - 1];
      [v50 checkIsInDocumentsScopeWithParent:v51];

      ++v49;
    }

    while (v49 < [(NSMutableArray *)self->_stack count]);
  }

  v55 = [(BRCSyncUpEnumerator *)self _nextLiveItem];
LABEL_68:

LABEL_69:
  v52 = *MEMORY[0x277D85DE8];

  return v55;
}

- (id)_liveDirectoriesNeedingSyncUpEnumerator
{
  v3 = [(BRCClientZone *)self->_clientZone db];
  v4 = [(BRCClientZone *)self->_clientZone dbRowID];
  v5 = [v3 fetch:{@"SELECT li.rowid, li.zone_rowid, li.item_id, li.item_creator_id, li.item_sharing_options, li.item_side_car_ckinfo, li.item_parent_zone_rowid, li.item_localsyncupstate, li.item_local_diffs, li.item_notifs_rank, li.app_library_rowid, li.item_min_supported_os_rowid, li.item_user_visible, li.item_stat_ckinfo, li.item_state, li.item_type, li.item_mode, li.item_birthtime, li.item_lastusedtime, li.item_favoriterank, li.item_parent_id, li.item_filename, li.item_hidden_ext, li.item_finder_tags, li.item_xattr_signature, li.item_trash_put_back_path, li.item_trash_put_back_parent_id, li.item_alias_target, li.item_creator, li.item_processing_stamp, li.item_bouncedname, li.item_scope, li.item_local_change_count, li.item_old_version_identifier, li.fp_creation_item_identifier, li.version_name, li.version_ckinfo, li.version_mtime, li.version_size, li.version_thumb_size, li.version_thumb_signature, li.version_content_signature, li.version_xattr_signature, li.version_edited_since_shared, li.version_device, li.version_conflict_loser_etags, li.version_quarantine_info, li.version_uploaded_assets, li.version_upload_error, li.version_old_zone_item_id, li.version_old_zone_rowid, li.version_local_change_count, li.version_old_version_identifier, li.item_live_conflict_loser_etags, li.item_file_id, li.item_generation FROM client_items AS li  INNER JOIN client_sync_up AS su  ON su.throttle_id = li.rowid  WHERE         su.throttle_state = 50    AND su.zone_rowid = %@    AND su.in_flight_diffs IS NULL    AND li.item_type IN (0, 9, 10, 4)    AND (li.item_state = 0)    AND li.item_localsyncupstate = 4    AND li.item_min_supported_os_rowid IS NULL ORDER BY su.retry_count ASC", v4}];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__BRCSyncUpEnumerator__liveDirectoriesNeedingSyncUpEnumerator__block_invoke;
  v8[3] = &unk_2784FF910;
  v8[4] = self;
  v6 = [v5 enumerateObjects:v8];

  return v6;
}

id __62__BRCSyncUpEnumerator__liveDirectoriesNeedingSyncUpEnumerator__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 24);
  v6 = a2;
  v7 = [v5 session];
  v8 = [*(*(a1 + 32) + 24) session];
  v9 = [v8 clientDB];
  v10 = [v7 newLocalItemFromPQLResultSet:v6 db:v9 error:a3];

  return v10;
}

- (id)_nextTombstone
{
  v122 = *MEMORY[0x277D85DE8];
  v107 = brc_current_date_nsec();
  v3 = 0;
  v4 = 0;
  v5 = &OBJC_IVAR___BRCAccountSession__serverDB;
  v6 = &OBJC_IVAR___BRCAccountSession__serverDB;
  while (2)
  {
    while (1)
    {
      v7 = v4;
      v4 = [(NSMutableArray *)self->_stack firstObject];

      if (!v4)
      {
        break;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = [(BRCSyncUpEnumerator *)self shouldDenylistRemainingDeletionParentStackForItem:v4];
      stack = self->_stack;
      if (v9)
      {
        [(NSMutableArray *)stack removeAllObjects];
        objc_autoreleasePoolPop(v8);
        break;
      }

      [(NSMutableArray *)stack removeObjectAtIndex:0];
      if (![v4 isDirectory])
      {
        goto LABEL_39;
      }

      v11 = [v4 itemID];
      [(NSMutableDictionary *)self->_visitedItemIDsToDepthMap setObject:&unk_2837B0B98 forKeyedSubscript:v11];
      if ([v4 syncUpState] == 4)
      {
        v12 = v6;
        v13 = v3;
        v14 = v12[561];
        if ([*(&self->super.super.isa + v14) containsIndex:{objc_msgSend(v4, "dbRowID")}])
        {
          v15 = 3;
          v3 = v13;
        }

        else
        {
          v16 = [(NSMutableDictionary *)self->_tombstonesEmbargo objectForKeyedSubscript:v11];

          v17 = v16;
          if (!v16)
          {
            v20 = [(BRCClientZone *)self->_clientZone db];
            v21 = *(&self->super.super.isa + v14);
            v22 = [(BRCClientZone *)self->_clientZone dbRowID];
            v23 = [v20 numberWithSQL:{@"SELECT COUNT(*) FROM client_items  WHERE item_parent_id = %@     AND item_localsyncupstate = 4    AND NOT indexset_contains(%p, rowid)    AND zone_rowid = %@", v11, v21, v22}];

            v108 = v23;
            if (!v23)
            {
              [BRCSyncUpEnumerator _nextTombstone];
            }

            v24 = [(BRCClientZone *)self->_clientZone mangledID];
            v25 = [BRCUserDefaults defaultsForMangledID:v24];
            v26 = [v25 checkTombstoneEmbargoReparents];

            if (v26)
            {
              v27 = [(BRCClientZone *)self->_clientZone db];
              v28 = [(BRCClientZone *)self->_clientZone dbRowID];
              v29 = [v27 numberWithSQL:{@"SELECT COUNT(*) FROM server_items AS si INNER JOIN client_items AS ci USING (item_id, zone_rowid) WHERE si.item_parent_id = %@ AND si.zone_rowid = %@ AND ci.item_parent_id != si.item_parent_id AND ci.item_localsyncupstate != 0 AND NOT indexset_contains(%p, ci.rowid)", v11, v28, *(&self->super.super.isa + v14)}];

              if (!v29)
              {
                [BRCSyncUpEnumerator _nextTombstone];
              }

              v3 = v108;
              if ([v29 unsignedLongLongValue])
              {
                v30 = brc_bread_crumbs();
                v31 = brc_default_log();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  v32 = [v29 unsignedLongLongValue];
                  *buf = 138412802;
                  *v121 = v11;
                  *&v121[8] = 2048;
                  *&v121[10] = v32;
                  *&v121[18] = 2112;
                  *&v121[20] = v30;
                  _os_log_impl(&dword_223E7A000, v31, OS_LOG_TYPE_DEFAULT, "[WARNING] Item %@ has %llu items with a new parent%@", buf, 0x20u);
                }

                v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v29, "unsignedLongLongValue") + objc_msgSend(v108, "unsignedLongLongValue")}];

                v3 = v33;
              }

              v6 = &OBJC_IVAR___BRCAccountSession__serverDB;
            }

            else
            {
              v3 = v108;
              v6 = &OBJC_IVAR___BRCAccountSession__serverDB;
            }

            if (![v3 BOOLValue])
            {

              v3 = 0;
LABEL_38:

LABEL_39:
              v40 = [v4 st];
              v11 = [v40 parentID];

              v41 = [(NSMutableDictionary *)self->_tombstonesEmbargo objectForKeyedSubscript:v11];

              if (v41)
              {
                v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v41, "integerValue") - 1}];

                v42 = brc_bread_crumbs();
                v43 = brc_default_log();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412802;
                  *v121 = v11;
                  *&v121[8] = 2112;
                  *&v121[10] = v3;
                  *&v121[18] = 2112;
                  *&v121[20] = v42;
                  _os_log_debug_impl(&dword_223E7A000, v43, OS_LOG_TYPE_DEBUG, "[DEBUG] Embargoed item %@ has now %@ unreturned dead children left%@", buf, 0x20u);
                }

                [(NSMutableDictionary *)self->_tombstonesEmbargo setObject:v3 forKeyedSubscript:v11];
                v6 = &OBJC_IVAR___BRCAccountSession__serverDB;
              }

              else
              {
                v44 = brc_bread_crumbs();
                v45 = brc_default_log();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  *v121 = v11;
                  *&v121[8] = 2112;
                  *&v121[10] = v44;
                  _os_log_debug_impl(&dword_223E7A000, v45, OS_LOG_TYPE_DEBUG, "[DEBUG] item %@ isn't embargoed%@", buf, 0x16u);
                }

                v3 = 0;
              }

              if ([(BRCSyncUpEnumerator *)self _denyListDescendantStackAndItemIfThrottledOrNeedsOSUpgrade:v4 now:v107])
              {
                v15 = 4;
              }

              else
              {
                [*(&self->super.super.isa + v6[561]) addIndex:{objc_msgSend(v4, "dbRowID")}];
                v106 = v4;
                v15 = 1;
              }

              goto LABEL_49;
            }

            if (!self->_tombstonesEmbargo)
            {
              v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
              tombstonesEmbargo = self->_tombstonesEmbargo;
              self->_tombstonesEmbargo = v36;
            }

            v38 = brc_bread_crumbs();
            v39 = brc_default_log();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              *v121 = v11;
              *&v121[8] = 2112;
              *&v121[10] = v3;
              *&v121[18] = 2112;
              *&v121[20] = v38;
              _os_log_debug_impl(&dword_223E7A000, v39, OS_LOG_TYPE_DEBUG, "[DEBUG] Embargoing item %@: it has %@ unsynced children%@", buf, 0x20u);
            }

            [(NSMutableDictionary *)self->_tombstonesEmbargo setObject:v3 forKeyedSubscript:v11];
            v17 = v3;
            if (!v3)
            {
              goto LABEL_36;
            }
          }

          v3 = v17;
          if (![v17 integerValue])
          {
            v34 = brc_bread_crumbs();
            v35 = brc_default_log();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              *v121 = v11;
              *&v121[8] = 2112;
              *&v121[10] = v34;
              _os_log_debug_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEBUG, "[DEBUG] Item %@ is un-embargoed%@", buf, 0x16u);
            }

            [(NSMutableDictionary *)self->_tombstonesEmbargo removeObjectForKey:v11];
LABEL_36:
            v6 = &OBJC_IVAR___BRCAccountSession__serverDB;
            goto LABEL_38;
          }

          v18 = brc_bread_crumbs();
          v19 = brc_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            *v121 = v11;
            *&v121[8] = 2112;
            *&v121[10] = v17;
            *&v121[18] = 2112;
            *&v121[20] = v18;
            _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] Item %@ is embargoed: %@ unsynced children%@", buf, 0x20u);
          }

          [(NSMutableArray *)self->_stack removeAllObjects];
          v15 = 4;
        }

        v6 = &OBJC_IVAR___BRCAccountSession__serverDB;
      }

      else
      {
        v15 = 3;
      }

LABEL_49:

      objc_autoreleasePoolPop(v8);
      if (v15 != 3)
      {
        if (v15 != 4)
        {
          v105 = v106;
          goto LABEL_145;
        }

        break;
      }
    }

    if ([(NSMutableArray *)self->_stack count])
    {
      [BRCSyncUpEnumerator _nextTombstone];
    }

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    obj = *(&self->super.super.isa + v5[565]);
    v46 = [obj countByEnumeratingWithState:&v115 objects:v119 count:16];
    if (!v46)
    {
      v105 = 0;
      v48 = v4;
      goto LABEL_144;
    }

    v109 = v3;
    v47 = *v116;
    v48 = v4;
    v112 = *v116;
    while (2)
    {
      v49 = 0;
      v113 = v46;
LABEL_56:
      if (*v116 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v4 = *(*(&v115 + 1) + 8 * v49);

      v50 = v6[561];
      if ([*(&self->super.super.isa + v50) containsIndex:{objc_msgSend(v4, "dbRowID")}])
      {
        v48 = v4;
        goto LABEL_127;
      }

      v51 = [v4 itemID];
      v52 = [(BRCSyncUpEnumerator *)self isDenyListed:v51];

      if (v52)
      {
        v48 = v4;
LABEL_126:
        v47 = v112;
        v46 = v113;
LABEL_127:
        if (++v49 == v46)
        {
          v96 = [obj countByEnumeratingWithState:&v115 objects:v119 count:16];
          v46 = v96;
          if (!v96)
          {
            v105 = 0;
            v3 = v109;
            goto LABEL_144;
          }

          continue;
        }

        goto LABEL_56;
      }

      break;
    }

    [(NSMutableArray *)self->_stack addObject:v4];
    if ([(NSMutableArray *)self->_stack count]>= self->_maxDepth)
    {
      v48 = 0;
LABEL_112:
      v54 = brc_bread_crumbs();
      v84 = brc_default_log();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        maxDepth = self->_maxDepth;
        *buf = 67109634;
        *v121 = maxDepth;
        *&v121[4] = 2112;
        *&v121[6] = v4;
        *&v121[14] = 2112;
        *&v121[16] = v54;
        _os_log_impl(&dword_223E7A000, v84, OS_LOG_TYPE_DEFAULT, "[WARNING] max depth %u reached at %@%@", buf, 0x1Cu);
      }

LABEL_120:
      if (v48)
      {
        v88 = brc_bread_crumbs();
        v89 = brc_default_log();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
        {
          v91 = [v48 debugItemIDString];
          *buf = 138412546;
          *v121 = v91;
          *&v121[8] = 2112;
          *&v121[10] = v88;
          _os_log_debug_impl(&dword_223E7A000, v89, OS_LOG_TYPE_DEBUG, "[DEBUG] Fetching recursive contents of %@ because it is the highest dead parent dir-fault%@", buf, 0x16u);
        }

        v90 = [(BRCClientZone *)self->_clientZone fetchRecursiveDirectoryContentsIfNecessary:v48 isUserWaiting:0 rescheduleApply:1];
        [v90 beginObservingChanges];
      }

      if ([(NSMutableArray *)self->_stack count])
      {
        v6 = &OBJC_IVAR___BRCAccountSession__serverDB;
        if ([(NSMutableArray *)self->_stack count]>= 2)
        {
          v97 = 1;
          do
          {
            v98 = [(NSMutableArray *)self->_stack objectAtIndexedSubscript:v97];
            v99 = [(NSMutableArray *)self->_stack objectAtIndexedSubscript:v97 - 1];
            [v98 checkIsInDocumentsScopeWithParent:v99];

            ++v97;
          }

          while (v97 < [(NSMutableArray *)self->_stack count]);
        }

        v3 = v109;
        v5 = &OBJC_IVAR___BRCAccountSession__serverDB;
        continue;
      }

      v48 = v4;
      v6 = &OBJC_IVAR___BRCAccountSession__serverDB;
      goto LABEL_126;
    }

    break;
  }

  v48 = 0;
  v111 = 0;
  v46 = v4;
  while (2)
  {
    v53 = [v46 st];
    v54 = [v53 parentID];

    if ([v46 isLost])
    {
      v55 = 1;
    }

    else if ([v46 isDirectory] && objc_msgSend(v46, "isDead"))
    {
      v56 = [v46 st];
      v57 = [v56 processingStamp];
      v55 = v57 != 0;
    }

    else
    {
      v55 = 0;
    }

    if ([v46 isDead] && objc_msgSend(v46, "isDirectory"))
    {
      v110 = v55;
      if ((v111 & 1) != 0 || ([v46 asDirectory], v58 = objc_claimAutoreleasedReturnValue(), v59 = -[BRCSyncUpEnumerator _checkIfShouldDenylistForChildrenOfItemBeingCopiedToNewZone:](self, "_checkIfShouldDenylistForChildrenOfItemBeingCopiedToNewZone:", v58), v58, v59))
      {
        v60 = brc_bread_crumbs();
        v61 = brc_default_log();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *v121 = v46;
          *&v121[8] = 2112;
          *&v121[10] = v60;
          _os_log_debug_impl(&dword_223E7A000, v61, OS_LOG_TYPE_DEBUG, "[DEBUG] denylist all deletes for item which has children being copied to a new zone %@%@", buf, 0x16u);
        }

        itemIDsWithChildrenBeingCopiedToNewZone = self->_itemIDsWithChildrenBeingCopiedToNewZone;
        v63 = [v46 itemID];
        [(NSMutableSet *)itemIDsWithChildrenBeingCopiedToNewZone addObject:v63];

        v111 = 1;
        if (v48)
        {
LABEL_77:
          v64 = [v46 asDirectory];
          v65 = [v64 isDirectoryFault];

          if (!v65)
          {
            goto LABEL_91;
          }

          goto LABEL_83;
        }
      }

      else
      {
        v111 = 0;
        if (v48)
        {
          goto LABEL_77;
        }
      }

      itemIDsNeedingDirectoryFetch = self->_itemIDsNeedingDirectoryFetch;
      v67 = [v46 itemID];
      if ([(NSMutableSet *)itemIDsNeedingDirectoryFetch containsObject:v67])
      {

LABEL_83:
        if ([v46 isSharedToMeTopLevelItem])
        {
          v70 = brc_bread_crumbs();
          v71 = brc_default_log();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            *v121 = v46;
            *&v121[8] = 2112;
            *&v121[10] = v70;
            _os_log_debug_impl(&dword_223E7A000, v71, OS_LOG_TYPE_DEBUG, "[DEBUG] Highest parent dead fault is nil because it's a shared-to-me top level item - %@%@", buf, 0x16u);
          }

          v72 = 0;
        }

        else
        {
          v73 = brc_bread_crumbs();
          v74 = brc_default_log();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            v82 = [v46 itemID];
            v83 = [v82 itemIDString];
            *buf = 138412546;
            *v121 = v83;
            *&v121[8] = 2112;
            *&v121[10] = v73;
            _os_log_debug_impl(&dword_223E7A000, v74, OS_LOG_TYPE_DEBUG, "[DEBUG] Highest parent dead fault is %@%@", buf, 0x16u);
          }

          v72 = [v46 itemID];
        }

        v48 = v72;
LABEL_91:
        v55 = v110;
        v75 = self->_itemIDsNeedingDirectoryFetch;
        v76 = [v46 itemID];
        [(NSMutableSet *)v75 addObject:v76];
      }

      else
      {
        v68 = [v46 asDirectory];
        v69 = [v68 containsDirFault];

        if (v69)
        {
          goto LABEL_83;
        }

        v48 = 0;
        v55 = v110;
      }
    }

    if (![v46 isSharedToMeTopLevelItem] || !objc_msgSend(v46, "isDirectory") || !objc_msgSend(v46, "isAlmostDead") || !-[BRCClientZone isSharedZone](self->_clientZone, "isSharedZone"))
    {
      v77 = [(NSMutableDictionary *)self->_visitedItemIDsToDepthMap objectForKey:v54];
      if (v77 && (v78 = v77, v79 = [v46 isLost], v78, (v79 & 1) == 0))
      {
        if ([v46 isLive])
        {
          goto LABEL_119;
        }

        if (([v46 isDead] & 1) == 0)
        {
          [BRCSyncUpEnumerator _nextTombstone];
        }

LABEL_105:
        v80 = [v46 parentItemIDInZone];
        if (![v80 isNonDesktopRoot])
        {
          if (!v80 || ([v46 clientZone], v81 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v81, "itemByItemID:", v80), v4 = objc_claimAutoreleasedReturnValue(), v81, !v4))
          {
            v100 = brc_bread_crumbs();
            v101 = brc_default_log();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
            {
              clientZone = self->_clientZone;
              *buf = 138412802;
              *v121 = clientZone;
              *&v121[8] = 2112;
              *&v121[10] = v46;
              *&v121[18] = 2112;
              *&v121[20] = v100;
              _os_log_fault_impl(&dword_223E7A000, v101, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: reset needed for %@ because of orphan %@%@", buf, 0x20u);
            }

            [(BRCClientZone *)self->_clientZone scheduleResetServerAndClientTruthsForReason:@"orphan.tombstone"];
            v105 = 0;
            goto LABEL_143;
          }

          [(NSMutableArray *)self->_stack addObject:v4];
          v46 = v4;
          if ([(NSMutableArray *)self->_stack count]>= self->_maxDepth)
          {
            goto LABEL_112;
          }

          continue;
        }
      }

      else
      {
        if (!v55 && ![(NSMutableSet *)self->_itemIDsLostOrThrottled containsObject:v54])
        {
          if ([(BRCSyncUpEnumerator *)self handleItemForOSUpgrade:v46 parentItemID:v54])
          {
            goto LABEL_119;
          }

          goto LABEL_105;
        }

        v86 = brc_bread_crumbs();
        v87 = brc_default_log();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *v121 = v46;
          *&v121[8] = 2112;
          *&v121[10] = v86;
          _os_log_debug_impl(&dword_223E7A000, v87, OS_LOG_TYPE_DEBUG, "[DEBUG] denylisting %@ and its descendants%@", buf, 0x16u);
        }

        [(BRCSyncUpEnumerator *)self _denyListDescendantStack:self->_stack parentItem:v46 andAddToSet:self->_itemIDsLostOrThrottled];
      }

LABEL_119:
      v4 = v46;
      goto LABEL_120;
    }

    break;
  }

  v92 = brc_bread_crumbs();
  v93 = brc_default_log();
  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *v121 = v46;
    *&v121[8] = 2112;
    *&v121[10] = v92;
    _os_log_debug_impl(&dword_223E7A000, v93, OS_LOG_TYPE_DEBUG, "[DEBUG] denylist all children deletes when leaving top level folder share %@%@", buf, 0x16u);
  }

  [(BRCSyncUpEnumerator *)self _denyListDescendantStack:self->_stack parentItem:v46 andAddToSet:self->_itemIDsLostOrThrottled];
  if (v111 & 1 | (([v46 isDead] & 1) == 0))
  {
    goto LABEL_119;
  }

  v94 = self->_itemIDsWithChildrenBeingCopiedToNewZone;
  v95 = [v46 itemID];
  LOBYTE(v94) = [(NSMutableSet *)v94 containsObject:v95];

  if (v94)
  {
    v4 = v46;
    goto LABEL_120;
  }

  [*(&self->super.super.isa + v50) addIndex:{objc_msgSend(v46, "dbRowID")}];
  v105 = v46;
LABEL_143:
  v3 = v109;

LABEL_144:
  v4 = v46;
LABEL_145:

  v102 = *MEMORY[0x277D85DE8];

  return v105;
}

- (id)_tombstoneLeavesNeedingSyncUpEnumerator
{
  v3 = [(BRCClientZone *)self->_clientZone db];
  v4 = [(BRCClientZone *)self->_clientZone dbRowID];
  v5 = [v3 fetch:{@"SELECT li.rowid, li.zone_rowid, li.item_id, li.item_creator_id, li.item_sharing_options, li.item_side_car_ckinfo, li.item_parent_zone_rowid, li.item_localsyncupstate, li.item_local_diffs, li.item_notifs_rank, li.app_library_rowid, li.item_min_supported_os_rowid, li.item_user_visible, li.item_stat_ckinfo, li.item_state, li.item_type, li.item_mode, li.item_birthtime, li.item_lastusedtime, li.item_favoriterank, li.item_parent_id, li.item_filename, li.item_hidden_ext, li.item_finder_tags, li.item_xattr_signature, li.item_trash_put_back_path, li.item_trash_put_back_parent_id, li.item_alias_target, li.item_creator, li.item_processing_stamp, li.item_bouncedname, li.item_scope, li.item_local_change_count, li.item_old_version_identifier, li.fp_creation_item_identifier, li.version_name, li.version_ckinfo, li.version_mtime, li.version_size, li.version_thumb_size, li.version_thumb_signature, li.version_content_signature, li.version_xattr_signature, li.version_edited_since_shared, li.version_device, li.version_conflict_loser_etags, li.version_quarantine_info, li.version_uploaded_assets, li.version_upload_error, li.version_old_zone_item_id, li.version_old_zone_rowid, li.version_local_change_count, li.version_old_version_identifier, li.item_live_conflict_loser_etags, li.item_file_id, li.item_generation FROM client_items AS li  INNER JOIN client_sync_up AS su    ON su.throttle_id = li.rowid  WHERE         su.throttle_state = 50    AND su.zone_rowid = %@    AND su.in_flight_diffs IS NULL    AND li.item_state = 1    AND li.item_localsyncupstate = 4    AND NOT EXISTS(SELECT 1 FROM client_items AS ci                     WHERE li.item_id = ci.item_parent_id                      AND ci.zone_rowid = su.zone_rowid)    AND li.item_min_supported_os_rowid IS NULL ORDER BY su.retry_count ASC", v4}];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__BRCSyncUpEnumerator__tombstoneLeavesNeedingSyncUpEnumerator__block_invoke;
  v8[3] = &unk_2784FF910;
  v8[4] = self;
  v6 = [v5 enumerateObjects:v8];

  return v6;
}

- (void)invalidate
{
  [(PQLEnumeration *)self->_enumerator close];
  enumerator = self->_enumerator;
  self->_enumerator = 0;
}

- (BRCSyncUpEnumerator)initWithClientZone:(id)a3
{
  v5 = a3;
  v30.receiver = self;
  v30.super_class = BRCSyncUpEnumerator;
  v6 = [(BRCSyncUpEnumerator *)&v30 init];
  if (v6)
  {
    v7 = [v5 mangledID];
    v8 = [BRCUserDefaults defaultsForMangledID:v7];

    v6->_batchSize = [v5 syncUpBatchSize];
    v6->_maxDepth = [v8 maxSyncPathDepth];
    v6->_should2PhasePCSChain = [v8 should2PhasePCSChain];
    v6->_retryAfter = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v6->_clientZone, a3);
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v6->_batchSize];
    visitedItemIDsToDepthMap = v6->_visitedItemIDsToDepthMap;
    v6->_visitedItemIDsToDepthMap = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    itemIDsLostOrThrottled = v6->_itemIDsLostOrThrottled;
    v6->_itemIDsLostOrThrottled = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    itemIDsNeedingOSUpgrade = v6->_itemIDsNeedingOSUpgrade;
    v6->_itemIDsNeedingOSUpgrade = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    itemIDsNeedingDirectoryFetch = v6->_itemIDsNeedingDirectoryFetch;
    v6->_itemIDsNeedingDirectoryFetch = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    itemIDsWithChildrenBeingCopiedToNewZone = v6->_itemIDsWithChildrenBeingCopiedToNewZone;
    v6->_itemIDsWithChildrenBeingCopiedToNewZone = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    chainedParentIDAllowlist = v6->_chainedParentIDAllowlist;
    v6->_chainedParentIDAllowlist = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    itemsNeedingUnshare = v6->_itemsNeedingUnshare;
    v6->_itemsNeedingUnshare = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tooDeepItems = v6->_tooDeepItems;
    v6->_tooDeepItems = v23;

    v25 = objc_alloc_init(MEMORY[0x277CCAB58]);
    returned = v6->_returned;
    v6->_returned = v25;

    v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6->_maxDepth];
    stack = v6->_stack;
    v6->_stack = v27;

    v6->_currentDepth = 0;
    v6->_stage = 0;
  }

  return v6;
}

id __65__BRCSyncUpEnumerator__documentsOrAliasesNeedingSyncUpEnumerator__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 24);
  v6 = a2;
  v7 = [v5 session];
  v8 = [*(*(a1 + 32) + 24) session];
  v9 = [v8 clientDB];
  v10 = [v7 newLocalItemFromPQLResultSet:v6 db:v9 error:a3];

  return v10;
}

id __62__BRCSyncUpEnumerator__tombstoneLeavesNeedingSyncUpEnumerator__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 24);
  v6 = a2;
  v7 = [v5 session];
  v8 = [*(*(a1 + 32) + 24) session];
  v9 = [v8 clientDB];
  v10 = [v7 newLocalItemFromPQLResultSet:v6 db:v9 error:a3];

  return v10;
}

- (void)_denyListDescendantStack:(id)a3 parentItem:(id)a4 andAddToSet:(id)a5 descendantBlock:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v10 isDirectory])
  {
    v13 = [v10 itemID];
    [v11 addObject:v13];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        if ([v19 isDirectory])
        {
          v20 = [v19 itemID];
          [v11 addObject:v20];
        }

        if (v12)
        {
          v21 = [v19 itemID];
          v12[2](v12, v21);
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  [v14 removeAllObjects];
  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_denyListDescendantStackAndItemIfThrottledOrNeedsOSUpgrade:(id)a3 now:(unint64_t)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 needsOSUpgradeToSyncUp])
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpEnumerator _denyListDescendantStackAndItemIfThrottledOrNeedsOSUpgrade:now:];
    }

    goto LABEL_11;
  }

  v9 = [(BRCClientZone *)self->_clientZone session];
  v10 = [v9 syncUpScheduler];
  v11 = [(BRCClientZone *)self->_clientZone dbRowID];
  v12 = [v10 timeToRetryForItem:v6 zone:v11];
  v33 = v12;

  if (v12)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v36 = v6;
      v37 = 2048;
      v38 = v12;
      v39 = 2112;
      v40 = v13;
      _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync: denylist %@ and all dependents because db throttle has %llu nsecs to retry%@", buf, 0x20u);
    }

    retryAfter = self->_retryAfter;
    if (retryAfter >= v12)
    {
      retryAfter = v12;
    }

    self->_retryAfter = retryAfter;
LABEL_11:
    [(BRCSyncUpEnumerator *)self _denyListDescendantStack:self->_stack parentItem:v6 andAddToSet:self->_itemIDsLostOrThrottled];
LABEL_12:
    v16 = 1;
    goto LABEL_13;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = [(BRCClientZone *)self->_clientZone syncThrottles];
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        if ([*(*(&v29 + 1) + 8 * i) matchesItem:v6 nsecsToRetry:&v33 now:a4])
        {
          v24 = v33 == 0;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          v25 = brc_bread_crumbs();
          v26 = brc_default_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v36 = v6;
            v37 = 2048;
            v38 = v33;
            v39 = 2112;
            v40 = v25;
            _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync: denylist %@ and all dependents because %llu nsecs to retry%@", buf, 0x20u);
          }

          v28 = self->_retryAfter;
          if (v28 >= v33)
          {
            v28 = v33;
          }

          self->_retryAfter = v28;
          [(BRCSyncUpEnumerator *)self _denyListDescendantStack:self->_stack parentItem:v6 andAddToSet:self->_itemIDsLostOrThrottled];

          goto LABEL_12;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)isDenyListed:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_itemIDsLostOrThrottled containsObject:v4]& 1) != 0 || ([(NSMutableSet *)self->_itemIDsNeedingOSUpgrade containsObject:v4]& 1) != 0 || ([(NSMutableSet *)self->_itemIDsWithChildrenBeingCopiedToNewZone containsObject:v4]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(NSMutableSet *)self->_itemIDsNeedingDirectoryFetch containsObject:v4];
  }

  return v5;
}

- (BOOL)shouldDenylistRemainingDeletionParentStackForItem:(id)a3
{
  v4 = a3;
  if ([v4 isDead])
  {
    itemIDsNeedingDirectoryFetch = self->_itemIDsNeedingDirectoryFetch;
    v6 = [v4 itemID];
    if (([(NSMutableSet *)itemIDsNeedingDirectoryFetch containsObject:v6]& 1) != 0)
    {
      v7 = 1;
    }

    else
    {
      itemIDsWithChildrenBeingCopiedToNewZone = self->_itemIDsWithChildrenBeingCopiedToNewZone;
      v9 = [v4 itemID];
      v7 = [(NSMutableSet *)itemIDsWithChildrenBeingCopiedToNewZone containsObject:v9];
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)handleItemForOSUpgrade:(id)a3 parentItemID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 needsOSUpgradeToSyncUp] & 1) != 0 || -[NSMutableSet containsObject:](self->_itemIDsNeedingOSUpgrade, "containsObject:", v7))
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpEnumerator handleItemForOSUpgrade:parentItemID:];
    }

    if (![v6 needsOSUpgradeToSyncUp])
    {
      v10 = [v6 parentItemIDInZone];
      v11 = v10;
      if (v10 && ([v10 isNonDesktopRoot] & 1) == 0)
      {
        v12 = [v6 clientZone];
        v13 = [v12 itemByItemID:v11];

        [v6 inheritOSUpgradeNeededFromItem:v13];
        [v6 saveToDB];
      }

      [(NSMutableArray *)self->_stack removeLastObject];
    }

    stack = self->_stack;
    itemIDsNeedingOSUpgrade = self->_itemIDsNeedingOSUpgrade;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__BRCSyncUpEnumerator_handleItemForOSUpgrade_parentItemID___block_invoke;
    v18[3] = &unk_2785085B0;
    v18[4] = self;
    v19 = v6;
    [(BRCSyncUpEnumerator *)self _denyListDescendantStack:stack parentItem:v19 andAddToSet:itemIDsNeedingOSUpgrade descendantBlock:v18];

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __59__BRCSyncUpEnumerator_handleItemForOSUpgrade_parentItemID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 24) itemByItemID:a2];
  if (([v3 needsOSUpgradeToSyncUp] & 1) == 0)
  {
    [v3 inheritOSUpgradeNeededFromItem:*(a1 + 40)];
    [v3 saveToDB];
  }
}

- (BOOL)_handleSharedItemWhichMovedToNewShare:(id)a3 rootItem:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([v6 sharingOptions] & 4) == 0)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [BRCSyncUpEnumerator _handleSharedItemWhichMovedToNewShare:rootItem:];
    }

    goto LABEL_21;
  }

  v10 = [v6 clientZone];
  if ([v10 isEqualToClientZone:self->_clientZone])
  {
    v11 = [(BRCClientZone *)self->_clientZone isPrivateZone];
  }

  else
  {
    v11 = 0;
  }

  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = " in the same zone";
    v25 = 138413058;
    if (!v11)
    {
      v14 = 0;
    }

    v26 = v6;
    v27 = 2112;
    v28 = v7;
    v29 = 2080;
    v30 = v14;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] item with shareID %@ is moving into a shared parent %@%s%@", &v25, 0x2Au);
  }

  if (!v11)
  {
    clientZone = self->_clientZone;
    v8 = [v7 itemGlobalID];
    [(BRCClientZone *)clientZone itemMovedIntoShareInThisZone:v6 associatedItemID:v8];
LABEL_21:
    v19 = 1;
    goto LABEL_22;
  }

  v15 = [v6 clientZone];
  v16 = [v6 itemID];
  v8 = [v15 serverItemByItemID:v16];

  if (([v8 sharingOptions] & 4) != 0)
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpEnumerator _handleSharedItemWhichMovedToNewShare:rootItem:];
    }

    [(NSMutableArray *)self->_itemsNeedingUnshare addObject:v6];
    goto LABEL_21;
  }

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [BRCSyncUpEnumerator _handleSharedItemWhichMovedToNewShare:rootItem:];
  }

  [v6 updateItemMetadataFromServerItem:v8 appliedSharingPermission:0];
  [v6 saveToDBForServerEdit:1 keepAliases:0];
  v19 = 0;
LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_checkForSharesWithinSharesWithItem:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isDead] & 1) != 0 || (objc_msgSend(v4, "isFSRoot"))
  {
    v5 = 0;
    LOBYTE(p_super) = 0;
    goto LABEL_4;
  }

  if (([v4 localDiffs] & 0x20) != 0 && (objc_msgSend(v4, "sharingOptions") & 4) != 0)
  {
    v5 = [v4 parentItemOnFS];
    if (([v5 sharingOptions] & 0x48) != 0)
    {
      v28 = [v4 asShareableItem];
      v29 = [(BRCSyncUpEnumerator *)self _handleSharedItemWhichMovedToNewShare:v28 rootItem:0];

      if (v29)
      {
        v12 = brc_bread_crumbs();
        p_super = brc_default_log();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
        {
          [(BRCSyncUpEnumerator *)v4 _checkForSharesWithinSharesWithItem:v12, p_super];
        }

        LOBYTE(p_super) = 1;
        goto LABEL_34;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (([v4 localDiffs] & 0x20) != 0 && -[BRCClientZone isPrivateZone](self->_clientZone, "isPrivateZone") && objc_msgSend(v4, "isDirectory"))
  {
    if (!v5)
    {
      v5 = [v4 parentItemOnFS];
    }

    if (([v5 sharingOptions] & 0x48) != 0)
    {
      p_super = [(BRCClientZone *)self->_clientZone session];
      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0;
      v9 = [v4 db];
      v10 = [p_super getClientDBFacadeFromDB:v9];

      v11 = [v4 asDirectory];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __59__BRCSyncUpEnumerator__checkForSharesWithinSharesWithItem___block_invoke;
      v36[3] = &unk_2785085D8;
      v12 = p_super;
      v40 = &v41;
      v37 = v12;
      v38 = self;
      v13 = v4;
      v39 = v13;
      [v10 enumerateItemsWithShareIDUnderParent:v11 block:v36];

      LODWORD(p_super) = *(v42 + 24);
      if (p_super == 1)
      {
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = [v13 itemID];
          [(BRCSyncUpEnumerator *)v16 _checkForSharesWithinSharesWithItem:v14, v49, v15];
        }
      }

      _Block_object_dispose(&v41, 8);
LABEL_34:

      goto LABEL_20;
    }
  }

  LOBYTE(p_super) = 0;
LABEL_20:
  if (([v4 sharingOptions] & 0x7C) == 4 && objc_msgSend(v4, "isDirectory"))
  {
    v17 = [v4 clientZone];
    v18 = [v4 itemID];
    v19 = [v17 serverItemByItemID:v18];

    if (([v19 sharingOptions] & 0x7C) == 4)
    {
      v20 = [(BRCClientZone *)self->_clientZone session];
      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0;
      v21 = [v4 db];
      v22 = [v20 getClientDBFacadeFromDB:v21];

      v23 = [v4 asDirectory];
      v30 = MEMORY[0x277D85DD0];
      v31 = 3221225472;
      v32 = __59__BRCSyncUpEnumerator__checkForSharesWithinSharesWithItem___block_invoke_15;
      v33 = &unk_278508600;
      v24 = v4;
      v34 = v24;
      v35 = &v41;
      [v22 enumerateItemsWithShareIDUnderParent:v23 block:&v30];

      if (*(v42 + 24) == 1)
      {
        v25 = brc_bread_crumbs();
        v26 = brc_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v46 = v24;
          v47 = 2112;
          v48 = v25;
          _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEFAULT, "[WARNING] Unsharing turd folder share %@ because it now has shared children%@", buf, 0x16u);
        }

        p_super = &self->_itemsNeedingUnshare->super.super;
        v27 = [v24 asShareableItem];
        [p_super addObject:v27];

        LOBYTE(p_super) = 1;
      }

      _Block_object_dispose(&v41, 8);
    }
  }

LABEL_4:

  v7 = *MEMORY[0x277D85DE8];
  return p_super;
}

void __59__BRCSyncUpEnumerator__checkForSharesWithinSharesWithItem___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 itemFetcher];
  v9 = [v5 itemByItemGlobalID:v4];

  if (([v9 isDead] & 1) == 0)
  {
    v6 = *(a1[7] + 8);
    if (*(v6 + 24) == 1)
    {
      *(v6 + 24) = 1;
    }

    else
    {
      v7 = a1[5];
      v8 = [v9 asShareableItem];
      *(*(a1[7] + 8) + 24) = [v7 _handleSharedItemWhichMovedToNewShare:v8 rootItem:a1[6]];
    }
  }
}

void __59__BRCSyncUpEnumerator__checkForSharesWithinSharesWithItem___block_invoke_15(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 itemGlobalID];
  v9 = [v8 isEqualToItemGlobalID:v7];

  if ((v9 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)_checkIfParentNeedsRevivalWithParentItem:(id)a3 item:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![v6 isRejected])
  {
    clientZone = self->_clientZone;
    v13 = [v6 clientZone];
    if (-[BRCClientZone isEqualToClientZone:](clientZone, "isEqualToClientZone:", v13) && [v6 isKnownByServer] && objc_msgSend(v6, "isIdleOrRejected"))
    {
      v14 = [v6 isDeadOrMissingInServerTruth];

      if (v14)
      {
        if ([v6 isSharedToMeChildItem])
        {
          goto LABEL_11;
        }

        v17 = [v6 clientZone];
        v18 = [v17 isPrivateZone];

        if (v18)
        {
          v19 = [v6 clientZone];
          v20 = [v19 asPrivateClientZone];
          v21 = [v6 itemID];
          v22 = [v20 pcsChainStateForItem:v21] & 0xFFFFFFFE;

          if (v22 == 2)
          {
LABEL_11:
            v8 = brc_bread_crumbs();
            v9 = brc_default_log();
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_5;
            }

            v23 = 138412546;
            v24 = v6;
            v25 = 2112;
            v26 = v8;
            v10 = "[WARNING] Parent item needs to be revived to sync up %@%@";
            goto LABEL_4;
          }
        }
      }
    }

    else
    {
    }

    v11 = 0;
    goto LABEL_15;
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    v10 = "[WARNING] Parent item is rejected so we will reset if we try to sync up without syncing up the parent. Item: %@%@";
LABEL_4:
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, v10, &v23, 0x16u);
  }

LABEL_5:

  [v6 markForceNeedsSyncUp];
  [v6 saveToDB];
  v11 = 1;
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_handlePendingShareItemWithPendingDeleteChildren:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 appLibrary];
  v5 = [v4 mangledID];
  v6 = [BRCUserDefaults defaultsForMangledID:v5];
  v7 = [v6 preventSharingFolderWithPendingDelete];

  if ((v7 & 1) == 0)
  {
    v12 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(BRCSyncUpEnumerator *)v12 _handlePendingShareItemWithPendingDeleteChildren:v17];
    }

    goto LABEL_13;
  }

  if (![v3 isChildSharedItem])
  {
    goto LABEL_14;
  }

  if (![v3 isSharedByMe])
  {
    goto LABEL_14;
  }

  if (![v3 isDirectory])
  {
    goto LABEL_14;
  }

  v8 = [v3 asDirectory];
  v9 = [v8 containsPendingDeleteDocuments];

  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = [v3 clientZone];
  v11 = [v3 itemID];
  v12 = [v10 serverItemByItemID:v11];

  if ([v12 isChildSharedItem])
  {
LABEL_13:

LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v3 itemID];
    v20 = 138412546;
    v21 = v15;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Sync: denylist %@ until the delete of its child%@", &v20, 0x16u);
  }

  v16 = 1;
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_checkIfShouldDenylistForPathMatch:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isDirectory] && (objc_msgSend(v4, "isKnownByServerOrInFlight") & 1) == 0)
  {
    v5 = [v4 serverPathMatchItemID];
    if (v5)
    {
      if (![(BRCClientZone *)self->_clientZone existsByItemID:v5])
      {
        v6 = [(BRCClientZone *)self->_clientZone serverItemByItemID:v5];
        v7 = [v6 isBRAlias];

        if ((v7 & 1) == 0)
        {
          v8 = brc_bread_crumbs();
          LOBYTE(v9) = 1;
          v10 = brc_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v9 = [v4 itemID];
            v15 = 138412802;
            v16 = v9;
            v17 = 2112;
            v18 = v5;
            v19 = 2112;
            v20 = v8;
            _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync: denylist %@ because it's an unresolved path-match with %@%@", &v15, 0x20u);

            LOBYTE(v9) = 1;
          }

          goto LABEL_13;
        }
      }
    }
  }

  if (([v4 localDiffs] & 0x1000000060) != 0)
  {
    v5 = [v4 serverPathMatchItemID];
    if (!v5)
    {
      LOBYTE(v9) = 0;
      goto LABEL_17;
    }

    v8 = [(BRCClientZone *)self->_clientZone itemByItemID:v5];
    LODWORD(v9) = [v8 isLost];
    if (!v9)
    {
LABEL_14:

LABEL_17:
      goto LABEL_18;
    }

    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v4 itemID];
      v15 = 138412802;
      v16 = v14;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync: denylist %@ because we have a lost item at the same path in the server truth - %@%@", &v15, 0x20u);
    }

LABEL_13:
    goto LABEL_14;
  }

  LOBYTE(v9) = 0;
LABEL_18:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_checkIfShouldDenylistForParentDirectoryFaultWithItem:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BRCClientZone *)self->_clientZone serverZone];
  if ([v5 state] & 4) != 0 || !objc_msgSend(v5, "hasFetchedServerZoneState") || -[BRCClientZone isSharedZone](self->_clientZone, "isSharedZone") && (objc_msgSend(v4, "isSharedToMeTopLevelItem"))
  {
    v6 = 0;
  }

  else
  {
    v9 = [v4 st];
    v10 = [v9 parentID];

    clientZone = self->_clientZone;
    v12 = [v4 dbFacade];
    LODWORD(clientZone) = [(BRCClientZone *)clientZone serverItemTypeByItemID:v10 dbFacade:v12];

    v6 = clientZone == 9;
    if (v6)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412546;
        v17 = v4;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] denylist %@ because parent is a directory fault in the server truth%@", &v16, 0x16u);
      }

      v15 = [(BRCClientZone *)self->_clientZone fetchDirectoryContentsIfNecessary:v10 isUserWaiting:0 rescheduleApplyScheduler:1];
      [v15 beginObservingChangesWithDelegate:0];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_checkIfShouldDenylistForChildrenOfItemBeingCopiedToNewZone:(id)a3
{
  v4 = a3;
  itemIDsWithChildrenBeingCopiedToNewZone = self->_itemIDsWithChildrenBeingCopiedToNewZone;
  v6 = [v4 itemID];
  LOBYTE(itemIDsWithChildrenBeingCopiedToNewZone) = [(NSMutableSet *)itemIDsWithChildrenBeingCopiedToNewZone containsObject:v6];

  if (itemIDsWithChildrenBeingCopiedToNewZone)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(BRCClientZone *)self->_clientZone db];
    v9 = [v4 itemID];
    v10 = [(BRCClientZone *)self->_clientZone dbRowID];
    v11 = [v8 numberWithSQL:{@"SELECT 1 FROM client_items AS ci INNER JOIN server_items AS si ON ci.version_old_zone_item_id = si.item_id AND ci.version_old_zone_rowid = si.zone_rowid  WHERE si.item_parent_id = %@ AND si.zone_rowid = %@ LIMIT 1", v9, v10}];

    v7 = [v11 BOOLValue];
  }

  return v7;
}

@end