@interface TPSDataCacheController
+ (id)sharedInstance;
+ (void)removeAllDataCache;
+ (void)removeDataCacheAtPath:(id)a3;
- (BOOL)cacheValidForIdentifier:(id)a3;
- (BOOL)isDataCacheValid:(id)a3;
- (TPSDataCacheController)init;
- (TPSDataCacheController)initWithIdentifier:(id)a3 directoryName:(id)a4 maxCacheSize:(unint64_t)a5 URLSessionDataType:(int64_t)a6;
- (id)cacheFileURLForDataCache:(id)a3;
- (id)cacheFileURLForIdentifier:(id)a3;
- (id)dataCacheForIdentifier:(id)a3;
- (id)formattedDataForPath:(id)a3 identifier:(id)a4 attributionIdentifier:(id)a5 priority:(float)a6 completionHandler:(id)a7;
- (id)formattedDataForRequest:(id)a3 identifier:(id)a4 attributionIdentifier:(id)a5 requestType:(id)a6 priority:(float)a7 completionHandler:(id)a8;
- (id)newDataCache;
- (id)saveFileURL:(id)a3 identifier:(id)a4 fileSize:(unint64_t)a5 lastModified:(id)a6 dataCache:(id)a7;
- (void)addDataCache:(id)a3;
- (void)cancelAllOriginSessionItems;
- (void)commonInit;
- (void)createCacheDirectory;
- (void)dealloc;
- (void)excludeURLFromBackup:(id)a3;
- (void)pruneCache;
- (void)reloadDataCache;
- (void)removeAllDataCache;
- (void)removeCacheForIdentifier:(id)a3;
- (void)removeDataCache:(id)a3 updateCache:(BOOL)a4;
- (void)setLanguageCode:(id)a3;
- (void)syncCacheImmediately;
- (void)updateCache;
- (void)updateCacheDelay;
@end

@implementation TPSDataCacheController

+ (id)sharedInstance
{
  if (sharedInstance_predicate_3 != -1)
  {
    +[TPSDataCacheController sharedInstance];
  }

  v3 = sharedInstance_gTPSDataCacheController;

  return v3;
}

uint64_t __40__TPSDataCacheController_sharedInstance__block_invoke()
{
  v0 = [[TPSDataCacheController alloc] initWithIdentifier:@"TPSDataCacheIdentifier" directoryName:@"Data" maxCacheSize:5242880 URLSessionDataType:0];
  v1 = sharedInstance_gTPSDataCacheController;
  sharedInstance_gTPSDataCacheController = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)removeAllDataCache
{
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v2 = +[TPSCommonDefines appGroupIdentifier];
  if (v2 && ([v8 containerURLForSecurityApplicationGroupIdentifier:v2], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [v3 URLByAppendingPathComponent:@"Library/Caches"];

    v6 = [v5 path];
  }

  else
  {
    v5 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v6 = [v5 objectAtIndex:0];
  }

  v7 = v6;

  [TPSDataCacheController removeDataCacheAtPath:v7];
}

+ (void)removeDataCacheAtPath:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v4 enumeratorAtPath:v3];
    v6 = objc_alloc_init(MEMORY[0x1E696ABF8]);
    v7 = [v5 nextObject];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        v10 = [v3 stringByAppendingPathComponent:v8];
        if (v10)
        {
          v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
          if (v11)
          {
            v16 = v9;
            v14[0] = MEMORY[0x1E69E9820];
            v14[1] = 3221225472;
            v14[2] = __48__TPSDataCacheController_removeDataCacheAtPath___block_invoke;
            v14[3] = &unk_1E81023B8;
            v15 = v4;
            [v6 coordinateWritingItemAtURL:v11 options:1 error:&v16 byAccessor:v14];
            v12 = v16;

            v9 = v12;
          }
        }

        v13 = [v5 nextObject];

        v8 = v13;
      }

      while (v13);
    }
  }
}

void __48__TPSDataCacheController_removeDataCacheAtPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 path];
  [v2 removeItemAtPath:v3 error:0];
}

