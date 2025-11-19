@interface STManageContactsGroupSpecifierProvider
- (STManageContactsGroupSpecifierProvider)init;
- (void)_communicationLimitsDidChange:(id)a3;
- (void)_showManageContactsRequestAlert:(id)a3;
- (void)_updateContactManagementState:(int64_t)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCoordinator:(id)a3;
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

- (void)setCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  [v5 removeObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits"];
  v6.receiver = self;
  v6.super_class = STManageContactsGroupSpecifierProvider;
  [(STRootGroupSpecifierProvider *)&v6 setCoordinator:v4];
  [v4 addObserver:self forKeyPath:@"contentPrivacyCoordinator.viewModel.communicationLimits" options:5 context:"KVOContextManageContactsGroupSpecifierProvider"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  if (a6 == "KVOContextManageContactsGroupSpecifierProvider")
  {
    v12 = a3;
    [(STRootGroupSpecifierProvider *)self coordinator];

    v13 = [v12 isEqualToString:@"contentPrivacyCoordinator.viewModel.communicationLimits"];
    if (v13)
    {
      v14 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v15 = [MEMORY[0x277CBEB68] null];

      if (v14 == v15)
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
    v11 = a3;
    [(STManageContactsGroupSpecifierProvider *)&v16 observeValueForKeyPath:v11 ofObject:a4 change:v10 context:a6];
  }
}

- (void)_communicationLimitsDidChange:(id)a3
{
  v4 = a3;
  v5 = [(STRootGroupSpecifierProvider *)self coordinator];
  v6 = [v5 viewModel];
  v18 = [v6 me];

  v7 = [v4 contactManagementState];
  if (v7 == 1 && [v18 isChild])
  {
    v8 = [v18 isRemoteUser];
  }

  else
  {
    v8 = 1;
  }

  [(STGroupSpecifierProvider *)self setIsHidden:v8];
  v9 = [(STGroupSpecifierProvider *)self mutableSpecifiers];
  if (![(STGroupSpecifierProvider *)self isHidden])
  {
    v10 = [(STManageContactsGroupSpecifierProvider *)self manageContactsRequestSpecifier];
    v11 = [v9 containsObject:v10];

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
      [v9 addObject:v15];
    }
  }
}

- (void)_showManageContactsRequestAlert:(id)a3
{
  v4 = +[STScreenTimeSettingsUIBundle bundle];
  v5 = [v4 localizedStringForKey:@"ManageContactsRequestAlertMessage" value:&stru_28766E5A8 table:0];
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 sf_isiPad];

  v8 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v5 preferredStyle:v7];
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

- (void)_updateContactManagementState:(int64_t)a3
{
  v4 = [(STRootGroupSpecifierProvider *)self coordinator];
  v7 = [v4 contentPrivacyCoordinator];

  v5 = [v7 viewModel];
  v6 = [v5 communicationLimits];

  [v6 setContactManagementState:a3];
  [v7 saveCommunicationLimits:v6 completionHandler:0];
}

@end