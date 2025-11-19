@interface PSGSoftwareVersionController
- (PSGSoftwareVersionController)init;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)osUpdateDetailCellSpecifier;
- (id)osUpdateDetailGroup;
- (id)osUpdateLearnMoreButton;
- (id)specifiers;
- (id)splatRollbackButton;
- (id)splatUpdateDetailCellSpecifier;
- (id)splatUpdateDetailGroup;
- (id)splatUpdateLearnMoreButton;
- (void)client:(id)a3 rollbackDidFail:(id)a4 withError:(id)a5;
- (void)client:(id)a3 rollbackDidFinish:(id)a4;
- (void)client:(id)a3 rollbackDidStart:(id)a4;
- (void)osLearnMoreTapped;
- (void)presentLearnMoreSheetForDocumentationData:(id)a3;
- (void)removeSecurityResponse;
- (void)setPreparingRollback:(BOOL)a3;
- (void)splatLearnMoreTapped;
- (void)viewDidLoad;
@end

@implementation PSGSoftwareVersionController

- (PSGSoftwareVersionController)init
{
  v7.receiver = self;
  v7.super_class = PSGSoftwareVersionController;
  v2 = [(PSGSoftwareVersionController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__PSGSoftwareVersionController_init__block_invoke;
    block[3] = &unk_278324EE0;
    v6 = v2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return v3;
}

void __36__PSGSoftwareVersionController_init__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) table];
  [v1 reloadData];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PSGSoftwareVersionController;
  [(PSGSoftwareVersionController *)&v5 viewDidLoad];
  v3 = PSG_LocalizedString(@"OS Version");
  [(PSGSoftwareVersionController *)self setTitle:v3];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PSGSoftwareVersionController_viewDidLoad__block_invoke;
  block[3] = &unk_278324EE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __43__PSGSoftwareVersionController_viewDidLoad__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) table];
  [v1 reloadData];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(PSGSoftwareVersionController *)self specifier];
    v6 = [v5 propertyForKey:@"SUManagerClient"];
    suClient = self->_suClient;
    self->_suClient = v6;

    [(SUManagerClient *)self->_suClient setDelegate:self];
    v8 = [MEMORY[0x277D64908] documentationDataForInstalledUpdateType:0 error:0];
    osDocumentationData = self->_osDocumentationData;
    self->_osDocumentationData = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = [(PSGSoftwareVersionController *)self osUpdateDetailGroup];
    [v10 addObject:v11];

    v12 = [(PSGSoftwareVersionController *)self osUpdateDetailCellSpecifier];
    [v10 addObject:v12];

    v13 = [(PSGSoftwareVersionController *)self osUpdateLearnMoreButton];
    if (v13)
    {
      [v10 addObject:v13];
    }

    if ([(SUManagerClient *)self->_suClient isSplatOnlyUpdateInstalled])
    {
      v14 = [MEMORY[0x277D64908] documentationDataForInstalledUpdateType:1 error:0];
      splatDocumentationData = self->_splatDocumentationData;
      self->_splatDocumentationData = v14;

      v16 = [(PSGSoftwareVersionController *)self splatUpdateDetailGroup];
      [v10 addObject:v16];

      v17 = [(PSGSoftwareVersionController *)self splatUpdateDetailCellSpecifier];
      [v10 addObject:v17];

      v18 = [(PSGSoftwareVersionController *)self splatUpdateLearnMoreButton];
      if (v18)
      {
        [v10 addObject:v18];
      }

      if ([(SUManagerClient *)self->_suClient isSplatOnlyUpdateRollbackAllowed:0])
      {
        v19 = [(PSGSoftwareVersionController *)self splatRollbackButton];
        if (v19)
        {
          [v10 addObject:v19];
        }
      }
    }

    else
    {
      v18 = _PSGLoggingFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_21CF20000, v18, OS_LOG_TYPE_DEFAULT, "Cryptex-only content not installed", v22, 2u);
      }
    }

    v20 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v10;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)osUpdateDetailGroup
{
  v2 = MEMORY[0x277D3FAD8];
  v3 = PSG_LocalizedString(@"OS Version");
  v4 = [v2 groupSpecifierWithID:@"OS_VERSION_GROUP" name:v3];

  return v4;
}

- (id)osUpdateDetailCellSpecifier
{
  v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v3 setProperty:@"OS_VERSION_CELL" forKey:*MEMORY[0x277D3FFB8]];
  [v3 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v3 setProperty:&unk_282E8FF38 forKey:@"OSUpdateType"];
  [v3 setProperty:self->_suClient forKey:@"SUManagerClient"];
  [v3 setProperty:self->_osDocumentationData forKey:@"SUDocumentationData"];
  [v3 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];

  return v3;
}

