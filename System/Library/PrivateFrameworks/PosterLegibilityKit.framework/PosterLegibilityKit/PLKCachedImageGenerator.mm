@interface PLKCachedImageGenerator
- (PFTScheduler)keyScheduler;
- (PLKCachedImageGenerator)initWithCache:(id)a3 keyGenerator:(id)a4 imageGenerator:(id)a5;
- (PLKCachedImageGenerator)initWithImageGenerator:(id)a3;
- (id)cacheKeyFutureForObject:(id)a3 context:(id)a4;
- (id)imageFutureForCacheKey:(id)a3;
- (id)imageFutureForObject:(id)a3;
- (id)imageFutureForObject:(id)a3 context:(id)a4;
- (id)imageFutureForObject:(id)a3 persistenceOptions:(id)a4 context:(id)a5;
- (id)prewarmObjects:(id)a3 context:(id)a4;
- (id)removeImagesForCacheKeys:(id)a3;
- (id)removeImagesForPredicate:(id)a3;
- (void)setKeyScheduler:(id)a3;
@end

@implementation PLKCachedImageGenerator

- (PFTScheduler)keyScheduler
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_keyScheduler;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (PLKCachedImageGenerator)initWithImageGenerator:(id)a3
{
  [(PLKCachedImageGenerator *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PLKCachedImageGenerator)initWithCache:(id)a3 keyGenerator:(id)a4 imageGenerator:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = PLKLogCaching();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v30 = self;
    v31 = 2114;
    v32 = v9;
    _os_log_impl(&dword_21E5D5000, v12, OS_LOG_TYPE_DEFAULT, "-[PLKCachedImageGenerator(%p) Setting up with cache %{public}@", buf, 0x16u);
  }

  v28.receiver = self;
  v28.super_class = PLKCachedImageGenerator;
  v13 = [(PLKImageGenerator *)&v28 initWithImageGenerator:v11];

  if (v13)
  {
    if ([MEMORY[0x277CBEBD0] plk_dumpMappedImageCache])
    {
      [v9 removeAllImagesWithCompletion:0];
    }

    v14 = [v10 copy];
    keyGenerator = v13->_keyGenerator;
    v13->_keyGenerator = v14;

    [(PLKCachedImageGenerator *)v13 setKeyScheduler:0];
    v16 = [[PLKLRUCache alloc] initWithCapacity:200];
    cacheKeyFutureLRUCache = v13->_cacheKeyFutureLRUCache;
    v13->_cacheKeyFutureLRUCache = v16;

    v18 = [[PLKLRUCache alloc] initWithCapacity:80];
    imageFutureLRUCache = v13->_imageFutureLRUCache;
    v13->_imageFutureLRUCache = v18;

    v20 = objc_opt_new();
    prewarmScheduler_perwarmingCacheKeys = v13->_prewarmScheduler_perwarmingCacheKeys;
    v13->_prewarmScheduler_perwarmingCacheKeys = v20;

    v22 = MEMORY[0x277D3EC60];
    v23 = [MEMORY[0x277D3EC60] operationQueueSchedulerWithMaxConcurrentOperationCount:4 qualityOfService:4 name:@"PLKCachedImageGenerator-prewarmScheduler"];
    v24 = [v22 offMainThreadSchedulerWithBackgroundScheduler:v23];
    prewarmScheduler = v13->_prewarmScheduler;
    v13->_prewarmScheduler = v24;

    objc_storeStrong(&v13->_cache, a3);
    v13->_cacheKeyFutureLock = 0;
    v13->_imageFutureLock = 0;
    v13->_prewarmLock = 0;
    v13->_propertyLock = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)imageFutureForObject:(id)a3
{
  v4 = a3;
  v5 = [(PLKCachedImageGenerator *)self defaultPersistenceOptions];
  v6 = [(PLKCachedImageGenerator *)self imageFutureForObject:v4 persistenceOptions:v5 context:0];

  return v6;
}

- (id)imageFutureForObject:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLKCachedImageGenerator *)self defaultPersistenceOptions];
  v9 = [(PLKCachedImageGenerator *)self imageFutureForObject:v7 persistenceOptions:v8 context:v6];

  return v9;
}

