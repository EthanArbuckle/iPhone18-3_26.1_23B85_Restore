@interface ICSKeychainSyncViewController
- (ICSKeychainSyncViewController)initWithAccountManager:(id)manager;
- (id)_isKeychainSyncEnabledForSpecifier:(id)specifier;
- (id)_specifierForKeychainSwitchCell;
- (id)_tobleroneKeychainSpecifiers;
- (id)specifiers;
- (void)_beginManateeUpgradeAndEnableKeychain;
- (void)_keychainSyncStatusDidChange;
- (void)_registerForKeychainSyncStatusChangeNotification;
- (void)_reloadParentSpecifier;
- (void)_setKeychainSyncEnabled:(id)enabled withSpecifier:(id)specifier;
- (void)_stopListeningForKeychainSyncStatusChangeNotification;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation ICSKeychainSyncViewController

- (ICSKeychainSyncViewController)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = ICSKeychainSyncViewController;
  v5 = [(ICSKeychainSyncViewController *)&v12 init];
  if (v5)
  {
    v6 = [_TtC14iCloudSettings22ICSAnalyticsController alloc];
    accounts = [managerCopy accounts];
    v8 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];
    v9 = [(ICSAnalyticsController *)v6 initWithAccount:v8];
    analyticsController = v5->_analyticsController;
    v5->_analyticsController = v9;
  }

  return v5;
}

- (void)dealloc
{
  [(ICSKeychainSyncViewController *)self _stopListeningForKeychainSyncStatusChangeNotification];
  v3.receiver = self;
  v3.super_class = ICSKeychainSyncViewController;
  [(ICSKeychainSyncViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ICSKeychainSyncViewController;
  [(ICSKeychainSyncViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"KEYCHAIN_NAV_BAR_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  [(ICSKeychainSyncViewController *)self setTitle:v4];
}

void __47__ICSKeychainSyncViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    _tobleroneKeychainSpecifiers = [(ICSKeychainSyncViewController *)self _tobleroneKeychainSpecifiers];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = _tobleroneKeychainSpecifiers;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_tobleroneKeychainSpecifiers
{
  v44[3] = *MEMORY[0x277D85DE8];
  v3 = 0x277D3F000uLL;
  v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DATACLASS_HEADER_GROUP"];
  v5 = MEMORY[0x277D3FAD8];
  v6 = 0x277CCA000uLL;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"KEYCHAIN_DATACLASS_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  v9 = [v5 preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  traitCollection = [(ICSKeychainSyncViewController *)self traitCollection];
  LODWORD(v8) = [traitCollection pe_isSettingsFeatureDescriptionCellSupported];

  [v9 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v8)
    v11 = {;
    v12 = [v11 localizedStringForKey:@"KEYCHAIN_DATACLASS_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
    [v9 setProperty:v12 forKey:*MEMORY[0x277D40170]];

    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"KEYCHAIN_DATACLASS_SUBTITLE" value:&stru_288487370 table:@"Localizable-AppleID"];

    v15 = v4;
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"LEARN_MORE_PLACARD" value:&stru_288487370 table:@"Localizable-iCloud"];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"ICLOUD_KEYCHAIN_KB_LINK" value:&stru_288487370 table:@"Localizable-AppleID"];
    v21 = v16;
    v4 = v15;
    v3 = 0x277D3F000;
    v22 = [v21 stringWithFormat:@"[%@](%@)", v18, v20];

    v6 = 0x277CCA000;
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:v14, v22];
    [v9 setProperty:v23 forKey:*MEMORY[0x277D40160]];
    [v9 setProperty:@"com.apple.graphic-icon.passwords" forKey:*MEMORY[0x277D3FFD8]];
  }

  else
    v24 = {;
    v25 = [v24 localizedStringForKey:@"KEYCHAIN_DATACLASS_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
    [v9 setProperty:v25 forKey:*MEMORY[0x277D40170]];

    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"KEYCHAIN_DATACLASS_SUBTITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
    [v9 setProperty:v27 forKey:*MEMORY[0x277D40160]];

    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"ICLOUD_KEYCHAIN_KB_LINK" value:&stru_288487370 table:@"Localizable-AppleID"];
    [v9 setObject:v29 forKeyedSubscript:@"AAUIDataclassAttributedLink"];

    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"LEARN_MORE" value:&stru_288487370 table:@"Localizable-AppleID"];
    [v9 setObject:v31 forKeyedSubscript:@"AAUIDataclassAttributedLinkText"];

    [v9 setProperty:&unk_28849FD70 forKey:*MEMORY[0x277D3FD78]];
    v14 = [MEMORY[0x277D755B8] imageForDataclassWithType:@"com.apple.graphic-icon.passwords"];
    [v9 setProperty:v14 forKey:*MEMORY[0x277D3FFC0]];
  }

  v32 = [*(v6 + 2264) bundleForClass:objc_opt_class()];
  v33 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"DATACLASS_CELL_TITLE"];
  v34 = [v32 localizedStringForKey:v33 value:&stru_288487370 table:@"Localizable-AppleID"];

  v35 = [*(v3 + 2776) preferenceSpecifierNamed:v34 target:self set:sel__setKeychainSyncEnabled_withSpecifier_ get:sel__isKeychainSyncEnabledForSpecifier_ detail:0 cell:6 edit:0];
  switchCellSpecifier = self->_switchCellSpecifier;
  self->_switchCellSpecifier = v35;

  v37 = *MEMORY[0x277D3FF38];
  [(PSSpecifier *)self->_switchCellSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v39 = [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25E40]];

  if (v39)
  {
    [(PSSpecifier *)self->_switchCellSpecifier setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v37];
  }

  [(PSSpecifier *)self->_switchCellSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
  v40 = *MEMORY[0x277CB89C0];
  [(PSSpecifier *)self->_switchCellSpecifier setObject:*MEMORY[0x277CB89C0] forKeyedSubscript:*MEMORY[0x277D3FFB8]];
  [(PSSpecifier *)self->_switchCellSpecifier setObject:v40 forKeyedSubscript:@"com.apple.accountsui.dataclass"];
  v44[0] = v4;
  v44[1] = v9;
  v44[2] = self->_switchCellSpecifier;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)_specifierForKeychainSwitchCell
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ICLOUD_KEYCHAIN_LABEL" value:&stru_288487370 table:@"Localizable-AppleID"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:sel__setKeychainSyncEnabled_withSpecifier_ get:sel__isKeychainSyncEnabledForSpecifier_ detail:0 cell:6 edit:0];

  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];

  return v6;
}

