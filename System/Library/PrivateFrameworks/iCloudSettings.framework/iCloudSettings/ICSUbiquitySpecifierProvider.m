@interface ICSUbiquitySpecifierProvider
+ (BOOL)isSpecifierHiddenForBundleID:(id)a3 ubiquityAccessManager:(id)a4;
+ (id)appAccessGrantedForBundleID:(id)a3 ubiquityAccessManager:(id)a4;
- (BOOL)_isAccountInGrayMode;
- (BOOL)_shouldShowUbiquitySpecifier;
- (BOOL)shouldShowSpecifierForDataclass:(id)a3;
- (ICSSpecifierProviderDelegate)delegate;
- (ICSUbiquitySpecifierProvider)init;
- (ICSUbiquitySpecifierProvider)initWithAccountManager:(id)a3;
- (ICSUbiquitySpecifierProviderDelegate)ubiquityDelegate;
- (id)_account;
- (id)_appAccessGrantedForSpecifier:(id)a3;
- (id)_appSpecifierWithBundleID:(id)a3;
- (id)_appSpecifiersForUbiquityServices;
- (id)_dataclassState:(id)a3;
- (id)_groupUbiquityServices:(id)a3;
- (id)_isDocumentsAndDataEnabled:(id)a3;
- (id)_ubiquitySpecifier;
- (id)specifiers;
- (id)ubiquityDataclassSwitchSpecifier;
- (id)ubiquityLinklistSpecifier;
- (id)ubiquitySpecifier;
- (void)_clearSpecifiers;
- (void)_loadiCloudDriveSettingsBundleIfNeeded;
- (void)_presentiCloudUpgradeFlowForSpecifier:(id)a3;
- (void)_setAppAccessGranted:(id)a3 forSpecifier:(id)a4;
- (void)_setDocumentsAndDataEnabled:(id)a3 forSpecifier:(id)a4;
- (void)_startObservingTCCAccessChanges;
- (void)_startUsingiCloudDriveWithSpecifier:(id)a3;
- (void)_stopObservingTCCAccessChanges;
- (void)dealloc;
@end

@implementation ICSUbiquitySpecifierProvider

- (ICSUbiquitySpecifierProvider)init
{
  [(ICSUbiquitySpecifierProvider *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICSUbiquitySpecifierProvider)initWithAccountManager:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = ICSUbiquitySpecifierProvider;
  v6 = [(ICSUbiquitySpecifierProvider *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, a3);
    v8 = +[ICSUbiquityAccessManager sharedInstance];
    ubiquityAccessManager = v7->_ubiquityAccessManager;
    v7->_ubiquityAccessManager = v8;

    v10 = [_TtC14iCloudSettings22ICSAnalyticsController alloc];
    v11 = [(AIDAAccountManager *)v7->_accountManager accounts];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];
    v13 = [(ICSAnalyticsController *)v10 initWithAccount:v12];
    analyticsController = v7->_analyticsController;
    v7->_analyticsController = v13;

    [(ICSUbiquitySpecifierProvider *)v7 _startObservingTCCAccessChanges];
  }

  return v7;
}

- (void)dealloc
{
  [(ICSUbiquitySpecifierProvider *)self _stopObservingTCCAccessChanges];
  v3.receiver = self;
  v3.super_class = ICSUbiquitySpecifierProvider;
  [(ICSUbiquitySpecifierProvider *)&v3 dealloc];
}

