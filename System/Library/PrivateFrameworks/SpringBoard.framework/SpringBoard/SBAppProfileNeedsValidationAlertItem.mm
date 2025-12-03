@interface SBAppProfileNeedsValidationAlertItem
- (SBAppProfileNeedsValidationAlertItem)initWithApp:(id)app;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBAppProfileNeedsValidationAlertItem

- (SBAppProfileNeedsValidationAlertItem)initWithApp:(id)app
{
  appCopy = app;
  v6 = [(SBAlertItem *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_application, app);
  }

  return v7;
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v5 = [(SBAlertItem *)self alertController:configure];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [mainBundle localizedStringForKey:@"APP_PROFILE_NEEDS_VALIDATION_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  [v5 setTitle:v7];

  info = [(SBApplication *)self->_application info];
  signerIdentity = [info signerIdentity];

  v10 = MEMORY[0x277CCACA8];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [mainBundle2 localizedStringForKey:@"APP_PROFILE_NEEDS_VALIDATION_BODY" value:&stru_283094718 table:@"SpringBoard"];
  v13 = [v10 stringWithFormat:v12, signerIdentity];

  [v5 setMessage:v13];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [mainBundle3 localizedStringForKey:@"APP_PROFILE_NEEDS_VALIDATION_CANCEL" value:&stru_283094718 table:@"SpringBoard"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__SBAppProfileNeedsValidationAlertItem_configure_requirePasscodeForActions___block_invoke;
  v17[3] = &unk_2783A8A40;
  v17[4] = self;
  v16 = [MEMORY[0x277D750F8] actionWithTitle:v15 style:1 handler:v17];
  [v5 addAction:v16];
}

@end