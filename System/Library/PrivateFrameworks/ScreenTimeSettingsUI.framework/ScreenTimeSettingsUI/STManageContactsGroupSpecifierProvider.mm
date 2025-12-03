@interface STManageContactsGroupSpecifierProvider
- (STManageContactsGroupSpecifierProvider)init;
- (void)_communicationLimitsDidChange:(id)change;
- (void)_showManageContactsRequestAlert:(id)alert;
- (void)_updateContactManagementState:(int64_t)state;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCoordinator:(id)coordinator;
@end

@implementation STManageContactsGroupSpecifierProvider

- (STManageContactsGroupSpecifierProvider)init
{
  v8.receiver = self;
  v8.super_class = STManageContactsGroupSpecifierProvider;
  v2 = [(STGroupSpecifierProvider *)&v8 init];
  v3 = MEMORY[0x277D3FAD8];
  v4 = +[STScreenTimeSettingsUIBundle bundle];
  v5 = [v4 localizedStringForKey:@"ManageContactsGroupSpecifierName" value:&stru_28766E5A8 table:0];
  v6 = [v3 groupSpecifierWithName:v5];
  [(STGroupSpecifierProvider *)v2 setGroupSpecifier:v6];

  return v2;
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  [coordinator removeObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits"];
  v6.receiver = self;
  v6.super_class = STManageContactsGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:coordinatorCopy];
  [coordinatorCopy addObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits" options:5 context:"KVOContextManageContactsGroupSpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == "KVOContextManageContactsGroupSpecifierProvider")
  {
    pathCopy = path;
    [(STRootGroupSpecifierProvider *)self coordinator];

    v13 = [pathCopy isEqualToString:@"contentPrivacyCoordinator.viewModel.communicationLimits"];
    if (v13)
    {
      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null = [MEMORY[0x277CBEB68] null];

      if (v14 == null)
      {

        v14 = 0;
      }

      [(STManageContactsGroupSpecifierProvider *)self _communicationLimitsDidChange:v14];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = STManageContactsGroupSpecifierProvider;
    pathCopy2 = path;
    [(STManageContactsGroupSpecifierProvider *)&v16 observeValueForKeyPath:pathCopy2 ofObject:object change:changeCopy context:context];
  }
}

- (void)_communicationLimitsDidChange:(id)change
{
  changeCopy = change;
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  viewModel = [coordinator viewModel];
  v18 = [viewModel me];

  contactManagementState = [changeCopy contactManagementState];
  if (contactManagementState == 1 && [v18 isChild])
  {
    isRemoteUser = [v18 isRemoteUser];
  }

  else
  {
    isRemoteUser = 1;
  }

  [(STGroupSpecifierProvider *)self setIsHidden:isRemoteUser];
  mutableSpecifiers = [(STGroupSpecifierProvider *)self mutableSpecifiers];
  if (![(STGroupSpecifierProvider *)self isHidden])
  {
    manageContactsRequestSpecifier = [(STManageContactsGroupSpecifierProvider *)self manageContactsRequestSpecifier];
    v11 = [mutableSpecifiers containsObject:manageContactsRequestSpecifier];

    if ((v11 & 1) == 0)
    {
      v12 = +[STScreenTimeSettingsUIBundle bundle];
      v13 = MEMORY[0x277D3FAD8];
      v14 = [v12 localizedStringForKey:@"ManageContactsRequestSpecifierName" value:&stru_28766E5A8 table:0];
      v15 = [v13 preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:2 edit:0];

      v16 = MEMORY[0x277CBEC38];
      [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
      [v15 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
      v17 = [v12 localizedStringForKey:@"CommunicationLimitsSpecifierName" value:&stru_28766E5A8 table:0];
      [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x277D40160]];

      [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x277D40020]];
      [v15 setObject:@"com.apple.graphic-icon.communication-limits" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
      [v15 setControllerLoadAction:sel__showManageContactsRequestAlert_];
      [(STManageContactsGroupSpecifierProvider *)self setManageContactsRequestSpecifier:v15];
      [mutableSpecifiers addObject:v15];
    }
  }
}

- (void)_showManageContactsRequestAlert:(id)alert
{
  v4 = +[STScreenTimeSettingsUIBundle bundle];
  v5 = [v4 localizedStringForKey:@"ManageContactsRequestAlertMessage" value:&stru_28766E5A8 table:0];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  v8 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v5 preferredStyle:sf_isiPad];
  v9 = [v4 localizedStringForKey:@"ManageContactsRequestApprove" value:&stru_28766E5A8 table:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__STManageContactsGroupSpecifierProvider__showManageContactsRequestAlert___block_invoke;
  v16[3] = &unk_279B7D160;
  v16[4] = self;
  v10 = [MEMORY[0x277D750F8] actionWithTitle:v9 style:0 handler:v16];
  [v8 addAction:v10];

  v11 = [v4 localizedStringForKey:@"ManageContactsRequestDontApprove" value:&stru_28766E5A8 table:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__STManageContactsGroupSpecifierProvider__showManageContactsRequestAlert___block_invoke_2;
  v15[3] = &unk_279B7D160;
  v15[4] = self;
  v12 = [MEMORY[0x277D750F8] actionWithTitle:v11 style:2 handler:v15];
  [v8 addAction:v12];

  v13 = [v4 localizedStringForKey:@"ConfirmationButtonCancel" value:&stru_28766E5A8 table:0];
  v14 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:1 handler:0];
  [v8 addAction:v14];

  [(STGroupSpecifierProvider *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_updateContactManagementState:(int64_t)state
{
  coordinator = [(STRootGroupSpecifierProvider *)self coordinator];
  contentPrivacyCoordinator = [coordinator contentPrivacyCoordinator];

  viewModel = [contentPrivacyCoordinator viewModel];
  communicationLimits = [viewModel communicationLimits];

  [communicationLimits setContactManagementState:state];
  [contentPrivacyCoordinator saveCommunicationLimits:communicationLimits completionHandler:0];
}

@end