@interface WFWeatherStoreCache
+ (BOOL)removeObjectsFromCache:(id)cache passingTest:(id)test;
+ (id)createCacheIfNecessary:(id)necessary error:(id *)error;
+ (id)wf_mainDomains;
- (BOOL)_concurrentQueue_barrier_loadDomain:(id)domain;
- (BOOL)_loadDomain:(id)domain;
- (WFWeatherStoreCache)init;
- (WFWeatherStoreCache)initWithURL:(id)l;
- (id)_dirtyCacheDomains;
- (id)_loadedCacheDomains;
- (id)cachedObjectWithinDomain:(id)domain forKey:(id)key staleness:(unint64_t)staleness;
- (void)_concurrentQueue_barrier_deleteOldDataFromCache;
- (void)_concurrentQueue_barrier_deleteOldDataFromCache:(id)cache allowedStaleness:(unint64_t)staleness;
- (void)_concurrentQueue_barrier_removeObjectWithinDomain:(id)domain forKey:(id)key;
- (void)_concurrentQueue_barrier_shrinkDomain:(id)domain;
- (void)_concurrentQueue_barrier_writeCacheDictionaryToFile;
- (void)_ensureDomainIsLoaded:(id)loaded;
- (void)_markDomainDirty:(id)dirty;
- (void)_shrinkDomain:(id)domain;
- (void)_startCacheStoreTimer;
- (void)_stopCacheStoreTimer;
- (void)cache:(id)cache withinDomain:(id)domain date:(id)date forKey:(id)key expiration:(id)expiration synchronous:(BOOL)synchronous;
- (void)cache:(id)cache withinDomain:(id)domain forKey:(id)key;
- (void)cache:(id)cache withinDomain:(id)domain forKey:(id)key expiration:(id)expiration;
- (void)dealloc;
- (void)deleteOldDataFromCache:(id)cache allowedStaleness:(unint64_t)staleness;
- (void)executeTransaction:(id)transaction;
- (void)removeAllObjects;
- (void)removeObjectWithinDomain:(id)domain forKey:(id)key;
- (void)writeCacheDictionaryToFile;
@end

@implementation WFWeatherStoreCache

+ (id)wf_mainDomains
{
  if (wf_mainDomains_onceToken != -1)
  {
    +[WFWeatherStoreCache wf_mainDomains];
  }

  v3 = wf_mainDomains_mainDomains;

  return v3;
}

void __37__WFWeatherStoreCache_wf_mainDomains__block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"almanac_data";
  v4[1] = @"forecasts";
  v4[2] = @"historical_data";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];
  v2 = [v0 setWithArray:v1];
  v3 = wf_mainDomains_mainDomains;
  wf_mainDomains_mainDomains = v2;
}

+ (id)createCacheIfNecessary:(id)necessary error:(id *)error
{
  necessaryCopy = necessary;
  v6 = WFLogForCategory(5uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[WFWeatherStoreCache createCacheIfNecessary:error:];
  }

  if (necessaryCopy)
  {
    if ([necessaryCopy wf_isInMemoryAddress])
    {
      v7 = WFLogForCategory(5uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [WFWeatherStoreCache createCacheIfNecessary:v7 error:?];
      }

      v8 = [objc_alloc(objc_opt_class()) initWithURL:necessaryCopy];
      goto LABEL_33;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    v11 = [defaultManager createDirectoryAtURL:necessaryCopy withIntermediateDirectories:1 attributes:0 error:&v26];
    v12 = v26;

    if ((v11 & 1) == 0)
    {
      v13 = WFLogForCategory(5uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[WFWeatherStoreCache createCacheIfNecessary:error:];
      }

      if (error)
      {
        v14 = v12;
        *error = v12;
      }
    }

    v25 = 0;
    v15 = [necessaryCopy checkResourceIsReachableAndReturnError:&v25];
    v16 = v25;
    if (v15)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      path = [necessaryCopy path];
      v19 = [defaultManager2 isWritableFileAtPath:path];

      v20 = WFLogForCategory(5uLL);
      v21 = v20;
      if (v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          +[WFWeatherStoreCache createCacheIfNecessary:error:];
        }

        v8 = [objc_alloc(objc_opt_class()) initWithURL:necessaryCopy];
        goto LABEL_32;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        +[WFWeatherStoreCache createCacheIfNecessary:error:];
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:513 userInfo:0];
        *error = v8 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v22 = WFLogForCategory(5uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        +[WFWeatherStoreCache createCacheIfNecessary:error:];
      }

      if (error)
      {
        v23 = v16;
        v8 = 0;
        *error = v16;
LABEL_32:

        goto LABEL_33;
      }
    }

    v8 = 0;
    goto LABEL_32;
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:513 userInfo:0];
  }

  v9 = WFLogForCategory(5uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [WFWeatherStoreCache createCacheIfNecessary:v9 error:?];
  }

  v8 = 0;
