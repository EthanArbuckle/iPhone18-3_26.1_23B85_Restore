@interface SFCache
- (SFCache)init;
- (SFCache)initWithPolicy:(unint64_t)policy;
- (SFCache)initWithPolicy:(unint64_t)policy timeToLive:(double)live size:(unint64_t)size;
- (id)_entryForKey:(id)key;
- (id)entryForKey:(id)key;
- (unint64_t)count;
- (void)_insertCacheEntry:(id)entry forKey:(id)key;
- (void)_removeCacheEntryWithKey:(id)key;
- (void)addEntry:(id)entry forKey:(id)key;
@end

@implementation SFCache

- (SFCache)init
{
  v3 = [[SFCache alloc] initWithPolicy:0 timeToLive:10 size:0.0];

  return v3;
}

- (SFCache)initWithPolicy:(unint64_t)policy
{
  v4 = [[SFCache alloc] initWithPolicy:policy timeToLive:10 size:0.0];

  return v4;
}

- (SFCache)initWithPolicy:(unint64_t)policy timeToLive:(double)live size:(unint64_t)size
{
  selfCopy = size;
  if (size)
  {
    v13.receiver = self;
    v13.super_class = SFCache;
    v8 = [(SFCache *)&v13 init];
    v9 = v8;
    if (v8)
    {
      v8->_cachePolicy = policy;
      v8->_cacheSize = selfCopy;
      v8->_entryTimeToLive = live;
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      cacheEntries = v9->_cacheEntries;
      v9->_cacheEntries = v10;
    }

    self = v9;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)_entryForKey:(id)key
{
  keyCopy = key;
  v5 = self->_cacheEntries;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_cacheEntries objectForKeyedSubscript:keyCopy];
  v7 = v6;
  if (v6)
  {
    if (self->_entryTimeToLive == 0.0 || ([v6 lastUsed], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "timeIntervalSinceNow"), v10 = v9, v11 = -self->_entryTimeToLive, v8, v10 > v11))
    {
      date = [MEMORY[0x277CBEAA8] date];
      [v7 setLastUsed:date];
    }

    else
    {
      date = v7;
      v7 = 0;
    }
  }

  objc_sync_exit(v5);

  return v7;
}

- (void)_insertCacheEntry:(id)entry forKey:(id)key
{
  entryCopy = entry;
  keyCopy = key;
  v8 = self->_cacheEntries;
  objc_sync_enter(v8);
  if ([(NSMutableDictionary *)self->_cacheEntries count]>= self->_cacheSize)
  {
    if (self->_entryTimeToLive == 0.0)
    {
      v11 = 0;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      cacheEntries = self->_cacheEntries;
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __36__SFCache__insertCacheEntry_forKey___block_invoke;
      v17 = &unk_278986860;
      selfCopy = self;
      v11 = v9;
      v19 = v11;
      [(NSMutableDictionary *)cacheEntries enumerateKeysAndObjectsUsingBlock:&v14];

      if (v11)
      {
        if ([v11 count])
        {
          if ([v11 count])
          {
            [(NSMutableDictionary *)self->_cacheEntries removeObjectsForKeys:v11];
          }
        }

        else
        {
          v12 = [(NSMutableDictionary *)self->_cacheEntries keysSortedByValueUsingComparator:&__block_literal_global];
          v13 = [v12 subarrayWithRange:{0, self->_cacheSize >> 1}];
          [(NSMutableDictionary *)self->_cacheEntries removeObjectsForKeys:v13];
        }
      }
    }
  }

  [(NSMutableDictionary *)self->_cacheEntries setObject:entryCopy forKeyedSubscript:keyCopy, v14, v15, v16, v17, selfCopy];
  objc_sync_exit(v8);
}

void __36__SFCache__insertCacheEntry_forKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = [a3 lastUsed];
  [v5 timeIntervalSinceNow];
  v7 = v6;
  v8 = -*(*(a1 + 32) + 24);

  if (v7 <= v8)
  {
    [*(a1 + 40) addObject:v9];
  }
}

uint64_t __36__SFCache__insertCacheEntry_forKey___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastUsed];
  v6 = [v4 lastUsed];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_removeCacheEntryWithKey:(id)key
{
  keyCopy = key;
  v4 = self->_cacheEntries;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)self->_cacheEntries setObject:0 forKeyedSubscript:keyCopy];
  objc_sync_exit(v4);
}

- (unint64_t)count
{
  v3 = self->_cacheEntries;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_cacheEntries count];
  objc_sync_exit(v3);

  return v4;
}

- (id)entryForKey:(id)key
{
  v3 = [(SFCache *)self _entryForKey:key];
  v4 = v3;
  if (v3)
  {
    item = [v3 item];
  }

  else
  {
    item = 0;
  }

  return item;
}

- (void)addEntry:(id)entry forKey:(id)key
{
  entryCopy = entry;
  keyCopy = key;
  v7 = [(SFCache *)self _entryForKey:keyCopy];
  v8 = v7;
  if (v7)
  {
    item = [v7 item];
    v10 = [entryCopy isEqual:item];

    if ((v10 & 1) == 0)
    {
      [(SFCache *)self _removeCacheEntryWithKey:keyCopy];
    }
  }

  v11 = [[SFCacheEntry alloc] initWithCacheItem:entryCopy];
  [(SFCache *)self _insertCacheEntry:v11 forKey:keyCopy];
}

@end