@interface ICURLBagProvider
+ (ICURLBagProvider)sharedBagProvider;
- (ICURLBagProvider)init;
- (id)_amsProcessInfoFromRequestContext:(id)a3;
- (id)_cacheDirectoryPath;
- (id)_dictionaryFromBagPayloadDictionaryAddingKnownMissingKeys:(id)a3 forProfileName:(id)a4;
- (id)_getCacheKeyForRequestContext:(id)a3;
- (id)_knownMissingBagValuesDictionary;
- (id)_legacyCacheFilePath;
- (id)_loadPlistAtPath:(id)a3;
- (void)_cleanBagCacheExcludingPaths:(id)a3;
- (void)_fetchBagForRequestContext:(id)a3 withCompletionHandler:(id)a4;
- (void)_handleAMSBagChangedNotification:(id)a3;
- (void)_handleAMSBagInvalidatedNotification:(id)a3;
- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3;
- (void)_invalidateCacheEntriesWithProfileName:(id)a3 profileVersion:(id)a4;
- (void)_loadCache;
- (void)_loadMonoCache;
- (void)_persistBagToDisk:(id)a3 withKey:(id)a4;
- (void)dealloc;
- (void)getBagAndURLMetricsForRequestContext:(id)a3 forceRefetch:(BOOL)a4 withCompletionHandler:(id)a5;
- (void)getBagForRequestContext:(id)a3 qualityOfService:(int64_t)a4 forceRefetch:(BOOL)a5 withCompletionHandler:(id)a6;
- (void)invalidateCache;
@end

@implementation ICURLBagProvider

+ (ICURLBagProvider)sharedBagProvider
{
  if (sharedBagProvider_sOnceToken != -1)
  {
    dispatch_once(&sharedBagProvider_sOnceToken, &__block_literal_global_5772);
  }

  v3 = sharedBagProvider_sSharedBagProvider;

  return v3;
}

uint64_t __37__ICURLBagProvider_sharedBagProvider__block_invoke()
{
  sharedBagProvider_sSharedBagProvider = objc_alloc_init(ICURLBagProvider);

  return MEMORY[0x1EEE66BB8]();
}

- (ICURLBagProvider)init
{
  v20.receiver = self;
  v20.super_class = ICURLBagProvider;
  v2 = [(ICURLBagProvider *)&v20 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingOperationsForCacheKey = v2->_pendingOperationsForCacheKey;
    v2->_pendingOperationsForCacheKey = v3;

    v5 = [objc_alloc(MEMORY[0x1E69B1430]) initWithMaximumCapacity:4];
    cache = v2->_cache;
    v2->_cache = v5;

    v7 = dispatch_queue_create("com.apple.iTunesCloud.ICURLBagProvider.access", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v10 = dispatch_queue_create("com.apple.iTunesCloud.ICURLBagProvider.persistence", v9);
    persistenceQueue = v2->_persistenceQueue;
    v2->_persistenceQueue = v10;

    v12 = dispatch_queue_create("com.apple.iTunesCloud.ICURLBagProvider.callback", MEMORY[0x1E69E96A8]);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v12;

    v2->_useAMSBag = 1;
    v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    bagChangeNotificationReceivedForRequestContext = v2->_bagChangeNotificationReceivedForRequestContext;
    v2->_bagChangeNotificationReceivedForRequestContext = v14;

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v2 selector:sel__handleUserIdentityStoreDidChangeNotification_ name:@"ICUserIdentityStoreDidChangeNotification" object:0];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v2 selector:sel__handleAMSBagChangedNotification_ name:*MEMORY[0x1E698C500] object:0];

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v2 selector:sel__handleAMSBagInvalidatedNotification_ name:*MEMORY[0x1E698C520] object:0];

    [(ICURLBagProvider *)v2 _loadCache];
  }

  return v2;
}

- (void)_loadCache
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__ICURLBagProvider__loadCache__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

void __30__ICURLBagProvider__loadCache__block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _cacheDirectoryPath];
  v42 = [MEMORY[0x1E696AC08] defaultManager];
  v43 = v2;
  if ([v42 fileExistsAtPath:v2])
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543618;
      v51 = v4;
      v52 = 2114;
      v53 = v2;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Loading bag caches from '%{public}@'", buf, 0x16u);
    }

    v38 = a1;

    v39 = [MEMORY[0x1E695DFA8] set];
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v6 = [v42 enumeratorAtPath:v2];
    v7 = [v6 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v47;
      v10 = *MEMORY[0x1E696A350];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v47 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v46 + 1) + 8 * i);
          if ([v12 hasSuffix:@".plist"])
          {
            v13 = [v43 stringByAppendingPathComponent:v12];
            v14 = [v42 attributesOfItemAtPath:v13 error:0];

            v15 = [v14 objectForKey:v10];
            if (v15)
            {
              [v5 setObject:v15 forKey:v12];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v8);
    }

    v16 = [v5 allKeys];
    v17 = [v16 mutableCopy];

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __30__ICURLBagProvider__loadCache__block_invoke_128;
    v44[3] = &unk_1E7BF4460;
    v37 = v5;
    v45 = v37;
    v41 = v17;
    [v17 sortUsingComparator:v44];
    v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(v38 + 32);
      *buf = 138543618;
      v51 = v19;
      v52 = 2114;
      v53 = v17;
      _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Loading cached bags for keys '%{public}@'", buf, 0x16u);
    }

    v20 = v38;
    if ([v17 count])
    {
      v21 = 0;
      do
      {
        v22 = [v41 objectAtIndex:v21];
        v23 = [v43 stringByAppendingPathComponent:v22];
        v24 = [*(v20 + 32) _loadPlistAtPath:v23];
        if (v24)
        {
          v25 = [[ICURLBag alloc] _initWithPropertyListRepresentation:v24];
          if (v25)
          {
            v26 = [v22 stringByDeletingPathExtension];
            v27 = [v24 ic_stringValueForKey:@"build_version"];
            v28 = +[ICDeviceInfo currentDeviceInfo];
            v29 = [v28 buildVersion];

            v40 = v27;
            if (v27 != v29 && ([v27 isEqual:v29] & 1) == 0)
            {
              v30 = [MEMORY[0x1E695DF00] now];
              [v25 _setExpirationDate:v30];

              [*(v20 + 32) _persistBagToDisk:v25 withKey:v26];
            }

            [*(*(v20 + 32) + 8) setObject:v25 forKey:v26];
            [v39 addObject:v23];
            v31 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = *(v20 + 32);
              v33 = [v25 expirationDate];
              *buf = 138543874;
              v51 = v32;
              v52 = 2114;
              v53 = v22;
              v54 = 2114;
              v55 = v33;
              _os_log_impl(&dword_1B4491000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ Loaded cached bag for key '%{public}@'. expiration=%{public}@", buf, 0x20u);

              v20 = v38;
            }
          }
        }

        else
        {
          v25 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v34 = *(v20 + 32);
            *buf = 138543618;
            v51 = v34;
            v52 = 2114;
            v53 = v23;
            _os_log_impl(&dword_1B4491000, v25, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load cache at path %{public}@", buf, 0x16u);
          }
        }

        ++v21;
        v35 = [v41 count];
        if (v35 >= 4)
        {
          v36 = 4;
        }

        else
        {
          v36 = v35;
        }
      }

      while (v36 > v21);
    }

    [*(v20 + 32) _cleanBagCacheExcludingPaths:v39];
  }

  else
  {
    [*(a1 + 32) _loadMonoCache];
  }
}

