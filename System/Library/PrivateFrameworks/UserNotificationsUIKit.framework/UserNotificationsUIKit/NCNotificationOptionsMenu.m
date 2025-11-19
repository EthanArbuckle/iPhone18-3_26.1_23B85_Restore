@interface NCNotificationOptionsMenu
- (BOOL)_canAddToContacts;
- (BOOL)_didApplicationBreakthroughMode:(id)a3;
- (BOOL)_didBreakthroughMode:(id)a3;
- (BOOL)_didContactBreakthroughMode:(id)a3;
- (BOOL)_isApplicationAllowedForMode:(id)a3;
- (BOOL)_isCommunicationThread;
- (BOOL)_isContactAllowedForMode:(id)a3;
- (NCNotificationOptionsMenu)initWithNotificationRequest:(id)a3 presentingView:(id)a4 settingsDelegate:(id)a5 optionsForSection:(BOOL)a6;
- (id)_addToContactsAction;
- (id)_clearSectionAction;
- (id)_criticalOffAction;
- (id)_criticalOnAction;
- (id)_customSettingsActionForSectionSettings:(id)a3;
- (id)_deliverImmediatelyAcion;
- (id)_muteForOneHourAction;
- (id)_muteForTodayAction;
- (id)_offActionForApplicationForMode:(id)a3;
- (id)_offActionForContactForMode:(id)a3;
- (id)_offActionWithSectionDisplayName:(id)a3;
- (id)_onActionWithSectionDisplayName:(id)a3;
- (id)_priorityFeedbackFileRadarWithFeedbackManager:(id)a3;
- (id)_priorityFeedbackNegativeWithFeedbackManager:(id)a3;
- (id)_priorityFeedbackPositiveWithFeedbackManager:(id)a3;
- (id)_sectionIdentifier;
- (id)_sendToDigestAction;
- (id)_sender;
- (id)_settingsActionForSectionSettings:(id)a3;
- (id)_stopPrioritizingActionForRequest:(id)a3 displayName:(id)a4;
- (id)_stopSummarizingActionForRequest:(id)a3 displayName:(id)a4;
- (id)_summaryFeedbackNegativeWithFeedbackManager:(id)a3;
- (id)_summaryFeedbackPositiveWithFeedbackManager:(id)a3;
- (id)_summaryFeedbackReportConcernWithFeedbackManager:(id)a3;
- (id)_threadIdentifierOrNil;
- (id)_threadName;
- (id)_timeSensitiveOffAction;
- (id)_timeSensitiveOnAction;
- (id)_unmuteActionForMuteAssertionLevel:(unint64_t)a3;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)presentMenu;
@end

@implementation NCNotificationOptionsMenu

- (NCNotificationOptionsMenu)initWithNotificationRequest:(id)a3 presentingView:(id)a4 settingsDelegate:(id)a5 optionsForSection:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = NCNotificationOptionsMenu;
  v14 = [(NCNotificationOptionsMenu *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_request, a3);
    objc_storeStrong(&v15->_presentingView, a4);
    objc_storeStrong(&v15->_settingsDelegate, a5);
    v15->_optionsForSection = a6;
    v16 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:v15];
    menu = v15->_menu;
    v15->_menu = v16;

    [(UIView *)v15->_presentingView addInteraction:v15->_menu];
  }

  return v15;
}

- (void)presentMenu
{
  menu = self->_menu;
  [(UIView *)self->_presentingView center];

  [(UIContextMenuInteraction *)menu _presentMenuAtLocation:?];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__NCNotificationOptionsMenu_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
  v6[3] = &unk_2783718F0;
  v6[4] = self;
  v4 = [MEMORY[0x277D753B0] configurationWithIdentifier:0 previewProvider:&__block_literal_global_19 actionProvider:v6];

  return v4;
}

id __83__NCNotificationOptionsMenu_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) settingsDelegate];
  v4 = [v3 notificationOptionsMenuRequestsSystemSettings:*(a1 + 32)];

  v5 = [*(a1 + 32) request];
  v6 = [v5 topLevelSectionIdentifier];

  v7 = [*(a1 + 32) settingsDelegate];
  v94 = v6;
  v8 = [v7 notificationOptionsMenu:*(a1 + 32) sectionSettingsForSectionIdentifier:v6];

  v9 = [*(a1 + 32) _threadName];
  v10 = MEMORY[0x277CCACA8];
  v11 = NCUserNotificationsUIKitFrameworkBundle();
  v12 = v11;
  if (v9)
  {
    v13 = [v11 localizedStringForKey:@"NOTIFICATION_OPTIONS_TITLE_CONVERSATION_FORMAT" value:&stru_282FE84F8 table:0];
    v14 = [v8 displayName];
    [v10 stringWithFormat:v13, v14, v9];
  }

  else
  {
    v13 = [v11 localizedStringForKey:@"NOTIFICATION_OPTIONS_TITLE_FORMAT" value:&stru_282FE84F8 table:0];
    v14 = [v8 displayName];
    [v10 stringWithFormat:v13, v14, v88];
  }
  v92 = ;

  v15 = objc_opt_new();
  v16 = [*(a1 + 32) request];
  v17 = [v16 isCriticalAlert];

  if (v17)
  {
    v18 = [v8 criticalAlertsEnabled];
    v19 = *(a1 + 32);
    if (v18)
    {
      [v19 _criticalOffAction];
    }

    else
    {
      [v19 _criticalOnAction];
    }

    v87 = LABEL_51:;
    v28 = v87;
    [v15 addObject:v87];

    goto LABEL_14;
  }

  v20 = [*(a1 + 32) request];
  v21 = [v20 interruptionLevel];

  if (v21 == 2)
  {
    v22 = [v8 isTimeSensitiveEnabled];
    v23 = *(a1 + 32);
    if (v22)
    {
      [v23 _timeSensitiveOffAction];
    }

    else
    {
      [v23 _timeSensitiveOnAction];
    }

    goto LABEL_51;
  }

  v24 = [v8 muteAssertion];
  v25 = [*(a1 + 32) _threadIdentifierOrNil];
  v26 = [v24 activeMuteAssertionLevelForThreadIdentifier:v25];

  v27 = *(a1 + 32);
  if (v26)
  {
    [v27 _unmuteActionForMuteAssertionLevel:v26];
  }

  else
  {
    v83 = [v27 _muteForOneHourAction];
    [v15 addObject:v83];

    [*(a1 + 32) _muteForTodayAction];
  }
  v84 = ;
  [v15 addObject:v84];

  if ([v4 isScheduledDeliveryEnabled] && (objc_msgSend(*(a1 + 32), "_isCommunicationThread") & 1) == 0)
  {
    v85 = [v8 isScheduledDeliveryEnabled];
    v86 = *(a1 + 32);
    if (v85)
    {
      [v86 _deliverImmediatelyAcion];
    }

    else
    {
      [v86 _sendToDigestAction];
    }

    goto LABEL_51;
  }

