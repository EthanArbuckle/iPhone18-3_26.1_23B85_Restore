@interface SBApplicationSignatureVersionUnsupportedAlertItem
- (SBApplicationSignatureVersionUnsupportedAlertItem)initWithApplication:(id)a3;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBApplicationSignatureVersionUnsupportedAlertItem

- (SBApplicationSignatureVersionUnsupportedAlertItem)initWithApplication:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBApplicationSignatureVersionUnsupportedAlertItem;
  v6 = [(SBAlertItem *)&v9 init];
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
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 systemVersion];

  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 localizedStringForKey:@"SIGNATURE_VERSION_UNSUPPORTED_ERROR_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  v11 = [(SBApplication *)self->_application displayName];
  v12 = [v8 stringWithFormat:v10, v11];
  [v5 setTitle:v12];

  v13 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 localizedStringForKey:@"SIGNATURE_VERSION_UNSUPPORTED_ERROR_BODY" value:&stru_283094718 table:@"SpringBoard"];
  v16 = [v13 stringWithFormat:v15, v7];
  [v5 setMessage:v16];

  v17 = MEMORY[0x277D750F8];
  v18 = [MEMORY[0x277CCA8D8] mainBundle];
  v19 = [v18 localizedStringForKey:@"SIGNATURE_VERSION_UNSUPPORTED_ERROR_ACKNOWLEDGE" value:&stru_283094718 table:@"SpringBoard"];
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