@interface NCNotificationManagementPriorityFeedbackSuggestionContentProvider
- (NCNotificationManagementPriorityFeedbackSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate;
- (id)auxiliaryOptionActions;
- (void)handleNegativeAction:(id)action;
- (void)handlePositiveAction:(id)action;
@end

@implementation NCNotificationManagementPriorityFeedbackSuggestionContentProvider

- (NCNotificationManagementPriorityFeedbackSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = NCNotificationManagementPriorityFeedbackSuggestionContentProvider;
  v11 = [(NCNotificationManagementSuggestionContentProvider *)&v17 initWithNotificationRequest:request bundleDisplayName:nameCopy managementDelegate:delegate suggestionDelegate:suggestionDelegate];
  if (v11)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = NCUserNotificationsUIKitFrameworkBundle();
    v14 = [v13 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_PRIORITY_FEEDBACK_SUGGESTION" value:&stru_282FE84F8 table:0];
    nameCopy = [v12 stringWithFormat:v14, nameCopy, nameCopy];
    [(NCNotificationManagementSuggestionContentProvider *)v11 setAuxiliaryOptionsSummaryText:nameCopy];
  }

  return v11;
}

- (id)auxiliaryOptionActions
{
  v20[2] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_PRIORITY_FEEDBACK_SUGGESTION_YES" value:&stru_282FE84F8 table:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__NCNotificationManagementPriorityFeedbackSuggestionContentProvider_auxiliaryOptionActions__block_invoke;
  v17[3] = &unk_27836F428;
  objc_copyWeak(&v18, &location);
  v5 = [v2 actionWithTitle:v4 image:0 identifier:@"notification-management-priority-feedback-suggestion-positive" handler:v17];

  v6 = MEMORY[0x277D750C8];
  v7 = NCUserNotificationsUIKitFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_PRIORITY_FEEDBACK_SUGGESTION_NO" value:&stru_282FE84F8 table:0];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __91__NCNotificationManagementPriorityFeedbackSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2;
  v15 = &unk_27836F428;
  objc_copyWeak(&v16, &location);
  v9 = [v6 actionWithTitle:v8 image:0 identifier:@"notification-management-priority-feedback-suggestion-negative" handler:&v12];

  v20[0] = v5;
  v20[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:{2, v12, v13, v14, v15}];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v10;
}

void __91__NCNotificationManagementPriorityFeedbackSuggestionContentProvider_auxiliaryOptionActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handlePositiveAction:v4];
}

void __91__NCNotificationManagementPriorityFeedbackSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleNegativeAction:v4];
}

- (void)handlePositiveAction:(id)action
{
  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  v4 = [NCSummarizationFeedbackManager alloc];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  v6 = [(NCSummarizationFeedbackManager *)v4 initWithRequest:notificationRequest isShowingStackSummary:0];
  [(NCSummarizationFeedbackManager *)v6 recordInternalPriorityFeedbackEvent:4];

  v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.proactive.PersonalizationPortrait"];
  [v7 setInteger:0 forKey:@"PriorityFeedbackSuggestionIgnoreCount"];

  notificationRequest2 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest2];
}

- (void)handleNegativeAction:(id)action
{
  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  v4 = [NCSummarizationFeedbackManager alloc];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  v6 = [(NCSummarizationFeedbackManager *)v4 initWithRequest:notificationRequest isShowingStackSummary:0];
  [(NCSummarizationFeedbackManager *)v6 recordInternalPriorityFeedbackEvent:5];

  v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.proactive.PersonalizationPortrait"];
  [v7 setInteger:0 forKey:@"PriorityFeedbackSuggestionIgnoreCount"];

  notificationRequest2 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest2];
}

@end