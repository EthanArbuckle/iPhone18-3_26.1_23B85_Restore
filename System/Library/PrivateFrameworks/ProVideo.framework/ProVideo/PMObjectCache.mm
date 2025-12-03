@interface PMObjectCache
+ (id)sharedInstance;
+ (void)releaseSharedInstance;
- (PMObjectCache)initWithCacheSize:(unint64_t)size;
- (id)copyObjectForKeyImpl:(id)impl cost:(double *)cost updateAccessTime:(BOOL)time;
- (int)addObject:(id)object cacheKey:(id)key size:(unint64_t)size cost:(double)cost retDidAddObject:(BOOL *)addObject;
- (unint64_t)getCacheMemoryUsed;
- (unint64_t)getCacheSize;
- (void)clearCache;
- (void)dealloc;
- (void)removeObjectForKey:(id)key;
- (void)reserveCacheMemory:(int64_t)memory;
- (void)setCacheSize:(unint64_t)size;
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

- (PMObjectCache)initWithCacheSize:(unint64_t)size
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
    v4->_setSize = size;
    v4->_maxSize = size;
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
  currentSize = [(PMObjectCache *)self currentSize];
  [(NSRecursiveLock *)self->_cacheLock unlock];
  return currentSize;
}

- (unint64_t)getCacheSize
{
  [(NSRecursiveLock *)self->_cacheLock lock];
  setSize = self->_setSize;
  [(NSRecursiveLock *)self->_cacheLock unlock];
  return setSize;
}

- (void)setCacheSize:(unint64_t)size
{
  [(NSRecursiveLock *)self->_cacheLock lock];
  if (size <= 1)
  {
    sizeCopy = 1;
  }

  else
  {
    sizeCopy = size;
  }

  self->_setSize = sizeCopy;
  self->_maxSize = sizeCopy;
  cacheLock = self->_cacheLock;

  [(NSRecursiveLock *)cacheLock unlock];
}

- (int)addObject:(id)object cacheKey:(id)key size:(unint64_t)size cost:(double)cost retDidAddObject:(BOOL *)addObject
{
  *addObject = 0;
  result = -50;
  if (object && key)
  {
    [(NSRecursiveLock *)self->_cacheLock lock];
    v14 = [(NSMapTable *)self->_mapTable objectForKey:key];
    if (v14)
    {
      [v14 setLastAccess:self->_numberOfCalls];
    }

    else
    {
      v15 = [[PMObjectCacheEntry alloc] initWithKey:key cacheItem:object size:size cost:self forCache:cost];
      [(PMObjectCacheEntry *)v15 setValue:self->_numberOfCalls cost:self->_setSize maxCacheSize:cost];
      *&v16 = self->_responseRate;
      *&v17 = self->_penalty;
      [(PMObjectCacheEntry *)v15 resetValue:self->_numberOfCalls responseRate:v16 penalty:v17];
      [(NSMapTable *)self->_mapTable setObject:v15 forKey:key];
      self->_currentSize += size;
      *addObject = 1;
    }

    ++self->_numberOfCalls;
    [(NSRecursiveLock *)self->_cacheLock unlock];
    return 0;
  }

  return result;
}

- (id)copyObjectForKeyImpl:(id)impl cost:(double *)cost updateAccessTime:(BOOL)time
{
  implCopy = impl;
  if (impl)
  {
    timeCopy = time;
    [(NSRecursiveLock *)self->_cacheLock lock];
    v9 = [(NSMapTable *)self->_mapTable objectForKey:implCopy];
    if (v9)
    {
      v10 = v9;
      implCopy = [v9 getItem];
      if (cost)
      {
        [v10 cost];
        *cost = v11;
      }

      if (timeCopy)
      {
        [v10 setLastAccess:self->_numberOfCalls++];
      }
    }

    else
    {
      implCopy = 0;
    }

    [(NSRecursiveLock *)self->_cacheLock unlock];
  }

  return implCopy;
}

- (void)removeObjectForKey:(id)key
{
  if (key)
  {
    [(NSRecursiveLock *)self->_cacheLock lock];
    v5 = [(NSMapTable *)self->_mapTable objectForKey:key];
    if (v5)
    {
      self->_currentSize -= [v5 getSize];
      [(NSMapTable *)self->_mapTable removeObjectForKey:key];
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

- (void)reserveCacheMemory:(int64_t)memory
{
  [(NSRecursiveLock *)self->_cacheLock lock];
  self->_reservedMemory += memory;
  cacheLock = self->_cacheLock;

  [(NSRecursiveLock *)cacheLock unlock];
}

@end