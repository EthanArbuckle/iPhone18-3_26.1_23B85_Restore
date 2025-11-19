@interface BRCSymlinkItem
- (BOOL)_insertInDB:(id)a3 dbRowID:(unint64_t)a4;
- (BOOL)_updateInDB:(id)a3 diffs:(unint64_t)a4;
- (BOOL)updateWithImportObject:(id)a3 onlyContentDependentProperties:(BOOL)a4 error:(id *)a5;
- (id)_initFromPQLResultSet:(id)a3 session:(id)a4 db:(id)a5 error:(id *)a6;
- (id)_initWithImportObject:(id)a3 error:(id *)a4;
- (id)_initWithLocalItem:(id)a3;
- (id)_initWithServerItem:(id)a3 dbRowID:(unint64_t)a4;
- (id)descriptionWithContext:(id)a3;
- (unint64_t)diffAgainstLocalItem:(id)a3;
- (unint64_t)diffAgainstServerItem:(id)a3;
@end

@implementation BRCSymlinkItem

- (id)_initWithImportObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = BRCSymlinkItem;
  v7 = [(BRCLocalItem *)&v11 _initWithImportObject:v6 error:a4];
  if (v7)
  {
    v8 = [v6 symlinkContent];
    v9 = v7[26];
    v7[26] = v8;
  }

  return v7;
}

- (BOOL)updateWithImportObject:(id)a3 onlyContentDependentProperties:(BOOL)a4 error:(id *)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 symlinkContent];

  if (v8)
  {
    v9 = [v7 symlinkContent];
    symlinkTarget = self->_symlinkTarget;
    self->_symlinkTarget = v9;
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22];
    if (v11)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        v17 = "(passed to caller)";
        v18 = 136315906;
        v19 = "[BRCSymlinkItem(FPFSAdditions) updateWithImportObject:onlyContentDependentProperties:error:]";
        v20 = 2080;
        if (!a5)
        {
          v17 = "(ignored by caller)";
        }

        v21 = v17;
        v22 = 2112;
        v23 = v11;
        v24 = 2112;
        v25 = v12;
        _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", &v18, 0x2Au);
      }
    }

    if (a5)
    {
      v14 = v11;
      *a5 = v11;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

- (id)_initWithServerItem:(id)a3 dbRowID:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = BRCSymlinkItem;
  v7 = [(BRCLocalItem *)&v11 _initWithServerItem:v6 dbRowID:a4];
  if (v7)
  {
    v8 = [v6 symlinkTarget];
    v9 = v7[26];
    v7[26] = v8;
  }

  return v7;
}

- (id)_initWithLocalItem:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BRCSymlinkItem;
  v5 = [(BRCLocalItem *)&v10 _initWithLocalItem:v4];
  if (v5)
  {
    v6 = [v4 asSymlink];
    v7 = [v6 symlinkTarget];
    v8 = v5[26];
    v5[26] = v7;
  }

  return v5;
}

- (id)_initFromPQLResultSet:(id)a3 session:(id)a4 db:(id)a5 error:(id *)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = BRCSymlinkItem;
  v11 = [(BRCLocalItem *)&v15 _initFromPQLResultSet:v10 session:a4 db:a5 error:a6];
  if (v11)
  {
    v12 = [v10 objectOfClass:objc_opt_class() atIndex:35];
    v13 = v11[26];
    v11[26] = v12;
  }

  return v11;
}

- (id)descriptionWithContext:(id)a3
{
  v7.receiver = self;
  v7.super_class = BRCSymlinkItem;
  v4 = [(BRCLocalItem *)&v7 descriptionWithContext:a3];
  v5 = [(NSString *)self->_symlinkTarget fp_obfuscatedPath];
  [v4 appendFormat:@" target:'%@'", v5];

  return v4;
}

- (unint64_t)diffAgainstServerItem:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BRCSymlinkItem;
  v5 = [(BRCLocalItem *)&v13 diffAgainstServerItem:v4];
  if (v4 && ([v4 isSymLink] & 1) == 0)
  {
    [BRCSymlinkItem diffAgainstServerItem:];
  }

  if ([v4 isSymLink] && (v5 & 0x2000) == 0)
  {
    symlinkTarget = self->_symlinkTarget;
    v7 = [v4 symlinkTarget];
    v8 = symlinkTarget;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
      v11 = 0;
    }

    else if (v9)
    {
      v11 = [(NSString *)v8 isEqual:v9]^ 1;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v5 |= 0x2000uLL;
    }
  }

  return v5;
}

