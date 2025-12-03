@interface PVInputBitmapCache
- (PVInputBitmapCache)init;
- (id)objectForKey:(id)key;
- (void)dealloc;
- (void)didRecieveMemoryWarning:(id)warning;
- (void)purge:(BOOL)purge;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation PVInputBitmapCache

- (PVInputBitmapCache)init
{
  v7.receiver = self;
  v7.super_class = PVInputBitmapCache;
  v2 = [(PVInputBitmapCache *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cache = v2->_cache;
    v2->_cache = v3;

    v2->_countLimit = 3;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_didRecieveMemoryWarning_ name:*MEMORY[0x277D76670] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76670] object:0];

  v4.receiver = self;
  v4.super_class = PVInputBitmapCache;
  [(PVInputBitmapCache *)&v4 dealloc];
}

- (void)setObject:(id)object forKey:(id)key
{
  [(NSMutableDictionary *)self->_cache setObject:object forKey:key];

  [(PVInputBitmapCache *)self purge:0];
}

- (id)objectForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_cache objectForKey:key];

  return v3;
}

- (void)purge:(BOOL)purge
{
  purgeCopy = purge;
  v29 = *MEMORY[0x277D85DE8];
  p_cache = &self->_cache;
  v6 = [(NSMutableDictionary *)self->_cache keysSortedByValueUsingComparator:&__block_literal_global_7];
  if ([(NSMutableDictionary *)*p_cache count]> self->_countLimit || purgeCopy)
  {
    cache = self->_cache;
    if (purgeCopy)
    {
      v9 = [(NSMutableDictionary *)cache count];
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = [(NSMutableDictionary *)cache count]- self->_countLimit;
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    for (i = 0; i != v9; ++i)
    {
      v11 = self->_cache;
      v12 = [v6 objectAtIndexedSubscript:i];
      [(NSMutableDictionary *)v11 removeObjectForKey:v12];
    }
  }

LABEL_11:
  date = [MEMORY[0x277CBEAA8] date];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = *v25;
    while (2)
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v24 + 1) + 8 * j);
        v19 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v18, v24];
        v20 = v19;
        if (v19)
        {
          lastUsedTime = [v19 lastUsedTime];
          [date timeIntervalSinceDate:lastUsedTime];
          v23 = v22;

          if (v23 <= 1.0)
          {

            goto LABEL_23;
          }

          [(NSMutableDictionary *)self->_cache removeObjectForKey:v18];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:
}

uint64_t __28__PVInputBitmapCache_purge___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastUsedTime];
  v6 = [v4 lastUsedTime];
  v7 = [v5 compare:v6];

  return v7;
}

- (void)didRecieveMemoryWarning:(id)warning
{
  [sInputBitmapCacheLock lock];
  [(PVInputBitmapCache *)self purge:1];
  v4 = sInputBitmapCacheLock;

  [v4 unlock];
}

@end