- (id)_account
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (id)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    if ([(ICSUbiquitySpecifierProvider *)self shouldShowSpecifierForDataclass:*MEMORY[0x277CB91D8]])
    {
      v4 = [(ICSUbiquitySpecifierProvider *)self _appSpecifiersForUbiquityServices];
      v5 = [(ICSUbiquitySpecifierProvider *)self _groupUbiquityServices:v4];
    }

    else
    {
      v5 = 0;
    }

    v6 = self->_specifiers;
    self->_specifiers = v5;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (BOOL)shouldShowSpecifierForDataclass:(id)a3
{
  v4 = MEMORY[0x277CEC7A0];
  v5 = a3;
  v6 = [v4 sharedManager];
  v7 = [(ICSUbiquitySpecifierProvider *)self _account];
  v8 = [v6 shouldShowDataclass:v5 forAccount:v7];

  if (v8)
  {
    v9 = [(ICSUbiquitySpecifierProvider *)self _account];
    v10 = [v9 aa_isAccountClass:*MEMORY[0x277CEC688]];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)ubiquitySpecifier
{
  v3 = [MEMORY[0x277CEC7A0] sharedManager];
  v4 = *MEMORY[0x277CB91D8];
  v5 = [(ICSUbiquitySpecifierProvider *)self _account];
  LODWORD(v4) = [v3 shouldShowDataclass:v4 forAccount:v5];

  if (v4)
  {
    v6 = [(ICSUbiquitySpecifierProvider *)self _ubiquitySpecifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_ubiquitySpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = *MEMORY[0x277CB91D8];
  v5 = [(ICSUbiquitySpecifierProvider *)self _account];
  v6 = [v3 acui_specifierForDataclass:v4 account:v5 target:self set:sel__setDocumentsAndDataEnabled_forSpecifier_ get:sel__isDocumentsAndDataEnabled_];

  v7 = [MEMORY[0x277D262A0] sharedConnection];
  LODWORD(v4) = [v7 effectiveBoolValueForSetting:*MEMORY[0x277D25E38]];

  if (v4 == 2)
  {
    [v6 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  return v6;
}

- (id)ubiquityDataclassSwitchSpecifier
{
  if ([(ICSUbiquitySpecifierProvider *)self _shouldShowUbiquitySpecifier])
  {
    v3 = objc_alloc_init(MEMORY[0x277CEC7B8]);
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"DATACLASS_CELL_TITLE"];
    v6 = [v4 localizedStringForKey:v5 value:&stru_288487370 table:@"Localizable-AppleID"];

    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v6 target:self set:sel__setDocumentsAndDataEnabled_forSpecifier_ get:sel__isDocumentsAndDataEnabled_ detail:0 cell:6 edit:0];
    v8 = *MEMORY[0x277D3FF38];
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    v9 = *MEMORY[0x277CB8A58];
    [v7 setObject:*MEMORY[0x277CB8A58] forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    [v7 setObject:v9 forKeyedSubscript:@"com.apple.accountsui.dataclass"];
    v10 = [MEMORY[0x277D262A0] sharedConnection];
    v11 = [v10 effectiveBoolValueForSetting:*MEMORY[0x277D25E38]];

    if (v11 == 2)
    {
      [v7 setProperty:MEMORY[0x277CBEC28] forKey:v8];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)ubiquityLinklistSpecifier
{
  if ([(ICSUbiquitySpecifierProvider *)self _shouldShowUbiquitySpecifier])
  {
    v3 = MEMORY[0x277D3FAD8];
    v4 = *MEMORY[0x277CB8A58];
    v5 = [(ICSUbiquitySpecifierProvider *)self _account];
    v6 = [v3 acui_linkListCellSpecifierForDataclass:v4 account:v5 target:self set:0 get:sel__dataclassState_ detail:objc_opt_class()];

    v7 = [MEMORY[0x277D262A0] sharedConnection];
    v8 = [v7 effectiveBoolValueForSetting:*MEMORY[0x277D25E38]];

    if (v8 == 2)
    {
      [v6 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    [v6 setObject:v4 forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    [v6 setObject:self->_accountManager forKeyedSubscript:@"icloudAccountManager"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_dataclassState:(id)a3
{
  v3 = [(ICSUbiquitySpecifierProvider *)self _isDocumentsAndDataEnabled:a3];
  v4 = [v3 BOOLValue];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4)
  {
    v7 = @"ON";
  }

  else
  {
    v7 = @"OFF";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_288487370 table:@"Localizable-AppleID"];

  return v8;
}

- (BOOL)_shouldShowUbiquitySpecifier
{
  v3 = [MEMORY[0x277CEC7A0] sharedManager];
  v4 = *MEMORY[0x277CB8A58];
  v5 = [(ICSUbiquitySpecifierProvider *)self _account];
  LOBYTE(v4) = [v3 shouldShowDataclass:v4 forAccount:v5];

  return v4;
}

- (id)_groupUbiquityServices:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v39 = v3;
  v5 = [v3 mutableCopy];
  v6 = [v5 specifierForID:@"com.apple.iBooks"];
  if (v6)
  {
    [v4 addObject:v6];
    [v5 removeObject:v6];
  }

  v7 = [v5 specifierForID:@"com.apple.Pages"];

  if (v7)
  {
    [v4 addObject:v7];
    [v5 removeObject:v7];
  }

  v8 = [v5 specifierForID:@"com.apple.Numbers"];

  if (v8)
  {
    [v4 addObject:v8];
    [v5 removeObject:v8];
  }

  v9 = [v5 specifierForID:@"com.apple.Keynote"];

  if (v9)
  {
    [v4 addObject:v9];
    [v5 removeObject:v9];
  }

  v10 = [v5 specifierForID:@"com.apple.mobilegarageband"];

  if (v10)
  {
    [v4 addObject:v10];
    [v5 removeObject:v10];
  }

  v11 = [v5 specifierForID:@"com.apple.iMovie"];

  if (v11)
  {
    [v4 addObject:v11];
    [v5 removeObject:v11];
  }

  v36 = v11;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = [v5 copy];
  v13 = [v12 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v48;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v48 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v47 + 1) + 8 * i);
        v18 = [v17 identifier];
        v19 = [v18 hasPrefix:@"com.apple."];

        if (v19)
        {
          [v4 addObject:v17];
          [v5 removeObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v14);
  }

  if ([v4 count])
  {
    v20 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"APPS_GROUP_3"];
    [v4 insertObject:v20 atIndex:0];
  }

  if ([v5 count])
  {
    v21 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"APPS_GROUP_4"];
    [v5 insertObject:v21 atIndex:0];
  }

  v37 = v5;
  v38 = v4;
  [v4 arrayByAddingObjectsFromArray:v5];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v22 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v44;
    v25 = *MEMORY[0x277D3FFB8];
    v41 = *MEMORY[0x277D3FE58];
    v40 = *MEMORY[0x277D40160];
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v43 + 1) + 8 * j);
        v28 = [v27 objectForKeyedSubscript:v25];
        if (v28)
        {
          v29 = v28;
          v30 = [v27 objectForKeyedSubscript:v25];
          if ([v30 isEqualToString:@"APPS_GROUP_3"])
          {
          }

          else
          {
            v31 = [v27 objectForKeyedSubscript:v25];
            v32 = [v31 isEqualToString:@"APPS_GROUP_4"];

            if ((v32 & 1) == 0)
            {
              [v27 setObject:objc_opt_class() forKeyedSubscript:v41];
              [v27 setObject:&stru_288487370 forKeyedSubscript:v40];
            }
          }
        }
      }

      v23 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v23);
  }

  v33 = *MEMORY[0x277D85DE8];

  return obj;
}

- (id)_appSpecifiersForUbiquityServices
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  if ([MEMORY[0x277CEC7B8] isMultiUserMode])
  {
    v4 = [v3 copy];
    v5 = v3;
  }

  else
  {
    v6 = [(ICSUbiquityAccessManager *)self->_ubiquityAccessManager allBundleIDs];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__ICSUbiquitySpecifierProvider__appSpecifiersForUbiquityServices__block_invoke;
    v11[3] = &unk_27A666668;
    v11[4] = self;
    v7 = [v6 aaf_map:v11];
    v5 = [v7 mutableCopy];

    [v5 sortUsingComparator:&__block_literal_global_0];
    v8 = LogSubsystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "Returning TCC/Ubiquity Specifiers: %@", buf, 0xCu);
    }

    v4 = [v5 copy];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __65__ICSUbiquitySpecifierProvider__appSpecifiersForUbiquityServices__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (id)_appSpecifierWithBundleID:(id)a3
{
  v4 = a3;
  if ([ICSUbiquitySpecifierProvider isSpecifierHiddenForBundleID:v4 ubiquityAccessManager:self->_ubiquityAccessManager])
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v4];
    v7 = MEMORY[0x277D3FAD8];
    v8 = [v6 localizedName];
    v5 = [v7 preferenceSpecifierNamed:v8 target:self set:sel__setAppAccessGranted_forSpecifier_ get:sel__appAccessGrantedForSpecifier_ detail:0 cell:6 edit:0];

    [v5 setIdentifier:v4];
    [v5 setProperty:v4 forKey:*MEMORY[0x277D40008]];
    v9 = MEMORY[0x277CBEC38];
    [v5 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
    v10 = [MEMORY[0x277D262A0] sharedConnection];
    v11 = [v10 isCloudSyncAllowed:v4];

    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = MEMORY[0x277CBEC28];
    }

    [v5 setProperty:v12 forKey:*MEMORY[0x277D3FF38]];
  }

  return v5;
}

