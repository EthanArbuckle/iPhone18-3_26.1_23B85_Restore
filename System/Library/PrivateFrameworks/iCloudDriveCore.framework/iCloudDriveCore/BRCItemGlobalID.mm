@interface BRCItemGlobalID
+ (id)itemGlobalIDFromLocalItem:(id)item;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToItemGlobalID:(id)d;
- (BRCItemGlobalID)initWithZoneRowID:(id)d itemID:(id)iD;
- (id)description;
@end

@implementation BRCItemGlobalID

- (id)description
{
  debugItemIDString = [(BRCItemID *)self->_itemID debugItemIDString];
  v4 = [debugItemIDString stringByAppendingFormat:@"[%@]", self->_zoneRowID];

  return v4;
}

+ (id)itemGlobalIDFromLocalItem:(id)item
{
  v16 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (itemCopy)
  {
    v5 = [self alloc];
    clientZone = [itemCopy clientZone];
    dbRowID = [clientZone dbRowID];
    itemID = [itemCopy itemID];
    v9 = [v5 initWithZoneRowID:dbRowID itemID:itemID];
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

- (BRCItemGlobalID)initWithZoneRowID:(id)d itemID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = BRCItemGlobalID;
  v9 = [(BRCItemGlobalID *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneRowID, d);
    objc_storeStrong(&v10->_itemID, iD);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCItemGlobalID *)self isEqualToItemGlobalID:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToItemGlobalID:(id)d
{
  dCopy = d;
  itemID = self->_itemID;
  itemID = [dCopy itemID];
  if ([(BRCItemID *)itemID isEqual:itemID])
  {
    zoneRowID = self->_zoneRowID;
    zoneRowID = [dCopy zoneRowID];
    v9 = [(BRCZoneRowID *)zoneRowID isEqual:zoneRowID];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end