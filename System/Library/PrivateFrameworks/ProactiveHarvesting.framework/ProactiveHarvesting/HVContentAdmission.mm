@interface HVContentAdmission
+ (BOOL)shouldAdmitContentFromBundleIdentifier:(id)identifier;
+ (BOOL)suggestionsShouldShowPastEvents;
+ (id)sharedInstance;
+ (void)addContentAdmissionObserver:(id)observer;
+ (void)clearTestSettings;
+ (void)disableBundleIdentifier:(id)identifier;
+ (void)initialize;
+ (void)migrateForTests;
+ (void)registerConfigurationAsset:(id)asset;
+ (void)updateConfigurableBundleIdentifierDenyList:(id)list;
- (HVContentAdmission)init;
- (uint64_t)_refreshPastEventsSetting;
- (uint64_t)_shouldAdmitContentFromBundleIdentifier:(void *)identifier;
- (void)_disableBundleIdentifier:(uint64_t)identifier;
- (void)_migrateIfNeededWithCompletion:(uint64_t)completion;
- (void)_refreshBundleIdentifierDenyListsWithLearnFromDenyList:(void *)list configurableDenyList:;
- (void)_refreshDisabledBundleIds;
@end

@implementation HVContentAdmission

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance__pasOnceToken3 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken3, &__block_literal_global_319);
  }

  v0 = sharedInstance__pasExprOnceResult;

  return v0;
}

- (HVContentAdmission)init
{
  location[3] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = HVContentAdmission;
  v2 = [(HVContentAdmission *)&v30 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:1];
    v5 = *(v3 + 24);
    *(v3 + 24) = v4;

    v6 = objc_opt_new();
    v7 = *(v3 + 8);
    *(v3 + 8) = v6;

    v8 = objc_opt_new();
    v9 = *(v3 + 16);
    *(v3 + 16) = v8;

    *(v3 + 40) = 0;
    v10 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v3];
    lock = v2->_lock;
    v2->_lock = v10;

    v12 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.suggestions"];
    defaults = v2->_defaults;
    v2->_defaults = v12;

    if (v2->_defaults)
    {
      objc_initWeak(location, v2);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __26__HVContentAdmission_init__block_invoke;
      v28[3] = &unk_2789695A8;
      objc_copyWeak(&v29, location);
      v14 = MEMORY[0x238381E60](v28);
      v15 = [HVContentAdmissionKVOObserver observeObject:v2->_defaults key:@"SiriCanLearnFromAppBlacklist" handler:v14];
      kvoObserver = v2->_kvoObserver;
      v2->_kvoObserver = v15;

      [(HVContentAdmission *)v2 _refreshDisabledBundleIds];
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __26__HVContentAdmission_init__block_invoke_2;
      v26 = &unk_2789695A8;
      objc_copyWeak(&v27, location);
      v17 = MEMORY[0x238381E60](&v23);
      v18 = [HVContentAdmissionKVOObserver observeObject:v2->_defaults key:@"SuggestionsShowPastEvents" handler:v17, v23, v24, v25, v26];
      pastEventsObserver = v2->_pastEventsObserver;
      v2->_pastEventsObserver = v18;

      [(HVContentAdmission *)v2 _refreshPastEventsSetting];
      [(HVContentAdmission *)v2 _migrateIfNeededWithCompletion:?];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&v29);
      objc_destroyWeak(location);
    }

    else
    {
      v20 = hv_default_log_handle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = @"com.apple.suggestions";
        _os_log_error_impl(&dword_2321EC000, v20, OS_LOG_TYPE_ERROR, "HVContentAdmission failed to get NSUserDefaults for suite %@.", location, 0xCu);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v2;
}

void __26__HVContentAdmission_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HVContentAdmission *)WeakRetained _refreshDisabledBundleIds];
}

