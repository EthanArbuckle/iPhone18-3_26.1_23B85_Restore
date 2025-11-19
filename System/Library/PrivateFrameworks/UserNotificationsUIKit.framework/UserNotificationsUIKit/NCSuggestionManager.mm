@interface NCSuggestionManager
- (BOOL)_addSuggestionForNotificationRequest:(id)a3 managementContentProvider:(id)a4;
- (BOOL)_createContactMatchingSuggestionIfNeededForRequest:(id)a3 sectionSettings:(id)a4;
- (BOOL)_createDirectMessagesSuggestionIfNeededForNotificationRequest:(id)a3 sectionSettings:(id)a4;
- (BOOL)_createNewStackSummarySuggestionForNotificationRequest:(id)a3 sectionSettings:(id)a4;
- (BOOL)_createPriorityFeedbackSuggestionIfNeededForRequest:(id)a3 sectionSettings:(id)a4;
- (BOOL)_createProvisionalAuthorizationSuggestionIfNeededForRequest:(id)a3 sectionSettings:(id)a4;
- (BOOL)_createRemoteSuggestionIfNeededForRequest:(id)a3 remoteSuggestion:(id)a4;
- (BOOL)_createStackSummarySuggestionIfNeededForRequest:(id)a3 sectionSettings:(id)a4;
- (BOOL)_createTimeSensitiveSuggestionIfNeededForNotificationRequest:(id)a3 sectionSettings:(id)a4;
- (NCSuggestionManager)init;
- (NCSuggestionManagerDelegate)delegate;
- (id)_contentProviderForRequest:(id)a3 withDigestSuggestion:(id)a4;
- (id)_contentProviderForRequest:(id)a3 withModeConfigurationTuningSuggestion:(id)a4;
- (id)_contentProviderForRequest:(id)a3 withMutingSuggestion:(id)a4;
- (id)_contentProviderForRequest:(id)a3 withRemoteSuggestion:(id)a4;
- (id)_contentProviderForRequest:(id)a3 withSendMessagesToDigestSuggestion:(id)a4;
- (id)_contentProviderForRequest:(id)a3 withTurnOffNotificationsForAppSuggestion:(id)a4;
- (id)_contentProviderForRequest:(id)a3 withUrgencyTuningSuggestion:(id)a4;
- (id)_sectionSettingsForSectionIdentifier:(id)a3;
- (id)auxiliaryOptionsContentProviderForNotificationRequest:(id)a3 isLongLook:(BOOL)a4;
- (id)requestMatchingRequest:(id)a3 inSet:(id)a4;
- (void)_createNewCuratedContactMatchSuggestionForNotificationRequest:(id)a3 sectionSettings:(id)a4 contactName:(id)a5;
- (void)_createNewDirectMessagesInDigestSuggestionForNotificationRequest:(id)a3 sectionSettings:(id)a4;
- (void)_createNewPriorityFeedbackSuggestionForNotificationRequest:(id)a3 sectionSettings:(id)a4;
- (void)_createNewPromotingSuggestionForNotificationRequest:(id)a3 sectionSettings:(id)a4;
- (void)_createNewTimeSensitiveInDigestSuggestionForNotificationRequest:(id)a3 sectionSettings:(id)a4;
- (void)_createNewTimeSensitiveSuggestionForNotificationRequest:(id)a3 sectionSettings:(id)a4;
- (void)_reloadSuggestionForNotificationRequest:(id)a3 sectionSettings:(id)a4;
- (void)_removeSuggestionIfNecessaryForNotificationRequest:(id)a3;
- (void)_updateContentForNotificationRequest:(id)a3;
- (void)checkSuggestionNeededForNotificationRequest:(id)a3 withHighlightsListCount:(unint64_t)a4;
- (void)clearSuggestionForNotificationRequest:(id)a3;
- (void)logResponseForNotificationRequest:(id)a3 allowsNotifications:(BOOL)a4;
- (void)logResponseForNotificationRequest:(id)a3 allowsTimeSensitive:(BOOL)a4;
- (void)logResponseForNotificationRequest:(id)a3 muted:(BOOL)a4;
- (void)logResponseForNotificationRequest:(id)a3 scheduledDelivery:(BOOL)a4;
- (void)notificationManagementContentProvider:(id)a3 requestsPresentingNotificationManagementViewType:(unint64_t)a4 forNotificationRequest:(id)a5 withPresentingView:(id)a6;
- (void)notificationManagementContentProvider:(id)a3 setAllowsDirectMessages:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)notificationManagementContentProvider:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)notificationManagementContentProvider:(id)a3 setCuratedContactSuggestionConfirmed:(BOOL)a4 request:(id)a5;
- (void)notificationManagementContentProvider:(id)a3 setModeConfiguration:(id)a4;
- (void)notificationManagementContentProvider:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forSectionIdentifier:(id)a6 threadIdentifier:(id)a7;
- (void)notificationManagementContentProvider:(id)a3 setScheduledDelivery:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)reloadContactSuggestions;
- (void)reloadRemoteSuggestions;
- (void)requestStackSummarySuggestionVisible:(BOOL)a3 forRequest:(id)a4;
- (void)setDeviceAuthenticated:(BOOL)a3;
- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4;
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

  v4 = [MEMORY[0x277CEB1B8] sharedInstance];
  objc_initWeak(buf, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NCSuggestionManager_reloadRemoteSuggestions__block_invoke;
  v6[3] = &unk_278371D88;
  objc_copyWeak(&v9, buf);
  v5 = v4;
  v7 = v5;
  v8 = self;
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
  v2 = [(NCSuggestionManager *)self requestsWithContactSuggestions];
  v3 = [v2 copy];

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
        v10 = [v9 content];
        v11 = [v10 communicationContext];

        v12 = [v11 sender];
        if (v12)
        {
          v13 = [MEMORY[0x277D77F58] sharedInstance];
          v14 = [v9 topLevelSectionIdentifier];
          v15 = [v13 curatedContactMatchDetailsForContact:v12 bundleIdentifier:v14];

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

- (void)requestStackSummarySuggestionVisible:(BOOL)a3 forRequest:(id)a4
{
  v4 = a3;
  v6 = a4;
  v9 = v6;
  if (v4)
  {
    v7 = [v6 sectionIdentifier];
    v8 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:v7];

    if ([v8 isUserConfigurable])
    {
      [(NCSuggestionManager *)self _createStackSummarySuggestionIfNeededForRequest:v9 sectionSettings:v8];
    }
  }

  else
  {
    [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:v6];
  }
}

- (void)checkSuggestionNeededForNotificationRequest:(id)a3 withHighlightsListCount:(unint64_t)a4
{
  v8 = a3;
  v6 = [v8 sectionIdentifier];
  v7 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:v6];

  [(NCSuggestionManager *)self setHighlightsListCount:a4];
  if ([v7 isUserConfigurable])
  {
    if (([v8 isHighlight] & 1) != 0 || !-[NCSuggestionManager _createTimeSensitiveSuggestionIfNeededForNotificationRequest:sectionSettings:](self, "_createTimeSensitiveSuggestionIfNeededForNotificationRequest:sectionSettings:", v8, v7) && !-[NCSuggestionManager _createDirectMessagesSuggestionIfNeededForNotificationRequest:sectionSettings:](self, "_createDirectMessagesSuggestionIfNeededForNotificationRequest:sectionSettings:", v8, v7) && !-[NCSuggestionManager _createProvisionalAuthorizationSuggestionIfNeededForRequest:sectionSettings:](self, "_createProvisionalAuthorizationSuggestionIfNeededForRequest:sectionSettings:", v8, v7) && !-[NCSuggestionManager _createContactMatchingSuggestionIfNeededForRequest:sectionSettings:](self, "_createContactMatchingSuggestionIfNeededForRequest:sectionSettings:", v8, v7))
    {
      [(NCSuggestionManager *)self _createPriorityFeedbackSuggestionIfNeededForRequest:v8 sectionSettings:v7];
    }

    if ([(NCSuggestionManager *)self highlightsListCount])
    {
      [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:self->_requestWithPriorityFeedbackSuggestion];
    }
  }
}

- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 sectionIdentifier];
  if ([(NSMutableSet *)self->_sectionIdentifiersWithNotificationManagementSuggestions containsObject:v6])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(NSMutableDictionary *)self->_suggestionContentProviders allKeys];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v12 sectionIdentifier];
          v14 = [v13 isEqualToString:v6];

          if (v14)
          {
            [(NCSuggestionManager *)self _reloadSuggestionForNotificationRequest:v12 sectionSettings:v5];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (id)requestMatchingRequest:(id)a3 inSet:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__NCSuggestionManager_requestMatchingRequest_inSet___block_invoke;
  v9[3] = &unk_27836FFD8;
  v10 = v5;
  v6 = v5;
  v7 = [a4 bs_firstObjectPassingTest:v9];

  return v7;
}

- (void)_reloadSuggestionForNotificationRequest:(id)a3 sectionSettings:(id)a4
{
  v15 = a3;
  v6 = a4;
  [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:v15];
  if ([(NCNotificationRequest *)self->_requestWithProvisionalNotificationManagementSuggestion matchesRequest:v15])
  {
    [(NCSuggestionManager *)self _createProvisionalAuthorizationSuggestionIfNeededForRequest:v15 sectionSettings:v6];
  }

  else if ([(NSMutableSet *)self->_requestsWithTimeSensitiveManagementSuggestion containsObject:v15])
  {
    [(NCSuggestionManager *)self _createTimeSensitiveSuggestionIfNeededForNotificationRequest:v15 sectionSettings:v6];
  }

  else if ([(NSMutableSet *)self->_requestsWithDirectMessagesManagementSuggestion containsObject:v15])
  {
    [(NCSuggestionManager *)self _createDirectMessagesSuggestionIfNeededForNotificationRequest:v15 sectionSettings:v6];
  }

  else
  {
    v7 = [(NCSuggestionManager *)self requestMatchingRequest:v15 inSet:self->_requestsWithStackSummarySuggestions];

    if (v7)
    {
      [(NCSuggestionManager *)self _createStackSummarySuggestionIfNeededForRequest:v15 sectionSettings:v6];
    }

    else if ([(NCNotificationRequest *)self->_requestWithPriorityFeedbackSuggestion matchesRequest:v15])
    {
      [(NCSuggestionManager *)self _createPriorityFeedbackSuggestionIfNeededForRequest:v15 sectionSettings:v6];
    }

    else if ([(NSMutableSet *)self->_requestsWithRemoteSuggestions containsObject:v15])
    {
      remoteSuggestions = self->_remoteSuggestions;
      v9 = [v15 uuid];
      v10 = [(NSMutableDictionary *)remoteSuggestions objectForKey:v9];

      if (v10 && ![(NCSuggestionManager *)self _createRemoteSuggestionIfNeededForRequest:v15 remoteSuggestion:v10])
      {
        v11 = [MEMORY[0x277CEB1B8] sharedInstance];
        v12 = [v10 subtype];
        v13 = [v10 uuid];
        v14 = [MEMORY[0x277CBEAA8] now];
        [v11 logSuggestionEvent:5 suggestionType:v12 suggestionIdentifier:v13 timestamp:v14];
      }
    }
  }
}

- (void)clearSuggestionForNotificationRequest:(id)a3
{
  v4 = a3;
  remoteSuggestions = self->_remoteSuggestions;
  v12 = v4;
  v6 = [v4 uuid];
  v7 = [(NSMutableDictionary *)remoteSuggestions objectForKey:v6];

  if (v7)
  {
    v8 = [MEMORY[0x277CEB1B8] sharedInstance];
    v9 = [v7 subtype];
    v10 = [v7 uuid];
    v11 = [MEMORY[0x277CBEAA8] now];
    [v8 logSuggestionEvent:4 suggestionType:v9 suggestionIdentifier:v10 timestamp:v11];
  }

  [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:v12];
}

