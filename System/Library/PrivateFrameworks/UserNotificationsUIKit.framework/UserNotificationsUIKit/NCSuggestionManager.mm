@interface NCSuggestionManager
- (BOOL)_addSuggestionForNotificationRequest:(id)request managementContentProvider:(id)provider;
- (BOOL)_createContactMatchingSuggestionIfNeededForRequest:(id)request sectionSettings:(id)settings;
- (BOOL)_createDirectMessagesSuggestionIfNeededForNotificationRequest:(id)request sectionSettings:(id)settings;
- (BOOL)_createNewStackSummarySuggestionForNotificationRequest:(id)request sectionSettings:(id)settings;
- (BOOL)_createPriorityFeedbackSuggestionIfNeededForRequest:(id)request sectionSettings:(id)settings;
- (BOOL)_createProvisionalAuthorizationSuggestionIfNeededForRequest:(id)request sectionSettings:(id)settings;
- (BOOL)_createRemoteSuggestionIfNeededForRequest:(id)request remoteSuggestion:(id)suggestion;
- (BOOL)_createStackSummarySuggestionIfNeededForRequest:(id)request sectionSettings:(id)settings;
- (BOOL)_createTimeSensitiveSuggestionIfNeededForNotificationRequest:(id)request sectionSettings:(id)settings;
- (NCSuggestionManager)init;
- (NCSuggestionManagerDelegate)delegate;
- (id)_contentProviderForRequest:(id)request withDigestSuggestion:(id)suggestion;
- (id)_contentProviderForRequest:(id)request withModeConfigurationTuningSuggestion:(id)suggestion;
- (id)_contentProviderForRequest:(id)request withMutingSuggestion:(id)suggestion;
- (id)_contentProviderForRequest:(id)request withRemoteSuggestion:(id)suggestion;
- (id)_contentProviderForRequest:(id)request withSendMessagesToDigestSuggestion:(id)suggestion;
- (id)_contentProviderForRequest:(id)request withTurnOffNotificationsForAppSuggestion:(id)suggestion;
- (id)_contentProviderForRequest:(id)request withUrgencyTuningSuggestion:(id)suggestion;
- (id)_sectionSettingsForSectionIdentifier:(id)identifier;
- (id)auxiliaryOptionsContentProviderForNotificationRequest:(id)request isLongLook:(BOOL)look;
- (id)requestMatchingRequest:(id)request inSet:(id)set;
- (void)_createNewCuratedContactMatchSuggestionForNotificationRequest:(id)request sectionSettings:(id)settings contactName:(id)name;
- (void)_createNewDirectMessagesInDigestSuggestionForNotificationRequest:(id)request sectionSettings:(id)settings;
- (void)_createNewPriorityFeedbackSuggestionForNotificationRequest:(id)request sectionSettings:(id)settings;
- (void)_createNewPromotingSuggestionForNotificationRequest:(id)request sectionSettings:(id)settings;
- (void)_createNewTimeSensitiveInDigestSuggestionForNotificationRequest:(id)request sectionSettings:(id)settings;
- (void)_createNewTimeSensitiveSuggestionForNotificationRequest:(id)request sectionSettings:(id)settings;
- (void)_reloadSuggestionForNotificationRequest:(id)request sectionSettings:(id)settings;
- (void)_removeSuggestionIfNecessaryForNotificationRequest:(id)request;
- (void)_updateContentForNotificationRequest:(id)request;
- (void)checkSuggestionNeededForNotificationRequest:(id)request withHighlightsListCount:(unint64_t)count;
- (void)clearSuggestionForNotificationRequest:(id)request;
- (void)logResponseForNotificationRequest:(id)request allowsNotifications:(BOOL)notifications;
- (void)logResponseForNotificationRequest:(id)request allowsTimeSensitive:(BOOL)sensitive;
- (void)logResponseForNotificationRequest:(id)request muted:(BOOL)muted;
- (void)logResponseForNotificationRequest:(id)request scheduledDelivery:(BOOL)delivery;
- (void)notificationManagementContentProvider:(id)provider requestsPresentingNotificationManagementViewType:(unint64_t)type forNotificationRequest:(id)request withPresentingView:(id)view;
- (void)notificationManagementContentProvider:(id)provider setAllowsDirectMessages:(BOOL)messages forSectionIdentifier:(id)identifier;
- (void)notificationManagementContentProvider:(id)provider setAllowsTimeSensitive:(BOOL)sensitive forSectionIdentifier:(id)identifier;
- (void)notificationManagementContentProvider:(id)provider setCuratedContactSuggestionConfirmed:(BOOL)confirmed request:(id)request;
- (void)notificationManagementContentProvider:(id)provider setModeConfiguration:(id)configuration;
- (void)notificationManagementContentProvider:(id)provider setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier;
- (void)notificationManagementContentProvider:(id)provider setScheduledDelivery:(BOOL)delivery forSectionIdentifier:(id)identifier;
- (void)reloadContactSuggestions;
- (void)reloadRemoteSuggestions;
- (void)requestStackSummarySuggestionVisible:(BOOL)visible forRequest:(id)request;
- (void)setDeviceAuthenticated:(BOOL)authenticated;
- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings;
@end

@implementation NCSuggestionManager

- (NCSuggestionManager)init
{
  v18.receiver = self;
  v18.super_class = NCSuggestionManager;
  v2 = [(NCSuggestionManager *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    suggestionContentProviders = v2->_suggestionContentProviders;
    v2->_suggestionContentProviders = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    sectionIdentifiersWithNotificationManagementSuggestions = v2->_sectionIdentifiersWithNotificationManagementSuggestions;
    v2->_sectionIdentifiersWithNotificationManagementSuggestions = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    requestsWithRemoteSuggestions = v2->_requestsWithRemoteSuggestions;
    v2->_requestsWithRemoteSuggestions = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    requestsWithContactSuggestions = v2->_requestsWithContactSuggestions;
    v2->_requestsWithContactSuggestions = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    requestsWithStackSummarySuggestions = v2->_requestsWithStackSummarySuggestions;
    v2->_requestsWithStackSummarySuggestions = v11;

    v13 = [objc_alloc(MEMORY[0x277D77E78]) initWithIgnore:1];
    summarizationSuggestionManager = v2->_summarizationSuggestionManager;
    v2->_summarizationSuggestionManager = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    remoteSuggestions = v2->_remoteSuggestions;
    v2->_remoteSuggestions = v15;

    v2->_highlightsListCount = 0;
  }

  return v2;
}

- (void)reloadRemoteSuggestions
{
  v3 = *MEMORY[0x277D77DD8];
  if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_21E77E000, v3, OS_LOG_TYPE_DEFAULT, "Notification Suggestion Manager reloading remote suggestions", buf, 2u);
  }

  mEMORY[0x277CEB1B8] = [MEMORY[0x277CEB1B8] sharedInstance];
  objc_initWeak(buf, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NCSuggestionManager_reloadRemoteSuggestions__block_invoke;
  v6[3] = &unk_278371D88;
  objc_copyWeak(&v9, buf);
  v5 = mEMORY[0x277CEB1B8];
  v7 = v5;
  selfCopy = self;
  [v5 activeSuggestionsWithReply:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __46__NCSuggestionManager_reloadRemoteSuggestions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6)
  {
    v49 = v6;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v12 = [WeakRetained remoteSuggestions];
    v13 = [v12 allKeys];

    obj = v13;
    v14 = [v13 countByEnumeratingWithState:&v61 objects:v67 count:16];
    v50 = v5;
    if (v14)
    {
      v15 = v14;
      v16 = *v62;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v62 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v61 + 1) + 8 * i);
          v19 = [WeakRetained remoteSuggestions];
          v20 = [v19 objectForKey:v18];

          if (([v5 containsObject:v20] & 1) == 0)
          {
            v21 = *(a1 + 32);
            v22 = [v20 subtype];
            v23 = [v20 uuid];
            v24 = [MEMORY[0x277CBEAA8] now];
            v25 = v22;
            v5 = v50;
            [v21 logSuggestionEvent:6 suggestionType:v25 suggestionIdentifier:v23 timestamp:v24];
          }
        }

        v15 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
      }

      while (v15);
    }

    v26 = [WeakRetained requestsWithRemoteSuggestions];
    v27 = [v26 copy];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v58;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v58 != v31)
          {
            objc_enumerationMutation(v28);
          }

          [WeakRetained _removeSuggestionIfNecessaryForNotificationRequest:*(*(&v57 + 1) + 8 * j)];
        }

        v30 = [v28 countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v30);
    }

    v48 = v28;

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obja = v5;
    v33 = [obja countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v54;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v54 != v35)
          {
            objc_enumerationMutation(obja);
          }

          v37 = *(*(&v53 + 1) + 8 * k);
          v38 = [v37 triggerNotificationUUID];
          if (!v38 || ([WeakRetained delegate], v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "suggestionManager:notificationRequestForUUID:", WeakRetained, v38), v40 = objc_claimAutoreleasedReturnValue(), v39, !v40) || (v41 = objc_msgSend(*(a1 + 40), "_createRemoteSuggestionIfNeededForRequest:remoteSuggestion:", v40, v37), v40, (v41 & 1) == 0))
          {
            v42 = *(a1 + 32);
            v43 = [v37 subtype];
            v44 = [v37 uuid];
            v45 = [MEMORY[0x277CBEAA8] now];
            [v42 logSuggestionEvent:8 suggestionType:v43 suggestionIdentifier:v44 timestamp:v45];
          }
        }

        v34 = [obja countByEnumeratingWithState:&v53 objects:v65 count:16];
      }

      while (v34);
    }

    v7 = v49;
    v5 = v50;
  }

  else
  {
    v8 = [v6 domain];
    v9 = v8;
    if (v8 != *MEMORY[0x277CEB1A8])
    {

      goto LABEL_5;
    }

    if ([v7 code] == 1)
    {
    }

    else
    {
      v46 = [v7 code];

      if (v46 != 2)
      {
LABEL_5:
        v10 = *MEMORY[0x277D77DD8];
        if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_ERROR))
        {
          __46__NCSuggestionManager_reloadRemoteSuggestions__block_invoke_cold_1(v7, v10);
        }

        goto LABEL_40;
      }
    }

    v47 = *MEMORY[0x277D77DD8];
    if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_DEBUG))
    {
      __46__NCSuggestionManager_reloadRemoteSuggestions__block_invoke_cold_2(v7, v47);
    }
  }