- (void)_refreshDisabledBundleIds
{
  v12 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = *(self + 16);
    if (v2)
    {
      v3 = [v2 objectForKey:@"SiriCanLearnFromAppBlacklist"];
      v4 = v3;
      v5 = MEMORY[0x277CBEBF8];
      if (v3)
      {
        v5 = v3;
      }

      v6 = v5;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v6];
        v8 = hv_default_log_handle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 134217984;
          v11 = [v7 count];
          _os_log_impl(&dword_2321EC000, v8, OS_LOG_TYPE_DEFAULT, "HVContentAdmission loaded %tu disabled bundleIds from prefs", &v10, 0xCu);
        }

        [(HVContentAdmission *)self _refreshBundleIdentifierDenyListsWithLearnFromDenyList:v7 configurableDenyList:0];
      }

      else
      {
        v7 = hv_default_log_handle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v10) = 0;
          _os_log_error_impl(&dword_2321EC000, v7, OS_LOG_TYPE_ERROR, "HVContentAdmission found unexpected value type for disabled bundleIds.", &v10, 2u);
        }
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __26__HVContentAdmission_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HVContentAdmission *)WeakRetained _refreshPastEventsSetting];
}

- (uint64_t)_refreshPastEventsSetting
{
  if (result)
  {
    v1 = *(result + 8);
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __47__HVContentAdmission__refreshPastEventsSetting__block_invoke;
    v2[3] = &unk_278968C50;
    v2[4] = result;
    return [v1 runWithLockAcquired:v2];
  }

  return result;
}

- (void)_migrateIfNeededWithCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    if (_migrateIfNeededWithCompletion___pasOnceToken12 != -1)
    {
      dispatch_once(&_migrateIfNeededWithCompletion___pasOnceToken12, &__block_literal_global_85);
    }

    v4 = _migrateIfNeededWithCompletion___pasExprOnceResult;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__HVContentAdmission__migrateIfNeededWithCompletion___block_invoke_2;
    v6[3] = &unk_278968D78;
    v6[4] = completion;
    v7 = v3;
    v5 = v4;
    dispatch_async(v5, v6);
  }
}

uint64_t __53__HVContentAdmission__migrateIfNeededWithCompletion___block_invoke_2(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = hv_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2321EC000, v2, OS_LOG_TYPE_DEBUG, "HVContentAdmission: migrateIfNeeded", buf, 2u);
  }

  if ([*(*(a1 + 32) + 16) BOOLForKey:@"spToLearnMigrationPerformed"])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2321EC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "HVContentAdmission: spToLearnMigrationPerformed was YES.", buf, 2u);
    }
  }

  else
  {
    v3 = hv_default_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2321EC000, v3, OS_LOG_TYPE_DEFAULT, "HVContentAdmission: spToLearnMigrationPerformed was NO.", buf, 2u);
    }

    v4 = objc_alloc(MEMORY[0x277CBEB58]);
    v5 = CFPreferencesCopyValue(@"SBSearchDisabledBundles", @"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v6 = [v4 initWithArray:v5];

    if (v6)
    {
      [v6 removeObject:@"com.apple.application"];
      [v6 removeObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
      [v6 removeObject:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
      [v6 removeObject:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
      [v6 removeObject:@"com.apple.FileProvider.LocalStorage"];
      if ([v6 containsObject:@"com.apple.DocumentsApp"])
      {
        [v6 addObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
        [v6 addObject:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
        [v6 addObject:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
        [v6 addObject:@"com.apple.FileProvider.LocalStorage"];
      }

      v7 = v6;
    }

    else
    {
      v7 = objc_opt_new();
    }

    v8 = v7;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      do
      {
        v13 = 0;
        do
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v38 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [(HVContentAdmission *)*(a1 + 32) _disableBundleIdentifier:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v11);
    }

    [*(*(a1 + 32) + 16) setBool:1 forKey:@"spToLearnMigrationPerformed"];
    v15 = hv_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2321EC000, v15, OS_LOG_TYPE_DEFAULT, "HVContentAdmission: spToLearnMigration has been performed.", buf, 2u);
    }
  }

  if ([*(*(a1 + 32) + 16) BOOLForKey:@"findToShowMigrationPerformed"])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2321EC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "HVContentAdmission: findToShowMigrationPerformed was YES.", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2321EC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HVContentAdmission: findToShowMigrationPerformed was NO.", buf, 2u);
    }

    v16 = objc_opt_new();
    v17 = [*(*(a1 + 32) + 16) objectForKey:@"SuggestionsShowContactsFoundInMail"];
    v18 = v17;
    if (v17 && ([v17 BOOLValue] & 1) == 0)
    {
      [v16 addObject:@"com.apple.MobileAddressBook"];
    }

    v19 = [*(*(a1 + 32) + 16) objectForKey:@"SuggestionsShowEventsFoundInMail"];
    v20 = v19;
    if (v19 && ([v19 BOOLValue] & 1) == 0)
    {
      [v16 addObject:@"com.apple.mobilecal"];
    }

    v21 = [*(*(a1 + 32) + 16) objectForKey:@"SuggestionsShowLocationsFoundInApps"];
    v22 = v21;
    if (v21 && ([v21 BOOLValue] & 1) == 0)
    {
      [v16 addObject:@"com.apple.Maps"];
    }

    v23 = [*(*(a1 + 32) + 16) objectForKey:@"SuggestionsShowTopicsFoundInApps"];
    v24 = v23;
    if (v23 && ([v23 BOOLValue] & 1) == 0)
    {
      [v16 addObject:@"com.apple.news"];
    }

    v25 = [*(*(a1 + 32) + 16) arrayForKey:@"SuggestionsPortraitTopicsAppUsageBlacklist"];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v35;
      do
      {
        v29 = 0;
        do
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [v16 addObject:*(*(&v34 + 1) + 8 * v29++)];
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v27);
    }

    v30 = *(*(a1 + 32) + 16);
    v31 = [v16 allObjects];
    [v30 setObject:v31 forKey:@"AppCanShowSiriSuggestionsBlacklist"];

    [*(*(a1 + 32) + 16) setBool:1 forKey:@"findToShowMigrationPerformed"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2321EC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HVContentAdmission: findToShowMigration has been performed.", buf, 2u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v33 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_disableBundleIdentifier:(uint64_t)identifier
{
  v3 = a2;
  v4 = v3;
  if (identifier)
  {
    v5 = *(identifier + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__HVContentAdmission__disableBundleIdentifier___block_invoke;
    v6[3] = &unk_278968CF0;
    v7 = v3;
    identifierCopy = identifier;
    [v5 runWithLockAcquired:v6];
  }
}

void __47__HVContentAdmission__disableBundleIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) allObjects];
  v4 = [v3 mutableCopy];

  [v4 addObject:*(a1 + 32)];
  [*(*(a1 + 40) + 16) setObject:v4 forKey:@"SiriCanLearnFromAppBlacklist"];
}

void __53__HVContentAdmission__migrateIfNeededWithCompletion___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"HVContentAdmission-migrateIfNeeded" qosClass:5];
  v2 = _migrateIfNeededWithCompletion___pasExprOnceResult;
  _migrateIfNeededWithCompletion___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

