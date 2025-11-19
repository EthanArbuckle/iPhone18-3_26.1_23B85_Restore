@interface TUIOptInSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)handleURL:(id)a3;
- (NSArray)specifiers;
- (TUIOptInSpecifierProvider)initWithAccountManager:(id)a3;
- (id)_transparencyPaneSpecifier;
- (void)_beginObservingTransparencyStatusChangedNotification;
- (void)_checkKTStatus;
- (void)_showTransparencyPane;
- (void)_stopObservingTransparencyStatusChangedNotification;
- (void)_transparencyStatusChangedNotificationHandler:(id)a3;
- (void)dealloc;
- (void)reloadSpecifiers;
- (void)specifiers;
@end

@implementation TUIOptInSpecifierProvider

- (TUIOptInSpecifierProvider)initWithAccountManager:(id)a3
{
  v5 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
  {
    [TUIOptInSpecifierProvider initWithAccountManager:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_DEBUG))
  {
    [TUIOptInSpecifierProvider initWithAccountManager:];
  }

  v17.receiver = self;
  v17.super_class = TUIOptInSpecifierProvider;
  v6 = [(TUIOptInSpecifierProvider *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, a3);
    v8 = objc_alloc(MEMORY[0x277D73558]);
    v9 = *MEMORY[0x277D735B0];
    v10 = [v8 initWithApplication:*MEMORY[0x277D735B0]];
    optInManager = v7->_optInManager;
    v7->_optInManager = v10;

    v12 = [objc_alloc(MEMORY[0x277D73568]) initWithApplication:v9];
    keyTransparencyStatus = v7->_keyTransparencyStatus;
    v7->_keyTransparencyStatus = v12;

    v14 = objc_opt_new();
    stateManager = v7->_stateManager;
    v7->_stateManager = v14;

    [(TUIOptInSpecifierProvider *)v7 _checkKTStatus];
    [(TUIOptInSpecifierProvider *)v7 _beginObservingTransparencyStatusChangedNotification];
  }

  return v7;
}

uint64_t __52__TUIOptInSpecifierProvider_initWithAccountManager___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __36__TUIOptInSpecifierProvider_dealloc__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (BOOL)handleURL:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
  {
    [TUIOptInSpecifierProvider handleURL:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_DEBUG))
  {
    [TUIOptInSpecifierProvider handleURL:];
  }

  v5 = [v4 copy];
  handleURLResourceDictionary = self->_handleURLResourceDictionary;
  self->_handleURLResourceDictionary = v5;

  return 0;
}

uint64_t __39__TUIOptInSpecifierProvider_handleURL___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_checkKTStatus
{
  v12 = *MEMORY[0x277D85DE8];
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
  {
    [TUIOptInSpecifierProvider _checkKTStatus];
  }

  v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[TUIOptInSpecifierProvider _checkKTStatus]";
    v10 = 2114;
    v11 = self;
    _os_log_impl(&dword_26F50B000, v3, OS_LOG_TYPE_DEFAULT, "%s getting CKV status on %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_47;
  block[3] = &unk_279DDAB28;
  objc_copyWeak(&v7, buf);
  dispatch_async(v4, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_47(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc(MEMORY[0x277D73568]);
    v3 = [v2 initWithApplication:*MEMORY[0x277D735B0]];
    v12 = 0;
    v4 = [v3 status:&v12];
    v5 = v12;
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_47_cold_1();
    }

    v6 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v14 = WeakRetained;
      v15 = 2114;
      v16 = v4;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_26F50B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ got CKV status = %{public}@, error = %{public}@", buf, 0x20u);
    }

    v7 = [WeakRetained stateManager];
    [v7 updateStateWithKTStatusResult:v4];

    objc_initWeak(buf, WeakRetained);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_53;
    v10[3] = &unk_279DDAB28;
    objc_copyWeak(&v11, buf);
    dispatch_async(MEMORY[0x277D85CD0], v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_47_cold_2();
    }

    v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[TUIOptInSpecifierProvider _checkKTStatus]_block_invoke";
      _os_log_impl(&dword_26F50B000, v8, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_50()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_53(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reloadSpecifiers];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_53_cold_1();
    }

    v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[TUIOptInSpecifierProvider _checkKTStatus]_block_invoke";
      _os_log_impl(&dword_26F50B000, v3, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __43__TUIOptInSpecifierProvider__checkKTStatus__block_invoke_2_54()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_beginObservingTransparencyStatusChangedNotification
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __81__TUIOptInSpecifierProvider__beginObservingTransparencyStatusChangedNotification__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_stopObservingTransparencyStatusChangedNotification
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __80__TUIOptInSpecifierProvider__stopObservingTransparencyStatusChangedNotification__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_transparencyStatusChangedNotificationHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
  {
    [TUIOptInSpecifierProvider _transparencyStatusChangedNotificationHandler:];
  }

  v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[TUIOptInSpecifierProvider _transparencyStatusChangedNotificationHandler:]";
    v9 = 2114;
    v10 = v4;
    v11 = 2114;
    v12 = self;
    _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %{public}@", &v7, 0x20u);
  }

  [(TUIOptInSpecifierProvider *)self _checkKTStatus];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __75__TUIOptInSpecifierProvider__transparencyStatusChangedNotificationHandler___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (NSArray)specifiers
{
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
  {
    [TUIOptInSpecifierProvider specifiers];
  }

  v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_DEBUG))
  {
    [(TUIOptInSpecifierProvider *)self specifiers];
  }

  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"TRANSPARENCY_GROUP"];
    [v5 addObject:v6];
    v7 = [(TUIOptInSpecifierProvider *)self _transparencyPaneSpecifier];
    [v5 addObject:v7];

    v8 = [v5 copy];
    v9 = self->_specifiers;
    self->_specifiers = v8;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

