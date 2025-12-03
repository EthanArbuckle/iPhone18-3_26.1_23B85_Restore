@interface STCommunicationSafetyAnalyticsTipGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)coordinator rootViewController:(id)controller;
- (BOOL)_shouldShowAnalyticsTip;
- (STCommunicationSafetyAnalyticsTipGroupSpecifierProvider)init;
- (UIViewController)rootViewController;
- (void)_acknowledgeTip;
- (void)_setCommunicationSafetyAnalyticsTip;
- (void)_showCommunicationSafetyAnalyticsTipIfNeeded;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
@end

@implementation STCommunicationSafetyAnalyticsTipGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)coordinator rootViewController:(id)controller
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___STCommunicationSafetyAnalyticsTipGroupSpecifierProvider;
  controllerCopy = controller;
  v6 = objc_msgSendSuper2(&v8, sel_providerWithCoordinator_, coordinator);
  [v6 setRootViewController:{controllerCopy, v8.receiver, v8.super_class}];

  return v6;
}

- (STCommunicationSafetyAnalyticsTipGroupSpecifierProvider)init
{
  v8.receiver = self;
  v8.super_class = STCommunicationSafetyAnalyticsTipGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v8 init];
  [(STGroupSpecifierProvider *)v2 setIsHidden:1];
  v3 = MEMORY[0x277D3FAD8];
  v4 = objc_opt_new();
  uUIDString = [v4 UUIDString];
  v6 = [v3 groupSpecifierWithID:uUIDString];

  [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v6];
  return v2;
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyReceivingRestricted" context:"STCommunicationSafetyAnalyticsTipGroupSpecifierProviderObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetySendingRestricted" context:"STCommunicationSafetyAnalyticsTipGroupSpecifierProviderObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyAnalyticsEnabled" context:"STCommunicationSafetyAnalyticsTipGroupSpecifierProviderObservationContext"];
  [coordinator removeObserver:self forKeyPath:@"viewModel.me.hasPasscode"];
  v6.receiver = self;
  v6.super_class = STCommunicationSafetyAnalyticsTipGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  if (coordinatorCopy)
  {
    [(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)self _setCommunicationSafetyAnalyticsTip];
  }

  [coordinatorCopy addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetySendingRestricted" options:5 context:"STCommunicationSafetyAnalyticsTipGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyReceivingRestricted" options:5 context:"STCommunicationSafetyAnalyticsTipGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyAnalyticsEnabled" options:5 context:"STCommunicationSafetyAnalyticsTipGroupSpecifierProviderObservationContext"];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.me.hasPasscode" options:5 context:"STCommunicationSafetyAnalyticsTipGroupSpecifierProviderObservationContext"];
}

- (void)_setCommunicationSafetyAnalyticsTip
{
  v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:13 edit:0];
  communicationSafetyAnalyticsTipSpecifer = self->_communicationSafetyAnalyticsTipSpecifer;
  self->_communicationSafetyAnalyticsTipSpecifer = v3;

  [(PSSpecifier *)self->_communicationSafetyAnalyticsTipSpecifer setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  v5 = [STCommunicationSafetyOnboardingController alloc];
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  v7 = [(STCommunicationSafetyOnboardingController *)v5 initWithCoordinator:coordinator];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__STCommunicationSafetyAnalyticsTipGroupSpecifierProvider__setCommunicationSafetyAnalyticsTip__block_invoke;
  aBlock[3] = &unk_279B7CAE0;
  aBlock[4] = self;
  v15 = v7;
  v8 = v7;
  v9 = _Block_copy(aBlock);
  v10 = _Block_copy(v9);
  [(PSSpecifier *)self->_communicationSafetyAnalyticsTipSpecifer setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FE10]];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__STCommunicationSafetyAnalyticsTipGroupSpecifierProvider__setCommunicationSafetyAnalyticsTip__block_invoke_45;
  v13[3] = &unk_279B7C998;
  v13[4] = self;
  v11 = _Block_copy(v13);
  v12 = _Block_copy(v11);
  [(PSSpecifier *)self->_communicationSafetyAnalyticsTipSpecifer setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF00]];
}

void __94__STCommunicationSafetyAnalyticsTipGroupSpecifierProvider__setCommunicationSafetyAnalyticsTip__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) rootViewController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __94__STCommunicationSafetyAnalyticsTipGroupSpecifierProvider__setCommunicationSafetyAnalyticsTip__block_invoke_2;
  v4[3] = &unk_279B7D8D0;
  objc_copyWeak(&v5, &location);
  [v2 presentOverViewController:v3 skipFeatureEnablement:1 completionBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __94__STCommunicationSafetyAnalyticsTipGroupSpecifierProvider__setCommunicationSafetyAnalyticsTip__block_invoke_2(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (a2 & 1) == 0)
  {
    v17 = WeakRetained;
    [WeakRetained _acknowledgeTip];
    v7 = [v17 coordinator];
    v8 = [v7 communicationSafetyCoordinator];
    v9 = [v8 viewModel];

    [v9 setIsCommunicationSafetyAnalyticsEnabled:a4];
    v10 = [v17 coordinator];
    v11 = [v10 communicationSafetyCoordinator];
    [v11 persistCommunicationSafetySettingsWithCompletionHandler:&__block_literal_global_10];

    v12 = objc_opt_new();
    v13 = [v17 coordinator];
    [v12 setCoordinator:v13];

    v14 = [v17 delegate];
    [v12 setParentController:v14];
    v15 = [v14 rootController];
    [v12 setRootController:v15];

    v16 = [v17 communicationSafetyAnalyticsTipSpecifer];
    [v12 setSpecifier:v16];

    [v17 showController:v12 animated:1];
    WeakRetained = v17;
  }
}

