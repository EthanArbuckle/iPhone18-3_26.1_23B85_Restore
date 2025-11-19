@interface SRAssetBundleCache
+ (id)cacheFilePath;
+ (id)sharedInstance;
- (BOOL)upsertAssetBundleWithAssetType:(id)a3 language:(id)a4 deliveryType:(id)a5 bundleVersion:(id)a6 path:(id)a7;
- (SRAssetBundleCache)init;
- (id)dumpCache;
- (void)flushCacheToFile;
- (void)loadCacheFromFile;
- (void)loadFailedForLanguage:(id)a3 assetType:(id)a4 deliveryType:(id)a5;
- (void)queryCache:(id)a3 loading:(BOOL)a4;
- (void)removeAssetBundleWithAssetType:(id)a3 language:(id)a4 deliveryType:(id)a5;
- (void)updateCacheWithResults:(id)a3 loading:(BOOL)a4;
@end

@implementation SRAssetBundleCache

uint64_t __36__SRAssetBundleCache_sharedInstance__block_invoke()
{
  sharedInstance_cache = objc_alloc_init(SRAssetBundleCache);

  return MEMORY[0x1EEE66BB8]();
}

- (SRAssetBundleCache)init
{
  v6.receiver = self;
  v6.super_class = SRAssetBundleCache;
  v2 = [(SRAssetBundleCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cache = v2->_cache;
    v2->_cache = v3;

    if (SRIsRunningInServer())
    {
      [(SRAssetBundleCache *)v2 loadCacheFromFile];
    }
  }

  return v2;
}

- (void)loadCacheFromFile
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "Error loading cache %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SRAssetBundleCache sharedInstance];
  }

  v3 = sharedInstance_cache;

  return v3;
}

+ (id)cacheFilePath
{
  v2 = cacheFilePath_sCachePath;
  if (!cacheFilePath_sCachePath)
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = SRGetResourcePath();
    v5 = [v3 initWithFormat:@"%@/assetBundleCache.plist", v4];
    v6 = cacheFilePath_sCachePath;
    cacheFilePath_sCachePath = v5;

    v2 = cacheFilePath_sCachePath;
  }

  return v2;
}

- (void)queryCache:(id)a3 loading:(BOOL)a4
{
  v6 = a3;
  pthread_rwlock_rdlock(&sCacheLock);
  v7 = [v6 queryEntries];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__SRAssetBundleCache_queryCache_loading___block_invoke;
  v8[3] = &unk_1E7A2AEF8;
  v8[4] = self;
  v9 = a4;
  [v7 enumerateKeysAndObjectsUsingBlock:v8];

  pthread_rwlock_unlock(&sCacheLock);
}

void __41__SRAssetBundleCache_queryCache_loading___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__SRAssetBundleCache_queryCache_loading___block_invoke_2;
  v7[3] = &unk_1E7A2AED0;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = *(a1 + 40);
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __41__SRAssetBundleCache_queryCache_loading___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__SRAssetBundleCache_queryCache_loading___block_invoke_3;
  v8[3] = &unk_1E7A2AEA8;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  v11 = *(a1 + 48);
  v7 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
}

void __41__SRAssetBundleCache_queryCache_loading___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v10 = [v9 objectForKeyedSubscript:*(a1 + 48)];
  if (!v10)
  {

    goto LABEL_10;
  }

  v11 = v10;
  v12 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v13 = [v12 objectForKeyedSubscript:*(a1 + 48)];
  v14 = [v13 objectForKeyedSubscript:v24];

  if (!v14)
  {
LABEL_10:
    [v5 makeResultNone];
    goto LABEL_11;
  }

  v15 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v16 = [v15 objectForKeyedSubscript:*(a1 + 48)];
  v17 = [v16 objectForKeyedSubscript:v24];

  v18 = [v17 bundleVersion];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  v20 = [v17 bundleVersion];
  v21 = [v20 version];

  if (v21)
  {
    v22 = [v17 bundleVersion];
    v23 = [v17 path];
    [v5 makeResultWithBundleVersion:v22 path:v23 loaded:{objc_msgSend(v17, "loaded")}];

    if (*(a1 + 56) == 1)
    {
      [v17 setLoaded:1];
    }
  }

  else
  {
LABEL_14:
    [v5 makeResultNone];
  }

LABEL_11:
}

