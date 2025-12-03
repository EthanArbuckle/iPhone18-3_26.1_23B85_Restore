@interface STIncludeWebsiteDataGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)coordinator isRootView:(BOOL)view;
- (STIncludeWebsiteDataGroupSpecifierProvider)init;
- (id)includeWebsiteData:(id)data;
- (void)_updateHiddenState;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
- (void)setIncludeWebsiteData:(id)data specifier:(id)specifier;
@end

@implementation STIncludeWebsiteDataGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)coordinator isRootView:(BOOL)view
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___STIncludeWebsiteDataGroupSpecifierProvider;
  v5 = objc_msgSendSuper2(&v7, sel_providerWithCoordinator_, coordinator);
  v5[48] = view;
  [v5 _updateHiddenState];

  return v5;
}

- (STIncludeWebsiteDataGroupSpecifierProvider)init
{
  v10.receiver = self;
  v10.super_class = STIncludeWebsiteDataGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(STGroupSpecifierProvider *)v2 setIsHidden:1];
    v4 = +[STScreenTimeSettingsUIBundle bundle];
    v5 = [v4 localizedStringForKey:@"IncludeWebsiteDataSpecifierName" value:&stru_28766E5A8 table:0];

    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:v3 set:sel_setIncludeWebsiteData_specifier_ get:sel_includeWebsiteData_ detail:0 cell:6 edit:0];
    [(STIncludeWebsiteDataGroupSpecifierProvider *)v3 setToggleIncludeWebsiteDataSpecifier:v6];

    mutableSpecifiers = [(STGroupSpecifierProvider *)v3 mutableSpecifiers];
    toggleIncludeWebsiteDataSpecifier = [(STIncludeWebsiteDataGroupSpecifierProvider *)v3 toggleIncludeWebsiteDataSpecifier];
    [mutableSpecifiers addObject:toggleIncludeWebsiteDataSpecifier];
  }

  return v3;
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"viewModel.canToggleWebsiteData" context:"STIncludeWebsiteDataGroupSpecifierProviderObservationContext"];
  v6.receiver = self;
  v6.super_class = STIncludeWebsiteDataGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.canToggleWebsiteData" options:4 context:"STIncludeWebsiteDataGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == "STIncludeWebsiteDataGroupSpecifierProviderObservationContext")
  {
    pathCopy = path;
    [(STRootGroupSpecifierProvider *)self coordinator];

    v12 = [pathCopy isEqualToString:@"viewModel.canToggleWebsiteData"];
    if (v12)
    {

      [(STIncludeWebsiteDataGroupSpecifierProvider *)self _updateHiddenState];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = STIncludeWebsiteDataGroupSpecifierProvider;
    pathCopy2 = path;
    [(STIncludeWebsiteDataGroupSpecifierProvider *)&v13 observeValueForKeyPath:pathCopy2 ofObject:object change:change context:context];
  }
}

- (void)_updateHiddenState
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];

  canToggleWebsiteData = [viewModel canToggleWebsiteData];
  if (_os_feature_enabled_impl() && ([viewModel me], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isRemoteUser"), v5, v6) && -[STIncludeWebsiteDataGroupSpecifierProvider isRootView](self, "isRootView"))
  {
    v7 = 1;
  }

  else
  {
    v7 = canToggleWebsiteData ^ 1u;
  }

  [(STGroupSpecifierProvider *)self setIsHidden:v7];
}

- (void)setIncludeWebsiteData:(id)data specifier:(id)specifier
{
  dataCopy = data;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  bOOLValue = [dataCopy BOOLValue];

  [coordinator setShareWebUsageEnabled:bOOLValue completionHandler:&__block_literal_global_12];
}

void __78__STIncludeWebsiteDataGroupSpecifierProvider_setIncludeWebsiteData_specifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STUILog persistence];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __78__STIncludeWebsiteDataGroupSpecifierProvider_setIncludeWebsiteData_specifier___block_invoke_cold_1(v2, v3);
    }
  }
}

- (id)includeWebsiteData:(id)data
{
  v3 = MEMORY[0x277CCABB0];
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v6 = [v3 numberWithBool:{objc_msgSend(viewModel, "isWebUsageEnabled")}];

  return v6;
}

void __78__STIncludeWebsiteDataGroupSpecifierProvider_setIncludeWebsiteData_specifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_264BA2000, a2, OS_LOG_TYPE_FAULT, "failed to set include website data enabled: %{public}@", &v2, 0xCu);
}

@end