- (id)imageFutureForObject:(id)a3 persistenceOptions:(id)a4 context:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v28 = a4;
  v9 = a5;
  v10 = PLKLogCaching();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

  if (v11)
  {
    v12 = PLKLogCaching();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v22 = [(PLKImageGenerator *)self label];
      v23 = v22;
      v24 = &stru_282F9B218;
      *location = 138413314;
      if (v22)
      {
        v24 = v22;
      }

      *&location[4] = v24;
      v40 = 2048;
      v41 = self;
      v42 = 2112;
      v43 = v8;
      v44 = 2114;
      v45 = v28;
      v46 = 2112;
      v47 = v9;
      _os_log_debug_impl(&dword_21E5D5000, v12, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) imageFutureForObject:%@]", location, 0x34u);
    }
  }

  objc_initWeak(location, self);
  v25 = self->_cache;
  v27 = [(PLKImageGenerator *)self imageGenerator];
  v13 = [(PLKImageGenerator *)self workScheduler];
  v26 = [MEMORY[0x277CBEAA8] date];
  v14 = [(PLKImageGenerator *)self collectStatistics];
  v15 = self->_imageFutureLRUCache;
  v16 = [[__PLKLRUCacheKeyTuple alloc] initWithObject:v8 context:v9];
  os_unfair_recursive_lock_lock_with_options();
  v17 = [(PLKLRUCache *)v15 objectForKey:v16];
  if (!v17)
  {
    v18 = [(PLKCachedImageGenerator *)self cacheKeyFutureForObject:v8 context:v9];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __75__PLKCachedImageGenerator_imageFutureForObject_persistenceOptions_context___block_invoke;
    v29[3] = &unk_27835B4E8;
    v30 = v28;
    v31 = v25;
    v32 = v8;
    v33 = v9;
    v36 = v27;
    v34 = v13;
    v38 = v14;
    objc_copyWeak(&v37, location);
    v19 = v18;
    v35 = v26;
    v17 = [v18 flatMap:v29];
    [(PLKLRUCache *)v15 setObject:v17 forKey:v16];

    objc_destroyWeak(&v37);
  }

  os_unfair_recursive_lock_unlock();

  objc_destroyWeak(location);
  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

id __75__PLKCachedImageGenerator_imageFutureForObject_persistenceOptions_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = MEMORY[0x277D3EC50];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__PLKCachedImageGenerator_imageFutureForObject_persistenceOptions_context___block_invoke_2;
  v15[3] = &unk_27835B498;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v6 = v3;
  v18 = v6;
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21 = *(a1 + 80);
  v22 = v23;
  v7 = [v5 futureWithBlock:v15 scheduler:*(a1 + 64)];
  if (*(a1 + 96) == 1)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__PLKCachedImageGenerator_imageFutureForObject_persistenceOptions_context___block_invoke_3;
    v9[3] = &unk_27835B4C0;
    objc_copyWeak(&v14, (a1 + 88));
    v10 = *(a1 + 72);
    v11 = v6;
    v13 = v23;
    v12 = v4;
    [v7 addSuccessBlock:v9];

    objc_destroyWeak(&v14);
  }

  _Block_object_dispose(v23, 8);

  return v7;
}

id __75__PLKCachedImageGenerator_imageFutureForObject_persistenceOptions_context___block_invoke_2(uint64_t a1, void *a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v24 = [*(a1 + 32) unsignedIntValue];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(*(a1 + 80) + 8);
  v9 = *(a1 + 40);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v13;
  if (v10)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (!a2)
    {
LABEL_16:
      v20 = 0;
      goto LABEL_17;
    }

    v16 = MEMORY[0x277CCA9B8];
    v30[0] = *MEMORY[0x277CCA470];
    v25[0] = @"missing required parameters";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v30 count:1];
    v18 = [v16 errorWithDomain:@"PLKCachedImageGenerator" code:-2 userInfo:v17];
    *a2 = v18;

