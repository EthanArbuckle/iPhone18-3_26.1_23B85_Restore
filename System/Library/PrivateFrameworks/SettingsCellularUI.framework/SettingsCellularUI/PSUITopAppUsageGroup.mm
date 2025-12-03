@interface PSUITopAppUsageGroup
- (PSUITopAppUsageGroup)initWithHostController:(id)controller cellularManagementCache:(id)cache dataUsageStatisticsCache:(id)statisticsCache carrierSpaceManager:(id)manager appsAndCategoriesSubgroup:(id)subgroup;
- (id)specifiers;
- (void)clearStoredSpecifiers;
- (void)createSpecifiers;
@end

@implementation PSUITopAppUsageGroup

- (PSUITopAppUsageGroup)initWithHostController:(id)controller cellularManagementCache:(id)cache dataUsageStatisticsCache:(id)statisticsCache carrierSpaceManager:(id)manager appsAndCategoriesSubgroup:(id)subgroup
{
  controllerCopy = controller;
  cacheCopy = cache;
  statisticsCacheCopy = statisticsCache;
  managerCopy = manager;
  subgroupCopy = subgroup;
  v28.receiver = self;
  v28.super_class = PSUITopAppUsageGroup;
  v17 = [(PSUITopAppUsageGroup *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_hostController, controller);
    objc_storeStrong(&v18->_managementCache, cache);
    objc_storeStrong(&v18->_statisticsCache, statisticsCache);
    objc_storeStrong(&v18->_carrierSpaceManager, manager);
    objc_storeStrong(&v18->_appsAndCategoriesSubgroup, subgroup);
    v19 = MEMORY[0x277D3FAD8];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"APP_DATA_USAGE" value:&stru_287733598 table:@"Cellular"];
    v22 = [v19 groupSpecifierWithID:@"APP_DATA_USAGE" name:v21];
    loadingGroupSpecifier = v18->_loadingGroupSpecifier;
    v18->_loadingGroupSpecifier = v22;

    v24 = [objc_alloc(MEMORY[0x277D3FAD8]) initWithName:&stru_287733598 target:0 set:0 get:0 detail:0 cell:15 edit:{0, managerCopy}];
    spinnerSpecifier = v18->_spinnerSpecifier;
    v18->_spinnerSpecifier = v24;

    v18->_specifierCreationInProgress = 0;
  }

  return v18;
}

