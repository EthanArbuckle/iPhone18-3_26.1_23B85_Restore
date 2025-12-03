@interface NCModeConfigurationRemoteSuggestionContentProvider
+ (id)_localizedSummaryStringForSuggestionType:(unint64_t)type configurationType:(unint64_t)configurationType scope:(unint64_t)scope semanticType:(int64_t)semanticType modeName:(id)name bundleDisplayName:(id)displayName preferredSenderSummary:(id)summary localizedStringForKeyBlock:(id)self0;
- (NCModeConfigurationRemoteSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate uuid:(id)uuid suggestionType:(unint64_t)type scope:(unint64_t)scope modeConfiguration:(id)self0;
- (id)auxiliaryOptionActions;
- (void)auxiliaryOptionActions;
- (void)handleAcceptAction:(id)action;
- (void)handleRejectAction:(id)action;
@end

@implementation NCModeConfigurationRemoteSuggestionContentProvider

- (NCModeConfigurationRemoteSuggestionContentProvider)initWithNotificationRequest:(id)request bundleDisplayName:(id)name managementDelegate:(id)delegate suggestionDelegate:(id)suggestionDelegate uuid:(id)uuid suggestionType:(unint64_t)type scope:(unint64_t)scope modeConfiguration:(id)self0
{
  requestCopy = request;
  nameCopy = name;
  configurationCopy = configuration;
  v35.receiver = self;
  v35.super_class = NCModeConfigurationRemoteSuggestionContentProvider;
  v19 = [(NCRemoteSuggestionContentProvider *)&v35 initWithNotificationRequest:requestCopy bundleDisplayName:nameCopy managementDelegate:delegate suggestionDelegate:suggestionDelegate uuid:uuid];
  v20 = v19;
  if (v19)
  {
    typeCopy = type;
    v19->_suggestionType = type;
    objc_storeStrong(&v19->_modeConfiguration, configuration);
    v20->_scope = scope;
    configuration = [(DNDModeConfiguration *)v20->_modeConfiguration configuration];
    v22 = configuration;
    if (scope)
    {
      senderConfigurationType = [configuration senderConfigurationType];
    }

    else
    {
      senderConfigurationType = [configuration applicationConfigurationType];
    }

    v33 = senderConfigurationType;

    mode = [configurationCopy mode];
    name = [mode name];

    mode2 = [configurationCopy mode];
    semanticType = [mode2 semanticType];

    content = [requestCopy content];
    communicationContext = [content communicationContext];
    preferredSenderSummary = [communicationContext preferredSenderSummary];

    v31 = [objc_opt_class() _localizedSummaryStringForSuggestionType:typeCopy configurationType:v33 scope:scope semanticType:semanticType modeName:name bundleDisplayName:nameCopy preferredSenderSummary:preferredSenderSummary localizedStringForKeyBlock:&__block_literal_global_22];
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
    configuration = [(DNDModeConfiguration *)self->_modeConfiguration configuration];
    v6 = configuration;
    if (v4)
    {
      applicationConfigurationType = [configuration applicationConfigurationType];
    }

    else
    {
      applicationConfigurationType = [configuration senderConfigurationType];
    }

    v10 = applicationConfigurationType;

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

- (void)handleRejectAction:(id)action
{
  mEMORY[0x277CEB1B8] = [MEMORY[0x277CEB1B8] sharedInstance];
  uuid = [(NCRemoteSuggestionContentProvider *)self uuid];
  v6 = [MEMORY[0x277CBEAA8] now];
  [mEMORY[0x277CEB1B8] logSuggestionEvent:1 suggestionType:5 suggestionIdentifier:uuid timestamp:v6];

  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest];
}

- (void)handleAcceptAction:(id)action
{
  suggestionDelegate = [(NCNotificationManagementSuggestionContentProvider *)self suggestionDelegate];
  v4 = [(DNDModeConfiguration *)self->_modeConfiguration mutableCopy];
  configuration = [v4 configuration];
  v6 = [configuration mutableCopy];

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
    notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
    content = [notificationRequest content];
    communicationContext = [content communicationContext];
    sender = [communicationContext sender];
    cnContactIdentifier = [sender cnContactIdentifier];

    sectionIdentifier = [objc_alloc(MEMORY[0x277D058F0]) initWithContactIdentifier:cnContactIdentifier];
    if (suggestionType)
    {
      [v6 removeExceptionForContact:sectionIdentifier];
    }

    else
    {
      [v6 setExceptionForContact:sectionIdentifier];
    }
  }

  else
  {
    if (scope)
    {
      goto LABEL_14;
    }

    cnContactIdentifier = [(NCNotificationManagementContentProvider *)self notificationRequest];
    sectionIdentifier = [cnContactIdentifier sectionIdentifier];
    if (suggestionType)
    {
      [v6 removeExceptionForApplication:sectionIdentifier];
    }

    else
    {
      [v6 setExceptionForApplication:sectionIdentifier];
    }
  }

LABEL_14:
  [v4 setConfiguration:v6];
  [suggestionDelegate notificationManagementContentProvider:self setModeConfiguration:v4];
  mEMORY[0x277CEB1B8] = [MEMORY[0x277CEB1B8] sharedInstance];
  uuid = [(NCRemoteSuggestionContentProvider *)self uuid];
  v17 = [MEMORY[0x277CBEAA8] now];
  [mEMORY[0x277CEB1B8] logSuggestionEvent:2 suggestionType:5 suggestionIdentifier:uuid timestamp:v17];

  notificationRequest2 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [suggestionDelegate notificationManagementContentProvider:self requestsRemoveSuggestionForRequest:notificationRequest2];
}

+ (id)_localizedSummaryStringForSuggestionType:(unint64_t)type configurationType:(unint64_t)configurationType scope:(unint64_t)scope semanticType:(int64_t)semanticType modeName:(id)name bundleDisplayName:(id)displayName preferredSenderSummary:(id)summary localizedStringForKeyBlock:(id)self0
{
  nameCopy = name;
  displayNameCopy = displayName;
  summaryCopy = summary;
  blockCopy = block;
  if (type == 1)
  {
    v20 = *MEMORY[0x277D77DD8];
    if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_FAULT))
    {
      [NCModeConfigurationRemoteSuggestionContentProvider(Testing) _localizedSummaryStringForSuggestionType:v20 configurationType:configurationType scope:scope semanticType:? modeName:? bundleDisplayName:? preferredSenderSummary:? localizedStringForKeyBlock:?];
    }

    goto LABEL_9;
  }

  if (type)
  {
LABEL_9:
    v21 = @"NOTIFICATION_REMOTE_MANAGEMENT_MODE_CONFIGURATION_SUGGESTION";
    goto LABEL_10;
  }

  if (configurationType != 2)
  {
    if (configurationType == 1)
    {
      v19 = @"_SILENCE";
      goto LABEL_53;
    }

    if (!configurationType)
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
    [NCModeConfigurationRemoteSuggestionContentProvider(Testing) _localizedSummaryStringForSuggestionType:v35 configurationType:scope scope:? semanticType:? modeName:? bundleDisplayName:? preferredSenderSummary:? localizedStringForKeyBlock:?];
  }

  v21 = 0;
