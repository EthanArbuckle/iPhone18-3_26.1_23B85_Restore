@interface PLCache
- (PLCache)initWithCountLimit:(int64_t)a3 totalCostLimit:(int64_t)a4;
- (id)objectForKey:(id)a3;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4 cost:(int64_t)a5;
@end

@implementation PLCache

- (void)removeAllObjects
{
  v2 = self;
  pthread_mutex_lock(&self->_lock);
  [(NSMutableDictionary *)v2->_cacheEntries removeAllObjects];
  p_lock = &v2->_lock;
  v2->_lru.tqh_first = 0;
  v2 = (v2 + 112);
  v2->_cacheEntries = v2;
  v2[-1]._currentCost = 0;
  *v2[-1]._lock.__opaque = 0;

  pthread_mutex_unlock(p_lock);
}

- (void)removeObjectForKey:(id)a3
{
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_cacheEntries objectForKey:a3];
  if (v5)
  {
    v6 = [v5 lruListEntry];
    v7 = v6[3];
    p_tqh_last = &self->_lru.tqh_last;
    --self->_currentCount;
    v10 = v6[1];
    v9 = v6[2];
    if (v9)
    {
      p_tqh_last = &v9->var2.var1;
    }

    *p_tqh_last = v7;
    *v7 = v9;
    self->_currentCost -= v10;
    [(NSMutableDictionary *)self->_cacheEntries removeObjectForKey:a3];
  }

  pthread_mutex_unlock(&self->_lock);
}

- (void)setObject:(id)a3 forKey:(id)a4 cost:(int64_t)a5
{
  pthread_mutex_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_cacheEntries objectForKey:a4];
  if (v9)
  {
    v10 = v9;
    v11 = [(PLCacheEntry *)v9 lruListEntry];
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
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
    [(NSMutableDictionary *)self->_cacheEntries setObject:v10 forKey:a4];

    ++self->_currentCount;
    v11 = [(PLCacheEntry *)v10 lruListEntry];
    *v11 = a4;
  }

  [(PLCacheEntry *)v10 setObject:a3];
  tqh_last = self->_lru.tqh_last;
  self->_currentCost += a5 - *(v11 + 8);
  *(v11 + 8) = a5;
  *(v11 + 16) = 0;
  *(v11 + 24) = tqh_last;
  *tqh_last = v11;
  self->_lru.tqh_last = (v11 + 16);
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

- (id)objectForKey:(id)a3
{
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_cacheEntries objectForKey:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 lruListEntry];
    v8 = (v7 + 16);
    v9 = *(v7 + 16);
    v10 = *(v7 + 24);
    p_tqh_last = &self->_lru.tqh_last;
    if (v9)
    {
      p_tqh_last = &v9->var2.var1;
    }

    *p_tqh_last = v10;
    *v10 = v9;
    *v8 = 0;
    tqh_last = self->_lru.tqh_last;
    *(v7 + 24) = tqh_last;
    *tqh_last = v7;
    self->_lru.tqh_last = v8;
    v6 = [v6 object];
    v13 = v6;
  }

  pthread_mutex_unlock(&self->_lock);
  return v6;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = PLCache;
  [(PLCache *)&v3 dealloc];
}

- (PLCache)initWithCountLimit:(int64_t)a3 totalCostLimit:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = PLCache;
  v6 = [(PLCache *)&v8 init];
  if (v6)
  {
    v6->_cacheEntries = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
    v6->_countLimit = a3;
    v6->_totalCostLimit = a4;
    pthread_mutex_init(&v6->_lock, 0);
    v6->_lru.tqh_first = 0;
    v6->_lru.tqh_last = &v6->_lru.tqh_first;
  }

  return v6;
}

@end