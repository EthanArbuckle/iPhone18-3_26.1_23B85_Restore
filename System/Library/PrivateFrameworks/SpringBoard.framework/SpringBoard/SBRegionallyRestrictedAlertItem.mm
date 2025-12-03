@interface SBRegionallyRestrictedAlertItem
- (SBRegionallyRestrictedAlertItem)initWithApplication:(id)application;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBRegionallyRestrictedAlertItem

- (SBRegionallyRestrictedAlertItem)initWithApplication:(id)application
{
  applicationCopy = application;
  v6 = [(SBAlertItem *)self init];
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
  v6 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [mainBundle localizedStringForKey:@"REGIONALLY_RESTRICTION_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  displayName = [(SBApplication *)self->_application displayName];
  v10 = [v6 stringWithFormat:v8, displayName];
  [v5 setTitle:v10];

  info = [(SBApplication *)self->_application info];
  LOBYTE(mainBundle) = [info browserEngineIsRegionallyRestricted];

  if (mainBundle)
  {
    v12 = @"REGIONALLY_RESTRICTION_BROWSER_ENGINE_BODY";
LABEL_5:
    v15 = MEMORY[0x277CCACA8];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [mainBundle2 localizedStringForKey:v12 value:&stru_283094718 table:@"SpringBoard"];
    v18 = [v15 stringWithFormat:v17];
    [v5 setMessage:v18];

    goto LABEL_6;
  }

  info2 = [(SBApplication *)self->_application info];
  embeddedBrowserEngineIsRegionallyRestricted = [info2 embeddedBrowserEngineIsRegionallyRestricted];

  if (embeddedBrowserEngineIsRegionallyRestricted)
  {
    v12 = @"REGIONALLY_RESTRICTION_EMBEDDED_BROWSER_ENGINE_BODY";
    goto LABEL_5;
  }

LABEL_6:
  v19 = MEMORY[0x277D750F8];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v21 = [mainBundle3 localizedStringForKey:@"OK" value:&stru_283094718 table:@"SpringBoard"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __71__SBRegionallyRestrictedAlertItem_configure_requirePasscodeForActions___block_invoke;
  v23[3] = &unk_2783A8A40;
  v23[4] = self;
  v22 = [v19 actionWithTitle:v21 style:0 handler:v23];
  [v5 addAction:v22];
}

@end