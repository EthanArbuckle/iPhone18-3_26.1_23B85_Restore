@interface STFamilyMemberGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)a3 presentedAsModal:(BOOL)a4;
+ (id)providerWithCoordinator:(id)a3 rootViewController:(id)a4;
- (STFamilyMemberGroupSpecifierProvider)init;
- (UIViewController)rootViewController;
- (id)createSpecifierForUser:(id)a3 shouldWarn:(BOOL)a4;
- (id)familySpecifiers;
- (void)dealloc;
- (void)imageDidUpdate:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)setCoordinator:(id)a3;
- (void)showChildOnboardingFlow:(id)a3;
- (void)showChildOnboardingOrChildRootViewController:(id)a3;
- (void)showChildRootViewController:(id)a3;
@end

@implementation STFamilyMemberGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)a3 rootViewController:(id)a4
{
  v5 = a4;
  v6 = [(STRootGroupSpecifierProvider *)STFamilyMemberGroupSpecifierProvider providerWithCoordinator:a3];
  [v6 setRootViewController:v5];

  return v6;
}

+ (id)providerWithCoordinator:(id)a3 presentedAsModal:(BOOL)a4
{
  v4 = a4;
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___STFamilyMemberGroupSpecifierProvider;
  v5 = objc_msgSendSuper2(&v7, sel_providerWithCoordinator_, a3);
  [v5 setPresentedAsModal:v4];

  return v5;
}

- (STFamilyMemberGroupSpecifierProvider)init
{
  v10.receiver = self;
  v10.super_class = STFamilyMemberGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v10 init];
  if (v2)
  {
    v3 = MEMORY[0x277D3FAD8];
    v4 = +[STScreenTimeSettingsUIBundle bundle];
    v5 = [v4 localizedStringForKey:@"FamilyGroupName" value:&stru_28766E5A8 table:0];
    v6 = [v3 groupSpecifierWithName:v5];

    [v6 setIdentifier:@"FAMILY"];
    [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v6];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel_imageDidUpdate_ name:*MEMORY[0x277D4BDC0] object:0];

    v8 = [MEMORY[0x277D262A0] sharedConnection];
    [v8 registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v5.receiver = self;
  v5.super_class = STFamilyMemberGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v5 invalidate];
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STFamilyMemberGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"viewModel.screenTimeEnabled" context:"STFamilyMemberGroupSpecifierProviderObservationContext"];
  [v5 removeObserver:self forKeyPath:@"viewModel.children" context:"STFamilyMemberGroupSpecifierProviderObservationContext"];
  v6.receiver = self;
  v6.super_class = STFamilyMemberGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"viewModel.children" options:4 context:"STFamilyMemberGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"viewModel.screenTimeEnabled" options:4 context:"STFamilyMemberGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == "STFamilyMemberGroupSpecifierProviderObservationContext")
  {
    v12 = [(STFamilyMemberGroupSpecifierProvider *)self familySpecifiers:a3];
    v7 = [MEMORY[0x277D262A0] sharedConnection];
    v8 = [v7 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

    if ([v12 count])
    {
      v9 = v8 == 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = v9;
    [(STGroupSpecifierProvider *)self setIsHidden:v10];
    v11 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
    [v11 replaceObjectsInRange:0 withObjectsFromArray:{objc_msgSend(v11, "count"), v12}];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = STFamilyMemberGroupSpecifierProvider;
    [(STFamilyMemberGroupSpecifierProvider *)&v13 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [v5 effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  v9 = [(STGroupSpecifierProvider *)self specifiers];
  if ([v9 count])
  {
    v7 = v6 == 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  [(STGroupSpecifierProvider *)self setIsHidden:v8];
}

- (id)createSpecifierForUser:(id)a3 shouldWarn:(BOOL)a4
{
  v5 = a3;
  v6 = MEMORY[0x277D3FAD8];
  v7 = [v5 name];
  v8 = [v6 preferenceSpecifierNamed:v7 target:self set:0 get:sel_totalChildUsageTime_ detail:0 cell:2 edit:0];

  [v8 setControllerLoadAction:sel_showChildOnboardingOrChildRootViewController_];
  v9 = [v5 dsid];
  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"CHILD_%@", v9];
    [v8 setIdentifier:v10];

    [v8 setUserInfo:v5];
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277D4BDD0]];
    v11 = [MEMORY[0x277D4BD98] sharedCache];
    v12 = [v5 name];
    v13 = [v11 personImageWithDSID:v9 fullName:v12];
    [v8 setObject:v13 forKeyedSubscript:*MEMORY[0x277D3FFC0]];
  }

  else
  {
    [v8 setUserInfo:v5];
    [v8 setObject:0 forKeyedSubscript:*MEMORY[0x277D4BDD0]];
    [v8 setObject:0 forKeyedSubscript:*MEMORY[0x277D3FFC0]];
  }

  v14 = MEMORY[0x277CCABB0];
  v15 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v15))
  {
    v16 = *MEMORY[0x277D76F30];
  }

  else
  {
    PSRoundToPixel();
  }

  v17 = [v14 numberWithDouble:v16];
  [v8 setObject:v17 forKeyedSubscript:*MEMORY[0x277D40140]];

  [v8 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v8 setObject:&unk_28769D838 forKeyedSubscript:*MEMORY[0x277CEC9A8]];

  return v8;
}

