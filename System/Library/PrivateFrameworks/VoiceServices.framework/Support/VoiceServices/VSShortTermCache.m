@interface VSShortTermCache
+ (id)sharedInstance;
- (VSShortTermCache)init;
- (id)objectForKey:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4 timeToLive:(double)a5;
- (void)timeToLiveTimerFired:(id)a3;
@end

@implementation VSShortTermCache

- (void)removeAllObjects
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(VSShortTermCache *)self cacheTimer];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v8 = [(VSShortTermCache *)self cacheTimer];
  [v8 removeAllObjects];

  v9 = [(VSShortTermCache *)self cache];
  [v9 removeAllObjects];

  v10 = VSGetLogDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Removed short term cache for all keys", v12, 2u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(VSShortTermCache *)self cache];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)removeObjectForKey:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VSShortTermCache *)self cache];
  [v5 removeObjectForKey:v4];

  v6 = [(VSShortTermCache *)self cacheTimer];
  v7 = [v6 objectForKey:v4];

  [v7 invalidate];
  v8 = [(VSShortTermCache *)self cacheTimer];
  [v8 removeObjectForKey:v4];

  v9 = VSGetLogDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_INFO, "Removed short term cache for key:'%@'", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)timeToLiveTimerFired:(id)a3
{
  v5 = a3;
  v4 = [v5 userInfo];
  [(VSShortTermCache *)self removeObjectForKey:v4];

  [v5 invalidate];
}

- (void)setObject:(id)a3 forKey:(id)a4 timeToLive:(double)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(VSShortTermCache *)self cacheTimer];
  v11 = [v10 objectForKey:v9];
  [v11 invalidate];

  v12 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel_timeToLiveTimerFired_ selector:v9 userInfo:0 repeats:a5];
  v13 = [(VSShortTermCache *)self cache];
  [v13 setObject:v8 forKey:v9];

  v14 = [(VSShortTermCache *)self cacheTimer];
  [v14 setObject:v12 forKey:v9];

  v15 = VSGetLogDefault();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v18 = 138412546;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_2727E4000, v15, OS_LOG_TYPE_INFO, "Added short term cache:%@ for key:'%@'", &v18, 0x16u);
  }

  v16 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v16 addTimer:v12 forMode:*MEMORY[0x277CBE640]];

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