- (void)loadFailedForLanguage:(id)a3 assetType:(id)a4 deliveryType:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  pthread_rwlock_wrlock(&sCacheLock);
  cache = self->_cache;
  if (cache)
  {
    v11 = [(NSMutableDictionary *)cache objectForKeyedSubscript:v20];
    if (v11)
    {
      v12 = v11;
      v13 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v20];
      v14 = [v13 objectForKeyedSubscript:v8];
      if (v14)
      {
        v15 = v14;
        v16 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v20];
        v17 = [v16 objectForKeyedSubscript:v8];
        v18 = [v17 objectForKeyedSubscript:v9];

        if (!v18)
        {
          goto LABEL_7;
        }

        v12 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v20];
        v13 = [v12 objectForKeyedSubscript:v8];
        v19 = [v13 objectForKeyedSubscript:v9];
        [v19 setLoaded:0];
      }
    }
  }

LABEL_7:
  pthread_rwlock_unlock(&sCacheLock);
}

- (BOOL)upsertAssetBundleWithAssetType:(id)a3 language:(id)a4 deliveryType:(id)a5 bundleVersion:(id)a6 path:(id)a7
{
  v54 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (assetTypeID(v12) == -1)
  {
    v27 = SRLogCategoryAssets();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 138412802;
    v49 = v12;
    v50 = 2112;
    v51 = v13;
    v52 = 2112;
    v53 = v14;
    v28 = "Invalid asset type %@ for (%@, %@)";
LABEL_20:
    _os_log_error_impl(&dword_1AE58E000, v27, OS_LOG_TYPE_ERROR, v28, buf, 0x20u);
    goto LABEL_21;
  }

  if (deliveryTypeID(v14) == -1)
  {
    v27 = SRLogCategoryAssets();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 138412802;
    v49 = v14;
    v50 = 2112;
    v51 = v13;
    v52 = 2112;
    v53 = v12;
    v28 = "Invalid delivery type %@ for (%@, %@)";
    goto LABEL_20;
  }

  if (!v15)
  {
    v27 = SRLogCategoryAssets();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 138412802;
    v49 = v12;
    v50 = 2112;
    v51 = v13;
    v52 = 2112;
    v53 = v14;
    v28 = "Null bundle version for (%@, %@, %@)";
    goto LABEL_20;
  }

  if (!v16)
  {
    v27 = SRLogCategoryAssets();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v49 = v12;
      v50 = 2112;
      v51 = v13;
      v52 = 2112;
      v53 = v14;
      v28 = "Null path for (%@, %@, %@)";
      goto LABEL_20;
    }

LABEL_21:

    LOBYTE(v29) = 0;
    goto LABEL_22;
  }

  pthread_rwlock_wrlock(&sCacheLock);
  v17 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v13];

  if (!v17)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->_cache setObject:v18 forKeyedSubscript:v13];
  }

  v19 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v13];
  v20 = [v19 objectForKeyedSubscript:v12];

  if (!v20)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v13];
    [v22 setObject:v21 forKeyedSubscript:v12];
  }

  v23 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v13];
  v24 = [v23 objectForKeyedSubscript:v12];
  v25 = [v24 objectForKeyedSubscript:v14];

  v47 = v25;
  if (!v25)
  {
    goto LABEL_25;
  }

  v26 = [v25 bundleVersion];
  if ([v26 compare:v15])
  {

LABEL_25:
    v34 = [SRAssetBundleCacheEntry alloc];
    v35 = assetTypeID(v12);
    v36 = [(SRAssetBundleCacheEntry *)v34 initWithAssetType:v35 language:v13 deliveryType:deliveryTypeID(v14)];
    v37 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v13];
    v38 = [v37 objectForKeyedSubscript:v12];
    [v38 setObject:v36 forKeyedSubscript:v14];

    v29 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v13];
    v39 = [v29 objectForKeyedSubscript:v12];
    v40 = [v39 objectForKeyedSubscript:v14];
    [v40 makeResultWithBundleVersion:v15 path:v16 loaded:0];

    LOBYTE(v29) = 1;
    goto LABEL_26;
  }

  v32 = [v25 path];
  v33 = [v32 isEqualToString:v16];

  if ((v33 & 1) == 0)
  {
    goto LABEL_25;
  }

  LODWORD(v29) = [v25 loaded] ^ 1;
LABEL_26:
  v41 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v13];
  v42 = [v41 objectForKeyedSubscript:v12];
  v43 = [v42 count];

  if (!v43)
  {
    v44 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v13];
    [v44 setObject:0 forKeyedSubscript:v12];
  }

  v45 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v13];
  v46 = [v45 count];

  if (!v46)
  {
    [(NSMutableDictionary *)self->_cache setObject:0 forKeyedSubscript:v13];
  }

  pthread_rwlock_unlock(&sCacheLock);

