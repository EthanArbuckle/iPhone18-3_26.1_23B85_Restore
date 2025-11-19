@interface BRCFinderBookmarkItem
- (BOOL)isFinderBookmark;
- (id)asShareableItem;
- (id)documentRecordID;
- (void)asShareableItem;
- (void)isFinderBookmark;
@end

@implementation BRCFinderBookmarkItem

- (BOOL)isFinderBookmark
{
  if ([(BRCStatInfo *)self->super.super._st type]!= 6 && [(BRCStatInfo *)self->super.super._st type]!= 7)
  {
    [BRCFinderBookmarkItem isFinderBookmark];
  }

  return 1;
}

- (id)asShareableItem
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [(BRCFinderBookmarkItem *)v2 asShareableItem];
  }

  return 0;
}

- (id)documentRecordID
{
  v3 = [(BRCItemID *)self->super.super._itemID itemIDString];
  v4 = [@"finderBookmark/" stringByAppendingString:v3];

  v5 = objc_alloc(MEMORY[0x277CBC5D0]);
  v6 = [(BRCServerZone *)self->super.super._serverZone zoneID];
  v7 = [v5 initWithRecordName:v4 zoneID:v6];

  return v7;
}

- (void)isFinderBookmark
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _st.type == BRC_ITEM_TYPE_FINDER_BOOKMARK || _st.type == BRC_ITEM_TYPE_FINDER_BOOKMARK_FAULT%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)asShareableItem
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: -asShareableItem called on a non-shareable item%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end