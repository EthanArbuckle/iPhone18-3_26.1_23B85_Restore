@interface STReferenceCountedCache
- (STReferenceCountedCache)init;
- (id)cachedObjectForKey:(id)a3;
- (uint64_t)_referenceCountForKey:(uint64_t)result;
- (void)cacheObject:(id)a3 forKey:(id)a4;
- (void)clearObjectForKey:(id)a3;
- (void)decrementReferenceCountForKey:(id)a3;
- (void)incrementReferenceCountForKey:(id)a3;
@end

@implementation STReferenceCountedCache

- (STReferenceCountedCache)init
{
  v8.receiver = self;
  v8.super_class = STReferenceCountedCache;
  v2 = [(STReferenceCountedCache *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    referenceCounts = v2->_referenceCounts;
    v2->_referenceCounts = v5;
  }

  return v2;
}

- (void)cacheObject:(id)a3 forKey:(id)a4
{
  if (self)
  {
    self = self->_cache;
  }

  [(STReferenceCountedCache *)self setObject:a3 forKey:a4];
}

- (id)cachedObjectForKey:(id)a3
{
  if (self)
  {
    self = self->_cache;
  }

  return [(STReferenceCountedCache *)self objectForKey:a3];
}

- (void)clearObjectForKey:(id)a3
{
  if (self)
  {
    [(NSMutableDictionary *)self->_cache removeObjectForKey:a3];
    referenceCounts = self->_referenceCounts;
  }

  else
  {
    [0 removeObjectForKey:a3];
    referenceCounts = 0;
  }

  [(NSMutableDictionary *)referenceCounts removeObjectForKey:a3];
}

- (void)incrementReferenceCountForKey:(id)a3
{
  v10 = a3;
  v4 = [(STReferenceCountedCache *)self cachedObjectForKey:?];

  if (v4)
  {
    v5 = [(STReferenceCountedCache *)self _referenceCountForKey:v10];
    if (self)
    {
      referenceCounts = self->_referenceCounts;
    }

    else
    {
      referenceCounts = 0;
    }

    v7 = MEMORY[0x277CCABB0];
    v8 = referenceCounts;
    v9 = [v7 numberWithInteger:v5 + 1];
    [(NSMutableDictionary *)v8 setObject:v9 forKey:v10];
  }
}

- (uint64_t)_referenceCountForKey:(uint64_t)result
{
  if (result)
  {
    v2 = [*(result + 16) objectForKey:a2];
    v3 = [v2 integerValue];

    return v3;
  }

  return result;
}

- (void)decrementReferenceCountForKey:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v4 = [(STReferenceCountedCache *)self cachedObjectForKey:?];

  if (v4)
  {
    v5 = [(STReferenceCountedCache *)self _referenceCountForKey:v20];
    if (v5 < 2)
    {
      v11 = self ? self->_referenceCounts : 0;
      [(NSMutableDictionary *)v11 removeObjectForKey:v20];
    }

    else
    {
      v6 = v5 - 1;
      v7 = self ? self->_referenceCounts : 0;
      v8 = MEMORY[0x277CCABB0];
      v9 = v7;
      v10 = [v8 numberWithInteger:v6];
      [(NSMutableDictionary *)v9 setObject:v10 forKey:v20];
    }

    if (self)
    {
      v12 = self->_cache;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = [(NSMutableDictionary *)v12 allKeys];
      v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v21 + 1) + 8 * i);
            if (![(STReferenceCountedCache *)self _referenceCountForKey:v18])
            {
              [(NSMutableDictionary *)v12 removeObjectForKey:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v15);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end