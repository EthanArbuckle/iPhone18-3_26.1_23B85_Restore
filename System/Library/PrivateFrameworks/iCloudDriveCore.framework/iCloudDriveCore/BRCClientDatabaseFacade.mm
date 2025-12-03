@interface BRCClientDatabaseFacade
- (BOOL)clientStateData:(id *)data clientStateDictionary:(id *)dictionary silent:(BOOL)silent;
- (BOOL)containsNonRejectedChildWithParentID:(id)d zoneRowID:(id)iD;
- (BOOL)existsByParentID:(id)d andLogicalName:(id)name excludingItemGlobalID:(id)iD zoneRowID:(id)rowID;
- (BOOL)hasDownloadJobWithTransferStageID:(id)d;
- (BOOL)item:(id)item hasSyncUpJobState:(id)state;
- (BOOL)zoneHasItemsWithInflightDiffsInZoneRowID:(id)d;
- (BRCClientDatabaseFacade)initWithDB:(id)b workloop:(id)workloop;
- (char)itemTypeByItemID:(id)d zoneRowID:(id)iD;
- (id)_localItemByFileID:(unint64_t)d zoneInjectionCondition:(id)condition itemBuilder:(id)builder;
- (id)allItemsSortedByDepthDescendingInZoneRowID:(id)d descending:(BOOL)descending isSharedZone:(BOOL)zone parentItemID:(id)iD itemBuilder:(id)builder;
- (id)clientChildCountWithParentID:(id)d zoneRowID:(id)iD;
- (id)enumerateUserVisibleChildrenDirectoriesOfItemGlobalID:(id)d itemBuilder:(id)builder;
- (id)fetchAppLibraryPlist:(id)plist;
- (id)getAssetRanksForFileItemsInPackage:(id)package;
- (id)itemByParentID:(id)d andLogicalName:(id)name excludingItemID:(id)iD zoneRowID:(id)rowID itemBuilder:(id)builder;
- (id)itemIDByRowID:(unint64_t)d;
- (id)itemsEnumeratorWithParentID:(id)d andLogicalName:(id)name zoneRowID:(id)iD itemBuilder:(id)builder;
- (id)itemsParentedToPassedZoneButLivingInAnOtherZone:(id)zone itemBuilder:(id)builder;
- (id)itemsWithInFlightDiffsEnumeratorInZone:(id)zone itemBuilder:(id)builder;
- (id)itemsWithSideCarInflightDiffsWithItemBuilder:(id)builder;
- (id)localAliasForItemWithBookmarkData:(id)data inZone:(id)zone itemBuilder:(id)builder;
- (id)localItemByFileID:(unint64_t)d itemBuilder:(id)builder;
- (id)localItemByFileID:(unint64_t)d zoneRowID:(id)iD itemBuilder:(id)builder;
- (id)localItemByItemGlobalID:(id)d itemBuilder:(id)builder;
- (id)localItemByRowID:(unint64_t)d zoneRowID:(id)iD itemBuilder:(id)builder;
- (id)serverHiddenChildCountWithParentID:(id)d zoneRowID:(id)iD;
- (unint64_t)getSyncState:(unint64_t)state ignoredZones:(id)zones error:(id *)error;
- (unint64_t)inFlightSyncUpDiffsForItem:(id)item zoneRowID:(id)d;
- (void)enumerateItemsWithShareIDUnderParent:(id)parent block:(id)block;
@end

@implementation BRCClientDatabaseFacade

- (BRCClientDatabaseFacade)initWithDB:(id)b workloop:(id)workloop
{
  v5.receiver = self;
  v5.super_class = BRCClientDatabaseFacade;
  return [(BRCDatabaseFacade *)&v5 _initWithDB:b workloop:workloop];
}

