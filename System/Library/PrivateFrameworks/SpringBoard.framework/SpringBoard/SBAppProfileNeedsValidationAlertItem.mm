@interface SBAppProfileNeedsValidationAlertItem
- (SBAppProfileNeedsValidationAlertItem)initWithApp:(id)a3;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBAppProfileNeedsValidationAlertItem

- (SBAppProfileNeedsValidationAlertItem)initWithApp:(id)a3
{
  v5 = a3;
  v6 = [(SBAlertItem *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_application, a3);
  }

  return v7;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [(SBAlertItem *)self alertController:a3];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"APP_PROFILE_NEEDS_VALIDATION_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  [v5 setTitle:v7];

  v8 = [(SBApplication *)self->_application info];
  v9 = [v8 signerIdentity];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 localizedStringForKey:@"APP_PROFILE_NEEDS_VALIDATION_BODY" value:&stru_283094718 table:@"SpringBoard"];
  v13 = [v10 stringWithFormat:v12, v9];

  [v5 setMessage:v13];
  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 localizedStringForKey:@"APP_PROFILE_NEEDS_VALIDATION_CANCEL" value:&stru_283094718 table:@"SpringBoard"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__SBAppProfileNeedsValidationAlertItem_configure_requirePasscodeForActions___block_invoke;
  v17[3] = &unk_2783A8A40;
  v17[4] = self;
  v16 = [MEMORY[0x277D750F8] actionWithTitle:v15 style:1 handler:v17];
  [v5 addAction:v16];
}

@end