@interface PLKCachedLegibilityContentDataSource
+ (id)_sharedImageCaches;
+ (id)attributedStringContentDataSourceForMaxSize:(CGSize)a3 scale:(double)a4 cacheProvider:(id)a5 metricsProvider:(id)a6;
- (BOOL)isEmpty;
- (PLKCachedLegibilityContentDataSource)initWithContentGenerator:(id)a3;
- (PLKCachedLegibilityContentDataSource)initWithContentGenerator:(id)a3 legibilityGenerator:(id)a4;
- (void)prewarmContentForObjects:(id)a3 legibilityDescriptors:(id)a4;
- (void)removeAllObjectsWithCompletion:(id)a3;
- (void)removeContentForObjects:(id)a3 legibilityDescriptors:(id)a4;
- (void)synchonrouslyRemoveAllObjects;
@end

@implementation PLKCachedLegibilityContentDataSource

+ (id)_sharedImageCaches
{
  objc_opt_self();
  if (_sharedImageCaches_onceToken != -1)
  {
    +[PLKCachedLegibilityContentDataSource _sharedImageCaches];
  }

  v0 = _sharedImageCaches_sharedImageCaches;

  return v0;
}

uint64_t __58__PLKCachedLegibilityContentDataSource__sharedImageCaches__block_invoke()
{
  _sharedImageCaches_sharedImageCaches = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];

  return MEMORY[0x2821F96F8]();
}

+ (id)attributedStringContentDataSourceForMaxSize:(CGSize)a3 scale:(double)a4 cacheProvider:(id)a5 metricsProvider:(id)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a5;
  v12 = a6;
  v43 = [MEMORY[0x277CEC5B0] plk_sharedMemoryPoolForMaxSize:0 scale:width contextType:{height, a4}];
  v13 = [PLKImageRendererFormat formatForContextType:0 scale:a4 memoryPool:?];
  if (!v12)
  {
    v12 = objc_opt_new();
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [v11 plk_contentCache];
  }

  else
  {
    v14 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v11 plk_legibilityCache];
    v16 = v15;
    if (v14 && v15)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = +[PLKCachedLegibilityContentDataSource _sharedImageCaches];
  objc_sync_enter(v17);
  v18 = [MEMORY[0x277CF0D70] optionsWithContainerPathProvider:v11];
  v19 = [v11 plk_contentCacheIdentifier];
  v20 = [v17 objectForKey:v19];

  v14 = v20;
  if (!v20)
  {
    v21 = objc_alloc(MEMORY[0x277CF0D68]);
    v22 = [v11 plk_contentCacheIdentifier];
    v14 = [v21 initWithUniqueIdentifier:v22 options:v18];

    v23 = [v11 plk_contentCacheIdentifier];
    [v17 setObject:v14 forKey:v23];
  }

  v24 = [v11 plk_legibilityCacheIdentifier];
  v25 = [v17 objectForKey:v24];

  if (!v25)
  {
    v26 = objc_alloc(MEMORY[0x277CF0D68]);
    v27 = [v11 plk_legibilityCacheIdentifier];
    v25 = [v26 initWithUniqueIdentifier:v27 options:v18];

    v28 = [v11 plk_legibilityCacheIdentifier];
    [v17 setObject:v25 forKey:v28];
  }

  objc_sync_exit(v17);
  v16 = v25;
