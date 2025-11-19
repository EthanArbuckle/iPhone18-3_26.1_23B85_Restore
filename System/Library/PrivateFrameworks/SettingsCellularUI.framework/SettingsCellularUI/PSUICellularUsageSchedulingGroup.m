@interface PSUICellularUsageSchedulingGroup
- (PSListController)hostController;
- (PSUICellularUsageSchedulingGroup)initWithListController:(id)a3 groupSpecifierTitle:(id)a4 usageType:(unint64_t)a5;
- (id)specifiers;
- (void)calculateUsageWithForcedRefresh:(BOOL)a3;
- (void)didFailToSetPolicyForSpecifier:(id)a3;
- (void)prefetchPoliciesFor:(id)a3;
- (void)selectedBillingPeriodChanged:(unint64_t)a3;
- (void)sortGroup;
@end

@implementation PSUICellularUsageSchedulingGroup

- (PSUICellularUsageSchedulingGroup)initWithListController:(id)a3 groupSpecifierTitle:(id)a4 usageType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v21.receiver = self;
  v21.super_class = PSUICellularUsageSchedulingGroup;
  v10 = [(PSUICellularUsageSchedulingGroup *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_hostController, v8);
    v12 = [[CTUIListWithHeaderLoadingGroup alloc] initWithHostController:v8];
    loadingGroup = v11->_loadingGroup;
    v11->_loadingGroup = v12;

    v11->_usageType = a5;
    v14 = [PSUIAppDataUsageSpecifierFactory alloc];
    v15 = [MEMORY[0x277D4D850] sharedInstance];
    v16 = [MEMORY[0x277D4D860] sharedInstance];
    v17 = +[PSUICarrierSpaceManager sharedManager];
    v18 = [(PSUIAppDataUsageSpecifierFactory *)v14 initWithGroupSpecifierTitle:v9 managementCache:v15 statisticsCache:v16 carrierSpaceManager:v17 usageType:v11->_usageType billingCycleDelegate:v11 policySpecifierDelegate:v11];
    appDataUsageSpecifierFactory = v11->_appDataUsageSpecifierFactory;
    v11->_appDataUsageSpecifierFactory = v18;
  }

  return v11;
}

- (id)specifiers
{
  v2 = [(PSUICellularUsageSchedulingGroup *)self loadingGroup];
  v3 = [v2 specifiers];

  return v3;
}

- (void)prefetchPoliciesFor:(id)a3
{
  v3 = MEMORY[0x277D4D840];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 fetchUsagePoliciesFor:v4];
}

- (void)didFailToSetPolicyForSpecifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__PSUICellularUsageSchedulingGroup_didFailToSetPolicyForSpecifier___block_invoke;
  v6[3] = &unk_279BA9D30;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __67__PSUICellularUsageSchedulingGroup_didFailToSetPolicyForSpecifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hostController];
  [v2 reloadSpecifier:*(a1 + 40)];
}

- (void)selectedBillingPeriodChanged:(unint64_t)a3
{
  v4 = [(PSUICellularUsageSchedulingGroup *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "Sorting cellular usage group due to billing period selector change", v5, 2u);
  }

  [(PSUICellularUsageSchedulingGroup *)self sortGroup];
}