- (id)_isKeychainSyncEnabledForSpecifier:(id)specifier
{
  v3 = MEMORY[0x277CCABB0];
  v4 = +[ICSKeychainSyncController isKeychainSyncEnabled];

  return [v3 numberWithBool:v4];
}

- (void)_setKeychainSyncEnabled:(id)enabled withSpecifier:(id)specifier
{
  enabledCopy = enabled;
  [(ICSKeychainSyncViewController *)self _startSpinnerInSpecifier:specifier];
  -[ICSKeychainSyncViewController _sendToggleInitiated:](self, "_sendToggleInitiated:", [enabledCopy BOOLValue]);
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    v7 = MEMORY[0x277CEC870];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"KEYCHAIN_NOT_AVAILABLE_IN_DEMO_MODE" value:&stru_288487370 table:@"Localizable-AppleID"];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"OK" value:&stru_288487370 table:@"Localizable-AppleID"];
    [v7 showUserNotificationWithTitle:v9 message:0 cancelButtonTitle:v11 otherButtonTitle:0 withCompletionBlock:&__block_literal_global_6];

    [(ICSKeychainSyncViewController *)self _keychainSyncStatusDidChange];
    -[ICSKeychainSyncViewController _sendToggleCompleted:](self, "_sendToggleCompleted:", [enabledCopy BOOLValue]);
  }

  else
  {
    self->_isTogglingKeychainSync = 1;
    if ([enabledCopy BOOLValue])
    {
      v12 = objc_alloc(MEMORY[0x277CFD548]);
      contextForPrimaryAccount = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
      v14 = [v12 initWithContext:contextForPrimaryAccount];

      v19 = 0;
      v15 = [v14 isManateeAvailable:&v19];
      v16 = v19;
      if (v15)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __71__ICSKeychainSyncViewController__setKeychainSyncEnabled_withSpecifier___block_invoke_2;
        v18[3] = &unk_27A666D50;
        v18[4] = self;
        [MEMORY[0x277CFD4F0] setUserVisibleKeychainSyncEnabled:1 withCompletion:v18];
      }

      else
      {
        [(ICSKeychainSyncViewController *)self _beginManateeUpgradeAndEnableKeychain];
      }
    }

    else
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __71__ICSKeychainSyncViewController__setKeychainSyncEnabled_withSpecifier___block_invoke_3;
      v17[3] = &unk_27A666D50;
      v17[4] = self;
      [MEMORY[0x277CFD4F0] setUserVisibleKeychainSyncEnabled:0 withCompletion:v17];
    }
  }
}

void __71__ICSKeychainSyncViewController__setKeychainSyncEnabled_withSpecifier___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CFD418]])
  {
    v5 = [v6 code];

    if (v5 == -5700)
    {
      [*(a1 + 32) _beginManateeUpgradeAndEnableKeychain];
      goto LABEL_6;
    }
  }

  else
  {
  }

  *(*(a1 + 32) + 1472) = 0;
  [*(a1 + 32) _keychainSyncStatusDidChange];
  [*(a1 + 32) _sendToggleCompleted:1];
LABEL_6:
}

uint64_t __71__ICSKeychainSyncViewController__setKeychainSyncEnabled_withSpecifier___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 1472) = 0;
  [*(a1 + 32) _keychainSyncStatusDidChange];
  v2 = *(a1 + 32);

  return [v2 _sendToggleCompleted:0];
}