LABEL_16:
  if (v14 && v16)
  {
    v29 = [PLKCachedImageGenerator alloc];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __120__PLKCachedLegibilityContentDataSource_attributedStringContentDataSourceForMaxSize_scale_cacheProvider_metricsProvider___block_invoke_111;
    v47[3] = &unk_27835B3A8;
    v50 = width;
    v51 = height;
    v48 = v12;
    v49 = v13;
    v30 = v13;
    v31 = v12;
    v32 = [(PLKCachedImageGenerator *)v29 initWithCache:v14 keyGenerator:&__block_literal_global_98 imageGenerator:v47];
    v33 = [PLKCachedImageGenerator alloc];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __120__PLKCachedLegibilityContentDataSource_attributedStringContentDataSourceForMaxSize_scale_cacheProvider_metricsProvider___block_invoke_2;
    v44[3] = &unk_27835B3D0;
    v45 = v32;
    v46 = a4;
    v34 = v32;
    v35 = [(PLKCachedImageGenerator *)v33 initWithCache:v16 keyGenerator:&__block_literal_global_98 imageGenerator:v44];
    v36 = [MEMORY[0x277D3EC60] operationQueueSchedulerWithMaxConcurrentOperationCount:4 qualityOfService:6 name:@"Key Scheduler"];
    v37 = [MEMORY[0x277D3EC60] operationQueueSchedulerWithMaxConcurrentOperationCount:4 qualityOfService:4 name:@"Content Image Generator Work Scheduler"];
    [(PLKImageGenerator *)v34 setWorkScheduler:v37];

    [(PLKCachedImageGenerator *)v34 setKeyScheduler:v36];
    v38 = [MEMORY[0x277D3EC60] operationQueueSchedulerWithMaxConcurrentOperationCount:4 qualityOfService:4 name:@"Legibility Image Generator Work Scheduler"];
    [(PLKImageGenerator *)v35 setWorkScheduler:v38];

    [(PLKCachedImageGenerator *)v35 setKeyScheduler:v36];
    v39 = [[PLKCachedLegibilityContentDataSource alloc] initWithContentGenerator:v34 legibilityGenerator:v35];

    return v39;
  }

  else
  {
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLKCachedLegibilityContentDataSource Image caches could not be setup!"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [PLKCachedLegibilityContentDataSource attributedStringContentDataSourceForMaxSize:a2 scale:a1 cacheProvider:v41 metricsProvider:?];
    }

    [v41 UTF8String];
    result = _bs_set_crash_log_message();
    __break(0);
  }

  return result;
}

id __120__PLKCachedLegibilityContentDataSource_attributedStringContentDataSourceForMaxSize_scale_cacheProvider_metricsProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  objc_sync_enter(v6);
  v7 = objc_getAssociatedObject(v6, "SHA256");
  if (!v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:0 error:0];
    v7 = [v9 plk_sha256Hash];

    objc_setAssociatedObject(v6, "SHA256", v7, 1);
    objc_autoreleasePoolPop(v8);
  }

  objc_sync_exit(v6);

  return v7;
}

id __120__PLKCachedLegibilityContentDataSource_attributedStringContentDataSourceForMaxSize_scale_cacheProvider_metricsProvider___block_invoke_111(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = a1[6];
  v5 = a1[7];
  v6 = a2;
  [v3 plk_boundingRectForObject:v6 maxSize:{v4, v5}];
  v9 = [(UIGraphicsImageRenderer *)[PLKImageRenderer alloc] initWithSize:*(a1 + 5) format:v7, v8];
  v10 = [(PLKImageRenderer *)v9 imageWithRenderable:v6];

  return v10;
}

id __120__PLKCachedLegibilityContentDataSource_attributedStringContentDataSourceForMaxSize_scale_cacheProvider_metricsProvider___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 imageForObject:a2];
  [v7 size];
  v9 = v8;
  v11 = v10;
  v12 = [v6 background];
  [v12 sizeForContentSize:{v9, v11}];
  v14 = v13;
  v16 = v15;

  v17 = [PLKImageRendererFormat sharedFormatForLegibilityWithMaximumSize:4 scale:v6 contentType:v14 legibilityDescriptor:v16, *(a1 + 40)];
  v18 = [(UIGraphicsImageRenderer *)[PLKLegibilityImageRenderer alloc] initWithSize:v17 format:v14, v16];
  v19 = [(PLKLegibilityImageRenderer *)v18 renderLegibilityImageForImage:v7 legibilityDescriptor:v6];

  return v19;
}

