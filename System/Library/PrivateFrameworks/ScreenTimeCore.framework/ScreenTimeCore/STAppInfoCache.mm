@interface STAppInfoCache
+ (STAppInfoCache)sharedCache;
- (STAppInfoCache)init;
- (id)_appInfoForBundleIdentifier:(id)identifier;
- (id)_fetchAppInfoFromLaunchServicesWithBundleIdentifier:(id)identifier;
- (id)_fetchSyncedInstalledAppInfoForBundleIdentifier:(id)identifier;
- (id)_localAppNameForBundleIdentifier:(id)identifier;
- (id)_placeholderAppInfoWithBundleIdentifier:(id)identifier;
- (id)_preloadedAppInfoWithBundleIdentifier:(id)identifier;
- (id)appInfoForBundleIdentifier:(id)identifier adamId:(id)id distributorId:(id)distributorId;
- (id)appInfoForBundleIdentifier:(id)identifier localOnly:(BOOL)only;
- (void)_fetchAppStoreInfoAndNotifyWithBundleIdentifiers:(id)identifiers;
- (void)_fetchAppStoreInfoAndNotifyWithBundleIdentifiers:(id)identifiers timeoutInterval:(double)interval completionHandler:(id)handler;
- (void)_finishedFetchingAppInfoByBundleIdentifier:(id)identifier;
- (void)_handleAMSClientResponseForBundleIdentifiers:(id)identifiers results:(id)results error:(id)error completionHandler:(id)handler;
- (void)_handleiTunesResponseForBundleIdentifiers:(id)identifiers response:(id)response data:(id)data error:(id)error completionHandler:(id)handler;
- (void)addObserver:(id)observer selector:(SEL)selector bundleIdentifier:(id)identifier;
- (void)dealloc;
- (void)fetchAppInfoForBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchAppInfoForBundleIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)removeObserver:(id)observer bundleIdentifier:(id)identifier;
@end

@implementation STAppInfoCache

+ (STAppInfoCache)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[STAppInfoCache sharedCache];
  }

  v3 = sharedCache_sharedCache;

  return v3;
}

uint64_t __29__STAppInfoCache_sharedCache__block_invoke()
{
  sharedCache_sharedCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (STAppInfoCache)init
{
  v22.receiver = self;
  v22.super_class = STAppInfoCache;
  v2 = [(STAppInfoCache *)&v22 init];
  if (v2)
  {
    v3 = objc_opt_new();
    appInfoByBundleIdentifier = v2->_appInfoByBundleIdentifier;
    v2->_appInfoByBundleIdentifier = v3;

    v5 = objc_opt_new();
    bundleIdentifiersWithPendingRequests = v2->_bundleIdentifiersWithPendingRequests;
    v2->_bundleIdentifiersWithPendingRequests = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("com.apple.screentime.app-info-cache", v8);
    lookupQueue = v2->_lookupQueue;
    v2->_lookupQueue = v9;

    ephemeralSessionConfiguration = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
    mEMORY[0x1E696AF18] = [MEMORY[0x1E696AF18] sharedURLCache];
    [ephemeralSessionConfiguration setURLCache:mEMORY[0x1E696AF18]];

    [ephemeralSessionConfiguration setRequestCachePolicy:2];
    [ephemeralSessionConfiguration setHTTPShouldUsePipelining:1];
    v13 = objc_opt_new();
    [v13 setName:@"com.apple.screentime.app-info-cache"];
    [v13 setUnderlyingQueue:v2->_lookupQueue];
    v14 = [MEMORY[0x1E696AF78] sessionWithConfiguration:ephemeralSessionConfiguration delegate:0 delegateQueue:v13];
    urlSession = v2->_urlSession;
    v2->_urlSession = v14;

    name = [v13 name];
    [(NSURLSession *)v2->_urlSession setSessionDescription:name];

    v17 = objc_opt_new();
    completionHandlerQueue = v2->_completionHandlerQueue;
    v2->_completionHandlerQueue = v17;

    [(NSOperationQueue *)v2->_completionHandlerQueue setName:@"App Info Cache Completion Handler Queue"];
    [(NSOperationQueue *)v2->_completionHandlerQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_completionHandlerQueue setQualityOfService:25];
    v19 = objc_opt_new();
    altDistroAppInfoLoader = v2->_altDistroAppInfoLoader;
    v2->_altDistroAppInfoLoader = v19;
  }

  return v2;
}

- (void)dealloc
{
  [(NSURLSession *)self->_urlSession invalidateAndCancel];
  v3.receiver = self;
  v3.super_class = STAppInfoCache;
  [(STAppInfoCache *)&v3 dealloc];
}

- (id)appInfoForBundleIdentifier:(id)identifier adamId:(id)id distributorId:(id)distributorId
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  idCopy = id;
  distributorIdCopy = distributorId;
  if (([distributorIdCopy isEqualToString:@"com.apple.AppStore"] & 1) != 0 || !objc_msgSend(idCopy, "integerValue"))
  {
    v13 = [(STAppInfoCache *)self appInfoForBundleIdentifier:identifierCopy];
  }

  else
  {
    appInfoByBundleIdentifier = [(STAppInfoCache *)self appInfoByBundleIdentifier];
    v12 = [appInfoByBundleIdentifier objectForKey:identifierCopy];

    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v14 = objc_opt_new();
      [v14 setBundleIdentifier:identifierCopy];
      [v14 setDisplayName:identifierCopy];
      [v14 setSource:5];
      [v14 setAdamID:{objc_msgSend(idCopy, "unsignedLongLongValue")}];
      [v14 setDistributorID:distributorIdCopy];
      [v14 setDistributorIsThirdParty:1];
      appInfoByBundleIdentifier2 = [(STAppInfoCache *)self appInfoByBundleIdentifier];
      [appInfoByBundleIdentifier2 setObject:v14 forKey:identifierCopy];

      v16 = +[STLog appInfo];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = v14;
        _os_log_impl(&dword_1B831F000, v16, OS_LOG_TYPE_INFO, "Loading alt distro app info for %@", buf, 0xCu);
      }

      altDistroAppInfoLoader = [(STAppInfoCache *)self altDistroAppInfoLoader];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __66__STAppInfoCache_appInfoForBundleIdentifier_adamId_distributorId___block_invoke;
      v21[3] = &unk_1E7CE69A0;
      v18 = v14;
      v22 = v18;
      selfCopy = self;
      v24 = identifierCopy;
      [altDistroAppInfoLoader fetchForAppBundleId:v24 adamId:idCopy distributorBundleId:distributorIdCopy completionHandler:v21];

      v13 = v18;
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v13;
}

