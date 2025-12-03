@interface STEyeReliefListController
- (BOOL)_isScreenDistanceEnabled;
- (STEyeReliefListController)init;
- (id)_checkScreenDistanceState:(id)state;
- (id)_createEnableScreenDistanceGroupSpecifier;
- (id)_createEnableScreenDistanceSpecifer;
- (id)specifiers;
- (void)_setScreenDistance:(BOOL)distance;
- (void)_setScreenDistance:(id)distance specifier:(id)specifier;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
- (void)viewDidAppear:(BOOL)appear;
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

- (void)viewDidAppear:(BOOL)appear
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = STEyeReliefListController;
  [(STPINListViewController *)&v16 viewDidAppear:appear];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime/EYE_DISTANCE"];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"ScreenDistanceViewControllerTitle" table:@"Localizable" locale:currentLocale bundleURL:bundleURL];

  v10 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = +[STScreenTimeSettingsUIBundle bundle];
  bundleURL2 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"ScreenTimeControllerTitle" table:@"Localizable" locale:currentLocale2 bundleURL:bundleURL2];

  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [(STEyeReliefListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.screen-time" title:v9 localizedNavigationComponents:v15 deepLink:v4];
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STPINListViewController *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"eyeReliefCoordinator.viewModel.isEyeReliefEnabled" context:"STEyeReliefListControllerObservationContext"];
  v6.receiver = self;
  v6.super_class = STEyeReliefListController;
  [(STPINListViewController *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"eyeReliefCoordinator.viewModel.isEyeReliefEnabled" options:3 context:"STEyeReliefListControllerObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == "STEyeReliefListControllerObservationContext")
  {
    v11 = *MEMORY[0x277CCA300];
    changeCopy = change;
    v14 = [changeCopy objectForKeyedSubscript:v11];
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

    LODWORD(changeCopy) = [v14 BOOLValue];
    if (changeCopy != [v13 BOOLValue])
    {
      [(STEyeReliefListController *)self reloadSpecifiers];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = STEyeReliefListController;
    changeCopy2 = change;
    [(STListViewController *)&v15 observeValueForKeyPath:path ofObject:object change:changeCopy2 context:context];
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    _createEnableScreenDistanceGroupSpecifier = [(STEyeReliefListController *)self _createEnableScreenDistanceGroupSpecifier];
    [v5 addObject:_createEnableScreenDistanceGroupSpecifier];

    _createEnableScreenDistanceSpecifer = [(STEyeReliefListController *)self _createEnableScreenDistanceSpecifer];
    [(STEyeReliefListController *)self setEnableScreenDistanceSpecifier:_createEnableScreenDistanceSpecifer];

    enableScreenDistanceSpecifier = [(STEyeReliefListController *)self enableScreenDistanceSpecifier];
    [v5 addObject:enableScreenDistanceSpecifier];

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
  coordinator = [(STPINListViewController *)self coordinator];
  eyeReliefCoordinator = [coordinator eyeReliefCoordinator];
  isScreenDistanceEditable = [eyeReliefCoordinator isScreenDistanceEditable];

  if ((isScreenDistanceEditable & 1) == 0)
  {
    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  }

  return v5;
}

- (void)_setScreenDistance:(id)distance specifier:(id)specifier
{
  specifierCopy = specifier;
  bOOLValue = [distance BOOLValue];
  coordinator = [(STPINListViewController *)self coordinator];
  viewModel = [coordinator viewModel];
  v10 = [viewModel me];
  if (![v10 hasPasscode])
  {

    goto LABEL_5;
  }

  hasAlreadyEnteredPINForSession = [coordinator hasAlreadyEnteredPINForSession];

  if (hasAlreadyEnteredPINForSession)
  {
LABEL_5:
    [(STEyeReliefListController *)self _setScreenDistance:bOOLValue];
    goto LABEL_6;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__STEyeReliefListController__setScreenDistance_specifier___block_invoke;
  v12[3] = &unk_279B7CF48;
  v12[4] = self;
  v14 = bOOLValue;
  v13 = specifierCopy;
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

- (void)_setScreenDistance:(BOOL)distance
{
  distanceCopy = distance;
  v5 = +[STUILog eyeRelief];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(STEyeReliefListController *)distanceCopy _setScreenDistance:v5];
  }

  coordinator = [(STPINListViewController *)self coordinator];
  eyeReliefCoordinator = [coordinator eyeReliefCoordinator];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__STEyeReliefListController__setScreenDistance___block_invoke;
  v8[3] = &__block_descriptor_33_e17_v16__0__NSError_8l;
  v9 = distanceCopy;
  [eyeReliefCoordinator persistEyeReliefState:distanceCopy withCompletionHandler:v8];
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

- (id)_checkScreenDistanceState:(id)state
{
  _isScreenDistanceEnabled = [(STEyeReliefListController *)self _isScreenDistanceEnabled];
  v4 = +[STUILog eyeRelief];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(STEyeReliefListController *)_isScreenDistanceEnabled _checkScreenDistanceState:v4];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithBool:_isScreenDistanceEnabled];

  return v5;
}

- (BOOL)_isScreenDistanceEnabled
{
  coordinator = [(STPINListViewController *)self coordinator];
  eyeReliefCoordinator = [coordinator eyeReliefCoordinator];
  viewModel = [eyeReliefCoordinator viewModel];

  LOBYTE(coordinator) = [viewModel isEyeReliefEnabled];
  return coordinator;
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