LABEL_33:

  return v8;
}

- (WFWeatherStoreCache)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Please use designated initializer initWithURL:" userInfo:0];
  objc_exception_throw(v2);
}

- (WFWeatherStoreCache)initWithURL:(id)l
{
  lCopy = l;
  if (!lCopy || (v6 = lCopy, ([lCopy isFileURL] & 1) == 0) && (objc_msgSend(v6, "wf_isInMemoryAddress") & 1) == 0)
  {
    v24 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"URL was invalid" userInfo:0];
    objc_exception_throw(v24);
  }

  if (([v6 wf_isInMemoryAddress] & 1) == 0)
  {
    v26 = 0;
    v18 = [v6 checkResourceIsReachableAndReturnError:&v26];
    v7 = v26;
    if (v18)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path = [v6 path];
      v21 = [defaultManager isWritableFileAtPath:path];

      if (v21)
      {
        goto LABEL_6;
      }

      v22 = WFLogForCategory(5uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [WFWeatherStoreCache initWithURL:];
      }
    }

    else
    {
      v22 = WFLogForCategory(5uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [WFWeatherStoreCache initWithURL:];
      }
    }

    selfCopy = 0;
    goto LABEL_16;
  }

  v7 = 0;
LABEL_6:
  v25.receiver = self;
  v25.super_class = WFWeatherStoreCache;
  v8 = [(WFWeatherStoreCache *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_URL, l);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.WeatherFoundation.cacheReadWriteQueue", v10);
    cacheConcurrentQueue = v9->_cacheConcurrentQueue;
    v9->_cacheConcurrentQueue = v11;

    v13 = objc_opt_new();
    cacheForDomain = v9->_cacheForDomain;
    v9->_cacheForDomain = v13;

    v15 = objc_opt_new();
    dirtyCacheDomains = v9->_dirtyCacheDomains;
    v9->_dirtyCacheDomains = v15;

    [(WFWeatherStoreCache *)v9 _startCacheStoreTimer];
  }

  self = v9;
  selfCopy = self;
LABEL_16:

  return selfCopy;
}

- (void)dealloc
{
  [(WFWeatherStoreCache *)self _stopCacheStoreTimer];
  v3.receiver = self;
  v3.super_class = WFWeatherStoreCache;
  [(WFWeatherStoreCache *)&v3 dealloc];
}

- (void)_startCacheStoreTimer
{
  [(WFWeatherStoreCache *)self _stopCacheStoreTimer];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WFWeatherStoreCache__startCacheStoreTimer__block_invoke;
  block[3] = &unk_279E6D9A8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __44__WFWeatherStoreCache__startCacheStoreTimer__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_writeCacheDictionaryToFile selector:0 userInfo:1 repeats:20.0];
  [*(a1 + 32) setCacheStoreTimer:v2];

  v3 = [*(a1 + 32) cacheStoreTimer];
  [v3 setTolerance:5.0];
}

- (void)_stopCacheStoreTimer
{
  if (self->_cacheStoreTimer)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__WFWeatherStoreCache__stopCacheStoreTimer__block_invoke;
    block[3] = &unk_279E6D9A8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __43__WFWeatherStoreCache__stopCacheStoreTimer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cacheStoreTimer];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setCacheStoreTimer:0];
}

- (void)deleteOldDataFromCache:(id)cache allowedStaleness:(unint64_t)staleness
{
  cacheCopy = cache;
  if (cacheCopy)
  {
    objc_initWeak(&location, self);
    cacheConcurrentQueue = [(WFWeatherStoreCache *)self cacheConcurrentQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__WFWeatherStoreCache_deleteOldDataFromCache_allowedStaleness___block_invoke;
    v8[3] = &unk_279E6D9D0;
    objc_copyWeak(v10, &location);
    v9 = cacheCopy;
    v10[1] = staleness;
    dispatch_barrier_sync(cacheConcurrentQueue, v8);

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }
}

void __63__WFWeatherStoreCache_deleteOldDataFromCache_allowedStaleness___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _concurrentQueue_barrier_deleteOldDataFromCache:*(a1 + 32) allowedStaleness:*(a1 + 48)];
}

