@interface TIFeedbackController
- (BOOL)currentPreferenceValue;
- (BOOL)feedbackFeatureEnabled;
- (BOOL)isFCSBuild;
- (TIFeedbackController)init;
- (id)computeRandomizedTimeIntervalFromTimestamp:(id)timestamp;
- (id)currentInputModes;
- (void)assessAndScheduleRetry;
- (void)dispatchAllEventsWithDelegate:(id)delegate;
- (void)dispatchScheduledEventsWithDelegate:(id)delegate overrideSchedule:(BOOL)schedule;
- (void)dispatchScheduledInitiationAndCompletionEventsImmediatelyWithDelegate:(id)delegate;
- (void)dispatchScheduledInitiationAndTerminationEventsImmediatelyWithDelegate:(id)delegate;
- (void)handleFCSBuildWithDelegate:(id)delegate;
- (void)handleFeedbackActionsWithDelegate:(id)delegate;
- (void)handleFeedbackStateCompletionPendingWithDelegate:(id)delegate isEligibleDevice:(BOOL)device;
- (void)handleFeedbackStateInitiatedWithDelegate:(id)delegate isEligibleDevice:(BOOL)device isPreferenceEnabled:(BOOL)enabled;
- (void)handleFeedbackStateNoneWithDelegate:(id)delegate isEligibleDevice:(BOOL)device;
- (void)retrySurvey;
- (void)scheduleCompletionEvent;
- (void)scheduleInitiationEvent;
- (void)scheduleRetry;
- (void)scheduleSurveyRequestEvent;
- (void)setInitiationState;
- (void)setTerminationStateWithValue:(int64_t)value;
@end

@implementation TIFeedbackController

- (id)currentInputModes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__23692;
  v11 = __Block_byref_object_dispose__23693;
  v12 = 0;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    mEMORY[0x277D6F380] = [MEMORY[0x277D6F380] sharedInputModeController];
    enabledInputModeIdentifiers = [mEMORY[0x277D6F380] enabledInputModeIdentifiers];
    v4 = v8[5];
    v8[5] = enabledInputModeIdentifiers;
  }

  else
  {
    TIDispatchSync();
  }

  v5 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v5;
}

void __41__TIFeedbackController_currentInputModes__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D6F380] sharedInputModeController];
  v2 = [v5 enabledInputModeIdentifiers];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)currentPreferenceValue
{
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  LOBYTE(self) = [mEMORY[0x277D6F470] BOOLForPreferenceKey:self->_preferenceName];

  return self;
}

- (BOOL)feedbackFeatureEnabled
{
  if (TI_IS_INTERNAL_INSTALL::once_token != -1)
  {
    dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
  }

  if (TI_IS_INTERNAL_INSTALL::is_internal_install != 1)
  {
    return 0;
  }

  v3 = MEMORY[0x277D6F360];

  return [v3 isFeatureEnabledForInternalBuilds];
}

- (id)computeRandomizedTimeIntervalFromTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  if ([MEMORY[0x277D6F360] shouldPublishCAEventsImmediately])
  {
    v4 = timestampCopy;
  }

  else
  {
    v4 = [timestampCopy dateByAddingTimeInterval:arc4random() / 4294967300.0 * 432000.0 + 0.0];
  }

  v5 = v4;

  return v5;
}

- (void)dispatchAllEventsWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(TIFeedbackController *)self dispatchScheduledEventsWithDelegate:delegateCopy overrideSchedule:1];
  [delegateCopy sendUpgradeEventUsingStudyDataFromFeedbackController:self];
}

- (void)dispatchScheduledInitiationAndTerminationEventsImmediatelyWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  getInitiationEventTimestamp = [MEMORY[0x277D6F360] getInitiationEventTimestamp];
  if (getInitiationEventTimestamp)
  {
    [delegateCopy sendInitiationEventUsingStudyDataFromFeedbackController:self];
    [MEMORY[0x277D6F360] removeInitiationEventTimestamp];
  }

  [delegateCopy sendTerminationEventUsingStudyDataFromFeedbackController:self];
}