- (void)_clearSpecifiers
{
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  ubiquityAccessManager = self->_ubiquityAccessManager;

  [(ICSUbiquityAccessManager *)ubiquityAccessManager reloadAccessInfo];
}

- (BOOL)_isAccountInGrayMode
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  if (v3)
  {
    if (([v3 aa_isSuspended] & 1) != 0 || !objc_msgSend(v3, "aa_isPrimaryEmailVerified"))
    {
      v5 = 1;
    }

    else
    {
      v4 = [v3 aa_repairState];
      v5 = [v4 unsignedIntegerValue] == 3;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isSpecifierHiddenForBundleID:(id)a3 ubiquityAccessManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v5];
  v8 = [v7 appState];
  v9 = [v8 isInstalled];

  if (v9)
  {
    v10 = [v7 entitlementValueForKey:@"com.apple.private.appleaccount.app-hidden-from-icloud-settings" ofClass:objc_opt_class()];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 BOOLValue])
    {
      v11 = [ICSUbiquitySpecifierProvider appAccessGrantedForBundleID:v5 ubiquityAccessManager:v6];

      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = 1;
        [v6 setAppAccessGranted:1 forBundleID:v5];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (id)_isDocumentsAndDataEnabled:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 specifierProvider:self isDataclassAvailableForSpecifier:v4];

    if (v8)
    {
      v9 = MEMORY[0x277CCABB0];
      v10 = [(ICSUbiquitySpecifierProvider *)self _account];
      if ([v10 isEnabledForDataclass:*MEMORY[0x277CB91D8]])
      {
        v11 = [(ICSUbiquitySpecifierProvider *)self _account];
        v12 = [v9 numberWithInt:{objc_msgSend(v11, "aa_isUsingCloudDocs")}];
      }

      else
      {
        v12 = [v9 numberWithInt:0];
      }

      goto LABEL_11;
    }
  }

  else
  {
    v13 = LogSubsystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ICSUbiquitySpecifierProvider _isDocumentsAndDataEnabled:?];
    }
  }

  v12 = MEMORY[0x277CBEC28];