LABEL_40:
}

- (void)reloadContactSuggestions
{
  v22 = *MEMORY[0x277D85DE8];
  requestsWithContactSuggestions = [(NCSuggestionManager *)self requestsWithContactSuggestions];
  v3 = [requestsWithContactSuggestions copy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        content = [v9 content];
        communicationContext = [content communicationContext];

        sender = [communicationContext sender];
        if (sender)
        {
          mEMORY[0x277D77F58] = [MEMORY[0x277D77F58] sharedInstance];
          topLevelSectionIdentifier = [v9 topLevelSectionIdentifier];
          v15 = [mEMORY[0x277D77F58] curatedContactMatchDetailsForContact:sender bundleIdentifier:topLevelSectionIdentifier];

          if (([v15 isSuggestedMatch] & 1) == 0)
          {
            [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (void)requestStackSummarySuggestionVisible:(BOOL)visible forRequest:(id)request
{
  visibleCopy = visible;
  requestCopy = request;
  v9 = requestCopy;
  if (visibleCopy)
  {
    sectionIdentifier = [requestCopy sectionIdentifier];
    v8 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:sectionIdentifier];

    if ([v8 isUserConfigurable])
    {
      [(NCSuggestionManager *)self _createStackSummarySuggestionIfNeededForRequest:v9 sectionSettings:v8];
    }
  }

  else
  {
    [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:requestCopy];
  }
}

- (void)checkSuggestionNeededForNotificationRequest:(id)request withHighlightsListCount:(unint64_t)count
{
  requestCopy = request;
  sectionIdentifier = [requestCopy sectionIdentifier];
  v7 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:sectionIdentifier];

  [(NCSuggestionManager *)self setHighlightsListCount:count];
  if ([v7 isUserConfigurable])
  {
    if (([requestCopy isHighlight] & 1) != 0 || !-[NCSuggestionManager _createTimeSensitiveSuggestionIfNeededForNotificationRequest:sectionSettings:](self, "_createTimeSensitiveSuggestionIfNeededForNotificationRequest:sectionSettings:", requestCopy, v7) && !-[NCSuggestionManager _createDirectMessagesSuggestionIfNeededForNotificationRequest:sectionSettings:](self, "_createDirectMessagesSuggestionIfNeededForNotificationRequest:sectionSettings:", requestCopy, v7) && !-[NCSuggestionManager _createProvisionalAuthorizationSuggestionIfNeededForRequest:sectionSettings:](self, "_createProvisionalAuthorizationSuggestionIfNeededForRequest:sectionSettings:", requestCopy, v7) && !-[NCSuggestionManager _createContactMatchingSuggestionIfNeededForRequest:sectionSettings:](self, "_createContactMatchingSuggestionIfNeededForRequest:sectionSettings:", requestCopy, v7))
    {
      [(NCSuggestionManager *)self _createPriorityFeedbackSuggestionIfNeededForRequest:requestCopy sectionSettings:v7];
    }

    if ([(NCSuggestionManager *)self highlightsListCount])
    {
      [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:self->_requestWithPriorityFeedbackSuggestion];
    }
  }
}

- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings
{
  v20 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  sectionIdentifier = [settingsCopy sectionIdentifier];
  if ([(NSMutableSet *)self->_sectionIdentifiersWithNotificationManagementSuggestions containsObject:sectionIdentifier])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allKeys = [(NSMutableDictionary *)self->_suggestionContentProviders allKeys];
    v8 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          sectionIdentifier2 = [v12 sectionIdentifier];
          v14 = [sectionIdentifier2 isEqualToString:sectionIdentifier];

          if (v14)
          {
            [(NCSuggestionManager *)self _reloadSuggestionForNotificationRequest:v12 sectionSettings:settingsCopy];
          }
        }

        v9 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (id)requestMatchingRequest:(id)request inSet:(id)set
{
  requestCopy = request;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__NCSuggestionManager_requestMatchingRequest_inSet___block_invoke;
  v9[3] = &unk_27836FFD8;
  v10 = requestCopy;
  v6 = requestCopy;
  v7 = [set bs_firstObjectPassingTest:v9];

  return v7;
}

- (void)_reloadSuggestionForNotificationRequest:(id)request sectionSettings:(id)settings
{
  requestCopy = request;
  settingsCopy = settings;
  [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:requestCopy];
  if ([(NCNotificationRequest *)self->_requestWithProvisionalNotificationManagementSuggestion matchesRequest:requestCopy])
  {
    [(NCSuggestionManager *)self _createProvisionalAuthorizationSuggestionIfNeededForRequest:requestCopy sectionSettings:settingsCopy];
  }

  else if ([(NSMutableSet *)self->_requestsWithTimeSensitiveManagementSuggestion containsObject:requestCopy])
  {
    [(NCSuggestionManager *)self _createTimeSensitiveSuggestionIfNeededForNotificationRequest:requestCopy sectionSettings:settingsCopy];
  }

  else if ([(NSMutableSet *)self->_requestsWithDirectMessagesManagementSuggestion containsObject:requestCopy])
  {
    [(NCSuggestionManager *)self _createDirectMessagesSuggestionIfNeededForNotificationRequest:requestCopy sectionSettings:settingsCopy];
  }

  else
  {
    v7 = [(NCSuggestionManager *)self requestMatchingRequest:requestCopy inSet:self->_requestsWithStackSummarySuggestions];

    if (v7)
    {
      [(NCSuggestionManager *)self _createStackSummarySuggestionIfNeededForRequest:requestCopy sectionSettings:settingsCopy];
    }

    else if ([(NCNotificationRequest *)self->_requestWithPriorityFeedbackSuggestion matchesRequest:requestCopy])
    {
      [(NCSuggestionManager *)self _createPriorityFeedbackSuggestionIfNeededForRequest:requestCopy sectionSettings:settingsCopy];
    }

    else if ([(NSMutableSet *)self->_requestsWithRemoteSuggestions containsObject:requestCopy])
    {
      remoteSuggestions = self->_remoteSuggestions;
      uuid = [requestCopy uuid];
      v10 = [(NSMutableDictionary *)remoteSuggestions objectForKey:uuid];

      if (v10 && ![(NCSuggestionManager *)self _createRemoteSuggestionIfNeededForRequest:requestCopy remoteSuggestion:v10])
      {
        mEMORY[0x277CEB1B8] = [MEMORY[0x277CEB1B8] sharedInstance];
        subtype = [v10 subtype];
        uuid2 = [v10 uuid];
        v14 = [MEMORY[0x277CBEAA8] now];
        [mEMORY[0x277CEB1B8] logSuggestionEvent:5 suggestionType:subtype suggestionIdentifier:uuid2 timestamp:v14];
      }
    }
  }
}

- (void)clearSuggestionForNotificationRequest:(id)request
{
  requestCopy = request;
  remoteSuggestions = self->_remoteSuggestions;
  v12 = requestCopy;
  uuid = [requestCopy uuid];
  v7 = [(NSMutableDictionary *)remoteSuggestions objectForKey:uuid];

  if (v7)
  {
    mEMORY[0x277CEB1B8] = [MEMORY[0x277CEB1B8] sharedInstance];
    subtype = [v7 subtype];
    uuid2 = [v7 uuid];
    v11 = [MEMORY[0x277CBEAA8] now];
    [mEMORY[0x277CEB1B8] logSuggestionEvent:4 suggestionType:subtype suggestionIdentifier:uuid2 timestamp:v11];
  }

  [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:v12];
}

- (BOOL)_createTimeSensitiveSuggestionIfNeededForNotificationRequest:(id)request sectionSettings:(id)settings
{
  v42 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  settingsCopy = settings;
  alertOptions = [requestCopy alertOptions];
  suppression = [alertOptions suppression];

  if (!suppression && [requestCopy interruptionLevel] == 2 && objc_msgSend(settingsCopy, "isTimeSensitiveEnabled") && (objc_msgSend(settingsCopy, "hasUserConfiguredTimeSensitiveSetting") & 1) == 0)
  {
    requestsWithTimeSensitiveManagementSuggestion = self->_requestsWithTimeSensitiveManagementSuggestion;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __100__NCSuggestionManager__createTimeSensitiveSuggestionIfNeededForNotificationRequest_sectionSettings___block_invoke;
    v36[3] = &unk_2783708B8;
    v13 = requestCopy;
    v37 = v13;
    v14 = [(NSMutableSet *)requestsWithTimeSensitiveManagementSuggestion objectsPassingTest:v36];
    anyObject = [v14 anyObject];

    if (anyObject)
    {
      timestamp = [v13 timestamp];
      timestamp2 = [anyObject timestamp];
      v18 = [timestamp compare:timestamp2];

      if (v18 != 1)
      {
        goto LABEL_22;
      }

      [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:anyObject];
    }

    alertOptions2 = [v13 alertOptions];
    reason = [alertOptions2 reason];

    if (reason == 4)
    {
      v21 = *MEMORY[0x277D77DD8];
      if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        notificationIdentifier = [v13 notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        sectionIdentifier = [v13 sectionIdentifier];
        *buf = 138543618;
        v39 = un_logDigest;
        v40 = 2114;
        v41 = sectionIdentifier;
        _os_log_impl(&dword_21E77E000, v22, OS_LOG_TYPE_DEFAULT, "Creating time sensitive suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
      }

      [(NCSuggestionManager *)self _createNewTimeSensitiveSuggestionForNotificationRequest:v13 sectionSettings:settingsCopy];
LABEL_14:
      v26 = self->_requestsWithTimeSensitiveManagementSuggestion;
      if (!v26)
      {
        v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v28 = self->_requestsWithTimeSensitiveManagementSuggestion;
        self->_requestsWithTimeSensitiveManagementSuggestion = v27;

        v26 = self->_requestsWithTimeSensitiveManagementSuggestion;
      }

      [(NSMutableSet *)v26 addObject:v13];
      v10 = 1;
      goto LABEL_23;
    }

    if ([settingsCopy isScheduledDeliveryEnabled])
    {
      alertOptions3 = [v13 alertOptions];
      reason2 = [alertOptions3 reason];

      if (reason2 == 1)
      {
        v31 = *MEMORY[0x277D77DD8];
        if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_DEFAULT))
        {
          v32 = v31;
          notificationIdentifier2 = [v13 notificationIdentifier];
          un_logDigest2 = [notificationIdentifier2 un_logDigest];
          sectionIdentifier2 = [v13 sectionIdentifier];
          *buf = 138543618;
          v39 = un_logDigest2;
          v40 = 2114;
          v41 = sectionIdentifier2;
          _os_log_impl(&dword_21E77E000, v32, OS_LOG_TYPE_DEFAULT, "Creating time sensitive digest suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
        }

        [(NCSuggestionManager *)self _createNewTimeSensitiveInDigestSuggestionForNotificationRequest:v13 sectionSettings:settingsCopy];
        goto LABEL_14;
      }
    }

LABEL_22:
    v10 = 0;
LABEL_23:

    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

uint64_t __100__NCSuggestionManager__createTimeSensitiveSuggestionIfNeededForNotificationRequest_sectionSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sectionIdentifier];
  v4 = [*(a1 + 32) sectionIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (BOOL)_createDirectMessagesSuggestionIfNeededForNotificationRequest:(id)request sectionSettings:(id)settings
{
  v34 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  settingsCopy = settings;
  content = [requestCopy content];
  contentType = [content contentType];
  v10 = [contentType isEqualToString:*MEMORY[0x277CE2158]];

  if (v10 && [settingsCopy isDirectMessagesEnabled] && (objc_msgSend(settingsCopy, "hasUserConfiguredDirectMessagesSetting") & 1) == 0 && objc_msgSend(settingsCopy, "isScheduledDeliveryEnabled"))
  {
    requestsWithDirectMessagesManagementSuggestion = self->_requestsWithDirectMessagesManagementSuggestion;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __101__NCSuggestionManager__createDirectMessagesSuggestionIfNeededForNotificationRequest_sectionSettings___block_invoke;
    v28[3] = &unk_2783708B8;
    v12 = requestCopy;
    v29 = v12;
    v13 = [(NSMutableSet *)requestsWithDirectMessagesManagementSuggestion objectsPassingTest:v28];
    anyObject = [v13 anyObject];

    if (anyObject)
    {
      timestamp = [v12 timestamp];
      timestamp2 = [anyObject timestamp];
      v17 = [timestamp compare:timestamp2];

      if (v17 != 1)
      {
        v26 = 0;
LABEL_16:

        goto LABEL_14;
      }

      [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:anyObject];
    }

    v18 = *MEMORY[0x277D77DD8];
    if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      notificationIdentifier = [v12 notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      sectionIdentifier = [v12 sectionIdentifier];
      *buf = 138543618;
      v31 = un_logDigest;
      v32 = 2114;
      v33 = sectionIdentifier;
      _os_log_impl(&dword_21E77E000, v19, OS_LOG_TYPE_DEFAULT, "Creating direct messages digest suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
    }

    [(NCSuggestionManager *)self _createNewDirectMessagesInDigestSuggestionForNotificationRequest:v12 sectionSettings:settingsCopy];
    v23 = self->_requestsWithDirectMessagesManagementSuggestion;
    if (!v23)
    {
      v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v25 = self->_requestsWithDirectMessagesManagementSuggestion;
      self->_requestsWithDirectMessagesManagementSuggestion = v24;

      v23 = self->_requestsWithDirectMessagesManagementSuggestion;
    }

    [(NSMutableSet *)v23 addObject:v12];
    v26 = 1;
    goto LABEL_16;
  }

  v26 = 0;
LABEL_14:

  return v26;
}

uint64_t __101__NCSuggestionManager__createDirectMessagesSuggestionIfNeededForNotificationRequest_sectionSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sectionIdentifier];
  v4 = [*(a1 + 32) sectionIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (BOOL)_createProvisionalAuthorizationSuggestionIfNeededForRequest:(id)request sectionSettings:(id)settings
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  settingsCopy = settings;
  if (![settingsCopy hasProvisionalAuthorization])
  {
    goto LABEL_11;
  }

  p_requestWithProvisionalNotificationManagementSuggestion = &self->_requestWithProvisionalNotificationManagementSuggestion;
  if (self->_requestWithProvisionalNotificationManagementSuggestion)
  {
    sectionIdentifier = [requestCopy sectionIdentifier];
    sectionIdentifier2 = [(NCNotificationRequest *)*p_requestWithProvisionalNotificationManagementSuggestion sectionIdentifier];
    if ([sectionIdentifier isEqualToString:sectionIdentifier2])
    {
      timestamp = [requestCopy timestamp];
      timestamp2 = [(NCNotificationRequest *)*p_requestWithProvisionalNotificationManagementSuggestion timestamp];
      v14 = [timestamp compare:timestamp2];

      if (v14 == 1)
      {
        if (*p_requestWithProvisionalNotificationManagementSuggestion)
        {
          [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:?];
        }

        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

LABEL_7:
  v15 = *MEMORY[0x277D77DD8];
  if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    sectionIdentifier3 = [requestCopy sectionIdentifier];
    v22 = 138543618;
    v23 = un_logDigest;
    v24 = 2114;
    v25 = sectionIdentifier3;
    _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "Creating promoting suggestion for provisional request %{public}@ from section %{public}@", &v22, 0x16u);
  }

  [(NCSuggestionManager *)self _createNewPromotingSuggestionForNotificationRequest:requestCopy sectionSettings:settingsCopy];
  objc_storeStrong(&self->_requestWithProvisionalNotificationManagementSuggestion, request);
  v20 = 1;
LABEL_12:

  return v20;
}

- (BOOL)_createContactMatchingSuggestionIfNeededForRequest:(id)request sectionSettings:(id)settings
{
  requestCopy = request;
  settingsCopy = settings;
  content = [requestCopy content];
  communicationContext = [content communicationContext];

  sender = [communicationContext sender];
  v11 = 0;
  if ([communicationContext isDirect] && sender)
  {
    mEMORY[0x277D77F58] = [MEMORY[0x277D77F58] sharedInstance];
    topLevelSectionIdentifier = [requestCopy topLevelSectionIdentifier];
    v14 = [mEMORY[0x277D77F58] curatedContactMatchDetailsForContact:sender bundleIdentifier:topLevelSectionIdentifier];

    if (v14 && [v14 isSuggestedMatch])
    {
      cnContactFullname = [v14 cnContactFullname];
      [(NCSuggestionManager *)self _createNewCuratedContactMatchSuggestionForNotificationRequest:requestCopy sectionSettings:settingsCopy contactName:cnContactFullname];

      [(NSMutableSet *)self->_requestsWithContactSuggestions addObject:requestCopy];
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)_createStackSummarySuggestionIfNeededForRequest:(id)request sectionSettings:(id)settings
{
  v58 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  settingsCopy = settings;
  summarizationSuggestionManager = self->_summarizationSuggestionManager;
  sectionIdentifier = [requestCopy sectionIdentifier];
  LODWORD(summarizationSuggestionManager) = [(NCSummarizationChinSuggestionManager *)summarizationSuggestionManager shouldShowChinSuggestionAfterStackSummaryShownForBundleId:sectionIdentifier];

  if (summarizationSuggestionManager)
  {
    requestsWithStackSummarySuggestions = self->_requestsWithStackSummarySuggestions;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __87__NCSuggestionManager__createStackSummarySuggestionIfNeededForRequest_sectionSettings___block_invoke;
    v50[3] = &unk_2783708B8;
    v11 = requestCopy;
    v51 = v11;
    v12 = [(NSMutableSet *)requestsWithStackSummarySuggestions objectsPassingTest:v50];
    anyObject = [v12 anyObject];

    if (anyObject)
    {
      timestamp = [(NSMutableSet *)v11 timestamp];
      timestamp2 = [anyObject timestamp];
      v16 = [timestamp compare:timestamp2];

      if (v16 != 1)
      {
        goto LABEL_29;
      }

      [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:anyObject];
    }

    v17 = *MEMORY[0x277D77DD8];
    if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      notificationIdentifier = [(NSMutableSet *)v11 notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      sectionIdentifier2 = [(NSMutableSet *)v11 sectionIdentifier];
      *buf = 138543618;
      v55 = un_logDigest;
      v56 = 2114;
      v57 = sectionIdentifier2;
      _os_log_impl(&dword_21E77E000, v18, OS_LOG_TYPE_DEFAULT, "Creating stack summary for request %{public}@ from section %{public}@", buf, 0x16u);
    }

    if (![(NSMutableSet *)self->_requestsWithStackSummarySuggestions count]&& [(NCSuggestionManager *)self _createNewStackSummarySuggestionForNotificationRequest:v11 sectionSettings:settingsCopy])
    {
      [(NSMutableSet *)self->_requestsWithStackSummarySuggestions addObject:v11];
      v22 = self->_summarizationSuggestionManager;
      sectionIdentifier3 = [(NSMutableSet *)v11 sectionIdentifier];
      [(NCSummarizationChinSuggestionManager *)v22 recordEvent:0 bundleId:sectionIdentifier3];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v24 = self->_requestsWithStackSummarySuggestions;
      v25 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v46 objects:v53 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v47;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v47 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v46 + 1) + 8 * i);
            if (([v29 matchesRequest:v11] & 1) == 0)
            {
              [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:v29];
            }
          }

          v26 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v46 objects:v53 count:16];
        }

        while (v26);
      }

      v30 = 1;
      goto LABEL_30;
    }

LABEL_29:
    v30 = 0;
LABEL_30:

    v31 = v51;
    goto LABEL_32;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v31 = self->_requestsWithStackSummarySuggestions;
  v32 = [(NSMutableSet *)v31 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v32)
  {
    v33 = v32;
    v41 = settingsCopy;
    v34 = *v43;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v42 + 1) + 8 * j);
        sectionIdentifier4 = [v36 sectionIdentifier];
        sectionIdentifier5 = [requestCopy sectionIdentifier];
        v39 = [sectionIdentifier4 isEqualToString:sectionIdentifier5];

        if (v39)
        {
          [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:v36];
        }
      }

      v33 = [(NSMutableSet *)v31 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v33);
    v30 = 0;
    settingsCopy = v41;
  }

  else
  {
    v30 = 0;
  }

LABEL_32:

  return v30;
}

