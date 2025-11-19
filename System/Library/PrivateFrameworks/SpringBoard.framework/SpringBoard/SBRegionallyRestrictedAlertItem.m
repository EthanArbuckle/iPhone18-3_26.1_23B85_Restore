@interface SBRegionallyRestrictedAlertItem
- (SBRegionallyRestrictedAlertItem)initWithApplication:(id)a3;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBRegionallyRestrictedAlertItem

- (SBRegionallyRestrictedAlertItem)initWithApplication:(id)a3
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
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 localizedStringForKey:@"REGIONALLY_RESTRICTION_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  v9 = [(SBApplication *)self->_application displayName];
  v10 = [v6 stringWithFormat:v8, v9];
  [v5 setTitle:v10];

  v11 = [(SBApplication *)self->_application info];
  LOBYTE(v7) = [v11 browserEngineIsRegionallyRestricted];

  if (v7)
  {
    v12 = @"REGIONALLY_RESTRICTION_BROWSER_ENGINE_BODY";
LABEL_5:
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [v16 localizedStringForKey:v12 value:&stru_283094718 table:@"SpringBoard"];
    v18 = [v15 stringWithFormat:v17];
    [v5 setMessage:v18];

    goto LABEL_6;
  }

  v13 = [(SBApplication *)self->_application info];
  v14 = [v13 embeddedBrowserEngineIsRegionallyRestricted];

  if (v14)
  {
    v12 = @"REGIONALLY_RESTRICTION_EMBEDDED_BROWSER_ENGINE_BODY";
    goto LABEL_5;
  }

LABEL_6:
  v19 = MEMORY[0x277D750F8];
  v20 = [MEMORY[0x277CCA8D8] mainBundle];
  v21 = [v20 localizedStringForKey:@"OK" value:&stru_283094718 table:@"SpringBoard"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __71__SBRegionallyRestrictedAlertItem_configure_requirePasscodeForActions___block_invoke;
  v23[3] = &unk_2783A8A40;
  v23[4] = self;
  v22 = [v19 actionWithTitle:v21 style:0 handler:v23];
  [v5 addAction:v22];
}

@end