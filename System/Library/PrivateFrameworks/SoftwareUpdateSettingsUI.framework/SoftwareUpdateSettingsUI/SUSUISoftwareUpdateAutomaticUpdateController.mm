@interface SUSUISoftwareUpdateAutomaticUpdateController
- (BOOL)isAllowedToGetNeRDInfo;
- (SUSUISoftwareUpdateAutomaticUpdateController)init;
- (id)automaticDownloadEnabled;
- (id)automaticDownloadStatus;
- (id)automaticUpdateStatus;
- (id)automaticallyDownloadGroup;
- (id)automaticallyDownloadSecurityResponseAndSystemFilesSwitch;
- (id)automaticallyDownloadUpdatesSwitch;
- (id)automaticallyInstallGroup;
- (id)automaticallyInstallSwitch;
- (id)getNeRDDisplayInfo;
- (id)previousUserSpecifiedAutomaticUpdateStatus;
- (id)previousUserSpecifiedSecurityResponseStatus;
- (id)securityResponseStatus;
- (id)specifiers;
- (void)cmdZPressed:(id)a3;
- (void)dealloc;
- (void)displayNeRDAlertToUser;
- (void)motionBegan:(int64_t)a3 withEvent:(id)a4;
- (void)preferences:(id)a3 didChangePreference:(id)a4 toValue:(id)a5;
- (void)setArmedAutomaticallyInstallToggledWithValue:(id)a3 forSpecifier:(id)a4;
- (void)setAutomaticallyDownloadUpdatesToggledWithValue:(id)a3 forSpecifier:(id)a4;
- (void)setAutomaticallyInstallSecurityResponsesAndSystemDataToggledWithValue:(id)a3 forSpecifier:(id)a4;
- (void)setAutomaticallyInstallUpdatesToggledWithValue:(id)a3 forSpecifier:(id)a4;
- (void)setNonArmedAutomaticallyInstallToggledWithValue:(id)a3 forSpecifier:(id)a4;
- (void)setSecurityResponseToggleState:(id)a3 toggleCellEnabled:(id)a4 userSpecified:(BOOL)a5 specifier:(id)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SUSUISoftwareUpdateAutomaticUpdateController

- (void)cmdZPressed:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(SUSUISoftwareUpdateAutomaticUpdateController *)v4 isAllowedToGetNeRDInfo])
  {
    [(SUSUISoftwareUpdateAutomaticUpdateController *)v4 displayNeRDAlertToUser];
  }

  objc_storeStrong(location, 0);
}

- (void)motionBegan:(int64_t)a3 withEvent:(id)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  objc_storeStrong(location, a4);
  if (-[SUSUISoftwareUpdateAutomaticUpdateController isAllowedToGetNeRDInfo](v6, "isAllowedToGetNeRDInfo") && [location[0] type] == 1)
  {
    oslog = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v7, "[SUSUISoftwareUpdateAutomaticUpdateController(NeRD) motionBegan:withEvent:]");
      _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s: RecoveryOS info is about to be displayed.", v7, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(SUSUISoftwareUpdateAutomaticUpdateController *)v6 displayNeRDAlertToUser];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isAllowedToGetNeRDInfo
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = self;
  v7 = a2;
  v3 = [MEMORY[0x277D64AE0] sharedDefaults];
  v4 = [v3 isNeRDProfileStatusInstalled];
  MEMORY[0x277D82BD8](v3);
  v6 = v4;
  if (v4)
  {
    oslog = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v9, "[SUSUISoftwareUpdateAutomaticUpdateController(NeRD) isAllowedToGetNeRDInfo]");
      _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s: RecoveryOS info profile is Enabled", v9, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  *MEMORY[0x277D85DE8];
  return v6 & 1;
}

