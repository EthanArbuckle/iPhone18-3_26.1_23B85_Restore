@interface SBHideFolderContentsAlertItem
- (SBHideFolderContentsAlertItem)initWithIcon:(id)icon location:(id)location iconManager:(id)manager;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
- (void)didActivate;
@end

@implementation SBHideFolderContentsAlertItem

- (SBHideFolderContentsAlertItem)initWithIcon:(id)icon location:(id)location iconManager:(id)manager
{
  iconCopy = icon;
  locationCopy = location;
  managerCopy = manager;
  if (([iconCopy isFolderIcon] & 1) == 0)
  {
    [SBHideFolderContentsAlertItem initWithIcon:a2 location:self iconManager:iconCopy];
  }

  v18.receiver = self;
  v18.super_class = SBHideFolderContentsAlertItem;
  v13 = [(SBAlertItem *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_icon, icon);
    v15 = [locationCopy copy];
    iconLocation = v14->_iconLocation;
    v14->_iconLocation = v15;

    objc_storeStrong(&v14->_iconManager, manager);
  }

  return v14;
}

- (void)didActivate
{
  v11[2] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = SBHideFolderContentsAlertItem;
  [(SBAlertItem *)&v9 didActivate];
  v3 = *MEMORY[0x277D67460];
  v10[0] = *MEMORY[0x277D67468];
  v10[1] = v3;
  iconLocation = self->_iconLocation;
  v11[0] = &unk_283371258;
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
  icon = [(SBHideFolderContentsAlertItem *)self icon];
  v7 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [mainBundle localizedStringForKey:@"ADD_FOLDER_TO_LIBRARY_ALERT_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  displayName = [icon displayName];
  v11 = [v7 stringWithFormat:v9, displayName];
  [v5 setTitle:v11];

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [mainBundle2 localizedStringForKey:@"ADD_FOLDER_TO_LIBRARY_ALERT_MESSAGE" value:&stru_283094718 table:@"SpringBoard"];
  [v5 setMessage:v13];

  v14 = MEMORY[0x277D750F8];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = [mainBundle3 localizedStringForKey:@"REMOVE_FROM_HOME_SCREEN" value:&stru_283094718 table:@"SpringBoard"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __69__SBHideFolderContentsAlertItem_configure_requirePasscodeForActions___block_invoke;
  v23[3] = &unk_2783A8A18;
  v23[4] = self;
  v24 = icon;
  v17 = icon;
  v18 = [v14 actionWithTitle:v16 style:0 handler:v23];

  [v5 addAction:v18];
  v19 = MEMORY[0x277D750F8];
  uninstallAlertCancelTitle = [(SBIcon *)self->_icon uninstallAlertCancelTitle];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__SBHideFolderContentsAlertItem_configure_requirePasscodeForActions___block_invoke_32;
  v22[3] = &unk_2783A8A40;
  v22[4] = self;
  v21 = [v19 actionWithTitle:uninstallAlertCancelTitle style:1 handler:v22];
  [v5 addAction:v21];

  [v5 setPreferredAction:v18];
}

void __69__SBHideFolderContentsAlertItem_configure_requirePasscodeForActions___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) deactivateForButton];
  v7 = *MEMORY[0x277D67470];
  v8[0] = &unk_283371270;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v3 = MEMORY[0x277D65DD0];
  v4 = v2;
  v5 = [v3 sharedInstance];
  [v5 emitEvent:19 withPayload:v4];

  v6 = [*(a1 + 32) iconManager];
  [v6 addIconToIgnoredList:*(a1 + 40) options:1 completion:0];
}

void __69__SBHideFolderContentsAlertItem_configure_requirePasscodeForActions___block_invoke_32(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) deactivateForButton];
  v5 = *MEMORY[0x277D67470];
  v6[0] = &unk_283371288;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = MEMORY[0x277D65DD0];
  v3 = v1;
  v4 = [v2 sharedInstance];
  [v4 emitEvent:19 withPayload:v3];
}

- (void)initWithIcon:(uint64_t)a1 location:(uint64_t)a2 iconManager:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBHideFolderContentsAlertItem.m" lineNumber:18 description:{@"icon must be a folder icon : icon=%@", a3}];
}

@end