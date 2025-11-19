@interface BRCDatabaseFacade
- (BOOL)groupInTransaction:(id)a3;
- (BRCDatabaseFacade)initWithDB:(id)a3 workloop:(id)a4;
- (id)_initWithDB:(id)a3 workloop:(id)a4;
- (id)deviceKeyForName:(id)a3;
- (id)deviceNameForDeviceID:(int64_t)a3;
- (id)getParticipantsAndRecordIDsWithIsRequesters:(BOOL)a3;
- (id)serverAliasItemForItemWithBookmarkData:(id)a3 inZone:(id)a4 itemBuilder:(id)a5;
- (id)serverChildCountWithParentID:(id)a3 zoneRowID:(id)a4;
- (id)serverItemByParentID:(id)a3 andLogicalName:(id)a4 zoneRowID:(id)a5 itemBuilder:(id)a6;
- (id)serverItemByRank:(int64_t)a3 zoneRowID:(id)a4 itemBuilder:(id)a5;
- (id)serverItemByRowID:(unint64_t)a3 itemBuilder:(id)a4;
- (id)serverItemTypeForItemWithID:(id)a3 zoneRowID:(id)a4;
- (id)serverItemWithItemID:(id)a3 itemBuilder:(id)a4;
- (id)serverItemWithItemID:(id)a3 zoneRowID:(id)a4 itemBuilder:(id)a5;
- (id)serverQuotaUsageWithParentID:(id)a3 zoneRowID:(id)a4;
- (id)userIdentityForKey:(id)a3;
- (id)userIdentityForName:(id)a3;
- (id)userKeyForOwnerName:(id)a3;
- (id)zoneIDsEnumeratorForItemWithItemID:(id)a3;
- (int64_t)serverRankByItemID:(id)a3 zoneRowID:(id)a4;
- (void)assertNotOnQueue;
- (void)groupInBatch:(id)a3;
@end

@implementation BRCDatabaseFacade

- (void)assertNotOnQueue
{
  v4 = self->_db;
  v2 = [(BRCPQLConnection *)v4 serialQueue];

  if (v2)
  {
    v3 = [(BRCPQLConnection *)v4 serialQueue];
    dispatch_assert_queue_not_V2(v3);
  }
}

- (BRCDatabaseFacade)initWithDB:(id)a3 workloop:(id)a4
{
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [BRCDatabaseFacade initWithDB:v5 workloop:v6];
  }

  return 0;
}

- (id)_initWithDB:(id)a3 workloop:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BRCDatabaseFacade;
  v9 = [(BRCDatabaseFacade *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_db, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (BOOL)groupInTransaction:(id)a3
{
  v4 = a3;
  db = self->_db;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__BRCDatabaseFacade_groupInTransaction___block_invoke;
  v8[3] = &unk_2785021E0;
  v9 = v4;
  v6 = v4;
  LOBYTE(db) = [(BRCPQLConnection *)db groupInTransaction:v8];

  return db;
}

- (void)groupInBatch:(id)a3
{
  v4 = a3;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__BRCDatabaseFacade_groupInBatch___block_invoke;
  v7[3] = &unk_2784FF3D8;
  v8 = v4;
  v6 = v4;
  [(BRCPQLConnection *)db groupInBatch:v7];
}

- (id)userKeyForOwnerName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277CBBF28]])
  {
    v5 = &unk_2837B0358;
  }

  else
  {
    v5 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT user_key FROM users WHERE user_name = %@", v4];
  }

  return v5;
}

