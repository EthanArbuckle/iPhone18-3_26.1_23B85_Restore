@interface BRCShareAcceptationDocumentFault
- (BOOL)_updateInDB:(id)b diffs:(unint64_t)diffs;
- (BRCShareAcceptationDocumentFault)initWithFilename:(id)filename itemID:(id)d parentIDWhenSubitem:(id)subitem appLibrary:(id)library clientZone:(id)zone sharingOptions:(unint64_t)options;
- (void)deleteShareAcceptationFault;
@end

@implementation BRCShareAcceptationDocumentFault

- (BRCShareAcceptationDocumentFault)initWithFilename:(id)filename itemID:(id)d parentIDWhenSubitem:(id)subitem appLibrary:(id)library clientZone:(id)zone sharingOptions:(unint64_t)options
{
  filenameCopy = filename;
  dCopy = d;
  subitemCopy = subitem;
  libraryCopy = library;
  zoneCopy = zone;
  v41.receiver = self;
  v41.super_class = BRCShareAcceptationDocumentFault;
  v19 = [(BRCShareAcceptationDocumentFault *)&v41 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->super.super._itemID, d);
    optionsCopy = options;
    v21 = [[BRCLocalStatInfo alloc] initAsShareAcceptFaultWithName:filenameCopy mode:(options & 0x20) == 0 isDirectory:0];
    st = v20->super.super._st;
    v20->super.super._st = v21;

    if (subitemCopy)
    {
      documentsFolderItemID = subitemCopy;
      [(BRCStatInfo *)v20->super.super._st setParentID:documentsFolderItemID];
      dbRowID = [zoneCopy dbRowID];
      defaultClientZone = dbRowID;
    }

    else
    {
      documentsFolderItemID = [libraryCopy documentsFolderItemID];
      [(BRCStatInfo *)v20->super.super._st setParentID:documentsFolderItemID];
      defaultClientZone = [libraryCopy defaultClientZone];
      dbRowID = [defaultClientZone dbRowID];
    }

    objc_storeStrong(&v20->super.super._parentZoneRowID, dbRowID);
    if (subitemCopy)
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

    [(BRCVersion *)v20->super._currentVersion setOriginalPOSIXName:filenameCopy];
    [(BRCVersion *)v20->super._currentVersion setMtime:time(0)];
    [(BRCVersion *)v20->super._currentVersion setSize:20480];
    [(BRCLocalItem *)v20 setAppLibrary:libraryCopy];
    objc_storeStrong(&v20->super.super._clientZone, zone);
    v20->super.super._serverZone = [(BRCClientZone *)v20->super.super._clientZone serverZone];
    v28 = [(BRCClientZone *)v20->super.super._clientZone db];
    db = v20->super.super._db;
    v20->super.super._db = v28;

    dbFacade = [(BRCClientZone *)v20->super.super._clientZone dbFacade];
    dbFacade = v20->super.super._dbFacade;
    v20->super.super._dbFacade = dbFacade;

    v20->super.super._session = [libraryCopy session];
    dbFacade2 = [(BRCClientZone *)v20->super.super._clientZone dbFacade];
    ownerName = [zoneCopy ownerName];
    v34 = [dbFacade2 userKeyForOwnerName:ownerName];
    ownerKey = v20->super.super._ownerKey;
    v20->super.super._ownerKey = v34;

    [(BRCStatInfo *)v20->super.super._st setBirthtime:[(BRCVersion *)v20->super._currentVersion mtime]];
    [(BRCLocalStatInfo *)v20->super.super._st setItemScope:2];
    [(BRCStatInfo *)v20->super.super._st setState:0];
    [(BRCStatInfo *)v20->super.super._st setHiddenExt:1];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    [(BRCStatInfo *)v20->super.super._st setLastUsedTime:v37];

    v20->super.super._sharingOptions = v39 | optionsCopy;
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

- (BOOL)_updateInDB:(id)b diffs:(unint64_t)diffs
{
  bCopy = b;
  v13.receiver = self;
  v13.super_class = BRCShareAcceptationDocumentFault;
  v7 = [(BRCDocumentItem *)&v13 _updateInDB:bCopy diffs:diffs];
  type = [(BRCStatInfo *)self->super.super._st type];
  v9 = (type != 2) & v7;
  if (type == 2 && (v7 & 1) != 0)
  {
    itemID = self->super.super._itemID;
    dbRowID = [(BRCClientZone *)self->super.super._clientZone dbRowID];
    v9 = [bCopy execute:{@"UPDATE client_items SET item_type = 2 WHERE item_id = %@ AND zone_rowid = %@ AND item_type = 8", itemID, dbRowID}];
  }

  return v9;
}

@end