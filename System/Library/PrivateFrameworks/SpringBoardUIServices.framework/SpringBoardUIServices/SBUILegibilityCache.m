@interface SBUILegibilityCache
- (BOOL)containsTemplateForSettings:(id)a3;
- (BOOL)isCachedTemplateImage:(id)a3;
- (SBUILegibilityCache)initWithEngine:(id)a3;
- (SBUILegibilityEngine)engine;
- (id)cachedStrengthForImage:(id)a3 strength:(double)a4 generator:(id)a5;
- (id)memoryPoolForGraphicsContextType:(int64_t)a3 matchingSize:(CGSize)a4 scale:(double)a5;
- (id)templateImageForSettings:(id)a3 matchingSize:(CGSize)a4;
- (void)_teardownMemoryPools;
- (void)cacheTemplateShadowImage:(id)a3 settings:(id)a4 maxSize:(CGSize)a5;
- (void)removeAllObjects;
@end

@implementation SBUILegibilityCache

- (SBUILegibilityCache)initWithEngine:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBUILegibilityCache *)a2 initWithEngine:?];
  }

  v19.receiver = self;
  v19.super_class = SBUILegibilityCache;
  v6 = [(SBUILegibilityCache *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_engine, v5);
    v8 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    templateImagesBySizeForSettings = v7->_templateImagesBySizeForSettings;
    v7->_templateImagesBySizeForSettings = v8;

    v10 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    cachedTemplatedImages = v7->_cachedTemplatedImages;
    v7->_cachedTemplatedImages = v10;

    v12 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    strengthForImageLookupMap = v7->_strengthForImageLookupMap;
    v7->_strengthForImageLookupMap = v12;

    v14 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    sortedTemplateImageKeysBySizeForSettings = v7->_sortedTemplateImageKeysBySizeForSettings;
    v7->_sortedTemplateImageKeysBySizeForSettings = v14;

    v7->_unfairLock._os_unfair_lock_opaque = 0;
    v7->_memoryPoolLock._os_unfair_lock_opaque = 0;
    v16 = objc_opt_new();
    memoryPoolLock_memoryPoolsBySlotSize = v7->_memoryPoolLock_memoryPoolsBySlotSize;
    v7->_memoryPoolLock_memoryPoolsBySlotSize = v16;
  }

  return v7;
}

- (BOOL)isCachedTemplateImage:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_unfairLock);
  v5 = [(NSHashTable *)self->_cachedTemplatedImages containsObject:v4];

  os_unfair_lock_unlock(&self->_unfairLock);
  return v5;
}

- (BOOL)containsTemplateForSettings:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_unfairLock);
  v5 = [(NSMapTable *)self->_templateImagesBySizeForSettings objectForKey:v4];

  os_unfair_lock_unlock(&self->_unfairLock);
  return v5 != 0;
}

- (id)templateImageForSettings:(id)a3 matchingSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  os_unfair_lock_lock(&self->_unfairLock);
  v8 = [(NSMapTable *)self->_templateImagesBySizeForSettings objectForKey:v7];
  v9 = [(NSMapTable *)self->_sortedTemplateImageKeysBySizeForSettings objectForKey:v7];
  if (!v9)
  {
    v10 = [v8 allKeys];
    v9 = [v10 sortedArrayUsingComparator:&__block_literal_global_39];

    [(NSMapTable *)self->_sortedTemplateImageKeysBySizeForSettings setObject:v9 forKey:v7];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v12)
  {

LABEL_22:
    v24 = [v11 lastObject];
    v14 = [v8 objectForKey:v24];

    goto LABEL_23;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v27;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v27 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v26 + 1) + 8 * i);
      [v17 CGSizeValue];
      v20 = vabdd_f64(v18, width);
      if ((vabdd_f64(v19, height) >= 5.0 || v20 >= 5.0) && (v19 < height || v18 < width))
      {
        continue;
      }

      v23 = [v8 objectForKey:v17];

      v14 = v23;
    }

    v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v13);

  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_23:
  os_unfair_lock_unlock(&self->_unfairLock);

  return v14;
}

uint64_t __61__SBUILegibilityCache_templateImageForSettings_matchingSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 CGSizeValue];
  v6 = v5;
  v8 = v7;
  [v4 CGSizeValue];
  v10 = v9;
  v12 = v11;

  if (v6 * v8 >= v10 * v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (v6 * v8 > v10 * v12)
  {
    return 1;
  }

  else
  {
    return v13;
  }
}