LABEL_22:
  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (void)removeAssetBundleWithAssetType:(id)a3 language:(id)a4 deliveryType:(id)a5
{
  v21 = a3;
  v8 = a4;
  v9 = a5;
  pthread_rwlock_wrlock(&sCacheLock);
  v10 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v8];

  if (v10)
  {
    v11 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v8];
    v12 = [v11 objectForKeyedSubscript:v21];

    if (v12)
    {
      v13 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v8];
      v14 = [v13 objectForKeyedSubscript:v21];
      [v14 setObject:0 forKeyedSubscript:v9];

      v15 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v8];
      v16 = [v15 objectForKeyedSubscript:v21];
      v17 = [v16 count];

      if (!v17)
      {
        v18 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v8];
        [v18 setObject:0 forKeyedSubscript:v21];
      }
    }

    v19 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v8];
    v20 = [v19 count];

    if (!v20)
    {
      [(NSMutableDictionary *)self->_cache setObject:0 forKeyedSubscript:v8];
    }
  }

  pthread_rwlock_unlock(&sCacheLock);
}

- (void)updateCacheWithResults:(id)a3 loading:(BOOL)a4
{
  v6 = a3;
  pthread_rwlock_wrlock(&sCacheLock);
  v7 = [v6 queryEntries];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__SRAssetBundleCache_updateCacheWithResults_loading___block_invoke;
  v8[3] = &unk_1E7A2AEF8;
  v8[4] = self;
  v9 = a4;
  [v7 enumerateKeysAndObjectsUsingBlock:v8];

  pthread_rwlock_unlock(&sCacheLock);
}

void __53__SRAssetBundleCache_updateCacheWithResults_loading___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__SRAssetBundleCache_updateCacheWithResults_loading___block_invoke_2;
  v9[3] = &unk_1E7A2AED0;
  v9[4] = *(a1 + 32);
  v6 = v5;
  v10 = v6;
  v11 = *(a1 + 40);
  [a3 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v6];
  v8 = [v7 count];

  if (!v8)
  {
    [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:v6];
  }
}

void __53__SRAssetBundleCache_updateCacheWithResults_loading___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __53__SRAssetBundleCache_updateCacheWithResults_loading___block_invoke_3;
  v17 = &unk_1E7A2AEA8;
  v6 = *(a1 + 40);
  v18 = *(a1 + 32);
  v19 = v6;
  v7 = v5;
  v20 = v7;
  v21 = *(a1 + 48);
  [a3 enumerateKeysAndObjectsUsingBlock:&v14];
  v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{*(a1 + 40), v14, v15, v16, v17, v18}];
  if (v8)
  {
    v9 = v8;
    v10 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
    v11 = [v10 objectForKeyedSubscript:v7];
    v12 = [v11 count];

    if (!v12)
    {
      v13 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
      [v13 setObject:0 forKeyedSubscript:v7];
    }
  }
}

void __53__SRAssetBundleCache_updateCacheWithResults_loading___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v42 = a2;
  v5 = a3;
  v6 = [v5 isResultNone];
  v7 = *(*(a1 + 32) + 8);
  if (!v6)
  {
    v17 = [v7 objectForKeyedSubscript:*(a1 + 40)];

    if (!v17)
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [*(*(a1 + 32) + 8) setObject:v18 forKeyedSubscript:*(a1 + 40)];
    }

    v19 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
    v20 = [v19 objectForKeyedSubscript:*(a1 + 48)];

    if (!v20)
    {
      v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v22 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
      [v22 setObject:v21 forKeyedSubscript:*(a1 + 48)];
    }

    v23 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
    v24 = [v23 objectForKeyedSubscript:*(a1 + 48)];
    v9 = [v24 objectForKeyedSubscript:v42];

    if (v9)
    {
      v25 = [v9 bundleVersion];
      v26 = [v5 bundleVersion];
      if ([v25 compare:v26])
      {
      }

      else
      {
        v27 = [v9 path];
        v28 = [v5 path];
        v29 = [v27 isEqualToString:v28];

        if (v29)
        {
          [v5 setLoaded:{objc_msgSend(v9, "loaded")}];
          if (*(a1 + 56) != 1)
          {
LABEL_19:

            goto LABEL_20;
          }

          v30 = v9;
          v31 = 1;
LABEL_18:
          [v30 setLoaded:v31];
          goto LABEL_19;
        }
      }
    }

    v32 = [SRAssetBundleCacheEntry alloc];
    v33 = assetTypeID(*(a1 + 48));
    v34 = [(SRAssetBundleCacheEntry *)v32 initWithAssetType:v33 language:*(a1 + 40) deliveryType:deliveryTypeID(v42)];
    v35 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
    v36 = [v35 objectForKeyedSubscript:*(a1 + 48)];
    [v36 setObject:v34 forKeyedSubscript:v42];

    v37 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
    v38 = [v37 objectForKeyedSubscript:*(a1 + 48)];
    v39 = [v38 objectForKeyedSubscript:v42];
    v40 = [v5 bundleVersion];
    v41 = [v5 path];
    [v39 makeResultWithBundleVersion:v40 path:v41 loaded:*(a1 + 56)];

    v30 = v5;
    v31 = 0;
    goto LABEL_18;
  }

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];
    if (v8)
    {
      v9 = v8;
      v10 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
      v11 = [v10 objectForKeyedSubscript:*(a1 + 48)];
      if (v11)
      {
        v12 = v11;
        v13 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
        v14 = [v13 objectForKeyedSubscript:*(a1 + 48)];
        v15 = [v14 objectForKeyedSubscript:v42];

        if (!v15)
        {
          goto LABEL_20;
        }

        v9 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
        v16 = [v9 objectForKeyedSubscript:*(a1 + 48)];
        [v16 setObject:0 forKeyedSubscript:v42];
      }

      else
      {
      }

      goto LABEL_19;
    }
  }