LABEL_15:
    goto LABEL_16;
  }

  v19 = [v9 imageForKey:v10];
  v20 = v19;
  if (!v19)
  {
    *(v8 + 24) = 1;
    if (v9)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = ____generateImageForCacheKey_block_invoke;
      v25[3] = &unk_27835B6A0;
      v29 = &v24;
      v28 = v14;
      v26 = v11;
      v27 = v12;
      v20 = [v9 imageForKey:v10 generatingIfNecessaryWithBlock:v25];

      if (!a2)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v20 = (v14)[2](v14, v11, v12);
      objc_autoreleasePoolPop(v21);
      if (!a2)
      {
        goto LABEL_17;
      }
    }

    if (v20)
    {
      goto LABEL_17;
    }

    v17 = [MEMORY[0x277D3EC48] userCanceledError];
    *a2 = v17;
    goto LABEL_15;
  }

LABEL_17:

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

void __75__PLKCachedImageGenerator_imageFutureForObject_persistenceOptions_context___block_invoke_3(uint64_t a1, void *a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_copyWeak(&v11, (a1 + 64));
  v4 = objc_loadWeakRetained(&v11);

  if (v4)
  {
    v5 = objc_loadWeakRetained(&v11);
    v6 = *(a1 + 32);
    v13[0] = *(a1 + 40);
    v12[0] = @"cacheKey";
    v12[1] = @"didGenerate";
    v7 = [MEMORY[0x277CCABB0] numberWithBool:*(*(*(a1 + 56) + 8) + 24)];
    v13[1] = v7;
    v12[2] = @"cacheKeyGenerationDuration";
    v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:*(a1 + 32) endDate:*(a1 + 48)];
    v13[2] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    [v5 _registerCreatedImage:v3 startDate:v6 numberOfBytes:0 userInfo:v9];
  }

  objc_destroyWeak(&v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (id)cacheKeyFutureForObject:(id)a3 context:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = PLKLogCaching();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = PLKLogCaching();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v24 = [(PLKImageGenerator *)self label];
        v25 = v24;
        v26 = &stru_282F9B218;
        *buf = 138413058;
        if (v24)
        {
          v26 = v24;
        }

        v39 = v26;
        v40 = 2048;
        v41 = self;
        v42 = 2112;
        v43 = v6;
        v44 = 2112;
        v45 = v7;
        _os_log_debug_impl(&dword_21E5D5000, v10, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) cacheKeyFutureForObject:%@]", buf, 0x2Au);
      }
    }

    v33 = [(PLKCachedImageGenerator *)self keyGenerator];
    v11 = [(PLKCachedImageGenerator *)self keyScheduler];
    v12 = [[__PLKLRUCacheKeyTuple alloc] initWithObject:v6 context:v7];
    v13 = self->_cacheKeyFutureLRUCache;
    os_unfair_recursive_lock_lock_with_options();
    v14 = [(PLKLRUCache *)v13 objectForKey:v12];
    if (v14)
    {
      v15 = PLKLogCaching();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

      if (v16)
      {
        v17 = PLKLogCaching();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v27 = [(PLKImageGenerator *)self label];
          v28 = v27;
          v29 = &stru_282F9B218;
          *buf = 138413058;
          if (v27)
          {
            v29 = v27;
          }

          v39 = v29;
          v40 = 2048;
          v41 = self;
          v42 = 2112;
          v43 = v6;
          v44 = 2112;
          v45 = v7;
          _os_log_debug_impl(&dword_21E5D5000, v17, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) cacheKeyFutureForObject:%@] bingo bango", buf, 0x2Au);
        }
      }
    }

    else
    {
      v18 = PLKLogCaching();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

      if (v19)
      {
        v20 = PLKLogCaching();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v30 = [(PLKImageGenerator *)self label];
          v31 = v30;
          v32 = &stru_282F9B218;
          *buf = 138413058;
          if (v30)
          {
            v32 = v30;
          }

          v39 = v32;
          v40 = 2048;
          v41 = self;
          v42 = 2112;
          v43 = v6;
          v44 = 2112;
          v45 = v7;
          _os_log_debug_impl(&dword_21E5D5000, v20, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) cacheKeyFutureForObject:%@] Faulting in....", buf, 0x2Au);
        }
      }

      v21 = MEMORY[0x277D3EC50];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __59__PLKCachedImageGenerator_cacheKeyFutureForObject_context___block_invoke;
      v34[3] = &unk_27835B510;
      v37 = v33;
      v35 = v6;
      v36 = v7;
      v14 = [v21 futureWithBlock:v34 scheduler:v11];
      [(PLKLRUCache *)v13 setObject:v14 forKey:v12];
    }

    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v14 = [MEMORY[0x277D3EC50] cancelledFuture];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)imageFutureForCacheKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = PLKLogCaching();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v7 = PLKLogCaching();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(PLKCachedImageGenerator *)self imageFutureForCacheKey:v4, v7];
      }
    }

    v8 = self->_cache;
    v9 = [(PLKImageGenerator *)self workScheduler];
    v10 = MEMORY[0x277D3EC50];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__PLKCachedImageGenerator_imageFutureForCacheKey___block_invoke;
    v14[3] = &unk_27835B538;
    v15 = v8;
    v16 = v4;
    v11 = v8;
    v12 = [v10 futureWithBlock:v14 scheduler:v9];
  }

  else
  {
    v12 = [MEMORY[0x277D3EC50] cancelledFuture];
  }

  return v12;
}

