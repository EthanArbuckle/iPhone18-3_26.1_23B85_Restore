@interface BRCDatabaseFacade
- (BOOL)groupInTransaction:(id)transaction;
- (BRCDatabaseFacade)initWithDB:(id)b workloop:(id)workloop;
- (id)_initWithDB:(id)b workloop:(id)workloop;
- (id)deviceKeyForName:(id)name;
- (id)deviceNameForDeviceID:(int64_t)d;
- (id)getParticipantsAndRecordIDsWithIsRequesters:(BOOL)requesters;
- (id)serverAliasItemForItemWithBookmarkData:(id)data inZone:(id)zone itemBuilder:(id)builder;
- (id)serverChildCountWithParentID:(id)d zoneRowID:(id)iD;
- (id)serverItemByParentID:(id)d andLogicalName:(id)name zoneRowID:(id)iD itemBuilder:(id)builder;
- (id)serverItemByRank:(int64_t)rank zoneRowID:(id)d itemBuilder:(id)builder;
- (id)serverItemByRowID:(unint64_t)d itemBuilder:(id)builder;
- (id)serverItemTypeForItemWithID:(id)d zoneRowID:(id)iD;
- (id)serverItemWithItemID:(id)d itemBuilder:(id)builder;
- (id)serverItemWithItemID:(id)d zoneRowID:(id)iD itemBuilder:(id)builder;
- (id)serverQuotaUsageWithParentID:(id)d zoneRowID:(id)iD;
- (id)userIdentityForKey:(id)key;
- (id)userIdentityForName:(id)name;
- (id)userKeyForOwnerName:(id)name;
- (id)zoneIDsEnumeratorForItemWithItemID:(id)d;
- (int64_t)serverRankByItemID:(id)d zoneRowID:(id)iD;
- (void)assertNotOnQueue;
- (void)groupInBatch:(id)batch;
@end

@implementation BRCDatabaseFacade

- (void)assertNotOnQueue
{
  v4 = self->_db;
  serialQueue = [(BRCPQLConnection *)v4 serialQueue];

  if (serialQueue)
  {
    serialQueue2 = [(BRCPQLConnection *)v4 serialQueue];
    dispatch_assert_queue_not_V2(serialQueue2);
  }
}

- (BRCDatabaseFacade)initWithDB:(id)b workloop:(id)workloop
{
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [BRCDatabaseFacade initWithDB:v5 workloop:v6];
  }

  return 0;
}

- (id)_initWithDB:(id)b workloop:(id)workloop
{
  bCopy = b;
  workloopCopy = workloop;
  v12.receiver = self;
  v12.super_class = BRCDatabaseFacade;
  v9 = [(BRCDatabaseFacade *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_db, b);
    objc_storeStrong(p_isa + 2, workloop);
  }

  return p_isa;
}

- (BOOL)groupInTransaction:(id)transaction
{
  transactionCopy = transaction;
  db = self->_db;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__BRCDatabaseFacade_groupInTransaction___block_invoke;
  v8[3] = &unk_2785021E0;
  v9 = transactionCopy;
  v6 = transactionCopy;
  LOBYTE(db) = [(BRCPQLConnection *)db groupInTransaction:v8];

  return db;
}

- (void)groupInBatch:(id)batch
{
  batchCopy = batch;
  db = self->_db;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__BRCDatabaseFacade_groupInBatch___block_invoke;
  v7[3] = &unk_2784FF3D8;
  v8 = batchCopy;
  v6 = batchCopy;
  [(BRCPQLConnection *)db groupInBatch:v7];
}

- (id)userKeyForOwnerName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:*MEMORY[0x277CBBF28]])
  {
    nameCopy = &unk_2837B0358;
  }

  else
  {
    nameCopy = [(PQLConnection *)self->_db numberWithSQL:@"SELECT user_key FROM users WHERE user_name = %@", nameCopy];
  }

  return nameCopy;
}

