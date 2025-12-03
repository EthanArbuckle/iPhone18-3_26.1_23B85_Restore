@interface SBDeleteNonAppIconAlertItem
- (SBDeleteNonAppIconAlertItem)initWithIcon:(id)icon location:(id)location iconController:(id)controller;
- (id)iconManager;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
- (void)didActivate;
@end

@implementation SBDeleteNonAppIconAlertItem

- (SBDeleteNonAppIconAlertItem)initWithIcon:(id)icon location:(id)location iconController:(id)controller
{
  iconCopy = icon;
  locationCopy = location;
  controllerCopy = controller;
  if ([iconCopy isApplicationIcon])
  {
    [SBDeleteNonAppIconAlertItem initWithIcon:a2 location:self iconController:iconCopy];
  }

  v18.receiver = self;
  v18.super_class = SBDeleteNonAppIconAlertItem;
  v13 = [(SBAlertItem *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_icon, icon);
    v15 = [locationCopy copy];
    iconLocation = v14->_iconLocation;
    v14->_iconLocation = v15;

    objc_storeStrong(&v14->_iconController, controller);
  }

  return v14;
}

- (id)iconManager
{
  iconController = [(SBDeleteNonAppIconAlertItem *)self iconController];
  iconManager = [iconController iconManager];

  return iconManager;
}

- (void)didActivate
{
  v11[2] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = SBDeleteNonAppIconAlertItem;
  [(SBAlertItem *)&v9 didActivate];
  v3 = *MEMORY[0x277D67460];
  v10[0] = *MEMORY[0x277D67468];
  v10[1] = v3;
  iconLocation = self->_iconLocation;
  v11[0] = &unk_2833708C8;
  v11[1] = iconLocation;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v6 = MEMORY[0x277D65DD0];
  v7 = v5;
  sharedInstance = [v6 sharedInstance];
  [sharedInstance emitEvent:18 withPayload:v7];
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v5 = [(SBAlertItem *)self alertController:configure];
  uninstallAlertTitle = [(SBIcon *)self->_icon uninstallAlertTitle];
  [v5 setTitle:uninstallAlertTitle];

  uninstallAlertBody = [(SBIcon *)self->_icon uninstallAlertBody];
  [v5 setMessage:uninstallAlertBody];

  v8 = MEMORY[0x277D750F8];
  uninstallAlertConfirmTitle = [(SBIcon *)self->_icon uninstallAlertConfirmTitle];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __67__SBDeleteNonAppIconAlertItem_configure_requirePasscodeForActions___block_invoke;
  v27[3] = &unk_2783A8A40;
  v27[4] = self;
  v10 = [v8 actionWithTitle:uninstallAlertConfirmTitle style:2 handler:v27];

  [v5 addAction:v10];
  icon = [(SBDeleteNonAppIconAlertItem *)self icon];
  if (![icon isBookmarkIcon])
  {
LABEL_5:

    goto LABEL_6;
  }

  iconController = [(SBDeleteNonAppIconAlertItem *)self iconController];
  icon2 = [(SBDeleteNonAppIconAlertItem *)self icon];
  iconLocation = [(SBDeleteNonAppIconAlertItem *)self iconLocation];
  v15 = [iconController isHideSupportedForIcon:icon2 inLocation:iconLocation];

  if (v15)
  {
    icon3 = [(SBDeleteNonAppIconAlertItem *)self icon];
    bookmark = [icon3 bookmark];
    icon = [bookmark webClip];

    if (([icon isAppClip] & 1) == 0)
    {
      v18 = MEMORY[0x277D750F8];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v20 = [mainBundle localizedStringForKey:@"REMOVE_FROM_HOME_SCREEN" value:&stru_283094718 table:@"SpringBoard"];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __67__SBDeleteNonAppIconAlertItem_configure_requirePasscodeForActions___block_invoke_37;
      v26[3] = &unk_2783A8A40;
      v26[4] = self;
      v21 = [v18 actionWithTitle:v20 style:0 handler:v26];
      [v5 addAction:v21];
    }

    goto LABEL_5;
  }

LABEL_6:
  v22 = MEMORY[0x277D750F8];
  uninstallAlertCancelTitle = [(SBIcon *)self->_icon uninstallAlertCancelTitle];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __67__SBDeleteNonAppIconAlertItem_configure_requirePasscodeForActions___block_invoke_40;
  v25[3] = &unk_2783A8A40;
  v25[4] = self;
  v24 = [v22 actionWithTitle:uninstallAlertCancelTitle style:1 handler:v25];
  [v5 addAction:v24];

  [v5 setPreferredAction:v10];
}

void __67__SBDeleteNonAppIconAlertItem_configure_requirePasscodeForActions___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) deactivateForButton];
  v7 = *MEMORY[0x277D67470];
  v8[0] = &unk_2833708E0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v3 = MEMORY[0x277D65DD0];
  v4 = v2;
  v5 = [v3 sharedInstance];
  [v5 emitEvent:19 withPayload:v4];

  if ([*(*(a1 + 32) + 112) isApplicationIcon])
  {
    [*(*(a1 + 32) + 112) setUninstalledByUser:1];
    [*(*(a1 + 32) + 112) cancelDownload];
  }

  v6 = [*(a1 + 32) iconManager];
  [v6 uninstallIcon:*(*(a1 + 32) + 112)];
}

void __67__SBDeleteNonAppIconAlertItem_configure_requirePasscodeForActions___block_invoke_37(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) deactivateForButton];
  v7 = *MEMORY[0x277D67470];
  v8[0] = &unk_2833708F8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v3 = MEMORY[0x277D65DD0];
  v4 = v2;
  v5 = [v3 sharedInstance];
  [v5 emitEvent:19 withPayload:v4];

  v6 = [*(a1 + 32) iconManager];
  [v6 addIconToIgnoredList:*(*(a1 + 32) + 112) options:1 completion:0];
}

void __67__SBDeleteNonAppIconAlertItem_configure_requirePasscodeForActions___block_invoke_40(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) deactivateForButton];
  v5 = *MEMORY[0x277D67470];
  v6[0] = &unk_283370910;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = MEMORY[0x277D65DD0];
  v3 = v1;
  v4 = [v2 sharedInstance];
  [v4 emitEvent:19 withPayload:v3];
}

- (void)initWithIcon:(uint64_t)a1 location:(uint64_t)a2 iconController:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBDeleteNonAppIconAlertItem.m" lineNumber:24 description:{@"icon must not be an applicationIcon : icon=%@", a3}];
}

@end