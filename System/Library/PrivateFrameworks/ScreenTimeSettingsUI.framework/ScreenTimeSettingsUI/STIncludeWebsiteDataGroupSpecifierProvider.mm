@interface STIncludeWebsiteDataGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)a3 isRootView:(BOOL)a4;
- (STIncludeWebsiteDataGroupSpecifierProvider)init;
- (id)includeWebsiteData:(id)a3;
- (void)_updateHiddenState;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
- (void)setIncludeWebsiteData:(id)a3 specifier:(id)a4;
@end

@implementation STIncludeWebsiteDataGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)a3 isRootView:(BOOL)a4
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___STIncludeWebsiteDataGroupSpecifierProvider;
  v5 = objc_msgSendSuper2(&v7, sel_providerWithCoordinator_, a3);
  v5[48] = a4;
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

    v7 = [(STGroupSpecifierProvider *)v3 mutableSpecifiers];
    v8 = [(STIncludeWebsiteDataGroupSpecifierProvider *)v3 toggleIncludeWebsiteDataSpecifier];
    [v7 addObject:v8];
  }

  return v3;
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"viewModel.canToggleWebsiteData" context:"STIncludeWebsiteDataGroupSpecifierProviderObservationContext"];
  v6.receiver = self;
  v6.super_class = STIncludeWebsiteDataGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"viewModel.canToggleWebsiteData" options:4 context:"STIncludeWebsiteDataGroupSpecifierProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == "STIncludeWebsiteDataGroupSpecifierProviderObservationContext")
  {
    v11 = a3;
    [(STRootGroupSpecifierProvider *)self coordinator];

    v12 = [v11 isEqualToString:@"viewModel.canToggleWebsiteData"];
    if (v12)
    {

      [(STIncludeWebsiteDataGroupSpecifierProvider *)self _updateHiddenState];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = STIncludeWebsiteDataGroupSpecifierProvider;
    v10 = a3;
    [(STIncludeWebsiteDataGroupSpecifierProvider *)&v13 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
  }
}

- (void)_updateHiddenState
{
  v3 = [(STRootGroupSpecifierProvider *)self coordinator];
  v8 = [v3 viewModel];

  v4 = [v8 canToggleWebsiteData];
  if (_os_feature_enabled_impl() && ([v8 me], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isRemoteUser"), v5, v6) && -[STIncludeWebsiteDataGroupSpecifierProvider isRootView](self, "isRootView"))
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 ^ 1u;
  }

  [(STGroupSpecifierProvider *)self setIsHidden:v7];
}

- (void)setIncludeWebsiteData:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v7 = [(STRootGroupSpecifierProvider *)self coordinator];
  v6 = [v5 BOOLValue];

  [v7 setShareWebUsageEnabled:v6 completionHandler:&__block_literal_global_12];
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

- (id)includeWebsiteData:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(STRootGroupSpecifierProvider *)self coordinator];
  v5 = [v4 viewModel];
  v6 = [v3 numberWithBool:{objc_msgSend(v5, "isWebUsageEnabled")}];

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