LABEL_14:
  if ([*(a1 + 32) _canAddToContacts])
  {
    v29 = [*(a1 + 32) _addToContactsAction];
    [v15 addObject:v29];
  }

  v93 = v9;
  if ([*(a1 + 32) areOptionsForSection])
  {
    v30 = [*(a1 + 32) _clearSectionAction];
    [v15 addObject:v30];
  }

  v91 = v15;
  v31 = [MEMORY[0x277D75710] menuWithTitle:&stru_282FE84F8 image:0 identifier:0 options:1 children:v15];
  [v2 addObject:v31];

  v32 = objc_opt_new();
  v33 = [*(a1 + 32) _customSettingsActionForSectionSettings:v8];
  if (v33)
  {
    [v32 addObject:v33];
  }

  v89 = v33;
  v34 = [*(a1 + 32) _settingsActionForSectionSettings:v8];
  [v32 addObject:v34];

  v35 = [*(a1 + 32) settingsDelegate];
  v36 = *(a1 + 32);
  v37 = [v36 request];
  v38 = [v35 notificationOptionsMenu:v36 isDisplayingStackSummaryForNotificationRequest:v37];

  v39 = [*(a1 + 32) request];
  v40 = [v39 summaryStatus];

  if (v40 == 1 || v38)
  {
    v41 = *(a1 + 32);
    v42 = [v41 request];
    v43 = [v8 displayName];
    v44 = [v41 _stopSummarizingActionForRequest:v42 displayName:v43];
    [v32 addObject:v44];
  }

  v45 = [*(a1 + 32) settingsDelegate];
  v46 = *(a1 + 32);
  v47 = [v46 request];
  v48 = [v45 notificationOptionsMenu:v46 isInPrioritySection:v47];

  v49 = [*(a1 + 32) request];
  v50 = [v49 priorityStatus];

  if (v50 == 1 || v48)
  {
    v51 = *(a1 + 32);
    v52 = [v51 request];
    v53 = [v8 displayName];
    v54 = [v51 _stopPrioritizingActionForRequest:v52 displayName:v53];
    [v32 addObject:v54];
  }

  v55 = [v8 notificationsEnabled];
  v56 = *(a1 + 32);
  v57 = [v8 displayName];
  if (v55)
  {
    [v56 _offActionWithSectionDisplayName:v57];
  }

  else
  {
    [v56 _onActionWithSectionDisplayName:v57];
  }
  v58 = ;
  [v32 addObject:v58];

  v59 = [MEMORY[0x277D75710] menuWithTitle:&stru_282FE84F8 image:0 identifier:0 options:1 children:v32];
  [v2 addObject:v59];

  v60 = objc_opt_new();
  v61 = [*(a1 + 32) settingsDelegate];
  v62 = [v61 notificationOptionsMenuRequestsCurrentModeConfiguration:*(a1 + 32)];

  if ([*(a1 + 32) _didApplicationBreakthroughMode:v62] && objc_msgSend(*(a1 + 32), "_isApplicationAllowedForMode:", v62))
  {
    v63 = [*(a1 + 32) _offActionForApplicationForMode:v62];
    [v60 addObject:v63];
  }

  v90 = v4;
  if ([*(a1 + 32) _didContactBreakthroughMode:v62] && objc_msgSend(*(a1 + 32), "_isContactAllowedForMode:", v62))
  {
    v64 = [*(a1 + 32) _offActionForContactForMode:v62];
    [v60 addObject:v64];
  }

  v65 = [MEMORY[0x277D75710] menuWithTitle:&stru_282FE84F8 image:0 identifier:0 options:1 children:v60];
  v66 = v2;
  [v2 addObject:v65];

  v67 = [NCSummarizationFeedbackManager alloc];
  v68 = [*(a1 + 32) request];
  v69 = [(NCSummarizationFeedbackManager *)v67 initWithRequest:v68 isShowingStackSummary:v38];

  if (v69)
  {
    v70 = objc_opt_new();
    if ([(NCSummarizationFeedbackManager *)v69 showInternalFeedbackMenu])
    {
      v71 = v38 | ~[(NCSummarizationFeedbackManager *)v69 isPriorityFeedbackEnabled];
      v72 = *(a1 + 32);
      if (v71)
      {
        v73 = [v72 _summaryFeedbackPositiveWithFeedbackManager:v69];
        [v70 addObject:v73];

        [*(a1 + 32) _summaryFeedbackNegativeWithFeedbackManager:v69];
      }

      else
      {
        v75 = [v72 _priorityFeedbackPositiveWithFeedbackManager:v69];
        [v70 addObject:v75];

        v76 = [*(a1 + 32) _priorityFeedbackNegativeWithFeedbackManager:v69];
        [v70 addObject:v76];

        [*(a1 + 32) _priorityFeedbackFileRadarWithFeedbackManager:v69];
      }
      v74 = ;
    }

    else
    {
      v74 = [*(a1 + 32) _summaryFeedbackReportConcernWithFeedbackManager:v69];
    }

    v77 = v74;
    [v70 addObject:v74];

    v78 = MEMORY[0x277D75710];
    v79 = [(NCSummarizationFeedbackManager *)v69 sectionTitle];
    v80 = [v78 menuWithTitle:v79 image:0 identifier:0 options:1 children:v70];
    v66 = v2;
    [v2 addObject:v80];
  }

  v81 = [MEMORY[0x277D75710] menuWithTitle:v92 children:v66];

  return v81;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v6 = objc_alloc_init(MEMORY[0x277D758D8]);
  v7 = objc_alloc_init(MEMORY[0x277D75208]);
  [v6 setShadowPath:v7];

  if (objc_opt_respondsToSelector())
  {
    v8 = [(UIView *)self->_presentingView visiblePathForPreview];
    [v6 setVisiblePath:v8];
  }

  else
  {
    v8 = [MEMORY[0x277D75348] clearColor];
    [v6 setBackgroundColor:v8];
  }

  v9 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self->_presentingView parameters:v6];

  return v9;
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v6 = [(NCNotificationOptionsMenu *)self settingsDelegate:a3];
  [v6 notificationOptionsMenuWillDismiss:self];
}

