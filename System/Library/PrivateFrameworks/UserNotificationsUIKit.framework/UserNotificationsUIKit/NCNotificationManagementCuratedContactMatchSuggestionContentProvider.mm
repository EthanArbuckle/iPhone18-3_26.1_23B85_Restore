@interface NCNotificationManagementCuratedContactMatchSuggestionContentProvider
- (NCNotificationManagementCuratedContactMatchSuggestionContentProvider)initWithNotificationRequest:(id)a3 bundleDisplayName:(id)a4 managementDelegate:(id)a5 suggestionDelegate:(id)a6 contactName:(id)a7;
- (id)auxiliaryOptionActions;
- (void)handleConfirmAction:(id)a3;
- (void)handleRejectAction:(id)a3;
@end

@implementation NCNotificationManagementCuratedContactMatchSuggestionContentProvider

- (NCNotificationManagementCuratedContactMatchSuggestionContentProvider)initWithNotificationRequest:(id)a3 bundleDisplayName:(id)a4 managementDelegate:(id)a5 suggestionDelegate:(id)a6 contactName:(id)a7
{
  v12 = a4;
  v13 = a7;
  v20.receiver = self;
  v20.super_class = NCNotificationManagementCuratedContactMatchSuggestionContentProvider;
  v14 = [(NCNotificationManagementSuggestionContentProvider *)&v20 initWithNotificationRequest:a3 bundleDisplayName:v12 managementDelegate:a5 suggestionDelegate:a6];
  if (v14)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = NCUserNotificationsUIKitFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_CONTACT_SUGGESTION" value:&stru_282FE84F8 table:0];
    v18 = [v15 stringWithFormat:v17, v13, v12];

    [(NCNotificationManagementSuggestionContentProvider *)v14 setAuxiliaryOptionsSummaryText:v18];
  }

  return v14;
}

- (id)auxiliaryOptionActions
{
  v20[2] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_CONTACT_UPDATE" value:&stru_282FE84F8 table:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__NCNotificationManagementCuratedContactMatchSuggestionContentProvider_auxiliaryOptionActions__block_invoke;
  v17[3] = &unk_27836F428;
  objc_copyWeak(&v18, &location);
  v5 = [v2 actionWithTitle:v4 image:0 identifier:@"notification-management-contact-match-suggestion-confirm" handler:v17];

  v6 = MEMORY[0x277D750C8];
  v7 = NCUserNotificationsUIKitFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_CONTACT_NOT_NOW" value:&stru_282FE84F8 table:0];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __94__NCNotificationManagementCuratedContactMatchSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2;
  v15 = &unk_27836F428;
  objc_copyWeak(&v16, &location);
  v9 = [v6 actionWithTitle:v8 image:0 identifier:@"notification-management-contact-match-suggestion-reject" handler:&v12];

  v20[0] = v5;
  v20[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:{2, v12, v13, v14, v15}];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v10;
}

void __94__NCNotificationManagementCuratedContactMatchSuggestionContentProvider_auxiliaryOptionActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleConfirmAction:v4];
}

void __94__NCNotificationManagementCuratedContactMatchSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleRejectAction:v4];
}

- (void)handleConfirmAction:(id)a3
{
  v6 = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  v4 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [v6 notificationManagementContentProvider:self setCuratedContactSuggestionConfirmed:1 request:v4];

  v5 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [v6 notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:v5];
}

- (void)handleRejectAction:(id)a3
{
  v6 = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  v4 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [v6 notificationManagementContentProvider:self setCuratedContactSuggestionConfirmed:0 request:v4];

  v5 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [v6 notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:v5];
}

@end