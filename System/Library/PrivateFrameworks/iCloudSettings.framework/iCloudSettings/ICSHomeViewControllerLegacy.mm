@interface ICSHomeViewControllerLegacy
- (BOOL)_canHandleURL:(id)a3;
- (BOOL)_shouldDisableiCloudUI;
- (BOOL)isSecondaryAccount;
- (BOOL)shouldDeferPushForSpecifierID:(id)a3 urlDictionary:(id)a4;
- (BOOL)shouldEnableAccountSummaryCell;
- (Class)accountInfoControllerClass;
- (ICSHomeViewControllerLegacy)init;
- (id)_iCloudBackupSpecifiers;
- (id)groupSpecifierAccountSummary;
- (id)specifiers;
- (void)_changePasswordLinkWasTapped;
- (void)_cleanupAllSpecifiers;
- (void)_cleanupiCloudSpecifiers;
- (void)_initiateSpecifiers;
- (void)_loadMailSettingsBundleIfNeeded;
- (void)cleanupDataclassSpecifiers;
- (void)dealloc;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)setAccountManager:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ICSHomeViewControllerLegacy

- (ICSHomeViewControllerLegacy)init
{
  v6.receiver = self;
  v6.super_class = ICSHomeViewControllerLegacy;
  v2 = [(ICSDataclassViewController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CB8A08], *MEMORY[0x277CB8A58], *MEMORY[0x277CB89C8], *MEMORY[0x277CB89C0], *MEMORY[0x277CB8920], 0}];
    mainViewDataclasses = v2->_mainViewDataclasses;
    v2->_mainViewDataclasses = v3;
  }

  return v2;
}

- (void)dealloc
{
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "ICSHomeViewControllerLegacy dealloc.", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = ICSHomeViewControllerLegacy;
  [(ICSDataclassViewController *)&v4 dealloc];
}

- (Class)accountInfoControllerClass
{
  if ([(ICSHomeViewControllerLegacy *)self isSecondaryAccount])
  {
    [(ICSHomeViewControllerLegacy *)self _loadMailSettingsBundleIfNeeded];
  }

  return NSClassFromString(&cfstr_Accountpsdetai.isa);
}

- (BOOL)shouldEnableAccountSummaryCell
{
  v3 = [MEMORY[0x277CECA48] isAccountDataclassListRedesignEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(ICSHomeViewControllerLegacy *)self isSecondaryAccount];
  }

  return v3;
}

- (void)_loadMailSettingsBundleIfNeeded
{
  v2 = MEMORY[0x277C84CF0](self, a2);
  v3 = [v2 stringByAppendingPathComponent:@"System/Library/PreferenceBundles/AccountSettings"];

  v4 = [v3 stringByAppendingPathComponent:@"MailAccountSettings.bundle"];
  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:v4];
  if (([v5 isLoaded] & 1) == 0)
  {
    v6 = LogSubsystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "Mail settings bundle not loaded. Loading...", v7, 2u);
    }

    [v5 load];
  }
}

- (void)setAccountManager:(id)a3
{
  v4 = a3;
  v5 = LogSubsystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICSHomeViewControllerLegacy setAccountManager:v5];
  }

  v6.receiver = self;
  v6.super_class = ICSHomeViewControllerLegacy;
  [(ICSDataclassViewController *)&v6 setAccountManager:v4];

  [(ICSHomeViewControllerLegacy *)self _initiateSpecifiers];
}

- (BOOL)isSecondaryAccount
{
  v3 = [(ICSDataclassViewController *)self account];
  if ([v3 aa_isAccountClass:*MEMORY[0x277CEC688]])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(ICSDataclassViewController *)self account];
    v4 = [v5 aa_isManagedAppleID] ^ 1;
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICSHomeViewControllerLegacy;
  [(ICSHomeViewControllerLegacy *)&v4 traitCollectionDidChange:a3];
  [(ICSHomeViewControllerLegacy *)self reloadSpecifiers];
}