- (id)_cacheDirectoryPath
{
  v2 = +[ICClientInfo defaultInfo];
  v3 = [v2 processName];
  v4 = v3;
  v5 = @"unknown";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 URLsForDirectory:14 inDomains:1];
  v9 = [v8 lastObject];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.iTunesCloud/URLBags/%@", v6];

  v11 = [v9 URLByAppendingPathComponent:v10];

  v12 = [v11 path];

  return v12;
}

- (id)_knownMissingBagValuesDictionary
{
  if (_knownMissingBagValuesDictionary_sMissingKeysOnceToken != -1)
  {
    dispatch_once(&_knownMissingBagValuesDictionary_sMissingKeysOnceToken, &__block_literal_global_152);
  }

  v3 = _knownMissingBagValuesDictionary_sKnownMissingBagValuesDictionary;

  return v3;
}

void __52__ICURLBagProvider__knownMissingBagValuesDictionary__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"podcasts-license-offline-stop";
  v2[1] = @"podcasts-license-offline-stop-nonce";
  v3[0] = @"https://play.itunes.apple.com/WebObjects/MZPlay.woa/podcast/hls/license/offline/stop";
  v3[1] = @"https://play.itunes.apple.com/WebObjects/MZPlay.woa/podcast/hls/license/offline/stop/nonce";
  v2[2] = @"cloud-assets-update";
  v3[2] = @"https://genius-3.itunes.apple.com/SGCourier/updateAssets/";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = _knownMissingBagValuesDictionary_sKnownMissingBagValuesDictionary;
  _knownMissingBagValuesDictionary_sKnownMissingBagValuesDictionary = v0;
}

- (id)_dictionaryFromBagPayloadDictionaryAddingKnownMissingKeys:(id)a3 forProfileName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5609;
  v22 = __Block_byref_object_dispose__5610;
  v23 = 0;
  v8 = [(ICURLBagProvider *)self _knownMissingBagValuesDictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__ICURLBagProvider__dictionaryFromBagPayloadDictionaryAddingKnownMissingKeys_forProfileName___block_invoke;
  v14[3] = &unk_1E7BF44B0;
  v9 = v6;
  v15 = v9;
  v17 = &v18;
  v10 = v8;
  v16 = v10;
  [v10 enumerateKeysAndObjectsUsingBlock:v14];
  v11 = v19[5];
  if (!v11)
  {
    v11 = v9;
  }

  v12 = v11;

  _Block_object_dispose(&v18, 8);

  return v12;
}

void __93__ICURLBagProvider__dictionaryFromBagPayloadDictionaryAddingKnownMissingKeys_forProfileName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v11];

  if (!v6)
  {
    v7 = *(*(*(a1 + 48) + 8) + 40);
    if (!v7)
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = [v8 mutableCopy];
      }

      else
      {
        v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
      }

      v10 = v9;
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v9);

      v7 = *(*(*(a1 + 48) + 8) + 40);
    }

    [v7 setObject:v5 forKeyedSubscript:v11];
  }
}

- (id)_amsProcessInfoFromRequestContext:(id)a3
{
  v3 = [a3 clientInfo];
  v4 = [v3 bundleIdentifier];
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E698CAC8]);
    goto LABEL_5;
  }

  v5 = [objc_alloc(MEMORY[0x1E698CAC8]) initWithBundleIdentifier:v4];
  if (ICSystemApplicationTypeForBundleIdentifier(v4))
  {
LABEL_5:
    v6 = [v3 clientIdentifier];
    [v5 setExecutableName:v6];

    v7 = [v3 clientIdentifier];
    [v5 setLocalizedName:v7];

    v8 = [v3 clientVersion];
    [v5 setClientVersion:v8];
  }

  v9 = [v3 clientBundleIdentifier];
  v10 = [v3 bundleIdentifier];
  v11 = [v9 isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    v12 = [v3 clientBundleIdentifier];
    [v5 setProxyAppBundleID:v12];
  }

  return v5;
}

- (id)_legacyCacheFilePath
{
  v2 = +[ICClientInfo defaultInfo];
  v3 = [v2 processName];

  v4 = @"unknown";
  if (v3)
  {
    v4 = v3;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.plist", v4];
  v6 = ICDefaultCacheDirectory();
  v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v6, @"URLBags", v5, 0}];
  v8 = [MEMORY[0x1E696AEC0] pathWithComponents:v7];

  return v8;
}

- (void)_persistBagToDisk:(id)a3 withKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  persistenceQueue = self->_persistenceQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__ICURLBagProvider__persistBagToDisk_withKey___block_invoke;
  block[3] = &unk_1E7BFA178;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(persistenceQueue, block);
}

void __46__ICURLBagProvider__persistBagToDisk_withKey___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _propertyListRepresentation];
  v3 = [v2 mutableCopy];

  v4 = +[ICDeviceInfo currentDeviceInfo];
  v5 = [v4 buildVersion];
  [v3 setObject:v5 forKey:@"build_version"];

  v29 = 0;
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:&v29];
  v7 = v29;
  if (v6)
  {
    v8 = [*(a1 + 40) _cacheDirectoryPath];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@.plist", v8, *(a1 + 48)];
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    if ([v10 fileExistsAtPath:v8])
    {
      v11 = v7;
    }

    else
    {
      v28 = v7;
      v13 = [v10 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v28];
      v11 = v28;

      if ((v13 & 1) == 0)
      {
        v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        v24 = *(a1 + 40);
        *buf = 138543874;
        v31 = v24;
        v32 = 2114;
        v33 = v8;
        v34 = 2114;
        v35 = v11;
        v25 = "%{public}@ Encountered error creating cache directory at %{public}@. error=%{public}@";
        goto LABEL_20;
      }
    }

    if ([v10 fileExistsAtPath:v9] & 1) != 0 || (objc_msgSend(v10, "createFileAtPath:contents:attributes:", v9, v6, 0))
    {
      v27 = v11;
      v14 = [v6 writeToFile:v9 options:1 error:&v27];
      v15 = v27;

      v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      v17 = v16;
      if (v14)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 40);
          *buf = 138543618;
          v31 = v18;
          v32 = 2114;
          v33 = v9;
          v19 = "%{public}@ Persisted cache at path %{public}@.";
          v20 = v17;
          v21 = OS_LOG_TYPE_DEFAULT;
          v22 = 22;
LABEL_14:
          _os_log_impl(&dword_1B4491000, v20, v21, v19, buf, v22);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 40);
        *buf = 138543874;
        v31 = v23;
        v32 = 2114;
        v33 = v9;
        v34 = 2114;
        v35 = v15;
        v19 = "%{public}@ Failed to write cache at path %{public}@ error=%{public}@";
        v20 = v17;
        v21 = OS_LOG_TYPE_ERROR;
        v22 = 32;
        goto LABEL_14;
      }

      v11 = v15;
LABEL_21:

      v7 = v11;
      goto LABEL_22;
    }

    v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v26 = *(a1 + 40);
    *buf = 138543874;
    v31 = v26;
    v32 = 2114;
    v33 = v9;
    v34 = 2114;
    v35 = v11;
    v25 = "%{public}@ Failed to create cache file at path %{public}@ error=%{public}@";