void __66__STAppInfoCache_appInfoForBundleIdentifier_adamId_distributorId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 bundleIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = +[STLog appInfo];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_1B831F000, v9, OS_LOG_TYPE_INFO, "Received app info from alt distro app info loader:%@", buf, 0xCu);
    }

    v11 = *(a1 + 40);
    v12 = [v7 bundleIdentifier];
    v15 = v12;
    v16 = v7;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v11 _finishedFetchingAppInfoByBundleIdentifier:v13];
  }

  else
  {
    v12 = +[STLog appInfo];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __66__STAppInfoCache_appInfoForBundleIdentifier_adamId_distributorId___block_invoke_cold_1(a1, v5, v12);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)appInfoForBundleIdentifier:(id)identifier localOnly:(BOOL)only
{
  onlyCopy = only;
  identifierCopy = identifier;
  v7 = [(STAppInfoCache *)self _appInfoForBundleIdentifier:identifierCopy];
  source = [v7 source];
  if ([v7 adamID])
  {
    localURL = [v7 localURL];
    if (localURL)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v10 = [v7 distributorIsThirdParty] ^ 1;
    }

    if (onlyCopy)
    {
LABEL_9:
      if (source == 3)
      {
        v12 = [(STAppInfoCache *)self _placeholderAppInfoWithBundleIdentifier:identifierCopy];

        v7 = v12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
    if (onlyCopy)
    {
      goto LABEL_9;
    }
  }

  if ((source == 0) | v10 & 1)
  {
    objc_initWeak(&location, self);
    lookupQueue = [(STAppInfoCache *)self lookupQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__STAppInfoCache_appInfoForBundleIdentifier_localOnly___block_invoke;
    block[3] = &unk_1E7CE69C8;
    v15 = identifierCopy;
    objc_copyWeak(&v16, &location);
    dispatch_async(lookupQueue, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

LABEL_11:

  return v7;
}

void __55__STAppInfoCache_appInfoForBundleIdentifier_localOnly___block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{*(a1 + 32), 0}];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fetchAppStoreInfoAndNotifyWithBundleIdentifiers:v3];
}

- (void)fetchAppInfoForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{identifierCopy, 0}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__STAppInfoCache_fetchAppInfoForBundleIdentifier_completionHandler___block_invoke;
  v11[3] = &unk_1E7CE69F0;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = identifierCopy;
  v10 = handlerCopy;
  [(STAppInfoCache *)self fetchAppInfoForBundleIdentifiers:v8 completionHandler:v11];
}

void __68__STAppInfoCache_fetchAppInfoForBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  (*(v2 + 16))(v2, v3);
}

- (void)fetchAppInfoForBundleIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v9 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = identifiersCopy;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [(STAppInfoCache *)self _appInfoForBundleIdentifier:v15];
        if ([v16 source])
        {
          [v8 setObject:v16 forKeyedSubscript:v15];
        }

        else
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    lookupQueue = [(STAppInfoCache *)self lookupQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __69__STAppInfoCache_fetchAppInfoForBundleIdentifiers_completionHandler___block_invoke;
    v19[3] = &unk_1E7CE6A40;
    v19[4] = self;
    v20 = v9;
    v21 = v8;
    v22 = handlerCopy;
    dispatch_async(lookupQueue, v19);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v8);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __69__STAppInfoCache_fetchAppInfoForBundleIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__STAppInfoCache_fetchAppInfoForBundleIdentifiers_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7CE6A18;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 56);
  [v2 _fetchAppStoreInfoAndNotifyWithBundleIdentifiers:v3 timeoutInterval:v6 completionHandler:30.0];
}

void __69__STAppInfoCache_fetchAppInfoForBundleIdentifiers_completionHandler___block_invoke_2(id *a1, uint64_t a2)
{
  if (a2)
  {
    [a1[4] addEntriesFromDictionary:a2];
  }

  v3 = [a1[5] completionHandlerQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__STAppInfoCache_fetchAppInfoForBundleIdentifiers_completionHandler___block_invoke_3;
  v4[3] = &unk_1E7CE6948;
  v6 = a1[6];
  v5 = a1[4];
  [v3 addOperationWithBlock:v4];
}

- (void)addObserver:(id)observer selector:(SEL)selector bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = MEMORY[0x1E696AD88];
  observerCopy = observer;
  defaultCenter = [v8 defaultCenter];
  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"AppInfoCacheDidFetchResult-%@", identifierCopy];
  [defaultCenter addObserver:observerCopy selector:selector name:identifierCopy object:self];
}

- (void)removeObserver:(id)observer bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = MEMORY[0x1E696AD88];
  observerCopy = observer;
  defaultCenter = [v6 defaultCenter];
  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"AppInfoCacheDidFetchResult-%@", identifierCopy];
  [defaultCenter removeObserver:observerCopy name:identifierCopy object:self];
}

