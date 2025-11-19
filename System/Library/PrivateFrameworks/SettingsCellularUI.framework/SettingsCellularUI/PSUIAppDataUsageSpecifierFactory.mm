@interface PSUIAppDataUsageSpecifierFactory
- (Class)_bundleClassForHotspotDataUsage;
- (PSAppCellularUsageSpecifierDelegate)policySpecifierDelegate;
- (PSBillingPeriodSelectorSpecifierDelegate)billingCycleDelegate;
- (PSUIAppDataUsageSpecifierFactory)initWithGroupSpecifierTitle:(id)a3 managementCache:(id)a4 statisticsCache:(id)a5 carrierSpaceManager:(id)a6 usageType:(unint64_t)a7 billingCycleDelegate:(id)a8 policySpecifierDelegate:(id)a9;
- (id)contentSpecifiers;
- (id)headerSpecifiers;
- (void)addAppUsageSpecifiersToContentSpecifiers:(id)a3;
- (void)addLeadingSpecifiersToContentSpecifiers:(id)a3;
- (void)addTrailingSpecifiersToContentSpecifiers:(id)a3;
- (void)refreshOrderingOfContentSpecifiers;
- (void)setGroupSpecifierTitle:(id)a3;
@end

@implementation PSUIAppDataUsageSpecifierFactory

- (PSUIAppDataUsageSpecifierFactory)initWithGroupSpecifierTitle:(id)a3 managementCache:(id)a4 statisticsCache:(id)a5 carrierSpaceManager:(id)a6 usageType:(unint64_t)a7 billingCycleDelegate:(id)a8 policySpecifierDelegate:(id)a9
{
  v24 = a3;
  v23 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  v25.receiver = self;
  v25.super_class = PSUIAppDataUsageSpecifierFactory;
  v19 = [(PSUIAppDataUsageSpecifierFactory *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_managementCache, a4);
    objc_storeStrong(&v20->_statisticsCache, a5);
    objc_storeStrong(&v20->_carrierSpaceManager, a6);
    v20->_usageType = a7;
    objc_storeWeak(&v20->_billingCycleDelegate, v17);
    objc_storeWeak(&v20->_policySpecifierDelegate, v18);
    objc_storeStrong(&v20->_groupSpecifierTitle, a3);
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
      v6 = [(PSCellularManagementCache *)self->_managementCache mdmName];
      v7 = MEMORY[0x277CCACA8];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"APP_DATA_USAGE_MANAGED" value:&stru_287733598 table:@"Cellular"];
      v10 = [v7 stringWithFormat:v9, v6];
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
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_savedContentSpecifiers)
  {
    if ([(PSDataUsageStatisticsCache *)v2->_statisticsCache billingCycleSupported])
    {
      [(PSBillingPeriodSelectorSpecifier *)v2->_billingPeriodSelectorSpecifier refreshSelectorWithStatisticsCache:v2->_statisticsCache];
    }
  }

  else
  {
    v3 = [(PSUIAppDataUsageSpecifierFactory *)v2 getLogger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Creating app usage specifiers", buf, 2u);
    }

    v4 = objc_alloc_init(PSUICellularUsageContentSpecifiers);
    [(PSUIAppDataUsageSpecifierFactory *)v2 addLeadingSpecifiersToContentSpecifiers:v4];
    [(PSUIAppDataUsageSpecifierFactory *)v2 addAppUsageSpecifiersToContentSpecifiers:v4];
    [(PSUIAppDataUsageSpecifierFactory *)v2 addTrailingSpecifiersToContentSpecifiers:v4];
    savedContentSpecifiers = v2->_savedContentSpecifiers;
    v2->_savedContentSpecifiers = v4;
  }

  objc_sync_exit(v2);

  v6 = [(PSUIAppDataUsageSpecifierFactory *)v2 getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "Returning saved specifiers", v9, 2u);
  }

  v7 = [(PSUICellularUsageContentSpecifiers *)v2->_savedContentSpecifiers specifiers];

  return v7;
}

