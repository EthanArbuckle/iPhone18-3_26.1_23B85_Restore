@interface NCModeConfigurationRemoteSuggestionContentProvider
+ (id)_localizedSummaryStringForSuggestionType:(unint64_t)a3 configurationType:(unint64_t)a4 scope:(unint64_t)a5 semanticType:(int64_t)a6 modeName:(id)a7 bundleDisplayName:(id)a8 preferredSenderSummary:(id)a9 localizedStringForKeyBlock:(id)a10;
- (NCModeConfigurationRemoteSuggestionContentProvider)initWithNotificationRequest:(id)a3 bundleDisplayName:(id)a4 managementDelegate:(id)a5 suggestionDelegate:(id)a6 uuid:(id)a7 suggestionType:(unint64_t)a8 scope:(unint64_t)a9 modeConfiguration:(id)a10;
- (id)auxiliaryOptionActions;
- (void)auxiliaryOptionActions;
- (void)handleAcceptAction:(id)a3;
- (void)handleRejectAction:(id)a3;
@end

@implementation NCModeConfigurationRemoteSuggestionContentProvider

- (NCModeConfigurationRemoteSuggestionContentProvider)initWithNotificationRequest:(id)a3 bundleDisplayName:(id)a4 managementDelegate:(id)a5 suggestionDelegate:(id)a6 uuid:(id)a7 suggestionType:(unint64_t)a8 scope:(unint64_t)a9 modeConfiguration:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a10;
  v35.receiver = self;
  v35.super_class = NCModeConfigurationRemoteSuggestionContentProvider;
  v19 = [(NCRemoteSuggestionContentProvider *)&v35 initWithNotificationRequest:v16 bundleDisplayName:v17 managementDelegate:a5 suggestionDelegate:a6 uuid:a7];
  v20 = v19;
  if (v19)
  {
    v34 = a8;
    v19->_suggestionType = a8;
    objc_storeStrong(&v19->_modeConfiguration, a10);
    v20->_scope = a9;
    v21 = [(DNDModeConfiguration *)v20->_modeConfiguration configuration];
    v22 = v21;
    if (a9)
    {
      v23 = [v21 senderConfigurationType];
    }

    else
    {
      v23 = [v21 applicationConfigurationType];
    }

    v33 = v23;

    v24 = [v18 mode];
    v25 = [v24 name];

    v26 = [v18 mode];
    v27 = [v26 semanticType];

    v28 = [v16 content];
    v29 = [v28 communicationContext];
    v30 = [v29 preferredSenderSummary];

    v31 = [objc_opt_class() _localizedSummaryStringForSuggestionType:v34 configurationType:v33 scope:a9 semanticType:v27 modeName:v25 bundleDisplayName:v17 preferredSenderSummary:v30 localizedStringForKeyBlock:&__block_literal_global_22];
    [(NCNotificationManagementSuggestionContentProvider *)v20 setAuxiliaryOptionsSummaryText:v31];
  }

  return v20;
}

id __182__NCModeConfigurationRemoteSuggestionContentProvider_initWithNotificationRequest_bundleDisplayName_managementDelegate_suggestionDelegate_uuid_suggestionType_scope_modeConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:v2 value:&stru_282FE84F8 table:0];

  return v4;
}

- (id)auxiliaryOptionActions
{
  v32[2] = *MEMORY[0x277D85DE8];
  suggestionType = self->_suggestionType;
  if (suggestionType == 1)
  {
    v8 = [&stru_282FE84F8 stringByAppendingString:@"_REMOVE"];
LABEL_6:
    v9 = v8;
    goto LABEL_16;
  }

  if (!suggestionType)
  {
    v4 = self->_scope == 0;
    v5 = [(DNDModeConfiguration *)self->_modeConfiguration configuration];
    v6 = v5;
    if (v4)
    {
      v7 = [v5 applicationConfigurationType];
    }

    else
    {
      v7 = [v5 senderConfigurationType];
    }

    v10 = v7;

    switch(v10)
    {
      case 2:
        v11 = *MEMORY[0x277D77DD8];
        if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_FAULT))
        {
          [(NCModeConfigurationRemoteSuggestionContentProvider *)v11 auxiliaryOptionActions];
        }

        break;
      case 1:
        v8 = [&stru_282FE84F8 stringByAppendingString:@"_SILENCE"];
        goto LABEL_6;
      case 0:
        v8 = [&stru_282FE84F8 stringByAppendingString:@"_ALLOW"];
        goto LABEL_6;
    }
  }

  v9 = &stru_282FE84F8;
