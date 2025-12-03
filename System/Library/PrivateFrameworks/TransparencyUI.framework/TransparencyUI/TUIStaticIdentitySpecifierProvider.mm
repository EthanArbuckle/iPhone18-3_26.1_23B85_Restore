@interface TUIStaticIdentitySpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (NSArray)specifiers;
- (TUIStaticIdentitySpecifierProvider)initWithAccountManager:(id)manager;
- (TUIStaticIdentitySpecifierProvider)initWithStaticIdentityManager:(id)manager analytics:(id)analytics;
- (id)_buttonsSpecifier;
- (id)_codeSpecifier;
- (id)_groupSpecifier;
- (id)createGroupSpecifierWithIdentifier:(id)identifier title:(id)title footerText:(id)text linkText:(id)linkText actionMethodName:(id)name target:(id)target;
- (void)_markAsVerifiedAction:(id)action;
- (void)_noMatchAction:(id)action;
- (void)_usePublicVerificationCodesTapped;
- (void)reloadSpecifiers;
- (void)verifyContact:(id)contact peerPublicAccountIdentity:(id)identity;
@end

@implementation TUIStaticIdentitySpecifierProvider

- (TUIStaticIdentitySpecifierProvider)initWithStaticIdentityManager:(id)manager analytics:(id)analytics
{
  managerCopy = manager;
  analyticsCopy = analytics;
  v12.receiver = self;
  v12.super_class = TUIStaticIdentitySpecifierProvider;
  v9 = [(TUIStaticIdentitySpecifierProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_staticIdentityManager, manager);
    [(TUIStaticIdentityManager *)v10->_staticIdentityManager setDelegate:v10];
    [(TUIStaticIdentityManager *)v10->_staticIdentityManager requestNewSasCode];
    [(TUIStaticIdentityManager *)v10->_staticIdentityManager requestConversationVerificationState:0];
    objc_storeStrong(&v10->_analytics, analytics);
  }

  return v10;
}

- (TUIStaticIdentitySpecifierProvider)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_17 != -1)
  {
    [TUIStaticIdentitySpecifierProvider initWithAccountManager:];
  }

  v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_ERROR, "initWithAccountManager is not supported", v7, 2u);
  }

  return 0;
}

uint64_t __61__TUIStaticIdentitySpecifierProvider_initWithAccountManager___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    array = [MEMORY[0x277CBEB18] array];
    _groupSpecifier = [(TUIStaticIdentitySpecifierProvider *)self _groupSpecifier];
    [array addObject:_groupSpecifier];

    _codeSpecifier = [(TUIStaticIdentitySpecifierProvider *)self _codeSpecifier];
    [array addObject:_codeSpecifier];

    _buttonsSpecifier = [(TUIStaticIdentitySpecifierProvider *)self _buttonsSpecifier];
    [array addObject:_buttonsSpecifier];

    v8 = [array copy];
    v9 = self->_specifiers;
    self->_specifiers = v8;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (void)reloadSpecifiers
{
  v3 = self->_specifiers;
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__TUIStaticIdentitySpecifierProvider_reloadSpecifiers__block_invoke;
  v6[3] = &unk_279DDAA10;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __54__TUIStaticIdentitySpecifierProvider_reloadSpecifiers__block_invoke(uint64_t a1)
{
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_17 != -1)
  {
    __54__TUIStaticIdentitySpecifierProvider_reloadSpecifiers__block_invoke_cold_1();
  }

  v2 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F50B000, v2, OS_LOG_TYPE_INFO, "Attempting to reload specifiers...", v4, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  [v3 reloadSpecifiersForProvider:*(a1 + 32) oldSpecifiers:*(a1 + 40) animated:1];
}