uint64_t __47__HVContentAdmission__refreshPastEventsSetting__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v4 = a2;
  v4[40] = [v2 BOOLForKey:@"SuggestionsShowPastEvents"];

  return MEMORY[0x2821F96F8]();
}

- (void)_refreshBundleIdentifierDenyListsWithLearnFromDenyList:(void *)list configurableDenyList:
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  listCopy = list;
  v7 = listCopy;
  if (self && v5 | listCopy)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__312;
    v31 = __Block_byref_object_dispose__313;
    v32 = 0;
    v8 = *(self + 8);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __98__HVContentAdmission__refreshBundleIdentifierDenyListsWithLearnFromDenyList_configurableDenyList___block_invoke;
    v23[3] = &unk_278968CC8;
    v18 = v5;
    v24 = v5;
    v25 = v7;
    v26 = &v27;
    [v8 runWithLockAcquired:v23];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v28[5];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v33 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = [[HVSpotlightDeletionRequest alloc] initWithBundleIdentifier:v13];
          v16 = +[HVDonationReceiver defaultReceiver];
          [v16 deleteContentWithRequest:v15 error:0];

          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v33 count:16];
      }

      while (v10);
    }

    _Block_object_dispose(&v27, 8);
    v5 = v18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __98__HVContentAdmission__refreshBundleIdentifierDenyListsWithLearnFromDenyList_configurableDenyList___block_invoke(void *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  if (!v4)
  {
    v4 = *(v3 + 1);
  }

  v5 = [v4 mutableCopy];
  v6 = v5;
  v7 = a1[5];
  if (!v7)
  {
    v7 = *(v3 + 2);
  }

  [v5 unionSet:v7];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = *(v3 + 3);
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v25 + 1) + 8 * v12++) contentAdmissionBlocklistDidChange:{v6, v25}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v10);
  }

  v13 = [v6 mutableCopy];
  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  [*(*(a1[6] + 8) + 40) minusSet:*(v3 + 1)];
  [*(*(a1[6] + 8) + 40) minusSet:*(v3 + 2)];
  v16 = hv_default_log_handle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(*(a1[6] + 8) + 40);
    *buf = 138412546;
    v30 = v6;
    v31 = 2112;
    v32 = v24;
    _os_log_debug_impl(&dword_2321EC000, v16, OS_LOG_TYPE_DEBUG, "HVContentAdmission disabled bundles: %@ newly disabled: %@", buf, 0x16u);
  }

  v17 = a1[4];
  if (v17)
  {
    v18 = [v17 copy];
    v19 = *(v3 + 1);
    *(v3 + 1) = v18;
  }

  v20 = a1[5];
  if (v20)
  {
    v21 = [v20 copy];
    v22 = *(v3 + 2);
    *(v3 + 2) = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (void)migrateForTests
{
  v2 = dispatch_semaphore_create(0);
  v3 = +[HVContentAdmission sharedInstance];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__HVContentAdmission_migrateForTests__block_invoke;
  v5[3] = &unk_278969C20;
  v6 = v2;
  v4 = v2;
  [(HVContentAdmission *)v3 _migrateIfNeededWithCompletion:v5];

  [MEMORY[0x277D425A0] waitForSemaphore:v4];
}

void __36__HVContentAdmission_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

+ (void)clearTestSettings
{
  v2 = +[HVContentAdmission sharedInstance];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 8);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __40__HVContentAdmission__clearTestSettings__block_invoke;
    v5[3] = &unk_278968C50;
    v5[4] = v3;
    [v4 runWithLockAcquired:v5];
  }

  MEMORY[0x2821F96F8]();
}