LABEL_16:
  objc_initWeak(&location, self);
  v12 = [@"NOTIFICATION_REMOTE_MANAGEMENT_SUGGESTION_DONT" stringByAppendingString:v9];
  v13 = MEMORY[0x277D750C8];
  v14 = NCUserNotificationsUIKitFrameworkBundle();
  v15 = [v14 localizedStringForKey:v12 value:&stru_282FE84F8 table:0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __76__NCModeConfigurationRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke;
  v29[3] = &unk_27836F428;
  objc_copyWeak(&v30, &location);
  v16 = [v13 actionWithTitle:v15 image:0 identifier:@"notification-management-remote-configure-suggestion-reject" handler:v29];

  v17 = [@"NOTIFICATION_REMOTE_MANAGEMENT_SUGGESTION" stringByAppendingString:v9];
  v18 = MEMORY[0x277D750C8];
  v19 = NCUserNotificationsUIKitFrameworkBundle();
  v20 = [v19 localizedStringForKey:v17 value:&stru_282FE84F8 table:0];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __76__NCModeConfigurationRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2;
  v27 = &unk_27836F428;
  objc_copyWeak(&v28, &location);
  v21 = [v18 actionWithTitle:v20 image:0 identifier:@"notification-management-remote-configure-suggestion-accept" handler:&v24];

  v32[0] = v16;
  v32[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:{2, v24, v25, v26, v27}];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);

  objc_destroyWeak(&location);

  return v22;
}

void __76__NCModeConfigurationRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleRejectAction:v4];
}

void __76__NCModeConfigurationRemoteSuggestionContentProvider_auxiliaryOptionActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleAcceptAction:v4];
}

- (void)handleRejectAction:(id)a3
{
  v4 = [MEMORY[0x277CEB1B8] sharedInstance];
  v5 = [(NCRemoteSuggestionContentProvider *)self uuid];
  v6 = [MEMORY[0x277CBEAA8] now];
  [v4 logSuggestionEvent:1 suggestionType:5 suggestionIdentifier:v5 timestamp:v6];

  v8 = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  v7 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [v8 notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:v7];
}

- (void)handleAcceptAction:(id)a3
{
  v19 = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  v4 = [(DNDModeConfiguration *)self->_modeConfiguration mutableCopy];
  v5 = [v4 configuration];
  v6 = [v5 mutableCopy];

  suggestionType = self->_suggestionType;
  if (!suggestionType)
  {
    if (self->_scope)
    {
      [v6 senderConfigurationType];
    }

    else
    {
      [v6 applicationConfigurationType];
    }
  }

  scope = self->_scope;
  if (scope == 2)
  {
    v11 = [(NCNotificationManagementContentProvider *)self notificationRequest];
    v12 = [v11 content];
    v13 = [v12 communicationContext];
    v14 = [v13 sender];
    v9 = [v14 cnContactIdentifier];

    v10 = [objc_alloc(MEMORY[0x277D058F0]) initWithContactIdentifier:v9];
    if (suggestionType)
    {
      [v6 removeExceptionForContact:v10];
    }

    else
    {
      [v6 setExceptionForContact:v10];
    }
  }

  else
  {
    if (scope)
    {
      goto LABEL_14;
    }

    v9 = [(NCNotificationManagementContentProvider *)self notificationRequest];
    v10 = [v9 sectionIdentifier];
    if (suggestionType)
    {
      [v6 removeExceptionForApplication:v10];
    }

    else
    {
      [v6 setExceptionForApplication:v10];
    }
  }

LABEL_14:
  [v4 setConfiguration:v6];
  [v19 notificationManagementContentProvider:self setModeConfiguration:v4];
  v15 = [MEMORY[0x277CEB1B8] sharedInstance];
  v16 = [(NCRemoteSuggestionContentProvider *)self uuid];
  v17 = [MEMORY[0x277CBEAA8] now];
  [v15 logSuggestionEvent:2 suggestionType:5 suggestionIdentifier:v16 timestamp:v17];

  v18 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [v19 notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:v18];
}