- (id)getNeRDDisplayInfo
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = self;
  location[1] = a2;
  location[0] = MEMORY[0x277D82BE0](@"No info provided");
  v10 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v12 parentController];
  if (v10)
  {
    v4 = [v10 manager];
    v9 = [v4 rvGetCurrentNeRDInfo];
    MEMORY[0x277D82BD8](v4);
    if (v9 && [v9 count])
    {
      v8 = [v9 description];
      if (v8 && ([v8 isEqual:&stru_287B79370] & 1) == 0)
      {
        objc_storeStrong(location, v8);
      }

      objc_storeStrong(&v8, 0);
    }

    else
    {
      v7 = _SUSUILoggingFacility();
      v6 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_32(v14, "[SUSUISoftwareUpdateAutomaticUpdateController(NeRD) getNeRDDisplayInfo]");
        _os_log_error_impl(&dword_26AC94000, v7, v6, "%s: Dictionary from RecoveryOS info is nil", v14, 0xCu);
      }

      objc_storeStrong(&v7, 0);
    }

    objc_storeStrong(&v9, 0);
  }

  else
  {
    oslog = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v13, "[SUSUISoftwareUpdateAutomaticUpdateController(NeRD) getNeRDDisplayInfo]");
      _os_log_error_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_ERROR, "%s: parentController is not 'SUSUISoftwareUpdateController'", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v3 = MEMORY[0x277D82BE0](location[0]);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v3;
}

- (void)displayNeRDAlertToUser
{
  v9 = self;
  v8[1] = a2;
  v2 = MEMORY[0x277D75110];
  v3 = [(SUSUISoftwareUpdateAutomaticUpdateController *)self getNeRDDisplayInfo];
  v8[0] = [v2 alertControllerWithTitle:@"RecoveryOS profile detected\n Current info:" message:? preferredStyle:?];
  MEMORY[0x277D82BD8](v3);
  v4 = MEMORY[0x277D750F8];
  v5[1] = MEMORY[0x277D85DD0];
  v5[2] = 3221225472;
  v5[3] = __76__SUSUISoftwareUpdateAutomaticUpdateController_NeRD__displayNeRDAlertToUser__block_invoke;
  v5[4] = &unk_279CB9068;
  v6 = MEMORY[0x277D82BE0](v9);
  v7 = [v4 actionWithTitle:@"Update Now" style:0 handler:?];
  v5[0] = [MEMORY[0x277D750F8] actionWithTitle:@"Close" style:1 handler:&__block_literal_global_1];
  [v8[0] addAction:v5[0]];
  [v8[0] addAction:v7];
  [(SUSUISoftwareUpdateAutomaticUpdateController *)v9 presentViewController:v8[0] animated:1 completion:?];
  objc_storeStrong(v5, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v8, 0);
}