- (void)calculateUsageWithForcedRefresh:(BOOL)a3
{
  if (a3)
  {
    goto LABEL_7;
  }

  v4 = self;
  objc_sync_enter(v4);
  if (![(PSUICellularUsageSchedulingGroup *)v4 refreshInProgress])
  {
    [(PSUICellularUsageSchedulingGroup *)v4 setRefreshInProgress:1];
    objc_sync_exit(v4);

LABEL_7:
    v6 = [(PSUICellularUsageSchedulingGroup *)self loadingGroup];
    v7 = [(PSUICellularUsageSchedulingGroup *)self appDataUsageSpecifierFactory];
    v8 = [v7 headerSpecifiers];
    [v6 setHeaderSpecifiers:v8];

    objc_initWeak(buf, self);
    v9 = [MEMORY[0x277D4D860] sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__PSUICellularUsageSchedulingGroup_calculateUsageWithForcedRefresh___block_invoke;
    v10[3] = &unk_279BA9DA8;
    v10[4] = self;
    objc_copyWeak(&v11, buf);
    [v9 fetchDeviceDataUsageWithCompletion:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
    return;
  }

  v5 = [(PSUICellularUsageSchedulingGroup *)v4 getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Refresh already in progress", buf, 2u);
  }

  objc_sync_exit(v4);
}

void __68__PSUICellularUsageSchedulingGroup_calculateUsageWithForcedRefresh___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 134217984;
    v9 = v3;
    _os_log_impl(&dword_2658DE000, v2, OS_LOG_TYPE_DEFAULT, "Device data usage fetch complete: %p", buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(25, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__PSUICellularUsageSchedulingGroup_calculateUsageWithForcedRefresh___block_invoke_6;
  v6[3] = &unk_279BAA050;
  objc_copyWeak(&v7, (a1 + 40));
  v6[4] = *(a1 + 32);
  dispatch_async(v4, v6);

  objc_destroyWeak(&v7);
  v5 = *MEMORY[0x277D85DE8];
}

void __68__PSUICellularUsageSchedulingGroup_calculateUsageWithForcedRefresh___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Creating specifiers", buf, 2u);
    }

    *buf = 0;
    v13 = buf;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__3;
    v16 = __Block_byref_object_dispose__3;
    v4 = [WeakRetained appDataUsageSpecifierFactory];
    v17 = [v4 contentSpecifiers];

    [WeakRetained setRefreshInProgress:0];
    v5 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Prefetching policies", v11, 2u);
    }

    v6 = [WeakRetained appDataUsageSpecifierFactory];
    v7 = [v6 bundleIDs];
    [WeakRetained prefetchPoliciesFor:v7];

    v8 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "Dispatching cellular usage specifiers update to main thread", v11, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__PSUICellularUsageSchedulingGroup_calculateUsageWithForcedRefresh___block_invoke_7;
    block[3] = &unk_279BAA8D0;
    objc_copyWeak(&v10, (a1 + 40));
    block[4] = *(a1 + 32);
    block[5] = buf;
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v10);
    _Block_object_dispose(buf, 8);
  }
}

void __68__PSUICellularUsageSchedulingGroup_calculateUsageWithForcedRefresh___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Updating cellular usage specifiers on main thread", v6, 2u);
    }

    v4 = [WeakRetained loadingGroup];
    [v4 setContentSpecifiers:*(*(*(a1 + 40) + 8) + 40)];

    v5 = [WeakRetained hostController];
    [v5 reloadSpecifiers];
  }
}

- (void)sortGroup
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(PSUICellularUsageSchedulingGroup *)v2 refreshInProgress])
  {
    v3 = [(PSUICellularUsageSchedulingGroup *)v2 getLogger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Refresh already in progress, just refresh specifiers instead of sorting.", buf, 2u);
    }

    v4 = [(PSUICellularUsageSchedulingGroup *)v2 hostController];
    [v4 reloadSpecifiers];

    objc_sync_exit(v2);
  }

  else
  {
    objc_sync_exit(v2);

    objc_initWeak(buf, v2);
    v5 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PSUICellularUsageSchedulingGroup_sortGroup__block_invoke;
    block[3] = &unk_279BA9EA0;
    objc_copyWeak(&v7, buf);
    dispatch_async(v5, block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

void __45__PSUICellularUsageSchedulingGroup_sortGroup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained appDataUsageSpecifierFactory];
    [v4 refreshOrderingOfContentSpecifiers];

    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = __Block_byref_object_copy__3;
    v8[4] = __Block_byref_object_dispose__3;
    v5 = [v3 appDataUsageSpecifierFactory];
    v9 = [v5 contentSpecifiers];

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__PSUICellularUsageSchedulingGroup_sortGroup__block_invoke_2;
    v6[3] = &unk_279BAA8F8;
    objc_copyWeak(&v7, (a1 + 32));
    v6[4] = v8;
    dispatch_async(MEMORY[0x277D85CD0], v6);
    objc_destroyWeak(&v7);
    _Block_object_dispose(v8, 8);
  }
}

void __45__PSUICellularUsageSchedulingGroup_sortGroup__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained loadingGroup];
    [v3 setContentSpecifiers:*(*(*(a1 + 32) + 8) + 40)];

    v4 = [v5 hostController];
    [v4 reloadSpecifiers];

    WeakRetained = v5;
  }
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

@end