- (id)_customSettingsActionForSectionSettings:(id)a3
{
  v4 = a3;
  if ([v4 showsCustomSettingsLink])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = NCUserNotificationsUIKitFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"NOTIFICATION_OPTIONS_CONFIGURE_IN_APP_FORMAT" value:&stru_282FE84F8 table:0];
    v8 = [v4 displayName];
    v9 = [v5 stringWithFormat:v7, v8];

    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D750C8];
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"app.badge"];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__NCNotificationOptionsMenu__customSettingsActionForSectionSettings___block_invoke;
    v14[3] = &unk_278371940;
    objc_copyWeak(&v16, &location);
    v15 = v4;
    v12 = [v10 actionWithTitle:v9 image:v11 identifier:0 handler:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __69__NCNotificationOptionsMenu__customSettingsActionForSectionSettings___block_invoke(uint64_t a1)
{
  v18[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained request];
    v5 = [v4 userNotification];

    v6 = [objc_alloc(MEMORY[0x277D757C8]) initWithNotification:v5];
    v7 = MEMORY[0x277D0AD60];
    v8 = *MEMORY[0x277D0AC58];
    v17[0] = *MEMORY[0x277D0AC70];
    v17[1] = v8;
    v18[0] = MEMORY[0x277CBEC38];
    v18[1] = MEMORY[0x277CBEC38];
    v17[2] = *MEMORY[0x277D0ABD0];
    v16 = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v18[2] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
    v11 = [v7 optionsWithDictionary:v10];

    v12 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    v13 = [*(a1 + 32) sectionIdentifier];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__NCNotificationOptionsMenu__customSettingsActionForSectionSettings___block_invoke_2;
    v14[3] = &unk_278371918;
    v15 = *(a1 + 32);
    [v12 openApplication:v13 withOptions:v11 completion:v14];
  }
}

void __69__NCNotificationOptionsMenu__customSettingsActionForSectionSettings___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      __69__NCNotificationOptionsMenu__customSettingsActionForSectionSettings___block_invoke_2_cold_1(a1, v7, v6);
    }
  }
}

- (id)_settingsActionForSectionSettings:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CBEBC0];
  v5 = [v3 sectionIdentifier];
  v6 = [v4 nc_notificationSettingsURLForSectionIdentifier:v5 isAppClip:{objc_msgSend(v3, "isAppClip")}];

  v7 = MEMORY[0x277D750C8];
  v8 = NCUserNotificationsUIKitFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"NOTIFICATION_OPTIONS_SETTINGS" value:&stru_282FE84F8 table:0];
  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"gear"];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__NCNotificationOptionsMenu__settingsActionForSectionSettings___block_invoke;
  v15[3] = &unk_278371968;
  v16 = v6;
  v17 = v3;
  v11 = v3;
  v12 = v6;
  v13 = [v7 actionWithTitle:v9 image:v10 identifier:0 handler:v15];

  return v13;
}

void __63__NCNotificationOptionsMenu__settingsActionForSectionSettings___block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(25, 0);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__NCNotificationOptionsMenu__settingsActionForSectionSettings___block_invoke_2;
  v3[3] = &unk_27836F560;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(v2, v3);
}

void __63__NCNotificationOptionsMenu__settingsActionForSectionSettings___block_invoke_2(uint64_t a1)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277D0AC58];
  v19[0] = *MEMORY[0x277D0AC70];
  v19[1] = v4;
  v20[0] = MEMORY[0x277CBEC38];
  v20[1] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v12 = 0;
  [v2 openSensitiveURL:v3 withOptions:v5 error:&v12];
  v6 = v12;

  if (v6)
  {
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v8 sectionIdentifier];
      v11 = *(a1 + 32);
      *buf = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v6;
      _os_log_error_impl(&dword_21E77E000, v9, OS_LOG_TYPE_ERROR, "Error opening Settings for %{public}@, %{public}@, %{public}@", buf, 0x20u);
    }
  }
}

