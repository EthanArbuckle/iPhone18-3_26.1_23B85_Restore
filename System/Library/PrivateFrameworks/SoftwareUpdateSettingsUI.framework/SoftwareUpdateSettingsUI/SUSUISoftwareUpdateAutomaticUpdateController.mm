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
- (void)cmdZPressed:(id)pressed;
- (void)dealloc;
- (void)displayNeRDAlertToUser;
- (void)motionBegan:(int64_t)began withEvent:(id)event;
- (void)preferences:(id)preferences didChangePreference:(id)preference toValue:(id)value;
- (void)setArmedAutomaticallyInstallToggledWithValue:(id)value forSpecifier:(id)specifier;
- (void)setAutomaticallyDownloadUpdatesToggledWithValue:(id)value forSpecifier:(id)specifier;
- (void)setAutomaticallyInstallSecurityResponsesAndSystemDataToggledWithValue:(id)value forSpecifier:(id)specifier;
- (void)setAutomaticallyInstallUpdatesToggledWithValue:(id)value forSpecifier:(id)specifier;
- (void)setNonArmedAutomaticallyInstallToggledWithValue:(id)value forSpecifier:(id)specifier;
- (void)setSecurityResponseToggleState:(id)state toggleCellEnabled:(id)enabled userSpecified:(BOOL)specified specifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation SUSUISoftwareUpdateAutomaticUpdateController

- (void)cmdZPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  if ([(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy isAllowedToGetNeRDInfo])
  {
    [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy displayNeRDAlertToUser];
  }

  objc_storeStrong(location, 0);
}

