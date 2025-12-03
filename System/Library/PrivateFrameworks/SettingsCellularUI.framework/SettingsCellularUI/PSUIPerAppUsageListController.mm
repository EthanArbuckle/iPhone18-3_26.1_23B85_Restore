@interface PSUIPerAppUsageListController
- (BOOL)specifiersContainsSpinner;
- (PSUIPerAppUsageListController)init;
- (PSUIPerAppUsageListController)initWithReloadDelay:(double)delay schedulingGroup:(id)group simStatusCache:(id)cache cellularPlanManagerCache:(id)managerCache searchController:(id)controller;
- (id)activeDataPlanLabel;
- (id)appUsageGroupTitle;
- (id)specifiers;
- (void)commonInit;
- (void)createSatelliteSubgroupIfNeeded;
- (void)dealloc;
- (void)reloadAfterDelayIfNeeded;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)wirelessDataUsageCacheRefreshed;
- (void)wirelessDataUsageChangedNotification;
@end

@implementation PSUIPerAppUsageListController

- (PSUIPerAppUsageListController)init
{
  v12.receiver = self;
  v12.super_class = PSUIPerAppUsageListController;
  v2 = [(PSUIPerAppUsageListController *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_reloadDelay = 2.5;
    mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
    simStatusCache = v3->_simStatusCache;
    v3->_simStatusCache = mEMORY[0x277D4D868];

    v6 = +[PSUICellularPlanManagerCache sharedInstance];
    cellularPlanManagerCache = v3->_cellularPlanManagerCache;
    v3->_cellularPlanManagerCache = v6;

    v8 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
    searchController = v3->_searchController;
    v3->_searchController = v8;

    [(UISearchController *)v3->_searchController setSearchResultsUpdater:v3];
    [(UISearchController *)v3->_searchController setObscuresBackgroundDuringPresentation:0];
    searchBar = [(UISearchController *)v3->_searchController searchBar];
    [searchBar setKeyboardType:0];

    [(PSUIPerAppUsageListController *)v3 commonInit];
  }

  return v3;
}

- (PSUIPerAppUsageListController)initWithReloadDelay:(double)delay schedulingGroup:(id)group simStatusCache:(id)cache cellularPlanManagerCache:(id)managerCache searchController:(id)controller
{
  groupCopy = group;
  cacheCopy = cache;
  managerCacheCopy = managerCache;
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = PSUIPerAppUsageListController;
  v17 = [(PSUIPerAppUsageListController *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_reloadDelay = delay;
    objc_storeStrong(&v17->_simStatusCache, cache);
    objc_storeStrong(&v18->_cellularPlanManagerCache, managerCache);
    objc_storeStrong(&v18->_schedulingGroup, group);
    schedulingGroup = v18->_schedulingGroup;
    appUsageGroupTitle = [(PSUIPerAppUsageListController *)v18 appUsageGroupTitle];
    [(PSUICellularUsageSchedulingGroup *)schedulingGroup setGroupSpecifierTitle:appUsageGroupTitle];

    objc_storeStrong(&v18->_searchController, controller);
    [(PSUIPerAppUsageListController *)v18 commonInit];
  }

  return v18;
}

- (void)commonInit
{
  allSpecifiers = self->_allSpecifiers;
  self->_allSpecifiers = 0;

  filteredSpecifiers = self->_filteredSpecifiers;
  self->_filteredSpecifiers = 0;

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CELLULAR_APP_USAGE_LIST_TITLE" value:&stru_287733598 table:@"Cellular"];
  [(PSUIPerAppUsageListController *)self setTitle:v6];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_wirelessDataUsageChangedNotification name:*MEMORY[0x277D4D8A8] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_wirelessDataUsageCacheRefreshed name:*MEMORY[0x277D4D8A0] object:0];

  searchController = self->_searchController;
  navigationItem = [(PSUIPerAppUsageListController *)self navigationItem];
  [navigationItem setSearchController:searchController];

  [(PSUIPerAppUsageListController *)self setDefinesPresentationContext:1];
}

- (void)viewDidLoad
{
  v23 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = PSUIPerAppUsageListController;
  [(PSUIPerAppUsageListController *)&v20 viewDidLoad];
  v3 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:*MEMORY[0x277D4D898]];
  self->_usageType = [v3 unsignedIntegerValue];

  if (self->_usageType == 1)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"SATELLITE_APP_USAGE_LIST_TITLE" value:&stru_287733598 table:@"Cellular"];
    [(PSUIPerAppUsageListController *)self setTitle:v5];

    [(PSUIPerAppUsageListController *)self createSatelliteSubgroupIfNeeded];
    if (+[SettingsCellularUtils satelliteDataPlanTier]<= 3)
    {
      navigationItem = [(PSUIPerAppUsageListController *)self navigationItem];
      [navigationItem setSearchController:0];
    }
  }

  table = [(PSUIPerAppUsageListController *)self table];
  v8 = objc_opt_class();
  v9 = +[(PSTableCell *)PSUICellularDataUsageSortOptionsHeaderTableViewCell];
  [table registerClass:v8 forCellReuseIdentifier:v9];

  v10 = [PSUICellularUsageSchedulingGroup alloc];
  appUsageGroupTitle = [(PSUIPerAppUsageListController *)self appUsageGroupTitle];
  v12 = [(PSUICellularUsageSchedulingGroup *)v10 initWithListController:self groupSpecifierTitle:appUsageGroupTitle usageType:self->_usageType];
  schedulingGroup = self->_schedulingGroup;
  self->_schedulingGroup = v12;

  v14 = self->_schedulingGroup;
  appUsageGroupTitle2 = [(PSUIPerAppUsageListController *)self appUsageGroupTitle];
  [(PSUICellularUsageSchedulingGroup *)v14 setGroupSpecifierTitle:appUsageGroupTitle2];

  self->_delayedReloadInProgress = 0;
  if (self->_usageType)
  {
    v16 = @"satellite";
  }

  else
  {
    v16 = @"cellular";
  }

  v17 = v16;
  getLogger = [(PSUIPerAppUsageListController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v17;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "viewDidLoad, asking to calculate %@ usage.", buf, 0xCu);
  }

  [(PSUICellularUsageSchedulingGroup *)self->_schedulingGroup calculateUsageWithForcedRefresh:0];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSUIPerAppUsageListController;
  [(PSUIPerAppUsageListController *)&v4 dealloc];
}