- (id)osUpdateLearnMoreButton
{
  v3 = [(SUDocumentationData *)self->_osDocumentationData readme];

  if (v3)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = PSG_LocalizedStringForGeneral(@"LEARN_MORE");
    v6 = [v4 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v6 setButtonAction:sel_osLearnMoreTapped];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)splatUpdateDetailGroup
{
  v2 = MEMORY[0x277D3FAD8];
  v3 = PSG_LocalizedStringForGeneral(@"SECURITY");
  v4 = [v2 groupSpecifierWithID:@"SPLAT_VERSION_GROUP" name:v3];

  return v4;
}

- (id)splatUpdateDetailCellSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
  v5 = [v3 preferenceSpecifierNamed:0 target:WeakRetained set:0 get:0 detail:0 cell:-1 edit:0];

  [v5 setProperty:@"SPLAT_VERSION_CELL" forKey:*MEMORY[0x277D3FFB8]];
  [v5 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v5 setProperty:&unk_282E8FF50 forKey:@"OSUpdateType"];
  [v5 setProperty:self->_suClient forKey:@"SUManagerClient"];
  [v5 setProperty:self->_splatDocumentationData forKey:@"SUDocumentationData"];
  [v5 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];

  return v5;
}

- (id)splatUpdateLearnMoreButton
{
  v3 = [(SUDocumentationData *)self->_splatDocumentationData readme];

  if (v3)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = PSG_LocalizedStringForGeneral(@"LEARN_MORE");
    v6 = [v4 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v6 setButtonAction:sel_splatLearnMoreTapped];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)splatRollbackButton
{
  v17 = *MEMORY[0x277D85DE8];
  suClient = self->_suClient;
  v14 = 0;
  v4 = [(SUManagerClient *)suClient isSplatOnlyUpdateRollbackAllowed:&v14];
  v5 = v14;
  if (v4)
  {
    v6 = MEMORY[0x277D3FAD8];
    v7 = PSG_LocalizedStringForGeneral(@"REMOVE_SECURITY_RESPONSE");
    v8 = [v6 deleteButtonSpecifierWithName:v7 target:self action:sel_removeSecurityResponse];

    [v8 setProperty:&unk_282E8FF50 forKey:*MEMORY[0x277D3FD78]];
    [v8 setProperty:@"ROLLBACK_BUTTON" forKey:*MEMORY[0x277D3FFB8]];
    v9 = self->_suClient;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__PSGSoftwareVersionController_splatRollbackButton__block_invoke;
    v13[3] = &unk_2783255A0;
    v13[4] = self;
    [(SUManagerClient *)v9 isRollingBack:v13];
  }

  else
  {
    v10 = _PSGLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_21CF20000, v10, OS_LOG_TYPE_DEFAULT, "Rollback not allowed: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

void __51__PSGSoftwareVersionController_splatRollbackButton__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PSGSoftwareVersionController_splatRollbackButton__block_invoke_2;
    block[3] = &unk_278324EE0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)setPreparingRollback:(BOOL)a3
{
  v3 = a3;
  v5 = [(PSGSoftwareVersionController *)self specifierForID:@"ROLLBACK_BUTTON"];
  if (!v5)
  {
    v6 = _PSGLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21CF20000, v6, OS_LOG_TYPE_DEFAULT, "No rollback button found", v10, 2u);
    }
  }

  if (v3)
  {
    v7 = @"PREPARING_REMOVAL";
  }

  else
  {
    v7 = @"REMOVE_SECURITY_RESPONSE";
  }

  v8 = PSG_LocalizedStringForGeneral(v7);
  [v5 setName:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:!v3];
  [v5 setProperty:v9 forKey:*MEMORY[0x277D3FF38]];

  [(PSGSoftwareVersionController *)self reloadSpecifier:v5 animated:1];
}

- (void)osLearnMoreTapped
{
  v3 = _PSGLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21CF20000, v3, OS_LOG_TYPE_DEFAULT, "OS Learn More Tapped", v4, 2u);
  }

  [(PSGSoftwareVersionController *)self presentLearnMoreSheetForDocumentationData:self->_osDocumentationData];
}

- (void)splatLearnMoreTapped
{
  v3 = _PSGLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21CF20000, v3, OS_LOG_TYPE_DEFAULT, "Splat Learn More Tapped", v4, 2u);
  }

  [(PSGSoftwareVersionController *)self presentLearnMoreSheetForDocumentationData:self->_splatDocumentationData];
}

