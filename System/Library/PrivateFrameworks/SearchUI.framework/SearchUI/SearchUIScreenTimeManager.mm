@interface SearchUIScreenTimeManager
+ (id)sharedInstance;
- (SearchUIScreenTimeManager)init;
- (id)getCachedObjectIfAvailableForKey:(id)key;
- (id)itemsToBatchPreFetchForRowModel:(id)model;
- (void)computeObjectsForKeys:(id)keys completionHandler:(id)handler;
@end

@implementation SearchUIScreenTimeManager

void __33__SearchUIScreenTimeManager_init__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = objc_alloc(MEMORY[0x1E6999F48]);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __33__SearchUIScreenTimeManager_init__block_invoke_2;
  v7 = &unk_1E85B4310;
  objc_copyWeak(&v8, &location);
  v3 = [v2 initWithPolicyChangeHandler:&v4];
  [*(a1 + 32) setMonitor:{v3, v4, v5, v6, v7}];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (SearchUIScreenTimeManager)init
{
  v10.receiver = self;
  v10.super_class = SearchUIScreenTimeManager;
  v2 = [(TLKAsyncCache *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("screenTimeFetchingQueue", v3);
    [(SearchUIScreenTimeManager *)v2 setSerialQueue:v4];

    v5 = objc_opt_new();
    [(SearchUIScreenTimeManager *)v2 setPossiblyCorrectCache:v5];

    serialQueue = [(SearchUIScreenTimeManager *)v2 serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__SearchUIScreenTimeManager_init__block_invoke;
    block[3] = &unk_1E85B24C8;
    v9 = v2;
    dispatch_async(serialQueue, block);
  }

  return v2;
}

uint64_t __43__SearchUIScreenTimeManager_sharedInstance__block_invoke()
{
  sharedInstance_screenTimeManager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SearchUIScreenTimeManager sharedInstance];
  }

  v3 = sharedInstance_screenTimeManager;

  return v3;
}

void __33__SearchUIScreenTimeManager_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained clear];
  v1 = [WeakRetained possiblyCorrectCache];
  [v1 removeAllObjects];

  [SearchUIUtilities dispatchMainIfNecessary:&__block_literal_global_13];
}

void __33__SearchUIScreenTimeManager_init__block_invoke_3()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"SearchUIScreenTimeChangeNotification" object:0];
}

- (id)getCachedObjectIfAvailableForKey:(id)key
{
  keyCopy = key;
  v25.receiver = self;
  v25.super_class = SearchUIScreenTimeManager;
  v5 = [(TLKAsyncCache *)&v25 getCachedObjectIfAvailableForKey:keyCopy];
  v6 = v5;
  if (!keyCopy || v5)
  {
    v12 = v5;
  }

  else
  {
    v7 = dispatch_time(0, 10000000);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __62__SearchUIScreenTimeManager_getCachedObjectIfAvailableForKey___block_invoke;
    v22 = &unk_1E85B2540;
    selfCopy = self;
    v8 = keyCopy;
    v24 = v8;
    dispatch_after(v7, MEMORY[0x1E69E96A0], &v19);
    v9 = [(SearchUIScreenTimeManager *)self possiblyCorrectCache:v19];
    v10 = [v9 objectForKey:v8];

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v8 allowPlaceholder:1 error:0];
      compatibilityObject = [v13 compatibilityObject];
      v15 = [compatibilityObject deviceManagementPolicy] != 0;

      possiblyCorrectCache = [(SearchUIScreenTimeManager *)self possiblyCorrectCache];
      v17 = [MEMORY[0x1E696AD98] numberWithBool:v15];
      [possiblyCorrectCache setObject:v17 forKey:v8];

      v11 = [MEMORY[0x1E696AD98] numberWithBool:v15];
    }

    v12 = v11;
  }

  return v12;
}

- (void)computeObjectsForKeys:(id)keys completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  handlerCopy = handler;
  v8 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = keysCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if ([SearchUIUtilities appIsValidForBundleIdentifier:v14])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  monitor = [(SearchUIScreenTimeManager *)self monitor];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__SearchUIScreenTimeManager_computeObjectsForKeys_completionHandler___block_invoke;
  v18[3] = &unk_1E85B46F0;
  v19 = v9;
  v20 = handlerCopy;
  v16 = handlerCopy;
  v17 = v9;
  [monitor requestPoliciesForBundleIdentifiers:v8 completionHandler:v18];
}

void __69__SearchUIScreenTimeManager_computeObjectsForKeys_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v3 objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * i), v13}];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = &unk_1F55DD490;
        }

        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)itemsToBatchPreFetchForRowModel:(id)model
{
  v19 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  results = [modelCopy results];
  v6 = [results countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(results);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (![v10 isLocalApplicationResult] || (objc_msgSend(v10, "renderHorizontallyWithOtherResultsInCategory") & 1) == 0)
        {
          applicationBundleIdentifier = [v10 applicationBundleIdentifier];
          sectionBundleIdentifier = [v10 sectionBundleIdentifier];
          if (applicationBundleIdentifier)
          {
            [v4 addObject:applicationBundleIdentifier];
          }

          if (sectionBundleIdentifier)
          {
            [v4 addObject:sectionBundleIdentifier];
          }
        }
      }

      v7 = [results countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end