- (id)specifiers
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_usageType == 1 && (-[PSUISatelliteSubgroup specifiers](self->_satelliteSubgroup, "specifiers"), v4 = objc_claimAutoreleasedReturnValue(), [v3 addObjectsFromArray:v4], v4, +[SettingsCellularUtils satelliteDataPlanTier](SettingsCellularUtils, "satelliteDataPlanTier") <= 3))
  {
    v5 = (&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
    objc_storeStrong(v5, v3);
  }

  else
  {
    specifiers = [(PSUICellularUsageSchedulingGroup *)self->_schedulingGroup specifiers];
    [v3 addObjectsFromArray:specifiers];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v3;
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

          v12 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v12 setHostController:{self, v18}];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->_allSpecifiers, v3);
    if (![(UISearchController *)self->_searchController isActive]|| (p_allSpecifiers = &self->_filteredSpecifiers, ![(NSArray *)self->_filteredSpecifiers count]))
    {
      p_allSpecifiers = &self->_allSpecifiers;
    }

    v5 = (&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
    objc_storeStrong(v5, *p_allSpecifiers);
    [(PSUIPerAppUsageListController *)self reloadAfterDelayIfNeeded];
  }

  v14 = *v5;
  v15 = *v5;

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)reloadAfterDelayIfNeeded
{
  if ([(PSUIPerAppUsageListController *)self specifiersContainsSpinner]&& !self->_delayedReloadInProgress)
  {
    getLogger = [(PSUIPerAppUsageListController *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "A spinner cell is showing, and no reload is in progress, attempt to reload in a few seconds.", buf, 2u);
    }

    objc_initWeak(buf, self);
    self->_delayedReloadInProgress = 1;
    v4 = dispatch_time(0, (self->_reloadDelay * 1000000000.0));
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __57__PSUIPerAppUsageListController_reloadAfterDelayIfNeeded__block_invoke;
    v5[3] = &unk_279BAA050;
    objc_copyWeak(&v6, buf);
    v5[4] = self;
    dispatch_after(v4, MEMORY[0x277D85CD0], v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __57__PSUIPerAppUsageListController_reloadAfterDelayIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1456) = 0;
    if ([*(a1 + 32) specifiersContainsSpinner])
    {
      v4 = objc_loadWeakRetained((a1 + 40));
      v5 = [v4 getLogger];

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to calculate usage and reload as spinner cell is still showing.", v6, 2u);
      }

      [v3[185] calculateUsageWithForcedRefresh:1];
      [v3 reloadSpecifiers];
    }
  }
}

