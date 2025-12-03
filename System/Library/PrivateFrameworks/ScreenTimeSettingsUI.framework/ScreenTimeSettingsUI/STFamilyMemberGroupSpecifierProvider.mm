@interface STFamilyMemberGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)coordinator presentedAsModal:(BOOL)modal;
+ (id)providerWithCoordinator:(id)coordinator rootViewController:(id)controller;
- (STFamilyMemberGroupSpecifierProvider)init;
- (UIViewController)rootViewController;
- (id)createSpecifierForUser:(id)user shouldWarn:(BOOL)warn;
- (id)familySpecifiers;
- (void)dealloc;
- (void)imageDidUpdate:(id)update;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)setCoordinator:(id)coordinator;
- (void)showChildOnboardingFlow:(id)flow;
- (void)showChildOnboardingOrChildRootViewController:(id)controller;
- (void)showChildRootViewController:(id)controller;
@end

@implementation STFamilyMemberGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)coordinator rootViewController:(id)controller
{
  controllerCopy = controller;
  v6 = [(STRootGroupSpecifierProvider *)STFamilyMemberGroupSpecifierProvider providerWithCoordinator:coordinator];
  [v6 setRootViewController:controllerCopy];

  return v6;
}

+ (id)providerWithCoordinator:(id)coordinator presentedAsModal:(BOOL)modal
{
  modalCopy = modal;
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___STFamilyMemberGroupSpecifierProvider;
  v5 = objc_msgSendSuper2(&v7, sel_providerWithCoordinator_, coordinator);
  [v5 setPresentedAsModal:modalCopy];

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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_imageDidUpdate_ name:*MEMORY[0x277D4BDC0] object:0];

    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v5.receiver = self;
  v5.super_class = STFamilyMemberGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v5 invalidate];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STFamilyMemberGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"viewModel.screenTimeEnabled" context:"STFamilyMemberGroupSpecifierProviderObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"viewModel.children" context:"STFamilyMemberGroupSpecifierProviderObservationContext"];
  v6.receiver = self;
  v6.super_class = STFamilyMemberGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.children" options:4 context:"STFamilyMemberGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.screenTimeEnabled" options:4 context:"STFamilyMemberGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == "STFamilyMemberGroupSpecifierProviderObservationContext")
  {
    v12 = [(STFamilyMemberGroupSpecifierProvider *)self familySpecifiers:path];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v8 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

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
    mutableSpecifiers = [(STGroupSpecifierProvider *)self mutableSpecifiers];
    [mutableSpecifiers replaceObjectsInRange:0 withObjectsFromArray:{objc_msgSend(mutableSpecifiers, "count"), v12}];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = STFamilyMemberGroupSpecifierProvider;
    [(STFamilyMemberGroupSpecifierProvider *)&v13 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  specifiers = [(STGroupSpecifierProvider *)self specifiers];
  if ([specifiers count])
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

- (id)createSpecifierForUser:(id)user shouldWarn:(BOOL)warn
{
  userCopy = user;
  v6 = MEMORY[0x277D3FAD8];
  name = [userCopy name];
  v8 = [v6 preferenceSpecifierNamed:name target:self set:0 get:sel_totalChildUsageTime_ detail:0 cell:2 edit:0];

  [v8 setControllerLoadAction:sel_showChildOnboardingOrChildRootViewController_];
  dsid = [userCopy dsid];
  if (dsid)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"CHILD_%@", dsid];
    [v8 setIdentifier:v10];

    [v8 setUserInfo:userCopy];
    [v8 setObject:dsid forKeyedSubscript:*MEMORY[0x277D4BDD0]];
    mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
    name2 = [userCopy name];
    v13 = [mEMORY[0x277D4BD98] personImageWithDSID:dsid fullName:name2];
    [v8 setObject:v13 forKeyedSubscript:*MEMORY[0x277D3FFC0]];
  }

  else
  {
    [v8 setUserInfo:userCopy];
    [v8 setObject:0 forKeyedSubscript:*MEMORY[0x277D4BDD0]];
    [v8 setObject:0 forKeyedSubscript:*MEMORY[0x277D3FFC0]];
  }

  v14 = MEMORY[0x277CCABB0];
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
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
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v5 = MEMORY[0x277CBEB18];
  children = [viewModel children];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(children, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  children2 = [viewModel children];
  v9 = [children2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(children2);
        }

        v13 = -[STFamilyMemberGroupSpecifierProvider createSpecifierForUser:shouldWarn:](self, "createSpecifierForUser:shouldWarn:", *(*(&v15 + 1) + 8 * i), [*(*(&v15 + 1) + 8 * i) hasDeviceWithoutUsageReported]);
        [v7 addObject:v13];
      }

      v10 = [children2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)imageDidUpdate:(id)update
{
  updateCopy = update;
  userInfo = [updateCopy userInfo];
  v5 = *MEMORY[0x277D4BDD0];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D4BDD0]];

  specifiers = [(STGroupSpecifierProvider *)self specifiers];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"properties.%K == %@", v5, v6];
  v9 = [specifiers filteredArrayUsingPredicate:v8];
  firstObject = [v9 firstObject];

  if (firstObject)
  {
    userInfo2 = [updateCopy userInfo];
    v12 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277D4BDD8]];

    [firstObject setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FFC0]];
    [(STGroupSpecifierProvider *)self reloadSpecifier:firstObject animated:0];
  }
}