LABEL_20:
}

void __56__SRAssetBundleCache_queryServerCache_force_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    v5 = 0;
  }

  else
  {
    v6 = a2;
    v5 = [[SRAssetBundleQuery alloc] initWithXPCObject:v6 isResult:1];
  }

  (*(*(a1 + 32) + 16))();
}

void __39__SRAssetBundleCache_loadCacheFromFile__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*(*(a1 + 32) + 8) setObject:v8 forKeyedSubscript:v5];
  }

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __39__SRAssetBundleCache_loadCacheFromFile__block_invoke_2;
  v15 = &unk_1E7A2AF70;
  v16 = *(a1 + 32);
  v9 = v5;
  v17 = v9;
  [v6 enumerateKeysAndObjectsUsingBlock:&v12];
  v10 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{v9, v12, v13, v14, v15, v16}];
  v11 = [v10 count];

  if (!v11)
  {
    [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:v9];
  }
}

void __39__SRAssetBundleCache_loadCacheFromFile__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = assetTypeID(v5);
  if (v7 == -1)
  {
    v21 = SRLogCategoryAssets();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __39__SRAssetBundleCache_loadCacheFromFile__block_invoke_2_cold_1();
    }
  }

  else
  {
    v8 = v7;
    v9 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
    v10 = [v9 objectForKeyedSubscript:v5];

    if (!v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
      [v12 setObject:v11 forKeyedSubscript:v5];
    }

    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __39__SRAssetBundleCache_loadCacheFromFile__block_invoke_240;
    v25 = &unk_1E7A2AF48;
    v13 = *(a1 + 40);
    v26 = *(a1 + 32);
    v27 = v13;
    v14 = v5;
    v28 = v14;
    v29 = v8;
    [v6 enumerateKeysAndObjectsUsingBlock:&v22];
    v15 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{*(a1 + 40), v22, v23, v24, v25, v26}];
    if (v15)
    {
      v16 = v15;
      v17 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
      v18 = [v17 objectForKeyedSubscript:v14];
      v19 = [v18 count];

      if (!v19)
      {
        v20 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
        [v20 setObject:0 forKeyedSubscript:v14];
      }
    }
  }
}

void __39__SRAssetBundleCache_loadCacheFromFile__block_invoke_240(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = deliveryTypeID(v5);
  if (v7 == -1)
  {
    v26 = SRLogCategoryAssets();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __39__SRAssetBundleCache_loadCacheFromFile__block_invoke_240_cold_1();
    }
  }

  else
  {
    v8 = v7;
    v9 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
    v10 = [v9 objectForKeyedSubscript:a1[6]];
    v11 = [v10 objectForKeyedSubscript:v5];

    if (!v11)
    {
      v12 = [[SRAssetBundleCacheEntry alloc] initWithAssetType:a1[7] language:a1[5] deliveryType:v8];
      v13 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
      v14 = [v13 objectForKeyedSubscript:a1[6]];
      [v14 setObject:v12 forKeyedSubscript:v5];
    }

    v15 = [v6 objectForKeyedSubscript:@"b"];
    if (!v15)
    {
      v16 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
      v17 = [v16 objectForKeyedSubscript:a1[6]];
      [v17 setObject:0 forKeyedSubscript:v5];
    }

    v18 = [[SRAssetBundleVersion alloc] initWithBundleVersion:v15];
    v19 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
    v20 = [v19 objectForKeyedSubscript:a1[6]];
    v21 = [v20 objectForKeyedSubscript:v5];
    v22 = [v6 objectForKeyedSubscript:@"p"];
    v23 = [v21 makeResultWithBundleVersion:v18 path:v22 loaded:0];

    if ((v23 & 1) == 0)
    {
      v24 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
      v25 = [v24 objectForKeyedSubscript:a1[6]];
      [v25 setObject:0 forKeyedSubscript:v5];
    }
  }
}