id __50__PLKCachedImageGenerator_imageFutureForCacheKey___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) imageForKey:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA470];
    v12[0] = @"cache did not contain key";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v6 errorWithDomain:@"PLKCachedImageGenerator" code:-1 userInfo:v7];
    if (a2)
    {
      v8 = v8;
      *a2 = v8;
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)prewarmObjects:(id)a3 context:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PLKLogCaching();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = PLKLogCaching();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v34 = [(PLKImageGenerator *)self label];
      *location = 138413058;
      *&location[4] = v34;
      v54 = 2048;
      v55 = self;
      v56 = 2112;
      v57 = v6;
      v58 = 2112;
      v59 = v7;
      _os_log_debug_impl(&dword_21E5D5000, v10, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) prewarmObjects:%@]", location, 0x2Au);
    }
  }

  v11 = _os_activity_create(&dword_21E5D5000, "[PLKCachedImageGenerator prewarmObjects:context:]", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12 = [MEMORY[0x277D3EC38] activityWrapping:v11];

  v36 = [v12 track];

  objc_initWeak(location, self);
  v13 = [(PLKImageGenerator *)self label];
  v14 = self->_prewarmScheduler;
  v15 = self->_cache;
  v16 = self->_cacheKeyFutureLRUCache;
  v17 = MEMORY[0x277CBEB98];
  v18 = [(BSUIMappedImageCache *)v15 allKeys];
  v19 = [v17 setWithArray:v18];

  v20 = MEMORY[0x277D3EC50];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __50__PLKCachedImageGenerator_prewarmObjects_context___block_invoke;
  v47[3] = &unk_27835B560;
  objc_copyWeak(&v52, location);
  v35 = v6;
  v48 = v35;
  v21 = v7;
  v49 = v21;
  v22 = v16;
  v50 = v22;
  v23 = v13;
  v51 = v23;
  v24 = [v20 futureWithBlock:v47 scheduler:v14];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __50__PLKCachedImageGenerator_prewarmObjects_context___block_invoke_39;
  v40[3] = &unk_27835B5D8;
  v25 = v19;
  v41 = v25;
  v26 = v14;
  v42 = v26;
  objc_copyWeak(&v46, location);
  v27 = v23;
  v43 = v27;
  v28 = v21;
  v44 = v28;
  v29 = v15;
  v45 = v29;
  v30 = [v24 flatMap:v40];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __50__PLKCachedImageGenerator_prewarmObjects_context___block_invoke_43;
  v38[3] = &unk_27835B600;
  v31 = v36;
  v39 = v31;
  v37 = [v30 flatMap:v38];

  objc_destroyWeak(&v46);
  objc_destroyWeak(&v52);

  objc_destroyWeak(location);
  v32 = *MEMORY[0x277D85DE8];

  return v37;
}

