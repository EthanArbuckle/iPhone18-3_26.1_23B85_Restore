@interface SBIconLabelImageCache
- (BOOL)containsLabelContentForText:(id)a3;
- (CGSize)maxLabelSize;
- (SBIconLabelImageCache)init;
- (SBIconLabelImageCache)initWithMaxLabelSize:(CGSize)a3 scale:(double)a4 cacheIdentifier:(id)a5;
- (id)_generateAndStoreLabelImageForParameters:(uint64_t)a1;
- (id)cachedLabelContentForParameters:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)labelContentWithParameters:(id)a3;
- (id)labelContentWithParameters:(id)a3 legibilitySettings:(id)a4;
- (id)labelImageWithParameters:(id)a3;
- (id)succinctDescription;
- (unint64_t)numberOfCachedLabelHits;
- (unint64_t)numberOfCachedLabelImages;
- (unint64_t)numberOfCachedLabelMisses;
- (unint64_t)numberOfCachedLegibilityHits;
- (unint64_t)numberOfCachedLegibilityImages;
- (unint64_t)numberOfCachedLegibilityMisses;
- (void)_incrementCacheLabelHits;
- (void)_incrementCacheLabelMisses;
- (void)_incrementCacheLegibilityMisses;
- (void)cacheLabelContentForParameters:(id)a3;
- (void)dealloc;
- (void)ensureLabelImagesAreCached:(id)a3;
- (void)invalidate;
- (void)prewarmLabelImages:(id)a3;
- (void)removeAllObjects;
- (void)removeLabelContentForParameters:(id)a3;
- (void)removeLabelContentForText:(id)a3;
- (void)setLegibilitySettings:(id)a3;
@end

@implementation SBIconLabelImageCache

- (void)_incrementCacheLegibilityMisses
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_4(a1);
    ++*(v1 + 104);

    os_unfair_lock_unlock((v1 + 48));
  }
}

- (void)_incrementCacheLabelMisses
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_4(a1);
    ++*(v1 + 88);

    os_unfair_lock_unlock((v1 + 48));
  }
}

- (void)_incrementCacheLabelHits
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_4(a1);
    ++*(v1 + 80);

    os_unfair_lock_unlock((v1 + 48));
  }
}