- (void)writeCacheDictionaryToFile
{
  v3 = WFLogForCategory(5uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272B94000, v3, OS_LOG_TYPE_INFO, "write cache to file", buf, 2u);
  }

  cacheConcurrentQueue = [(WFWeatherStoreCache *)self cacheConcurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WFWeatherStoreCache_writeCacheDictionaryToFile__block_invoke;
  block[3] = &unk_279E6D9A8;
  block[4] = self;
  dispatch_barrier_sync(cacheConcurrentQueue, block);
}

- (void)_concurrentQueue_barrier_writeCacheDictionaryToFile
{
  v3 = [(WFWeatherStoreCache *)self URL];
  if (([v3 wf_isInMemoryAddress] & 1) == 0)
  {
    v4 = WFLogForCategory(5uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [WFWeatherStoreCache _concurrentQueue_barrier_writeCacheDictionaryToFile];
    }

    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = __Block_byref_object_copy_;
    v13[4] = __Block_byref_object_dispose_;
    cacheForDomain = [(WFWeatherStoreCache *)self cacheForDomain];
    [(WFWeatherStoreCache *)self _concurrentQueue_barrier_deleteOldDataFromCache];
    dirtyCacheDomains = [(WFWeatherStoreCache *)self dirtyCacheDomains];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __74__WFWeatherStoreCache__concurrentQueue_barrier_writeCacheDictionaryToFile__block_invoke;
    v10 = &unk_279E6D9F8;
    v12 = v13;
    v11 = v3;
    [dirtyCacheDomains enumerateObjectsUsingBlock:&v7];

    v6 = [(WFWeatherStoreCache *)self dirtyCacheDomains:v7];
    [v6 removeAllObjects];

    _Block_object_dispose(v13, 8);
  }
}

void __74__WFWeatherStoreCache__concurrentQueue_barrier_writeCacheDictionaryToFile__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v3];
  v5 = [*(a1 + 32) URLByAppendingPathComponent:v3];
  v6 = [v5 URLByAppendingPathExtension:@"plist"];

  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
  v12 = 0;
  v8 = [v7 writeToURL:v6 options:1 error:&v12];
  v9 = v12;
  v10 = WFLogForCategory(5uLL);
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __74__WFWeatherStoreCache__concurrentQueue_barrier_writeCacheDictionaryToFile__block_invoke_cold_2();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __74__WFWeatherStoreCache__concurrentQueue_barrier_writeCacheDictionaryToFile__block_invoke_cold_1();
  }
}

+ (BOOL)removeObjectsFromCache:(id)cache passingTest:(id)test
{
  cacheCopy = cache;
  testCopy = test;
  v7 = [cacheCopy objectForKey:@"values"];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __58__WFWeatherStoreCache_removeObjectsFromCache_passingTest___block_invoke;
  v23 = &unk_279E6DA20;
  v25 = testCopy;
  v8 = cacheCopy;
  v24 = v8;
  v9 = testCopy;
  v10 = [v7 keysOfEntriesPassingTest:&v20];

  v11 = [v10 count];
  if (v11)
  {
    v12 = WFLogForCategory(5uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      +[WFWeatherStoreCache removeObjectsFromCache:passingTest:];
    }

    v13 = [v8 objectForKeyedSubscript:@"values"];
    allObjects = [v10 allObjects];
    [v13 removeObjectsForKeys:allObjects];

    v15 = [v8 objectForKeyedSubscript:@"dates"];
    allObjects2 = [v10 allObjects];
    [v15 removeObjectsForKeys:allObjects2];

    v17 = [v8 objectForKeyedSubscript:@"WFWeatherStoreCacheRecordExpirationDate"];
    allObjects3 = [v10 allObjects];
    [v17 removeObjectsForKeys:allObjects3];
  }

  return v11 != 0;
}

uint64_t __58__WFWeatherStoreCache_removeObjectsFromCache_passingTest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 conformsToProtocol:&unk_288255930])
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) objectForKeyedSubscript:@"dates"];
    v9 = [v8 objectForKeyedSubscript:v5];
    v10 = (*(v7 + 16))(v7, v5, v9, v6);
  }

  else
  {
    v11 = WFLogForCategory(5uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __58__WFWeatherStoreCache_removeObjectsFromCache_passingTest___block_invoke_cold_1();
    }

    v10 = 1;
  }

  return v10;
}

