@interface SBFairPlayFamilyLeaveAlertItem
- (SBFairPlayFamilyLeaveAlertItem)initWithAppInfo:(id)a3;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBFairPlayFamilyLeaveAlertItem

- (SBFairPlayFamilyLeaveAlertItem)initWithAppInfo:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SBFairPlayFamilyLeaveAlertItem *)a2 initWithAppInfo:?];
  }

  v10.receiver = self;
  v10.super_class = SBFairPlayFamilyLeaveAlertItem;
  v7 = [(SBAlertItem *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_appInfo, a3);
  }

  return v8;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [(SBAlertItem *)self alertController:a3];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"FAIRPLAY_FAMILY_LEAVE_ALERT_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  [v5 setTitle:v7];

  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 localizedStringForKey:@"FAIRPLAY_FAMILY_LEAVE_ALERT_MESSAGE" value:&stru_283094718 table:@"SpringBoard"];
  [v5 setMessage:v9];

  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 localizedStringForKey:@"FAIRPLAY_FAMILY_LEAVE_CANCEL" value:&stru_283094718 table:@"SpringBoard"];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__SBFairPlayFamilyLeaveAlertItem_configure_requirePasscodeForActions___block_invoke;
  v19[3] = &unk_2783A8A40;
  v19[4] = self;
  v12 = [MEMORY[0x277D750F8] actionWithTitle:v11 style:1 handler:v19];
  [v5 addAction:v12];

  v13 = +[SBApplicationController sharedInstance];
  v14 = [v13 restrictionController];
  LOBYTE(v9) = [v14 isApplicationIdentifierRestricted:@"com.apple.AppStore"];

  if ((v9 & 1) == 0)
  {
    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [v15 localizedStringForKey:@"FAIRPLAY_FAMILY_LEAVE_APP_STORE" value:&stru_283094718 table:@"SpringBoard"];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __70__SBFairPlayFamilyLeaveAlertItem_configure_requirePasscodeForActions___block_invoke_2;
    v18[3] = &unk_2783A8A40;
    v18[4] = self;
    v17 = [MEMORY[0x277D750F8] actionWithTitle:v16 style:0 handler:v18];
    [v5 addAction:v17];
  }
}

void __70__SBFairPlayFamilyLeaveAlertItem_configure_requirePasscodeForActions___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = MEMORY[0x277CCACA8];
  v4 = [*(*(a1 + 32) + 112) itemID];
  v5 = [v3 stringWithFormat:@"itms-apps://?action=lookup&ids=%@", v4];
  v8 = [v2 URLWithString:v5];

  if ((SBWorkspaceActivateApplicationFromURL(v8, 0, 0) & 1) == 0)
  {
    v6 = +[SBApplicationController sharedInstance];
    v7 = [v6 applicationWithBundleIdentifier:@"com.apple.AppStore"];

    if (v7)
    {
      SBWorkspaceActivateApplication(v7);
    }
  }

  [*(a1 + 32) deactivateForButton];
}

- (void)initWithAppInfo:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFairPlayFamilyLeaveAlertItem.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"appInfo"}];
}

@end