@interface PSUIAppDataUsageSpecifierFactory
- (Class)_bundleClassForHotspotDataUsage;
- (PSAppCellularUsageSpecifierDelegate)policySpecifierDelegate;
- (PSBillingPeriodSelectorSpecifierDelegate)billingCycleDelegate;
- (PSUIAppDataUsageSpecifierFactory)initWithGroupSpecifierTitle:(id)title managementCache:(id)cache statisticsCache:(id)statisticsCache carrierSpaceManager:(id)manager usageType:(unint64_t)type billingCycleDelegate:(id)delegate policySpecifierDelegate:(id)specifierDelegate;
- (id)contentSpecifiers;
- (id)headerSpecifiers;
- (void)addAppUsageSpecifiersToContentSpecifiers:(id)specifiers;
- (void)addLeadingSpecifiersToContentSpecifiers:(id)specifiers;
- (void)addTrailingSpecifiersToContentSpecifiers:(id)specifiers;
- (void)refreshOrderingOfContentSpecifiers;
- (void)setGroupSpecifierTitle:(id)title;
@end

@implementation PSUIAppDataUsageSpecifierFactory

- (PSUIAppDataUsageSpecifierFactory)initWithGroupSpecifierTitle:(id)title managementCache:(id)cache statisticsCache:(id)statisticsCache carrierSpaceManager:(id)manager usageType:(unint64_t)type billingCycleDelegate:(id)delegate policySpecifierDelegate:(id)specifierDelegate
{
  titleCopy = title;
  cacheCopy = cache;
  statisticsCacheCopy = statisticsCache;
  managerCopy = manager;
  delegateCopy = delegate;
  specifierDelegateCopy = specifierDelegate;
  v25.receiver = self;
  v25.super_class = PSUIAppDataUsageSpecifierFactory;
  v19 = [(PSUIAppDataUsageSpecifierFactory *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_managementCache, cache);
    objc_storeStrong(&v20->_statisticsCache, statisticsCache);
    objc_storeStrong(&v20->_carrierSpaceManager, manager);
    v20->_usageType = type;
    objc_storeWeak(&v20->_billingCycleDelegate, delegateCopy);
    objc_storeWeak(&v20->_policySpecifierDelegate, specifierDelegateCopy);
    objc_storeStrong(&v20->_groupSpecifierTitle, title);
  }

  return v20;
}

- (id)headerSpecifiers
{
  savedHeaderSpecifiers = self->_savedHeaderSpecifiers;
  if (!savedHeaderSpecifiers)
  {
    v4 = objc_opt_new();
    if ([(PSCellularManagementCache *)self->_managementCache hasManagedCellularData])
    {
      v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DATA_USAGE_MANAGED_GROUP"];
      mdmName = [(PSCellularManagementCache *)self->_managementCache mdmName];
      v7 = MEMORY[0x277CCACA8];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"APP_DATA_USAGE_MANAGED" value:&stru_287733598 table:@"Cellular"];
      v10 = [v7 stringWithFormat:v9, mdmName];
      [v5 setProperty:v10 forKey:*MEMORY[0x277D3FF88]];

      [(NSArray *)v4 addObject:v5];
    }

    v11 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"APP_DATA_USAGE" name:self->_groupSpecifierTitle];
    [(NSArray *)v4 addObject:v11];
    v12 = self->_savedHeaderSpecifiers;
    self->_savedHeaderSpecifiers = v4;

    savedHeaderSpecifiers = self->_savedHeaderSpecifiers;
  }

  return savedHeaderSpecifiers;
}

- (id)contentSpecifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_savedContentSpecifiers)
  {
    if ([(PSDataUsageStatisticsCache *)selfCopy->_statisticsCache billingCycleSupported])
    {
      [(PSBillingPeriodSelectorSpecifier *)selfCopy->_billingPeriodSelectorSpecifier refreshSelectorWithStatisticsCache:selfCopy->_statisticsCache];
    }
  }

  else
  {
    getLogger = [(PSUIAppDataUsageSpecifierFactory *)selfCopy getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Creating app usage specifiers", buf, 2u);
    }

    v4 = objc_alloc_init(PSUICellularUsageContentSpecifiers);
    [(PSUIAppDataUsageSpecifierFactory *)selfCopy addLeadingSpecifiersToContentSpecifiers:v4];
    [(PSUIAppDataUsageSpecifierFactory *)selfCopy addAppUsageSpecifiersToContentSpecifiers:v4];
    [(PSUIAppDataUsageSpecifierFactory *)selfCopy addTrailingSpecifiersToContentSpecifiers:v4];
    savedContentSpecifiers = selfCopy->_savedContentSpecifiers;
    selfCopy->_savedContentSpecifiers = v4;
  }

  objc_sync_exit(selfCopy);

  getLogger2 = [(PSUIAppDataUsageSpecifierFactory *)selfCopy getLogger];
  if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Returning saved specifiers", v9, 2u);
  }

  specifiers = [(PSUICellularUsageContentSpecifiers *)selfCopy->_savedContentSpecifiers specifiers];

  return specifiers;
}

- (void)addLeadingSpecifiersToContentSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v5 = objc_opt_new();
  billingCycleSupported = [(PSDataUsageStatisticsCache *)self->_statisticsCache billingCycleSupported];
  getLogger = [(PSUIAppDataUsageSpecifierFactory *)self getLogger];
  v8 = os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT);
  if (billingCycleSupported)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Billing cycle supported, adding billing period selector.", buf, 2u);
    }

    if (!self->_billingPeriodSelectorSpecifier)
    {
      v9 = [objc_alloc(MEMORY[0x277D4D848]) initWithStatisticsCache:self->_statisticsCache];
      billingPeriodSelectorSpecifier = self->_billingPeriodSelectorSpecifier;
      self->_billingPeriodSelectorSpecifier = v9;
    }

    WeakRetained = objc_loadWeakRetained(&self->_billingCycleDelegate);
    [(PSBillingPeriodSelectorSpecifier *)self->_billingPeriodSelectorSpecifier setDelegate:WeakRetained];

    [v5 insertObject:self->_billingPeriodSelectorSpecifier atIndex:0];
    if ([(PSDataUsageStatisticsCache *)self->_statisticsCache useCalendarMonthBillingCycle])
    {
      getLogger2 = [(PSUIAppDataUsageSpecifierFactory *)self getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Using calendar month billing cycle and adding total usage subgroup", v30, 2u);
      }

      p_totalUsageSubgroup = &self->_totalUsageSubgroup;
      totalUsageSubgroup = self->_totalUsageSubgroup;
      if (totalUsageSubgroup)
      {
        v15 = self->_billingPeriodSelectorSpecifier;
LABEL_18:
        [(PSUITotalCellularUsageSubgroup *)totalUsageSubgroup setBillingPeriodSource:v15];
LABEL_22:
        specifiers = [(PSUITotalCellularUsageSubgroup *)*p_totalUsageSubgroup specifiers];
        [v5 addObjectsFromArray:specifiers];

        goto LABEL_23;
      }

      v19 = [PSUITotalCellularUsageSubgroup alloc];
      statisticsCache = self->_statisticsCache;
      v21 = self->_billingPeriodSelectorSpecifier;
      usageType = self->_usageType;
      goto LABEL_21;
    }
  }

  else
  {
    if (v8)
    {
      *v29 = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Billing cycle not supported, adding standard total app usage headers.", v29, 2u);
    }

    capabilities = [(PSUICarrierSpaceManager *)self->_carrierSpaceManager capabilities];
    supportsUsage = [capabilities supportsUsage];

    if ((supportsUsage & 1) == 0)
    {
      getLogger3 = [(PSUIAppDataUsageSpecifierFactory *)self getLogger];
      if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEFAULT, "carrier space usage not supported, adding local total usage headers", v28, 2u);
      }

      p_totalUsageSubgroup = &self->_totalUsageSubgroup;
      totalUsageSubgroup = self->_totalUsageSubgroup;
      if (totalUsageSubgroup)
      {
        v15 = 0;
        goto LABEL_18;
      }

      v19 = [PSUITotalCellularUsageSubgroup alloc];
      statisticsCache = self->_statisticsCache;
      usageType = self->_usageType;
      v21 = 0;
LABEL_21:
      v23 = [(PSUITotalCellularUsageSubgroup *)v19 initWithStatisticsCache:statisticsCache andBillingPeriodSource:v21 usageType:usageType];
      v24 = self->_totalUsageSubgroup;
      self->_totalUsageSubgroup = v23;

      goto LABEL_22;
    }
  }

LABEL_23:
  v26 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Sort options" target:0 set:0 get:0 detail:0 cell:4 edit:0];
  [v26 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v5 addObject:v26];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
  [specifiersCopy setLeadingContentSpecifiers:v27];
}

