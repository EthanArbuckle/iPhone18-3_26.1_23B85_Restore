@interface NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider
- (NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider)initWithNotificationRequest:(id)a3 bundleDisplayName:(id)a4 managementDelegate:(id)a5 suggestionDelegate:(id)a6;
- (id)auxiliaryOptionActions;
- (void)handleLeaveOnAction:(id)a3;
- (void)handleOffAction:(id)a3;
@end

@implementation NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider

- (NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider)initWithNotificationRequest:(id)a3 bundleDisplayName:(id)a4 managementDelegate:(id)a5 suggestionDelegate:(id)a6
{
  v10 = a4;
  v17.receiver = self;
  v17.super_class = NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider;
  v11 = [(NCNotificationManagementSuggestionContentProvider *)&v17 initWithNotificationRequest:a3 bundleDisplayName:v10 managementDelegate:a5 suggestionDelegate:a6];
  if (v11)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = NCUserNotificationsUIKitFrameworkBundle();
    v14 = [v13 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_MESSAGES_IN_DIGEST_SUGGESTION" value:&stru_282FE84F8 table:0];
    v15 = [v12 stringWithFormat:v14, v10, v10];
    [(NCNotificationManagementSuggestionContentProvider *)v11 setAuxiliaryOptionsSummaryText:v15];
  }

  return v11;
}

- (id)auxiliaryOptionActions
{
  v20[2] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_SUGGESTION_TURN_OFF" value:&stru_282FE84F8 table:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider_auxiliaryOptionActions__block_invoke;
  v17[3] = &unk_27836F428;
  objc_copyWeak(&v18, &location);
  v5 = [v2 actionWithTitle:v4 image:0 identifier:@"notification-management-direct-message-in-digest-turn-off" handler:v17];

  v6 = MEMORY[0x277D750C8];
  v7 = NCUserNotificationsUIKitFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_SUGGESTION_LEAVE_ON" value:&stru_282FE84F8 table:0];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __97__NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2;
  v15 = &unk_27836F428;
  objc_copyWeak(&v16, &location);
  v9 = [v6 actionWithTitle:v8 image:0 identifier:@"notification-management-suggestion-direct-message-in-digest-leave-on" handler:&v12];

  v20[0] = v5;
  v20[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:{2, v12, v13, v14, v15}];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v10;
}

void __97__NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider_auxiliaryOptionActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleOffAction:v4];
}

void __97__NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleLeaveOnAction:v4];
}

- (void)handleOffAction:(id)a3
{
  v7 = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  v4 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  v5 = [v4 sectionIdentifier];
  [v7 notificationManagementContentProvider:self setAllowsDirectMessages:0 forSectionIdentifier:v5];

  v6 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [v7 notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:v6];
}

- (void)handleLeaveOnAction:(id)a3
{
  v7 = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  v4 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  v5 = [v4 sectionIdentifier];
  [v7 notificationManagementContentProvider:self setAllowsDirectMessages:1 forSectionIdentifier:v5];

  v6 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [v7 notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:v6];
}

@end