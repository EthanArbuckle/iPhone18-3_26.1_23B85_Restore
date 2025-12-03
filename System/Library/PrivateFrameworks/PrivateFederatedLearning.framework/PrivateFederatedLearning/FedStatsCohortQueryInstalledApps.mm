@interface FedStatsCohortQueryInstalledApps
+ (id)cohortInstance;
+ (void)initialize;
- (BOOL)_isSupportedIntentMediaApp:(id)app :(id)a4 :(id)a5;
- (FedStatsCohortQueryInstalledApps)init;
- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error;
- (void)applyFilteringForMediaDomain;
- (void)lsAppRecords;
- (void)lsPluginKitExtensions;
- (void)resolveDomainToBundleIds;
@end

@implementation FedStatsCohortQueryInstalledApps

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_282B4BA90];
    v3 = INTENT_MEDIA_SUPPORTED_CATEGORIES;
    INTENT_MEDIA_SUPPORTED_CATEGORIES = v2;

    v4 = MEMORY[0x277CBEB98];
    v5 = objc_opt_class();
    v14 = NSStringFromClass(v5);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v4 setWithObjects:{v14, v7, v9, v11, 0}];
    v13 = INTENT_MEDIA_SUPPORTED_INTENTS;
    INTENT_MEDIA_SUPPORTED_INTENTS = v12;
  }
}

