@interface BRCAliasItem
+ (id)targetReferenceWithItemID:(id)d targetZone:(id)zone isFolderShare:(BOOL)share;
+ (void)fillStructureRecord:(id)record inZone:(id)zone itemID:(id)d ckInfo:(id)info parentID:(id)iD targetItemID:(id)itemID targetZone:(id)targetZone diffs:(unint64_t)self0 isFolderShare:(BOOL)self1 beingDeadInServerTruth:(BOOL)self2 shouldPCSChainStatus:(unsigned __int8)self3;
- (BOOL)_insertInDB:(id)b dbRowID:(unint64_t)d;
- (BOOL)_updateInDB:(id)b diffs:(unint64_t)diffs;
- (BOOL)isBRAlias;
- (BRCClientZone)targetClientZone;
- (void)isBRAlias;
- (void)markLatestSyncRequestRejectedInZone:(id)zone;
@end

@implementation BRCAliasItem

+ (id)targetReferenceWithItemID:(id)d targetZone:(id)zone isFolderShare:(BOOL)share
{
  dCopy = d;
  zoneCopy = zone;
  zoneID = [zoneCopy zoneID];
  if (share)
  {
    v10 = @"directory/";
  }

  else
  {
    isSharedZone = [zoneCopy isSharedZone];
    v10 = @"documentStructure/";
    if (isSharedZone)
    {
      v10 = @"documentContent/";
    }
  }

  v12 = v10;
  itemIDString = [dCopy itemIDString];
  v14 = [(__CFString *)v12 stringByAppendingString:itemIDString];

  v15 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v14 zoneID:zoneID];
  v16 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v15 action:0];

  return v16;
}

+ (void)fillStructureRecord:(id)record inZone:(id)zone itemID:(id)d ckInfo:(id)info parentID:(id)iD targetItemID:(id)itemID targetZone:(id)targetZone diffs:(unint64_t)self0 isFolderShare:(BOOL)self1 beingDeadInServerTruth:(BOOL)self2 shouldPCSChainStatus:(unsigned __int8)self3
{
  recordCopy = record;
  zoneCopy = zone;
  dCopy = d;
  infoCopy = info;
  iDCopy = iD;
  itemIDCopy = itemID;
  targetZoneCopy = targetZone;
  if (truth)
  {
    v24 = 1;
  }

  else
  {
    etag = [infoCopy etag];
    v24 = etag == 0;
  }

  if ((status & 0x2C) != 0 || (diffs & 0x20) != 0 || v24)
  {
    v26 = [iDCopy validatingDirectoryReferenceInZone:zoneCopy];
    [recordCopy setObject:v26 forKeyedSubscript:@"parent"];

    if ((status & 0x3C) != 0)
    {
      v27 = [iDCopy pcsChainParentReferenceInZone:zoneCopy];
      [recordCopy setParent:v27];
    }
  }

  if (v24)
  {
    if ([targetZoneCopy isPrivateZone])
    {
      v28 = itemIDCopy;
    }

    else
    {
      v28 = dCopy;
    }

    itemIDString = [v28 itemIDString];
    brc_SHA256 = [itemIDString brc_SHA256];
    [recordCopy setObject:brc_SHA256 forKeyedSubscript:@"basehash"];

    v31 = [self targetReferenceWithItemID:itemIDCopy targetZone:targetZoneCopy isFolderShare:share];
    [recordCopy setObject:v31 forKeyedSubscript:@"target"];
  }

  if (!truth)
  {
    [recordCopy serializeSystemFields:infoCopy];
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

- (BOOL)_insertInDB:(id)b dbRowID:(unint64_t)d
{
  bCopy = b;
  dbRowID = [(BRCServerZone *)self->super._serverZone dbRowID];
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

  v19 = logicalName;
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
  if ([bCopy execute:{@"INSERT INTO client_items(rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier) VALUES(%lld, %@, %@, %@, %ld, %@, %@, %d, %lld, %lld, %@, %@, %d, %@, %d, %d, %d, %lld, %lld, %lld, %@, %@, %d, %@, %@, %@, %@, %@, %@, %@, %@, %d, %llu, %@, %@)", d, dbRowID, itemID, ownerKey, sharingOptions, sideCarCKInfo, parentZoneRowID, syncUpState, localDiffs, notifsRank, dbRowID2, minimumSupportedOSRowID, isUserVisible, ckInfo, state, type, mode, birthtime, lastUsedTime, favoriteRank, parentID, v19, isHiddenExt, finderTags, xattrSignature, trashPutBackPath, trashPutBackParentID, aliasTarget, creatorRowID, processingStamp, rawBouncedLogicalName, itemScope, localChangeCount, oldVersionIdentifier, fpCreationItemIdentifier}])
  {
    v46.receiver = self;
    v46.super_class = BRCAliasItem;
    v16 = [(BRCLocalItem *)&v46 _insertInDB:bCopy dbRowID:d];
  }

  else
  {
    v16 = 0;
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

  v20 = logicalName;
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
  if ([bCopy execute:{@"UPDATE client_items SET  zone_rowid = %@, item_id = %@, item_creator_id = %@, item_sharing_options = %ld, item_side_car_ckinfo = %@, item_parent_zone_rowid = %@, item_localsyncupstate = %d, item_local_diffs = %llu, item_notifs_rank = %lld, app_library_rowid = %@, item_min_supported_os_rowid = %@, item_user_visible = %d, item_stat_ckinfo = %@, item_state = %d, item_type = %d, item_mode = %d, item_birthtime = %lld, item_lastusedtime = %lld, item_favoriterank = %lld, item_parent_id = %@, item_filename = %@, item_hidden_ext = %d, item_finder_tags = %@, item_xattr_signature = %@, item_trash_put_back_path = %@, item_trash_put_back_parent_id = %@, item_alias_target = %@, item_creator = %@, item_processing_stamp = %@, item_bouncedname = %@, item_scope = %d, item_local_change_count = %llu, item_old_version_identifier = %@, fp_creation_item_identifier = %@  WHERE rowid = %llu", dbRowID, itemID, ownerKey, sharingOptions, sideCarCKInfo, parentZoneRowID, syncUpState, localDiffs, notifsRank, dbRowID2, minimumSupportedOSRowID, isUserVisible, ckInfo, state, type, mode, birthtime, lastUsedTime, favoriteRank, parentID, v20, isHiddenExt, finderTags, xattrSignature, trashPutBackPath, trashPutBackParentID, aliasTarget, creatorRowID, processingStamp, rawBouncedLogicalName, itemScope, localChangeCount, oldVersionIdentifier, fpCreationItemIdentifier, self->super._dbRowID}])
  {
    v46.receiver = self;
    v46.super_class = BRCAliasItem;
    v16 = [(BRCLocalItem *)&v46 _updateInDB:bCopy diffs:diffs];
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
  _aliasTargetMangledID = [(BRCStatInfo *)self->super._st _aliasTargetMangledID];
  v4 = [(BRCAccountSession *)session clientZoneByMangledID:_aliasTargetMangledID];

  return v4;
}

- (void)markLatestSyncRequestRejectedInZone:(id)zone
{
  self->super._localDiffs = 0;
  zoneCopy = zone;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(BRCAliasItem *)v5 markLatestSyncRequestRejectedInZone:v6];
  }

  v7.receiver = self;
  v7.super_class = BRCAliasItem;
  [(BRCLocalItem *)&v7 markLatestSyncRequestRejectedInZone:zoneCopy];
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