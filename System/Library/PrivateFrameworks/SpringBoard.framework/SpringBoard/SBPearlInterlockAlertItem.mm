@interface SBPearlInterlockAlertItem
- (id)_message;
- (id)_title;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBPearlInterlockAlertItem

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v5 = [(SBAlertItem *)self alertController:configure];
  _title = [(SBPearlInterlockAlertItem *)self _title];
  [v5 setTitle:_title];

  _message = [(SBPearlInterlockAlertItem *)self _message];
  [v5 setMessage:_message];

  v8 = MEMORY[0x277D750F8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [mainBundle localizedStringForKey:@"FACE_ID_DISABLED_GO_TO_SETTINGS" value:&stru_283094718 table:@"SpringBoard"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__SBPearlInterlockAlertItem_configure_requirePasscodeForActions___block_invoke;
  v17[3] = &unk_2783A8A40;
  v17[4] = self;
  v11 = [v8 actionWithTitle:v10 style:0 handler:v17];

  [v5 addAction:v11];
  v12 = MEMORY[0x277D750F8];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v14 = [mainBundle2 localizedStringForKey:@"FACE_ID_DISABLED_CLOSE" value:&stru_283094718 table:@"SpringBoard"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__SBPearlInterlockAlertItem_configure_requirePasscodeForActions___block_invoke_2;
  v16[3] = &unk_2783A8A40;
  v16[4] = self;
  v15 = [v12 actionWithTitle:v14 style:0 handler:v16];

  [v5 addAction:v15];
  [v5 setPreferredAction:v11];
}

uint64_t __65__SBPearlInterlockAlertItem_configure_requirePasscodeForActions___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=ROOT"];
  SBWorkspaceActivateApplicationFromURL(v2, 0, 0);

  v3 = *(a1 + 32);

  return [v3 deactivateForButton];
}

- (id)_title
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"FACE_ID_DISABLED_TITLE" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

- (id)_message
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"FACE_ID_DISABLED_BODY" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

@end