LABEL_20:
    _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_ERROR, v25, buf, 0x20u);
    goto LABEL_21;
  }

  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 40);
    *buf = 138543618;
    v31 = v12;
    v32 = 2114;
    v33 = v7;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to serialize bag data. err=%{public}@", buf, 0x16u);
  }

LABEL_22:
}

- (void)_loadMonoCache
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__ICURLBagProvider__loadMonoCache__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

void __34__ICURLBagProvider__loadMonoCache__block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _cacheDirectoryPath];
  v3 = [v2 stringByAppendingPathExtension:@"plist"];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 32) _legacyCacheFilePath];
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v7 fileExistsAtPath:v6];

    if (v8)
    {
      v9 = v6;

      v3 = v9;
    }
  }

  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138543618;
    v46 = v11;
    v47 = 2114;
    v48 = v3;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Loading bag cache from mono cache file '%{public}@'", buf, 0x16u);
  }

  v44 = 0;
  v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v3 options:0 error:&v44];
  v13 = v44;
  if (![v12 length])
  {
    v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 138543618;
      v46 = v15;
      v47 = 2114;
      v48 = v13;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load bag cache data. err=%{public}@", buf, 0x16u);
    }
  }

  if ([v12 length])
  {
    v16 = [MEMORY[0x1E696AE40] propertyListWithData:v12 options:0 format:0 error:0];
    if (!_NSIsNSDictionary())
    {
LABEL_25:

      goto LABEL_26;
    }

    v17 = [v16 ic_stringValueForKey:@"build_version"];
    v18 = +[ICDeviceInfo currentDeviceInfo];
    v19 = [v18 buildVersion];

    v20 = v17;
    v39 = v19;
    if (v17 == v19)
    {
      LODWORD(v17) = 0;
    }

    else
    {
      LODWORD(v17) = [v17 isEqual:v19] ^ 1;
    }

    v21 = [v16 ic_dictionaryValueForKey:@"cache_entries"];
    v22 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v40 = v21;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v17;
      v17 = v13;
      v23 = v20;
      v24 = *(a1 + 32);
      v25 = [v21 count];
      v26 = [v40 allKeys];
      *buf = 138544386;
      v46 = v24;
      v20 = v23;
      v13 = v17;
      LOBYTE(v17) = v38;
      v47 = 2048;
      v48 = v25;
      v21 = v40;
      v49 = 2114;
      v50 = v20;
      v51 = 1024;
      v52 = v38;
      v53 = 2114;
      v54 = v26;
      _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Found %lu cached bags. cachedBuildVersion=%{public}@, shouldInvalidateCache=%{BOOL}u, keys=%{public}@", buf, 0x30u);
    }

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __34__ICURLBagProvider__loadMonoCache__block_invoke_133;
    v42[3] = &unk_1E7BF4488;
    v42[4] = *(a1 + 32);
    v43 = v17;
    [v21 enumerateKeysAndObjectsUsingBlock:v42];
    v27 = [MEMORY[0x1E696AC08] defaultManager];
    v41 = 0;
    v28 = [v27 removeItemAtPath:v3 error:&v41];
    v29 = v41;

    v30 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v31 = v30;
    if (v28)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(a1 + 32);
        *buf = 138543618;
        v46 = v32;
        v47 = 2114;
        v48 = v3;
        v33 = "%{public}@ Removed mono cache at path %{public}@";
        v34 = v31;
        v35 = OS_LOG_TYPE_DEFAULT;
        v36 = 22;
LABEL_23:
        _os_log_impl(&dword_1B4491000, v34, v35, v33, buf, v36);
      }
    }

    else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v37 = *(a1 + 32);
      *buf = 138543874;
      v46 = v37;
      v47 = 2114;
      v48 = v3;
      v49 = 2114;
      v50 = v29;
      v33 = "%{public}@ Failed to remove monoCache at path: %{public}@. error=%{public}@";
      v34 = v31;
      v35 = OS_LOG_TYPE_ERROR;
      v36 = 32;
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_26:
}

void __34__ICURLBagProvider__loadMonoCache__block_invoke_133(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (_NSIsNSString() && _NSIsNSDictionary())
  {
    v7 = [[ICURLBag alloc] _initWithPropertyListRepresentation:v6];
    v8 = v7;
    if (!v7)
    {
      v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        v21 = 138543618;
        v22 = v19;
        v23 = 2114;
        v24 = v5;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create bag from cache for key '%{public}@'", &v21, 0x16u);
      }

      goto LABEL_15;
    }

    v9 = [v7 expirationDate];
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v5;
      v25 = 2114;
      v26 = v9;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Loaded cached bag for key '%{public}@'. expiration=%{public}@", &v21, 0x20u);
    }

    if (*(a1 + 40) == 1)
    {
      v12 = [MEMORY[0x1E695DF00] now];
      [v12 timeIntervalSinceReferenceDate];
      v14 = v13;
      [v9 timeIntervalSinceReferenceDate];
      v16 = v14 - v15;

      if (v16 > 604800.0)
      {
        v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 32);
          v21 = 138543618;
          v22 = v18;
          v23 = 2114;
          v24 = v5;
          _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping loading cached bag for key '%{public}@' because its too old", &v21, 0x16u);
        }

        goto LABEL_15;
      }

      v20 = [MEMORY[0x1E695DF00] now];
      [v8 _setExpirationDate:v20];
    }

    [*(*(a1 + 32) + 8) setObject:v8 forKey:v5];
    [*(a1 + 32) _persistBagToDisk:v8 withKey:v5];
LABEL_15:
  }
}

- (void)_cleanBagCacheExcludingPaths:(id)a3
{
  v4 = a3;
  persistenceQueue = self->_persistenceQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__ICURLBagProvider__cleanBagCacheExcludingPaths___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(persistenceQueue, v7);
}

void __49__ICURLBagProvider__cleanBagCacheExcludingPaths___block_invoke(uint64_t a1)
{
  v1 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _cacheDirectoryPath];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [v3 enumeratorAtPath:v2];
  v4 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v36;
    v30 = *MEMORY[0x1E696A350];
    *&v5 = 138543618;
    v29 = v5;
    v31 = v2;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        v10 = [v2 stringByAppendingPathComponent:{v9, v29}];
        v34 = 0;
        v11 = [v3 attributesOfItemAtPath:v10 error:&v34];
        v12 = v34;
        if (v12)
        {
          v13 = v12;
          v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = *(v1 + 32);
            *buf = 138543874;
            v40 = v15;
            v41 = 2114;
            v42 = v10;
            v43 = 2114;
            v44 = v13;
            _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Error reading file attributes at path %{public}@. error=%{public}@", buf, 0x20u);
          }
        }

        else if ([*(v1 + 40) containsObject:v10])
        {
          v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v16 = *(v1 + 32);
            *buf = v29;
            v40 = v16;
            v41 = 2114;
            v42 = v9;
            _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEBUG, "%{public}@ Cleanup excluding path: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v17 = v1;
          v18 = [v11 objectForKey:v30];
          v19 = [MEMORY[0x1E695DF00] now];
          [v19 timeIntervalSinceReferenceDate];
          v21 = v20;
          [v18 timeIntervalSinceReferenceDate];
          v23 = v21 - v22;

          if (v23 <= 2419200.0)
          {
            v13 = 0;
          }

          else
          {
            v24 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = *(v17 + 32);
              *buf = v29;
              v40 = v25;
              v41 = 2114;
              v42 = v10;
              _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing stale cache at path: %{public}@", buf, 0x16u);
            }

            v33 = 0;
            v26 = [v3 removeItemAtPath:v10 error:&v33];
            v13 = v33;
            if ((v26 & 1) == 0)
            {
              v27 = os_log_create("com.apple.amp.iTunesCloud", "Default");
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v28 = *(v17 + 32);
                *buf = v29;
                v40 = v28;
                v41 = 2114;
                v42 = v10;
                _os_log_impl(&dword_1B4491000, v27, OS_LOG_TYPE_ERROR, "%{public}@ Encountered error removing file at path %{public}@", buf, 0x16u);
              }
            }
          }

          v1 = v17;
          v2 = v31;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v6);
  }
}

