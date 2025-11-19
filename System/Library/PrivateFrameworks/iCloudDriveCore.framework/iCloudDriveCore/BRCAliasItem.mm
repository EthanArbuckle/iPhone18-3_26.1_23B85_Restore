@interface BRCAliasItem
+ (id)targetReferenceWithItemID:(id)a3 targetZone:(id)a4 isFolderShare:(BOOL)a5;
+ (void)fillStructureRecord:(id)a3 inZone:(id)a4 itemID:(id)a5 ckInfo:(id)a6 parentID:(id)a7 targetItemID:(id)a8 targetZone:(id)a9 diffs:(unint64_t)a10 isFolderShare:(BOOL)a11 beingDeadInServerTruth:(BOOL)a12 shouldPCSChainStatus:(unsigned __int8)a13;
- (BOOL)_insertInDB:(id)a3 dbRowID:(unint64_t)a4;
- (BOOL)_updateInDB:(id)a3 diffs:(unint64_t)a4;
- (BOOL)isBRAlias;
- (BRCClientZone)targetClientZone;
- (void)isBRAlias;
- (void)markLatestSyncRequestRejectedInZone:(id)a3;
@end

@implementation BRCAliasItem

+ (id)targetReferenceWithItemID:(id)a3 targetZone:(id)a4 isFolderShare:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 zoneID];
  if (a5)
  {
    v10 = @"directory/";
  }

  else
  {
    v11 = [v8 isSharedZone];
    v10 = @"documentStructure/";
    if (v11)
    {
      v10 = @"documentContent/";
    }
  }

  v12 = v10;
  v13 = [v7 itemIDString];
  v14 = [(__CFString *)v12 stringByAppendingString:v13];

  v15 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v14 zoneID:v9];
  v16 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v15 action:0];

  return v16;
}

+ (void)fillStructureRecord:(id)a3 inZone:(id)a4 itemID:(id)a5 ckInfo:(id)a6 parentID:(id)a7 targetItemID:(id)a8 targetZone:(id)a9 diffs:(unint64_t)a10 isFolderShare:(BOOL)a11 beingDeadInServerTruth:(BOOL)a12 shouldPCSChainStatus:(unsigned __int8)a13
{
  v33 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  if (a12)
  {
    v24 = 1;
  }

  else
  {
    v25 = [v20 etag];
    v24 = v25 == 0;
  }

  if ((a13 & 0x2C) != 0 || (a10 & 0x20) != 0 || v24)
  {
    v26 = [v21 validatingDirectoryReferenceInZone:v18];
    [v33 setObject:v26 forKeyedSubscript:@"parent"];

    if ((a13 & 0x3C) != 0)
    {
      v27 = [v21 pcsChainParentReferenceInZone:v18];
      [v33 setParent:v27];
    }
  }

  if (v24)
  {
    if ([v23 isPrivateZone])
    {
      v28 = v22;
    }

    else
    {
      v28 = v19;
    }

    v29 = [v28 itemIDString];
    v30 = [v29 brc_SHA256];
    [v33 setObject:v30 forKeyedSubscript:@"basehash"];

    v31 = [a1 targetReferenceWithItemID:v22 targetZone:v23 isFolderShare:a11];
    [v33 setObject:v31 forKeyedSubscript:@"target"];
  }

  if (!a12)
  {
    [v33 serializeSystemFields:v20];
  }
}

- (BOOL)isBRAlias
{
  if ([(BRCStatInfo *)self->super._st type]!= 3)
  {
    [BRCAliasItem isBRAlias];
  }

  return 1;
}

