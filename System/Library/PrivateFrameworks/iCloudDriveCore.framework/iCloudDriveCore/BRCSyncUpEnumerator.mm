@interface BRCSyncUpEnumerator
- (BOOL)_checkForSharesWithinSharesWithItem:(id)item;
- (BOOL)_checkIfParentNeedsRevivalWithParentItem:(id)item item:(id)a4;
- (BOOL)_checkIfShouldDenylistForChildrenOfItemBeingCopiedToNewZone:(id)zone;
- (BOOL)_checkIfShouldDenylistForParentDirectoryFaultWithItem:(id)item;
- (BOOL)_checkIfShouldDenylistForPathMatch:(id)match;
- (BOOL)_denyListDescendantStackAndItemIfThrottledOrNeedsOSUpgrade:(id)upgrade now:(unint64_t)now;
- (BOOL)_handlePendingShareItemWithPendingDeleteChildren:(id)children;
- (BOOL)_handleSharedItemWhichMovedToNewShare:(id)share rootItem:(id)item;
- (BOOL)handleItemForOSUpgrade:(id)upgrade parentItemID:(id)d;
- (BOOL)isDenyListed:(id)listed;
- (BOOL)shouldDenylistRemainingDeletionParentStackForItem:(id)item;
- (BRCSyncUpEnumerator)initWithClientZone:(id)zone;
- (id)_documentsOrAliasesNeedingSyncUpEnumerator;
- (id)_liveDirectoriesNeedingSyncUpEnumerator;
- (id)_nextLiveItem;
- (id)_nextTombstone;
- (id)_tombstoneLeavesNeedingSyncUpEnumerator;
- (id)nextObject;
- (void)_denyListDescendantStack:(id)stack parentItem:(id)item andAddToSet:(id)set descendantBlock:(id)block;
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
          _nextTombstone = [(BRCSyncUpEnumerator *)self _nextTombstone];
          if (_nextTombstone)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        _nextTombstone = [(BRCSyncUpEnumerator *)self _nextLiveItem];
        if (_nextTombstone)
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

          _documentsOrAliasesNeedingSyncUpEnumerator = [(BRCSyncUpEnumerator *)self _documentsOrAliasesNeedingSyncUpEnumerator];
LABEL_24:
          enumerator = self->_enumerator;
          self->_enumerator = _documentsOrAliasesNeedingSyncUpEnumerator;
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

            _documentsOrAliasesNeedingSyncUpEnumerator = [(BRCSyncUpEnumerator *)self _liveDirectoriesNeedingSyncUpEnumerator];
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

            _documentsOrAliasesNeedingSyncUpEnumerator = [(BRCSyncUpEnumerator *)self _tombstoneLeavesNeedingSyncUpEnumerator];
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

  _nextTombstone = 0;
LABEL_31:
  v15 = *MEMORY[0x277D85DE8];

  return _nextTombstone;
}