BOOL __30__ICURLBagProvider__loadCache__block_invoke_128(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  [v7 timeIntervalSinceReferenceDate];
  v10 = v9;
  [v8 timeIntervalSinceReferenceDate];
  v12 = v10 > v11;

  return v12;
}

- (id)_loadPlistAtPath:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0;
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v4 options:0 error:&v11];
  v6 = v11;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v13 = self;
      v14 = 2114;
      v15 = v4;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Could not load plist at path '%{public}@' error=%{public}@", buf, 0x20u);
    }
  }

  if (v5 && [v5 length])
  {
    v8 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:0];
    v9 = 0;
    if (_NSIsNSDictionary())
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_invalidateCacheEntriesWithProfileName:(id)a3 profileVersion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v16 = self;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalidating cached bags with profile %{public}@/%{public}@", buf, 0x20u);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__ICURLBagProvider__invalidateCacheEntriesWithProfileName_profileVersion___block_invoke;
  block[3] = &unk_1E7BFA178;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(accessQueue, block);
}

void __74__ICURLBagProvider__invalidateCacheEntriesWithProfileName_profileVersion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__ICURLBagProvider__invalidateCacheEntriesWithProfileName_profileVersion___block_invoke_2;
  v5[3] = &unk_1E7BF4438;
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __74__ICURLBagProvider__invalidateCacheEntriesWithProfileName_profileVersion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!a1[4])
  {
    goto LABEL_17;
  }

  v9 = a1[5];
  if (!v9)
  {
    v15 = [v7 profileName];
    v3 = v15;
    if (v15 == a1[4] || ([v15 isEqual:?] & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  v10 = [v8 profileName];
  v11 = v10;
  if (v10 == a1[4] || [v10 isEqual:?])
  {
    v12 = [v8 profileVersion];
    v13 = v12;
    if (v12 == a1[5])
    {

      if (v9)
      {
LABEL_17:
        v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = a1[6];
          v19 = 138543618;
          v20 = v17;
          v21 = 2114;
          v22 = v6;
          _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalidating cached bag for key '%{public}@'", &v19, 0x16u);
        }

        v18 = [MEMORY[0x1E695DF00] now];
        [v8 _setExpirationDate:v18];

        goto LABEL_20;
      }

LABEL_16:

      goto LABEL_17;
    }

    v14 = [v12 isEqual:?];

    if (!v9)
    {
    }

    if (v14)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (!v9)
    {
    }
  }

LABEL_20:
}

- (void)_handleAMSBagInvalidatedNotification:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Received AMSBag invalidation notification with userInfo %{public}@", &v8, 0x16u);
  }

  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698C510]];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698C518]];
  [(ICURLBagProvider *)self _invalidateCacheEntriesWithProfileName:v6 profileVersion:v7];
}

- (void)_handleAMSBagChangedNotification:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__ICURLBagProvider__handleAMSBagChangedNotification___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __53__ICURLBagProvider__handleAMSBagChangedNotification___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E698C510]];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x1E698C518]];
  v5 = [v2 objectForKeyedSubscript:*MEMORY[0x1E698C508]];
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    *buf = 138544130;
    v29 = v7;
    v30 = 2114;
    v31 = v3;
    v32 = 2114;
    v33 = v4;
    v34 = 2114;
    v35 = v5;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Received AMSBag change notification for profile %{public}@/%{public}@ and account '%{public}@", buf, 0x2Au);
  }

  if (v5)
  {
    v8 = +[ICMonitoredAccountStore sharedAccountStore];
    v27 = 0;
    v9 = [v8 storeAccountWithIdentifier:v5 error:&v27];
    v10 = v27;

    if (v10)
    {
      v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v10 msv_description];
        *buf = 138543618;
        v29 = v5;
        v30 = 2114;
        v31 = v12;
        _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "Failed to get account for identifier '%{public}@' error=%{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v13 = [*(*(a1 + 40) + 56) allKeys];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __53__ICURLBagProvider__handleAMSBagChangedNotification___block_invoke_119;
  v23 = &unk_1E7BF4410;
  v14 = v3;
  v24 = v14;
  v15 = v4;
  v25 = v15;
  v16 = v9;
  v26 = v16;
  v17 = [v13 msv_firstWhere:&v20];
  if (v17)
  {
    [*(*(a1 + 40) + 56) setObject:MEMORY[0x1E695E118] forKey:{v17, v20, v21, v22, v23, v24, v25}];
  }

  else
  {
    v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 40);
      *buf = 138543362;
      v29 = v19;
      _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_ERROR, "%{public}@ No matching request context for notification - ignoring", buf, 0xCu);
    }
  }
}

uint64_t __53__ICURLBagProvider__handleAMSBagChangedNotification___block_invoke_119(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientInfo];
  v5 = [v4 bagProfile];
  if (([v5 isEqualToString:*(a1 + 32)] & 1) == 0)
  {

    goto LABEL_8;
  }

  v6 = [v4 bagProfileVersion];
  v7 = [v6 isEqualToString:*(a1 + 40)];

  if (v7)
  {
    if (*(a1 + 48))
    {
      v8 = [v3 identity];
      v9 = [v3 identityStore];
      v10 = [v9 DSIDForUserIdentity:v8 outError:0];

      v11 = [*(a1 + 48) ic_DSID];
      v12 = v11;
      if (v10 != v11)
      {
        v13 = [v10 isEqual:v11];

        if (v13)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      }
    }

LABEL_10:
    v14 = 1;
    goto LABEL_11;
  }

LABEL_8:
  v14 = 0;
LABEL_11:

  return v14;
}

- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ user identity changed - invalidating bag cache", &v5, 0xCu);
  }

  [(ICURLBagProvider *)self invalidateCache];
}