void __40__HVContentAdmission__clearTestSettings__block_invoke(uint64_t a1, void *a2)
{
  v19[9] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19[0] = @"SiriCanLearnFromAppBlacklist";
  v19[1] = @"spToLearnMigrationPerformed";
  v19[2] = @"findToShowMigrationPerformed";
  v19[3] = @"SuggestionsShowContactsFoundInMail";
  v19[4] = @"SuggestionsShowEventsFoundInMail";
  v19[5] = @"SuggestionsShowLocationsFoundInApps";
  v19[6] = @"SuggestionsShowTopicsFoundInApps";
  v19[7] = @"SuggestionsPortraitTopicsAppUsageBlacklist";
  v19[8] = @"AppCanShowSiriSuggestionsBlacklist";
  [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:9];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(a1 + 32) + 16) removeObjectForKey:{*(*(&v14 + 1) + 8 * v8++), v14}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v9 = objc_opt_new();
  v10 = v3[1];
  v3[1] = v9;

  v11 = objc_opt_new();
  v12 = v3[2];
  v3[2] = v11;

  v13 = *MEMORY[0x277D85DE8];
}

+ (BOOL)suggestionsShouldShowPastEvents
{
  v2 = +[HVContentAdmission sharedInstance];
  v3 = v2;
  if (v2)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v4 = *(v2 + 8);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__HVContentAdmission__suggestionsShouldShowPastEvents__block_invoke;
    v7[3] = &unk_278968D40;
    v7[4] = &v8;
    [v4 runWithLockAcquired:v7];
    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

+ (BOOL)shouldAdmitContentFromBundleIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v6 = +[HVContentAdmission sharedInstance];
    v7 = v6;
    v8 = identifierCopy;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HVContentAdmission.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    v6 = +[HVContentAdmission sharedInstance];
    v7 = v6;
    v8 = 0;
  }

  v9 = [(HVContentAdmission *)v6 _shouldAdmitContentFromBundleIdentifier:v8];

  v10 = hv_default_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = @"Blocking";
    if (v9)
    {
      v11 = @"Admitting";
    }

    *buf = 138412546;
    v16 = v11;
    v17 = 2112;
    v18 = identifierCopy;
    _os_log_impl(&dword_2321EC000, v10, OS_LOG_TYPE_INFO, "HVContentAdmission: %@ content from bundleIdentifier: %@", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (uint64_t)_shouldAdmitContentFromBundleIdentifier:(void *)identifier
{
  v3 = a2;
  v4 = v3;
  if (identifier)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    identifier = identifier[1];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__HVContentAdmission__shouldAdmitContentFromBundleIdentifier___block_invoke;
    v6[3] = &unk_278968D18;
    v8 = &v9;
    v7 = v3;
    [identifier runWithLockAcquired:v6];
    LOBYTE(identifier) = *(v10 + 24);

    _Block_object_dispose(&v9, 8);
  }

  return identifier & 1;
}