- (id)cachedObjectWithinDomain:(id)domain forKey:(id)key staleness:(unint64_t)staleness
{
  domainCopy = domain;
  keyCopy = key;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  [(WFWeatherStoreCache *)self _ensureDomainIsLoaded:domainCopy];
  v10 = self->_cacheForDomain;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  cacheConcurrentQueue = [(WFWeatherStoreCache *)self cacheConcurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__WFWeatherStoreCache_cachedObjectWithinDomain_forKey_staleness___block_invoke;
  block[3] = &unk_279E6DA48;
  v12 = v10;
  v24 = v12;
  v13 = domainCopy;
  v25 = v13;
  v27 = &v34;
  v14 = keyCopy;
  v26 = v14;
  v28 = &v30;
  stalenessCopy = staleness;
  dispatch_sync(cacheConcurrentQueue, block);

  if (*(v31 + 24) == 1)
  {
    objc_initWeak(&location, self);
    cacheConcurrentQueue2 = [(WFWeatherStoreCache *)self cacheConcurrentQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __65__WFWeatherStoreCache_cachedObjectWithinDomain_forKey_staleness___block_invoke_67;
    v18[3] = &unk_279E6DA70;
    objc_copyWeak(&v21, &location);
    v19 = v13;
    v20 = v14;
    dispatch_barrier_async(cacheConcurrentQueue2, v18);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  v16 = v35[5];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  return v16;
}

void __65__WFWeatherStoreCache_cachedObjectWithinDomain_forKey_staleness___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 objectForKeyedSubscript:@"dates"];

  v5 = [*(a1 + 32) objectForKeyedSubscript:*v2];
  v6 = [v5 objectForKeyedSubscript:@"WFWeatherStoreCacheRecordExpirationDate"];

  v7 = [*(a1 + 32) objectForKeyedSubscript:*v2];
  v8 = [v7 objectForKeyedSubscript:@"values"];

  v9 = (a1 + 48);
  v10 = [v8 objectForKeyedSubscript:*(a1 + 48)];
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [v6 objectForKeyedSubscript:*(a1 + 48)];
  if (v13)
  {
    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [v13 compare:v14];

    if (v15 == -1)
    {
      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = 0;

      *(*(*(a1 + 64) + 8) + 24) = 1;
      v18 = WFLogForCategory(5uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v28 = *v9;
        v29 = *v2;
        v26 = [MEMORY[0x277CBEAA8] date];
        [v26 timeIntervalSinceDate:v13];
        *buf = 138412802;
        v31 = v28;
        v32 = 2112;
        v33 = v29;
        v34 = 2048;
        v35 = v27;
        _os_log_debug_impl(&dword_272B94000, v18, OS_LOG_TYPE_DEBUG, "Removing Stale Cache @ key %@ / domain %@.  Expired approx %f seconds ago.", buf, 0x20u);
      }
    }
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    if (*(a1 + 72) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v19 = [v4 objectForKeyedSubscript:*(a1 + 48)];
    v20 = *(a1 + 72);
    [v19 timeIntervalSinceNow];
    if (!v19 || !v20 || (v22 = v21 / 60.0, v22 < 0.0) && -v22 >= v20)
    {
      v23 = *(*(a1 + 56) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = 0;

      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    if (*(*(*(a1 + 56) + 8) + 40))
    {
LABEL_14:
      v25 = WFLogForCategory(5uLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __65__WFWeatherStoreCache_cachedObjectWithinDomain_forKey_staleness___block_invoke_cold_1(v9, v2, v25);
      }
    }
  }
}

void __65__WFWeatherStoreCache_cachedObjectWithinDomain_forKey_staleness___block_invoke_67(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _concurrentQueue_barrier_removeObjectWithinDomain:*(a1 + 32) forKey:*(a1 + 40)];
}

- (void)cache:(id)cache withinDomain:(id)domain forKey:(id)key
{
  keyCopy = key;
  domainCopy = domain;
  cacheCopy = cache;
  v11 = WFLogForCategory(5uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_272B94000, v11, OS_LOG_TYPE_INFO, "caching weather objects", v13, 2u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [(WFWeatherStoreCache *)self cache:cacheCopy withinDomain:domainCopy date:date forKey:keyCopy expiration:0 synchronous:0];
}

- (void)cache:(id)cache withinDomain:(id)domain forKey:(id)key expiration:(id)expiration
{
  v10 = MEMORY[0x277CBEAA8];
  expirationCopy = expiration;
  keyCopy = key;
  domainCopy = domain;
  cacheCopy = cache;
  date = [v10 date];
  [(WFWeatherStoreCache *)self cache:cacheCopy withinDomain:domainCopy date:date forKey:keyCopy expiration:expirationCopy synchronous:0];
}

- (void)cache:(id)cache withinDomain:(id)domain date:(id)date forKey:(id)key expiration:(id)expiration synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  v44 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  domainCopy = domain;
  dateCopy = date;
  keyCopy = key;
  expirationCopy = expiration;
  if (!dateCopy)
  {
    v29 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Cannot cache w/o date" userInfo:0];
    objc_exception_throw(v29);
  }

  v19 = expirationCopy;
  if (expirationCopy && ([MEMORY[0x277CBEAA8] date], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "compare:", v20), v20, v21 == -1))
  {
    v25 = WFLogForCategory(5uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v39 = keyCopy;
      v40 = 2112;
      v41 = domainCopy;
      v42 = 2112;
      v43 = v19;
      _os_log_debug_impl(&dword_272B94000, v25, OS_LOG_TYPE_DEBUG, "Unable to cache key '%@' within domain '%@':  Expiration date '%@' is already expired.", buf, 0x20u);
    }
  }

  else
  {
    [(WFWeatherStoreCache *)self _ensureDomainIsLoaded:domainCopy];
    dirtyCacheDomains = [(WFWeatherStoreCache *)self dirtyCacheDomains];
    cacheForDomain = [(WFWeatherStoreCache *)self cacheForDomain];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __77__WFWeatherStoreCache_cache_withinDomain_date_forKey_expiration_synchronous___block_invoke;
    v30[3] = &unk_279E6DA98;
    v31 = cacheForDomain;
    v32 = domainCopy;
    v33 = v19;
    v34 = keyCopy;
    v35 = dateCopy;
    v36 = cacheCopy;
    v37 = dirtyCacheDomains;
    v24 = dirtyCacheDomains;
    v25 = cacheForDomain;
    v26 = MEMORY[0x2743D5580](v30);
    cacheConcurrentQueue = [(WFWeatherStoreCache *)self cacheConcurrentQueue];
    v28 = cacheConcurrentQueue;
    if (synchronousCopy)
    {
      dispatch_barrier_sync(cacheConcurrentQueue, v26);
    }

    else
    {
      dispatch_barrier_async(cacheConcurrentQueue, v26);
    }
  }
}

void __77__WFWeatherStoreCache_cache_withinDomain_date_forKey_expiration_synchronous___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = a1 + 40;
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 objectForKeyedSubscript:@"values"];
  v5 = [v3 objectForKeyedSubscript:@"dates"];
  v6 = [v3 objectForKeyedSubscript:@"WFWeatherStoreCacheRecordExpirationDate"];
  v7 = v6;
  v8 = *(v2 + 8);
  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:*(a1 + 56)];
  }

  [v5 setObject:*(a1 + 64) forKeyedSubscript:*(a1 + 56)];
  [v4 setObject:*(a1 + 72) forKeyedSubscript:*(a1 + 56)];
  v9 = WFLogForCategory(5uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 48);
    v17 = *(a1 + 56);
    v19 = *(a1 + 40);
    v20 = 138412802;
    v21 = v17;
    v22 = 2112;
    v23 = v19;
    v24 = 2112;
    v25 = v18;
    _os_log_debug_impl(&dword_272B94000, v9, OS_LOG_TYPE_DEBUG, "Successfully cached key '%@' within domain '%@'.  Expires %@", &v20, 0x20u);
  }

  v10 = WFLogForCategory(5uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __77__WFWeatherStoreCache_cache_withinDomain_date_forKey_expiration_synchronous___block_invoke_cold_1(v2, v10, v11, v12, v13, v14, v15, v16);
  }

  [*(a1 + 80) addObject:*(a1 + 40)];
}

