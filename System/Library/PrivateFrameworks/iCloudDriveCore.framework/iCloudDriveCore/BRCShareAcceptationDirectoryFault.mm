@interface BRCShareAcceptationDirectoryFault
- (BOOL)_updateInDB:(id)b diffs:(unint64_t)diffs;
- (BRCShareAcceptationDirectoryFault)initWithFilename:(id)filename itemID:(id)d parentIDWhenSubitem:(id)subitem appLibrary:(id)library clientZone:(id)zone sharingOptions:(unint64_t)options;
- (void)deleteShareAcceptationFault;
@end

@implementation BRCShareAcceptationDirectoryFault

- (BRCShareAcceptationDirectoryFault)initWithFilename:(id)filename itemID:(id)d parentIDWhenSubitem:(id)subitem appLibrary:(id)library clientZone:(id)zone sharingOptions:(unint64_t)options
{
  filenameCopy = filename;
  dCopy = d;
  subitemCopy = subitem;
  libraryCopy = library;
  zoneCopy = zone;
  v39.receiver = self;
  v39.super_class = BRCShareAcceptationDirectoryFault;
  v19 = [(BRCShareAcceptationDirectoryFault *)&v39 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->super.super._itemID, d);
    v21 = [[BRCLocalStatInfo alloc] initAsShareAcceptFaultWithName:filenameCopy mode:(options & 0x20) == 0 isDirectory:1];
    st = v20->super.super._st;
    v20->super.super._st = v21;

    if (subitemCopy)
    {
      documentsFolderItemID = subitemCopy;
      [(BRCStatInfo *)v20->super.super._st setParentID:documentsFolderItemID, 0];
    }

    else
    {
      documentsFolderItemID = [libraryCopy documentsFolderItemID];
      [(BRCStatInfo *)v20->super.super._st setParentID:documentsFolderItemID, 4];
    }

    defaultClientZone = [libraryCopy defaultClientZone];
    dbRowID = [defaultClientZone dbRowID];
    parentZoneRowID = v20->super.super._parentZoneRowID;
    v20->super.super._parentZoneRowID = dbRowID;

    [(BRCLocalItem *)v20 setAppLibrary:libraryCopy];
    objc_storeStrong(&v20->super.super._clientZone, zone);
    v20->super.super._serverZone = [(BRCClientZone *)v20->super.super._clientZone serverZone];
    v27 = [(BRCClientZone *)v20->super.super._clientZone db];
    db = v20->super.super._db;
    v20->super.super._db = v27;

    dbFacade = [zoneCopy dbFacade];
    dbFacade = v20->super.super._dbFacade;
    v20->super.super._dbFacade = dbFacade;

    v20->super.super._session = [libraryCopy session];
    dbFacade2 = [(BRCClientZone *)v20->super.super._clientZone dbFacade];
    ownerName = [zoneCopy ownerName];
    v33 = [dbFacade2 userKeyForOwnerName:ownerName];
    ownerKey = v20->super.super._ownerKey;
    v20->super.super._ownerKey = v33;

    [(BRCStatInfo *)v20->super.super._st setBirthtime:time(0)];
    [(BRCLocalStatInfo *)v20->super.super._st setItemScope:2];
    [(BRCStatInfo *)v20->super.super._st setState:0];
    [(BRCStatInfo *)v20->super.super._st setHiddenExt:1];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    [(BRCStatInfo *)v20->super.super._st setLastUsedTime:v36];

    [(BRCDirectoryItem *)v20 setMtime:[(BRCStatInfo *)v20->super.super._st lastUsedTime]];
    v20->super.super._sharingOptions = v38 | options;
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

- (BOOL)_updateInDB:(id)b diffs:(unint64_t)diffs
{
  bCopy = b;
  v13.receiver = self;
  v13.super_class = BRCShareAcceptationDirectoryFault;
  v7 = [(BRCDirectoryItem *)&v13 _updateInDB:bCopy diffs:diffs];
  type = [(BRCStatInfo *)self->super.super._st type];
  v9 = (type != 9) & v7;
  if (type == 9 && (v7 & 1) != 0)
  {
    itemID = self->super.super._itemID;
    dbRowID = [(BRCClientZone *)self->super.super._clientZone dbRowID];
    v9 = [bCopy execute:{@"UPDATE client_items SET item_type = 9 WHERE item_id = %@ AND zone_rowid = %@ AND item_type = 10", itemID, dbRowID}];
  }

  return v9;
}

@end