- (BOOL)_createTimeSensitiveSuggestionIfNeededForNotificationRequest:(id)a3 sectionSettings:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 alertOptions];
  v9 = [v8 suppression];

  if (!v9 && [v6 interruptionLevel] == 2 && objc_msgSend(v7, "isTimeSensitiveEnabled") && (objc_msgSend(v7, "hasUserConfiguredTimeSensitiveSetting") & 1) == 0)
  {
    requestsWithTimeSensitiveManagementSuggestion = self->_requestsWithTimeSensitiveManagementSuggestion;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __100__NCSuggestionManager__createTimeSensitiveSuggestionIfNeededForNotificationRequest_sectionSettings___block_invoke;
    v36[3] = &unk_2783708B8;
    v13 = v6;
    v37 = v13;
    v14 = [(NSMutableSet *)requestsWithTimeSensitiveManagementSuggestion objectsPassingTest:v36];
    v15 = [v14 anyObject];

    if (v15)
    {
      v16 = [v13 timestamp];
      v17 = [v15 timestamp];
      v18 = [v16 compare:v17];

      if (v18 != 1)
      {
        goto LABEL_22;
      }

      [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:v15];
    }

    v19 = [v13 alertOptions];
    v20 = [v19 reason];

    if (v20 == 4)
    {
      v21 = *MEMORY[0x277D77DD8];
      if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v23 = [v13 notificationIdentifier];
        v24 = [v23 un_logDigest];
        v25 = [v13 sectionIdentifier];
        *buf = 138543618;
        v39 = v24;
        v40 = 2114;
        v41 = v25;
        _os_log_impl(&dword_21E77E000, v22, OS_LOG_TYPE_DEFAULT, "Creating time sensitive suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
      }

      [(NCSuggestionManager *)self _createNewTimeSensitiveSuggestionForNotificationRequest:v13 sectionSettings:v7];
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

    if ([v7 isScheduledDeliveryEnabled])
    {
      v29 = [v13 alertOptions];
      v30 = [v29 reason];

      if (v30 == 1)
      {
        v31 = *MEMORY[0x277D77DD8];
        if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_DEFAULT))
        {
          v32 = v31;
          v33 = [v13 notificationIdentifier];
          v34 = [v33 un_logDigest];
          v35 = [v13 sectionIdentifier];
          *buf = 138543618;
          v39 = v34;
          v40 = 2114;
          v41 = v35;
          _os_log_impl(&dword_21E77E000, v32, OS_LOG_TYPE_DEFAULT, "Creating time sensitive digest suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
        }

        [(NCSuggestionManager *)self _createNewTimeSensitiveInDigestSuggestionForNotificationRequest:v13 sectionSettings:v7];
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

- (BOOL)_createDirectMessagesSuggestionIfNeededForNotificationRequest:(id)a3 sectionSettings:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 content];
  v9 = [v8 contentType];
  v10 = [v9 isEqualToString:*MEMORY[0x277CE2158]];

  if (v10 && [v7 isDirectMessagesEnabled] && (objc_msgSend(v7, "hasUserConfiguredDirectMessagesSetting") & 1) == 0 && objc_msgSend(v7, "isScheduledDeliveryEnabled"))
  {
    requestsWithDirectMessagesManagementSuggestion = self->_requestsWithDirectMessagesManagementSuggestion;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __101__NCSuggestionManager__createDirectMessagesSuggestionIfNeededForNotificationRequest_sectionSettings___block_invoke;
    v28[3] = &unk_2783708B8;
    v12 = v6;
    v29 = v12;
    v13 = [(NSMutableSet *)requestsWithDirectMessagesManagementSuggestion objectsPassingTest:v28];
    v14 = [v13 anyObject];

    if (v14)
    {
      v15 = [v12 timestamp];
      v16 = [v14 timestamp];
      v17 = [v15 compare:v16];

      if (v17 != 1)
      {
        v26 = 0;
LABEL_16:

        goto LABEL_14;
      }

      [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:v14];
    }

    v18 = *MEMORY[0x277D77DD8];
    if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [v12 notificationIdentifier];
      v21 = [v20 un_logDigest];
      v22 = [v12 sectionIdentifier];
      *buf = 138543618;
      v31 = v21;
      v32 = 2114;
      v33 = v22;
      _os_log_impl(&dword_21E77E000, v19, OS_LOG_TYPE_DEFAULT, "Creating direct messages digest suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
    }

    [(NCSuggestionManager *)self _createNewDirectMessagesInDigestSuggestionForNotificationRequest:v12 sectionSettings:v7];
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

- (BOOL)_createProvisionalAuthorizationSuggestionIfNeededForRequest:(id)a3 sectionSettings:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (![v8 hasProvisionalAuthorization])
  {
    goto LABEL_11;
  }

  p_requestWithProvisionalNotificationManagementSuggestion = &self->_requestWithProvisionalNotificationManagementSuggestion;
  if (self->_requestWithProvisionalNotificationManagementSuggestion)
  {
    v10 = [v7 sectionIdentifier];
    v11 = [(NCNotificationRequest *)*p_requestWithProvisionalNotificationManagementSuggestion sectionIdentifier];
    if ([v10 isEqualToString:v11])
    {
      v12 = [v7 timestamp];
      v13 = [(NCNotificationRequest *)*p_requestWithProvisionalNotificationManagementSuggestion timestamp];
      v14 = [v12 compare:v13];

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
    v17 = [v7 notificationIdentifier];
    v18 = [v17 un_logDigest];
    v19 = [v7 sectionIdentifier];
    v22 = 138543618;
    v23 = v18;
    v24 = 2114;
    v25 = v19;
    _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "Creating promoting suggestion for provisional request %{public}@ from section %{public}@", &v22, 0x16u);
  }

  [(NCSuggestionManager *)self _createNewPromotingSuggestionForNotificationRequest:v7 sectionSettings:v8];
  objc_storeStrong(&self->_requestWithProvisionalNotificationManagementSuggestion, a3);
  v20 = 1;
LABEL_12:

  return v20;
}

- (BOOL)_createContactMatchingSuggestionIfNeededForRequest:(id)a3 sectionSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 content];
  v9 = [v8 communicationContext];

  v10 = [v9 sender];
  v11 = 0;
  if ([v9 isDirect] && v10)
  {
    v12 = [MEMORY[0x277D77F58] sharedInstance];
    v13 = [v6 topLevelSectionIdentifier];
    v14 = [v12 curatedContactMatchDetailsForContact:v10 bundleIdentifier:v13];

    if (v14 && [v14 isSuggestedMatch])
    {
      v15 = [v14 cnContactFullname];
      [(NCSuggestionManager *)self _createNewCuratedContactMatchSuggestionForNotificationRequest:v6 sectionSettings:v7 contactName:v15];

      [(NSMutableSet *)self->_requestsWithContactSuggestions addObject:v6];
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)_createStackSummarySuggestionIfNeededForRequest:(id)a3 sectionSettings:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  summarizationSuggestionManager = self->_summarizationSuggestionManager;
  v9 = [v6 sectionIdentifier];
  LODWORD(summarizationSuggestionManager) = [(NCSummarizationChinSuggestionManager *)summarizationSuggestionManager shouldShowChinSuggestionAfterStackSummaryShownForBundleId:v9];

  if (summarizationSuggestionManager)
  {
    requestsWithStackSummarySuggestions = self->_requestsWithStackSummarySuggestions;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __87__NCSuggestionManager__createStackSummarySuggestionIfNeededForRequest_sectionSettings___block_invoke;
    v50[3] = &unk_2783708B8;
    v11 = v6;
    v51 = v11;
    v12 = [(NSMutableSet *)requestsWithStackSummarySuggestions objectsPassingTest:v50];
    v13 = [v12 anyObject];

    if (v13)
    {
      v14 = [(NSMutableSet *)v11 timestamp];
      v15 = [v13 timestamp];
      v16 = [v14 compare:v15];

      if (v16 != 1)
      {
        goto LABEL_29;
      }

      [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:v13];
    }

    v17 = *MEMORY[0x277D77DD8];
    if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [(NSMutableSet *)v11 notificationIdentifier];
      v20 = [v19 un_logDigest];
      v21 = [(NSMutableSet *)v11 sectionIdentifier];
      *buf = 138543618;
      v55 = v20;
      v56 = 2114;
      v57 = v21;
      _os_log_impl(&dword_21E77E000, v18, OS_LOG_TYPE_DEFAULT, "Creating stack summary for request %{public}@ from section %{public}@", buf, 0x16u);
    }

    if (![(NSMutableSet *)self->_requestsWithStackSummarySuggestions count]&& [(NCSuggestionManager *)self _createNewStackSummarySuggestionForNotificationRequest:v11 sectionSettings:v7])
    {
      [(NSMutableSet *)self->_requestsWithStackSummarySuggestions addObject:v11];
      v22 = self->_summarizationSuggestionManager;
      v23 = [(NSMutableSet *)v11 sectionIdentifier];
      [(NCSummarizationChinSuggestionManager *)v22 recordEvent:0 bundleId:v23];

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
    v41 = v7;
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
        v37 = [v36 sectionIdentifier];
        v38 = [v6 sectionIdentifier];
        v39 = [v37 isEqualToString:v38];

        if (v39)
        {
          [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:v36];
        }
      }

      v33 = [(NSMutableSet *)v31 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v33);
    v30 = 0;
    v7 = v41;
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

- (BOOL)_createPriorityFeedbackSuggestionIfNeededForRequest:(id)a3 sectionSettings:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (self->_requestWithPriorityFeedbackSuggestion || !os_variant_has_internal_content() || ![v7 isHighlight] || -[NCSuggestionManager highlightsListCount](self, "highlightsListCount") || arc4random_uniform(0x14u))
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
    v14 = [v7 notificationIdentifier];
    v15 = [v14 un_logDigest];
    v16 = [v7 sectionIdentifier];
    v20 = 138543618;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "Creating priority feedback suggestion for request %{public}@ from section %{public}@", &v20, 0x16u);
  }

  [(NCSuggestionManager *)self _createNewPriorityFeedbackSuggestionForNotificationRequest:v7 sectionSettings:v8];
  objc_storeStrong(&self->_requestWithPriorityFeedbackSuggestion, a3);
  v17 = [[NCSummarizationFeedbackManager alloc] initWithRequest:v7 isShowingStackSummary:0];
  [(NCSummarizationFeedbackManager *)v17 recordInternalPriorityFeedbackEvent:0];

  v18 = 1;