- (id)_stopSummarizingActionForRequest:(id)a3 displayName:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277D755B8];
  v7 = a4;
  v8 = NCUserNotificationsUIKitFrameworkBundle();
  v9 = [v6 imageNamed:@"text.line.3.summary.badge.xmark" inBundle:v8];
  v10 = [v9 imageWithRenderingMode:2];

  v11 = MEMORY[0x277D750C8];
  v12 = MEMORY[0x277CCACA8];
  v13 = NCUserNotificationsUIKitFrameworkBundle();
  v14 = [v13 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_SUMMARY" value:&stru_282FE84F8 table:0];
  v15 = [v12 stringWithFormat:v14, v7];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__NCNotificationOptionsMenu__stopSummarizingActionForRequest_displayName___block_invoke;
  v19[3] = &unk_278371990;
  v20 = v5;
  v16 = v5;
  v17 = [v11 actionWithTitle:v15 image:v10 identifier:0 handler:v19];

  return v17;
}

void __74__NCNotificationOptionsMenu__stopSummarizingActionForRequest_displayName___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277D77F68] currentNotificationSettingsCenter];
  v2 = [*(a1 + 32) sectionIdentifier];
  v3 = [v8 sourceWithIdentifier:v2];

  v4 = [v3 sourceSettings];
  v5 = [v4 notificationSettings];
  v6 = [v5 mutableCopy];

  [v6 setSummarizationSetting:1];
  v7 = [*(a1 + 32) sectionIdentifier];
  [v8 replaceNotificationSettings:v6 forNotificationSourceIdentifier:v7];
}

- (id)_stopPrioritizingActionForRequest:(id)a3 displayName:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277D755B8];
  v7 = a4;
  v8 = NCUserNotificationsUIKitFrameworkBundle();
  v9 = [v6 imageNamed:@"apple.intelligence.badge.xmark" inBundle:v8];
  v10 = [v9 imageWithRenderingMode:2];

  v11 = MEMORY[0x277D750C8];
  v12 = MEMORY[0x277CCACA8];
  v13 = NCUserNotificationsUIKitFrameworkBundle();
  v14 = [v13 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_PRIORITY" value:&stru_282FE84F8 table:0];
  v15 = [v12 stringWithFormat:v14, v7];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__NCNotificationOptionsMenu__stopPrioritizingActionForRequest_displayName___block_invoke;
  v19[3] = &unk_278371990;
  v20 = v5;
  v16 = v5;
  v17 = [v11 actionWithTitle:v15 image:v10 identifier:0 handler:v19];

  return v17;
}

void __75__NCNotificationOptionsMenu__stopPrioritizingActionForRequest_displayName___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277D77F68] currentNotificationSettingsCenter];
  v2 = [*(a1 + 32) sectionIdentifier];
  v3 = [v8 sourceWithIdentifier:v2];

  v4 = [v3 sourceSettings];
  v5 = [v4 notificationSettings];
  v6 = [v5 mutableCopy];

  [v6 setPrioritizationSetting:1];
  v7 = [*(a1 + 32) sectionIdentifier];
  [v8 replaceNotificationSettings:v6 forNotificationSourceIdentifier:v7];
}

- (id)_offActionWithSectionDisplayName:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if ([(NCNotificationOptionsMenu *)self _isCommunicationThread])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = NCUserNotificationsUIKitFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_ALL_FORMAT" value:&stru_282FE84F8 table:0];
    v8 = [v5 stringWithFormat:v7, v4];
  }

  else
  {
    v6 = NCUserNotificationsUIKitFrameworkBundle();
    v8 = [v6 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF" value:&stru_282FE84F8 table:0];
  }

  v9 = MEMORY[0x277D750C8];
  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"minus.circle"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__NCNotificationOptionsMenu__offActionWithSectionDisplayName___block_invoke;
  v13[3] = &unk_27836F428;
  objc_copyWeak(&v14, &location);
  v11 = [v9 actionWithTitle:v8 image:v10 identifier:0 handler:v13];

  [v11 setAttributes:2];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);

  return v11;
}

void __62__NCNotificationOptionsMenu__offActionWithSectionDisplayName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained settingsDelegate];
  v2 = [WeakRetained request];
  v3 = [WeakRetained _sectionIdentifier];
  [v1 notificationOptionsMenu:WeakRetained setAllowsNotifications:0 forNotificationRequest:v2 withSectionIdentifier:v3];

  v4 = [WeakRetained request];
  LODWORD(v2) = [v4 isCriticalAlert];

  if (v2)
  {
    v5 = [WeakRetained settingsDelegate];
    v6 = [WeakRetained request];
    v7 = [WeakRetained _sectionIdentifier];
    [v5 notificationOptionsMenu:WeakRetained setAllowsCriticalAlerts:0 forNotificationRequest:v6 withSectionIdentifier:v7];
  }
}

- (id)_onActionWithSectionDisplayName:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if ([(NCNotificationOptionsMenu *)self _isCommunicationThread])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = NCUserNotificationsUIKitFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_ON_ALL_FORMAT" value:&stru_282FE84F8 table:0];
    v8 = [v5 stringWithFormat:v7, v4];
  }

  else
  {
    v6 = NCUserNotificationsUIKitFrameworkBundle();
    v8 = [v6 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_ON" value:&stru_282FE84F8 table:0];
  }

  v9 = MEMORY[0x277D750C8];
  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"app.badge.fill"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__NCNotificationOptionsMenu__onActionWithSectionDisplayName___block_invoke;
  v13[3] = &unk_27836F428;
  objc_copyWeak(&v14, &location);
  v11 = [v9 actionWithTitle:v8 image:v10 identifier:0 handler:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v11;
}

void __61__NCNotificationOptionsMenu__onActionWithSectionDisplayName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained settingsDelegate];
  v2 = [WeakRetained request];
  v3 = [WeakRetained request];
  v4 = [v3 topLevelSectionIdentifier];
  [v1 notificationOptionsMenu:WeakRetained setAllowsNotifications:1 forNotificationRequest:v2 withSectionIdentifier:v4];

  v5 = [WeakRetained request];
  LODWORD(v2) = [v5 isCriticalAlert];

  if (v2)
  {
    v6 = [WeakRetained settingsDelegate];
    v7 = [WeakRetained request];
    v8 = [WeakRetained _sectionIdentifier];
    [v6 notificationOptionsMenu:WeakRetained setAllowsCriticalAlerts:1 forNotificationRequest:v7 withSectionIdentifier:v8];
  }
}

