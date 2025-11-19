@interface BRCItemGlobalID
+ (id)itemGlobalIDFromLocalItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToItemGlobalID:(id)a3;
- (BRCItemGlobalID)initWithZoneRowID:(id)a3 itemID:(id)a4;
- (id)description;
@end

@implementation BRCItemGlobalID

- (id)description
{
  v3 = [(BRCItemID *)self->_itemID debugItemIDString];
  v4 = [v3 stringByAppendingFormat:@"[%@]", self->_zoneRowID];

  return v4;
}

+ (id)itemGlobalIDFromLocalItem:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [a1 alloc];
    v6 = [v4 clientZone];
    v7 = [v6 dbRowID];
    v8 = [v4 itemID];
    v9 = [v5 initWithZoneRowID:v7 itemID:v8];
  }

  else
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] trying to initialize a globalID from a nil object%@", &v14, 0xCu);
    }

    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BRCItemGlobalID)initWithZoneRowID:(id)a3 itemID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BRCItemGlobalID;
  v9 = [(BRCItemGlobalID *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneRowID, a3);
    objc_storeStrong(&v10->_itemID, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCItemGlobalID *)self isEqualToItemGlobalID:v4];
  }

  return v5;
}

- (BOOL)isEqualToItemGlobalID:(id)a3
{
  v4 = a3;
  itemID = self->_itemID;
  v6 = [v4 itemID];
  if ([(BRCItemID *)itemID isEqual:v6])
  {
    zoneRowID = self->_zoneRowID;
    v8 = [v4 zoneRowID];
    v9 = [(BRCZoneRowID *)zoneRowID isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end