- (PLKCachedLegibilityContentDataSource)initWithContentGenerator:(id)a3
{
  [(PLKCachedLegibilityContentDataSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PLKCachedLegibilityContentDataSource)initWithContentGenerator:(id)a3 legibilityGenerator:(id)a4
{
  v5.receiver = self;
  v5.super_class = PLKCachedLegibilityContentDataSource;
  return [(PLKLegibilityContentDataSource *)&v5 initWithContentGenerator:a3 legibilityGenerator:a4];
}

- (BOOL)isEmpty
{
  v3 = [(PLKLegibilityContentDataSource *)self contentGenerator];
  v4 = [v3 cache];
  v5 = [v4 allKeys];
  v6 = [v5 count];

  v7 = [(PLKLegibilityContentDataSource *)self legibilityGenerator];
  v8 = [v7 cache];
  v9 = [v8 allKeys];
  v10 = v6 | [v9 count];

  return v10 == 0;
}

- (void)prewarmContentForObjects:(id)a3 legibilityDescriptors:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count] && objc_msgSend(v7, "count"))
  {
    v33 = [(PLKLegibilityContentDataSource *)self contentGenerator];
    v32 = [(PLKLegibilityContentDataSource *)self legibilityGenerator];
    v8 = _os_activity_create(&dword_21E5D5000, "<PLKCachedLegibilityContentDataSource prewarmContentForObjects:legibilityDescriptor:>", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = [MEMORY[0x277D3EC38] activityWrapping:v8];

    v29 = [v9 track];

    v10 = PLKLogRendering();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544130;
      v40 = v12;
      v41 = 2048;
      v42 = self;
      v43 = 2112;
      v44 = v6;
      v45 = 2114;
      v46 = v7;
      _os_log_impl(&dword_21E5D5000, v10, OS_LOG_TYPE_INFO, "<%{public}@:%p prewarmContentForObjects:%@ legibilityDescriptors:%{public}@>", buf, 0x2Au);
    }

    v13 = objc_opt_new();
    v14 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v30 = v7;
    obj = v7;
    v15 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      do
      {
        v18 = 0;
        do
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v34 + 1) + 8 * v18);
          v20 = [MEMORY[0x277CBEB98] setWithArray:v6];
          v21 = [v33 prewarmObjects:v20 context:v19];

          [v13 bs_safeAddObject:v21];
          v22 = [MEMORY[0x277CBEB98] setWithArray:v6];
          v23 = [v32 prewarmObjects:v22 context:v19];

          [v14 bs_safeAddObject:v23];
          ++v18;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v16);
    }

    v24 = MEMORY[0x277D3EC50];
    v25 = [v13 arrayByAddingObjectsFromArray:v14];
    v26 = [v24 join:v25];
    v27 = [v26 trackWithActivity:v29];

    v7 = v30;
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)removeContentForObjects:(id)a3 legibilityDescriptors:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v38 = v6;
  if ([v6 count])
  {
    v37 = [(PLKLegibilityContentDataSource *)self contentGenerator];
    v36 = [(PLKLegibilityContentDataSource *)self legibilityGenerator];
    v8 = _os_activity_create(&dword_21E5D5000, "<PLKCachedLegibilityContentDataSource removeContentForObjects:legibilityDescriptors:>", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = [MEMORY[0x277D3EC38] activityWrapping:v8];

    v30 = [v9 track];

    v10 = PLKLogRendering();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544130;
      v55 = v12;
      v56 = 2048;
      v57 = self;
      v58 = 2048;
      v59 = [v6 count];
      v60 = 2114;
      v61 = v7;
      _os_log_impl(&dword_21E5D5000, v10, OS_LOG_TYPE_INFO, "<%{public}@:%p removeContentForObjects:%lu legibilityDescriptors:%{public}@>", buf, 0x2Au);
    }

    v35 = objc_opt_new();
    v34 = objc_opt_new();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v31 = v7;
    obj = v7;
    v13 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v13)
    {
      v14 = v13;
      v33 = *v50;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v50 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v49 + 1) + 8 * i);
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __86__PLKCachedLegibilityContentDataSource_removeContentForObjects_legibilityDescriptors___block_invoke;
          v46[3] = &unk_27835B3F8;
          v17 = v37;
          v47 = v17;
          v48 = v16;
          v18 = [v38 bs_mapNoNulls:v46];
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __86__PLKCachedLegibilityContentDataSource_removeContentForObjects_legibilityDescriptors___block_invoke_2;
          v43[3] = &unk_27835B3F8;
          v19 = v36;
          v44 = v19;
          v45 = v16;
          v20 = [v38 bs_mapNoNulls:v43];
          v21 = [MEMORY[0x277D3EC50] join:v18];
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __86__PLKCachedLegibilityContentDataSource_removeContentForObjects_legibilityDescriptors___block_invoke_3;
          v41[3] = &unk_27835B420;
          v42 = v17;
          v22 = [v21 flatMap:v41];

          v23 = [MEMORY[0x277D3EC50] join:v20];
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __86__PLKCachedLegibilityContentDataSource_removeContentForObjects_legibilityDescriptors___block_invoke_4;
          v39[3] = &unk_27835B420;
          v40 = v19;
          v24 = [v23 flatMap:v39];

          [v35 addObject:v22];
          [v34 addObject:v24];
        }

        v14 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v14);
    }

    v25 = MEMORY[0x277D3EC50];
    v26 = [v35 arrayByAddingObjectsFromArray:v34];
    v27 = [v25 join:v26];
    v28 = [v27 trackWithActivity:v30];

    v7 = v31;
  }

  v29 = *MEMORY[0x277D85DE8];
}

