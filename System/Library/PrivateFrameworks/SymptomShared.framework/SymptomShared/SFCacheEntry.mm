@interface SFCacheEntry
- (SFCacheEntry)initWithCacheItem:(id)a3;
@end

@implementation SFCacheEntry

- (SFCacheEntry)initWithCacheItem:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SFCacheEntry;
  v6 = [(SFCacheEntry *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
    v8 = [MEMORY[0x277CBEAA8] date];
    lastUsed = v7->_lastUsed;
    v7->_lastUsed = v8;
  }

  return v7;
}

@end