LABEL_13:

  return v18;
}

- (BOOL)_createRemoteSuggestionIfNeededForRequest:(id)a3 remoteSuggestion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NCSuggestionManager *)self remoteSuggestions];
  v9 = [v6 uuid];
  [v8 setObject:v7 forKey:v9];

  v10 = [(NCSuggestionManager *)self _contentProviderForRequest:v6 withRemoteSuggestion:v7];

  if (v10 && (-[NCSuggestionManager suggestionContentProviders](self, "suggestionContentProviders"), v11 = objc_claimAutoreleasedReturnValue(), [v11 objectForKey:v6], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12) && -[NCSuggestionManager _addSuggestionForNotificationRequest:managementContentProvider:](self, "_addSuggestionForNotificationRequest:managementContentProvider:", v6, v10))
  {
    v13 = [(NCSuggestionManager *)self requestsWithRemoteSuggestions];
    [v13 addObject:v6];

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)auxiliaryOptionsContentProviderForNotificationRequest:(id)a3 isLongLook:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (v4)
    {
      v8 = [v6 sectionIdentifier];
      v9 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:v8];
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
      v10 = [(NSMutableDictionary *)self->_suggestionContentProviders objectForKey:v6];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setDeviceAuthenticated:(BOOL)a3
{
  if (self->_deviceAuthenticated != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_deviceAuthenticated = a3;
    v6 = [(NCSuggestionManager *)self suggestionContentProviders];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__NCSuggestionManager_setDeviceAuthenticated___block_invoke;
    v7[3] = &unk_278371DB0;
    v7[4] = self;
    [v6 enumerateKeysAndObjectsUsingBlock:v7];
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

- (void)logResponseForNotificationRequest:(id)a3 allowsNotifications:(BOOL)a4
{
  v6 = a3;
  v9 = v6;
  if (!a4)
  {
    v7 = [(NCSuggestionManager *)self suggestionContentProviders];
    v8 = [v7 objectForKey:v9];

    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 logSuggestionEvent:2];
    }

    v6 = v9;
  }

  [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:v6];
}