- (id)_criticalOffAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_CRITICAL" value:&stru_282FE84F8 table:0];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__NCNotificationOptionsMenu__criticalOffAction__block_invoke;
  v8[3] = &unk_27836F428;
  objc_copyWeak(&v9, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __47__NCNotificationOptionsMenu__criticalOffAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained settingsDelegate];
  v2 = [WeakRetained request];
  v3 = [WeakRetained _sectionIdentifier];
  [v1 notificationOptionsMenu:WeakRetained setAllowsCriticalAlerts:0 forNotificationRequest:v2 withSectionIdentifier:v3];
}

- (id)_criticalOnAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_ON_CRITICAL" value:&stru_282FE84F8 table:0];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__NCNotificationOptionsMenu__criticalOnAction__block_invoke;
  v8[3] = &unk_27836F428;
  objc_copyWeak(&v9, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __46__NCNotificationOptionsMenu__criticalOnAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained settingsDelegate];
  v2 = [WeakRetained request];
  v3 = [WeakRetained request];
  v4 = [v3 topLevelSectionIdentifier];
  [v1 notificationOptionsMenu:WeakRetained setAllowsCriticalAlerts:1 forNotificationRequest:v2 withSectionIdentifier:v4];
}

- (id)_timeSensitiveOffAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_TIME_SENSITIVE" value:&stru_282FE84F8 table:0];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"clock"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__NCNotificationOptionsMenu__timeSensitiveOffAction__block_invoke;
  v8[3] = &unk_27836F428;
  objc_copyWeak(&v9, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __52__NCNotificationOptionsMenu__timeSensitiveOffAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained settingsDelegate];
  v2 = [WeakRetained request];
  v3 = [WeakRetained _sectionIdentifier];
  [v1 notificationOptionsMenu:WeakRetained setAllowsTimeSensitive:0 forNotificationRequest:v2 withSectionIdentifier:v3];
}

- (id)_timeSensitiveOnAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_ON_TIME_SENSITIVE" value:&stru_282FE84F8 table:0];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"clock"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__NCNotificationOptionsMenu__timeSensitiveOnAction__block_invoke;
  v8[3] = &unk_27836F428;
  objc_copyWeak(&v9, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __51__NCNotificationOptionsMenu__timeSensitiveOnAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained settingsDelegate];
  v2 = [WeakRetained request];
  v3 = [WeakRetained _sectionIdentifier];
  [v1 notificationOptionsMenu:WeakRetained setAllowsTimeSensitive:1 forNotificationRequest:v2 withSectionIdentifier:v3];
}

- (id)_summaryFeedbackPositiveWithFeedbackManager:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D750C8];
  v5 = NCUserNotificationsUIKitFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"NOTIFICATION_OPTIONS_SUMMARY_FEEDBACK_POSITIVE" value:&stru_282FE84F8 table:0];
  v7 = [v3 thumbsUpImage];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__NCNotificationOptionsMenu__summaryFeedbackPositiveWithFeedbackManager___block_invoke;
  v11[3] = &unk_278371990;
  v12 = v3;
  v8 = v3;
  v9 = [v4 actionWithTitle:v6 image:v7 identifier:0 handler:v11];

  return v9;
}

- (id)_summaryFeedbackNegativeWithFeedbackManager:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D750C8];
  v5 = NCUserNotificationsUIKitFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"NOTIFICATION_OPTIONS_SUMMARY_FEEDBACK_NEGATIVE" value:&stru_282FE84F8 table:0];
  v7 = [v3 thumbsDownImage];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__NCNotificationOptionsMenu__summaryFeedbackNegativeWithFeedbackManager___block_invoke;
  v11[3] = &unk_278371990;
  v12 = v3;
  v8 = v3;
  v9 = [v4 actionWithTitle:v6 image:v7 identifier:0 handler:v11];

  return v9;
}

- (id)_summaryFeedbackReportConcernWithFeedbackManager:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D750C8];
  v5 = NCUserNotificationsUIKitFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"NOTIFICATION_OPTIONS_SUMMARY_FEEDBACK_REPORT_CONCERN" value:&stru_282FE84F8 table:0];
  v7 = [v3 reportConcernImage];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__NCNotificationOptionsMenu__summaryFeedbackReportConcernWithFeedbackManager___block_invoke;
  v11[3] = &unk_278371990;
  v12 = v3;
  v8 = v3;
  v9 = [v4 actionWithTitle:v6 image:v7 identifier:0 handler:v11];

  return v9;
}

- (id)_priorityFeedbackPositiveWithFeedbackManager:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D750C8];
  v5 = NCUserNotificationsUIKitFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"NOTIFICATION_OPTIONS_PRIORITY_FEEDBACK_POSITIVE" value:&stru_282FE84F8 table:0];
  v7 = [v3 thumbsUpImage];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__NCNotificationOptionsMenu__priorityFeedbackPositiveWithFeedbackManager___block_invoke;
  v11[3] = &unk_278371990;
  v12 = v3;
  v8 = v3;
  v9 = [v4 actionWithTitle:v6 image:v7 identifier:0 handler:v11];

  return v9;
}