- (void)dispatchScheduledInitiationAndCompletionEventsImmediatelyWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  getInitiationEventTimestamp = [MEMORY[0x277D6F360] getInitiationEventTimestamp];
  if (getInitiationEventTimestamp)
  {
    [delegateCopy sendInitiationEventUsingStudyDataFromFeedbackController:self];
    [MEMORY[0x277D6F360] removeInitiationEventTimestamp];
  }

  [delegateCopy sendCompletionEventUsingStudyDataFromFeedbackController:self];
  [MEMORY[0x277D6F360] removeCompletionEventTimestamp];
}

- (void)dispatchScheduledEventsWithDelegate:(id)delegate overrideSchedule:(BOOL)schedule
{
  scheduleCopy = schedule;
  delegateCopy = delegate;
  v6 = [MEMORY[0x277CBEAA8] now];
  getInitiationEventTimestamp = [MEMORY[0x277D6F360] getInitiationEventTimestamp];
  v8 = getInitiationEventTimestamp;
  if (getInitiationEventTimestamp)
  {
    if ([getInitiationEventTimestamp compare:v6] == -1 || scheduleCopy)
    {
      [delegateCopy sendInitiationEventUsingStudyDataFromFeedbackController:self];
      [MEMORY[0x277D6F360] removeInitiationEventTimestamp];
    }
  }

  getRequestSurveyEventTimestamp = [MEMORY[0x277D6F360] getRequestSurveyEventTimestamp];
  v11 = getRequestSurveyEventTimestamp;
  if (getRequestSurveyEventTimestamp)
  {
    if ([getRequestSurveyEventTimestamp compare:v6] == -1 || scheduleCopy)
    {
      [delegateCopy sendRequestSurveyEventUsingStudyDataFromFeedbackController:self];
      [MEMORY[0x277D6F360] removeRequestSurveyEventTimestamp];
    }
  }

  getCompletionEventTimestamp = [MEMORY[0x277D6F360] getCompletionEventTimestamp];
  v14 = getCompletionEventTimestamp;
  if (getCompletionEventTimestamp)
  {
    if ([getCompletionEventTimestamp compare:v6] == -1 || scheduleCopy)
    {
      [delegateCopy sendCompletionEventUsingStudyDataFromFeedbackController:self];
      [MEMORY[0x277D6F360] removeCompletionEventTimestamp];
    }
  }
}

- (void)scheduleCompletionEvent
{
  getFinalTimestamp = [MEMORY[0x277D6F360] getFinalTimestamp];
  v4 = [(TIFeedbackController *)self computeRandomizedTimeIntervalFromTimestamp:getFinalTimestamp];

  [MEMORY[0x277D6F360] setCompletionEventTimestamp:v4];
}

- (void)scheduleSurveyRequestEvent
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [(TIFeedbackController *)self computeRandomizedTimeIntervalFromTimestamp:date];

  [MEMORY[0x277D6F360] setRequestSurveyEventTimestamp:v4];
}

- (void)scheduleInitiationEvent
{
  getInitialTimestamp = [MEMORY[0x277D6F360] getInitialTimestamp];
  v4 = [(TIFeedbackController *)self computeRandomizedTimeIntervalFromTimestamp:getInitialTimestamp];

  [MEMORY[0x277D6F360] setInitiationEventTimestamp:v4];
}