void __94__STCommunicationSafetyAnalyticsTipGroupSpecifierProvider__setCommunicationSafetyAnalyticsTip__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STUILog communicationSafety];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __94__STCommunicationSafetyAnalyticsTipGroupSpecifierProvider__setCommunicationSafetyAnalyticsTip__block_invoke_3_cold_1(v2, v3);
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == "STCommunicationSafetyAnalyticsTipGroupSpecifierProviderObservationContext")
  {

    [(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)self _showCommunicationSafetyAnalyticsTipIfNeeded:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = STCommunicationSafetyAnalyticsTipGroupSpecifierProvider;
    [(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_showCommunicationSafetyAnalyticsTipIfNeeded
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  communicationSafetyCoordinator = [coordinator communicationSafetyCoordinator];
  viewModel = [communicationSafetyCoordinator viewModel];
  isCommunicationSafetyAnalyticsEnabled = [viewModel isCommunicationSafetyAnalyticsEnabled];

  if (isCommunicationSafetyAnalyticsEnabled)
  {

    [(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)self _acknowledgeTip];
  }

  else
  {
    if ([(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)self _shouldShowAnalyticsTip])
    {
      [(STGroupSpecifierProvider *)self setIsHidden:0];
      mutableSpecifiers = [(STGroupSpecifierProvider *)self mutableSpecifiers];
      communicationSafetyAnalyticsTipSpecifer = [(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)self communicationSafetyAnalyticsTipSpecifer];
      v9 = [mutableSpecifiers containsObject:communicationSafetyAnalyticsTipSpecifer];

      if (v9)
      {
        return;
      }

      mutableSpecifiers2 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
      communicationSafetyAnalyticsTipSpecifer2 = [(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)self communicationSafetyAnalyticsTipSpecifer];
      [mutableSpecifiers2 addObject:communicationSafetyAnalyticsTipSpecifer2];
    }

    else
    {
      mutableSpecifiers3 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
      communicationSafetyAnalyticsTipSpecifer3 = [(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)self communicationSafetyAnalyticsTipSpecifer];
      v13 = [mutableSpecifiers3 containsObject:communicationSafetyAnalyticsTipSpecifer3];

      if (!v13)
      {
        return;
      }

      [(STGroupSpecifierProvider *)self setIsHidden:1];
      mutableSpecifiers2 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
      communicationSafetyAnalyticsTipSpecifer2 = [(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)self communicationSafetyAnalyticsTipSpecifer];
      [mutableSpecifiers2 removeObject:communicationSafetyAnalyticsTipSpecifer2];
    }
  }
}

- (BOOL)_shouldShowAnalyticsTip
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  communicationSafetyCoordinator = [coordinator communicationSafetyCoordinator];
  viewModel = [communicationSafetyCoordinator viewModel];

  viewModel2 = [coordinator viewModel];
  if ([viewModel isCommunicationSafetySendingRestricted])
  {
    v6 = 0;
  }

  else
  {
    v6 = [viewModel isCommunicationSafetyReceivingRestricted] ^ 1;
  }

  isCommunicationSafetyAnalyticsEnabled = [viewModel isCommunicationSafetyAnalyticsEnabled];
  v8 = 0;
  if ((v6 & 1) == 0 && (isCommunicationSafetyAnalyticsEnabled & 1) == 0)
  {
    v9 = [viewModel2 me];
    dsid = [v9 dsid];
    stringValue = [dsid stringValue];
    v12 = [STCommunicationSafetyAnalyticsTipCell didAcknowledgeTipViewForDSID:stringValue];

    if (v12)
    {
      v8 = 0;
    }

    else
    {
      mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
      shieldSignInOrCreateFlows = [mEMORY[0x277CF0130] shieldSignInOrCreateFlows];

      v8 = shieldSignInOrCreateFlows ^ 1;
    }
  }

  return v8;
}

- (void)_acknowledgeTip
{
  [(STGroupSpecifierProvider *)self setIsHidden:1];
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];

  v4 = [viewModel me];
  dsid = [v4 dsid];
  stringValue = [dsid stringValue];

  [STCommunicationSafetyAnalyticsTipCell acknowledgeTipViewForDSID:stringValue];
}

- (UIViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

void __94__STCommunicationSafetyAnalyticsTipGroupSpecifierProvider__setCommunicationSafetyAnalyticsTip__block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "Could not save Communication Safety settings: %{public}@", &v2, 0xCu);
}

@end