- (void)_beginManateeUpgradeAndEnableKeychain
{
  self->_isTogglingKeychainSync = 1;
  v3 = [objc_alloc(MEMORY[0x277CECAF8]) initWithNibName:0 bundle:0];
  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
  v5 = objc_alloc(MEMORY[0x277CFDAE8]);
  mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
  primaryAccountAltDSID = [mEMORY[0x277CFD480] primaryAccountAltDSID];
  v8 = [v5 initWithAltDSID:primaryAccountAltDSID];

  [v8 setDeviceToDeviceEncryptionUpgradeUIStyle:0];
  [v8 setDeviceToDeviceEncryptionUpgradeType:0];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"UPGRADE_ACCOUNT_SECURITY_FEATURE_KEYCHAIN" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v8 setFeatureName:v10];

  [v8 setPresentingViewController:self];
  v11 = [objc_alloc(MEMORY[0x277CFDAF0]) initWithContext:v8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__ICSKeychainSyncViewController__beginManateeUpgradeAndEnableKeychain__block_invoke;
  v13[3] = &unk_27A666D78;
  v14 = v4;
  selfCopy = self;
  v12 = v4;
  [v11 performDeviceToDeviceEncryptionStateRepairWithCompletion:v13];
}

uint64_t __70__ICSKeychainSyncViewController__beginManateeUpgradeAndEnableKeychain__block_invoke(uint64_t a1, int a2)
{
  [*(a1 + 40) _stopSpinnerInActiveSpecifier:*(*(a1 + 40) + 1456)];
  if (a2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__ICSKeychainSyncViewController__beginManateeUpgradeAndEnableKeychain__block_invoke_2;
    v6[3] = &unk_27A666D50;
    v6[4] = *(a1 + 40);
    return [MEMORY[0x277CFD4F0] setUserVisibleKeychainSyncEnabled:1 withCompletion:v6];
  }

  else
  {
    *(*(a1 + 40) + 1472) = 0;
    [*(a1 + 40) _keychainSyncStatusDidChange];
    v5 = *(a1 + 40);

    return [v5 _sendToggleCancelled:1];
  }
}

uint64_t __70__ICSKeychainSyncViewController__beginManateeUpgradeAndEnableKeychain__block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1472) = 0;
  [*(a1 + 32) _keychainSyncStatusDidChange];
  v2 = *(a1 + 32);

  return [v2 _sendToggleCompleted:1];
}

- (void)_reloadParentSpecifier
{
  parentController = [(ICSKeychainSyncViewController *)self parentController];
  specifier = [(ICSKeychainSyncViewController *)self specifier];
  [parentController reloadSpecifier:specifier];
}

- (void)_keychainSyncStatusDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ICSKeychainSyncViewController__keychainSyncStatusDidChange__block_invoke;
  block[3] = &unk_27A666198;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __61__ICSKeychainSyncViewController__keychainSyncStatusDidChange__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 1472);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Received Keychain Sync status change notification. In the middle of toggling the switch? %d", v6, 8u);
  }

  result = *(a1 + 32);
  if ((*(result + 1472) & 1) == 0)
  {
    [result _stopSpinnerInActiveSpecifier:*(result + 1456)];
    [*(a1 + 32) reloadSpecifiers];
    result = [*(a1 + 32) _reloadParentSpecifier];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_registerForKeychainSyncStatusChangeNotification
{
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "Registering for Keychain Sync status change notification.", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = *MEMORY[0x277CDBDA0];
  v5 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __81__ICSKeychainSyncViewController__registerForKeychainSyncStatusChangeNotification__block_invoke;
  handler[3] = &unk_27A6666B0;
  objc_copyWeak(&v15, buf);
  notify_register_dispatch(v4, &self->_keychainSyncNotificationToken, v5, handler);
  v7 = MEMORY[0x277D85CD0];

  v8 = *MEMORY[0x277CDBE68];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__ICSKeychainSyncViewController__registerForKeychainSyncStatusChangeNotification__block_invoke_2;
  v12[3] = &unk_27A6666B0;
  objc_copyWeak(&v13, buf);
  notify_register_dispatch(v8, &self->_keychainSyncNotificationToken, v7, v12);

  v9 = *MEMORY[0x277CDBE78];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__ICSKeychainSyncViewController__registerForKeychainSyncStatusChangeNotification__block_invoke_3;
  v10[3] = &unk_27A6666B0;
  objc_copyWeak(&v11, buf);
  notify_register_dispatch(v9, &self->_keychainViewNotificationToken, v7, v10);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __81__ICSKeychainSyncViewController__registerForKeychainSyncStatusChangeNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _keychainSyncStatusDidChange];
}

void __81__ICSKeychainSyncViewController__registerForKeychainSyncStatusChangeNotification__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _keychainSyncStatusDidChange];
}

void __81__ICSKeychainSyncViewController__registerForKeychainSyncStatusChangeNotification__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _keychainSyncStatusDidChange];
}

- (void)_stopListeningForKeychainSyncStatusChangeNotification
{
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "Unregistering for Keychain Sync status change notification.", v4, 2u);
  }

  notify_cancel(self->_keychainSyncNotificationToken);
}

@end