id __50__PLKCachedImageGenerator_prewarmObjects_context___block_invoke(uint64_t a1, void *a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v22 = WeakRetained;
  if (WeakRetained)
  {
    v24 = [WeakRetained keyGenerator];
    v23 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    os_unfair_recursive_lock_lock_with_options();
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = *(a1 + 32);
    v5 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v5)
    {
      v6 = *v27;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v26 + 1) + 8 * i);
          v9 = [[__PLKLRUCacheKeyTuple alloc] initWithObject:v8 context:*(a1 + 40)];
          v10 = [*(a1 + 48) objectForKey:v9];
          if (!v10)
          {
            v11 = v24[2](v24, v8, *(a1 + 40));
            if (v11)
            {
              v12 = PLKLogCaching();
              v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

              if (v13)
              {
                v14 = PLKLogCaching();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                {
                  v17 = *(a1 + 56);
                  *buf = 138412546;
                  v31 = v17;
                  v32 = 2048;
                  v33 = v22;
                  _os_log_debug_impl(&dword_21E5D5000, v14, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) prewarming]", buf, 0x16u);
                }
              }

              v15 = *(a1 + 48);
              v16 = [MEMORY[0x277D3EC50] futureWithResult:v11];
              [v15 setObject:v16 forKey:v9];

              [v23 setObject:v8 forKey:v11];
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v5);
    }

    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA470];
    v36[0] = @"self was deallocated";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v19 = [v18 errorWithDomain:@"PLKCachedImageGenerator" code:-3 userInfo:v24];
    if (a2)
    {
      v19 = v19;
      *a2 = v19;
    }

    v23 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v23;
}

id __50__PLKCachedImageGenerator_prewarmObjects_context___block_invoke_39(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __50__PLKCachedImageGenerator_prewarmObjects_context___block_invoke_2;
  v30[3] = &unk_27835B588;
  v31 = *(a1 + 32);
  [v3 bs_filter:v30];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v4)
  {
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = [v3 objectForKey:v7];
        v9 = *(a1 + 40);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __50__PLKCachedImageGenerator_prewarmObjects_context___block_invoke_3;
        v20[3] = &unk_27835B5B0;
        objc_copyWeak(&v25, (a1 + 72));
        v20[4] = v7;
        v21 = *(a1 + 48);
        v10 = v8;
        v22 = v10;
        v23 = *(a1 + 56);
        v24 = *(a1 + 64);
        [v9 performBlock:v20];

        objc_destroyWeak(&v25);
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v4);
  }

  v11 = MEMORY[0x277D3EC50];
  v12 = MEMORY[0x277CBEB98];
  v13 = [obj keyEnumerator];
  v14 = [v13 allObjects];
  v15 = [v12 setWithArray:v14];
  v16 = [v11 futureWithResult:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __50__PLKCachedImageGenerator_prewarmObjects_context___block_invoke_3(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[10];
    v5 = [v3 imageGenerator];
    os_unfair_recursive_lock_lock_with_options();
    if ([v4 containsObject:*(a1 + 32)])
    {
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      [v4 addObject:*(a1 + 32)];
      os_unfair_recursive_lock_unlock();
      v6 = PLKLogCaching();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

      if (v7)
      {
        v8 = PLKLogCaching();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v15 = *(a1 + 32);
          v14 = *(a1 + 40);
          v18 = 138412802;
          v19 = v14;
          v20 = 2048;
          v21 = v3;
          v22 = 2112;
          v23 = v15;
          _os_log_debug_impl(&dword_21E5D5000, v8, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) prewarming]", &v18, 0x20u);
        }
      }

      v9 = v5[2](v5, *(a1 + 48), *(a1 + 56));
      if (v9)
      {
        [*(a1 + 64) setImage:v9 forKey:*(a1 + 32)];
        v10 = PLKLogCaching();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

        if (v11)
        {
          v12 = PLKLogCaching();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v17 = *(a1 + 32);
            v16 = *(a1 + 40);
            v18 = 138412802;
            v19 = v16;
            v20 = 2048;
            v21 = v3;
            v22 = 2112;
            v23 = v17;
            _os_log_debug_impl(&dword_21E5D5000, v12, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) prewarmed]", &v18, 0x20u);
          }
        }
      }

      os_unfair_recursive_lock_lock_with_options();
      [v4 removeObject:*(a1 + 32)];
      os_unfair_recursive_lock_unlock();
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