- (id)_documentsOrAliasesNeedingSyncUpEnumerator
{
  v3 = [(BRCClientZone *)self->_clientZone db];
  dbRowID = [(BRCClientZone *)self->_clientZone dbRowID];
  v5 = [v3 fetch:{@"SELECT li.rowid, li.zone_rowid, li.item_id, li.item_creator_id, li.item_sharing_options, li.item_side_car_ckinfo, li.item_parent_zone_rowid, li.item_localsyncupstate, li.item_local_diffs, li.item_notifs_rank, li.app_library_rowid, li.item_min_supported_os_rowid, li.item_user_visible, li.item_stat_ckinfo, li.item_state, li.item_type, li.item_mode, li.item_birthtime, li.item_lastusedtime, li.item_favoriterank, li.item_parent_id, li.item_filename, li.item_hidden_ext, li.item_finder_tags, li.item_xattr_signature, li.item_trash_put_back_path, li.item_trash_put_back_parent_id, li.item_alias_target, li.item_creator, li.item_processing_stamp, li.item_bouncedname, li.item_scope, li.item_local_change_count, li.item_old_version_identifier, li.fp_creation_item_identifier, li.version_name, li.version_ckinfo, li.version_mtime, li.version_size, li.version_thumb_size, li.version_thumb_signature, li.version_content_signature, li.version_xattr_signature, li.version_edited_since_shared, li.version_device, li.version_conflict_loser_etags, li.version_quarantine_info, li.version_uploaded_assets, li.version_upload_error, li.version_old_zone_item_id, li.version_old_zone_rowid, li.version_local_change_count, li.version_old_version_identifier, li.item_live_conflict_loser_etags, li.item_file_id, li.item_generation FROM client_items AS li  INNER JOIN client_sync_up AS su    ON su.throttle_id = li.rowid  WHERE         su.throttle_state = 50    AND su.zone_rowid = %@    AND su.in_flight_diffs IS NULL    AND li.item_type IN (1, 2, 8, 5, 6, 7, 3)    AND li.item_state = 0    AND li.item_localsyncupstate = 4    AND li.item_min_supported_os_rowid IS NULL ORDER BY su.retry_count ASC", dbRowID}];

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
  lastObject = [(NSMutableArray *)self->_stack lastObject];
  if (lastObject)
  {
    v4 = lastObject;
    do
    {
      v5 = objc_autoreleasePoolPush();
      ++self->_currentDepth;
      [(NSMutableArray *)self->_stack removeLastObject];
      if (self->_currentDepth >= self->_maxDepth)
      {
        tooDeepItems = self->_tooDeepItems;
        itemID = [v4 itemID];
        [(NSMutableArray *)tooDeepItems addObject:itemID];

        [v4 markCannotSynchronizeForTooDeepHierarchy];
        [v4 saveToDB];
      }

      else
      {
        if ([v4 isDirectory])
        {
          v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_currentDepth];
          visitedItemIDsToDepthMap = self->_visitedItemIDsToDepthMap;
          itemID2 = [v4 itemID];
          [(NSMutableDictionary *)visitedItemIDsToDepthMap setObject:v6 forKeyedSubscript:itemID2];
        }

        if ((-[NSMutableIndexSet containsIndex:](self->_returned, "containsIndex:", [v4 dbRowID]) & 1) == 0 && objc_msgSend(v4, "syncUpState") == 4 && !-[BRCSyncUpEnumerator _denyListDescendantStackAndItemIfThrottledOrNeedsOSUpgrade:now:](self, "_denyListDescendantStackAndItemIfThrottledOrNeedsOSUpgrade:now:", v4, v60))
        {
          -[NSMutableIndexSet addIndex:](self->_returned, "addIndex:", [v4 dbRowID]);
          v54 = v4;
          objc_autoreleasePoolPop(v5);
          _nextLiveItem = v54;
          goto LABEL_69;
        }
      }

      objc_autoreleasePoolPop(v5);
      lastObject2 = [(NSMutableArray *)self->_stack lastObject];

      v4 = lastObject2;
    }

    while (lastObject2);
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

    itemID3 = [(PQLEnumeration *)v54 itemID];
    v18 = [(BRCSyncUpEnumerator *)self isDenyListed:itemID3];

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
        _nextLiveItem = 0;
        v54 = v12;
        goto LABEL_69;
      }

      goto LABEL_16;
    }
  }

  while (2)
  {
    clientZone = [(PQLEnumeration *)v54 clientZone];
    if ([clientZone isEqualToClientZone:self->_clientZone])
    {
    }

    else
    {
      parentClientZone = [(PQLEnumeration *)v54 parentClientZone];
      v21 = [parentClientZone isEqualToClientZone:self->_clientZone];

      if (v21)
      {
        parentItemOnFS = [(PQLEnumeration *)v54 parentItemOnFS];
        itemID4 = [parentItemOnFS itemID];
        v24 = parentItemOnFS;
        goto LABEL_27;
      }
    }

    itemID4 = [(PQLEnumeration *)v54 parentItemIDInZone];
    v24 = 0;
LABEL_27:
    v25 = self->_tooDeepItems;
    itemID5 = [(PQLEnumeration *)v54 itemID];
    LODWORD(v25) = [(NSMutableArray *)v25 containsObject:itemID5];

    if (v25)
    {
      self->_currentDepth = self->_maxDepth + 1;
      goto LABEL_52;
    }

    [(NSMutableArray *)self->_stack addObject:v54];
    isLost = [(PQLEnumeration *)v54 isLost];
    v28 = isLost;
    if (isLost)
    {
      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        itemID6 = [(PQLEnumeration *)v54 itemID];
        *buf = v57;
        v67 = itemID6;
        v68 = 2112;
        v69 = v29;
        _os_log_debug_impl(&dword_223E7A000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync: denylist %@ because it's lost%@", buf, 0x16u);
      }
    }

    itemIDsBlockedFromSyncForCZMProcessing = [(BRCClientZone *)self->_clientZone itemIDsBlockedFromSyncForCZMProcessing];
    itemGlobalID = [(PQLEnumeration *)v54 itemGlobalID];
    v33 = [itemIDsBlockedFromSyncForCZMProcessing containsObject:itemGlobalID];

    if (!v33)
    {
      if ((v28 & 1) != 0 || [(BRCSyncUpEnumerator *)self _checkForSharesWithinSharesWithItem:v54]|| [(BRCSyncUpEnumerator *)self _checkIfShouldDenylistForParentDirectoryFaultWithItem:v54]|| [(BRCSyncUpEnumerator *)self _checkIfShouldDenylistForPathMatch:v54]|| [(NSMutableSet *)self->_itemIDsLostOrThrottled containsObject:itemID4])
      {
        goto LABEL_51;
      }

      if ([(BRCSyncUpEnumerator *)self handleItemForOSUpgrade:v54 parentItemID:itemID4]|| [(BRCSyncUpEnumerator *)self _handlePendingShareItemWithPendingDeleteChildren:v54])
      {
        goto LABEL_52;
      }

      v34 = [(NSMutableDictionary *)self->_visitedItemIDsToDepthMap objectForKey:itemID4];

      if (v34)
      {
        v44 = [(NSMutableDictionary *)self->_visitedItemIDsToDepthMap objectForKeyedSubscript:itemID4];
        self->_currentDepth = [v44 intValue];

        goto LABEL_52;
      }

      if ([itemID4 isNonDesktopRoot])
      {
        goto LABEL_52;
      }

      v35 = v24;
      if (!v24)
      {
        clientZone2 = [0 clientZone];
        clientZone3 = [(PQLEnumeration *)v54 clientZone];
        v38 = [clientZone2 isEqualToClientZone:clientZone3];

        if (v38)
        {
          goto LABEL_60;
        }

        if (!itemID4)
        {
          goto LABEL_61;
        }

        clientZone4 = [(PQLEnumeration *)v54 clientZone];
        v35 = [clientZone4 itemByItemID:itemID4];

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
          _nextLiveItem = 0;
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
    itemID7 = [(PQLEnumeration *)v54 itemID];
    *buf = v57;
    v67 = itemID7;
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

  _nextLiveItem = [(BRCSyncUpEnumerator *)self _nextLiveItem];
LABEL_68:

LABEL_69:
  v52 = *MEMORY[0x277D85DE8];

  return _nextLiveItem;
}

- (id)_liveDirectoriesNeedingSyncUpEnumerator
{
  v3 = [(BRCClientZone *)self->_clientZone db];
  dbRowID = [(BRCClientZone *)self->_clientZone dbRowID];
  v5 = [v3 fetch:{@"SELECT li.rowid, li.zone_rowid, li.item_id, li.item_creator_id, li.item_sharing_options, li.item_side_car_ckinfo, li.item_parent_zone_rowid, li.item_localsyncupstate, li.item_local_diffs, li.item_notifs_rank, li.app_library_rowid, li.item_min_supported_os_rowid, li.item_user_visible, li.item_stat_ckinfo, li.item_state, li.item_type, li.item_mode, li.item_birthtime, li.item_lastusedtime, li.item_favoriterank, li.item_parent_id, li.item_filename, li.item_hidden_ext, li.item_finder_tags, li.item_xattr_signature, li.item_trash_put_back_path, li.item_trash_put_back_parent_id, li.item_alias_target, li.item_creator, li.item_processing_stamp, li.item_bouncedname, li.item_scope, li.item_local_change_count, li.item_old_version_identifier, li.fp_creation_item_identifier, li.version_name, li.version_ckinfo, li.version_mtime, li.version_size, li.version_thumb_size, li.version_thumb_signature, li.version_content_signature, li.version_xattr_signature, li.version_edited_since_shared, li.version_device, li.version_conflict_loser_etags, li.version_quarantine_info, li.version_uploaded_assets, li.version_upload_error, li.version_old_zone_item_id, li.version_old_zone_rowid, li.version_local_change_count, li.version_old_version_identifier, li.item_live_conflict_loser_etags, li.item_file_id, li.item_generation FROM client_items AS li  INNER JOIN client_sync_up AS su  ON su.throttle_id = li.rowid  WHERE         su.throttle_state = 50    AND su.zone_rowid = %@    AND su.in_flight_diffs IS NULL    AND li.item_type IN (0, 9, 10, 4)    AND (li.item_state = 0)    AND li.item_localsyncupstate = 4    AND li.item_min_supported_os_rowid IS NULL ORDER BY su.retry_count ASC", dbRowID}];

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
  firstObject = 0;
  v5 = &OBJC_IVAR___BRCAccountSession__serverDB;
  v6 = &OBJC_IVAR___BRCAccountSession__serverDB;
  while (2)
  {
    while (1)
    {
      v7 = firstObject;
      firstObject = [(NSMutableArray *)self->_stack firstObject];

      if (!firstObject)
      {
        break;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = [(BRCSyncUpEnumerator *)self shouldDenylistRemainingDeletionParentStackForItem:firstObject];
      stack = self->_stack;
      if (v9)
      {
        [(NSMutableArray *)stack removeAllObjects];
        objc_autoreleasePoolPop(v8);
        break;
      }

      [(NSMutableArray *)stack removeObjectAtIndex:0];
      if (![firstObject isDirectory])
      {
        goto LABEL_39;
      }

      itemID = [firstObject itemID];
      [(NSMutableDictionary *)self->_visitedItemIDsToDepthMap setObject:&unk_2837B0B98 forKeyedSubscript:itemID];
      if ([firstObject syncUpState] == 4)
      {
        v12 = v6;
        v13 = v3;
        v14 = v12[561];
        if ([*(&self->super.super.isa + v14) containsIndex:{objc_msgSend(firstObject, "dbRowID")}])
        {
          v15 = 3;
          v3 = v13;
        }

        else
        {
          v16 = [(NSMutableDictionary *)self->_tombstonesEmbargo objectForKeyedSubscript:itemID];

          v17 = v16;
          if (!v16)
          {
            v20 = [(BRCClientZone *)self->_clientZone db];
            v21 = *(&self->super.super.isa + v14);
            dbRowID = [(BRCClientZone *)self->_clientZone dbRowID];
            v23 = [v20 numberWithSQL:{@"SELECT COUNT(*) FROM client_items  WHERE item_parent_id = %@     AND item_localsyncupstate = 4    AND NOT indexset_contains(%p, rowid)    AND zone_rowid = %@", itemID, v21, dbRowID}];

            v108 = v23;
            if (!v23)
            {
              [BRCSyncUpEnumerator _nextTombstone];
            }

            mangledID = [(BRCClientZone *)self->_clientZone mangledID];
            v25 = [BRCUserDefaults defaultsForMangledID:mangledID];
            checkTombstoneEmbargoReparents = [v25 checkTombstoneEmbargoReparents];

            if (checkTombstoneEmbargoReparents)
            {
              v27 = [(BRCClientZone *)self->_clientZone db];
              dbRowID2 = [(BRCClientZone *)self->_clientZone dbRowID];
              v29 = [v27 numberWithSQL:{@"SELECT COUNT(*) FROM server_items AS si INNER JOIN client_items AS ci USING (item_id, zone_rowid) WHERE si.item_parent_id = %@ AND si.zone_rowid = %@ AND ci.item_parent_id != si.item_parent_id AND ci.item_localsyncupstate != 0 AND NOT indexset_contains(%p, ci.rowid)", itemID, dbRowID2, *(&self->super.super.isa + v14)}];

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
                  unsignedLongLongValue = [v29 unsignedLongLongValue];
                  *buf = 138412802;
                  *v121 = itemID;
                  *&v121[8] = 2048;
                  *&v121[10] = unsignedLongLongValue;
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
              v40 = [firstObject st];
              itemID = [v40 parentID];

              v41 = [(NSMutableDictionary *)self->_tombstonesEmbargo objectForKeyedSubscript:itemID];

              if (v41)
              {
                v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v41, "integerValue") - 1}];

                v42 = brc_bread_crumbs();
                v43 = brc_default_log();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412802;
                  *v121 = itemID;
                  *&v121[8] = 2112;
                  *&v121[10] = v3;
                  *&v121[18] = 2112;
                  *&v121[20] = v42;
                  _os_log_debug_impl(&dword_223E7A000, v43, OS_LOG_TYPE_DEBUG, "[DEBUG] Embargoed item %@ has now %@ unreturned dead children left%@", buf, 0x20u);
                }

                [(NSMutableDictionary *)self->_tombstonesEmbargo setObject:v3 forKeyedSubscript:itemID];
                v6 = &OBJC_IVAR___BRCAccountSession__serverDB;
              }

              else
              {
                v44 = brc_bread_crumbs();
                v45 = brc_default_log();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  *v121 = itemID;
                  *&v121[8] = 2112;
                  *&v121[10] = v44;
                  _os_log_debug_impl(&dword_223E7A000, v45, OS_LOG_TYPE_DEBUG, "[DEBUG] item %@ isn't embargoed%@", buf, 0x16u);
                }

                v3 = 0;
              }

              if ([(BRCSyncUpEnumerator *)self _denyListDescendantStackAndItemIfThrottledOrNeedsOSUpgrade:firstObject now:v107])
              {
                v15 = 4;
              }

              else
              {
                [*(&self->super.super.isa + v6[561]) addIndex:{objc_msgSend(firstObject, "dbRowID")}];
                v106 = firstObject;
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
              *v121 = itemID;
              *&v121[8] = 2112;
              *&v121[10] = v3;
              *&v121[18] = 2112;
              *&v121[20] = v38;
              _os_log_debug_impl(&dword_223E7A000, v39, OS_LOG_TYPE_DEBUG, "[DEBUG] Embargoing item %@: it has %@ unsynced children%@", buf, 0x20u);
            }

            [(NSMutableDictionary *)self->_tombstonesEmbargo setObject:v3 forKeyedSubscript:itemID];
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
              *v121 = itemID;
              *&v121[8] = 2112;
              *&v121[10] = v34;
              _os_log_debug_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEBUG, "[DEBUG] Item %@ is un-embargoed%@", buf, 0x16u);
            }

            [(NSMutableDictionary *)self->_tombstonesEmbargo removeObjectForKey:itemID];
LABEL_36:
            v6 = &OBJC_IVAR___BRCAccountSession__serverDB;
            goto LABEL_38;
          }

          v18 = brc_bread_crumbs();
          v19 = brc_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            *v121 = itemID;
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
      v48 = firstObject;
      goto LABEL_144;
    }

    v109 = v3;
    v47 = *v116;
    v48 = firstObject;
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

      firstObject = *(*(&v115 + 1) + 8 * v49);

      v50 = v6[561];
      if ([*(&self->super.super.isa + v50) containsIndex:{objc_msgSend(firstObject, "dbRowID")}])
      {
        v48 = firstObject;
        goto LABEL_127;
      }

      itemID2 = [firstObject itemID];
      v52 = [(BRCSyncUpEnumerator *)self isDenyListed:itemID2];

      if (v52)
      {
        v48 = firstObject;
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

    [(NSMutableArray *)self->_stack addObject:firstObject];
    if ([(NSMutableArray *)self->_stack count]>= self->_maxDepth)
    {
      v48 = 0;
LABEL_112:
      parentID = brc_bread_crumbs();
      v84 = brc_default_log();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        maxDepth = self->_maxDepth;
        *buf = 67109634;
        *v121 = maxDepth;
        *&v121[4] = 2112;
        *&v121[6] = firstObject;
        *&v121[14] = 2112;
        *&v121[16] = parentID;
        _os_log_impl(&dword_223E7A000, v84, OS_LOG_TYPE_DEFAULT, "[WARNING] max depth %u reached at %@%@", buf, 0x1Cu);
      }

LABEL_120:
      if (v48)
      {
        v88 = brc_bread_crumbs();
        v89 = brc_default_log();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
        {
          debugItemIDString = [v48 debugItemIDString];
          *buf = 138412546;
          *v121 = debugItemIDString;
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

      v48 = firstObject;
      v6 = &OBJC_IVAR___BRCAccountSession__serverDB;
      goto LABEL_126;
    }

    break;
  }

  v48 = 0;
  v111 = 0;
  v46 = firstObject;
  while (2)
  {
    v53 = [v46 st];
    parentID = [v53 parentID];

    if ([v46 isLost])
    {
      v55 = 1;
    }

    else if ([v46 isDirectory] && objc_msgSend(v46, "isDead"))
    {
      v56 = [v46 st];
      processingStamp = [v56 processingStamp];
      v55 = processingStamp != 0;
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
        itemID3 = [v46 itemID];
        [(NSMutableSet *)itemIDsWithChildrenBeingCopiedToNewZone addObject:itemID3];

        v111 = 1;
        if (v48)
        {
LABEL_77:
          asDirectory = [v46 asDirectory];
          isDirectoryFault = [asDirectory isDirectoryFault];

          if (!isDirectoryFault)
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
      itemID4 = [v46 itemID];
      if ([(NSMutableSet *)itemIDsNeedingDirectoryFetch containsObject:itemID4])
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

          itemID6 = 0;
        }

        else
        {
          v73 = brc_bread_crumbs();
          v74 = brc_default_log();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            itemID5 = [v46 itemID];
            itemIDString = [itemID5 itemIDString];
            *buf = 138412546;
            *v121 = itemIDString;
            *&v121[8] = 2112;
            *&v121[10] = v73;
            _os_log_debug_impl(&dword_223E7A000, v74, OS_LOG_TYPE_DEBUG, "[DEBUG] Highest parent dead fault is %@%@", buf, 0x16u);
          }

          itemID6 = [v46 itemID];
        }

        v48 = itemID6;
LABEL_91:
        v55 = v110;
        v75 = self->_itemIDsNeedingDirectoryFetch;
        itemID7 = [v46 itemID];
        [(NSMutableSet *)v75 addObject:itemID7];
      }

      else
      {
        asDirectory2 = [v46 asDirectory];
        containsDirFault = [asDirectory2 containsDirFault];

        if (containsDirFault)
        {
          goto LABEL_83;
        }

        v48 = 0;
        v55 = v110;
      }
    }

    if (![v46 isSharedToMeTopLevelItem] || !objc_msgSend(v46, "isDirectory") || !objc_msgSend(v46, "isAlmostDead") || !-[BRCClientZone isSharedZone](self->_clientZone, "isSharedZone"))
    {
      v77 = [(NSMutableDictionary *)self->_visitedItemIDsToDepthMap objectForKey:parentID];
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
        parentItemIDInZone = [v46 parentItemIDInZone];
        if (![parentItemIDInZone isNonDesktopRoot])
        {
          if (!parentItemIDInZone || ([v46 clientZone], v81 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v81, "itemByItemID:", parentItemIDInZone), firstObject = objc_claimAutoreleasedReturnValue(), v81, !firstObject))
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

          [(NSMutableArray *)self->_stack addObject:firstObject];
          v46 = firstObject;
          if ([(NSMutableArray *)self->_stack count]>= self->_maxDepth)
          {
            goto LABEL_112;
          }

          continue;
        }
      }

      else
      {
        if (!v55 && ![(NSMutableSet *)self->_itemIDsLostOrThrottled containsObject:parentID])
        {
          if ([(BRCSyncUpEnumerator *)self handleItemForOSUpgrade:v46 parentItemID:parentID])
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
      firstObject = v46;
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
  itemID8 = [v46 itemID];
  LOBYTE(v94) = [(NSMutableSet *)v94 containsObject:itemID8];

  if (v94)
  {
    firstObject = v46;
    goto LABEL_120;
  }

  [*(&self->super.super.isa + v50) addIndex:{objc_msgSend(v46, "dbRowID")}];
  v105 = v46;
LABEL_143:
  v3 = v109;

LABEL_144:
  firstObject = v46;
LABEL_145:

  v102 = *MEMORY[0x277D85DE8];

  return v105;
}

- (id)_tombstoneLeavesNeedingSyncUpEnumerator
{
  v3 = [(BRCClientZone *)self->_clientZone db];
  dbRowID = [(BRCClientZone *)self->_clientZone dbRowID];
  v5 = [v3 fetch:{@"SELECT li.rowid, li.zone_rowid, li.item_id, li.item_creator_id, li.item_sharing_options, li.item_side_car_ckinfo, li.item_parent_zone_rowid, li.item_localsyncupstate, li.item_local_diffs, li.item_notifs_rank, li.app_library_rowid, li.item_min_supported_os_rowid, li.item_user_visible, li.item_stat_ckinfo, li.item_state, li.item_type, li.item_mode, li.item_birthtime, li.item_lastusedtime, li.item_favoriterank, li.item_parent_id, li.item_filename, li.item_hidden_ext, li.item_finder_tags, li.item_xattr_signature, li.item_trash_put_back_path, li.item_trash_put_back_parent_id, li.item_alias_target, li.item_creator, li.item_processing_stamp, li.item_bouncedname, li.item_scope, li.item_local_change_count, li.item_old_version_identifier, li.fp_creation_item_identifier, li.version_name, li.version_ckinfo, li.version_mtime, li.version_size, li.version_thumb_size, li.version_thumb_signature, li.version_content_signature, li.version_xattr_signature, li.version_edited_since_shared, li.version_device, li.version_conflict_loser_etags, li.version_quarantine_info, li.version_uploaded_assets, li.version_upload_error, li.version_old_zone_item_id, li.version_old_zone_rowid, li.version_local_change_count, li.version_old_version_identifier, li.item_live_conflict_loser_etags, li.item_file_id, li.item_generation FROM client_items AS li  INNER JOIN client_sync_up AS su    ON su.throttle_id = li.rowid  WHERE         su.throttle_state = 50    AND su.zone_rowid = %@    AND su.in_flight_diffs IS NULL    AND li.item_state = 1    AND li.item_localsyncupstate = 4    AND NOT EXISTS(SELECT 1 FROM client_items AS ci                     WHERE li.item_id = ci.item_parent_id                      AND ci.zone_rowid = su.zone_rowid)    AND li.item_min_supported_os_rowid IS NULL ORDER BY su.retry_count ASC", dbRowID}];

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

- (BRCSyncUpEnumerator)initWithClientZone:(id)zone
{
  zoneCopy = zone;
  v30.receiver = self;
  v30.super_class = BRCSyncUpEnumerator;
  v6 = [(BRCSyncUpEnumerator *)&v30 init];
  if (v6)
  {
    mangledID = [zoneCopy mangledID];
    v8 = [BRCUserDefaults defaultsForMangledID:mangledID];

    v6->_batchSize = [zoneCopy syncUpBatchSize];
    v6->_maxDepth = [v8 maxSyncPathDepth];
    v6->_should2PhasePCSChain = [v8 should2PhasePCSChain];
    v6->_retryAfter = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v6->_clientZone, zone);
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

- (void)_denyListDescendantStack:(id)stack parentItem:(id)item andAddToSet:(id)set descendantBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  stackCopy = stack;
  itemCopy = item;
  setCopy = set;
  blockCopy = block;
  if ([itemCopy isDirectory])
  {
    itemID = [itemCopy itemID];
    [setCopy addObject:itemID];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = stackCopy;
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
          itemID2 = [v19 itemID];
          [setCopy addObject:itemID2];
        }

        if (blockCopy)
        {
          itemID3 = [v19 itemID];
          blockCopy[2](blockCopy, itemID3);
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  [v14 removeAllObjects];
  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_denyListDescendantStackAndItemIfThrottledOrNeedsOSUpgrade:(id)upgrade now:(unint64_t)now
{
  v41 = *MEMORY[0x277D85DE8];
  upgradeCopy = upgrade;
  if ([upgradeCopy needsOSUpgradeToSyncUp])
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpEnumerator _denyListDescendantStackAndItemIfThrottledOrNeedsOSUpgrade:now:];
    }

    goto LABEL_11;
  }

  session = [(BRCClientZone *)self->_clientZone session];
  syncUpScheduler = [session syncUpScheduler];
  dbRowID = [(BRCClientZone *)self->_clientZone dbRowID];
  v12 = [syncUpScheduler timeToRetryForItem:upgradeCopy zone:dbRowID];
  v33 = v12;

  if (v12)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v36 = upgradeCopy;
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
    [(BRCSyncUpEnumerator *)self _denyListDescendantStack:self->_stack parentItem:upgradeCopy andAddToSet:self->_itemIDsLostOrThrottled];
LABEL_12:
    v16 = 1;
    goto LABEL_13;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  syncThrottles = [(BRCClientZone *)self->_clientZone syncThrottles];
  v20 = [syncThrottles countByEnumeratingWithState:&v29 objects:v34 count:16];
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
          objc_enumerationMutation(syncThrottles);
        }

        if ([*(*(&v29 + 1) + 8 * i) matchesItem:upgradeCopy nsecsToRetry:&v33 now:now])
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
            v36 = upgradeCopy;
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
          [(BRCSyncUpEnumerator *)self _denyListDescendantStack:self->_stack parentItem:upgradeCopy andAddToSet:self->_itemIDsLostOrThrottled];

          goto LABEL_12;
        }
      }

      v21 = [syncThrottles countByEnumeratingWithState:&v29 objects:v34 count:16];
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

