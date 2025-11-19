@interface PUIMappedImageCacheManager
+ (BOOL)unregisterCacheManagerForURL:(id)a3;
+ (id)defaultCacheManager;
+ (id)registerCacheManager:(id)a3 cacheManager:(id)a4;
+ (void)cleanupOldCaches;
- (BOOL)_cacheLock_deleteCacheDirectoryForKey:(id)a3 error:(id *)a4;
- (BOOL)_cacheLock_removeCacheForKey:(id)a3;
- (BOOL)_cacheLock_teardownCacheForKey:(id)a3;
- (BOOL)removeImageCacheForKey:(id)a3;
- (BOOL)returnImageCache:(id)a3;
- (BOOL)returnImageCacheForKey:(id)a3;
- (NSSet)activeCaches;
- (NSSet)knownCaches;
- (NSString)description;
- (PUIMappedImageCacheManager)initWithNumberOfManagedCaches:(unint64_t)a3 pathProvider:(id)a4;
- (id)_cacheLock_activeCaches;
- (id)_cacheLock_buildMappedImageCacheForKey:(id)a3;
- (id)_cacheLock_checkoutImageCache:(id)a3 didCreateNew:(BOOL *)a4 bumpDate:(id)a5;
- (id)_cacheLock_onDiskCaches;
- (id)checkoutImageCache:(id)a3;
- (id)checkoutImageCache:(id)a3 date:(id)a4;
- (void)_cacheLock_bumpManifestForImageCacheKey:(id)a3 bumpDate:(id)a4;
- (void)_cacheLock_onDiskCaches;
- (void)_cacheLock_truncateCaches:(BOOL)a3;
- (void)_cacheLock_writeManifest;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PUIMappedImageCacheManager

+ (id)defaultCacheManager
{
  if (defaultCacheManager_onceToken != -1)
  {
    +[PUIMappedImageCacheManager defaultCacheManager];
  }

  v3 = defaultCacheManager_defaultCacheManager;

  return v3;
}

void __49__PUIMappedImageCacheManager_defaultCacheManager__block_invoke()
{
  v0 = [PUIMappedImageCacheManager alloc];
  v1 = [MEMORY[0x1E69C5148] scopedSystemContainerForCurrentProcess];
  v2 = [v1 providerByAppendingPathComponent:@"PBUIMappedImageCacheManager-Default"];
  v3 = [(PUIMappedImageCacheManager *)v0 initWithNumberOfManagedCaches:10 pathProvider:v2];
  v4 = defaultCacheManager_defaultCacheManager;
  defaultCacheManager_defaultCacheManager = v3;

  v5 = *(defaultCacheManager_defaultCacheManager + 48);
  *(defaultCacheManager_defaultCacheManager + 48) = @"PBUIMappedImageCacheManager-Default";

  v6 = dispatch_get_global_queue(9, 0);
  dispatch_async(v6, &__block_literal_global_4_0);
}

+ (void)cleanupOldCaches
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C5148] scopedSystemContainerForCurrentProcess];
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v16 = v2;
  v4 = [v2 cachesPath];
  v5 = [v3 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:1 error:0];

  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 lastPathComponent];
        v12 = [v11 hasPrefix:@"PosterViewController"];

        if (v12)
        {
          v17 = 0;
          v13 = [v3 removeItemAtURL:v10 error:&v17];
          v14 = v17;
          if ((v13 & 1) == 0)
          {
            v15 = PUILogCaching();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v23 = v10;
              v24 = 2114;
              v25 = v14;
              _os_log_error_impl(&dword_1A8C85000, v15, OS_LOG_TYPE_ERROR, "Unable to remove old cache %@: %{public}@", buf, 0x16u);
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }
}

+ (id)registerCacheManager:(id)a3 cacheManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    os_unfair_lock_lock(&_knownCacheDirectoryLock);
    if (registerCacheManager_cacheManager__onceToken[0] != -1)
    {
      +[PUIMappedImageCacheManager registerCacheManager:cacheManager:];
    }

    v8 = [__knownCacheDirectories objectForKey:v5];
    if (!v8)
    {
      [__knownCacheDirectories setObject:v7 forKey:v5];
      if (([v5 checkResourceIsReachableAndReturnError:0] & 1) == 0)
      {
        v9 = [MEMORY[0x1E696AC08] defaultManager];
        v10 = PFFileProtectionNoneAttributes();
        v15 = 0;
        v11 = [v9 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:v10 error:&v15];
        v12 = v15;

        if ((v11 & 1) == 0)
        {
          v13 = PUILogCaching();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            +[PUIMappedImageCacheManager registerCacheManager:cacheManager:];
          }
        }
      }
    }

    os_unfair_lock_unlock(&_knownCacheDirectoryLock);
  }

  return v8;
}