- (void)addAppUsageSpecifiersToContentSpecifiers:(id)specifiers
{
  v41 = *MEMORY[0x277D85DE8];
  specifiersCopy = specifiers;
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [PSUIAppsAndCategoriesDataUsageSubgroup alloc];
  WeakRetained = objc_loadWeakRetained(&self->_policySpecifierDelegate);
  statisticsCache = self->_statisticsCache;
  mEMORY[0x277D4D840] = [MEMORY[0x277D4D840] sharedInstance];
  v8 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)v4 initWithPolicySpecifierDelegate:WeakRetained statisticsCache:statisticsCache policyCache:mEMORY[0x277D4D840] usageType:self->_usageType];

  v9 = +[CTUIDataUsageSorting userSelectedComparator];
  v27 = v8;
  v10 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)v8 specifiersWithSortComparator:v9];

  _bundleClassForHotspotDataUsage = [(PSUIAppDataUsageSpecifierFactory *)self _bundleClassForHotspotDataUsage];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        [v16 setBillingPeriodSource:self->_billingPeriodSelectorSpecifier];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          subcategorySpecifiers = [v16 subcategorySpecifiers];
          v18 = [subcategorySpecifiers countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v32;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v32 != v20)
                {
                  objc_enumerationMutation(subcategorySpecifiers);
                }

                [*(*(&v31 + 1) + 8 * j) setBillingPeriodSource:self->_billingPeriodSelectorSpecifier];
              }

              v19 = [subcategorySpecifiers countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v19);
          }
        }

        else
        {
          v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          principalClass = [v22 principalClass];

          if (_bundleClassForHotspotDataUsage && principalClass == _bundleClassForHotspotDataUsage)
          {
            [v16 setBillingPeriodSource:self->_billingPeriodSelectorSpecifier];
            continue;
          }

          subcategorySpecifiers = [v16 bundleID];
          [(NSArray *)v29 addObject:subcategorySpecifiers];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v13);
  }

  v24 = [MEMORY[0x277CBEB18] arrayWithArray:obj];
  [specifiersCopy setAppSpecifiers:v24];

  bundleIDs = self->_bundleIDs;
  self->_bundleIDs = v29;

  v26 = *MEMORY[0x277D85DE8];
}

- (void)addTrailingSpecifiersToContentSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v5 = objc_opt_new();
  appSpecifiers = [specifiersCopy appSpecifiers];
  v7 = [appSpecifiers count];

  if (!v7)
  {
    getLogger = [(PSUIAppDataUsageSpecifierFactory *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "No app usage specifiers, adding No Usage specifier", buf, 2u);
    }

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    sf_isChinaRegionCellularDevice = [currentDevice sf_isChinaRegionCellularDevice];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = v11;
    if (sf_isChinaRegionCellularDevice)
    {
      v13 = @"APPS_APPEAR_AFTER_WIRELESS_DATA_USAGE";
    }

    else
    {
      v13 = @"APPS_APPEAR_AFTER_CELLULAR_USAGE";
    }

    v14 = [v11 localizedStringForKey:v13 value:&stru_287733598 table:@"Cellular"];

    v15 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:0 set:0 get:0 detail:0 cell:3 edit:0];
    [v15 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    [v5 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
  [specifiersCopy setTrailingContentSpecifiers:v16];
}

- (void)refreshOrderingOfContentSpecifiers
{
  getLogger = [(PSUIAppDataUsageSpecifierFactory *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Sorting app specifiers", v6, 2u);
  }

  appSpecifiers = [(PSUICellularUsageContentSpecifiers *)self->_savedContentSpecifiers appSpecifiers];
  v5 = +[CTUIDataUsageSorting userSelectedComparator];
  [appSpecifiers sortUsingComparator:v5];
}

- (void)setGroupSpecifierTitle:(id)title
{
  objc_storeStrong(&self->_groupSpecifierTitle, title);
  titleCopy = title;
  savedContentSpecifiers = self->_savedContentSpecifiers;
  self->_savedContentSpecifiers = 0;

  savedHeaderSpecifiers = self->_savedHeaderSpecifiers;
  self->_savedHeaderSpecifiers = 0;
}

- (Class)_bundleClassForHotspotDataUsage
{
  if (_os_feature_enabled_impl())
  {
    v2 = PSBundlePathForPreferenceBundle();
    v3 = MEMORY[0x277CCA8D8];
    v5 = v4 = v2;
    v6 = [v3 bundleWithPath:v5];

    [v6 load];
    principalClass = [v6 principalClass];
  }

  else
  {
    principalClass = 0;
  }

  return principalClass;
}

- (PSBillingPeriodSelectorSpecifierDelegate)billingCycleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_billingCycleDelegate);

  return WeakRetained;
}

- (PSAppCellularUsageSpecifierDelegate)policySpecifierDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_policySpecifierDelegate);

  return WeakRetained;
}

@end