@interface NCNotificationManagementStackSummarySuggestionContentProvider
- (NCNotificationManagementStackSummarySuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate summarizationSuggestionManager:(id)manager;
- (id)auxiliaryOptionActions;
- (void)handleContinueAction:(id)action;
- (void)handleOffAction:(id)action;
@end

@implementation NCNotificationManagementStackSummarySuggestionContentProvider

- (NCNotificationManagementStackSummarySuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate summarizationSuggestionManager:(id)manager
{
  requestCopy = request;
  nameCopy = name;
  managerCopy = manager;
  v23.receiver = self;
  v23.super_class = NCNotificationManagementStackSummarySuggestionContentProvider;
  v16 = [(NCNotificationManagementSuggestionContentProvider *)&v23 initWithNotificationRequest:requestCopy bundleDisplayName:nameCopy managementDelegate:delegate suggestionDelegate:suggestionDelegate];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_summarizationSuggestionManager, manager);
    objc_storeStrong(&v17->_notificationRequest, request);
    v18 = MEMORY[0x277CCACA8];
    v19 = NCUserNotificationsUIKitFrameworkBundle();
    v20 = [v19 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_STACK_SUMMARY_SUGGESTION" value:&stru_282FE84F8 table:0];
    nameCopy = [v18 stringWithFormat:v20, nameCopy];
    [(NCNotificationManagementSuggestionContentProvider *)v17 setAuxiliaryOptionsSummaryText:nameCopy];
  }

  return v17;
}

- (id)auxiliaryOptionActions
{
  v20[2] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_SUGGESTION_CONTINUE" value:&stru_282FE84F8 table:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__NCNotificationManagementStackSummarySuggestionContentProvider_auxiliaryOptionActions__block_invoke;
  v17[3] = &unk_27836F428;
  objc_copyWeak(&v18, &location);
  v5 = [v2 actionWithTitle:v4 image:0 identifier:@"notification-stack-summary-continue " handler:v17];

  v6 = MEMORY[0x277D750C8];
  v7 = NCUserNotificationsUIKitFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_SUGGESTION_TURN_OFF" value:&stru_282FE84F8 table:0];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __87__NCNotificationManagementStackSummarySuggestionContentProvider_auxiliaryOptionActions__block_invoke_2;
  v15 = &unk_27836F428;
  objc_copyWeak(&v16, &location);
  v9 = [v6 actionWithTitle:v8 image:0 identifier:@"notification-stack-summary-turnoff" handler:&v12];

  v20[0] = v9;
  v20[1] = v5;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:{2, v12, v13, v14, v15}];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v10;
}

void __87__NCNotificationManagementStackSummarySuggestionContentProvider_auxiliaryOptionActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *(WeakRetained + 6);
  v5 = [*(WeakRetained + 7) sectionIdentifier];
  [v4 recordEvent:4 bundleId:v5];

  v6 = [v3 sender];

  [WeakRetained handleContinueAction:v6];
}

void __87__NCNotificationManagementStackSummarySuggestionContentProvider_auxiliaryOptionActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *(WeakRetained + 6);
  v5 = [*(WeakRetained + 7) sectionIdentifier];
  [v4 recordEvent:5 bundleId:v5];

  v6 = [v3 sender];

  [WeakRetained handleOffAction:v6];
}

- (void)handleContinueAction:(id)action
{
  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest];
}

- (void)handleOffAction:(id)action
{
  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  currentNotificationSettingsCenter = [MEMORY[0x277D77F68] currentNotificationSettingsCenter];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  sectionIdentifier = [notificationRequest sectionIdentifier];
  v7 = [currentNotificationSettingsCenter sourceWithIdentifier:sectionIdentifier];

  sourceSettings = [v7 sourceSettings];
  notificationSettings = [sourceSettings notificationSettings];
  v10 = [notificationSettings mutableCopy];

  [v10 setSummarizationSetting:1];
  notificationRequest2 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  sectionIdentifier2 = [notificationRequest2 sectionIdentifier];
  [currentNotificationSettingsCenter replaceNotificationSettings:v10 forNotificationSourceIdentifier:sectionIdentifier2];

  notificationRequest3 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest3];
}

@end