- (id)_priorityFeedbackNegativeWithFeedbackManager:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D750C8];
  v5 = NCUserNotificationsUIKitFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"NOTIFICATION_OPTIONS_PRIORITY_FEEDBACK_NEGATIVE" value:&stru_282FE84F8 table:0];
  v7 = [v3 thumbsDownImage];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__NCNotificationOptionsMenu__priorityFeedbackNegativeWithFeedbackManager___block_invoke;
  v11[3] = &unk_278371990;
  v12 = v3;
  v8 = v3;
  v9 = [v4 actionWithTitle:v6 image:v7 identifier:0 handler:v11];

  return v9;
}

- (id)_priorityFeedbackFileRadarWithFeedbackManager:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D750C8];
  v5 = NCUserNotificationsUIKitFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"NOTIFICATION_OPTIONS_PRIORITY_FEEDBACK_REPORT_CONCERN" value:&stru_282FE84F8 table:0];
  v7 = [v3 reportConcernImage];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__NCNotificationOptionsMenu__priorityFeedbackFileRadarWithFeedbackManager___block_invoke;
  v11[3] = &unk_278371990;
  v12 = v3;
  v8 = v3;
  v9 = [v4 actionWithTitle:v6 image:v7 identifier:0 handler:v11];

  return v9;
}

- (id)_muteForOneHourAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_OPTIONS_MUTE_FOR_ONE_HOUR" value:&stru_282FE84F8 table:0];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"bell.slash"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__NCNotificationOptionsMenu__muteForOneHourAction__block_invoke;
  v8[3] = &unk_27836F428;
  objc_copyWeak(&v9, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __50__NCNotificationOptionsMenu__muteForOneHourAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained settingsDelegate];
  v2 = _dateOneHourFromNow();
  v3 = [WeakRetained request];
  v4 = [WeakRetained _sectionIdentifier];
  v5 = [WeakRetained _threadIdentifierOrNil];
  [v1 notificationOptionsMenu:WeakRetained setMuted:1 untilDate:v2 forNotificationRequest:v3 withSectionIdentifier:v4 threadIdentifier:v5];
}

- (id)_muteForTodayAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_OPTIONS_MUTE_FOR_TODAY" value:&stru_282FE84F8 table:0];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"bell.slash"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__NCNotificationOptionsMenu__muteForTodayAction__block_invoke;
  v8[3] = &unk_27836F428;
  objc_copyWeak(&v9, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __48__NCNotificationOptionsMenu__muteForTodayAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained settingsDelegate];
  v2 = _dateUntilEndOfToday();
  v3 = [WeakRetained request];
  v4 = [WeakRetained _sectionIdentifier];
  v5 = [WeakRetained _threadIdentifierOrNil];
  [v1 notificationOptionsMenu:WeakRetained setMuted:1 untilDate:v2 forNotificationRequest:v3 withSectionIdentifier:v4 threadIdentifier:v5];
}

- (id)_unmuteActionForMuteAssertionLevel:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = [(NCNotificationOptionsMenu *)self _threadIdentifierOrNil];
  }

  else
  {
    v4 = 0;
  }

  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D750C8];
  v6 = NCUserNotificationsUIKitFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"NOTIFICATION_OPTIONS_UNMUTE" value:&stru_282FE84F8 table:0];
  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"bell"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__NCNotificationOptionsMenu__unmuteActionForMuteAssertionLevel___block_invoke;
  v12[3] = &unk_278371940;
  objc_copyWeak(&v14, &location);
  v9 = v4;
  v13 = v9;
  v10 = [v5 actionWithTitle:v7 image:v8 identifier:0 handler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

void __64__NCNotificationOptionsMenu__unmuteActionForMuteAssertionLevel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained settingsDelegate];
  v3 = [WeakRetained request];
  v4 = [WeakRetained _sectionIdentifier];
  [v2 notificationOptionsMenu:WeakRetained setMuted:0 untilDate:0 forNotificationRequest:v3 withSectionIdentifier:v4 threadIdentifier:*(a1 + 32)];
}

- (id)_sendToDigestAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_OPTIONS_ADD_TO_SUMMARY" value:&stru_282FE84F8 table:0];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"newspaper"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__NCNotificationOptionsMenu__sendToDigestAction__block_invoke;
  v8[3] = &unk_27836F428;
  objc_copyWeak(&v9, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __48__NCNotificationOptionsMenu__sendToDigestAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained settingsDelegate];
  v2 = [WeakRetained request];
  v3 = [WeakRetained _sectionIdentifier];
  [v1 notificationOptionsMenu:WeakRetained setScheduledDelivery:1 forNotificationRequest:v2 withSectionIdentifier:v3];
}

- (id)_deliverImmediatelyAcion
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_OPTIONS_DELIVER_IMMEDIATELY" value:&stru_282FE84F8 table:0];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"bell"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__NCNotificationOptionsMenu__deliverImmediatelyAcion__block_invoke;
  v8[3] = &unk_27836F428;
  objc_copyWeak(&v9, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __53__NCNotificationOptionsMenu__deliverImmediatelyAcion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained settingsDelegate];
  v2 = [WeakRetained request];
  v3 = [WeakRetained _sectionIdentifier];
  [v1 notificationOptionsMenu:WeakRetained setScheduledDelivery:0 forNotificationRequest:v2 withSectionIdentifier:v3];
}

- (id)_addToContactsAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_OPTIONS_ADD_TO_CONTACTS" value:&stru_282FE84F8 table:0];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle.badge.plus"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__NCNotificationOptionsMenu__addToContactsAction__block_invoke;
  v8[3] = &unk_27836F428;
  objc_copyWeak(&v9, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __49__NCNotificationOptionsMenu__addToContactsAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained settingsDelegate];
  v2 = [WeakRetained request];
  v3 = [WeakRetained _sectionIdentifier];
  [v1 notificationOptionsMenu:WeakRetained addSenderToContactsForNotificationRequest:v2 withSectionIdentifier:v3];
}