- (void)_fetchBagForRequestContext:(id)a3 withCompletionHandler:(id)a4
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[ICDeviceInfo currentDeviceInfo];
  v9 = [v6 clientInfo];
  v54 = [MEMORY[0x1E695DF00] date];
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 clientInfo];
    *buf = 138543874;
    v73 = self;
    v74 = 2114;
    v75 = v6;
    v76 = 2114;
    v77 = v11;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing bag request for requestContext %{public}@. clientInfo=%{public}@", buf, 0x20u);
  }

  v12 = [v9 bagProfile];
  if (!v12)
  {
    v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v73 = self;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ No bag profile name provided - using default", buf, 0xCu);
    }

    v12 = @"itunescloudd";
    v14 = @"itunescloudd";
  }

  v52 = [v9 bagProfileVersion];
  if (!v52)
  {
    v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v73 = self;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ No bag profile version provided - using default", buf, 0xCu);
    }

    v52 = @"1";
    v16 = @"1";
  }

  v51 = v9;
  v17 = [v6 identityStore];
  v18 = [v6 identity];
  v71 = 0;
  v19 = [v17 DSIDForUserIdentity:v18 outError:&v71];
  v20 = v71;

  if (v20)
  {
    v21 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [v6 identity];
      *buf = 138543874;
      v73 = self;
      v74 = 2114;
      v75 = v22;
      v76 = 2114;
      v77 = v20;
      _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load account DSID for identity %{public}@. err=%{public}@", buf, 0x20u);
    }
  }

  v50 = v19;
  if (self->_useAMSBag)
  {
    if (v19)
    {
      v23 = +[ICMonitoredAccountStore sharedAccountStore];
      v70 = v20;
      v24 = [v23 storeAccountForDSID:v19 error:&v70];
      v25 = v70;

      if (v25)
      {
        v26 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = ICCreateLoggableValueForDSID(v19);
          *buf = 138543874;
          v73 = self;
          v74 = 2114;
          v75 = v27;
          v76 = 2114;
          v77 = v25;
          _os_log_impl(&dword_1B4491000, v26, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load account for DSID %{public}@. err=%{public}@", buf, 0x20u);
        }
      }

      v28 = v24;
    }

    else
    {
      v25 = v20;
      v28 = 0;
    }

    v53 = [(ICURLBagProvider *)self _amsProcessInfoFromRequestContext:v6];
    v44 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v43 = v54;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v73 = self;
      v74 = 2114;
      v75 = v6;
      v76 = 2114;
      v77 = v28;
      _os_log_impl(&dword_1B4491000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching AMS bag for context %{public}@ using account %{public}@.", buf, 0x20u);
    }

    v39 = v52;
    if (v28)
    {
      [MEMORY[0x1E698C7D8] bagForProfile:v12 profileVersion:v52 processInfo:v53 account:v28];
    }

    else
    {
      [MEMORY[0x1E698C7D8] bagForProfile:v12 profileVersion:v52 processInfo:v53];
    }
    v45 = ;
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __69__ICURLBagProvider__fetchBagForRequestContext_withCompletionHandler___block_invoke;
    v62[3] = &unk_1E7BF43C0;
    v62[4] = self;
    v69 = v7;
    v63 = v45;
    v64 = v12;
    v65 = v54;
    v66 = v52;
    v67 = v50;
    v68 = v6;
    v37 = v50;
    v33 = v45;
    [v33 createSnapshotWithCompletion:v62];
  }

  else
  {
    v46 = v20;
    v29 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v73 = self;
      v74 = 2114;
      v75 = v6;
      _os_log_impl(&dword_1B4491000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching legacy bag for context %{public}@", buf, 0x16u);
    }

    v28 = [MEMORY[0x1E695DF90] dictionary];
    [v28 setObject:@"6" forKey:@"ix"];
    v30 = [v8 currentLocale];
    if (v30)
    {
      [v28 setObject:v30 forKey:@"locale"];
    }

    v53 = v30;
    v47 = self;
    v48 = v8;
    v49 = v7;
    v31 = [v8 productVersion];
    v32 = [v31 componentsSeparatedByString:@"."];
    v33 = [v32 firstObject];

    if ([v33 length])
    {
      [v28 setObject:v33 forKey:@"os"];
    }

    v34 = objc_alloc(MEMORY[0x1E695AC18]);
    v35 = [MEMORY[0x1E695DFF8] URLWithString:@"https://init.itunes.apple.com/bag.xml"];
    v36 = [v35 ic_URLByAppendingQueryParameters:v28];
    v37 = [v34 initWithURL:v36];

    [v37 setCachePolicy:1];
    v38 = [[ICStoreURLRequest alloc] initWithURLRequest:v37 requestContext:v6];
    [(ICStoreURLRequest *)v38 setShouldRequireURLBag:0];
    [(ICStoreURLRequest *)v38 setAnisetteVersion:0];
    [(ICURLRequest *)v38 setPrioritize:1];
    [(ICStoreURLRequest *)v38 setShouldUseMescalSigning:0];
    v39 = v52;
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bag profile:%@ version:%@", v12, v52];
    [(ICURLRequest *)v38 setRequestName:v40];

    v41 = +[ICURLSessionManager unlimitedHighPrioritySession];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __69__ICURLBagProvider__fetchBagForRequestContext_withCompletionHandler___block_invoke_114;
    v55[3] = &unk_1E7BF5D30;
    v55[4] = v47;
    v7 = v49;
    v61 = v49;
    v56 = v12;
    v57 = v54;
    v58 = v52;
    v59 = v50;
    v60 = v6;
    v42 = v50;
    [v41 enqueueDataRequest:v38 withCompletionHandler:v55];

    v43 = v54;
    v25 = v46;
    v8 = v48;
  }
}

void __69__ICURLBagProvider__fetchBagForRequestContext_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      *buf = 138543618;
      v46 = v24;
      v47 = 2114;
      v48 = v7;
      _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch url bag. err=%{public}@", buf, 0x16u);
    }

    v25 = *(*(a1 + 32) + 16);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __69__ICURLBagProvider__fetchBagForRequestContext_withCompletionHandler___block_invoke_83;
    v42[3] = &unk_1E7BF9EC8;
    v44 = *(a1 + 88);
    v43 = v7;
    dispatch_async(v25, v42);

    v10 = v44;
  }

  else
  {
    v8 = [*(a1 + 40) _temporaryDictionary];
    v41 = 0;
    v9 = [v8 resultWithError:&v41];
    v10 = v41;
    if (v10 || !v9)
    {
      v26 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 32);
        *buf = 138543618;
        v46 = v27;
        v47 = 2114;
        v48 = v10;
        _os_log_impl(&dword_1B4491000, v26, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load payload dictionary. err=%{public}@", buf, 0x16u);
      }

      v28 = *(*(a1 + 32) + 16);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __69__ICURLBagProvider__fetchBagForRequestContext_withCompletionHandler___block_invoke_87;
      v38[3] = &unk_1E7BF9EC8;
      v14 = &v40;
      v40 = *(a1 + 88);
      v39 = v10;
      dispatch_async(v28, v38);
    }

    else
    {
      v11 = *(a1 + 32);
      v29 = v8;
      if ((*(v11 + 65) & 1) == 0)
      {
        v12 = [v11 _dictionaryFromBagPayloadDictionaryAddingKnownMissingKeys:v9 forProfileName:*(a1 + 48)];

        v11 = *(a1 + 32);
        v9 = v12;
      }

      v13 = *(v11 + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__ICURLBagProvider__fetchBagForRequestContext_withCompletionHandler___block_invoke_2;
      block[3] = &unk_1E7BF4398;
      v14 = v31;
      v15 = *(a1 + 40);
      v16 = *(a1 + 32);
      v31[0] = v15;
      v31[1] = v16;
      v9 = v9;
      v32 = v9;
      v33 = v5;
      v17 = *(a1 + 56);
      v18 = *(a1 + 48);
      v19 = *(a1 + 64);
      v20 = *(a1 + 72);
      *&v21 = v19;
      *(&v21 + 1) = v20;
      *&v22 = v17;
      *(&v22 + 1) = v18;
      v34 = v22;
      v35 = v21;
      v36 = *(a1 + 80);
      v37 = *(a1 + 88);
      dispatch_async(v13, block);

      v8 = v29;
    }
  }
}

