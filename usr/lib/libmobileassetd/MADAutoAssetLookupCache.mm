@interface MADAutoAssetLookupCache
+ (id)_newBySelectorKey:(id)a3 forAssetAudience:(id)a4;
+ (id)_newBySetConfigurationKey:(id)a3 forAssetAudience:(id)a4;
+ (id)_setConfigurationAssetType:(id)a3;
+ (id)autoAssetLookupCache;
+ (id)cachedLookupResultForSelector:(id)a3 forStaging:(BOOL)a4;
+ (id)cachedLookupResultForSetConfiguration:(id)a3 forStaging:(BOOL)a4;
+ (void)clearLookupResultsForSetConfiguration:(id)a3;
+ (void)recordLookupResult:(id)a3 forSelector:(id)a4 forStaging:(BOOL)a5;
+ (void)recordLookupResult:(id)a3 forSetConfiguration:(id)a4 forStaging:(BOOL)a5;
- (MADAutoAssetLookupCache)init;
@end

@implementation MADAutoAssetLookupCache

- (MADAutoAssetLookupCache)init
{
  v12.receiver = self;
  v12.super_class = MADAutoAssetLookupCache;
  v2 = [(MADAutoAssetLookupCache *)&v12 init];
  if (v2)
  {
    v3 = [@"com.apple.MobileAsset.daemon.autoassetlookupcache" UTF8String];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create(v3, v4);
    lookupCacheQueue = v2->_lookupCacheQueue;
    v2->_lookupCacheQueue = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    lookupResultsByAssetSelector = v2->_lookupResultsByAssetSelector;
    v2->_lookupResultsByAssetSelector = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    lookupResultsBySetConfiguration = v2->_lookupResultsBySetConfiguration;
    v2->_lookupResultsBySetConfiguration = v9;
  }

  return v2;
}

+ (id)autoAssetLookupCache
{
  if (autoAssetLookupCache_dispatchOnceAutoAssetLookupCache != -1)
  {
    +[MADAutoAssetLookupCache autoAssetLookupCache];
  }

  v3 = autoAssetLookupCache___autoAssetLookupCache;

  return v3;
}

void __47__MADAutoAssetLookupCache_autoAssetLookupCache__block_invoke(id a1)
{
  autoAssetLookupCache___autoAssetLookupCache = objc_alloc_init(MADAutoAssetLookupCache);

  _objc_release_x1();
}

+ (void)recordLookupResult:(id)a3 forSelector:(id)a4 forStaging:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = +[MADAutoAssetLookupCache autoAssetLookupCache];
  v10 = getDownloadManager();
  IsInternalAllowed = _MAPreferencesIsInternalAllowed();
  v12 = [v8 assetType];
  v13 = [v10 newAssetAudience:IsInternalAllowed assetType:v12 logMessage:0];

  v14 = +[MADAutoAssetControlManager preferenceLookupCacheAssetSelectorValidSecs];
  v15 = [MADAutoAssetLookupCache _newBySelectorKey:v8 forAssetAudience:v13];
  v16 = @"CLIENT";
  if (v5)
  {
    v16 = @"STAGING";
  }

  v17 = v16;
  v18 = v17;
  if (v9)
  {
    v32 = v17;
    v33 = v13;
    v19 = v15;
    v20 = v9;
    v21 = v7;
    v22 = getDownloadManager();
    v23 = [v8 assetType];
    v24 = [v22 getPallasEnabledForAssetType:v23];

    if (v24)
    {
      if (v5)
      {
        v25 = _MADLog(@"Auto");
        v7 = v21;
        v15 = v19;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v8 summary];
          *buf = 138543618;
          v42 = @"STAGING";
          v43 = 2114;
          v44 = v26;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSelector:} | auto-asset-lookup-cache not in use for PSUS | selector:%{public}@", buf, 0x16u);
        }

        v9 = v20;
        goto LABEL_17;
      }

      v7 = v21;
      v15 = v19;
      if (!v19)
      {
        v25 = _MADLog(@"Auto");
        v9 = v20;
        v13 = v33;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v30 = [v8 summary];
          *buf = 138543874;
          v42 = @"CLIENT";
          v43 = 2114;
          v44 = v30;
          v45 = 2114;
          v46 = v33;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSelector:} | unable to determine by-asset-selector lookup-cache key | selector:%{public}@ | assetAudience:%{public}@", buf, 0x20u);
        }

        goto LABEL_18;
      }

      v9 = v20;
      v13 = v33;
      if (v14)
      {
        v29 = [v20 lookupCacheQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __69__MADAutoAssetLookupCache_recordLookupResult_forSelector_forStaging___block_invoke;
        block[3] = &unk_4B3818;
        v35 = v20;
        v36 = v7;
        v37 = v8;
        v38 = v33;
        v39 = @"CLIENT";
        v40 = v15;
        dispatch_sync(v29, block);

        v25 = v35;
LABEL_18:
        v18 = v32;
        goto LABEL_19;
      }

      v25 = _MADLog(@"Auto");
      v18 = v32;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v8 summary];
        *buf = 138543874;
        v42 = @"CLIENT";
        v43 = 2114;
        v44 = v31;
        v45 = 2114;
        v46 = v33;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSelector:} | by-asset-selector lookup-cache disabled | selector:%{public}@ | assetAudience:%{public}@", buf, 0x20u);
      }
    }

    else
    {
      v25 = _MADLog(@"Auto");
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v21;
        v9 = v20;
        v15 = v19;
LABEL_17:
        v13 = v33;
        goto LABEL_18;
      }

      v28 = [v8 summary];
      *buf = 138543618;
      v42 = v32;
      v43 = 2114;
      v44 = v28;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSelector:} | auto-asset-lookup-cache non-pallas disabled | selector:%{public}@", buf, 0x16u);

      v7 = v21;
      v9 = v20;
      v18 = v32;
      v15 = v19;
      v13 = v33;
    }
  }

  else
  {
    v25 = _MADLog(@"Auto");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v27 = [v8 summary];
      *buf = 138543874;
      v42 = v18;
      v43 = 2114;
      v44 = v27;
      v45 = 2114;
      v46 = v13;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSelector:} | unable to locate auto-asset-lookup-cache | selector:%{public}@ | assetAudience:%{public}@", buf, 0x20u);
    }
  }