- (void)logResponseForNotificationRequest:(id)a3 allowsTimeSensitive:(BOOL)a4
{
  v6 = a3;
  v9 = v6;
  if (!a4)
  {
    v7 = [(NCSuggestionManager *)self suggestionContentProviders];
    v8 = [v7 objectForKey:v9];

    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 logSuggestionEvent:2];
    }

    v6 = v9;
  }

  [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:v6];
}

- (void)logResponseForNotificationRequest:(id)a3 muted:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v9 = v6;
  if (v4)
  {
    v7 = [(NCSuggestionManager *)self suggestionContentProviders];
    v8 = [v7 objectForKey:v9];

    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 logSuggestionEvent:2];
    }

    v6 = v9;
  }

  [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:v6];
}

- (void)logResponseForNotificationRequest:(id)a3 scheduledDelivery:(BOOL)a4
{
  v7 = a3;
  v5 = [(NCSuggestionManager *)self suggestionContentProviders];
  v6 = [v5 objectForKey:v7];

  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 logSuggestionEvent:2];
  }

  [(NCSuggestionManager *)self _removeSuggestionIfNecessaryForNotificationRequest:v7];
}

- (void)notificationManagementContentProvider:(id)a3 requestsPresentingNotificationManagementViewType:(unint64_t)a4 forNotificationRequest:(id)a5 withPresentingView:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = [(NCSuggestionManager *)self delegate];
  [v11 suggestionManager:self requestsPresentingNotificationManagementViewType:a4 forNotificationRequest:v10 withPresentingView:v9];
}

- (void)notificationManagementContentProvider:(id)a3 setCuratedContactSuggestionConfirmed:(BOOL)a4 request:(id)a5
{
  v5 = a4;
  v12 = a5;
  v7 = [v12 content];
  v8 = [v7 communicationContext];
  v9 = [v8 sender];

  if (v9)
  {
    v10 = [MEMORY[0x277D77F58] sharedInstance];
    v11 = [v12 topLevelSectionIdentifier];
    [v10 confirmCuratedContactSuggestion:v5 forContact:v9 bundleIdentifier:v11];
  }

  [(NCSuggestionManager *)self reloadContactSuggestions];
}

- (void)notificationManagementContentProvider:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forSectionIdentifier:(id)a6 threadIdentifier:(id)a7
{
  v9 = a4;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = [(NCSuggestionManager *)self delegate];
  [v14 suggestionManager:self setMuted:v9 untilDate:v13 forSectionIdentifier:v12 threadIdentifier:v11];
}

- (void)notificationManagementContentProvider:(id)a3 setScheduledDelivery:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [(NCSuggestionManager *)self delegate];
  [v8 suggestionManager:self setScheduledDelivery:v5 forSectionIdentifier:v7];
}

- (void)notificationManagementContentProvider:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [(NCSuggestionManager *)self delegate];
  [v8 suggestionManager:self setAllowsTimeSensitive:v5 forSectionIdentifier:v7];
}

- (void)notificationManagementContentProvider:(id)a3 setAllowsDirectMessages:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [(NCSuggestionManager *)self delegate];
  [v8 suggestionManager:self setAllowsDirectMessages:v5 forSectionIdentifier:v7];
}

- (void)notificationManagementContentProvider:(id)a3 setModeConfiguration:(id)a4
{
  v5 = a4;
  v6 = [(NCSuggestionManager *)self delegate];
  [v6 suggestionManager:self setModeConfiguration:v5];
}

- (void)_updateContentForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCSuggestionManager *)self delegate];
  [v5 suggestionManager:self requestsUpdatingContentForNotificationRequest:v4];
}

- (id)_sectionSettingsForSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NCSuggestionManager *)self delegate];
  v6 = [v5 suggestionManager:self requestsSectionSettingsForSectionIdentifier:v4];

  return v6;
}

- (BOOL)_addSuggestionForNotificationRequest:(id)a3 managementContentProvider:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  sectionIdentifiersWithNotificationManagementSuggestions = self->_sectionIdentifiersWithNotificationManagementSuggestions;
  v9 = [v6 sectionIdentifier];
  LOBYTE(sectionIdentifiersWithNotificationManagementSuggestions) = [(NSMutableSet *)sectionIdentifiersWithNotificationManagementSuggestions containsObject:v9];

  if (sectionIdentifiersWithNotificationManagementSuggestions)
  {
    v10 = *MEMORY[0x277D77DD8];
    if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_ERROR))
    {
      [NCSuggestionManager _addSuggestionForNotificationRequest:v10 managementContentProvider:v6];
    }

    LOBYTE(v11) = 0;
  }

  else
  {
    v12 = [v6 sectionIdentifier];
    v13 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:v12];

    v11 = [v13 isUserConfigurable];
    v14 = *MEMORY[0x277D77DD8];
    if (v11)
    {
      if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        v16 = [v6 notificationIdentifier];
        v17 = [v16 un_logDigest];
        v18 = [v6 sectionIdentifier];
        *buf = 138543618;
        v26 = v17;
        v27 = 2114;
        v28 = v18;
        _os_log_impl(&dword_21E77E000, v15, OS_LOG_TYPE_DEFAULT, "Adding suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
      }

      [(NSMutableDictionary *)self->_suggestionContentProviders setObject:v7 forKey:v6];
      v19 = self->_sectionIdentifiersWithNotificationManagementSuggestions;
      v20 = [v6 sectionIdentifier];
      [(NSMutableSet *)v19 addObject:v20];

      if ([v13 contentPreviewSetting])
      {
        v21 = [(NCSuggestionManager *)self isDeviceAuthenticated];
      }

      else
      {
        v21 = 1;
      }

      [v7 setAuxiliaryOptionsVisible:v21];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __86__NCSuggestionManager__addSuggestionForNotificationRequest_managementContentProvider___block_invoke;
      v23[3] = &unk_27836F560;
      v23[4] = self;
      v24 = v6;
      dispatch_async(MEMORY[0x277D85CD0], v23);
    }

    else if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_ERROR))
    {
      [NCSuggestionManager _addSuggestionForNotificationRequest:v14 managementContentProvider:v6];
    }
  }

  return v11;
}

