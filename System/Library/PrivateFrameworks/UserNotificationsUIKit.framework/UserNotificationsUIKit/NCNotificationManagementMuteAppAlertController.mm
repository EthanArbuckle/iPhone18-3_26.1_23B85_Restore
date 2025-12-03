@interface NCNotificationManagementMuteAppAlertController
- (void)_configureView;
@end

@implementation NCNotificationManagementMuteAppAlertController

- (void)_configureView
{
  request = [(NCNotificationManagementAlertController *)self request];
  topLevelSectionIdentifier = [request topLevelSectionIdentifier];

  settingsDelegate = [(NCNotificationManagementAlertController *)self settingsDelegate];
  v6 = [settingsDelegate notificationManagementController:self sectionSettingsForSectionIdentifier:topLevelSectionIdentifier];

  v7 = MEMORY[0x277CCACA8];
  v8 = NCUserNotificationsUIKitFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MENU_APP_TITLE" value:&stru_282FE84F8 table:0];
  displayName = [v6 displayName];
  v11 = [v7 stringWithFormat:v9, displayName];
  [(NCNotificationManagementMuteAppAlertController *)self setTitle:v11];

  v12 = MEMORY[0x277D750F8];
  v13 = NCUserNotificationsUIKitFrameworkBundle();
  v14 = [v13 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_ONE_HOUR" value:&stru_282FE84F8 table:0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __64__NCNotificationManagementMuteAppAlertController__configureView__block_invoke;
  v25[3] = &unk_278372948;
  v25[4] = self;
  v15 = [v12 _actionWithTitle:v14 image:0 style:0 handler:0 shouldDismissHandler:v25];

  [(NCNotificationManagementMuteAppAlertController *)self addAction:v15];
  v16 = MEMORY[0x277D750F8];
  v17 = NCUserNotificationsUIKitFrameworkBundle();
  v18 = [v17 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_TODAY" value:&stru_282FE84F8 table:0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __64__NCNotificationManagementMuteAppAlertController__configureView__block_invoke_2;
  v24[3] = &unk_278372948;
  v24[4] = self;
  v19 = [v16 _actionWithTitle:v18 image:0 style:0 handler:0 shouldDismissHandler:v24];

  [(NCNotificationManagementMuteAppAlertController *)self addAction:v19];
  v20 = MEMORY[0x277D750F8];
  v21 = NCUserNotificationsUIKitFrameworkBundle();
  v22 = [v21 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_CANCEL" value:&stru_282FE84F8 table:0];
  v23 = [v20 actionWithTitle:v22 style:1 handler:0];
  [(NCNotificationManagementMuteAppAlertController *)self addAction:v23];
}

uint64_t __64__NCNotificationManagementMuteAppAlertController__configureView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) settingsDelegate];
  v3 = *(a1 + 32);
  v4 = _dateOneHourFromNow();
  v5 = [*(a1 + 32) request];
  v6 = [*(a1 + 32) request];
  v7 = [v6 topLevelSectionIdentifier];
  [v2 notificationManagementController:v3 setMuted:1 untilDate:v4 forNotificationRequest:v5 withSectionIdentifier:v7 threadIdentifier:0];

  return 1;
}

uint64_t __64__NCNotificationManagementMuteAppAlertController__configureView__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) settingsDelegate];
  v3 = *(a1 + 32);
  v4 = _dateUntilEndOfToday();
  v5 = [*(a1 + 32) request];
  v6 = [*(a1 + 32) request];
  v7 = [v6 topLevelSectionIdentifier];
  [v2 notificationManagementController:v3 setMuted:1 untilDate:v4 forNotificationRequest:v5 withSectionIdentifier:v7 threadIdentifier:0];

  return 1;
}

@end