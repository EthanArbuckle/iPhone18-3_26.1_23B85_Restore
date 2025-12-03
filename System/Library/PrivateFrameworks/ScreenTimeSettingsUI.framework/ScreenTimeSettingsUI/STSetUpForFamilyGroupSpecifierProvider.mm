@interface STSetUpForFamilyGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)coordinator presenter:(id)presenter;
- (STSetUpForFamilyGroupSpecifierProvider)init;
- (UIViewController)presenter;
- (void)_updateEnabledValue;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)presentAppleAccountSetupFamilyController:(id)controller;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)setCoordinator:(id)coordinator;
@end

@implementation STSetUpForFamilyGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)coordinator presenter:(id)presenter
{
  presenterCopy = presenter;
  coordinatorCopy = coordinator;
  v8 = [self providerWithCoordinator:coordinatorCopy];
  [v8 setPresenter:presenterCopy];

  [v8 setCoordinator:coordinatorCopy];

  return v8;
}

- (STSetUpForFamilyGroupSpecifierProvider)init
{
  v14.receiver = self;
  v14.super_class = STSetUpForFamilyGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v14 init];
  v3 = v2;
  if (v2)
  {
    [(STGroupSpecifierProvider *)v2 setIsHidden:1];
    v4 = +[STScreenTimeSettingsUIBundle bundle];
    v5 = [v4 localizedStringForKey:@"SetUpForFamilyFooterText" value:&stru_28766E5A8 table:0];
    groupSpecifier = [(STGroupSpecifierProvider *)v3 groupSpecifier];
    [groupSpecifier setObject:v5 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v7 = [v4 localizedStringForKey:@"SetUpForFamilyButtonName" value:&stru_28766E5A8 table:0];
    v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:v3 set:0 get:0 detail:0 cell:13 edit:0];
    [v8 setButtonAction:sel_presentAppleAccountSetupFamilyController_];
    if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
    {
      [v8 setButtonAction:sel_showStoreDemoAlert];
    }

    setupFamilySpecifier = v3->_setupFamilySpecifier;
    v3->_setupFamilySpecifier = v8;
    v10 = v8;

    mutableSpecifiers = [(STGroupSpecifierProvider *)v3 mutableSpecifiers];
    [mutableSpecifiers addObject:v10];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];

    [mEMORY[0x277D262A0] registerObserver:v3];
    [(STSetUpForFamilyGroupSpecifierProvider *)v3 _updateEnabledValue];
  }

  return v3;
}

- (void)dealloc
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = STSetUpForFamilyGroupSpecifierProvider;
  [(STGroupSpecifierProvider *)&v4 dealloc];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"viewModel.canSetUpFamily" context:@"STSetUpForFamilyGroupSpecifierProviderObservationContext"];
  v6.receiver = self;
  v6.super_class = STSetUpForFamilyGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.canSetUpFamily" options:4 context:@"STSetUpForFamilyGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"STSetUpForFamilyGroupSpecifierProviderObservationContext")
  {
    pathCopy = path;
    [(STRootGroupSpecifierProvider *)self coordinator];

    v12 = [pathCopy isEqualToString:@"viewModel.canSetUpFamily"];
    if (v12)
    {
      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      v14 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

      presenter = [(STSetUpForFamilyGroupSpecifierProvider *)self presenter];
      if (presenter)
      {
        coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
        viewModel = [coordinator viewModel];
        v17 = [viewModel canSetUpFamily] ^ 1;
        if (v14 == 2)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        [(STGroupSpecifierProvider *)self setIsHidden:v18];
      }

      else
      {
        [(STGroupSpecifierProvider *)self setIsHidden:v14 == 2];
      }
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = STSetUpForFamilyGroupSpecifierProvider;
    pathCopy2 = path;
    [(STSetUpForFamilyGroupSpecifierProvider *)&v20 observeValueForKeyPath:pathCopy2 ofObject:object change:change context:context];
  }
}

- (void)_updateEnabledValue
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]] != 2;

  v6 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  setupFamilySpecifier = [(STSetUpForFamilyGroupSpecifierProvider *)self setupFamilySpecifier];
  [setupFamilySpecifier setObject:v6 forKeyedSubscript:*MEMORY[0x277D3FF38]];
}