- (SBIconLabelImageCache)initWithMaxLabelSize:(CGSize)a3 scale:(double)a4 cacheIdentifier:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v75.receiver = self;
  v75.super_class = SBIconLabelImageCache;
  v10 = [(SBIconLabelImageCache *)&v75 init];
  if (v10)
  {
    v11 = [v9 copy];
    cacheIdentifier = v10->_cacheIdentifier;
    v10->_cacheIdentifier = v11;

    v10->_maxLabelSize.width = width;
    v10->_maxLabelSize.height = height;
    v10->_scale = a4;
    v13 = objc_opt_new();
    invalidationSignal = v10->_invalidationSignal;
    v10->_invalidationSignal = v13;

    v10->_metricsLock._os_unfair_lock_opaque = 0;
    if (SBHFeatureEnabled(0))
    {
      v15 = [MEMORY[0x1E695DF58] currentLocale];
      v16 = [v15 localeIdentifier];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ContentCache_%@_%@", v16, v10->_cacheIdentifier];
      v18 = __mappedImageCacheForIdentifier(v17);
      contentCache = v10->_contentCache;
      v10->_contentCache = v18;

      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LegibilityCache_%@_%@", v16, v10->_cacheIdentifier];
      v21 = __mappedImageCacheForIdentifier(v20);
      legibilityCache = v10->_legibilityCache;
      v10->_legibilityCache = v21;

      objc_initWeak(&location, v10);
      v23 = objc_alloc(MEMORY[0x1E69C5400]);
      v24 = v10->_contentCache;
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __68__SBIconLabelImageCache_initWithMaxLabelSize_scale_cacheIdentifier___block_invoke;
      v72[3] = &unk_1E808B078;
      v25 = v15;
      v73 = v25;
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __68__SBIconLabelImageCache_initWithMaxLabelSize_scale_cacheIdentifier___block_invoke_2;
      v70[3] = &unk_1E808B0A0;
      objc_copyWeak(&v71, &location);
      v26 = [v23 initWithCache:v24 keyGenerator:v72 imageGenerator:v70];
      contentGenerator = v10->_contentGenerator;
      v10->_contentGenerator = v26;

      [(PLKCachedImageGenerator *)v10->_contentGenerator setLabel:@"SpringBoardHome Label Content Generator"];
      [(PLKCachedImageGenerator *)v10->_contentGenerator setDefaultPersistenceOptions:&unk_1F3DB2600];
      v28 = [MEMORY[0x1E69C5418] formatForContextType:4];
      objc_initWeak(&from, v10->_contentGenerator);
      v29 = objc_alloc(MEMORY[0x1E69C5400]);
      v30 = v10->_legibilityCache;
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __68__SBIconLabelImageCache_initWithMaxLabelSize_scale_cacheIdentifier___block_invoke_18;
      v67[3] = &unk_1E808B078;
      v31 = v25;
      v68 = v31;
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __68__SBIconLabelImageCache_initWithMaxLabelSize_scale_cacheIdentifier___block_invoke_2_19;
      v63[3] = &unk_1E808B0C8;
      objc_copyWeak(&v65, &location);
      v32 = v28;
      v64 = v32;
      objc_copyWeak(&v66, &from);
      v33 = [v29 initWithCache:v30 keyGenerator:v67 imageGenerator:v63];
      legibilityGenerator = v10->_legibilityGenerator;
      v10->_legibilityGenerator = v33;

      [(PLKCachedImageGenerator *)v10->_legibilityGenerator setLabel:@"SpringBoardHome Legibility Label Content Generator"];
      [(PLKCachedImageGenerator *)v10->_legibilityGenerator setDefaultPersistenceOptions:&unk_1F3DB2600];
      v35 = [objc_alloc(MEMORY[0x1E69C5408]) initWithContentGenerator:v10->_contentGenerator legibilityGenerator:v10->_legibilityGenerator];
      legibilityDataSource = v10->_legibilityDataSource;
      v10->_legibilityDataSource = v35;

      v37 = __versionSuffix();
      v38 = v10->_contentGenerator;
      v39 = MEMORY[0x1E696AE18];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __68__SBIconLabelImageCache_initWithMaxLabelSize_scale_cacheIdentifier___block_invoke_3;
      v61[3] = &unk_1E808B0F0;
      v40 = v37;
      v62 = v40;
      v41 = [v39 predicateWithBlock:v61];
      v42 = [(PLKCachedImageGenerator *)v38 removeImagesForPredicate:v41];

      v43 = v10->_legibilityGenerator;
      v44 = MEMORY[0x1E696AE18];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __68__SBIconLabelImageCache_initWithMaxLabelSize_scale_cacheIdentifier___block_invoke_4;
      v59[3] = &unk_1E808B0F0;
      v45 = v40;
      v60 = v45;
      v46 = [v44 predicateWithBlock:v59];
      v47 = [(PLKCachedImageGenerator *)v43 removeImagesForPredicate:v46];

      objc_destroyWeak(&v66);
      objc_destroyWeak(&v65);

      objc_destroyWeak(&from);
      objc_destroyWeak(&v71);

      objc_destroyWeak(&location);
    }

    v48 = [MEMORY[0x1E69DCAB8] sbf_bytesNeededForSize:4 scale:width withContextType:{height, a4}];
    v49 = [MEMORY[0x1E69DCAB8] sbf_bytesNeededForSize:0 scale:width withContextType:{height, a4}];
    v50 = [objc_alloc(MEMORY[0x1E698B698]) initWithLabel:"iconLabels_gray" slotLength:v48];
    grayPool = v10->_grayPool;
    v10->_grayPool = v50;

    v52 = [objc_alloc(MEMORY[0x1E698B698]) initWithLabel:"iconLabels_color" slotLength:v49];
    colorPool = v10->_colorPool;
    v10->_colorPool = v52;

    v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
    labelImages = v10->_labelImages;
    v10->_labelImages = v54;

    v56 = +[SBHLegibilitySettings defaultLegibilitySettings];
    legibilitySettings = v10->_legibilitySettings;
    v10->_legibilitySettings = v56;
  }

  return v10;
}