- (id)familySpecifiers
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(STRootGroupSpecifierProvider *)self coordinator];
  v4 = [v3 viewModel];
  v5 = MEMORY[0x277CBEB18];
  v6 = [v4 children];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v4 children];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = -[STFamilyMemberGroupSpecifierProvider createSpecifierForUser:shouldWarn:](self, "createSpecifierForUser:shouldWarn:", *(*(&v15 + 1) + 8 * i), [*(*(&v15 + 1) + 8 * i) hasDeviceWithoutUsageReported]);
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)imageDidUpdate:(id)a3
{
  v13 = a3;
  v4 = [v13 userInfo];
  v5 = *MEMORY[0x277D4BDD0];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D4BDD0]];

  v7 = [(STGroupSpecifierProvider *)self specifiers];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"properties.%K == %@", v5, v6];
  v9 = [v7 filteredArrayUsingPredicate:v8];
  v10 = [v9 firstObject];

  if (v10)
  {
    v11 = [v13 userInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D4BDD8]];

    [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FFC0]];
    [(STGroupSpecifierProvider *)self reloadSpecifier:v10 animated:0];
  }
}

- (void)showChildOnboardingOrChildRootViewController:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = [v5 dsid];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [(STRootGroupSpecifierProvider *)self coordinator];
  v10 = [v9 viewModel];
  v11 = [v10 children];

  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v12)
  {

LABEL_15:
    [(STFamilyMemberGroupSpecifierProvider *)self showChildOnboardingFlow:v4];
    goto LABEL_16;
  }

  v13 = v12;
  v20 = v6;
  v21 = self;
  v14 = 0;
  v15 = *v23;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v23 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v22 + 1) + 8 * i);
      v18 = [v17 dsid];
      v19 = [v18 isEqualToNumber:v8];

      if (v19)
      {
        v14 = [v17 isManaged];
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v13);

  v6 = v20;
  self = v21;
  if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

  [(STFamilyMemberGroupSpecifierProvider *)v21 showChildRootViewController:v4];
LABEL_16:
}

- (void)showChildOnboardingFlow:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(STGroupSpecifierProvider *)self delegate];
  [v5 setParentController:v6];
  v7 = [v6 rootController];
  [v5 setRootController:v7];

  [v5 setSpecifier:v4];
  v8 = [v5 coordinator];
  [v8 setHasShownMiniBuddy:1];
  v9 = [[STIntroductionController alloc] initWithNewUserRootViewModelCoordinator:v8];
  v10 = [v8 viewModel];
  v11 = [v10 me];
  v12 = [v11 isRemoteUser];

  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__STFamilyMemberGroupSpecifierProvider_showChildOnboardingFlow___block_invoke;
  v16[3] = &unk_279B7D828;
  v13 = v8;
  v17 = v13;
  v20 = v12;
  objc_copyWeak(&v19, &location);
  v14 = v5;
  v18 = v14;
  [(STIntroductionController *)v9 setCompletionBlock:v16];
  v15 = [(STFamilyMemberGroupSpecifierProvider *)self rootViewController];
  [(STIntroductionController *)v9 presentOverViewController:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __64__STFamilyMemberGroupSpecifierProvider_showChildOnboardingFlow___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = [v5 parentalControlsPasscode];
    v9 = [v6 recoveryAltDSID];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__STFamilyMemberGroupSpecifierProvider_showChildOnboardingFlow___block_invoke_2;
    v10[3] = &unk_279B7D800;
    v15 = *(a1 + 56);
    v11 = v6;
    v12 = *(a1 + 32);
    objc_copyWeak(&v14, (a1 + 48));
    v13 = *(a1 + 40);
    [v7 enableManagementWithPIN:v8 recoveryAltDSID:v9 completionHandler:v10];

    objc_destroyWeak(&v14);
  }
}

void __64__STFamilyMemberGroupSpecifierProvider_showChildOnboardingFlow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[STUILog budgets];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __74__STEnableRemoteManagementGroupSpecifierProvider_showChildOnboardingFlow___block_invoke_2_cold_1(v3, v4);
    }
  }

  else
  {
    if ((*(a1 + 64) & 1) != 0 || [*(a1 + 32) deviceForChild])
    {
      [*(a1 + 40) applyIntroductionViewModel:*(a1 + 32) withCompletionHandler:0];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained showController:*(a1 + 48) animated:1];
  }
}

- (void)showChildRootViewController:(id)a3
{
  v4 = a3;
  v7 = objc_opt_new();
  v5 = [(STGroupSpecifierProvider *)self delegate];
  [v7 setParentController:v5];
  v6 = [v5 rootController];
  [v7 setRootController:v6];

  [v7 setSpecifier:v4];
  [(STGroupSpecifierProvider *)self showController:v7 animated:1];
}

- (UIViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

@end