- (void)setTerminationStateWithValue:(int64_t)value
{
  v14 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D6F360] setFeedbackState:?];
  v5 = MEMORY[0x277D6F360];
  currentInputModes = [(TIFeedbackController *)self currentInputModes];
  [v5 setFinalInputModes:currentInputModes];

  v7 = MEMORY[0x277D6F360];
  v8 = [MEMORY[0x277CBEAA8] now];
  [v7 setFinalTimestamp:v8];

  [MEMORY[0x277D6F360] setFinalPreferenceValue:{-[TIFeedbackController currentPreferenceValue](self, "currentPreferenceValue")}];
  if (IXACanLogMessageAtLevel())
  {
    v9 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      value = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: set termination state with value:%ld", "-[TIFeedbackController setTerminationStateWithValue:]", self->_studyID, value];
      *buf = 138412290;
      v13 = value;
      _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setInitiationState
{
  currentPreferenceValue = [(TIFeedbackController *)self currentPreferenceValue];
  if (!currentPreferenceValue)
  {
    [(TIFeedbackController *)self setPreferenceValue:1];
  }

  currentInputModes = [(TIFeedbackController *)self currentInputModes];
  [(TIFeedbackController *)self initiateStudyWithInputModes:currentInputModes initialPreferenceValue:currentPreferenceValue];
}

- (void)handleFeedbackActionsWithDelegate:(id)delegate
{
  v20 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  if ([(TIFeedbackController *)self isFCSBuild])
  {
    [(TIFeedbackController *)self handleFCSBuildWithDelegate:delegateCopy];
  }

  else
  {
    isEligibleDevice = [MEMORY[0x277D6F360] isEligibleDevice];
    getFeedbackState = [MEMORY[0x277D6F360] getFeedbackState];
    currentPreferenceValue = [(TIFeedbackController *)self currentPreferenceValue];
    if ([(TIFeedbackController *)self feedbackFeatureEnabled])
    {
      if (!KeyboardSettingsFeedbackLibraryCore_frameworkLibrary)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v15 = __KeyboardSettingsFeedbackLibraryCore_block_invoke;
        v16 = &__block_descriptor_40_e5_v8__0l;
        v17 = 0;
        v18 = xmmword_278733780;
        v19 = 0;
        KeyboardSettingsFeedbackLibraryCore_frameworkLibrary = _sl_dlopen();
      }

      v8 = KeyboardSettingsFeedbackLibraryCore_frameworkLibrary != 0;
    }

    else
    {
      v8 = 0;
    }

    if (IXACanLogMessageAtLevel())
    {
      v9 = IXAFeedbackLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: enabled: %ld, eligible: %ld, state: %ld, preferenceEnabled: %ld", "-[TIFeedbackController handleFeedbackActionsWithDelegate:]", self->_studyID, v8, isEligibleDevice, getFeedbackState, currentPreferenceValue];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
      }
    }

    if (v8)
    {
      [(TIFeedbackController *)self dispatchScheduledEventsWithDelegate:delegateCopy overrideSchedule:0];
      if (getFeedbackState <= 2)
      {
        if (!getFeedbackState)
        {
          [(TIFeedbackController *)self handleFeedbackStateNoneWithDelegate:delegateCopy isEligibleDevice:isEligibleDevice];
          goto LABEL_28;
        }

        if (getFeedbackState == 2)
        {
          [(TIFeedbackController *)self handleFeedbackStateInitiatedWithDelegate:delegateCopy isEligibleDevice:isEligibleDevice isPreferenceEnabled:currentPreferenceValue];
          goto LABEL_28;
        }
      }

      else
      {
        switch(getFeedbackState)
        {
          case 3:
            [(TIFeedbackController *)self handleFeedbackStateCompletionPendingWithDelegate:delegateCopy isEligibleDevice:isEligibleDevice];
            goto LABEL_28;
          case 8:
            [(TIFeedbackController *)self handleFeedbackStateRetryPendingWithDelegate:delegateCopy isEligibleDevice:isEligibleDevice];
            goto LABEL_28;
          case 9:
            [(TIFeedbackController *)self handleFeedbackStateResponsePendingWithDelegate:delegateCopy isEligibleDevice:isEligibleDevice];
            goto LABEL_28;
        }
      }

      if (IXACanLogMessageAtLevel())
      {
        v10 = IXASessionDetailsLogFacility();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: action: none", "-[TIFeedbackController handleFeedbackActionsWithDelegate:]", self->_studyID];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v13;
          _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }
    }
  }

