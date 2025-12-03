@interface STAskForTimeGroupSpecifierProvider
- (STAskForTimeGroupSpecifierProvider)init;
- (id)_createSpecifierForAskForMore:(id)more;
- (id)requestSpecifiers;
- (void)confirmRespondToRequest:(id)request;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)respondToRequest:(id)request withApproval:(BOOL)approval timeApproved:(id)approved;
- (void)setCoordinator:(id)coordinator;
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

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"viewModel.canViewAskForTimeRequests" context:"STAskForTimeGroupSpecifierProviderObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.pendingAskForTimeByIdentifier" context:"STAskForTimeGroupSpecifierProviderObservationContext"];
  v6.receiver = self;
  v6.super_class = STAskForTimeGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"timeAllowancesCoordinator.viewModel.pendingAskForTimeByIdentifier" options:4 context:"STAskForTimeGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.canViewAskForTimeRequests" options:4 context:"STAskForTimeGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == "STAskForTimeGroupSpecifierProviderObservationContext")
  {
    v11 = [(STAskForTimeGroupSpecifierProvider *)self requestSpecifiers:path];
    coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
    viewModel = [coordinator viewModel];
    if ([viewModel canViewAskForTimeRequests])
    {
      v9 = [v11 count] == 0;
    }

    else
    {
      v9 = 1;
    }

    [(STGroupSpecifierProvider *)self setIsHidden:v9];

    mutableSpecifiers = [(STGroupSpecifierProvider *)self mutableSpecifiers];
    [mutableSpecifiers replaceObjectsInRange:0 withObjectsFromArray:{objc_msgSend(mutableSpecifiers, "count"), v11}];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = STAskForTimeGroupSpecifierProvider;
    [(STAskForTimeGroupSpecifierProvider *)&v12 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (id)_createSpecifierForAskForMore:(id)more
{
  moreCopy = more;
  usageType = [moreCopy usageType];
  if (usageType == 2)
  {
    budgetedIdentifier = [moreCopy budgetedIdentifier];
    _lp_userVisibleHost = [budgetedIdentifier _lp_userVisibleHost];
    v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:_lp_userVisibleHost target:self set:0 get:0 detail:0 cell:2 edit:objc_opt_class()];
    [v11 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [v11 setObject:_lp_userVisibleHost forKeyedSubscript:*MEMORY[0x277D40170]];
    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    userInterfaceStyle = [currentTraitCollection userInterfaceStyle];
    v22 = _lp_userVisibleHost;
    if ([v22 length])
    {
      v47 = userInterfaceStyle;
      v48 = currentTraitCollection;
      v49 = budgetedIdentifier;
      v23 = objc_opt_new();
      [v23 setScheme:@"https"];
      [v23 setHost:v22];
      v24 = [v23 URL];
      _lp_highLevelDomain = [v24 _lp_highLevelDomain];
      host = [v23 host];
      v27 = [v23 URL];
      v28 = _lp_highLevelDomain;
      v29 = host;
      v30 = v27;
      if ([v28 length])
      {
        v31 = [v28 substringToIndex:1];
        uppercaseString = [v31 uppercaseString];
      }

      else
      {
        v35 = [v29 substringToIndex:1];
        uppercaseString = [v35 uppercaseString];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [STAllowanceItemSearchResultsController tableView:v30 cellForRowAtIndexPath:v29];
        }
      }

      userInterfaceStyle = v47;

      currentTraitCollection = v48;
      budgetedIdentifier = v49;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [STAllowanceItemSearchResultsController tableView:v22 cellForRowAtIndexPath:?];
      }

      uppercaseString = 0;
    }

    v36 = userInterfaceStyle == 2;

    mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
    v38 = [mEMORY[0x277D4BD98] monogramImageForInitial:uppercaseString useDarkColors:v36];
    [v11 setObject:v38 forKeyedSubscript:*MEMORY[0x277D3FFC0]];

    v39 = +[STScreenTimeSettingsUIBundle bundle];
    v40 = [v39 localizedStringForKey:@"AskForTimeTypeWebsite" value:&stru_28766E5A8 table:0];
    [v11 setObject:v40 forKeyedSubscript:*MEMORY[0x277D40160]];
  }

  else
  {
    if (usageType == 1)
    {
      budgetedIdentifier2 = [moreCopy budgetedIdentifier];
      v8 = STCategoryNameWithIdentifier();
      v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:2 edit:objc_opt_class()];
      [v11 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
      mEMORY[0x277D4BD98]2 = [MEMORY[0x277D4BD98] sharedCache];
      v14 = [mEMORY[0x277D4BD98]2 imageForCategoryIdentifier:budgetedIdentifier2];
      [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x277D3FFC0]];

      [v11 setObject:v8 forKeyedSubscript:*MEMORY[0x277D40170]];
      v15 = +[STScreenTimeSettingsUIBundle bundle];
      v16 = v15;
      v17 = @"AskForTimeTypeCategory";
    }

    else
    {
      if (usageType)
      {
        v11 = 0;
        goto LABEL_22;
      }

      budgetedIdentifier2 = [moreCopy budgetedIdentifier];
      mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
      v8 = [mEMORY[0x277D4B8C0] appInfoForBundleIdentifier:budgetedIdentifier2];

      v9 = MEMORY[0x277D3FAD8];
      displayName = [v8 displayName];
      v11 = [v9 preferenceSpecifierNamed:displayName target:self set:0 get:0 detail:0 cell:2 edit:objc_opt_class()];

      if ([v8 source] == 2 && (objc_msgSend(budgetedIdentifier2, "isEqualToString:", *MEMORY[0x277D4BBC8]) & 1) == 0)
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

      [v11 setObject:budgetedIdentifier2 forKeyedSubscript:*v12];
      displayName2 = [v8 displayName];
      [v11 setObject:displayName2 forKeyedSubscript:*MEMORY[0x277D40170]];

      v15 = +[STScreenTimeSettingsUIBundle bundle];
      v16 = v15;
      v17 = @"AskForTimeTypeApp";
    }

    v34 = [v15 localizedStringForKey:v17 value:&stru_28766E5A8 table:0];
    [v11 setObject:v34 forKeyedSubscript:*MEMORY[0x277D40160]];
  }