- (id)serverAliasItemForItemWithBookmarkData:(id)data inZone:(id)zone itemBuilder:(id)builder
{
  builderCopy = builder;
  zoneCopy = zone;
  dataCopy = data;
  v11 = [BRCPQLInjectionServerItemRowIDWhereClause alloc];
  dbRowID = [zoneCopy dbRowID];

  v13 = [(BRCPQLInjectionServerItemRowIDWhereClause *)v11 initWithServerZoneID:dbRowID];
  db = self->_db;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__BRCDatabaseFacade_serverAliasItemForItemWithBookmarkData_inZone_itemBuilder___block_invoke;
  v18[3] = &unk_2784FF910;
  v19 = builderCopy;
  v15 = builderCopy;
  v16 = [(BRCPQLConnection *)db fetchObject:v18 sql:@"SELECT si.zone_rowid, si.item_rank, si.item_origname, si.pcs_state, si.item_id, si.item_creator_id, si.item_sharing_options, si.item_side_car_ckinfo, si.item_stat_ckinfo, si.item_state, si.item_type, si.item_mode, si.item_birthtime, si.item_lastusedtime, si.item_favoriterank, si.item_parent_id, si.item_filename, si.item_hidden_ext, si.item_finder_tags, si.item_xattr_signature, si.item_trash_put_back_path, si.item_trash_put_back_parent_id, si.item_alias_target, si.item_creator, si.version_name, si.version_ckinfo, si.version_mtime, si.version_size, si.version_thumb_size, si.version_thumb_signature, si.version_content_signature, si.version_xattr_signature, si.version_edited_since_shared, si.version_device, si.version_conflict_loser_etags, si.version_quarantine_info, si.child_basehash_salt, si.salting_state, si.basehash_salt_validation_key, si.quota_used, si.recursive_child_count, si.shared_children_count, si.shared_alias_count, si.child_count, ci.item_id FROM server_items AS si LEFT JOIN client_items AS ci ON si.item_id = ci.item_id AND si.zone_rowid = ci.zone_rowid WHERE si.item_alias_target = %@ AND si.item_type = 3 AND si.item_state = 0 AND (ci.item_id IS NULL OR ci.item_state != 1) %@ ORDER BY si.item_id", dataCopy, v13];

  return v16;
}

id __79__BRCDatabaseFacade_serverAliasItemForItemWithBookmarkData_inZone_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newServerItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)serverItemByRowID:(unint64_t)d itemBuilder:(id)builder
{
  builderCopy = builder;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__BRCDatabaseFacade_serverItemByRowID_itemBuilder___block_invoke;
  v11[3] = &unk_2784FF910;
  v12 = builderCopy;
  v8 = builderCopy;
  v9 = [(BRCPQLConnection *)db fetchObject:v11 sql:@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE rowid = %lld", d];

  return v9;
}

id __51__BRCDatabaseFacade_serverItemByRowID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newServerItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)serverItemWithItemID:(id)d itemBuilder:(id)builder
{
  builderCopy = builder;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__BRCDatabaseFacade_serverItemWithItemID_itemBuilder___block_invoke;
  v11[3] = &unk_2784FF910;
  v12 = builderCopy;
  v8 = builderCopy;
  v9 = [(BRCPQLConnection *)db fetchObject:v11 sql:@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE item_id = %@", d];

  return v9;
}

id __54__BRCDatabaseFacade_serverItemWithItemID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newServerItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)serverItemWithItemID:(id)d zoneRowID:(id)iD itemBuilder:(id)builder
{
  builderCopy = builder;
  db = self->_db;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__BRCDatabaseFacade_serverItemWithItemID_zoneRowID_itemBuilder___block_invoke;
  v13[3] = &unk_2784FF910;
  v14 = builderCopy;
  v10 = builderCopy;
  v11 = [(BRCPQLConnection *)db fetchObject:v13 sql:@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE item_id = %@ AND zone_rowid = %@", d, iD];

  return v11;
}

id __64__BRCDatabaseFacade_serverItemWithItemID_zoneRowID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newServerItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)serverItemByRank:(int64_t)rank zoneRowID:(id)d itemBuilder:(id)builder
{
  builderCopy = builder;
  db = self->_db;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__BRCDatabaseFacade_serverItemByRank_zoneRowID_itemBuilder___block_invoke;
  v13[3] = &unk_2784FF910;
  v14 = builderCopy;
  v10 = builderCopy;
  v11 = [(BRCPQLConnection *)db fetchObject:v13 sql:@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE item_rank = %lld AND zone_rowid = %@", rank, d];

  return v11;
}

id __60__BRCDatabaseFacade_serverItemByRank_zoneRowID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newServerItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)serverItemByParentID:(id)d andLogicalName:(id)name zoneRowID:(id)iD itemBuilder:(id)builder
{
  builderCopy = builder;
  db = self->_db;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__BRCDatabaseFacade_serverItemByParentID_andLogicalName_zoneRowID_itemBuilder___block_invoke;
  v15[3] = &unk_2784FF910;
  v16 = builderCopy;
  v12 = builderCopy;
  v13 = [(BRCPQLConnection *)db fetchObject:v15 sql:@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE item_parent_id = %@ AND item_filename = %@ AND +zone_rowid = %@", d, name, iD];

  return v13;
}

id __79__BRCDatabaseFacade_serverItemByParentID_andLogicalName_zoneRowID_itemBuilder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newServerItemFromPQLResultSet:a2 error:a3];

  return v3;
}