LABEL_19:
}

void __69__MADAutoAssetLookupCache_recordLookupResult_forSelector_forStaging___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupResultsByAssetSelector];
  v50 = a1;
  v3 = [[MADAutoAssetLookupResult alloc] initWithAssetCatalog:*(a1 + 40) forAssetSelector:*(a1 + 48) forAssetAudience:*(a1 + 56)];
  if (v3)
  {
    v4 = [*(a1 + 48) assetVersion];

    if (!v4)
    {
      goto LABEL_31;
    }

    v40 = v3;
    v41 = v2;
    v42 = objc_alloc_init(NSMutableArray);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v5 = v2;
    v48 = [v5 countByEnumeratingWithState:&v55 objects:v68 count:16];
    if (!v48)
    {
      goto LABEL_21;
    }

    v47 = *v56;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v45 = v5;
    while (1)
    {
      for (i = 0; i != v48; i = i + 1)
      {
        if (*v56 != v47)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v55 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [v5 safeObjectForKey:v8 ofClass:objc_opt_class()];
        if (v10)
        {
          v49 = v9;
          v11 = p_weak_ivar_lyt[223];
          v12 = [*(v50 + 48) assetType];
          v13 = [v10 assetSelector];
          v14 = [v13 assetType];
          if (([v11 stringIsEqual:v12 to:v14] & 1) == 0)
          {

LABEL_18:
            v9 = v49;
            goto LABEL_19;
          }

          v46 = v12;
          v15 = p_weak_ivar_lyt[223];
          v16 = [*(v50 + 48) assetSpecifier];
          v17 = [v10 assetSelector];
          v18 = [v17 assetSpecifier];
          if (![v15 stringIsEqual:v16 to:v18])
          {

            v5 = v45;
            goto LABEL_18;
          }

          v44 = p_weak_ivar_lyt[223];
          v19 = [*(v50 + 48) assetVersion];
          v20 = [v10 assetSelector];
          [v20 assetVersion];
          v21 = v43 = v16;
          LOBYTE(v44) = [v44 stringIsEqual:v19 to:v21];

          v5 = v45;
          p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
          v9 = v49;
          if ((v44 & 1) == 0)
          {
            [v42 addObject:v8];
          }
        }

        else
        {
          v22 = _MADLog(@"Auto");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = *(v50 + 64);
            *buf = 138543618;
            v60 = v23;
            v61 = 2114;
            v62 = v8;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSelector:} | unable to load cached entry | bySelectorConsiderKey:%{public}@", buf, 0x16u);
          }
        }

LABEL_19:

        objc_autoreleasePoolPop(v9);
      }

      v48 = [v5 countByEnumeratingWithState:&v55 objects:v68 count:16];
      if (!v48)
      {
LABEL_21:

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v24 = v42;
        v25 = [v24 countByEnumeratingWithState:&v51 objects:v67 count:16];
        v3 = v40;
        if (v25)
        {
          v26 = v25;
          v27 = *v52;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v52 != v27)
              {
                objc_enumerationMutation(v24);
              }

              if (*(*(&v51 + 1) + 8 * j))
              {
                [v5 removeObjectForKey:?];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v51 objects:v67 count:16];
          }

          while (v26);
        }

        v2 = v41;