- (BOOL)specifiersContainsSpinner
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) cellType] == 15)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)createSatelliteSubgroupIfNeeded
{
  if (!self->_satelliteSubgroup)
  {
    v3 = [PSUISatelliteSubgroup alloc];
    v4 = *MEMORY[0x277D3FD20];
    v8 = [*(&self->super.super.super.super.super.isa + v4) propertyForKey:*MEMORY[0x277D40128]];
    v5 = [*(&self->super.super.super.super.super.isa + v4) propertyForKey:*MEMORY[0x277D3FE70]];
    v6 = [(PSUISatelliteSubgroup *)v3 initWithHostController:self context:v8 planReference:v5 mode:3];
    satelliteSubgroup = self->_satelliteSubgroup;
    self->_satelliteSubgroup = v6;
  }
}

- (id)appUsageGroupTitle
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isChinaRegionCellularDevice = [currentDevice sf_isChinaRegionCellularDevice];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (sf_isChinaRegionCellularDevice)
  {
    v7 = @"APP_WIRELESS_DATA_USAGE";
  }

  else
  {
    v7 = @"APP_DATA_USAGE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_287733598 table:@"Cellular"];

  activeDataPlanLabel = [(PSUIPerAppUsageListController *)self activeDataPlanLabel];
  if ([activeDataPlanLabel length])
  {
    if ([(PSSimStatusCache *)self->_simStatusCache isDualSimCapable])
    {
      planItems = [(PSUICellularPlanManagerCache *)self->_cellularPlanManagerCache planItems];
      v11 = [planItems count];

      if (v11 >= 2)
      {
        v12 = MEMORY[0x277CCACA8];
        v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v13 localizedStringForKey:@"APP_DATA_USAGE_FOR_%@" value:&stru_287733598 table:@"Cellular"];
        v15 = [v12 stringWithFormat:v14, activeDataPlanLabel];

        v8 = v15;
      }
    }
  }

  if (self->_usageType == 1)
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"SATELLITE_USAGE" value:&stru_287733598 table:@"Satellite"];

    v8 = v17;
  }

  return v8;
}

- (id)activeDataPlanLabel
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  planItems = [(PSUICellularPlanManagerCache *)self->_cellularPlanManagerCache planItems];
  label = [planItems countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (label)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != label; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(planItems);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v6 isActiveDataPlan])
        {
          userLabel = [v6 userLabel];
          label = [userLabel label];

          goto LABEL_11;
        }
      }

      label = [planItems countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (label)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return label;
}

- (void)wirelessDataUsageChangedNotification
{
  getLogger = [(PSUIPerAppUsageListController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Received data usage changed notification", v6, 2u);
  }

  schedulingGroup = self->_schedulingGroup;
  appUsageGroupTitle = [(PSUIPerAppUsageListController *)self appUsageGroupTitle];
  [(PSUICellularUsageSchedulingGroup *)schedulingGroup setGroupSpecifierTitle:appUsageGroupTitle];

  [(PSUICellularUsageSchedulingGroup *)self->_schedulingGroup calculateUsageWithForcedRefresh:0];
  [(PSUIPerAppUsageListController *)self reloadSpecifiers];
}

- (void)wirelessDataUsageCacheRefreshed
{
  getLogger = [(PSUIPerAppUsageListController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Received data usage cache refreshed notification", v4, 2u);
  }

  [(PSUICellularUsageSchedulingGroup *)self->_schedulingGroup sortGroup];
  [(PSUIPerAppUsageListController *)self reloadSpecifiers];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];

  if ([text length])
  {
    v6 = objc_opt_new();
    allSpecifiers = self->_allSpecifiers;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __72__PSUIPerAppUsageListController_updateSearchResultsForSearchController___block_invoke;
    v15 = &unk_279BAA9A0;
    v16 = text;
    v8 = v6;
    v17 = v8;
    [(NSArray *)allSpecifiers enumerateObjectsUsingBlock:&v12];
    filteredSpecifiers = self->_filteredSpecifiers;
    self->_filteredSpecifiers = v8;
    v10 = v8;

    [(PSUIPerAppUsageListController *)self setSpecifiers:v10, v12, v13, v14, v15];
  }

  else
  {
    v11 = self->_filteredSpecifiers;
    self->_filteredSpecifiers = 0;

    [(PSUIPerAppUsageListController *)self setSpecifiers:self->_allSpecifiers];
  }
}

void __72__PSUIPerAppUsageListController_updateSearchResultsForSearchController___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 name];
  v4 = [v3 localizedCaseInsensitiveContainsString:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

@end