LABEL_10:
  switch(scope)
  {
    case 0uLL:
      v24 = [(__CFString *)v21 stringByAppendingString:@"_APP"];

      v25 = displayNameCopy;
      goto LABEL_19;
    case 2uLL:
      v24 = [(__CFString *)v21 stringByAppendingString:@"_CONTACT"];

      v25 = summaryCopy;
LABEL_19:
      v23 = v25;
      v21 = v24;
      goto LABEL_20;
    case 1uLL:
      v22 = *MEMORY[0x277D77DD8];
      if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_FAULT))
      {
        [NCModeConfigurationRemoteSuggestionContentProvider(Testing) _localizedSummaryStringForSuggestionType:v22 configurationType:configurationType scope:? semanticType:? modeName:? bundleDisplayName:? preferredSenderSummary:? localizedStringForKeyBlock:?];
      }

      v21 = 0;
      break;
  }

  v23 = &stru_282FE84F8;
LABEL_20:
  if (semanticType <= 3)
  {
    if (semanticType <= 1)
    {
      if (!semanticType)
      {
        v26 = 0;
        v27 = @"_DO_NOT_DISTURB";
        goto LABEL_40;
      }

      if (semanticType == 1)
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
    if (semanticType == 2)
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
    if (semanticType > 5)
    {
      switch(semanticType)
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
    if (semanticType == 4)
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
    v29 = blockCopy[2](blockCopy, v28);
    if (v26)
    {
      v30 = &v38;
      [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v29 validFormatSpecifiers:@"%@%@" error:&v38, v23, nameCopy, v37, 0];
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
  v5 = OUTLINED_FUNCTION_2_1(self);
  v6 = [v2 numberWithUnsignedInteger:2];
  v7 = [*(v3 + 2992) numberWithUnsignedInteger:*a2];
  OUTLINED_FUNCTION_0_5();
  _os_log_fault_impl(&dword_21E77E000, v5, OS_LOG_TYPE_FAULT, "Received unexpected notification management suggestion for mode configuration with configuration type %@ for scope %@", v8, 0x16u);
}

@end