LABEL_28:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleFCSBuildWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  getFeedbackState = [MEMORY[0x277D6F360] getFeedbackState];
  v5 = MEMORY[0x277D6F360];
  if (getFeedbackState)
  {
    currentInputModes = [(TIFeedbackController *)self currentInputModes];
    [v5 setFinalInputModes:currentInputModes];

    v7 = MEMORY[0x277D6F360];
    v8 = [MEMORY[0x277CBEAA8] now];
    [v7 setFinalTimestamp:v8];

    [MEMORY[0x277D6F360] setFinalPreferenceValue:{-[TIFeedbackController currentPreferenceValue](self, "currentPreferenceValue")}];
    [(TIFeedbackController *)self dispatchAllEventsWithDelegate:delegateCopy];
    [MEMORY[0x277D6F360] clearStudyState];
  }

  else
  {
    getStudyEnrollment = [MEMORY[0x277D6F360] getStudyEnrollment];
    if (![getStudyEnrollment length] && objc_msgSend(MEMORY[0x277D6F360], "isStudyForFCS") && objc_msgSend(MEMORY[0x277D6F360], "isEligibleDevice"))
    {
      if (![(TIFeedbackController *)self currentPreferenceValue])
      {
        [(TIFeedbackController *)self setPreferenceValue:1];
      }

      [MEMORY[0x277D6F360] setStudyEnrollment];
    }
  }
}

- (BOOL)isFCSBuild
{
  if (TI_IS_INTERNAL_INSTALL::once_token != -1)
  {
    dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
  }

  return TI_IS_INTERNAL_INSTALL::is_internal_install != 1 || ([MEMORY[0x277D6F360] isFeatureEnabledForInternalBuilds] & 1) == 0;
}

