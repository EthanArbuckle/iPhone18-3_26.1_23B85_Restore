@interface BRCSymlinkItem
- (BOOL)_insertInDB:(id)b dbRowID:(unint64_t)d;
- (BOOL)_updateInDB:(id)b diffs:(unint64_t)diffs;
- (BOOL)updateWithImportObject:(id)object onlyContentDependentProperties:(BOOL)properties error:(id *)error;
- (id)_initFromPQLResultSet:(id)set session:(id)session db:(id)db error:(id *)error;
- (id)_initWithImportObject:(id)object error:(id *)error;
- (id)_initWithLocalItem:(id)item;
- (id)_initWithServerItem:(id)item dbRowID:(unint64_t)d;
- (id)descriptionWithContext:(id)context;
- (unint64_t)diffAgainstLocalItem:(id)item;
- (unint64_t)diffAgainstServerItem:(id)item;
@end

@implementation BRCSymlinkItem

- (id)_initWithImportObject:(id)object error:(id *)error
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = BRCSymlinkItem;
  v7 = [(BRCLocalItem *)&v11 _initWithImportObject:objectCopy error:error];
  if (v7)
  {
    symlinkContent = [objectCopy symlinkContent];
    v9 = v7[26];
    v7[26] = symlinkContent;
  }

  return v7;
}

- (BOOL)updateWithImportObject:(id)object onlyContentDependentProperties:(BOOL)properties error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  symlinkContent = [objectCopy symlinkContent];

  if (symlinkContent)
  {
    symlinkContent2 = [objectCopy symlinkContent];
    symlinkTarget = self->_symlinkTarget;
    self->_symlinkTarget = symlinkContent2;
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
        if (!error)
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

    if (error)
    {
      v14 = v11;
      *error = v11;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return symlinkContent != 0;
}

- (id)_initWithServerItem:(id)item dbRowID:(unint64_t)d
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = BRCSymlinkItem;
  v7 = [(BRCLocalItem *)&v11 _initWithServerItem:itemCopy dbRowID:d];
  if (v7)
  {
    symlinkTarget = [itemCopy symlinkTarget];
    v9 = v7[26];
    v7[26] = symlinkTarget;
  }

  return v7;
}

- (id)_initWithLocalItem:(id)item
{
  itemCopy = item;
  v10.receiver = self;
  v10.super_class = BRCSymlinkItem;
  v5 = [(BRCLocalItem *)&v10 _initWithLocalItem:itemCopy];
  if (v5)
  {
    asSymlink = [itemCopy asSymlink];
    symlinkTarget = [asSymlink symlinkTarget];
    v8 = v5[26];
    v5[26] = symlinkTarget;
  }

  return v5;
}

- (id)_initFromPQLResultSet:(id)set session:(id)session db:(id)db error:(id *)error
{
  setCopy = set;
  v15.receiver = self;
  v15.super_class = BRCSymlinkItem;
  v11 = [(BRCLocalItem *)&v15 _initFromPQLResultSet:setCopy session:session db:db error:error];
  if (v11)
  {
    v12 = [setCopy objectOfClass:objc_opt_class() atIndex:35];
    v13 = v11[26];
    v11[26] = v12;
  }

  return v11;
}

- (id)descriptionWithContext:(id)context
{
  v7.receiver = self;
  v7.super_class = BRCSymlinkItem;
  v4 = [(BRCLocalItem *)&v7 descriptionWithContext:context];
  fp_obfuscatedPath = [(NSString *)self->_symlinkTarget fp_obfuscatedPath];
  [v4 appendFormat:@" target:'%@'", fp_obfuscatedPath];

  return v4;
}

