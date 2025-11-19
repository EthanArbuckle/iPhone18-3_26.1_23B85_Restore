@interface PSUIAppsAndCategoriesDataUsageSubgroup
- (PSAppCellularUsageSpecifierDelegate)specifierDelegate;
- (PSUIAppsAndCategoriesDataUsageSubgroup)initWithPolicySpecifierDelegate:(id)a3 statisticsCache:(id)a4 policyCache:(id)a5 usageType:(unint64_t)a6;
- (id)fetchPersonalHotspotDataUsageSpecifier;
- (id)specifiersWithSortComparator:(id)a3;
- (id)usageSpecifiersForAppType:(unint64_t)a3 bundleIDs:(id)a4;
- (void)addDataUsageCategorySpecifierToSpecifiers:(id)a3 appType:(unint64_t)a4;
@end

@implementation PSUIAppsAndCategoriesDataUsageSubgroup

- (PSUIAppsAndCategoriesDataUsageSubgroup)initWithPolicySpecifierDelegate:(id)a3 statisticsCache:(id)a4 policyCache:(id)a5 usageType:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = PSUIAppsAndCategoriesDataUsageSubgroup;
  v13 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_specifierDelegate, v10);
    objc_storeStrong(&v14->_statisticsCache, a4);
    objc_storeStrong(&v14->_policyCache, a5);
    v14->_usageType = a6;
  }

  return v14;
}

- (id)specifiersWithSortComparator:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSDataUsageStatisticsCache *)self->_statisticsCache bundleIDsForAppType:0];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count") + 5}];
  v7 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)self getLogger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = [v5 count];
    _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "Creating app specifiers for %lu installed bundle IDs", &v11, 0xCu);
  }

  v8 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)self usageSpecifiersForAppType:0 bundleIDs:v5];
  [v6 addObjectsFromArray:v8];

  [(PSUIAppsAndCategoriesDataUsageSubgroup *)self addDataUsageCategorySpecifierToSpecifiers:v6 appType:2];
  [(PSUIAppsAndCategoriesDataUsageSubgroup *)self addDataUsageCategorySpecifierToSpecifiers:v6 appType:3];
  [(PSUIAppsAndCategoriesDataUsageSubgroup *)self addDataUsageCategorySpecifierToSpecifiers:v6 appType:1];
  if (!self->_usageType)
  {
    [(PSUIAppsAndCategoriesDataUsageSubgroup *)self addDataUsageCategorySpecifierToSpecifiers:v6 appType:4];
  }

  [(PSUIAppsAndCategoriesDataUsageSubgroup *)self addDataUsageCategorySpecifierToSpecifiers:v6 appType:5];
  if (v4)
  {
    [v6 sortUsingComparator:v4];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)addDataUsageCategorySpecifierToSpecifiers:(id)a3 appType:(unint64_t)a4
{
  v10 = a3;
  v6 = [(PSDataUsageStatisticsCache *)self->_statisticsCache bundleIDsForAppType:a4];
  v7 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)self usageSpecifiersForAppType:a4 bundleIDs:v6];
  v8 = _os_feature_enabled_impl();
  if (a4 == 4 && v8)
  {
    v9 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)self fetchPersonalHotspotDataUsageSpecifier];
    if ([(PSUIDataUsageCategorySpecifier *)v9 count])
    {
      [v10 addObjectsFromArray:v9];
    }
  }

  else
  {
    if (![v7 count])
    {
      goto LABEL_8;
    }

    v9 = [[PSUIDataUsageCategorySpecifier alloc] initWithAppType:a4 usageType:self->_usageType subSpecifiers:v7];
    [v10 addObject:v9];
  }

LABEL_8:
}