- (void)dealloc
{
  [(TPSDataCacheController *)self cancelAllOriginSessionItems];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_updateCacheDelay object:0];
  v3.receiver = self;
  v3.super_class = TPSDataCacheController;
  [(TPSDataCacheController *)&v3 dealloc];
}

- (void)commonInit
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.IPDataCacheControllerSerialQueue", v3);
  dataCacheSerialQueue = self->_dataCacheSerialQueue;
  self->_dataCacheSerialQueue = v4;

  self->_cacheSize = 0;
  v6 = [MEMORY[0x1E695DF70] array];
  dataCacheArray = self->_dataCacheArray;
  self->_dataCacheArray = v6;

  v8 = [MEMORY[0x1E695DF90] dictionary];
  dataCacheMap = self->_dataCacheMap;
  self->_dataCacheMap = v8;

  v10 = [MEMORY[0x1E695DF70] array];
  originFetchItems = self->_originFetchItems;
  self->_originFetchItems = v10;

  MEMORY[0x1EEE66BB8](v10, originFetchItems);
}

- (TPSDataCacheController)init
{
  v5.receiver = self;
  v5.super_class = TPSDataCacheController;
  v2 = [(TPSDataCacheController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TPSDataCacheController *)v2 commonInit];
  }

  return v3;
}

- (TPSDataCacheController)initWithIdentifier:(id)a3 directoryName:(id)a4 maxCacheSize:(unint64_t)a5 URLSessionDataType:(int64_t)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v30.receiver = self;
  v30.super_class = TPSDataCacheController;
  v13 = [(TPSDataCacheController *)&v30 init];
  v14 = v13;
  if (v13)
  {
    [(TPSDataCacheController *)v13 commonInit];
    objc_storeStrong(&v14->_identifier, a3);
    v14->_dataType = a6;
    v14->_maxDataCacheSize = a5;
    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = +[TPSCommonDefines appGroupIdentifier];
    if (v16 && ([v15 containerURLForSecurityApplicationGroupIdentifier:v16], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = v17;
      v19 = [v17 URLByAppendingPathComponent:@"Library/Caches"];

      v20 = [v19 path];
      v21 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v16];
    }

    else
    {
      v19 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
      v20 = [v19 objectAtIndex:0];
      v21 = [MEMORY[0x1E695E000] standardUserDefaults];
    }

    userDefaults = v14->_userDefaults;
    v14->_userDefaults = v21;

    if (v20)
    {
      v23 = [v20 stringByAppendingPathComponent:v12];
      cacheDirectory = v14->_cacheDirectory;
      v14->_cacheDirectory = v23;
    }

    if (!v14->_cacheDirectory)
    {

      v27 = 0;
      goto LABEL_14;
    }

    v25 = +[TPSLogger default];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = v14->_cacheDirectory;
      *buf = 138412546;
      v32 = v11;
      v33 = 2112;
      v34 = v26;
      _os_log_impl(&dword_1C00A7000, v25, OS_LOG_TYPE_INFO, "Cache directory for %@: %@.", buf, 0x16u);
    }

    [(TPSDataCacheController *)v14 reloadDataCache];
    [(TPSDataCacheController *)v14 pruneCache];
  }

  v27 = v14;
LABEL_14:

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (void)syncCacheImmediately
{
  [(TPSDataCacheController *)self updateCacheDelay];

  [(TPSDataCacheController *)self cancelAllOriginSessionItems];
}

- (id)dataCacheForIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v5 = [(TPSDataCacheController *)self dataCacheSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__TPSDataCacheController_dataCacheForIdentifier___block_invoke;
  block[3] = &unk_1E8101EE0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__TPSDataCacheController_dataCacheForIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) dataCacheMap];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)createCacheDirectory
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v3 fileExistsAtPath:self->_cacheDirectory] & 1) == 0)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__2;
    v17 = __Block_byref_object_dispose__2;
    v18 = 0;
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_cacheDirectory];
    v5 = objc_alloc_init(MEMORY[0x1E696ABF8]);
    v6 = (v14 + 5);
    obj = v14[5];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__TPSDataCacheController_createCacheDirectory__block_invoke;
    v8[3] = &unk_1E81023E0;
    v9 = v3;
    v11 = &v13;
    v7 = v4;
    v10 = v7;
    [v5 coordinateWritingItemAtURL:v7 options:8 error:&obj byAccessor:v8];
    objc_storeStrong(v6, obj);

    _Block_object_dispose(&v13, 8);
  }
}

