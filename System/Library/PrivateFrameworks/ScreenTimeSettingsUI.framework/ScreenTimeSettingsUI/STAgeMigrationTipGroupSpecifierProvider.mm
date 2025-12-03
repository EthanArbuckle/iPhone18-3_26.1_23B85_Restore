@interface STAgeMigrationTipGroupSpecifierProvider
+ (id)providerWithCoordinator:(id)coordinator rootViewController:(id)controller;
- (STAgeMigrationTipGroupSpecifierProvider)init;
- (UIViewController)rootViewController;
- (void)_acknowledgeTip;
- (void)_setAgeMigrationTip;
- (void)_showAgeMigrationTipIfNeeded;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
@end

@implementation STAgeMigrationTipGroupSpecifierProvider

+ (id)providerWithCoordinator:(id)coordinator rootViewController:(id)controller
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___STAgeMigrationTipGroupSpecifierProvider;
  controllerCopy = controller;
  v6 = objc_msgSendSuper2(&v8, sel_providerWithCoordinator_, coordinator);
  [v6 setRootViewController:{controllerCopy, v8.receiver, v8.super_class}];

  return v6;
}

- (STAgeMigrationTipGroupSpecifierProvider)init
{
  v9.receiver = self;
  v9.super_class = STAgeMigrationTipGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(STGroupSpecifierProvider *)v2 setIsHidden:1];
    v4 = MEMORY[0x277D3FAD8];
    v5 = objc_opt_new();
    uUIDString = [v5 UUIDString];
    v7 = [v4 groupSpecifierWithID:uUIDString];

    [(STGroupSpecifierProvider *)v3 setGroupSpecifier:v7];
  }

  return v3;
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"viewModel.me.hasPasscode"];
  v11.receiver = self;
  v11.super_class = STAgeMigrationTipGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v11 setCoordinator:coordinatorCopy];
  if (coordinatorCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__STAgeMigrationTipGroupSpecifierProvider_setCoordinator___block_invoke;
    aBlock[3] = &unk_279B7D758;
    aBlock[4] = self;
    v6 = _Block_copy(aBlock);
    v7 = objc_alloc_init(MEMORY[0x277CF0148]);
    ageRangeCache = [v7 ageRangeCache];
    ageRangeSettings = [ageRangeCache ageRangeSettings];

    if (ageRangeSettings)
    {
      v6[2](v6, ageRangeSettings, 0);
    }

    else
    {
      [v7 refreshAgeRangeWithCompletion:v6];
    }
  }

  [coordinatorCopy addObserver:self forKeyPath:@"viewModel.me.hasPasscode" options:5 context:"STAgeMigrationTipGroupSpecifierProviderObservationContext"];
}

void __58__STAgeMigrationTipGroupSpecifierProvider_setCoordinator___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = +[STUILog ageMigrationTip];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __58__STAgeMigrationTipGroupSpecifierProvider_setCoordinator___block_invoke_cold_1(v4, v5);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__STAgeMigrationTipGroupSpecifierProvider_setCoordinator___block_invoke_44;
    block[3] = &unk_279B7C998;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __58__STAgeMigrationTipGroupSpecifierProvider_setCoordinator___block_invoke_44(uint64_t a1)
{
  [*(a1 + 32) _setAgeMigrationTip];
  v2 = *(a1 + 32);

  return [v2 _showAgeMigrationTipIfNeeded];
}

- (void)_setAgeMigrationTip
{
  v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:13 edit:0];
  ageMigrationTipSpecifer = self->_ageMigrationTipSpecifer;
  self->_ageMigrationTipSpecifer = v3;

  [(PSSpecifier *)self->_ageMigrationTipSpecifer setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v7 = [viewModel me];
  [(PSSpecifier *)self->_ageMigrationTipSpecifer setUserInfo:v7];

  [(PSSpecifier *)self->_ageMigrationTipSpecifer setObject:&__block_literal_global_9 forKeyedSubscript:*MEMORY[0x277D3FE10]];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__STAgeMigrationTipGroupSpecifierProvider__setAgeMigrationTip__block_invoke_50;
  aBlock[3] = &unk_279B7C998;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(v8);
  [(PSSpecifier *)self->_ageMigrationTipSpecifer setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FF00]];
}

void __62__STAgeMigrationTipGroupSpecifierProvider__setAgeMigrationTip__block_invoke()
{
  v0 = +[STUILog ageMigrationTip];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __62__STAgeMigrationTipGroupSpecifierProvider__setAgeMigrationTip__block_invoke_cold_1();
  }
}