- (id)_appInfoForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (os_variant_has_internal_content())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [standardUserDefaults BOOLForKey:@"STAppInfoCacheSkipLS"];
  }

  else
  {
    v6 = 0;
  }

  if (os_variant_has_internal_content())
  {
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [standardUserDefaults2 BOOLForKey:@"STAppInfoCacheSkipSynced"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(__CFString *)identifierCopy isEqualToString:@"com.apple.iChat"];
  v10 = @"com.apple.MobileSMS";
  if (!v9)
  {
    v10 = identifierCopy;
  }

  v11 = v10;

  appInfoByBundleIdentifier = [(STAppInfoCache *)self appInfoByBundleIdentifier];
  v13 = [appInfoByBundleIdentifier objectForKey:v11];

  if (v13)
  {
    displayName = [v13 displayName];
    v15 = [displayName length];

    if (v15)
    {
      goto LABEL_23;
    }

    v16 = +[STLog appInfo];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [STAppInfoCache _appInfoForBundleIdentifier:v13];
    }

    goto LABEL_22;
  }

  if ((v6 & 1) != 0 || ([(STAppInfoCache *)self _fetchAppInfoFromLaunchServicesWithBundleIdentifier:v11], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = [(STAppInfoCache *)self _preloadedAppInfoWithBundleIdentifier:v11];
    if (!((v13 != 0) | v8 & 1))
    {
      v13 = [(STAppInfoCache *)self _fetchSyncedInstalledAppInfoForBundleIdentifier:v11];
    }

    if (!v13)
    {
      v13 = [(STAppInfoCache *)self _placeholderAppInfoWithBundleIdentifier:v11];
    }
  }

  appInfoByBundleIdentifier2 = [(STAppInfoCache *)self appInfoByBundleIdentifier];
  [appInfoByBundleIdentifier2 setObject:v13 forKey:v11];

  displayName2 = [v13 displayName];
  v19 = [displayName2 length];

  if (!v19)
  {
    v16 = +[STLog appInfo];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [STAppInfoCache _appInfoForBundleIdentifier:v13];
    }

LABEL_22:
  }

LABEL_23:
  v20 = v13;

  return v20;
}

- (id)_fetchAppInfoFromLaunchServicesWithBundleIdentifier:(id)identifier
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = +[STLog appInfo];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [STAppInfoCache _fetchAppInfoFromLaunchServicesWithBundleIdentifier:];
  }

  v30 = 0;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v30];
  v6 = v30;
  if (v5)
  {
    if ([identifierCopy isEqualToString:@"com.apple.facetime"] && !MGGetBoolAnswer())
    {
      v7 = 0;
      goto LABEL_21;
    }

    v7 = objc_opt_new();
    [v7 setSource:2];
    [v7 setBundleIdentifier:identifierCopy];
    localizedName = [v5 localizedName];
    [v7 setDisplayName:localizedName];

    [v7 setPlatform:2];
    v9 = [v5 URL];
    [v7 setLocalURL:v9];

    iTunesMetadata = [v5 iTunesMetadata];
    distributorInfo = [iTunesMetadata distributorInfo];
    distributorID = [distributorInfo distributorID];
    [v7 setDistributorID:distributorID];

    iTunesMetadata2 = [v5 iTunesMetadata];
    [v7 setAdamID:{objc_msgSend(iTunesMetadata2, "storeItemIdentifier")}];

    iTunesMetadata3 = [v5 iTunesMetadata];
    [v7 setVersionIdentifier:{objc_msgSend(iTunesMetadata3, "versionIdentifier")}];

    iTunesMetadata4 = [v5 iTunesMetadata];
    [v7 setBetaVersionIdentifier:{objc_msgSend(iTunesMetadata4, "betaVersionIdentifier")}];

    iTunesMetadata5 = [v5 iTunesMetadata];
    distributorInfo2 = [iTunesMetadata5 distributorInfo];
    [v7 setDistributorIsThirdParty:{objc_msgSend(distributorInfo2, "distributorIsThirdParty")}];

    v18 = +[STScreenTimeCoreBundle bundle];
    compatibilityObject = [v5 compatibilityObject];
    applicationType = [compatibilityObject applicationType];
    v21 = [applicationType isEqualToString:*MEMORY[0x1E69635A8]];

    if (v21)
    {
      iTunesMetadata6 = [v18 localizedStringForKey:@"AppleDeveloperName" value:&stru_1F3040980 table:0];
      [v7 setDeveloperName:iTunesMetadata6];
    }

    else
    {
      iTunesMetadata6 = [v5 iTunesMetadata];
      artistName = [iTunesMetadata6 artistName];
      if (artistName)
      {
        [v7 setDeveloperName:artistName];
      }

      else
      {
        v24 = [v18 localizedStringForKey:@"NoDeveloper" value:&stru_1F3040980 table:0];
        [v7 setDeveloperName:v24];
      }
    }

    iTunesMetadata7 = [v5 iTunesMetadata];
    ratingLabel = [iTunesMetadata7 ratingLabel];
    if (ratingLabel)
    {
      [v7 setRatingLabel:ratingLabel];
    }

    else
    {
      v27 = [v18 localizedStringForKey:@"NoAgeRating" value:&stru_1F3040980 table:0];
      [v7 setRatingLabel:v27];
    }
  }

  else
  {
    v18 = +[STLog ask];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v32 = identifierCopy;
      v33 = 2114;
      v34 = v6;
      _os_log_impl(&dword_1B831F000, v18, OS_LOG_TYPE_INFO, "No application record found for %{public}@ %{public}@", buf, 0x16u);
    }

    v7 = 0;
  }

LABEL_21:
  v28 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)_fetchAppStoreInfoAndNotifyWithBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  lookupQueue = [(STAppInfoCache *)self lookupQueue];
  dispatch_assert_queue_V2(lookupQueue);

  v7 = [identifiersCopy mutableCopy];
  bundleIdentifiersWithPendingRequests = [(STAppInfoCache *)self bundleIdentifiersWithPendingRequests];
  [v7 minusSet:bundleIdentifiersWithPendingRequests];

  if ([v7 count])
  {
    [(STAppInfoCache *)self _fetchAppStoreInfoAndNotifyWithBundleIdentifiers:v7 timeoutInterval:0 completionHandler:0.0];
  }
}