- (id)usageSpecifiersForAppType:(unint64_t)a3 bundleIDs:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([v6 count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v8 = [(PSDataUsageStatisticsCache *)self->_statisticsCache displayNamesForBundleIDs:v6 appType:a3];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v41 = v6;
    v9 = v6;
    v49 = [v9 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (!v49)
    {
      goto LABEL_42;
    }

    v48 = *v51;
    v43 = v8;
    v44 = v7;
    v42 = v9;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v51 != v48)
        {
          objc_enumerationMutation(v9);
        }

        v11 = *(*(&v50 + 1) + 8 * v10);
        if (self->_usageType != 1 || (-[PSAppDataUsagePolicyCache policiesFor:](self->_policyCache, "policiesFor:", *(*(&v50 + 1) + 8 * v10)), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 satellite], v12, v13 != 2))
        {
          v14 = [v8 objectForKey:v11];
          v15 = v14;
          v16 = &stru_287733598;
          if (v14)
          {
            v16 = v14;
          }

          v17 = v16;

          if (a3 <= 2)
          {
            if (a3)
            {
              if (a3 != 1)
              {
                if (a3 == 2)
                {
                  v18 = MEMORY[0x277D4D870];
                  goto LABEL_20;
                }

                goto LABEL_30;
              }

              v19 = [objc_alloc(MEMORY[0x277D4D858]) initWithAppType:1 bundleID:v11 name:v17 statisticsCache:self->_statisticsCache usageType:self->_usageType];
              v25 = [(PSDataUsageStatisticsCache *)self->_statisticsCache usageForBundleID:v11 inPeriod:0];
              v47 = v25;
              if (v25)
              {
                v26 = v25;
                v46 = [v25 native];
                v27 = [v46 cellularHome];
                v28 = [v26 native];
                v45 = [v28 cellularRoaming] + v27;
                v29 = [v26 proxied];
                v30 = [v29 cellularHome];
                v31 = [v26 proxied];
                v32 = v45 + v30 + [v31 cellularRoaming];

                v33 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)self getLogger];
                v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
                if (v32)
                {
                  if (v34)
                  {
                    *buf = 138478083;
                    v55 = v11;
                    v56 = 2048;
                    v57 = v32;
                    v35 = v33;
                    v36 = "%{private}@ is an uninstalled app using %zu bytes";
                    v37 = 22;
                    goto LABEL_37;
                  }
                }

                else if (v34)
                {
                  *buf = 138477827;
                  v55 = v11;
                  v35 = v33;
                  v36 = "%{private}@ is an uninstalled app using zero bytes";
                  v37 = 12;
LABEL_37:
                  _os_log_impl(&dword_2658DE000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, v37);
                }

                v8 = v43;
                v7 = v44;
                v9 = v42;
              }

              else
              {
                v33 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)self getLogger];
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138477827;
                  v55 = v11;
                  _os_log_error_impl(&dword_2658DE000, v33, OS_LOG_TYPE_ERROR, "%{private}@ is an uninstalled app without usage?", buf, 0xCu);
                }
              }

              if (!v19)
              {
                goto LABEL_30;
              }

LABEL_29:
              [v7 addObject:v19];

              goto LABEL_30;
            }

LABEL_19:
            v18 = MEMORY[0x277D4D838];
LABEL_20:
            v19 = [v18 appSpecifierWithBundleID:v11 name:v17 statisticsCache:self->_statisticsCache usageType:self->_usageType];
            v20 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)self specifierDelegate];
            [v19 setDelegate:v20];

            if (!v19)
            {
LABEL_30:

              goto LABEL_31;
            }

            goto LABEL_29;
          }

          switch(a3)
          {
            case 3uLL:
              v21 = objc_alloc(MEMORY[0x277D4D858]);
              statisticsCache = self->_statisticsCache;
              usageType = self->_usageType;
              v24 = 3;
              break;
            case 4uLL:
              v21 = objc_alloc(MEMORY[0x277D4D858]);
              statisticsCache = self->_statisticsCache;
              usageType = self->_usageType;
              v24 = 4;
              break;
            case 5uLL:
              goto LABEL_19;
            default:
              goto LABEL_30;
          }

          v19 = [v21 initWithAppType:v24 bundleID:v11 name:v17 statisticsCache:statisticsCache usageType:usageType];
          if (!v19)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

LABEL_31:
        ++v10;
      }

      while (v49 != v10);
      v38 = [v9 countByEnumeratingWithState:&v50 objects:v58 count:16];
      v49 = v38;
      if (!v38)
      {
LABEL_42:

        v6 = v41;
        goto LABEL_44;
      }
    }
  }

  v7 = 0;
LABEL_44:

  v39 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)fetchPersonalHotspotDataUsageSpecifier
{
  v3 = PSBundlePathForPreferenceBundle();
  v4 = MEMORY[0x277CCA8D8];
  v6 = v5 = v3;
  v7 = [v4 bundleWithPath:v6];

  [v7 load];
  v8 = [v7 principalClass];
  v9 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)self specifierDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v11 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)self specifierDelegate];
  if ((isKindOfClass & 1) == 0)
  {
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)self specifierDelegate];
      v11 = [v13 hostController];
    }

    else
    {
      v11 = 0;
    }
  }

  v14 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)self personalHotspotDataUsageBundleController];

  if (!v14)
  {
    v15 = [[v8 alloc] initWithParentListController:v11];
    [(PSUIAppsAndCategoriesDataUsageSubgroup *)self setPersonalHotspotDataUsageBundleController:v15];
  }

  v16 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)self personalHotspotDataUsageBundleController];

  if (v16)
  {
    v17 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)self personalHotspotDataUsageBundleController];
    v18 = [v17 specifiersWithSpecifier:0];
  }

  else
  {
    v19 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)self getLogger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_2658DE000, v19, OS_LOG_TYPE_ERROR, "Failed to load Wireless Modem Settings aka Personal Hotspot bundle controller", v21, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (PSAppCellularUsageSpecifierDelegate)specifierDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_specifierDelegate);

  return WeakRetained;
}

@end