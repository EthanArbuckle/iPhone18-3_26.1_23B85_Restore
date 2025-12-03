@interface SFCacheEntry
- (SFCacheEntry)initWithCacheItem:(id)item;
@end

@implementation SFCacheEntry

- (SFCacheEntry)initWithCacheItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = SFCacheEntry;
  v6 = [(SFCacheEntry *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
    date = [MEMORY[0x277CBEAA8] date];
    lastUsed = v7->_lastUsed;
    v7->_lastUsed = date;
  }

  return v7;
}

@end