uint64_t __54__TUIStaticIdentitySpecifierProvider_reloadSpecifiers__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)_groupSpecifier
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"STATIC_IDENTITY_GROUP_TITLE" value:&stru_287F92480 table:@"Localizable"];
  accountKeysDisplayed = [(TUIStaticIdentityManager *)self->_staticIdentityManager accountKeysDisplayed];
  if (accountKeysDisplayed)
  {
    v7 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v2 localizedStringForKey:@"STATIC_IDENTITY_GROUP_FOOTER_PART1" value:&stru_287F92480 table:@"Localizable"];
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"STATIC_IDENTITY_GROUP_FOOTER_PART2" value:&stru_287F92480 table:@"Localizable"];
  v10 = [(TUIStaticIdentitySpecifierProvider *)self createGroupSpecifierWithIdentifier:@"TUI_STATIC_IDENTITY_GROUP" title:v5 footerText:v7 linkText:v9 actionMethodName:@"_usePublicVerificationCodesTapped" target:self];

  if (!accountKeysDisplayed)
  {
  }

  return v10;
}

- (void)_usePublicVerificationCodesTapped
{
  [(TUIAnalytics *)self->_analytics ktInteraction:@"showPublicKeysSelected"];
  staticIdentityManager = self->_staticIdentityManager;

  [(TUIStaticIdentityManager *)staticIdentityManager showAccountKeys];
}

- (id)_codeSpecifier
{
  v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"TUI_STATIC_IDENTITY_CODE" target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v3 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
  [v3 setProperty:v4 forKey:*MEMORY[0x277D40140]];

  sasCodeString = [(TUIStaticIdentityManager *)self->_staticIdentityManager sasCodeString];
  [v3 setProperty:sasCodeString forKey:*MEMORY[0x277D40170]];

  sasCodeString2 = [(TUIStaticIdentityManager *)self->_staticIdentityManager sasCodeString];
  if (sasCodeString2)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"VERIFY_CODE_SUBTITLE" value:&stru_287F92480 table:@"Localizable"];
  }

  else
  {
    v8 = [(TUIStaticIdentityManager *)self->_staticIdentityManager localizedPeerAccountNameMessage:@"GENERATE_CODE_SUBTITLE"];
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"LEARN_MORE" value:&stru_287F92480 table:@"Localizable"];
  v12 = [v9 stringWithFormat:@"%@ %@", v8, v11];

  [v3 setProperty:v12 forKey:*MEMORY[0x277D40160]];
  [v3 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];

  return v3;
}

- (id)_buttonsSpecifier
{
  v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"TUI_STATIC_IDENTITY_BUTTONS" target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v3 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v3 setConfirmationAlternateAction:sel__noMatchAction_];
  [v3 setConfirmationAction:sel__markAsVerifiedAction_];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[TUIStaticIdentityManager sasCodeValid](self->_staticIdentityManager, "sasCodeValid")}];
  [v3 setProperty:v4 forKey:*MEMORY[0x277D3FF38]];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[TUIStaticIdentityManager conversationVerified](self->_staticIdentityManager, "conversationVerified")}];
  [v3 setProperty:v5 forKey:*MEMORY[0x277D401A8]];

  return v3;
}