- (void)removeObjectWithinDomain:(id)domain forKey:(id)key
{
  domainCopy = domain;
  keyCopy = key;
  [(WFWeatherStoreCache *)self _ensureDomainIsLoaded:domainCopy];
  objc_initWeak(&location, self);
  cacheConcurrentQueue = self->_cacheConcurrentQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__WFWeatherStoreCache_removeObjectWithinDomain_forKey___block_invoke;
  v11[3] = &unk_279E6DA70;
  objc_copyWeak(&v14, &location);
  v12 = domainCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = domainCopy;
  dispatch_barrier_sync(cacheConcurrentQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __55__WFWeatherStoreCache_removeObjectWithinDomain_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _concurrentQueue_barrier_removeObjectWithinDomain:*(a1 + 32) forKey:*(a1 + 40)];
}

- (void)removeAllObjects
{
  cacheConcurrentQueue = [(WFWeatherStoreCache *)self cacheConcurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__WFWeatherStoreCache_removeAllObjects__block_invoke;
  block[3] = &unk_279E6D9A8;
  block[4] = self;
  dispatch_barrier_async(cacheConcurrentQueue, block);
}

uint64_t __39__WFWeatherStoreCache_removeAllObjects__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cacheForDomain];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) dirtyCacheDomains];
  [v3 removeAllObjects];

  v4 = *(a1 + 32);

  return [v4 _concurrentQueue_barrier_writeCacheDictionaryToFile];
}