void __46__TPSDataCacheController_createCacheDirectory__block_invoke(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v4 = [a2 path];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);

  if (*(*(a1[6] + 8) + 40))
  {
    v6 = +[TPSLogger data];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[5];
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1C00A7000, v6, OS_LOG_TYPE_DEFAULT, "Unable to create path %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isDataCacheValid:(id)a3
{
  v4 = a3;
  v5 = [(TPSDataCacheController *)self cacheFileURLForDataCache:v4];
  v6 = [v5 path];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v5 path];
    if ([v7 fileExistsAtPath:v8])
    {
      v9 = [v4 expired] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)cacheValidForIdentifier:(id)a3
{
  v4 = [(TPSDataCacheController *)self dataCacheForIdentifier:a3];
  if (v4)
  {
    v5 = [(TPSDataCacheController *)self isDataCacheValid:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cacheFileURLForDataCache:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(TPSDataCacheController *)self cacheFileURLForIdentifier:v4];

  return v5;
}

- (id)cacheFileURLForIdentifier:(id)a3
{
  if (a3)
  {
    v3 = [(NSString *)self->_cacheDirectory stringByAppendingPathComponent:?];
    if (v3)
    {
      v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:0];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setLanguageCode:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_languageCode isEqualToString:v5])
  {
    objc_storeStrong(&self->_languageCode, a3);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v6 = [(TPSDataCacheController *)self dataCacheSerialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__TPSDataCacheController_setLanguageCode___block_invoke;
    block[3] = &unk_1E8102408;
    block[4] = self;
    v8 = v5;
    v9 = &v10;
    dispatch_sync(v6, block);

    if (*(v11 + 24) == 1)
    {
      [(TPSDataCacheController *)self removeAllDataCache];
    }

    _Block_object_dispose(&v10, 8);
  }
}

void __42__TPSDataCacheController_setLanguageCode___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) dataCacheArray];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) languageCode];
        v8 = [v7 isEqualToString:*(a1 + 40)];

        if ((v8 & 1) == 0)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
}

- (void)reloadDataCache
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1C00A7000, log, OS_LOG_TYPE_ERROR, "Unable to unarchive %@, error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __41__TPSDataCacheController_reloadDataCache__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataCacheArray];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) dataCacheMap];
  [v3 removeAllObjects];
}

void __41__TPSDataCacheController_reloadDataCache__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  v3 = [WeakRetained cacheDirectory];
  v4 = [v2 contentsOfDirectoryAtPath:v3 error:0];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __41__TPSDataCacheController_reloadDataCache__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) dataCacheMap];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

  v4 = [*(a1 + 32) dataCacheArray];
  [v4 addObject:*(a1 + 48)];
}

void __41__TPSDataCacheController_reloadDataCache__block_invoke_29(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 path];
  [v2 removeItemAtPath:v3 error:0];
}

- (void)pruneCache
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&dword_1C00A7000, log, OS_LOG_TYPE_DEBUG, "Prune data cache %@.", buf, 0xCu);
}

void __36__TPSDataCacheController_pruneCache__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) dataCacheArray];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)updateCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__TPSDataCacheController_updateCache__block_invoke;
  block[3] = &unk_1E8101340;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __37__TPSDataCacheController_updateCache__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDataCacheDirty:1];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_updateCacheDelay object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel_updateCacheDelay withObject:0 afterDelay:2.0];
}

