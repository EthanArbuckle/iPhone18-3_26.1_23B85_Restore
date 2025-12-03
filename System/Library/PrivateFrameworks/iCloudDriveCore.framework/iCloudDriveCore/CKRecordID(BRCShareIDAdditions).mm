@interface CKRecordID(BRCShareIDAdditions)
+ (id)brc_fetchShareIDWithSharedItem:()BRCShareIDAdditions;
- (BRCItemID)brc_shareItemID;
- (id)brc_collaborationIdentifierWithCachedCurrentUserRecordName:()BRCShareIDAdditions;
- (id)brc_shareZoneName;
- (id)initShareIDWithItemID:()BRCShareIDAdditions zoneID:;
- (uint64_t)initShareIDWithRecordID:()BRCShareIDAdditions serverZone:;
- (uint64_t)initShareIDWithRecordID:()BRCShareIDAdditions zoneID:session:;
- (uint64_t)initShareIDWithShareableItem:()BRCShareIDAdditions;
@end

@implementation CKRecordID(BRCShareIDAdditions)

- (id)initShareIDWithItemID:()BRCShareIDAdditions zoneID:
{
  v6 = a3;
  v7 = a4;
  itemIDString = [v6 itemIDString];
  if (itemIDString)
  {
    self = [self initWithRecordName:itemIDString zoneID:v7];
    selfCopy = self;
  }

  else
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [CKRecordID(BRCShareIDAdditions) initShareIDWithItemID:zoneID:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (uint64_t)initShareIDWithShareableItem:()BRCShareIDAdditions
{
  v4 = a3;
  itemID = [v4 itemID];
  serverZone = [v4 serverZone];

  zoneID = [serverZone zoneID];
  v8 = [self initShareIDWithItemID:itemID zoneID:zoneID];

  return v8;
}

- (uint64_t)initShareIDWithRecordID:()BRCShareIDAdditions serverZone:
{
  v6 = a4;
  v7 = a3;
  zoneID = [v6 zoneID];
  session = [v6 session];

  v10 = [self initShareIDWithRecordID:v7 zoneID:zoneID session:session];
  return v10;
}

- (uint64_t)initShareIDWithRecordID:()BRCShareIDAdditions zoneID:session:
{
  v8 = a4;
  v9 = a3;
  zoneAppRetriever = [a5 zoneAppRetriever];
  v11 = [v9 brc_itemIDWithZoneAppRetriever:zoneAppRetriever];

  v12 = [self initShareIDWithItemID:v11 zoneID:v8];
  return v12;
}

- (id)brc_shareZoneName
{
  zoneID = [self zoneID];
  zoneName = [zoneID zoneName];

  return zoneName;
}

- (BRCItemID)brc_shareItemID
{
  recordName = [self recordName];
  v2 = [[BRCItemID alloc] initWithUUIDString:recordName];

  return v2;
}

+ (id)brc_fetchShareIDWithSharedItem:()BRCShareIDAdditions
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 db];
  [v4 assertOnQueue];

  if (([v3 sharingOptions] & 4) != 0)
  {
    v25 = objc_alloc(MEMORY[0x277CBC5D0]);
    asShareableItem = [v3 asShareableItem];
    v24 = [v25 initShareIDWithShareableItem:asShareableItem];

    goto LABEL_14;
  }

  if (([v3 sharingOptions] & 0x48) == 0)
  {
    clientZone = [v3 clientZone];
    isSharedZone = [clientZone isSharedZone];

    if (!isSharedZone)
    {
      v24 = 0;
      goto LABEL_14;
    }

    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] No share options set on an item which is clearly shared%@", buf, 0xCu);
    }
  }

  appLibrary = [v3 appLibrary];
  mangledID = [appLibrary mangledID];
  v11 = [BRCUserDefaults defaultsForMangledID:mangledID];
  maxSyncPathDepth = [v11 maxSyncPathDepth];

  v13 = [v3 db];
  v14 = [v3 st];
  parentID = [v14 parentID];
  clientZone2 = [v3 clientZone];
  dbRowID = [clientZone2 dbRowID];
  clientZone3 = [v3 clientZone];
  dbRowID2 = [clientZone3 dbRowID];
  v20 = [v13 itemIDWithSQL:{@" WITH RECURSIVE item_parents (item_id, item_sharing_options, item_parent_id) AS(         SELECT item_id, item_sharing_options, item_parent_id FROM client_items           WHERE item_id = %@ AND zone_rowid = %@       UNION ALL          SELECT li.item_id, li.item_sharing_options, li.item_parent_id FROM client_items AS li     INNER JOIN item_parents AS p WHERE li.zone_rowid = %@ AND p.item_parent_id = li.item_id          LIMIT %u)        SELECT item_id FROM item_parents WHERE (item_sharing_options & 4) != 0", parentID, dbRowID, dbRowID2, maxSyncPathDepth}];

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277CBC5D0]);
    serverZone = [v3 serverZone];
    zoneID = [serverZone zoneID];
    v24 = [v21 initShareIDWithItemID:v20 zoneID:zoneID];
  }

  else
  {
    serverZone = brc_bread_crumbs();
    zoneID = brc_default_log();
    if (os_log_type_enabled(zoneID, 0x90u))
    {
      +[CKRecordID(BRCShareIDAdditions) brc_fetchShareIDWithSharedItem:];
    }

    v24 = 0;
  }

LABEL_14:
  v27 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)brc_collaborationIdentifierWithCachedCurrentUserRecordName:()BRCShareIDAdditions
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  zoneID = [self zoneID];
  zoneName = [zoneID zoneName];

  recordName = [self recordName];
  zoneID2 = [self zoneID];
  ownerName = [zoneID2 ownerName];
  v10 = [ownerName isEqualToString:*MEMORY[0x277CBBF28]];

  if ((v10 & 1) == 0)
  {
    zoneID3 = [self zoneID];
    ownerName2 = [zoneID3 ownerName];

    goto LABEL_5;
  }

  if (v4)
  {
    ownerName2 = v4;
LABEL_5:
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@", zoneName, recordName, ownerName2];
    goto LABEL_6;
  }

  ownerName2 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v19 = 2112;
    v20 = ownerName2;
    _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] No collaboration identifier can be computed yet for %@%@", buf, 0x16u);
  }

  v13 = 0;
LABEL_6:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end