- (void)motionBegan:(int64_t)began withEvent:(id)event
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[2] = a2;
  location[1] = began;
  location[0] = 0;
  objc_storeStrong(location, event);
  if (-[SUSUISoftwareUpdateAutomaticUpdateController isAllowedToGetNeRDInfo](selfCopy, "isAllowedToGetNeRDInfo") && [location[0] type] == 1)
  {
    oslog = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v7, "[SUSUISoftwareUpdateAutomaticUpdateController(NeRD) motionBegan:withEvent:]");
      _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s: RecoveryOS info is about to be displayed.", v7, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy displayNeRDAlertToUser];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isAllowedToGetNeRDInfo
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7 = a2;
  mEMORY[0x277D64AE0] = [MEMORY[0x277D64AE0] sharedDefaults];
  isNeRDProfileStatusInstalled = [mEMORY[0x277D64AE0] isNeRDProfileStatusInstalled];
  MEMORY[0x277D82BD8](mEMORY[0x277D64AE0]);
  v6 = isNeRDProfileStatusInstalled;
  if (isNeRDProfileStatusInstalled)
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
  selfCopy = self;
  location[1] = a2;
  location[0] = MEMORY[0x277D82BE0](@"No info provided");
  parentController = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy parentController];
  if (parentController)
  {
    manager = [parentController manager];
    rvGetCurrentNeRDInfo = [manager rvGetCurrentNeRDInfo];
    MEMORY[0x277D82BD8](manager);
    if (rvGetCurrentNeRDInfo && [rvGetCurrentNeRDInfo count])
    {
      v8 = [rvGetCurrentNeRDInfo description];
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

    objc_storeStrong(&rvGetCurrentNeRDInfo, 0);
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
  objc_storeStrong(&parentController, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v3;
}

- (void)displayNeRDAlertToUser
{
  selfCopy = self;
  v8[1] = a2;
  v2 = MEMORY[0x277D75110];
  getNeRDDisplayInfo = [(SUSUISoftwareUpdateAutomaticUpdateController *)self getNeRDDisplayInfo];
  v8[0] = [v2 alertControllerWithTitle:@"RecoveryOS profile detected\n Current info:" message:? preferredStyle:?];
  MEMORY[0x277D82BD8](getNeRDDisplayInfo);
  v4 = MEMORY[0x277D750F8];
  v5[1] = MEMORY[0x277D85DD0];
  v5[2] = 3221225472;
  v5[3] = __76__SUSUISoftwareUpdateAutomaticUpdateController_NeRD__displayNeRDAlertToUser__block_invoke;
  v5[4] = &unk_279CB9068;
  v6 = MEMORY[0x277D82BE0](selfCopy);
  v7 = [v4 actionWithTitle:@"Update Now" style:0 handler:?];
  v5[0] = [MEMORY[0x277D750F8] actionWithTitle:@"Close" style:1 handler:&__block_literal_global_1];
  [v8[0] addAction:v5[0]];
  [v8[0] addAction:v7];
  [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy presentViewController:v8[0] animated:1 completion:?];
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
  selfCopy = self;
  v6 = a2;
  updateController = [(SUSUISoftwareUpdateAutomaticUpdateController *)self updateController];
  manager = [updateController manager];
  preferences = [manager preferences];
  [preferences removeObserver:selfCopy];
  MEMORY[0x277D82BD8](preferences);
  MEMORY[0x277D82BD8](manager);
  MEMORY[0x277D82BD8](updateController);
  v5.receiver = selfCopy;
  v5.super_class = SUSUISoftwareUpdateAutomaticUpdateController;
  [(SUSUISoftwareUpdateAutomaticUpdateController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = SUSUISoftwareUpdateAutomaticUpdateController;
  [(SUSUISoftwareUpdateAutomaticUpdateController *)&v8 viewDidLoad];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"AUTOMATIC_UPDATES" value:&stru_287B79370 table:@"Software Update"];
  navigationItem = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy navigationItem];
  [navigationItem setTitle:v3];
  MEMORY[0x277D82BD8](navigationItem);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  updateController = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy updateController];
  manager = [updateController manager];
  preferences = [manager preferences];
  [preferences addObserver:selfCopy];
  MEMORY[0x277D82BD8](preferences);
  MEMORY[0x277D82BD8](manager);
  MEMORY[0x277D82BD8](updateController);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v8 = a2;
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = SUSUISoftwareUpdateAutomaticUpdateController;
  [(SUSUISoftwareUpdateAutomaticUpdateController *)&v6 viewDidAppear:appear];
  v3 = selfCopy;
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
    automaticallyInstallGroup = [(SUSUISoftwareUpdateAutomaticUpdateController *)self automaticallyInstallGroup];
    v14[0] = automaticallyInstallGroup;
    automaticallyInstallSwitch = [(SUSUISoftwareUpdateAutomaticUpdateController *)self automaticallyInstallSwitch];
    v14[1] = automaticallyInstallSwitch;
    automaticallyDownloadSecurityResponseAndSystemFilesSwitch = [(SUSUISoftwareUpdateAutomaticUpdateController *)self automaticallyDownloadSecurityResponseAndSystemFilesSwitch];
    v14[2] = automaticallyDownloadSecurityResponseAndSystemFilesSwitch;
    automaticallyDownloadGroup = [(SUSUISoftwareUpdateAutomaticUpdateController *)self automaticallyDownloadGroup];
    v14[3] = automaticallyDownloadGroup;
    automaticallyDownloadUpdatesSwitch = [(SUSUISoftwareUpdateAutomaticUpdateController *)self automaticallyDownloadUpdatesSwitch];
    v14[4] = automaticallyDownloadUpdatesSwitch;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:5];
    v11 = MEMORY[0x277D3FC48];
    v3 = (self + *MEMORY[0x277D3FC48]);
    v4 = *v3;
    *v3 = v2;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](automaticallyDownloadUpdatesSwitch);
    MEMORY[0x277D82BD8](automaticallyDownloadGroup);
    MEMORY[0x277D82BD8](automaticallyDownloadSecurityResponseAndSystemFilesSwitch);
    MEMORY[0x277D82BD8](automaticallyInstallSwitch);
    MEMORY[0x277D82BD8](automaticallyInstallGroup);
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
  selfCopy = self;
  location[1] = a2;
  location[0] = [(SUSUISoftwareUpdateAutomaticUpdateController *)self parentController];
  manager = [location[0] manager];
  if ([manager isTargetedUpdateScheduledForAutoInstall])
  {
    v17 = sel_setArmedAutomaticallyInstallToggledWithValue_forSpecifier_;
  }

  else
  {
    v17 = sel_setNonArmedAutomaticallyInstallToggledWithValue_forSpecifier_;
  }

  v6 = v17;
  MEMORY[0x277D82BD8](manager);
  v19 = v17;
  v8 = MEMORY[0x277D3FAD8];
  v7 = MEMORY[0x277CCA8D8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"AUTOMATIC_INSTALL_TOGGLE_TEXT"];
  v10 = [v12 localizedStringForKey:? value:? table:?];
  v9 = [v8 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
  [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy setAutomaticallyInstallSwitchSpecifier:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  automaticallyInstallSwitchSpecifier = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy automaticallyInstallSwitchSpecifier];
  [(PSSpecifier *)automaticallyInstallSwitchSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  MEMORY[0x277D82BD8](automaticallyInstallSwitchSpecifier);
  automaticallyInstallSwitchSpecifier2 = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy automaticallyInstallSwitchSpecifier];
  [(PSSpecifier *)automaticallyInstallSwitchSpecifier2 setIdentifier:@"AUTOMATIC_INSTALL_SWITCH_SPECIFIER"];
  MEMORY[0x277D82BD8](automaticallyInstallSwitchSpecifier2);
  manager2 = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy manager];
  shouldDisableAutoInstallIOSUpdatesToggle = [(SUManagerClient *)manager2 shouldDisableAutoInstallIOSUpdatesToggle];
  MEMORY[0x277D82BD8](manager2);
  if (shouldDisableAutoInstallIOSUpdatesToggle)
  {
    automaticallyInstallSwitchSpecifier3 = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy automaticallyInstallSwitchSpecifier];
    [(PSSpecifier *)automaticallyInstallSwitchSpecifier3 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    MEMORY[0x277D82BD8](automaticallyInstallSwitchSpecifier3);
  }

  automaticallyInstallSwitchSpecifier4 = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy automaticallyInstallSwitchSpecifier];
  objc_storeStrong(location, 0);
  v2 = automaticallyInstallSwitchSpecifier4;

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
  selfCopy = self;
  v14 = a2;
  v5 = MEMORY[0x277D3FAD8];
  v4 = MEMORY[0x277CCA8D8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"AUTOMATIC_INSTALL_TOGGLE_TEXT"];
  v7 = [v9 localizedStringForKey:? value:? table:?];
  v6 = [v5 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
  [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy setAutomaticallyDownloadUpdatesSwitchSpecifier:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  automaticallyDownloadUpdatesSwitchSpecifier = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy automaticallyDownloadUpdatesSwitchSpecifier];
  [(PSSpecifier *)automaticallyDownloadUpdatesSwitchSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  MEMORY[0x277D82BD8](automaticallyDownloadUpdatesSwitchSpecifier);
  automaticallyDownloadUpdatesSwitchSpecifier2 = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy automaticallyDownloadUpdatesSwitchSpecifier];
  [(PSSpecifier *)automaticallyDownloadUpdatesSwitchSpecifier2 setIdentifier:@"AUTOMATIC_DOWNLOAD_SWITCH_SPECIFIER"];
  MEMORY[0x277D82BD8](automaticallyDownloadUpdatesSwitchSpecifier2);
  manager = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy manager];
  shouldDisableAutoDownloadIOSUpdatesToggle = [(SUManagerClient *)manager shouldDisableAutoDownloadIOSUpdatesToggle];
  MEMORY[0x277D82BD8](manager);
  if (shouldDisableAutoDownloadIOSUpdatesToggle)
  {
    automaticallyDownloadUpdatesSwitchSpecifier3 = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy automaticallyDownloadUpdatesSwitchSpecifier];
    [(PSSpecifier *)automaticallyDownloadUpdatesSwitchSpecifier3 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    MEMORY[0x277D82BD8](automaticallyDownloadUpdatesSwitchSpecifier3);
  }

  return [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy automaticallyDownloadUpdatesSwitchSpecifier];
}

