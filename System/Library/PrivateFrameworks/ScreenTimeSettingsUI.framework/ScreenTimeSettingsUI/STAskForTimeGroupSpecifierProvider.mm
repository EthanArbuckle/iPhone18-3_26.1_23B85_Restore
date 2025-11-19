@interface STAskForTimeGroupSpecifierProvider
- (STAskForTimeGroupSpecifierProvider)init;
- (id)_createSpecifierForAskForMore:(id)a3;
- (id)requestSpecifiers;
- (void)confirmRespondToRequest:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)respondToRequest:(id)a3 withApproval:(BOOL)a4 timeApproved:(id)a5;
- (void)setCoordinator:(id)a3;
@end

@implementation STAskForTimeGroupSpecifierProvider

- (STAskForTimeGroupSpecifierProvider)init
{
  v8.receiver = self;
  v8.super_class = STAskForTimeGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v8 init];
  if (v2)
  {
    v3 = MEMORY[0x277D3FAD8];
    v4 = +[STScreenTimeSettingsUIBundle bundle];
    v5 = [v4 localizedStringForKey:@"AskForTimeGroupSpecifierName" value:&stru_28766E5A8 table:0];
    v6 = [v3 groupSpecifierWithName:v5];
    [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v6];
  }

  return v2;
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"viewModel.canViewAskForTimeRequests" context:"STAskForTimeGroupSpecifierProviderObservationContext"];
  [v5 removeObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.pendingAskForTimeByIdentifier" context:"STAskForTimeGroupSpecifierProviderObservationContext"];
  v6.receiver = self;
  v6.super_class = STAskForTimeGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.pendingAskForTimeByIdentifier" options:4 context:"STAskForTimeGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"viewModel.canViewAskForTimeRequests" options:4 context:"STAskForTimeGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == "STAskForTimeGroupSpecifierProviderObservationContext")
  {
    v11 = [(STAskForTimeGroupSpecifierProvider *)self requestSpecifiers:a3];
    v7 = [(STRootGroupSpecifierProvider *)self coordinator];
    v8 = [v7 viewModel];
    if ([v8 canViewAskForTimeRequests])
    {
      v9 = [v11 count] == 0;
    }

    else
    {
      v9 = 1;
    }

    [(STGroupSpecifierProvider *)self setIsHidden:v9];

    v10 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
    [v10 replaceObjectsInRange:0 withObjectsFromArray:{objc_msgSend(v10, "count"), v11}];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = STAskForTimeGroupSpecifierProvider;
    [(STAskForTimeGroupSpecifierProvider *)&v12 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (id)_createSpecifierForAskForMore:(id)a3
{
  v4 = a3;
  v5 = [v4 usageType];
  if (v5 == 2)
  {
    v18 = [v4 budgetedIdentifier];
    v19 = [v18 _lp_userVisibleHost];
    v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:0 cell:2 edit:objc_opt_class()];
    [v11 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [v11 setObject:v19 forKeyedSubscript:*MEMORY[0x277D40170]];
    v20 = [MEMORY[0x277D75C80] currentTraitCollection];
    v21 = [v20 userInterfaceStyle];
    v22 = v19;
    if ([v22 length])
    {
      v47 = v21;
      v48 = v20;
      v49 = v18;
      v23 = objc_opt_new();
      [v23 setScheme:@"https"];
      [v23 setHost:v22];
      v24 = [v23 URL];
      v25 = [v24 _lp_highLevelDomain];
      v26 = [v23 host];
      v27 = [v23 URL];
      v28 = v25;
      v29 = v26;
      v30 = v27;
      if ([v28 length])
      {
        v31 = [v28 substringToIndex:1];
        v32 = [v31 uppercaseString];
      }

      else
      {
        v35 = [v29 substringToIndex:1];
        v32 = [v35 uppercaseString];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [STAllowanceItemSearchResultsController tableView:v30 cellForRowAtIndexPath:v29];
        }
      }

      v21 = v47;

      v20 = v48;
      v18 = v49;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [STAllowanceItemSearchResultsController tableView:v22 cellForRowAtIndexPath:?];
      }

      v32 = 0;
    }

    v36 = v21 == 2;

    v37 = [MEMORY[0x277D4BD98] sharedCache];
    v38 = [v37 monogramImageForInitial:v32 useDarkColors:v36];
    [v11 setObject:v38 forKeyedSubscript:*MEMORY[0x277D3FFC0]];

    v39 = +[STScreenTimeSettingsUIBundle bundle];
    v40 = [v39 localizedStringForKey:@"AskForTimeTypeWebsite" value:&stru_28766E5A8 table:0];
    [v11 setObject:v40 forKeyedSubscript:*MEMORY[0x277D40160]];
  }

  else
  {
    if (v5 == 1)
    {
      v6 = [v4 budgetedIdentifier];
      v8 = STCategoryNameWithIdentifier();
      v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:2 edit:objc_opt_class()];
      [v11 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
      v13 = [MEMORY[0x277D4BD98] sharedCache];
      v14 = [v13 imageForCategoryIdentifier:v6];
      [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x277D3FFC0]];

      [v11 setObject:v8 forKeyedSubscript:*MEMORY[0x277D40170]];
      v15 = +[STScreenTimeSettingsUIBundle bundle];
      v16 = v15;
      v17 = @"AskForTimeTypeCategory";
    }

    else
    {
      if (v5)
      {
        v11 = 0;
        goto LABEL_22;
      }

      v6 = [v4 budgetedIdentifier];
      v7 = [MEMORY[0x277D4B8C0] sharedCache];
      v8 = [v7 appInfoForBundleIdentifier:v6];

      v9 = MEMORY[0x277D3FAD8];
      v10 = [v8 displayName];
      v11 = [v9 preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:2 edit:objc_opt_class()];

      if ([v8 source] == 2 && (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277D4BBC8]) & 1) == 0)
      {
        [v11 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
        v12 = MEMORY[0x277D40008];
      }

      else
      {
        [v11 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
        v12 = &STAppBundleIDKey;
      }

      [v11 setObject:v6 forKeyedSubscript:*v12];
      v33 = [v8 displayName];
      [v11 setObject:v33 forKeyedSubscript:*MEMORY[0x277D40170]];

      v15 = +[STScreenTimeSettingsUIBundle bundle];
      v16 = v15;
      v17 = @"AskForTimeTypeApp";
    }

    v34 = [v15 localizedStringForKey:v17 value:&stru_28766E5A8 table:0];
    [v11 setObject:v34 forKeyedSubscript:*MEMORY[0x277D40160]];
  }

LABEL_22:
  v41 = MEMORY[0x277CCACA8];
  v42 = [v4 identifier];
  v43 = [v41 stringWithFormat:@"ASK_%@", v42];
  [v11 setIdentifier:v43];

  [v11 setUserInfo:v4];
  v44 = objc_opt_class();
  v45 = NSStringFromClass(v44);
  [v11 setObject:v45 forKeyedSubscript:*MEMORY[0x277D400B8]];

  [v11 setObject:&unk_28769CFC8 forKeyedSubscript:*MEMORY[0x277D401C0]];
  [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A28];
  [v11 setControllerLoadAction:sel_confirmRespondToRequest_];

  return v11;
}