- (void)_fetchAppStoreInfoAndNotifyWithBundleIdentifiers:(id)identifiers timeoutInterval:(double)interval completionHandler:(id)handler
{
  v77 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  bundleIdentifiersWithPendingRequests = [(STAppInfoCache *)self bundleIdentifiersWithPendingRequests];
  v8 = [identifiersCopy mutableCopy];
  v9 = +[STLog appInfo];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v73 = v8;
    _os_log_impl(&dword_1B831F000, v9, OS_LOG_TYPE_INFO, "Going to query %{public}@ from the store", buf, 0xCu);
  }

  [bundleIdentifiersWithPendingRequests unionSet:v8];
  v10 = [v8 count];
  v54 = [identifiersCopy mutableCopy];
  v52 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
  v53 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
  v51 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v10];
  v50 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v10];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v12)
  {
    v13 = *v68;
    do
    {
      v14 = 0;
      do
      {
        if (*v68 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v67 + 1) + 8 * v14);
        v16 = [(NSCache *)self->_appInfoByBundleIdentifier objectForKey:v15];
        if (!v16)
        {
          v20 = +[STLog appInfo];
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          *buf = 138412290;
          v73 = v15;
          v23 = v20;
          v24 = "AppInfo not found for bundleIdentifier: %@";
          v25 = 12;
LABEL_27:
          _os_log_error_impl(&dword_1B831F000, v23, OS_LOG_TYPE_ERROR, v24, buf, v25);
          goto LABEL_21;
        }

        if (os_variant_has_internal_content())
        {
          standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
          v18 = [standardUserDefaults BOOLForKey:@"STAppInfoCacheSkipAMS"];

          if (v18)
          {
            v19 = 1;
LABEL_20:
            v20 = +[STLog appInfo];
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            *buf = 138412546;
            v73 = v15;
            v74 = 1024;
            v75 = v19;
            v23 = v20;
            v24 = "AppInfo from unknown source or missing an adamID or skipping AMS. Reverting to iTunes lookup. BundleIdentifier: %@, skipping AMS: %d";
            v25 = 18;
            goto LABEL_27;
          }
        }

        if (![v16 source] || !objc_msgSend(v16, "adamID"))
        {
          v19 = 0;
          goto LABEL_20;
        }

        [v54 removeObject:v15];
        if ([v16 distributorIsThirdParty])
        {
          [v53 addObject:v16];
          [v50 addObject:v15];
          v20 = +[STLog appInfo];
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            goto LABEL_21;
          }

          *buf = 138543362;
          v73 = v15;
          v21 = v20;
          v22 = "Adding app with bundleID %{public}@ to global list";
        }

        else
        {
          [v52 addObject:v16];
          [v51 addObject:v15];
          v20 = +[STLog appInfo];
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            goto LABEL_21;
          }

          *buf = 138543362;
          v73 = v15;
          v21 = v20;
          v22 = "Adding app with bundleID %{public}@ to App Store list";
        }

        _os_log_impl(&dword_1B831F000, v21, OS_LOG_TYPE_INFO, v22, buf, 0xCu);
LABEL_21:

        ++v14;
      }

      while (v12 != v14);
      v26 = [v11 countByEnumeratingWithState:&v67 objects:v76 count:16];
      v12 = v26;
    }

    while (v26);
  }

  objc_initWeak(buf, self);
  if ([v53 count])
  {
    v27 = [STAMSClient makeAMSMediaTaskForApps:v53 isGlobal:1];
    if (v27)
    {
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __101__STAppInfoCache__fetchAppStoreInfoAndNotifyWithBundleIdentifiers_timeoutInterval_completionHandler___block_invoke;
      v63[3] = &unk_1E7CE6A90;
      v63[4] = self;
      objc_copyWeak(&v66, buf);
      v64 = v50;
      v65 = handlerCopy;
      [STAMSClient loadMediaForTask:v27 withCompletionHandler:v63];

      objc_destroyWeak(&v66);
    }
  }

  if ([v52 count])
  {
    v28 = [STAMSClient makeAMSMediaTaskForApps:v52 isGlobal:0];
    if (v28)
    {
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __101__STAppInfoCache__fetchAppStoreInfoAndNotifyWithBundleIdentifiers_timeoutInterval_completionHandler___block_invoke_3;
      v59[3] = &unk_1E7CE6A90;
      v59[4] = self;
      objc_copyWeak(&v62, buf);
      v60 = v51;
      v61 = handlerCopy;
      [STAMSClient loadMediaForTask:v28 withCompletionHandler:v59];

      objc_destroyWeak(&v62);
    }
  }

  v29 = v54;

  if ([v29 count])
  {
    v30 = [MEMORY[0x1E696AF20] componentsWithString:@"https://itunes.apple.com/lookup"];
    v31 = MEMORY[0x1E696AF60];
    allObjects = [v29 allObjects];
    v33 = [allObjects componentsJoinedByString:{@", "}];
    v34 = [v31 queryItemWithName:@"bundleId" value:v33];

    v35 = MEMORY[0x1E696AF60];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    countryCode = [currentLocale countryCode];
    v38 = [v35 queryItemWithName:@"country" value:countryCode];

    v39 = [MEMORY[0x1E696AF60] queryItemWithName:@"entity" value:{@"software, iPadSoftware, macSoftware"}];
    v71[0] = v34;
    v71[1] = v38;
    v71[2] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:3];
    [v30 setQueryItems:v40];

    v41 = MEMORY[0x1E696AF68];
    v42 = [v30 URL];
    if (interval <= 0.0)
    {
      [v41 requestWithURL:v42];
    }

    else
    {
      [v41 requestWithURL:v42 cachePolicy:2 timeoutInterval:interval];
    }
    v43 = ;

    urlSession = [(STAppInfoCache *)self urlSession];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __101__STAppInfoCache__fetchAppStoreInfoAndNotifyWithBundleIdentifiers_timeoutInterval_completionHandler___block_invoke_5;
    v55[3] = &unk_1E7CE6AB8;
    objc_copyWeak(&v58, buf);
    v56 = v29;
    v57 = handlerCopy;
    v45 = [urlSession dataTaskWithRequest:v43 completionHandler:v55];

    [v45 resume];
    objc_destroyWeak(&v58);
  }

  objc_destroyWeak(buf);

  v46 = *MEMORY[0x1E69E9840];
}