- (unint64_t)diffAgainstLocalItem:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = BRCSymlinkItem;
  v5 = [(BRCLocalItem *)&v15 diffAgainstLocalItem:v4];
  if (v4 && ([v4 isSymLink] & 1) == 0)
  {
    [BRCSymlinkItem diffAgainstLocalItem:];
  }

  if ([v4 isSymLink])
  {
    v6 = [v4 asSymlink];
    v7 = v6;
    if ((v5 & 0x2000) == 0)
    {
      symlinkTarget = self->_symlinkTarget;
      v9 = [v6 symlinkTarget];
      v10 = symlinkTarget;
      v11 = v9;
      v12 = v11;
      if (v10 == v11)
      {
        v13 = 0;
      }

      else if (v11)
      {
        v13 = [(NSString *)v10 isEqual:v11]^ 1;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        v5 |= 0x2000uLL;
      }
    }
  }

  else
  {
    v5 |= 0x2000uLL;
  }

  return v5;
}

- (BOOL)_insertInDB:(id)a3 dbRowID:(unint64_t)a4
{
  v48 = a3;
  v47 = [(BRCClientZone *)self->super._clientZone dbRowID];
  itemID = self->super._itemID;
  ownerKey = self->super._ownerKey;
  sharingOptions = self->super._sharingOptions;
  sideCarCKInfo = self->super._sideCarCKInfo;
  parentZoneRowID = self->super._parentZoneRowID;
  localDiffs = self->super._localDiffs;
  notifsRank = self->super._notifsRank;
  syncUpState = self->super._syncUpState;
  v43 = [(BRCLocalItem *)self appLibrary];
  v46 = [v43 dbRowID];
  minimumSupportedOSRowID = self->super._minimumSupportedOSRowID;
  isUserVisible = self->super._isUserVisible;
  v44 = [(BRCStatInfo *)self->super._st ckInfo];
  v31 = [(BRCStatInfo *)self->super._st state];
  v29 = [(BRCStatInfo *)self->super._st type];
  v30 = [(BRCStatInfo *)self->super._st mode];
  v28 = [(BRCStatInfo *)self->super._st birthtime];
  v27 = [(BRCStatInfo *)self->super._st lastUsedTime];
  v25 = [(BRCStatInfo *)self->super._st favoriteRank];
  v45 = [(BRCStatInfo *)self->super._st parentID];
  st = self->super._st;
  logicalName = st->super._logicalName;
  if (!logicalName)
  {
    logicalName = &stru_2837504F0;
  }

  v22 = logicalName;
  v21 = [(BRCStatInfo *)st isHiddenExt];
  v19 = [(BRCStatInfo *)self->super._st finderTags];
  v26 = [(BRCStatInfo *)self->super._st xattrSignature];
  v24 = [(BRCStatInfo *)self->super._st trashPutBackPath];
  v23 = [(BRCStatInfo *)self->super._st trashPutBackParentID];
  v20 = [(BRCStatInfo *)self->super._st aliasTarget];
  v8 = [(BRCStatInfo *)self->super._st creatorRowID];
  v9 = [(BRCLocalStatInfo *)self->super._st processingStamp];
  v10 = [(BRCLocalStatInfo *)self->super._st rawBouncedLogicalName];
  v11 = [(BRCLocalStatInfo *)self->super._st itemScope];
  v12 = [(BRCLocalStatInfo *)self->super._st localChangeCount];
  v18 = [(BRCLocalStatInfo *)self->super._st oldVersionIdentifier];
  v13 = [(BRCLocalStatInfo *)self->super._st fpCreationItemIdentifier];
  v14 = [(BRCSymlinkItem *)self symlinkTarget];
  v42 = [v48 execute:{@"INSERT INTO client_items(rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name) VALUES(%lld, %@, %@, %@, %ld, %@, %@, %d, %lld, %lld, %@, %@, %d, %@, %d, %d, %d, %lld, %lld, %lld, %@, %@, %d, %@, %@, %@, %@, %@, %@, %@, %@, %d, %llu, %@, %@, %@)", a4, v47, itemID, ownerKey, sharingOptions, sideCarCKInfo, parentZoneRowID, syncUpState, localDiffs, notifsRank, v46, minimumSupportedOSRowID, isUserVisible, v44, v31, v29, v30, v28, v27, v25, v45, v22, v21, v19, v26, v24, v23, v20, v8, v9, v10, v11, v12, v18, v13, v14}];

  if (v42)
  {
    v49.receiver = self;
    v49.super_class = BRCSymlinkItem;
    v15 = v48;
    v16 = [(BRCLocalItem *)&v49 _insertInDB:v48 dbRowID:a4];
  }

  else
  {
    v16 = 0;
    v15 = v48;
  }

  return v16;
}

