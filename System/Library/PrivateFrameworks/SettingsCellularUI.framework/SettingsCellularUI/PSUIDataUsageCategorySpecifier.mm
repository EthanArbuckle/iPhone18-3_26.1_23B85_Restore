@interface PSUIDataUsageCategorySpecifier
- (PSBillingPeriodSource)billingPeriodSource;
- (PSListController)hostController;
- (PSUIDataUsageCategorySpecifier)initWithAppType:(unint64_t)type usageType:(unint64_t)usageType subSpecifiers:(id)specifiers;
- (id)dataUsageString;
- (unint64_t)dataUsage;
- (void)showDataUsageCategoryListController:(id)controller;
- (void)showHiddenApps:(id)apps;
@end

@implementation PSUIDataUsageCategorySpecifier

- (PSUIDataUsageCategorySpecifier)initWithAppType:(unint64_t)type usageType:(unint64_t)usageType subSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v9 = type - 1;
  if (type - 1 > 4)
  {
    v13 = 0;
    v11 = 0;
  }

  else
  {
    v10 = off_279BAA3E8[v9];
    v11 = off_279BAA410[v9];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:v10 value:&stru_287733598 table:@"Cellular"];
  }

  v23.receiver = self;
  v23.super_class = PSUIDataUsageCategorySpecifier;
  v14 = [(PSUIDataUsageCategorySpecifier *)&v23 initWithName:v13 target:0 set:0 get:0 detail:0 cell:4 edit:0];
  v15 = v14;
  if (v14)
  {
    v14->_appType = type;
    v14->_usageType = usageType;
    mEMORY[0x277D4D860] = [MEMORY[0x277D4D860] sharedInstance];
    statisticsCache = v15->_statisticsCache;
    v15->_statisticsCache = mEMORY[0x277D4D860];

    [(PSUIDataUsageCategorySpecifier *)v15 setTarget:v15];
    *(&v15->super.super.isa + *MEMORY[0x277D3FCA8]) = sel_dataUsageString;
    if (v15->_appType == 1)
    {
      [(PSUIDataUsageCategorySpecifier *)v15 setCellType:4];
    }

    else
    {
      if ([specifiersCopy count])
      {
        v18 = 2;
      }

      else
      {
        v18 = 4;
      }

      [(PSUIDataUsageCategorySpecifier *)v15 setCellType:v18];
      if ([specifiersCopy count])
      {
        v19 = objc_opt_class();
LABEL_13:
        [(PSUIDataUsageCategorySpecifier *)v15 setDetailControllerClass:v19];
        if (v15->_appType == 5 && [specifiersCopy count])
        {
          v20 = &selRef_showHiddenApps_;
        }

        else
        {
          if (![specifiersCopy count] || v15->_appType == 1)
          {
            goto LABEL_20;
          }

          v20 = &selRef_showDataUsageCategoryListController_;
        }

        [(PSUIDataUsageCategorySpecifier *)v15 setButtonAction:*v20];
LABEL_20:
        [(PSUIDataUsageCategorySpecifier *)v15 setProperty:v11 forKey:*MEMORY[0x277D3FFD8]];
        v21 = MEMORY[0x277CBEC38];
        [(PSUIDataUsageCategorySpecifier *)v15 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
        [(PSUIDataUsageCategorySpecifier *)v15 setProperty:v21 forKey:*MEMORY[0x277D40018]];
        [(PSUIDataUsageCategorySpecifier *)v15 setSubcategorySpecifiers:specifiersCopy];
        goto LABEL_21;
      }
    }

    v19 = 0;
    goto LABEL_13;
  }

LABEL_21:

  return v15;
}