id __68__SBIconLabelImageCache_initWithMaxLabelSize_scale_cacheIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 metrics];
  v7 = __generateCacheKeyForMetricsAndLegibilityDescriptor(v6, v5, *(a1 + 32), 0);

  return v7;
}

id __68__SBIconLabelImageCache_initWithMaxLabelSize_scale_cacheIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBIconLabelImageCache *)WeakRetained _incrementCacheLabelMisses];

  v5 = [SBIconLabelImage imageWithParameters:v3];

  return v5;
}

id __68__SBIconLabelImageCache_initWithMaxLabelSize_scale_cacheIdentifier___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 metrics];
  v7 = __generateCacheKeyForMetricsAndLegibilityDescriptor(v6, v5, *(a1 + 32), 1);

  return v7;
}

id __68__SBIconLabelImageCache_initWithMaxLabelSize_scale_cacheIdentifier___block_invoke_2_19(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(SBIconLabelImageCache *)WeakRetained _incrementCacheLegibilityMisses];

  v8 = objc_alloc(MEMORY[0x1E69C5438]);
  v9 = [v6 background];
  [v5 maxSize];
  [v9 sizeForContentSize:?];
  v10 = [v8 initWithSize:*(a1 + 32) format:?];

  v11 = objc_loadWeakRetained((a1 + 48));
  v12 = [v11 imageForObject:v5];

  if (!v12)
  {
    v13 = [SBIconLabelImage imageWithParameters:v5];
    v12 = [v10 renderLegibilityImageForImage:v13 legibilityDescriptor:v6];
  }

  v14 = [v10 renderLegibilityImageForImage:v12 legibilityDescriptor:v6];

  return v14;
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_invalidationSignal hasBeenSignalled]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBIconLabelImageCache.m";
    v16 = 1024;
    v17 = 224;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1BEB18000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (SBIconLabelImageCache)init
{
  [(SBIconLabelImageCache *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)invalidate
{
  if ([(BSAtomicSignal *)self->_invalidationSignal signal])
  {
    [(PLKCachedLegibilityContentDataSource *)self->_legibilityDataSource invalidate];
    legibilityDataSource = self->_legibilityDataSource;
    self->_legibilityDataSource = 0;

    [(NSMutableDictionary *)self->_labelImages removeAllObjects];
    grayPool = self->_grayPool;
    self->_grayPool = 0;

    colorPool = self->_colorPool;
    self->_colorPool = 0;
  }
}

- (void)setLegibilitySettings:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[SBHLegibilitySettings defaultLegibilitySettings];
  }

  v7 = v4;
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = [SBHLegibilitySettings legibilitySettingsForLegibilitySettings:v7];
    legibilitySettings = self->_legibilitySettings;
    self->_legibilitySettings = v5;
  }
}

- (void)prewarmLabelImages:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_legibilitySettings)
  {
    if (SBHFeatureEnabled(0))
    {
      v5 = [(SBHLegibilitySettings *)self->_legibilitySettings legibilityDescriptor];
      if (v5)
      {
        v6 = [MEMORY[0x1E695DFD8] setWithObject:v5];
        [(PLKCachedLegibilityContentDataSource *)self->_legibilityDataSource prewarmContentForObjects:v4 legibilityDescriptors:v6];
      }
    }

    v7 = [(SBHLegibilitySettings *)self->_legibilitySettings _UILegibilitySettings];
    if (v7)
    {
      v8 = v7;
      v9 = [(SBHLegibilitySettings *)self->_legibilitySettings legibilityDescriptor];

      if (!v9)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = v4;
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v18 + 1) + 8 * i);
              v16 = [(NSMutableDictionary *)self->_labelImages objectForKey:v15, v18];

              if (!v16)
              {
                v17 = [(SBIconLabelImageCache *)self _generateAndStoreLabelImageForParameters:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v12);
        }
      }
    }
  }
}