uint64_t __64__PUIMappedImageCacheManager_registerCacheManager_cacheManager___block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v1 = __knownCacheDirectories;
  __knownCacheDirectories = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)unregisterCacheManagerForURL:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&_knownCacheDirectoryLock);
  v4 = [__knownCacheDirectories objectForKey:v3];
  v5 = v4 != 0;

  [__knownCacheDirectories removeObjectForKey:v3];
  os_unfair_lock_unlock(&_knownCacheDirectoryLock);
  return v5;
}

- (PUIMappedImageCacheManager)initWithNumberOfManagedCaches:(unint64_t)a3 pathProvider:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    [PUIMappedImageCacheManager initWithNumberOfManagedCaches:a2 pathProvider:?];
  }

  v8 = v7;
  v9 = [v7 cachesPath];
  v10 = [v9 URLByStandardizingPath];

  if (([v10 isFileURL] & 1) == 0)
  {
    [PUIMappedImageCacheManager initWithNumberOfManagedCaches:a2 pathProvider:?];
  }

  v11 = [objc_opt_class() registerCacheManager:v10 cacheManager:self];
  v12 = v11;
  if (!v11 || v11 == self)
  {
    v38.receiver = self;
    v38.super_class = PUIMappedImageCacheManager;
    v14 = [(PUIMappedImageCacheManager *)&v38 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_cacheURL, v10);
      v16 = [objc_alloc(MEMORY[0x1E698E610]) initWithFlag:0];
      invalidationFlag = v15->_invalidationFlag;
      v15->_invalidationFlag = v16;

      v18 = [(NSURL *)v15->_cacheURL URLByAppendingPathComponent:@".CacheManagerManifest.plist" isDirectory:0];
      manifestURL = v15->_manifestURL;
      v15->_manifestURL = v18;

      v15->_numberOfManagedCaches = a3;
      v20 = [MEMORY[0x1E69C5148] providerFromProvider:v8];
      pathProvider = v15->_pathProvider;
      v15->_pathProvider = v20;

      v15->_cacheLock._os_unfair_lock_opaque = 0;
      v22 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      cacheLock_cacheKeyToWeakCache = v15->_cacheLock_cacheKeyToWeakCache;
      v15->_cacheLock_cacheKeyToWeakCache = v22;

      v24 = v15->_manifestURL;
      v37 = 0;
      v25 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v24 options:1 error:&v37];
      v26 = v37;
      if (v26)
      {
        v27 = PUILogCaching();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [PUIMappedImageCacheManager initWithNumberOfManagedCaches:pathProvider:];
        }
      }

      if ([v25 length])
      {
        v28 = [MEMORY[0x1E696AE40] propertyListWithData:v25 options:0 format:0 error:0];
        v29 = [v28 mutableCopy];
        v30 = v29;
        if (v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = objc_opt_new();
        }

        cacheLock_manifest = v15->_cacheLock_manifest;
        v15->_cacheLock_manifest = v31;

        if (a3 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(PUIMappedImageCacheManager *)v15 _cacheLock_truncateCaches:1];
        }
      }

      else
      {
        v32 = objc_opt_new();
        v33 = v15->_cacheLock_manifest;
        v15->_cacheLock_manifest = v32;
      }
    }

    v13 = v15;
    self = v13;
  }

  else
  {
    v13 = v11;
  }

  v35 = v13;

  return v35;
}

- (void)dealloc
{
  [(PUIMappedImageCacheManager *)self invalidate];
  v3.receiver = self;
  v3.super_class = PUIMappedImageCacheManager;
  [(PUIMappedImageCacheManager *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v4 = [v3 appendObject:@"invalidated" withName:@"invalidationStatus"];
  }

  else
  {
    v5 = [(PUIMappedImageCacheManager *)self activeCaches];
    v6 = [v3 appendObject:v5 withName:@"activeCaches" skipIfNil:1];
  }

  v7 = [v3 build];

  return v7;
}

- (id)checkoutImageCache:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  v7 = [(PUIMappedImageCacheManager *)self checkoutImageCache:v5 date:v6];

  return v7;
}