uint64_t __87__NCSuggestionManager__createStackSummarySuggestionIfNeededForRequest_sectionSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sectionIdentifier];
  v4 = [*(a1 + 32) sectionIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (BOOL)_createPriorityFeedbackSuggestionIfNeededForRequest:(id)request sectionSettings:(id)settings
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  settingsCopy = settings;
  if (self->_requestWithPriorityFeedbackSuggestion || !os_variant_has_internal_content() || ![requestCopy isHighlight] || -[NCSuggestionManager highlightsListCount](self, "highlightsListCount") || arc4random_uniform(0x14u))
  {
    goto LABEL_12;
  }

  v9 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.proactive.PersonalizationPortrait"];
  if ([v9 BOOLForKey:@"DisablePriorityFeedbackSuggestion"])
  {

LABEL_12:
    v18 = 0;
    goto LABEL_13;
  }

  v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.proactive.PersonalizationPortrait"];
  v11 = [v10 integerForKey:@"PriorityFeedbackSuggestionIgnoreCount"];

  if (v11 > 4)
  {
    goto LABEL_12;
  }

  v12 = *MEMORY[0x277D77DD8];
  if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    sectionIdentifier = [requestCopy sectionIdentifier];
    v20 = 138543618;
    v21 = un_logDigest;
    v22 = 2114;
    v23 = sectionIdentifier;
    _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "Creating priority feedback suggestion for request %{public}@ from section %{public}@", &v20, 0x16u);
  }

  [(NCSuggestionManager *)self _createNewPriorityFeedbackSuggestionForNotificationRequest:requestCopy sectionSettings:settingsCopy];
  objc_storeStrong(&self->_requestWithPriorityFeedbackSuggestion, request);
  v17 = [[NCSummarizationFeedbackManager alloc] initWithRequest:requestCopy isShowingStackSummary:0];
  [(NCSummarizationFeedbackManager *)v17 recordInternalPriorityFeedbackEvent:0];

  v18 = 1;