- (void)updateCacheDelay
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__2;
  v8[4] = __Block_byref_object_dispose__2;
  v9 = 0;
  v3 = [(TPSDataCacheController *)self dataCacheSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__TPSDataCacheController_updateCacheDelay__block_invoke;
  block[3] = &unk_1E8101368;
  block[4] = self;
  block[5] = v8;
  dispatch_sync(v3, block);

  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__TPSDataCacheController_updateCacheDelay__block_invoke_2;
  v4[3] = &unk_1E8102480;
  objc_copyWeak(&v5, &location);
  v4[4] = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
  _Block_object_dispose(v8, 8);
}

void __42__TPSDataCacheController_updateCacheDelay__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) dataCacheArray];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __42__TPSDataCacheController_updateCacheDelay__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained dataCacheDirty])
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:WeakRetained selector:sel_updateCacheDelay object:0];
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v9 = 0;
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v9];
    v5 = v9;
    if (v5)
    {
      v6 = +[TPSLogger data];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __42__TPSDataCacheController_updateCacheDelay__block_invoke_2_cold_1(WeakRetained, v5, v6);
      }
    }

    else
    {
      v7 = [WeakRetained userDefaults];
      v8 = [WeakRetained identifier];
      [v7 setObject:v4 forKey:v8];

      v6 = [WeakRetained userDefaults];
      [v6 synchronize];
    }

    [WeakRetained setDataCacheDirty:0];
  }
}

- (void)addDataCache:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(TPSDataCacheController *)self dataCacheForIdentifier:v5];
  if (!v6)
  {
    v7 = [(TPSDataCacheController *)self dataCacheSerialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__TPSDataCacheController_addDataCache___block_invoke;
    block[3] = &unk_1E8102458;
    block[4] = self;
    v10 = v5;
    v8 = v4;
    v11 = v8;
    dispatch_sync(v7, block);

    self->_cacheSize += [v8 fileSize];
  }

  [(TPSDataCacheController *)self updateCache];
}

void __39__TPSDataCacheController_addDataCache___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) dataCacheMap];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

  v4 = [*(a1 + 32) dataCacheArray];
  [v4 addObject:*(a1 + 48)];
}

- (void)cancelAllOriginSessionItems
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_originFetchItems count])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__2;
    v20 = __Block_byref_object_dispose__2;
    v21 = 0;
    v3 = [(TPSDataCacheController *)self dataCacheSerialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__TPSDataCacheController_cancelAllOriginSessionItems__block_invoke;
    block[3] = &unk_1E8101368;
    block[4] = self;
    block[5] = &v16;
    dispatch_sync(v3, block);

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v17[5];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v22 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          v9 = +[TPSURLSessionManager defaultManager];
          [v9 cancelSessionItem:v8];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v11 objects:v22 count:16];
      }

      while (v5);
    }

    _Block_object_dispose(&v16, 8);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __53__TPSDataCacheController_cancelAllOriginSessionItems__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 96);

  return [v5 removeAllObjects];
}

- (void)removeAllDataCache
{
  [TPSDataCacheController removeDataCacheAtPath:self->_cacheDirectory];
  v3 = [(TPSDataCacheController *)self dataCacheSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__TPSDataCacheController_removeAllDataCache__block_invoke;
  block[3] = &unk_1E8101340;
  block[4] = self;
  dispatch_async(v3, block);

  self->_cacheSize = 0;
  [(TPSDataCacheController *)self updateCacheDelay];
  [(NSUserDefaults *)self->_userDefaults removeObjectForKey:self->_identifier];
  [(NSUserDefaults *)self->_userDefaults synchronize];
}

void __44__TPSDataCacheController_removeAllDataCache__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataCacheMap];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) dataCacheArray];
  [v3 removeAllObjects];
}

- (void)removeCacheForIdentifier:(id)a3
{
  v4 = [(TPSDataCacheController *)self dataCacheForIdentifier:a3];
  [(TPSDataCacheController *)self removeDataCache:v4];
}