- (void)executeTransaction:(id)transaction
{
  (*(transaction + 2))(transaction, self);
  v4 = WFLogForCategory(5uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [WFWeatherStoreCache executeTransaction:v4];
  }

  [(WFWeatherStoreCache *)self writeCacheDictionaryToFile];
}

- (void)_shrinkDomain:(id)domain
{
  domainCopy = domain;
  if (domainCopy)
  {
    objc_initWeak(&location, self);
    cacheConcurrentQueue = [(WFWeatherStoreCache *)self cacheConcurrentQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__WFWeatherStoreCache__shrinkDomain___block_invoke;
    block[3] = &unk_279E6DAC0;
    objc_copyWeak(&v8, &location);
    v7 = domainCopy;
    dispatch_barrier_sync(cacheConcurrentQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __37__WFWeatherStoreCache__shrinkDomain___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _concurrentQueue_barrier_shrinkDomain:*(a1 + 32)];
}

- (void)_concurrentQueue_barrier_shrinkDomain:(id)domain
{
  domainCopy = domain;
  if (domainCopy)
  {
    cacheForDomain = [(WFWeatherStoreCache *)self cacheForDomain];
    v6 = [cacheForDomain objectForKeyedSubscript:domainCopy];

    v7 = [v6 objectForKeyedSubscript:@"values"];
    v8 = [v6 objectForKeyedSubscript:@"dates"];
    v9 = [v7 count];
    v10 = WFLogForCategory(5uLL);
    v11 = v10;
    if (v9 > 0x1F3)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(WFWeatherStoreCache *)v7 _concurrentQueue_barrier_shrinkDomain:v11];
      }

      v12 = MEMORY[0x277CBEB18];
      allValues = [v8 allValues];
      v11 = [v12 arrayWithArray:allValues];

      [v11 sortUsingSelector:sel_compare_];
      v14 = [v11 objectAtIndexedSubscript:[v11 count]- 250];
      v15 = objc_opt_class();
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __61__WFWeatherStoreCache__concurrentQueue_barrier_shrinkDomain___block_invoke;
      v18[3] = &unk_279E6DAE8;
      v16 = v14;
      v19 = v16;
      if ([v15 removeObjectsFromCache:v6 passingTest:v18])
      {
        v17 = WFLogForCategory(5uLL);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [WFWeatherStoreCache _concurrentQueue_barrier_shrinkDomain:];
        }

        [(NSMutableSet *)self->_dirtyCacheDomains addObject:domainCopy];
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [WFWeatherStoreCache _concurrentQueue_barrier_shrinkDomain:];
    }
  }
}

- (BOOL)_loadDomain:(id)domain
{
  domainCopy = domain;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  objc_initWeak(&location, self);
  cacheConcurrentQueue = [(WFWeatherStoreCache *)self cacheConcurrentQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__WFWeatherStoreCache__loadDomain___block_invoke;
  v8[3] = &unk_279E6DB10;
  v10 = &v13;
  objc_copyWeak(&v11, &location);
  v9 = domainCopy;
  v6 = domainCopy;
  dispatch_barrier_sync(cacheConcurrentQueue, v8);

  LOBYTE(cacheConcurrentQueue) = *(v14 + 24);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v13, 8);
  return cacheConcurrentQueue;
}

void __35__WFWeatherStoreCache__loadDomain___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = [WeakRetained _concurrentQueue_barrier_loadDomain:*(a1 + 32)];
}