LABEL_13:

  return v18;
}

- (BOOL)_createRemoteSuggestionIfNeededForRequest:(id)request remoteSuggestion:(id)suggestion
{
  requestCopy = request;
  suggestionCopy = suggestion;
  remoteSuggestions = [(NCSuggestionManager *)self remoteSuggestions];
  uuid = [requestCopy uuid];
  [remoteSuggestions setObject:suggestionCopy forKey:uuid];

  v10 = [(NCSuggestionManager *)self _contentProviderForRequest:requestCopy withRemoteSuggestion:suggestionCopy];

  if (v10 && (-[NCSuggestionManager suggestionContentProviders](self, "suggestionContentProviders"), v11 = objc_claimAutoreleasedReturnValue(), [v11 objectForKey:requestCopy], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12) && -[NCSuggestionManager _addSuggestionForNotificationRequest:managementContentProvider:](self, "_addSuggestionForNotificationRequest:managementContentProvider:", requestCopy, v10))
  {
    requestsWithRemoteSuggestions = [(NCSuggestionManager *)self requestsWithRemoteSuggestions];
    [requestsWithRemoteSuggestions addObject:requestCopy];

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)auxiliaryOptionsContentProviderForNotificationRequest:(id)request isLongLook:(BOOL)look
{
  lookCopy = look;
  requestCopy = request;
  v7 = requestCopy;
  if (requestCopy)
  {
    if (lookCopy)
    {
      sectionIdentifier = [requestCopy sectionIdentifier];
      v9 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:sectionIdentifier];
      if ([v9 isUserConfigurable])
      {
        v10 = [(NCNotificationManagementContentProvider *)[NCNotificationManagementLongLookContentProvider alloc] initWithNotificationRequest:v7 managementDelegate:self];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = [(NSMutableDictionary *)self->_suggestionContentProviders objectForKey:requestCopy];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setDeviceAuthenticated:(BOOL)authenticated
{
  if (self->_deviceAuthenticated != authenticated)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_deviceAuthenticated = authenticated;
    suggestionContentProviders = [(NCSuggestionManager *)self suggestionContentProviders];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__NCSuggestionManager_setDeviceAuthenticated___block_invoke;
    v7[3] = &unk_278371DB0;
    v7[4] = self;
    [suggestionContentProviders enumerateKeysAndObjectsUsingBlock:v7];
  }
}

void __46__NCSuggestionManager_setDeviceAuthenticated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = *(a1 + 32);
  v6 = [a2 sectionIdentifier];
  v7 = [v5 _sectionSettingsForSectionIdentifier:v6];

  if ([v7 contentPreviewSetting])
  {
    v8 = [*(a1 + 32) isDeviceAuthenticated];
  }

  else
  {
    v8 = 1;
  }

  [v9 setAuxiliaryOptionsVisible:v8];
}

- (void)logResponseForNotificationRequest:(id)request allowsNotifications:(BOOL)notifications
{
  requestCopy = request;
  v9 = requestCopy;
  if (!notifications)
  {
    suggestionContentProviders = [(NCSuggestionManager *)self suggestionContentProviders];
    v8 = [suggestionContentProviders objectForKey:v9];

    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 logSuggestionEvent:2];
    }

    requestCopy = v9;
  }

  [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:requestCopy];
}

