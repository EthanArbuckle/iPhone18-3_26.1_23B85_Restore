@interface TUIReportToAppleSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (NSArray)specifiers;
- (TUIReportToAppleSpecifierProvider)initWithAccountManager:(id)manager;
- (TUIReportToAppleSpecifierProvider)initWithContext:(id)context reportManager:(id)manager;
- (id)_groupSpecifier;
- (id)_reportDetailsSpecifier;
- (id)createGroupSpecifierWithIdentifier:(id)identifier title:(id)title footerText:(id)text linkText:(id)linkText actionMethodName:(id)name target:(id)target;
- (void)_learnMoreTapped;
- (void)reloadSpecifiers;
@end

@implementation TUIReportToAppleSpecifierProvider

- (TUIReportToAppleSpecifierProvider)initWithContext:(id)context reportManager:(id)manager
{
  contextCopy = context;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = TUIReportToAppleSpecifierProvider;
  v9 = [(TUIReportToAppleSpecifierProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_reportManager, manager);
  }

  return v10;
}

- (TUIReportToAppleSpecifierProvider)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_19 != -1)
  {
    [TUIReportToAppleSpecifierProvider initWithAccountManager:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_19, OS_LOG_TYPE_ERROR))
  {
    [TUIReportToAppleSpecifierProvider initWithAccountManager:];
  }

  return 0;
}

uint64_t __60__TUIReportToAppleSpecifierProvider_initWithAccountManager___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_19 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    array = [MEMORY[0x277CBEB18] array];
    _groupSpecifier = [(TUIReportToAppleSpecifierProvider *)self _groupSpecifier];
    [array addObject:_groupSpecifier];

    _reportDetailsSpecifier = [(TUIReportToAppleSpecifierProvider *)self _reportDetailsSpecifier];
    [array addObject:_reportDetailsSpecifier];

    v7 = [array copy];
    v8 = self->_specifiers;
    self->_specifiers = v7;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (void)reloadSpecifiers
{
  v3 = self->_specifiers;
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__TUIReportToAppleSpecifierProvider_reloadSpecifiers__block_invoke;
  block[3] = &unk_279DDA9E8;
  objc_copyWeak(&v8, &location);
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __53__TUIReportToAppleSpecifierProvider_reloadSpecifiers__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_19 != -1)
    {
      __53__TUIReportToAppleSpecifierProvider_reloadSpecifiers__block_invoke_cold_1();
    }

    v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_19;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_26F50B000, v3, OS_LOG_TYPE_INFO, "Attempting to reload specifiers...", &v7, 2u);
    }

    v4 = [WeakRetained delegate];
    [v4 reloadSpecifiersForProvider:WeakRetained oldSpecifiers:*(a1 + 32) animated:1];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_19 != -1)
    {
      __53__TUIReportToAppleSpecifierProvider_reloadSpecifiers__block_invoke_cold_2();
    }

    v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_19;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_19, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[TUIReportToAppleSpecifierProvider reloadSpecifiers]_block_invoke";
      _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __53__TUIReportToAppleSpecifierProvider_reloadSpecifiers__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_19 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __53__TUIReportToAppleSpecifierProvider_reloadSpecifiers__block_invoke_33()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_19 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)_groupSpecifier
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"REPORT_TO_APPLE_GROUP_TITLE" value:&stru_287F92480 table:@"Localizable"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"REPORT_TO_APPLE_GROUP_FOOTER" value:&stru_287F92480 table:@"Localizable"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"LEARN_MORE" value:&stru_287F92480 table:@"Localizable"];
  v9 = [(TUIReportToAppleSpecifierProvider *)self createGroupSpecifierWithIdentifier:@"TUI_REPORT_TO_APPLE_GROUP" title:v4 footerText:v6 linkText:v8 actionMethodName:@"_learnMoreTapped" target:self];

  return v9;
}

- (void)_learnMoreTapped
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_26F50B000, v0, OS_LOG_TYPE_DEBUG, "%s  on %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __53__TUIReportToAppleSpecifierProvider__learnMoreTapped__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_19 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __53__TUIReportToAppleSpecifierProvider__learnMoreTapped__block_invoke_57(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_opt_new();
    v3 = [WeakRetained presentingViewController];
    [v2 presentWithPresentingViewController:v3];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_19 != -1)
    {
      __53__TUIReportToAppleSpecifierProvider__learnMoreTapped__block_invoke_57_cold_1();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_19;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_19, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[TUIReportToAppleSpecifierProvider _learnMoreTapped]_block_invoke";
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __53__TUIReportToAppleSpecifierProvider__learnMoreTapped__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_19 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)_reportDetailsSpecifier
{
  v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"TUI_REPORT_DETAILS" target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v3 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
  [v3 setProperty:v4 forKey:*MEMORY[0x277D40140]];

  reportData = [(TUIReportManager *)self->_reportManager reportData];
  v6 = [reportData objectForKeyedSubscript:*MEMORY[0x277D735C0]];

  [v3 setProperty:v6 forKey:*MEMORY[0x277D40160]];
  [v3 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];

  return v3;
}

- (id)createGroupSpecifierWithIdentifier:(id)identifier title:(id)title footerText:(id)text linkText:(id)linkText actionMethodName:(id)name target:(id)target
{
  v13 = MEMORY[0x277D3FAD8];
  targetCopy = target;
  nameCopy = name;
  linkTextCopy = linkText;
  textCopy = text;
  v18 = [v13 groupSpecifierWithID:identifier name:title];
  linkTextCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", textCopy, linkTextCopy];

  [v18 setProperty:linkTextCopy forKey:*MEMORY[0x277D3FF88]];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  [v18 setProperty:v21 forKey:*MEMORY[0x277D3FF48]];

  [v18 setProperty:linkTextCopy forKey:*MEMORY[0x277D3FF70]];
  v22 = [linkTextCopy rangeOfString:linkTextCopy];
  v24 = v23;

  v29.location = v22;
  v29.length = v24;
  v25 = NSStringFromRange(v29);
  [v18 setProperty:v25 forKey:*MEMORY[0x277D3FF58]];

  v26 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:targetCopy];

  [v18 setProperty:v26 forKey:*MEMORY[0x277D3FF68]];
  [v18 setProperty:nameCopy forKey:*MEMORY[0x277D3FF50]];

  return v18;
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithAccountManager:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26F50B000, v0, OS_LOG_TYPE_ERROR, "%s not supported on %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end