- (void)flushCacheToFile
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "Error writing to cache: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __38__SRAssetBundleCache_flushCacheToFile__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__SRAssetBundleCache_flushCacheToFile__block_invoke_2;
  v10[3] = &unk_1E7A2AF70;
  v11 = *(a1 + 32);
  v12 = v5;
  v9 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];
}

void __38__SRAssetBundleCache_flushCacheToFile__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    [v10 setObject:v9 forKeyedSubscript:v5];
  }

  if (assetTypeID(v5) == -1)
  {
    v11 = SRLogCategoryAssets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __38__SRAssetBundleCache_flushCacheToFile__block_invoke_2_cold_1();
    }
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __38__SRAssetBundleCache_flushCacheToFile__block_invoke_247;
    v12[3] = &unk_1E7A2AF98;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:v12];

    v11 = v13;
  }
}

void __38__SRAssetBundleCache_flushCacheToFile__block_invoke_247(uint64_t a1, void *a2, void *a3)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (deliveryTypeID(v5) == -1)
  {
    v11 = SRLogCategoryAssets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __38__SRAssetBundleCache_flushCacheToFile__block_invoke_247_cold_1();
    }

    goto LABEL_7;
  }

  v7 = [v6 bundleVersion];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 bundleVersion];
    v10 = [v9 version];

    if (v10)
    {
      v18[0] = @"b";
      v11 = [v6 bundleVersion];
      v12 = [v11 version];
      v18[1] = @"p";
      v19[0] = v12;
      v13 = [v6 path];
      v19[1] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
      v15 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
      v16 = [v15 objectForKeyedSubscript:*(a1 + 48)];
      [v16 setObject:v14 forKeyedSubscript:v5];

LABEL_7:
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)dumpCache
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  pthread_rwlock_rdlock(&sCacheLock);
  cache = self->_cache;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__SRAssetBundleCache_dumpCache__block_invoke;
  v7[3] = &unk_1E7A2ADE8;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)cache enumerateKeysAndObjectsUsingBlock:v7];
  pthread_rwlock_unlock(&sCacheLock);

  return v5;
}

void __31__SRAssetBundleCache_dumpCache__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __31__SRAssetBundleCache_dumpCache__block_invoke_2;
  v10[3] = &unk_1E7A2AF70;
  v11 = *(a1 + 32);
  v12 = v5;
  v9 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];
}

void __31__SRAssetBundleCache_dumpCache__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    [v10 setObject:v9 forKeyedSubscript:v5];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __31__SRAssetBundleCache_dumpCache__block_invoke_3;
  v12[3] = &unk_1E7A2AF98;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v5;
  v11 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];
}

void __31__SRAssetBundleCache_dumpCache__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 bundleVersion];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = v7;
  v9 = [v6 bundleVersion];
  v10 = [v9 version];

  if (v10)
  {
    v20[0] = @"BundleVersion";
    v11 = [v6 bundleVersion];
    v12 = [v11 version];
    v21[0] = v12;
    v20[1] = @"Path";
    v13 = [v6 path];
    v21[1] = v13;
    v20[2] = @"Loaded";
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "loaded")}];
    v21[2] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v16 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v17 = [v16 objectForKeyedSubscript:*(a1 + 48)];
    [v17 setObject:v15 forKeyedSubscript:v5];
  }

  else
  {
LABEL_4:
    v11 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v18 = [v11 objectForKeyedSubscript:*(a1 + 48)];
    [v18 setObject:&unk_1F2427B20 forKeyedSubscript:v5];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __39__SRAssetBundleCache_loadCacheFromFile__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "Invalid assetType %@ in cache file", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __39__SRAssetBundleCache_loadCacheFromFile__block_invoke_240_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "Invalid deliveryType %@ in cache file", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __38__SRAssetBundleCache_flushCacheToFile__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "Invalid assetType %@ in cache", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __38__SRAssetBundleCache_flushCacheToFile__block_invoke_247_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "Invalid deliveryType %@ in cache", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end