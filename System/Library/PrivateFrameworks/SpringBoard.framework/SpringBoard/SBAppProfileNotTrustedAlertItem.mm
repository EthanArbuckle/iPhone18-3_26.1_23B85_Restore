@interface SBAppProfileNotTrustedAlertItem
- (SBAppProfileNotTrustedAlertItem)initWithApp:(id)a3;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBAppProfileNotTrustedAlertItem

- (SBAppProfileNotTrustedAlertItem)initWithApp:(id)a3
{
  v5 = a3;
  v6 = [(SBAlertItem *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_app, a3);
  }

  return v7;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [(SBAlertItem *)self alertController:a3];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"APP_PROFILE_NOT_TRUSTED_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  [v5 setTitle:v7];

  v8 = [(SBApplication *)self->_app info];
  v9 = [v8 signerIdentity];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"APP_PROFILE_NOT_TRUSTED_BODY"];
  v13 = [v11 localizedStringForKey:v12 value:&stru_283094718 table:@"SpringBoard"];
  v14 = [v10 stringWithFormat:v13, v9];

  [v5 setMessage:v14];
  v15 = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = [v15 localizedStringForKey:@"APP_PROFILE_NOT_TRUSTED_CANCEL" value:&stru_283094718 table:@"SpringBoard"];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __71__SBAppProfileNotTrustedAlertItem_configure_requirePasscodeForActions___block_invoke;
  v18[3] = &unk_2783A8A40;
  v18[4] = self;
  v17 = [MEMORY[0x277D750F8] actionWithTitle:v16 style:1 handler:v18];
  [v5 addAction:v17];
}

@end