- (void)logResponseForNotificationRequest:(id)request allowsTimeSensitive:(BOOL)sensitive
{
  requestCopy = request;
  v9 = requestCopy;
  if (!sensitive)
  {
    suggestionContentProviders = [(NCSuggestionManager *)self suggestionContentProviders];
    v8 = [suggestionContentProviders objectForKey:v9];

    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 logSuggestionEvent:2];
    }

    requestCopy = v9;
  }

  [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:requestCopy];
}

- (void)logResponseForNotificationRequest:(id)request muted:(BOOL)muted
{
  mutedCopy = muted;
  requestCopy = request;
  v9 = requestCopy;
  if (mutedCopy)
  {
    suggestionContentProviders = [(NCSuggestionManager *)self suggestionContentProviders];
    v8 = [suggestionContentProviders objectForKey:v9];

    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 logSuggestionEvent:2];
    }

    requestCopy = v9;
  }

  [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:requestCopy];
}

- (void)logResponseForNotificationRequest:(id)request scheduledDelivery:(BOOL)delivery
{
  requestCopy = request;
  suggestionContentProviders = [(NCSuggestionManager *)self suggestionContentProviders];
  v6 = [suggestionContentProviders objectForKey:requestCopy];

  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 logSuggestionEvent:2];
  }

  [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:requestCopy];
}

- (void)notificationManagementContentProvider:(id)provider requestsPresentingNotificationManagementViewType:(unint64_t)type forNotificationRequest:(id)request withPresentingView:(id)view
{
  viewCopy = view;
  requestCopy = request;
  delegate = [(NCSuggestionManager *)self delegate];
  [delegate suggestionManager:self requestsPresentingNotificationManagementViewType:type forNotificationRequest:requestCopy withPresentingView:viewCopy];
}

- (void)notificationManagementContentProvider:(id)provider setCuratedContactSuggestionConfirmed:(BOOL)confirmed request:(id)request
{
  confirmedCopy = confirmed;
  requestCopy = request;
  content = [requestCopy content];
  communicationContext = [content communicationContext];
  sender = [communicationContext sender];

  if (sender)
  {
    mEMORY[0x277D77F58] = [MEMORY[0x277D77F58] sharedInstance];
    topLevelSectionIdentifier = [requestCopy topLevelSectionIdentifier];
    [mEMORY[0x277D77F58] confirmCuratedContactSuggestion:confirmedCopy forContact:sender bundleIdentifier:topLevelSectionIdentifier];
  }

  [(NCSuggestionManager *)self reloadContactSuggestions];
}

- (void)notificationManagementContentProvider:(id)provider setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier
{
  mutedCopy = muted;
  threadIdentifierCopy = threadIdentifier;
  identifierCopy = identifier;
  dateCopy = date;
  delegate = [(NCSuggestionManager *)self delegate];
  [delegate suggestionManager:self setMuted:mutedCopy untilDate:dateCopy forSectionIdentifier:identifierCopy threadIdentifier:threadIdentifierCopy];
}

- (void)notificationManagementContentProvider:(id)provider setScheduledDelivery:(BOOL)delivery forSectionIdentifier:(id)identifier
{
  deliveryCopy = delivery;
  identifierCopy = identifier;
  delegate = [(NCSuggestionManager *)self delegate];
  [delegate suggestionManager:self setScheduledDelivery:deliveryCopy forSectionIdentifier:identifierCopy];
}

- (void)notificationManagementContentProvider:(id)provider setAllowsTimeSensitive:(BOOL)sensitive forSectionIdentifier:(id)identifier
{
  sensitiveCopy = sensitive;
  identifierCopy = identifier;
  delegate = [(NCSuggestionManager *)self delegate];
  [delegate suggestionManager:self setAllowsTimeSensitive:sensitiveCopy forSectionIdentifier:identifierCopy];
}

- (void)notificationManagementContentProvider:(id)provider setAllowsDirectMessages:(BOOL)messages forSectionIdentifier:(id)identifier
{
  messagesCopy = messages;
  identifierCopy = identifier;
  delegate = [(NCSuggestionManager *)self delegate];
  [delegate suggestionManager:self setAllowsDirectMessages:messagesCopy forSectionIdentifier:identifierCopy];
}

- (void)notificationManagementContentProvider:(id)provider setModeConfiguration:(id)configuration
{
  configurationCopy = configuration;
  delegate = [(NCSuggestionManager *)self delegate];
  [delegate suggestionManager:self setModeConfiguration:configurationCopy];
}

- (void)_updateContentForNotificationRequest:(id)request
{
  requestCopy = request;
  delegate = [(NCSuggestionManager *)self delegate];
  [delegate suggestionManager:self requestsUpdatingContentForNotificationRequest:requestCopy];
}

- (id)_sectionSettingsForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(NCSuggestionManager *)self delegate];
  v6 = [delegate suggestionManager:self requestsSectionSettingsForSectionIdentifier:identifierCopy];

  return v6;
}