- (void)removeDataCache:(id)a3 updateCache:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 identifier];
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__2;
    v34 = __Block_byref_object_dispose__2;
    v35 = 0;
    v9 = [(TPSDataCacheController *)self dataCacheSerialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__TPSDataCacheController_removeDataCache_updateCache___block_invoke;
    block[3] = &unk_1E8101EE0;
    v29 = &v30;
    block[4] = self;
    v10 = v8;
    v28 = v10;
    dispatch_sync(v9, block);

    if (v31[5])
    {
      v11 = [(TPSDataCacheController *)self cacheFileURLForDataCache:v7];
      v12 = [MEMORY[0x1E696AC08] defaultManager];
      v13 = [v11 path];
      if (v13)
      {
        v14 = [v11 path];
        v15 = [v12 fileExistsAtPath:v14];

        if (v15)
        {
          v16 = objc_alloc_init(MEMORY[0x1E696ABF8]);
          v26 = 0;
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __54__TPSDataCacheController_removeDataCache_updateCache___block_invoke_2;
          v24[3] = &unk_1E81023B8;
          v25 = v12;
          [v16 coordinateWritingItemAtURL:v11 options:1 error:&v26 byAccessor:v24];
          v17 = v26;
        }
      }
    }

    self->_cacheSize -= [v7 fileSize];
    v18 = [(TPSDataCacheController *)self dataCacheSerialQueue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __54__TPSDataCacheController_removeDataCache_updateCache___block_invoke_3;
    v20[3] = &unk_1E81024A8;
    v20[4] = self;
    v21 = v7;
    v23 = &v30;
    v19 = v10;
    v22 = v19;
    dispatch_async(v18, v20);

    if (v4)
    {
      [(TPSDataCacheController *)self updateCache];
    }

    _Block_object_dispose(&v30, 8);
  }
}

void __54__TPSDataCacheController_removeDataCache_updateCache___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) dataCacheMap];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __54__TPSDataCacheController_removeDataCache_updateCache___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 path];
  [v2 removeItemAtPath:v3 error:0];
}

void __54__TPSDataCacheController_removeDataCache_updateCache___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) dataCacheArray];
  [v2 removeObject:*(a1 + 40)];

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v3 = [*(a1 + 32) dataCacheMap];
    [v3 removeObjectForKey:*(a1 + 48)];
  }
}

- (id)newDataCache
{
  v2 = objc_alloc_init(TPSDataCache);
  [(TPSDataCache *)v2 setCacheType:0];
  [(TPSDataCache *)v2 setMaxAge:21600];
  return v2;
}

- (id)saveFileURL:(id)a3 identifier:(id)a4 fileSize:(unint64_t)a5 lastModified:(id)a6 dataCache:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = 0;
  if (v12 && v13)
  {
    v39 = a5;
    v40 = v15;
    v17 = v15;
    v18 = [v17 lastModified];
    v19 = [v18 isEqualToString:v14];

    v20 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = [(TPSDataCacheController *)self cacheFileURLForIdentifier:v13];
    v21 = [v16 path];
    v41 = v20;
    if (v21)
    {
      v22 = v21;
      v23 = [v16 path];
      v24 = [v20 fileExistsAtPath:v23];

      if (v19 & v24)
      {
        v25 = v16;
        v26 = [MEMORY[0x1E695DF00] date];
        [v17 setUpdatedDate:v26];

        [(TPSDataCacheController *)self updateCache];
LABEL_19:

        v15 = v40;
        goto LABEL_20;
      }
    }

    else
    {
      LOBYTE(v24) = 0;
    }

    v27 = v16;
    [(TPSDataCacheController *)self createCacheDirectory];
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__2;
    v54 = __Block_byref_object_dispose__2;
    v55 = 0;
    v28 = objc_alloc_init(MEMORY[0x1E696ABF8]);
    if (!v27)
    {
LABEL_18:

      _Block_object_dispose(&v50, 8);
      _Block_object_dispose(&v56, 8);
      goto LABEL_19;
    }

    v29 = (v51 + 5);
    obj = v51[5];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __81__TPSDataCacheController_saveFileURL_identifier_fileSize_lastModified_dataCache___block_invoke;
    v42[3] = &unk_1E81024D0;
    v48 = v24;
    v43 = v41;
    v46 = &v50;
    v30 = v27;
    v31 = v28;
    v32 = v30;
    v44 = v30;
    v45 = v12;
    v47 = &v56;
    v33 = v32;
    v34 = v32;
    v28 = v31;
    [v31 coordinateWritingItemAtURL:v33 options:1 writingItemAtURL:v34 options:2 error:&obj byAccessor:v42];
    objc_storeStrong(v29, obj);
    v35 = *(v57 + 24);
    if (v17)
    {
      if (*(v57 + 24))
      {
        -[TPSDataCacheController setCacheSize:](self, "setCacheSize:", -[TPSDataCacheController cacheSize](self, "cacheSize") - [v17 fileSize]);
        [(TPSDataCacheController *)self setCacheSize:[(TPSDataCacheController *)self cacheSize]+ v39];
LABEL_15:
        [v17 setLastModified:v14];
        v37 = [MEMORY[0x1E695DF00] date];
        [v17 setUpdatedDate:v37];

        [v17 setFileSize:v39];
        if (v17)
        {
          [(TPSDataCacheController *)self addDataCache:v17];
        }

        goto LABEL_18;
      }

      [(TPSDataCacheController *)self removeDataCache:v17];
    }

    else if (*(v57 + 24))
    {
      v17 = [(TPSDataCacheController *)self newDataCache];
      v36 = [(TPSDataCacheController *)self languageCode];
      [v17 setLanguageCode:v36];

      [v17 setIdentifier:v13];
      goto LABEL_15;
    }

    v17 = 0;
    goto LABEL_15;
  }

