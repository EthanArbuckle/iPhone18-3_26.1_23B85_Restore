@interface BRCShareAcceptationDirectoryFault
- (BOOL)_updateInDB:(id)a3 diffs:(unint64_t)a4;
- (BRCShareAcceptationDirectoryFault)initWithFilename:(id)a3 itemID:(id)a4 parentIDWhenSubitem:(id)a5 appLibrary:(id)a6 clientZone:(id)a7 sharingOptions:(unint64_t)a8;
- (void)deleteShareAcceptationFault;
@end

@implementation BRCShareAcceptationDirectoryFault

- (BRCShareAcceptationDirectoryFault)initWithFilename:(id)a3 itemID:(id)a4 parentIDWhenSubitem:(id)a5 appLibrary:(id)a6 clientZone:(id)a7 sharingOptions:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v39.receiver = self;
  v39.super_class = BRCShareAcceptationDirectoryFault;
  v19 = [(BRCShareAcceptationDirectoryFault *)&v39 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->super.super._itemID, a4);
    v21 = [[BRCLocalStatInfo alloc] initAsShareAcceptFaultWithName:v14 mode:(a8 & 0x20) == 0 isDirectory:1];
    st = v20->super.super._st;
    v20->super.super._st = v21;

    if (v16)
    {
      v23 = v16;
      [(BRCStatInfo *)v20->super.super._st setParentID:v23, 0];
    }

    else
    {
      v23 = [v17 documentsFolderItemID];
      [(BRCStatInfo *)v20->super.super._st setParentID:v23, 4];
    }

    v24 = [v17 defaultClientZone];
    v25 = [v24 dbRowID];
    parentZoneRowID = v20->super.super._parentZoneRowID;
    v20->super.super._parentZoneRowID = v25;

    [(BRCLocalItem *)v20 setAppLibrary:v17];
    objc_storeStrong(&v20->super.super._clientZone, a7);
    v20->super.super._serverZone = [(BRCClientZone *)v20->super.super._clientZone serverZone];
    v27 = [(BRCClientZone *)v20->super.super._clientZone db];
    db = v20->super.super._db;
    v20->super.super._db = v27;

    v29 = [v18 dbFacade];
    dbFacade = v20->super.super._dbFacade;
    v20->super.super._dbFacade = v29;

    v20->super.super._session = [v17 session];
    v31 = [(BRCClientZone *)v20->super.super._clientZone dbFacade];
    v32 = [v18 ownerName];
    v33 = [v31 userKeyForOwnerName:v32];
    ownerKey = v20->super.super._ownerKey;
    v20->super.super._ownerKey = v33;

    [(BRCStatInfo *)v20->super.super._st setBirthtime:time(0)];
    [(BRCLocalStatInfo *)v20->super.super._st setItemScope:2];
    [(BRCStatInfo *)v20->super.super._st setState:0];
    [(BRCStatInfo *)v20->super.super._st setHiddenExt:1];
    v35 = [MEMORY[0x277CBEAA8] date];
    [v35 timeIntervalSince1970];
    [(BRCStatInfo *)v20->super.super._st setLastUsedTime:v36];

    [(BRCDirectoryItem *)v20 setMtime:[(BRCStatInfo *)v20->super.super._st lastUsedTime]];
    v20->super.super._sharingOptions = v38 | a8;
    v20->super.super._isUserVisible = 1;
  }

  return v20;
}

- (void)deleteShareAcceptationFault
{
  if ([(BRCShareAcceptationDirectoryFault *)self isShareAcceptationFault])
  {
    [(BRCLocalItem *)self markDead];

    [(BRCLocalItem *)self saveToDB];
  }

  else
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [BRCShareAcceptationDocumentFault deleteShareAcceptationFault];
    }
  }
}

- (BOOL)_updateInDB:(id)a3 diffs:(unint64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = BRCShareAcceptationDirectoryFault;
  v7 = [(BRCDirectoryItem *)&v13 _updateInDB:v6 diffs:a4];
  v8 = [(BRCStatInfo *)self->super.super._st type];
  v9 = (v8 != 9) & v7;
  if (v8 == 9 && (v7 & 1) != 0)
  {
    itemID = self->super.super._itemID;
    v11 = [(BRCClientZone *)self->super.super._clientZone dbRowID];
    v9 = [v6 execute:{@"UPDATE client_items SET item_type = 9 WHERE item_id = %@ AND zone_rowid = %@ AND item_type = 10", itemID, v11}];
  }

  return v9;
}

@end