void __76__SUSUISoftwareUpdateAutomaticUpdateController_NeRD__displayNeRDAlertToUser__block_invoke(id *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = _SUSUILoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v10, "[SUSUISoftwareUpdateAutomaticUpdateController(NeRD) displayNeRDAlertToUser]_block_invoke");
    _os_log_impl(&dword_26AC94000, v7[0], v6, "%s: RecoveryOS updated triggered by user.", v10, 0xCu);
  }

  objc_storeStrong(v7, 0);
  v5 = [a1[4] parentController];
  if (v5)
  {
    v2 = [v5 manager];
    [v2 rvTriggerNeRDUpdate];
    MEMORY[0x277D82BD8](v2);
  }

  else
  {
    oslog = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v9, "[SUSUISoftwareUpdateAutomaticUpdateController(NeRD) displayNeRDAlertToUser]_block_invoke");
      _os_log_error_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_ERROR, "%s: parentController is not 'SUSUISoftwareUpdateController'", v9, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __76__SUSUISoftwareUpdateAutomaticUpdateController_NeRD__displayNeRDAlertToUser__block_invoke_304(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _SUSUILoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_32(v5, "[SUSUISoftwareUpdateAutomaticUpdateController(NeRD) displayNeRDAlertToUser]_block_invoke");
    _os_log_error_impl(&dword_26AC94000, oslog[0], OS_LOG_TYPE_ERROR, "%s: RecoveryOS alert dismissed without action", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (SUSUISoftwareUpdateAutomaticUpdateController)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = SUSUISoftwareUpdateAutomaticUpdateController;
  v6 = [(SUSUISoftwareUpdateAutomaticUpdateController *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    v2 = objc_alloc_init(MEMORY[0x277D648B8]);
    manager = v9->_manager;
    v9->_manager = v2;
    MEMORY[0x277D82BD8](manager);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)dealloc
{
  v7 = self;
  v6 = a2;
  v4 = [(SUSUISoftwareUpdateAutomaticUpdateController *)self updateController];
  v3 = [v4 manager];
  v2 = [v3 preferences];
  [v2 removeObserver:v7];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v5.receiver = v7;
  v5.super_class = SUSUISoftwareUpdateAutomaticUpdateController;
  [(SUSUISoftwareUpdateAutomaticUpdateController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v10 = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = SUSUISoftwareUpdateAutomaticUpdateController;
  [(SUSUISoftwareUpdateAutomaticUpdateController *)&v8 viewDidLoad];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"AUTOMATIC_UPDATES" value:&stru_287B79370 table:@"Software Update"];
  v2 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v10 navigationItem];
  [v2 setTitle:v3];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v7 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v10 updateController];
  v6 = [v7 manager];
  v5 = [v6 preferences];
  [v5 addObserver:v10];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
}

- (void)viewDidAppear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = SUSUISoftwareUpdateAutomaticUpdateController;
  [(SUSUISoftwareUpdateAutomaticUpdateController *)&v6 viewDidAppear:a3];
  v3 = v9;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"AUTOMATIC_UPDATES" value:&stru_287B79370 table:@"Software Update"];
  [PSListController addNavigationEventForSystemSettings:v3 andRelativeLinkToSoftwareUpdate:"addNavigationEventForSystemSettings:andRelativeLinkToSoftwareUpdate:"];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
}

- (id)specifiers
{
  v14[5] = *MEMORY[0x277D85DE8];
  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    v13 = MEMORY[0x277D82BE0](*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]));
  }

  else
  {
    v10 = [(SUSUISoftwareUpdateAutomaticUpdateController *)self automaticallyInstallGroup];
    v14[0] = v10;
    v9 = [(SUSUISoftwareUpdateAutomaticUpdateController *)self automaticallyInstallSwitch];
    v14[1] = v9;
    v8 = [(SUSUISoftwareUpdateAutomaticUpdateController *)self automaticallyDownloadSecurityResponseAndSystemFilesSwitch];
    v14[2] = v8;
    v7 = [(SUSUISoftwareUpdateAutomaticUpdateController *)self automaticallyDownloadGroup];
    v14[3] = v7;
    v6 = [(SUSUISoftwareUpdateAutomaticUpdateController *)self automaticallyDownloadUpdatesSwitch];
    v14[4] = v6;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:5];
    v11 = MEMORY[0x277D3FC48];
    v3 = (self + *MEMORY[0x277D3FC48]);
    v4 = *v3;
    *v3 = v2;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    v13 = MEMORY[0x277D82BE0](*(&self->super.super.super.super.super.isa + *v11));
  }

  *MEMORY[0x277D85DE8];

  return v13;
}

- (id)automaticallyInstallGroup
{
  v16[2] = self;
  v16[1] = a2;
  v5 = MEMORY[0x277D3FAD8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"AUTOMATIC_UPDATES_AUTO_INSTALL_HEADER" value:? table:?];
  v16[0] = [v5 groupSpecifierWithName:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v14 = MGGetBoolAnswer();
  if (v14)
  {
    v2 = @"WLAN";
  }

  else
  {
    v2 = @"WIFI";
  }

  v15 = MEMORY[0x277D82BE0](v2);
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"AUTOMATIC_UPDATES_AUTO_INSTALL_EXPLANATION_%@", v15];
  v8 = v16[0];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:v13];
  v9 = [v11 localizedStringForKey:? value:? table:?];
  v3 = *MEMORY[0x277D3FF88];
  [v8 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  [v16[0] setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  v12 = MEMORY[0x277D82BE0](v16[0]);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);

  return v12;
}

