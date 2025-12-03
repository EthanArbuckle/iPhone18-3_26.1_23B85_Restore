@interface PLCache
- (PLCache)initWithCountLimit:(int64_t)limit totalCostLimit:(int64_t)costLimit;
- (id)objectForKey:(id)key;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key cost:(int64_t)cost;
@end

@implementation PLCache

- (void)removeAllObjects
{
  selfCopy = self;
  pthread_mutex_lock(&self->_lock);
  [(NSMutableDictionary *)selfCopy->_cacheEntries removeAllObjects];
  p_lock = &selfCopy->_lock;
  selfCopy->_lru.tqh_first = 0;
  selfCopy = (selfCopy + 112);
  selfCopy->_cacheEntries = selfCopy;
  selfCopy[-1]._currentCost = 0;
  *selfCopy[-1]._lock.__opaque = 0;

  pthread_mutex_unlock(p_lock);
}

- (void)removeObjectForKey:(id)key
{
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_cacheEntries objectForKey:key];
  if (v5)
  {
    lruListEntry = [v5 lruListEntry];
    v7 = lruListEntry[3];
    p_tqh_last = &self->_lru.tqh_last;
    --self->_currentCount;
    v10 = lruListEntry[1];
    v9 = lruListEntry[2];
    if (v9)
    {
      p_tqh_last = &v9->var2.var1;
    }

    *p_tqh_last = v7;
    *v7 = v9;
    self->_currentCost -= v10;
    [(NSMutableDictionary *)self->_cacheEntries removeObjectForKey:key];
  }

  pthread_mutex_unlock(&self->_lock);
}

- (void)setObject:(id)object forKey:(id)key cost:(int64_t)cost
{
  pthread_mutex_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_cacheEntries objectForKey:key];
  if (v9)
  {
    v10 = v9;
    lruListEntry = [(PLCacheEntry *)v9 lruListEntry];
    v12 = *(lruListEntry + 16);
    v13 = *(lruListEntry + 24);
    p_tqh_last = &self->_lru.tqh_last;
    if (v12)
    {
      p_tqh_last = &v12->var2.var1;
    }

    *p_tqh_last = v13;
    *v13 = v12;
  }

  else
  {
    v10 = objc_alloc_init(PLCacheEntry);
    [(NSMutableDictionary *)self->_cacheEntries setObject:v10 forKey:key];

    ++self->_currentCount;
    lruListEntry = [(PLCacheEntry *)v10 lruListEntry];
    *lruListEntry = key;
  }

  [(PLCacheEntry *)v10 setObject:object];
  tqh_last = self->_lru.tqh_last;
  self->_currentCost += cost - *(lruListEntry + 8);
  *(lruListEntry + 8) = cost;
  *(lruListEntry + 16) = 0;
  *(lruListEntry + 24) = tqh_last;
  *tqh_last = lruListEntry;
  self->_lru.tqh_last = (lruListEntry + 16);
  tqh_first = self->_lru.tqh_first;
  if (tqh_first)
  {
    do
    {
      var0 = tqh_first->var2.var0;
      currentCount = self->_currentCount;
      currentCost = self->_currentCost;
      if (currentCount <= self->_countLimit && currentCost <= self->_totalCostLimit)
      {
        break;
      }

      var1 = tqh_first->var2.var1;
      p_var1 = &var0->var2.var1;
      if (!var0)
      {
        p_var1 = &self->_lru.tqh_last;
      }

      *p_var1 = var1;
      *var1 = var0;
      self->_currentCount = currentCount - 1;
      v22 = tqh_first->var0;
      self->_currentCost = currentCost - tqh_first->var1;
      [(NSMutableDictionary *)self->_cacheEntries removeObjectForKey:v22];
      tqh_first = var0;
    }

    while (var0);
  }

  pthread_mutex_unlock(&self->_lock);
}

- (id)objectForKey:(id)key
{
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_cacheEntries objectForKey:key];
  object = v5;
  if (v5)
  {
    lruListEntry = [v5 lruListEntry];
    v8 = (lruListEntry + 16);
    v9 = *(lruListEntry + 16);
    v10 = *(lruListEntry + 24);
    p_tqh_last = &self->_lru.tqh_last;
    if (v9)
    {
      p_tqh_last = &v9->var2.var1;
    }

    *p_tqh_last = v10;
    *v10 = v9;
    *v8 = 0;
    tqh_last = self->_lru.tqh_last;
    *(lruListEntry + 24) = tqh_last;
    *tqh_last = lruListEntry;
    self->_lru.tqh_last = v8;
    object = [object object];
    v13 = object;
  }

  pthread_mutex_unlock(&self->_lock);
  return object;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = PLCache;
  [(PLCache *)&v3 dealloc];
}

- (PLCache)initWithCountLimit:(int64_t)limit totalCostLimit:(int64_t)costLimit
{
  v8.receiver = self;
  v8.super_class = PLCache;
  v6 = [(PLCache *)&v8 init];
  if (v6)
  {
    v6->_cacheEntries = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
    v6->_countLimit = limit;
    v6->_totalCostLimit = costLimit;
    pthread_mutex_init(&v6->_lock, 0);
    v6->_lru.tqh_first = 0;
    v6->_lru.tqh_last = &v6->_lru.tqh_first;
  }

  return v6;
}

@end