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
  v8 = [v6 itemIDString];
  if (v8)
  {
    a1 = [a1 initWithRecordName:v8 zoneID:v7];
    v9 = a1;
  }

  else
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [CKRecordID(BRCShareIDAdditions) initShareIDWithItemID:zoneID:];
    }

    v9 = 0;
  }

  return v9;
}

- (uint64_t)initShareIDWithShareableItem:()BRCShareIDAdditions
{
  v4 = a3;
  v5 = [v4 itemID];
  v6 = [v4 serverZone];

  v7 = [v6 zoneID];
  v8 = [a1 initShareIDWithItemID:v5 zoneID:v7];

  return v8;
}

- (uint64_t)initShareIDWithRecordID:()BRCShareIDAdditions serverZone:
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 zoneID];
  v9 = [v6 session];

  v10 = [a1 initShareIDWithRecordID:v7 zoneID:v8 session:v9];
  return v10;
}

- (uint64_t)initShareIDWithRecordID:()BRCShareIDAdditions zoneID:session:
{
  v8 = a4;
  v9 = a3;
  v10 = [a5 zoneAppRetriever];
  v11 = [v9 brc_itemIDWithZoneAppRetriever:v10];

  v12 = [a1 initShareIDWithItemID:v11 zoneID:v8];
  return v12;
}

- (id)brc_shareZoneName
{
  v1 = [a1 zoneID];
  v2 = [v1 zoneName];

  return v2;
}

- (BRCItemID)brc_shareItemID
{
  v1 = [a1 recordName];
  v2 = [[BRCItemID alloc] initWithUUIDString:v1];

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
    v26 = [v3 asShareableItem];
    v24 = [v25 initShareIDWithShareableItem:v26];

    goto LABEL_14;
  }

  if (([v3 sharingOptions] & 0x48) == 0)
  {
    v5 = [v3 clientZone];
    v6 = [v5 isSharedZone];

    if (!v6)
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

  v9 = [v3 appLibrary];
  v10 = [v9 mangledID];
  v11 = [BRCUserDefaults defaultsForMangledID:v10];
  v12 = [v11 maxSyncPathDepth];

  v13 = [v3 db];
  v14 = [v3 st];
  v15 = [v14 parentID];
  v16 = [v3 clientZone];
  v17 = [v16 dbRowID];
  v18 = [v3 clientZone];
  v19 = [v18 dbRowID];
  v20 = [v13 itemIDWithSQL:{@" WITH RECURSIVE item_parents (item_id, item_sharing_options, item_parent_id) AS(         SELECT item_id, item_sharing_options, item_parent_id FROM client_items           WHERE item_id = %@ AND zone_rowid = %@       UNION ALL          SELECT li.item_id, li.item_sharing_options, li.item_parent_id FROM client_items AS li     INNER JOIN item_parents AS p WHERE li.zone_rowid = %@ AND p.item_parent_id = li.item_id          LIMIT %u)        SELECT item_id FROM item_parents WHERE (item_sharing_options & 4) != 0", v15, v17, v19, v12}];

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277CBC5D0]);
    v22 = [v3 serverZone];
    v23 = [v22 zoneID];
    v24 = [v21 initShareIDWithItemID:v20 zoneID:v23];
  }

  else
  {
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, 0x90u))
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
  v5 = [a1 zoneID];
  v6 = [v5 zoneName];

  v7 = [a1 recordName];
  v8 = [a1 zoneID];
  v9 = [v8 ownerName];
  v10 = [v9 isEqualToString:*MEMORY[0x277CBBF28]];

  if ((v10 & 1) == 0)
  {
    v12 = [a1 zoneID];
    v11 = [v12 ownerName];

    goto LABEL_5;
  }

  if (v4)
  {
    v11 = v4;
LABEL_5:
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@", v6, v7, v11];
    goto LABEL_6;
  }

  v11 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = a1;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] No collaboration identifier can be computed yet for %@%@", buf, 0x16u);
  }

  v13 = 0;
LABEL_6:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end