- (void)cacheTemplateShadowImage:(id)a3 settings:(id)a4 maxSize:(CGSize)a5
{
  v11 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_unfairLock);
  v8 = [(NSMapTable *)self->_templateImagesBySizeForSettings objectForKey:v11];
  if (!v8)
  {
    v8 = objc_opt_new();
    [(NSMapTable *)self->_templateImagesBySizeForSettings setObject:v8 forKey:v11];
  }

  v9 = MEMORY[0x1E696B098];
  [v7 size];
  v10 = [v9 valueWithCGSize:?];
  [v8 setObject:v7 forKey:v10];
  [(NSHashTable *)self->_cachedTemplatedImages addObject:v7];

  [(NSMapTable *)self->_sortedTemplateImageKeysBySizeForSettings removeObjectForKey:v11];
  os_unfair_lock_unlock(&self->_unfairLock);
}

- (id)cachedStrengthForImage:(id)a3 strength:(double)a4 generator:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(SBUILegibilityCache *)self engine];
  os_unfair_lock_lock(&self->_unfairLock);
  v11 = [(NSMapTable *)self->_strengthForImageLookupMap objectForKey:v8];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    v14 = SBLogLegibility();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v18 = 138412802;
    v19 = v10;
    v20 = 2112;
    v21 = v8;
    v22 = 2048;
    v23 = a4;
    v15 = "(%@) Skipped drawing strength for image %@ / %f";
    goto LABEL_13;
  }

  v13 = v9[2](v9, v8, a4);
  if (v13)
  {
    if (!v11)
    {
      v11 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      [(NSMapTable *)self->_strengthForImageLookupMap setObject:v11 forKey:v8];
    }

    v16 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    [v11 setObject:v13 forKey:v16];
  }

  v14 = SBLogLegibility();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138412802;
    v19 = v10;
    v20 = 2112;
    v21 = v8;
    v22 = 2048;
    v23 = a4;
    v15 = "(%@) Drawing strength for image %@ / %f";
LABEL_13:
    _os_log_debug_impl(&dword_1A9A79000, v14, OS_LOG_TYPE_DEBUG, v15, &v18, 0x20u);
  }

LABEL_9:

  os_unfair_lock_unlock(&self->_unfairLock);

  return v13;
}

- (void)removeAllObjects
{
  os_unfair_lock_lock(&self->_unfairLock);
  [(NSMapTable *)self->_strengthForImageLookupMap removeAllObjects];
  [(NSMapTable *)self->_templateImagesBySizeForSettings removeAllObjects];
  [(NSHashTable *)self->_cachedTemplatedImages removeAllObjects];
  [(NSMapTable *)self->_sortedTemplateImageKeysBySizeForSettings removeAllObjects];
  os_unfair_lock_unlock(&self->_unfairLock);

  [(SBUILegibilityCache *)self _teardownMemoryPools];
}

- (id)memoryPoolForGraphicsContextType:(int64_t)a3 matchingSize:(CGSize)a4 scale:(double)a5
{
  height = a4.height;
  width = a4.width;
  os_unfair_lock_lock(&self->_memoryPoolLock);
  v10 = [MEMORY[0x1E69DCAB8] sbf_bytesNeededForSize:a3 scale:width withContextType:{height, a5}];
  v11 = [(NSMutableDictionary *)self->_memoryPoolLock_memoryPoolsBySlotSize allKeys];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__SBUILegibilityCache_memoryPoolForGraphicsContextType_matchingSize_scale___block_invoke;
  v18[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
  v18[4] = v10;
  v12 = [v11 bs_firstObjectPassingTest:v18];

  if (v12)
  {
    v13 = [(NSMutableDictionary *)self->_memoryPoolLock_memoryPoolsBySlotSize objectForKey:v12];
LABEL_4:
    v14 = v13;
    goto LABEL_5;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v10];
  v13 = [(NSMutableDictionary *)self->_memoryPoolLock_memoryPoolsBySlotSize objectForKey:v12];
  if (v13)
  {
    goto LABEL_4;
  }

  v16 = objc_alloc(MEMORY[0x1E698B698]);
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LegibilityMemoryPool-%zu", v10];
  v14 = [v16 initWithLabel:objc_msgSend(v17 slotLength:{"UTF8String"), v10}];

  [(NSMutableDictionary *)self->_memoryPoolLock_memoryPoolsBySlotSize setObject:v14 forKey:v12];
LABEL_5:
  os_unfair_lock_unlock(&self->_memoryPoolLock);

  return v14;
}

- (void)_teardownMemoryPools
{
  os_unfair_lock_lock(&self->_memoryPoolLock);
  [(NSMutableDictionary *)self->_memoryPoolLock_memoryPoolsBySlotSize removeAllObjects];

  os_unfair_lock_unlock(&self->_memoryPoolLock);
}

- (SBUILegibilityEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (void)initWithEngine:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUILegibilityCache.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"engine"}];
}

@end