- (id)requestSpecifiers
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(STRootGroupSpecifierProvider *)self coordinator];
  v4 = [v3 timeAllowancesCoordinator];
  v5 = [v4 viewModel];

  v6 = MEMORY[0x277CBEB18];
  v7 = [v5 pendingAskForTimeByIdentifier];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v5 pendingAskForTimeByIdentifier];
  v10 = [v9 allValues];

  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(STAskForTimeGroupSpecifierProvider *)self _createSpecifierForAskForMore:*(*(&v17 + 1) + 8 * i)];
        [v8 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v8;
}

- (void)confirmRespondToRequest:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 sf_isiPad];

  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:v6];
  v8 = objc_opt_new();
  [v8 setAllowedUnits:64];
  [v8 setUnitsStyle:3];
  v31 = [v8 stringFromTimeInterval:900.0];
  v9 = +[STScreenTimeSettingsUIBundle bundle];
  v10 = MEMORY[0x277D750F8];
  v11 = MEMORY[0x277CCACA8];
  v12 = [v9 localizedStringForKey:@"AskForTimeActionApproveFifteen" value:&stru_28766E5A8 table:0];
  v13 = [v11 localizedStringWithFormat:v12, v31];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __62__STAskForTimeGroupSpecifierProvider_confirmRespondToRequest___block_invoke;
  v38[3] = &unk_279B7CDF0;
  v38[4] = self;
  v14 = v4;
  v39 = v14;
  v15 = [v10 actionWithTitle:v13 style:0 handler:v38];
  [v7 addAction:v15];

  v16 = MEMORY[0x277D750F8];
  v17 = [v9 localizedStringForKey:@"AskForTimeActionApproveHour" value:&stru_28766E5A8 table:0];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __62__STAskForTimeGroupSpecifierProvider_confirmRespondToRequest___block_invoke_53;
  v36[3] = &unk_279B7CDF0;
  v36[4] = self;
  v18 = v14;
  v37 = v18;
  v19 = [v16 actionWithTitle:v17 style:0 handler:v36];
  [v7 addAction:v19];

  v20 = MEMORY[0x277D750F8];
  v21 = [v9 localizedStringForKey:@"AskForTimeActionApproveDay" value:&stru_28766E5A8 table:0];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __62__STAskForTimeGroupSpecifierProvider_confirmRespondToRequest___block_invoke_59;
  v34[3] = &unk_279B7CDF0;
  v34[4] = self;
  v22 = v18;
  v35 = v22;
  v23 = [v20 actionWithTitle:v21 style:0 handler:v34];
  [v7 addAction:v23];

  v24 = MEMORY[0x277D750F8];
  v25 = [v9 localizedStringForKey:@"AskForTimeActionDontApprove" value:&stru_28766E5A8 table:0];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __62__STAskForTimeGroupSpecifierProvider_confirmRespondToRequest___block_invoke_65;
  v32[3] = &unk_279B7CDF0;
  v32[4] = self;
  v33 = v22;
  v26 = v22;
  v27 = [v24 actionWithTitle:v25 style:2 handler:v32];
  [v7 addAction:v27];

  v28 = MEMORY[0x277D750F8];
  v29 = [v9 localizedStringForKey:@"ConfirmationButtonCancel" value:&stru_28766E5A8 table:0];
  v30 = [v28 actionWithTitle:v29 style:1 handler:0];
  [v7 addAction:v30];

  [(STGroupSpecifierProvider *)self presentViewController:v7 animated:1 completion:0];
}