+ (id)_localizedSummaryStringForSuggestionType:(unint64_t)a3 configurationType:(unint64_t)a4 scope:(unint64_t)a5 semanticType:(int64_t)a6 modeName:(id)a7 bundleDisplayName:(id)a8 preferredSenderSummary:(id)a9 localizedStringForKeyBlock:(id)a10
{
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  if (a3 == 1)
  {
    v20 = *MEMORY[0x277D77DD8];
    if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_FAULT))
    {
      [NCModeConfigurationRemoteSuggestionContentProvider(Testing) _localizedSummaryStringForSuggestionType:v20 configurationType:a4 scope:a5 semanticType:? modeName:? bundleDisplayName:? preferredSenderSummary:? localizedStringForKeyBlock:?];
    }

    goto LABEL_9;
  }

  if (a3)
  {
LABEL_9:
    v21 = @"NOTIFICATION_REMOTE_MANAGEMENT_MODE_CONFIGURATION_SUGGESTION";
    goto LABEL_10;
  }

  if (a4 != 2)
  {
    if (a4 == 1)
    {
      v19 = @"_SILENCE";
      goto LABEL_53;
    }

    if (!a4)
    {
      v19 = @"_ALLOW";
LABEL_53:
      v21 = [@"NOTIFICATION_REMOTE_MANAGEMENT_MODE_CONFIGURATION_SUGGESTION" stringByAppendingString:v19];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v35 = *MEMORY[0x277D77DD8];
  if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_FAULT))
  {
    [NCModeConfigurationRemoteSuggestionContentProvider(Testing) _localizedSummaryStringForSuggestionType:v35 configurationType:a5 scope:? semanticType:? modeName:? bundleDisplayName:? preferredSenderSummary:? localizedStringForKeyBlock:?];
  }

  v21 = 0;
LABEL_10:
  switch(a5)
  {
    case 0uLL:
      v24 = [(__CFString *)v21 stringByAppendingString:@"_APP"];

      v25 = v16;
      goto LABEL_19;
    case 2uLL:
      v24 = [(__CFString *)v21 stringByAppendingString:@"_CONTACT"];

      v25 = v17;
LABEL_19:
      v23 = v25;
      v21 = v24;
      goto LABEL_20;
    case 1uLL:
      v22 = *MEMORY[0x277D77DD8];
      if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_FAULT))
      {
        [NCModeConfigurationRemoteSuggestionContentProvider(Testing) _localizedSummaryStringForSuggestionType:v22 configurationType:a4 scope:? semanticType:? modeName:? bundleDisplayName:? preferredSenderSummary:? localizedStringForKeyBlock:?];
      }

      v21 = 0;
      break;
  }

  v23 = &stru_282FE84F8;
LABEL_20:
  if (a6 <= 3)
  {
    if (a6 <= 1)
    {
      if (!a6)
      {
        v26 = 0;
        v27 = @"_DO_NOT_DISTURB";
        goto LABEL_40;
      }

      if (a6 == 1)
      {
        v26 = 0;
        v27 = @"_SLEEP";
        goto LABEL_40;
      }

LABEL_39:
      v26 = 1;
      v27 = @"_CUSTOM";
      goto LABEL_40;
    }

    v26 = 0;
    if (a6 == 2)
    {
      v27 = @"_DRIVING";
    }

    else
    {
      v27 = @"_FITNESS";
    }
  }

  else
  {
    if (a6 > 5)
    {
      switch(a6)
      {
        case 6:
          v26 = 0;
          v27 = @"_READING";
          goto LABEL_40;
        case 7:
          v26 = 0;
          v27 = @"_GAMING";
          goto LABEL_40;
        case 8:
          v26 = 0;
          v27 = @"_MINDFULNESS";
          goto LABEL_40;
      }

      goto LABEL_39;
    }

    v26 = 0;
    if (a6 == 4)
    {
      v27 = @"_WORK";
    }

    else
    {
      v27 = @"_PERSONAL";
    }
  }

LABEL_40:
  v28 = [(__CFString *)v21 stringByAppendingString:v27];

  if (v28)
  {
    v29 = v18[2](v18, v28);
    if (v26)
    {
      v30 = &v38;
      [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v29 validFormatSpecifiers:@"%@%@" error:&v38, v23, v15, v37, 0];
    }

    else
    {
      v30 = &v37;
      [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v29 validFormatSpecifiers:@"%@" error:&v37, v23, v36, 0, v38];
    }
    v31 = ;
    v32 = *v30;

    if (v32)
    {
      v33 = *MEMORY[0x277D77DD8];
      if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_FAULT))
      {
        [NCModeConfigurationRemoteSuggestionContentProvider(Testing) _localizedSummaryStringForSuggestionType:v28 configurationType:v33 scope:v32 semanticType:? modeName:? bundleDisplayName:? preferredSenderSummary:? localizedStringForKeyBlock:?];
      }
    }
  }

  else
  {
    v31 = &stru_282FE84F8;
  }

  return v31;
}

- (void)auxiliaryOptionActions
{
  v5 = OUTLINED_FUNCTION_2_1(a1);
  v6 = [v2 numberWithUnsignedInteger:2];
  v7 = [*(v3 + 2992) numberWithUnsignedInteger:*a2];
  OUTLINED_FUNCTION_0_5();
  _os_log_fault_impl(&dword_21E77E000, v5, OS_LOG_TYPE_FAULT, "Received unexpected notification management suggestion for mode configuration with configuration type %@ for scope %@", v8, 0x16u);
}

@end