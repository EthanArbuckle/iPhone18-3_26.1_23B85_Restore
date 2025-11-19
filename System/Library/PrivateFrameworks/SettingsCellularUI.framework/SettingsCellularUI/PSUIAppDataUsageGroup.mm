@interface PSUIAppDataUsageGroup
- (PSListController)hostController;
- (PSSpecifier)groupSpecifier;
- (PSUIAppDataUsageGroup)initWithListController:(id)a3 groupSpecifier:(id)a4;
- (id)specifiers;
- (void)calculateUsage;
- (void)didFailToSetPolicyForSpecifier:(id)a3;
@end

@implementation PSUIAppDataUsageGroup

- (PSUIAppDataUsageGroup)initWithListController:(id)a3 groupSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PSUIAppDataUsageGroup;
  v8 = [(PSUIAppDataUsageGroup *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_hostController, v6);
    objc_storeWeak(&v9->_groupSpecifier, v7);
    v10 = [[CTUIListLoadingGroup alloc] initWithHostController:v6 groupSpecifier:v7];
    loadingGroup = v9->_loadingGroup;
    v9->_loadingGroup = v10;
  }

  return v9;
}

- (id)specifiers
{
  v2 = [(PSUIAppDataUsageGroup *)self loadingGroup];
  v3 = [v2 specifiers];

  return v3;
}

- (void)didFailToSetPolicyForSpecifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__PSUIAppDataUsageGroup_didFailToSetPolicyForSpecifier___block_invoke;
  v6[3] = &unk_279BA9D30;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __56__PSUIAppDataUsageGroup_didFailToSetPolicyForSpecifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hostController];
  [v2 reloadSpecifier:*(a1 + 40)];
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

- (void)calculateUsage
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x277D4D860] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__PSUIAppDataUsageGroup_calculateUsage__block_invoke;
  v4[3] = &unk_279BA9DA8;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  [v3 fetchDeviceDataUsageWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__PSUIAppDataUsageGroup_calculateUsage__block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[PSUIAppDataUsageGroup calculateUsage]_block_invoke";
    _os_log_impl(&dword_2658DE000, v2, OS_LOG_TYPE_DEFAULT, "%s creating specifiers", &buf, 0xCu);
  }

  v3 = [PSUIAppsAndCategoriesDataUsageSubgroup alloc];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277D4D860] sharedInstance];
  v6 = [MEMORY[0x277D4D840] sharedInstance];
  v7 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)v3 initWithPolicySpecifierDelegate:v4 statisticsCache:v5 policyCache:v6 usageType:0];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy_;
  v43 = __Block_byref_object_dispose_;
  v8 = +[CTUIDataUsageSorting userSelectedComparator];
  v44 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)v7 specifiersWithSortComparator:v8];

  v9 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v38 = 136315138;
    v39 = "[PSUIAppDataUsageGroup calculateUsage]_block_invoke";
    _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "%s prefetching policies", v38, 0xCu);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = *(*(&buf + 1) + 40);
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v11)
  {
    v12 = *v33;
    do
    {
      v13 = 0;
      do
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v32 + 1) + 8 * v13);
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained prefetchResourcesFor:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v11);
  }

  if ([*(*(&buf + 1) + 40) count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = *(*(&buf + 1) + 40);
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v17)
    {
      v18 = *v28;
      do
      {
        v19 = 0;
        do
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v27 + 1) + 8 * v19);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [*(a1 + 32) hostController];
            [v20 setHostController:v21];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v16 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v17);
    }

    v22 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 136315138;
      v39 = "[PSUIAppDataUsageGroup calculateUsage]_block_invoke_2";
      _os_log_impl(&dword_2658DE000, v22, OS_LOG_TYPE_DEFAULT, "%s dispatching app specifiers update to main thread", v38, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PSUIAppDataUsageGroup_calculateUsage__block_invoke_16;
    block[3] = &unk_279BA9D80;
    block[4] = *(a1 + 32);
    block[5] = &buf;
    objc_copyWeak(&v26, (a1 + 40));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v26);
  }

  else
  {
    v23 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 136315138;
      v39 = "[PSUIAppDataUsageGroup calculateUsage]_block_invoke";
      _os_log_impl(&dword_2658DE000, v23, OS_LOG_TYPE_DEFAULT, "%s no apps to show", v38, 0xCu);
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __39__PSUIAppDataUsageGroup_calculateUsage__block_invoke_5;
    v31[3] = &unk_279BA9D58;
    v31[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v31);
  }

  _Block_object_dispose(&buf, 8);

  v24 = *MEMORY[0x277D85DE8];
}

void __39__PSUIAppDataUsageGroup_calculateUsage__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) groupSpecifier];
  [v2 setName:&stru_287733598];

  v6 = [*(a1 + 32) groupSpecifier];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"APPS_APPEAR_AFTER_WIRELESS_DATA_USAGE" value:&stru_287733598 table:@"Cellular"];
  [v6 setProperty:v5 forKey:*MEMORY[0x277D3FF88]];
}

void __39__PSUIAppDataUsageGroup_calculateUsage__block_invoke_16(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Sort options" target:0 set:0 get:0 detail:0 cell:4 edit:0];
  [v2 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v17[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v4 = [v3 arrayByAddingObjectsFromArray:*(*(*(a1 + 40) + 8) + 40)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"USE_WIRELESS_DATA" value:&stru_287733598 table:@"Cellular"];
  v10 = [*(a1 + 32) groupSpecifier];
  [v10 setName:v9];

  v11 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[PSUIAppDataUsageGroup calculateUsage]_block_invoke";
    _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "%s updating app specifiers on main thread", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v13 = [WeakRetained loadingGroup];
  [v13 setSpecifiers:*(*(*(a1 + 40) + 8) + 40)];

  v14 = *MEMORY[0x277D85DE8];
}

- (PSSpecifier)groupSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_groupSpecifier);

  return WeakRetained;
}

@end