uint64_t __62__STAgeMigrationTipGroupSpecifierProvider__setAgeMigrationTip__block_invoke_50(uint64_t a1)
{
  v2 = +[STUILog ageMigrationTip];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__STAgeMigrationTipGroupSpecifierProvider__setAgeMigrationTip__block_invoke_50_cold_1();
  }

  return [*(a1 + 32) _acknowledgeTip];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == "STAgeMigrationTipGroupSpecifierProviderObservationContext")
  {

    [(STAgeMigrationTipGroupSpecifierProvider *)self _showAgeMigrationTipIfNeeded:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = STAgeMigrationTipGroupSpecifierProvider;
    [(STAgeMigrationTipGroupSpecifierProvider *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_showAgeMigrationTipIfNeeded
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v5 = [viewModel me];
  altDSID = [v5 altDSID];

  v7 = [objc_alloc(MEMORY[0x277CEC770]) initWithAltDSID:altDSID bundleID:@"com.apple.screentime.age.migration.tip"];
  v8 = objc_alloc_init(MEMORY[0x277CEC768]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__STAgeMigrationTipGroupSpecifierProvider__showAgeMigrationTipIfNeeded__block_invoke;
  v10[3] = &unk_279B7D7A8;
  v10[4] = self;
  v11 = coordinator;
  v9 = coordinator;
  [v8 didUserAcknowledgeMisconfiguredAgedPromptWithContext:v7 completion:v10];
}

void __71__STAgeMigrationTipGroupSpecifierProvider__showAgeMigrationTipIfNeeded__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__STAgeMigrationTipGroupSpecifierProvider__showAgeMigrationTipIfNeeded__block_invoke_2;
  v9[3] = &unk_279B7D780;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = a2;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __71__STAgeMigrationTipGroupSpecifierProvider__showAgeMigrationTipIfNeeded__block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = +[STUILog ageMigrationTip];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __71__STAgeMigrationTipGroupSpecifierProvider__showAgeMigrationTipIfNeeded__block_invoke_2_cold_1(v2, v3);
    }

    v4 = [*(a1 + 40) mutableSpecifiers];
    v5 = [*(a1 + 40) ageMigrationTipSpecifer];
    v6 = [v4 containsObject:v5];

    if (!v6)
    {
      return;
    }

    goto LABEL_19;
  }

  v7 = [*(a1 + 48) viewModel];
  if (![v7 shouldShowMisconfiguredAdultPrompt] || (*(a1 + 56) & 1) != 0 || (objc_msgSend(*(a1 + 48), "isPasscodeEnabled") & 1) == 0)
  {

    goto LABEL_15;
  }

  v8 = [*(a1 + 40) ageMigrationTipSpecifer];

  if (!v8)
  {
LABEL_15:
    v15 = [*(a1 + 40) mutableSpecifiers];
    v16 = [*(a1 + 40) ageMigrationTipSpecifer];
    v17 = [v15 containsObject:v16];

    if (!v17)
    {
      return;
    }

    v18 = +[STUILog ageMigrationTip];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __71__STAgeMigrationTipGroupSpecifierProvider__showAgeMigrationTipIfNeeded__block_invoke_2_cold_3();
    }

LABEL_19:
    [*(a1 + 40) setIsHidden:1];
    v13 = [*(a1 + 40) mutableSpecifiers];
    v14 = [*(a1 + 40) ageMigrationTipSpecifer];
    [v13 removeObject:v14];
    goto LABEL_20;
  }

  [*(a1 + 40) setIsHidden:0];
  v9 = +[STUILog ageMigrationTip];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __71__STAgeMigrationTipGroupSpecifierProvider__showAgeMigrationTipIfNeeded__block_invoke_2_cold_2();
  }

  v10 = [*(a1 + 40) mutableSpecifiers];
  v11 = [*(a1 + 40) ageMigrationTipSpecifer];
  v12 = [v10 containsObject:v11];

  if ((v12 & 1) == 0)
  {
    v13 = [*(a1 + 40) mutableSpecifiers];
    v14 = [*(a1 + 40) ageMigrationTipSpecifer];
    [v13 addObject:v14];
LABEL_20:
  }
}

- (void)_acknowledgeTip
{
  [(STGroupSpecifierProvider *)self setIsHidden:1];
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v5 = [viewModel me];
  altDSID = [v5 altDSID];

  v7 = +[STUILog ageMigrationTip];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [STAgeMigrationTipGroupSpecifierProvider _acknowledgeTip];
  }

  v8 = [objc_alloc(MEMORY[0x277CEC770]) initWithAltDSID:altDSID bundleID:@"com.apple.screentime.age.migration.tip"];
  v9 = objc_alloc_init(MEMORY[0x277CEC768]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__STAgeMigrationTipGroupSpecifierProvider__acknowledgeTip__block_invoke;
  v11[3] = &unk_279B7CC18;
  v12 = altDSID;
  v10 = altDSID;
  [v9 saveUserAcknowledgeMisconfiguredAgedPromptWithContext:v8 action:3 completion:v11];
}

void __58__STAgeMigrationTipGroupSpecifierProvider__acknowledgeTip__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[STUILog ageMigrationTip];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __58__STAgeMigrationTipGroupSpecifierProvider__acknowledgeTip__block_invoke_cold_1(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __58__STAgeMigrationTipGroupSpecifierProvider__acknowledgeTip__block_invoke_cold_2();
  }
}

- (UIViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

void __58__STAgeMigrationTipGroupSpecifierProvider_setCoordinator___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "Fail to fetch age range settings with error: %{public}@.", &v2, 0xCu);
}

void __62__STAgeMigrationTipGroupSpecifierProvider__setAgeMigrationTip__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__STAgeMigrationTipGroupSpecifierProvider__setAgeMigrationTip__block_invoke_50_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __71__STAgeMigrationTipGroupSpecifierProvider__showAgeMigrationTipIfNeeded__block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412546;
  v4 = @"com.apple.screentime.age.migration.tip";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch saved user action for %@ with error: %@", &v3, 0x16u);
}

void __71__STAgeMigrationTipGroupSpecifierProvider__showAgeMigrationTipIfNeeded__block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __71__STAgeMigrationTipGroupSpecifierProvider__showAgeMigrationTipIfNeeded__block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__STAgeMigrationTipGroupSpecifierProvider__acknowledgeTip__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "Failed to persist user action with error: %@", &v2, 0xCu);
}

@end