- (id)automaticallyInstallSwitch
{
  v21 = self;
  location[1] = a2;
  location[0] = [(SUSUISoftwareUpdateAutomaticUpdateController *)self parentController];
  v18 = [location[0] manager];
  if ([v18 isTargetedUpdateScheduledForAutoInstall])
  {
    v17 = sel_setArmedAutomaticallyInstallToggledWithValue_forSpecifier_;
  }

  else
  {
    v17 = sel_setNonArmedAutomaticallyInstallToggledWithValue_forSpecifier_;
  }

  v6 = v17;
  MEMORY[0x277D82BD8](v18);
  v19 = v17;
  v8 = MEMORY[0x277D3FAD8];
  v7 = MEMORY[0x277CCA8D8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"AUTOMATIC_INSTALL_TOGGLE_TEXT"];
  v10 = [v12 localizedStringForKey:? value:? table:?];
  v9 = [v8 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
  [(SUSUISoftwareUpdateAutomaticUpdateController *)v21 setAutomaticallyInstallSwitchSpecifier:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v13 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v21 automaticallyInstallSwitchSpecifier];
  [(PSSpecifier *)v13 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  MEMORY[0x277D82BD8](v13);
  v14 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v21 automaticallyInstallSwitchSpecifier];
  [(PSSpecifier *)v14 setIdentifier:@"AUTOMATIC_INSTALL_SWITCH_SPECIFIER"];
  MEMORY[0x277D82BD8](v14);
  v15 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v21 manager];
  v16 = [(SUManagerClient *)v15 shouldDisableAutoInstallIOSUpdatesToggle];
  MEMORY[0x277D82BD8](v15);
  if (v16)
  {
    v5 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v21 automaticallyInstallSwitchSpecifier];
    [(PSSpecifier *)v5 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    MEMORY[0x277D82BD8](v5);
  }

  v4 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v21 automaticallyInstallSwitchSpecifier];
  objc_storeStrong(location, 0);
  v2 = v4;

  return v2;
}