- (unint64_t)dataUsage
{
  v42 = *MEMORY[0x277D85DE8];
  billingPeriodSource = [(PSUIDataUsageCategorySpecifier *)self billingPeriodSource];
  v4 = billingPeriodSource;
  appType = self->_appType;
  if (appType <= 2)
  {
    if (appType == 1)
    {
      statisticsCache = self->_statisticsCache;
      if (billingPeriodSource)
      {
        selectedPeriod = [billingPeriodSource selectedPeriod];
      }

      else
      {
        selectedPeriod = 0;
      }

      v19 = [(PSDataUsageStatisticsCache *)statisticsCache totalUninstalledAppUsageForPeriod:selectedPeriod];
      goto LABEL_28;
    }

    if (appType == 2)
    {
      v8 = self->_statisticsCache;
      if (billingPeriodSource)
      {
        selectedPeriod2 = [billingPeriodSource selectedPeriod];
      }

      else
      {
        selectedPeriod2 = 0;
      }

      v17 = [(PSDataUsageStatisticsCache *)v8 totalWatchOnlyAppUsageForPeriod:selectedPeriod2];
LABEL_31:
      usageType = self->_usageType;
      native = [v17 native];
      v22 = native;
      if (usageType == 1)
      {
        satellite = [native satellite];
        proxied = [v17 proxied];
        v18 = [proxied satellite] + satellite;
      }

      else
      {
        cellularHome = [native cellularHome];
        proxied = [v17 native];
        v26 = [proxied cellularRoaming] + cellularHome;
        proxied2 = [v17 proxied];
        cellularHome2 = [proxied2 cellularHome];
        proxied3 = [v17 proxied];
        v18 = v26 + cellularHome2 + [proxied3 cellularRoaming];
      }

      if (self->_appType == 3)
      {
        v30 = self->_statisticsCache;
        if (v4)
        {
          selectedPeriod3 = [v4 selectedPeriod];
        }

        else
        {
          selectedPeriod3 = 0;
        }

        v32 = [(PSDataUsageStatisticsCache *)v30 totalHotspotClientUsageForPeriod:selectedPeriod3];
        getLogger = [(PSUIDataUsageCategorySpecifier *)self getLogger];
        v34 = getLogger;
        if (v18 >= v32)
        {
          if (os_log_type_enabled(getLogger, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v39 = v32;
            v40 = 2048;
            v41 = v18;
            _os_log_impl(&dword_2658DE000, v34, OS_LOG_TYPE_INFO, "Removing %zu bytes of hotspot usage from %zu bytes of system services", buf, 0x16u);
          }

          v18 -= v32;
        }

        else
        {
          if (os_log_type_enabled(getLogger, OS_LOG_TYPE_FAULT))
          {
            *buf = 134218240;
            v39 = v32;
            v40 = 2048;
            v41 = v18;
            _os_log_fault_impl(&dword_2658DE000, v34, OS_LOG_TYPE_FAULT, "Hotspot usage %zu is greater than system services usage %zu", buf, 0x16u);
          }
        }
      }

      goto LABEL_45;
    }
  }

  else
  {
    switch(appType)
    {
      case 3:
        v10 = self->_statisticsCache;
        if (billingPeriodSource)
        {
          selectedPeriod4 = [billingPeriodSource selectedPeriod];
        }

        else
        {
          selectedPeriod4 = 0;
        }

        v19 = [(PSDataUsageStatisticsCache *)v10 totalSystemServicesUsageForPeriod:selectedPeriod4];
        goto LABEL_28;
      case 4:
        v12 = self->_statisticsCache;
        if (billingPeriodSource)
        {
          selectedPeriod5 = [billingPeriodSource selectedPeriod];
        }

        else
        {
          selectedPeriod5 = 0;
        }

        v18 = [(PSDataUsageStatisticsCache *)v12 totalHotspotClientUsageForPeriod:selectedPeriod5];
        v17 = 0;
        goto LABEL_45;
      case 5:
        v6 = self->_statisticsCache;
        if (billingPeriodSource)
        {
          selectedPeriod6 = [billingPeriodSource selectedPeriod];
        }

        else
        {
          selectedPeriod6 = 0;
        }

        v19 = [(PSDataUsageStatisticsCache *)v6 totalHiddenAppUsageForPeriod:selectedPeriod6];
LABEL_28:
        v17 = v19;
        goto LABEL_31;
    }
  }

  getLogger2 = [(PSUIDataUsageCategorySpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
  {
    v37 = self->_appType;
    *buf = 134217984;
    v39 = v37;
    _os_log_error_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_ERROR, "Unhandled usage category %lu", buf, 0xCu);
  }

  v17 = 0;
  v18 = 0;
LABEL_45:

  v35 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)dataUsageString
{
  dataUsage = [(PSUIDataUsageCategorySpecifier *)self dataUsage];
  if (dataUsage)
  {
    v3 = [MEMORY[0x277D4D878] usageSizeString:dataUsage];
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_287733598;
  }

  v5 = v4;

  return v4;
}

- (void)showHiddenApps:(id)apps
{
  appsCopy = apps;
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  if (WeakRetained)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v6 = _MergedGlobals_2;
    v19 = _MergedGlobals_2;
    if (!_MergedGlobals_2)
    {
      *buf = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __getAPGuardClass_block_invoke;
      v14 = &unk_279BA9F68;
      v15 = &v16;
      __getAPGuardClass_block_invoke(buf);
      v6 = v17[3];
    }

    v7 = v6;
    _Block_object_dispose(&v16, 8);
    sharedGuard = [v6 sharedGuard];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__PSUIDataUsageCategorySpecifier_showHiddenApps___block_invoke;
    v9[3] = &unk_279BAA348;
    v9[4] = self;
    v10 = appsCopy;
    [sharedGuard authenticateUnconditionallyWithCompletion:v9];
  }

  else
  {
    sharedGuard = [(PSUIDataUsageCategorySpecifier *)self getLogger];
    if (os_log_type_enabled(sharedGuard, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2658DE000, sharedGuard, OS_LOG_TYPE_ERROR, "Host controller not found, cannot drill down to Hidden Apps.", buf, 2u);
    }
  }
}

void __49__PSUIDataUsageCategorySpecifier_showHiddenApps___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__PSUIDataUsageCategorySpecifier_showHiddenApps___block_invoke_2;
  v8[3] = &unk_279BAA3B0;
  v11 = a2;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __49__PSUIDataUsageCategorySpecifier_showHiddenApps___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    v8 = objc_alloc_init(PSUIDataUsageCategoryListController);
    v2 = [*(a1 + 32) hostController];
    [(PSUIDataUsageCategoryListController *)v8 setParentController:v2];

    [(PSUIDataUsageCategoryListController *)v8 setSpecifier:*(a1 + 40)];
    [(PSUIDataUsageCategoryListController *)v8 setParentSpecifier:*(a1 + 40)];
    v3 = [*(a1 + 32) hostController];
    [v3 showController:v8];

    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 48) localizedDescription];
      *buf = 138412290;
      v10 = v7;
      _os_log_error_impl(&dword_2658DE000, v5, OS_LOG_TYPE_ERROR, "Failed to authenticate, error: %@", buf, 0xCu);
    }

    v6 = *MEMORY[0x277D85DE8];
  }
}

- (void)showDataUsageCategoryListController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__PSUIDataUsageCategorySpecifier_showDataUsageCategoryListController___block_invoke;
    block[3] = &unk_279BA9D30;
    block[4] = self;
    v9 = controllerCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    getLogger = [(PSUIDataUsageCategorySpecifier *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Host controller not found, cannot drill down to Hidden Apps.", v7, 2u);
    }
  }
}

void __70__PSUIDataUsageCategorySpecifier_showDataUsageCategoryListController___block_invoke(uint64_t a1)
{
  v4 = objc_alloc_init(PSUIDataUsageCategoryListController);
  v2 = [*(a1 + 32) hostController];
  [(PSUIDataUsageCategoryListController *)v4 setParentController:v2];

  [(PSUIDataUsageCategoryListController *)v4 setSpecifier:*(a1 + 40)];
  [(PSUIDataUsageCategoryListController *)v4 setParentSpecifier:*(a1 + 40)];
  v3 = [*(a1 + 32) hostController];
  [v3 showController:v4];
}

- (PSBillingPeriodSource)billingPeriodSource
{
  WeakRetained = objc_loadWeakRetained(&self->_billingPeriodSource);

  return WeakRetained;
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

@end