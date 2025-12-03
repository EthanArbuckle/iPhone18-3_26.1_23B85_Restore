@interface TUIAccountKeySpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (NSArray)specifiers;
- (TUIAccountKeySpecifierProvider)init;
- (TUIAccountKeySpecifierProvider)initWithAccountManager:(id)manager;
- (TUIAccountKeySpecifierProvider)initWithStaticIdentityManager:(id)manager analytics:(id)analytics;
- (id)_accountKeySpecifier;
- (id)_buttonSpecifier;
- (id)_collapsedButtonSpecifier;
- (id)_collapsedGroupSpecifier;
- (id)_currentAccountKeyString;
- (id)_getAccountKeyButtonEnabledForSpecifier:(id)specifier;
- (id)_groupSpecifier;
- (id)createGroupSpecifierWithIdentifier:(id)identifier title:(id)title footerText:(id)text linkText:(id)linkText actionMethodName:(id)name target:(id)target;
- (int64_t)_accountKeyButtonTableCellType;
- (void)_accountKeyButtonTapped:(id)tapped;
- (void)_learnMoreTapped;
- (void)_showInfoAlert:(id)alert;
- (void)_startSpinnerForSpecifier:(id)specifier;
- (void)refreshSelfAccountKey;
- (void)reloadSpecifiers;
@end

@implementation TUIAccountKeySpecifierProvider

- (TUIAccountKeySpecifierProvider)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(TUIAccountKeySpecifierProvider *)self initWithStaticIdentityManager:v3 analytics:v4];

  if (v5)
  {
    [(TUIStaticIdentityManager *)v5->_staticIdentityManager requestSelfAccountKey];
  }

  return v5;
}

- (TUIAccountKeySpecifierProvider)initWithStaticIdentityManager:(id)manager analytics:(id)analytics
{
  managerCopy = manager;
  analyticsCopy = analytics;
  v13.receiver = self;
  v13.super_class = TUIAccountKeySpecifierProvider;
  v9 = [(TUIAccountKeySpecifierProvider *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_staticIdentityManager, manager);
    objc_storeStrong(&v10->_analytics, analytics);
    delegate = [(TUIStaticIdentityManager *)v10->_staticIdentityManager delegate];

    if (!delegate)
    {
      [(TUIStaticIdentityManager *)v10->_staticIdentityManager setDelegate:v10];
    }
  }

  return v10;
}

- (TUIAccountKeySpecifierProvider)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_10 != -1)
  {
    [TUIAccountKeySpecifierProvider initWithAccountManager:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
  {
    [TUIAccountKeySpecifierProvider initWithAccountManager:];
  }

  return 0;
}

uint64_t __57__TUIAccountKeySpecifierProvider_initWithAccountManager___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)refreshSelfAccountKey
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_26F50B000, v0, OS_LOG_TYPE_DEBUG, "%s  on %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __55__TUIAccountKeySpecifierProvider_refreshSelfAccountKey__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    array = [MEMORY[0x277CBEB18] array];
    if (self->_isExpanded)
    {
      _groupSpecifier = [(TUIAccountKeySpecifierProvider *)self _groupSpecifier];
      [array addObject:_groupSpecifier];

      _accountKeySpecifier = [(TUIAccountKeySpecifierProvider *)self _accountKeySpecifier];
      [array addObject:_accountKeySpecifier];

      [(TUIAccountKeySpecifierProvider *)self _buttonSpecifier];
    }

    else
    {
      _collapsedGroupSpecifier = [(TUIAccountKeySpecifierProvider *)self _collapsedGroupSpecifier];
      [array addObject:_collapsedGroupSpecifier];

      [(TUIAccountKeySpecifierProvider *)self _collapsedButtonSpecifier];
    }
    v8 = ;
    [array addObject:v8];

    v9 = [array copy];
    v10 = self->_specifiers;
    self->_specifiers = v9;

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
  block[2] = __50__TUIAccountKeySpecifierProvider_reloadSpecifiers__block_invoke;
  block[3] = &unk_279DDA9E8;
  objc_copyWeak(&v8, &location);
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __50__TUIAccountKeySpecifierProvider_reloadSpecifiers__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_10 != -1)
    {
      __50__TUIAccountKeySpecifierProvider_reloadSpecifiers__block_invoke_cold_1();
    }

    v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_10;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_INFO))
    {
      v7 = 138543362;
      v8 = WeakRetained;
      _os_log_impl(&dword_26F50B000, v3, OS_LOG_TYPE_INFO, "%{public}@ attempting to reload specifiers...", &v7, 0xCu);
    }

    v4 = [WeakRetained delegate];
    [v4 reloadSpecifiersForProvider:WeakRetained oldSpecifiers:*(a1 + 32) animated:1];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_10 != -1)
    {
      __50__TUIAccountKeySpecifierProvider_reloadSpecifiers__block_invoke_cold_2();
    }

    v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_10;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[TUIAccountKeySpecifierProvider reloadSpecifiers]_block_invoke";
      _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __50__TUIAccountKeySpecifierProvider_reloadSpecifiers__block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __50__TUIAccountKeySpecifierProvider_reloadSpecifiers__block_invoke_44()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_startSpinnerForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:*MEMORY[0x277D40148]];
  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v3 startAnimating];
  [v4 setAccessoryView:v3];
}

