@interface TUIKTReportToAppleViewController
- (TUIKTReportToAppleViewController)initWithContext:(id)a3 staticIdentityManager:(id)a4;
- (id)_additionalDetailsTitleSpecifier;
- (id)_reportToAppleButtonSpecifier;
- (id)_specifiersForAdditionalDetails;
- (id)specifiers;
- (void)_dismiss;
- (void)_dismissKeyboard:(id)a3;
- (void)_reportToApple:(id)a3;
- (void)_send;
- (void)_setAdditionalDetails:(id)a3 withSpecifier:(id)a4;
- (void)specifierProvider:(id)a3 didFinishLoadingSpecifier:(id)a4;
- (void)specifierProvider:(id)a3 showViewController:(id)a4;
- (void)specifierProvider:(id)a3 willBeginLoadingSpecifier:(id)a4;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)validateDataclassAccessForProvider:(id)a3 specifier:(id)a4 completion:(id)a5;
@end

@implementation TUIKTReportToAppleViewController

- (TUIKTReportToAppleViewController)initWithContext:(id)a3 staticIdentityManager:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_20 != -1)
  {
    [TUIKTReportToAppleViewController initWithContext:staticIdentityManager:];
  }

  v9 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v20 = "[TUIKTReportToAppleViewController initWithContext:staticIdentityManager:]";
    v21 = 2114;
    v22 = v7;
    v23 = 2114;
    v24 = v8;
    v25 = 2114;
    v26 = self;
    _os_log_impl(&dword_26F50B000, v9, OS_LOG_TYPE_DEFAULT, "%s context = %{public}@, staticIdentityManager = %{public}@ on %{public}@", buf, 0x2Au);
  }

  v10 = [(TUIKTReportToAppleViewController *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_context, a3);
    if (!v8)
    {
      v8 = objc_opt_new();
      [v8 requestSelfAccountKey];
    }

    v12 = [[TUIReportManager alloc] initWithStaticIdentityManager:v8];
    reportManager = v11->_reportManager;
    v11->_reportManager = v12;

    v18 = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v15 = [(TUIKTReportToAppleViewController *)v11 registerForTraitChanges:v14 withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __74__TUIKTReportToAppleViewController_initWithContext_staticIdentityManager___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_20 != -1)
  {
    [TUIKTReportToAppleViewController traitEnvironment:didChangeTraitCollection:];
  }

  v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTReportToAppleViewController traitEnvironment:v8 didChangeTraitCollection:?];
  }

  v9 = [(TUIKTReportToAppleViewController *)self traitCollection];
  v10 = [v9 userInterfaceStyle];
  v11 = [v7 userInterfaceStyle];

  if (v10 != v11)
  {
    [(TUIKTReportToAppleViewController *)self reloadSpecifiers];
  }
}

uint64_t __78__TUIKTReportToAppleViewController_traitEnvironment_didChangeTraitCollection___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    if ([TUIUtils isTransparencyFeatureEnabled:ffKTReportToApple])
    {
      v6 = [(TUIKTReportToAppleViewController *)self _additionalDetailsTitleSpecifier];
      [v5 addObject:v6];

      v7 = [(TUIKTReportToAppleViewController *)self _specifiersForAdditionalDetails];
      [v5 addObject:v7];

      reportToAppleSpecifierProvider = self->_reportToAppleSpecifierProvider;
      if (!reportToAppleSpecifierProvider)
      {
        v9 = [[TUIReportToAppleSpecifierProvider alloc] initWithContext:self->_context reportManager:self->_reportManager];
        v10 = self->_reportToAppleSpecifierProvider;
        self->_reportToAppleSpecifierProvider = v9;

        [(TUIReportToAppleSpecifierProvider *)self->_reportToAppleSpecifierProvider setPresentingViewController:self];
        [(TUIReportToAppleSpecifierProvider *)self->_reportToAppleSpecifierProvider setDelegate:self];
        reportToAppleSpecifierProvider = self->_reportToAppleSpecifierProvider;
      }

      v11 = [(TUIReportToAppleSpecifierProvider *)reportToAppleSpecifierProvider specifiers];
      [v5 addObjectsFromArray:v11];

      v12 = [(TUIKTReportToAppleViewController *)self _reportToAppleButtonSpecifier];
      [v5 addObject:v12];
    }

    v13 = [v5 copy];
    v14 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v13;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_reportToAppleButtonSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SHOW_DETAILS" value:&stru_287F92480 table:@"Localizable"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v6 setButtonAction:sel__reportToApple_];
  [v6 setProperty:&unk_287F9E708 forKey:*MEMORY[0x277D3FD68]];

  return v6;
}

- (void)_reportToApple:(id)a3
{
  v8 = [[TUIReportDetailsViewController alloc] initWithReportManager:self->_reportManager];
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DETAILS_BACK_BUTTON_TITLE" value:&stru_287F92480 table:@"Localizable"];
  [v4 setTitle:v6];

  v7 = [(TUIKTReportToAppleViewController *)self navigationItem];
  [v7 setBackBarButtonItem:v4];

  [(TUIKTReportToAppleViewController *)self showViewController:v8 sender:self];
}

