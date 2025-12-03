@interface VSShortTermCache
+ (id)sharedInstance;
- (VSShortTermCache)init;
- (id)objectForKey:(id)key;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key timeToLive:(double)live;
- (void)timeToLiveTimerFired:(id)fired;
@end

@implementation VSShortTermCache

- (void)removeAllObjects
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  cacheTimer = [(VSShortTermCache *)self cacheTimer];
  v4 = [cacheTimer countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(cacheTimer);
        }

        [*(*(&v13 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [cacheTimer countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  cacheTimer2 = [(VSShortTermCache *)self cacheTimer];
  [cacheTimer2 removeAllObjects];

  cache = [(VSShortTermCache *)self cache];
  [cache removeAllObjects];

  v10 = VSGetLogDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Removed short term cache for all keys", v12, 2u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  cache = [(VSShortTermCache *)self cache];
  v6 = [cache objectForKey:keyCopy];

  return v6;
}

- (void)removeObjectForKey:(id)key
{
  v13 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  cache = [(VSShortTermCache *)self cache];
  [cache removeObjectForKey:keyCopy];

  cacheTimer = [(VSShortTermCache *)self cacheTimer];
  v7 = [cacheTimer objectForKey:keyCopy];

  [v7 invalidate];
  cacheTimer2 = [(VSShortTermCache *)self cacheTimer];
  [cacheTimer2 removeObjectForKey:keyCopy];

  v9 = VSGetLogDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = keyCopy;
    _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_INFO, "Removed short term cache for key:'%@'", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)timeToLiveTimerFired:(id)fired
{
  firedCopy = fired;
  userInfo = [firedCopy userInfo];
  [(VSShortTermCache *)self removeObjectForKey:userInfo];

  [firedCopy invalidate];
}

- (void)setObject:(id)object forKey:(id)key timeToLive:(double)live
{
  v22 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  cacheTimer = [(VSShortTermCache *)self cacheTimer];
  v11 = [cacheTimer objectForKey:keyCopy];
  [v11 invalidate];

  v12 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel_timeToLiveTimerFired_ selector:keyCopy userInfo:0 repeats:live];
  cache = [(VSShortTermCache *)self cache];
  [cache setObject:objectCopy forKey:keyCopy];

  cacheTimer2 = [(VSShortTermCache *)self cacheTimer];
  [cacheTimer2 setObject:v12 forKey:keyCopy];

  v15 = VSGetLogDefault();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v18 = 138412546;
    v19 = objectCopy;
    v20 = 2112;
    v21 = keyCopy;
    _os_log_impl(&dword_2727E4000, v15, OS_LOG_TYPE_INFO, "Added short term cache:%@ for key:'%@'", &v18, 0x16u);
  }

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop addTimer:v12 forMode:*MEMORY[0x277CBE640]];

  v17 = *MEMORY[0x277D85DE8];
}

- (VSShortTermCache)init
{
  v8.receiver = self;
  v8.super_class = VSShortTermCache;
  v2 = [(VSShortTermCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cacheTimer = v2->_cacheTimer;
    v2->_cacheTimer = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_2267);
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __34__VSShortTermCache_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(VSShortTermCache);

  return MEMORY[0x2821F96F8]();
}

@end