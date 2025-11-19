@interface PMObjectCache
+ (id)sharedInstance;
+ (void)releaseSharedInstance;
- (PMObjectCache)initWithCacheSize:(unint64_t)a3;
- (id)copyObjectForKeyImpl:(id)a3 cost:(double *)a4 updateAccessTime:(BOOL)a5;
- (int)addObject:(id)a3 cacheKey:(id)a4 size:(unint64_t)a5 cost:(double)a6 retDidAddObject:(BOOL *)a7;
- (unint64_t)getCacheMemoryUsed;
- (unint64_t)getCacheSize;
- (void)clearCache;
- (void)dealloc;
- (void)removeObjectForKey:(id)a3;
- (void)reserveCacheMemory:(int64_t)a3;
- (void)setCacheSize:(unint64_t)a3;
@end

@implementation PMObjectCache

+ (id)sharedInstance
{
  result = s_sharedInstance;
  if (!s_sharedInstance)
  {
    result = [[PMObjectCache alloc] initWithCacheSize:1024];
    s_sharedInstance = result;
  }

  return result;
}

+ (void)releaseSharedInstance
{
  if (s_sharedInstance)
  {
    [s_sharedInstance shutdownCache];

    s_sharedInstance = 0;
  }
}

- (PMObjectCache)initWithCacheSize:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PMObjectCache;
  v4 = [(PMObjectCache *)&v6 init];
  if (v4)
  {
    v4->_cacheLock = objc_opt_new();
    v4->_purgesInProgress = 0;
    v4->_mapTable = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0x10000 valueOptions:0];
    v4->_currentSize = 0;
    v4->_setSize = a3;
    v4->_maxSize = a3;
    v4->_reservedMemory = 0;
  }

  return v4;
}

- (void)dealloc
{
  if (s_sharedInstance == self)
  {
    s_sharedInstance = 0;
  }

  __dmb(0xBu);
  [(NSRecursiveLock *)self->_cacheLock lock];
  [(NSMapTable *)self->_mapTable removeAllObjects];

  self->_mapTable = 0;
  [(NSRecursiveLock *)self->_cacheLock unlock];

  v3.receiver = self;
  v3.super_class = PMObjectCache;
  [(PMObjectCache *)&v3 dealloc];
}

- (unint64_t)getCacheMemoryUsed
{
  [(NSRecursiveLock *)self->_cacheLock lock];
  v3 = [(PMObjectCache *)self currentSize];
  [(NSRecursiveLock *)self->_cacheLock unlock];
  return v3;
}

- (unint64_t)getCacheSize
{
  [(NSRecursiveLock *)self->_cacheLock lock];
  setSize = self->_setSize;
  [(NSRecursiveLock *)self->_cacheLock unlock];
  return setSize;
}

- (void)setCacheSize:(unint64_t)a3
{
  [(NSRecursiveLock *)self->_cacheLock lock];
  if (a3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3;
  }

  self->_setSize = v5;
  self->_maxSize = v5;
  cacheLock = self->_cacheLock;

  [(NSRecursiveLock *)cacheLock unlock];
}

- (int)addObject:(id)a3 cacheKey:(id)a4 size:(unint64_t)a5 cost:(double)a6 retDidAddObject:(BOOL *)a7
{
  *a7 = 0;
  result = -50;
  if (a3 && a4)
  {
    [(NSRecursiveLock *)self->_cacheLock lock];
    v14 = [(NSMapTable *)self->_mapTable objectForKey:a4];
    if (v14)
    {
      [v14 setLastAccess:self->_numberOfCalls];
    }

    else
    {
      v15 = [[PMObjectCacheEntry alloc] initWithKey:a4 cacheItem:a3 size:a5 cost:self forCache:a6];
      [(PMObjectCacheEntry *)v15 setValue:self->_numberOfCalls cost:self->_setSize maxCacheSize:a6];
      *&v16 = self->_responseRate;
      *&v17 = self->_penalty;
      [(PMObjectCacheEntry *)v15 resetValue:self->_numberOfCalls responseRate:v16 penalty:v17];
      [(NSMapTable *)self->_mapTable setObject:v15 forKey:a4];
      self->_currentSize += a5;
      *a7 = 1;
    }

    ++self->_numberOfCalls;
    [(NSRecursiveLock *)self->_cacheLock unlock];
    return 0;
  }

  return result;
}

- (id)copyObjectForKeyImpl:(id)a3 cost:(double *)a4 updateAccessTime:(BOOL)a5
{
  v5 = a3;
  if (a3)
  {
    v6 = a5;
    [(NSRecursiveLock *)self->_cacheLock lock];
    v9 = [(NSMapTable *)self->_mapTable objectForKey:v5];
    if (v9)
    {
      v10 = v9;
      v5 = [v9 getItem];
      if (a4)
      {
        [v10 cost];
        *a4 = v11;
      }

      if (v6)
      {
        [v10 setLastAccess:self->_numberOfCalls++];
      }
    }

    else
    {
      v5 = 0;
    }

    [(NSRecursiveLock *)self->_cacheLock unlock];
  }

  return v5;
}

- (void)removeObjectForKey:(id)a3
{
  if (a3)
  {
    [(NSRecursiveLock *)self->_cacheLock lock];
    v5 = [(NSMapTable *)self->_mapTable objectForKey:a3];
    if (v5)
    {
      self->_currentSize -= [v5 getSize];
      [(NSMapTable *)self->_mapTable removeObjectForKey:a3];
    }

    cacheLock = self->_cacheLock;

    [(NSRecursiveLock *)cacheLock unlock];
  }
}

- (void)clearCache
{
  [(NSRecursiveLock *)self->_cacheLock lock];
  [(NSMapTable *)self->_mapTable removeAllObjects];
  self->_currentSize = 0;
  cacheLock = self->_cacheLock;

  [(NSRecursiveLock *)cacheLock unlock];
}

- (void)reserveCacheMemory:(int64_t)a3
{
  [(NSRecursiveLock *)self->_cacheLock lock];
  self->_reservedMemory += a3;
  cacheLock = self->_cacheLock;

  [(NSRecursiveLock *)cacheLock unlock];
}

@end