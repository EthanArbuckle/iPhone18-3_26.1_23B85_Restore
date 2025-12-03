@interface NCMessagesInDigestRemoteSuggestionContentProvider
- (NCMessagesInDigestRemoteSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate uuid:(id)uuid;
- (id)auxiliaryOptionActions;
- (void)handleLeaveOnButtonAction:(id)action;
- (void)handleTurnOffMenuButtonAction:(id)action;
@end

@implementation NCMessagesInDigestRemoteSuggestionContentProvider

- (NCMessagesInDigestRemoteSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate uuid:(id)uuid
{
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = NCMessagesInDigestRemoteSuggestionContentProvider;
  v13 = [(NCRemoteSuggestionContentProvider *)&v19 initWithNotificationRequest:request bundleDisplayName:nameCopy managementDelegate:delegate suggestionDelegate:suggestionDelegate uuid:uuid];
  if (v13)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = NCUserNotificationsUIKitFrameworkBundle();
    v16 = [v15 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MESSAGES_IN_DIGEST_SUGGESTION" value:&stru_282FE84F8 table:0];
    nameCopy = [v14 stringWithFormat:v16, nameCopy];
    [(NCNotificationManagementSuggestionContentProvider *)v13 setAuxiliaryOptionsSummaryText:nameCopy];
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
  v17[2] = __75__NCMessagesInDigestRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke;
  v17[3] = &unk_27836F428;
  objc_copyWeak(&v18, &location);
  v5 = [v2 actionWithTitle:v4 image:0 identifier:@"notification-management-remote-suggestion-in-digest-turn-off" handler:v17];

  v6 = MEMORY[0x277D750C8];
  v7 = NCUserNotificationsUIKitFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_SUGGESTION_LEAVE_ON" value:&stru_282FE84F8 table:0];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __75__NCMessagesInDigestRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2;
  v15 = &unk_27836F428;
  objc_copyWeak(&v16, &location);
  v9 = [v6 actionWithTitle:v8 image:0 identifier:@"notification-management-remote-in-digest-leave-on" handler:&v12];

  v20[0] = v5;
  v20[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:{2, v12, v13, v14, v15}];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v10;
}

void __75__NCMessagesInDigestRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleTurnOffMenuButtonAction:v4];
}

void __75__NCMessagesInDigestRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleLeaveOnButtonAction:v4];
}

- (void)handleTurnOffMenuButtonAction:(id)action
{
  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  sectionIdentifier = [notificationRequest sectionIdentifier];
  [suggestionDelegate notificationManagementContentProvider:self setAllowsDirectMessages:0 forSectionIdentifier:sectionIdentifier];

  mEMORY[0x277CEB1B8] = [MEMORY[0x277CEB1B8] sharedInstance];
  uuid = [(NCRemoteSuggestionContentProvider *)self uuid];
  v8 = [MEMORY[0x277CBEAA8] now];
  [mEMORY[0x277CEB1B8] logSuggestionEvent:2 suggestionType:8 suggestionIdentifier:uuid timestamp:v8];

  notificationRequest2 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest2];
}

- (void)handleLeaveOnButtonAction:(id)action
{
  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  sectionIdentifier = [notificationRequest sectionIdentifier];
  [suggestionDelegate notificationManagementContentProvider:self setAllowsDirectMessages:1 forSectionIdentifier:sectionIdentifier];

  mEMORY[0x277CEB1B8] = [MEMORY[0x277CEB1B8] sharedInstance];
  uuid = [(NCRemoteSuggestionContentProvider *)self uuid];
  v8 = [MEMORY[0x277CBEAA8] now];
  [mEMORY[0x277CEB1B8] logSuggestionEvent:1 suggestionType:8 suggestionIdentifier:uuid timestamp:v8];

  notificationRequest2 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest2];
}

@end