void __88__TIFeedbackController_handleFeedbackStateResponsePendingWithDelegate_isEligibleDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (IXACanLogMessageAtLevel())
    {
      v7 = IXAFeedbackLogFacility();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
LABEL_4:

        goto LABEL_14;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: error getting response from feedback service: %@", "-[TIFeedbackController handleFeedbackStateResponsePendingWithDelegate:isEligibleDevice:]_block_invoke", *(*(a1 + 32) + 8), v6];
      *buf = 138412290;
      v16 = v12;
LABEL_16:
      _os_log_debug_impl(&dword_22CA55000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

      goto LABEL_4;
    }
  }

  else
  {
    v8 = [v5 feedbackFiled];
    v9 = [v8 count];

    v10 = IXACanLogMessageAtLevel();
    if (!v9)
    {
      if (!v10)
      {
        goto LABEL_14;
      }

      v7 = IXAFeedbackLogFacility();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_4;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: retry is is still pending", "-[TIFeedbackController handleFeedbackStateResponsePendingWithDelegate:isEligibleDevice:]_block_invoke", *(*(a1 + 32) + 8)];
      *buf = 138412290;
      v16 = v12;
      goto LABEL_16;
    }

    if (v10)
    {
      v11 = IXAFeedbackLogFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: survey filed: complete", "-[TIFeedbackController handleFeedbackStateResponsePendingWithDelegate:isEligibleDevice:]_block_invoke", *(*(a1 + 32) + 8)];
        *buf = 138412290;
        v16 = v14;
        _os_log_debug_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [MEMORY[0x277D6F360] setFeedbackState:4];
    [*(a1 + 32) scheduleCompletionEvent];
  }

LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)retrySurvey
{
  v13 = *MEMORY[0x277D85DE8];
  getFormIdentifier = [MEMORY[0x277D6F360] getFormIdentifier];
  if (IXACanLogMessageAtLevel())
  {
    v4 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: retrying survey: %@", "-[TIFeedbackController retrySurvey]", self->_studyID, getFormIdentifier];
      *buf = 138412290;
      v12 = v8;
      _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v5 = MEMORY[0x277D08688];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__TIFeedbackController_retrySurvey__block_invoke;
  v9[3] = &unk_278733710;
  v9[4] = self;
  v10 = getFormIdentifier;
  v6 = getFormIdentifier;
  [v5 fetchCountsForFormWithIdentifier:v6 completion:v9];

  v7 = *MEMORY[0x277D85DE8];
}

void __35__TIFeedbackController_retrySurvey__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (IXACanLogMessageAtLevel())
    {
      v7 = IXAFeedbackLogFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: error getting response from feedback service: %@", "-[TIFeedbackController retrySurvey]_block_invoke", *(*(a1 + 32) + 8), v6];
        *buf = 138412290;
        v38 = v28;
        _os_log_debug_impl(&dword_22CA55000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v8 = MEMORY[0x277D6F360];
    v9 = 5;
LABEL_13:
    [v8 setFeedbackState:v9];
    [*(a1 + 32) scheduleCompletionEvent];
    goto LABEL_14;
  }

  v10 = [v5 feedbackFiled];
  v11 = [v10 count];

  if (v11)
  {
    if (IXACanLogMessageAtLevel())
    {
      v12 = IXAFeedbackLogFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: survey filed: complete", "-[TIFeedbackController retrySurvey]_block_invoke", *(*(a1 + 32) + 8)];
        *buf = 138412290;
        v38 = v29;
        _os_log_debug_impl(&dword_22CA55000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v8 = MEMORY[0x277D6F360];
    v9 = 4;
    goto LABEL_13;
  }

  v14 = [v5 currentCampaign];

  if (v14 && IXACanLogMessageAtLevel())
  {
    v15 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: already running a campaign - maybe they cancelled and we can retry", "-[TIFeedbackController retrySurvey]_block_invoke", *(*(a1 + 32) + 8)];
      *buf = 138412290;
      v38 = v30;
      _os_log_debug_impl(&dword_22CA55000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v16 = [objc_alloc(MEMORY[0x277D08690]) initWithIdentifier:*(a1 + 40)];
  v17 = [MEMORY[0x277D6F360] getFormMetadata];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v32 + 1) + 8 * i);
        v23 = [v17 objectForKey:v22];
        [v16 prefill:v22 answer:v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v19);
  }

  [v16 setAuthenticationMethod:1];
  v24 = [objc_alloc(MEMORY[0x277D08680]) initWithFeedbackForm:v16];
  v25 = objc_alloc_init(MEMORY[0x277D08698]);
  v26 = [MEMORY[0x277CCA8D8] mainBundle];
  v27 = [v26 localizedStringForKey:@"Tell us why you turned off autocorrection" value:@"Will you provide more insights on autocorrection" table:0];
  [v25 setLocalizedPromptTitle:v27];

  [v25 setPromptStyle:2];
  [MEMORY[0x277D6F360] setFeedbackState:9];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __35__TIFeedbackController_retrySurvey__block_invoke_66;
  v31[3] = &unk_2787336E8;
  v31[4] = *(a1 + 32);
  [v24 collectFeedbackWithLaunchConfiguration:v25 completion:v31];

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
}

void __35__TIFeedbackController_retrySurvey__block_invoke_66(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = IXACanLogMessageAtLevel();
  if (v3)
  {
    if (v4)
    {
      v5 = IXAFeedbackLogFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: error launching retry survey: %@", "-[TIFeedbackController retrySurvey]_block_invoke", *(*(a1 + 32) + 8), v3];
        *buf = 138412290;
        v11 = v8;
        _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [MEMORY[0x277D6F360] setFeedbackState:5];
    [*(a1 + 32) scheduleCompletionEvent];
  }

  else if (v4)
  {
    v6 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: retry survey successfully submitted", "-[TIFeedbackController retrySurvey]_block_invoke", *(*(a1 + 32) + 8)];
      *buf = 138412290;
      v11 = v9;
      _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleFeedbackStateCompletionPendingWithDelegate:(id)delegate isEligibleDevice:(BOOL)device
{
  v24 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  [(TIFeedbackController *)self scheduleSurveyRequestEvent];
  getSurveyOutcome = [MEMORY[0x277D6F360] getSurveyOutcome];
  v8 = IXACanLogMessageAtLevel();
  if (!device)
  {
    if (v8)
    {
      v11 = IXAFeedbackLogFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: survey outcome is %ld, device is ineligible action: terminateIneligible", "-[TIFeedbackController handleFeedbackStateCompletionPendingWithDelegate:isEligibleDevice:]", self->_studyID, getSurveyOutcome];
        *buf = 138412290;
        v23 = v18;
        _os_log_debug_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    selfCopy2 = self;
    v13 = 6;
    goto LABEL_33;
  }

  if (getSurveyOutcome > 5)
  {
    if (getSurveyOutcome == 6)
    {
      if (v8)
      {
        v16 = IXAFeedbackLogFacility();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: survey outcome is state error, device is ineligible action: terminateInvalid", "-[TIFeedbackController handleFeedbackStateCompletionPendingWithDelegate:isEligibleDevice:]", self->_studyID];
          *buf = 138412290;
          v23 = v21;
          _os_log_debug_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }

      goto LABEL_32;
    }

    if (getSurveyOutcome == 7)
    {
      if (v8)
      {
        v9 = IXAFeedbackLogFacility();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: survey outcome is launch error, will plan retry", "-[TIFeedbackController handleFeedbackStateCompletionPendingWithDelegate:isEligibleDevice:]", self->_studyID];
          *buf = 138412290;
          v23 = v10;
          goto LABEL_36;
        }

LABEL_17:
      }

LABEL_18:
      [(TIFeedbackController *)self scheduleRetry];
      goto LABEL_34;
    }

LABEL_19:
    if (v8)
    {
      v14 = IXAFeedbackLogFacility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: survey outcome is unexpected as %ld: terminateInvalid", "-[TIFeedbackController handleFeedbackStateCompletionPendingWithDelegate:isEligibleDevice:]", self->_studyID, getSurveyOutcome];
        *buf = 138412290;
        v23 = v19;
        _os_log_debug_impl(&dword_22CA55000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

LABEL_32:
    selfCopy2 = self;
    v13 = 5;
LABEL_33:
    [(TIFeedbackController *)selfCopy2 setTerminationStateWithValue:v13];
    [(TIFeedbackController *)self dispatchScheduledInitiationAndTerminationEventsImmediatelyWithDelegate:delegateCopy];
    goto LABEL_34;
  }

  if (getSurveyOutcome != 4)
  {
    if (getSurveyOutcome == 5)
    {
      if (v8)
      {
        v9 = IXAFeedbackLogFacility();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: survey outcome is connection error, will plan retry", "-[TIFeedbackController handleFeedbackStateCompletionPendingWithDelegate:isEligibleDevice:]", self->_studyID];
          *buf = 138412290;
          v23 = v10;
LABEL_36:
          _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

          goto LABEL_17;
        }

        goto LABEL_17;
      }

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (v8)
  {
    v15 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: survey outcome is submitted, device is eligible, will evaluate for plan retry if necessary", "-[TIFeedbackController handleFeedbackStateCompletionPendingWithDelegate:isEligibleDevice:]", self->_studyID];
      *buf = 138412290;
      v23 = v20;
      _os_log_debug_impl(&dword_22CA55000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  [(TIFeedbackController *)self assessAndScheduleRetry];
LABEL_34:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)scheduleRetry
{
  v11 = *MEMORY[0x277D85DE8];
  if (IXACanLogMessageAtLevel())
  {
    v3 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: scheduling a retry", "-[TIFeedbackController scheduleRetry]", self->_studyID];
      *buf = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  date = [MEMORY[0x277CBEAA8] date];
  v5 = [date dateByAddingTimeInterval:86400.0];
  if ([MEMORY[0x277D6F360] shouldPublishCAEventsImmediately])
  {
    v6 = [date dateByAddingTimeInterval:10.0];

    v5 = v6;
  }

  [MEMORY[0x277D6F360] setRetryTimestamp:v5];
  [MEMORY[0x277D6F360] setFeedbackState:8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)assessAndScheduleRetry
{
  getFormIdentifier = [MEMORY[0x277D6F360] getFormIdentifier];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__TIFeedbackController_assessAndScheduleRetry__block_invoke;
  v4[3] = &unk_2787336C0;
  v4[4] = self;
  [MEMORY[0x277D08688] fetchCountsForFormWithIdentifier:getFormIdentifier completion:v4];
}

void __46__TIFeedbackController_assessAndScheduleRetry__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!IXACanLogMessageAtLevel())
    {
LABEL_5:
      [*(a1 + 32) scheduleRetry];
      goto LABEL_12;
    }

    v7 = IXAFeedbackLogFacility();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
LABEL_4:

      goto LABEL_5;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: error getting response from feedback service: %@", "-[TIFeedbackController assessAndScheduleRetry]_block_invoke", *(*(a1 + 32) + 8), v6];
    *buf = 138412290;
    v18 = v15;
LABEL_21:
    _os_log_debug_impl(&dword_22CA55000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

    goto LABEL_4;
  }

  v8 = [v5 feedbackFiled];
  v9 = [v8 count];

  v10 = [v5 declineCount];
  if (v9 < 1)
  {
    v13 = v10;
    v14 = IXACanLogMessageAtLevel();
    if (v13)
    {
      if (!v14)
      {
        goto LABEL_5;
      }

      v7 = IXAFeedbackLogFacility();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_4;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: feedback declined!", "-[TIFeedbackController assessAndScheduleRetry]_block_invoke", *(*(a1 + 32) + 8)];
      *buf = 138412290;
      v18 = v15;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_5;
      }

      v7 = IXAFeedbackLogFacility();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_4;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: feedback not filed for some other reason", "-[TIFeedbackController assessAndScheduleRetry]_block_invoke", *(*(a1 + 32) + 8)];
      *buf = 138412290;
      v18 = v15;
    }

    goto LABEL_21;
  }

  if (IXACanLogMessageAtLevel())
  {
    v11 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: survey filed: complete", "-[TIFeedbackController assessAndScheduleRetry]_block_invoke", *(*(a1 + 32) + 8)];
      *buf = 138412290;
      v18 = v16;
      _os_log_debug_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  [MEMORY[0x277D6F360] setFeedbackState:4];
  [*(a1 + 32) scheduleCompletionEvent];
LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleFeedbackStateInitiatedWithDelegate:(id)delegate isEligibleDevice:(BOOL)device isPreferenceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  deviceCopy = device;
  v20 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  if (!deviceCopy)
  {
    if (IXACanLogMessageAtLevel())
    {
      v10 = IXAFeedbackLogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: action: terminateIneligible", "-[TIFeedbackController handleFeedbackStateInitiatedWithDelegate:isEligibleDevice:isPreferenceEnabled:]", self->_studyID];
        *buf = 138412290;
        v19 = v15;
        _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    selfCopy2 = self;
    v12 = 6;
    goto LABEL_18;
  }

  if (!enabledCopy)
  {
    if (IXACanLogMessageAtLevel())
    {
      v13 = IXAFeedbackLogFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: action: terminateInvalid", "-[TIFeedbackController handleFeedbackStateInitiatedWithDelegate:isEligibleDevice:isPreferenceEnabled:]", self->_studyID];
        *buf = 138412290;
        v19 = v17;
        _os_log_debug_impl(&dword_22CA55000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    selfCopy2 = self;
    v12 = 5;
LABEL_18:
    [(TIFeedbackController *)selfCopy2 setTerminationStateWithValue:v12];
    [(TIFeedbackController *)self dispatchScheduledInitiationAndTerminationEventsImmediatelyWithDelegate:delegateCopy];
    goto LABEL_19;
  }

  if (IXACanLogMessageAtLevel())
  {
    v9 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: action: accumulateWordCounts", "-[TIFeedbackController handleFeedbackStateInitiatedWithDelegate:isEligibleDevice:isPreferenceEnabled:]", self->_studyID];
      *buf = 138412290;
      v19 = v16;
      _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  [delegateCopy accumulateWordCounts];
LABEL_19:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleFeedbackStateNoneWithDelegate:(id)delegate isEligibleDevice:(BOOL)device
{
  deviceCopy = device;
  v12 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  if (deviceCopy)
  {
    if (IXACanLogMessageAtLevel())
    {
      v7 = IXAFeedbackLogFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: action: initiate", "-[TIFeedbackController handleFeedbackStateNoneWithDelegate:isEligibleDevice:]", self->_studyID];
        *buf = 138412290;
        v11 = v9;
        _os_log_debug_impl(&dword_22CA55000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [delegateCopy resetWordCounts];
    [(TIFeedbackController *)self setInitiationState];
    [(TIFeedbackController *)self scheduleInitiationEvent];
    [MEMORY[0x277D6F360] setStudyEnrollment];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (TIFeedbackController)init
{
  v8.receiver = self;
  v8.super_class = TIFeedbackController;
  v2 = [(TIFeedbackController *)&v8 init];
  if (v2)
  {
    getStudyID = [MEMORY[0x277D6F360] getStudyID];
    studyID = v2->_studyID;
    v2->_studyID = getStudyID;

    getPreferenceKey = [MEMORY[0x277D6F360] getPreferenceKey];
    preferenceName = v2->_preferenceName;
    v2->_preferenceName = getPreferenceKey;
  }

  return v2;
}

@end