LABEL_20:

  return v16;
}

void __81__TPSDataCacheController_saveFileURL_identifier_fileSize_lastModified_dataCache___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 72) == 1)
  {
    if (v5)
    {
      v7 = *(a1 + 32);
      v8 = *(*(a1 + 56) + 8);
      obj = *(v8 + 40);
      [v7 removeItemAtURL:v5 error:&obj];
      objc_storeStrong((v8 + 40), obj);
    }

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v9 = +[TPSLogger default];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138412546;
        v28 = v10;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&dword_1C00A7000, v9, OS_LOG_TYPE_DEFAULT, "Unable to delete %@. Error: %@", buf, 0x16u);
      }
    }
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  v12 = [v6 path];
  v13 = [v12 stringByDeletingLastPathComponent];

  v14 = *(a1 + 32);
  v15 = *(*(a1 + 56) + 8);
  v25 = *(v15 + 40);
  [v14 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v25];
  objc_storeStrong((v15 + 40), v25);

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = *(a1 + 32);
    v18 = *(*(a1 + 56) + 8);
    v24 = *(v18 + 40);
    [v17 moveItemAtURL:v16 toURL:v6 error:&v24];
    objc_storeStrong((v18 + 40), v24);
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      goto LABEL_17;
    }

    v19 = +[TPSLogger default];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v28 = v20;
      v21 = "Unable to move cache data %@";
LABEL_15:
      _os_log_impl(&dword_1C00A7000, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
    }
  }

  else
  {
LABEL_13:
    v19 = +[TPSLogger default];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v28 = v22;
      v21 = "Unable to save cache data %@ due to missing URL";
      goto LABEL_15;
    }
  }

LABEL_17:
  v23 = *MEMORY[0x1E69E9840];
}