- (id)serverAliasItemForItemWithBookmarkData:(id)a3 inZone:(id)a4 itemBuilder:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [BRCPQLInjectionServerItemRowIDWhereClause alloc];
  v12 = [v9 dbRowID];

  v13 = [(BRCPQLInjectionServerItemRowIDWhereClause *)v11 initWithServerZoneID:v12];
  db = self->_db;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__BRCDatabaseFacade_serverAliasItemForItemWithBookmarkData_inZone_itemBuilder___block_invoke;
  v18[3] = &unk_2784FF910;
  v19 = v8;
  v15 = v8;
  v16 = [(BRCPQLConnection *)db fetchObject:v18 sql:@"SELECT si.zone_rowid, si.item_rank, si.item_origname, si.pcs_state, si.item_id, si.item_creator_id, si.item_sharing_options, si.item_side_car_ckinfo, si.item_stat_ckinfo, si.item_state, si.item_type, si.item_mode, si.item_birthtime, si.item_lastusedtime, si.item_favoriterank, si.item_parent_id, si.item_filename, si.item_hidden_ext, si.item_finder_tags, si.item_xattr_signature, si.item_trash_put_back_path, si.item_trash_put_back_parent_id, si.item_alias_target, si.item_creator, si.version_name, si.version_ckinfo, si.version_mtime, si.version_size, si.version_thumb_size, si.version_thumb_signature, si.version_content_signature, si.version_xattr_signature, si.version_edited_since_shared, si.version_device, si.version_conflict_loser_etags, si.version_quarantine_info, si.child_basehash_salt, si.salting_state, si.basehash_salt_validation_key, si.quota_used, si.recursive_child_count, si.shared_children_count, si.shared_alias_count, si.child_count, ci.item_id FROM server_items AS si LEFT JOIN client_items AS ci ON si.item_id = ci.item_id AND si.zone_rowid = ci.zone_rowid WHERE si.item_alias_target = %@ AND si.item_type = 3 AND si.item_state = 0 AND (ci.item_id IS NULL OR ci.item_state != 1) %@ ORDER BY si.item_id", v10, v13];

  return v16;
}