LABEL_31:
        [v2 setSafeObject:v3 forKey:*(v50 + 72)];
        [*(v50 + 32) setLookupResultsByAssetSelector:v2];
        v29 = _MADLog(@"Auto");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(v50 + 64);
          v31 = [*(v50 + 48) summary];
          v32 = *(v50 + 56);
          v33 = *(v50 + 72);
          *buf = 138544130;
          v60 = v30;
          v61 = 2114;
          v62 = v31;
          v63 = 2114;
          v64 = v32;
          v65 = 2114;
          v66 = v33;
          v34 = "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSelector:} | updated auto-asset-lookup-cache | selector:%{public}@ | assetAudience:%{public}@ | bySelectorKey:%{public}@";
          v35 = v29;
          v36 = OS_LOG_TYPE_DEFAULT;
          v37 = 42;
          goto LABEL_35;
        }

        goto LABEL_36;
      }
    }
  }

  v29 = _MADLog(@"Auto");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v38 = *(v50 + 64);
    v31 = [*(v50 + 48) summary];
    v39 = *(v50 + 56);
    *buf = 138543874;
    v60 = v38;
    v61 = 2114;
    v62 = v31;
    v63 = 2114;
    v64 = v39;
    v34 = "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSelector:} | unable to create lookup-result | selector:%{public}@ | assetAudience:%{public}@";
    v35 = v29;
    v36 = OS_LOG_TYPE_ERROR;
    v37 = 32;
LABEL_35:
    _os_log_impl(&dword_0, v35, v36, v34, buf, v37);
  }

LABEL_36:
}

+ (void)recordLookupResult:(id)a3 forSetConfiguration:(id)a4 forStaging:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = +[MADAutoAssetLookupCache autoAssetLookupCache];
  v10 = [MADAutoAssetLookupCache _setConfigurationAssetType:v8];
  v28 = v7;
  if (v10)
  {
    v11 = getDownloadManager();
    v12 = [v11 newAssetAudience:_MAPreferencesIsInternalAllowed() assetType:v10 logMessage:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = +[MADAutoAssetControlManager preferenceLookupCacheSetConfigurationValidSecs];
  v14 = [MADAutoAssetLookupCache _newBySetConfigurationKey:v8 forAssetAudience:v12];
  if (v5)
  {
    v15 = @"STAGING";
  }

  else
  {
    v15 = @"CLIENT";
  }

  v16 = v15;
  if (!v9)
  {
    v17 = _MADLog(@"Auto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v8 summary];
      *buf = 138543618;
      v37 = v16;
      v38 = 2114;
      v39 = v18;
      v19 = "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSetConfiguration:} | unable to locate auto-asset-lookup-cache | set-configuration:%{public}@";
      v20 = v17;
      v21 = OS_LOG_TYPE_ERROR;
LABEL_26:
      v27 = 22;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (v5)
  {
    v17 = _MADLog(@"Auto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v8 summary];
      *buf = 138543618;
      v37 = @"STAGING";
      v38 = 2114;
      v39 = v18;
      v19 = "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSetConfiguration:} | auto-asset-lookup-cache not in use for PSUS | set-configuration:%{public}@";
LABEL_25:
      v20 = v17;
      v21 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  if (!v14)
  {
    if (!v10)
    {
      v17 = _MADLog(@"Auto");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v8 summary];
        *buf = 138543618;
        v37 = @"CLIENT";
        v38 = 2114;
        v39 = v18;
        v19 = "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSetConfiguration:} | unable to determine by-set-configuration lookup-cache key (no asset-type from set-configuration) | setConfiguration:%{public}@";
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    v26 = _MADLog(@"Auto");
    v17 = v26;
    if (v12)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v18 = [v8 summary];
        *buf = 138544130;
        v37 = @"CLIENT";
        v38 = 2114;
        v39 = v18;
        v40 = 2114;
        v41 = v10;
        v42 = 2114;
        v43 = v12;
        v19 = "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSetConfiguration:} | unable to determine by-set-configuration lookup-cache key | setConfiguration:%{public}@ | setAssetType:%{public}@ | assetAudience:%{public}@";
        v20 = v17;
        v21 = OS_LOG_TYPE_ERROR;
        v27 = 42;
LABEL_27:
        _os_log_impl(&dword_0, v20, v21, v19, buf, v27);

        goto LABEL_28;
      }

      goto LABEL_28;
    }

    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v18 = [v8 summary];
    *buf = 138543874;
    v37 = @"CLIENT";
    v38 = 2114;
    v39 = v18;
    v40 = 2114;
    v41 = v10;
    v19 = "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSetConfiguration:} | unable to determine by-set-configuration lookup-cache key (no asset-audience) | setConfiguration:%{public}@ | setAssetType:%{public}@";
LABEL_34:
    v20 = v17;
    v21 = OS_LOG_TYPE_DEFAULT;
    v27 = 32;
    goto LABEL_27;
  }

  v22 = getDownloadManager();
  v23 = [v22 getPallasEnabledForAssetType:v10];

  if ((v23 & 1) == 0)
  {
    v17 = _MADLog(@"Auto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v8 summary];
      *buf = 138543618;
      v37 = @"CLIENT";
      v38 = 2114;
      v39 = v18;
      v19 = "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSetConfiguration:} | by-set-configuration non-pallas disabled | selector:%{public}@";
      goto LABEL_25;
    }

LABEL_28:
    v25 = v28;
    goto LABEL_29;
  }

  if (!v13)
  {
    v17 = _MADLog(@"Auto");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v18 = [v8 summary];
    *buf = 138543874;
    v37 = @"CLIENT";
    v38 = 2114;
    v39 = v18;
    v40 = 2114;
    v41 = v12;
    v19 = "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSetConfiguration:} | by-set-configuration lookup-cache disabled | setConfiguration:%{public}@ | assetAudience:%{public}@";
    goto LABEL_34;
  }

  v24 = [v9 lookupCacheQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __77__MADAutoAssetLookupCache_recordLookupResult_forSetConfiguration_forStaging___block_invoke;
  block[3] = &unk_4B3818;
  v30 = v9;
  v25 = v28;
  v31 = v28;
  v32 = v8;
  v33 = v12;
  v34 = @"CLIENT";
  v35 = v14;
  dispatch_sync(v24, block);

  v17 = v30;
LABEL_29:
}

void __77__MADAutoAssetLookupCache_recordLookupResult_forSetConfiguration_forStaging___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupResultsBySetConfiguration];
  v3 = [[MADAutoAssetLookupResult alloc] initWithAssetCatalog:*(a1 + 40) forSetConfiguration:*(a1 + 48) forAssetAudience:*(a1 + 56)];
  if (v3)
  {
    [v2 setSafeObject:v3 forKey:*(a1 + 72)];
    [*(a1 + 32) setLookupResultsBySetConfiguration:v2];
    v4 = _MADLog(@"Auto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 64);
      v6 = [*(a1 + 48) summary];
      v7 = *(a1 + 56);
      v13 = 138543874;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = v7;
      v8 = "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSetConfiguration:} | updated auto-asset-lookup-cache | set-configuration:%{public}@ | assetAudience:%{public}@";
      v9 = v4;
      v10 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_0, v9, v10, v8, &v13, 0x20u);
    }
  }

  else
  {
    v4 = _MADLog(@"Auto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 64);
      v6 = [*(a1 + 48) summary];
      v12 = *(a1 + 56);
      v13 = 138543874;
      v14 = v11;
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = v12;
      v8 = "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSetConfiguration:} | unable to create lookup-result | setConfiguration:%{public}@ | assetAudience:%{public}@";
      v9 = v4;
      v10 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }
}

+ (void)clearLookupResultsForSetConfiguration:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetLookupCache autoAssetLookupCache];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 lookupCacheQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __65__MADAutoAssetLookupCache_clearLookupResultsForSetConfiguration___block_invoke;
    v9[3] = &unk_4B2B18;
    v10 = v5;
    v11 = v3;
    dispatch_sync(v6, v9);

    v7 = v10;
  }

  else
  {
    v7 = _MADLog(@"Auto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 summary];
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "{AUTO-LOOKUP-CACHE[BOTH]:clearLookupResultsForSetConfiguration} | unable to locate auto-asset-lookup-cache | set-configuration:%{public}@", buf, 0xCu);
    }
  }
}