- (id)formattedDataForRequest:(id)a3 identifier:(id)a4 attributionIdentifier:(id)a5 requestType:(id)a6 priority:(float)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v50 = a5;
  v49 = a6;
  v16 = a8;
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8102520;
  v17 = v16;
  v79 = v17;
  v18 = v15;
  v78 = v18;
  v19 = _Block_copy(aBlock);
  v20 = [v14 URL];
  if ([v20 isFileURL])
  {
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke_3;
    v75[3] = &unk_1E8102548;
    v76 = v19;
    [(TPSDataCacheController *)self formattedDataWithFileURL:v20 completionHandler:v75];
    v21 = 0;
    v22 = v76;
    goto LABEL_35;
  }

  v48 = [v20 path];
  if (v48)
  {
    if (!v18)
    {
      v18 = [v48 lastPathComponent];
    }

    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 1;
    if ([v14 cachePolicy] == 1 || objc_msgSend(v14, "cachePolicy") == 5)
    {
      v23 = 0;
    }

    else
    {
      v45 = [(TPSDataCacheController *)self dataCacheForIdentifier:v18];
      v46 = [(TPSDataCacheController *)self cacheFileURLForDataCache:v45];
      v26 = [v46 path];
      if (!v26)
      {
        goto LABEL_15;
      }

      v27 = [MEMORY[0x1E696AC08] defaultManager];
      v28 = [v46 path];
      v29 = [v27 fileExistsAtPath:v28];

      if (v29)
      {
        v30 = [v45 identifier];
        v31 = [(TPSDataCacheController *)self cacheFileURLForIdentifier:v30];

        if (v31 && [(TPSDataCacheController *)self isURLValid:v31])
        {
          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 3221225472;
          v65[2] = __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke_4;
          v65[3] = &unk_1E8102570;
          v69 = v19;
          v66 = v45;
          v70 = &v71;
          v67 = v48;
          v68 = self;
          [(TPSDataCacheController *)self formattedDataWithFileURL:v31 completionHandler:v65];

          v23 = 1;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
LABEL_15:
        if (v45)
        {
          [(TPSDataCacheController *)self removeDataCache:?];
        }

        v23 = 0;
        v31 = v46;
      }
    }

    if ((v72[3] & 1) == 0 && ![(TPSDataCacheController *)self backgroundOriginUpdate])
    {
      goto LABEL_24;
    }

    if (![v20 isFileURL])
    {
      v47 = +[TPSURLSessionManager defaultManager];
      if (v23)
      {
        v55 = 0;
        v56 = &v55;
        v57 = 0x3032000000;
        v58 = __Block_byref_object_copy__2;
        v59 = __Block_byref_object_dispose__2;
        v60 = 0;
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke_3_44;
        v53[3] = &unk_1E81025E8;
        objc_copyWeak(&v54, location);
        v53[4] = &v55;
        v32 = [v47 newURLSessionItemWithRequest:v14 identifier:v18 attributionIdentifier:v50 requestType:v49 completionHandler:v53];
        v33 = v56[5];
        v56[5] = v32;

        dataType = self->_dataType;
        v35 = [v56[5] sessionTask];
        [v35 setDataType:dataType];

        v36 = [v56[5] sessionTask];
        LODWORD(v37) = *MEMORY[0x1E696A9D0];
        [v36 setPriority:v37];

        if (v56[5])
        {
          v38 = [(TPSDataCacheController *)self dataCacheSerialQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke_5;
          block[3] = &unk_1E8102480;
          objc_copyWeak(&v52, location);
          block[4] = &v55;
          dispatch_async(v38, block);

          objc_destroyWeak(&v52);
          v39 = v56[5];
        }

        else
        {
          v39 = 0;
        }

        [v47 resumeSessionItem:v39];
        objc_destroyWeak(&v54);
        _Block_object_dispose(&v55, 8);

        v25 = 0;
      }

      else
      {
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke_2_43;
        v61[3] = &unk_1E8102598;
        v62 = v19;
        v25 = [v47 newURLSessionItemWithRequest:v14 identifier:v18 attributionIdentifier:v50 requestType:v49 completionHandler:v61];
        v40 = self->_dataType;
        v41 = [v25 sessionTask];
        [v41 setDataType:v40];

        v42 = [v25 sessionTask];
        *&v43 = a7;
        [v42 setPriority:v43];

        [v47 resumeSessionItem:v25];
      }

      goto LABEL_33;
    }

    if ((v23 & 1) == 0)
    {
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke_42;
      v63[3] = &unk_1E8102548;
      v64 = v19;
      [(TPSDataCacheController *)self formattedDataWithFileURL:v20 completionHandler:v63];
      v25 = 0;
    }

    else
    {
LABEL_24:
      v25 = 0;
    }

LABEL_33:
    _Block_object_dispose(&v71, 8);
    goto LABEL_34;
  }

  v24 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"Empty data path" code:-1 userInfo:0];
  (*(v19 + 2))(v19, 0, 0, 0, 0, v24);

  v25 = 0;
LABEL_34:
  v22 = v25;

  v21 = v22;
LABEL_35:

  objc_destroyWeak(location);

  return v21;
}