- (int64_t)serverRankByItemID:(id)d zoneRowID:(id)iD
{
  v4 = [(BRCPQLConnection *)self->_db fetch:@"SELECT item_rank FROM server_items WHERE item_id = %@ AND zone_rowid = %@", d, iD];
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

- (id)serverChildCountWithParentID:(id)d zoneRowID:(id)iD
{
  v4 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT child_count FROM server_items WHERE item_id = %@ AND zone_rowid = %@", d, iD];

  return v4;
}

- (id)serverQuotaUsageWithParentID:(id)d zoneRowID:(id)iD
{
  v4 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT quota_used FROM server_items WHERE item_id = %@ AND zone_rowid = %@", d, iD];

  return v4;
}

- (id)zoneIDsEnumeratorForItemWithItemID:(id)d
{
  v3 = [(BRCPQLConnection *)self->_db fetch:@"SELECT zone_rowid FROM server_items WHERE item_id = %@", d];
  v4 = [v3 enumerateObjectsOfClass:objc_opt_class()];

  return v4;
}

- (id)serverItemTypeForItemWithID:(id)d zoneRowID:(id)iD
{
  v4 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT item_type FROM server_items WHERE item_id = %@ AND zone_rowid = %@", d, iD];

  return v4;
}

- (id)userIdentityForName:(id)name
{
  db = self->_db;
  nameCopy = name;
  nameCopy = [(BRCPQLConnection *)db fetchObjectOfClass:objc_opt_class() sql:@"SELECT user_plist FROM users WHERE user_name = %@", nameCopy];

  return nameCopy;
}

- (id)userIdentityForKey:(id)key
{
  db = self->_db;
  keyCopy = key;
  keyCopy = [(BRCPQLConnection *)db fetchObjectOfClass:objc_opt_class() sql:@"SELECT user_plist FROM users WHERE user_key = %@", keyCopy];

  return keyCopy;
}

- (id)deviceNameForDeviceID:(int64_t)d
{
  v3 = [(PQLConnection *)self->_db stringWithSQL:@"SELECT name FROM devices WHERE key = %lld", d];

  return v3;
}

- (id)deviceKeyForName:(id)name
{
  name = [(PQLConnection *)self->_db numberWithSQL:@"SELECT key FROM devices WHERE name = %@", name];

  return name;
}

- (id)getParticipantsAndRecordIDsWithIsRequesters:(BOOL)requesters
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
  requestersCopy = requesters;
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