- (void)_noMatchAction:(id)action
{
  [(TUIAnalytics *)self->_analytics ktInteraction:@"doNotMatchSelected"];
  objc_initWeak(&location, self);
  v4 = dispatch_get_global_queue(33, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke;
  v5[3] = &unk_279DDAB28;
  objc_copyWeak(&v6, &location);
  dispatch_async(v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc(MEMORY[0x277D73568]);
    v3 = [v2 initWithApplication:*MEMORY[0x277D735B0]];
    v13 = 0;
    v4 = [v3 status:&v13];
    v5 = v13;
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_17 != -1)
    {
      __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke_cold_1();
    }

    v6 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v15 = WeakRetained;
      v16 = 2114;
      v17 = v4;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_26F50B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ got CKV status = %{public}@, error = %{public}@", buf, 0x20u);
    }

    objc_initWeak(buf, WeakRetained);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke_91;
    block[3] = &unk_279DDA9E8;
    objc_copyWeak(&v12, buf);
    v11 = v4;
    v7 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_17 != -1)
    {
      __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke_cold_2();
    }

    v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[TUIStaticIdentitySpecifierProvider _noMatchAction:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v8, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke_88()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke_91(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277D75110];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"NO_MATCH_ALERT_TITLE" value:&stru_287F92480 table:@"Localizable"];
    v6 = [WeakRetained staticIdentityManager];
    v7 = [v6 localizedPeerAccountNameMessage:@"NO_MATCH_ALERT_TEXT"];
    v8 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

    if ([TUIUtils isTransparencyFeatureEnabled:ffKTReportToApple])
    {
      v9 = MEMORY[0x277D750F8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"REPORT_TO_APPLE_TITLE" value:&stru_287F92480 table:@"Localizable"];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke_107;
      v21[3] = &unk_279DDAD80;
      v22 = *(a1 + 32);
      v23 = WeakRetained;
      v12 = [v9 actionWithTitle:v11 style:0 handler:v21];
      [v8 addAction:v12];
    }

    v13 = MEMORY[0x277D750F8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"DISMISS" value:&stru_287F92480 table:@"Localizable"];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke_117;
    v20[3] = &unk_279DDAD58;
    v20[4] = WeakRetained;
    v16 = [v13 actionWithTitle:v15 style:1 handler:v20];
    [v8 addAction:v16];

    v17 = [WeakRetained delegate];
    [v17 specifierProvider:WeakRetained showViewController:v8];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_17 != -1)
    {
      __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke_91_cold_1();
    }

    v18 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[TUIStaticIdentitySpecifierProvider _noMatchAction:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v18, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke_2_92()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke_107(uint64_t a1)
{
  v2 = objc_alloc_init(TUIKTReportToAppleContext);
  v3 = [*(a1 + 32) recentFailedEventIds];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [*(a1 + 32) recentFailedEventIds];
    v6 = [v5 firstObject];
    [(TUIKTReportToAppleContext *)v2 setFailingValidation:v6];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_17 != -1)
    {
      __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke_107_cold_1();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17, OS_LOG_TYPE_ERROR))
    {
      __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke_107_cold_2(a1, v7);
    }
  }

  v8 = [TUIKTReportToAppleViewController alloc];
  v9 = [*(a1 + 40) staticIdentityManager];
  v10 = [(TUIKTReportToAppleViewController *)v8 initWithContext:v2 staticIdentityManager:v9];

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  [WeakRetained specifierProvider:*(a1 + 40) showViewController:v10];

  [*(*(a1 + 40) + 32) ktConversationNoMatch:1];
}

uint64_t __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke_2_109()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_17 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_markAsVerifiedAction:(id)action
{
  [(TUIAnalytics *)self->_analytics ktInteraction:@"markAsVerifiedSelected"];
  staticIdentityManager = self->_staticIdentityManager;

  [(TUIStaticIdentityManager *)staticIdentityManager verifyConversation];
}

- (void)verifyContact:(id)contact peerPublicAccountIdentity:(id)identity
{
  v6 = [MEMORY[0x277CBDC48] viewControllerForUpdatingContact:contact withPublicAccountIdentity:identity];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained specifierProvider:self showViewController:v6];
}

- (id)createGroupSpecifierWithIdentifier:(id)identifier title:(id)title footerText:(id)text linkText:(id)linkText actionMethodName:(id)name target:(id)target
{
  textCopy = text;
  linkTextCopy = linkText;
  nameCopy = name;
  targetCopy = target;
  v17 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:identifier name:title];
  if (textCopy)
  {
    linkTextCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", textCopy, linkTextCopy];
    [v17 setProperty:linkTextCopy forKey:*MEMORY[0x277D3FF88]];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v17 setProperty:v20 forKey:*MEMORY[0x277D3FF48]];

    [v17 setProperty:linkTextCopy forKey:*MEMORY[0x277D3FF70]];
    v25.location = [linkTextCopy rangeOfString:linkTextCopy];
    v21 = NSStringFromRange(v25);
    [v17 setProperty:v21 forKey:*MEMORY[0x277D3FF58]];

    v22 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:targetCopy];
    [v17 setProperty:v22 forKey:*MEMORY[0x277D3FF68]];

    [v17 setProperty:nameCopy forKey:*MEMORY[0x277D3FF50]];
  }

  return v17;
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __53__TUIStaticIdentitySpecifierProvider__noMatchAction___block_invoke_107_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_26F50B000, a2, OS_LOG_TYPE_ERROR, "%{public}@ no recent failed event id found, cannot get report data for no match", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end