void __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, char a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke_2;
  block[3] = &unk_1E81024F8;
  v25 = *(a1 + 40);
  v20 = *(a1 + 32);
  v21 = v11;
  v26 = a4;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"Invalid data" code:-1 userInfo:0];
    (*(v2 + 16))(v2, 0, 0, 0, 0, v5);
  }
}

void __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 56);
    v8 = [*(a1 + 32) lastModified];
    (*(v7 + 16))(v7, v5, v6, 1, v8, 0);

    v9 = +[TPSLogger data];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1C00A7000, v9, OS_LOG_TYPE_DEFAULT, "Data cache exists for %@", &v16, 0xCu);
    }

    if ([*(a1 + 32) expired])
    {
      v11 = +[TPSLogger default];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke_4_cold_1(a1, (a1 + 32), v11);
      }
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      v14 = [MEMORY[0x1E695DF00] date];
      [*(a1 + 32) setUpdatedDate:v14];

      [*(a1 + 48) updateCache];
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    [*(a1 + 48) removeDataCache:*(a1 + 32)];
    v12 = *(a1 + 56);
    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"Invalid data cache" code:-1 userInfo:0];
    (*(v12 + 16))(v12, 0, 0, 0, 0, v13);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke_3_44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained dataCacheSerialQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke_4_45;
  v5[3] = &unk_1E81025C0;
  v4 = *(a1 + 32);
  v5[4] = WeakRetained;
  v5[5] = v4;
  dispatch_async(v3, v5);
}

void __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke_4_45(uint64_t a1)
{
  v2 = [*(a1 + 32) originFetchItems];
  [v2 removeObject:*(*(*(a1 + 40) + 8) + 40)];
}

void __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained originFetchItems];
  [v2 addObject:*(*(*(a1 + 32) + 8) + 40)];
}

- (id)formattedDataForPath:(id)a3 identifier:(id)a4 attributionIdentifier:(id)a5 priority:(float)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v12 && (v16 = MEMORY[0x1E696AF68], [MEMORY[0x1E695DFF8] URLWithString:v12], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "requestWithURL:", v17), v18 = objc_claimAutoreleasedReturnValue(), v17, v18))
  {
    *&v19 = a6;
    v20 = [(TPSDataCacheController *)self formattedDataForRequest:v18 identifier:v13 attributionIdentifier:v14 requestType:@"asset" priority:v15 completionHandler:v19];
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __107__TPSDataCacheController_formattedDataForPath_identifier_attributionIdentifier_priority_completionHandler___block_invoke;
    v22[3] = &unk_1E8102610;
    v24 = v15;
    v23 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], v22);

    v20 = 0;
    v18 = v24;
  }

  return v20;
}

void __107__TPSDataCacheController_formattedDataForPath_identifier_attributionIdentifier_priority_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"Invalid request" code:-1 userInfo:0];
  (*(v1 + 16))(v1, v2, 0, 0, 0, 0, v3);
}

- (void)excludeURLFromBackup:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E695DB80];
  v9 = 0;
  v5 = [v3 setResourceValue:MEMORY[0x1E695E118] forKey:v4 error:&v9];
  v6 = v9;
  if ((v5 & 1) == 0)
  {
    v7 = +[TPSLogger data];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1C00A7000, v7, OS_LOG_TYPE_DEFAULT, "Unable to exclude %@ from backup due to error %@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __42__TPSDataCacheController_updateCacheDelay__block_invoke_2_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 dataCacheArray];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1C00A7000, a3, OS_LOG_TYPE_ERROR, "Unable to archive %@, error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __122__TPSDataCacheController_formattedDataForRequest_identifier_attributionIdentifier_requestType_priority_completionHandler___block_invoke_4_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = [*a2 updatedDate];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_1C00A7000, a3, OS_LOG_TYPE_DEBUG, "Data cache expired for %@.  Last update on %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end