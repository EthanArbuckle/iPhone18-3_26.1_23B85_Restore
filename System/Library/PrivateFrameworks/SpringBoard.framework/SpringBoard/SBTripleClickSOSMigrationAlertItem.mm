@interface SBTripleClickSOSMigrationAlertItem
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBTripleClickSOSMigrationAlertItem

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [(SBAlertItem *)self alertController:a3];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"SOS_TRIPLE_CLICK_MIGRATION_TITLE" value:&stru_283094718 table:@"Late_Fall_2017_iOS_Strings"];

  [v5 setTitle:v7];
  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 localizedStringForKey:@"SOS_TRIPLE_CLICK_MIGRATION_BODY" value:&stru_283094718 table:@"Late_Fall_2017_iOS_Strings"];

  [v5 setMessage:v9];
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 localizedStringForKey:@"SOS_TRIPLE_CLICK_MIGRATION_BUTTON_OK" value:&stru_283094718 table:@"Late_Fall_2017_iOS_Strings"];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SBTripleClickSOSMigrationAlertItem_configure_requirePasscodeForActions___block_invoke;
  v13[3] = &unk_2783A8A40;
  v13[4] = self;
  v12 = [MEMORY[0x277D750F8] actionWithTitle:v11 style:0 handler:v13];
  [v5 addAction:v12];
}

@end