- (BOOL)_concurrentQueue_barrier_loadDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy length])
  {
    v5 = [(WFWeatherStoreCache *)self URL];
    v6 = [v5 URLByAppendingPathComponent:domainCopy];
    v7 = [v6 URLByAppendingPathExtension:@"plist"];
    path = [v7 path];

    v9 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:path];
    if (v9)
    {
      v10 = WFLogForCategory(5uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [WFWeatherStoreCache _concurrentQueue_barrier_loadDomain:];
      }

      if (_concurrentQueue_barrier_loadDomain__onceToken != -1)
      {
        [WFWeatherStoreCache _concurrentQueue_barrier_loadDomain:];
      }

      v25 = 0;
      v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:_concurrentQueue_barrier_loadDomain__CacheClasses fromData:v9 error:&v25];
      v12 = v25;
      v13 = v12;
      if (v11 || !v12)
      {

        if (v11)
        {
          v23 = [v11 objectForKeyedSubscript:@"Version"];
          unsignedIntegerValue = [v23 unsignedIntegerValue];

          if (unsignedIntegerValue == 18)
          {
            v20 = 0;
LABEL_16:
            cacheForDomain = [(WFWeatherStoreCache *)self cacheForDomain];
            [cacheForDomain setObject:v11 forKeyedSubscript:domainCopy];

            goto LABEL_20;
          }
        }

LABEL_13:
        dictionary = [MEMORY[0x277CBEB38] dictionary];

        [dictionary setObject:&unk_288254598 forKeyedSubscript:@"Version"];
        v16 = objc_opt_new();
        [dictionary setObject:v16 forKeyedSubscript:@"values"];

        v17 = objc_opt_new();
        [dictionary setObject:v17 forKeyedSubscript:@"dates"];

        v18 = objc_opt_new();
        [dictionary setObject:v18 forKeyedSubscript:@"WFWeatherStoreCacheRecordExpirationDate"];

        v19 = WFLogForCategory(5uLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [WFWeatherStoreCache _concurrentQueue_barrier_loadDomain:];
        }

        v20 = 1;
        v11 = dictionary;
        goto LABEL_16;
      }

      v14 = WFLogForCategory(7uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [WFWeatherStoreCache _concurrentQueue_barrier_loadDomain:];
      }
    }

    v11 = 0;
    goto LABEL_13;
  }

  v11 = WFLogForCategory(5uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [WFWeatherStoreCache _concurrentQueue_barrier_loadDomain:];
  }

  v20 = 0;
LABEL_20:

  return v20;
}

uint64_t __59__WFWeatherStoreCache__concurrentQueue_barrier_loadDomain___block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  _concurrentQueue_barrier_loadDomain__CacheClasses = [v0 setWithObjects:{v1, v2, v3, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)_markDomainDirty:(id)dirty
{
  dirtyCopy = dirty;
  if (dirtyCopy)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3032000000;
    v9[3] = __Block_byref_object_copy_;
    v9[4] = __Block_byref_object_dispose_;
    dirtyCacheDomains = [(WFWeatherStoreCache *)self dirtyCacheDomains];
    cacheConcurrentQueue = self->_cacheConcurrentQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__WFWeatherStoreCache__markDomainDirty___block_invoke;
    v6[3] = &unk_279E6DB38;
    v7 = dirtyCopy;
    v8 = v9;
    dispatch_barrier_async(cacheConcurrentQueue, v6);

    _Block_object_dispose(v9, 8);
  }
}

