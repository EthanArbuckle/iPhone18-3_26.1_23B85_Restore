@interface SBApplicationSignatureVersionUnsupportedAlertItem
- (SBApplicationSignatureVersionUnsupportedAlertItem)initWithApplication:(id)application;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBApplicationSignatureVersionUnsupportedAlertItem

- (SBApplicationSignatureVersionUnsupportedAlertItem)initWithApplication:(id)application
{
  applicationCopy = application;
  v9.receiver = self;
  v9.super_class = SBApplicationSignatureVersionUnsupportedAlertItem;
  v6 = [(SBAlertItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_application, application);
  }

  return v7;
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v5 = [(SBAlertItem *)self alertController:configure];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  systemVersion = [currentDevice systemVersion];

  v8 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [mainBundle localizedStringForKey:@"SIGNATURE_VERSION_UNSUPPORTED_ERROR_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  displayName = [(SBApplication *)self->_application displayName];
  v12 = [v8 stringWithFormat:v10, displayName];
  [v5 setTitle:v12];

  v13 = MEMORY[0x277CCACA8];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [mainBundle2 localizedStringForKey:@"SIGNATURE_VERSION_UNSUPPORTED_ERROR_BODY" value:&stru_283094718 table:@"SpringBoard"];
  v16 = [v13 stringWithFormat:v15, systemVersion];
  [v5 setMessage:v16];

  v17 = MEMORY[0x277D750F8];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v19 = [mainBundle3 localizedStringForKey:@"SIGNATURE_VERSION_UNSUPPORTED_ERROR_ACKNOWLEDGE" value:&stru_283094718 table:@"SpringBoard"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __89__SBApplicationSignatureVersionUnsupportedAlertItem_configure_requirePasscodeForActions___block_invoke;
  v21[3] = &unk_2783A8A40;
  v21[4] = self;
  v20 = [v17 actionWithTitle:v19 style:0 handler:v21];

  [v5 addAction:v20];
  [v5 setPreferredAction:v20];
}

@end