- (FedStatsCohortQueryInstalledApps)init
{
  v13[2] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = FedStatsCohortQueryInstalledApps;
  v2 = [(FedStatsCohortQueryInstalledApps *)&v11 init];
  if (v2)
  {
    v12[0] = @"media";
    v3 = [MEMORY[0x277CBEB58] set];
    v12[1] = @"phone";
    v13[0] = v3;
    v4 = [MEMORY[0x277CBEB58] set];
    v13[1] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    domainToInstalledApps = v2->_domainToInstalledApps;
    v2->_domainToInstalledApps = v5;

    [(FedStatsCohortQueryInstalledApps *)v2 resolveDomainToBundleIds];
    v7 = [(NSDictionary *)v2->_domainToInstalledApps objectForKeyedSubscript:@"media"];
    v2->_numOfMediaApps = [v7 count];

    v8 = [(NSDictionary *)v2->_domainToInstalledApps objectForKeyedSubscript:@"phone"];
    v2->_numOfPhoneApps = [v8 count];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid call to FedStatsCohortQueryInstalledApps#.cohortKeyForParameters"];
  v6 = [FedStatsError errorWithCode:900 description:v5];
  v7 = *error;
  *error = v6;

  return 0;
}

+ (id)cohortInstance
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)resolveDomainToBundleIds
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = +[_PFLLog framework];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_21A3C2000, v3, OS_LOG_TYPE_INFO, "FedStatsCohortQueryInstalledApps#resolveDomainToBundleIds start.", &v12, 2u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [(FedStatsCohortQueryInstalledApps *)self lsAppRecords];
  [(FedStatsCohortQueryInstalledApps *)self lsPluginKitExtensions];
  [(FedStatsCohortQueryInstalledApps *)self applyFilteringForMediaDomain];
  v5 = +[_PFLLog framework];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    domainToInstalledApps = self->_domainToInstalledApps;
    v12 = 138412290;
    v13 = domainToInstalledApps;
    _os_log_impl(&dword_21A3C2000, v5, OS_LOG_TYPE_INFO, "FedStatsCohortQueryInstalledApps#resolveDomainToBundleIds resolved domain to bundle ids: %@", &v12, 0xCu);
  }

  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:date];
  v9 = v8;

  v10 = +[_PFLLog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    v13 = v9;
    _os_log_impl(&dword_21A3C2000, v10, OS_LOG_TYPE_INFO, "FedStatsCohortQueryInstalledApps#resolveDomainToBundleIds complete in %fms", &v12, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)lsAppRecords
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  nextObject = [v3 nextObject];
  if (nextObject)
  {
    v6 = nextObject;
    v7 = 0x278252000uLL;
    *&v5 = 138412802;
    v24 = v5;
    v25 = v3;
    do
    {
      bundleIdentifier = [v6 bundleIdentifier];
      if (bundleIdentifier)
      {
        v9 = MEMORY[0x277CBEB98];
        supportedIntentMediaCategories = [v6 supportedIntentMediaCategories];
        framework2 = [v9 setWithArray:supportedIntentMediaCategories];

        supportedIntents = [v6 supportedIntents];
        if ([(FedStatsCohortQueryInstalledApps *)self _isSupportedIntentMediaApp:bundleIdentifier])
        {
          v13 = [InstalledApp alloc];
          supportedIntentMediaCategories2 = [v6 supportedIntentMediaCategories];
          [v6 localizedName];
          selfCopy = self;
          v17 = v16 = v7;
          v18 = [(InstalledApp *)v13 initWithBundleIdentifier:bundleIdentifier supportedMediaCategories:supportedIntentMediaCategories2 supportedIntents:supportedIntents appName:v17];

          v7 = v16;
          self = selfCopy;

          v19 = [(NSDictionary *)selfCopy->_domainToInstalledApps objectForKeyedSubscript:@"media"];
          [v19 addObject:v18];

          framework = [*(v7 + 3856) framework];
          if (os_log_type_enabled(framework, OS_LOG_TYPE_DEBUG))
          {
            supportedIntentMediaCategories3 = [v6 supportedIntentMediaCategories];
            *buf = v24;
            v27 = bundleIdentifier;
            v28 = 2112;
            v29 = supportedIntents;
            v30 = 2112;
            v31 = supportedIntentMediaCategories3;
            _os_log_debug_impl(&dword_21A3C2000, framework, OS_LOG_TYPE_DEBUG, "bundle record: %@ has supported intent %@ and supported media categories: %@", buf, 0x20u);
          }

          v3 = v25;
        }
      }

      else
      {
        framework2 = [*(v7 + 3856) framework];
        if (os_log_type_enabled(framework2, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = v6;
          _os_log_error_impl(&dword_21A3C2000, framework2, OS_LOG_TYPE_ERROR, "Error enumerating app records; app record: %@ has nil bundle identifier", buf, 0xCu);
        }
      }

      nextObject2 = [v3 nextObject];

      v6 = nextObject2;
    }

    while (nextObject2);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)lsPluginKitExtensions
{
  v14[2] = *MEMORY[0x277D85DE8];
  allObjects = [INTENT_MEDIA_SUPPORTED_INTENTS allObjects];
  v4 = *MEMORY[0x277CD3858];
  v5 = *MEMORY[0x277CD3828];
  v13[0] = *MEMORY[0x277CCA0F8];
  v13[1] = v5;
  v14[0] = v4;
  v14[1] = allObjects;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__FedStatsCohortQueryInstalledApps_lsPluginKitExtensions__block_invoke;
  v10[3] = &unk_278253538;
  v11 = v6;
  selfCopy = self;
  v8 = v6;
  [defaultWorkspace enumeratePluginsMatchingQuery:v8 withBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __57__FedStatsCohortQueryInstalledApps_lsPluginKitExtensions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[_PFLLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __57__FedStatsCohortQueryInstalledApps_lsPluginKitExtensions__block_invoke_cold_1(a1, v6, v7);
    }
  }

  else
  {
    v8 = [v5 containingBundle];
    v7 = [v8 bundleIdentifier];

    if (v7)
    {
      v9 = [MEMORY[0x277CBEA60] arrayWithObject:v5];
      v10 = INSupportedMediaCategories();
      v11 = [v5 objectForInfoDictionaryKey:*MEMORY[0x277CD3830] ofClass:objc_opt_class() inScope:0];
      if ([*(a1 + 40) _isSupportedIntentMediaApp:v7 :v10 :v11])
      {
        v12 = [InstalledApp alloc];
        v13 = [v10 allObjects];
        v14 = [(InstalledApp *)v12 initWithBundleIdentifier:v7 supportedMediaCategories:v13 supportedIntents:v11 appName:0];

        v15 = [*(*(a1 + 40) + 24) objectForKeyedSubscript:@"media"];
        [v15 addObject:v14];

        v16 = +[_PFLLog framework];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v5 bundleIdentifier];
          v19 = 138412802;
          v20 = v18;
          v21 = 2112;
          v22 = v11;
          v23 = 2112;
          v24 = v10;
          _os_log_debug_impl(&dword_21A3C2000, v16, OS_LOG_TYPE_DEBUG, "pluginkit record: %@ has supported intent %@ and supported media categories: %@", &v19, 0x20u);
        }
      }
    }

    else
    {
      v9 = +[_PFLLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __57__FedStatsCohortQueryInstalledApps_lsPluginKitExtensions__block_invoke_cold_2(v5, v9);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isSupportedIntentMediaApp:(id)app :(id)a4 :(id)a5
{
  appCopy = app;
  v8 = a4;
  v9 = a5;
  if ([appCopy isEqualToString:@"com.apple.Music"] & 1) != 0 || (objc_msgSend(appCopy, "isEqualToString:", @"com.apple.podcasts"))
  {
    v10 = 1;
  }

  else if ([v8 count])
  {
    v12 = [MEMORY[0x277CBEB58] setWithSet:INTENT_MEDIA_SUPPORTED_CATEGORIES];
    [v12 intersectSet:v8];
    if ([v12 count] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = [MEMORY[0x277CBEB58] setWithSet:INTENT_MEDIA_SUPPORTED_INTENTS];
      v14 = [MEMORY[0x277CBEB98] setWithArray:v9];
      [v13 intersectSet:v14];

      v10 = [v13 count] != 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)applyFilteringForMediaDomain
{
  domainToInstalledApps = [(FedStatsCohortQueryInstalledApps *)self domainToInstalledApps];
  v6 = [domainToInstalledApps objectForKeyedSubscript:@"media"];

  v3 = [v6 objectsPassingTest:&__block_literal_global];
  v4 = [v3 objectsPassingTest:&__block_literal_global_82];

  v5 = [v4 objectsPassingTest:&__block_literal_global_84];

  [v6 setSet:v5];
}

uint64_t __64__FedStatsCohortQueryInstalledApps_applyFilteringForMediaDomain__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 bundleIdentifier];
  v3 = [&unk_282B4BA78 containsObject:v2];

  return v3 ^ 1u;
}

uint64_t __64__FedStatsCohortQueryInstalledApps_applyFilteringForMediaDomain__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 supportedIntents];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 containsObject:v4];

  return v5;
}

uint64_t __64__FedStatsCohortQueryInstalledApps_applyFilteringForMediaDomain__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 supportedMediaCategories];
  v3 = [v2 containsObject:@"INMediaCategoryVideo"];

  return v3 ^ 1u;
}

void __57__FedStatsCohortQueryInstalledApps_lsPluginKitExtensions__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [a2 localizedDescription];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_21A3C2000, a3, OS_LOG_TYPE_ERROR, "Error enumerating plugins; matching query: %@, error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __57__FedStatsCohortQueryInstalledApps_lsPluginKitExtensions__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_21A3C2000, a2, OS_LOG_TYPE_ERROR, "Error enumerating plugins; missing containing bundle of plugin: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end