void __69__ICURLBagProvider__fetchBagForRequestContext_withCompletionHandler___block_invoke_114(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v42 = v8;
      v43 = 2114;
      v44 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch legacy url bag. err=%{public}@", buf, 0x16u);
    }

    v9 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__ICURLBagProvider__fetchBagForRequestContext_withCompletionHandler___block_invoke_115;
    block[3] = &unk_1E7BF9EC8;
    v40 = *(a1 + 80);
    v39 = v6;
    dispatch_async(v9, block);

    v10 = v40;
  }

  else
  {
    v11 = [v5 parsedBodyDictionary];
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 32);
      if ((*(v13 + 65) & 1) == 0)
      {
        v14 = [v13 _dictionaryFromBagPayloadDictionaryAddingKnownMissingKeys:v12 forProfileName:*(a1 + 40)];

        v13 = *(a1 + 32);
        v12 = v14;
      }

      v15 = *(v13 + 16);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __69__ICURLBagProvider__fetchBagForRequestContext_withCompletionHandler___block_invoke_2_117;
      v28[3] = &unk_1E7BF43E8;
      v16 = v5;
      v17 = *(a1 + 32);
      v29 = v16;
      v30 = v17;
      v31 = v12;
      v18 = *(a1 + 48);
      v19 = *(a1 + 40);
      v20 = *(a1 + 56);
      v21 = *(a1 + 64);
      *&v22 = v20;
      *(&v22 + 1) = v21;
      *&v23 = v18;
      *(&v23 + 1) = v19;
      v32 = v23;
      v33 = v22;
      v34 = *(a1 + 72);
      v35 = *(a1 + 80);
      v10 = v12;
      dispatch_async(v15, v28);
    }

    else
    {
      v24 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 32);
        v26 = [v5 parsedBody];
        *buf = 138543618;
        v42 = v25;
        v43 = 2114;
        v44 = v26;
        _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_ERROR, "%{public}@ Failed to parse the legacy bag response. body=%{public}@", buf, 0x16u);
      }

      v27 = *(*(a1 + 32) + 16);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __69__ICURLBagProvider__fetchBagForRequestContext_withCompletionHandler___block_invoke_116;
      v36[3] = &unk_1E7BF9D20;
      v37 = *(a1 + 80);
      dispatch_async(v27, v36);
      v10 = v37;
    }
  }
}

void __69__ICURLBagProvider__fetchBagForRequestContext_withCompletionHandler___block_invoke_116(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __69__ICURLBagProvider__fetchBagForRequestContext_withCompletionHandler___block_invoke_2_117(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) urlResponse];
  v3 = [v2 ic_valueForHTTPHeaderField:@"x-apple-jingle-correlation-key"];
  v4 = [v2 ic_valueForHTTPHeaderField:@"X-Apple-Application-Site"];
  v5 = [*(a1 + 32) urlResponse];
  [v5 _calculatedExpiration];
  v7 = v6;

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = v8 + 600.0;
  if (v7 < v10)
  {
    v7 = v10;
  }

  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v7];
  v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    [v11 timeIntervalSince1970];
    *buf = 138543874;
    v18 = v13;
    v19 = 2048;
    v20 = v7 - v9;
    v21 = 2048;
    v22 = v14;
    _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ fetched new bag which expires in %fs (expiration date: %{time_t}zd).", buf, 0x20u);
  }

  v15 = [[ICURLBag alloc] _initWithDictionary:*(a1 + 48) amsBag:0 requestDate:*(a1 + 56) expirationDate:v11 serverCorrelationKey:v3 serverEnvironment:v4 profileName:*(a1 + 64) profileVersion:*(a1 + 72) sourceAccountDSID:*(a1 + 80)];
  v16 = [*(a1 + 40) _getCacheKeyForRequestContext:*(a1 + 88)];
  [*(*(a1 + 40) + 8) setObject:v15 forKey:v16];
  [*(a1 + 40) _persistBagToDisk:v15 withKey:v16];
  (*(*(a1 + 96) + 16))();
}

void __69__ICURLBagProvider__fetchBagForRequestContext_withCompletionHandler___block_invoke_83(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7200 underlyingError:*(a1 + 32) debugDescription:@"Failed to fetch url bag"];
  (*(v1 + 16))(v1, 0, v2);
}

void __69__ICURLBagProvider__fetchBagForRequestContext_withCompletionHandler___block_invoke_87(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7200 underlyingError:*(a1 + 32) debugDescription:@"Failed to load payload dictionary"];
  (*(v1 + 16))(v1, 0, v2);
}

void __69__ICURLBagProvider__fetchBagForRequestContext_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) expirationDate];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  if (v2)
  {
    [v2 timeIntervalSinceReferenceDate];
  }

  else
  {
    v5 = v3 + 7200.0;
  }

  if (v5 >= v4 + 600.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4 + 600.0;
  }

  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v6];
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    [v7 timeIntervalSince1970];
    v11 = v10;
    [v2 timeIntervalSince1970];
    *buf = 138544130;
    v16 = v9;
    v17 = 2048;
    v18 = v6 - v4;
    v19 = 2048;
    v20 = v11;
    v21 = 2048;
    v22 = v12;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ fetched new bag which expires in %fs (expiration time: %{time_t}zd, adjusted from %{time_t}zd)", buf, 0x2Au);
  }

  v13 = [[ICURLBag alloc] _initWithDictionary:*(a1 + 48) amsBag:*(a1 + 56) requestDate:*(a1 + 64) expirationDate:v7 serverCorrelationKey:0 serverEnvironment:0 profileName:*(a1 + 72) profileVersion:*(a1 + 80) sourceAccountDSID:*(a1 + 88)];
  v14 = [*(a1 + 40) _getCacheKeyForRequestContext:*(a1 + 96)];
  [*(*(a1 + 40) + 8) setObject:v13 forKey:v14];
  [*(a1 + 40) _persistBagToDisk:v13 withKey:v14];
  (*(*(a1 + 104) + 16))();
}