- (BOOL)isDenyListed:(id)listed
{
  listedCopy = listed;
  if (([(NSMutableSet *)self->_itemIDsLostOrThrottled containsObject:listedCopy]& 1) != 0 || ([(NSMutableSet *)self->_itemIDsNeedingOSUpgrade containsObject:listedCopy]& 1) != 0 || ([(NSMutableSet *)self->_itemIDsWithChildrenBeingCopiedToNewZone containsObject:listedCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(NSMutableSet *)self->_itemIDsNeedingDirectoryFetch containsObject:listedCopy];
  }

  return v5;
}

- (BOOL)shouldDenylistRemainingDeletionParentStackForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isDead])
  {
    itemIDsNeedingDirectoryFetch = self->_itemIDsNeedingDirectoryFetch;
    itemID = [itemCopy itemID];
    if (([(NSMutableSet *)itemIDsNeedingDirectoryFetch containsObject:itemID]& 1) != 0)
    {
      v7 = 1;
    }

    else
    {
      itemIDsWithChildrenBeingCopiedToNewZone = self->_itemIDsWithChildrenBeingCopiedToNewZone;
      itemID2 = [itemCopy itemID];
      v7 = [(NSMutableSet *)itemIDsWithChildrenBeingCopiedToNewZone containsObject:itemID2];
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)handleItemForOSUpgrade:(id)upgrade parentItemID:(id)d
{
  upgradeCopy = upgrade;
  dCopy = d;
  if (([upgradeCopy needsOSUpgradeToSyncUp] & 1) != 0 || -[NSMutableSet containsObject:](self->_itemIDsNeedingOSUpgrade, "containsObject:", dCopy))
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpEnumerator handleItemForOSUpgrade:parentItemID:];
    }

    if (![upgradeCopy needsOSUpgradeToSyncUp])
    {
      parentItemIDInZone = [upgradeCopy parentItemIDInZone];
      v11 = parentItemIDInZone;
      if (parentItemIDInZone && ([parentItemIDInZone isNonDesktopRoot] & 1) == 0)
      {
        clientZone = [upgradeCopy clientZone];
        v13 = [clientZone itemByItemID:v11];

        [upgradeCopy inheritOSUpgradeNeededFromItem:v13];
        [upgradeCopy saveToDB];
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
    v19 = upgradeCopy;
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

- (BOOL)_handleSharedItemWhichMovedToNewShare:(id)share rootItem:(id)item
{
  v33 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  itemCopy = item;
  if (([shareCopy sharingOptions] & 4) == 0)
  {
    itemGlobalID = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [BRCSyncUpEnumerator _handleSharedItemWhichMovedToNewShare:rootItem:];
    }

    goto LABEL_21;
  }

  clientZone = [shareCopy clientZone];
  if ([clientZone isEqualToClientZone:self->_clientZone])
  {
    isPrivateZone = [(BRCClientZone *)self->_clientZone isPrivateZone];
  }

  else
  {
    isPrivateZone = 0;
  }

  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = " in the same zone";
    v25 = 138413058;
    if (!isPrivateZone)
    {
      v14 = 0;
    }

    v26 = shareCopy;
    v27 = 2112;
    v28 = itemCopy;
    v29 = 2080;
    v30 = v14;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] item with shareID %@ is moving into a shared parent %@%s%@", &v25, 0x2Au);
  }

  if (!isPrivateZone)
  {
    clientZone = self->_clientZone;
    itemGlobalID = [itemCopy itemGlobalID];
    [(BRCClientZone *)clientZone itemMovedIntoShareInThisZone:shareCopy associatedItemID:itemGlobalID];
LABEL_21:
    v19 = 1;
    goto LABEL_22;
  }

  clientZone2 = [shareCopy clientZone];
  itemID = [shareCopy itemID];
  itemGlobalID = [clientZone2 serverItemByItemID:itemID];

  if (([itemGlobalID sharingOptions] & 4) != 0)
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpEnumerator _handleSharedItemWhichMovedToNewShare:rootItem:];
    }

    [(NSMutableArray *)self->_itemsNeedingUnshare addObject:shareCopy];
    goto LABEL_21;
  }

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [BRCSyncUpEnumerator _handleSharedItemWhichMovedToNewShare:rootItem:];
  }

  [shareCopy updateItemMetadataFromServerItem:itemGlobalID appliedSharingPermission:0];
  [shareCopy saveToDBForServerEdit:1 keepAliases:0];
  v19 = 0;
LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_checkForSharesWithinSharesWithItem:(id)item
{
  v50 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if ([itemCopy isDead] & 1) != 0 || (objc_msgSend(itemCopy, "isFSRoot"))
  {
    parentItemOnFS = 0;
    LOBYTE(p_super) = 0;
    goto LABEL_4;
  }

  if (([itemCopy localDiffs] & 0x20) != 0 && (objc_msgSend(itemCopy, "sharingOptions") & 4) != 0)
  {
    parentItemOnFS = [itemCopy parentItemOnFS];
    if (([parentItemOnFS sharingOptions] & 0x48) != 0)
    {
      asShareableItem = [itemCopy asShareableItem];
      v29 = [(BRCSyncUpEnumerator *)self _handleSharedItemWhichMovedToNewShare:asShareableItem rootItem:0];

      if (v29)
      {
        v12 = brc_bread_crumbs();
        p_super = brc_default_log();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
        {
          [(BRCSyncUpEnumerator *)itemCopy _checkForSharesWithinSharesWithItem:v12, p_super];
        }

        LOBYTE(p_super) = 1;
        goto LABEL_34;
      }
    }
  }

  else
  {
    parentItemOnFS = 0;
  }

  if (([itemCopy localDiffs] & 0x20) != 0 && -[BRCClientZone isPrivateZone](self->_clientZone, "isPrivateZone") && objc_msgSend(itemCopy, "isDirectory"))
  {
    if (!parentItemOnFS)
    {
      parentItemOnFS = [itemCopy parentItemOnFS];
    }

    if (([parentItemOnFS sharingOptions] & 0x48) != 0)
    {
      p_super = [(BRCClientZone *)self->_clientZone session];
      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0;
      v9 = [itemCopy db];
      v10 = [p_super getClientDBFacadeFromDB:v9];

      asDirectory = [itemCopy asDirectory];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __59__BRCSyncUpEnumerator__checkForSharesWithinSharesWithItem___block_invoke;
      v36[3] = &unk_2785085D8;
      v12 = p_super;
      v40 = &v41;
      v37 = v12;
      selfCopy = self;
      v13 = itemCopy;
      v39 = v13;
      [v10 enumerateItemsWithShareIDUnderParent:asDirectory block:v36];

      LODWORD(p_super) = *(v42 + 24);
      if (p_super == 1)
      {
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          itemID = [v13 itemID];
          [(BRCSyncUpEnumerator *)itemID _checkForSharesWithinSharesWithItem:v14, v49, v15];
        }
      }

      _Block_object_dispose(&v41, 8);
LABEL_34:

      goto LABEL_20;
    }
  }

  LOBYTE(p_super) = 0;