- (id)checkoutImageCache:(id)a3 date:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    if (![v7 length])
    {
      [PUIMappedImageCacheManager checkoutImageCache:a2 date:?];
    }

    os_unfair_lock_lock(&self->_cacheLock);
    v9 = [(PUIMappedImageCacheManager *)self _cacheLock_checkoutImageCache:v7 didCreateNew:0 bumpDate:v8];
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  return v9;
}

- (BOOL)returnImageCacheForKey:(id)a3
{
  v4 = a3;
  if ([v4 length] && (-[BSAtomicFlag getFlag](self->_invalidationFlag, "getFlag") & 1) == 0)
  {
    os_unfair_lock_lock(&self->_cacheLock);
    v5 = [(PUIMappedImageCacheManager *)self _cacheLock_teardownCacheForKey:v4];
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)returnImageCache:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 pui_cacheIdentifier];
  if (v4)
  {
    v5 = [(PUIMappedImageCacheManager *)self returnImageCacheForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)removeImageCacheForKey:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    os_unfair_lock_lock(&self->_cacheLock);
    v5 = [(PUIMappedImageCacheManager *)self _cacheLock_removeCacheForKey:v4];
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSSet)activeCaches
{
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_cacheLock);
    v3 = [(PUIMappedImageCacheManager *)self _cacheLock_activeCaches];
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  return v3;
}

- (id)_cacheLock_activeCaches
{
  v3 = objc_opt_new();
  v4 = [(NSMapTable *)self->_cacheLock_cacheKeyToWeakCache keyEnumerator];
  v5 = [v4 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      [v3 addObject:v6];
      v7 = [v4 nextObject];

      v6 = v7;
    }

    while (v7);
  }

  return v3;
}

- (NSSet)knownCaches
{
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_cacheLock);
    v4 = MEMORY[0x1E695DFD8];
    v5 = [(NSMutableDictionary *)self->_cacheLock_manifest allKeys];
    v3 = [v4 setWithArray:v5];

    os_unfair_lock_unlock(&self->_cacheLock);
  }

  return v3;
}

- (void)invalidate
{
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    [objc_opt_class() unregisterCacheManagerForURL:self->_cacheURL];
    os_unfair_lock_lock(&self->_cacheLock);
    [(NSMapTable *)self->_cacheLock_cacheKeyToWeakCache removeAllObjects];

    os_unfair_lock_unlock(&self->_cacheLock);
  }
}

- (id)_cacheLock_checkoutImageCache:(id)a3 didCreateNew:(BOOL *)a4 bumpDate:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = PUILogCaching();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    cacheName = self->_cacheName;
    v19 = 138544130;
    v20 = cacheName;
    v21 = 2048;
    v22 = self;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_1A8C85000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] checkoutImageCache:%@ bumpDate:%@", &v19, 0x2Au);
  }

  v12 = [(NSMapTable *)self->_cacheLock_cacheKeyToWeakCache objectForKey:v8];
  v13 = PUILogCaching();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = self->_cacheName;
      v19 = 138543874;
      v20 = v15;
      v21 = 2048;
      v22 = self;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_1A8C85000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] checkoutImageCache found cache for %@", &v19, 0x20u);
    }

    v16 = v12;
    if (a4)
    {
LABEL_7:
      *a4 = v12 == 0;
    }
  }

  else
  {
    if (v14)
    {
      v18 = self->_cacheName;
      v19 = 138543874;
      v20 = v18;
      v21 = 2048;
      v22 = self;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_1A8C85000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] checkoutImageCache faulting in cache for %@", &v19, 0x20u);
    }

    v16 = [(PUIMappedImageCacheManager *)self _cacheLock_buildMappedImageCacheForKey:v8];
    if (a4)
    {
      goto LABEL_7;
    }
  }

  [(PUIMappedImageCacheManager *)self _cacheLock_bumpManifestForImageCacheKey:v8 bumpDate:v9];

  return v16;
}