- (id)_getCacheKeyForRequestContext:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identity];
  v6 = [v4 identityStore];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = v4;
    v46 = 0;
    v8 = [v6 getPropertiesForUserIdentity:v5 error:&v46];
    v10 = v46;
    if (v10)
    {
      v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v48 = self;
        v49 = 2114;
        v50 = v10;
        _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch identity properties. err=%{public}@", buf, 0x16u);
      }
    }

    v4 = v9;
  }

  v39 = v7;
  v40 = v5;
  v45 = [v8 storefrontIdentifier];
  v38 = v8;
  v12 = [v8 DSID];
  v13 = [v4 clientInfo];
  v44 = [v13 clientIdentifier];
  v14 = [v13 clientVersion];
  v43 = [v13 bundleIdentifier];
  v42 = [v13 bagProfile];
  v41 = [v13 bagProfileVersion];
  v15 = +[ICDeviceInfo currentDeviceInfo];
  v16 = [v15 currentLocale];
  v17 = [v15 productPlatform];
  v18 = [v4 personalizationStyle];
  v19 = MEMORY[0x1E696AEC0];
  if (self->_useAMSBag)
  {
    if (v12)
    {
      v20 = [v12 stringValue];
    }

    else
    {
      v20 = @"nil";
    }

    v22 = v43;
    v23 = v44;
    if (!v43)
    {
      v22 = @"nil";
    }

    if (!v44)
    {
      v23 = @"nil";
    }

    if (v14)
    {
      v24 = v14;
    }

    else
    {
      v24 = @"nil";
    }

    v26 = v41;
    v25 = v42;
    if (!v42)
    {
      v25 = @"nil";
    }

    if (!v41)
    {
      v26 = @"nil";
    }

    v27 = v45;
    if (!v45)
    {
      v27 = @"nil";
    }

    if (v16)
    {
      v28 = v16;
    }

    else
    {
      v28 = @"nil";
    }

    if (v17)
    {
      v29 = v17;
    }

    else
    {
      v29 = @"nil";
    }

    v30 = [v19 stringWithFormat:@"%@-%@-%@-%@-%@-%@-%@-%@-%@", v20, v22, v23, v24, v25, v26, v27, v28, v29];
    if (!v12)
    {
      goto LABEL_53;
    }

LABEL_52:

    goto LABEL_53;
  }

  v21 = v18;
  if (v12)
  {
    v20 = [v12 stringValue];
  }

  else
  {
    v20 = @"nil";
  }

  v31 = @"personalized";
  if (!v21)
  {
    v31 = @"unpersonalized";
  }

  v32 = v44;
  v33 = v45;
  if (!v44)
  {
    v32 = @"nil";
  }

  if (v14)
  {
    v34 = v14;
  }

  else
  {
    v34 = @"nil";
  }

  if (!v45)
  {
    v33 = @"nil";
  }

  if (v16)
  {
    v35 = v16;
  }

  else
  {
    v35 = @"nil";
  }

  if (v17)
  {
    v36 = v17;
  }

  else
  {
    v36 = @"nil";
  }

  v30 = [v19 stringWithFormat:@"%ld-%@-%@-%@-%@-%@-%@-%@", 0, v20, v31, v32, v34, v33, v35, v36];
  if (v12)
  {
    goto LABEL_52;
  }

LABEL_53:

  return v30;
}

- (void)invalidateCache
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalidating all entries in url bag cache by expiring them", &v4, 0xCu);
  }

  [(ICURLBagProvider *)self _invalidateCacheEntriesWithProfileName:0 profileVersion:0];
}

- (void)getBagAndURLMetricsForRequestContext:(id)a3 forceRefetch:(BOOL)a4 withCompletionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__ICURLBagProvider_getBagAndURLMetricsForRequestContext_forceRefetch_withCompletionHandler___block_invoke;
  v10[3] = &unk_1E7BF4370;
  v11 = v8;
  v9 = v8;
  [(ICURLBagProvider *)self getBagForRequestContext:a3 forceRefetch:v5 withCompletionHandler:v10];
}

uint64_t __92__ICURLBagProvider_getBagAndURLMetricsForRequestContext_forceRefetch_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0, a3);
  }

  return result;
}

- (void)getBagForRequestContext:(id)a3 qualityOfService:(int64_t)a4 forceRefetch:(BOOL)a5 withCompletionHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  if (!v9)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"ICURLBagProvider.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"requestContext != nil"}];
  }

  v11 = [v9 preloadedBag];
  if (v11 && (([v9 allowsExpiredBags] & 1) != 0 || (objc_msgSend(v11, "isExpired") & 1) == 0))
  {
    v10[2](v10, v11, 0);
  }

  else
  {
    v13 = v9;
    v14 = v10;
    msv_dispatch_async_on_queue_with_qos();
  }
}

void __96__ICURLBagProvider_getBagForRequestContext_qualityOfService_forceRefetch_withCompletionHandler___block_invoke(uint64_t a1)
{
  v95 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _getCacheKeyForRequestContext:*(a1 + 40)];
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__5609;
  v76 = __Block_byref_object_dispose__5610;
  v77 = [*(*v2 + 8) objectForKey:v3];
  if (!v73[5])
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [*(a1 + 32) _cacheDirectoryPath];
    v6 = [v4 initWithFormat:@"%@/%@.plist", v5, v3];

    v7 = [*(a1 + 32) _loadPlistAtPath:v6];
    if (!v7)
    {
LABEL_10:

      goto LABEL_11;
    }

    v8 = [[ICURLBag alloc] _initWithPropertyListRepresentation:v7];
    v9 = v73[5];
    v73[5] = v8;

    v10 = v73[5];
    if (v10)
    {
      [*(*(a1 + 32) + 8) setObject:v10 forKey:v3];
      v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *buf = 138543618;
        v79 = v12;
        v80 = 2114;
        *v81 = v3;
        v13 = "%{public}@ Retrieved persisted cache from disk for cache key: %{public}@";
        v14 = v11;
        v15 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
        _os_log_impl(&dword_1B4491000, v14, v15, v13, buf, 0x16u);
      }
    }

    else
    {
      v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 138543618;
        v79 = v16;
        v80 = 2114;
        *v81 = v3;
        v13 = "%{public}@ Failed to create bag from cached data for key: %{public}@";
        v14 = v11;
        v15 = OS_LOG_TYPE_ERROR;
        goto LABEL_8;
      }
    }

    goto LABEL_10;
  }