- (void)ensureLabelImagesAreCached:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (SBHFeatureEnabled(0) && ([(SBHLegibilitySettings *)self->_legibilitySettings legibilityDescriptor], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v4 bs_map:&__block_literal_global_22];
    v8 = SBIconLabelImageCachePredicateForAppTitles(v7);
    v9 = [(PLKCachedImageGenerator *)self->_legibilityGenerator removeImagesForPredicate:v8];
    v10 = [(PLKCachedImageGenerator *)self->_contentGenerator removeImagesForPredicate:v8];
  }

  else
  {
    v11 = MEMORY[0x1E695DFD8];
    v12 = [(NSMutableDictionary *)self->_labelImages allKeys];
    v6 = [v11 setWithArray:v12];

    v13 = objc_autoreleasePoolPush();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v4;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v21 + 1) + 8 * i);
          if (([v6 containsObject:{v19, v21}] & 1) == 0)
          {
            [(SBIconLabelImageCache *)self _incrementCacheLabelHits];
            v20 = [(SBIconLabelImageCache *)self _generateAndStoreLabelImageForParameters:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (void)cacheLabelContentForParameters:(id)a3
{
  v4 = a3;
  if (SBHFeatureEnabled(0) && ([(SBHLegibilitySettings *)self->_legibilitySettings legibilityDescriptor], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    legibilityDataSource = self->_legibilityDataSource;
    v7 = [(SBHLegibilitySettings *)self->_legibilitySettings legibilityDescriptor];
    v8 = [(PLKCachedLegibilityContentDataSource *)legibilityDataSource legibilityContentForObject:v4 legibilityDescriptor:v7];
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_labelImages objectForKey:v4];

    if (!v9)
    {
      v10 = SBLogIconLabelImageCache();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(SBIconLabelImageCache *)v4 cacheLabelContentForParameters:v10];
      }

      v11 = [(SBIconLabelImageCache *)self _generateAndStoreLabelImageForParameters:v4];
    }
  }
}

- (id)labelImageWithParameters:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_labelImages objectForKey:v4];
  if (v5)
  {
    v6 = v5;
    [(SBIconLabelImageCache *)self _incrementCacheLabelHits];
  }

  else
  {
    [(SBIconLabelImageCache *)self _incrementCacheLabelMisses];
    v6 = [(SBIconLabelImageCache *)self _generateAndStoreLabelImageForParameters:v4];
  }

  return v6;
}

- (id)labelContentWithParameters:(id)a3
{
  v4 = a3;
  if (SBHFeatureEnabled(0) && ([(SBHLegibilitySettings *)self->_legibilitySettings legibilityDescriptor], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [(PLKCachedLegibilityContentDataSource *)self->_legibilityDataSource legibilityContentForObject:v4 legibilityDescriptor:v5];
  }

  else
  {
    v7 = [(SBIconLabelImageCache *)self labelImageWithParameters:v4];
  }

  return v7;
}

- (id)labelContentWithParameters:(id)a3 legibilitySettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (SBHFeatureEnabled(0) && ([v7 legibilityDescriptor], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [(PLKCachedLegibilityContentDataSource *)self->_legibilityDataSource legibilityContentForObject:v6 legibilityDescriptor:v8];
  }

  else
  {
    v10 = [(SBIconLabelImageCache *)self labelImageWithParameters:v6];
  }

  return v10;
}

- (id)cachedLabelContentForParameters:(id)a3
{
  v4 = a3;
  v5 = 0;
  if (v4 && self->_legibilitySettings)
  {
    if (SBHFeatureEnabled(0))
    {
      v6 = [MEMORY[0x1E695DF58] currentLocale];
      v7 = [(SBHLegibilitySettings *)self->_legibilitySettings legibilityDescriptor];
      v8 = [v4 metrics];
      v9 = __generateCacheKeyForMetricsAndLegibilityDescriptor(v8, 0, v6, 0);
      v10 = __generateCacheKeyForMetricsAndLegibilityDescriptor(v8, v7, v6, 1);
      v11 = [(BSUIMappedImageCache *)self->_contentCache allKeys];
      v12 = [v11 containsObject:v9];

      if (v12 && (-[BSUIMappedImageCache allKeys](self->_legibilityCache, "allKeys"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsObject:v10], v13, v14))
      {
        v5 = [(PLKCachedLegibilityContentDataSource *)self->_legibilityDataSource legibilityContentForObject:v4 legibilityDescriptor:v7];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = [(NSMutableDictionary *)self->_labelImages objectForKey:v4];
    }
  }

  return v5;
}

- (BOOL)containsLabelContentForText:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_legibilitySettings && [v4 length])
  {
    if (SBHFeatureEnabled(0))
    {
      v6 = [(SBHLegibilitySettings *)self->_legibilitySettings legibilityDescriptor];
      if (v6)
      {
        v7 = MEMORY[0x1E695DFD8];
        v8 = [(BSUIMappedImageCache *)self->_contentCache allKeys];
        v9 = [v7 setWithArray:v8];

        v10 = [MEMORY[0x1E695DFD8] setWithObject:v5];
        v11 = SBIconLabelImageCachePredicateForAppTitles(v10);

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v12 = v9;
        v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v28;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v28 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([v11 evaluateWithObject:*(*(&v27 + 1) + 8 * i)])
              {

                goto LABEL_26;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [(NSMutableDictionary *)self->_labelImages allKeys];
    v17 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v17)
    {
      v18 = *v24;
LABEL_17:
      v19 = 0;
      while (1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v6);
        }

        v20 = [*(*(&v23 + 1) + 8 * v19) text];
        v21 = [v20 isEqualToString:v5];

        if (v21)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v17)
          {
            goto LABEL_17;
          }

          goto LABEL_27;
        }
      }

LABEL_26:
      LOBYTE(v17) = 1;
    }