- (id)_cacheLock_buildMappedImageCacheForKey:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PUILogCaching();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cacheName = self->_cacheName;
    v12 = 138543874;
    v13 = cacheName;
    v14 = 2048;
    v15 = self;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_1A8C85000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] building mapped image cache for key %@", &v12, 0x20u);
  }

  v7 = [objc_alloc(MEMORY[0x1E69C5148]) initFromProvider:self->_pathProvider];
  v8 = [v7 providerByAppendingPathComponent:v4];

  v9 = [MEMORY[0x1E698E7F8] optionsWithContainerPathProvider:v8];
  v10 = [objc_alloc(MEMORY[0x1E698E7F0]) initWithUniqueIdentifier:v4 options:v9];
  [v10 pbui_setCacheManager:self cacheIdentifier:v4];
  [(NSMapTable *)self->_cacheLock_cacheKeyToWeakCache setObject:v10 forKey:v4];

  return v10;
}

- (BOOL)_cacheLock_teardownCacheForKey:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PUILogCaching();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cacheName = self->_cacheName;
    v16 = 138543874;
    v17 = cacheName;
    v18 = 2048;
    v19 = self;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_1A8C85000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] teardownCacheForKey key %@", &v16, 0x20u);
  }

  v7 = [(NSMapTable *)self->_cacheLock_cacheKeyToWeakCache objectForKey:v4];

  if (v7)
  {
    v8 = PUILogCaching();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_12;
    }

    v9 = self->_cacheName;
    v16 = 138543874;
    v17 = v9;
    v18 = 2048;
    v19 = self;
    v20 = 2112;
    v21 = v4;
    v10 = "[%{public}@/%p] teardownCacheForKey key %@ aborted; cache still alive somewhere";
LABEL_6:
    _os_log_impl(&dword_1A8C85000, v8, OS_LOG_TYPE_DEFAULT, v10, &v16, 0x20u);
    goto LABEL_7;
  }

  v11 = [(NSMutableDictionary *)self->_cacheLock_manifest objectForKey:v4];

  v8 = PUILogCaching();
  v12 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    v15 = self->_cacheName;
    v16 = 138543874;
    v17 = v15;
    v18 = 2048;
    v19 = self;
    v20 = 2112;
    v21 = v4;
    v10 = "[%{public}@/%p] teardownCacheForKey key %@ ignored - already cleaned up";
    goto LABEL_6;
  }

  if (v12)
  {
    v13 = self->_cacheName;
    v16 = 138543874;
    v17 = v13;
    v18 = 2048;
    v19 = self;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_1A8C85000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] teardownCacheForKey key %@ finished", &v16, 0x20u);
  }

  [(PUIMappedImageCacheManager *)self _cacheLock_truncateCaches:0];
LABEL_12:

  return v7 == 0;
}

- (BOOL)_cacheLock_removeCacheForKey:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PUILogCaching();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cacheName = self->_cacheName;
    *buf = 138543874;
    v22 = cacheName;
    v23 = 2048;
    v24 = self;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_1A8C85000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] removeCacheForKey %@", buf, 0x20u);
  }

  v7 = [(NSMapTable *)self->_cacheLock_cacheKeyToWeakCache objectForKey:v4];

  if (v7)
  {
    v8 = PUILogCaching();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:
      v11 = 0;
      goto LABEL_16;
    }

    v9 = self->_cacheName;
    *buf = 138543874;
    v22 = v9;
    v23 = 2048;
    v24 = self;
    v25 = 2112;
    v26 = v4;
    v10 = "[%{public}@/%p] removeCacheForKey %@ aborted; cache is live";