- (void)showChildOnboardingOrChildRootViewController:(id)controller
{
  v27 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  userInfo = [controllerCopy userInfo];
  v6 = userInfo;
  if (!userInfo)
  {
    goto LABEL_15;
  }

  dsid = [userInfo dsid];
  if (!dsid)
  {
    goto LABEL_15;
  }

  v8 = dsid;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  children = [viewModel children];

  v12 = [children countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v12)
  {

LABEL_15:
    [(STFamilyMemberGroupSpecifierProvider *)self showChildOnboardingFlow:controllerCopy];
    goto LABEL_16;
  }

  v13 = v12;
  v20 = v6;
  selfCopy = self;
  isManaged = 0;
  v15 = *v23;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v23 != v15)
      {
        objc_enumerationMutation(children);
      }

      v17 = *(*(&v22 + 1) + 8 * i);
      dsid2 = [v17 dsid];
      v19 = [dsid2 isEqualToNumber:v8];

      if (v19)
      {
        isManaged = [v17 isManaged];
      }
    }

    v13 = [children countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v13);

  v6 = v20;
  self = selfCopy;
  if ((isManaged & 1) == 0)
  {
    goto LABEL_15;
  }

  [(STFamilyMemberGroupSpecifierProvider *)selfCopy showChildRootViewController:controllerCopy];
LABEL_16:
}

- (void)showChildOnboardingFlow:(id)flow
{
  flowCopy = flow;
  v5 = objc_opt_new();
  delegate = [(STGroupSpecifierProvider *)self delegate];
  [v5 setParentController:delegate];
  rootController = [delegate rootController];
  [v5 setRootController:rootController];

  [v5 setSpecifier:flowCopy];
  coordinator = [v5 coordinator];
  [coordinator setHasShownMiniBuddy:1];
  v9 = [[STIntroductionController alloc] initWithNewUserRootViewModelCoordinator:coordinator];
  viewModel = [coordinator viewModel];
  v11 = [viewModel me];
  isRemoteUser = [v11 isRemoteUser];

  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__STFamilyMemberGroupSpecifierProvider_showChildOnboardingFlow___block_invoke;
  v16[3] = &unk_279B7D828;
  v13 = coordinator;
  v17 = v13;
  v20 = isRemoteUser;
  objc_copyWeak(&v19, &location);
  v14 = v5;
  v18 = v14;
  [(STIntroductionController *)v9 setCompletionBlock:v16];
  rootViewController = [(STFamilyMemberGroupSpecifierProvider *)self rootViewController];
  [(STIntroductionController *)v9 presentOverViewController:rootViewController];

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

- (void)showChildRootViewController:(id)controller
{
  controllerCopy = controller;
  v7 = objc_opt_new();
  delegate = [(STGroupSpecifierProvider *)self delegate];
  [v7 setParentController:delegate];
  rootController = [delegate rootController];
  [v7 setRootController:rootController];

  [v7 setSpecifier:controllerCopy];
  [(STGroupSpecifierProvider *)self showController:v7 animated:1];
}

- (UIViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

@end