- (void)presentLearnMoreSheetForDocumentationData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = [v4 readme];
    v7 = [v5 initWithData:v6 encoding:4];

    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x277D64AB0]);
      [v8 setReleaseNotes:v7];
      v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
      [v9 setModalPresentationStyle:2];
      v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_releaseNotesDonePressed_];
      v11 = [v8 navigationItem];
      [v11 setRightBarButtonItem:v10];

      [(PSGSoftwareVersionController *)self presentViewController:v9 animated:1 completion:0];
    }

    else
    {
      v12 = _PSGLoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_21CF20000, v12, OS_LOG_TYPE_DEFAULT, "Failed to create release notes string", v13, 2u);
      }
    }
  }

  else
  {
    v7 = _PSGLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21CF20000, v7, OS_LOG_TYPE_DEFAULT, "Unable to present learn more sheet with nil SUDocumentationData", buf, 2u);
    }
  }
}

- (void)removeSecurityResponse
{
  v3 = _PSGLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21CF20000, v3, OS_LOG_TYPE_DEFAULT, "Remove Security Reponse Tapped", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277D648E8]);
  [v4 setCancelActiveUpdate:1];
  [v4 setPromptForConsent:1];
  [v4 setPromptForPasscode:1];
  suClient = self->_suClient;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__PSGSoftwareVersionController_removeSecurityResponse__block_invoke;
  v6[3] = &unk_2783255A0;
  v6[4] = self;
  [(SUManagerClient *)suClient rollbackUpdateWithOptions:v4 withResult:v6];
}

void __54__PSGSoftwareVersionController_removeSecurityResponse__block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = objc_alloc(MEMORY[0x277D64868]);
    v10 = [v9 initWithEventName:*MEMORY[0x277D64958]];
    [v10 setEventPayloadEntry:*MEMORY[0x277D64960] stringValue:@"PreferencesiOSVersionRemoveSecurityResponseTapped"];
    [*(*(a1 + 32) + 1456) submitSUAnalyticsEvent:v10];
  }

  v11 = _PSGLoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v12 = @"completed successfully";
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed. Error: %@", v8];
    }

    *buf = 138412290;
    v15 = v12;
    _os_log_impl(&dword_21CF20000, v11, OS_LOG_TYPE_DEFAULT, "rollback update %@", buf, 0xCu);
    if ((a2 & 1) == 0)
    {
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)client:(id)a3 rollbackDidStart:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__PSGSoftwareVersionController_client_rollbackDidStart___block_invoke;
  v7[3] = &unk_278324FE8;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __56__PSGSoftwareVersionController_client_rollbackDidStart___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _PSGLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_21CF20000, v2, OS_LOG_TYPE_DEFAULT, "Prefereces: rollback started: %@", &v6, 0xCu);
  }

  result = [*(a1 + 40) setPreparingRollback:1];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)client:(id)a3 rollbackDidFinish:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__PSGSoftwareVersionController_client_rollbackDidFinish___block_invoke;
  v7[3] = &unk_278324FE8;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __57__PSGSoftwareVersionController_client_rollbackDidFinish___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _PSGLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_21CF20000, v2, OS_LOG_TYPE_DEFAULT, "Prefereces: rollback finished: %@", &v6, 0xCu);
  }

  result = [*(a1 + 40) setPreparingRollback:0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)client:(id)a3 rollbackDidFail:(id)a4 withError:(id)a5
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__PSGSoftwareVersionController_client_rollbackDidFail_withError___block_invoke;
  v8[3] = &unk_278324FE8;
  v9 = v6;
  v10 = self;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t __65__PSGSoftwareVersionController_client_rollbackDidFail_withError___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _PSGLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_21CF20000, v2, OS_LOG_TYPE_DEFAULT, "Prefereces: rollback failed: %@", &v6, 0xCu);
  }

  result = [*(a1 + 40) setPreparingRollback:0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PSGSoftwareVersionController *)self specifierAtIndex:[(PSGSoftwareVersionController *)self indexForIndexPath:v6]];
  v9 = [v8 propertyForKey:*MEMORY[0x277D40148]];
  [v9 layoutIfNeeded];
  v10 = [(PSGSoftwareVersionController *)self specifierForID:@"OS_VERSION_CELL"];

  if (v8 == v10)
  {
    [v9 preferredHeightWithTable:v7];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PSGSoftwareVersionController;
    [(PSGSoftwareVersionController *)&v14 tableView:v7 heightForRowAtIndexPath:v6];
  }

  v12 = v11;

  return v12;
}

@end