LABEL_20:
  if (([itemCopy sharingOptions] & 0x7C) == 4 && objc_msgSend(itemCopy, "isDirectory"))
  {
    clientZone = [itemCopy clientZone];
    itemID2 = [itemCopy itemID];
    v19 = [clientZone serverItemByItemID:itemID2];

    if (([v19 sharingOptions] & 0x7C) == 4)
    {
      session = [(BRCClientZone *)self->_clientZone session];
      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0;
      v21 = [itemCopy db];
      v22 = [session getClientDBFacadeFromDB:v21];

      asDirectory2 = [itemCopy asDirectory];
      v30 = MEMORY[0x277D85DD0];
      v31 = 3221225472;
      v32 = __59__BRCSyncUpEnumerator__checkForSharesWithinSharesWithItem___block_invoke_15;
      v33 = &unk_278508600;
      v24 = itemCopy;
      v34 = v24;
      v35 = &v41;
      [v22 enumerateItemsWithShareIDUnderParent:asDirectory2 block:&v30];

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
        asShareableItem2 = [v24 asShareableItem];
        [p_super addObject:asShareableItem2];

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

- (BOOL)_checkIfParentNeedsRevivalWithParentItem:(id)item item:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = a4;
  if (![itemCopy isRejected])
  {
    clientZone = self->_clientZone;
    clientZone = [itemCopy clientZone];
    if (-[BRCClientZone isEqualToClientZone:](clientZone, "isEqualToClientZone:", clientZone) && [itemCopy isKnownByServer] && objc_msgSend(itemCopy, "isIdleOrRejected"))
    {
      isDeadOrMissingInServerTruth = [itemCopy isDeadOrMissingInServerTruth];

      if (isDeadOrMissingInServerTruth)
      {
        if ([itemCopy isSharedToMeChildItem])
        {
          goto LABEL_11;
        }

        clientZone2 = [itemCopy clientZone];
        isPrivateZone = [clientZone2 isPrivateZone];

        if (isPrivateZone)
        {
          clientZone3 = [itemCopy clientZone];
          asPrivateClientZone = [clientZone3 asPrivateClientZone];
          itemID = [itemCopy itemID];
          v22 = [asPrivateClientZone pcsChainStateForItem:itemID] & 0xFFFFFFFE;

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
            v24 = itemCopy;
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

  [itemCopy markForceNeedsSyncUp];
  [itemCopy saveToDB];
  v11 = 1;
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_handlePendingShareItemWithPendingDeleteChildren:(id)children
{
  v24 = *MEMORY[0x277D85DE8];
  childrenCopy = children;
  appLibrary = [childrenCopy appLibrary];
  mangledID = [appLibrary mangledID];
  v6 = [BRCUserDefaults defaultsForMangledID:mangledID];
  preventSharingFolderWithPendingDelete = [v6 preventSharingFolderWithPendingDelete];

  if ((preventSharingFolderWithPendingDelete & 1) == 0)
  {
    v12 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(BRCSyncUpEnumerator *)v12 _handlePendingShareItemWithPendingDeleteChildren:v17];
    }

    goto LABEL_13;
  }

  if (![childrenCopy isChildSharedItem])
  {
    goto LABEL_14;
  }

  if (![childrenCopy isSharedByMe])
  {
    goto LABEL_14;
  }

  if (![childrenCopy isDirectory])
  {
    goto LABEL_14;
  }

  asDirectory = [childrenCopy asDirectory];
  containsPendingDeleteDocuments = [asDirectory containsPendingDeleteDocuments];

  if (!containsPendingDeleteDocuments)
  {
    goto LABEL_14;
  }

  clientZone = [childrenCopy clientZone];
  itemID = [childrenCopy itemID];
  v12 = [clientZone serverItemByItemID:itemID];

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
    itemID2 = [childrenCopy itemID];
    v20 = 138412546;
    v21 = itemID2;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Sync: denylist %@ until the delete of its child%@", &v20, 0x16u);
  }

  v16 = 1;
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_checkIfShouldDenylistForPathMatch:(id)match
{
  v21 = *MEMORY[0x277D85DE8];
  matchCopy = match;
  if ([matchCopy isDirectory] && (objc_msgSend(matchCopy, "isKnownByServerOrInFlight") & 1) == 0)
  {
    serverPathMatchItemID = [matchCopy serverPathMatchItemID];
    if (serverPathMatchItemID)
    {
      if (![(BRCClientZone *)self->_clientZone existsByItemID:serverPathMatchItemID])
      {
        v6 = [(BRCClientZone *)self->_clientZone serverItemByItemID:serverPathMatchItemID];
        isBRAlias = [v6 isBRAlias];

        if ((isBRAlias & 1) == 0)
        {
          v8 = brc_bread_crumbs();
          LOBYTE(itemID) = 1;
          v10 = brc_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            itemID = [matchCopy itemID];
            v15 = 138412802;
            v16 = itemID;
            v17 = 2112;
            v18 = serverPathMatchItemID;
            v19 = 2112;
            v20 = v8;
            _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync: denylist %@ because it's an unresolved path-match with %@%@", &v15, 0x20u);

            LOBYTE(itemID) = 1;
          }

          goto LABEL_13;
        }
      }
    }
  }

  if (([matchCopy localDiffs] & 0x1000000060) != 0)
  {
    serverPathMatchItemID = [matchCopy serverPathMatchItemID];
    if (!serverPathMatchItemID)
    {
      LOBYTE(itemID) = 0;
      goto LABEL_17;
    }

    v8 = [(BRCClientZone *)self->_clientZone itemByItemID:serverPathMatchItemID];
    LODWORD(itemID) = [v8 isLost];
    if (!itemID)
    {
LABEL_14:

LABEL_17:
      goto LABEL_18;
    }

    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      itemID2 = [matchCopy itemID];
      v15 = 138412802;
      v16 = itemID2;
      v17 = 2112;
      v18 = serverPathMatchItemID;
      v19 = 2112;
      v20 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync: denylist %@ because we have a lost item at the same path in the server truth - %@%@", &v15, 0x20u);
    }

LABEL_13:
    goto LABEL_14;
  }

  LOBYTE(itemID) = 0;
LABEL_18:

  v12 = *MEMORY[0x277D85DE8];
  return itemID;
}

- (BOOL)_checkIfShouldDenylistForParentDirectoryFaultWithItem:(id)item
{
  v20 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  serverZone = [(BRCClientZone *)self->_clientZone serverZone];
  if ([serverZone state] & 4) != 0 || !objc_msgSend(serverZone, "hasFetchedServerZoneState") || -[BRCClientZone isSharedZone](self->_clientZone, "isSharedZone") && (objc_msgSend(itemCopy, "isSharedToMeTopLevelItem"))
  {
    v6 = 0;
  }

  else
  {
    v9 = [itemCopy st];
    parentID = [v9 parentID];

    clientZone = self->_clientZone;
    dbFacade = [itemCopy dbFacade];
    LODWORD(clientZone) = [(BRCClientZone *)clientZone serverItemTypeByItemID:parentID dbFacade:dbFacade];

    v6 = clientZone == 9;
    if (v6)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412546;
        v17 = itemCopy;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] denylist %@ because parent is a directory fault in the server truth%@", &v16, 0x16u);
      }

      v15 = [(BRCClientZone *)self->_clientZone fetchDirectoryContentsIfNecessary:parentID isUserWaiting:0 rescheduleApplyScheduler:1];
      [v15 beginObservingChangesWithDelegate:0];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_checkIfShouldDenylistForChildrenOfItemBeingCopiedToNewZone:(id)zone
{
  zoneCopy = zone;
  itemIDsWithChildrenBeingCopiedToNewZone = self->_itemIDsWithChildrenBeingCopiedToNewZone;
  itemID = [zoneCopy itemID];
  LOBYTE(itemIDsWithChildrenBeingCopiedToNewZone) = [(NSMutableSet *)itemIDsWithChildrenBeingCopiedToNewZone containsObject:itemID];

  if (itemIDsWithChildrenBeingCopiedToNewZone)
  {
    bOOLValue = 1;
  }

  else
  {
    v8 = [(BRCClientZone *)self->_clientZone db];
    itemID2 = [zoneCopy itemID];
    dbRowID = [(BRCClientZone *)self->_clientZone dbRowID];
    v11 = [v8 numberWithSQL:{@"SELECT 1 FROM client_items AS ci INNER JOIN server_items AS si ON ci.version_old_zone_item_id = si.item_id AND ci.version_old_zone_rowid = si.zone_rowid  WHERE si.item_parent_id = %@ AND si.zone_rowid = %@ LIMIT 1", itemID2, dbRowID}];

    bOOLValue = [v11 BOOLValue];
  }

  return bOOLValue;
}

@end