id __50__PLKCachedImageGenerator_prewarmObjects_context___block_invoke_43(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 invalidate];
  v4 = [MEMORY[0x277D3EC50] futureWithResult:v3];

  return v4;
}

- (id)removeImagesForCacheKeys:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(PLKImageGenerator *)self label];
    v6 = PLKLogCaching();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

    if (v7)
    {
      v8 = PLKLogCaching();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v29 = v5;
        v30 = 2048;
        v31 = self;
        v32 = 2112;
        v33 = v4;
        _os_log_debug_impl(&dword_21E5D5000, v8, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) removeImagesForCacheKeys:%@]", buf, 0x20u);
      }
    }

    v9 = _os_activity_create(&dword_21E5D5000, "[PLKCachedImageGenerator removeImagesForCacheKeys:]", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = [MEMORY[0x277D3EC38] activityWrapping:v9];

    v11 = [v10 track];

    v12 = self->_cache;
    os_unfair_recursive_lock_lock_with_options();
    v13 = [v4 bs_array];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __52__PLKCachedImageGenerator_removeImagesForCacheKeys___block_invoke;
    v24[3] = &unk_27835B650;
    v25 = v12;
    v26 = v5;
    v27 = self;
    v14 = v5;
    v15 = v12;
    v16 = [v13 bs_mapNoNulls:v24];

    os_unfair_recursive_lock_unlock();
    v17 = [MEMORY[0x277D3EC50] join:v16];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __52__PLKCachedImageGenerator_removeImagesForCacheKeys___block_invoke_46;
    v22[3] = &unk_27835B420;
    v23 = v11;
    v18 = v11;
    v19 = [v17 flatMap:v22];
  }

  else
  {
    v19 = [MEMORY[0x277D3EC50] futureWithResult:v4];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id __52__PLKCachedImageGenerator_removeImagesForCacheKeys___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__PLKCachedImageGenerator_removeImagesForCacheKeys___block_invoke_2;
  v13[3] = &unk_27835B628;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v14 = v6;
  v15 = v7;
  v16 = v3;
  v8 = v4;
  v17 = v8;
  v9 = v3;
  [v5 removeImageForKey:v9 withCompletion:v13];
  v10 = v17;
  v11 = v8;

  return v8;
}

uint64_t __52__PLKCachedImageGenerator_removeImagesForCacheKeys___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = PLKLogCaching();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = 138412802;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_21E5D5000, v2, OS_LOG_TYPE_DEFAULT, "[PLKCachedImageGenerator(%@%p) removeImagesForCacheKeys:%@]", &v8, 0x20u);
  }

  result = [*(a1 + 56) finishWithResult:*(a1 + 48)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

id __52__PLKCachedImageGenerator_removeImagesForCacheKeys___block_invoke_46(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 invalidate];
  v4 = MEMORY[0x277D3EC50];
  v5 = [MEMORY[0x277CBEB98] setWithArray:v3];

  v6 = [v4 futureWithResult:v5];

  return v6;
}

