@interface SBUILegibilityCache
- (BOOL)containsTemplateForSettings:(id)settings;
- (BOOL)isCachedTemplateImage:(id)image;
- (SBUILegibilityCache)initWithEngine:(id)engine;
- (SBUILegibilityEngine)engine;
- (id)cachedStrengthForImage:(id)image strength:(double)strength generator:(id)generator;
- (id)memoryPoolForGraphicsContextType:(int64_t)type matchingSize:(CGSize)size scale:(double)scale;
- (id)templateImageForSettings:(id)settings matchingSize:(CGSize)size;
- (void)_teardownMemoryPools;
- (void)cacheTemplateShadowImage:(id)image settings:(id)settings maxSize:(CGSize)size;
- (void)removeAllObjects;
@end

@implementation SBUILegibilityCache

- (SBUILegibilityCache)initWithEngine:(id)engine
{
  engineCopy = engine;
  if (!engineCopy)
  {
    [(SBUILegibilityCache *)a2 initWithEngine:?];
  }

  v19.receiver = self;
  v19.super_class = SBUILegibilityCache;
  v6 = [(SBUILegibilityCache *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_engine, engineCopy);
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    templateImagesBySizeForSettings = v7->_templateImagesBySizeForSettings;
    v7->_templateImagesBySizeForSettings = weakToStrongObjectsMapTable;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    cachedTemplatedImages = v7->_cachedTemplatedImages;
    v7->_cachedTemplatedImages = weakObjectsHashTable;

    weakToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    strengthForImageLookupMap = v7->_strengthForImageLookupMap;
    v7->_strengthForImageLookupMap = weakToStrongObjectsMapTable2;

    weakToStrongObjectsMapTable3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    sortedTemplateImageKeysBySizeForSettings = v7->_sortedTemplateImageKeysBySizeForSettings;
    v7->_sortedTemplateImageKeysBySizeForSettings = weakToStrongObjectsMapTable3;

    v7->_unfairLock._os_unfair_lock_opaque = 0;
    v7->_memoryPoolLock._os_unfair_lock_opaque = 0;
    v16 = objc_opt_new();
    memoryPoolLock_memoryPoolsBySlotSize = v7->_memoryPoolLock_memoryPoolsBySlotSize;
    v7->_memoryPoolLock_memoryPoolsBySlotSize = v16;
  }

  return v7;
}

- (BOOL)isCachedTemplateImage:(id)image
{
  imageCopy = image;
  os_unfair_lock_lock(&self->_unfairLock);
  v5 = [(NSHashTable *)self->_cachedTemplatedImages containsObject:imageCopy];

  os_unfair_lock_unlock(&self->_unfairLock);
  return v5;
}

- (BOOL)containsTemplateForSettings:(id)settings
{
  settingsCopy = settings;
  os_unfair_lock_lock(&self->_unfairLock);
  v5 = [(NSMapTable *)self->_templateImagesBySizeForSettings objectForKey:settingsCopy];

  os_unfair_lock_unlock(&self->_unfairLock);
  return v5 != 0;
}

- (id)templateImageForSettings:(id)settings matchingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v31 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  os_unfair_lock_lock(&self->_unfairLock);
  v8 = [(NSMapTable *)self->_templateImagesBySizeForSettings objectForKey:settingsCopy];
  v9 = [(NSMapTable *)self->_sortedTemplateImageKeysBySizeForSettings objectForKey:settingsCopy];
  if (!v9)
  {
    allKeys = [v8 allKeys];
    v9 = [allKeys sortedArrayUsingComparator:&__block_literal_global_39];

    [(NSMapTable *)self->_sortedTemplateImageKeysBySizeForSettings setObject:v9 forKey:settingsCopy];
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
    lastObject = [v11 lastObject];
    v14 = [v8 objectForKey:lastObject];

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

- (void)cacheTemplateShadowImage:(id)image settings:(id)settings maxSize:(CGSize)size
{
  settingsCopy = settings;
  imageCopy = image;
  os_unfair_lock_lock(&self->_unfairLock);
  v8 = [(NSMapTable *)self->_templateImagesBySizeForSettings objectForKey:settingsCopy];
  if (!v8)
  {
    v8 = objc_opt_new();
    [(NSMapTable *)self->_templateImagesBySizeForSettings setObject:v8 forKey:settingsCopy];
  }

  v9 = MEMORY[0x1E696B098];
  [imageCopy size];
  v10 = [v9 valueWithCGSize:?];
  [v8 setObject:imageCopy forKey:v10];
  [(NSHashTable *)self->_cachedTemplatedImages addObject:imageCopy];

  [(NSMapTable *)self->_sortedTemplateImageKeysBySizeForSettings removeObjectForKey:settingsCopy];
  os_unfair_lock_unlock(&self->_unfairLock);
}

- (id)cachedStrengthForImage:(id)image strength:(double)strength generator:(id)generator
{
  v24 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  generatorCopy = generator;
  engine = [(SBUILegibilityCache *)self engine];
  os_unfair_lock_lock(&self->_unfairLock);
  strongToWeakObjectsMapTable = [(NSMapTable *)self->_strengthForImageLookupMap objectForKey:imageCopy];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:strength];
  v13 = [strongToWeakObjectsMapTable objectForKey:v12];

  if (v13)
  {
    v14 = SBLogLegibility();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v18 = 138412802;
    v19 = engine;
    v20 = 2112;
    v21 = imageCopy;
    v22 = 2048;
    strengthCopy2 = strength;
    v15 = "(%@) Skipped drawing strength for image %@ / %f";
    goto LABEL_13;
  }

  v13 = generatorCopy[2](generatorCopy, imageCopy, strength);
  if (v13)
  {
    if (!strongToWeakObjectsMapTable)
    {
      strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      [(NSMapTable *)self->_strengthForImageLookupMap setObject:strongToWeakObjectsMapTable forKey:imageCopy];
    }

    v16 = [MEMORY[0x1E696AD98] numberWithDouble:strength];
    [strongToWeakObjectsMapTable setObject:v13 forKey:v16];
  }

  v14 = SBLogLegibility();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138412802;
    v19 = engine;
    v20 = 2112;
    v21 = imageCopy;
    v22 = 2048;
    strengthCopy2 = strength;
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

- (id)memoryPoolForGraphicsContextType:(int64_t)type matchingSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  os_unfair_lock_lock(&self->_memoryPoolLock);
  v10 = [MEMORY[0x1E69DCAB8] sbf_bytesNeededForSize:type scale:width withContextType:{height, scale}];
  allKeys = [(NSMutableDictionary *)self->_memoryPoolLock_memoryPoolsBySlotSize allKeys];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__SBUILegibilityCache_memoryPoolForGraphicsContextType_matchingSize_scale___block_invoke;
  v18[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
  v18[4] = v10;
  v12 = [allKeys bs_firstObjectPassingTest:v18];

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