uint64_t __40__WFWeatherStoreCache__markDomainDirty___block_invoke(uint64_t a1)
{
  v2 = WFLogForCategory(5uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __40__WFWeatherStoreCache__markDomainDirty___block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  return [*(*(*(a1 + 40) + 8) + 40) addObject:*(a1 + 32)];
}

- (id)_loadedCacheDomains
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  cacheConcurrentQueue = [(WFWeatherStoreCache *)self cacheConcurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__WFWeatherStoreCache__loadedCacheDomains__block_invoke;
  v6[3] = &unk_279E6DB60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(cacheConcurrentQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __42__WFWeatherStoreCache__loadedCacheDomains__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) cacheForDomain];
  v2 = [v5 allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_dirtyCacheDomains
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy_;
  v13[4] = __Block_byref_object_dispose_;
  dirtyCacheDomains = [(WFWeatherStoreCache *)self dirtyCacheDomains];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  cacheConcurrentQueue = [(WFWeatherStoreCache *)self cacheConcurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__WFWeatherStoreCache__dirtyCacheDomains__block_invoke;
  v6[3] = &unk_279E6DB88;
  v6[4] = &v7;
  v6[5] = v13;
  dispatch_sync(cacheConcurrentQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(v13, 8);

  return v4;
}

uint64_t __41__WFWeatherStoreCache__dirtyCacheDomains__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = [*(*(*(a1 + 40) + 8) + 40) allObjects];

  return MEMORY[0x2821F96F8]();
}

- (void)_ensureDomainIsLoaded:(id)loaded
{
  loadedCopy = loaded;
  _loadedCacheDomains = [(WFWeatherStoreCache *)self _loadedCacheDomains];
  if ([_loadedCacheDomains containsObject:loadedCopy])
  {
    v6 = WFLogForCategory(5uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [WFWeatherStoreCache _ensureDomainIsLoaded:];
    }
  }

  else
  {
    [(WFWeatherStoreCache *)self _loadDomain:loadedCopy];
  }
}

- (void)_concurrentQueue_barrier_deleteOldDataFromCache
{
  [(WFWeatherStoreCache *)self _concurrentQueue_barrier_deleteOldDataFromCache:@"forecasts" allowedStaleness:720];
  [(WFWeatherStoreCache *)self _concurrentQueue_barrier_deleteOldDataFromCache:@"almanac_data" allowedStaleness:2628000];
  [(WFWeatherStoreCache *)self _concurrentQueue_barrier_deleteOldDataFromCache:@"historical_data" allowedStaleness:26280000];
  objc_initWeak(&location, self);
  allKeys = [(NSMutableDictionary *)self->_cacheForDomain allKeys];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__WFWeatherStoreCache__concurrentQueue_barrier_deleteOldDataFromCache__block_invoke;
  v4[3] = &unk_279E6DBB0;
  objc_copyWeak(&v5, &location);
  [allKeys enumerateObjectsUsingBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __70__WFWeatherStoreCache__concurrentQueue_barrier_deleteOldDataFromCache__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _concurrentQueue_barrier_shrinkDomain:v3];
}

- (void)_concurrentQueue_barrier_deleteOldDataFromCache:(id)cache allowedStaleness:(unint64_t)staleness
{
  cacheCopy = cache;
  cacheForDomain = [(WFWeatherStoreCache *)self cacheForDomain];
  v8 = [cacheForDomain objectForKeyedSubscript:cacheCopy];

  v9 = objc_opt_class();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__WFWeatherStoreCache__concurrentQueue_barrier_deleteOldDataFromCache_allowedStaleness___block_invoke;
  v12[3] = &__block_descriptor_40_e34_B32__0_8__NSDate_16___NSCoding__24l;
  v12[4] = staleness;
  LODWORD(cacheForDomain) = [v9 removeObjectsFromCache:v8 passingTest:v12];
  dirtyCacheDomains = WFLogForCategory(5uLL);
  v11 = os_log_type_enabled(dirtyCacheDomains, OS_LOG_TYPE_DEBUG);
  if (cacheForDomain)
  {
    if (v11)
    {
      [WFWeatherStoreCache _concurrentQueue_barrier_deleteOldDataFromCache:allowedStaleness:];
    }

    dirtyCacheDomains = [(WFWeatherStoreCache *)self dirtyCacheDomains];
    [dirtyCacheDomains addObject:cacheCopy];
  }

  else if (v11)
  {
    [WFWeatherStoreCache _concurrentQueue_barrier_deleteOldDataFromCache:allowedStaleness:];
  }
}

BOOL __88__WFWeatherStoreCache__concurrentQueue_barrier_deleteOldDataFromCache_allowedStaleness___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  [a3 timeIntervalSinceNow];
  result = 1;
  if (a3 && v4)
  {
    v7 = v5 / 60.0;
    return v7 < 0.0 && -v7 >= v4;
  }

  return result;
}

- (void)_concurrentQueue_barrier_removeObjectWithinDomain:(id)domain forKey:(id)key
{
  domainCopy = domain;
  keyCopy = key;
  cacheForDomain = [(WFWeatherStoreCache *)self cacheForDomain];
  v9 = [cacheForDomain objectForKeyedSubscript:domainCopy];

  v10 = [v9 objectForKeyedSubscript:@"values"];
  v11 = [v9 objectForKeyedSubscript:@"dates"];
  [v11 removeObjectForKey:keyCopy];
  [v10 removeObjectForKey:keyCopy];
  v12 = WFLogForCategory(5uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [WFWeatherStoreCache _concurrentQueue_barrier_removeObjectWithinDomain:forKey:];
  }

  [(NSMutableSet *)self->_dirtyCacheDomains addObject:domainCopy];
}

void __65__WFWeatherStoreCache_cachedObjectWithinDomain_forKey_staleness___block_invoke_cold_1(void *a1, void *a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = *a2;
  OUTLINED_FUNCTION_4(&dword_272B94000, a2, a3, "Successfully retrieved cached value at cache key '%@' within cache domain '%@'", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)_concurrentQueue_barrier_shrinkDomain:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_1();
  v4 = 2048;
  v5 = 500;
  _os_log_error_impl(&dword_272B94000, a2, OS_LOG_TYPE_ERROR, "Deleting old cached data based on dictionary size: %lu, max allowed size: %lu", v3, 0x16u);
}

@end