- (id)removeImagesForPredicate:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = [(PLKImageGenerator *)self label];
    v6 = self->_cache;
    v7 = [(PLKCachedImageGenerator *)self keyScheduler];
    v8 = PLKLogCaching();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = PLKLogCaching();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v32 = v5;
        v33 = 2048;
        v34 = self;
        v35 = 2112;
        v36 = v4;
        _os_log_debug_impl(&dword_21E5D5000, v10, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) removeImagesForPredicate:%@]", buf, 0x20u);
      }
    }

    v11 = _os_activity_create(&dword_21E5D5000, "[PLKCachedImageGenerator removeImagesForCacheKeys:]", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = [MEMORY[0x277D3EC38] activityWrapping:v11];

    v13 = [v12 track];

    v14 = MEMORY[0x277D3EC50];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __52__PLKCachedImageGenerator_removeImagesForPredicate___block_invoke;
    v27[3] = &unk_27835B310;
    v15 = v6;
    v28 = v15;
    v16 = v4;
    v29 = v16;
    v17 = [v14 futureWithBlock:v27 scheduler:v7];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __52__PLKCachedImageGenerator_removeImagesForPredicate___block_invoke_2;
    v22[3] = &unk_27835B678;
    objc_copyWeak(&v26, &location);
    v18 = v5;
    v23 = v18;
    v24 = v16;
    v19 = v13;
    v25 = v19;
    [v17 addCompletionBlock:v22];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = [MEMORY[0x277D3EC50] cancelledFuture];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

id __52__PLKCachedImageGenerator_removeImagesForPredicate___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [*(a1 + 32) allKeys];
  v4 = [v2 setWithArray:v3];

  if ([v4 count])
  {
    v5 = [v4 mutableCopy];
    [v5 filterUsingPredicate:*(a1 + 40)];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  return v5;
}

void __52__PLKCachedImageGenerator_removeImagesForPredicate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    objc_copyWeak(&to, (a1 + 56));
    v7 = objc_loadWeakRetained(&to);

    if (v7)
    {
      v8 = PLKLogCaching();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v10 = objc_loadWeakRetained(&to);
        v11 = *(a1 + 40);
        *buf = 138412802;
        v17 = v9;
        v18 = 2048;
        v19 = v10;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&dword_21E5D5000, v8, OS_LOG_TYPE_DEFAULT, "[PLKCachedImageGenerator(%@%p) removeImagesForPredicate:%@]", buf, 0x20u);
      }

      v12 = objc_loadWeakRetained(&to);
      v13 = [v12 removeImagesForCacheKeys:v5];
    }

    objc_destroyWeak(&to);
  }

  [*(a1 + 48) invalidate];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setKeyScheduler:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (!v4)
  {
    v5 = [MEMORY[0x277D3EC60] operationQueueSchedulerWithMaxConcurrentOperationCount:4 qualityOfService:1 name:@"PLKCachedImageGeneratorKeyScheduler"];
    v4 = [MEMORY[0x277D3EC60] offMainThreadSchedulerWithBackgroundScheduler:v5];
  }

  keyScheduler = self->_keyScheduler;
  self->_keyScheduler = v4;

  os_unfair_recursive_lock_unlock();
}

- (void)imageFutureForCacheKey:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [a1 label];
  v7 = v6;
  v8 = &stru_282F9B218;
  v10 = 138412802;
  if (v6)
  {
    v8 = v6;
  }

  v11 = v8;
  v12 = 2048;
  v13 = a1;
  v14 = 2112;
  v15 = a2;
  _os_log_debug_impl(&dword_21E5D5000, a3, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) imageFutureForCacheKey:%@]", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

@end