@interface STCommunicationSafetyAnalyticsTipGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)a3 rootViewController:(id)a4;
- (BOOL)_shouldShowAnalyticsTip;
- (STCommunicationSafetyAnalyticsTipGroupSpecifierProvider)init;
- (UIViewController)rootViewController;
- (void)_acknowledgeTip;
- (void)_setCommunicationSafetyAnalyticsTip;
- (void)_showCommunicationSafetyAnalyticsTipIfNeeded;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
@end

@implementation STCommunicationSafetyAnalyticsTipGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)a3 rootViewController:(id)a4
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___STCommunicationSafetyAnalyticsTipGroupSpecifierProvider;
  v5 = a4;
  v6 = objc_msgSendSuper2(&v8, sel_providerWithCoordinator_, a3);
  [v6 setRootViewController:{v5, v8.receiver, v8.super_class}];

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
  v5 = [v4 UUIDString];
  v6 = [v3 groupSpecifierWithID:v5];

  [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v6];
  return v2;
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyReceivingRestricted" context:"STCommunicationSafetyAnalyticsTipGroupSpecifierProviderObservationContext"];
  [v5 removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetySendingRestricted" context:"STCommunicationSafetyAnalyticsTipGroupSpecifierProviderObservationContext"];
  [v5 removeObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyAnalyticsEnabled" context:"STCommunicationSafetyAnalyticsTipGroupSpecifierProviderObservationContext"];
  [v5 removeObserver:self forKeyPath:@"viewModel.me.hasPasscode"];
  v6.receiver = self;
  v6.super_class = STCommunicationSafetyAnalyticsTipGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:v4];
  if (v4)
  {
    [(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)self _setCommunicationSafetyAnalyticsTip];
  }

  [v4 addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetySendingRestricted" options:5 context:"STCommunicationSafetyAnalyticsTipGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyReceivingRestricted" options:5 context:"STCommunicationSafetyAnalyticsTipGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"communicationSafetyCoordinator.viewModel.isCommunicationSafetyAnalyticsEnabled" options:5 context:"STCommunicationSafetyAnalyticsTipGroupSpecifierProviderObservationContext"];
  [v4 addObserver:self forKeyPath:@"viewModel.me.hasPasscode" options:5 context:"STCommunicationSafetyAnalyticsTipGroupSpecifierProviderObservationContext"];
}

- (void)_setCommunicationSafetyAnalyticsTip
{
  v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:13 edit:0];
  communicationSafetyAnalyticsTipSpecifer = self->_communicationSafetyAnalyticsTipSpecifer;
  self->_communicationSafetyAnalyticsTipSpecifer = v3;

  [(PSSpecifier *)self->_communicationSafetyAnalyticsTipSpecifer setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  v5 = [STCommunicationSafetyOnboardingController alloc];
  v6 = [(STRootGroupSpecifierProvider *)self coordinator];
  v7 = [(STCommunicationSafetyOnboardingController *)v5 initWithCoordinator:v6];

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == "STCommunicationSafetyAnalyticsTipGroupSpecifierProviderObservationContext")
  {

    [(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)self _showCommunicationSafetyAnalyticsTipIfNeeded:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = STCommunicationSafetyAnalyticsTipGroupSpecifierProvider;
    [(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)_showCommunicationSafetyAnalyticsTipIfNeeded
{
  v3 = [(STRootGroupSpecifierProvider *)self coordinator];
  v4 = [v3 communicationSafetyCoordinator];
  v5 = [v4 viewModel];
  v6 = [v5 isCommunicationSafetyAnalyticsEnabled];

  if (v6)
  {

    [(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)self _acknowledgeTip];
  }

  else
  {
    if ([(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)self _shouldShowAnalyticsTip])
    {
      [(STGroupSpecifierProvider *)self setIsHidden:0];
      v7 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
      v8 = [(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)self communicationSafetyAnalyticsTipSpecifer];
      v9 = [v7 containsObject:v8];

      if (v9)
      {
        return;
      }

      v14 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
      v10 = [(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)self communicationSafetyAnalyticsTipSpecifer];
      [v14 addObject:v10];
    }

    else
    {
      v11 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
      v12 = [(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)self communicationSafetyAnalyticsTipSpecifer];
      v13 = [v11 containsObject:v12];

      if (!v13)
      {
        return;
      }

      [(STGroupSpecifierProvider *)self setIsHidden:1];
      v14 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
      v10 = [(STCommunicationSafetyAnalyticsTipGroupSpecifierProvider *)self communicationSafetyAnalyticsTipSpecifer];
      [v14 removeObject:v10];
    }
  }
}

- (BOOL)_shouldShowAnalyticsTip
{
  v2 = [(STRootGroupSpecifierProvider *)self coordinator];
  v3 = [v2 communicationSafetyCoordinator];
  v4 = [v3 viewModel];

  v5 = [v2 viewModel];
  if ([v4 isCommunicationSafetySendingRestricted])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 isCommunicationSafetyReceivingRestricted] ^ 1;
  }

  v7 = [v4 isCommunicationSafetyAnalyticsEnabled];
  v8 = 0;
  if ((v6 & 1) == 0 && (v7 & 1) == 0)
  {
    v9 = [v5 me];
    v10 = [v9 dsid];
    v11 = [v10 stringValue];
    v12 = [STCommunicationSafetyAnalyticsTipCell didAcknowledgeTipViewForDSID:v11];

    if (v12)
    {
      v8 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CF0130] sharedInstance];
      v14 = [v13 shieldSignInOrCreateFlows];

      v8 = v14 ^ 1;
    }
  }

  return v8;
}

- (void)_acknowledgeTip
{
  [(STGroupSpecifierProvider *)self setIsHidden:1];
  v3 = [(STRootGroupSpecifierProvider *)self coordinator];
  v7 = [v3 viewModel];

  v4 = [v7 me];
  v5 = [v4 dsid];
  v6 = [v5 stringValue];

  [STCommunicationSafetyAnalyticsTipCell acknowledgeTipViewForDSID:v6];
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