- (id)_clearSectionAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_LIST_CLEAR_NOTIFICATIONS" value:&stru_282FE84F8 table:0];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__NCNotificationOptionsMenu__clearSectionAction__block_invoke;
  v8[3] = &unk_27836F428;
  objc_copyWeak(&v9, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __48__NCNotificationOptionsMenu__clearSectionAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained settingsDelegate];
  v2 = [WeakRetained _sectionIdentifier];
  [v1 notificationOptionsMenu:WeakRetained requestsClearingSectionWithIdentifier:v2];
}

- (id)_offActionForApplicationForMode:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 mode];
  v6 = [v5 semanticType];

  if (v6 > 3)
  {
    if (v6 > 5)
    {
      if (v6 == 6)
      {
        v7 = NCUserNotificationsUIKitFrameworkBundle();
        v8 = [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_APPLICATION_DURING_READING" value:&stru_282FE84F8 table:0];
        goto LABEL_19;
      }

      if (v6 == 7)
      {
        v7 = NCUserNotificationsUIKitFrameworkBundle();
        v8 = [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_APPLICATION_DURING_GAMING" value:&stru_282FE84F8 table:0];
        goto LABEL_19;
      }

      goto LABEL_23;
    }

    NCUserNotificationsUIKitFrameworkBundle();
    if (v6 == 4)
      v7 = {;
      [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_APPLICATION_DURING_WORK" value:&stru_282FE84F8 table:0];
    }

    else
      v7 = {;
      [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_APPLICATION_DURING_PERSONAL" value:&stru_282FE84F8 table:0];
    }

    v8 = LABEL_9:;
    goto LABEL_19;
  }

  if (v6 > 1)
  {
    NCUserNotificationsUIKitFrameworkBundle();
    if (v6 == 2)
      v7 = {;
      [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_APPLICATION_DURING_DRIVING" value:&stru_282FE84F8 table:0];
    }

    else
      v7 = {;
      [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_APPLICATION_DURING_FITNESS" value:&stru_282FE84F8 table:0];
    }

    goto LABEL_9;
  }

  if (!v6)
  {
    v7 = NCUserNotificationsUIKitFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_APPLICATION_DURING_DO_NOT_DISTURB" value:&stru_282FE84F8 table:0];
    goto LABEL_19;
  }

  if (v6 == 1)
  {
    v7 = NCUserNotificationsUIKitFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_APPLICATION_DURING_SLEEP" value:&stru_282FE84F8 table:0];
LABEL_19:
    v9 = v8;
    goto LABEL_20;
  }

LABEL_23:
  v17 = MEMORY[0x277CCACA8];
  v7 = NCUserNotificationsUIKitFrameworkBundle();
  v18 = [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_APPLICATION_DURING_FOCUS" value:&stru_282FE84F8 table:0];
  v19 = [v4 mode];
  v20 = [v19 name];
  v9 = [v17 stringWithFormat:v18, v20];

LABEL_20:
  v10 = [v4 mode];
  v11 = [v10 symbolImageName];

  v12 = MEMORY[0x277D750C8];
  v13 = [MEMORY[0x277D755B8] systemImageNamed:v11];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__NCNotificationOptionsMenu__offActionForApplicationForMode___block_invoke;
  v21[3] = &unk_278371940;
  objc_copyWeak(&v23, &location);
  v14 = v4;
  v22 = v14;
  v15 = [v12 actionWithTitle:v9 image:v13 identifier:0 handler:v21];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v15;
}

void __61__NCNotificationOptionsMenu__offActionForApplicationForMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) mutableCopy];
  v3 = [*(a1 + 32) configuration];
  v4 = [v3 mutableCopy];

  v5 = [WeakRetained _sectionIdentifier];
  [v4 removeExceptionForApplication:v5];

  [v2 setConfiguration:v4];
  v6 = [WeakRetained settingsDelegate];
  [v6 notificationOptionsMenu:WeakRetained setModeConfiguration:v2];
}

- (id)_offActionForContactForMode:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 mode];
  v6 = [v5 semanticType];

  if (v6 > 3)
  {
    if (v6 > 5)
    {
      if (v6 == 6)
      {
        v7 = NCUserNotificationsUIKitFrameworkBundle();
        v8 = [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_CONTACT_DURING_READING" value:&stru_282FE84F8 table:0];
        goto LABEL_19;
      }

      if (v6 == 7)
      {
        v7 = NCUserNotificationsUIKitFrameworkBundle();
        v8 = [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_CONTACT_DURING_GAMING" value:&stru_282FE84F8 table:0];
        goto LABEL_19;
      }

      goto LABEL_23;
    }

    NCUserNotificationsUIKitFrameworkBundle();
    if (v6 == 4)
      v7 = {;
      [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_CONTACT_DURING_WORK" value:&stru_282FE84F8 table:0];
    }

    else
      v7 = {;
      [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_CONTACT_DURING_PERSONAL" value:&stru_282FE84F8 table:0];
    }

    v8 = LABEL_9:;
    goto LABEL_19;
  }

  if (v6 > 1)
  {
    NCUserNotificationsUIKitFrameworkBundle();
    if (v6 == 2)
      v7 = {;
      [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_CONTACT_DURING_DRIVING" value:&stru_282FE84F8 table:0];
    }

    else
      v7 = {;
      [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_CONTACT_DURING_FITNESS" value:&stru_282FE84F8 table:0];
    }

    goto LABEL_9;
  }

  if (!v6)
  {
    v7 = NCUserNotificationsUIKitFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_CONTACT_DURING_DO_NOT_DISTURB" value:&stru_282FE84F8 table:0];
    goto LABEL_19;
  }

  if (v6 == 1)
  {
    v7 = NCUserNotificationsUIKitFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_CONTACT_DURING_SLEEP" value:&stru_282FE84F8 table:0];
LABEL_19:
    v9 = v8;
    goto LABEL_20;
  }

LABEL_23:
  v17 = MEMORY[0x277CCACA8];
  v7 = NCUserNotificationsUIKitFrameworkBundle();
  v18 = [v7 localizedStringForKey:@"NOTIFICATION_OPTIONS_TURN_OFF_CONTACT_DURING_FOCUS" value:&stru_282FE84F8 table:0];
  v19 = [v4 mode];
  v20 = [v19 name];
  v9 = [v17 stringWithFormat:v18, v20];

LABEL_20:
  v10 = [v4 mode];
  v11 = [v10 symbolImageName];

  v12 = MEMORY[0x277D750C8];
  v13 = [MEMORY[0x277D755B8] systemImageNamed:v11];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __57__NCNotificationOptionsMenu__offActionForContactForMode___block_invoke;
  v21[3] = &unk_2783719B8;
  objc_copyWeak(&v24, &location);
  v14 = v4;
  v22 = v14;
  v23 = self;
  v15 = [v12 actionWithTitle:v9 image:v13 identifier:0 handler:v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v15;
}

void __57__NCNotificationOptionsMenu__offActionForContactForMode___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [a1[4] mutableCopy];
  v3 = [a1[4] configuration];
  v4 = [v3 mutableCopy];

  v5 = [a1[5] request];
  v6 = [v5 content];
  v7 = [v6 communicationContext];
  v8 = [v7 sender];
  v9 = [v8 cnContactIdentifier];

  v10 = [objc_alloc(MEMORY[0x277D058F0]) initWithContactIdentifier:v9];
  [v4 removeExceptionForContact:v10];
  [v2 setConfiguration:v4];
  v11 = [WeakRetained settingsDelegate];
  [v11 notificationOptionsMenu:WeakRetained setModeConfiguration:v2];
}

- (BOOL)_didBreakthroughMode:(id)a3
{
  v4 = [a3 mode];
  v5 = [v4 identifier];

  v6 = [(NCNotificationOptionsMenu *)self request];
  v7 = [v6 alertOptions];

  if ([v7 shouldSuppress])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v7 activeModeUUID];
    v8 = [v5 isEqual:v9];
  }

  return v8;
}

- (BOOL)_didApplicationBreakthroughMode:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationOptionsMenu *)self request];
  v6 = [v5 alertOptions];
  v7 = [v6 reason];

  v8 = [(NCNotificationOptionsMenu *)self _didBreakthroughMode:v4];
  return v7 == 2 && v8;
}

- (BOOL)_didContactBreakthroughMode:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationOptionsMenu *)self request];
  v6 = [v5 alertOptions];
  v7 = [v6 reason];

  v8 = [(NCNotificationOptionsMenu *)self _didBreakthroughMode:v4];
  return v7 == 3 && v8;
}

