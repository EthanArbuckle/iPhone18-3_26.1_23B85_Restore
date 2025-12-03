@interface NCMutingRemoteSuggestionContentProvider
- (NCMutingRemoteSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate uuid:(id)uuid scope:(unint64_t)scope;
- (id)auxiliaryOptionActions;
- (void)handleAcceptAction:(id)action;
- (void)handleRejectAction:(id)action;
- (void)logSuggestionEvent:(int64_t)event;
@end

@implementation NCMutingRemoteSuggestionContentProvider

- (NCMutingRemoteSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate uuid:(id)uuid scope:(unint64_t)scope
{
  nameCopy = name;
  v26.receiver = self;
  v26.super_class = NCMutingRemoteSuggestionContentProvider;
  v15 = [(NCRemoteSuggestionContentProvider *)&v26 initWithNotificationRequest:request bundleDisplayName:nameCopy managementDelegate:delegate suggestionDelegate:suggestionDelegate uuid:uuid];
  v16 = v15;
  if (v15)
  {
    v15->_scope = scope;
    if (scope)
    {
      if (scope != 1)
      {
        v17 = @"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_EXPLANATION";
        nameCopy = &stru_282FE84F8;
        goto LABEL_10;
      }

      v17 = [@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_EXPLANATION" stringByAppendingString:@"_THREAD"];
      v18 = NCUserNotificationsUIKitFrameworkBundle();
      nameCopy = [v18 localizedStringForKey:v17 value:&stru_282FE84F8 table:0];
    }

    else
    {
      v17 = [@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_EXPLANATION" stringByAppendingString:@"_APP"];
      v20 = MEMORY[0x277CCACA8];
      v21 = NCUserNotificationsUIKitFrameworkBundle();
      v22 = [v21 localizedStringForKey:v17 value:&stru_282FE84F8 table:0];
      v25 = 0;
      nameCopy = [v20 stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@" error:&v25, nameCopy];
      v18 = v25;

      if (v18)
      {
        v23 = *MEMORY[0x277D77DD8];
        if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_FAULT))
        {
          [NCModeConfigurationRemoteSuggestionContentProvider(Testing) _localizedSummaryStringForSuggestionType:nameCopy configurationType:v23 scope:v18 semanticType:? modeName:? bundleDisplayName:? preferredSenderSummary:? localizedStringForKeyBlock:?];
        }
      }
    }

LABEL_10:
    [(NCNotificationManagementSuggestionContentProvider *)v16 setAuxiliaryOptionsSummaryText:nameCopy];
  }

  return v16;
}

- (id)auxiliaryOptionActions
{
  v20[2] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_NOT_NOW" value:&stru_282FE84F8 table:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__NCMutingRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke;
  v17[3] = &unk_27836F428;
  objc_copyWeak(&v18, &location);
  v5 = [v2 actionWithTitle:v4 image:0 identifier:@"notification-management-remote-muting-suggestion-reject" handler:v17];

  v6 = MEMORY[0x277D750C8];
  v7 = NCUserNotificationsUIKitFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"NOTIFICATION_REMOTE_MANAGEMENT_MUTING_SUGGESTION_MUTE" value:&stru_282FE84F8 table:0];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __65__NCMutingRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2;
  v15 = &unk_27836F428;
  objc_copyWeak(&v16, &location);
  v9 = [v6 actionWithTitle:v8 image:0 identifier:@"notification-management-remote-muting-suggestion-accept" handler:&v12];

  v20[0] = v5;
  v20[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:{2, v12, v13, v14, v15}];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v10;
}

void __65__NCMutingRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleRejectAction:v4];
}

void __65__NCMutingRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleAcceptAction:v4];
}

- (void)handleRejectAction:(id)action
{
  mEMORY[0x277CEB1B8] = [MEMORY[0x277CEB1B8] sharedInstance];
  uuid = [(NCRemoteSuggestionContentProvider *)self uuid];
  v6 = [MEMORY[0x277CBEAA8] now];
  [mEMORY[0x277CEB1B8] logSuggestionEvent:1 suggestionType:4 suggestionIdentifier:uuid timestamp:v6];

  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest];
}

- (void)handleAcceptAction:(id)action
{
  actionCopy = action;
  managementDelegate = [(NCNotificationManagementContentProvider *)self managementDelegate];
  scope = self->_scope;
  if (scope)
  {
    if (scope != 1)
    {
      goto LABEL_6;
    }

    v6 = 7;
  }

  else
  {
    v6 = 6;
  }

  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [managementDelegate notificationManagementContentProvider:self requestsPresentingNotificationManagementViewType:v6 forNotificationRequest:notificationRequest withPresentingView:actionCopy];

LABEL_6:
}

- (void)logSuggestionEvent:(int64_t)event
{
  mEMORY[0x277CEB1B8] = [MEMORY[0x277CEB1B8] sharedInstance];
  uuid = [(NCRemoteSuggestionContentProvider *)self uuid];
  v6 = [MEMORY[0x277CBEAA8] now];
  [mEMORY[0x277CEB1B8] logSuggestionEvent:event suggestionType:4 suggestionIdentifier:uuid timestamp:v6];
}

@end