LABEL_27:
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (void)removeLabelContentForText:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    if (SBHFeatureEnabled(0) && ([(SBHLegibilitySettings *)self->_legibilitySettings legibilityDescriptor], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      legibilityGenerator = self->_legibilityGenerator;
      v7 = SBIconLabelImageCachePredicateForAppTitles(v4);
      v8 = [(PLKCachedImageGenerator *)legibilityGenerator removeImagesForPredicate:v7];

      contentGenerator = self->_contentGenerator;
      v10 = SBIconLabelImageCachePredicateForAppTitles(v4);
      v11 = [(PLKCachedImageGenerator *)contentGenerator removeImagesForPredicate:v10];
    }

    else
    {
      v12 = objc_opt_new();
      labelImages = self->_labelImages;
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __51__SBIconLabelImageCache_removeLabelContentForText___block_invoke;
      v19 = &unk_1E808B138;
      v20 = v4;
      v21 = v12;
      v10 = v12;
      [(NSMutableDictionary *)labelImages enumerateKeysAndObjectsWithOptions:1 usingBlock:&v16];
      v14 = self->_labelImages;
      v15 = [v10 bs_array];
      [(NSMutableDictionary *)v14 removeObjectsForKeys:v15];
    }
  }
}

void __51__SBIconLabelImageCache_removeLabelContentForText___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v8 text];
  if ([*(a1 + 32) containsObject:v6])
  {
    v7 = *(a1 + 40);
    objc_sync_enter(v7);
    [*(a1 + 40) addObject:v8];
    objc_sync_exit(v7);
  }
}

- (void)removeLabelContentForParameters:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if (SBHFeatureEnabled(0))
    {
      v5 = MEMORY[0x1E695DFD8];
      v6 = [(SBHLegibilitySettings *)self->_legibilitySettings legibilityDescriptor];
      v7 = [v5 setWithObject:v6];

      legibilityDataSource = self->_legibilityDataSource;
      v10[0] = v4;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      [(PLKCachedLegibilityContentDataSource *)legibilityDataSource removeContentForObjects:v9 legibilityDescriptors:v7];
    }

    [(NSMutableDictionary *)self->_labelImages removeObjectForKey:v4];
  }
}

- (void)removeAllObjects
{
  if (SBHFeatureEnabled(0))
  {
    [(PLKCachedLegibilityContentDataSource *)self->_legibilityDataSource removeAllObjects];
  }

  [(NSMutableDictionary *)self->_labelImages removeAllObjects];
  os_unfair_lock_lock(&self->_metricsLock);
  *&self->_numberOfCachedLabelHits = 0u;
  *&self->_numberOfCachedLegibilityHits = 0u;

  os_unfair_lock_unlock(&self->_metricsLock);
}