void __101__STAppInfoCache__fetchAppStoreInfoAndNotifyWithBundleIdentifiers_timeoutInterval_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] lookupQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__STAppInfoCache__fetchAppStoreInfoAndNotifyWithBundleIdentifiers_timeoutInterval_completionHandler___block_invoke_2;
  block[3] = &unk_1E7CE6A68;
  objc_copyWeak(&v15, a1 + 7);
  v11 = a1[5];
  v12 = v6;
  v13 = v5;
  v14 = a1[6];
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v15);
}

void __101__STAppInfoCache__fetchAppStoreInfoAndNotifyWithBundleIdentifiers_timeoutInterval_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [*(a1 + 32) copy];
  [WeakRetained _handleAMSClientResponseForBundleIdentifiers:v2 results:*(a1 + 40) error:*(a1 + 48) completionHandler:*(a1 + 56)];
}

void __101__STAppInfoCache__fetchAppStoreInfoAndNotifyWithBundleIdentifiers_timeoutInterval_completionHandler___block_invoke_3(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] lookupQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__STAppInfoCache__fetchAppStoreInfoAndNotifyWithBundleIdentifiers_timeoutInterval_completionHandler___block_invoke_4;
  block[3] = &unk_1E7CE6A68;
  objc_copyWeak(&v15, a1 + 7);
  v11 = a1[5];
  v12 = v6;
  v13 = v5;
  v14 = a1[6];
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v15);
}

void __101__STAppInfoCache__fetchAppStoreInfoAndNotifyWithBundleIdentifiers_timeoutInterval_completionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [*(a1 + 32) copy];
  [WeakRetained _handleAMSClientResponseForBundleIdentifiers:v2 results:*(a1 + 40) error:*(a1 + 48) completionHandler:*(a1 + 56)];
}

void __101__STAppInfoCache__fetchAppStoreInfoAndNotifyWithBundleIdentifiers_timeoutInterval_completionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleiTunesResponseForBundleIdentifiers:*(a1 + 32) response:v8 data:v9 error:v7 completionHandler:*(a1 + 40)];
}

- (void)_handleAMSClientResponseForBundleIdentifiers:(id)identifiers results:(id)results error:(id)error completionHandler:(id)handler
{
  v82 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  resultsCopy = results;
  errorCopy = error;
  handlerCopy = handler;
  lookupQueue = [(STAppInfoCache *)self lookupQueue];
  dispatch_assert_queue_V2(lookupQueue);

  val = self;
  bundleIdentifiersWithPendingRequests = [(STAppInfoCache *)self bundleIdentifiersWithPendingRequests];
  [bundleIdentifiersWithPendingRequests minusSet:identifiersCopy];

  if (!resultsCopy || ![resultsCopy count])
  {
    v15 = +[STLog appInfo];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [STAppInfoCache _handleAMSClientResponseForBundleIdentifiers:results:error:completionHandler:];
    }
  }

  v61 = errorCopy;
  v62 = identifiersCopy;
  v16 = [identifiersCopy mutableCopy];
  v17 = objc_opt_new();
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v18 = resultsCopy;
  v19 = [v18 countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v74;
    v64 = *v74;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v74 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v73 + 1) + 8 * i);
        bundleIdentifier = [v23 bundleIdentifier];
        v25 = [bundleIdentifier length];

        if (!v25)
        {
          v28 = +[STLog appInfo];
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_27;
          }

          *buf = 138543362;
          v80 = v23;
          v33 = v28;
          v34 = "Unable to parse store response, bundle identifier is missing: %{public}@";
LABEL_19:
          _os_log_error_impl(&dword_1B831F000, v33, OS_LOG_TYPE_ERROR, v34, buf, 0xCu);
          goto LABEL_27;
        }

        displayName = [v23 displayName];
        v27 = [displayName length];

        if (!v27)
        {
          v28 = +[STLog appInfo];
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_27;
          }

          *buf = 138543362;
          v80 = v23;
          v33 = v28;
          v34 = "Unable to parse store response, display name is missing: %{public}@";
          goto LABEL_19;
        }

        v28 = objc_opt_new();
        [v28 setSource:3];
        bundleIdentifier2 = [v23 bundleIdentifier];
        [v28 setBundleIdentifier:bundleIdentifier2];

        displayName2 = [v23 displayName];
        [v28 setDisplayName:displayName2];

        software = [v23 software];
        if ([software isEqualToString:@"software"])
        {

          v32 = 2;
        }

        else
        {
          v35 = v17;
          v36 = v18;
          v37 = v16;
          software2 = [v23 software];
          v39 = [software2 isEqualToString:@"ipad-software"];

          if (v39)
          {
            v32 = 2;
          }

          else
          {
            software3 = [v23 software];
            v32 = [software3 isEqualToString:@"mac-software"];
          }

          v16 = v37;
          v18 = v36;
          v17 = v35;
          v21 = v64;
        }

        [v28 setPlatform:v32];
        artworkURL = [v23 artworkURL];
        [v28 setArtworkURL:artworkURL];

        vendorName = [v23 vendorName];
        [v28 setDeveloperName:vendorName];

        ratingLabel = [v23 ratingLabel];
        [v28 setRatingLabel:ratingLabel];

        bundleIdentifier3 = [v23 bundleIdentifier];
        [v17 setObject:v28 forKeyedSubscript:bundleIdentifier3];

        bundleIdentifier4 = [v23 bundleIdentifier];
        [v16 removeObject:bundleIdentifier4];

        v46 = +[STLog appInfo];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          [STAppInfoCache _handleAMSClientResponseForBundleIdentifiers:v78 results:v28 error:? completionHandler:?];
        }