LABEL_11:

  return v12;
}

- (void)_setDocumentsAndDataEnabled:(id)a3 forSpecifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  -[ICSAnalyticsController sendToggleEventForDataclassID:actionType:enabled:](self->_analyticsController, "sendToggleEventForDataclassID:actionType:enabled:", *MEMORY[0x277CB8A58], 0, [v6 BOOLValue]);
  v8 = [(ICSUbiquitySpecifierProvider *)self _account];
  v9 = [v8 aa_isUsingCloudDocs];

  if (v9)
  {
    v10 = LogSubsystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(ICSUbiquitySpecifierProvider *)self _account];
      v12 = [v6 BOOLValue];
      v13 = @"NO";
      if (v12)
      {
        v13 = @"YES";
      }

      v18 = 138412546;
      v19 = v11;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_275819000, v10, OS_LOG_TYPE_DEFAULT, "Updating account %@ ubiquity state to %@.", &v18, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 specifierProvider:self dataclassSwitchStateDidChange:v6 withSpecifier:v7];
    }
  }

  else
  {
    [(ICSUbiquitySpecifierProvider *)self _presentiCloudUpgradeFlowForSpecifier:v7];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_startUsingiCloudDriveWithSpecifier:(id)a3
{
  v15 = a3;
  [(ICSUbiquitySpecifierProvider *)self _loadiCloudDriveSettingsBundleIfNeeded];
  v4 = objc_alloc_init(NSClassFromString(&cfstr_Cdsupgradeview.isa));
  v5 = [v15 userInfo];
  if (v5)
  {
    v6 = v5;
    v7 = [v15 userInfo];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

LABEL_5:
      v10 = [v15 userInfo];
      v11 = [v10 mutableCopy];

      goto LABEL_7;
    }

    v8 = [v15 userInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_5;
    }
  }

  v11 = [MEMORY[0x277CBEB38] dictionary];
LABEL_7:
  v12 = [(ICSUbiquitySpecifierProvider *)self _account];
  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277CE8550]];

  v13 = [v11 copy];
  [v15 setUserInfo:v13];

  [v4 setSpecifier:v15];
  WeakRetained = objc_loadWeakRetained(&self->_ubiquityDelegate);
  [WeakRetained ubiquityProviderShowViewController:v4];
}

- (void)_presentiCloudUpgradeFlowForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ICLOUD_SERVICE_UBIQUITY_UPGRAGE_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ICLOUD_SERVICE_UBIQUITY_UPGRAGE_MESSAGE" value:&stru_288487370 table:@"Localizable-AppleID"];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"ICLOUD_SERVICE_UBIQUITY_UPGRAGE_BUTTON_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_288487370 table:@"Localizable-AppleID"];

  v13 = MEMORY[0x277D75110];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __70__ICSUbiquitySpecifierProvider__presentiCloudUpgradeFlowForSpecifier___block_invoke;
  v20 = &unk_27A666488;
  v21 = self;
  v22 = v4;
  v14 = v4;
  v15 = [v13 alertWithTitle:v6 message:v8 cancelButtonTitle:v12 defaultButtonTitle:v10 actionHandler:&v17];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained specifierProvider:self showViewController:{v15, v17, v18, v19, v20, v21}];
}