void __65__MADAutoAssetLookupCache_clearLookupResultsForSetConfiguration___block_invoke(uint64_t a1)
{
  v49 = objc_alloc_init(NSMutableArray);
  v2 = [*(a1 + 32) lookupResultsBySetConfiguration];
  v50 = a1;
  v51 = [*(a1 + 40) firstEntryAssetType];
  v3 = _MADLog(@"Auto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) summary];
    *buf = 138543362;
    v74 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[BOTH]:clearLookupResultsForSetConfiguration} | clearing auto-asset-lookup-cache | set-configuration:%{public}@", buf, 0xCu);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v2;
  p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
  v6 = v50;
  v53 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (v53)
  {
    v52 = *v68;
    do
    {
      for (i = 0; i != v53; i = i + 1)
      {
        if (*v68 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v67 + 1) + 8 * i);
        v9 = [obj safeObjectForKey:v8 ofClass:objc_opt_class()];
        v10 = v9;
        if (v8)
        {
          v11 = p_weak_ivar_lyt[223];
          v12 = [v9 setConfiguration];
          v13 = [v12 clientDomainName];
          v14 = [*(v6 + 40) clientDomainName];
          if ([v11 stringIsEqual:v13 to:v14])
          {
            v15 = p_weak_ivar_lyt[223];
            v16 = [v10 setConfiguration];
            v17 = [v16 assetSetIdentifier];
            v18 = [*(v6 + 40) assetSetIdentifier];
            LODWORD(v15) = [v15 stringIsEqual:v17 to:v18];

            v6 = v50;
            p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);

            if (v15)
            {
              [v49 addObject:v8];
            }
          }

          else
          {
          }
        }
      }

      v53 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
    }

    while (v53);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v19 = v49;
  v20 = [v19 countByEnumeratingWithState:&v63 objects:v77 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v64;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v64 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v63 + 1) + 8 * j);
        if (v25)
        {
          [obj removeObjectForKey:*(*(&v63 + 1) + 8 * j)];
          v26 = _MADLog(@"Auto");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [*(v50 + 40) summary];
            *buf = 138543618;
            v74 = v25;
            v75 = 2114;
            v76 = v27;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[CLIENT]:clearLookupResultsForSetConfiguration} | removed stale auto-asset-lookup-cache entry | lookupCacheKey:%{public}@ | set-configuration:%{public}@", buf, 0x16u);
          }

          v22 = 1;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v63 objects:v77 count:16];
    }

    while (v21);

    v6 = v50;
    if (v22)
    {
      [*(v50 + 32) setLookupResultsBySetConfiguration:obj];
    }
  }

  else
  {
  }

  v28 = objc_alloc_init(NSMutableArray);

  v29 = [*(v6 + 32) lookupResultsByAssetSelector];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v30 = v29;
  v31 = [v30 countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v60;
    do
    {
      for (k = 0; k != v32; k = k + 1)
      {
        if (*v60 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v59 + 1) + 8 * k);
        v36 = [v30 safeObjectForKey:v35 ofClass:objc_opt_class()];
        v37 = v36;
        if (v35)
        {
          v38 = [v36 assetSelector];
          v39 = [v38 assetType];
          v40 = [SUCore stringIsEqual:v39 to:v51];

          if (v40)
          {
            [v28 addObject:v35];
          }
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v59 objects:v72 count:16];
    }

    while (v32);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v41 = v28;
  v42 = [v41 countByEnumeratingWithState:&v55 objects:v71 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = 0;
    v45 = *v56;
    do
    {
      for (m = 0; m != v43; m = m + 1)
      {
        if (*v56 != v45)
        {
          objc_enumerationMutation(v41);
        }

        v47 = *(*(&v55 + 1) + 8 * m);
        if (v47)
        {
          [v30 removeObjectForKey:*(*(&v55 + 1) + 8 * m)];
          v48 = _MADLog(@"Auto");
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v74 = v47;
            v75 = 2114;
            v76 = v51;
            _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[STAGING]:clearLookupResultsForSetConfiguration} | removed stale auto-asset-lookup-cache entry | lookupCacheKey:%{public}@ | asset-type:%{public}@", buf, 0x16u);
          }

          v44 = 1;
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v55 objects:v71 count:16];
    }

    while (v43);

    if (v44)
    {
      [*(v50 + 32) setLookupResultsByAssetSelector:v30];
    }
  }

  else
  {
  }
}