- (BOOL)clientStateData:(id *)data clientStateDictionary:(id *)dictionary silent:(BOOL)silent
{
  v9 = [(BRCPQLConnection *)self->super._db fetch:@"SELECT * FROM client_state"];
  if (![v9 next])
  {
    if (!silent)
    {
      abc_report_panic_with_signature();
      v19 = MEMORY[0x277CCACA8];
      lastError = [(BRCPQLConnection *)self->super._db lastError];
      [v19 stringWithFormat:@"there should always be one row in client_state {%@}", lastError];
      objc_claimAutoreleasedReturnValue();

      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [BRCClientDatabaseFacade clientStateData:clientStateDictionary:silent:];
      }

      brc_append_system_info_to_message();
      uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("[BRCClientDatabaseFacade clientStateData:clientStateDictionary:silent:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/database/BRCClientDatabaseFacade.m", 259, uTF8String);
    }

    goto LABEL_8;
  }

  if ([v9 isNullAtIndex:0])
  {
    [v9 close];
    if (data)
    {
      *data = objc_opt_new();
    }

    if (dictionary)
    {
      v10 = 0;
      *dictionary = objc_opt_new();
      goto LABEL_9;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v12 = [v9 dataAtIndex:0];
  v10 = v12;
  if (data)
  {
    v13 = v12;
    *data = v10;
  }

  if (dictionary)
  {
    v14 = MEMORY[0x277CCAAC8];
    v15 = +[BRCClientState allowedClasses];
    v27 = 0;
    v16 = [v14 unarchivedObjectOfClasses:v15 fromData:v10 error:&v27];
    v17 = v27;
    v18 = v16;
    *dictionary = v16;

    if (v17)
    {
      abc_report_panic_with_signature();
      [MEMORY[0x277CCACA8] stringWithFormat:@"Error while unarchiving client state %@", v17];
      objc_claimAutoreleasedReturnValue();
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        [BRCClientDatabaseFacade clientStateData:clientStateDictionary:silent:];
      }

      brc_append_system_info_to_message();
      uTF8String2 = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("[BRCClientDatabaseFacade clientStateData:clientStateDictionary:silent:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/database/BRCClientDatabaseFacade.m", 250, uTF8String2);
    }
  }

  [v9 close];
  if (!silent && !v10)
  {
    [BRCClientDatabaseFacade clientStateData:clientStateDictionary:silent:];
  }

LABEL_9:

  return 1;
}

id __64__BRCClientDatabaseFacade_documentItemByDocumentID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newLocalItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)_localItemByFileID:(unint64_t)d zoneInjectionCondition:(id)condition itemBuilder:(id)builder
{
  builderCopy = builder;
  db = self->super._db;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__BRCClientDatabaseFacade__localItemByFileID_zoneInjectionCondition_itemBuilder___block_invoke;
  v13[3] = &unk_2784FF910;
  v14 = builderCopy;
  v10 = builderCopy;
  condition = [(BRCPQLConnection *)db fetchObject:v13 sql:@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items  WHERE item_file_id = %lld    AND item_state IN (0)    %@ ", d, condition];

  return condition;
}

id __81__BRCClientDatabaseFacade__localItemByFileID_zoneInjectionCondition_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newLocalItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)localItemByFileID:(unint64_t)d itemBuilder:(id)builder
{
  v6 = MEMORY[0x277D82C18];
  builderCopy = builder;
  v8 = [v6 rawInjection:"" length:0];
  v9 = [(BRCClientDatabaseFacade *)self _localItemByFileID:d zoneInjectionCondition:v8 itemBuilder:builderCopy];

  return v9;
}

- (id)localItemByFileID:(unint64_t)d zoneRowID:(id)iD itemBuilder:(id)builder
{
  v8 = MEMORY[0x277D82C08];
  builderCopy = builder;
  v10 = [v8 formatInjection:{@" AND (item_parent_zone_rowid = %@ OR zone_rowid = %@) ", iD, iD}];
  v11 = [(BRCClientDatabaseFacade *)self _localItemByFileID:d zoneInjectionCondition:v10 itemBuilder:builderCopy];

  return v11;
}

- (id)fetchAppLibraryPlist:(id)plist
{
  plist = [(BRCPQLConnection *)self->super._db fetch:@"SELECT app_library_plist FROM app_libraries WHERE app_library_name = %@", plist];
  error = [plist error];
  if (error || ![plist next])
  {
    v6 = 0;
  }

  else
  {
    v5 = _BRCClassesForContainerState();
    v6 = [plist unarchivedObjectOfClasses:v5 atIndex:0];

    [plist close];
  }

  return v6;
}