LABEL_11:
  if (*(a1 + 64))
  {
    v17 = 1;
  }

  else
  {
    v18 = +[ICDefaults standardDefaults];
    v17 = [v18 shouldBypassURLBagCache];
  }

  v19 = v73[5];
  if (!v19)
  {
    goto LABEL_20;
  }

  v20 = [v19 amsBag];

  if ((v20 != 0) != *(*(a1 + 32) + 64))
  {
    v21 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      v23 = *(v22 + 64);
      *buf = 138543874;
      v79 = v22;
      v80 = 1024;
      *v81 = v23;
      *&v81[4] = 1024;
      *&v81[6] = v20 != 0;
      _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Forcing a refresh because _useAMSBag = %{BOOL}u and hasAMSBagPayload = %{BOOL}u", buf, 0x18u);
    }

    goto LABEL_20;
  }

  v24 = v73[5];
  if ((v24 == 0) | v17 & 1 || [v24 isExpired] && !objc_msgSend(*(a1 + 40), "allowsExpiredBags"))
  {
LABEL_20:
    v25 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v56 = v3;
      v27 = *(a1 + 32);
      v26 = *(a1 + 40);
      v28 = [v26 clientInfo];
      v29 = *(a1 + 64);
      v30 = v73[5];
      v31 = v30 != 0;
      v32 = [v30 isExpired];
      v33 = [*(a1 + 40) allowsExpiredBags];
      v34 = [*(*(a1 + 32) + 8) allKeys];
      *buf = 138545410;
      v79 = v27;
      v80 = 2114;
      *v81 = v26;
      *&v81[8] = 2114;
      v82 = v28;
      v83 = 1024;
      v84 = v29;
      v85 = 1024;
      v86 = v31;
      v87 = 1024;
      v88 = v32;
      v89 = 1024;
      v90 = v33;
      v91 = 2114;
      v3 = v56;
      v92 = v56;
      v93 = 2114;
      v94 = v34;
      _os_log_impl(&dword_1B4491000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetching new bag for requestContext %{public}@, clientInfo=%{public}@; force=%{BOOL}u, cached=%{BOOL}u, expired=%{BOOL}u, allowsExpired=%{BOOL}u, cacheKey='%{public}@', allKeys=%{public}@", buf, 0x4Cu);
    }

    v35 = *(a1 + 32);
    if (*(a1 + 40))
    {
      v36 = [*(v35 + 40) objectForKey:v3];

      if (v36)
      {
        [*(*(a1 + 32) + 40) objectForKey:v3];
      }

      else
      {
        [MEMORY[0x1E695DF70] array];
      }
      v38 = ;
      v39 = *(a1 + 48);
      if (v39)
      {
        v40 = [v39 copy];
        [v38 addObject:v40];
      }

      if (v36)
      {
        v41 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = *(a1 + 32);
          *buf = 138543362;
          v79 = v42;
          _os_log_impl(&dword_1B4491000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ Waiting for a duplicate bag request to complete", buf, 0xCu);
        }
      }

      else
      {
        [*(*(a1 + 32) + 56) setObject:MEMORY[0x1E695E110] forKey:*(a1 + 40)];
        [*(*(a1 + 32) + 40) setObject:v38 forKey:v3];
        v43 = *(a1 + 32);
        v44 = *(a1 + 40);
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __96__ICURLBagProvider_getBagForRequestContext_qualityOfService_forceRefetch_withCompletionHandler___block_invoke_58;
        v59[3] = &unk_1E7BF4320;
        v59[4] = v43;
        v60 = v3;
        v61 = *(a1 + 40);
        v62 = &v72;
        [v43 _fetchBagForRequestContext:v44 withCompletionHandler:v59];
      }
    }

    else
    {
      v37 = *(v35 + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __96__ICURLBagProvider_getBagForRequestContext_qualityOfService_forceRefetch_withCompletionHandler___block_invoke_62;
      block[3] = &unk_1E7BF9D20;
      v58 = *(a1 + 48);
      dispatch_async(v37, block);
      v38 = v58;
    }

    goto LABEL_45;
  }

  v66 = MEMORY[0x1E69E9820];
  v67 = 3221225472;
  v68 = __96__ICURLBagProvider_getBagForRequestContext_qualityOfService_forceRefetch_withCompletionHandler___block_invoke_50;
  v69 = &unk_1E7BF8F80;
  v70 = *(a1 + 48);
  v71 = &v72;
  msv_dispatch_async_on_queue_with_qos();
  if ([v73[5] isExpired])
  {
    if (([*(*(a1 + 32) + 48) containsObject:v3] & 1) == 0)
    {
      v45 = [*(*(a1 + 32) + 40) objectForKey:v3];
      v46 = v45 == 0;

      if (v46)
      {
        v47 = _ICLogCategoryDefault();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = *(a1 + 32);
          *buf = 138543362;
          v79 = v48;
          _os_log_impl(&dword_1B4491000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ Returned expired URL bag, so scheduling an URL bag refresh in 10 seconds", buf, 0xCu);
        }

        v49 = *(*(a1 + 32) + 48);
        if (!v49)
        {
          v50 = [MEMORY[0x1E695DFA8] setWithCapacity:2];
          v51 = *(a1 + 32);
          v52 = *(v51 + 48);
          *(v51 + 48) = v50;

          v49 = *(*(a1 + 32) + 48);
        }

        [v49 addObject:v3];
        v53 = dispatch_time(0, 10000000000);
        v54 = *(a1 + 32);
        v55 = *(v54 + 16);
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __96__ICURLBagProvider_getBagForRequestContext_qualityOfService_forceRefetch_withCompletionHandler___block_invoke_52;
        v63[3] = &unk_1E7BFA178;
        v63[4] = v54;
        v64 = v3;
        v65 = *(a1 + 40);
        dispatch_after(v53, v55, v63);
      }
    }
  }

  v38 = v70;
LABEL_45:

  _Block_object_dispose(&v72, 8);
}

uint64_t __96__ICURLBagProvider_getBagForRequestContext_qualityOfService_forceRefetch_withCompletionHandler___block_invoke_50(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40), 0);
  }

  return result;
}

void __96__ICURLBagProvider_getBagForRequestContext_qualityOfService_forceRefetch_withCompletionHandler___block_invoke_52(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (!v2 || [v2 isExpired])
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting to refresh an expired URL bag", &v6, 0xCu);
    }

    [*(a1 + 32) getBagForRequestContext:*(a1 + 48) forceRefetch:1 withCompletionHandler:&__block_literal_global_56];
  }
}

void __96__ICURLBagProvider_getBagForRequestContext_qualityOfService_forceRefetch_withCompletionHandler___block_invoke_58(void *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1[4] + 40) objectForKey:a1[5]];
  [*(a1[4] + 40) removeObjectForKey:a1[5]];
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = [v7 count];
    v11 = a1[6];
    *buf = 138543874;
    v37 = v9;
    v38 = 2048;
    v39 = v10;
    v40 = 2114;
    v41 = v11;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Notifying %lu callers that we got the bag for context %{public}@", buf, 0x20u);
  }

  if ([v7 count])
  {
    v12 = 0;
    do
    {
      v13 = [v7 objectAtIndex:v12];
      v14 = v13;
      if (v13)
      {
        v15 = *(a1[4] + 32);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __96__ICURLBagProvider_getBagForRequestContext_qualityOfService_forceRefetch_withCompletionHandler___block_invoke_59;
        block[3] = &unk_1E7BF9E28;
        v35 = v13;
        v33 = v5;
        v34 = v6;
        dispatch_async(v15, block);
      }

      ++v12;
    }

    while (v12 < [v7 count]);
  }

  if (!v6)
  {
    v16 = a1[4];
    if (*(v16 + 64))
    {
      v17 = [*(v16 + 56) objectForKey:a1[6]];
      v18 = [v17 BOOLValue];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v19 = *(*(a1[7] + 8) + 40);
      if (v19 && ([v19 isEqual:v5] & 1) != 0)
      {
        goto LABEL_17;
      }
    }

    v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = a1[4];
      v22 = a1[6];
      *buf = 138543618;
      v37 = v21;
      v38 = 2114;
      v39 = v22;
      _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Detected bag change for requestContext %{public}@ - posting notification", buf, 0x16u);
    }

    v23 = a1[4];
    v24 = *(v23 + 32);
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __96__ICURLBagProvider_getBagForRequestContext_qualityOfService_forceRefetch_withCompletionHandler___block_invoke_60;
    v28 = &unk_1E7BFA178;
    v29 = v23;
    v30 = a1[6];
    v31 = v5;
    dispatch_async(v24, &v25);
  }

LABEL_17:
  [*(a1[4] + 56) removeObjectForKey:{a1[6], v25, v26, v27, v28, v29}];
}

void __96__ICURLBagProvider_getBagForRequestContext_qualityOfService_forceRefetch_withCompletionHandler___block_invoke_62(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7002 userInfo:0];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __96__ICURLBagProvider_getBagForRequestContext_qualityOfService_forceRefetch_withCompletionHandler___block_invoke_60(void *a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = a1[4];
  v3 = a1[5];
  v7[0] = @"request_context";
  v7[1] = @"url_bag";
  v5 = a1[6];
  v8[0] = v3;
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 postNotificationName:@"ICURLBagProviderDidUpdateBagNotification" object:v4 userInfo:v6];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"ICUserIdentityStoreDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = ICURLBagProvider;
  [(ICURLBagProvider *)&v4 dealloc];
}

@end