- (BOOL)_addSuggestionForNotificationRequest:(id)request managementContentProvider:(id)provider
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  providerCopy = provider;
  sectionIdentifiersWithNotificationManagementSuggestions = self->_sectionIdentifiersWithNotificationManagementSuggestions;
  sectionIdentifier = [requestCopy sectionIdentifier];
  LOBYTE(sectionIdentifiersWithNotificationManagementSuggestions) = [(NSMutableSet *)sectionIdentifiersWithNotificationManagementSuggestions containsObject:sectionIdentifier];

  if (sectionIdentifiersWithNotificationManagementSuggestions)
  {
    v10 = *MEMORY[0x277D77DD8];
    if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_ERROR))
    {
      [NCSuggestionManager _addSuggestionForNotificationRequest:v10 managementContentProvider:requestCopy];
    }

    LOBYTE(isUserConfigurable) = 0;
  }

  else
  {
    sectionIdentifier2 = [requestCopy sectionIdentifier];
    v13 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:sectionIdentifier2];

    isUserConfigurable = [v13 isUserConfigurable];
    v14 = *MEMORY[0x277D77DD8];
    if (isUserConfigurable)
    {
      if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        notificationIdentifier = [requestCopy notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        sectionIdentifier3 = [requestCopy sectionIdentifier];
        *buf = 138543618;
        v26 = un_logDigest;
        v27 = 2114;
        v28 = sectionIdentifier3;
        _os_log_impl(&dword_21E77E000, v15, OS_LOG_TYPE_DEFAULT, "Adding suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
      }

      [(NSMutableDictionary *)self->_suggestionContentProviders setObject:providerCopy forKey:requestCopy];
      v19 = self->_sectionIdentifiersWithNotificationManagementSuggestions;
      sectionIdentifier4 = [requestCopy sectionIdentifier];
      [(NSMutableSet *)v19 addObject:sectionIdentifier4];

      if ([v13 contentPreviewSetting])
      {
        isDeviceAuthenticated = [(NCSuggestionManager *)self isDeviceAuthenticated];
      }

      else
      {
        isDeviceAuthenticated = 1;
      }

      [providerCopy setAuxiliaryOptionsVisible:isDeviceAuthenticated];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __86__NCSuggestionManager__addSuggestionForNotificationRequest_managementContentProvider___block_invoke;
      v23[3] = &unk_27836F560;
      v23[4] = self;
      v24 = requestCopy;
      dispatch_async(MEMORY[0x277D85CD0], v23);
    }

    else if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_ERROR))
    {
      [NCSuggestionManager _addSuggestionForNotificationRequest:v14 managementContentProvider:requestCopy];
    }
  }

  return isUserConfigurable;
}

- (void)_createNewPromotingSuggestionForNotificationRequest:(id)request sectionSettings:(id)settings
{
  settingsCopy = settings;
  requestCopy = request;
  v8 = [NCNotificationManagementPromotingSuggestionContentProvider alloc];
  displayName = [settingsCopy displayName];

  v10 = [(NCNotificationManagementPromotingSuggestionContentProvider *)v8 initWithNotificationRequest:requestCopy bundleDisplayName:displayName managementDelegate:self suggestionDelegate:self];
  [(NCSuggestionManager *)self _addSuggestionForNotificationRequest:requestCopy managementContentProvider:v10];
}

- (void)_createNewTimeSensitiveSuggestionForNotificationRequest:(id)request sectionSettings:(id)settings
{
  settingsCopy = settings;
  requestCopy = request;
  v8 = [NCNotificationManagementTimeSensitiveSuggestionContentProvider alloc];
  displayName = [settingsCopy displayName];

  v10 = [(NCNotificationManagementTimeSensitiveSuggestionContentProvider *)v8 initWithNotificationRequest:requestCopy bundleDisplayName:displayName managementDelegate:self suggestionDelegate:self];
  [(NCSuggestionManager *)self _addSuggestionForNotificationRequest:requestCopy managementContentProvider:v10];
}

- (void)_createNewTimeSensitiveInDigestSuggestionForNotificationRequest:(id)request sectionSettings:(id)settings
{
  settingsCopy = settings;
  requestCopy = request;
  v8 = [NCNotificationManagementTimeSensitiveInDigestSuggestionContentProvider alloc];
  displayName = [settingsCopy displayName];

  v10 = [(NCNotificationManagementTimeSensitiveInDigestSuggestionContentProvider *)v8 initWithNotificationRequest:requestCopy bundleDisplayName:displayName managementDelegate:self suggestionDelegate:self];
  [(NCSuggestionManager *)self _addSuggestionForNotificationRequest:requestCopy managementContentProvider:v10];
}

- (void)_createNewDirectMessagesInDigestSuggestionForNotificationRequest:(id)request sectionSettings:(id)settings
{
  settingsCopy = settings;
  requestCopy = request;
  v8 = [NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider alloc];
  displayName = [settingsCopy displayName];

  v10 = [(NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider *)v8 initWithNotificationRequest:requestCopy bundleDisplayName:displayName managementDelegate:self suggestionDelegate:self];
  [(NCSuggestionManager *)self _addSuggestionForNotificationRequest:requestCopy managementContentProvider:v10];
}

- (void)_createNewCuratedContactMatchSuggestionForNotificationRequest:(id)request sectionSettings:(id)settings contactName:(id)name
{
  nameCopy = name;
  settingsCopy = settings;
  requestCopy = request;
  v11 = [NCNotificationManagementCuratedContactMatchSuggestionContentProvider alloc];
  displayName = [settingsCopy displayName];

  v13 = [(NCNotificationManagementCuratedContactMatchSuggestionContentProvider *)v11 initWithNotificationRequest:requestCopy bundleDisplayName:displayName managementDelegate:self suggestionDelegate:self contactName:nameCopy];
  [(NCSuggestionManager *)self _addSuggestionForNotificationRequest:requestCopy managementContentProvider:v13];
}

- (BOOL)_createNewStackSummarySuggestionForNotificationRequest:(id)request sectionSettings:(id)settings
{
  settingsCopy = settings;
  requestCopy = request;
  v8 = [NCNotificationManagementStackSummarySuggestionContentProvider alloc];
  displayName = [settingsCopy displayName];

  v10 = [(NCNotificationManagementStackSummarySuggestionContentProvider *)v8 initWithNotificationRequest:requestCopy bundleDisplayName:displayName managementDelegate:self suggestionDelegate:self summarizationSuggestionManager:self->_summarizationSuggestionManager];
  LOBYTE(self) = [(NCSuggestionManager *)self _addSuggestionForNotificationRequest:requestCopy managementContentProvider:v10];

  return self;
}

- (void)_createNewPriorityFeedbackSuggestionForNotificationRequest:(id)request sectionSettings:(id)settings
{
  settingsCopy = settings;
  requestCopy = request;
  v8 = [NCNotificationManagementPriorityFeedbackSuggestionContentProvider alloc];
  displayName = [settingsCopy displayName];

  v10 = [(NCNotificationManagementPriorityFeedbackSuggestionContentProvider *)v8 initWithNotificationRequest:requestCopy bundleDisplayName:displayName managementDelegate:self suggestionDelegate:self];
  [(NCSuggestionManager *)self _addSuggestionForNotificationRequest:requestCopy managementContentProvider:v10];
}