- (id)automaticallyDownloadSecurityResponseAndSystemFilesSwitch
{
  selfCopy = self;
  v13 = a2;
  v5 = MEMORY[0x277D3FAD8];
  v4 = MEMORY[0x277CCA8D8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v8 localizedStringForKey:@"AUTOMATIC_UPDATES_DOWNLOAD_TOGGLE_SECURITY_RESPONSE_AND_SYSTEM_FILES" value:&stru_287B79370 table:@"Software Update"];
  v6 = [v5 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
  [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy setSecurityResponseSwitchSpecifier:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  securityResponseSwitchSpecifier = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy securityResponseSwitchSpecifier];
  [(PSSpecifier *)securityResponseSwitchSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  MEMORY[0x277D82BD8](securityResponseSwitchSpecifier);
  securityResponseSwitchSpecifier2 = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy securityResponseSwitchSpecifier];
  [(PSSpecifier *)securityResponseSwitchSpecifier2 setIdentifier:@"AUTOMATIC_INSTALL_SYSTEM_DATA_FILES_SWITCH_SPECIFIER"];
  MEMORY[0x277D82BD8](securityResponseSwitchSpecifier2);
  manager = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy manager];
  shouldDisableAutoInstallRSRToggle = [(SUManagerClient *)manager shouldDisableAutoInstallRSRToggle];
  MEMORY[0x277D82BD8](manager);
  if (shouldDisableAutoInstallRSRToggle)
  {
    securityResponseSwitchSpecifier3 = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy securityResponseSwitchSpecifier];
    [(PSSpecifier *)securityResponseSwitchSpecifier3 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    MEMORY[0x277D82BD8](securityResponseSwitchSpecifier3);
  }

  return [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy securityResponseSwitchSpecifier];
}