+ (id)cachedLookupResultForSelector:(id)a3 forStaging:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[MADAutoAssetLookupCache autoAssetLookupCache];
  v7 = getDownloadManager();
  IsInternalAllowed = _MAPreferencesIsInternalAllowed();
  v9 = [v5 assetType];
  v10 = [v7 newAssetAudience:IsInternalAllowed assetType:v9 logMessage:0];

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = +[MADAutoAssetControlManager preferenceLookupCacheAssetSelectorValidSecs];
  v25 = [MADAutoAssetLookupCache _newBySelectorKey:v5 forAssetAudience:v10];
  if (v4)
  {
    v11 = @"STAGING";
  }

  else
  {
    v11 = @"CLIENT";
  }

  v12 = v11;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__6;
  v38 = __Block_byref_object_dispose__6;
  v39 = 0;
  if (v6)
  {
    v13 = getDownloadManager();
    v14 = [v5 assetType];
    v15 = [v13 getPallasEnabledForAssetType:v14];

    if (v15)
    {
      if (v4)
      {
        v16 = _MADLog(@"Auto");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v5 summary];
          *buf = 138543618;
          v45 = @"STAGING";
          v46 = 2114;
          v47 = v17;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[%{public}@]:recordLookupResult:forSelector:} | auto-asset-lookup-cache not in use for PSUS | selector:%{public}@", buf, 0x16u);
        }
      }

      else if (v25)
      {
        if (v41[3])
        {
          v20 = [v6 lookupCacheQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __68__MADAutoAssetLookupCache_cachedLookupResultForSelector_forStaging___block_invoke;
          block[3] = &unk_4B3840;
          v27 = v6;
          v28 = v25;
          v29 = @"CLIENT";
          v30 = v5;
          v31 = v10;
          v32 = &v40;
          v33 = &v34;
          dispatch_sync(v20, block);

          v16 = v27;
        }

        else
        {
          v16 = _MADLog(@"Auto");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v5 summary];
            *buf = 138543874;
            v45 = @"CLIENT";
            v46 = 2114;
            v47 = v22;
            v48 = 2114;
            v49 = v10;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSelector} | by-asset-selector lookup-cache disabled | selector:%{public}@ | assetAudience:%{public}@", buf, 0x20u);
          }
        }
      }

      else
      {
        v16 = _MADLog(@"Auto");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v21 = [v5 summary];
          *buf = 138543874;
          v45 = @"CLIENT";
          v46 = 2114;
          v47 = v21;
          v48 = 2114;
          v49 = v10;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSelector} | unable to determine by-asset-selector lookup-cache key | selector:%{public}@ | assetAudience:%{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v16 = _MADLog(@"Auto");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v5 summary];
        *buf = 138543618;
        v45 = v12;
        v46 = 2114;
        v47 = v19;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSelector} | lookup-cache non-pallas disabled | selector:%{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v16 = _MADLog(@"Auto");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = [v5 summary];
      *buf = 138543874;
      v45 = v12;
      v46 = 2114;
      v47 = v18;
      v48 = 2114;
      v49 = v10;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSelector} | unable to locate auto-asset-lookup-cache | selector:%{public}@ | assetAudience:%{public}@", buf, 0x20u);
    }
  }

  v23 = v35[5];
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);

  return v23;
}