- (id)automaticallyDownloadGroup
{
  v12[2] = self;
  v12[1] = a2;
  v4 = MEMORY[0x277D3FAD8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v6 localizedStringForKey:@"AUTOMATIC_UPDATES_AUTO_DOWNLOAD_HEADER" value:? table:?];
  v12[0] = [v4 groupSpecifierWithName:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v7 = v12[0];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"AUTOMATIC_UPDATES_AUTO_DOWNLOAD_EXPLANATION"];
  v8 = [v10 localizedStringForKey:? value:? table:?];
  v2 = *MEMORY[0x277D3FF88];
  [v7 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  [v12[0] setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  v11 = MEMORY[0x277D82BE0](v12[0]);
  objc_storeStrong(v12, 0);

  return v11;
}

- (id)automaticallyDownloadUpdatesSwitch
{
  v15 = self;
  v14 = a2;
  v5 = MEMORY[0x277D3FAD8];
  v4 = MEMORY[0x277CCA8D8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"AUTOMATIC_INSTALL_TOGGLE_TEXT"];
  v7 = [v9 localizedStringForKey:? value:? table:?];
  v6 = [v5 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
  [(SUSUISoftwareUpdateAutomaticUpdateController *)v15 setAutomaticallyDownloadUpdatesSwitchSpecifier:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v10 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v15 automaticallyDownloadUpdatesSwitchSpecifier];
  [(PSSpecifier *)v10 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  MEMORY[0x277D82BD8](v10);
  v11 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v15 automaticallyDownloadUpdatesSwitchSpecifier];
  [(PSSpecifier *)v11 setIdentifier:@"AUTOMATIC_DOWNLOAD_SWITCH_SPECIFIER"];
  MEMORY[0x277D82BD8](v11);
  v12 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v15 manager];
  v13 = [(SUManagerClient *)v12 shouldDisableAutoDownloadIOSUpdatesToggle];
  MEMORY[0x277D82BD8](v12);
  if (v13)
  {
    v3 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v15 automaticallyDownloadUpdatesSwitchSpecifier];
    [(PSSpecifier *)v3 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    MEMORY[0x277D82BD8](v3);
  }

  return [(SUSUISoftwareUpdateAutomaticUpdateController *)v15 automaticallyDownloadUpdatesSwitchSpecifier];
}

- (id)automaticallyDownloadSecurityResponseAndSystemFilesSwitch
{
  v14 = self;
  v13 = a2;
  v5 = MEMORY[0x277D3FAD8];
  v4 = MEMORY[0x277CCA8D8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v8 localizedStringForKey:@"AUTOMATIC_UPDATES_DOWNLOAD_TOGGLE_SECURITY_RESPONSE_AND_SYSTEM_FILES" value:&stru_287B79370 table:@"Software Update"];
  v6 = [v5 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
  [(SUSUISoftwareUpdateAutomaticUpdateController *)v14 setSecurityResponseSwitchSpecifier:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v14 securityResponseSwitchSpecifier];
  [(PSSpecifier *)v9 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  MEMORY[0x277D82BD8](v9);
  v10 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v14 securityResponseSwitchSpecifier];
  [(PSSpecifier *)v10 setIdentifier:@"AUTOMATIC_INSTALL_SYSTEM_DATA_FILES_SWITCH_SPECIFIER"];
  MEMORY[0x277D82BD8](v10);
  v11 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v14 manager];
  v12 = [(SUManagerClient *)v11 shouldDisableAutoInstallRSRToggle];
  MEMORY[0x277D82BD8](v11);
  if (v12)
  {
    v3 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v14 securityResponseSwitchSpecifier];
    [(PSSpecifier *)v3 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    MEMORY[0x277D82BD8](v3);
  }

  return [(SUSUISoftwareUpdateAutomaticUpdateController *)v14 securityResponseSwitchSpecifier];
}

- (id)automaticUpdateStatus
{
  v3 = [(SUSUISoftwareUpdateAutomaticUpdateController *)self updateController];
  v4 = [v3 automaticUpdateStatus];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)automaticDownloadEnabled
{
  v3 = [(SUSUISoftwareUpdateAutomaticUpdateController *)self updateController];
  v4 = [v3 automaticDownloadStatus];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)automaticDownloadStatus
{
  v3 = [(SUSUISoftwareUpdateAutomaticUpdateController *)self updateController];
  v4 = [v3 automaticDownloadStatus];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)previousUserSpecifiedAutomaticUpdateStatus
{
  v3 = [(SUSUISoftwareUpdateAutomaticUpdateController *)self updateController];
  v4 = [v3 previousUserSpecifiedAutomaticUpdateStatus];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)securityResponseStatus
{
  v3 = [(SUSUISoftwareUpdateAutomaticUpdateController *)self updateController];
  v4 = [v3 securityResponseStatus];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)previousUserSpecifiedSecurityResponseStatus
{
  v3 = [(SUSUISoftwareUpdateAutomaticUpdateController *)self updateController];
  v4 = [v3 previousUserSpecifiedSecurityResponseStatus];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (void)setNonArmedAutomaticallyInstallToggledWithValue:(id)a3 forSpecifier:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v4 = objc_alloc(MEMORY[0x277D64868]);
  v14 = [v4 initWithEventName:*MEMORY[0x277D64958]];
  v12 = *MEMORY[0x277D64960];
  if ([location[0] BOOLValue] == 1)
  {
    v10 = *MEMORY[0x277D649B0];
  }

  else
  {
    v10 = *MEMORY[0x277D649A8];
  }

  [v14 setEventPayloadEntry:v12 stringValue:v10];
  [(SUManagerClient *)v17->_manager submitSUAnalyticsEvent:v14];
  if ([location[0] BOOLValue])
  {
    v5 = objc_alloc(MEMORY[0x277D64868]);
    v13 = [v5 initWithEventName:*MEMORY[0x277D64958]];
    [v13 setEventPayloadEntry:*MEMORY[0x277D64960] stringValue:*MEMORY[0x277D64970]];
    [(SUManagerClient *)v17->_manager submitSUAnalyticsEvent:v13];
    v9 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v17 updateController];
    v7 = location[0];
    v8 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v17 automaticallyDownloadUpdatesSwitchSpecifier];
    [v9 setAutomaticDownloadFromUI:v7 forSpecifier:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    [(SUManagerClient *)v17->_manager autoScanAndDownloadIfAvailable:?];
    [(SUSUISoftwareUpdateAutomaticUpdateController *)v17 setSecurityResponseToggleState:location[0] toggleCellEnabled:location[0] userSpecified:1 specifier:v15];
    objc_storeStrong(&v13, 0);
  }

  [(SUSUISoftwareUpdateAutomaticUpdateController *)v17 setAutomaticallyInstallUpdatesToggledWithValue:location[0] forSpecifier:v15, &v15];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setArmedAutomaticallyInstallToggledWithValue:(id)a3 forSpecifier:(id)a4
{
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = 0;
  objc_storeStrong(&v45, a4);
  if ([location[0] BOOLValue] == 1)
  {
    v18 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v47 updateController];
    [v18 setAutomaticUpdatesFromUI:location[0] forSpecifier:v45];
    MEMORY[0x277D82BD8](v18);
    v44 = 1;
  }

  else
  {
    v4 = MEMORY[0x277D75110];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v8 localizedStringForKey:@"AUTOMATIC_UPDATES_WITH_AUTOINSTALL_SHEET_TITLE" value:? table:?];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"AUTOMATIC_UPDATES_WITH_AUTOINSTALL_SHEET_DESCRIPTION" value:&stru_287B79370 table:@"Software Update"];
    v43 = [v4 alertControllerWithTitle:v7 message:? preferredStyle:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    v9 = MEMORY[0x277D750F8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v11 localizedStringForKey:@"AUTOMATIC_UPDATES_WITH_AUTOINSTALL_SHEET_AUTOUPDATE_OFF" value:&stru_287B79370 table:@"Software Update"];
    v34 = MEMORY[0x277D85DD0];
    v35 = -1073741824;
    v36 = 0;
    v37 = __106__SUSUISoftwareUpdateAutomaticUpdateController_setArmedAutomaticallyInstallToggledWithValue_forSpecifier___block_invoke;
    v38 = &unk_279CC07F0;
    v39 = MEMORY[0x277D82BE0](v47);
    v40 = MEMORY[0x277D82BE0](location[0]);
    v41 = MEMORY[0x277D82BE0](v45);
    v42 = [v9 actionWithTitle:v10 style:2 handler:&v34];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    v12 = MEMORY[0x277D750F8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v14 localizedStringForKey:@"AUTOMATIC_UPDATES_WITH_AUTOINSTALL_SHEET_AUTOINSTALL_OFF" value:&stru_287B79370 table:@"Software Update"];
    v27 = MEMORY[0x277D85DD0];
    v28 = -1073741824;
    v29 = 0;
    v30 = __106__SUSUISoftwareUpdateAutomaticUpdateController_setArmedAutomaticallyInstallToggledWithValue_forSpecifier___block_invoke_2;
    v31 = &unk_279CB9068;
    v32 = MEMORY[0x277D82BE0](v47);
    v33 = [v12 actionWithTitle:v13 style:0 handler:&v27];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    v15 = MEMORY[0x277D750F8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v17 localizedStringForKey:@"AUTOMATIC_UPDATES_WITH_AUTOINSTALL_SHEET_CANCEL" value:&stru_287B79370 table:@"Software Update"];
    v20 = MEMORY[0x277D85DD0];
    v21 = -1073741824;
    v22 = 0;
    v23 = __106__SUSUISoftwareUpdateAutomaticUpdateController_setArmedAutomaticallyInstallToggledWithValue_forSpecifier___block_invoke_3;
    v24 = &unk_279CB9068;
    v25 = MEMORY[0x277D82BE0](v47);
    v26 = [v15 actionWithTitle:v16 style:1 handler:&v20];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    [v43 addAction:v33];
    [v43 addAction:v42];
    [v43 addAction:v26];
    [(SUSUISoftwareUpdateAutomaticUpdateController *)v47 presentViewController:v43 animated:1 completion:?];
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v43, 0);
    v44 = 0;
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
}