LABEL_27:
      }

      v20 = [v18 countByEnumeratingWithState:&v73 objects:v81 count:16];
    }

    while (v20);
  }

  v63 = v18;

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v47 = v16;
  v48 = [v47 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v70;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v70 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v69 + 1) + 8 * j);
        v53 = objc_opt_new();
        [v53 setSource:3];
        [v53 setBundleIdentifier:v52];
        [v53 setDisplayName:v52];
        [v53 setPlatform:0];
        v54 = +[STLog appInfo];
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier5 = [v53 bundleIdentifier];
          *buf = 138412290;
          v80 = bundleIdentifier5;
          _os_log_impl(&dword_1B831F000, v54, OS_LOG_TYPE_DEFAULT, "Did not find app %@ in AMS Response; setting AppInfo to placeholder", buf, 0xCu);
        }

        [v17 setObject:v53 forKeyedSubscript:v52];
      }

      v49 = [v47 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v49);
  }

  objc_initWeak(buf, val);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__STAppInfoCache__handleAMSClientResponseForBundleIdentifiers_results_error_completionHandler___block_invoke;
  block[3] = &unk_1E7CE6AE0;
  objc_copyWeak(&v68, buf);
  v66 = v17;
  v67 = handlerCopy;
  v56 = handlerCopy;
  v57 = v17;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v68);
  objc_destroyWeak(buf);

  v58 = *MEMORY[0x1E69E9840];
}

uint64_t __95__STAppInfoCache__handleAMSClientResponseForBundleIdentifiers_results_error_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishedFetchingAppInfoByBundleIdentifier:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_handleiTunesResponseForBundleIdentifiers:(id)identifiers response:(id)response data:(id)data error:(id)error completionHandler:(id)handler
{
  v76 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dataCopy = data;
  errorCopy = error;
  handlerCopy = handler;
  lookupQueue = [(STAppInfoCache *)self lookupQueue];
  dispatch_assert_queue_V2(lookupQueue);

  bundleIdentifiersWithPendingRequests = [(STAppInfoCache *)self bundleIdentifiersWithPendingRequests];
  [bundleIdentifiersWithPendingRequests minusSet:identifiersCopy];

  if (!dataCopy || errorCopy)
  {
    v44 = +[STLog appInfo];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [STAppInfoCache _handleiTunesResponseForBundleIdentifiers:response:data:error:completionHandler:];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v70 = 0;
    v17 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v70];
    v18 = v70;
    if (v17)
    {
      v53 = [identifiersCopy mutableCopy];
      v57 = objc_opt_new();
      v19 = [v17 objectForKeyedSubscript:@"results"];
      objc_opt_class();
      v51 = dataCopy;
      v52 = identifiersCopy;
      v50 = handlerCopy;
      val = self;
      v48 = v18;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v19 = 0;
      }

      v49 = v17;
      v68 = 0u;
      v69 = 0u;
      v67 = 0u;
      v66 = 0u;
      obj = v19;
      v56 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
      if (v56)
      {
        v55 = *v67;
        do
        {
          for (i = 0; i != v56; ++i)
          {
            if (*v67 != v55)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v66 + 1) + 8 * i);
            v22 = [v21 objectForKeyedSubscript:@"bundleId"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v22 = 0;
            }

            v23 = [v21 objectForKeyedSubscript:@"trackName"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v23 = 0;
            }

            v24 = [v21 objectForKeyedSubscript:@"kind"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v24 = 0;
            }

            v25 = [v21 objectForKeyedSubscript:@"artworkUrl100"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v25 = 0;
            }

            v26 = [v21 objectForKeyedSubscript:@"artistName"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v26 = 0;
            }

            v27 = [v21 objectForKeyedSubscript:@"contentAdvisoryRating"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v27 = 0;
            }

            if (![v22 length])
            {
              v28 = +[STLog appInfo];
              if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_40;
              }

              *buf = 138543362;
              v74 = v21;
              v30 = v28;
              v31 = "Unable to parse store response, bundle identifier is missing: %{public}@";
LABEL_32:
              _os_log_error_impl(&dword_1B831F000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0xCu);
              goto LABEL_40;
            }

            if (![v23 length])
            {
              v28 = +[STLog appInfo];
              if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_40;
              }

              *buf = 138543362;
              v74 = v21;
              v30 = v28;
              v31 = "Unable to parse store response, display name is missing: %{public}@";
              goto LABEL_32;
            }

            v28 = objc_opt_new();
            [v28 setSource:3];
            [v28 setBundleIdentifier:v22];
            [v28 setDisplayName:v23];
            if ([v24 isEqualToString:@"software"] & 1) != 0 || (objc_msgSend(v24, "isEqualToString:", @"ipad-software"))
            {
              v29 = 2;
            }

            else
            {
              v29 = [v24 isEqualToString:@"mac-software"];
            }

            [v28 setPlatform:v29];
            if ([v25 length])
            {
              v32 = [MEMORY[0x1E695DFF8] URLWithString:v25];
              [v28 setArtworkURL:v32];
            }

            else
            {
              [v28 setArtworkURL:0];
            }

            [v28 setDeveloperName:v26];
            [v28 setRatingLabel:v27];
            [v57 setObject:v28 forKeyedSubscript:v22];
            [v53 removeObject:v22];
            v33 = +[STLog appInfo];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              [STAppInfoCache _handleAMSClientResponseForBundleIdentifiers:v72 results:v28 error:? completionHandler:?];
            }

LABEL_40:
          }

          v56 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
        }

        while (v56);
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v34 = v53;
      v35 = [v34 countByEnumeratingWithState:&v62 objects:v71 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v63;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v63 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v62 + 1) + 8 * j);
            v40 = objc_opt_new();
            [v40 setSource:3];
            [v40 setBundleIdentifier:v39];
            [v40 setDisplayName:v39];
            [v40 setPlatform:0];
            v41 = +[STLog appInfo];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              bundleIdentifier = [v40 bundleIdentifier];
              *buf = 138412290;
              v74 = bundleIdentifier;
              _os_log_impl(&dword_1B831F000, v41, OS_LOG_TYPE_DEFAULT, "Did not find app %@ in iTunes Response; setting AppInfo to placeholder", buf, 0xCu);
            }

            [v57 setObject:v40 forKeyedSubscript:v39];
          }

          v36 = [v34 countByEnumeratingWithState:&v62 objects:v71 count:16];
        }

        while (v36);
      }

      objc_initWeak(buf, val);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __98__STAppInfoCache__handleiTunesResponseForBundleIdentifiers_response_data_error_completionHandler___block_invoke;
      block[3] = &unk_1E7CE6AE0;
      objc_copyWeak(&v61, buf);
      v59 = v57;
      handlerCopy = v50;
      v60 = v50;
      v43 = v57;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(&v61);
      objc_destroyWeak(buf);

      dataCopy = v51;
      identifiersCopy = v52;
      errorCopy = 0;
      v18 = v48;
      v17 = v49;
    }

    else
    {
      v45 = +[STLog appInfo];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [STAppInfoCache _handleiTunesResponseForBundleIdentifiers:response:data:error:completionHandler:];
      }

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, 0);
      }
    }
  }

  v46 = *MEMORY[0x1E69E9840];
}

