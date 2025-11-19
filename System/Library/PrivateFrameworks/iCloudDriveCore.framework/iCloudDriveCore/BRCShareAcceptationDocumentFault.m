@interface BRCShareAcceptationDocumentFault
- (BOOL)_updateInDB:(id)a3 diffs:(unint64_t)a4;
- (BRCShareAcceptationDocumentFault)initWithFilename:(id)a3 itemID:(id)a4 parentIDWhenSubitem:(id)a5 appLibrary:(id)a6 clientZone:(id)a7 sharingOptions:(unint64_t)a8;
- (void)deleteShareAcceptationFault;
@end

@implementation BRCShareAcceptationDocumentFault

- (BRCShareAcceptationDocumentFault)initWithFilename:(id)a3 itemID:(id)a4 parentIDWhenSubitem:(id)a5 appLibrary:(id)a6 clientZone:(id)a7 sharingOptions:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v41.receiver = self;
  v41.super_class = BRCShareAcceptationDocumentFault;
  v19 = [(BRCShareAcceptationDocumentFault *)&v41 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->super.super._itemID, a4);
    v40 = a8;
    v21 = [[BRCLocalStatInfo alloc] initAsShareAcceptFaultWithName:v14 mode:(a8 & 0x20) == 0 isDirectory:0];
    st = v20->super.super._st;
    v20->super.super._st = v21;

    if (v16)
    {
      v23 = v16;
      [(BRCStatInfo *)v20->super.super._st setParentID:v23];
      v24 = [v18 dbRowID];
      v25 = v24;
    }

    else
    {
      v23 = [v17 documentsFolderItemID];
      [(BRCStatInfo *)v20->super.super._st setParentID:v23];
      v25 = [v17 defaultClientZone];
      v24 = [v25 dbRowID];
    }

    objc_storeStrong(&v20->super.super._parentZoneRowID, v24);
    if (v16)
    {
      v39 = 0;
    }

    else
    {

      v39 = 4;
    }

    v26 = [[BRCLocalVersion alloc] initForPackage:0];
    currentVersion = v20->super._currentVersion;
    v20->super._currentVersion = v26;

    [(BRCVersion *)v20->super._currentVersion setOriginalPOSIXName:v14];
    [(BRCVersion *)v20->super._currentVersion setMtime:time(0)];
    [(BRCVersion *)v20->super._currentVersion setSize:20480];
    [(BRCLocalItem *)v20 setAppLibrary:v17];
    objc_storeStrong(&v20->super.super._clientZone, a7);
    v20->super.super._serverZone = [(BRCClientZone *)v20->super.super._clientZone serverZone];
    v28 = [(BRCClientZone *)v20->super.super._clientZone db];
    db = v20->super.super._db;
    v20->super.super._db = v28;

    v30 = [(BRCClientZone *)v20->super.super._clientZone dbFacade];
    dbFacade = v20->super.super._dbFacade;
    v20->super.super._dbFacade = v30;

    v20->super.super._session = [v17 session];
    v32 = [(BRCClientZone *)v20->super.super._clientZone dbFacade];
    v33 = [v18 ownerName];
    v34 = [v32 userKeyForOwnerName:v33];
    ownerKey = v20->super.super._ownerKey;
    v20->super.super._ownerKey = v34;

    [(BRCStatInfo *)v20->super.super._st setBirthtime:[(BRCVersion *)v20->super._currentVersion mtime]];
    [(BRCLocalStatInfo *)v20->super.super._st setItemScope:2];
    [(BRCStatInfo *)v20->super.super._st setState:0];
    [(BRCStatInfo *)v20->super.super._st setHiddenExt:1];
    v36 = [MEMORY[0x277CBEAA8] date];
    [v36 timeIntervalSince1970];
    [(BRCStatInfo *)v20->super.super._st setLastUsedTime:v37];

    v20->super.super._sharingOptions = v39 | v40;
    v20->super.super._isUserVisible = 1;
  }

  return v20;
}

- (void)deleteShareAcceptationFault
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: only share acceptation fault can be deleted; %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateInDB:(id)a3 diffs:(unint64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = BRCShareAcceptationDocumentFault;
  v7 = [(BRCDocumentItem *)&v13 _updateInDB:v6 diffs:a4];
  v8 = [(BRCStatInfo *)self->super.super._st type];
  v9 = (v8 != 2) & v7;
  if (v8 == 2 && (v7 & 1) != 0)
  {
    itemID = self->super.super._itemID;
    v11 = [(BRCClientZone *)self->super.super._clientZone dbRowID];
    v9 = [v6 execute:{@"UPDATE client_items SET item_type = 2 WHERE item_id = %@ AND zone_rowid = %@ AND item_type = 8", itemID, v11}];
  }

  return v9;
}

@end