void __106__SUSUISoftwareUpdateAutomaticUpdateController_setArmedAutomaticallyInstallToggledWithValue_forSpecifier___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6[1] = a1;
  v2 = objc_alloc(MEMORY[0x277D64868]);
  v6[0] = [v2 initWithEventName:*MEMORY[0x277D64958]];
  [v6[0] setEventPayloadEntry:*MEMORY[0x277D64960] stringValue:*MEMORY[0x277D649B8]];
  [*(*(a1 + 32) + 1480) submitSUAnalyticsEvent:v6[0]];
  v3 = [*(a1 + 32) updateController];
  [v3 setAutomaticUpdatesFromUI:*(a1 + 40) forSpecifier:*(a1 + 48)];
  MEMORY[0x277D82BD8](v3);
  v5 = [*(a1 + 32) updateController];
  [v5 unscheduleTargetedUpdateAutomaticInstallation];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);
}

void __106__SUSUISoftwareUpdateAutomaticUpdateController_setArmedAutomaticallyInstallToggledWithValue_forSpecifier___block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v2 = objc_alloc(MEMORY[0x277D64868]);
  v7[0] = [v2 initWithEventName:*MEMORY[0x277D64958]];
  [v7[0] setEventPayloadEntry:*MEMORY[0x277D64960] stringValue:*MEMORY[0x277D64998]];
  [*(a1[4] + 185) submitSUAnalyticsEvent:v7[0]];
  v3 = [a1[4] updateController];
  [v3 unscheduleTargetedUpdateAutomaticInstallation];
  MEMORY[0x277D82BD8](v3);
  v5 = a1[4];
  v6 = [v5 automaticallyInstallSwitchSpecifier];
  [v5 reloadSpecifier:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
}