- (void)_initiateSpecifiers
{
  v3 = [ICSHeaderSpecifierProvider alloc];
  v4 = [(ICSDataclassViewController *)self accountManager];
  v5 = [(ICSHeaderSpecifierProvider *)v3 initWithAccountManager:v4 presenter:self];
  headerSpecifierProvider = self->_headerSpecifierProvider;
  self->_headerSpecifierProvider = v5;

  [(AAUISpecifierProvider *)self->_headerSpecifierProvider setDelegate:self];
  if (![MEMORY[0x277CECA48] isAccountDataclassListRedesignEnabled] || !-[ICSHomeViewControllerLegacy isSecondaryAccount](self, "isSecondaryAccount"))
  {
    v7 = [ICSBackupSpecifierProvider alloc];
    v8 = [(ICSDataclassViewController *)self accountManager];
    v9 = [(ICSBackupSpecifierProvider *)v7 initWithAccountManager:v8 presenter:self];
    backupSpecifierProvider = self->_backupSpecifierProvider;
    self->_backupSpecifierProvider = v9;

    [(AAUISpecifierProvider *)self->_backupSpecifierProvider setDelegate:self];
  }

  v11 = [ICSDataclassSpecifierProvider alloc];
  v12 = [(ICSDataclassViewController *)self accountManager];
  v13 = [(ICSDataclassSpecifierProvider *)v11 initWithAccountManager:v12 presenter:self homeViewModel:0 manageStorageAppsListViewModel:0];
  dataClassSpecifierProvider = self->_dataClassSpecifierProvider;
  self->_dataClassSpecifierProvider = v13;

  v15 = self->_dataClassSpecifierProvider;

  [(AAUISpecifierProvider *)v15 setDelegate:self];
}

- (void)_cleanupAllSpecifiers
{
  [(ICSHomeViewControllerLegacy *)self cleanupDataclassSpecifiers];

  [(ICSHomeViewControllerLegacy *)self _cleanupiCloudSpecifiers];
}

- (void)cleanupDataclassSpecifiers
{
  [(AAUISpecifierProvider *)self->_backupSpecifierProvider setSpecifiers:0];
  deviceBackupSpecifiers = self->_deviceBackupSpecifiers;
  self->_deviceBackupSpecifiers = 0;

  [(AAUISpecifierProvider *)self->_dataClassSpecifierProvider setSpecifiers:0];
  v4 = *MEMORY[0x277D3FC48];
  v5 = *(&self->super.super.super.super.super.super.super.super.isa + v4);
  *(&self->super.super.super.super.super.super.super.super.isa + v4) = 0;
}

- (void)_cleanupiCloudSpecifiers
{
  [(AAUISpecifierProvider *)self->_headerSpecifierProvider setSpecifiers:0];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.super.super.super.isa + v3) = 0;
}

- (id)specifiers
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "updating the specifiers in the iCloudVC", buf, 2u);
  }

  v4 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.super.super.super.isa + v4))
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (![MEMORY[0x277CECA48] isAccountDataclassListRedesignEnabled] || !-[ICSHomeViewControllerLegacy isSecondaryAccount](self, "isSecondaryAccount"))
    {
      v6 = [(AAUISpecifierProvider *)self->_headerSpecifierProvider specifiers];
      v7 = [v6 count];

      if (v7)
      {
        v8 = [(AAUISpecifierProvider *)self->_headerSpecifierProvider specifiers];
        [v5 addObjectsFromArray:v8];
      }
    }

    v9 = [(ICSDataclassViewController *)self account];

    if (v9)
    {
      if (![MEMORY[0x277CECA48] isAccountDataclassListRedesignEnabled] || !-[ICSHomeViewControllerLegacy isSecondaryAccount](self, "isSecondaryAccount"))
      {
LABEL_15:
        v13 = [(AAUISpecifierProvider *)self->_dataClassSpecifierProvider specifiers];
        [v5 addObjectsFromArray:v13];

        v14 = [(ICSHomeViewControllerLegacy *)self _iCloudBackupSpecifiers];
        [v5 addObjectsFromArray:v14];

        v15 = [(ICSDataclassViewController *)self account];

        if (v15)
        {
          if (![MEMORY[0x277CECA48] isAccountDataclassListRedesignEnabled] || !-[ICSHomeViewControllerLegacy isSecondaryAccount](self, "isSecondaryAccount"))
          {
            goto LABEL_23;
          }

          v16 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"accountSettingsSpecifier"];
          [v5 addObject:v16];
          v17 = [(ACUIDataclassConfigurationViewController *)self specifierForAccountSettingsCell];
          [v5 addObject:v17];

          v18 = [(AAUISpecifierProvider *)self->_headerSpecifierProvider specifiers];
          v19 = [v18 count];

          if (v19)
          {
            v20 = [(AAUISpecifierProvider *)self->_headerSpecifierProvider specifiers];
            [v5 addObjectsFromArray:v20];
          }
        }

        else
        {
          v16 = LogSubsystem();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [(ICSHomeViewControllerLegacy *)v16 specifiers];
          }
        }