- (unint64_t)diffAgainstServerItem:(id)item
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = BRCSymlinkItem;
  v5 = [(BRCLocalItem *)&v13 diffAgainstServerItem:itemCopy];
  if (itemCopy && ([itemCopy isSymLink] & 1) == 0)
  {
    [BRCSymlinkItem diffAgainstServerItem:];
  }

  if ([itemCopy isSymLink] && (v5 & 0x2000) == 0)
  {
    symlinkTarget = self->_symlinkTarget;
    symlinkTarget = [itemCopy symlinkTarget];
    v8 = symlinkTarget;
    v9 = symlinkTarget;
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

- (unint64_t)diffAgainstLocalItem:(id)item
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = BRCSymlinkItem;
  v5 = [(BRCLocalItem *)&v15 diffAgainstLocalItem:itemCopy];
  if (itemCopy && ([itemCopy isSymLink] & 1) == 0)
  {
    [BRCSymlinkItem diffAgainstLocalItem:];
  }

  if ([itemCopy isSymLink])
  {
    asSymlink = [itemCopy asSymlink];
    v7 = asSymlink;
    if ((v5 & 0x2000) == 0)
    {
      symlinkTarget = self->_symlinkTarget;
      symlinkTarget = [asSymlink symlinkTarget];
      v10 = symlinkTarget;
      v11 = symlinkTarget;
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

- (BOOL)_insertInDB:(id)b dbRowID:(unint64_t)d
{
  bCopy = b;
  dbRowID = [(BRCClientZone *)self->super._clientZone dbRowID];
  itemID = self->super._itemID;
  ownerKey = self->super._ownerKey;
  sharingOptions = self->super._sharingOptions;
  sideCarCKInfo = self->super._sideCarCKInfo;
  parentZoneRowID = self->super._parentZoneRowID;
  localDiffs = self->super._localDiffs;
  notifsRank = self->super._notifsRank;
  syncUpState = self->super._syncUpState;
  appLibrary = [(BRCLocalItem *)self appLibrary];
  dbRowID2 = [appLibrary dbRowID];
  minimumSupportedOSRowID = self->super._minimumSupportedOSRowID;
  isUserVisible = self->super._isUserVisible;
  ckInfo = [(BRCStatInfo *)self->super._st ckInfo];
  state = [(BRCStatInfo *)self->super._st state];
  type = [(BRCStatInfo *)self->super._st type];
  mode = [(BRCStatInfo *)self->super._st mode];
  birthtime = [(BRCStatInfo *)self->super._st birthtime];
  lastUsedTime = [(BRCStatInfo *)self->super._st lastUsedTime];
  favoriteRank = [(BRCStatInfo *)self->super._st favoriteRank];
  parentID = [(BRCStatInfo *)self->super._st parentID];
  st = self->super._st;
  logicalName = st->super._logicalName;
  if (!logicalName)
  {
    logicalName = &stru_2837504F0;
  }

  v22 = logicalName;
  isHiddenExt = [(BRCStatInfo *)st isHiddenExt];
  finderTags = [(BRCStatInfo *)self->super._st finderTags];
  xattrSignature = [(BRCStatInfo *)self->super._st xattrSignature];
  trashPutBackPath = [(BRCStatInfo *)self->super._st trashPutBackPath];
  trashPutBackParentID = [(BRCStatInfo *)self->super._st trashPutBackParentID];
  aliasTarget = [(BRCStatInfo *)self->super._st aliasTarget];
  creatorRowID = [(BRCStatInfo *)self->super._st creatorRowID];
  processingStamp = [(BRCLocalStatInfo *)self->super._st processingStamp];
  rawBouncedLogicalName = [(BRCLocalStatInfo *)self->super._st rawBouncedLogicalName];
  itemScope = [(BRCLocalStatInfo *)self->super._st itemScope];
  localChangeCount = [(BRCLocalStatInfo *)self->super._st localChangeCount];
  oldVersionIdentifier = [(BRCLocalStatInfo *)self->super._st oldVersionIdentifier];
  fpCreationItemIdentifier = [(BRCLocalStatInfo *)self->super._st fpCreationItemIdentifier];
  symlinkTarget = [(BRCSymlinkItem *)self symlinkTarget];
  v42 = [bCopy execute:{@"INSERT INTO client_items(rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name) VALUES(%lld, %@, %@, %@, %ld, %@, %@, %d, %lld, %lld, %@, %@, %d, %@, %d, %d, %d, %lld, %lld, %lld, %@, %@, %d, %@, %@, %@, %@, %@, %@, %@, %@, %d, %llu, %@, %@, %@)", d, dbRowID, itemID, ownerKey, sharingOptions, sideCarCKInfo, parentZoneRowID, syncUpState, localDiffs, notifsRank, dbRowID2, minimumSupportedOSRowID, isUserVisible, ckInfo, state, type, mode, birthtime, lastUsedTime, favoriteRank, parentID, v22, isHiddenExt, finderTags, xattrSignature, trashPutBackPath, trashPutBackParentID, aliasTarget, creatorRowID, processingStamp, rawBouncedLogicalName, itemScope, localChangeCount, oldVersionIdentifier, fpCreationItemIdentifier, symlinkTarget}];

  if (v42)
  {
    v49.receiver = self;
    v49.super_class = BRCSymlinkItem;
    v15 = bCopy;
    v16 = [(BRCLocalItem *)&v49 _insertInDB:bCopy dbRowID:d];
  }

  else
  {
    v16 = 0;
    v15 = bCopy;
  }

  return v16;
}

- (BOOL)_updateInDB:(id)b diffs:(unint64_t)diffs
{
  bCopy = b;
  dbRowID = [(BRCClientZone *)self->super._clientZone dbRowID];
  itemID = self->super._itemID;
  ownerKey = self->super._ownerKey;
  sharingOptions = self->super._sharingOptions;
  sideCarCKInfo = self->super._sideCarCKInfo;
  parentZoneRowID = self->super._parentZoneRowID;
  localDiffs = self->super._localDiffs;
  notifsRank = self->super._notifsRank;
  syncUpState = self->super._syncUpState;
  appLibrary = [(BRCLocalItem *)self appLibrary];
  dbRowID2 = [appLibrary dbRowID];
  minimumSupportedOSRowID = self->super._minimumSupportedOSRowID;
  isUserVisible = self->super._isUserVisible;
  ckInfo = [(BRCStatInfo *)self->super._st ckInfo];
  state = [(BRCStatInfo *)self->super._st state];
  type = [(BRCStatInfo *)self->super._st type];
  mode = [(BRCStatInfo *)self->super._st mode];
  birthtime = [(BRCStatInfo *)self->super._st birthtime];
  lastUsedTime = [(BRCStatInfo *)self->super._st lastUsedTime];
  favoriteRank = [(BRCStatInfo *)self->super._st favoriteRank];
  parentID = [(BRCStatInfo *)self->super._st parentID];
  st = self->super._st;
  logicalName = st->super._logicalName;
  if (!logicalName)
  {
    logicalName = &stru_2837504F0;
  }

  v24 = logicalName;
  isHiddenExt = [(BRCStatInfo *)st isHiddenExt];
  finderTags = [(BRCStatInfo *)self->super._st finderTags];
  xattrSignature = [(BRCStatInfo *)self->super._st xattrSignature];
  trashPutBackPath = [(BRCStatInfo *)self->super._st trashPutBackPath];
  trashPutBackParentID = [(BRCStatInfo *)self->super._st trashPutBackParentID];
  aliasTarget = [(BRCStatInfo *)self->super._st aliasTarget];
  creatorRowID = [(BRCStatInfo *)self->super._st creatorRowID];
  processingStamp = [(BRCLocalStatInfo *)self->super._st processingStamp];
  rawBouncedLogicalName = [(BRCLocalStatInfo *)self->super._st rawBouncedLogicalName];
  itemScope = [(BRCLocalStatInfo *)self->super._st itemScope];
  localChangeCount = [(BRCLocalStatInfo *)self->super._st localChangeCount];
  oldVersionIdentifier = [(BRCLocalStatInfo *)self->super._st oldVersionIdentifier];
  fpCreationItemIdentifier = [(BRCLocalStatInfo *)self->super._st fpCreationItemIdentifier];
  [(BRCSymlinkItem *)self symlinkTarget];
  v15 = v19 = itemScope;
  v42 = [bCopy execute:{@"UPDATE client_items SET  zone_rowid = %@, item_id = %@, item_creator_id = %@, item_sharing_options = %ld, item_side_car_ckinfo = %@, item_parent_zone_rowid = %@, item_localsyncupstate = %d, item_local_diffs = %llu, item_notifs_rank = %lld, app_library_rowid = %@, item_min_supported_os_rowid = %@, item_user_visible = %d, item_stat_ckinfo = %@, item_state = %d, item_type = %d, item_mode = %d, item_birthtime = %lld, item_lastusedtime = %lld, item_favoriterank = %lld, item_parent_id = %@, item_filename = %@, item_hidden_ext = %d, item_finder_tags = %@, item_xattr_signature = %@, item_trash_put_back_path = %@, item_trash_put_back_parent_id = %@, item_alias_target = %@, item_creator = %@, item_processing_stamp = %@, item_bouncedname = %@, item_scope = %d, item_local_change_count = %llu, item_old_version_identifier = %@, fp_creation_item_identifier = %@, version_name = %@  WHERE rowid = %llu", dbRowID, itemID, ownerKey, sharingOptions, sideCarCKInfo, parentZoneRowID, syncUpState, localDiffs, notifsRank, dbRowID2, minimumSupportedOSRowID, isUserVisible, ckInfo, state, type, mode, birthtime, lastUsedTime, favoriteRank, parentID, v24, isHiddenExt, finderTags, xattrSignature, trashPutBackPath, trashPutBackParentID, aliasTarget, creatorRowID, processingStamp, rawBouncedLogicalName, v19, localChangeCount, oldVersionIdentifier, fpCreationItemIdentifier, v15, self->super._dbRowID}];

  if (v42)
  {
    v50.receiver = self;
    v50.super_class = BRCSymlinkItem;
    v16 = bCopy;
    v17 = [(BRCLocalItem *)&v50 _updateInDB:bCopy diffs:diffs];
  }

  else
  {
    v17 = 0;
    v16 = bCopy;
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