- (id)automaticUpdateStatus
{
  updateController = [(SUSUISoftwareUpdateAutomaticUpdateController *)self updateController];
  automaticUpdateStatus = [updateController automaticUpdateStatus];
  MEMORY[0x277D82BD8](updateController);

  return automaticUpdateStatus;
}

- (id)automaticDownloadEnabled
{
  updateController = [(SUSUISoftwareUpdateAutomaticUpdateController *)self updateController];
  automaticDownloadStatus = [updateController automaticDownloadStatus];
  MEMORY[0x277D82BD8](updateController);

  return automaticDownloadStatus;
}

- (id)automaticDownloadStatus
{
  updateController = [(SUSUISoftwareUpdateAutomaticUpdateController *)self updateController];
  automaticDownloadStatus = [updateController automaticDownloadStatus];
  MEMORY[0x277D82BD8](updateController);

  return automaticDownloadStatus;
}

- (id)previousUserSpecifiedAutomaticUpdateStatus
{
  updateController = [(SUSUISoftwareUpdateAutomaticUpdateController *)self updateController];
  previousUserSpecifiedAutomaticUpdateStatus = [updateController previousUserSpecifiedAutomaticUpdateStatus];
  MEMORY[0x277D82BD8](updateController);

  return previousUserSpecifiedAutomaticUpdateStatus;
}

- (id)securityResponseStatus
{
  updateController = [(SUSUISoftwareUpdateAutomaticUpdateController *)self updateController];
  securityResponseStatus = [updateController securityResponseStatus];
  MEMORY[0x277D82BD8](updateController);

  return securityResponseStatus;
}

- (id)previousUserSpecifiedSecurityResponseStatus
{
  updateController = [(SUSUISoftwareUpdateAutomaticUpdateController *)self updateController];
  previousUserSpecifiedSecurityResponseStatus = [updateController previousUserSpecifiedSecurityResponseStatus];
  MEMORY[0x277D82BD8](updateController);

  return previousUserSpecifiedSecurityResponseStatus;
}

- (void)setNonArmedAutomaticallyInstallToggledWithValue:(id)value forSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v15 = 0;
  objc_storeStrong(&v15, specifier);
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
  [(SUManagerClient *)selfCopy->_manager submitSUAnalyticsEvent:v14];
  if ([location[0] BOOLValue])
  {
    v5 = objc_alloc(MEMORY[0x277D64868]);
    v13 = [v5 initWithEventName:*MEMORY[0x277D64958]];
    [v13 setEventPayloadEntry:*MEMORY[0x277D64960] stringValue:*MEMORY[0x277D64970]];
    [(SUManagerClient *)selfCopy->_manager submitSUAnalyticsEvent:v13];
    updateController = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy updateController];
    v7 = location[0];
    automaticallyDownloadUpdatesSwitchSpecifier = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy automaticallyDownloadUpdatesSwitchSpecifier];
    [updateController setAutomaticDownloadFromUI:v7 forSpecifier:?];
    MEMORY[0x277D82BD8](automaticallyDownloadUpdatesSwitchSpecifier);
    MEMORY[0x277D82BD8](updateController);
    [(SUManagerClient *)selfCopy->_manager autoScanAndDownloadIfAvailable:?];
    [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy setSecurityResponseToggleState:location[0] toggleCellEnabled:location[0] userSpecified:1 specifier:v15];
    objc_storeStrong(&v13, 0);
  }

  [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy setAutomaticallyInstallUpdatesToggledWithValue:location[0] forSpecifier:v15, &v15];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setArmedAutomaticallyInstallToggledWithValue:(id)value forSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v45 = 0;
  objc_storeStrong(&v45, specifier);
  if ([location[0] BOOLValue] == 1)
  {
    updateController = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy updateController];
    [updateController setAutomaticUpdatesFromUI:location[0] forSpecifier:v45];
    MEMORY[0x277D82BD8](updateController);
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
    v39 = MEMORY[0x277D82BE0](selfCopy);
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
    v32 = MEMORY[0x277D82BE0](selfCopy);
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
    v25 = MEMORY[0x277D82BE0](selfCopy);
    v26 = [v15 actionWithTitle:v16 style:1 handler:&v20];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    [v43 addAction:v33];
    [v43 addAction:v42];
    [v43 addAction:v26];
    [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy presentViewController:v43 animated:1 completion:?];
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