- (BOOL)_insertInDB:(id)a3 dbRowID:(unint64_t)a4
{
  v33 = a3;
  v44 = [(BRCServerZone *)self->super._serverZone dbRowID];
  itemID = self->super._itemID;
  ownerKey = self->super._ownerKey;
  sharingOptions = self->super._sharingOptions;
  sideCarCKInfo = self->super._sideCarCKInfo;
  parentZoneRowID = self->super._parentZoneRowID;
  localDiffs = self->super._localDiffs;
  notifsRank = self->super._notifsRank;
  syncUpState = self->super._syncUpState;
  v38 = [(BRCLocalItem *)self appLibrary];
  v41 = [v38 dbRowID];
  minimumSupportedOSRowID = self->super._minimumSupportedOSRowID;
  isUserVisible = self->super._isUserVisible;
  v45 = [(BRCStatInfo *)self->super._st ckInfo];
  v25 = [(BRCStatInfo *)self->super._st state];
  v24 = [(BRCStatInfo *)self->super._st type];
  v21 = [(BRCStatInfo *)self->super._st mode];
  v23 = [(BRCStatInfo *)self->super._st birthtime];
  v22 = [(BRCStatInfo *)self->super._st lastUsedTime];
  v20 = [(BRCStatInfo *)self->super._st favoriteRank];
  v42 = [(BRCStatInfo *)self->super._st parentID];
  st = self->super._st;
  logicalName = st->super._logicalName;
  if (!logicalName)
  {
    logicalName = &stru_2837504F0;
  }

  v19 = logicalName;
  v18 = [(BRCStatInfo *)st isHiddenExt];
  v43 = [(BRCStatInfo *)self->super._st finderTags];
  v40 = [(BRCStatInfo *)self->super._st xattrSignature];
  v39 = [(BRCStatInfo *)self->super._st trashPutBackPath];
  v7 = [(BRCStatInfo *)self->super._st trashPutBackParentID];
  v8 = [(BRCStatInfo *)self->super._st aliasTarget];
  v9 = [(BRCStatInfo *)self->super._st creatorRowID];
  v10 = [(BRCLocalStatInfo *)self->super._st processingStamp];
  v11 = [(BRCLocalStatInfo *)self->super._st rawBouncedLogicalName];
  v12 = [(BRCLocalStatInfo *)self->super._st itemScope];
  v13 = [(BRCLocalStatInfo *)self->super._st localChangeCount];
  v14 = [(BRCLocalStatInfo *)self->super._st oldVersionIdentifier];
  v15 = [(BRCLocalStatInfo *)self->super._st fpCreationItemIdentifier];
  if ([v33 execute:{@"INSERT INTO client_items(rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier) VALUES(%lld, %@, %@, %@, %ld, %@, %@, %d, %lld, %lld, %@, %@, %d, %@, %d, %d, %d, %lld, %lld, %lld, %@, %@, %d, %@, %@, %@, %@, %@, %@, %@, %@, %d, %llu, %@, %@)", a4, v44, itemID, ownerKey, sharingOptions, sideCarCKInfo, parentZoneRowID, syncUpState, localDiffs, notifsRank, v41, minimumSupportedOSRowID, isUserVisible, v45, v25, v24, v21, v23, v22, v20, v42, v19, v18, v43, v40, v39, v7, v8, v9, v10, v11, v12, v13, v14, v15}])
  {
    v46.receiver = self;
    v46.super_class = BRCAliasItem;
    v16 = [(BRCLocalItem *)&v46 _insertInDB:v33 dbRowID:a4];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_updateInDB:(id)a3 diffs:(unint64_t)a4
{
  v33 = a3;
  v44 = [(BRCClientZone *)self->super._clientZone dbRowID];
  itemID = self->super._itemID;
  ownerKey = self->super._ownerKey;
  sharingOptions = self->super._sharingOptions;
  sideCarCKInfo = self->super._sideCarCKInfo;
  parentZoneRowID = self->super._parentZoneRowID;
  localDiffs = self->super._localDiffs;
  notifsRank = self->super._notifsRank;
  syncUpState = self->super._syncUpState;
  v39 = [(BRCLocalItem *)self appLibrary];
  v42 = [v39 dbRowID];
  minimumSupportedOSRowID = self->super._minimumSupportedOSRowID;
  isUserVisible = self->super._isUserVisible;
  v43 = [(BRCStatInfo *)self->super._st ckInfo];
  v27 = [(BRCStatInfo *)self->super._st state];
  v25 = [(BRCStatInfo *)self->super._st type];
  v26 = [(BRCStatInfo *)self->super._st mode];
  v24 = [(BRCStatInfo *)self->super._st birthtime];
  v23 = [(BRCStatInfo *)self->super._st lastUsedTime];
  v22 = [(BRCStatInfo *)self->super._st favoriteRank];
  v45 = [(BRCStatInfo *)self->super._st parentID];
  st = self->super._st;
  logicalName = st->super._logicalName;
  if (!logicalName)
  {
    logicalName = &stru_2837504F0;
  }

  v20 = logicalName;
  v19 = [(BRCStatInfo *)st isHiddenExt];
  v41 = [(BRCStatInfo *)self->super._st finderTags];
  v40 = [(BRCStatInfo *)self->super._st xattrSignature];
  v21 = [(BRCStatInfo *)self->super._st trashPutBackPath];
  v7 = [(BRCStatInfo *)self->super._st trashPutBackParentID];
  v8 = [(BRCStatInfo *)self->super._st aliasTarget];
  v9 = [(BRCStatInfo *)self->super._st creatorRowID];
  v10 = [(BRCLocalStatInfo *)self->super._st processingStamp];
  v11 = [(BRCLocalStatInfo *)self->super._st rawBouncedLogicalName];
  v12 = [(BRCLocalStatInfo *)self->super._st itemScope];
  v13 = [(BRCLocalStatInfo *)self->super._st localChangeCount];
  v14 = [(BRCLocalStatInfo *)self->super._st oldVersionIdentifier];
  v15 = [(BRCLocalStatInfo *)self->super._st fpCreationItemIdentifier];
  if ([v33 execute:{@"UPDATE client_items SET  zone_rowid = %@, item_id = %@, item_creator_id = %@, item_sharing_options = %ld, item_side_car_ckinfo = %@, item_parent_zone_rowid = %@, item_localsyncupstate = %d, item_local_diffs = %llu, item_notifs_rank = %lld, app_library_rowid = %@, item_min_supported_os_rowid = %@, item_user_visible = %d, item_stat_ckinfo = %@, item_state = %d, item_type = %d, item_mode = %d, item_birthtime = %lld, item_lastusedtime = %lld, item_favoriterank = %lld, item_parent_id = %@, item_filename = %@, item_hidden_ext = %d, item_finder_tags = %@, item_xattr_signature = %@, item_trash_put_back_path = %@, item_trash_put_back_parent_id = %@, item_alias_target = %@, item_creator = %@, item_processing_stamp = %@, item_bouncedname = %@, item_scope = %d, item_local_change_count = %llu, item_old_version_identifier = %@, fp_creation_item_identifier = %@  WHERE rowid = %llu", v44, itemID, ownerKey, sharingOptions, sideCarCKInfo, parentZoneRowID, syncUpState, localDiffs, notifsRank, v42, minimumSupportedOSRowID, isUserVisible, v43, v27, v25, v26, v24, v23, v22, v45, v20, v19, v41, v40, v21, v7, v8, v9, v10, v11, v12, v13, v14, v15, self->super._dbRowID}])
  {
    v46.receiver = self;
    v46.super_class = BRCAliasItem;
    v16 = [(BRCLocalItem *)&v46 _updateInDB:v33 diffs:a4];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BRCClientZone)targetClientZone
{
  session = self->super._session;
  v3 = [(BRCStatInfo *)self->super._st _aliasTargetMangledID];
  v4 = [(BRCAccountSession *)session clientZoneByMangledID:v3];

  return v4;
}

- (void)markLatestSyncRequestRejectedInZone:(id)a3
{
  self->super._localDiffs = 0;
  v4 = a3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(BRCAliasItem *)v5 markLatestSyncRequestRejectedInZone:v6];
  }

  v7.receiver = self;
  v7.super_class = BRCAliasItem;
  [(BRCLocalItem *)&v7 markLatestSyncRequestRejectedInZone:v4];
}

- (void)isBRAlias
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _st.type == BRC_ITEM_TYPE_ALIAS%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)markLatestSyncRequestRejectedInZone:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Forcing rejection of alias item%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end