- (BOOL)_isApplicationAllowedForMode:(id)a3
{
  v4 = [a3 configuration];
  v5 = [(NCNotificationOptionsMenu *)self request];
  v6 = [v5 sectionIdentifier];

  LOBYTE(v5) = [v4 exceptionForApplication:v6] == 0;
  return v5;
}

- (BOOL)_isContactAllowedForMode:(id)a3
{
  v4 = [a3 configuration];
  v5 = [(NCNotificationOptionsMenu *)self request];
  v6 = [v5 content];
  v7 = [v6 communicationContext];
  v8 = [v7 sender];
  v9 = [v8 cnContactIdentifier];

  v10 = objc_alloc_init(MEMORY[0x277D05A30]);
  [v10 setContactIdentifier:v9];
  LOBYTE(v6) = [v4 exceptionForContactHandle:v10] == 0;

  return v6;
}

- (id)_sectionIdentifier
{
  v2 = [(NCNotificationOptionsMenu *)self request];
  v3 = [v2 topLevelSectionIdentifier];

  return v3;
}

- (BOOL)_isCommunicationThread
{
  if ([(NCNotificationOptionsMenu *)self areOptionsForSection])
  {
    return 0;
  }

  v4 = [(NCNotificationOptionsMenu *)self request];
  v5 = [v4 content];
  v6 = [v5 isMessagingType];

  return v6;
}

- (id)_threadName
{
  if ([(NCNotificationOptionsMenu *)self _isCommunicationThread])
  {
    v3 = [(NCNotificationOptionsMenu *)self request];
    v4 = [v3 content];
    v5 = [v4 communicationContext];
    v6 = [v5 preferredDescription];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_threadIdentifierOrNil
{
  if ([(NCNotificationOptionsMenu *)self _isCommunicationThread])
  {
    v3 = [(NCNotificationOptionsMenu *)self request];
    v4 = [v3 uniqueThreadIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_sender
{
  v2 = [(NCNotificationOptionsMenu *)self request];
  v3 = [v2 content];
  v4 = [v3 communicationContext];
  v5 = [v4 sender];

  return v5;
}

- (BOOL)_canAddToContacts
{
  v3 = [(NCNotificationOptionsMenu *)self _sender];

  if (!v3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277D77F58] sharedInstance];
  v5 = [(NCNotificationOptionsMenu *)self _sender];
  v6 = [(NCNotificationOptionsMenu *)self request];
  v7 = [v6 topLevelSectionIdentifier];
  v8 = [v4 canAddToCuratedContacts:v5 bundleIdentifier:v7];

  return v8;
}

void __69__NCNotificationOptionsMenu__customSettingsActionForSectionSettings___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 sectionIdentifier];
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_21E77E000, v5, OS_LOG_TYPE_ERROR, "Error opening Application settings for %{public}@, %{public}@", &v7, 0x16u);
}

@end