- (unint64_t)numberOfCachedLabelImages
{
  if (SBHFeatureEnabled(0) && ([(SBHLegibilitySettings *)self->_legibilitySettings legibilityDescriptor], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(BSUIMappedImageCache *)self->_contentCache allKeys];
    v5 = [v4 count];

    return v5;
  }

  else
  {
    labelImages = self->_labelImages;

    return [(NSMutableDictionary *)labelImages count];
  }
}

- (unint64_t)numberOfCachedLegibilityImages
{
  if (!SBHFeatureEnabled(0))
  {
    return 0;
  }

  v3 = [(SBHLegibilitySettings *)self->_legibilitySettings legibilityDescriptor];

  if (!v3)
  {
    return 0;
  }

  v4 = [(BSUIMappedImageCache *)self->_legibilityCache allKeys];
  v5 = [v4 count];

  return v5;
}

- (unint64_t)numberOfCachedLabelHits
{
  os_unfair_lock_lock(&self->_metricsLock);
  numberOfCachedLabelHits = self->_numberOfCachedLabelHits;
  os_unfair_lock_unlock(&self->_metricsLock);
  return numberOfCachedLabelHits;
}

- (unint64_t)numberOfCachedLabelMisses
{
  os_unfair_lock_lock(&self->_metricsLock);
  numberOfCachedLabelMisses = self->_numberOfCachedLabelMisses;
  os_unfair_lock_unlock(&self->_metricsLock);
  return numberOfCachedLabelMisses;
}

- (unint64_t)numberOfCachedLegibilityHits
{
  os_unfair_lock_lock(&self->_metricsLock);
  numberOfCachedLabelHits = self->_numberOfCachedLabelHits;
  os_unfair_lock_unlock(&self->_metricsLock);
  return numberOfCachedLabelHits;
}

- (unint64_t)numberOfCachedLegibilityMisses
{
  os_unfair_lock_lock(&self->_metricsLock);
  numberOfCachedLabelMisses = self->_numberOfCachedLabelMisses;
  os_unfair_lock_unlock(&self->_metricsLock);
  return numberOfCachedLabelMisses;
}

- (id)succinctDescription
{
  v2 = [(SBIconLabelImageCache *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconLabelImageCache *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBIconLabelImageCache *)self succinctDescriptionBuilder];
  v5 = [(SBIconLabelImageCache *)self cacheIdentifier];
  [v4 appendString:v5 withName:@"cacheIdentifier"];

  [(SBIconLabelImageCache *)self maxLabelSize];
  v6 = [v4 appendSize:@"maxLabelSize" withName:?];
  [(SBIconLabelImageCache *)self scale];
  v7 = [v4 appendFloat:@"scale" withName:?];

  return v4;
}

- (CGSize)maxLabelSize
{
  width = self->_maxLabelSize.width;
  height = self->_maxLabelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)_generateAndStoreLabelImageForParameters:(uint64_t)a1
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    [v3 scale];
    v6 = v5;
    [a1 scale];
    if (v6 != v7)
    {
      v8 = v7;
      v9 = SBLogLabels();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218240;
        v20 = v6;
        v21 = 2048;
        v22 = v8;
        _os_log_fault_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_FAULT, "Scale mismatch for label image: %f (should be %f)", buf, 0x16u);
      }

      NSLog(&cfstr_ScaleMismatchF.isa, *&v6, *&v8);
      v10 = [v4 mutableCopy];
      [v10 setScale:v8];

      v4 = v10;
    }

    v11 = [v4 copy];
    [v4 maxSize];
    if (v13 <= *(a1 + 144) && v12 <= *(a1 + 152))
    {
      v15 = [v4 isColorspaceGrayscale];
      v16 = 136;
      if (v15)
      {
        v16 = 128;
      }

      v14 = *(a1 + v16);
    }

    else
    {
      v14 = 0;
    }

    v17 = [SBIconLabelImage imageWithParameters:v11 pool:v14];
    if (v17)
    {
      [*(a1 + 56) setObject:v17 forKey:v11];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)cacheLabelContentForParameters:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_DEBUG, "SBIconLabelImageCache cache label image for parameters: %@", &v2, 0xCu);
}

@end