- (id)_collapsedGroupSpecifier
{
  if (self->_isPeerAccount)
  {
    v3 = @"PEER_PUBLIC_VERIFICATION_CODE";
  }

  else
  {
    v3 = @"PUBLIC_VERIFICATION_CODE";
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ACCOUNT_KEY_GROUP_FOOTER_PART1" value:&stru_287F92480 table:@"Localizable"];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"LEARN_MORE" value:&stru_287F92480 table:@"Localizable"];
  v8 = [(TUIAccountKeySpecifierProvider *)self createGroupSpecifierWithIdentifier:v3 title:0 footerText:v5 linkText:v7 actionMethodName:@"_learnMoreTapped" target:self];

  return v8;
}

- (id)_collapsedButtonSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SHOW_PUBLIC_VERIFICATION_CODE" value:&stru_287F92480 table:@"Localizable"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];

  v7 = MEMORY[0x277CBEC38];
  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  [v6 setButtonAction:sel__showPublicVerificationCodeTapped_];
  [v6 setProperty:v7 forKey:*MEMORY[0x277D3FD80]];

  return v6;
}

- (id)_groupSpecifier
{
  isPeerAccount = self->_isPeerAccount;
  v6 = @"PUBLIC_VERIFICATION_CODE";
  if (self->_isPeerAccount)
  {
    v6 = @"PEER_PUBLIC_VERIFICATION_CODE";
  }

  v21 = v6;
  if (isPeerAccount)
  {
    v7 = [(TUIStaticIdentityManager *)self->_staticIdentityManager localizedPeerAccountNameMessage:@"VERIFICATION_CODE_GROUP_PEER_TITLE"];
    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v8 localizedStringForKey:@"VERIFICATION_CODE_GROUP_SELF_TITLE" value:&stru_287F92480 table:@"Localizable"];
  }

  v9 = self->_isPeerAccount;
  if (v9)
  {
    [(TUIStaticIdentityManager *)self->_staticIdentityManager localizedPeerAccountNameMessage:@"VERIFICATION_CODE_GROUP_PEER_FOOTER"];
  }

  else
  {
    v18 = MEMORY[0x277CCACA8];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v20 localizedStringForKey:@"ACCOUNT_KEY_GROUP_FOOTER_PART1" value:&stru_287F92480 table:@"Localizable"];
    v12 = v11 = v8;
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"ACCOUNT_KEY_GROUP_FOOTER_PART2" value:&stru_287F92480 table:@"Localizable"];
    v17 = v12;
    v19 = v12;
    v8 = v11;
    [v18 stringWithFormat:@"%@ %@", v17, v3];
  }
  v10 = ;
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"LEARN_MORE" value:&stru_287F92480 table:@"Localizable"];
  v15 = [(TUIAccountKeySpecifierProvider *)self createGroupSpecifierWithIdentifier:v21 title:v7 footerText:v10 linkText:v14 actionMethodName:@"_learnMoreTapped" target:self];

  if (!v9)
  {

    v10 = v20;
  }

  if (!isPeerAccount)
  {
  }

  return v15;
}