- (void)respondToRequest:(id)a3 withApproval:(BOOL)a4 timeApproved:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [a3 userInfo];
  v10 = [(STRootGroupSpecifierProvider *)self coordinator];
  v11 = [v10 timeAllowancesCoordinator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__STAskForTimeGroupSpecifierProvider_respondToRequest_withApproval_timeApproved___block_invoke;
  v14[3] = &unk_279B7CD08;
  v17 = v5;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [v11 respondToAskForTime:v12 withApproval:v5 timeApproved:v13 completionHandler:v14];
}

void __81__STAskForTimeGroupSpecifierProvider_respondToRequest_withApproval_timeApproved___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 48))
    {
      v2 = @"Approving";
    }

    else
    {
      v2 = @"Not approving";
    }

    v3 = [*(a1 + 32) isEqual:&unk_28769D010];
    if (v3)
    {
      v4 = @"all day";
    }

    else
    {
      v5 = MEMORY[0x277CCABB0];
      [*(a1 + 32) floatValue];
      v4 = [v5 numberWithDouble:v6 / 60.0];
    }

    v7 = [*(a1 + 40) identifier];
    v8 = 138543874;
    v9 = v2;
    v10 = 2114;
    v11 = v4;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ request for %{public}@ [minutes] for request %{public}@", &v8, 0x20u);

    if ((v3 & 1) == 0)
    {
    }
  }
}

@end