uint64_t __98__STAppInfoCache__handleiTunesResponseForBundleIdentifiers_response_data_error_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishedFetchingAppInfoByBundleIdentifier:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (id)_fetchSyncedInstalledAppInfoForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  persistentContainer = [(STAppInfoCache *)self persistentContainer];
  v6 = persistentContainer;
  if (persistentContainer)
  {
    newBackgroundContext = [persistentContainer newBackgroundContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__STAppInfoCache__fetchSyncedInstalledAppInfoForBundleIdentifier___block_invoke;
    v10[3] = &unk_1E7CE6B30;
    v11 = identifierCopy;
    v12 = &v13;
    [newBackgroundContext performBlockAndWait:v10];
  }

  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __66__STAppInfoCache__fetchSyncedInstalledAppInfoForBundleIdentifier___block_invoke(uint64_t a1)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v2 = +[STInstalledApp fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"bundleIdentifier", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"userDeviceState.device.identifier" ascending:1];
  v46[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  [v2 setSortDescriptors:v5];

  v41 = 0;
  v6 = [v2 execute:&v41];
  v7 = v41;
  if (!v6)
  {
    v17 = +[STLog appInfo];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      __66__STAppInfoCache__fetchSyncedInstalledAppInfoForBundleIdentifier___block_invoke_cold_2();
    }

    goto LABEL_12;
  }

  if (![v6 count])
  {
    v17 = +[STLog appInfo];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v2 predicate];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v18;
      _os_log_impl(&dword_1B831F000, v17, OS_LOG_TYPE_INFO, "No installed apps matching predicate: %{public}@", &buf, 0xCu);
    }

LABEL_12:

    goto LABEL_34;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v44 = 0x2020000000;
  v45 = 0x7FFFFFFFFFFFFFFFLL;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0x7FFFFFFFFFFFFFFFLL;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __66__STAppInfoCache__fetchSyncedInstalledAppInfoForBundleIdentifier___block_invoke_230;
  v32[3] = &unk_1E7CE6B08;
  v32[4] = &v33;
  v32[5] = &buf;
  v32[6] = &v37;
  v8 = [v6 indexOfObjectPassingTest:v32];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL || (v8 = v38[3], v8 != 0x7FFFFFFFFFFFFFFFLL) || (v8 = v34[3], v8 != 0x7FFFFFFFFFFFFFFFLL) || (v8 = *(*(&buf + 1) + 24), v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = [v6 objectAtIndexedSubscript:v8];
    v10 = objc_opt_new();
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [v9 adamID];
    if (v13 && ([v9 adamID], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "unsignedLongValue"), v14, v13, v15))
    {
      v16 = 3;
    }

    else
    {
      v15 = 0;
      v16 = 4;
    }

    [*(*(*(a1 + 40) + 8) + 40) setSource:v16];
    v19 = [v9 distributorID];
    [*(*(*(a1 + 40) + 8) + 40) setDistributorID:v19];

    [*(*(*(a1 + 40) + 8) + 40) setDistributorIsThirdParty:{objc_msgSend(v9, "distributorIsThirdParty")}];
    [*(*(*(a1 + 40) + 8) + 40) setAdamID:v15];
    v20 = [v9 versionIdentifier];
    if (v20)
    {
      v19 = [v9 versionIdentifier];
      v21 = [v19 unsignedLongValue];
    }

    else
    {
      v21 = 0;
    }

    [*(*(*(a1 + 40) + 8) + 40) setVersionIdentifier:v21];
    if (v20)
    {
    }

    v22 = [v9 betaVersionIdentifier];
    if (v22)
    {
      v19 = [v9 betaVersionIdentifier];
      v23 = [v19 unsignedLongValue];
    }

    else
    {
      v23 = 0;
    }

    [*(*(*(a1 + 40) + 8) + 40) setBetaVersionIdentifier:v23];
    if (v22)
    {
    }

    [*(*(*(a1 + 40) + 8) + 40) setBundleIdentifier:*(a1 + 32)];
    v24 = [v9 userDeviceState];
    v25 = [v24 device];
    [*(*(*(a1 + 40) + 8) + 40) setPlatform:{objc_msgSend(v25, "platform")}];

    v26 = [v9 displayName];
    LODWORD(v25) = [v26 length] == 0;

    if (v25)
    {
      v28 = +[STLog appInfo];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = [v9 description];
        __66__STAppInfoCache__fetchSyncedInstalledAppInfoForBundleIdentifier___block_invoke_cold_1(v29, v42, v28);
      }

      v27 = [v9 bundleIdentifier];
      [*(*(*(a1 + 40) + 8) + 40) setDisplayName:v27];
    }

    else
    {
      v27 = [v9 displayName];
      [*(*(*(a1 + 40) + 8) + 40) setDisplayName:v27];
    }

    v30 = [v9 iconData];
    [*(*(*(a1 + 40) + 8) + 40) setArtworkData:v30];
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&buf, 8);
LABEL_34:

  v31 = *MEMORY[0x1E69E9840];
}