LABEL_6:
    _os_log_impl(&dword_1A8C85000, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0x20u);
    goto LABEL_7;
  }

  v12 = [(NSMutableDictionary *)self->_cacheLock_manifest objectForKey:v4];

  if (!v12)
  {
    v8 = PUILogCaching();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v18 = self->_cacheName;
    *buf = 138543874;
    v22 = v18;
    v23 = 2048;
    v24 = self;
    v25 = 2112;
    v26 = v4;
    v10 = "[%{public}@/%p] removeCacheForKey %@ aborted; not currently in manifest";
    goto LABEL_6;
  }

  v20 = 0;
  v13 = [(PUIMappedImageCacheManager *)self _cacheLock_deleteCacheDirectoryForKey:v4 error:&v20];
  v8 = v20;
  if (!v13)
  {
    v14 = PUILogCaching();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = self->_cacheName;
      *buf = 138544130;
      v22 = v19;
      v23 = 2048;
      v24 = self;
      v25 = 2112;
      v26 = v4;
      v27 = 2114;
      v28 = v8;
      _os_log_error_impl(&dword_1A8C85000, v14, OS_LOG_TYPE_ERROR, "[%{public}@/%p] removeCacheForKey; failed to cleanup cache key %@: %{public}@", buf, 0x2Au);
    }
  }

  v15 = PUILogCaching();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_cacheName;
    *buf = 138543874;
    v22 = v16;
    v23 = 2048;
    v24 = self;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_1A8C85000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] removeCacheForKey %@ completed; cache destroyed", buf, 0x20u);
  }

  v11 = 1;
LABEL_16:

  return v11;
}

- (void)_cacheLock_bumpManifestForImageCacheKey:(id)a3 bumpDate:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PUILogCaching();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    cacheName = self->_cacheName;
    v12 = 138544130;
    v13 = cacheName;
    v14 = 2048;
    v15 = self;
    v16 = 2112;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_1A8C85000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] bumpManifestForImageCacheKey %@ ; bumping to %{public}@", &v12, 0x2Au);
  }

  cacheLock_manifest = self->_cacheLock_manifest;
  if (v7)
  {
    [(NSMutableDictionary *)self->_cacheLock_manifest setObject:v7 forKey:v6];
  }

  else
  {
    v11 = [MEMORY[0x1E695DF00] date];
    [(NSMutableDictionary *)cacheLock_manifest setObject:v11 forKey:v6];
  }

  [(PUIMappedImageCacheManager *)self _cacheLock_writeManifest];
}