- (void)_createNewPromotingSuggestionForNotificationRequest:(id)a3 sectionSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NCNotificationManagementPromotingSuggestionContentProvider alloc];
  v9 = [v6 displayName];

  v10 = [(NCNotificationManagementPromotingSuggestionContentProvider *)v8 initWithNotificationRequest:v7 bundleDisplayName:v9 managementDelegate:self suggestionDelegate:self];
  [(NCSuggestionManager *)self _addSuggestionForNotificationRequest:v7 managementContentProvider:v10];
}

- (void)_createNewTimeSensitiveSuggestionForNotificationRequest:(id)a3 sectionSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NCNotificationManagementTimeSensitiveSuggestionContentProvider alloc];
  v9 = [v6 displayName];

  v10 = [(NCNotificationManagementTimeSensitiveSuggestionContentProvider *)v8 initWithNotificationRequest:v7 bundleDisplayName:v9 managementDelegate:self suggestionDelegate:self];
  [(NCSuggestionManager *)self _addSuggestionForNotificationRequest:v7 managementContentProvider:v10];
}

- (void)_createNewTimeSensitiveInDigestSuggestionForNotificationRequest:(id)a3 sectionSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NCNotificationManagementTimeSensitiveInDigestSuggestionContentProvider alloc];
  v9 = [v6 displayName];

  v10 = [(NCNotificationManagementTimeSensitiveInDigestSuggestionContentProvider *)v8 initWithNotificationRequest:v7 bundleDisplayName:v9 managementDelegate:self suggestionDelegate:self];
  [(NCSuggestionManager *)self _addSuggestionForNotificationRequest:v7 managementContentProvider:v10];
}

- (void)_createNewDirectMessagesInDigestSuggestionForNotificationRequest:(id)a3 sectionSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider alloc];
  v9 = [v6 displayName];

  v10 = [(NCNotificationManagementDirectMessagesInDigestSuggestionContentProvider *)v8 initWithNotificationRequest:v7 bundleDisplayName:v9 managementDelegate:self suggestionDelegate:self];
  [(NCSuggestionManager *)self _addSuggestionForNotificationRequest:v7 managementContentProvider:v10];
}

- (void)_createNewCuratedContactMatchSuggestionForNotificationRequest:(id)a3 sectionSettings:(id)a4 contactName:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NCNotificationManagementCuratedContactMatchSuggestionContentProvider alloc];
  v12 = [v9 displayName];

  v13 = [(NCNotificationManagementCuratedContactMatchSuggestionContentProvider *)v11 initWithNotificationRequest:v10 bundleDisplayName:v12 managementDelegate:self suggestionDelegate:self contactName:v8];
  [(NCSuggestionManager *)self _addSuggestionForNotificationRequest:v10 managementContentProvider:v13];
}

- (BOOL)_createNewStackSummarySuggestionForNotificationRequest:(id)a3 sectionSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NCNotificationManagementStackSummarySuggestionContentProvider alloc];
  v9 = [v6 displayName];

  v10 = [(NCNotificationManagementStackSummarySuggestionContentProvider *)v8 initWithNotificationRequest:v7 bundleDisplayName:v9 managementDelegate:self suggestionDelegate:self summarizationSuggestionManager:self->_summarizationSuggestionManager];
  LOBYTE(self) = [(NCSuggestionManager *)self _addSuggestionForNotificationRequest:v7 managementContentProvider:v10];

  return self;
}

- (void)_createNewPriorityFeedbackSuggestionForNotificationRequest:(id)a3 sectionSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NCNotificationManagementPriorityFeedbackSuggestionContentProvider alloc];
  v9 = [v6 displayName];

  v10 = [(NCNotificationManagementPriorityFeedbackSuggestionContentProvider *)v8 initWithNotificationRequest:v7 bundleDisplayName:v9 managementDelegate:self suggestionDelegate:self];
  [(NCSuggestionManager *)self _addSuggestionForNotificationRequest:v7 managementContentProvider:v10];
}