void __68__MADAutoAssetLookupCache_cachedLookupResultForSelector_forStaging___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupResultsByAssetSelector];
  v3 = [v2 safeObjectForKey:*(a1 + 40) ofClass:objc_opt_class()];
  if (v3)
  {
    v4 = objc_alloc_init(NSDate);
    if (!v4 || ([v3 recordedTimestamp], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
    {
      [v2 removeObjectForKey:*(a1 + 40)];
      v9 = _MADLog(@"Auto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 48);
        v11 = [*(a1 + 56) summary];
        v15 = *(a1 + 64);
        v35 = 138543874;
        v36 = v14;
        v37 = 2114;
        v38 = v11;
        v39 = 2114;
        v40 = v15;
        v13 = "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSelector} | unable to determine timestamp(s) | removed entry | selector:%{public}@ | assetAudience:%{public}@";
        goto LABEL_9;
      }

LABEL_11:

      [*(a1 + 32) setLookupResultsByAssetSelector:v2];
      goto LABEL_22;
    }

    v6 = [v3 recordedTimestamp];
    [v4 timeIntervalSinceDate:v6];
    v8 = v7;

    if (v8 < 0.0)
    {
      [v2 removeObjectForKey:*(a1 + 40)];
      v9 = _MADLog(@"Auto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 48);
        v11 = [*(a1 + 56) summary];
        v12 = *(a1 + 64);
        v35 = 138543874;
        v36 = v10;
        v37 = 2114;
        v38 = v11;
        v39 = 2114;
        v40 = v12;
        v13 = "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSelector} | current time before cached entry time - removed future entry | selector:%{public}@ | assetAudience:%{public}@";
LABEL_9:
        v16 = v9;
        v17 = OS_LOG_TYPE_ERROR;
        v18 = 32;
LABEL_10:
        _os_log_impl(&dword_0, v16, v17, v13, &v35, v18);

        goto LABEL_11;
      }

      goto LABEL_11;
    }

    v22 = *(*(a1 + 72) + 8);
    v23 = *(v22 + 24);
    if (v23 < 0)
    {
      *(v22 + 24) = 1800;
      v23 = *(*(*(a1 + 72) + 8) + 24);
    }

    if (v23 < v8)
    {
      [v2 removeObjectForKey:*(a1 + 40)];
      v9 = _MADLog(@"Auto");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v24 = *(*(*(a1 + 72) + 8) + 24);
      v25 = *(a1 + 48);
      v11 = [*(a1 + 56) summary];
      v26 = *(a1 + 64);
      v35 = 138544386;
      v36 = v25;
      v37 = 2048;
      v38 = v8;
      v39 = 2048;
      v40 = v24;
      v41 = 2114;
      v42 = v11;
      v43 = 2114;
      v44 = v26;
      v13 = "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSelector} | cached secs(%ld) > max-valid secs(%ld) | removed entry | selector:%{public}@ | assetAudience:%{public}@";
      v16 = v9;
      v17 = OS_LOG_TYPE_DEFAULT;
      v18 = 52;
      goto LABEL_10;
    }

    v27 = _MADLog(@"Auto");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(*(*(a1 + 72) + 8) + 24);
      v29 = *(a1 + 48);
      v30 = [*(a1 + 56) summary];
      v31 = *(a1 + 64);
      v35 = 138544386;
      v36 = v29;
      v37 = 2048;
      v38 = v8;
      v39 = 2048;
      v40 = v28;
      v41 = 2114;
      v42 = v30;
      v43 = 2114;
      v44 = v31;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSelector} | cached secs(%ld) <= max-valid secs(%ld) | using entry | selector:%{public}@ | assetAudience:%{public}@", &v35, 0x34u);
    }

    v32 = [v3 autoAssetCatalog];
    v33 = *(*(a1 + 80) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;
  }

  else
  {
    v4 = _MADLog(@"Auto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 48);
      v20 = [*(a1 + 56) summary];
      v21 = *(a1 + 64);
      v35 = 138543874;
      v36 = v19;
      v37 = 2114;
      v38 = v20;
      v39 = 2114;
      v40 = v21;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSelector} | no cached entry | selector:%{public}@ | assetAudience:%{public}@", &v35, 0x20u);
    }
  }

LABEL_22:
}