- (id)specifiers
{
  v8[2] = *MEMORY[0x277D85DE8];
  createdSpecifiers = self->_createdSpecifiers;
  if (createdSpecifiers && [(NSArray *)createdSpecifiers count])
  {
    v4 = self->_createdSpecifiers;
  }

  else
  {
    [(PSUITopAppUsageGroup *)self createSpecifiers];
    spinnerSpecifier = self->_spinnerSpecifier;
    v8[0] = self->_loadingGroupSpecifier;
    v8[1] = spinnerSpecifier;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)createSpecifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_specifierCreationInProgress)
  {
    getLogger = [(PSUITopAppUsageGroup *)selfCopy getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Refresh already in progress", buf, 2u);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy->_specifierCreationInProgress = 1;
    objc_sync_exit(selfCopy);

    objc_initWeak(buf, selfCopy);
    v4 = dispatch_get_global_queue(25, 0);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __40__PSUITopAppUsageGroup_createSpecifiers__block_invoke;
    v5[3] = &unk_279BAA050;
    objc_copyWeak(&v6, buf);
    v5[4] = selfCopy;
    dispatch_async(v4, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __40__PSUITopAppUsageGroup_createSpecifiers__block_invoke(uint64_t a1)
{
  v95 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = [v3 getLogger];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "Starting specifier creation", buf, 2u);
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [WeakRetained managementCache];
    v7 = [v6 hasManagedCellularData];

    if (v7)
    {
      v8 = objc_loadWeakRetained((a1 + 40));
      v9 = [v8 getLogger];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEBUG, "Cellular Data is Managed, showing MDM Management Explanation group.", buf, 2u);
      }

      v10 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DATA_USAGE_MANAGED_GROUP"];
      v11 = [WeakRetained managementCache];
      v12 = [v11 mdmName];

      v13 = MEMORY[0x277CCACA8];
      v14 = *(a1 + 32);
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"APP_DATA_USAGE_MANAGED" value:&stru_287733598 table:@"Cellular"];
      v17 = [v13 stringWithFormat:v16, v12];
      [v10 setProperty:v17 forKey:*MEMORY[0x277D3FF88]];

      [v5 addObject:v10];
    }

    v18 = [WeakRetained groupSpecifierTitle];

    if (!v18)
    {
      v19 = [MEMORY[0x277D75418] currentDevice];
      v20 = [v19 sf_isChinaRegionCellularDevice];
      v21 = *(a1 + 32);
      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = v22;
      if (v20)
      {
        v24 = @"APP_WIRELESS_DATA_USAGE";
      }

      else
      {
        v24 = @"APP_DATA_USAGE";
      }

      v25 = [v22 localizedStringForKey:v24 value:&stru_287733598 table:@"Cellular"];
      [WeakRetained setGroupSpecifierTitle:v25];
    }

    v26 = MEMORY[0x277D3FAD8];
    v27 = [WeakRetained groupSpecifierTitle];
    v28 = [v26 groupSpecifierWithID:@"APP_DATA_USAGE" name:v27];

    [v5 addObject:v28];
    v29 = [WeakRetained statisticsCache];
    if ([v29 useCalendarMonthBillingCycle])
    {
    }

    else
    {
      v36 = [WeakRetained statisticsCache];
      if ([v36 billingCycleSupported])
      {
LABEL_21:

        goto LABEL_22;
      }

      v61 = [WeakRetained carrierSpaceManager];
      v62 = [v61 capabilities];
      v63 = [v62 supportsUsage];

      if (v63)
      {
LABEL_22:
        v37 = [WeakRetained appsAndCategoriesSubgroup];
        v38 = +[CTUIDataUsageSorting usageComparator];
        v39 = [v37 specifiersWithSortComparator:v38];

        v40 = [v39 count];
        if (v40 < 5)
        {
          v45 = v40;
          if (!v40)
          {
            v64 = [WeakRetained statisticsCache];
            v59 = [v64 bundleIDsForAppType:0];

            v65 = [v59 count];
            v66 = objc_loadWeakRetained((a1 + 40));
            v67 = [v66 getLogger];

            v68 = os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);
            if (v65)
            {
              if (v68)
              {
                v69 = [v59 count];
                *buf = 134217984;
                v94 = v69;
                _os_log_impl(&dword_2658DE000, v67, OS_LOG_TYPE_DEFAULT, "No app usage specifiers, but statistics cache reports %lu installed apps. Will attempt to re-create app specifiers.", buf, 0xCu);
              }

              v70 = dispatch_get_global_queue(25, 0);
              v90[0] = MEMORY[0x277D85DD0];
              v90[1] = 3221225472;
              v90[2] = __40__PSUITopAppUsageGroup_createSpecifiers__block_invoke_23;
              v90[3] = &unk_279BA9D58;
              v91 = WeakRetained;
              dispatch_async(v70, v90);

              v71 = v91;
            }

            else
            {
              if (v68)
              {
                *buf = 0;
                _os_log_impl(&dword_2658DE000, v67, OS_LOG_TYPE_DEFAULT, "No app usage specifiers, adding No Usage specifier", buf, 2u);
              }

              v72 = [MEMORY[0x277D75418] currentDevice];
              v73 = [v72 sf_isChinaRegionCellularDevice];
              v74 = *(a1 + 32);
              v75 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v76 = v75;
              if (v73)
              {
                v77 = @"APPS_APPEAR_AFTER_WIRELESS_DATA_USAGE";
              }

              else
              {
                v77 = @"APPS_APPEAR_AFTER_CELLULAR_USAGE";
              }

              v71 = [v75 localizedStringForKey:v77 value:&stru_287733598 table:@"Cellular"];

              v78 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v71 target:0 set:0 get:0 detail:0 cell:3 edit:0];
              [v78 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
              [v5 addObject:v78];
              [WeakRetained setCreatedSpecifiers:v5];
              [WeakRetained setSpecifierCreationInProgress:0];
              v87[0] = MEMORY[0x277D85DD0];
              v87[1] = 3221225472;
              v87[2] = __40__PSUITopAppUsageGroup_createSpecifiers__block_invoke_31;
              v87[3] = &unk_279BAA050;
              objc_copyWeak(&v89, (a1 + 40));
              v88 = WeakRetained;
              dispatch_async(MEMORY[0x277D85CD0], v87);

              objc_destroyWeak(&v89);
            }

            goto LABEL_42;
          }

          v46 = objc_loadWeakRetained((a1 + 40));
          v47 = [v46 getLogger];

          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v94 = v45;
            _os_log_debug_impl(&dword_2658DE000, v47, OS_LOG_TYPE_DEBUG, "Adding %lu app specifiers", buf, 0xCu);
          }

          v79 = a1;

          [v5 addObjectsFromArray:v39];
        }

        else
        {
          v41 = objc_loadWeakRetained((a1 + 40));
          v42 = [v41 getLogger];

          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v94 = 5;
            _os_log_debug_impl(&dword_2658DE000, v42, OS_LOG_TYPE_DEBUG, "Adding %lu app specifiers", buf, 0xCu);
          }

          v79 = a1;

          for (i = 0; i != 5; ++i)
          {
            v44 = [v39 objectAtIndexedSubscript:i];
            [v5 addObject:v44];
          }
        }

        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v48 = v5;
        v49 = [v48 countByEnumeratingWithState:&v83 objects:v92 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v84;
          do
          {
            for (j = 0; j != v50; ++j)
            {
              if (*v84 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v83 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v54 = [WeakRetained hostController];
                [v53 setHostController:v54];
              }
            }

            v50 = [v48 countByEnumeratingWithState:&v83 objects:v92 count:16];
          }

          while (v50);
        }

        v55 = MEMORY[0x277D3FAD8];
        v56 = *(v79 + 32);
        v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v58 = [v57 localizedStringForKey:@"SHOW_ALL" value:&stru_287733598 table:@"Cellular"];
        v59 = [v55 preferenceSpecifierNamed:v58 target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

        [v59 setProperty:&unk_287749008 forKey:*MEMORY[0x277D4D898]];
        [v59 setIdentifier:@"SHOW_ALL"];
        [v48 addObject:v59];
        [WeakRetained setCreatedSpecifiers:v48];
        [WeakRetained setSpecifierCreationInProgress:0];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __40__PSUITopAppUsageGroup_createSpecifiers__block_invoke_38;
        block[3] = &unk_279BAA050;
        objc_copyWeak(&v82, (v79 + 40));
        v81 = WeakRetained;
        dispatch_async(MEMORY[0x277D85CD0], block);

        objc_destroyWeak(&v82);
LABEL_42:

        goto LABEL_43;
      }
    }

    v30 = objc_loadWeakRetained((a1 + 40));
    v31 = [v30 getLogger];

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2658DE000, v31, OS_LOG_TYPE_DEBUG, "Adding Total Usage specifiers", buf, 2u);
    }

    v32 = [WeakRetained totalUsageSubgroup];

    if (!v32)
    {
      v33 = [PSUITotalCellularUsageSubgroup alloc];
      v34 = [WeakRetained statisticsCache];
      v35 = [(PSUITotalCellularUsageSubgroup *)v33 initWithStatisticsCache:v34 andBillingPeriodSource:0 usageType:0];
      [WeakRetained setTotalUsageSubgroup:v35];
    }

    v29 = [WeakRetained totalUsageSubgroup];
    v36 = [v29 specifiers];
    [v5 addObjectsFromArray:v36];
    goto LABEL_21;
  }

LABEL_43:

  v60 = *MEMORY[0x277D85DE8];
}

uint64_t __40__PSUITopAppUsageGroup_createSpecifiers__block_invoke_23(uint64_t a1)
{
  [*(a1 + 32) setSpecifierCreationInProgress:0];
  v2 = *(a1 + 32);

  return [v2 createSpecifiers];
}

void __40__PSUITopAppUsageGroup_createSpecifiers__block_invoke_31(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained getLogger];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Top App Usage Group specifier creation complete, asking host to reload.", v5, 2u);
  }

  v4 = [*(a1 + 32) hostController];
  [v4 reloadSpecifiers];
}

void __40__PSUITopAppUsageGroup_createSpecifiers__block_invoke_38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained getLogger];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Top App Usage Group specifier creation complete, asking host to reload.", v5, 2u);
  }

  v4 = [*(a1 + 32) hostController];
  [v4 reloadSpecifiers];
}

- (void)clearStoredSpecifiers
{
  createdSpecifiers = self->_createdSpecifiers;
  self->_createdSpecifiers = 0;
  MEMORY[0x2821F96F8]();
}

@end