@interface NCNotificationManagementMuteThreadAlertController
- (BOOL)_isMessagingThread;
- (id)_threadName;
- (void)_configureView;
@end

@implementation NCNotificationManagementMuteThreadAlertController

- (void)_configureView
{
  v3 = [(NCNotificationManagementAlertController *)self request];
  v4 = [v3 topLevelSectionIdentifier];

  v5 = [(NCNotificationManagementAlertController *)self settingsDelegate];
  v6 = [v5 notificationManagementController:self sectionSettingsForSectionIdentifier:v4];

  v7 = MEMORY[0x277CCACA8];
  v8 = NCUserNotificationsUIKitFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_MENU_THREAD_TITLE" value:&stru_282FE84F8 table:0];
  v10 = [v6 displayName];
  v11 = [(NCNotificationManagementMuteThreadAlertController *)self _threadName];
  v12 = [v7 stringWithFormat:v9, v10, v11];
  [(NCNotificationManagementMuteThreadAlertController *)self setTitle:v12];

  v13 = MEMORY[0x277D750F8];
  v14 = NCUserNotificationsUIKitFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_ONE_HOUR" value:&stru_282FE84F8 table:0];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __67__NCNotificationManagementMuteThreadAlertController__configureView__block_invoke;
  v26[3] = &unk_278372948;
  v26[4] = self;
  v16 = [v13 _actionWithTitle:v15 image:0 style:0 handler:0 shouldDismissHandler:v26];

  [(NCNotificationManagementMuteThreadAlertController *)self addAction:v16];
  v17 = MEMORY[0x277D750F8];
  v18 = NCUserNotificationsUIKitFrameworkBundle();
  v19 = [v18 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_TODAY" value:&stru_282FE84F8 table:0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __67__NCNotificationManagementMuteThreadAlertController__configureView__block_invoke_2;
  v25[3] = &unk_278372948;
  v25[4] = self;
  v20 = [v17 _actionWithTitle:v19 image:0 style:0 handler:0 shouldDismissHandler:v25];

  [(NCNotificationManagementMuteThreadAlertController *)self addAction:v20];
  v21 = MEMORY[0x277D750F8];
  v22 = NCUserNotificationsUIKitFrameworkBundle();
  v23 = [v22 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_CANCEL" value:&stru_282FE84F8 table:0];
  v24 = [v21 actionWithTitle:v23 style:1 handler:0];
  [(NCNotificationManagementMuteThreadAlertController *)self addAction:v24];
}

uint64_t __67__NCNotificationManagementMuteThreadAlertController__configureView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) settingsDelegate];
  v3 = *(a1 + 32);
  v4 = _dateOneHourFromNow();
  v5 = [*(a1 + 32) request];
  v6 = [*(a1 + 32) request];
  v7 = [v6 topLevelSectionIdentifier];
  v8 = [*(a1 + 32) request];
  v9 = [v8 threadIdentifier];
  [v2 notificationManagementController:v3 setMuted:1 untilDate:v4 forNotificationRequest:v5 withSectionIdentifier:v7 threadIdentifier:v9];

  return 1;
}

uint64_t __67__NCNotificationManagementMuteThreadAlertController__configureView__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) settingsDelegate];
  v3 = *(a1 + 32);
  v4 = _dateUntilEndOfToday();
  v5 = [*(a1 + 32) request];
  v6 = [*(a1 + 32) request];
  v7 = [v6 topLevelSectionIdentifier];
  v8 = [*(a1 + 32) request];
  v9 = [v8 threadIdentifier];
  [v2 notificationManagementController:v3 setMuted:1 untilDate:v4 forNotificationRequest:v5 withSectionIdentifier:v7 threadIdentifier:v9];

  return 1;
}

- (id)_threadName
{
  if ([(NCNotificationManagementMuteThreadAlertController *)self _isMessagingThread])
  {
    v3 = [(NCNotificationManagementAlertController *)self request];
    v4 = [v3 content];
    v5 = [v4 communicationContext];
    v6 = [v5 preferredDescription];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isMessagingThread
{
  v2 = [(NCNotificationManagementAlertController *)self request];
  v3 = [v2 content];
  v4 = [v3 isMessagingType];

  return v4;
}

@end