void __70__ICSUbiquitySpecifierProvider__presentiCloudUpgradeFlowForSpecifier___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) _startUsingiCloudDriveWithSpecifier:*(a1 + 40)];
  }

  v3 = *(a1 + 32);
  v4 = v3[5];
  [v3 _clearSpecifiers];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained reloadSpecifiersForProvider:*(a1 + 32) oldSpecifiers:v4 animated:1];
}

- (void)_loadiCloudDriveSettingsBundleIfNeeded
{
  v2 = MEMORY[0x277C84CF0](self, a2);
  v3 = [v2 stringByAppendingPathComponent:@"System/Library/PreferenceBundles/AccountSettings"];

  v4 = [v3 stringByAppendingPathComponent:@"iCloudDriveSettings.bundle"];
  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:v4];
  if (([v5 isLoaded] & 1) == 0)
  {
    v6 = LogSubsystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "iCloud Drive settings bundle not loaded. Loading...", v7, 2u);
    }

    [v5 load];
  }
}

- (void)_startObservingTCCAccessChanges
{
  v2 = self;
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __63__ICSUbiquitySpecifierProvider__startObservingTCCAccessChanges__block_invoke;
  handler[3] = &unk_27A6666B0;
  objc_copyWeak(&v8, &location);
  LODWORD(v2) = notify_register_dispatch("com.apple.tcc.access.changed", &v2->_tccObserverToken, v3, handler);

  if (v2)
  {
    v5 = LogSubsystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "Error registering for TCC notification.", v6, 2u);
    }
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __63__ICSUbiquitySpecifierProvider__startObservingTCCAccessChanges__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 5);
    v4 = LogSubsystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"YES";
      if (!v3)
      {
        v5 = @"NO";
      }

      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "ICSUbiquitySpecifierProvider received TCC access changed notification (has old specifiers: %@)", &v8, 0xCu);
    }

    [v2 _clearSpecifiers];
    v6 = [v2 delegate];
    [v6 replaceContiguousSpecifiers:v3 withSpecifiers:v2[5] animated:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingTCCAccessChanges
{
  if (notify_is_valid_token(self->_tccObserverToken))
  {
    tccObserverToken = self->_tccObserverToken;

    notify_cancel(tccObserverToken);
  }
}

- (id)_appAccessGrantedForSpecifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 specifierProvider:self isDataclassAvailableForSpecifier:v4];

    if (v8)
    {
      v9 = [v4 identifier];
      v10 = [ICSUbiquitySpecifierProvider appAccessGrantedForBundleID:v9 ubiquityAccessManager:self->_ubiquityAccessManager];

      goto LABEL_8;
    }
  }

  else
  {
    v11 = LogSubsystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ICSUbiquitySpecifierProvider _isDocumentsAndDataEnabled:?];
    }
  }

  v10 = MEMORY[0x277CBEC28];
LABEL_8:

  return v10;
}

+ (id)appAccessGrantedForBundleID:(id)a3 ubiquityAccessManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D262A0] sharedConnection];
  v8 = [v7 isCloudSyncAllowed:v5];

  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isAccessGrantedForBundleID:", v5)}];
  }

  else
  {
    v9 = MEMORY[0x277CBEC28];
  }

  return v9;
}

- (void)_setAppAccessGranted:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__ICSUbiquitySpecifierProvider__setAppAccessGranted_forSpecifier___block_invoke;
    v11[3] = &unk_27A6666D8;
    objc_copyWeak(&v14, &location);
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    [v10 validateDataclassAccessForProvider:self specifier:v13 completion:v11];

    objc_destroyWeak(&v14);
  }

  objc_destroyWeak(&location);
}

void __66__ICSUbiquitySpecifierProvider__setAppAccessGranted_forSpecifier___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && a2)
  {
    v8 = WeakRetained;
    v5 = *(*(a1 + 32) + 56);
    v6 = [*(a1 + 40) BOOLValue];
    v7 = [*(a1 + 48) identifier];
    [v5 setAppAccessGranted:v6 forBundleID:v7];

    WeakRetained = v8;
  }
}

- (ICSSpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ICSUbiquitySpecifierProviderDelegate)ubiquityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_ubiquityDelegate);

  return WeakRetained;
}

- (void)_isDocumentsAndDataEnabled:(id *)a1 .cold.1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1);
  OUTLINED_FUNCTION_0_1(&dword_275819000, v2, v3, "Delegate (%@) does not respond to 'specifierProvider:isDataclassAvailableForSpecifier:'", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end