uint64_t __39__TUIOptInSpecifierProvider_specifiers__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)reloadSpecifiers
{
  v3 = self->_specifiers;
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__TUIOptInSpecifierProvider_reloadSpecifiers__block_invoke;
  v6[3] = &unk_279DDAA10;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __45__TUIOptInSpecifierProvider_reloadSpecifiers__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_4 != -1)
  {
    __45__TUIOptInSpecifierProvider_reloadSpecifiers__block_invoke_cold_1();
  }

  v2 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_26F50B000, v2, OS_LOG_TYPE_INFO, "%{public}@ attempting to reload specifiers...", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  [v4 reloadSpecifiersForProvider:*(a1 + 32) oldSpecifiers:*(a1 + 40) animated:1];

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __45__TUIOptInSpecifierProvider_reloadSpecifiers__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)_transparencyPaneSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DEVICE_VERIFICATION_SPECIFIER_TITLE" value:&stru_287F92480 table:@"Localizable"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:2 edit:0];

  [v6 setControllerLoadAction:sel__showTransparencyPane];
  [v6 setIdentifier:@"TRANSPARENCY"];
  [v6 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v7 = *MEMORY[0x277D40160];
  [v6 setProperty:&stru_287F92480 forKey:*MEMORY[0x277D40160]];
  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  [v6 setProperty:@"com.apple.graphic-icon.account.contact-key-verification" forKey:*MEMORY[0x277D3FFD8]];
  v8 = [(TUIOptInSpecifierProvider *)self _shouldShowErrorUI];
  stateManager = self->_stateManager;
  if (!v8)
  {
    if ([(TUIKTStateManager *)stateManager optIn]== 2)
    {
      goto LABEL_12;
    }

    v11 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v6 setProperty:v11 forKey:*MEMORY[0x277D40158]];

    v12 = [(TUIKTStateManager *)self->_stateManager optIn];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v13;
    if (v12 == 1)
    {
      v14 = @"ACTIVE";
    }

    else
    {
      v14 = @"OFF";
    }

    v15 = [v13 localizedStringForKey:v14 value:&stru_287F92480 table:@"Localizable"];
    [v6 setProperty:v15 forKey:v7];

    goto LABEL_11;
  }

  if ([(TUIKTStateManager *)stateManager state]!= 6 && [(TUIKTStateManager *)self->_stateManager state]!= 10 && [(TUIKTStateManager *)self->_stateManager state]!= 11)
  {
    v10 = [(TUIKTStateManager *)self->_stateManager stateLabel];
    [v6 setProperty:v10 forKey:v7];
LABEL_11:
  }

LABEL_12:

  return v6;
}

- (void)_showTransparencyPane
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __50__TUIOptInSpecifierProvider__showTransparencyPane__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithAccountManager:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_26F50B000, v0, v1, "%s %{public}@ on %{public}@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)handleURL:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_26F50B000, v0, v1, "%s %{public}@ on %{public}@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)specifiers
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v4 = a2;
  v5 = [v3 stateDescription];
  v6 = *(a1 + 16);
  v8 = 136315906;
  v9 = "[TUIOptInSpecifierProvider specifiers]";
  v10 = 2114;
  v11 = v5;
  v12 = 2114;
  v13 = v6;
  v14 = 2114;
  v15 = a1;
  _os_log_debug_impl(&dword_26F50B000, v4, OS_LOG_TYPE_DEBUG, "%s %{public}@, specifiers = %{public}@ on %{public}@", &v8, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

@end