- (id)_additionalDetailsTitleSpecifier
{
  v2 = MEMORY[0x277D3FAD8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ADDITIONAL_DETAILS" value:&stru_287F92480 table:@"Localizable"];
  v5 = [v2 groupSpecifierWithID:@"TUI_ADDITIONAL_DETAILS_KEY" name:v4];

  return v5;
}

- (id)_specifiersForAdditionalDetails
{
  v2 = [MEMORY[0x277D3FB40] preferenceSpecifierNamed:&stru_287F92480 target:self set:sel__setAdditionalDetails_withSpecifier_ get:sel__additionalDetailsForSpecifier_ detail:0 cell:14 edit:0];
  [v2 setKeyboardType:0 autoCaps:2 autoCorrection:0];
  [v2 setProperty:&unk_287F9E720 forKey:*MEMORY[0x277D40140]];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ADDITIONAL_DETAILS_PLACEHOLDER" value:&stru_287F92480 table:@"Localizable"];
  [v2 setProperty:v4 forKey:*MEMORY[0x277D40170]];

  [v2 setProperty:@"TUIKTSpecifierAdditionalDetails" forKey:*MEMORY[0x277D3FFF0]];
  [v2 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];

  return v2;
}

- (void)_setAdditionalDetails:(id)a3 withSpecifier:(id)a4
{
  v7 = [a4 propertyForKey:*MEMORY[0x277D40148]];
  if ([v7 placeholderDisplayed])
  {
    [(TUIReportManager *)self->_reportManager setAdditionalDetails:&stru_287F92480];
  }

  else
  {
    v5 = [v7 textView];
    v6 = [v5 text];
    [(TUIReportManager *)self->_reportManager setAdditionalDetails:v6];
  }
}

- (void)specifierProvider:(id)a3 showViewController:(id)a4
{
  v7 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(TUIKTReportToAppleViewController *)self presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    [(TUIKTReportToAppleViewController *)self showViewController:v6 sender:v7];
  }
}

- (void)specifierProvider:(id)a3 willBeginLoadingSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_20 != -1)
  {
    [TUIKTReportToAppleViewController specifierProvider:willBeginLoadingSpecifier:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEBUG, "specifierProvider:willBeginLoadingSpecifier not implemented", v8, 2u);
  }
}

uint64_t __80__TUIKTReportToAppleViewController_specifierProvider_willBeginLoadingSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)specifierProvider:(id)a3 didFinishLoadingSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_20 != -1)
  {
    [TUIKTReportToAppleViewController specifierProvider:didFinishLoadingSpecifier:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEBUG, "specifierProvider:didFinishLoadingSpecifier not implemented", v8, 2u);
  }
}

uint64_t __80__TUIKTReportToAppleViewController_specifierProvider_didFinishLoadingSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __87__TUIKTReportToAppleViewController_reloadSpecifiersForProvider_oldSpecifiers_animated___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)validateDataclassAccessForProvider:(id)a3 specifier:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_20 != -1)
  {
    [TUIKTReportToAppleViewController validateDataclassAccessForProvider:specifier:completion:];
  }

  v10 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&dword_26F50B000, v10, OS_LOG_TYPE_DEBUG, "validateDataclassAccessForProvider:specifier:completion not implemented", v11, 2u);
  }
}

uint64_t __92__TUIKTReportToAppleViewController_validateDataclassAccessForProvider_specifier_completion___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_send
{
  reportManager = self->_reportManager;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__TUIKTReportToAppleViewController__send__block_invoke;
  v3[3] = &unk_279DDAFE0;
  v3[4] = self;
  [(TUIReportManager *)reportManager sendReport:v3];
}

void __41__TUIKTReportToAppleViewController__send__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__TUIKTReportToAppleViewController__send__block_invoke_2;
  v6[3] = &unk_279DDABF0;
  objc_copyWeak(&v9, &location);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __41__TUIKTReportToAppleViewController__send__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 32))
  {
    v3 = MEMORY[0x277D75110];
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"REPORT_TO_APPLE_TITLE" value:&stru_287F92480 table:@"Localizable"];
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"REPORT_TO_APPLE_ERROR" value:&stru_287F92480 table:@"Localizable"];
    v10 = [v3 alertControllerWithTitle:v6 message:v9 preferredStyle:1];

    v11 = MEMORY[0x277D750F8];
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"DISMISS" value:&stru_287F92480 table:@"Localizable"];
    v15 = [v11 actionWithTitle:v14 style:1 handler:&__block_literal_global_110_0];

    [v10 addAction:v15];
    [*(a1 + 40) presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_20 != -1)
    {
      __41__TUIKTReportToAppleViewController__send__block_invoke_2_cold_1();
    }

    v16 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20, OS_LOG_TYPE_DEBUG))
    {
      *v17 = 0;
      _os_log_impl(&dword_26F50B000, v16, OS_LOG_TYPE_DEBUG, "Report to Apple sent", v17, 2u);
    }

    [WeakRetained _dismiss];
  }
}

uint64_t __41__TUIKTReportToAppleViewController__send__block_invoke_4()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_20 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_dismiss
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TUIKTReportToAppleViewController__dismiss__block_invoke;
  block[3] = &unk_279DDABC8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_dismissKeyboard:(id)a3
{
  v3 = [(TUIKTReportToAppleViewController *)self view];
  [v3 endEditing:1];
}

- (void)traitEnvironment:(uint64_t)a1 didChangeTraitCollection:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[TUIKTReportToAppleViewController traitEnvironment:didChangeTraitCollection:]";
  v5 = 2114;
  v6 = a1;
  _os_log_debug_impl(&dword_26F50B000, a2, OS_LOG_TYPE_DEBUG, "%s  on %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end