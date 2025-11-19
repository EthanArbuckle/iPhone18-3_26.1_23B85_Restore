@interface NCTimeSensitiveRemoteSuggestionContentProvider
- (NCTimeSensitiveRemoteSuggestionContentProvider)initWithNotificationRequest:(id)a3 bundleDisplayName:(id)a4 managementDelegate:(id)a5 suggestionDelegate:(id)a6 uuid:(id)a7;
- (id)auxiliaryOptionActions;
- (void)handleLeaveOnButtonAction:(id)a3;
- (void)handleTurnOffMenuButtonAction:(id)a3;
- (void)logSuggestionEvent:(int64_t)a3;
@end

@implementation NCTimeSensitiveRemoteSuggestionContentProvider

- (NCTimeSensitiveRemoteSuggestionContentProvider)initWithNotificationRequest:(id)a3 bundleDisplayName:(id)a4 managementDelegate:(id)a5 suggestionDelegate:(id)a6 uuid:(id)a7
{
  v12 = a4;
  v19.receiver = self;
  v19.super_class = NCTimeSensitiveRemoteSuggestionContentProvider;
  v13 = [(NCRemoteSuggestionContentProvider *)&v19 initWithNotificationRequest:a3 bundleDisplayName:v12 managementDelegate:a5 suggestionDelegate:a6 uuid:a7];
  if (v13)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = NCUserNotificationsUIKitFrameworkBundle();
    v16 = [v15 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_TIME_SENSITIVE_SUGGESTION" value:&stru_282FE84F8 table:0];
    v17 = [v14 stringWithFormat:v16, v12];
    [(NCNotificationManagementSuggestionContentProvider *)v13 setAuxiliaryOptionsSummaryText:v17];
  }

  return v13;
}

- (id)auxiliaryOptionActions
{
  v20[2] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_SUGGESTION_OFF" value:&stru_282FE84F8 table:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__NCTimeSensitiveRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke;
  v17[3] = &unk_27836F428;
  objc_copyWeak(&v18, &location);
  v5 = [v2 actionWithTitle:v4 image:0 identifier:@"notification-management-remote-suggestion-time-sensitive-turn-off" handler:v17];

  v6 = MEMORY[0x277D750C8];
  v7 = NCUserNotificationsUIKitFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_SUGGESTION_LEAVE_ON" value:&stru_282FE84F8 table:0];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __72__NCTimeSensitiveRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2;
  v15 = &unk_27836F428;
  objc_copyWeak(&v16, &location);
  v9 = [v6 actionWithTitle:v8 image:0 identifier:@"notification-management-remote-suggestion-time-sensitive-leave-on" handler:&v12];

  v20[0] = v5;
  v20[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:{2, v12, v13, v14, v15}];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v10;
}

void __72__NCTimeSensitiveRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleTurnOffMenuButtonAction:v4];
}

void __72__NCTimeSensitiveRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleLeaveOnButtonAction:v4];
}

- (void)handleTurnOffMenuButtonAction:(id)a3
{
  v4 = a3;
  v6 = [(NCNotificationManagementContentProvider *)self managementDelegate];
  v5 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [v6 notificationManagementContentProvider:self requestsPresentingNotificationManagementViewType:5 forNotificationRequest:v5 withPresentingView:v4];
}

- (void)handleLeaveOnButtonAction:(id)a3
{
  v4 = [MEMORY[0x277CEB1B8] sharedInstance];
  v5 = [(NCRemoteSuggestionContentProvider *)self uuid];
  v6 = [MEMORY[0x277CBEAA8] now];
  [v4 logSuggestionEvent:1 suggestionType:7 suggestionIdentifier:v5 timestamp:v6];

  v8 = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  v7 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [v8 notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:v7];
}

- (void)logSuggestionEvent:(int64_t)a3
{
  v7 = [MEMORY[0x277CEB1B8] sharedInstance];
  v5 = [(NCRemoteSuggestionContentProvider *)self uuid];
  v6 = [MEMORY[0x277CBEAA8] now];
  [v7 logSuggestionEvent:a3 suggestionType:7 suggestionIdentifier:v5 timestamp:v6];
}

@end