- (void)_cacheLock_writeManifest
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_cacheLock_truncateCaches:(BOOL)a3
{
  v3 = a3;
  v87 = *MEMORY[0x1E69E9840];
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    v5 = PUILogCaching();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      cacheName = self->_cacheName;
      *buf = 138543874;
      v79 = cacheName;
      v80 = 2048;
      v81 = self;
      v82 = 1024;
      LODWORD(v83) = v3;
      _os_log_impl(&dword_1A8C85000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; truncate on disk caches? %{BOOL}u", buf, 0x1Cu);
    }

    v7 = [(PUIMappedImageCacheManager *)self numberOfManagedCaches];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = PUILogCaching();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_cacheName;
        *buf = 138543618;
        v79 = v9;
        v80 = 2048;
        v81 = self;
        _os_log_impl(&dword_1A8C85000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches bailing;  number of managed caches is NSNotFound", buf, 0x16u);
      }
    }

    else
    {
      v10 = v7;
      v8 = [(PUIMappedImageCacheManager *)self _cacheLock_activeCaches];
      v11 = MEMORY[0x1E695DFD8];
      v12 = [(NSMutableDictionary *)self->_cacheLock_manifest allKeys];
      v13 = [v11 setWithArray:v12];

      v14 = [v13 count];
      v15 = PUILogCaching();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14 <= v10)
      {
        if (v16)
        {
          v44 = self->_cacheName;
          *buf = 138543618;
          v79 = v44;
          v80 = 2048;
          v81 = self;
          _os_log_impl(&dword_1A8C85000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; known caches is less than max number of managed caches", buf, 0x16u);
        }

        v30 = 0;
      }

      else
      {
        if (v16)
        {
          v17 = self->_cacheName;
          *buf = 138543618;
          v79 = v17;
          v80 = 2048;
          v81 = self;
          _os_log_impl(&dword_1A8C85000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; will proceed", buf, 0x16u);
        }

        v18 = objc_alloc(MEMORY[0x1E698E6F8]);
        v19 = [(NSMutableDictionary *)self->_cacheLock_manifest count];
        v20 = [MEMORY[0x1E698E720] sortUsingComparator:&__block_literal_global_56_0];
        v21 = [v18 initWithCapacity:v19 keyOrderingStrategy:v20];

        cacheLock_manifest = self->_cacheLock_manifest;
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __56__PUIMappedImageCacheManager__cacheLock_truncateCaches___block_invoke_2;
        v75[3] = &unk_1E7856398;
        v15 = v21;
        v76 = v15;
        [(NSMutableDictionary *)cacheLock_manifest enumerateKeysAndObjectsUsingBlock:v75];
        v23 = [v15 count]- v10;
        if (v23 < 1)
        {
          v30 = 0;
        }

        else
        {
          v24 = PUILogCaching();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = self->_cacheName;
            *buf = 138543874;
            v79 = v25;
            v80 = 2048;
            v81 = self;
            v82 = 2048;
            v83 = v23;
            _os_log_impl(&dword_1A8C85000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; will attempt to cleanup %lu caches", buf, 0x20u);
          }

          v62 = v3;

          v61 = v15;
          v26 = [v15 allValues];
          v27 = [v26 subarrayWithRange:{v10, v23}];

          v74 = 0u;
          v72 = 0u;
          v73 = 0u;
          v71 = 0u;
          obj = v27;
          v28 = [obj countByEnumeratingWithState:&v71 objects:v86 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = 0;
            v31 = *v72;
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v72 != v31)
                {
                  objc_enumerationMutation(obj);
                }

                v33 = *(*(&v71 + 1) + 8 * i);
                v34 = [v8 containsObject:v33];
                v35 = PUILogCaching();
                v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
                if (v34)
                {
                  if (v36)
                  {
                    v37 = self->_cacheName;
                    *buf = 138543874;
                    v79 = v37;
                    v80 = 2048;
                    v81 = self;
                    v82 = 2114;
                    v83 = v33;
                    _os_log_impl(&dword_1A8C85000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; will not cleanup cache %{public}@ as it is still active", buf, 0x20u);
                  }
                }

                else
                {
                  if (v36)
                  {
                    v38 = self->_cacheName;
                    *buf = 138543874;
                    v79 = v38;
                    v80 = 2048;
                    v81 = self;
                    v82 = 2114;
                    v83 = v33;
                    _os_log_impl(&dword_1A8C85000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; will cleanup cache %{public}@", buf, 0x20u);
                  }

                  [(NSMutableDictionary *)self->_cacheLock_manifest removeObjectForKey:v33];
                  v70 = 0;
                  v39 = [(PUIMappedImageCacheManager *)self _cacheLock_deleteCacheDirectoryForKey:v33 error:&v70];
                  v35 = v70;
                  if (!v39)
                  {
                    v40 = PUILogCaching();
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                    {
                      v43 = self->_cacheName;
                      *buf = 138544130;
                      v79 = v43;
                      v80 = 2048;
                      v81 = self;
                      v82 = 2112;
                      v83 = v33;
                      v84 = 2114;
                      v85 = v35;
                      _os_log_error_impl(&dword_1A8C85000, v40, OS_LOG_TYPE_ERROR, "[%{public}@/%p] truncateCaches; failed to cleanup cache key %@: %{public}@", buf, 0x2Au);
                    }
                  }

                  v41 = PUILogCaching();
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                  {
                    v42 = self->_cacheName;
                    *buf = 138543874;
                    v79 = v42;
                    v80 = 2048;
                    v81 = self;
                    v82 = 2114;
                    v83 = v33;
                    _os_log_impl(&dword_1A8C85000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; did cleanup cache %{public}@", buf, 0x20u);
                  }

                  v30 = 1;
                }
              }

              v29 = [obj countByEnumeratingWithState:&v71 objects:v86 count:16];
            }

            while (v29);
          }

          else
          {
            v30 = 0;
          }

          v3 = v62;
          v15 = v61;
        }
      }

      if (v3)
      {
        v63 = v30;
        v45 = PUILogCaching();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = self->_cacheName;
          *buf = 138543618;
          v79 = v46;
          v80 = 2048;
          v81 = self;
          _os_log_impl(&dword_1A8C85000, v45, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; will truncate on disk caches", buf, 0x16u);
        }

        v47 = [(PUIMappedImageCacheManager *)self _cacheLock_onDiskCaches];
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v48 = [v47 countByEnumeratingWithState:&v66 objects:v77 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v67;
          do
          {
            for (j = 0; j != v49; ++j)
            {
              if (*v67 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v66 + 1) + 8 * j);
              if (([v13 containsObject:v52] & 1) == 0 && (-[NSObject containsObject:](v8, "containsObject:", v52) & 1) == 0)
              {
                v53 = PUILogCaching();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  v54 = self->_cacheName;
                  *buf = 138543874;
                  v79 = v54;
                  v80 = 2048;
                  v81 = self;
                  v82 = 2114;
                  v83 = v52;
                  _os_log_impl(&dword_1A8C85000, v53, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; truncating on disk cache %{public}@", buf, 0x20u);
                }

                v65 = 0;
                v55 = [(PUIMappedImageCacheManager *)self _cacheLock_deleteCacheDirectoryForKey:v52 error:&v65];
                v56 = v65;
                if (!v55)
                {
                  v57 = PUILogCaching();
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    v58 = self->_cacheName;
                    *buf = 138544130;
                    v79 = v58;
                    v80 = 2048;
                    v81 = self;
                    v82 = 2112;
                    v83 = v52;
                    v84 = 2114;
                    v85 = v56;
                    _os_log_error_impl(&dword_1A8C85000, v57, OS_LOG_TYPE_ERROR, "[%{public}@/%p] truncateOnDiskCaches; failed to cleanup on disk cache key %@: %{public}@", buf, 0x2Au);
                  }
                }
              }
            }

            v49 = [v47 countByEnumeratingWithState:&v66 objects:v77 count:16];
          }

          while (v49);
        }

        v30 = v63;
      }

      if (v30)
      {
        v59 = PUILogCaching();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = self->_cacheName;
          *buf = 138543618;
          v79 = v60;
          v80 = 2048;
          v81 = self;
          _os_log_impl(&dword_1A8C85000, v59, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; wrinting to manifest", buf, 0x16u);
        }

        [(PUIMappedImageCacheManager *)self _cacheLock_writeManifest];
      }
    }
  }
}