- (BOOL)_updateInDB:(id)a3 diffs:(unint64_t)a4
{
  v49 = a3;
  v48 = [(BRCClientZone *)self->super._clientZone dbRowID];
  itemID = self->super._itemID;
  ownerKey = self->super._ownerKey;
  sharingOptions = self->super._sharingOptions;
  sideCarCKInfo = self->super._sideCarCKInfo;
  parentZoneRowID = self->super._parentZoneRowID;
  localDiffs = self->super._localDiffs;
  notifsRank = self->super._notifsRank;
  syncUpState = self->super._syncUpState;
  v43 = [(BRCLocalItem *)self appLibrary];
  v46 = [v43 dbRowID];
  minimumSupportedOSRowID = self->super._minimumSupportedOSRowID;
  isUserVisible = self->super._isUserVisible;
  v47 = [(BRCStatInfo *)self->super._st ckInfo];
  v30 = [(BRCStatInfo *)self->super._st state];
  v31 = [(BRCStatInfo *)self->super._st type];
  v29 = [(BRCStatInfo *)self->super._st mode];
  v25 = [(BRCStatInfo *)self->super._st birthtime];
  v28 = [(BRCStatInfo *)self->super._st lastUsedTime];
  v26 = [(BRCStatInfo *)self->super._st favoriteRank];
  v44 = [(BRCStatInfo *)self->super._st parentID];
  st = self->super._st;
  logicalName = st->super._logicalName;
  if (!logicalName)
  {
    logicalName = &stru_2837504F0;
  }

  v24 = logicalName;
  v23 = [(BRCStatInfo *)st isHiddenExt];
  v45 = [(BRCStatInfo *)self->super._st finderTags];
  v27 = [(BRCStatInfo *)self->super._st xattrSignature];
  v22 = [(BRCStatInfo *)self->super._st trashPutBackPath];
  v7 = [(BRCStatInfo *)self->super._st trashPutBackParentID];
  v8 = [(BRCStatInfo *)self->super._st aliasTarget];
  v9 = [(BRCStatInfo *)self->super._st creatorRowID];
  v10 = [(BRCLocalStatInfo *)self->super._st processingStamp];
  v11 = [(BRCLocalStatInfo *)self->super._st rawBouncedLogicalName];
  v12 = [(BRCLocalStatInfo *)self->super._st itemScope];
  v13 = [(BRCLocalStatInfo *)self->super._st localChangeCount];
  v21 = [(BRCLocalStatInfo *)self->super._st oldVersionIdentifier];
  v14 = [(BRCLocalStatInfo *)self->super._st fpCreationItemIdentifier];
  [(BRCSymlinkItem *)self symlinkTarget];
  v15 = v19 = v12;
  v42 = [v49 execute:{@"UPDATE client_items SET  zone_rowid = %@, item_id = %@, item_creator_id = %@, item_sharing_options = %ld, item_side_car_ckinfo = %@, item_parent_zone_rowid = %@, item_localsyncupstate = %d, item_local_diffs = %llu, item_notifs_rank = %lld, app_library_rowid = %@, item_min_supported_os_rowid = %@, item_user_visible = %d, item_stat_ckinfo = %@, item_state = %d, item_type = %d, item_mode = %d, item_birthtime = %lld, item_lastusedtime = %lld, item_favoriterank = %lld, item_parent_id = %@, item_filename = %@, item_hidden_ext = %d, item_finder_tags = %@, item_xattr_signature = %@, item_trash_put_back_path = %@, item_trash_put_back_parent_id = %@, item_alias_target = %@, item_creator = %@, item_processing_stamp = %@, item_bouncedname = %@, item_scope = %d, item_local_change_count = %llu, item_old_version_identifier = %@, fp_creation_item_identifier = %@, version_name = %@  WHERE rowid = %llu", v48, itemID, ownerKey, sharingOptions, sideCarCKInfo, parentZoneRowID, syncUpState, localDiffs, notifsRank, v46, minimumSupportedOSRowID, isUserVisible, v47, v30, v31, v29, v25, v28, v26, v44, v24, v23, v45, v27, v22, v7, v8, v9, v10, v11, v19, v13, v21, v14, v15, self->super._dbRowID}];

  if (v42)
  {
    v50.receiver = self;
    v50.super_class = BRCSymlinkItem;
    v16 = v49;
    v17 = [(BRCLocalItem *)&v50 _updateInDB:v49 diffs:a4];
  }

  else
  {
    v17 = 0;
    v16 = v49;
  }

  return v17;
}

- (void)diffAgainstServerItem:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: !info || info.isSymLink%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)diffAgainstLocalItem:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: !info || info.isSymLink%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end