LABEL_23:
        v21 = [v5 copy];
        v22 = *(&self->super.super.super.super.super.super.super.super.isa + v4);
        *(&self->super.super.super.super.super.super.super.super.isa + v4) = v21;

        goto LABEL_24;
      }

      v10 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:0];
      v11 = [(ICSHomeViewControllerLegacy *)self groupSpecifierAccountSummary];

      v12 = [(ACUIDataclassConfigurationViewController *)self specifierForAccountSummaryCell];
      [v5 addObject:v11];
      [v5 addObject:v12];
    }

    else
    {
      v11 = LogSubsystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(ICSHomeViewControllerLegacy *)v11 specifiers];
      }
    }

    goto LABEL_15;
  }

LABEL_24:
  if ([(ICSHomeViewControllerLegacy *)self _shouldDisableiCloudUI])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = *(&self->super.super.super.super.super.super.super.super.isa + v4);
    v24 = [v23 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      v27 = *MEMORY[0x277D3FF38];
      v28 = MEMORY[0x277CBEC28];
      do
      {
        v29 = 0;
        do
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v33 + 1) + 8 * v29++) setObject:v28 forKeyedSubscript:{v27, v33}];
        }

        while (v25 != v29);
        v25 = [v23 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v25);
    }
  }

  v30 = *(&self->super.super.super.super.super.super.super.super.isa + v4);
  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)groupSpecifierAccountSummary
{
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"identifier" name:0];
  if (-[ICSHomeViewControllerLegacy isSecondaryAccount](self, "isSecondaryAccount") && ([MEMORY[0x277CECA48] isAccountDataclassListRedesignEnabled] & 1) != 0)
  {
    v4 = @"CHANGE_PASSWORD_LINK_SECONDARY_ACCOUNT";
    v5 = @"PASSWORD_CHANGE_LABEL_SECONDARY_ACCOUNT";
  }

  else
  {
    v4 = @"CHANGE_PASSWORD_LINK";
    v5 = @"PASSWORD_CHANGE_LABEL";
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:v5 value:&stru_288487370 table:@"Localizable-AppleID"];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:v4 value:&stru_288487370 table:@"Localizable-AppleID"];
  v11 = [v6 stringWithFormat:@"%@ %@", v8, v10];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:v4 value:&stru_288487370 table:@"Localizable-AppleID"];
  v20.location = [v11 rangeOfString:v13];
  v14 = NSStringFromRange(v20);
  [v3 setProperty:v14 forKey:*MEMORY[0x277D3FF58]];

  [v3 setProperty:v11 forKey:*MEMORY[0x277D3FF88]];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v3 setProperty:v16 forKey:*MEMORY[0x277D3FF48]];

  [v3 setProperty:v11 forKey:*MEMORY[0x277D3FF70]];
  v17 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v3 setProperty:v17 forKey:*MEMORY[0x277D3FF68]];

  [v3 setProperty:@"_changePasswordLinkWasTapped" forKey:*MEMORY[0x277D3FF50]];

  return v3;
}

- (void)_changePasswordLinkWasTapped
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"https://appleid.apple.com"];
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 openURL:v3 withCompletionHandler:0];
}