LABEL_22:
  v41 = MEMORY[0x277CCACA8];
  identifier = [moreCopy identifier];
  v43 = [v41 stringWithFormat:@"ASK_%@", identifier];
  [v11 setIdentifier:v43];

  [v11 setUserInfo:moreCopy];
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
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  viewModel = [timeAllowancesCoordinator viewModel];

  v6 = MEMORY[0x277CBEB18];
  pendingAskForTimeByIdentifier = [viewModel pendingAskForTimeByIdentifier];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(pendingAskForTimeByIdentifier, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  pendingAskForTimeByIdentifier2 = [viewModel pendingAskForTimeByIdentifier];
  allValues = [pendingAskForTimeByIdentifier2 allValues];

  v11 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v15 = [(STAskForTimeGroupSpecifierProvider *)self _createSpecifierForAskForMore:*(*(&v17 + 1) + 8 * i)];
        [v8 addObject:v15];
      }

      v12 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v8;
}

- (void)confirmRespondToRequest:(id)request
{
  requestCopy = request;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:sf_isiPad];
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
  v14 = requestCopy;
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

- (void)respondToRequest:(id)request withApproval:(BOOL)approval timeApproved:(id)approved
{
  approvalCopy = approval;
  approvedCopy = approved;
  userInfo = [request userInfo];
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  timeAllowancesCoordinator = [coordinator timeAllowancesCoordinator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__STAskForTimeGroupSpecifierProvider_respondToRequest_withApproval_timeApproved___block_invoke;
  v14[3] = &unk_279B7CD08;
  v17 = approvalCopy;
  v15 = approvedCopy;
  v16 = userInfo;
  v12 = userInfo;
  v13 = approvedCopy;
  [timeAllowancesCoordinator respondToAskForTime:v12 withApproval:approvalCopy timeApproved:v13 completionHandler:v14];
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