- (id)_accountKeySpecifier
{
  v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_287F92480 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v3 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
  [v3 setProperty:v4 forKey:*MEMORY[0x277D40140]];

  _currentAccountKeyString = [(TUIAccountKeySpecifierProvider *)self _currentAccountKeyString];
  [v3 setProperty:_currentAccountKeyString forKey:*MEMORY[0x277D40170]];

  [v3 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  if (self->_isPeerAccount)
  {
    v6 = kTUIAccessibilityIdentifierPeerPublicVerificationCode;
  }

  else
  {
    v6 = kTUIAccessibilityIdentifierSelfPublicVerificationCode;
  }

  [v3 setProperty:*v6 forKey:*MEMORY[0x277D401A8]];

  return v3;
}

- (id)_buttonSpecifier
{
  selfCopy = self;
  conversationVerified = [(TUIStaticIdentityManager *)self->_staticIdentityManager conversationVerified];
  v4 = MEMORY[0x277D3FAD8];
  v5 = selfCopy[8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v5 == 1)
  {
    if (conversationVerified)
    {
      v8 = [v6 localizedStringForKey:@"VERIFIED" value:&stru_287F92480 table:@"Localizable"];
      v9 = 0;
      v10 = 1;
    }

    else
    {
      v8 = [v6 localizedStringForKey:@"MARK_AS_VERIFIED_NO_DOTS" value:&stru_287F92480 table:@"Localizable"];
      v10 = 0;
      v9 = 1;
    }
  }

  else
  {
    v8 = [v6 localizedStringForKey:@"COPY_VERIFICATION_CODE" value:&stru_287F92480 table:@"Localizable"];
    v9 = 0;
    v10 = 0;
  }

  v11 = [v4 preferenceSpecifierNamed:v8 target:selfCopy set:0 get:sel__getAccountKeyButtonEnabledForSpecifier_ detail:0 cell:objc_msgSend(selfCopy edit:{"_accountKeyButtonTableCellType"), 0}];
  if (v5)
  {
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (!v9)
    {
LABEL_8:
      if (!v10)
      {
        goto LABEL_9;
      }

LABEL_13:

      if (conversationVerified)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  if (v10)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (conversationVerified)
  {
LABEL_10:
    [v11 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    v12 = MEMORY[0x277D755B8];
    v13 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76988] scale:-1];
    _currentAccountKeyString = [v12 systemImageNamed:@"checkmark.circle.fill" withConfiguration:v13];

    [v11 setProperty:_currentAccountKeyString forKey:*MEMORY[0x277D3FFC0]];
    [v11 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    goto LABEL_20;
  }

LABEL_14:
  _currentAccountKeyString = [selfCopy _currentAccountKeyString];
  v15 = MEMORY[0x277CCABB0];
  if (_currentAccountKeyString)
  {
    selfCopy = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [selfCopy localizedStringForKey:@"VERIFICATION_CODE_NOT_AVAILABLE" value:&stru_287F92480 table:@"Localizable"];
    v16 = [_currentAccountKeyString isEqualToString:v8] ^ 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v15 numberWithInt:v16];
  [v11 setProperty:v17 forKey:*MEMORY[0x277D3FF38]];

  if (_currentAccountKeyString)
  {
  }

  [v11 setButtonAction:sel__accountKeyButtonTapped_];
LABEL_20:

  return v11;
}

- (id)_getAccountKeyButtonEnabledForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  _currentAccountKeyString = [(TUIAccountKeySpecifierProvider *)self _currentAccountKeyString];

  if (!_currentAccountKeyString)
  {
    [(TUIAccountKeySpecifierProvider *)self _startSpinnerForSpecifier:specifierCopy];
  }

  return 0;
}

- (int64_t)_accountKeyButtonTableCellType
{
  _currentAccountKeyString = [(TUIAccountKeySpecifierProvider *)self _currentAccountKeyString];

  if (_currentAccountKeyString)
  {
    return 13;
  }

  else
  {
    return -1;
  }
}

- (void)_accountKeyButtonTapped:(id)tapped
{
  if (self->_isPeerAccount)
  {
    [(TUIAnalytics *)self->_analytics ktInteraction:@"markAsVerifiedSelected"];
    staticIdentityManager = self->_staticIdentityManager;

    [(TUIStaticIdentityManager *)staticIdentityManager verifyConversation];
  }

  else
  {
    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    _currentAccountKeyString = [(TUIAccountKeySpecifierProvider *)self _currentAccountKeyString];
    [generalPasteboard setString:_currentAccountKeyString];

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v8 localizedStringForKey:@"VERIFICATON_CODE_COPIED" value:&stru_287F92480 table:@"Localizable"];
    [(TUIAccountKeySpecifierProvider *)self _showInfoAlert:v7];
  }
}

- (void)_learnMoreTapped
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/ht213465"];
  [*MEMORY[0x277D76620] openURL:v2 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (id)_currentAccountKeyString
{
  isPeerAccount = self->_isPeerAccount;
  staticIdentityManager = self->_staticIdentityManager;
  if (isPeerAccount)
  {
    [(TUIStaticIdentityManager *)staticIdentityManager peerAccountKeyDisplayString];
  }

  else
  {
    [(TUIStaticIdentityManager *)staticIdentityManager selfAccountKeyDisplayString];
  }
  v4 = ;

  return v4;
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

- (void)_showInfoAlert:(id)alert
{
  alertCopy = alert;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_10 != -1)
  {
    [TUIAccountKeySpecifierProvider _showInfoAlert:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
  {
    [TUIAccountKeySpecifierProvider _showInfoAlert:];
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__TUIAccountKeySpecifierProvider__showInfoAlert___block_invoke_118;
  block[3] = &unk_279DDA9E8;
  objc_copyWeak(&v8, &location);
  v7 = alertCopy;
  v5 = alertCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __49__TUIAccountKeySpecifierProvider__showInfoAlert___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __49__TUIAccountKeySpecifierProvider__showInfoAlert___block_invoke_118(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277D75110] alertControllerWithTitle:*(a1 + 32) message:0 preferredStyle:1];
    v4 = MEMORY[0x277D750F8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"DISMISS" value:&stru_287F92480 table:@"Localizable"];
    v7 = [v4 actionWithTitle:v6 style:0 handler:0];
    [v3 addAction:v7];

    v8 = [WeakRetained delegate];
    [v8 specifierProvider:WeakRetained showViewController:v3];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_10 != -1)
    {
      __49__TUIAccountKeySpecifierProvider__showInfoAlert___block_invoke_118_cold_1();
    }

    v9 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_10;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[TUIAccountKeySpecifierProvider _showInfoAlert:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v9, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __49__TUIAccountKeySpecifierProvider__showInfoAlert___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_10 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
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
  _os_log_error_impl(&dword_26F50B000, v0, OS_LOG_TYPE_ERROR, "%s initWithAccountManager is not supported on %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_showInfoAlert:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_26F50B000, v0, OS_LOG_TYPE_DEBUG, "%s  on %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end