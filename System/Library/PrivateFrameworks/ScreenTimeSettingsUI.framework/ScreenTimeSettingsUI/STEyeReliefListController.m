@interface STEyeReliefListController
- (BOOL)_isScreenDistanceEnabled;
- (STEyeReliefListController)init;
- (id)_checkScreenDistanceState:(id)a3;
- (id)_createEnableScreenDistanceGroupSpecifier;
- (id)_createEnableScreenDistanceSpecifer;
- (id)specifiers;
- (void)_setScreenDistance:(BOOL)a3;
- (void)_setScreenDistance:(id)a3 specifier:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation STEyeReliefListController

- (STEyeReliefListController)init
{
  v6.receiver = self;
  v6.super_class = STEyeReliefListController;
  v2 = [(STPINListViewController *)&v6 init];
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"ScreenDistanceViewControllerTitle" value:&stru_28766E5A8 table:0];
  [(STEyeReliefListController *)v2 setTitle:v4];

  return v2;
}

- (void)dealloc
{
  [(STEyeReliefListController *)self setCoordinator:0];
  v3.receiver = self;
  v3.super_class = STEyeReliefListController;
  [(STListViewController *)&v3 dealloc];
}

- (void)viewDidAppear:(BOOL)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = STEyeReliefListController;
  [(STPINListViewController *)&v16 viewDidAppear:a3];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime/EYE_DISTANCE"];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  v8 = [v7 bundleURL];
  v9 = [v5 initWithKey:@"ScreenDistanceViewControllerTitle" table:@"Localizable" locale:v6 bundleURL:v8];

  v10 = objc_alloc(MEMORY[0x277CCAEB8]);
  v11 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = +[STScreenTimeSettingsUIBundle bundle];
  v13 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"ScreenTimeControllerTitle" table:@"Localizable" locale:v11 bundleURL:v13];

  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [(STEyeReliefListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.screen-time" title:v9 localizedNavigationComponents:v15 deepLink:v4];
}

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STPINListViewController *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"eyeReliefCoordinator.viewModel.isEyeReliefEnabled" context:"STEyeReliefListControllerObservationContext"];
  v6.receiver = self;
  v6.super_class = STEyeReliefListController;
  [(STPINListViewController *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"eyeReliefCoordinator.viewModel.isEyeReliefEnabled" options:3 context:"STEyeReliefListControllerObservationContext"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == "STEyeReliefListControllerObservationContext")
  {
    v11 = *MEMORY[0x277CCA300];
    v12 = a5;
    v14 = [v12 objectForKeyedSubscript:v11];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

    LODWORD(v12) = [v14 BOOLValue];
    if (v12 != [v13 BOOLValue])
    {
      [(STEyeReliefListController *)self reloadSpecifiers];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = STEyeReliefListController;
    v10 = a5;
    [(STListViewController *)&v15 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(STEyeReliefListController *)self _createEnableScreenDistanceGroupSpecifier];
    [v5 addObject:v6];

    v7 = [(STEyeReliefListController *)self _createEnableScreenDistanceSpecifer];
    [(STEyeReliefListController *)self setEnableScreenDistanceSpecifier:v7];

    v8 = [(STEyeReliefListController *)self enableScreenDistanceSpecifier];
    [v5 addObject:v8];

    v9 = [v5 copy];
    v10 = *(&self->super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.isa + v3) = v9;

    v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_createEnableScreenDistanceGroupSpecifier
{
  v2 = +[STScreenTimeSettingsUIBundle bundle];
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ScreenDistanceEnableFeatureGroupSpecifier"];
  v4 = [v2 localizedStringForKey:@"ScreenDistanceEnableFeatureGroupSpecifierFooterText" value:&stru_28766E5A8 table:0];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  return v3;
}

- (id)_createEnableScreenDistanceSpecifer
{
  v3 = +[STScreenTimeSettingsUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"ScreenDistanceEnableFeatureSpecifierTitle" value:&stru_28766E5A8 table:0];

  v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:self set:sel__setScreenDistance_specifier_ get:sel__checkScreenDistanceState_ detail:0 cell:6 edit:objc_opt_class()];
  [(STPINListViewController *)self setUpPasscodeAndLineWrapBehaviorForSpecifier:v5];
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:0x287675A48];
  v6 = [(STPINListViewController *)self coordinator];
  v7 = [v6 eyeReliefCoordinator];
  v8 = [v7 isScreenDistanceEditable];

  if ((v8 & 1) == 0)
  {
    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  }

  return v5;
}

- (void)_setScreenDistance:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = [a3 BOOLValue];
  v8 = [(STPINListViewController *)self coordinator];
  v9 = [v8 viewModel];
  v10 = [v9 me];
  if (![v10 hasPasscode])
  {

    goto LABEL_5;
  }

  v11 = [v8 hasAlreadyEnteredPINForSession];

  if (v11)
  {
LABEL_5:
    [(STEyeReliefListController *)self _setScreenDistance:v7];
    goto LABEL_6;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__STEyeReliefListController__setScreenDistance_specifier___block_invoke;
  v12[3] = &unk_279B7CF48;
  v12[4] = self;
  v14 = v7;
  v13 = v6;
  [(STPINListViewController *)self showPINSheet:v13 completion:v12];

LABEL_6:
}

uint64_t __58__STEyeReliefListController__setScreenDistance_specifier___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 _setScreenDistance:*(a1 + 48)];
  }

  else
  {
    return [v3 reloadSpecifier:*(a1 + 40) animated:1];
  }
}

- (void)_setScreenDistance:(BOOL)a3
{
  v3 = a3;
  v5 = +[STUILog eyeRelief];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(STEyeReliefListController *)v3 _setScreenDistance:v5];
  }

  v6 = [(STPINListViewController *)self coordinator];
  v7 = [v6 eyeReliefCoordinator];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__STEyeReliefListController__setScreenDistance___block_invoke;
  v8[3] = &__block_descriptor_33_e17_v16__0__NSError_8l;
  v9 = v3;
  [v7 persistEyeReliefState:v3 withCompletionHandler:v8];
}

void __48__STEyeReliefListController__setScreenDistance___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[STUILog eyeRelief];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__STEyeReliefListController__setScreenDistance___block_invoke_cold_1(v3, v4);
    }
  }

  else
  {
    v5 = MEMORY[0x277D4B970];
    v4 = [objc_alloc(MEMORY[0x277D4B9B8]) initWithEyeReliefEnabled:*(a1 + 32)];
    [v5 reportEvent:v4];
  }
}

- (id)_checkScreenDistanceState:(id)a3
{
  v3 = [(STEyeReliefListController *)self _isScreenDistanceEnabled];
  v4 = +[STUILog eyeRelief];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(STEyeReliefListController *)v3 _checkScreenDistanceState:v4];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];

  return v5;
}

- (BOOL)_isScreenDistanceEnabled
{
  v2 = [(STPINListViewController *)self coordinator];
  v3 = [v2 eyeReliefCoordinator];
  v4 = [v3 viewModel];

  LOBYTE(v2) = [v4 isEyeReliefEnabled];
  return v2;
}

- (void)_setScreenDistance:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_264BA2000, a2, OS_LOG_TYPE_DEBUG, "Setting Eye Distance on viewModel: %@", &v4, 0xCu);
}

void __48__STEyeReliefListController__setScreenDistance___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "Could not save Eye Distance settings: %{public}@", &v2, 0xCu);
}

- (void)_checkScreenDistanceState:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_264BA2000, a2, OS_LOG_TYPE_DEBUG, "Fetching Eye Distance state from viewModel: %d", v2, 8u);
}

@end