- (void)_removeSuggestionIfNecessaryForNotificationRequest:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D77DD8];
  v6 = *MEMORY[0x277D77DD8];
  if (os_log_type_enabled(*MEMORY[0x277D77DD8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v4 notificationIdentifier];
    v9 = [v8 un_logDigest];
    v10 = [v4 sectionIdentifier];
    *buf = 138543618;
    v63 = v9;
    v64 = 2114;
    v65 = v10;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "Attempt to remove suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
  }

  if (v4)
  {
    if ([(NCNotificationRequest *)self->_requestWithProvisionalNotificationManagementSuggestion matchesRequest:v4])
    {
      v11 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        requestWithProvisionalNotificationManagementSuggestion = self->_requestWithProvisionalNotificationManagementSuggestion;
        v13 = v11;
        v14 = [(NCNotificationRequest *)requestWithProvisionalNotificationManagementSuggestion notificationIdentifier];
        v15 = [v14 un_logDigest];
        v16 = [(NCNotificationRequest *)self->_requestWithProvisionalNotificationManagementSuggestion sectionIdentifier];
        *buf = 138543618;
        v63 = v15;
        v64 = 2114;
        v65 = v16;
        _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "Removing suggestion for provisional request %{public}@ from section %{public}@", buf, 0x16u);
      }

      requestsWithTimeSensitiveManagementSuggestion = self->_requestWithProvisionalNotificationManagementSuggestion;
      self->_requestWithProvisionalNotificationManagementSuggestion = 0;
    }

    else if ([(NSMutableSet *)self->_requestsWithTimeSensitiveManagementSuggestion containsObject:v4])
    {
      v20 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = [v4 notificationIdentifier];
        v23 = [v22 un_logDigest];
        v24 = [v4 sectionIdentifier];
        *buf = 138543618;
        v63 = v23;
        v64 = 2114;
        v65 = v24;
        _os_log_impl(&dword_21E77E000, v21, OS_LOG_TYPE_DEFAULT, "Removing suggestion for time sensitive request %{public}@ from section %{public}@", buf, 0x16u);
      }

      [(NSMutableSet *)self->_requestsWithTimeSensitiveManagementSuggestion removeObject:v4];
      if ([(NSMutableSet *)self->_requestsWithTimeSensitiveManagementSuggestion count])
      {
        goto LABEL_9;
      }

      requestsWithTimeSensitiveManagementSuggestion = self->_requestsWithTimeSensitiveManagementSuggestion;
      self->_requestsWithTimeSensitiveManagementSuggestion = 0;
    }

    else
    {
      if (![(NSMutableSet *)self->_requestsWithDirectMessagesManagementSuggestion containsObject:v4])
      {
        if ([(NSMutableSet *)self->_requestsWithContactSuggestions containsObject:v4])
        {
          v30 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v30;
            v32 = [v4 notificationIdentifier];
            v33 = [v32 un_logDigest];
            v34 = [v4 sectionIdentifier];
            *buf = 138543618;
            v63 = v33;
            v64 = 2114;
            v65 = v34;
            _os_log_impl(&dword_21E77E000, v31, OS_LOG_TYPE_DEFAULT, "Removing contact suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
          }

          requestsWithContactSuggestions = self->_requestsWithContactSuggestions;
        }

        else
        {
          if (![(NSMutableSet *)self->_requestsWithStackSummarySuggestions containsObject:v4])
          {
            v41 = [(NCNotificationRequest *)self->_requestWithPriorityFeedbackSuggestion matchesRequest:v4];
            v42 = *v5;
            v43 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
            if (v41)
            {
              if (v43)
              {
                v44 = v42;
                v45 = [v4 notificationIdentifier];
                v46 = [v45 un_logDigest];
                v47 = [v4 sectionIdentifier];
                *buf = 138543618;
                v63 = v46;
                v64 = 2114;
                v65 = v47;
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

                v52 = [[NCSummarizationFeedbackManager alloc] initWithRequest:v4 isShowingStackSummary:0];
                [(NCSummarizationFeedbackManager *)v52 recordInternalPriorityFeedbackEvent:3];
              }
            }

            else
            {
              if (v43)
              {
                v53 = v42;
                v54 = [v4 notificationIdentifier];
                v55 = [v54 un_logDigest];
                v56 = [v4 sectionIdentifier];
                *buf = 138543618;
                v63 = v55;
                v64 = 2114;
                v65 = v56;
                _os_log_impl(&dword_21E77E000, v53, OS_LOG_TYPE_DEFAULT, "Removing remote suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
              }

              [(NSMutableSet *)self->_requestsWithRemoteSuggestions removeObject:v4];
              v57 = [v4 uuid];

              if (v57)
              {
                remoteSuggestions = self->_remoteSuggestions;
                v59 = [v4 uuid];
                [(NSMutableDictionary *)remoteSuggestions removeObjectForKey:v59];
              }
            }

            goto LABEL_9;
          }

          v36 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            v37 = v36;
            v38 = [v4 notificationIdentifier];
            v39 = [v38 un_logDigest];
            v40 = [v4 sectionIdentifier];
            *buf = 138543618;
            v63 = v39;
            v64 = 2114;
            v65 = v40;
            _os_log_impl(&dword_21E77E000, v37, OS_LOG_TYPE_DEFAULT, "Removing stack summary suggestion for request %{public}@ from section %{public}@", buf, 0x16u);
          }

          requestsWithContactSuggestions = self->_requestsWithStackSummarySuggestions;
        }

        [(NSMutableSet *)requestsWithContactSuggestions removeObject:v4];
LABEL_9:
        [(NSMutableDictionary *)self->_suggestionContentProviders removeObjectForKey:v4];
        sectionIdentifiersWithNotificationManagementSuggestions = self->_sectionIdentifiersWithNotificationManagementSuggestions;
        v19 = [v4 sectionIdentifier];
        [(NSMutableSet *)sectionIdentifiersWithNotificationManagementSuggestions removeObject:v19];

        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __74__NCSuggestionManager__removeSuggestionIfNecessaryForNotificationRequest___block_invoke;
        v60[3] = &unk_27836F560;
        v60[4] = self;
        v61 = v4;
        dispatch_async(MEMORY[0x277D85CD0], v60);

        goto LABEL_10;
      }

      v25 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v27 = [v4 notificationIdentifier];
        v28 = [v27 un_logDigest];
        v29 = [v4 sectionIdentifier];
        *buf = 138543618;
        v63 = v28;
        v64 = 2114;
        v65 = v29;
        _os_log_impl(&dword_21E77E000, v26, OS_LOG_TYPE_DEFAULT, "Removing suggestion for direct messages request %{public}@ from section %{public}@", buf, 0x16u);
      }

      [(NSMutableSet *)self->_requestsWithDirectMessagesManagementSuggestion removeObject:v4];
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

- (id)_contentProviderForRequest:(id)a3 withRemoteSuggestion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 subtype];
  v9 = 0;
  if (v8 > 6)
  {
    switch(v8)
    {
      case 7:
        v10 = [(NCSuggestionManager *)self _contentProviderForRequest:v6 withUrgencyTuningSuggestion:v7];
        break;
      case 8:
        v10 = [(NCSuggestionManager *)self _contentProviderForRequest:v6 withSendMessagesToDigestSuggestion:v7];
        break;
      case 9:
        v10 = [(NCSuggestionManager *)self _contentProviderForRequest:v6 withTurnOffNotificationsForAppSuggestion:v7];
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(v8)
    {
      case 4:
        v10 = [(NCSuggestionManager *)self _contentProviderForRequest:v6 withMutingSuggestion:v7];
        break;
      case 5:
        v10 = [(NCSuggestionManager *)self _contentProviderForRequest:v6 withModeConfigurationTuningSuggestion:v7];
        break;
      case 6:
        v10 = [(NCSuggestionManager *)self _contentProviderForRequest:v6 withDigestSuggestion:v7];
        break;
      default:
        goto LABEL_15;
    }
  }

  v9 = v10;
LABEL_15:

  return v9;
}