- (void)addLeadingSpecifiersToContentSpecifiers:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(PSDataUsageStatisticsCache *)self->_statisticsCache billingCycleSupported];
  v7 = [(PSUIAppDataUsageSpecifierFactory *)self getLogger];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "Billing cycle supported, adding billing period selector.", buf, 2u);
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
      v12 = [(PSUIAppDataUsageSpecifierFactory *)self getLogger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        _os_log_impl(&dword_2658DE000, v12, OS_LOG_TYPE_DEFAULT, "Using calendar month billing cycle and adding total usage subgroup", v30, 2u);
      }

      p_totalUsageSubgroup = &self->_totalUsageSubgroup;
      totalUsageSubgroup = self->_totalUsageSubgroup;
      if (totalUsageSubgroup)
      {
        v15 = self->_billingPeriodSelectorSpecifier;
LABEL_18:
        [(PSUITotalCellularUsageSubgroup *)totalUsageSubgroup setBillingPeriodSource:v15];
LABEL_22:
        v25 = [(PSUITotalCellularUsageSubgroup *)*p_totalUsageSubgroup specifiers];
        [v5 addObjectsFromArray:v25];

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
      _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "Billing cycle not supported, adding standard total app usage headers.", v29, 2u);
    }

    v16 = [(PSUICarrierSpaceManager *)self->_carrierSpaceManager capabilities];
    v17 = [v16 supportsUsage];

    if ((v17 & 1) == 0)
    {
      v18 = [(PSUIAppDataUsageSpecifierFactory *)self getLogger];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&dword_2658DE000, v18, OS_LOG_TYPE_DEFAULT, "carrier space usage not supported, adding local total usage headers", v28, 2u);
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
  [v4 setLeadingContentSpecifiers:v27];
}

- (void)addAppUsageSpecifiersToContentSpecifiers:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [PSUIAppsAndCategoriesDataUsageSubgroup alloc];
  WeakRetained = objc_loadWeakRetained(&self->_policySpecifierDelegate);
  statisticsCache = self->_statisticsCache;
  v7 = [MEMORY[0x277D4D840] sharedInstance];
  v8 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)v4 initWithPolicySpecifierDelegate:WeakRetained statisticsCache:statisticsCache policyCache:v7 usageType:self->_usageType];

  v9 = +[CTUIDataUsageSorting userSelectedComparator];
  v27 = v8;
  v10 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)v8 specifiersWithSortComparator:v9];

  v11 = [(PSUIAppDataUsageSpecifierFactory *)self _bundleClassForHotspotDataUsage];
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
          v17 = [v16 subcategorySpecifiers];
          v18 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
                  objc_enumerationMutation(v17);
                }

                [*(*(&v31 + 1) + 8 * j) setBillingPeriodSource:self->_billingPeriodSelectorSpecifier];
              }

              v19 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v19);
          }
        }

        else
        {
          v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v23 = [v22 principalClass];

          if (v11 && v23 == v11)
          {
            [v16 setBillingPeriodSource:self->_billingPeriodSelectorSpecifier];
            continue;
          }

          v17 = [v16 bundleID];
          [(NSArray *)v29 addObject:v17];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v13);
  }

  v24 = [MEMORY[0x277CBEB18] arrayWithArray:obj];
  [v28 setAppSpecifiers:v24];

  bundleIDs = self->_bundleIDs;
  self->_bundleIDs = v29;

  v26 = *MEMORY[0x277D85DE8];
}

- (void)addTrailingSpecifiersToContentSpecifiers:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 appSpecifiers];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = [(PSUIAppDataUsageSpecifierFactory *)self getLogger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "No app usage specifiers, adding No Usage specifier", buf, 2u);
    }

    v9 = [MEMORY[0x277D75418] currentDevice];
    v10 = [v9 sf_isChinaRegionCellularDevice];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = v11;
    if (v10)
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
  [v4 setTrailingContentSpecifiers:v16];
}

- (void)refreshOrderingOfContentSpecifiers
{
  v3 = [(PSUIAppDataUsageSpecifierFactory *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Sorting app specifiers", v6, 2u);
  }

  v4 = [(PSUICellularUsageContentSpecifiers *)self->_savedContentSpecifiers appSpecifiers];
  v5 = +[CTUIDataUsageSorting userSelectedComparator];
  [v4 sortUsingComparator:v5];
}

- (void)setGroupSpecifierTitle:(id)a3
{
  objc_storeStrong(&self->_groupSpecifierTitle, a3);
  v7 = a3;
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
    v7 = [v6 principalClass];
  }

  else
  {
    v7 = 0;
  }

  return v7;
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