id __86__PLKCachedLegibilityContentDataSource_removeContentForObjects_legibilityDescriptors___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEB98] setWithArray:a2];
  v4 = [v2 removeImagesForCacheKeys:v3];

  return v4;
}

id __86__PLKCachedLegibilityContentDataSource_removeContentForObjects_legibilityDescriptors___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEB98] setWithArray:a2];
  v4 = [v2 removeImagesForCacheKeys:v3];

  return v4;
}

- (void)removeAllObjectsWithCompletion:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _os_activity_create(&dword_21E5D5000, "<PLKCachedLegibilityContentDataSource removeContentForObjects:legibilityDescriptors:>", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v6 = [MEMORY[0x277D3EC38] activityWrapping:v5];

  v7 = [v6 track];

  v8 = PLKLogRendering();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138543618;
    v27 = v10;
    v28 = 2048;
    v29 = self;
    _os_log_impl(&dword_21E5D5000, v8, OS_LOG_TYPE_INFO, "<%{public}@:%p removeAllObjects>", buf, 0x16u);
  }

  v11 = [(PLKLegibilityContentDataSource *)self contentGenerator];
  v12 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  v13 = [v11 removeImagesForPredicate:v12];

  v14 = [(PLKLegibilityContentDataSource *)self legibilityGenerator];
  v15 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  v16 = [v14 removeImagesForPredicate:v15];

  v17 = MEMORY[0x277D3EC50];
  v25[0] = v13;
  v25[1] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v19 = [v17 join:v18];
  v20 = [v19 trackWithActivity:v7];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __71__PLKCachedLegibilityContentDataSource_removeAllObjectsWithCompletion___block_invoke;
  v23[3] = &unk_27835B448;
  v24 = v4;
  v21 = v4;
  [v20 addCompletionBlock:v23];

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __71__PLKCachedLegibilityContentDataSource_removeAllObjectsWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)synchonrouslyRemoveAllObjects
{
  v3 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__PLKCachedLegibilityContentDataSource_synchonrouslyRemoveAllObjects__block_invoke;
  v7[3] = &unk_27835B470;
  v4 = v3;
  v8 = v4;
  [(PLKCachedLegibilityContentDataSource *)self removeAllObjectsWithCompletion:v7];
  if (([v4 hasBeenSignalled] & 1) == 0)
  {
    do
    {
      v5 = [MEMORY[0x277CBEB88] currentRunLoop];
      v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.5];
      [v5 runUntilDate:v6];
    }

    while (![v4 hasBeenSignalled]);
  }
}

+ (void)attributedStringContentDataSourceForMaxSize:(uint64_t)a3 scale:cacheProvider:metricsProvider:.cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 138544642;
  v10 = v5;
  v11 = 2114;
  v12 = v7;
  v13 = 2048;
  v14 = a2;
  v15 = 2114;
  v16 = @"PLKLegibilityContentDataSource.m";
  v17 = 1024;
  v18 = 228;
  v19 = 2114;
  v20 = a3;
  _os_log_error_impl(&dword_21E5D5000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);

  v8 = *MEMORY[0x277D85DE8];
}

@end