+ (id)cachedLookupResultForSetConfiguration:(id)a3 forStaging:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[MADAutoAssetLookupCache autoAssetLookupCache];
  v7 = [MADAutoAssetLookupCache _setConfigurationAssetType:v5];
  if (v7)
  {
    v8 = getDownloadManager();
    v9 = [v8 newAssetAudience:_MAPreferencesIsInternalAllowed() assetType:v7 logMessage:0];
  }

  else
  {
    v9 = 0;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = +[MADAutoAssetControlManager preferenceLookupCacheSetConfigurationValidSecs];
  v10 = [MADAutoAssetLookupCache _newBySetConfigurationKey:v5 forAssetAudience:v9];
  if (v4)
  {
    v11 = @"STAGING";
  }

  else
  {
    v11 = @"CLIENT";
  }

  v12 = v11;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__6;
  v36 = __Block_byref_object_dispose__6;
  v37 = 0;
  if (v6)
  {
    if (v4)
    {
      v13 = _MADLog(@"Auto");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v5 summary];
        *buf = 138543874;
        v43 = @"STAGING";
        v44 = 2114;
        v45 = v14;
        v46 = 2114;
        v47 = v7;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSetConfiguration} | auto-asset-lookup-cache not in use for PSUS | set-configuration:%{public}@ | setAssetType:%{public}@", buf, 0x20u);
      }
    }

    else if (v10)
    {
      if (v39[3])
      {
        v16 = [v6 lookupCacheQueue];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = __76__MADAutoAssetLookupCache_cachedLookupResultForSetConfiguration_forStaging___block_invoke;
        v23[3] = &unk_4B3868;
        v24 = v6;
        v25 = v10;
        v26 = @"CLIENT";
        v27 = v5;
        v28 = v9;
        v29 = v7;
        v30 = &v38;
        v31 = &v32;
        dispatch_sync(v16, v23);

        v13 = v24;
      }

      else
      {
        v13 = _MADLog(@"Auto");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v5 summary];
          *buf = 138544130;
          v43 = @"CLIENT";
          v44 = 2114;
          v45 = v18;
          v46 = 2114;
          v47 = v9;
          v48 = 2114;
          v49 = v7;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSetConfiguration} | by-set-configuration lookup-cache disabled | set-configuration:%{public}@ | assetAudience:%{public}@ | setAssetType:%{public}@", buf, 0x2Au);
        }
      }
    }

    else if (v7)
    {
      if (v9)
      {
        v13 = _MADLog(@"Auto");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v17 = [v5 summary];
          *buf = 138544386;
          v43 = @"CLIENT";
          v44 = 2114;
          v45 = v17;
          v46 = 2114;
          v47 = v7;
          v48 = 2114;
          v49 = v9;
          v50 = 2114;
          v51 = v7;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSetConfiguration} | unable to determine by-set-configuration lookup-cache key | setConfiguration:%{public}@ | setAssetType:%{public}@ | assetAudience:%{public}@ | setAssetType:%{public}@", buf, 0x34u);
        }
      }

      else
      {
        v13 = _MADLog(@"Auto");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v5 summary];
          *buf = 138543874;
          v43 = @"CLIENT";
          v44 = 2114;
          v45 = v20;
          v46 = 2114;
          v47 = v7;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSetConfiguration} | unable to determine by-set-configuration lookup-cache key (no asset-audience) | setConfiguration:%{public}@ | setAssetType:%{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v13 = _MADLog(@"Auto");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v5 summary];
        *buf = 138543874;
        v43 = @"CLIENT";
        v44 = 2114;
        v45 = v19;
        v46 = 2114;
        v47 = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSetConfiguration} | unable to determine by-set-configuration lookup-cache key (no asset-type from set-configuration) | setConfiguration:%{public}@ | setAssetType:%{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v13 = _MADLog(@"Auto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = [v5 summary];
      *buf = 138543874;
      v43 = v12;
      v44 = 2114;
      v45 = v15;
      v46 = 2114;
      v47 = v7;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSetConfiguration} | unable to locate auto-asset-lookup-cache | set-configuration:%{public}@ | setAssetType:%{public}@", buf, 0x20u);
    }
  }

  v21 = v33[5];
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);

  return v21;
}

void __76__MADAutoAssetLookupCache_cachedLookupResultForSetConfiguration_forStaging___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupResultsBySetConfiguration];
  v3 = [v2 safeObjectForKey:*(a1 + 40) ofClass:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 setConfiguration];
    v6 = [v5 isEqual:*(a1 + 56)];

    if (!v6)
    {
      [v2 removeObjectForKey:*(a1 + 40)];
      v7 = _MADLog(@"Auto");
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
LABEL_18:

        [*(a1 + 32) setLookupResultsByAssetSelector:v2];
        goto LABEL_19;
      }

      v22 = *(a1 + 48);
      v12 = [*(a1 + 56) summary];
      v23 = *(a1 + 64);
      v24 = *(a1 + 72);
      v46 = 138544130;
      v47 = v22;
      v48 = 2114;
      v49 = v12;
      v50 = 2114;
      v51 = v23;
      v52 = 2114;
      v53 = v24;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSetConfiguration} | cached entry config mismatch | removed entry | set-configuration:%{public}@ | assetAudience:%{public}@ | setAssetType:%{public}@", &v46, 0x2Au);
      goto LABEL_17;
    }

    v7 = objc_alloc_init(NSDate);
    if (!v7 || ([v4 recordedTimestamp], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
    {
      [v2 removeObjectForKey:*(a1 + 40)];
      v12 = _MADLog(@"Auto");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 48);
        v14 = [*(a1 + 56) summary];
        v26 = *(a1 + 64);
        v27 = *(a1 + 72);
        v46 = 138544130;
        v47 = v25;
        v48 = 2114;
        v49 = v14;
        v50 = 2114;
        v51 = v26;
        v52 = 2114;
        v53 = v27;
        v17 = "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSetConfiguration} | unable to determine timestamp(s) | removed entry | set-configuration:%{public}@ | assetAudience:%{public}@ | setAssetType:%{public}@";
        goto LABEL_15;
      }

LABEL_17:

      goto LABEL_18;
    }

    v9 = [v4 recordedTimestamp];
    [v7 timeIntervalSinceDate:v9];
    v11 = v10;

    if (v11 < 0.0)
    {
      [v2 removeObjectForKey:*(a1 + 40)];
      v12 = _MADLog(@"Auto");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 48);
        v14 = [*(a1 + 56) summary];
        v15 = *(a1 + 64);
        v16 = *(a1 + 72);
        v46 = 138544130;
        v47 = v13;
        v48 = 2114;
        v49 = v14;
        v50 = 2114;
        v51 = v15;
        v52 = 2114;
        v53 = v16;
        v17 = "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSetConfiguration} | current time before cached entry time - removed future entry | set-configuration:%{public}@ | assetAudience:%{public}@ | setAssetType:%{public}@";