- (void)_removeSuggestionIfNecessaryForNotificationRequest:(id)request
{
  v66 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = MEMORY[0x277D77DD8];
  v6 = *MEMORY[0x277D77DD8];
  if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    sectionIdentifier = [requestCopy sectionIdentifier];
    *buf = 138543618;
    v63 = un_logDigest;
    v64 = 2114;
    v65 = sectionIdentifier;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "Attempt to remove suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
  }

  if (requestCopy)
  {
    if ([(NCNotificationRequest *)self->_requestWithProvisionalNotificationManagementSuggestion matchesRequest:requestCopy])
    {
      v11 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        requestWithProvisionalNotificationManagementSuggestion = self->_requestWithProvisionalNotificationManagementSuggestion;
        v13 = v11;
        notificationIdentifier2 = [(NCNotificationRequest *)requestWithProvisionalNotificationManagementSuggestion notificationIdentifier];
        un_logDigest2 = [notificationIdentifier2 un_logDigest];
        sectionIdentifier2 = [(NCNotificationRequest *)self->_requestWithProvisionalNotificationManagementSuggestion sectionIdentifier];
        *buf = 138543618;
        v63 = un_logDigest2;
        v64 = 2114;
        v65 = sectionIdentifier2;
        _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "Removing suggestion for provisional request %{public}@ from section %{public}@", buf, 0x16u);
      }

      requestsWithTimeSensitiveManagementSuggestion = self->_requestWithProvisionalNotificationManagementSuggestion;
      self->_requestWithProvisionalNotificationManagementSuggestion = 0;
    }

    else if ([(NSMutableSet *)self->_requestsWithTimeSensitiveManagementSuggestion containsObject:requestCopy])
    {
      v20 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        notificationIdentifier3 = [requestCopy notificationIdentifier];
        un_logDigest3 = [notificationIdentifier3 un_logDigest];
        sectionIdentifier3 = [requestCopy sectionIdentifier];
        *buf = 138543618;
        v63 = un_logDigest3;
        v64 = 2114;
        v65 = sectionIdentifier3;
        _os_log_impl(&dword_21E77E000, v21, OS_LOG_TYPE_DEFAULT, "Removing suggestion for time sensitive request %{public}@ from section %{public}@", buf, 0x16u);
      }

      [(NSMutableSet *)self->_requestsWithTimeSensitiveManagementSuggestion removeObject:requestCopy];
      if ([(NSMutableSet *)self->_requestsWithTimeSensitiveManagementSuggestion count])
      {
        goto LABEL_9;
      }

      requestsWithTimeSensitiveManagementSuggestion = self->_requestsWithTimeSensitiveManagementSuggestion;
      self->_requestsWithTimeSensitiveManagementSuggestion = 0;
    }

    else
    {
      if (![(NSMutableSet *)self->_requestsWithDirectMessagesManagementSuggestion containsObject:requestCopy])
      {
        if ([(NSMutableSet *)self->_requestsWithContactSuggestions containsObject:requestCopy])
        {
          v30 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v30;
            notificationIdentifier4 = [requestCopy notificationIdentifier];
            un_logDigest4 = [notificationIdentifier4 un_logDigest];
            sectionIdentifier4 = [requestCopy sectionIdentifier];
            *buf = 138543618;
            v63 = un_logDigest4;
            v64 = 2114;
            v65 = sectionIdentifier4;
            _os_log_impl(&dword_21E77E000, v31, OS_LOG_TYPE_DEFAULT, "Removing contact suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
          }

          requestsWithContactSuggestions = self->_requestsWithContactSuggestions;
        }

        else
        {
          if (![(NSMutableSet *)self->_requestsWithStackSummarySuggestions containsObject:requestCopy])
          {
            v41 = [(NCNotificationRequest *)self->_requestWithPriorityFeedbackSuggestion matchesRequest:requestCopy];
            v42 = *v5;
            v43 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
            if (v41)
            {
              if (v43)
              {
                v44 = v42;
                notificationIdentifier5 = [requestCopy notificationIdentifier];
                un_logDigest5 = [notificationIdentifier5 un_logDigest];
                sectionIdentifier5 = [requestCopy sectionIdentifier];
                *buf = 138543618;
                v63 = un_logDigest5;
                v64 = 2114;
                v65 = sectionIdentifier5;
                _os_log_impl(&dword_21E77E000, v44, OS_LOG_TYPE_DEFAULT, "Removing priority feedback suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
              }

              requestWithPriorityFeedbackSuggestion = self->_requestWithPriorityFeedbackSuggestion;
              self->_requestWithPriorityFeedbackSuggestion = 0;

              if (![(NCSuggestionManager *)self highlightsListCount])
              {
                v49 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.proactive.PersonalizationPortrait"];
                v50 = [v49 integerForKey:@"PriorityFeedbackSuggestionIgnoreCount"];

                v51 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.proactive.PersonalizationPortrait"];
                [v51 setInteger:v50 + 1 forKey:@"PriorityFeedbackSuggestionIgnoreCount"];

                v52 = [[NCSummarizationFeedbackManager alloc] initWithRequest:requestCopy isShowingStackSummary:0];
                [(NCSummarizationFeedbackManager *)v52 recordInternalPriorityFeedbackEvent:3];
              }
            }

            else
            {
              if (v43)
              {
                v53 = v42;
                notificationIdentifier6 = [requestCopy notificationIdentifier];
                un_logDigest6 = [notificationIdentifier6 un_logDigest];
                sectionIdentifier6 = [requestCopy sectionIdentifier];
                *buf = 138543618;
                v63 = un_logDigest6;
                v64 = 2114;
                v65 = sectionIdentifier6;
                _os_log_impl(&dword_21E77E000, v53, OS_LOG_TYPE_DEFAULT, "Removing remote suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
              }

              [(NSMutableSet *)self->_requestsWithRemoteSuggestions removeObject:requestCopy];
              uuid = [requestCopy uuid];

              if (uuid)
              {
                remoteSuggestions = self->_remoteSuggestions;
                uuid2 = [requestCopy uuid];
                [(NSMutableDictionary *)remoteSuggestions removeObjectForKey:uuid2];
              }
            }

            goto LABEL_9;
          }

          v36 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            v37 = v36;
            notificationIdentifier7 = [requestCopy notificationIdentifier];
            un_logDigest7 = [notificationIdentifier7 un_logDigest];
            sectionIdentifier7 = [requestCopy sectionIdentifier];
            *buf = 138543618;
            v63 = un_logDigest7;
            v64 = 2114;
            v65 = sectionIdentifier7;
            _os_log_impl(&dword_21E77E000, v37, OS_LOG_TYPE_DEFAULT, "Removing stack summary suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
          }

          requestsWithContactSuggestions = self->_requestsWithStackSummarySuggestions;
        }

        [(NSMutableSet *)requestsWithContactSuggestions removeObject:requestCopy];
LABEL_9:
        [(NSMutableDictionary *)self->_suggestionContentProviders removeObjectForKey:requestCopy];
        sectionIdentifiersWithNotificationManagementSuggestions = self->_sectionIdentifiersWithNotificationManagementSuggestions;
        sectionIdentifier8 = [requestCopy sectionIdentifier];
        [(NSMutableSet *)sectionIdentifiersWithNotificationManagementSuggestions removeObject:sectionIdentifier8];

        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __74__NCSuggestionManager__removeSuggestionIfNecessaryForNotificationRequest___block_invoke;
        v60[3] = &unk_27836F560;
        v60[4] = self;
        v61 = requestCopy;
        dispatch_async(MEMORY[0x277D85CD0], v60);

        goto LABEL_10;
      }

      v25 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        notificationIdentifier8 = [requestCopy notificationIdentifier];
        un_logDigest8 = [notificationIdentifier8 un_logDigest];
        sectionIdentifier9 = [requestCopy sectionIdentifier];
        *buf = 138543618;
        v63 = un_logDigest8;
        v64 = 2114;
        v65 = sectionIdentifier9;
        _os_log_impl(&dword_21E77E000, v26, OS_LOG_TYPE_DEFAULT, "Removing suggestion for direct messages request %{public}@ from section %{public}@", buf, 0x16u);
      }

      [(NSMutableSet *)self->_requestsWithDirectMessagesManagementSuggestion removeObject:requestCopy];
      if ([(NSMutableSet *)self->_requestsWithDirectMessagesManagementSuggestion count])
      {
        goto LABEL_9;
      }

      requestsWithTimeSensitiveManagementSuggestion = self->_requestsWithDirectMessagesManagementSuggestion;
      self->_requestsWithDirectMessagesManagementSuggestion = 0;
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (id)_contentProviderForRequest:(id)request withRemoteSuggestion:(id)suggestion
{
  requestCopy = request;
  suggestionCopy = suggestion;
  subtype = [suggestionCopy subtype];
  v9 = 0;
  if (subtype > 6)
  {
    switch(subtype)
    {
      case 7:
        v10 = [(NCSuggestionManager *)self _contentProviderForRequest:requestCopy withUrgencyTuningSuggestion:suggestionCopy];
        break;
      case 8:
        v10 = [(NCSuggestionManager *)self _contentProviderForRequest:requestCopy withSendMessagesToDigestSuggestion:suggestionCopy];
        break;
      case 9:
        v10 = [(NCSuggestionManager *)self _contentProviderForRequest:requestCopy withTurnOffNotificationsForAppSuggestion:suggestionCopy];
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(subtype)
    {
      case 4:
        v10 = [(NCSuggestionManager *)self _contentProviderForRequest:requestCopy withMutingSuggestion:suggestionCopy];
        break;
      case 5:
        v10 = [(NCSuggestionManager *)self _contentProviderForRequest:requestCopy withModeConfigurationTuningSuggestion:suggestionCopy];
        break;
      case 6:
        v10 = [(NCSuggestionManager *)self _contentProviderForRequest:requestCopy withDigestSuggestion:suggestionCopy];
        break;
      default:
        goto LABEL_15;
    }
  }

  v9 = v10;
LABEL_15:

  return v9;
}

- (id)_contentProviderForRequest:(id)request withModeConfigurationTuningSuggestion:(id)suggestion
{
  requestCopy = request;
  suggestionCopy = suggestion;
  sectionIdentifier = [requestCopy sectionIdentifier];
  v9 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:sectionIdentifier];

  subObject = [suggestionCopy subObject];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained suggestionManagerRequestsCurrentModeConfiguration:self];

  configuration = [v12 configuration];
  if (!v12)
  {
    goto LABEL_9;
  }

  scope = [suggestionCopy scope];
  if (scope == 3)
  {
    v20 = DNDContactHandleFromNotificationRequest(requestCopy);
    senderConfigurationType = [configuration senderConfigurationType];
    v32 = v20;
    v22 = [configuration exceptionForContactHandle:v20];
    tuningSuggestionType = [subObject tuningSuggestionType];
    if (tuningSuggestionType == 3)
    {
      v19 = 0;
      if (v22 == 1 || senderConfigurationType != 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (tuningSuggestionType != 1)
      {
        v19 = 0;
LABEL_23:
        v28 = v32;
        goto LABEL_24;
      }

      v19 = 0;
      if (!v22 || senderConfigurationType)
      {
        goto LABEL_23;
      }
    }

    v29 = [NCModeConfigurationRemoteSuggestionContentProvider alloc];
    displayName = [v9 displayName];
    uuid = [suggestionCopy uuid];
    v19 = [(NCModeConfigurationRemoteSuggestionContentProvider *)v29 initWithNotificationRequest:requestCopy bundleDisplayName:displayName managementDelegate:self suggestionDelegate:self uuid:uuid suggestionType:0 scope:2 modeConfiguration:v12];

    v28 = v32;
    goto LABEL_21;
  }

  if (scope != 1)
  {
    goto LABEL_9;
  }

  applicationConfigurationType = [configuration applicationConfigurationType];
  sectionIdentifier2 = [requestCopy sectionIdentifier];
  v17 = [configuration exceptionForApplication:sectionIdentifier2];

  tuningSuggestionType2 = [subObject tuningSuggestionType];
  if (tuningSuggestionType2 != 3)
  {
    if (tuningSuggestionType2 == 1)
    {
      v19 = 0;
      if (!v17 || applicationConfigurationType)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

LABEL_9:
    v19 = 0;
    goto LABEL_25;
  }

  v19 = 0;
  if (v17 != 1 && applicationConfigurationType == 1)
  {
LABEL_17:
    v24 = [NCModeConfigurationRemoteSuggestionContentProvider alloc];
    displayName2 = [v9 displayName];
    displayName = [suggestionCopy uuid];
    v27 = v24;
    v28 = displayName2;
    v19 = [(NCModeConfigurationRemoteSuggestionContentProvider *)v27 initWithNotificationRequest:requestCopy bundleDisplayName:displayName2 managementDelegate:self suggestionDelegate:self uuid:displayName suggestionType:0 scope:0 modeConfiguration:v12];
LABEL_21:

LABEL_24:
  }

LABEL_25:

  return v19;
}

- (id)_contentProviderForRequest:(id)request withMutingSuggestion:(id)suggestion
{
  requestCopy = request;
  suggestionCopy = suggestion;
  sectionIdentifier = [requestCopy sectionIdentifier];
  v9 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:sectionIdentifier];

  muteAssertion = [v9 muteAssertion];
  uniqueThreadIdentifier = [requestCopy uniqueThreadIdentifier];
  v12 = [muteAssertion activeMuteAssertionLevelForThreadIdentifier:uniqueThreadIdentifier];

  scope = [suggestionCopy scope];
  if (scope != 2)
  {
    if (scope != 1 || (v14 = 0, v12 == 2))
    {
      v15 = 0;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  content = [requestCopy content];
  communicationContext = [content communicationContext];
  identifier = [communicationContext identifier];

  v15 = 0;
  if (identifier && v12 != 1)
  {
    v14 = 1;
LABEL_8:
    v19 = [NCMutingRemoteSuggestionContentProvider alloc];
    displayName = [v9 displayName];
    uuid = [suggestionCopy uuid];
    v15 = [(NCMutingRemoteSuggestionContentProvider *)v19 initWithNotificationRequest:requestCopy bundleDisplayName:displayName managementDelegate:self suggestionDelegate:self uuid:uuid scope:v14];
  }

LABEL_9:

  return v15;
}

- (id)_contentProviderForRequest:(id)request withDigestSuggestion:(id)suggestion
{
  requestCopy = request;
  suggestionCopy = suggestion;
  sectionIdentifier = [requestCopy sectionIdentifier];
  v9 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:sectionIdentifier];

  if ([v9 isScheduledDeliveryEnabled])
  {
    v10 = 0;
  }

  else
  {
    v11 = [NCDigestRemoteSuggestionContentProvider alloc];
    displayName = [v9 displayName];
    uuid = [suggestionCopy uuid];
    v10 = [(NCDigestRemoteSuggestionContentProvider *)v11 initWithNotificationRequest:requestCopy bundleDisplayName:displayName managementDelegate:self suggestionDelegate:self uuid:uuid];
  }

  return v10;
}

- (id)_contentProviderForRequest:(id)request withUrgencyTuningSuggestion:(id)suggestion
{
  requestCopy = request;
  suggestionCopy = suggestion;
  sectionIdentifier = [requestCopy sectionIdentifier];
  v9 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:sectionIdentifier];

  if ([v9 isTimeSensitiveEnabled])
  {
    v10 = [NCTimeSensitiveRemoteSuggestionContentProvider alloc];
    displayName = [v9 displayName];
    uuid = [suggestionCopy uuid];
    v13 = [(NCTimeSensitiveRemoteSuggestionContentProvider *)v10 initWithNotificationRequest:requestCopy bundleDisplayName:displayName managementDelegate:self suggestionDelegate:self uuid:uuid];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_contentProviderForRequest:(id)request withSendMessagesToDigestSuggestion:(id)suggestion
{
  requestCopy = request;
  suggestionCopy = suggestion;
  sectionIdentifier = [requestCopy sectionIdentifier];
  v9 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:sectionIdentifier];

  if ([v9 isScheduledDeliveryEnabled] && objc_msgSend(v9, "isDirectMessagesEnabled"))
  {
    v10 = [NCMessagesInDigestRemoteSuggestionContentProvider alloc];
    displayName = [v9 displayName];
    uuid = [suggestionCopy uuid];
    v13 = [(NCMessagesInDigestRemoteSuggestionContentProvider *)v10 initWithNotificationRequest:requestCopy bundleDisplayName:displayName managementDelegate:self suggestionDelegate:self uuid:uuid];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_contentProviderForRequest:(id)request withTurnOffNotificationsForAppSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  requestCopy = request;
  sectionIdentifier = [requestCopy sectionIdentifier];
  v9 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:sectionIdentifier];

  v10 = [NCTurnOffNotificationsForAppRemoteSuggestionContentProvider alloc];
  displayName = [v9 displayName];
  uuid = [suggestionCopy uuid];

  v13 = [(NCTurnOffNotificationsForAppRemoteSuggestionContentProvider *)v10 initWithNotificationRequest:requestCopy bundleDisplayName:displayName managementDelegate:self suggestionDelegate:self uuid:uuid];

  return v13;
}

- (NCSuggestionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __46__NCSuggestionManager_reloadRemoteSuggestions__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21E77E000, a2, OS_LOG_TYPE_ERROR, "Error retrieving active notification suggestions with error: %@", &v2, 0xCu);
}

void __46__NCSuggestionManager_reloadRemoteSuggestions__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21E77E000, a2, OS_LOG_TYPE_DEBUG, "Active notification suggestions request throttled with error: %@", &v2, 0xCu);
}

- (void)_addSuggestionForNotificationRequest:(void *)a1 managementContentProvider:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 notificationIdentifier];
  v5 = [v4 un_logDigest];
  v6 = [a2 sectionIdentifier];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0_4(&dword_21E77E000, v7, v8, "Not adding suggestion for request %{public}@ from section %{public}@ since the section doesnt have user configurable settings", v9, v10, v11, v12, v13);
}

- (void)_addSuggestionForNotificationRequest:(void *)a1 managementContentProvider:(void *)a2 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 notificationIdentifier];
  v5 = [v4 un_logDigest];
  v6 = [a2 sectionIdentifier];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0_4(&dword_21E77E000, v7, v8, "Not adding suggestion for request %{public}@ from section %{public}@ since there is an existing suggestion for this section", v9, v10, v11, v12, v13);
}

@end