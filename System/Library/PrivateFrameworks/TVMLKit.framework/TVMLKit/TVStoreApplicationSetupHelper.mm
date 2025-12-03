@interface TVStoreApplicationSetupHelper
+ (id)_parsedQueryParametersForURL:(id)l;
+ (id)bootURLWithBagBootURL:(id)l defaultBootURL:(id)rL;
+ (id)fallbackBootURL;
+ (id)launchContextWithLaunchOptions:(id)options bootURL:(id)l appLocalBootURL:(id)rL;
+ (id)launchContextWithLaunchOptions:(id)options bootURL:(id)l bagBootURLKey:(id)key useCache:(BOOL)cache;
+ (id)preferredBootURL;
- (TVStoreApplicationSetupHelper)initWithDefaultBootURL:(id)l bagCache:(id)cache;
- (void)obtainBootURLWithCompletion:(id)completion;
@end

@implementation TVStoreApplicationSetupHelper

- (TVStoreApplicationSetupHelper)initWithDefaultBootURL:(id)l bagCache:(id)cache
{
  lCopy = l;
  cacheCopy = cache;
  v14.receiver = self;
  v14.super_class = TVStoreApplicationSetupHelper;
  v8 = [(TVStoreApplicationSetupHelper *)&v14 init];
  if (v8)
  {
    if (cacheCopy)
    {
      mEMORY[0x277D1B110] = cacheCopy;
    }

    else
    {
      mEMORY[0x277D1B110] = [MEMORY[0x277D1B110] sharedCache];
    }

    bagCache = v8->_bagCache;
    v8->_bagCache = mEMORY[0x277D1B110];

    v11 = [lCopy copy];
    defaultBootURL = v8->_defaultBootURL;
    v8->_defaultBootURL = v11;
  }

  return v8;
}

- (void)obtainBootURLWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  bagCache = [(TVStoreApplicationSetupHelper *)self bagCache];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__TVStoreApplicationSetupHelper_obtainBootURLWithCompletion___block_invoke;
  v7[3] = &unk_279D6E610;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [bagCache loadValueForKey:@"itml-app-url" completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __61__TVStoreApplicationSetupHelper_obtainBootURLWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(a1 + 32))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    }

    else
    {
      v9 = TVMLKitLogObject;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __61__TVStoreApplicationSetupHelper_obtainBootURLWithCompletion___block_invoke_cold_1(v5, v6, v9);
      }

      v8 = 0;
    }

    v10 = objc_opt_class();
    v11 = [WeakRetained defaultBootURL];
    v12 = [v10 bootURLWithBagBootURL:v8 defaultBootURL:v11];

    (*(*(a1 + 32) + 16))();
  }
}

+ (id)launchContextWithLaunchOptions:(id)options bootURL:(id)l bagBootURLKey:(id)key useCache:(BOOL)cache
{
  cacheCopy = cache;
  lCopy = l;
  keyCopy = key;
  optionsCopy = options;
  v13 = objc_alloc_init(TVApplicationControllerContext);
  [(TVApplicationControllerContext *)v13 setBagBootURLKey:keyCopy];

  [(TVApplicationControllerContext *)v13 setJavaScriptApplicationURL:lCopy];
  v14 = [optionsCopy mutableCopy];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [v14 setObject:bundleIdentifier forKey:@"reqApp"];

  v17 = [optionsCopy objectForKey:*MEMORY[0x277D76690]];

  if (v17)
  {
    [v14 setObject:v17 forKey:@"refApp"];
  }

  v18 = [self _parsedQueryParametersForURL:lCopy];
  if ([v18 count])
  {
    [v14 setObject:v18 forKey:@"query"];
  }

  v19 = [v14 copy];
  [(TVApplicationControllerContext *)v13 setLaunchOptions:v19];

  if (cacheCopy)
  {
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];

    v22 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    firstObject = [v22 firstObject];
    v24 = [firstObject stringByAppendingPathComponent:bundleIdentifier2];

    v25 = [MEMORY[0x277CBEBC0] fileURLWithPath:v24];
    [(TVApplicationControllerContext *)v13 setAppJSCachePath:v25];
  }

  return v13;
}

+ (id)launchContextWithLaunchOptions:(id)options bootURL:(id)l appLocalBootURL:(id)rL
{
  optionsCopy = options;
  lCopy = l;
  v10 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_ERROR))
  {
    [TVStoreApplicationSetupHelper launchContextWithLaunchOptions:v10 bootURL:? appLocalBootURL:?];
  }

  v11 = [self launchContextWithLaunchOptions:optionsCopy bootURL:lCopy useCache:rL != 0];

  return v11;
}

+ (id)preferredBootURL
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"boot-url"];

  v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];

  return v4;
}

+ (id)fallbackBootURL
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v4 = [infoDictionary objectForKey:@"TVBootURL"];
  if ([v4 length])
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)bootURLWithBagBootURL:(id)l defaultBootURL:(id)rL
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  preferredBootURL = [objc_opt_class() preferredBootURL];
  if (preferredBootURL)
  {
    fallbackBootURL = preferredBootURL;
    v9 = TVMLKitLogObject;
    if (!os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v13 = 138412290;
    v14 = fallbackBootURL;
    v10 = "Started application with defaults boot-url: %@";
LABEL_7:
    _os_log_impl(&dword_26CD9A000, v9, OS_LOG_TYPE_DEFAULT, v10, &v13, 0xCu);
    goto LABEL_8;
  }

  v11 = lCopy;
  if (v11)
  {
    fallbackBootURL = v11;
    v9 = TVMLKitLogObject;
    if (!os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v13 = 138412290;
    v14 = fallbackBootURL;
    v10 = "Started application with URLBag boot-url: %@";
    goto LABEL_7;
  }

  fallbackBootURL = [objc_opt_class() fallbackBootURL];
  if (!fallbackBootURL)
  {
    fallbackBootURL = rLCopy;
  }

LABEL_8:

  return fallbackBootURL;
}

+ (id)_parsedQueryParametersForURL:(id)l
{
  v23 = *MEMORY[0x277D85DE8];
  query = [l query];
  v4 = [query componentsSeparatedByString:@"&"];

  v5 = [v4 count];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v5];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          stringByRemovingPercentEncoding = [*(*(&v18 + 1) + 8 * i) stringByRemovingPercentEncoding];
          v13 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"="];

          if ([v13 count] == 2)
          {
            v14 = [v13 objectAtIndex:1];
            v15 = [v13 objectAtIndex:0];
            [v6 setObject:v14 forKey:v15];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v16 = [v6 copy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __61__TVStoreApplicationSetupHelper_obtainBootURLWithCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
  }

  else
  {
    v6 = 0;
  }

  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_26CD9A000, log, OS_LOG_TYPE_ERROR, "Unexpected type for bagBootURL -> %@: %@", &v8, 0x16u);
  if (a1)
  {
  }
}

@end