id __79__BRCDatabaseFacade_serverAliasItemForItemWithBookmarkData_inZone_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newServerItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)serverItemByRowID:(unint64_t)a3 itemBuilder:(id)a4
{
  v6 = a4;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__BRCDatabaseFacade_serverItemByRowID_itemBuilder___block_invoke;
  v11[3] = &unk_2784FF910;
  v12 = v6;
  v8 = v6;
  v9 = [(BRCPQLConnection *)db fetchObject:v11 sql:@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE rowid = %lld", a3];

  return v9;
}

id __51__BRCDatabaseFacade_serverItemByRowID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newServerItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)serverItemWithItemID:(id)a3 itemBuilder:(id)a4
{
  v6 = a4;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__BRCDatabaseFacade_serverItemWithItemID_itemBuilder___block_invoke;
  v11[3] = &unk_2784FF910;
  v12 = v6;
  v8 = v6;
  v9 = [(BRCPQLConnection *)db fetchObject:v11 sql:@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE item_id = %@", a3];

  return v9;
}

id __54__BRCDatabaseFacade_serverItemWithItemID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newServerItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)serverItemWithItemID:(id)a3 zoneRowID:(id)a4 itemBuilder:(id)a5
{
  v8 = a5;
  db = self->_db;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__BRCDatabaseFacade_serverItemWithItemID_zoneRowID_itemBuilder___block_invoke;
  v13[3] = &unk_2784FF910;
  v14 = v8;
  v10 = v8;
  v11 = [(BRCPQLConnection *)db fetchObject:v13 sql:@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE item_id = %@ AND zone_rowid = %@", a3, a4];

  return v11;
}

id __64__BRCDatabaseFacade_serverItemWithItemID_zoneRowID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newServerItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)serverItemByRank:(int64_t)a3 zoneRowID:(id)a4 itemBuilder:(id)a5
{
  v8 = a5;
  db = self->_db;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__BRCDatabaseFacade_serverItemByRank_zoneRowID_itemBuilder___block_invoke;
  v13[3] = &unk_2784FF910;
  v14 = v8;
  v10 = v8;
  v11 = [(BRCPQLConnection *)db fetchObject:v13 sql:@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE item_rank = %lld AND zone_rowid = %@", a3, a4];

  return v11;
}

id __60__BRCDatabaseFacade_serverItemByRank_zoneRowID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newServerItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)serverItemByParentID:(id)a3 andLogicalName:(id)a4 zoneRowID:(id)a5 itemBuilder:(id)a6
{
  v10 = a6;
  db = self->_db;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__BRCDatabaseFacade_serverItemByParentID_andLogicalName_zoneRowID_itemBuilder___block_invoke;
  v15[3] = &unk_2784FF910;
  v16 = v10;
  v12 = v10;
  v13 = [(BRCPQLConnection *)db fetchObject:v15 sql:@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE item_parent_id = %@ AND item_filename = %@ AND +zone_rowid = %@", a3, a4, a5];

  return v13;
}

id __79__BRCDatabaseFacade_serverItemByParentID_andLogicalName_zoneRowID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newServerItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (int64_t)serverRankByItemID:(id)a3 zoneRowID:(id)a4
{
  v4 = [(BRCPQLConnection *)self->_db fetch:@"SELECT item_rank FROM server_items WHERE item_id = %@ AND zone_rowid = %@", a3, a4];
  if ([v4 next])
  {
    v5 = [v4 longLongAtIndex:0];
    [v4 close];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)serverChildCountWithParentID:(id)a3 zoneRowID:(id)a4
{
  v4 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT child_count FROM server_items WHERE item_id = %@ AND zone_rowid = %@", a3, a4];

  return v4;
}

- (id)serverQuotaUsageWithParentID:(id)a3 zoneRowID:(id)a4
{
  v4 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT quota_used FROM server_items WHERE item_id = %@ AND zone_rowid = %@", a3, a4];

  return v4;
}

- (id)zoneIDsEnumeratorForItemWithItemID:(id)a3
{
  v3 = [(BRCPQLConnection *)self->_db fetch:@"SELECT zone_rowid FROM server_items WHERE item_id = %@", a3];
  v4 = [v3 enumerateObjectsOfClass:objc_opt_class()];

  return v4;
}

- (id)serverItemTypeForItemWithID:(id)a3 zoneRowID:(id)a4
{
  v4 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT item_type FROM server_items WHERE item_id = %@ AND zone_rowid = %@", a3, a4];

  return v4;
}

- (id)userIdentityForName:(id)a3
{
  db = self->_db;
  v4 = a3;
  v5 = [(BRCPQLConnection *)db fetchObjectOfClass:objc_opt_class() sql:@"SELECT user_plist FROM users WHERE user_name = %@", v4];

  return v5;
}

- (id)userIdentityForKey:(id)a3
{
  db = self->_db;
  v4 = a3;
  v5 = [(BRCPQLConnection *)db fetchObjectOfClass:objc_opt_class() sql:@"SELECT user_plist FROM users WHERE user_key = %@", v4];

  return v5;
}

- (id)deviceNameForDeviceID:(int64_t)a3
{
  v3 = [(PQLConnection *)self->_db stringWithSQL:@"SELECT name FROM devices WHERE key = %lld", a3];

  return v3;
}

- (id)deviceKeyForName:(id)a3
{
  v3 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT key FROM devices WHERE name = %@", a3];

  return v3;
}

- (id)getParticipantsAndRecordIDsWithIsRequesters:(BOOL)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__32;
  v18 = __Block_byref_object_dispose__32;
  v19 = 0;
  db = self->_db;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__BRCDatabaseFacade_getParticipantsAndRecordIDsWithIsRequesters___block_invoke;
  v12[3] = &unk_2785048F0;
  v13 = a3;
  v12[4] = self;
  v12[5] = &v14;
  [(BRCPQLConnection *)db disableProfilingForQueriesInBlock:v12];
  v4 = objc_opt_new();
  while ([v15[5] next])
  {
    v5 = [v15[5] objectOfClass:objc_opt_class() atIndex:0];
    v6 = [v5 description];

    v7 = [v15[5] stringAtIndex:1];
    v8 = [v4 objectForKey:v6];
    v9 = v8;
    if (v8)
    {
      [v8 addObject:v7];
      [v4 setObject:v9 forKeyedSubscript:v6];
    }

    else
    {
      v10 = [MEMORY[0x277CBEB18] arrayWithObject:v7];
      [v4 setObject:v10 forKeyedSubscript:v6];
    }
  }

  _Block_object_dispose(&v14, 8);

  return v4;
}

void __65__BRCDatabaseFacade_getParticipantsAndRecordIDsWithIsRequesters___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D82C08] formatInjection:@"(p.participant_flags & 1) != 1"];
  if (*(a1 + 48) == 1)
  {
    v7 = v2;
    v3 = [MEMORY[0x277D82C08] formatInjection:@"(p.participant_flags & 1) == 1"];

    v2 = v3;
  }

  v8 = v2;
  v4 = [*(*(a1 + 32) + 8) fetch:{@"SELECT item_id, u.user_name FROM server_share_items_participants AS p INNER JOIN users AS u WHERE %@ AND u.user_key == p.user_key", v2}];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)initWithDB:(uint64_t)a1 workloop:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: You should sub class%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end