- (void)presentAppleAccountSetupFamilyController:(id)controller
{
  controllerCopy = controller;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v5 = getFACircleStateControllerClass_softClass;
  v29 = getFACircleStateControllerClass_softClass;
  if (!getFACircleStateControllerClass_softClass)
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __getFACircleStateControllerClass_block_invoke;
    v24 = &unk_279B7E1E0;
    v25 = &v26;
    __getFACircleStateControllerClass_block_invoke(&v21);
    v5 = v27[3];
  }

  v6 = v5;
  _Block_object_dispose(&v26, 8);
  v7 = [v5 alloc];
  presenter = [(STSetUpForFamilyGroupSpecifierProvider *)self presenter];
  v9 = [v7 initWithPresenter:presenter];
  controller = self->_controller;
  self->_controller = v9;

  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v11 = getFACircleContextClass_softClass;
  v29 = getFACircleContextClass_softClass;
  if (!getFACircleContextClass_softClass)
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __getFACircleContextClass_block_invoke;
    v24 = &unk_279B7E1E0;
    v25 = &v26;
    __getFACircleContextClass_block_invoke(&v21);
    v11 = v27[3];
  }

  v12 = v11;
  _Block_object_dispose(&v26, 8);
  v13 = [v11 alloc];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v14 = getFACircleEventTypeInitiateSymbolLoc_ptr;
  v29 = getFACircleEventTypeInitiateSymbolLoc_ptr;
  if (!getFACircleEventTypeInitiateSymbolLoc_ptr)
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __getFACircleEventTypeInitiateSymbolLoc_block_invoke;
    v24 = &unk_279B7E1E0;
    v25 = &v26;
    v15 = FamilyCircleUILibrary();
    v16 = dlsym(v15, "FACircleEventTypeInitiate");
    *(v25[1] + 24) = v16;
    getFACircleEventTypeInitiateSymbolLoc_ptr = *(v25[1] + 24);
    v14 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v14)
  {
    [STSetUpForFamilyGroupSpecifierProvider presentAppleAccountSetupFamilyController:];
  }

  v17 = [v13 initWithEventType:*v14];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v18 = getFACircleClientNameScreenTimeSymbolLoc_ptr;
  v29 = getFACircleClientNameScreenTimeSymbolLoc_ptr;
  if (!getFACircleClientNameScreenTimeSymbolLoc_ptr)
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __getFACircleClientNameScreenTimeSymbolLoc_block_invoke;
    v24 = &unk_279B7E1E0;
    v25 = &v26;
    v19 = FamilyCircleUILibrary();
    v20 = dlsym(v19, "FACircleClientNameScreenTime");
    *(v25[1] + 24) = v20;
    getFACircleClientNameScreenTimeSymbolLoc_ptr = *(v25[1] + 24);
    v18 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v18)
  {
    [STSetUpForFamilyGroupSpecifierProvider presentAppleAccountSetupFamilyController:];
  }

  [v17 setClientName:*v18];
  [(FACircleStateController *)self->_controller performWithContext:v17 completion:&__block_literal_global_18];
}

void __83__STSetUpForFamilyGroupSpecifierProvider_presentAppleAccountSetupFamilyController___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 success] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __83__STSetUpForFamilyGroupSpecifierProvider_presentAppleAccountSetupFamilyController___block_invoke_cold_1(v2);
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  [(STSetUpForFamilyGroupSpecifierProvider *)self _updateEnabledValue:notification];
  setupFamilySpecifier = [(STSetUpForFamilyGroupSpecifierProvider *)self setupFamilySpecifier];
  [(STGroupSpecifierProvider *)self reloadSpecifier:setupFamilySpecifier animated:1];

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v7 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E68]];

  presenter = [(STSetUpForFamilyGroupSpecifierProvider *)self presenter];
  if (presenter)
  {
    coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
    viewModel = [coordinator viewModel];
    v10 = [viewModel canSetUpFamily] ^ 1;
    if (v7 == 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    [(STGroupSpecifierProvider *)self setIsHidden:v11];
  }

  else
  {
    [(STGroupSpecifierProvider *)self setIsHidden:v7 == 2];
  }
}

- (UIViewController)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (void)presentAppleAccountSetupFamilyController:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getFACircleClientNameScreenTime(void)"];
  [v0 handleFailureInFunction:v1 file:@"STSetUpForFamilyGroupSpecifierProvider.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)presentAppleAccountSetupFamilyController:.cold.2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getFACircleEventTypeInitiate(void)"];
  [v0 handleFailureInFunction:v1 file:@"STSetUpForFamilyGroupSpecifierProvider.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

void __83__STSetUpForFamilyGroupSpecifierProvider_presentAppleAccountSetupFamilyController___block_invoke_cold_1(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  v2 = 138543362;
  v3 = v1;
  _os_log_error_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to initiate family: %{public}@", &v2, 0xCu);
}

@end