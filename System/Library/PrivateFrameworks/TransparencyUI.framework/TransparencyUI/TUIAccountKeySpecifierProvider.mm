@interface TUIAccountKeySpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (NSArray)specifiers;
- (TUIAccountKeySpecifierProvider)init;
- (TUIAccountKeySpecifierProvider)initWithAccountManager:(id)a3;
- (TUIAccountKeySpecifierProvider)initWithStaticIdentityManager:(id)a3 analytics:(id)a4;
- (id)_accountKeySpecifier;
- (id)_buttonSpecifier;
- (id)_collapsedButtonSpecifier;
- (id)_collapsedGroupSpecifier;
- (id)_currentAccountKeyString;
- (id)_getAccountKeyButtonEnabledForSpecifier:(id)a3;
- (id)_groupSpecifier;
- (id)createGroupSpecifierWithIdentifier:(id)a3 title:(id)a4 footerText:(id)a5 linkText:(id)a6 actionMethodName:(id)a7 target:(id)a8;
- (int64_t)_accountKeyButtonTableCellType;
- (void)_accountKeyButtonTapped:(id)a3;
- (void)_learnMoreTapped;
- (void)_showInfoAlert:(id)a3;
- (void)_startSpinnerForSpecifier:(id)a3;
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

- (TUIAccountKeySpecifierProvider)initWithStaticIdentityManager:(id)a3 analytics:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = TUIAccountKeySpecifierProvider;
  v9 = [(TUIAccountKeySpecifierProvider *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_staticIdentityManager, a3);
    objc_storeStrong(&v10->_analytics, a4);
    v11 = [(TUIStaticIdentityManager *)v10->_staticIdentityManager delegate];

    if (!v11)
    {
      [(TUIStaticIdentityManager *)v10->_staticIdentityManager setDelegate:v10];
    }
  }

  return v10;
}

- (TUIAccountKeySpecifierProvider)initWithAccountManager:(id)a3
{
  v4 = a3;
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
    v4 = [MEMORY[0x277CBEB18] array];
    if (self->_isExpanded)
    {
      v5 = [(TUIAccountKeySpecifierProvider *)self _groupSpecifier];
      [v4 addObject:v5];

      v6 = [(TUIAccountKeySpecifierProvider *)self _accountKeySpecifier];
      [v4 addObject:v6];

      [(TUIAccountKeySpecifierProvider *)self _buttonSpecifier];
    }

    else
    {
      v7 = [(TUIAccountKeySpecifierProvider *)self _collapsedGroupSpecifier];
      [v4 addObject:v7];

      [(TUIAccountKeySpecifierProvider *)self _collapsedButtonSpecifier];
    }
    v8 = ;
    [v4 addObject:v8];

    v9 = [v4 copy];
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

- (void)_startSpinnerForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:*MEMORY[0x277D40148]];
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

  v5 = [(TUIAccountKeySpecifierProvider *)self _currentAccountKeyString];
  [v3 setProperty:v5 forKey:*MEMORY[0x277D40170]];

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
  v2 = self;
  v3 = [(TUIStaticIdentityManager *)self->_staticIdentityManager conversationVerified];
  v4 = MEMORY[0x277D3FAD8];
  v5 = v2[8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v5 == 1)
  {
    if (v3)
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

  v11 = [v4 preferenceSpecifierNamed:v8 target:v2 set:0 get:sel__getAccountKeyButtonEnabledForSpecifier_ detail:0 cell:objc_msgSend(v2 edit:{"_accountKeyButtonTableCellType"), 0}];
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

      if (v3)
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
  if (v3)
  {
LABEL_10:
    [v11 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    v12 = MEMORY[0x277D755B8];
    v13 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76988] scale:-1];
    v14 = [v12 systemImageNamed:@"checkmark.circle.fill" withConfiguration:v13];

    [v11 setProperty:v14 forKey:*MEMORY[0x277D3FFC0]];
    [v11 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    goto LABEL_20;
  }

LABEL_14:
  v14 = [v2 _currentAccountKeyString];
  v15 = MEMORY[0x277CCABB0];
  if (v14)
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v2 localizedStringForKey:@"VERIFICATION_CODE_NOT_AVAILABLE" value:&stru_287F92480 table:@"Localizable"];
    v16 = [v14 isEqualToString:v8] ^ 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v15 numberWithInt:v16];
  [v11 setProperty:v17 forKey:*MEMORY[0x277D3FF38]];

  if (v14)
  {
  }

  [v11 setButtonAction:sel__accountKeyButtonTapped_];
LABEL_20:

  return v11;
}

- (id)_getAccountKeyButtonEnabledForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(TUIAccountKeySpecifierProvider *)self _currentAccountKeyString];

  if (!v5)
  {
    [(TUIAccountKeySpecifierProvider *)self _startSpinnerForSpecifier:v4];
  }

  return 0;
}

- (int64_t)_accountKeyButtonTableCellType
{
  v2 = [(TUIAccountKeySpecifierProvider *)self _currentAccountKeyString];

  if (v2)
  {
    return 13;
  }

  else
  {
    return -1;
  }
}

- (void)_accountKeyButtonTapped:(id)a3
{
  if (self->_isPeerAccount)
  {
    [(TUIAnalytics *)self->_analytics ktInteraction:@"markAsVerifiedSelected"];
    staticIdentityManager = self->_staticIdentityManager;

    [(TUIStaticIdentityManager *)staticIdentityManager verifyConversation];
  }

  else
  {
    v5 = [MEMORY[0x277D75810] generalPasteboard];
    v6 = [(TUIAccountKeySpecifierProvider *)self _currentAccountKeyString];
    [v5 setString:v6];

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

- (id)createGroupSpecifierWithIdentifier:(id)a3 title:(id)a4 footerText:(id)a5 linkText:(id)a6 actionMethodName:(id)a7 target:(id)a8
{
  v13 = MEMORY[0x277D3FAD8];
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = [v13 groupSpecifierWithID:a3 name:a4];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v17, v16];

  [v18 setProperty:v19 forKey:*MEMORY[0x277D3FF88]];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  [v18 setProperty:v21 forKey:*MEMORY[0x277D3FF48]];

  [v18 setProperty:v19 forKey:*MEMORY[0x277D3FF70]];
  v22 = [v19 rangeOfString:v16];
  v24 = v23;

  v29.location = v22;
  v29.length = v24;
  v25 = NSStringFromRange(v29);
  [v18 setProperty:v25 forKey:*MEMORY[0x277D3FF58]];

  v26 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v14];

  [v18 setProperty:v26 forKey:*MEMORY[0x277D3FF68]];
  [v18 setProperty:v15 forKey:*MEMORY[0x277D3FF50]];

  return v18;
}

- (void)_showInfoAlert:(id)a3
{
  v4 = a3;
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
  v7 = v4;
  v5 = v4;
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