void __106__SUSUISoftwareUpdateAutomaticUpdateController_setArmedAutomaticallyInstallToggledWithValue_forSpecifier___block_invoke_3(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6[1] = a1;
  v2 = objc_alloc(MEMORY[0x277D64868]);
  v6[0] = [v2 initWithEventName:*MEMORY[0x277D64958]];
  [v6[0] setEventPayloadEntry:*MEMORY[0x277D64960] stringValue:*MEMORY[0x277D649A0]];
  [*(a1[4] + 1480) submitSUAnalyticsEvent:v6[0]];
  v4 = a1[4];
  v5 = [v4 automaticallyInstallSwitchSpecifier];
  [v4 reloadSpecifier:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setAutomaticallyInstallUpdatesToggledWithValue:(id)a3 forSpecifier:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = objc_alloc(MEMORY[0x277D64868]);
  v9 = [v4 initWithEventName:*MEMORY[0x277D64958]];
  v8 = *MEMORY[0x277D64960];
  if ([location[0] BOOLValue] == 1)
  {
    v6 = *MEMORY[0x277D649B0];
  }

  else
  {
    v6 = *MEMORY[0x277D649A8];
  }

  [v9 setEventPayloadEntry:v8 stringValue:v6];
  [(SUManagerClient *)v12->_manager submitSUAnalyticsEvent:v9];
  v5 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v12 updateController];
  [v5 setAutomaticUpdatesFromUI:location[0] forSpecifier:v10];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)setAutomaticallyDownloadUpdatesToggledWithValue:(id)a3 forSpecifier:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v11 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v19 updateController];
  [v11 setAutomaticDownloadFromUI:location[0] forSpecifier:v17];
  MEMORY[0x277D82BD8](v11);
  v4 = objc_alloc(MEMORY[0x277D64868]);
  v16 = [v4 initWithEventName:*MEMORY[0x277D64958]];
  v12 = *MEMORY[0x277D64960];
  if ([location[0] BOOLValue] == 1)
  {
    v9 = *MEMORY[0x277D64970];
  }

  else
  {
    v9 = *MEMORY[0x277D64968];
  }

  [v16 setEventPayloadEntry:v12 stringValue:v9];
  [(SUManagerClient *)v19->_manager submitSUAnalyticsEvent:v16];
  if ([location[0] BOOLValue])
  {
    [(SUManagerClient *)v19->_manager autoScanAndDownloadIfAvailable:0];
  }

  else
  {
    v8 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v19 updateController];
    [v8 unscheduleTargetedUpdateAutomaticInstallation];
    MEMORY[0x277D82BD8](v8);
  }

  v6 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v19 manager];
  v7 = [(SUManagerClient *)v6 shouldDisableAutoInstallIOSUpdatesToggle];
  MEMORY[0x277D82BD8](v6);
  if (!v7)
  {
    v13 = 0;
    if ([location[0] BOOLValue])
    {
      v14 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v19 previousUserSpecifiedAutomaticUpdateStatus];
      v13 = 1;
      v5 = MEMORY[0x277D82BE0](v14);
    }

    else
    {
      v5 = MEMORY[0x277D82BE0](MEMORY[0x277CBEC28]);
    }

    v15 = v5;
    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    [(SUSUISoftwareUpdateAutomaticUpdateController *)v19 setSecurityResponseToggleState:v15 toggleCellEnabled:location[0] userSpecified:0 specifier:v17];
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)setAutomaticallyInstallSecurityResponsesAndSystemDataToggledWithValue:(id)a3 forSpecifier:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v4 = objc_alloc(MEMORY[0x277D64868]);
  v10 = [v4 initWithEventName:*MEMORY[0x277D64958]];
  v9 = *MEMORY[0x277D64960];
  if ([location[0] BOOLValue] == 1)
  {
    v7 = *MEMORY[0x277D64990];
  }

  else
  {
    v7 = *MEMORY[0x277D64988];
  }

  [v10 setEventPayloadEntry:v9 stringValue:v7];
  [(SUManagerClient *)v13->_manager submitSUAnalyticsEvent:v10];
  v5 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v13 updateController];
  [v5 setAutomaticInstallSystemDataFilesFromUI:location[0] forSpecifier:v11];
  MEMORY[0x277D82BD8](v5);
  v6 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v13 updateController];
  [v6 setSecurityResponseFromUI:location[0] forSpecifier:v11];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)setSecurityResponseToggleState:(id)a3 toggleCellEnabled:(id)a4 userSpecified:(BOOL)a5 specifier:(id)a6
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = a5;
  v14 = 0;
  objc_storeStrong(&v14, a6);
  v9 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v18 updateController];
  [v9 setAutomaticUpdatesFromUI:location[0] userSpecified:v15 forSpecifier:v14];
  MEMORY[0x277D82BD8](v9);
  v10 = v18;
  v11 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v18 automaticallyDownloadUpdatesSwitchSpecifier];
  [SUSUISoftwareUpdateAutomaticUpdateController reloadSpecifier:v10 animated:"reloadSpecifier:animated:"];
  MEMORY[0x277D82BD8](v11);
  v12 = v18;
  v13 = [(SUSUISoftwareUpdateAutomaticUpdateController *)v18 automaticallyInstallSwitchSpecifier];
  [SUSUISoftwareUpdateAutomaticUpdateController reloadSpecifier:v12 animated:"reloadSpecifier:animated:"];
  MEMORY[0x277D82BD8](v13);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)preferences:(id)a3 didChangePreference:(id)a4 toValue:(id)a5
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v8;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __88__SUSUISoftwareUpdateAutomaticUpdateController_preferences_didChangePreference_toValue___block_invoke;
  v14 = &unk_279CB93E8;
  v15 = MEMORY[0x277D82BE0](v19);
  dispatch_async(queue, &v10);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

uint64_t __88__SUSUISoftwareUpdateAutomaticUpdateController_preferences_didChangePreference_toValue___block_invoke(NSObject *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _SUSUILoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v4, "[SUSUISoftwareUpdateAutomaticUpdateController preferences:didChangePreference:toValue:]_block_invoke");
    _os_log_impl(&dword_26AC94000, oslog[0], OS_LOG_TYPE_DEFAULT, "%s: SUPreferences have been changed. Reloading the screen.", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  result = [(objc_class *)a1[4].isa reloadSpecifiers];
  *MEMORY[0x277D85DE8];
  return result;
}

@end