- (BOOL)_shouldDisableiCloudUI
{
  v3 = [(ICSDataclassViewController *)self account];
  if ([v3 aa_needsToVerifyTerms])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ICSDataclassViewController *)self account];
    if ([v5 aa_isPrimaryEmailVerified])
    {
      v6 = [(ICSDataclassViewController *)self account];
      v7 = [v6 aa_suspensionInfo];
      v4 = [v7 isiCloudSuspended];
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)_iCloudBackupSpecifiers
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (!self->_deviceBackupSpecifiers)
  {
    v3 = [(AAUISpecifierProvider *)self->_backupSpecifierProvider specifiers];
    v4 = [v3 count];

    if (v4)
    {
      v5 = MEMORY[0x277D3FAD8];
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"DEVICE_BACKUP_GROUP_NAME" value:&stru_288487370 table:@"Localizable-AppleID"];
      v8 = [v5 groupSpecifierWithName:v7];

      v16[0] = v8;
      v9 = [(AAUISpecifierProvider *)self->_backupSpecifierProvider specifiers];
      v10 = [v9 firstObject];
      v16[1] = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
      deviceBackupSpecifiers = self->_deviceBackupSpecifiers;
      self->_deviceBackupSpecifiers = v11;
    }
  }

  v13 = self->_deviceBackupSpecifiers;
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)shouldDeferPushForSpecifierID:(id)a3 urlDictionary:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = LogSubsystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ICSHomeViewControllerLegacy *)self navigationController];
    v7 = @"NO";
    if (!v6)
    {
      v7 = @"YES";
    }

    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "shouldDeferPush? %@", &v12, 0xCu);
  }

  v8 = [(ICSHomeViewControllerLegacy *)self navigationController];
  v9 = v8 == 0;

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LogSubsystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[ICSHomeViewControllerLegacy handleURL:withCompletion:]";
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "%s handleURL with dictionary - %@", buf, 0x16u);
  }

  v9 = [v6 objectForKeyedSubscript:@"showiCloudDetails"];
  [(ICSHomeViewControllerLegacy *)self setShouldShowiCloudDetails:v9 != 0];

  if ([(ICSHomeViewControllerLegacy *)self _canHandleURL:v6])
  {
    v7[2](v7);
    v10 = [(ICSHomeViewControllerLegacy *)self presentedViewController];
    if (v10)
    {
      v11 = v10;
      v12 = [(ICSHomeViewControllerLegacy *)self presentedViewController];
      v13 = [v12 parentViewController];

      if (!v13)
      {
        v14 = [(ICSHomeViewControllerLegacy *)self presentedViewController];
        [v14 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

  else
  {
    v15 = LogSubsystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v15, OS_LOG_TYPE_DEFAULT, "Calling superclass handleURL.", buf, 2u);
    }

    v17.receiver = self;
    v17.super_class = ICSHomeViewControllerLegacy;
    [(ICSHomeViewControllerLegacy *)&v17 handleURL:v6 withCompletion:v7];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canHandleURL:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  headerSpecifierProvider = self->_headerSpecifierProvider;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(AAUISpecifierProvider *)self->_headerSpecifierProvider handleURL:v4])
  {
    v6 = LogSubsystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[ICSHomeViewControllerLegacy _canHandleURL:]";
      v14 = 2112;
      v15 = v4;
      v7 = "%s Header specifier provider handled url: %@";
LABEL_9:
      _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, v7, &v12, 0x16u);
    }
  }

  else
  {
    dataClassSpecifierProvider = self->_dataClassSpecifierProvider;
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![(AAUISpecifierProvider *)self->_dataClassSpecifierProvider handleURL:v4])
    {
      v9 = 0;
      goto LABEL_12;
    }

    v6 = LogSubsystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[ICSHomeViewControllerLegacy _canHandleURL:]";
      v14 = 2112;
      v15 = v4;
      v7 = "%s iCloud specifier provider handled url: %@";
      goto LABEL_9;
    }
  }

  v9 = 1;
LABEL_12:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

@end