- (char)itemTypeByItemID:(id)d zoneRowID:(id)iD
{
  v4 = [(PQLConnection *)self->super._db numberWithSQL:@"SELECT item_type FROM client_items WHERE item_id = %@ AND zone_rowid = %@ LIMIT 1", d, iD];
  v5 = v4;
  if (v4)
  {
    intValue = [v4 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

- (unint64_t)inFlightSyncUpDiffsForItem:(id)item zoneRowID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  dCopy = d;
  v7 = itemCopy;
  v8 = v7;
  if (dCopy)
  {
    v8 = [[BRCItemDBRowIDAndZoneJobIdentifier alloc] initWithItemDBRowID:[(BRCItemDBRowIDAndZoneJobIdentifier *)v7 dbRowID] zoneRowID:dCopy];
  }

  v9 = [(BRCItemDBRowIDAndZoneJobIdentifier *)v7 db];
  matchingJobsWhereSQLClause = [(BRCIntAndZoneJobIdentifier *)v8 matchingJobsWhereSQLClause];
  v11 = [v9 fetch:{@"SELECT in_flight_diffs FROM client_sync_up WHERE %@ AND throttle_state != 0", matchingJobsWhereSQLClause}];
  v12 = [v11 enumerateObjectsOfClass:objc_opt_class()];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v16 |= [*(*(&v21 + 1) + 8 * i) unsignedLongLongValue];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)localItemByRowID:(unint64_t)d zoneRowID:(id)iD itemBuilder:(id)builder
{
  builderCopy = builder;
  if (iD)
  {
    [MEMORY[0x277D82C08] formatInjection:{@" AND zone_rowid = %@", iD}];
  }

  else
  {
    [MEMORY[0x277D82C18] rawInjection:"" length:0];
  }
  v9 = ;
  db = self->super._db;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__BRCClientDatabaseFacade_localItemByRowID_zoneRowID_itemBuilder___block_invoke;
  v14[3] = &unk_2784FF910;
  v15 = builderCopy;
  v11 = builderCopy;
  v12 = [(BRCPQLConnection *)db fetchObject:v14 sql:@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE rowid = %lld %@", d, v9];

  return v12;
}

id __66__BRCClientDatabaseFacade_localItemByRowID_zoneRowID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newLocalItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)itemIDByRowID:(unint64_t)d
{
  v3 = [(PQLConnection *)self->super._db itemIDWithSQL:@"SELECT item_id FROM client_items   WHERE rowid = %lld", d];

  return v3;
}

- (id)localAliasForItemWithBookmarkData:(id)data inZone:(id)zone itemBuilder:(id)builder
{
  builderCopy = builder;
  db = self->super._db;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__BRCClientDatabaseFacade_localAliasForItemWithBookmarkData_inZone_itemBuilder___block_invoke;
  v15[3] = &unk_2784FF910;
  v16 = builderCopy;
  v10 = builderCopy;
  dataCopy = data;
  dbRowID = [zone dbRowID];
  v13 = [(BRCPQLConnection *)db fetchObject:v15 sql:@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE item_alias_target = %@ AND item_type = 3 AND +zone_rowid = %@ ORDER BY item_id", dataCopy, dbRowID];

  return v13;
}

id __80__BRCClientDatabaseFacade_localAliasForItemWithBookmarkData_inZone_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newLocalItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)localItemByItemGlobalID:(id)d itemBuilder:(id)builder
{
  builderCopy = builder;
  db = self->super._db;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__BRCClientDatabaseFacade_localItemByItemGlobalID_itemBuilder___block_invoke;
  v14[3] = &unk_2784FF910;
  v15 = builderCopy;
  v8 = builderCopy;
  dCopy = d;
  itemID = [dCopy itemID];
  zoneRowID = [dCopy zoneRowID];

  v12 = [(BRCPQLConnection *)db fetchObject:v14 sql:@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE item_id = %@ AND zone_rowid = %@", itemID, zoneRowID];

  return v12;
}

id __63__BRCClientDatabaseFacade_localItemByItemGlobalID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newLocalItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (BOOL)hasDownloadJobWithTransferStageID:(id)d
{
  v3 = [(PQLConnection *)self->super._db numberWithSQL:@"SELECT 1 FROM client_downloads WHERE transfer_stage = %@", d];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)itemByParentID:(id)d andLogicalName:(id)name excludingItemID:(id)iD zoneRowID:(id)rowID itemBuilder:(id)builder
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  rowIDCopy = rowID;
  builderCopy = builder;
  v17 = self->super._db;
  if (iDCopy)
  {
    [MEMORY[0x277D82C08] formatInjection:{@"AND item_id != %@", iDCopy}];
  }

  else
  {
    [MEMORY[0x277D82C18] rawInjection:"" length:0];
  }
  v18 = ;
  v19 = [(BRCPQLConnection *)v17 fetchWithExpectedIndex:@"client_items/item_filename_path;client_items/item_parent_id__item_bouncedname" sql:@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE ((item_parent_id = %@ AND item_parent_zone_rowid = %@ AND item_filename = %@ AND item_bouncedname IS NULL) OR (item_parent_id = %@ AND item_parent_zone_rowid = %@ AND item_bouncedname = %@)) %@", dCopy, rowIDCopy, nameCopy, dCopy, rowIDCopy, nameCopy, v18];
  if ([v19 next])
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __95__BRCClientDatabaseFacade_itemByParentID_andLogicalName_excludingItemID_zoneRowID_itemBuilder___block_invoke;
    v27[3] = &unk_2784FF910;
    v28 = builderCopy;
    v20 = [v19 object:v27];
    if ([v19 next])
    {
      v26 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 138413058;
        v30 = dCopy;
        v31 = 2112;
        v32 = nameCopy;
        v33 = 2112;
        v34 = rowIDCopy;
        v35 = 2112;
        v36 = v26;
        _os_log_fault_impl(&dword_223E7A000, v21, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: there should never be more than one match for that query (parentID: %@, name: %@, parentZoneID: %@)%@", buf, 0x2Au);
      }
    }

    [v19 close];
    v22 = v20;
  }

  else
  {
    v23 = [MEMORY[0x277CCA9B8] errorWithSqliteCode:12 andMessage:@"item not found"];
    [(BRCPQLConnection *)v17 setLastError:v23];

    v22 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

id __95__BRCClientDatabaseFacade_itemByParentID_andLogicalName_excludingItemID_zoneRowID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newLocalItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)clientChildCountWithParentID:(id)d zoneRowID:(id)iD
{
  v4 = [(PQLConnection *)self->super._db numberWithSQL:@"SELECT visible_child_count FROM client_items WHERE item_id = %@ AND zone_rowid = %@", d, iD];

  return v4;
}

- (id)serverHiddenChildCountWithParentID:(id)d zoneRowID:(id)iD
{
  v4 = [(PQLConnection *)self->super._db numberWithSQL:@"SELECT COUNT(si.item_id) FROM server_items AS si LEFT JOIN client_unapplied_table AS cu ON si.item_rank = cu.throttle_id WHERE si.item_parent_id = %@ AND si.zone_rowid = %@ AND ((si.item_filename LIKE '.%%') OR (si.item_type = 3 AND cu.throttle_state = 24))", d, iD];

  return v4;
}

- (BOOL)containsNonRejectedChildWithParentID:(id)d zoneRowID:(id)iD
{
  v4 = [(PQLConnection *)self->super._db numberWithSQL:@"SELECT 1 FROM client_items WHERE item_parent_id = %@ AND item_parent_zone_rowid = %@ AND item_user_visible = 1 AND item_localsyncupstate != 1 LIMIT 1", d, iD];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)existsByParentID:(id)d andLogicalName:(id)name excludingItemGlobalID:(id)iD zoneRowID:(id)rowID
{
  iDCopy = iD;
  if (iDCopy)
  {
    v11 = MEMORY[0x277D82C08];
    rowIDCopy = rowID;
    nameCopy = name;
    dCopy = d;
    itemID = [iDCopy itemID];
    zoneRowID = [iDCopy zoneRowID];
    v17 = [v11 formatInjection:{@"AND NOT (item_id = %@ AND zone_rowid = %@)", itemID, zoneRowID}];
  }

  else
  {
    v18 = MEMORY[0x277D82C18];
    rowIDCopy2 = rowID;
    nameCopy2 = name;
    dCopy2 = d;
    v17 = [v18 rawInjection:"" length:0];
  }

  v22 = [(PQLConnection *)self->super._db numberWithSQL:@"SELECT 1 FROM client_items WHERE ((item_parent_id = %@ AND item_filename = %@ AND item_parent_zone_rowid = %@ AND item_bouncedname IS NULL) OR (item_parent_id = %@ AND item_bouncedname = %@ AND item_parent_zone_rowid = %@)) AND item_state != 1 %@ LIMIT 1", d, name, rowID, d, name, rowID, v17];

  bOOLValue = [v22 BOOLValue];
  return bOOLValue;
}

- (BOOL)zoneHasItemsWithInflightDiffsInZoneRowID:(id)d
{
  v3 = [(PQLConnection *)self->super._db numberWithSQL:@"SELECT 1 FROM client_items AS li INNER JOIN client_sync_up AS su ON su.throttle_id = li.rowid WHERE su.zone_rowid = %@   AND (su.in_flight_diffs BETWEEN -9223372036854775808 AND 9223372036854775807)   AND su.throttle_state != 0 LIMIT 1", d];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)item:(id)item hasSyncUpJobState:(id)state
{
  stateCopy = state;
  itemCopy = item;
  v8 = [[BRCPQLInjectionJobStates alloc] initWithJobStates:stateCopy];

  db = self->super._db;
  dbRowID = [itemCopy dbRowID];

  v11 = [(PQLConnection *)db numberWithSQL:@"SELECT 1 FROM client_sync_up WHERE throttle_id = %llu %@", dbRowID, v8];
  LOBYTE(db) = [v11 BOOLValue];

  return db;
}

- (id)getAssetRanksForFileItemsInPackage:(id)package
{
  packageCopy = package;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v6 = -[BRCPQLConnection fetch:](self->super._db, "fetch:", @"SELECT asset_rank  FROM client_pkg_upload_items  WHERE item_rowid = %llu AND item_type = %d", [packageCopy dbRowID], 2);
  if ([v6 next])
  {
    do
    {
      v7 = [v6 numberAtIndex:0];
      [v5 addIndex:{objc_msgSend(v7, "unsignedIntegerValue")}];
    }

    while (([v6 next] & 1) != 0);
  }

  return v5;
}

- (void)enumerateItemsWithShareIDUnderParent:(id)parent block:(id)block
{
  v38[2] = *MEMORY[0x277D85DE8];
  parentCopy = parent;
  blockCopy = block;
  v8 = [BRCUserDefaults defaultsForMangledID:0];
  maxFolderEnumerationCount = [v8 maxFolderEnumerationCount];

  v10 = [BRCPQLInjectionEnumerationUnderParentWhereClause alloc];
  itemGlobalID = [parentCopy itemGlobalID];
  v31 = parentCopy;
  v12 = -[BRCPQLInjectionEnumerationUnderParentWhereClause initWithParentGlobalID:isZoneRoot:](v10, "initWithParentGlobalID:isZoneRoot:", itemGlobalID, [parentCopy isZoneRoot]);

  v36 = 0;
  v30 = v12;
  v13 = [(BRCPQLConnection *)self->super._db fetch:@"WITH RECURSIVE item_children_with_shared_items (item_id, zone_rowid, shared_items_count) AS(    SELECT item_id, zone_rowid, (shared_by_me_count | shared_to_me_count) FROM item_recursive_properties      WHERE %@ AND (shared_by_me_count | shared_to_me_count) != 0  UNION ALL     SELECT ip.item_id, ip.zone_rowid, (ip.shared_by_me_count | ip.shared_to_me_count) FROM item_recursive_properties AS ip INNER JOIN item_children_with_shared_items AS p WHERE ip.item_parent_id = p.item_id AND ip.item_parent_zone_rowid = p.zone_rowid AND (ip.shared_by_me_count | ip.shared_to_me_count) != 0      LIMIT %llu) SELECT ic.item_id, ic.zone_rowid, li.item_sharing_options FROM item_children_with_shared_items AS ic INNER JOIN client_items AS li WHERE ic.shared_items_count = 1 AND li.item_id = ic.item_id AND li.zone_rowid = ic.zone_rowid AND (li.item_sharing_options & 4) != 0", v12, maxFolderEnumerationCount];
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v13 next])
  {
    do
    {
      v15 = [v13 objectOfClass:objc_opt_class() atIndex:0];
      v16 = [v13 objectOfClass:objc_opt_class() atIndex:1];
      v17 = [v13 intAtIndex:2];
      v18 = [[BRCItemGlobalID alloc] initWithZoneRowID:v16 itemID:v15];
      v38[0] = v18;
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
      v38[1] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
      [v14 addObject:v20];
    }

    while (([v13 next] & 1) != 0);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = v14;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
LABEL_5:
    v25 = 0;
    while (1)
    {
      if (*v33 != v24)
      {
        objc_enumerationMutation(v21);
      }

      if (v36)
      {
        break;
      }

      v26 = *(*(&v32 + 1) + 8 * v25);
      v27 = [v26 objectAtIndex:0];
      v28 = [v26 objectAtIndex:1];
      blockCopy[2](blockCopy, v27, [v28 unsignedLongValue], &v36);

      if (v23 == ++v25)
      {
        v23 = [v21 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v23)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

id __94__BRCClientDatabaseFacade_enumerateChildrenOfItemGlobalID_itemBuilder_sortOrder_offset_limit___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newLocalItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)enumerateUserVisibleChildrenDirectoriesOfItemGlobalID:(id)d itemBuilder:(id)builder
{
  builderCopy = builder;
  db = self->super._db;
  dCopy = d;
  itemID = [dCopy itemID];
  zoneRowID = [dCopy zoneRowID];

  1000 = [(BRCPQLConnection *)db fetch:@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation     FROM client_items    WHERE item_parent_id = %@       AND item_state IN (0)      AND item_type = 0      AND item_parent_zone_rowid = %@       AND item_user_visible = 1  ORDER BY item_filename    LIMIT %lld", itemID, zoneRowID, 1000];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__BRCClientDatabaseFacade_enumerateUserVisibleChildrenDirectoriesOfItemGlobalID_itemBuilder___block_invoke;
  v15[3] = &unk_2784FF910;
  v16 = builderCopy;
  v12 = builderCopy;
  v13 = [1000 enumerateObjects:v15];

  return v13;
}

id __93__BRCClientDatabaseFacade_enumerateUserVisibleChildrenDirectoriesOfItemGlobalID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newLocalItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)itemsWithSideCarInflightDiffsWithItemBuilder:(id)builder
{
  builderCopy = builder;
  v5 = [(BRCPQLConnection *)self->super._db fetch:@"SELECT li.rowid, li.zone_rowid, li.item_id, li.item_creator_id, li.item_sharing_options, li.item_side_car_ckinfo, li.item_parent_zone_rowid, li.item_localsyncupstate, li.item_local_diffs, li.item_notifs_rank, li.app_library_rowid, li.item_min_supported_os_rowid, li.item_user_visible, li.item_stat_ckinfo, li.item_state, li.item_type, li.item_mode, li.item_birthtime, li.item_lastusedtime, li.item_favoriterank, li.item_parent_id, li.item_filename, li.item_hidden_ext, li.item_finder_tags, li.item_xattr_signature, li.item_trash_put_back_path, li.item_trash_put_back_parent_id, li.item_alias_target, li.item_creator, li.item_processing_stamp, li.item_bouncedname, li.item_scope, li.item_local_change_count, li.item_old_version_identifier, li.fp_creation_item_identifier, li.version_name, li.version_ckinfo, li.version_mtime, li.version_size, li.version_thumb_size, li.version_thumb_signature, li.version_content_signature, li.version_xattr_signature, li.version_edited_since_shared, li.version_device, li.version_conflict_loser_etags, li.version_quarantine_info, li.version_uploaded_assets, li.version_upload_error, li.version_old_zone_item_id, li.version_old_zone_rowid, li.version_local_change_count, li.version_old_version_identifier, li.item_live_conflict_loser_etags, li.item_file_id, li.item_generation FROM client_items AS li INNER JOIN client_sync_up AS su ON su.throttle_id = li.rowid WHERE su.zone_rowid = %@   AND (su.in_flight_diffs BETWEEN -9223372036854775808 AND 9223372036854775807)   AND su.throttle_state != 0", &unk_2837B0430];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__BRCClientDatabaseFacade_itemsWithSideCarInflightDiffsWithItemBuilder___block_invoke;
  v9[3] = &unk_2784FF910;
  v10 = builderCopy;
  v6 = builderCopy;
  v7 = [v5 enumerateObjects:v9];

  return v7;
}

id __72__BRCClientDatabaseFacade_itemsWithSideCarInflightDiffsWithItemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newLocalItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)allItemsSortedByDepthDescendingInZoneRowID:(id)d descending:(BOOL)descending isSharedZone:(BOOL)zone parentItemID:(id)iD itemBuilder:(id)builder
{
  dCopy = d;
  iDCopy = iD;
  builderCopy = builder;
  if (descending)
  {
    v15 = "item_level DESC";
    v16 = 15;
  }

  else
  {
    v15 = "item_level ASC";
    v16 = 14;
  }

  v17 = [MEMORY[0x277D82C18] rawInjection:v15 length:v16];
  if (zone)
  {
    v18 = "(item_sharing_options & 4) != 0";
    v19 = 31;
  }

  else
  {
    v18 = "item_id_is_app_library_root(item_parent_id)";
    v19 = 43;
  }

  v20 = [MEMORY[0x277D82C18] rawInjection:v18 length:v19];
  v21 = [(BRCPQLConnection *)self->super._db fetch:&cfstr_WithRecursiveI_11, dCopy, v20, v17];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __119__BRCClientDatabaseFacade_allItemsSortedByDepthDescendingInZoneRowID_descending_isSharedZone_parentItemID_itemBuilder___block_invoke;
  v25[3] = &unk_2784FF910;
  v26 = builderCopy;
  v22 = builderCopy;
  v23 = [v21 enumerateObjects:v25];

  return v23;
}

id __119__BRCClientDatabaseFacade_allItemsSortedByDepthDescendingInZoneRowID_descending_isSharedZone_parentItemID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newLocalItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)itemsParentedToPassedZoneButLivingInAnOtherZone:(id)zone itemBuilder:(id)builder
{
  builderCopy = builder;
  v7 = [(BRCPQLConnection *)self->super._db fetch:@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE item_parent_zone_rowid = %@ AND item_parent_zone_rowid != zone_rowid", zone];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__BRCClientDatabaseFacade_itemsParentedToPassedZoneButLivingInAnOtherZone_itemBuilder___block_invoke;
  v11[3] = &unk_2784FF910;
  v12 = builderCopy;
  v8 = builderCopy;
  v9 = [v7 enumerateObjects:v11];

  return v9;
}

id __87__BRCClientDatabaseFacade_itemsParentedToPassedZoneButLivingInAnOtherZone_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newLocalItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)itemsEnumeratorWithParentID:(id)d andLogicalName:(id)name zoneRowID:(id)iD itemBuilder:(id)builder
{
  builderCopy = builder;
  name = [(BRCPQLConnection *)self->super._db fetch:@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE item_parent_id = %@ AND item_parent_zone_rowid = %@ AND  ((item_filename = %@ AND item_bouncedname IS NULL) OR (item_bouncedname = %@))", d, iD, name, name];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__BRCClientDatabaseFacade_itemsEnumeratorWithParentID_andLogicalName_zoneRowID_itemBuilder___block_invoke;
  v15[3] = &unk_2784FF910;
  v16 = builderCopy;
  v12 = builderCopy;
  v13 = [name enumerateObjects:v15];

  return v13;
}

id __92__BRCClientDatabaseFacade_itemsEnumeratorWithParentID_andLogicalName_zoneRowID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newLocalItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)itemsWithInFlightDiffsEnumeratorInZone:(id)zone itemBuilder:(id)builder
{
  builderCopy = builder;
  v7 = [(BRCPQLConnection *)self->super._db fetch:@"SELECT li.rowid, li.zone_rowid, li.item_id, li.item_creator_id, li.item_sharing_options, li.item_side_car_ckinfo, li.item_parent_zone_rowid, li.item_localsyncupstate, li.item_local_diffs, li.item_notifs_rank, li.app_library_rowid, li.item_min_supported_os_rowid, li.item_user_visible, li.item_stat_ckinfo, li.item_state, li.item_type, li.item_mode, li.item_birthtime, li.item_lastusedtime, li.item_favoriterank, li.item_parent_id, li.item_filename, li.item_hidden_ext, li.item_finder_tags, li.item_xattr_signature, li.item_trash_put_back_path, li.item_trash_put_back_parent_id, li.item_alias_target, li.item_creator, li.item_processing_stamp, li.item_bouncedname, li.item_scope, li.item_local_change_count, li.item_old_version_identifier, li.fp_creation_item_identifier, li.version_name, li.version_ckinfo, li.version_mtime, li.version_size, li.version_thumb_size, li.version_thumb_signature, li.version_content_signature, li.version_xattr_signature, li.version_edited_since_shared, li.version_device, li.version_conflict_loser_etags, li.version_quarantine_info, li.version_uploaded_assets, li.version_upload_error, li.version_old_zone_item_id, li.version_old_zone_rowid, li.version_local_change_count, li.version_old_version_identifier, li.item_live_conflict_loser_etags, li.item_file_id, li.item_generation FROM client_items AS li INNER JOIN client_sync_up AS su ON su.throttle_id = li.rowid WHERE su.zone_rowid = %@   AND (su.in_flight_diffs BETWEEN -9223372036854775808 AND 9223372036854775807)   AND su.throttle_state != 0", zone];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__BRCClientDatabaseFacade_itemsWithInFlightDiffsEnumeratorInZone_itemBuilder___block_invoke;
  v11[3] = &unk_2784FF910;
  v12 = builderCopy;
  v8 = builderCopy;
  v9 = [v7 enumerateObjects:v11];

  return v9;
}

id __78__BRCClientDatabaseFacade_itemsWithInFlightDiffsEnumeratorInZone_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newLocalItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (unint64_t)getSyncState:(unint64_t)state ignoredZones:(id)zones error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  if ((state & 0xA) != 0)
  {
    db = self->super._db;
    v10 = [[BRCPQLInjectionDomainSyncState alloc] initWithDesiredSyncStates:state];
    v11 = [(BRCPQLConnection *)db fetch:@"SELECT DISTINCT item_localsyncupstate, HEX(version_content_signature) IN ('013F', '1B3F') FROM client_items as ci WHERE item_localsyncupstate != 0       AND item_scope = 2       AND NOT item_id_is_documents(item_id)       AND NOT indexset_contains(%p, zone_rowid)       AND %@", zonesCopy, v10];

    lastError = [(BRCPQLConnection *)self->super._db lastError];

    if (lastError)
    {
      lastError2 = [(BRCPQLConnection *)self->super._db lastError];
      if (lastError2)
      {
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, 0x90u))
        {
          v24 = "(passed to caller)";
          *buf = 136315906;
          v26 = "[BRCClientDatabaseFacade getSyncState:ignoredZones:error:]";
          v27 = 2080;
          if (!error)
          {
            v24 = "(ignored by caller)";
          }

          v28 = v24;
          v29 = 2112;
          v30 = lastError2;
          v31 = 2112;
          v32 = v14;
          _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (error)
      {
        v16 = lastError2;
        *error = lastError2;
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
      if ([v11 next])
      {
        do
        {
          v18 = [v11 unsignedIntAtIndex:0];
          v19 = [v11 unsignedIntAtIndex:1];
          v20 = (v18 >> 1) & 2;
          if (v19)
          {
            v21 = 8;
          }

          else
          {
            v21 = 2;
          }

          if ((v18 & 3) != 0)
          {
            v20 = v21;
          }

          v17 |= v20;
        }

        while ([v11 next] && v17 != state);
      }
    }
  }

  else
  {
    v17 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)clientStateData:clientStateDictionary:silent:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_append_system_info_to_message();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v1, v2, "[CRIT] %@%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)clientStateData:clientStateDictionary:silent:.cold.3()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: data Client state should not be nil%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end