- (id)_contentProviderForRequest:(id)a3 withModeConfigurationTuningSuggestion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 sectionIdentifier];
  v9 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:v8];

  v10 = [v7 subObject];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained suggestionManagerRequestsCurrentModeConfiguration:self];

  v13 = [v12 configuration];
  if (!v12)
  {
    goto LABEL_9;
  }

  v14 = [v7 scope];
  if (v14 == 3)
  {
    v20 = DNDContactHandleFromNotificationRequest(v6);
    v21 = [v13 senderConfigurationType];
    v32 = v20;
    v22 = [v13 exceptionForContactHandle:v20];
    v23 = [v10 tuningSuggestionType];
    if (v23 == 3)
    {
      v19 = 0;
      if (v22 == 1 || v21 != 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v23 != 1)
      {
        v19 = 0;
LABEL_23:
        v28 = v32;
        goto LABEL_24;
      }

      v19 = 0;
      if (!v22 || v21)
      {
        goto LABEL_23;
      }
    }

    v29 = [NCModeConfigurationRemoteSuggestionContentProvider alloc];
    v26 = [v9 displayName];
    v30 = [v7 uuid];
    v19 = [(NCModeConfigurationRemoteSuggestionContentProvider *)v29 initWithNotificationRequest:v6 bundleDisplayName:v26 managementDelegate:self suggestionDelegate:self uuid:v30 suggestionType:0 scope:2 modeConfiguration:v12];

    v28 = v32;
    goto LABEL_21;
  }

  if (v14 != 1)
  {
    goto LABEL_9;
  }

  v15 = [v13 applicationConfigurationType];
  v16 = [v6 sectionIdentifier];
  v17 = [v13 exceptionForApplication:v16];

  v18 = [v10 tuningSuggestionType];
  if (v18 != 3)
  {
    if (v18 == 1)
    {
      v19 = 0;
      if (!v17 || v15)
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
  if (v17 != 1 && v15 == 1)
  {
LABEL_17:
    v24 = [NCModeConfigurationRemoteSuggestionContentProvider alloc];
    v25 = [v9 displayName];
    v26 = [v7 uuid];
    v27 = v24;
    v28 = v25;
    v19 = [(NCModeConfigurationRemoteSuggestionContentProvider *)v27 initWithNotificationRequest:v6 bundleDisplayName:v25 managementDelegate:self suggestionDelegate:self uuid:v26 suggestionType:0 scope:0 modeConfiguration:v12];
LABEL_21:

LABEL_24:
  }

LABEL_25:

  return v19;
}

- (id)_contentProviderForRequest:(id)a3 withMutingSuggestion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 sectionIdentifier];
  v9 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:v8];

  v10 = [v9 muteAssertion];
  v11 = [v6 uniqueThreadIdentifier];
  v12 = [v10 activeMuteAssertionLevelForThreadIdentifier:v11];

  v13 = [v7 scope];
  if (v13 != 2)
  {
    if (v13 != 1 || (v14 = 0, v12 == 2))
    {
      v15 = 0;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v16 = [v6 content];
  v17 = [v16 communicationContext];
  v18 = [v17 identifier];

  v15 = 0;
  if (v18 && v12 != 1)
  {
    v14 = 1;
LABEL_8:
    v19 = [NCMutingRemoteSuggestionContentProvider alloc];
    v20 = [v9 displayName];
    v21 = [v7 uuid];
    v15 = [(NCMutingRemoteSuggestionContentProvider *)v19 initWithNotificationRequest:v6 bundleDisplayName:v20 managementDelegate:self suggestionDelegate:self uuid:v21 scope:v14];
  }

LABEL_9:

  return v15;
}

- (id)_contentProviderForRequest:(id)a3 withDigestSuggestion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 sectionIdentifier];
  v9 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:v8];

  if ([v9 isScheduledDeliveryEnabled])
  {
    v10 = 0;
  }

  else
  {
    v11 = [NCDigestRemoteSuggestionContentProvider alloc];
    v12 = [v9 displayName];
    v13 = [v7 uuid];
    v10 = [(NCDigestRemoteSuggestionContentProvider *)v11 initWithNotificationRequest:v6 bundleDisplayName:v12 managementDelegate:self suggestionDelegate:self uuid:v13];
  }

  return v10;
}

- (id)_contentProviderForRequest:(id)a3 withUrgencyTuningSuggestion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 sectionIdentifier];
  v9 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:v8];

  if ([v9 isTimeSensitiveEnabled])
  {
    v10 = [NCTimeSensitiveRemoteSuggestionContentProvider alloc];
    v11 = [v9 displayName];
    v12 = [v7 uuid];
    v13 = [(NCTimeSensitiveRemoteSuggestionContentProvider *)v10 initWithNotificationRequest:v6 bundleDisplayName:v11 managementDelegate:self suggestionDelegate:self uuid:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_contentProviderForRequest:(id)a3 withSendMessagesToDigestSuggestion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 sectionIdentifier];
  v9 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:v8];

  if ([v9 isScheduledDeliveryEnabled] && objc_msgSend(v9, "isDirectMessagesEnabled"))
  {
    v10 = [NCMessagesInDigestRemoteSuggestionContentProvider alloc];
    v11 = [v9 displayName];
    v12 = [v7 uuid];
    v13 = [(NCMessagesInDigestRemoteSuggestionContentProvider *)v10 initWithNotificationRequest:v6 bundleDisplayName:v11 managementDelegate:self suggestionDelegate:self uuid:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_contentProviderForRequest:(id)a3 withTurnOffNotificationsForAppSuggestion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 sectionIdentifier];
  v9 = [(NCSuggestionManager *)self _sectionSettingsForSectionIdentifier:v8];

  v10 = [NCTurnOffNotificationsForAppRemoteSuggestionContentProvider alloc];
  v11 = [v9 displayName];
  v12 = [v6 uuid];

  v13 = [(NCTurnOffNotificationsForAppRemoteSuggestionContentProvider *)v10 initWithNotificationRequest:v7 bundleDisplayName:v11 managementDelegate:self suggestionDelegate:self uuid:v12];

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