- (void)setAutomaticallyInstallUpdatesToggledWithValue:(id)value forSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v10 = 0;
  objc_storeStrong(&v10, specifier);
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
  [(SUManagerClient *)selfCopy->_manager submitSUAnalyticsEvent:v9];
  updateController = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy updateController];
  [updateController setAutomaticUpdatesFromUI:location[0] forSpecifier:v10];
  MEMORY[0x277D82BD8](updateController);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)setAutomaticallyDownloadUpdatesToggledWithValue:(id)value forSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v17 = 0;
  objc_storeStrong(&v17, specifier);
  updateController = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy updateController];
  [updateController setAutomaticDownloadFromUI:location[0] forSpecifier:v17];
  MEMORY[0x277D82BD8](updateController);
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
  [(SUManagerClient *)selfCopy->_manager submitSUAnalyticsEvent:v16];
  if ([location[0] BOOLValue])
  {
    [(SUManagerClient *)selfCopy->_manager autoScanAndDownloadIfAvailable:0];
  }

  else
  {
    updateController2 = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy updateController];
    [updateController2 unscheduleTargetedUpdateAutomaticInstallation];
    MEMORY[0x277D82BD8](updateController2);
  }

  manager = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy manager];
  shouldDisableAutoInstallIOSUpdatesToggle = [(SUManagerClient *)manager shouldDisableAutoInstallIOSUpdatesToggle];
  MEMORY[0x277D82BD8](manager);
  if (!shouldDisableAutoInstallIOSUpdatesToggle)
  {
    v13 = 0;
    if ([location[0] BOOLValue])
    {
      previousUserSpecifiedAutomaticUpdateStatus = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy previousUserSpecifiedAutomaticUpdateStatus];
      v13 = 1;
      v5 = MEMORY[0x277D82BE0](previousUserSpecifiedAutomaticUpdateStatus);
    }

    else
    {
      v5 = MEMORY[0x277D82BE0](MEMORY[0x277CBEC28]);
    }

    v15 = v5;
    if (v13)
    {
      MEMORY[0x277D82BD8](previousUserSpecifiedAutomaticUpdateStatus);
    }

    [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy setSecurityResponseToggleState:v15 toggleCellEnabled:location[0] userSpecified:0 specifier:v17];
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)setAutomaticallyInstallSecurityResponsesAndSystemDataToggledWithValue:(id)value forSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v11 = 0;
  objc_storeStrong(&v11, specifier);
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
  [(SUManagerClient *)selfCopy->_manager submitSUAnalyticsEvent:v10];
  updateController = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy updateController];
  [updateController setAutomaticInstallSystemDataFilesFromUI:location[0] forSpecifier:v11];
  MEMORY[0x277D82BD8](updateController);
  updateController2 = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy updateController];
  [updateController2 setSecurityResponseFromUI:location[0] forSpecifier:v11];
  MEMORY[0x277D82BD8](updateController2);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)setSecurityResponseToggleState:(id)state toggleCellEnabled:(id)enabled userSpecified:(BOOL)specified specifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  v16 = 0;
  objc_storeStrong(&v16, enabled);
  specifiedCopy = specified;
  v14 = 0;
  objc_storeStrong(&v14, specifier);
  updateController = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy updateController];
  [updateController setAutomaticUpdatesFromUI:location[0] userSpecified:specifiedCopy forSpecifier:v14];
  MEMORY[0x277D82BD8](updateController);
  v10 = selfCopy;
  automaticallyDownloadUpdatesSwitchSpecifier = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy automaticallyDownloadUpdatesSwitchSpecifier];
  [SUSUISoftwareUpdateAutomaticUpdateController reloadSpecifier:v10 animated:"reloadSpecifier:animated:"];
  MEMORY[0x277D82BD8](automaticallyDownloadUpdatesSwitchSpecifier);
  v12 = selfCopy;
  automaticallyInstallSwitchSpecifier = [(SUSUISoftwareUpdateAutomaticUpdateController *)selfCopy automaticallyInstallSwitchSpecifier];
  [SUSUISoftwareUpdateAutomaticUpdateController reloadSpecifier:v12 animated:"reloadSpecifier:animated:"];
  MEMORY[0x277D82BD8](automaticallyInstallSwitchSpecifier);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)preferences:(id)preferences didChangePreference:(id)preference toValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  v17 = 0;
  objc_storeStrong(&v17, preference);
  v16 = 0;
  objc_storeStrong(&v16, value);
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v8;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __88__SUSUISoftwareUpdateAutomaticUpdateController_preferences_didChangePreference_toValue___block_invoke;
  v14 = &unk_279CB93E8;
  v15 = MEMORY[0x277D82BE0](selfCopy);
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