LABEL_15:
        v28 = v12;
        v29 = OS_LOG_TYPE_ERROR;
        v30 = 42;
LABEL_16:
        _os_log_impl(&dword_0, v28, v29, v17, &v46, v30);

        goto LABEL_17;
      }

      goto LABEL_17;
    }

    v31 = *(*(a1 + 80) + 8);
    v32 = *(v31 + 24);
    if (v32 < 0)
    {
      *(v31 + 24) = 1800;
      v32 = *(*(*(a1 + 80) + 8) + 24);
    }

    if (v32 < v11)
    {
      [v2 removeObjectForKey:*(a1 + 40)];
      v12 = _MADLog(@"Auto");
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v33 = *(*(*(a1 + 80) + 8) + 24);
      v34 = *(a1 + 48);
      v14 = [*(a1 + 56) summary];
      v35 = *(a1 + 64);
      v36 = *(a1 + 72);
      v46 = 138544642;
      v47 = v34;
      v48 = 2048;
      v49 = v11;
      v50 = 2048;
      v51 = v33;
      v52 = 2114;
      v53 = v14;
      v54 = 2114;
      v55 = v35;
      v56 = 2114;
      v57 = v36;
      v17 = "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSetConfiguration} | cached secs(%ld) > max-valid secs(%ld) | removed entry | set-configuration:%{public}@ | assetAudience:%{public}@ | setAssetType:%{public}@";
      v28 = v12;
      v29 = OS_LOG_TYPE_DEFAULT;
      v30 = 62;
      goto LABEL_16;
    }

    v37 = _MADLog(@"Auto");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(*(*(a1 + 80) + 8) + 24);
      v39 = *(a1 + 48);
      v40 = [*(a1 + 56) summary];
      v41 = *(a1 + 64);
      v42 = *(a1 + 72);
      v46 = 138544642;
      v47 = v39;
      v48 = 2048;
      v49 = v11;
      v50 = 2048;
      v51 = v38;
      v52 = 2114;
      v53 = v40;
      v54 = 2114;
      v55 = v41;
      v56 = 2114;
      v57 = v42;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSetConfiguration} | cached secs(%ld) <= max-valid secs(%ld) | using entry | set-configuration:%{public}@ | assetAudience:%{public}@ | setAssetType:%{public}@", &v46, 0x3Eu);
    }

    v43 = [v4 autoAssetCatalog];
    v44 = *(*(a1 + 88) + 8);
    v45 = *(v44 + 40);
    *(v44 + 40) = v43;
  }

  else
  {
    v7 = _MADLog(@"Auto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 48);
      v19 = [*(a1 + 56) summary];
      v20 = *(a1 + 64);
      v21 = *(a1 + 72);
      v46 = 138544130;
      v47 = v18;
      v48 = 2114;
      v49 = v19;
      v50 = 2114;
      v51 = v20;
      v52 = 2114;
      v53 = v21;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "{AUTO-LOOKUP-CACHE[%{public}@]:cachedLookupResultForSetConfiguration} | no cached entry | set-configuration:%{public}@ | assetAudience:%{public}@ | setAssetType:%{public}@", &v46, 0x2Au);
    }
  }

LABEL_19:
}

+ (id)_newBySelectorKey:(id)a3 forAssetAudience:(id)a4
{
  v5 = a4;
  v6 = [a3 persistedEntryID];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v8 = [[NSString alloc] initWithFormat:@"%@_%@", v6, v5];
  }

  return v8;
}

+ (id)_setConfigurationAssetType:(id)a3
{
  v3 = a3;
  v4 = [v3 autoAssetEntries];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 autoAssetEntries];
    v7 = [v6 objectAtIndex:0];

    v8 = [v7 assetSelector];
    v9 = [v8 assetType];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_newBySetConfigurationKey:(id)a3 forAssetAudience:(id)a4
{
  v5 = a4;
  v6 = [a3 persistedEntryID];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v8 = [[NSString alloc] initWithFormat:@"%@_%@", v6, v5];
  }

  return v8;
}

@end