void __62__HVContentAdmission__shouldAdmitContentFromBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4[1] containsObject:*(a1 + 32)])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v4[2] containsObject:*(a1 + 32)] ^ 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

+ (void)disableBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[HVContentAdmission sharedInstance];
  [(HVContentAdmission *)v4 _disableBundleIdentifier:identifierCopy];
}

+ (void)updateConfigurableBundleIdentifierDenyList:(id)list
{
  listCopy = list;
  v4 = +[HVContentAdmission sharedInstance];
  [(HVContentAdmission *)v4 _refreshBundleIdentifierDenyListsWithLearnFromDenyList:listCopy configurableDenyList:?];
}

+ (void)registerConfigurationAsset:(id)asset
{
  assetCopy = asset;
  val = +[HVContentAdmission sharedInstance];
  v4 = assetCopy;
  if (val)
  {
    objc_initWeak(&location, val);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__HVContentAdmission__registerConfigurationAsset___block_invoke;
    v15[3] = &unk_278968C78;
    objc_copyWeak(&v16, &location);
    v5 = MEMORY[0x238381E60](v15);
    v6 = val[1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__HVContentAdmission__registerConfigurationAsset___block_invoke_58;
    v13[3] = &unk_278968C50;
    v7 = v4;
    v14 = v7;
    [v6 runWithLockAcquired:v13];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__HVContentAdmission__registerConfigurationAsset___block_invoke_2;
    v11[3] = &unk_278968CA0;
    v8 = v5;
    v12 = v8;
    v9 = [v7 registerUpdateHandler:v11];
    (*(v8 + 2))(v8, v7);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __50__HVContentAdmission__registerConfigurationAsset___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 filesystemPathForAssetDataRelativePath:@"ProactiveHarvestingConfig.plist"];
    if (v5)
    {
      v17 = 0;
      v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v5 options:0 error:&v17];
      v7 = v17;
      if (v6)
      {
        v16 = 0;
        v8 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v16];
        v9 = v16;

        if (v9)
        {
          v10 = hv_default_log_handle();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v19 = v6;
            v20 = 2112;
            v21 = v9;
            _os_log_error_impl(&dword_2321EC000, v10, OS_LOG_TYPE_ERROR, "HVContentAdmission Error deserializing ProactiveHarvesting config plist %@: %@", buf, 0x16u);
          }
        }

        else
        {
          v11 = objc_alloc(MEMORY[0x277CBEB98]);
          v12 = [v8 objectForKeyedSubscript:@"BundleIdentifierDenyList"];
          v10 = [v11 initWithArray:v12];

          v13 = hv_default_log_handle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v10 count];
            *buf = 134217984;
            v19 = v14;
            _os_log_impl(&dword_2321EC000, v13, OS_LOG_TYPE_DEFAULT, "HVContentAdmission received %tu disabled bundleIds from mobile asset", buf, 0xCu);
          }

          [(HVContentAdmission *)WeakRetained _refreshBundleIdentifierDenyListsWithLearnFromDenyList:v10 configurableDenyList:?];
        }
      }

      else
      {
        v8 = hv_default_log_handle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v19 = v5;
          v20 = 2112;
          v21 = v7;
          _os_log_error_impl(&dword_2321EC000, v8, OS_LOG_TYPE_ERROR, "HVContentAdmission Error obtaining data for ProactiveHarvesting config plist %@: %@", buf, 0x16u);
        }

        v9 = v7;
      }
    }

    else
    {
      v9 = hv_default_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = @"ProactiveHarvestingConfig.plist";
        _os_log_error_impl(&dword_2321EC000, v9, OS_LOG_TYPE_ERROR, "HVContentAdmission Error finding ProactiveHarvesting config plist (path: %@)", buf, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)addContentAdmissionObserver:(id)observer
{
  observerCopy = observer;
  v6 = +[HVContentAdmission sharedInstance];
  v4 = observerCopy;
  if (v6)
  {
    v5 = v6[1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__HVContentAdmission_addContentAdmissionObserver___block_invoke;
    v7[3] = &unk_278968C50;
    v8 = v4;
    [v5 runWithLockAcquired:v7];
  }
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v4 = +[HVContentAdmission sharedInstance];
  }
}

@end