BOOL __66__STAppInfoCache__fetchSyncedInstalledAppInfoForBundleIdentifier___block_invoke_230(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 displayName];

  v7 = [v5 adamID];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 adamID];
    v10 = [v9 isEqualToNumber:&unk_1F3059A98];

    if ((v10 & 1) == 0)
    {
      *(*(a1[4] + 8) + 24) = a3;
    }
  }

  if (v6 && (v11 = *(a1[5] + 8), *(v11 + 24) == 0x7FFFFFFFFFFFFFFFLL) && (*(v11 + 24) = a3, [v5 iconData], v12 = objc_claimAutoreleasedReturnValue(), v12, v12) && (v13 = *(a1[6] + 8), *(v13 + 24) == 0x7FFFFFFFFFFFFFFFLL))
  {
    *(v13 + 24) = a3;
    v14 = [v5 userDeviceState];
    v15 = [v14 device];
    v16 = [v15 platform] == 2;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_finishedFetchingAppInfoByBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  appInfoByBundleIdentifier = [(STAppInfoCache *)self appInfoByBundleIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__STAppInfoCache__finishedFetchingAppInfoByBundleIdentifier___block_invoke;
  v7[3] = &unk_1E7CE6B58;
  v8 = appInfoByBundleIdentifier;
  selfCopy = self;
  v6 = appInfoByBundleIdentifier;
  [identifierCopy enumerateKeysAndObjectsUsingBlock:v7];
}

void __61__STAppInfoCache__finishedFetchingAppInfoByBundleIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  [v6 setObject:v7 forKey:v5];
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AppInfoCacheDidFetchResult-%@", v5];
  v10 = *(a1 + 40);
  v14 = @"AppInfo";
  v15[0] = v7;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [v8 postNotificationName:v9 object:v10 userInfo:v11];

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 postNotificationName:@"STAppInfoCacheDidUpdateNotificationName" object:*(a1 + 40) userInfo:0];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_preloadedAppInfoWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(STAppInfoCache *)self _localAppNameForBundleIdentifier:identifierCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    [v6 setSource:1];
    [v6 setBundleIdentifier:identifierCopy];
    [v6 setDisplayName:v5];
    [v6 setPlatform:2];
    v7 = +[STScreenTimeCoreBundle bundle];
    v8 = [v7 localizedStringForKey:@"AppleDeveloperName" value:&stru_1F3040980 table:0];
    [v6 setDeveloperName:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_placeholderAppInfoWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setSource:0];
  [v4 setBundleIdentifier:identifierCopy];
  [v4 setDisplayName:identifierCopy];

  [v4 setPlatform:0];

  return v4;
}

- (id)_localAppNameForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_localAppNameForBundleIdentifier__onceToken != -1)
  {
    [STAppInfoCache _localAppNameForBundleIdentifier:];
  }

  v4 = [_localAppNameForBundleIdentifier__localAppNameMap objectForKeyedSubscript:identifierCopy];
  if (v4)
  {
    v5 = +[STScreenTimeCoreBundle bundle];
    v6 = [v5 localizedStringForKey:v4 value:&stru_1F3040980 table:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __51__STAppInfoCache__localAppNameForBundleIdentifier___block_invoke()
{
  v4[10] = *MEMORY[0x1E69E9840];
  v3[0] = @"com.apple.camera";
  v3[1] = @"com.apple.compass";
  v4[0] = @"CameraAppName";
  v4[1] = @"CompassAppName";
  v3[2] = @"com.apple.Health";
  v3[3] = @"com.apple.mobilephone";
  v4[2] = @"HealthAppName";
  v4[3] = @"PhoneAppName";
  v3[4] = @"com.apple.mobilesafari";
  v3[5] = @"com.apple.mobileslideshow";
  v4[4] = @"SafariAppName";
  v4[5] = @"PhotosAppName";
  v3[6] = @"com.apple.MobileSMS";
  v3[7] = @"com.apple.mobiletimer";
  v4[6] = @"MessagesAppName";
  v4[7] = @"ClockAppName";
  v3[8] = @"com.apple.Passbook";
  v3[9] = @"com.apple.Preferences";
  v4[8] = @"PassbookAppName";
  v4[9] = @"SettingsAppName";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:10];
  v1 = _localAppNameForBundleIdentifier__localAppNameMap;
  _localAppNameForBundleIdentifier__localAppNameMap = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __66__STAppInfoCache_appInfoForBundleIdentifier_adamId_distributorId___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 48);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_1B831F000, a2, a3, "Cannot fetch alt distro app info for bundle ID:%@ error:%@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_appInfoForBundleIdentifier:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_1B831F000, v2, v3, "STAppInfoCache is vending result with no displayName: %{public}@ in function: %s:%d", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_appInfoForBundleIdentifier:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_1B831F000, v2, v3, "STAppInfoCache is vending result with no displayName: %{public}@ in function: %s:%d", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_fetchAppInfoFromLaunchServicesWithBundleIdentifier:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1B831F000, v0, OS_LOG_TYPE_DEBUG, "Going to query %{public}@ from LS", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_handleAMSClientResponseForBundleIdentifiers:results:error:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B831F000, v0, v1, "App lookup of %@ from media services failed: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_handleAMSClientResponseForBundleIdentifiers:(uint64_t)a1 results:(uint64_t)a2 error:completionHandler:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_4(a1 a2)];
  *v3 = 138543362;
  *v2 = v4;
  OUTLINED_FUNCTION_6(&dword_1B831F000, v5, v6, "Got app %{public}@ details from the store");
}

- (void)_handleiTunesResponseForBundleIdentifiers:response:data:error:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B831F000, v0, v1, "App lookup of %@ from store failed: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void __66__STAppInfoCache__fetchSyncedInstalledAppInfoForBundleIdentifier___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543874;
  *(buf + 6) = 2080;
  *(buf + 4) = a1;
  *(buf + 14) = "[STAppInfoCache _fetchSyncedInstalledAppInfoForBundleIdentifier:]_block_invoke";
  *(buf + 11) = 1024;
  *(buf + 6) = 663;
  _os_log_error_impl(&dword_1B831F000, log, OS_LOG_TYPE_ERROR, "Display name missing for installedApplication: %{public}@ in function: %s:%d", buf, 0x1Cu);
}

void __66__STAppInfoCache__fetchSyncedInstalledAppInfoForBundleIdentifier___block_invoke_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1B831F000, v0, OS_LOG_TYPE_FAULT, "Failed to fetch installed apps: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end