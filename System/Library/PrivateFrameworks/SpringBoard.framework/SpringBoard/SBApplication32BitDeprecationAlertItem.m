@interface SBApplication32BitDeprecationAlertItem
- (SBApplication)associatedDisplay;
- (SBApplication32BitDeprecationAlertItem)initWithApplication:(id)a3;
- (id)_message;
- (id)_title;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBApplication32BitDeprecationAlertItem

- (SBApplication32BitDeprecationAlertItem)initWithApplication:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBApplication32BitDeprecationAlertItem;
  v5 = [(SBAlertItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_associatedDisplay, v4);
  }

  return v6;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [(SBAlertItem *)self alertController:a3];
  v6 = [(SBApplication32BitDeprecationAlertItem *)self _title];
  [v5 setTitle:v6];

  v7 = [(SBApplication32BitDeprecationAlertItem *)self _message];
  [v5 setMessage:v7];

  v8 = MEMORY[0x277D750F8];
  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 localizedStringForKey:@"DEPRECATED_32_BIT_APP_SECONDARY_NO_UPDATE" value:&stru_283094718 table:@"SpringBoard"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__SBApplication32BitDeprecationAlertItem_configure_requirePasscodeForActions___block_invoke;
  v17[3] = &unk_2783A8A40;
  v17[4] = self;
  v11 = [v8 actionWithTitle:v10 style:0 handler:v17];

  [v5 addAction:v11];
  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] mainBundle];
  v14 = [v13 localizedStringForKey:@"DEPRECATED_32_BIT_APP_ACKNOWLEDGE" value:&stru_283094718 table:@"SpringBoard"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__SBApplication32BitDeprecationAlertItem_configure_requirePasscodeForActions___block_invoke_2;
  v16[3] = &unk_2783A8A40;
  v16[4] = self;
  v15 = [v12 actionWithTitle:v14 style:0 handler:v16];

  [v5 addAction:v15];
  [v5 setPreferredAction:v15];
}

uint64_t __78__SBApplication32BitDeprecationAlertItem_configure_requirePasscodeForActions___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=About/APPLICATIONS"];
  SBWorkspaceActivateApplicationFromURL(v2, 0, 0);

  v3 = *(a1 + 32);

  return [v3 deactivateForButton];
}

- (id)_title
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:@"DEPRECATED_32_BIT_APP_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  WeakRetained = objc_loadWeakRetained(&self->_associatedDisplay);
  v7 = [WeakRetained displayName];
  v8 = [v3 stringWithFormat:v5, v7];

  return v8;
}

- (id)_message
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 localizedStringForKey:@"DEPRECATED_32_BIT_APP_BODY_NO_UPDATE_NO_SYSTEM_VERSION" value:&stru_283094718 table:@"SpringBoard"];
  v5 = [v2 stringWithFormat:v4];

  return v5;
}

- (SBApplication)associatedDisplay
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedDisplay);

  return WeakRetained;
}

@end