- (BOOL)_cacheLock_deleteCacheDirectoryForKey:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E696AC08];
  v7 = a3;
  v8 = [v6 defaultManager];
  v9 = [(NSURL *)self->_cacheURL URLByAppendingPathComponent:v7 isDirectory:1];

  LOBYTE(a4) = [v8 removeItemAtURL:v9 error:a4];
  return a4;
}

- (id)_cacheLock_onDiskCaches
{
  v43[1] = *MEMORY[0x1E69E9840];
  v26 = objc_opt_new();
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v25 = self;
  cacheURL = self->_cacheURL;
  v5 = *MEMORY[0x1E695DB20];
  v43[0] = *MEMORY[0x1E695DB20];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  v33 = 0;
  v7 = [v3 contentsOfDirectoryAtURL:cacheURL includingPropertiesForKeys:v6 options:5 error:&v33];
  v8 = v33;

  if (v8)
  {
    v9 = PUILogCaching();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PUIMappedImageCacheManager _cacheLock_onDiskCaches];
    }
  }

  v24 = v8;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    v14 = *MEMORY[0x1E695DB18];
    do
    {
      v15 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v29 + 1) + 8 * v15);
        v27 = 0;
        v28 = 0;
        [v16 getResourceValue:&v28 forKey:v5 error:&v27];
        v17 = v28;
        v18 = v27;
        if (v18)
        {
          v19 = PUILogCaching();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            cacheName = v25->_cacheName;
            *buf = 138544130;
            v35 = cacheName;
            v36 = 2048;
            v37 = v25;
            v38 = 2112;
            v39 = v16;
            v40 = 2114;
            v41 = v18;
            _os_log_error_impl(&dword_1A8C85000, v19, OS_LOG_TYPE_ERROR, "[%{public}@/%p] onDiskCaches; failed to read resource type for URL %@: %{public}@", buf, 0x2Au);
          }
        }

        if ([v17 isEqualToString:v14])
        {
          v20 = [v16 lastPathComponent];
          [v26 addObject:v20];
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v12);
  }

  v22 = [v26 copy];

  return v22;
}

+ (void)registerCacheManager:cacheManager:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithNumberOfManagedCaches:(const char *)a1 pathProvider:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[cacheURL isFileURL]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithNumberOfManagedCaches:pathProvider:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithNumberOfManagedCaches:(const char *)a1 pathProvider:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"pathProvider", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)checkoutImageCache:(const char *)a1 date:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[imageCacheKey length] > 0", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_cacheLock_onDiskCaches
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end