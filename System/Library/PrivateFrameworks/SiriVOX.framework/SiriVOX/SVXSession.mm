@interface SVXSession
- (NSString)description;
- (SVXSession)initWithPerformer:(id)performer serviceCommandHandler:(id)handler powerLevelManager:(id)manager speechSynthesizer:(id)synthesizer instanceContext:(id)context preferences:(id)preferences analytics:(id)analytics delegate:(id)self0;
- (id)_connection:(BOOL)_connection;
- (id)_createClientConfiguration:(id)configuration storeDemo:(id)demo preferences:(id)preferences;
- (id)_currentAccessoryInfo;
- (id)_stateFeedbackManager;
- (id)activateWithContext:(id)context options:(unint64_t)options deviceSetupContext:(id)setupContext deviceProblemsState:(id)state localDeviceContext:(id)deviceContext speechSynthesisRecord:(id)record speechSynthesisState:(int64_t)synthesisState speechRecordingAlertPolicy:(id)self0 completion:(id)self1;
- (id)beginWaitingForMyriadDecision;
- (int64_t)_getSRUIFSiriSessionStateFor:(int64_t)for;
- (void)_activateWithContext:(id)context options:(unint64_t)options deviceSetupContext:(id)setupContext deviceProblemsState:(id)state localDeviceContext:(id)deviceContext speechSynthesisRecord:(id)record speechSynthesisState:(int64_t)synthesisState speechRecordingAlertPolicy:(id)self0 taskTracker:(id)self1 completion:(id)self2;
- (void)_addRequestBarrier:(id)barrier;
- (void)_beginThinking;
- (void)_beginWaitingForMyriadDecisionWithToken:(id)token;
- (void)_cancelRequestWithOptions:(unint64_t)options keepTaskTracker:(id)tracker;
- (void)_checkIsActiveWithCompletion:(id)completion;
- (void)_clearContext;
- (void)_continuePendingSpeechRequest:(BOOL)request;
- (void)_deactivateWithContext:(id)context completion:(id)completion;
- (void)_didChangeFromState:(int64_t)state toState:(int64_t)toState;
- (void)_discardPendingRequestBarriers;
- (void)_dismiss;
- (void)_endThinking;
- (void)_endWaitingForMyriadDecisionWithToken:(id)token state:(int64_t)state;
- (void)_forceAudioSessionActiveWithOptions:(unint64_t)options reason:(int64_t)reason completion:(id)completion;
- (void)_forceAudioSessionInactiveWithReason:(id)reason completion:(id)completion;
- (void)_getAlarmAndTimerFiringContextWithCompletion:(id)completion;
- (void)_handleAudioSessionDidBeginInterruption;
- (void)_handleAudioSessionDidEndInterruption:(BOOL)interruption;
- (void)_handleCommand:(id)command taskTracker:(id)tracker completion:(id)completion;
- (void)_handleDidFailStartPlaybackWithDestination:(int64_t)destination;
- (void)_handleDidHandleQuickStopWithActions:(unint64_t)actions;
- (void)_handleDidStartAudioPlaybackRequest:(id)request;
- (void)_handleDidStopAudioPlaybackRequest:(id)request error:(id)error;
- (void)_handleDismissAssistant;
- (void)_handleReceivedCommand:(id)command completion:(id)completion;
- (void)_handleRequestFailedWithError:(id)error;
- (void)_handleRequestFinished;
- (void)_handleRequestWillStart;
- (void)_handleSessionIdleTimerFireEventWithAssertion:(id)assertion timerInterval:(double)interval;
- (void)_handleShouldSpeak:(BOOL)speak;
- (void)_handleSpeechRecognitionDidFailWithError:(id)error;
- (void)_handleSpeechRecognized:(id)recognized;
- (void)_handleSpeechRecognizedPartialResult:(id)result;
- (void)_handleSpeechRecordingDidBeginOnAVRecordRoute:(id)route;
- (void)_handleSpeechRecordingDidCancel;
- (void)_handleSpeechRecordingDidChangeAVRecordRoute:(id)route;
- (void)_handleSpeechRecordingDidDetectStartpoint;
- (void)_handleSpeechRecordingDidEnd;
- (void)_handleSpeechRecordingDidFailWithError:(id)error;
- (void)_handleSpeechRecordingPerformTwoShotPromptWithType:(int64_t)type completion:(id)completion;
- (void)_handleSpeechRecordingWillBeginWithInputAudioPowerXPCWrapper:(id)wrapper;
- (void)_handleSpeechSynthesizerDidBecomeIdle;
- (void)_handleSpeechSynthesizerDidCancelRequest:(id)request taskTracker:(id)tracker;
- (void)_handleSpeechSynthesizerDidFailRequest:(id)request taskTracker:(id)tracker error:(id)error;
- (void)_handleSpeechSynthesizerDidFinishRequest:(id)request record:(id)record taskTracker:(id)tracker;
- (void)_handleSpeechSynthesizerDidInterruptRequest:(id)request taskTracker:(id)tracker;
- (void)_handleSpeechSynthesizerDidStartRequest:(id)request record:(id)record taskTracker:(id)tracker;
- (void)_handleSpeechSynthesizerWillBecomeBusy;
- (void)_handleSpeechSynthesizerWillStartRequest:(id)request taskTracker:(id)tracker;
- (void)_handleStartListenAfterSpeaking:(id)speaking record:(id)record taskTracker:(id)tracker;
- (void)_handleWillProcessStartPlaybackWithDestination:(int64_t)destination intent:(id)intent completion:(id)completion;
- (void)_handleWillStartAudioPlaybackRequest:(id)request;
- (void)_invalidate;
- (void)_invalidateConnection;
- (void)_performBlockAfterContinueBlock:(id)block;
- (void)_performBlockAfterResignActive:(id)active;
- (void)_performNextPendingRequestBarrier;
- (void)_preheatWithStyle:(int64_t)style;
- (void)_presentError:(id)error taskTracker:(id)tracker completion:(id)completion;
- (void)_promptRadarWithReason:(id)reason requestID:(id)d displayReason:(id)displayReason issueTitleName:(id)name issueDescName:(id)descName;
- (void)_requestDidEndWithOptions:(unint64_t)options error:(id)error;
- (void)_requestWillBeginWithTaskTracker:(id)tracker;
- (void)_resetMyriadDecision;
- (void)_resignActiveForReason:(id)reason;
- (void)_sessionIdleFiredWithAssertion:(id)assertion;
- (void)_setApplicationContext:(id)context;
- (void)_setCurrentState:(int64_t)state;
- (void)_setInputAudioPowerWrapper:(id)wrapper;
- (void)_setOutputAudioPowerWrapper:(id)wrapper;
- (void)_startActiveAudioSessionRequestForType:(int64_t)type taskTracker:(id)tracker completion:(id)completion;
- (void)_startRequestWithInfo:(id)info clearsContext:(BOOL)context deviceSetupContext:(id)setupContext taskTracker:(id)tracker completion:(id)completion;
- (void)_startSessionIdleTimerWithTimeInterval:(double)interval;
- (void)_startSpeechRequestWithOptions:(id)options clearsContext:(BOOL)context deviceSetupContext:(id)setupContext deviceProblemsState:(id)state localDeviceContext:(id)deviceContext taskTracker:(id)tracker completion:(id)completion;
- (void)_startSpeechSynthesisRequest:(id)request languageCode:(id)code voiceName:(id)name gender:(int64_t)gender audioSessionID:(unsigned int)d introductionSoundID:(int64_t)iD conclusionSoundID:(int64_t)soundID taskTracker:(id)self0 postActivationHandler:(id)self1 completion:(id)self2;
- (void)_stopSessionIdleTimer;
- (void)_stopSpeech;
- (void)_stopSpeechWithCurrentSpeechRequestOptions;
- (void)_transitSpeechToAutomaticEndpointingWithTimestamp:(unint64_t)timestamp;
- (void)_transitSpeechToManualEndpointing;
- (void)_updateSpeechEndpointerOperationMode:(int64_t)mode;
- (void)_waitForMyriadDecisionUsingHandler:(id)handler;
- (void)_willChangeFromState:(int64_t)state toState:(int64_t)toState;
- (void)acquireAudioSessionForReason:(id)reason completion:(id)completion;
- (void)addRequestBarrier:(id)barrier;
- (void)assistantConnection:(id)connection appLaunchFailedWithBundleIdentifier:(id)identifier;
- (void)assistantConnection:(id)connection audioSessionDidBecomeActive:(BOOL)active;
- (void)assistantConnection:(id)connection audioSessionWillBecomeActive:(BOOL)active;
- (void)assistantConnection:(id)connection didChangeAudioSessionID:(unsigned int)d;
- (void)assistantConnection:(id)connection didHandleQuickStopWithAction:(unint64_t)action;
- (void)assistantConnection:(id)connection didStartAudioPlaybackRequest:(id)request;
- (void)assistantConnection:(id)connection didStopAudioPlaybackRequest:(id)request error:(id)error;
- (void)assistantConnection:(id)connection receivedCommand:(id)command completion:(id)completion;
- (void)assistantConnection:(id)connection recognitionUpdateWithPhrases:(id)phrases utterances:(id)utterances refId:(id)id;
- (void)assistantConnection:(id)connection recognizedAdditionalSpeechInterpretation:(id)interpretation refId:(id)id;
- (void)assistantConnection:(id)connection requestFailedWithError:(id)error requestClass:(id)class;
- (void)assistantConnection:(id)connection setUserActivtiyInfoAndMakeCurrent:(id)current webpageURL:(id)l;
- (void)assistantConnection:(id)connection shouldSpeak:(BOOL)speak;
- (void)assistantConnection:(id)connection speechRecognitionDidFail:(id)fail;
- (void)assistantConnection:(id)connection speechRecognized:(id)recognized;
- (void)assistantConnection:(id)connection speechRecognizedPartialResult:(id)result;
- (void)assistantConnection:(id)connection speechRecordingDidBeginOnAVRecordRoute:(id)route audioSessionID:(unsigned int)d;
- (void)assistantConnection:(id)connection speechRecordingDidChangeAVRecordRoute:(id)route;
- (void)assistantConnection:(id)connection speechRecordingDidFail:(id)fail;
- (void)assistantConnection:(id)connection speechRecordingPerformTwoShotPromptWithType:(int64_t)type completion:(id)completion;
- (void)assistantConnection:(id)connection speechRecordingWillBeginWithInputAudioPowerXPCWrapper:(id)wrapper;
- (void)assistantConnection:(id)connection startPlaybackDidFail:(int64_t)fail;
- (void)assistantConnection:(id)connection startUIRequestWithInfo:(id)info completion:(id)completion;
- (void)assistantConnection:(id)connection startUIRequestWithText:(id)text completion:(id)completion;
- (void)assistantConnection:(id)connection willProcessAppLaunchWithBundleIdentifier:(id)identifier;
- (void)assistantConnection:(id)connection willProcessStartPlayback:(int64_t)playback intent:(id)intent completion:(id)completion;
- (void)assistantConnection:(id)connection willStartAudioPlaybackRequest:(id)request;
- (void)assistantConnectionAudioSessionDidBeginInterruption:(id)interruption;
- (void)assistantConnectionAudioSessionDidEndInterruption:(id)interruption shouldResume:(BOOL)resume;
- (void)assistantConnectionDismissAssistant:(id)assistant;
- (void)assistantConnectionRequestFinished:(id)finished;
- (void)assistantConnectionRequestWillStart:(id)start;
- (void)assistantConnectionSpeechRecordingDidCancel:(id)cancel;
- (void)assistantConnectionSpeechRecordingDidDetectStartpoint:(id)startpoint;
- (void)assistantConnectionSpeechRecordingDidEnd:(id)end;
- (void)assistantConnectionSpeechRecordingWillBegin:(id)begin;
- (void)assistantConnectionUpdatedSpeechEndEstimate:(id)estimate speechEndEstimate:(unint64_t)endEstimate;
- (void)cancelRequest;
- (void)deactivateWithContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)dismiss;
- (void)duckTTSToVolume:(float)volume rampTime:(double)time completion:(id)completion;
- (void)endWaitingForMyriadDecisionWithToken:(id)token result:(BOOL)result;
- (void)getActivityStateWithCompletion:(id)completion;
- (void)getAlarmAndTimerFiringContextWithCompletion:(id)completion;
- (void)getAudioPowerWithType:(int64_t)type completion:(id)completion;
- (void)getStateWithCompletion:(id)completion;
- (void)handleCommand:(id)command taskTracker:(id)tracker;
- (void)invalidate;
- (void)performBlock:(id)block;
- (void)preheatWithStyle:(int64_t)style;
- (void)prewarmWithContext:(id)context completion:(id)completion;
- (void)sendGenericAceCommand:(id)command turnIdentifier:(id)identifier conflictHandler:(id)handler;
- (void)speechSynthesizerDidBecomeBusy;
- (void)speechSynthesizerDidBecomeIdle;
- (void)speechSynthesizerDidCancelRequest:(id)request taskTracker:(id)tracker;
- (void)speechSynthesizerDidFailRequest:(id)request taskTracker:(id)tracker error:(id)error;
- (void)speechSynthesizerDidFinishRequest:(id)request utteranceInfo:(id)info record:(id)record taskTracker:(id)tracker;
- (void)speechSynthesizerDidInterruptRequest:(id)request taskTracker:(id)tracker;
- (void)speechSynthesizerDidStartRequest:(id)request record:(id)record taskTracker:(id)tracker;
- (void)speechSynthesizerWillEnqueueRequest:(id)request taskTracker:(id)tracker;
- (void)speechSynthesizerWillStartRequest:(id)request taskTracker:(id)tracker;
- (void)startAudioPlaybackRequest:(id)request options:(unint64_t)options completion:(id)completion;
- (void)stateFeedbackManagerDidStartPlaybackForStateFeedbackType:(int64_t)type;
- (void)stopAudioPlaybackRequest:(id)request immediately:(BOOL)immediately;
- (void)stopSpeech;
- (void)taskTrackingCenter:(id)center didBeginTrackingTaskWithContext:(id)context;
- (void)taskTrackingCenter:(id)center didEndTrackingTaskWithContext:(id)context;
- (void)taskTrackingCenterDidBecomeIdle:(id)idle;
- (void)taskTrackingCenterWillBecomeBusy:(id)busy;
- (void)transitSpeechToAutomaticEndpointingWithTimestamp:(unint64_t)timestamp;
- (void)transitSpeechToManualEndpointing;
- (void)updateDeviceProblemsState:(id)state;
- (void)updateDeviceSetupContext:(id)context;
- (void)updateLocalDeviceContext:(id)context;
@end

@implementation SVXSession

- (void)sendGenericAceCommand:(id)command turnIdentifier:(id)identifier conflictHandler:(id)handler
{
  commandCopy = command;
  identifierCopy = identifier;
  handlerCopy = handler;
  performer = self->_performer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__SVXSession_sendGenericAceCommand_turnIdentifier_conflictHandler___block_invoke;
  v15[3] = &unk_279C69038;
  v15[4] = self;
  v16 = commandCopy;
  v17 = identifierCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = commandCopy;
  [(SVXPerforming *)performer performBlock:v15];
}

void __67__SVXSession_sendGenericAceCommand_turnIdentifier_conflictHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection:0];
  [v2 sendGenericAceCommand:*(a1 + 40) turnIdentifier:*(a1 + 48) conflictHandler:*(a1 + 56)];
}

- (id)_createClientConfiguration:(id)configuration storeDemo:(id)demo preferences:(id)preferences
{
  configurationCopy = configuration;
  demoCopy = demo;
  preferencesCopy = preferences;
  v11 = MEMORY[0x277CEF1D0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__SVXSession__createClientConfiguration_storeDemo_preferences___block_invoke;
  v17[3] = &unk_279C688A0;
  v18 = configurationCopy;
  v19 = demoCopy;
  selfCopy = self;
  v21 = preferencesCopy;
  v12 = preferencesCopy;
  v13 = demoCopy;
  v14 = configurationCopy;
  v15 = [v11 newWithBuilder:v17];

  return v15;
}

void __63__SVXSession__createClientConfiguration_storeDemo_preferences___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 beginDate];
    [v9 setDeviceSetupFlowBeginDate:v4];

    v5 = [*(a1 + 32) endDate];
    [v9 setDeviceSetupFlowEndDate:v5];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    [v6 outputVolume];
    [v9 setOutputVolume:?];
  }

  v7 = [*(*(a1 + 48) + 416) createAudioPlaybackRequestFromID:3 preferences:*(a1 + 56)];
  [v9 setTapToSiriAudioPlaybackRequest:v7];

  v8 = [*(*(a1 + 48) + 416) createAudioPlaybackRequestFromID:1 preferences:*(a1 + 56)];
  [v9 setTwoShotAudioPlaybackRequest:v8];
}

- (void)duckTTSToVolume:(float)volume rampTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  performer = self->_performer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__SVXSession_duckTTSToVolume_rampTime_completion___block_invoke;
  v11[3] = &unk_279C68878;
  volumeCopy = volume;
  timeCopy = time;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [(SVXPerforming *)performer performBlock:v11];
}

- (void)_promptRadarWithReason:(id)reason requestID:(id)d displayReason:(id)displayReason issueTitleName:(id)name issueDescName:(id)descName
{
  reasonCopy = reason;
  dCopy = d;
  descNameCopy = descName;
  nameCopy = name;
  displayReasonCopy = displayReason;
  v16 = objc_opt_new();
  _tapToRadarManager = [(SVXSession *)self _tapToRadarManager];
  getWebSearchIssueDialogIdentifiers = [_tapToRadarManager getWebSearchIssueDialogIdentifiers];
  v19 = [getWebSearchIssueDialogIdentifiers containsObject:reasonCopy];

  if (v19)
  {
    v20 = MEMORY[0x277CCACA8];
    getRecognitionText = [_tapToRadarManager getRecognitionText];
    lowercaseString = [getRecognitionText lowercaseString];
    v23 = [v20 stringWithFormat:@"%@_%@", reasonCopy, lowercaseString];
    [v16 setError:v23];
  }

  else
  {
    [v16 setError:reasonCopy];
  }

  [v16 setRequestID:dCopy];
  getCompanionCommunicationIssueDialogIdentifiers = [_tapToRadarManager getCompanionCommunicationIssueDialogIdentifiers];
  v25 = [getCompanionCommunicationIssueDialogIdentifiers containsObject:reasonCopy];

  if (v25)
  {
    v26 = @"Siri Core Orchestration";
  }

  else
  {
    v26 = @"Siri UI";
  }

  if (v25)
  {
    v27 = @"tvOS";
  }

  else
  {
    v27 = @"HomePod";
  }

  if (v25)
  {
    v28 = &unk_287A34978;
  }

  else
  {
    v28 = &unk_287A34990;
  }

  [v16 setComponentName:v26];
  [v16 setComponentVersion:v27];
  [v16 setComponentID:v28];
  [v16 setDisplayReason:displayReasonCopy];

  reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"[AutoTTR] %@ issue %@ detected", nameCopy, reasonCopy];

  [v16 setTitle:reasonCopy];
  v30 = MEMORY[0x277CCACA8];
  getRecognitionText2 = [_tapToRadarManager getRecognitionText];
  v32 = [v30 stringWithFormat:@"- Problem Description: %@ issue detected on HomePod. \n\n- Error: %@ \n\n- Request ID: %@\n\n- Recognized User Utterance: %@\n\n", descNameCopy, reasonCopy, dCopy, getRecognitionText2];

  [v16 setRadarDescription:v32];
  [_tapToRadarManager createProblem:v16 extraContent:0 completionHandler:&__block_literal_global_314];
  [_tapToRadarManager setRecognitionText:&stru_287A1C130];
}

void __90__SVXSession__promptRadarWithReason_requestID_displayReason_issueTitleName_issueDescName___block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v4 = @"failed";
    if (a2)
    {
      v4 = @"success";
    }

    v6 = 136315394;
    v7 = "[SVXSession _promptRadarWithReason:requestID:displayReason:issueTitleName:issueDescName:]_block_invoke";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s Prompt radar %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_sessionIdleFiredWithAssertion:(id)assertion
{
  v17 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  if ([(NSMutableSet *)self->_sessionIdleAssertions containsObject:assertionCopy])
  {
    [(NSMutableSet *)self->_sessionIdleAssertions removeObject:assertionCopy];
    v5 = [(NSMutableSet *)self->_sessionIdleAssertions count];
    v6 = *MEMORY[0x277CEF098];
    v7 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        sessionIdleAssertions = self->_sessionIdleAssertions;
        *buf = 136315650;
        v12 = "[SVXSession _sessionIdleFiredWithAssertion:]";
        v13 = 2112;
        v14 = assertionCopy;
        v15 = 2112;
        v16 = sessionIdleAssertions;
        _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s Fired session idle timer (assertion = %@), but there are still other active timers (assertions = %@).", buf, 0x20u);
      }
    }

    else
    {
      if (v7)
      {
        *buf = 136315394;
        v12 = "[SVXSession _sessionIdleFiredWithAssertion:]";
        v13 = 2112;
        v14 = assertionCopy;
        _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s Fired last session idle timer (assertion = %@).", buf, 0x16u);
      }

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __45__SVXSession__sessionIdleFiredWithAssertion___block_invoke;
      v10[3] = &unk_279C68CD8;
      v10[4] = self;
      [(SVXSession *)self _checkIsActiveWithCompletion:v10];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __45__SVXSession__sessionIdleFiredWithAssertion___block_invoke(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = MEMORY[0x277CEF098];
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "[SVXSession _sessionIdleFiredWithAssertion:]_block_invoke";
      _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s Ignored because session is active.", &v20, 0xCu);
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = v4;
      if (v5 > 4)
      {
        v7 = @"(unknown)";
      }

      else
      {
        v7 = off_279C68A18[v5];
      }

      v13 = v7;
      v20 = 136315394;
      v21 = "[SVXSession _sessionIdleFiredWithAssertion:]_block_invoke";
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s _currentState = %@", &v20, 0x16u);

      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v14 = *(*(a1 + 32) + 80);
      v20 = 136315394;
      v21 = "[SVXSession _sessionIdleFiredWithAssertion:]_block_invoke";
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s _currentSpeechRequestOptions = %@", &v20, 0x16u);
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v15 = *(*(a1 + 32) + 88);
      v16 = v4;
      v17 = MEMORY[0x26D642680](v15);
      v20 = 136315394;
      v21 = "[SVXSession _sessionIdleFiredWithAssertion:]_block_invoke";
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_2695B9000, v16, OS_LOG_TYPE_INFO, "%s _currentSpeechRequestContinueBlock = %@", &v20, 0x16u);

      v4 = *v3;
    }

    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v18 = *(*(a1 + 32) + 96);
    v20 = 136315394;
    v21 = "[SVXSession _sessionIdleFiredWithAssertion:]_block_invoke";
    v22 = 2112;
    v23 = v18;
    v12 = "%s _currentSpeechRequestPendingBlocks = %@";
LABEL_23:
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, v12, &v20, 0x16u);
LABEL_24:
    v19 = *MEMORY[0x277D85DE8];
    return;
  }

  v8 = *(a1 + 32);
  if (v8[3] != 1)
  {
    v10 = MEMORY[0x277CEF098];
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "[SVXSession _sessionIdleFiredWithAssertion:]_block_invoke";
      _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s Ignored because session is active.", &v20, 0xCu);
      v4 = *v10;
    }

    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v11 = *(*(a1 + 32) + 24);
    v20 = 136315394;
    v21 = "[SVXSession _sessionIdleFiredWithAssertion:]_block_invoke";
    v22 = 2048;
    v23 = v11;
    v12 = "%s _activityState = %lu";
    goto LABEL_23;
  }

  v9 = *MEMORY[0x277D85DE8];

  [v8 _invalidate];
}

- (void)_handleSessionIdleTimerFireEventWithAssertion:(id)assertion timerInterval:(double)interval
{
  v15 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[SVXSession _handleSessionIdleTimerFireEventWithAssertion:timerInterval:]";
    v11 = 2048;
    intervalCopy = interval;
    v13 = 2112;
    v14 = assertionCopy;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s Handle session idle timer(time interval = %lf) fire event (assertion = %@).", &v9, 0x20u);
  }

  [(SVXSession *)self _sessionIdleFiredWithAssertion:assertionCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_stopSessionIdleTimer
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_sessionIdleAssertions count])
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      sessionIdleAssertions = self->_sessionIdleAssertions;
      v6 = 136315394;
      v7 = "[SVXSession _stopSessionIdleTimer]";
      v8 = 2112;
      v9 = sessionIdleAssertions;
      _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s Stopped all session idle timers (assertions = %@).", &v6, 0x16u);
    }

    [(NSMutableSet *)self->_sessionIdleAssertions removeAllObjects];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_startSessionIdleTimerWithTimeInterval:(double)interval
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [[SVXSessionIdleAssertion alloc] initWithTimestamp:mach_absolute_time() session:self];
  [(NSMutableSet *)self->_sessionIdleAssertions addObject:v5];
  objc_initWeak(&location, self);
  performer = self->_performer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__SVXSession__startSessionIdleTimerWithTimeInterval___block_invoke;
  v10[3] = &unk_279C68830;
  objc_copyWeak(v12, &location);
  v7 = v5;
  v11 = v7;
  v12[1] = *&interval;
  [(SVXPerforming *)performer performBlock:v10 afterDelay:interval];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[SVXSession _startSessionIdleTimerWithTimeInterval:]";
    v16 = 2048;
    intervalCopy = interval;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s Started session idle timer for %f seconds (assertion = %@).", buf, 0x20u);
  }

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);

  v9 = *MEMORY[0x277D85DE8];
}

void __53__SVXSession__startSessionIdleTimerWithTimeInterval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleSessionIdleTimerFireEventWithAssertion:*(a1 + 32) timerInterval:*(a1 + 48)];
}

- (void)_invalidateConnection
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SVXSession _invalidateConnection]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  connection = self->_connection;
  if (connection)
  {
    v6 = *v3;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[SVXSession _invalidateConnection]";
      v11 = 2112;
      v12 = connection;
      _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s Tear down %@", &v9, 0x16u);
      connection = self->_connection;
    }

    [(AFConnection *)connection didDismissUI];
    [(AFConnection *)self->_connection cancelRequest];
    [(AFConnection *)self->_connection endSession];
    [(AFConnection *)self->_connection invalidate];
    [(AFConnection *)self->_connection setSpeechDelegate:0];
    [(AFConnection *)self->_connection setDelegate:0];
    v7 = self->_connection;
    self->_connection = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_connection:(BOOL)_connection
{
  _connectionCopy = _connection;
  v23 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "[SVXSession _connection:]";
    v21 = 1024;
    LODWORD(v22) = _connectionCopy;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s createIfAbsent = %d", &v19, 0x12u);
  }

  connection = self->_connection;
  if (connection)
  {
    v8 = 1;
  }

  else
  {
    v8 = !_connectionCopy;
  }

  if (!v8)
  {
    connectionFactory = self->_connectionFactory;
    queue = [(SVXPerforming *)self->_performer queue];
    v11 = [(SVXAFConnectionFactory *)connectionFactory createWithDispatchQueue:queue instanceContext:self->_instanceContext];
    v12 = self->_connection;
    self->_connection = v11;

    [(AFConnection *)self->_connection setDelegate:self];
    [(AFConnection *)self->_connection setSpeechDelegate:self];
    v13 = self->_connection;
    v14 = [(SVXSession *)self _createClientConfiguration:self->_deviceSetupContext storeDemo:0 preferences:self->_preferences];
    [(AFConnection *)v13 setConfiguration:v14];

    [(SVXSession *)self _handleDidChangeAudioSessionID:[(AFConnection *)self->_connection audioSessionID]];
    [(SVXSession *)self _handleShouldSpeak:[(AFConnection *)self->_connection shouldSpeak]];
    v15 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v16 = self->_connection;
      v19 = 136315394;
      v20 = "[SVXSession _connection:]";
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s Set up %@", &v19, 0x16u);
    }

    [(AFConnection *)self->_connection willPresentUI];
    connection = self->_connection;
  }

  v17 = *MEMORY[0x277D85DE8];

  return connection;
}

- (id)_stateFeedbackManager
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_isStateFeedbackEnabled)
  {
    stateFeedbackManager = self->_stateFeedbackManager;
    if (!stateFeedbackManager)
    {
      v4 = objc_alloc(MEMORY[0x277D61B18]);
      v5 = [(SVXSession *)self _connection:0];
      v6 = [v4 initWithConnection:v5 withPlaybackOptions:0];

      v7 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v13 = 136315394;
        v14 = "[SVXSession _stateFeedbackManager]";
        v15 = 2048;
        v16 = 0;
        _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s #svxstatefeedback create statefeedback manager with Option:%lu", &v13, 0x16u);
      }

      v8 = [objc_alloc(MEMORY[0x277D61B20]) initWithStateFeedbackProvider:v6 delegate:self];
      v9 = self->_stateFeedbackManager;
      self->_stateFeedbackManager = v8;

      stateFeedbackManager = self->_stateFeedbackManager;
    }

    v10 = stateFeedbackManager;
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_handleCommand:(id)command taskTracker:(id)tracker completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  trackerCopy = tracker;
  completionCopy = completion;
  v11 = MEMORY[0x277CEF098];
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v26 = "[SVXSession _handleCommand:taskTracker:completion:]";
    v27 = 2112;
    v28 = commandCopy;
    v29 = 2112;
    v30 = trackerCopy;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s command = %@, taskTracker = %@", buf, 0x20u);
  }

  if (!self->_currentRequestWillPresentUUFR && self->_currentRequestUUID && [(SVXServiceCommandHandler *)self->_serviceCommandHandler isCommandUUFR:commandCopy])
  {
    self->_currentRequestWillPresentUUFR = 1;
    v13 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "[SVXSession _handleCommand:taskTracker:completion:]";
      _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s UUFR PRESENT", buf, 0xCu);
    }

    v14 = [(SVXSession *)self _connection:0];
    [v14 willPresentUsefulUserResultWithType:1 forCommand:commandCopy];
  }

  v15 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v26 = "[SVXSession _handleCommand:taskTracker:completion:]";
    v27 = 2112;
    v28 = commandCopy;
    v29 = 2112;
    v30 = trackerCopy;
    _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s Begin handle command %@ with task tracker %@.", buf, 0x20u);
  }

  serviceCommandHandler = self->_serviceCommandHandler;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__SVXSession__handleCommand_taskTracker_completion___block_invoke;
  v21[3] = &unk_279C68808;
  v21[4] = self;
  v22 = commandCopy;
  v23 = trackerCopy;
  v24 = completionCopy;
  v17 = completionCopy;
  v18 = trackerCopy;
  v19 = commandCopy;
  [(SVXServiceCommandHandler *)serviceCommandHandler handleCommand:v19 taskTracker:v18 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __52__SVXSession__handleCommand_taskTracker_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 176);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SVXSession__handleCommand_taskTracker_completion___block_invoke_2;
  v6[3] = &unk_279C69038;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v10 = *(a1 + 56);
  v5 = v3;
  [v4 performBlock:v6];
}

uint64_t __52__SVXSession__handleCommand_taskTracker_completion___block_invoke_2(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v8 = 136315906;
    v9 = "[SVXSession _handleCommand:taskTracker:completion:]_block_invoke_2";
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s End handle command %@ with task tracker %@ and response %@.", &v8, 0x2Au);
  }

  result = a1[7];
  if (result)
  {
    result = (*(result + 16))(result, a1[6]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_presentError:(id)error taskTracker:(id)tracker completion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  trackerCopy = tracker;
  completionCopy = completion;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v51 = "[SVXSession _presentError:taskTracker:completion:]";
    v52 = 2112;
    v53 = errorCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s error = %@", buf, 0x16u);
  }

  domain = [errorCopy domain];
  code = [errorCopy code];
  v14 = [domain isEqualToString:@"SiriVOXErrorDomain"];
  v15 = MEMORY[0x277CEF588];
  if (v14 && code == 1)
  {
    userInfo = [errorCopy userInfo];
    v17 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

    domain2 = [v17 domain];
    domain3 = [v17 domain];
    v20 = *v15;
    v21 = [domain3 isEqualToString:v20];

    if (v21)
    {
      v22 = domain2;

      code = [v17 code];
      domain = v22;
    }

    else
    {
      code = 1;
    }
  }

  else
  {
    v20 = *MEMORY[0x277CEF588];
  }

  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (![domain isEqualToString:v20])
  {
    if (![domain isEqualToString:@"SiriVOXErrorDomain"] || code != 2)
    {
      goto LABEL_32;
    }

    goto LABEL_18;
  }

  if (code > 0x34)
  {
    goto LABEL_26;
  }

  if (((1 << code) & 0x10000000004210) != 0)
  {
LABEL_18:
    v26 = [(SVXDeviceProblemsState *)self->_deviceProblemsState problems]& 0x8030;
    v27 = objc_alloc(MEMORY[0x277CCACA8]);
    if (v26)
    {
      if (AFSupportsWAPI())
      {
        v28 = @"WLAN";
      }

      else
      {
        v28 = @"WIFI";
      }

      v29 = [v27 initWithFormat:@"SIRI_VOX_%@_ERROR_%u", v28, arc4random_uniform(2u)];
      v30 = @"client#errorWiFi";
    }

    else
    {
      v29 = [v27 initWithFormat:@"SIRI_VOX_NETWORK_ERROR_%u", arc4random_uniform(1u)];
      v30 = @"client#errorNetwork";
    }

    goto LABEL_31;
  }

  if (((1 << code) & 0x400004) != 0)
  {
LABEL_14:
    if ([v23 count])
    {
      v25 = 1;
LABEL_43:
      v38 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v51 = "[SVXSession _presentError:taskTracker:completion:]";
        _os_log_impl(&dword_2695B9000, v38, OS_LOG_TYPE_INFO, "%s Begin waiting for Myriad decision...", buf, 0xCu);
      }

      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __51__SVXSession__presentError_taskTracker_completion___block_invoke;
      v43[3] = &unk_279C687E0;
      v44 = errorCopy;
      v45 = v23;
      v46 = v24;
      selfCopy = self;
      v48 = trackerCopy;
      v49 = completionCopy;
      [(SVXSession *)self _waitForMyriadDecisionUsingHandler:v43];

      goto LABEL_51;
    }

    v41 = *MEMORY[0x277CEF098];
    v25 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v51 = "[SVXSession _presentError:taskTracker:completion:]";
      v52 = 2112;
      v53 = errorCopy;
      _os_log_impl(&dword_2695B9000, v41, OS_LOG_TYPE_INFO, "%s The error %@ is not presented because it is suppressed.", buf, 0x16u);
    }

    goto LABEL_49;
  }

  if (code == 6)
  {
    v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SIRI_VOX_GENERIC_ERROR_%u", arc4random_uniform(4u)];
    [v23 addObject:v31];

    [v24 addObject:@"client#errorGeneric"];
    v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SIRI_VOX_DEVICE_PROBLEM_FIXING_%u", arc4random_uniform(4u)];
    v30 = @"client#errorTryAgain";
LABEL_31:
    [v23 addObject:v29];

    [v24 addObject:v30];
    goto LABEL_32;
  }

LABEL_26:
  if (code == 1)
  {
    v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SIRI_VOX_TIMEOUT_ERROR_%u", arc4random_uniform(4u)];
    [v23 addObject:v32];

    [v24 addObject:@"client#errorTimeout"];
    v33 = self->_deviceProblemsState;
    if (([(SVXDeviceProblemsState *)v33 problems]& 0x8030) != 0 || (v34 = [(SVXDeviceProblemsState *)v33 problems], (v34 & 0xE0040) != 0))
    {

LABEL_30:
      v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SIRI_VOX_DEVICE_PROBLEM_NETWORK_%u", arc4random_uniform(3u)];
      v30 = @"client#errorNetworkProblems";
      goto LABEL_31;
    }

    v42 = v34;

    if ((v42 & 0x4000) != 0)
    {
      goto LABEL_30;
    }
  }

  else if (code - 200 < 0x64)
  {
    goto LABEL_14;
  }

LABEL_32:
  if (([(SVXDeviceProblemsState *)self->_deviceProblemsState problems]& 0x80) != 0)
  {
    [v23 removeAllObjects];
    [v24 removeAllObjects];
    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SIRI_VOX_DEVICE_PROBLEM_HARDWARE%@_%u", &stru_287A1C130, arc4random_uniform(2u)];
    v36 = @"client#errorHardwareProblems";
LABEL_40:
    [v23 addObject:v35];

    [v24 addObject:v36];
    goto LABEL_41;
  }

  if (([(SVXDeviceProblemsState *)self->_deviceProblemsState problems]& 0x200) != 0)
  {
    [v23 removeAllObjects];
    [v24 removeAllObjects];
    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SIRI_VOX_DEVICE_PROBLEM_THERMAL%@_%u", &stru_287A1C130, arc4random_uniform(3u)];
    v36 = @"client#errorThermalProblems";
    goto LABEL_40;
  }

  if ([(SVXDeviceProblemsState *)self->_deviceProblemsState isFixingProblems])
  {
    [v23 removeAllObjects];
    [v24 removeAllObjects];
LABEL_39:
    v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SIRI_VOX_GENERIC_ERROR_%u", arc4random_uniform(4u)];
    [v23 addObject:v37];

    [v24 addObject:@"client#errorGeneric"];
    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SIRI_VOX_DEVICE_PROBLEM_FIXING_%u", arc4random_uniform(4u)];
    v36 = @"client#errorTryAgain";
    goto LABEL_40;
  }

  if (![v23 count])
  {
    goto LABEL_39;
  }

LABEL_41:
  if ([v23 count])
  {
    v25 = 0;
    goto LABEL_43;
  }

  v39 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v51 = "[SVXSession _presentError:taskTracker:completion:]";
    v52 = 2112;
    v53 = errorCopy;
    _os_log_error_impl(&dword_2695B9000, v39, OS_LOG_TYPE_ERROR, "%s The error %@ is not presented. Please take a sysdiagnose and file a radar.", buf, 0x16u);
  }

  v25 = 0;
LABEL_49:
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_51:
  self->_isMostRecentRequestSuppressedError = v25;

  v40 = *MEMORY[0x277D85DE8];
}

void __51__SVXSession__presentError_taskTracker_completion___block_invoke(uint64_t a1, int a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CEF098];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "[SVXSession _presentError:taskTracker:completion:]_block_invoke";
    v34 = 1024;
    LODWORD(v35) = a2;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s End waiting for Myriad decision with result %d.", buf, 0x12u);
    v5 = *v4;
  }

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      *buf = 136315394;
      v33 = "[SVXSession _presentError:taskTracker:completion:]_block_invoke";
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s Begin presenting error %@...", buf, 0x16u);
    }

    v8 = dispatch_group_create();
    v9 = [*(a1 + 40) count];
    v10 = [*(a1 + 48) count];
    if (v9 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        dispatch_group_enter(v8);
        v13 = *(*(a1 + 56) + 192);
        v14 = [SVXSpeechSynthesisRequest alloc];
        v15 = [*(a1 + 40) objectAtIndex:i];
        v16 = [(SVXSpeechSynthesisRequest *)v14 initWithPriority:1 options:1 speakableText:0 speakableContext:0 localizationKey:v15 presynthesizedAudio:0 streamID:0];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __51__SVXSession__presentError_taskTracker_completion___block_invoke_278;
        v30[3] = &unk_279C68790;
        v31 = v8;
        v17 = *(a1 + 64);
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __51__SVXSession__presentError_taskTracker_completion___block_invoke_2;
        v27[3] = &unk_279C687B8;
        v28 = *(a1 + 48);
        v29 = i;
        v18 = [SVXTaskContext newWithBuilder:v27];
        v19 = [v17 beginChildWithContext:v18];
        [v13 enqueueRequest:v16 languageCode:0 voiceName:0 gender:0 audioSessionID:0 preparation:0 finalization:v30 taskTracker:v19 analyticsContext:0];
      }
    }

    v20 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SVXSession__presentError_taskTracker_completion___block_invoke_3;
    block[3] = &unk_279C68EA8;
    block[4] = *(a1 + 56);
    v25 = *(a1 + 32);
    v26 = *(a1 + 72);
    dispatch_group_notify(v8, v20, block);
  }

  else
  {
    if (v6)
    {
      v21 = *(a1 + 32);
      *buf = 136315394;
      v33 = "[SVXSession _presentError:taskTracker:completion:]_block_invoke";
      v34 = 2112;
      v35 = v21;
      _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s The error %@ is not presented because of Myriad decision.", buf, 0x16u);
    }

    v22 = *(a1 + 72);
    if (v22)
    {
      (*(v22 + 16))();
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __51__SVXSession__presentError_taskTracker_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 176);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__SVXSession__presentError_taskTracker_completion___block_invoke_4;
  v3[3] = &unk_279C68EF8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 performBlock:v3];
}

void __51__SVXSession__presentError_taskTracker_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 objectAtIndex:v3];
  [v4 setDialogIdentifier:v5];
}

uint64_t __51__SVXSession__presentError_taskTracker_completion___block_invoke_4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[SVXSession _presentError:taskTracker:completion:]_block_invoke_4";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s End presented error %@.", &v6, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleStartListenAfterSpeaking:(id)speaking record:(id)record taskTracker:(id)tracker
{
  v32 = *MEMORY[0x277D85DE8];
  speakingCopy = speaking;
  recordCopy = record;
  trackerCopy = tracker;
  v11 = mach_absolute_time();
  context = [trackerCopy context];
  if ([context listensAfterSpeaking] && objc_msgSend(context, "origin") == 11)
  {
    v13 = MEMORY[0x277CEF098];
    v14 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v29 = "[SVXSession _handleStartListenAfterSpeaking:record:taskTracker:]";
      _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s listensAfterSpeaking = YES", buf, 0xCu);
    }

    v15 = [SVXActivationContext alloc];
    v16 = SVXClientInfoGetCurrent();
    v17 = [(SVXActivationContext *)v15 initWithSource:4 timestamp:v11 buttonEvent:0 systemEvent:0 clientInfo:v16 requestInfo:0 userInfo:0];

    objc_initWeak(&location, self);
    v18 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v29 = "[SVXSession _handleStartListenAfterSpeaking:record:taskTracker:]";
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&dword_2695B9000, v18, OS_LOG_TYPE_INFO, "%s listensAfterSpeaking: Scheduled activation context %@ in request barrier.", buf, 0x16u);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__SVXSession__handleStartListenAfterSpeaking_record_taskTracker___block_invoke;
    v21[3] = &unk_279C68768;
    v19 = v17;
    v22 = v19;
    objc_copyWeak(&v26, &location);
    v23 = recordCopy;
    v24 = context;
    v25 = trackerCopy;
    [(SVXSession *)self _addRequestBarrier:v21];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __65__SVXSession__handleStartListenAfterSpeaking_record_taskTracker___block_invoke(uint64_t a1, char a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 136315394;
      v21 = "[SVXSession _handleStartListenAfterSpeaking:record:taskTracker:]_block_invoke";
      v22 = 2112;
      v23 = v5;
      _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s listensAfterSpeaking: Cancelled request barrier with activation context %@.", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      *buf = 136315394;
      v21 = "[SVXSession _handleStartListenAfterSpeaking:record:taskTracker:]_block_invoke";
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s listensAfterSpeaking: Executing request barrier with activation context %@.", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v10 = WeakRetained[35];
      v9 = WeakRetained[36];
      v11 = WeakRetained[37];
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v14 = [*(a1 + 48) listenAfterSpeakingBehavior];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 startAlertSoundID];
        if ([v16 isEqualToString:*MEMORY[0x277D48D18]])
        {
          v17 = [MEMORY[0x277CEF490] newWithBuilder:&__block_literal_global_767];
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = [v8 activateWithContext:v13 options:0 deviceSetupContext:v9 deviceProblemsState:v10 localDeviceContext:v11 speechSynthesisRecord:v12 speechSynthesisState:1 speechRecordingAlertPolicy:v17 completion:0];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechSynthesizerDidFailRequest:(id)request taskTracker:(id)tracker error:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[SVXSession _handleSpeechSynthesizerDidFailRequest:taskTracker:error:]";
    v12 = 2112;
    v13 = requestCopy;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s request = %@, error = %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechSynthesizerDidInterruptRequest:(id)request taskTracker:(id)tracker
{
  v11 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[SVXSession _handleSpeechSynthesizerDidInterruptRequest:taskTracker:]";
    v9 = 2112;
    v10 = requestCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s request = %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechSynthesizerDidCancelRequest:(id)request taskTracker:(id)tracker
{
  v11 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[SVXSession _handleSpeechSynthesizerDidCancelRequest:taskTracker:]";
    v9 = 2112;
    v10 = requestCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s request = %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechSynthesizerDidFinishRequest:(id)request record:(id)record taskTracker:(id)tracker
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  recordCopy = record;
  trackerCopy = tracker;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[SVXSession _handleSpeechSynthesizerDidFinishRequest:record:taskTracker:]";
    v16 = 2112;
    v17 = requestCopy;
    v18 = 2112;
    v19 = recordCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s request = %@, record = %@", &v14, 0x20u);
  }

  v12 = [(SVXSession *)self _connection:0];
  [v12 updateSpeechSynthesisRecord:recordCopy];

  [(SVXSession *)self _handleStartListenAfterSpeaking:requestCopy record:recordCopy taskTracker:trackerCopy];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechSynthesizerDidStartRequest:(id)request record:(id)record taskTracker:(id)tracker
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  recordCopy = record;
  trackerCopy = tracker;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "[SVXSession _handleSpeechSynthesizerDidStartRequest:record:taskTracker:]";
    v20 = 2112;
    v21 = requestCopy;
    v22 = 2112;
    v23 = recordCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s request = %@, record = %@", buf, 0x20u);
  }

  v12 = [(SVXSession *)self _connection:0];
  [v12 updateSpeechSynthesisRecord:recordCopy];

  if ([trackerCopy origin] == 11)
  {
    taskTrackingCenter = self->_taskTrackingCenter;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__SVXSession__handleSpeechSynthesizerDidStartRequest_record_taskTracker___block_invoke;
    v15[3] = &unk_279C68740;
    v16 = trackerCopy;
    selfCopy = self;
    [(SVXTaskTrackingCenter *)taskTrackingCenter getContextsOfAllTrackedTasksUsingBlock:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __73__SVXSession__handleSpeechSynthesizerDidStartRequest_record_taskTracker___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 context];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(v8 + 176);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__SVXSession__handleSpeechSynthesizerDidStartRequest_record_taskTracker___block_invoke_2;
    v10[3] = &unk_279C68FE8;
    v10[4] = v8;
    v11 = v7;
    [v9 performBlock:v10];
  }
}

void __73__SVXSession__handleSpeechSynthesizerDidStartRequest_record_taskTracker___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 105) & 1) == 0 && *(v2 + 72) && [*(a1 + 40) isUUFR])
  {
    *(*(a1 + 32) + 105) = 1;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 40) dialogPhase];
  if (v3)
  {
    [v5 setObject:v3 forKey:@"dialogPhase"];
  }

  v4 = [*(a1 + 40) dialogIdentifier];
  if (v4)
  {
    [v5 setObject:v4 forKey:@"dialogIdentifier"];
  }

  [*(*(a1 + 32) + 224) logEventWithType:1924 context:v5];
}

- (void)_handleSpeechSynthesizerWillStartRequest:(id)request taskTracker:(id)tracker
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  trackerCopy = tracker;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[SVXSession _handleSpeechSynthesizerWillStartRequest:taskTracker:]";
    v20 = 2112;
    v21 = requestCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s request = %@", buf, 0x16u);
  }

  origin = [trackerCopy origin];
  if (origin <= 0xB)
  {
    v10 = origin;
    if (((1 << origin) & 0xB02) != 0)
    {
      taskTrackingCenter = self->_taskTrackingCenter;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __67__SVXSession__handleSpeechSynthesizerWillStartRequest_taskTracker___block_invoke;
      v13[3] = &unk_279C68718;
      v14 = trackerCopy;
      selfCopy = self;
      v16 = requestCopy;
      v17 = v10;
      [(SVXTaskTrackingCenter *)taskTrackingCenter getContextsOfAllTrackedTasksUsingBlock:v13];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __67__SVXSession__handleSpeechSynthesizerWillStartRequest_taskTracker___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 context];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(v8 + 176);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__SVXSession__handleSpeechSynthesizerWillStartRequest_taskTracker___block_invoke_2;
    v12[3] = &unk_279C686F0;
    v12[4] = v8;
    v10 = v7;
    v11 = *(a1 + 56);
    v13 = v10;
    v15 = v11;
    v14 = *(a1 + 32);
    [v9 performBlock:v12];
  }
}

uint64_t __67__SVXSession__handleSpeechSynthesizerWillStartRequest_taskTracker___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 408) requestHasSpeakableContents:*(a1 + 40)];
  if (result)
  {
    if (*(a1 + 56) != 11 || (result = [*(a1 + 48) isUUFR], result))
    {
      [*(*(a1 + 32) + 368) dispatchEvent:9];
      v3 = *(a1 + 32);

      return [v3 _setCurrentState:4];
    }
  }

  return result;
}

- (void)_handleSpeechSynthesizerDidBecomeIdle
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[SVXSession _handleSpeechSynthesizerDidBecomeIdle]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  [(SVXPowerLevelManager *)self->_powerLevelManager endUpdateAudioPower];
  [(SVXSession *)self _setOutputAudioPowerWrapper:0];
  v5 = NSStringFromSelector(a2);
  [(SVXSession *)self _resignActiveForReason:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechSynthesizerWillBecomeBusy
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[SVXSession _handleSpeechSynthesizerWillBecomeBusy]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (([(AFInstanceContext *)self->_instanceContext supportsAudioPowerUpdate]& 1) != 0)
  {
    currentSpeechRequestOptions = self->_currentSpeechRequestOptions;
    if (!currentSpeechRequestOptions || ![(AFSpeechRequestOptions *)currentSpeechRequestOptions disableOutputAudioPowerUpdate])
    {
      objc_initWeak(buf, self);
      powerLevelManager = self->_powerLevelManager;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __52__SVXSession__handleSpeechSynthesizerWillBecomeBusy__block_invoke;
      v14[3] = &unk_279C686C8;
      objc_copyWeak(&v15, buf);
      [(SVXPowerLevelManager *)powerLevelManager beginUpdateAudioPowerWithCompletion:v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
      goto LABEL_12;
    }

    v6 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v7 = self->_currentSpeechRequestOptions;
      *buf = 136315394;
      v17 = "[SVXSession _handleSpeechSynthesizerWillBecomeBusy]";
      v18 = 2112;
      v19 = v7;
      v8 = "%s Output audio power updater disabled by current speech request options %@.";
      v9 = v6;
      v10 = 22;
LABEL_10:
      _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, v8, buf, v10);
    }
  }

  else
  {
    v11 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v17 = "[SVXSession _handleSpeechSynthesizerWillBecomeBusy]";
      v8 = "%s Output audio power updater not supported.";
      v9 = v11;
      v10 = 12;
      goto LABEL_10;
    }
  }

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
}

void __52__SVXSession__handleSpeechSynthesizerWillBecomeBusy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SVXSession__handleSpeechSynthesizerWillBecomeBusy__block_invoke_2;
  v6[3] = &unk_279C690B0;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = v3;
  v7 = v5;
  [WeakRetained performBlock:v6];

  objc_destroyWeak(&v8);
}

void __52__SVXSession__handleSpeechSynthesizerWillBecomeBusy__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setOutputAudioPowerWrapper:*(a1 + 32)];
}

- (void)_endThinking
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[SVXSession _endThinking]";
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_beginThinking
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[SVXSession _beginThinking]";
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (int64_t)_getSRUIFSiriSessionStateFor:(int64_t)for
{
  v14 = *MEMORY[0x277D85DE8];
  result = for - 1;
  if ((for - 1) >= 4)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v7 = v5;
      if (for > 4)
      {
        v8 = @"(unknown)";
      }

      else
      {
        v8 = off_279C68A18[for];
      }

      v9 = v8;
      v10 = 136315394;
      v11 = "[SVXSession _getSRUIFSiriSessionStateFor:]";
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_2695B9000, v7, OS_LOG_TYPE_ERROR, "%s Unsupported SVXSessionState: %@. Converting to SRUIFSiriSessionStateIdle", &v10, 0x16u);
    }

    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_didChangeFromState:(int64_t)state toState:(int64_t)toState
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    if (state > 4)
    {
      v10 = @"(unknown)";
    }

    else
    {
      v10 = off_279C68A18[state];
    }

    v11 = v10;
    if (toState > 4)
    {
      v12 = @"(unknown)";
    }

    else
    {
      v12 = off_279C68A18[toState];
    }

    v13 = v12;
    v21 = 136315650;
    v22 = "[SVXSession _didChangeFromState:toState:]";
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s fromState = %@, toState = %@", &v21, 0x20u);
  }

  if (toState != 2)
  {
    [(SVXSession *)self _setInputAudioPowerWrapper:0];
    if (toState == 3)
    {
      [(SVXSession *)self _beginThinking];
    }

    else if (toState == 1)
    {
      [(SVXSession *)self _setOutputAudioPowerWrapper:0];
    }
  }

  stateCopy = state;
  if (state == 3)
  {
    [(SVXSession *)self _endThinking];
    stateCopy = 3;
  }

  self->_currentInstrumentationUIState = SVXInstrumentationEmitUIStateTransition(self->_currentRequestInstrumentationContext, stateCopy, toState, self->_currentInstrumentationUIState);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained session:self didChangeFromState:state toState:toState];

  if (self->_isStateFeedbackEnabled)
  {
    v16 = [(SVXSession *)self _getSRUIFSiriSessionStateFor:state];
    v17 = [(SVXSession *)self _getSRUIFSiriSessionStateFor:toState];
    v18 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      v21 = 136315650;
      v22 = "[SVXSession _didChangeFromState:toState:]";
      v23 = 2048;
      v24 = v16;
      v25 = 2048;
      v26 = v17;
      _os_log_impl(&dword_2695B9000, v18, OS_LOG_TYPE_INFO, "%s Converted fromState: %ld, Converted toState: %ld", &v21, 0x20u);
    }

    _stateFeedbackManager = [(SVXSession *)self _stateFeedbackManager];
    [_stateFeedbackManager didTransitionFromState:v16 toState:v17];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_willChangeFromState:(int64_t)state toState:(int64_t)toState
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (state > 4)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C68A18[state];
    }

    v10 = v9;
    if (toState > 4)
    {
      v11 = @"(unknown)";
    }

    else
    {
      v11 = off_279C68A18[toState];
    }

    v12 = v11;
    v15 = 136315650;
    v16 = "[SVXSession _willChangeFromState:toState:]";
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s fromState = %@, toState = %@", &v15, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained session:self willChangeFromState:state toState:toState];

  if ((toState - 1) <= 3)
  {
    [(AFAnalytics *)self->_analytics logEventWithType:toState + 1415 context:0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidFailStartPlaybackWithDestination:(int64_t)destination
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[SVXSession _handleDidFailStartPlaybackWithDestination:]";
    v11 = 2048;
    destinationCopy = destination;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s destination = %ld", &v9, 0x16u);
  }

  if (self->_currentRequestUUID)
  {
    self->_isMostRecentRequestStartingMediaPlaybackLocally = 0;
  }

  else
  {
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[SVXSession _handleDidFailStartPlaybackWithDestination:]";
      _os_log_error_impl(&dword_2695B9000, v7, OS_LOG_TYPE_ERROR, "%s Ignored because _currentRequestUUID is nil.", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleWillProcessStartPlaybackWithDestination:(int64_t)destination intent:(id)intent completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  completionCopy = completion;
  v10 = MEMORY[0x277CEF098];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[SVXSession _handleWillProcessStartPlaybackWithDestination:intent:completion:]";
    v16 = 2048;
    destinationCopy = destination;
    v18 = 2112;
    v19 = intentCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s destination = %ld, intent = %@", &v14, 0x20u);
  }

  if (!self->_currentRequestUUID)
  {
    v12 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[SVXSession _handleWillProcessStartPlaybackWithDestination:intent:completion:]";
      _os_log_error_impl(&dword_2695B9000, v12, OS_LOG_TYPE_ERROR, "%s Failing without setting flags because _currentRequestUUID is nil (mostly likely a -prepareForAudioHandoffWithCompletion: call is happening outside of a request.", &v14, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_9;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_9;
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_9;
  }

  self->_isMostRecentRequestStartingMediaPlaybackLocally = destination == 1;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 1);
  }

LABEL_9:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidHandleQuickStopWithActions:(unint64_t)actions
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[SVXSession _handleDidHandleQuickStopWithActions:]";
    v11 = 2048;
    actionsCopy = actions;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s actions = %tu", &v9, 0x16u);
  }

  if (self->_currentRequestUUID)
  {
    [(SVXSession *)self _dismiss];
  }

  else
  {
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[SVXSession _handleDidHandleQuickStopWithActions:]";
      _os_log_error_impl(&dword_2695B9000, v7, OS_LOG_TYPE_ERROR, "%s Ignored because _currentRequestUUID is nil.", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidStopAudioPlaybackRequest:(id)request error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (errorCopy)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = "[SVXSession _handleDidStopAudioPlaybackRequest:error:]";
      v19 = 2112;
      v20 = requestCopy;
      v21 = 2112;
      v22 = errorCopy;
      _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, "%s request = %@, error = %@", &v17, 0x20u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "[SVXSession _handleDidStopAudioPlaybackRequest:error:]";
    v19 = 2112;
    v20 = requestCopy;
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s request = %@", &v17, 0x16u);
  }

  v10 = [(NSMutableDictionary *)self->_playbackRequestInfo objectForKey:requestCopy];
  if (v10)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    [v10 setFinish:?];

    [v10 setDidFinish:1];
    v12 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v17 = 136315394;
      v18 = "[SVXSession _handleDidStopAudioPlaybackRequest:error:]";
      v19 = 2112;
      v20 = requestCopy;
      _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s updating finish time for request: %@", &v17, 0x16u);
    }
  }

  v13 = [(SVXSoundUtils *)self->_soundUtils getIDFromAudioPlaybackRequest:requestCopy];
  if (v13)
  {
    v14 = v13;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained session:self didStopSoundWithID:v14 error:errorCopy];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidStartAudioPlaybackRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[SVXSession _handleDidStartAudioPlaybackRequest:]";
    v17 = 2112;
    v18 = requestCopy;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s request = %@", &v15, 0x16u);
  }

  v7 = [(NSMutableDictionary *)self->_playbackRequestInfo objectForKey:requestCopy];
  if (v7)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    [v7 setStart:?];

    [v7 setDidStart:1];
    v9 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[SVXSession _handleDidStartAudioPlaybackRequest:]";
      v17 = 2112;
      v18 = requestCopy;
      _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s updating start time for request: %@", &v15, 0x16u);
    }
  }

  v10 = [(SVXSoundUtils *)self->_soundUtils getIDFromAudioPlaybackRequest:requestCopy];
  if (v10)
  {
    v11 = v10;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained session:self didStartSoundWithID:v11];
  }

  if (self->_isStateFeedbackEnabled)
  {
    _stateFeedbackManager = [(SVXSession *)self _stateFeedbackManager];
    [_stateFeedbackManager audioPlaybackRequestDidStartForRequest:requestCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleWillStartAudioPlaybackRequest:(id)request
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[SVXSession _handleWillStartAudioPlaybackRequest:]";
    v12 = 2112;
    v13 = requestCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s request = %@", &v10, 0x16u);
  }

  v6 = [(SVXSoundUtils *)self->_soundUtils getIDFromAudioPlaybackRequest:requestCopy];
  if (v6)
  {
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained session:self willStartSoundWithID:v7];

    if (v7 == 3 && self->_currentRequestUUID && self->_currentState == 1)
    {
      [(SRSTClient *)self->_client dispatchEvent:0];
      [(SRSTClient *)self->_client dispatchEvent:5];
      [(SVXSession *)self _setCurrentState:2];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleAudioSessionDidEndInterruption:(BOOL)interruption
{
  interruptionCopy = interruption;
  v10 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[SVXSession _handleAudioSessionDidEndInterruption:]";
    v8 = 1024;
    v9 = interruptionCopy;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s shouldResume = %d", &v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleAudioSessionDidBeginInterruption
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SVXSession _handleAudioSessionDidBeginInterruption]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  [(SVXSession *)self _cancelRequestWithOptions:6 keepTaskTracker:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_handleShouldSpeak:(BOOL)speak
{
  speakCopy = speak;
  v10 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[SVXSession _handleShouldSpeak:]";
    v8 = 1024;
    v9 = speakCopy;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s shouldSpeak = %d", &v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequestFailedWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v9 = 136315394;
    v10 = "[SVXSession _handleRequestFailedWithError:]";
    v11 = 2112;
    v12 = errorCopy;
    _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, "%s error = %@", &v9, 0x16u);
  }

  if (self->_currentRequestUUID)
  {
    [(SVXSession *)self _requestDidEndWithOptions:0 error:errorCopy];
  }

  else
  {
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[SVXSession _handleRequestFailedWithError:]";
      _os_log_error_impl(&dword_2695B9000, v7, OS_LOG_TYPE_ERROR, "%s Ignored because _currentRequestUUID is nil.", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleReceivedCommand:(id)command completion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  completionCopy = completion;
  v8 = mach_absolute_time();
  v9 = MEMORY[0x277CEF098];
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v44 = "[SVXSession _handleReceivedCommand:completion:]";
    v45 = 2112;
    v46 = commandCopy;
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s command = %@", buf, 0x16u);
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __48__SVXSession__handleReceivedCommand_completion___block_invoke;
  v40[3] = &unk_279C68EF8;
  v11 = completionCopy;
  v42 = v11;
  v12 = commandCopy;
  v41 = v12;
  v13 = MEMORY[0x26D642680](v40);
  if (!self->_currentRequestUUID)
  {
    refId = [(__CFString *)v12 refId];

    if (refId)
    {
      v20 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v44 = "[SVXSession _handleReceivedCommand:completion:]";
        _os_log_error_impl(&dword_2695B9000, v20, OS_LOG_TYPE_ERROR, "%s Ignored because _currentRequestUUID is nil and the command.refId is not nil.", buf, 0xCu);
      }

LABEL_11:
      v13[2](v13);
      goto LABEL_27;
    }
  }

  source = [(SVXActivationContext *)self->_currentActivationContext source];
  v15 = source;
  if (source == 5 || source == 3)
  {
    v16 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      v18 = off_279C67C58[v15];
      *buf = 136315394;
      v44 = "[SVXSession _handleReceivedCommand:completion:]";
      v45 = 2112;
      v46 = v18;
      _os_log_impl(&dword_2695B9000, v17, OS_LOG_TYPE_INFO, "%s Ignoring as current activation context is from %@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  af_dialogPhase = [(__CFString *)v12 af_dialogPhase];
  isExpository = [af_dialogPhase isExpository];

  if (!isExpository)
  {
    goto LABEL_26;
  }

  if (![(SVXAceViewSpeakableTextExtractor *)self->_aceViewSpeakableTextExtractor hasSpeakableTexts:v12])
  {
    v23 = *v9;
    if (!os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    *buf = 136315394;
    v44 = "[SVXSession _handleReceivedCommand:completion:]";
    v45 = 2112;
    v46 = v12;
    v24 = "%s Ignored %@ because it does not contain speakable texts.";
    goto LABEL_20;
  }

  if (self->_currentRequestDidPresentUUFR)
  {
    v23 = *v9;
    if (!os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    *buf = 136315394;
    v44 = "[SVXSession _handleReceivedCommand:completion:]";
    v45 = 2112;
    v46 = v12;
    v24 = "%s Ignored %@ because it is expository and UUFR has already been presented.";
    goto LABEL_20;
  }

  if (!self->_currentRequestWillPresentUUFR)
  {
LABEL_26:
    v39 = [(SVXServiceCommandHandler *)self->_serviceCommandHandler isCommandUUFR:v12];
    v38 = v8;
    v27 = [SVXTaskContext alloc];
    v28 = objc_alloc(MEMORY[0x277CCAD78]);
    refId2 = [(__CFString *)v12 refId];
    v30 = [v28 initWithUUIDString:refId2];
    currentRequestUUID = self->_currentRequestUUID;
    aceId = [(__CFString *)v12 aceId];
    refId3 = [(__CFString *)v12 refId];
    LOWORD(v37) = v39;
    v34 = [(SVXTaskContext *)v27 initWithOrigin:11 timestamp:v38 sessionUUID:v30 requestUUID:currentRequestUUID aceId:aceId refId:refId3 dialogIdentifier:0 dialogPhase:0 isUUFR:v37 listensAfterSpeaking:0 listenAfterSpeakingBehavior:0 activationContext:0 deactivationContext:0 error:?];

    v35 = [(SVXTaskTrackingCenter *)self->_taskTrackingCenter beginTrackingTaskWithContext:v34 instrumentationContext:self->_currentRequestInstrumentationContext];
    [(SVXSession *)self _handleCommand:v12 taskTracker:v35 completion:v11];

    goto LABEL_27;
  }

  v23 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v44 = "[SVXSession _handleReceivedCommand:completion:]";
    v45 = 2112;
    v46 = v12;
    v24 = "%s Ignored %@ because it is expository and UUFR is going to be presented.";
LABEL_20:
    _os_log_impl(&dword_2695B9000, v23, OS_LOG_TYPE_INFO, v24, buf, 0x16u);
  }

LABEL_21:
  if (v11)
  {
    v25 = objc_alloc_init(MEMORY[0x277D47218]);
    aceId2 = [(__CFString *)v12 aceId];
    [v25 setRefId:aceId2];

    (*(v11 + 2))(v11, v25);
  }

LABEL_27:

  v36 = *MEMORY[0x277D85DE8];
}

void __48__SVXSession__handleReceivedCommand_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v3 = objc_alloc_init(MEMORY[0x277D47210]);
    v2 = [*(a1 + 32) aceId];
    [v3 setRefId:v2];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_handleRequestFinished
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[SVXSession _handleRequestFinished]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  if (self->_currentRequestUUID)
  {
    [(SVXSession *)self _requestDidEndWithOptions:0 error:0];
  }

  else
  {
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[SVXSession _handleRequestFinished]";
      _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s Ignored because _currentRequestUUID is nil.", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleDismissAssistant
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[SVXSession _handleDismissAssistant]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  if (self->_currentRequestUUID)
  {
    [(SVXSession *)self _dismiss];
  }

  else
  {
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[SVXSession _handleDismissAssistant]";
      _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s Ignored because _currentRequestUUID is nil.", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequestWillStart
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[SVXSession _handleRequestWillStart]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", &v12, 0xCu);
  }

  if (!self->_currentRequestUUID)
  {
    [(SVXSession *)self _requestWillBeginWithTaskTracker:0];
  }

  if (![(SVXSessionUtils *)self->_sessionUtils isSpeechRecordingAllowedWithActivationContext:self->_currentActivationContext]&& self->_activityState == 3)
  {
    self->_activityState = 4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    currentActivationContext = self->_currentActivationContext;
    activityUUID = self->_activityUUID;
    turnIdentifier = [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentRequestInstrumentationContext turnIdentifier];
    [WeakRetained session:self didBecomeActiveWithActivationContext:currentActivationContext activityUUID:activityUUID turnID:turnIdentifier];

    v9 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v10 = self->_activityUUID;
      v12 = 136315394;
      v13 = "[SVXSession _handleRequestWillStart]";
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s SESSION IS ACTIVE (%@)", &v12, 0x16u);
    }

    SVXInstrumentationEmitViewAppearContextEnd(self->_currentRequestInstrumentationContext);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechRecognizedPartialResult:(id)result
{
  v18 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[SVXSession _handleSpeechRecognizedPartialResult:]";
    v16 = 2112;
    v17 = resultCopy;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s partialResult = %@", &v14, 0x16u);
  }

  if (!self->_currentRequestUUID)
  {
    v7 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v14 = 136315138;
    v15 = "[SVXSession _handleSpeechRecognizedPartialResult:]";
    v8 = "%s Ignored because _currentRequestUUID is nil.";
    v9 = v7;
    v10 = 12;
LABEL_11:
    _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, v8, &v14, v10);
    goto LABEL_9;
  }

  if (![(SVXSessionUtils *)self->_sessionUtils isSpeechRecordingAllowedWithActivationContext:self->_currentActivationContext])
  {
    v11 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    currentActivationContext = self->_currentActivationContext;
    v14 = 136315394;
    v15 = "[SVXSession _handleSpeechRecognizedPartialResult:]";
    v16 = 2112;
    v17 = currentActivationContext;
    v8 = "%s _currentActivationContext does not allow speech recording and recognition. (_currentActivationContext = %@)";
    v9 = v11;
    v10 = 22;
    goto LABEL_11;
  }

  [(SVXSession *)self _handleReceivedCommand:resultCopy completion:&__block_literal_global_208];
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

void __51__SVXSession__handleSpeechRecognizedPartialResult___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[SVXSession _handleSpeechRecognizedPartialResult:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_debug_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEBUG, "%s response = %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechRecognized:(id)recognized
{
  v24 = *MEMORY[0x277D85DE8];
  recognizedCopy = recognized;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[SVXSession _handleSpeechRecognized:]";
    v22 = 2112;
    v23 = recognizedCopy;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s speechRecognized = %@", &v20, 0x16u);
  }

  if (!self->_currentRequestUUID)
  {
    v13 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v20 = 136315138;
    v21 = "[SVXSession _handleSpeechRecognized:]";
    v14 = "%s Ignored because _currentRequestUUID is nil.";
    v15 = v13;
    v16 = 12;
LABEL_13:
    _os_log_error_impl(&dword_2695B9000, v15, OS_LOG_TYPE_ERROR, v14, &v20, v16);
    goto LABEL_17;
  }

  if (![(SVXSessionUtils *)self->_sessionUtils isSpeechRecordingAllowedWithActivationContext:self->_currentActivationContext])
  {
    v17 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    currentActivationContext = self->_currentActivationContext;
    v20 = 136315394;
    v21 = "[SVXSession _handleSpeechRecognized:]";
    v22 = 2112;
    v23 = currentActivationContext;
    v14 = "%s _currentActivationContext does not allow speech recording and recognition. (_currentActivationContext = %@)";
    v15 = v17;
    v16 = 22;
    goto LABEL_13;
  }

  requestInfo = [(SVXActivationContext *)self->_currentActivationContext requestInfo];
  speechRequestOptions = [requestInfo speechRequestOptions];
  activationEvent = [speechRequestOptions activationEvent];

  if (activationEvent == 30)
  {
    if (self->_currentState == 2)
    {
      v10 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        v12 = @"listening";
        v20 = 136315394;
        v21 = "[SVXSession _handleSpeechRecognized:]";
        v22 = 2112;
        v23 = @"listening";
        _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s _currentState is %@ when speech is recognized and state transitions should be skipped", &v20, 0x16u);
      }
    }
  }

  else
  {
    [(SRSTClient *)self->_client dispatchEvent:6];
    if (self->_currentState == 2 && !self->_isStateFeedbackEnabled)
    {
      [(SVXSession *)self _setCurrentState:3];
    }
  }

LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechRecognitionDidFailWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "[SVXSession _handleSpeechRecognitionDidFailWithError:]";
    v16 = 2112;
    v17 = errorCopy;
    _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, "%s error = %@", &v14, 0x16u);
  }

  if (self->_currentRequestUUID)
  {
    if (![(SVXSessionUtils *)self->_sessionUtils isSpeechRecordingAllowedWithActivationContext:self->_currentActivationContext])
    {
      v7 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        currentActivationContext = self->_currentActivationContext;
        v14 = 136315394;
        v15 = "[SVXSession _handleSpeechRecognitionDidFailWithError:]";
        v16 = 2112;
        v17 = currentActivationContext;
        v9 = "%s _currentActivationContext does not allow speech recording and recognition. (_currentActivationContext = %@)";
        v10 = v7;
        v11 = 22;
LABEL_10:
        _os_log_error_impl(&dword_2695B9000, v10, OS_LOG_TYPE_ERROR, v9, &v14, v11);
      }
    }
  }

  else
  {
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[SVXSession _handleSpeechRecognitionDidFailWithError:]";
      v9 = "%s Ignored because _currentRequestUUID is nil.";
      v10 = v12;
      v11 = 12;
      goto LABEL_10;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechRecordingDidFailWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v20 = 136315394;
    v21 = "[SVXSession _handleSpeechRecordingDidFailWithError:]";
    v22 = 2112;
    v23 = errorCopy;
    _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, "%s error = %@", &v20, 0x16u);
  }

  if (!self->_currentRequestUUID)
  {
    v8 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v20 = 136315138;
    v21 = "[SVXSession _handleSpeechRecordingDidFailWithError:]";
    v9 = "%s Ignored because _currentRequestUUID is nil.";
    v10 = v8;
    v11 = 12;
LABEL_13:
    _os_log_error_impl(&dword_2695B9000, v10, OS_LOG_TYPE_ERROR, v9, &v20, v11);
    goto LABEL_11;
  }

  if (![(SVXSessionUtils *)self->_sessionUtils isSpeechRecordingAllowedWithActivationContext:self->_currentActivationContext])
  {
    v12 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    currentActivationContext = self->_currentActivationContext;
    v20 = 136315394;
    v21 = "[SVXSession _handleSpeechRecordingDidFailWithError:]";
    v22 = 2112;
    v23 = currentActivationContext;
    v9 = "%s _currentActivationContext does not allow speech recording. (_currentActivationContext = %@)";
    v10 = v12;
    v11 = 22;
    goto LABEL_13;
  }

  if (self->_currentState != 2)
  {
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v15 = v7;
      v16 = @"listening";
      currentState = self->_currentState;
      if (currentState > 4)
      {
        v18 = @"(unknown)";
      }

      else
      {
        v18 = off_279C68A18[currentState];
      }

      v19 = v18;
      v20 = 136315650;
      v21 = "[SVXSession _handleSpeechRecordingDidFailWithError:]";
      v22 = 2112;
      v23 = @"listening";
      v24 = 2112;
      v25 = v19;
      _os_log_error_impl(&dword_2695B9000, v15, OS_LOG_TYPE_ERROR, "%s _currentState is expected to be %@ when the speech recording is failed. (_currentState = %@)", &v20, 0x20u);
    }

    [(SVXSession *)self _continuePendingSpeechRequest:0];
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechRecordingDidCancel
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[SVXSession _handleSpeechRecordingDidCancel]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", &v18, 0xCu);
  }

  if (!self->_currentRequestUUID)
  {
    v10 = *v3;
    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v18 = 136315138;
    v19 = "[SVXSession _handleSpeechRecordingDidCancel]";
    v11 = "%s Ignored because _currentRequestUUID is nil.";
    v12 = v10;
    v13 = 12;
LABEL_14:
    _os_log_error_impl(&dword_2695B9000, v12, OS_LOG_TYPE_ERROR, v11, &v18, v13);
    goto LABEL_12;
  }

  if (![(SVXSessionUtils *)self->_sessionUtils isSpeechRecordingAllowedWithActivationContext:self->_currentActivationContext])
  {
    v14 = *v3;
    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    currentActivationContext = self->_currentActivationContext;
    v18 = 136315394;
    v19 = "[SVXSession _handleSpeechRecordingDidCancel]";
    v20 = 2112;
    v21 = currentActivationContext;
    v11 = "%s _currentActivationContext does not allow speech recording. (_currentActivationContext = %@)";
    v12 = v14;
    v13 = 22;
    goto LABEL_14;
  }

  if (self->_currentState != 2)
  {
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = @"listening";
      currentState = self->_currentState;
      if (currentState > 4)
      {
        v9 = @"(unknown)";
      }

      else
      {
        v9 = off_279C68A18[currentState];
      }

      v17 = v9;
      v18 = 136315650;
      v19 = "[SVXSession _handleSpeechRecordingDidCancel]";
      v20 = 2112;
      v21 = @"listening";
      v22 = 2112;
      v23 = v17;
      _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, "%s _currentState is expected to be %@ when the speech recording is canceled. (_currentState = %@)", &v18, 0x20u);
    }
  }

LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechRecordingDidEnd
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[SVXSession _handleSpeechRecordingDidEnd]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", &v18, 0xCu);
  }

  if (!self->_currentRequestUUID)
  {
    v5 = *v3;
    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v18 = 136315138;
    v19 = "[SVXSession _handleSpeechRecordingDidEnd]";
    v6 = "%s Ignored because _currentRequestUUID is nil.";
    v7 = v5;
    v8 = 12;
LABEL_12:
    _os_log_error_impl(&dword_2695B9000, v7, OS_LOG_TYPE_ERROR, v6, &v18, v8);
    goto LABEL_14;
  }

  if (![(SVXSessionUtils *)self->_sessionUtils isSpeechRecordingAllowedWithActivationContext:self->_currentActivationContext])
  {
    v9 = *v3;
    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    currentActivationContext = self->_currentActivationContext;
    v18 = 136315394;
    v19 = "[SVXSession _handleSpeechRecordingDidEnd]";
    v20 = 2112;
    v21 = currentActivationContext;
    v6 = "%s _currentActivationContext does not allow speech recording. (_currentActivationContext = %@)";
    v7 = v9;
    v8 = 22;
    goto LABEL_12;
  }

  [(SRSTClient *)self->_client dispatchEvent:6];
  if (self->_currentState == 2)
  {
    if (!self->_isStateFeedbackEnabled)
    {
      [(SVXSession *)self _setCurrentState:3];
    }
  }

  else
  {
    v11 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v13 = v11;
      v14 = @"listening";
      currentState = self->_currentState;
      if (currentState > 4)
      {
        v16 = @"(unknown)";
      }

      else
      {
        v16 = off_279C68A18[currentState];
      }

      v17 = v16;
      v18 = 136315650;
      v19 = "[SVXSession _handleSpeechRecordingDidEnd]";
      v20 = 2112;
      v21 = @"listening";
      v22 = 2112;
      v23 = v17;
      _os_log_error_impl(&dword_2695B9000, v13, OS_LOG_TYPE_ERROR, "%s _currentState is expected to be %@ when the speech recording is ended. (_currentState = %@)", &v18, 0x20u);
    }
  }

LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechRecordingPerformTwoShotPromptWithType:(int64_t)type completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "[SVXSession _handleSpeechRecordingPerformTwoShotPromptWithType:completion:]";
    v26 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s type = %ld", buf, 0x16u);
  }

  if (!self->_currentRequestUUID)
  {
    v12 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[SVXSession _handleSpeechRecordingPerformTwoShotPromptWithType:completion:]";
      _os_log_error_impl(&dword_2695B9000, v12, OS_LOG_TYPE_ERROR, "%s Failing with invalid times because _currentRequestUUID is nil.", buf, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_17;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_17;
    }

    v11 = [MEMORY[0x277CEF2A0] errorWithCode:28];
    v13.n128_u64[0] = -1.0;
    v14.n128_u64[0] = -1.0;
    completionCopy[2](completionCopy, v11, v13, v14);
    goto LABEL_16;
  }

  if (![(SVXSessionUtils *)self->_sessionUtils isSpeechRecordingAllowedWithActivationContext:self->_currentActivationContext])
  {
    v15 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      currentActivationContext = self->_currentActivationContext;
      *buf = 136315394;
      v25 = "[SVXSession _handleSpeechRecordingPerformTwoShotPromptWithType:completion:]";
      v26 = 2112;
      typeCopy = currentActivationContext;
      _os_log_error_impl(&dword_2695B9000, v15, OS_LOG_TYPE_ERROR, "%s _currentActivationContext does not allow speech recording. (_currentActivationContext = %@)", buf, 0x16u);
      if (!completionCopy)
      {
        goto LABEL_17;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_17;
    }

    v11 = [MEMORY[0x277CEF2A0] errorWithCode:15 description:@"Current activation context does not allow speech recording." underlyingError:0];
LABEL_15:
    v16.n128_u64[0] = 0;
    v17.n128_u64[0] = 0;
    completionCopy[2](completionCopy, v11, v16, v17);
    goto LABEL_16;
  }

  if (type == 2)
  {
    speechSynthesizer = self->_speechSynthesizer;
    createPhaticPrompt = [(SVXSpeechSynthesisUtils *)self->_speechSynthesisUtils createPhaticPrompt];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __76__SVXSession__handleSpeechRecordingPerformTwoShotPromptWithType_completion___block_invoke;
    v22[3] = &unk_279C68DE8;
    v23 = completionCopy;
    [(SVXSpeechSynthesizer *)speechSynthesizer enqueueRequest:createPhaticPrompt languageCode:0 voiceName:0 gender:0 audioSessionID:0 preparation:0 finalization:v22 taskTracker:0 analyticsContext:0];

    v11 = v23;
LABEL_16:

    goto LABEL_17;
  }

  if (completionCopy)
  {
    v18 = MEMORY[0x277CEF2A0];
    type = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported Two-Shot prompt type %ld.", type];
    v11 = [v18 errorWithCode:15 description:type underlyingError:0];

    goto LABEL_15;
  }

LABEL_17:

  v20 = *MEMORY[0x277D85DE8];
}

void __76__SVXSession__handleSpeechRecordingPerformTwoShotPromptWithType_completion___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = [a2 error];
    v4 = *(a1 + 32);
    v6 = v3;
    if (v3)
    {
      v5 = [MEMORY[0x277CEF2A0] errorWithCode:15 description:@"Failed to play phatic prompt." underlyingError:v3];
      (*(v4 + 16))(v4, v5, 0.0, 0.0);
    }

    else
    {
      (*(v4 + 16))(v4, 0, 0.0, 0.0);
    }
  }
}

- (void)_handleSpeechRecordingDidDetectStartpoint
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[SVXSession _handleSpeechRecordingDidDetectStartpoint]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", &v12, 0xCu);
  }

  if (self->_currentRequestUUID)
  {
    if (![(SVXSessionUtils *)self->_sessionUtils isSpeechRecordingAllowedWithActivationContext:self->_currentActivationContext])
    {
      v5 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        currentActivationContext = self->_currentActivationContext;
        v12 = 136315394;
        v13 = "[SVXSession _handleSpeechRecordingDidDetectStartpoint]";
        v14 = 2112;
        v15 = currentActivationContext;
        v7 = "%s _currentActivationContext does not allow speech recording. (_currentActivationContext = %@)";
        v8 = v5;
        v9 = 22;
LABEL_10:
        _os_log_error_impl(&dword_2695B9000, v8, OS_LOG_TYPE_ERROR, v7, &v12, v9);
      }
    }
  }

  else
  {
    v10 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[SVXSession _handleSpeechRecordingDidDetectStartpoint]";
      v7 = "%s Ignored because _currentRequestUUID is nil.";
      v8 = v10;
      v9 = 12;
      goto LABEL_10;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechRecordingDidChangeAVRecordRoute:(id)route
{
  v18 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[SVXSession _handleSpeechRecordingDidChangeAVRecordRoute:]";
    v16 = 2112;
    v17 = routeCopy;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s recordRoute = %@", &v14, 0x16u);
  }

  if (self->_currentRequestUUID)
  {
    if (![(SVXSessionUtils *)self->_sessionUtils isSpeechRecordingAllowedWithActivationContext:self->_currentActivationContext])
    {
      v7 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        currentActivationContext = self->_currentActivationContext;
        v14 = 136315394;
        v15 = "[SVXSession _handleSpeechRecordingDidChangeAVRecordRoute:]";
        v16 = 2112;
        v17 = currentActivationContext;
        v9 = "%s _currentActivationContext does not allow speech recording. (_currentActivationContext = %@)";
        v10 = v7;
        v11 = 22;
LABEL_10:
        _os_log_error_impl(&dword_2695B9000, v10, OS_LOG_TYPE_ERROR, v9, &v14, v11);
      }
    }
  }

  else
  {
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[SVXSession _handleSpeechRecordingDidChangeAVRecordRoute:]";
      v9 = "%s Ignored because _currentRequestUUID is nil.";
      v10 = v12;
      v11 = 12;
      goto LABEL_10;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechRecordingDidBeginOnAVRecordRoute:(id)route
{
  v18 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[SVXSession _handleSpeechRecordingDidBeginOnAVRecordRoute:]";
    v16 = 2112;
    v17 = routeCopy;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s recordRoute = %@", &v14, 0x16u);
  }

  if (!self->_currentRequestUUID)
  {
    v7 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v14 = 136315138;
    v15 = "[SVXSession _handleSpeechRecordingDidBeginOnAVRecordRoute:]";
    v8 = "%s Ignored because _currentRequestUUID is nil.";
    v9 = v7;
    v10 = 12;
LABEL_11:
    _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, v8, &v14, v10);
    goto LABEL_9;
  }

  if (![(SVXSessionUtils *)self->_sessionUtils isSpeechRecordingAllowedWithActivationContext:self->_currentActivationContext])
  {
    v11 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    currentActivationContext = self->_currentActivationContext;
    v14 = 136315394;
    v15 = "[SVXSession _handleSpeechRecordingDidBeginOnAVRecordRoute:]";
    v16 = 2112;
    v17 = currentActivationContext;
    v8 = "%s _currentActivationContext does not allow speech recording. (_currentActivationContext = %@)";
    v9 = v11;
    v10 = 22;
    goto LABEL_11;
  }

  [(SRSTClient *)self->_client dispatchEvent:0];
  [(SVXSession *)self _setCurrentState:2];
  [(SVXSpeechSynthesizer *)self->_speechSynthesizer prewarm];
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechRecordingWillBeginWithInputAudioPowerXPCWrapper:(id)wrapper
{
  v27 = *MEMORY[0x277D85DE8];
  wrapperCopy = wrapper;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v23 = 136315394;
    v24 = "[SVXSession _handleSpeechRecordingWillBeginWithInputAudioPowerXPCWrapper:]";
    v25 = 2112;
    v26 = wrapperCopy;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s wrapper = %@", &v23, 0x16u);
  }

  if (!self->_currentRequestUUID)
  {
    v16 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v23 = 136315138;
    v24 = "[SVXSession _handleSpeechRecordingWillBeginWithInputAudioPowerXPCWrapper:]";
    v17 = "%s Ignored because _currentRequestUUID is nil.";
    v18 = v16;
    v19 = 12;
LABEL_21:
    _os_log_error_impl(&dword_2695B9000, v18, OS_LOG_TYPE_ERROR, v17, &v23, v19);
    goto LABEL_19;
  }

  if (![(SVXSessionUtils *)self->_sessionUtils isSpeechRecordingAllowedWithActivationContext:self->_currentActivationContext])
  {
    v20 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    currentActivationContext = self->_currentActivationContext;
    v23 = 136315394;
    v24 = "[SVXSession _handleSpeechRecordingWillBeginWithInputAudioPowerXPCWrapper:]";
    v25 = 2112;
    v26 = currentActivationContext;
    v17 = "%s _currentActivationContext does not allow speech recording. (_currentActivationContext = %@)";
    v18 = v20;
    v19 = 22;
    goto LABEL_21;
  }

  if (self->_activityState == 3)
  {
    self->_activityState = 4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = self->_currentActivationContext;
    activityUUID = self->_activityUUID;
    turnIdentifier = [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentRequestInstrumentationContext turnIdentifier];
    [WeakRetained session:self didBecomeActiveWithActivationContext:v8 activityUUID:activityUUID turnID:turnIdentifier];

    v11 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v12 = self->_activityUUID;
      v23 = 136315394;
      v24 = "[SVXSession _handleSpeechRecordingWillBeginWithInputAudioPowerXPCWrapper:]";
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s SESSION IS ACTIVE (%@)", &v23, 0x16u);
    }

    v13 = *MEMORY[0x277CEF0C8];
    v14 = v13;
    launchSignpostID = self->_launchSignpostID;
    if (launchSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(v23) = 0;
      _os_signpost_emit_with_name_impl(&dword_2695B9000, v14, OS_SIGNPOST_INTERVAL_END, launchSignpostID, "voiceUILaunch", &unk_269656841, &v23, 2u);
    }

    SVXInstrumentationEmitViewAppearContextEnd(self->_currentRequestInstrumentationContext);
  }

  [(SVXSession *)self _setInputAudioPowerWrapper:wrapperCopy];
  if ([(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions activationEvent]!= 1 || ([(AFPreferences *)self->_preferences startAlertEnabled]& 1) == 0)
  {
    [(SRSTClient *)self->_client dispatchEvent:0];
    [(SVXSession *)self _setCurrentState:2];
  }

  [(SVXSession *)self _continuePendingSpeechRequest:1];
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_requestDidEndWithOptions:(unint64_t)options error:(id)error
{
  v43 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v8 = mach_absolute_time();
  v9 = MEMORY[0x277CEF098];
  v10 = *MEMORY[0x277CEF098];
  if (errorCopy)
  {
    v11 = v8;
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v38 = "[SVXSession _requestDidEndWithOptions:error:]";
      v39 = 2048;
      optionsCopy4 = options;
      v41 = 2112;
      optionsCopy2 = errorCopy;
      _os_log_error_impl(&dword_2695B9000, v10, OS_LOG_TYPE_ERROR, "%s options = %tu, error = %@", buf, 0x20u);
    }

    p_currentRequestUUID = &self->_currentRequestUUID;
    if (self->_currentRequestUUID)
    {
      if ((options & 2) != 0)
      {
        v14 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v38 = "[SVXSession _requestDidEndWithOptions:error:]";
          v39 = 2112;
          optionsCopy4 = errorCopy;
          v41 = 2048;
          optionsCopy2 = options;
          v15 = "%s Ignored presenting %@ because request ending options = %tu.";
          v16 = v14;
          v17 = 32;
LABEL_17:
          _os_log_impl(&dword_2695B9000, v16, OS_LOG_TYPE_INFO, v15, buf, v17);
        }
      }

      else
      {
        if (self->_currentRequestWillPresentUUFR)
        {
          v13 = *v9;
        }

        else
        {
          v13 = *v9;
          if (!self->_currentRequestDidPresentUUFR)
          {
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v38 = "[SVXSession _requestDidEndWithOptions:error:]";
              _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s Using built-in error dialogs.", buf, 0xCu);
            }

            LOWORD(v35) = 0;
            v18 = [[SVXTaskContext alloc] initWithOrigin:9 timestamp:v11 sessionUUID:0 requestUUID:self->_currentRequestUUID aceId:0 refId:0 dialogIdentifier:0 dialogPhase:0 isUUFR:v35 listensAfterSpeaking:0 listenAfterSpeakingBehavior:0 activationContext:0 deactivationContext:errorCopy error:?];
            v19 = [(SVXTaskTrackingCenter *)self->_taskTrackingCenter beginTrackingTaskWithContext:v18 instrumentationContext:self->_currentRequestInstrumentationContext];
            [(SVXSession *)self _presentError:errorCopy taskTracker:v19 completion:0];

            goto LABEL_21;
          }
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v38 = "[SVXSession _requestDidEndWithOptions:error:]";
          v39 = 2112;
          optionsCopy4 = errorCopy;
          v15 = "%s Ignored presenting %@ because UUFR was presented.";
          v16 = v13;
          v17 = 22;
          goto LABEL_17;
        }
      }

LABEL_21:
      v20 = *v9;
      v21 = os_log_type_enabled(*v9, OS_LOG_TYPE_INFO);
      v22 = *p_currentRequestUUID;
      if (v21)
      {
        *buf = 136315394;
        v38 = "[SVXSession _requestDidEndWithOptions:error:]";
        v39 = 2112;
        optionsCopy4 = v22;
        _os_log_impl(&dword_2695B9000, v20, OS_LOG_TYPE_INFO, "%s END REQUEST (_currentRequestUUID = %@)", buf, 0x16u);
        v22 = *p_currentRequestUUID;
      }

      *p_currentRequestUUID = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v38 = "[SVXSession _requestDidEndWithOptions:error:]";
      v39 = 2048;
      optionsCopy4 = options;
      _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s options = %tu", buf, 0x16u);
    }

    p_currentRequestUUID = &self->_currentRequestUUID;
    if (self->_currentRequestUUID)
    {
      goto LABEL_21;
    }
  }

  currentRequestInstrumentationContext = self->_currentRequestInstrumentationContext;
  if (currentRequestInstrumentationContext)
  {
    objc_storeStrong(&self->_previousRequestInstrumentationContext, currentRequestInstrumentationContext);
    v24 = self->_currentRequestInstrumentationContext;
  }

  else
  {
    v24 = 0;
  }

  self->_currentRequestInstrumentationContext = 0;

  *&self->_currentRequestWillPresentUUFR = 0;
  currentSpeechRequestOptions = self->_currentSpeechRequestOptions;
  self->_currentSpeechRequestOptions = 0;

  [(SVXSession *)self _continuePendingSpeechRequest:0];
  if ((options & 4) == 0)
  {
    performer = self->_performer;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __46__SVXSession__requestDidEndWithOptions_error___block_invoke;
    v36[3] = &unk_279C68FC0;
    v36[4] = self;
    [(SVXPerforming *)performer performBlock:v36 withOptions:0];
    if (options)
    {
      goto LABEL_29;
    }

LABEL_32:
    v28 = MEMORY[0x277CCACA8];
    v29 = NSStringFromSelector(a2);
    errorCopy = [v28 stringWithFormat:@"%@ %@", v29, errorCopy];
    [(SVXSession *)self _resignActiveForReason:errorCopy];

    goto LABEL_33;
  }

  [(SVXSession *)self _discardPendingRequestBarriers];
  if ((options & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  v27 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v38 = "[SVXSession _requestDidEndWithOptions:error:]";
    v39 = 2048;
    optionsCopy4 = options;
    _os_log_impl(&dword_2695B9000, v27, OS_LOG_TYPE_INFO, "%s Ignored resign active because request ending options = %tu", buf, 0x16u);
  }

LABEL_33:
  if (self->_isStateFeedbackEnabled && self->_stateFeedbackManager)
  {
    v31 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v38 = "[SVXSession _requestDidEndWithOptions:error:]";
      _os_log_impl(&dword_2695B9000, v31, OS_LOG_TYPE_INFO, "%s #svxstatefeedback Ending StateFeedbackManager.", buf, 0xCu);
    }

    _stateFeedbackManager = [(SVXSession *)self _stateFeedbackManager];
    [_stateFeedbackManager siriSessionDidEnd];

    stateFeedbackManager = self->_stateFeedbackManager;
    self->_stateFeedbackManager = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_requestWillBeginWithTaskTracker:(id)tracker
{
  v85 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v80 = "[SVXSession _requestWillBeginWithTaskTracker:]";
    v81 = 2112;
    v82 = trackerCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s taskTracker = %@", buf, 0x16u);
  }

  context = [trackerCopy context];
  [(SVXSession *)self _stopSessionIdleTimer];
  p_currentRequestUUID = &self->_currentRequestUUID;
  if (self->_currentRequestUUID)
  {
    [(SVXSession *)self _cancelRequestWithOptions:7 keepTaskTracker:trackerCopy];
  }

  else
  {
    [(SVXServiceCommandHandler *)self->_serviceCommandHandler reset];
    [(SVXSpeechSynthesizer *)self->_speechSynthesizer cancelPendingRequests];
    [(SVXSpeechSynthesizer *)self->_speechSynthesizer stopCurrentRequestWithInterruptionBehavior:1];
    taskTrackingCenter = self->_taskTrackingCenter;
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __47__SVXSession__requestWillBeginWithTaskTracker___block_invoke;
    v77[3] = &unk_279C684E0;
    v78 = context;
    [(SVXTaskTrackingCenter *)taskTrackingCenter endTrackingTasksPassingTest:v77];
    [(SVXSession *)self _discardPendingRequestBarriers];
    if (([trackerCopy listensAfterSpeaking] & 1) == 0)
    {
      [(SRSTClient *)self->_client dispatchEvent:10];
      [(SVXSession *)self _setCurrentState:1];
    }
  }

  currentRequestUUID = self->_currentRequestUUID;
  self->_currentRequestUUID = 0;

  currentActivationContext = self->_currentActivationContext;
  self->_currentActivationContext = 0;

  currentDeactivationContext = self->_currentDeactivationContext;
  self->_currentDeactivationContext = 0;

  currentSpeechRequestOptions = self->_currentSpeechRequestOptions;
  self->_currentSpeechRequestOptions = 0;

  *&self->_currentRequestWillPresentUUFR = 0;
  p_currentRequestInstrumentationContext = &self->_currentRequestInstrumentationContext;
  currentRequestInstrumentationContext = self->_currentRequestInstrumentationContext;
  self->_currentRequestInstrumentationContext = 0;

  [(SVXSession *)self _continuePendingSpeechRequest:0];
  *&self->_isMostRecentRequestStartingMediaPlaybackLocally = 0;
  origin = [context origin];
  requestUUID = 0;
  obj = 0;
  if (origin == 1)
  {
    obj = [context activationContext];
    requestUUID = [context requestUUID];
  }

  instrumentationContext = [trackerCopy instrumentationContext];
  v16 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v80 = "[SVXSession _requestWillBeginWithTaskTracker:]";
    v81 = 2112;
    v82 = instrumentationContext;
    _os_log_debug_impl(&dword_2695B9000, v16, OS_LOG_TYPE_DEBUG, "%s instrumentationContext = %@", buf, 0x16u);
  }

  if ((self->_activityState - 1) <= 1)
  {
    v17 = context;
    self->_activityState = 3;
    v18 = objc_alloc_init(MEMORY[0x277CCAD78]);
    activityUUID = self->_activityUUID;
    self->_activityUUID = v18;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21 = obj;
    if (!obj)
    {
      v21 = self->_currentActivationContext;
    }

    v22 = self->_activityUUID;
    turnIdentifier = [instrumentationContext turnIdentifier];
    [WeakRetained session:self willBecomeActiveWithActivationContext:v21 activityUUID:v22 turnID:turnIdentifier];

    v24 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v25 = self->_activityUUID;
      *buf = 136315394;
      v80 = "[SVXSession _requestWillBeginWithTaskTracker:]";
      v81 = 2112;
      v82 = v25;
      _os_log_impl(&dword_2695B9000, v24, OS_LOG_TYPE_INFO, "%s SESSION GOING ACTIVE (%@)", buf, 0x16u);
    }

    v26 = MEMORY[0x277D5AB30];
    v27 = instrumentationContext;
    v28 = objc_alloc_init(v26);
    v29 = objc_alloc_init(MEMORY[0x277D5AB40]);
    [v29 setExists:1];
    [v28 setStartedOrChanged:v29];
    [v27 emitInstrumentation:v28];

    context = v17;
    p_currentRequestUUID = &self->_currentRequestUUID;
  }

  if (origin == 1)
  {
    objc_storeStrong(&self->_currentActivationContext, obj);
    objc_storeStrong(p_currentRequestUUID, requestUUID);
  }

  if (!*p_currentRequestUUID)
  {
    v30 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v31 = *p_currentRequestUUID;
    *p_currentRequestUUID = v30;
  }

  objc_storeStrong(&self->_currentRequestInstrumentationContext, instrumentationContext);
  if (origin == 1)
  {
    v32 = *p_currentRequestInstrumentationContext;
    activationContext = [trackerCopy activationContext];
    v34 = v32;
    v35 = activationContext;
    v36 = objc_alloc_init(MEMORY[0x277D5A928]);
    source = [v35 source];
    requestInfo = [v35 requestInfo];
    speechRequestOptions = [requestInfo speechRequestOptions];

    if (source <= 5)
    {
      v39 = v34;
      if (source != 1)
      {
        if (source == 4)
        {
          v40 = 52;
        }

        else
        {
          v40 = 0;
        }

        if (source == 2)
        {
          SchemaInvocationSourceForVoiceTrigger = 50;
        }

        else
        {
          SchemaInvocationSourceForVoiceTrigger = v40;
        }

        goto LABEL_53;
      }

      buttonEvent = [v35 buttonEvent];
      v72 = buttonEvent;
      if ([buttonEvent type] == 2)
      {
        v44 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v80 = "SVXInstrumentationEmitInvocation";
          v45 = "%s button_track SVXButtonEventTypeUp";
          v46 = v44;
LABEL_51:
          _os_log_impl(&dword_2695B9000, v46, OS_LOG_TYPE_INFO, v45, buf, 0xCu);
        }

LABEL_52:

        SchemaInvocationSourceForVoiceTrigger = 18;
        goto LABEL_53;
      }

      type = [buttonEvent type];
      v49 = *MEMORY[0x277CEF098];
      v50 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO);
      if (type == 1)
      {
        if (!v50)
        {
          goto LABEL_52;
        }

        *buf = 136315138;
        v80 = "SVXInstrumentationEmitInvocation";
        v45 = "%s button_track SVXButtonEventTypeDown";
      }

      else
      {
        if (!v50)
        {
          goto LABEL_52;
        }

        *buf = 136315138;
        v80 = "SVXInstrumentationEmitInvocation";
        v45 = "%s Different button event";
      }

      v46 = v49;
      goto LABEL_51;
    }

    if (source == 8)
    {
      v39 = v34;
      SchemaInvocationSourceForVoiceTrigger = 79;
    }

    else
    {
      if (source == 7)
      {
        v39 = v34;
        if (![speechRequestOptions isVoiceTrigger])
        {
          requestInfo2 = [v35 requestInfo];
          activationEvent = [requestInfo2 activationEvent];

          if (activationEvent == 8)
          {
            SchemaInvocationSourceForVoiceTrigger = 50;
          }

          else
          {
            requestInfo3 = [v35 requestInfo];
            activationEvent2 = [requestInfo3 activationEvent];

            if (activationEvent2 == 6)
            {
              SchemaInvocationSourceForVoiceTrigger = 84;
            }

            else
            {
              SchemaInvocationSourceForVoiceTrigger = 0;
            }
          }

          goto LABEL_53;
        }

        v42 = speechRequestOptions;
      }

      else
      {
        v39 = v34;
        if (source != 6)
        {
          SchemaInvocationSourceForVoiceTrigger = 0;
          goto LABEL_53;
        }

        v42 = speechRequestOptions;
      }

      voiceTriggerEventInfo = [v42 voiceTriggerEventInfo];
      SchemaInvocationSourceForVoiceTrigger = _getSchemaInvocationSourceForVoiceTrigger(voiceTriggerEventInfo);
    }

LABEL_53:
    [v36 setInvocationSource:SchemaInvocationSourceForVoiceTrigger];
    v53 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = off_279C66FC0[SchemaInvocationSourceForVoiceTrigger];
      *buf = 136315394;
      v80 = "SVXInstrumentationEmitInvocation";
      v81 = 2112;
      v82 = v54;
      _os_log_impl(&dword_2695B9000, v53, OS_LOG_TYPE_INFO, "%s #SVXInstrumentation - Emit invocation event (source %@)", buf, 0x16u);
    }

    [v39 emitInstrumentation:v36];
    activationContext2 = [trackerCopy activationContext];
    source2 = [activationContext2 source];

    v57 = source2 == 1;
    p_currentRequestUUID = &self->_currentRequestUUID;
    if (v57)
    {
      turnIdentifier2 = [*p_currentRequestInstrumentationContext turnIdentifier];
      activationContext3 = [trackerCopy activationContext];
      buttonEvent2 = [activationContext3 buttonEvent];
      timestamp = [buttonEvent2 timestamp];

      v62 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
      {
        v70 = v62;
        v71 = MEMORY[0x26D641FF0](turnIdentifier2);
        *buf = 136315650;
        v80 = "[SVXSession _requestWillBeginWithTaskTracker:]";
        v81 = 2112;
        v82 = v71;
        v83 = 2048;
        v84 = timestamp;
        _os_log_debug_impl(&dword_2695B9000, v70, OS_LOG_TYPE_DEBUG, "%s Button down event: turnId = %@, timestamp = %lld", buf, 0x20u);
      }

      v63 = [[SVXActivationInstrumentation alloc] initWithTurnIdentifier:turnIdentifier2 buttonTimestamp:timestamp];
      svxActivationInstrumentation = self->_svxActivationInstrumentation;
      self->_svxActivationInstrumentation = v63;

      p_currentRequestUUID = &self->_currentRequestUUID;
    }
  }

  v65 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v66 = *p_currentRequestUUID;
    *buf = 136315394;
    v80 = "[SVXSession _requestWillBeginWithTaskTracker:]";
    v81 = 2112;
    v82 = v66;
    _os_log_impl(&dword_2695B9000, v65, OS_LOG_TYPE_INFO, "%s BEGIN REQUEST (_currentRequestUUID = %@)", buf, 0x16u);
  }

  v67 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CEF098];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[SVXSession _invalidate]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  postResignActiveBlock = self->_postResignActiveBlock;
  if (postResignActiveBlock)
  {
    postResignActiveBlock[2]();
    v7 = self->_postResignActiveBlock;
    self->_postResignActiveBlock = 0;
  }

  audioDuckingCoordinationAssertion = self->_audioDuckingCoordinationAssertion;
  if (audioDuckingCoordinationAssertion)
  {
    v9 = *v4;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[SVXSession _invalidate]";
      v17 = 2112;
      v18 = audioDuckingCoordinationAssertion;
      _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s Relinquishing audio ducking coordination assertion %@...", buf, 0x16u);
      audioDuckingCoordinationAssertion = self->_audioDuckingCoordinationAssertion;
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __25__SVXSession__invalidate__block_invoke;
    v14[3] = &__block_descriptor_40_e38_v16__0___AFAssertionContextMutating__8l;
    v14[4] = a2;
    v10 = [MEMORY[0x277CEF180] newWithBuilder:v14];
    [(AFRelinquishableAssertion *)audioDuckingCoordinationAssertion relinquishWithContext:v10 options:0];

    v11 = self->_audioDuckingCoordinationAssertion;
    self->_audioDuckingCoordinationAssertion = 0;
  }

  [(SVXSpeechSynthesizer *)self->_speechSynthesizer removeListener:self];
  [(SVXSpeechSynthesizer *)self->_speechSynthesizer postcool];
  [(SVXSession *)self _resetMyriadDecision];
  [(SVXSession *)self _stopSessionIdleTimer];
  [(SVXSession *)self _invalidateConnection];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sessionDidInvalidate:self];

  objc_storeWeak(&self->_delegate, 0);
  v13 = *MEMORY[0x277D85DE8];
}

void __25__SVXSession__invalidate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTimestamp:mach_absolute_time()];
  v4 = NSStringFromSelector(*(a1 + 32));
  [v3 setReason:v4];
}

- (void)_resignActiveForReason:(id)reason
{
  v14 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SVXSession _resignActiveForReason:]";
    v12 = 2112;
    v13 = reasonCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s reason = %@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__SVXSession__resignActiveForReason___block_invoke;
  v8[3] = &unk_279C68D98;
  v8[4] = self;
  v9 = reasonCopy;
  v6 = reasonCopy;
  [(SVXSession *)self _checkIsActiveWithCompletion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __37__SVXSession__resignActiveForReason___block_invoke(uint64_t a1, int a2)
{
  v59 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    [*(*(a1 + 32) + 368) dispatchEvent:7];
    [*(a1 + 32) _setCurrentState:1];
    [*(*(a1 + 32) + 184) reset];
    v6 = [*(*(a1 + 32) + 64) options];
    [v6 audioSessionDeactivationDelay];
    v8 = v7;

    if (v8 > 0.0)
    {
      v9 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v56 = "[SVXSession _resignActiveForReason:]_block_invoke";
        v57 = 2048;
        v58 = v8;
        _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s audioSessionDeactivationDelay = %f", buf, 0x16u);
      }
    }

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __37__SVXSession__resignActiveForReason___block_invoke_184;
    v54[3] = &unk_279C68CD8;
    v54[4] = *(a1 + 32);
    v10 = MEMORY[0x26D642680](v54);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __37__SVXSession__resignActiveForReason___block_invoke_185;
    v52[3] = &unk_279C68630;
    v11 = *(a1 + 40);
    v52[4] = *(a1 + 32);
    v53 = v11;
    v12 = MEMORY[0x26D642680](v52);
    v13 = *(*(a1 + 32) + 64);
    v43 = MEMORY[0x277D85DD0];
    v44 = 3221225472;
    v45 = __37__SVXSession__resignActiveForReason___block_invoke_188;
    v46 = &unk_279C68680;
    v51 = v8;
    v14 = v10;
    v15 = *(a1 + 32);
    v49 = v14;
    v47 = v15;
    v16 = v13;
    v48 = v16;
    v17 = v12;
    v50 = v17;
    v18 = MEMORY[0x26D642680](&v43);
    v19 = *(a1 + 32);
    v20 = *(v19 + 24);
    if (v20 > 2)
    {
      if ((v20 - 3) < 2)
      {
        v23 = MEMORY[0x277CEF098];
        v24 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v56 = "[SVXSession _resignActiveForReason:]_block_invoke";
          _os_log_impl(&dword_2695B9000, v24, OS_LOG_TYPE_INFO, "%s Session is ready to resign active.", buf, 0xCu);
          v19 = *(a1 + 32);
        }

        *(v19 + 24) = 2;
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 232));
        [WeakRetained session:*(a1 + 32) willResignActiveWithOptions:0 duration:*(*(a1 + 32) + 32) activityUUID:{0.0, v43, v44, v45, v46, v47, v48, v49}];

        v26 = *v23;
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_INFO))
        {
          v27 = *(*(a1 + 32) + 32);
          *buf = 136315394;
          v56 = "[SVXSession _resignActiveForReason:]_block_invoke";
          v57 = 2112;
          v58 = v27;
          _os_log_impl(&dword_2695B9000, v26, OS_LOG_TYPE_INFO, "%s SESSION GOING INACTIVE (%@)", buf, 0x16u);
        }

        v28 = *(a1 + 32);
        v29 = *(v28 + 120);
        if (!v29)
        {
          v29 = *(v28 + 112);
        }

        v30 = MEMORY[0x277D5AB48];
        v31 = v29;
        v32 = objc_alloc_init(v30);
        v33 = objc_alloc_init(MEMORY[0x277D5AB58]);
        [v33 setExists:1];
        [v32 setStartedOrChanged:v33];
        [v31 emitInstrumentation:v32];

        v18[2](v18);
      }

      goto LABEL_33;
    }

    if (v20)
    {
      if (v20 != 1)
      {
        if (v20 != 2)
        {
          goto LABEL_33;
        }

        v21 = *MEMORY[0x277CEF098];
        if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
        {
          goto LABEL_33;
        }

        *buf = 136315138;
        v56 = "[SVXSession _resignActiveForReason:]_block_invoke";
        v22 = "%s Session is already resigning active.";
        goto LABEL_32;
      }

      v21 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v56 = "[SVXSession _resignActiveForReason:]_block_invoke";
        v22 = "%s Session is already inactive.";
        goto LABEL_32;
      }
    }

    else
    {
      v21 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v56 = "[SVXSession _resignActiveForReason:]_block_invoke_3";
        v22 = "%s Session unspecified.";
LABEL_32:
        _os_log_impl(&dword_2695B9000, v21, OS_LOG_TYPE_INFO, v22, buf, 0xCu);
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v56 = "[SVXSession _resignActiveForReason:]_block_invoke";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s Ignored because session is still active.", buf, 0xCu);
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v35 = *(*(a1 + 32) + 16);
    v36 = v4;
    if (v35 > 4)
    {
      v37 = @"(unknown)";
    }

    else
    {
      v37 = off_279C68A18[v35];
    }

    *&v42 = COERCE_DOUBLE(v37);
    *buf = 136315394;
    v56 = "[SVXSession _resignActiveForReason:]_block_invoke";
    v57 = 2112;
    v58 = *&v42;
    _os_log_debug_impl(&dword_2695B9000, v36, OS_LOG_TYPE_DEBUG, "%s _currentState = %@", buf, 0x16u);

    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v38 = *(*(a1 + 32) + 80);
    *buf = 136315394;
    v56 = "[SVXSession _resignActiveForReason:]_block_invoke";
    v57 = 2112;
    v58 = v38;
    _os_log_debug_impl(&dword_2695B9000, v4, OS_LOG_TYPE_DEBUG, "%s _currentSpeechRequestOptions = %@", buf, 0x16u);
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v39 = *(*(a1 + 32) + 88);
    v40 = v4;
    v41 = COERCE_DOUBLE(MEMORY[0x26D642680](v39));
    *buf = 136315394;
    v56 = "[SVXSession _resignActiveForReason:]_block_invoke";
    v57 = 2112;
    v58 = v41;
    _os_log_debug_impl(&dword_2695B9000, v40, OS_LOG_TYPE_DEBUG, "%s _currentSpeechRequestContinueBlock = %@", buf, 0x16u);

    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(*(a1 + 32) + 96);
    *buf = 136315394;
    v56 = "[SVXSession _resignActiveForReason:]_block_invoke";
    v57 = 2112;
    v58 = v5;
    _os_log_debug_impl(&dword_2695B9000, v4, OS_LOG_TYPE_DEBUG, "%s _currentSpeechRequestPendingBlocks = %@", buf, 0x16u);
  }

LABEL_34:
  v34 = *MEMORY[0x277D85DE8];
}

void __37__SVXSession__resignActiveForReason___block_invoke_184(uint64_t a1, int a2)
{
  v2 = a2;
  v50 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  if (v5 == 2)
  {
    *(v4 + 24) = 1;
    v41 = *(*(a1 + 32) + 32);
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = 0;

    v8 = *(a1 + 32);
    v9 = v8[8];
    if (v9)
    {
      v10 = [v9 source];
      v8 = *(a1 + 32);
      v11 = v10 - 1;
    }

    else
    {
      v11 = -1;
    }

    v12 = v8[15];
    if (!v12)
    {
      v12 = v8[14];
    }

    v13 = v12;
    v14 = *(*(a1 + 32) + 240);
    v15 = v13;
    v16 = objc_alloc_init(MEMORY[0x277D5AC18]);
    [v16 setPresentationType:6];
    v17 = objc_alloc_init(MEMORY[0x277D5AC10]);
    v18 = v17;
    if (v11 > 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = dword_269644E60[v11];
    }

    [v17 setDismissalReason:{v19, v41}];
    v20 = objc_alloc_init(MEMORY[0x277D5AC20]);
    [v20 setPresenting:v16];
    [v20 setPreviousState:v14];
    [v20 setCurrentState:4];
    [v20 setDismissed:v18];
    v21 = MEMORY[0x277CEF098];
    v22 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      if ((v14 - 1) > 4)
      {
        v23 = @"SIRIUISTATE_UNKNOWN_SIRI_UI_STATE";
      }

      else
      {
        v23 = off_279C67298[(v14 - 1)];
      }

      v24 = off_279C672C0[v19 - 1];
      *buf = 136315650;
      v45 = "SVXInstrumentationEmitDismissalUIStateTransition";
      v46 = 2112;
      v47 = v23;
      v48 = 2112;
      v49 = v24;
      _os_log_impl(&dword_2695B9000, v22, OS_LOG_TYPE_INFO, "%s #SVXInstrumentation - Emit state transition (dismissed) event (current: %@, dismissalReason: %@)", buf, 0x20u);
    }

    [v15 emitInstrumentation:v20];
    v25 = objc_alloc_init(MEMORY[0x277D5AC20]);

    [v25 setPresenting:v16];
    [v25 setPreviousState:v14];
    [v25 setCurrentState:1];
    v26 = *v21;
    if (os_log_type_enabled(*v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v45 = "SVXInstrumentationEmitDismissalUIStateTransition";
      _os_log_impl(&dword_2695B9000, v26, OS_LOG_TYPE_INFO, "%s #SVXInstrumentation - Emit state transition (idle) event", buf, 0xCu);
    }

    [v15 emitInstrumentation:v25];

    *(*(a1 + 32) + 240) = 1;
    v27 = MEMORY[0x277D5AB48];
    v28 = v15;
    v29 = objc_alloc_init(v27);
    v30 = objc_alloc_init(MEMORY[0x277D5AB50]);
    [v30 setExists:1];
    [v29 setEnded:v30];
    [v28 emitInstrumentation:v29];

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 232));
    [WeakRetained session:*(a1 + 32) didResignActiveWithDeactivationContext:*(*(a1 + 32) + 64) activityUUID:*(*(a1 + 32) + 32)];

    v32 = *v21;
    if (os_log_type_enabled(*v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v45 = "[SVXSession _resignActiveForReason:]_block_invoke";
      v46 = 2112;
      v47 = v42;
      _os_log_impl(&dword_2695B9000, v32, OS_LOG_TYPE_INFO, "%s SESSION IS INACTIVE (%@)", buf, 0x16u);
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    v2 = a2;
  }

  if (v5 == 1)
  {
    v33 = *(v4 + 56);
    *(v4 + 56) = 0;

    if (v2)
    {
      v34 = *(a1 + 32);
      v35 = *(v34 + 64);
      *(v34 + 64) = 0;
    }

    [*(a1 + 32) _setCurrentState:1];
    v36 = *(a1 + 32);
    v37 = v36[5];
    if (v37)
    {
      (*(v37 + 16))(v36[5]);
      v38 = *(a1 + 32);
      v39 = *(v38 + 40);
      *(v38 + 40) = 0;

      v36 = *(a1 + 32);
    }

    if (v2)
    {
      [v36 _startSessionIdleTimerWithTimeInterval:8.0];
    }

    else
    {
      [v36 _stopSessionIdleTimer];
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __37__SVXSession__resignActiveForReason___block_invoke_185(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[SVXSession _resignActiveForReason:]_block_invoke";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s Force audio session inactive now...", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__SVXSession__resignActiveForReason___block_invoke_186;
  v9[3] = &unk_279C68EF8;
  v9[4] = v6;
  v10 = v3;
  v7 = v3;
  [v6 _forceAudioSessionInactiveWithReason:v5 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __37__SVXSession__resignActiveForReason___block_invoke_188(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) <= 0.0)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __37__SVXSession__resignActiveForReason___block_invoke_2_191;
    v15[3] = &unk_279C68220;
    v12 = *(a1 + 56);
    v16 = *(a1 + 48);
    (*(v12 + 16))(v12, v15);
    v11 = v16;
  }

  else
  {
    v2 = *(a1 + 48);
    (*(*(a1 + 48) + 16))();
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 64);
      *buf = 136315394;
      v25 = "[SVXSession _resignActiveForReason:]_block_invoke";
      v26 = 2048;
      v27 = v4;
      _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s Force audio session inactive in %f seconds.", buf, 0x16u);
    }

    v5 = *(a1 + 64);
    v6 = [*(*(a1 + 32) + 176) queue];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __37__SVXSession__resignActiveForReason___block_invoke_189;
    v20 = &unk_279C68680;
    v23 = *(a1 + 64);
    v14 = *(a1 + 32);
    v7 = *(&v14 + 1);
    v8 = *(a1 + 56);
    v9 = *(a1 + 48);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v21 = v14;
    v22 = v10;
    AFDispatchScheduleWithDelay();

    v11 = *(&v14 + 1);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __37__SVXSession__resignActiveForReason___block_invoke_189(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SVXSession__resignActiveForReason___block_invoke_2;
  v7[3] = &unk_279C68658;
  v10 = *(a1 + 64);
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 _checkIsActiveWithCompletion:v7];
}

void __37__SVXSession__resignActiveForReason___block_invoke_2(uint64_t a1, int a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = MEMORY[0x277CEF098];
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 64);
      *buf = 136315394;
      v31 = "[SVXSession _resignActiveForReason:]_block_invoke_2";
      v32 = 2048;
      v33 = v5;
      _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s Skipped force audio session inactive after %f seconds delay, because session is active again.", buf, 0x16u);
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(*(a1 + 32) + 16);
      v21 = v4;
      if (v20 > 4)
      {
        v22 = @"(unknown)";
      }

      else
      {
        v22 = off_279C68A18[v20];
      }

      v27 = v22;
      *buf = 136315394;
      v31 = "[SVXSession _resignActiveForReason:]_block_invoke";
      v32 = 2112;
      v33 = v27;
      _os_log_debug_impl(&dword_2695B9000, v21, OS_LOG_TYPE_DEBUG, "%s _currentState = %@", buf, 0x16u);

      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(*(a1 + 32) + 80);
      *buf = 136315394;
      v31 = "[SVXSession _resignActiveForReason:]_block_invoke";
      v32 = 2112;
      v33 = v23;
      _os_log_debug_impl(&dword_2695B9000, v4, OS_LOG_TYPE_DEBUG, "%s _currentSpeechRequestOptions = %@", buf, 0x16u);
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(*(a1 + 32) + 88);
      v25 = v4;
      v26 = MEMORY[0x26D642680](v24);
      *buf = 136315394;
      v31 = "[SVXSession _resignActiveForReason:]_block_invoke";
      v32 = 2112;
      v33 = v26;
      _os_log_debug_impl(&dword_2695B9000, v25, OS_LOG_TYPE_DEBUG, "%s _currentSpeechRequestContinueBlock = %@", buf, 0x16u);

      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(*(a1 + 32) + 96);
      *buf = 136315394;
      v31 = "[SVXSession _resignActiveForReason:]_block_invoke";
      v32 = 2112;
      v33 = v6;
      _os_log_debug_impl(&dword_2695B9000, v4, OS_LOG_TYPE_DEBUG, "%s _currentSpeechRequestPendingBlocks = %@", buf, 0x16u);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    if (v8 == 1)
    {
      v9 = *(a1 + 40);
      v10 = *(v7 + 64);
      if (v9 == v10)
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __37__SVXSession__resignActiveForReason___block_invoke_190;
        v28[3] = &unk_279C68220;
        v17 = *(a1 + 48);
        v29 = *(a1 + 56);
        (*(v17 + 16))(v17, v28);
      }

      else
      {
        v11 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 64);
          *buf = 136315906;
          v31 = "[SVXSession _resignActiveForReason:]_block_invoke";
          v32 = 2048;
          v33 = v12;
          v34 = 2112;
          v35 = v9;
          v36 = 2112;
          v37 = v10;
          _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s Skipped force audio session inactive after %f seconds delay, because deactivation context changed from %@ to %@ while waiting.", buf, 0x2Au);
        }
      }
    }

    else
    {
      v13 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 64);
        v15 = v13;
        if (v8 > 4)
        {
          v16 = @"(unknown)";
        }

        else
        {
          v16 = off_279C676D8[v8];
        }

        v18 = v16;
        *buf = 136315650;
        v31 = "[SVXSession _resignActiveForReason:]_block_invoke";
        v32 = 2048;
        v33 = v14;
        v34 = 2112;
        v35 = v18;
        _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s Skipped force audio session inactive after %f seconds delay, because activity state is %@.", buf, 0x20u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __37__SVXSession__resignActiveForReason___block_invoke_186(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SVXSession _resignActiveForReason:]_block_invoke";
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s Done force audio session inactive.", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    (*(result + 16))();
    result = [*(*(a1 + 32) + 368) dispatchEvent:7];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_performBlockAfterResignActive:(id)active
{
  activeCopy = active;
  v5 = activeCopy;
  if (activeCopy)
  {
    if (self->_activityState == 1)
    {
      (*(activeCopy + 2))(activeCopy);
    }

    else if (self->_postResignActiveBlock)
    {
      v6 = MEMORY[0x26D642680]();
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __45__SVXSession__performBlockAfterResignActive___block_invoke;
      v12[3] = &unk_279C68608;
      v13 = v6;
      v14 = v5;
      v7 = v6;
      v8 = MEMORY[0x26D642680](v12);
      postResignActiveBlock = self->_postResignActiveBlock;
      self->_postResignActiveBlock = v8;
    }

    else
    {
      v10 = MEMORY[0x26D642680](activeCopy);
      v11 = self->_postResignActiveBlock;
      self->_postResignActiveBlock = v10;
    }
  }
}

uint64_t __45__SVXSession__performBlockAfterResignActive___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_checkIsActiveWithCompletion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v34 = "[SVXSession _checkIsActiveWithCompletion:]";
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (completionCopy)
  {
    currentRequestUUID = self->_currentRequestUUID;
    if (currentRequestUUID)
    {
      v8 = *v5;
      if (!os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
      {
LABEL_26:
        completionCopy[2](completionCopy, 1);
        goto LABEL_27;
      }

      *buf = 136315650;
      v34 = "[SVXSession _checkIsActiveWithCompletion:]";
      v35 = 2112;
      selfCopy2 = self;
      v37 = 2112;
      v38 = currentRequestUUID;
      v9 = "%s %@ is active. (_currentRequestUUID = %@)";
      v10 = v8;
      v11 = 32;
    }

    else
    {
      v12 = [(NSMutableSet *)self->_audioSessionAssertions count];
      if (!v12)
      {
        taskTrackingCenter = self->_taskTrackingCenter;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __43__SVXSession__checkIsActiveWithCompletion___block_invoke;
        v26[3] = &unk_279C685E0;
        v26[4] = self;
        v27 = completionCopy;
        [(SVXTaskTrackingCenter *)taskTrackingCenter getContextsOfAllTrackedTasksUsingBlock:v26];

        goto LABEL_27;
      }

      v13 = v12;
      v14 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v34 = "[SVXSession _checkIsActiveWithCompletion:]";
        v35 = 2112;
        selfCopy2 = self;
        v37 = 2048;
        v38 = v13;
        _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s %@ is active. (_audioSessionAssertions.count = %tu)", buf, 0x20u);
      }

      if ((AFIsInternalInstall() & 1) == 0 && ![(AFPreferences *)self->_preferences shouldLogForQA])
      {
        goto LABEL_26;
      }

      v15 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v34 = "[SVXSession _checkIsActiveWithCompletion:]";
        _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s _audioSessionAssertions = (", buf, 0xCu);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = self->_audioSessionAssertions;
      v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v29;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *v5;
            if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
            {
              v22 = *(*(&v28 + 1) + 8 * i);
              *buf = 136315394;
              v34 = "[SVXSession _checkIsActiveWithCompletion:]";
              v35 = 2112;
              selfCopy2 = v22;
              _os_log_impl(&dword_2695B9000, v21, OS_LOG_TYPE_INFO, "%s     %@", buf, 0x16u);
            }
          }

          v18 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v18);
      }

      v23 = *v5;
      if (!os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_26;
      }

      *buf = 136315138;
      v34 = "[SVXSession _checkIsActiveWithCompletion:]";
      v9 = "%s)";
      v10 = v23;
      v11 = 12;
    }

    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
    goto LABEL_26;
  }

LABEL_27:

  v24 = *MEMORY[0x277D85DE8];
}

void __43__SVXSession__checkIsActiveWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 count];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  v7 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      *buf = 136315650;
      v34 = "[SVXSession _checkIsActiveWithCompletion:]_block_invoke";
      v35 = 2112;
      v36 = v8;
      v37 = 2048;
      v38 = v4;
      _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s %@ is active. (_taskTrackingCenter.contextsOfAllTrackedTasks.count = %tu)", buf, 0x20u);
    }

    if ((AFIsInternalInstall() & 1) != 0 || [*(*(a1 + 32) + 216) shouldLogForQA])
    {
      v23 = a1;
      v9 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v34 = "[SVXSession _checkIsActiveWithCompletion:]_block_invoke";
        _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s _taskTrackingCenter.contextsOfAllTrackedTasks = (", buf, 0xCu);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = v3;
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v29;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *v5;
            if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
            {
              v16 = *(*(&v28 + 1) + 8 * i);
              *buf = 136315394;
              v34 = "[SVXSession _checkIsActiveWithCompletion:]_block_invoke";
              v35 = 2112;
              v36 = v16;
              _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s     %@", buf, 0x16u);
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v12);
      }

      v17 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v34 = "[SVXSession _checkIsActiveWithCompletion:]_block_invoke";
        _os_log_impl(&dword_2695B9000, v17, OS_LOG_TYPE_INFO, "%s)", buf, 0xCu);
      }
    }

    v18 = *(*(a1 + 32) + 176);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __43__SVXSession__checkIsActiveWithCompletion___block_invoke_180;
    v26[3] = &unk_279C68220;
    v19 = &v27;
    v27 = *(a1 + 40);
    v20 = v26;
  }

  else
  {
    if (v7)
    {
      v21 = *(a1 + 32);
      *buf = 136315394;
      v34 = "[SVXSession _checkIsActiveWithCompletion:]_block_invoke_2";
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s %@ is NOT active.", buf, 0x16u);
    }

    v18 = *(*(a1 + 32) + 176);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __43__SVXSession__checkIsActiveWithCompletion___block_invoke_182;
    v24[3] = &unk_279C68220;
    v19 = &v25;
    v25 = *(a1 + 40);
    v20 = v24;
  }

  [v18 performBlock:{v20, v23}];

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_currentAccessoryInfo
{
  currentAccessoryInfo = self->_currentAccessoryInfo;
  if (!currentAccessoryInfo)
  {
    v4 = dispatch_group_create();
    v5 = [objc_alloc(MEMORY[0x277CEF3A8]) initWithInstanceContext:self->_instanceContext];
    dispatch_group_enter(v4);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __35__SVXSession__currentAccessoryInfo__block_invoke;
    v9[3] = &unk_279C685B8;
    v9[4] = self;
    v10 = v4;
    v6 = v4;
    [v5 getCurrentAccessoryInfoWithCompletion:v9];
    v7 = dispatch_time(0, 1000000000);
    dispatch_group_wait(v6, v7);

    currentAccessoryInfo = self->_currentAccessoryInfo;
  }

  return currentAccessoryInfo;
}

void __35__SVXSession__currentAccessoryInfo__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[SVXSession _currentAccessoryInfo]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s currentAccessoryInfo = %@", &v9, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 304);
  *(v5 + 304) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 40));
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_getAlarmAndTimerFiringContextWithCompletion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      localDeviceContext = self->_localDeviceContext;
      v7 = v5;
      identifier = [(AFDeviceContext *)localDeviceContext identifier];
      *buf = 136315394;
      v46 = "[SVXSession _getAlarmAndTimerFiringContextWithCompletion:]";
      v47 = 2112;
      v48 = identifier;
      _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s localDeviceContext = %@", buf, 0x16u);
    }

    alarmSnapshot = [(AFDeviceContext *)self->_localDeviceContext alarmSnapshot];
    timerSnapshot = [(AFDeviceContext *)self->_localDeviceContext timerSnapshot];
    v11 = MEMORY[0x277CEF098];
    v12 = *MEMORY[0x277CEF098];
    v13 = *MEMORY[0x277CEF098];
    if (alarmSnapshot)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v46 = "[SVXSession _getAlarmAndTimerFiringContextWithCompletion:]";
        v47 = 2112;
        v48 = alarmSnapshot;
        _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s clockAlarmSnapshot = %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v46 = "[SVXSession _getAlarmAndTimerFiringContextWithCompletion:]";
      _os_log_error_impl(&dword_2695B9000, v12, OS_LOG_TYPE_ERROR, "%s No clock alarm snapshot.", buf, 0xCu);
    }

    v14 = *v11;
    v15 = *v11;
    if (timerSnapshot)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v46 = "[SVXSession _getAlarmAndTimerFiringContextWithCompletion:]";
        v47 = 2112;
        v48 = timerSnapshot;
        _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s clockTimerSnapshot = %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v46 = "[SVXSession _getAlarmAndTimerFiringContextWithCompletion:]";
      _os_log_error_impl(&dword_2695B9000, v14, OS_LOG_TYPE_ERROR, "%s No clock timer snapshot.", buf, 0xCu);
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v17 = objc_alloc_init(MEMORY[0x277CBEB40]);
    firingAlarms = [alarmSnapshot firingAlarms];
    if ([firingAlarms count])
    {
      [v16 unionSet:firingAlarms];
    }

    [v16 sortUsingComparator:&__block_literal_global_171];
    firingTimers = [timerSnapshot firingTimers];
    if ([firingTimers count])
    {
      [v17 unionSet:firingTimers];
    }

    [v17 sortUsingComparator:&__block_literal_global_174];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    timersByID = [timerSnapshot timersByID];
    allValues = [timersByID allValues];

    v22 = [allValues countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v22)
    {
      v34 = firingAlarms;
      v35 = completionCopy;
      v23 = timerSnapshot;
      v24 = alarmSnapshot;
      v25 = *v41;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(allValues);
          }

          v27 = *(*(&v40 + 1) + 8 * i);
          if ([v27 state] == 3 && !objc_msgSend(firingTimers, "containsObject:", v27))
          {
            LODWORD(v22) = 1;
            goto LABEL_29;
          }
        }

        v22 = [allValues countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }

LABEL_29:
      alarmSnapshot = v24;
      timerSnapshot = v23;
      firingAlarms = v34;
      completionCopy = v35;
    }

    v28 = MEMORY[0x277CEF098];
    v29 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v46 = "[SVXSession _getAlarmAndTimerFiringContextWithCompletion:]";
      v47 = 2112;
      v48 = v16;
      _os_log_impl(&dword_2695B9000, v29, OS_LOG_TYPE_INFO, "%s orderedFiringAlarms = %@", buf, 0x16u);
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v46 = "[SVXSession _getAlarmAndTimerFiringContextWithCompletion:]";
      v47 = 2112;
      v48 = v17;
      _os_log_impl(&dword_2695B9000, v29, OS_LOG_TYPE_INFO, "%s orderedFiringTimers = %@", buf, 0x16u);
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v46 = "[SVXSession _getAlarmAndTimerFiringContextWithCompletion:]";
      v47 = 1024;
      LODWORD(v48) = v22;
      _os_log_impl(&dword_2695B9000, v29, OS_LOG_TYPE_INFO, "%s hasOtherRunningTimers = %d", buf, 0x12u);
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __59__SVXSession__getAlarmAndTimerFiringContextWithCompletion___block_invoke_176;
    v36[3] = &unk_279C68590;
    v37 = v16;
    v38 = v17;
    v39 = v22;
    v30 = v17;
    v31 = v16;
    v32 = [SVXAlarmAndTimerFiringContext newWithBuilder:v36];
    completionCopy[2](completionCopy, v32);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __59__SVXSession__getAlarmAndTimerFiringContextWithCompletion___block_invoke_176(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setOrderedFiringAlarms:v3];
  [v4 setOrderedFiringTimers:*(a1 + 40)];
  [v4 setHasOtherRunningTimers:*(a1 + 48)];
}

uint64_t __59__SVXSession__getAlarmAndTimerFiringContextWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 firedDate];
  v6 = [v4 firedDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __59__SVXSession__getAlarmAndTimerFiringContextWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 firedDate];
  v6 = [v4 firedDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_forceAudioSessionInactiveWithReason:(id)reason completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  completionCopy = completion;
  v9 = MEMORY[0x277CEF098];
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "[SVXSession _forceAudioSessionInactiveWithReason:completion:]";
    v31 = 2112;
    v32 = reasonCopy;
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s BEGIN -forceAudioSessionInactive (reason = %@)", buf, 0x16u);
  }

  v11 = mach_absolute_time();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __62__SVXSession__forceAudioSessionInactiveWithReason_completion___block_invoke;
  v24[3] = &unk_279C68180;
  v28 = v11;
  v12 = reasonCopy;
  v25 = v12;
  selfCopy = self;
  v13 = completionCopy;
  v27 = v13;
  v14 = MEMORY[0x26D642680](v24);
  audioDuckingCoordinationAssertion = self->_audioDuckingCoordinationAssertion;
  if (audioDuckingCoordinationAssertion)
  {
    v16 = *v9;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "[SVXSession _forceAudioSessionInactiveWithReason:completion:]";
      v31 = 2112;
      v32 = audioDuckingCoordinationAssertion;
      _os_log_impl(&dword_2695B9000, v16, OS_LOG_TYPE_INFO, "%s Relinquishing audio ducking coordination assertion %@...", buf, 0x16u);
      audioDuckingCoordinationAssertion = self->_audioDuckingCoordinationAssertion;
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __62__SVXSession__forceAudioSessionInactiveWithReason_completion___block_invoke_165;
    v23[3] = &__block_descriptor_40_e38_v16__0___AFAssertionContextMutating__8l;
    v23[4] = a2;
    v17 = [MEMORY[0x277CEF180] newWithBuilder:v23];
    [(AFRelinquishableAssertion *)audioDuckingCoordinationAssertion relinquishWithContext:v17 options:0];

    v18 = self->_audioDuckingCoordinationAssertion;
    self->_audioDuckingCoordinationAssertion = 0;
  }

  v19 = [(SVXSession *)self _connection:1];
  if (v19)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __62__SVXSession__forceAudioSessionInactiveWithReason_completion___block_invoke_2;
    v21[3] = &unk_279C68220;
    v22 = v14;
    [v19 forceAudioSessionInactiveWithOptions:0 completion:v21];
  }

  else
  {
    v14[2](v14);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __62__SVXSession__forceAudioSessionInactiveWithReason_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  mach_absolute_time();
  v2 = *(a1 + 56);
  AFMachAbsoluteTimeGetTimeInterval();
  v4 = v3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 136315650;
    v12 = "[SVXSession _forceAudioSessionInactiveWithReason:completion:]_block_invoke";
    v13 = 2112;
    v14 = v6;
    v15 = 2048;
    v16 = v4;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s END -forceAudioSessionInactive (reason = %@, duration = %f)", buf, 0x20u);
  }

  v7 = *(*(a1 + 40) + 176);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__SVXSession__forceAudioSessionInactiveWithReason_completion___block_invoke_164;
  v9[3] = &unk_279C68220;
  v10 = *(a1 + 48);
  [v7 performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __62__SVXSession__forceAudioSessionInactiveWithReason_completion___block_invoke_165(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTimestamp:mach_absolute_time()];
  v4 = NSStringFromSelector(*(a1 + 32));
  [v3 setReason:v4];
}

uint64_t __62__SVXSession__forceAudioSessionInactiveWithReason_completion___block_invoke_164(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_forceAudioSessionActiveWithOptions:(unint64_t)options reason:(int64_t)reason completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "[SVXSession _forceAudioSessionActiveWithOptions:reason:completion:]";
    v24 = 2048;
    optionsCopy = options;
    v26 = 2048;
    reasonCopy = reason;
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s BEGIN -forceAudioSessionActive (options = %lu, reason = %ld)", buf, 0x20u);
  }

  v10 = mach_absolute_time();
  currentSpeechRequestOptions = self->_currentSpeechRequestOptions;
  if (currentSpeechRequestOptions)
  {
    v12 = currentSpeechRequestOptions;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CEF498]) initWithActivationEvent:1];
  }

  v13 = v12;
  v14 = [(SVXSession *)self _connection:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__SVXSession__forceAudioSessionActiveWithOptions_reason_completion___block_invoke;
  v17[3] = &unk_279C68508;
  v19 = v10;
  optionsCopy2 = options;
  reasonCopy2 = reason;
  v17[4] = self;
  v18 = completionCopy;
  v15 = completionCopy;
  [v14 forceAudioSessionActiveWithOptions:options reason:reason speechRequestOptions:v13 completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __68__SVXSession__forceAudioSessionActiveWithOptions_reason_completion___block_invoke(void *a1, unsigned int a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  mach_absolute_time();
  v6 = a1[6];
  AFMachAbsoluteTimeGetTimeInterval();
  v8 = v7;
  v9 = *MEMORY[0x277CEF098];
  v10 = *MEMORY[0x277CEF098];
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[7];
      v12 = a1[8];
      *buf = 136316418;
      v25 = "[SVXSession _forceAudioSessionActiveWithOptions:reason:completion:]_block_invoke";
      v26 = 2048;
      v27 = v11;
      v28 = 2048;
      v29 = v12;
      v30 = 2048;
      v31 = v8;
      v32 = 2048;
      v33 = a2;
      v34 = 2112;
      v35 = v5;
      _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, "%s END -forceAudioSessionActive (options = %lu, reason = %ld, duration = %f, audioSessionID = %lu, error = %@)", buf, 0x3Eu);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = a1[7];
    v14 = a1[8];
    *buf = 136316162;
    v25 = "[SVXSession _forceAudioSessionActiveWithOptions:reason:completion:]_block_invoke";
    v26 = 2048;
    v27 = v13;
    v28 = 2048;
    v29 = v14;
    v30 = 2048;
    v31 = v8;
    v32 = 2048;
    v33 = a2;
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s END -forceAudioSessionActive (options = %lu, reason = %ld, duration = %f, audioSessionID = %lu)", buf, 0x34u);
  }

  v16 = a1[4];
  v15 = a1[5];
  v17 = *(v16 + 176);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __68__SVXSession__forceAudioSessionActiveWithOptions_reason_completion___block_invoke_163;
  v20[3] = &unk_279C68450;
  v20[4] = v16;
  v23 = a2;
  v21 = v5;
  v22 = v15;
  v18 = v5;
  [v17 performBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __68__SVXSession__forceAudioSessionActiveWithOptions_reason_completion___block_invoke_163(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _setAudioSessionID:*(a1 + 56)];
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 3)
  {
    *(v2 + 24) = 4;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 232));
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    v6 = *(v4 + 32);
    v7 = [*(v4 + 120) turnIdentifier];
    [WeakRetained session:v4 didBecomeActiveWithActivationContext:v5 activityUUID:v6 turnID:v7];

    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v9 = *(*(a1 + 32) + 32);
      v12 = 136315394;
      v13 = "[SVXSession _forceAudioSessionActiveWithOptions:reason:completion:]_block_invoke";
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s SESSION IS ACTIVE (%@)", &v12, 0x16u);
    }

    SVXInstrumentationEmitViewAppearContextEnd(*(*(a1 + 32) + 120));
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, *(a1 + 56), *(a1 + 40));
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_setOutputAudioPowerWrapper:(id)wrapper
{
  v22 = *MEMORY[0x277D85DE8];
  wrapperCopy = wrapper;
  if (!wrapperCopy)
  {
    goto LABEL_7;
  }

  if (([(AFInstanceContext *)self->_instanceContext supportsAudioPowerUpdate]& 1) != 0)
  {
    currentSpeechRequestOptions = self->_currentSpeechRequestOptions;
    if (currentSpeechRequestOptions && [(AFSpeechRequestOptions *)currentSpeechRequestOptions disableOutputAudioPowerUpdate])
    {
      v7 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v8 = self->_currentSpeechRequestOptions;
        v18 = 136315394;
        v19 = "[SVXSession _setOutputAudioPowerWrapper:]";
        v20 = 2112;
        v21 = v8;
        v9 = "%s Output audio power updater disabled by current speech request options %@.";
        v10 = v7;
        v11 = 22;
LABEL_16:
        _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, v9, &v18, v11);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

LABEL_7:
    v12 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v18 = 136315394;
      v19 = "[SVXSession _setOutputAudioPowerWrapper:]";
      v20 = 2112;
      v21 = wrapperCopy;
      _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s wrapper = %@", &v18, 0x16u);
    }

    outputAudioPowerWrapper = self->_outputAudioPowerWrapper;
    if (outputAudioPowerWrapper != wrapperCopy)
    {
      if (outputAudioPowerWrapper)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained session:self didEndUpdateAudioPowerWithType:2];
      }

      objc_storeStrong(&self->_outputAudioPowerWrapper, wrapper);
      if (self->_outputAudioPowerWrapper)
      {
        v15 = objc_loadWeakRetained(&self->_delegate);
        [v15 session:self willBeginUpdateAudioPowerWithType:2 wrapper:wrapperCopy];
      }
    }

    goto LABEL_17;
  }

  v16 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[SVXSession _setOutputAudioPowerWrapper:]";
    v9 = "%s Output audio power updater not supported.";
    v10 = v16;
    v11 = 12;
    goto LABEL_16;
  }

LABEL_17:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_setInputAudioPowerWrapper:(id)wrapper
{
  v22 = *MEMORY[0x277D85DE8];
  wrapperCopy = wrapper;
  if (!wrapperCopy)
  {
    goto LABEL_7;
  }

  if (([(AFInstanceContext *)self->_instanceContext supportsAudioPowerUpdate]& 1) != 0)
  {
    currentSpeechRequestOptions = self->_currentSpeechRequestOptions;
    if (currentSpeechRequestOptions && [(AFSpeechRequestOptions *)currentSpeechRequestOptions disableInputAudioPowerUpdate])
    {
      v7 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v8 = self->_currentSpeechRequestOptions;
        v18 = 136315394;
        v19 = "[SVXSession _setInputAudioPowerWrapper:]";
        v20 = 2112;
        v21 = v8;
        v9 = "%s Input audio power updater disabled by current speech request options %@.";
        v10 = v7;
        v11 = 22;
LABEL_16:
        _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, v9, &v18, v11);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

LABEL_7:
    v12 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v18 = 136315394;
      v19 = "[SVXSession _setInputAudioPowerWrapper:]";
      v20 = 2112;
      v21 = wrapperCopy;
      _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s wrapper = %@", &v18, 0x16u);
    }

    inputAudioPowerWrapper = self->_inputAudioPowerWrapper;
    if (inputAudioPowerWrapper != wrapperCopy)
    {
      if (inputAudioPowerWrapper)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained session:self didEndUpdateAudioPowerWithType:1];
      }

      objc_storeStrong(&self->_inputAudioPowerWrapper, wrapper);
      if (self->_inputAudioPowerWrapper)
      {
        v15 = objc_loadWeakRetained(&self->_delegate);
        [v15 session:self willBeginUpdateAudioPowerWithType:1 wrapper:wrapperCopy];
      }
    }

    goto LABEL_17;
  }

  v16 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[SVXSession _setInputAudioPowerWrapper:]";
    v9 = "%s Input audio power updater not supported.";
    v10 = v16;
    v11 = 12;
    goto LABEL_16;
  }

LABEL_17:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_discardPendingRequestBarriers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[SVXSession _discardPendingRequestBarriers]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_pendingRequestBarriers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_pendingRequestBarriers removeAllObjects];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_performNextPendingRequestBarrier
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[SVXSession _performNextPendingRequestBarrier]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (self->_currentRequestUUID)
  {
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[SVXSession _performNextPendingRequestBarrier]";
      _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s Ignored because _currentRequestUUID is not nil.", buf, 0xCu);
    }
  }

  else
  {
    firstObject = [(NSMutableArray *)self->_pendingRequestBarriers firstObject];
    if (firstObject)
    {
      [(NSMutableArray *)self->_pendingRequestBarriers removeObjectAtIndex:0];
      firstObject[2](firstObject, 0);
      performer = self->_performer;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __47__SVXSession__performNextPendingRequestBarrier__block_invoke;
      v9[3] = &unk_279C68FC0;
      v9[4] = self;
      [(SVXPerforming *)performer performBlock:v9 withOptions:0];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addRequestBarrier:(id)barrier
{
  v13 = *MEMORY[0x277D85DE8];
  barrierCopy = barrier;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[SVXSession _addRequestBarrier:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  pendingRequestBarriers = self->_pendingRequestBarriers;
  v7 = MEMORY[0x26D642680](barrierCopy);
  [(NSMutableArray *)pendingRequestBarriers addObject:v7];

  performer = self->_performer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__SVXSession__addRequestBarrier___block_invoke;
  v10[3] = &unk_279C68FC0;
  v10[4] = self;
  [(SVXPerforming *)performer performBlock:v10 withOptions:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setApplicationContext:(id)context
{
  v10 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[SVXSession _setApplicationContext:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  v6 = [(SVXSession *)self _connection:1];
  [v6 setApplicationContext:contextCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_clearContext
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[SVXSession _clearContext]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  v4 = [(SVXSession *)self _connection:1];
  [v4 clearContext];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_continuePendingSpeechRequest:(BOOL)request
{
  requestCopy = request;
  v23 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[SVXSession _continuePendingSpeechRequest:]";
    v21 = 1024;
    v22 = requestCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s success = %d", buf, 0x12u);
  }

  currentSpeechRequestDidStartBlock = self->_currentSpeechRequestDidStartBlock;
  if (currentSpeechRequestDidStartBlock)
  {
    currentSpeechRequestDidStartBlock[2]();
    v7 = self->_currentSpeechRequestDidStartBlock;
    self->_currentSpeechRequestDidStartBlock = 0;
  }

  if (requestCopy && self->_currentRequestUUID)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_currentSpeechRequestPendingBlocks;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v14 + 1) + 8 * v12) + 16))(*(*(&v14 + 1) + 8 * v12));
          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  [(NSMutableArray *)self->_currentSpeechRequestPendingBlocks removeAllObjects];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_performBlockAfterContinueBlock:(id)block
{
  if (self->_currentSpeechRequestDidStartBlock)
  {
    currentSpeechRequestPendingBlocks = self->_currentSpeechRequestPendingBlocks;
    v6 = MEMORY[0x26D642680](block, a2);
    [(NSMutableArray *)currentSpeechRequestPendingBlocks addObject:v6];
  }

  else
  {
    v5 = *(block + 2);

    v5(block);
  }
}

- (void)_setCurrentState:(int64_t)state
{
  v19 = *MEMORY[0x277D85DE8];
  currentState = self->_currentState;
  if (currentState != state)
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      if (currentState > 4)
      {
        v8 = @"(unknown)";
      }

      else
      {
        v8 = off_279C68A18[currentState];
      }

      v9 = v8;
      if (state > 4)
      {
        v10 = @"(unknown)";
      }

      else
      {
        v10 = off_279C68A18[state];
      }

      v11 = v10;
      v13 = 136315650;
      v14 = "[SVXSession _setCurrentState:]";
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s %@ -> %@", &v13, 0x20u);
    }

    [(SVXSession *)self _willChangeFromState:currentState toState:state];
    self->_currentState = state;
    [(SVXSession *)self _didChangeFromState:currentState toState:state];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_dismiss
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SVXSession _dismiss]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  [(SVXSpeechSynthesizer *)self->_speechSynthesizer cancelPendingRequests];
  [(SVXSpeechSynthesizer *)self->_speechSynthesizer stopCurrentRequestWithInterruptionBehavior:1];
  [(SVXTaskTrackingCenter *)self->_taskTrackingCenter endTrackingAllTasks];
  [(SRSTClient *)self->_client dispatchEvent:13];
  [(SVXSession *)self _setCurrentState:1];
  [(SVXSession *)self _requestDidEndWithOptions:6 error:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_cancelRequestWithOptions:(unint64_t)options keepTaskTracker:(id)tracker
{
  v18 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[SVXSession _cancelRequestWithOptions:keepTaskTracker:]";
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v8 = [(SVXSession *)self _connection:0];
  v9 = v8;
  if (v8)
  {
    [v8 cancelRequest];
    if (self->_currentState != 1 && !self->_currentRequestDidPresentUUFR)
    {
      [v9 rollbackRequest];
    }
  }

  [(SVXServiceCommandHandler *)self->_serviceCommandHandler reset];
  [(SVXSpeechSynthesizer *)self->_speechSynthesizer cancelPendingRequests];
  [(SVXSpeechSynthesizer *)self->_speechSynthesizer stopCurrentRequestWithInterruptionBehavior:1];
  context = [trackerCopy context];
  v11 = context;
  taskTrackingCenter = self->_taskTrackingCenter;
  if (context)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__SVXSession__cancelRequestWithOptions_keepTaskTracker___block_invoke;
    v14[3] = &unk_279C684E0;
    v15 = context;
    [(SVXTaskTrackingCenter *)taskTrackingCenter endTrackingTasksPassingTest:v14];
  }

  else
  {
    [(SVXTaskTrackingCenter *)self->_taskTrackingCenter endTrackingAllTasks];
  }

  [(SRSTClient *)self->_client dispatchEvent:10];
  [(SVXSession *)self _setCurrentState:1];
  [(SVXSession *)self _requestDidEndWithOptions:options error:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_waitForMyriadDecisionUsingHandler:(id)handler
{
  handlerCopy = handler;
  myriadState = self->_myriadState;
  if (myriadState <= 1)
  {
    if (myriadState)
    {
      if (myriadState != 1)
      {
        goto LABEL_15;
      }

      pendingMyriadDecisionHandlers = self->_pendingMyriadDecisionHandlers;
      v11 = handlerCopy;
      if (!pendingMyriadDecisionHandlers)
      {
        v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v8 = self->_pendingMyriadDecisionHandlers;
        self->_pendingMyriadDecisionHandlers = v7;

        pendingMyriadDecisionHandlers = self->_pendingMyriadDecisionHandlers;
      }

      v9 = MEMORY[0x26D642680](v11);
      [(NSMutableArray *)pendingMyriadDecisionHandlers addObject:v9];

      goto LABEL_14;
    }

    goto LABEL_11;
  }

  switch(myriadState)
  {
    case 4:
      goto LABEL_11;
    case 3:
      v10 = handlerCopy[2];
      v11 = handlerCopy;
      goto LABEL_13;
    case 2:
LABEL_11:
      v10 = handlerCopy[2];
      v11 = handlerCopy;
LABEL_13:
      v10();
LABEL_14:
      handlerCopy = v11;
      break;
  }

LABEL_15:
}

- (void)_resetMyriadDecision
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    myriadState = self->_myriadState;
    *buf = 136315650;
    v22 = "[SVXSession _resetMyriadDecision]";
    v23 = 2048;
    v24 = myriadState;
    v25 = 2048;
    v26 = 0;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s _myriadState (%ld -> %ld)", buf, 0x20u);
    v4 = *v3;
  }

  self->_myriadState = 0;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    myriadToken = self->_myriadToken;
    *buf = 136315650;
    v22 = "[SVXSession _resetMyriadDecision]";
    v23 = 2112;
    v24 = myriadToken;
    v25 = 2112;
    v26 = 0;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s _myriadToken (%@ -> %@)", buf, 0x20u);
  }

  v7 = self->_myriadToken;
  self->_myriadToken = 0;

  v8 = self->_pendingMyriadDecisionHandlers;
  pendingMyriadDecisionHandlers = self->_pendingMyriadDecisionHandlers;
  self->_pendingMyriadDecisionHandlers = 0;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v8;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v16 + 1) + 8 * v14) + 16))(*(*(&v16 + 1) + 8 * v14));
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_endWaitingForMyriadDecisionWithToken:(id)token state:(int64_t)state
{
  v36 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v31 = "[SVXSession _endWaitingForMyriadDecisionWithToken:state:]";
    v32 = 2048;
    stateCopy = state;
    v34 = 2112;
    stateCopy2 = tokenCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s state = %ld, token = %@", buf, 0x20u);
  }

  v9 = [tokenCopy isEqual:self->_myriadToken];
  v10 = *v7;
  v11 = os_log_type_enabled(*v7, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      myriadState = self->_myriadState;
      *buf = 136315650;
      v31 = "[SVXSession _endWaitingForMyriadDecisionWithToken:state:]";
      v32 = 2048;
      stateCopy = myriadState;
      v34 = 2048;
      stateCopy2 = state;
      _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s _myriadState (%ld -> %ld)", buf, 0x20u);
      v10 = *v7;
    }

    self->_myriadState = state;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      myriadToken = self->_myriadToken;
      *buf = 136315650;
      v31 = "[SVXSession _endWaitingForMyriadDecisionWithToken:state:]";
      v32 = 2112;
      stateCopy = myriadToken;
      v34 = 2112;
      stateCopy2 = 0;
      _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s _myriadToken (%@ -> %@)", buf, 0x20u);
    }

    v14 = self->_myriadToken;
    self->_myriadToken = 0;

    v15 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v31 = "[SVXSession _endWaitingForMyriadDecisionWithToken:state:]";
      v32 = 1024;
      LODWORD(stateCopy) = state == 2;
      _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s result = %d", buf, 0x12u);
    }

    v16 = self->_pendingMyriadDecisionHandlers;
    pendingMyriadDecisionHandlers = self->_pendingMyriadDecisionHandlers;
    self->_pendingMyriadDecisionHandlers = 0;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v16;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        v22 = 0;
        do
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          (*(*(*(&v25 + 1) + 8 * v22) + 16))(*(*(&v25 + 1) + 8 * v22));
          ++v22;
        }

        while (v20 != v22);
        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v20);
    }
  }

  else if (v11)
  {
    v23 = self->_myriadToken;
    *buf = 136315650;
    v31 = "[SVXSession _endWaitingForMyriadDecisionWithToken:state:]";
    v32 = 2112;
    stateCopy = tokenCopy;
    v34 = 2112;
    stateCopy2 = v23;
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s Ignored because input token (%@) does not match _myriadToken (%@).", buf, 0x20u);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_beginWaitingForMyriadDecisionWithToken:(id)token
{
  v18 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[SVXSession _beginWaitingForMyriadDecisionWithToken:]";
    v14 = 2112;
    v15 = tokenCopy;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s token = %@", &v12, 0x16u);
  }

  [(SVXSession *)self _resetMyriadDecision];
  v7 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
  {
    myriadState = self->_myriadState;
    v12 = 136315650;
    v13 = "[SVXSession _beginWaitingForMyriadDecisionWithToken:]";
    v14 = 2048;
    v15 = myriadState;
    v16 = 2048;
    v17 = 1;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s _myriadState (%ld -> %ld)", &v12, 0x20u);
    v7 = *v5;
  }

  self->_myriadState = 1;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    myriadToken = self->_myriadToken;
    v12 = 136315650;
    v13 = "[SVXSession _beginWaitingForMyriadDecisionWithToken:]";
    v14 = 2112;
    v15 = myriadToken;
    v16 = 2112;
    v17 = tokenCopy;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s _myriadToken (%@ -> %@)", &v12, 0x20u);
  }

  v10 = self->_myriadToken;
  self->_myriadToken = tokenCopy;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)endWaitingForMyriadDecisionWithToken:(id)token result:(BOOL)result
{
  resultCopy = result;
  v20 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[SVXSession endWaitingForMyriadDecisionWithToken:result:]";
    v16 = 2112;
    v17 = tokenCopy;
    v18 = 1024;
    v19 = resultCopy;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s token = %@, result = %d", buf, 0x1Cu);
  }

  performer = self->_performer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SVXSession_endWaitingForMyriadDecisionWithToken_result___block_invoke;
  v11[3] = &unk_279C681A8;
  v11[4] = self;
  v12 = tokenCopy;
  v13 = resultCopy;
  v9 = tokenCopy;
  [(SVXPerforming *)performer performBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __58__SVXSession_endWaitingForMyriadDecisionWithToken_result___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  return [*(a1 + 32) _endWaitingForMyriadDecisionWithToken:*(a1 + 40) state:v2];
}

- (id)beginWaitingForMyriadDecision
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[SVXSession beginWaitingForMyriadDecision]";
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s token = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__SVXSession_beginWaitingForMyriadDecision__block_invoke;
  v15[3] = &unk_279C68FE8;
  v15[4] = self;
  v6 = v3;
  v16 = v6;
  [(SVXPerforming *)performer performBlock:v15];
  v7 = self->_performer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__SVXSession_beginWaitingForMyriadDecision__block_invoke_2;
  v13[3] = &unk_279C68FE8;
  v13[4] = self;
  v8 = v6;
  v14 = v8;
  [(SVXPerforming *)v7 performBlock:v13 afterDelay:8.0];
  v9 = v14;
  v10 = v8;

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_startActiveAudioSessionRequestForType:(int64_t)type taskTracker:(id)tracker completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  completionCopy = completion;
  v11 = MEMORY[0x277CEF098];
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v29 = "[SVXSession _startActiveAudioSessionRequestForType:taskTracker:completion:]";
    v30 = 2048;
    typeCopy = type;
    v32 = 2112;
    v33 = trackerCopy;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s type = %zd, taskTracker = %@", buf, 0x20u);
  }

  [(SVXSession *)self _requestWillBeginWithTaskTracker:trackerCopy];
  v13 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v29 = "[SVXSession _startActiveAudioSessionRequestForType:taskTracker:completion:]";
    _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s Acquiring audio ducking coordination assertion...", buf, 0xCu);
  }

  v14 = AFAudioSessionAssertionGetCurrentAcquisitionService();
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __76__SVXSession__startActiveAudioSessionRequestForType_taskTracker_completion___block_invoke;
  v27[3] = &__block_descriptor_48_e38_v16__0___AFAssertionContextMutating__8l;
  v27[4] = a2;
  v27[5] = type;
  v15 = [MEMORY[0x277CEF180] newWithBuilder:v27];
  v16 = [v14 acquireAudioSessionAssertionWithContext:v15 relinquishmentHandler:&__block_literal_global_11727];
  audioDuckingCoordinationAssertion = self->_audioDuckingCoordinationAssertion;
  self->_audioDuckingCoordinationAssertion = v16;

  v18 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
  {
    v19 = self->_audioDuckingCoordinationAssertion;
    *buf = 136315394;
    v29 = "[SVXSession _startActiveAudioSessionRequestForType:taskTracker:completion:]";
    v30 = 2112;
    typeCopy = v19;
    _os_log_impl(&dword_2695B9000, v18, OS_LOG_TYPE_INFO, "%s Acquired audio ducking coordination assertion %@.", buf, 0x16u);
  }

  if (self->_activityState == 3)
  {
    self->_activityState = 4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    currentActivationContext = self->_currentActivationContext;
    activityUUID = self->_activityUUID;
    turnIdentifier = [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentRequestInstrumentationContext turnIdentifier];
    [WeakRetained session:self didBecomeActiveWithActivationContext:currentActivationContext activityUUID:activityUUID turnID:turnIdentifier];

    v24 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      v25 = self->_activityUUID;
      *buf = 136315394;
      v29 = "[SVXSession _startActiveAudioSessionRequestForType:taskTracker:completion:]";
      v30 = 2112;
      typeCopy = v25;
      _os_log_impl(&dword_2695B9000, v24, OS_LOG_TYPE_INFO, "%s SESSION IS ACTIVE (%@)", buf, 0x16u);
    }

    SVXInstrumentationEmitViewAppearContextEnd(self->_currentRequestInstrumentationContext);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __76__SVXSession__startActiveAudioSessionRequestForType_taskTracker_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 setTimestamp:mach_absolute_time()];
  v3 = NSStringFromSelector(*(a1 + 32));
  [v7 setReason:v3];

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [objc_alloc(MEMORY[0x277CEF498]) initWithActivationEvent:1];
  v6 = MEMORY[0x277CEEFA8];
  [v4 setObject:v5 forKey:*MEMORY[0x277CEEFA8]];

  [v4 setObject:&unk_287A34960 forKey:*(v6 + 16)];
  if (*(a1 + 40) == 1)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKey:*(v6 + 32)];
  }

  [v7 setUserInfo:v4];
}

void __76__SVXSession__startActiveAudioSessionRequestForType_taskTracker_completion___block_invoke_159(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = *MEMORY[0x277CEF098];
  if (v5)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[SVXSession _startActiveAudioSessionRequestForType:taskTracker:completion:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, "%s Relinquished audio ducking coordination assertion with error %@.", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[SVXSession _startActiveAudioSessionRequestForType:taskTracker:completion:]_block_invoke";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s Relinquished audio ducking coordination assertion with context %@.", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_startSpeechSynthesisRequest:(id)request languageCode:(id)code voiceName:(id)name gender:(int64_t)gender audioSessionID:(unsigned int)d introductionSoundID:(int64_t)iD conclusionSoundID:(int64_t)soundID taskTracker:(id)self0 postActivationHandler:(id)self1 completion:(id)self2
{
  v94 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  codeCopy = code;
  nameCopy = name;
  trackerCopy = tracker;
  handlerCopy = handler;
  completionCopy = completion;
  v21 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v22 = v21;
    iDCopy = iD;
    if (gender > 3)
    {
      v23 = @"(unknown)";
    }

    else
    {
      v23 = off_279C66CC8[gender];
    }

    v24 = v23;
    v45 = handlerCopy;
    if (iD > 6)
    {
      v25 = @"(unknown)";
    }

    else
    {
      v25 = off_279C677F8[iD];
    }

    v26 = v25;
    if (soundID > 6)
    {
      v27 = @"(unknown)";
    }

    else
    {
      v27 = off_279C677F8[soundID];
    }

    v28 = v27;
    *buf = 136316930;
    v79 = "[SVXSession _startSpeechSynthesisRequest:languageCode:voiceName:gender:audioSessionID:introductionSoundID:conclusionSoundID:taskTracker:postActivationHandler:completion:]";
    v80 = 2112;
    v81 = requestCopy;
    v82 = 2112;
    v83 = codeCopy;
    v84 = 2112;
    v85 = nameCopy;
    v86 = 2112;
    v87 = v24;
    v88 = 2112;
    v89 = v26;
    v90 = 2112;
    v91 = v28;
    v92 = 2112;
    v93 = trackerCopy;
    _os_log_impl(&dword_2695B9000, v22, OS_LOG_TYPE_INFO, "%s speechSynthesisRequest = %@, languageCode = %@, name = %@, gender = %@, introductionSoundID = %@, conclusionSoundID = %@, taskTracker = %@", buf, 0x52u);

    iD = iDCopy;
    handlerCopy = v45;
  }

  [(SVXSession *)self _requestWillBeginWithTaskTracker:trackerCopy, v45];
  v29 = self->_performer;
  v30 = [(SVXSession *)self _connection:1];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke;
  v74[3] = &unk_279C683B0;
  v74[4] = self;
  v49 = v29;
  v75 = v49;
  v47 = v30;
  v76 = v47;
  v31 = trackerCopy;
  v77 = v31;
  v32 = MEMORY[0x26D642680](v74);
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_5;
  v62[3] = &unk_279C68428;
  v62[4] = self;
  v33 = v32;
  v67 = v33;
  iDCopy2 = iD;
  v34 = handlerCopy;
  v68 = v34;
  v52 = requestCopy;
  v63 = v52;
  v35 = codeCopy;
  v64 = v35;
  v36 = nameCopy;
  v65 = v36;
  dCopy = d;
  genderCopy = gender;
  soundIDCopy = soundID;
  v37 = completionCopy;
  v69 = v37;
  v38 = v31;
  v66 = v38;
  v39 = MEMORY[0x26D642680](v62);
  v40 = v39;
  if (d)
  {
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_9;
    v58[3] = &unk_279C68450;
    dCopy2 = d;
    v58[4] = self;
    v60 = v39;
    v59 = v38;
    v41 = v40;
    [(SVXSession *)self _forceAudioSessionInactiveWithReason:@"Start Speech Synthesis Request (External)" completion:v58];

    v42 = v60;
  }

  else
  {
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_153;
    v53[3] = &unk_279C68478;
    v55 = v39;
    v56 = v34;
    v53[4] = self;
    v57 = v37;
    v54 = v38;
    v43 = v40;
    [(SVXSession *)self _forceAudioSessionActiveWithOptions:0 reason:3 completion:v53];

    v42 = v55;
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 416) createAudioPlaybackRequestFromID:a2 preferences:*(*(a1 + 32) + 216)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_2;
  v10[3] = &unk_279C68388;
  v11 = v6;
  v7 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 40);
  v15 = v5;
  v14 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  [v7 performBlock:v10];
}

void __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 368) dispatchEvent:9];
  [*(a1 + 32) _setCurrentState:4];
  v2 = *(a1 + 96);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_6;
  v14[3] = &unk_279C68400;
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v13 = *(a1 + 32);
  v5 = *(&v13 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v15 = v13;
  v16 = v8;
  v19 = *(a1 + 104);
  v21 = *(a1 + 120);
  v9 = *(a1 + 72);
  v20 = *(a1 + 112);
  v10 = *(a1 + 88);
  *&v11 = *(a1 + 64);
  *(&v11 + 1) = v4;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v18 = v12;
  v17 = v11;
  (*(v3 + 16))(v3, v2, v14);
}

uint64_t __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_9(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 3)
  {
    *(v2 + 24) = 4;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 232));
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    v6 = *(v4 + 32);
    v7 = [*(v4 + 120) turnIdentifier];
    [WeakRetained session:v4 didBecomeActiveWithActivationContext:v5 activityUUID:v6 turnID:v7];

    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v9 = *(*(a1 + 32) + 32);
      v10 = *(a1 + 56);
      v13 = 136315650;
      v14 = "[SVXSession _startSpeechSynthesisRequest:languageCode:voiceName:gender:audioSessionID:introductionSoundID:conclusionSoundID:taskTracker:postActivationHandler:completion:]_block_invoke_9";
      v15 = 2112;
      v16 = v9;
      v17 = 1024;
      v18 = v10;
      _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s SESSION IS ACTIVE (%@) (with external audio session %u) ", &v13, 0x1Cu);
    }

    SVXInstrumentationEmitViewAppearContextEnd(*(*(a1 + 32) + 120));
  }

  (*(*(a1 + 48) + 16))();
  result = [*(a1 + 32) _requestDidEndWithOptions:6 error:0];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_153(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  if (!v8 || (IsNoRoutesAvailableError = SVXAudioSessionIsNoRoutesAvailableError(v8), a2) && IsNoRoutesAvailableError)
  {
    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) _requestDidEndWithOptions:6 error:0];
    v6 = 0;
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    v6 = v8;
    [*(a1 + 32) _requestDidEndWithOptions:6 error:v6];
    v7 = *(a1 + 64);
    if (v7)
    {
      (*(v7 + 16))(v7, v6);
    }
  }
}

void __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_6(uint64_t a1)
{
  (*(*(a1 + 72) + 16))();
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 192);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 96);
  v7 = *(a1 + 112);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_7;
  v10[3] = &unk_279C683D8;
  v8 = *(a1 + 80);
  v9 = *(a1 + 104);
  v11 = v8;
  v13 = v9;
  v12 = *(a1 + 88);
  [v3 enqueueRequest:v2 languageCode:v4 voiceName:v5 gender:v6 audioSessionID:v7 preparation:0 finalization:v10 taskTracker:*(a1 + 64) analyticsContext:0];
}

void __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_8;
  v9[3] = &unk_279C68EF8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v6;
  v7 = *(v5 + 16);
  v8 = v3;
  v7(v5, v4, v9);
}

void __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

void __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_3;
    v6[3] = &unk_279C68360;
    v3 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a1 + 64);
    v8 = *(a1 + 56);
    [v3 startAudioPlaybackRequest:v2 options:3 completion:v6];
  }

  else
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }
}

void __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_4;
  v3[3] = &unk_279C68EF8;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 performBlock:v3];
}

uint64_t __171__SVXSession__startSpeechSynthesisRequest_languageCode_voiceName_gender_audioSessionID_introductionSoundID_conclusionSoundID_taskTracker_postActivationHandler_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_startRequestWithInfo:(id)info clearsContext:(BOOL)context deviceSetupContext:(id)setupContext taskTracker:(id)tracker completion:(id)completion
{
  contextCopy = context;
  v40 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  setupContextCopy = setupContext;
  trackerCopy = tracker;
  completionCopy = completion;
  v16 = MEMORY[0x277CEF098];
  v17 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v30 = 136316162;
    v31 = "[SVXSession _startRequestWithInfo:clearsContext:deviceSetupContext:taskTracker:completion:]";
    v32 = 2112;
    v33 = infoCopy;
    v34 = 1024;
    v35 = contextCopy;
    v36 = 2112;
    v37 = setupContextCopy;
    v38 = 2112;
    v39 = trackerCopy;
    _os_log_impl(&dword_2695B9000, v17, OS_LOG_TYPE_INFO, "%s requestInfo = %@, clearsContext = %d, deviceSetupContext = %@, taskTracker = %@", &v30, 0x30u);
  }

  [(SVXSession *)self _requestWillBeginWithTaskTracker:trackerCopy];
  if (contextCopy)
  {
    v18 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136315138;
      v31 = "[SVXSession _startRequestWithInfo:clearsContext:deviceSetupContext:taskTracker:completion:]";
      _os_log_impl(&dword_2695B9000, v18, OS_LOG_TYPE_DEFAULT, "%s clearContext", &v30, 0xCu);
    }

    v19 = [(SVXSession *)self _connection:1];
    [v19 clearContext];

    setApplicationContext = self->_setApplicationContext;
    self->_setApplicationContext = 0;
  }

  v21 = _SVXSessionCreateSetApplicationContext(setupContextCopy);
  if (([(SASetApplicationContext *)self->_setApplicationContext isEqual:v21]& 1) == 0)
  {
    v22 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      dictionary = [v21 dictionary];
      v30 = 136315394;
      v31 = "[SVXSession _startRequestWithInfo:clearsContext:deviceSetupContext:taskTracker:completion:]";
      v32 = 2112;
      v33 = dictionary;
      _os_log_impl(&dword_2695B9000, v23, OS_LOG_TYPE_DEFAULT, "%s setApplicationContext: %@", &v30, 0x16u);
    }

    v25 = [(SVXSession *)self _connection:1];
    [v25 setApplicationContext:v21];

    v26 = [v21 copy];
    v27 = self->_setApplicationContext;
    self->_setApplicationContext = v26;
  }

  v28 = [(SVXSession *)self _connection:1];
  [v28 startRequestWithInfo:infoCopy];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnectionUpdatedSpeechEndEstimate:(id)estimate speechEndEstimate:(unint64_t)endEstimate
{
  v14 = *MEMORY[0x277D85DE8];
  estimateCopy = estimate;
  if (self->_isStateFeedbackEnabled)
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[SVXSession assistantConnectionUpdatedSpeechEndEstimate:speechEndEstimate:]";
      v12 = 2048;
      endEstimateCopy = endEstimate;
      _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s #svxstatefeedback SpeechEndEstimate: %llu", &v10, 0x16u);
    }

    _stateFeedbackManager = [(SVXSession *)self _stateFeedbackManager];
    [_stateFeedbackManager didUpdateSpeechEndEstimate:endEstimate];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateSpeechEndpointerOperationMode:(int64_t)mode
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = AFSpeechEndpointerOperationModeGetName();
    v14 = 136315394;
    v15 = "[SVXSession _updateSpeechEndpointerOperationMode:]";
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s speechEndpointerOperationMode = %@", &v14, 0x16u);
  }

  if (!self->_currentRequestUUID)
  {
    v11 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v14 = 136315138;
    v15 = "[SVXSession _updateSpeechEndpointerOperationMode:]";
    v12 = "%s Ignored because _currentRequestUUID is nil.";
LABEL_11:
    _os_log_error_impl(&dword_2695B9000, v11, OS_LOG_TYPE_ERROR, v12, &v14, 0xCu);
    goto LABEL_9;
  }

  currentSpeechRequestOptions = self->_currentSpeechRequestOptions;
  if (!currentSpeechRequestOptions)
  {
    v11 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v14 = 136315138;
    v15 = "[SVXSession _updateSpeechEndpointerOperationMode:]";
    v12 = "%s Ignored because _currentSpeechRequestOptions is nil.";
    goto LABEL_11;
  }

  [(AFSpeechRequestOptions *)currentSpeechRequestOptions setEndpointerOperationMode:mode];
  v10 = [(SVXSession *)self _connection:0];
  [v10 updateSpeechOptions:self->_currentSpeechRequestOptions];

LABEL_9:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_transitSpeechToAutomaticEndpointingWithTimestamp:(unint64_t)timestamp
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v44 = "[SVXSession _transitSpeechToAutomaticEndpointingWithTimestamp:]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  svxActivationInstrumentation = self->_svxActivationInstrumentation;
  turnIdentifier = [(AFAnalyticsTurnBasedInstrumentationContext *)self->_currentRequestInstrumentationContext turnIdentifier];
  v6 = MEMORY[0x26D641FF0](turnIdentifier);
  v7 = svxActivationInstrumentation;
  v8 = v6;
  if (v7)
  {
    turnIdentifier2 = [(SVXActivationInstrumentation *)v7 turnIdentifier];
    v39 = MEMORY[0x26D641FF0]();

    buttonDownTimestamp = [(SVXActivationInstrumentation *)v7 buttonDownTimestamp];
    v33 = mach_absolute_time();
    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316418;
      v44 = "SVXInstrumentationEmitButtonEvents";
      v45 = 2112;
      v46 = v39;
      v47 = 2048;
      timestampCopy2 = buttonDownTimestamp;
      v49 = 2112;
      v50 = v8;
      v51 = 2048;
      timestampCopy = timestamp;
      v53 = 2048;
      v54 = v33;
      _os_log_debug_impl(&dword_2695B9000, v10, OS_LOG_TYPE_DEBUG, "%s #SVXInstrumentation - button down: turnId = %@, time = %lld button up: turnId = %@, time = %lld, turnEventTime = %lld", buf, 0x3Eu);
    }

    if ([v8 isEqualToString:v39])
    {
      v38 = objc_alloc_init(MEMORY[0x277D56720]);
      v11 = objc_alloc(MEMORY[0x277D5AC78]);
      v12 = objc_alloc_init(MEMORY[0x277CCAD78]);
      v13 = [v11 initWithNSUUID:v12];
      [v38 setActivationEventId:v13];

      v37 = objc_alloc_init(MEMORY[0x277D56710]);
      [v37 setButtonName:@"Topcap"];
      [v37 setButtonInteractionType:1];
      v36 = objc_alloc_init(MEMORY[0x277D56718]);
      [v36 setEventMetadata:v38];
      [v36 setButtonInteractionDetected:v37];
      v14 = objc_alloc_init(MEMORY[0x277D56710]);
      [v14 setButtonName:@"Topcap"];
      [v14 setButtonInteractionType:2];
      v15 = objc_alloc_init(MEMORY[0x277D56718]);
      [v15 setEventMetadata:v38];
      [v15 setButtonInteractionDetected:v14];
      v16 = objc_alloc_init(MEMORY[0x277D56728]);
      v17 = objc_alloc(MEMORY[0x277D5AC78]);
      turnIdentifier3 = [(SVXActivationInstrumentation *)v7 turnIdentifier];
      v19 = [v17 initWithNSUUID:turnIdentifier3];
      [v16 setTurnId:v19];

      v20 = objc_alloc_init(MEMORY[0x277D56718]);
      [v20 setEventMetadata:v38];
      [v20 setTurnActivated:v16];
      v21 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v44 = "SVXInstrumentationEmitButtonEvents";
        v45 = 2048;
        v46 = buttonDownTimestamp;
        v47 = 2048;
        timestampCopy2 = timestamp;
        _os_log_impl(&dword_2695B9000, v21, OS_LOG_TYPE_INFO, "%s #SVXInstrumentation - Emit button activation event (button down time: %lld, button up time: %lld)", buf, 0x20u);
      }

      mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedAnalytics];
      defaultMessageStream = [mEMORY[0x277D552C0] defaultMessageStream];
      [defaultMessageStream emitMessage:v36 timestamp:buttonDownTimestamp];

      mEMORY[0x277D552C0]2 = [MEMORY[0x277D552C0] sharedAnalytics];
      defaultMessageStream2 = [mEMORY[0x277D552C0]2 defaultMessageStream];
      [defaultMessageStream2 emitMessage:v15 timestamp:timestamp];

      mEMORY[0x277D552C0]3 = [MEMORY[0x277D552C0] sharedAnalytics];
      defaultMessageStream3 = [mEMORY[0x277D552C0]3 defaultMessageStream];
      [defaultMessageStream3 emitMessage:v20 timestamp:v33];
    }

    else
    {
      v29 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v44 = "SVXInstrumentationEmitButtonEvents";
        _os_log_error_impl(&dword_2695B9000, v29, OS_LOG_TYPE_ERROR, "%s #SVXInstrumentation - turnId doesn't match between button down and up event. Skip button activation instrumentation.", buf, 0xCu);
      }
    }
  }

  else
  {
    v28 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v44 = "SVXInstrumentationEmitButtonEvents";
      _os_log_error_impl(&dword_2695B9000, v28, OS_LOG_TYPE_ERROR, "%s #SVXInstrumentation - svxActivationInstrumentation is nil. Button down event was missed.", buf, 0xCu);
    }
  }

  v30 = self->_svxActivationInstrumentation;
  self->_svxActivationInstrumentation = 0;

  if (self->_currentRequestUUID)
  {
    objc_initWeak(buf, self);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __64__SVXSession__transitSpeechToAutomaticEndpointingWithTimestamp___block_invoke;
    v41[3] = &unk_279C69088;
    objc_copyWeak(&v42, buf);
    [(SVXSession *)self _performBlockAfterContinueBlock:v41];
    objc_destroyWeak(&v42);
    objc_destroyWeak(buf);
  }

  else
  {
    v31 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v44 = "[SVXSession _transitSpeechToAutomaticEndpointingWithTimestamp:]";
      _os_log_error_impl(&dword_2695B9000, v31, OS_LOG_TYPE_ERROR, "%s Ignored because _currentRequestUUID is nil.", buf, 0xCu);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __64__SVXSession__transitSpeechToAutomaticEndpointingWithTimestamp___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSpeechEndpointerOperationMode:3];
}

- (void)_transitSpeechToManualEndpointing
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[SVXSession _transitSpeechToManualEndpointing]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (self->_currentRequestUUID)
  {
    objc_initWeak(buf, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__SVXSession__transitSpeechToManualEndpointing__block_invoke;
    v7[3] = &unk_279C69088;
    objc_copyWeak(&v8, buf);
    [(SVXSession *)self _performBlockAfterContinueBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }

  else
  {
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[SVXSession _transitSpeechToManualEndpointing]";
      _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s Ignored because _currentRequestUUID is nil.", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __47__SVXSession__transitSpeechToManualEndpointing__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSpeechEndpointerOperationMode:1];
}

- (void)_stopSpeechWithCurrentSpeechRequestOptions
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SVXSession _stopSpeechWithCurrentSpeechRequestOptions]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  if (!self->_currentRequestUUID)
  {
    v6 = *v3;
    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v9 = 136315138;
    v10 = "[SVXSession _stopSpeechWithCurrentSpeechRequestOptions]";
    v7 = "%s Ignored because _currentRequestUUID is nil.";
LABEL_11:
    _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, v7, &v9, 0xCu);
    goto LABEL_9;
  }

  if (!self->_currentSpeechRequestOptions)
  {
    v6 = *v3;
    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v9 = 136315138;
    v10 = "[SVXSession _stopSpeechWithCurrentSpeechRequestOptions]";
    v7 = "%s Ignored because _currentSpeechRequestOptions is nil.";
    goto LABEL_11;
  }

  v5 = [(SVXSession *)self _connection:0];
  [v5 stopSpeechWithOptions:self->_currentSpeechRequestOptions];

LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_stopSpeech
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[SVXSession _stopSpeech]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (self->_currentRequestUUID)
  {
    objc_initWeak(buf, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __25__SVXSession__stopSpeech__block_invoke;
    v7[3] = &unk_279C69088;
    objc_copyWeak(&v8, buf);
    [(SVXSession *)self _performBlockAfterContinueBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }

  else
  {
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[SVXSession _stopSpeech]";
      _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s Ignored because _currentRequestUUID is nil.", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __25__SVXSession__stopSpeech__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopSpeechWithCurrentSpeechRequestOptions];
}

- (void)_startSpeechRequestWithOptions:(id)options clearsContext:(BOOL)context deviceSetupContext:(id)setupContext deviceProblemsState:(id)state localDeviceContext:(id)deviceContext taskTracker:(id)tracker completion:(id)completion
{
  contextCopy = context;
  v61[2] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  setupContextCopy = setupContext;
  stateCopy = state;
  deviceContextCopy = deviceContext;
  trackerCopy = tracker;
  completionCopy = completion;
  v20 = MEMORY[0x277CEF098];
  v21 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v57 = "[SVXSession _startSpeechRequestWithOptions:clearsContext:deviceSetupContext:deviceProblemsState:localDeviceContext:taskTracker:completion:]";
    v58 = 2112;
    v59 = optionsCopy;
    v60 = 1024;
    LODWORD(v61[0]) = contextCopy;
    WORD2(v61[0]) = 2112;
    *(v61 + 6) = trackerCopy;
    _os_log_impl(&dword_2695B9000, v21, OS_LOG_TYPE_INFO, "%s options = %@, clearsContext = %d, taskTracker = %@", buf, 0x26u);
    v21 = *v20;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v57 = "[SVXSession _startSpeechRequestWithOptions:clearsContext:deviceSetupContext:deviceProblemsState:localDeviceContext:taskTracker:completion:]";
    v58 = 2112;
    v59 = setupContextCopy;
    v60 = 2112;
    v61[0] = stateCopy;
    _os_log_impl(&dword_2695B9000, v21, OS_LOG_TYPE_INFO, "%s deviceSetupContext = %@, deviceProblemsState = %@", buf, 0x20u);
    v21 = *v20;
  }

  v22 = stateCopy;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v23 = v21;
    identifier = [deviceContextCopy identifier];
    *buf = 136315394;
    v57 = "[SVXSession _startSpeechRequestWithOptions:clearsContext:deviceSetupContext:deviceProblemsState:localDeviceContext:taskTracker:completion:]";
    v58 = 2112;
    v59 = identifier;
    _os_log_impl(&dword_2695B9000, v23, OS_LOG_TYPE_INFO, "%s localDeviceContext = %@", buf, 0x16u);

    v21 = *v20;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    currentRequestUUID = self->_currentRequestUUID;
    *buf = 136315394;
    v57 = "[SVXSession _startSpeechRequestWithOptions:clearsContext:deviceSetupContext:deviceProblemsState:localDeviceContext:taskTracker:completion:]";
    v58 = 2112;
    v59 = currentRequestUUID;
    _os_log_impl(&dword_2695B9000, v21, OS_LOG_TYPE_INFO, "%s _currentRequestUUID = %@", buf, 0x16u);
    v21 = *v20;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    preferences = self->_preferences;
    v27 = v21;
    startAlertEnabled = [(AFPreferences *)preferences startAlertEnabled];
    *buf = 136315394;
    v57 = "[SVXSession _startSpeechRequestWithOptions:clearsContext:deviceSetupContext:deviceProblemsState:localDeviceContext:taskTracker:completion:]";
    v58 = 1024;
    LODWORD(v59) = startAlertEnabled;
    _os_log_impl(&dword_2695B9000, v27, OS_LOG_TYPE_INFO, "%s startAlertEnabled = %d", buf, 0x12u);
  }

  deviceContextCopy = [(SVXSession *)self _connection:0, deviceContextCopy];
  isRecording = [deviceContextCopy isRecording];

  if (!isRecording)
  {
    instrumentationContext = [trackerCopy instrumentationContext];
    turnIdentifier = [instrumentationContext turnIdentifier];
    [(NSUUID *)optionsCopy setTurnIdentifier:turnIdentifier];

    [(SVXSession *)self _requestWillBeginWithTaskTracker:trackerCopy];
    v35 = [(SVXSession *)self _connection:1];
    v32 = [v35 startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions:optionsCopy];

    if (contextCopy)
    {
      v36 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v57 = "[SVXSession _startSpeechRequestWithOptions:clearsContext:deviceSetupContext:deviceProblemsState:localDeviceContext:taskTracker:completion:]";
        _os_log_impl(&dword_2695B9000, v36, OS_LOG_TYPE_DEFAULT, "%s clearContext", buf, 0xCu);
      }

      v37 = [(SVXSession *)self _connection:1];
      [v37 clearContext];

      setApplicationContext = self->_setApplicationContext;
      self->_setApplicationContext = 0;
    }

    v39 = _SVXSessionCreateSetApplicationContext(setupContextCopy);
    if (([(SASetApplicationContext *)self->_setApplicationContext isEqual:v39]& 1) == 0)
    {
      v40 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
        dictionary = [v39 dictionary];
        *buf = 136315394;
        v57 = "[SVXSession _startSpeechRequestWithOptions:clearsContext:deviceSetupContext:deviceProblemsState:localDeviceContext:taskTracker:completion:]";
        v58 = 2112;
        v59 = dictionary;
        _os_log_impl(&dword_2695B9000, v41, OS_LOG_TYPE_DEFAULT, "%s setApplicationContext: %@", buf, 0x16u);
      }

      v43 = [(SVXSession *)self _connection:1];
      [v43 setApplicationContext:v39];

      v44 = [v39 copy];
      v45 = self->_setApplicationContext;
      self->_setApplicationContext = v44;
    }

    if (v32)
    {
      v32[2](v32);
    }

    v46 = [(NSUUID *)optionsCopy copy];
    currentSpeechRequestOptions = self->_currentSpeechRequestOptions;
    self->_currentSpeechRequestOptions = v46;

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __140__SVXSession__startSpeechRequestWithOptions_clearsContext_deviceSetupContext_deviceProblemsState_localDeviceContext_taskTracker_completion___block_invoke;
    v54[3] = &unk_279C68220;
    v55 = completionCopy;
    v48 = MEMORY[0x26D642680](v54);
    currentSpeechRequestDidStartBlock = self->_currentSpeechRequestDidStartBlock;
    self->_currentSpeechRequestDidStartBlock = v48;

    v50 = [(SVXSession *)self _connection:0];

    if (v50)
    {
      if ([(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions activationEvent]!= 1 || ([(AFPreferences *)self->_preferences startAlertEnabled]& 1) == 0)
      {
        [(SRSTClient *)self->_client dispatchEvent:0];
        [(SRSTClient *)self->_client dispatchEvent:5];
        [(SVXSession *)self _setCurrentState:2];
      }
    }

    else
    {
      [(SVXSession *)self _requestDidEndWithOptions:0 error:0];
    }

    goto LABEL_31;
  }

  v31 = *v20;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v57 = "[SVXSession _startSpeechRequestWithOptions:clearsContext:deviceSetupContext:deviceProblemsState:localDeviceContext:taskTracker:completion:]";
    _os_log_error_impl(&dword_2695B9000, v31, OS_LOG_TYPE_ERROR, "%s Attempting to start a new speech request during an existing speech recording.", buf, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_32;
    }

    goto LABEL_14;
  }

  if (completionCopy)
  {
LABEL_14:
    v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:3 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v32);
LABEL_31:
  }

LABEL_32:

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __140__SVXSession__startSpeechRequestWithOptions_clearsContext_deviceSetupContext_deviceProblemsState_localDeviceContext_taskTracker_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_preheatWithStyle:(int64_t)style
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[SVXSession _preheatWithStyle:]";
    v10 = 2048;
    styleCopy = style;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s style = %ld", &v8, 0x16u);
  }

  v6 = [(SVXSession *)self _connection:1];
  [v6 preheatWithStyle:style];

  [(SVXSession *)self _startSessionIdleTimerWithTimeInterval:4.0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_deactivateWithContext:(id)context completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF0F8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0F8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[SVXSession _deactivateWithContext:completion:]";
    v24 = 2112;
    v25 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEFAULT, "%s context = %@", buf, 0x16u);
  }

  if ([contextCopy source] != 3)
  {
    goto LABEL_8;
  }

  if (![(SVXSessionUtils *)self->_sessionUtils isVoiceTriggerWithActivationContext:self->_currentActivationContext])
  {
    v16 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      currentActivationContext = self->_currentActivationContext;
      *buf = 136315394;
      v23 = "[SVXSession _deactivateWithContext:completion:]";
      v24 = 2112;
      v25 = currentActivationContext;
      v11 = "%s Rejected Myriad deactivation because the current activation context is %@.";
      v12 = v16;
LABEL_18:
      _os_log_error_impl(&dword_2695B9000, v12, OS_LOG_TYPE_ERROR, v11, buf, 0x16u);
      if (!completionCopy)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  timestamp = [(SVXActivationContext *)self->_currentActivationContext timestamp];
  if (timestamp <= [contextCopy timestamp])
  {
LABEL_8:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained session:self willDeactivateWithContext:contextCopy];

    if ((self->_activityState - 3) <= 1)
    {
      v14 = [contextCopy copy];
      currentDeactivationContext = self->_currentDeactivationContext;
      self->_currentDeactivationContext = v14;
    }

    [(SVXSession *)self _cancelRequestWithOptions:6 keepTaskTracker:0];
    if ([contextCopy source] == 1)
    {
      [(SVXSession *)self _clearContext];
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __48__SVXSession__deactivateWithContext_completion___block_invoke;
    v19[3] = &unk_279C68EA8;
    v19[4] = self;
    v20 = contextCopy;
    v21 = completionCopy;
    [(SVXSession *)self _performBlockAfterResignActive:v19];

    goto LABEL_16;
  }

  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v23 = "[SVXSession _deactivateWithContext:completion:]";
    v24 = 2048;
    v25 = timestamp;
    v11 = "%s Rejected Myriad deactivation because the current activation timestamp is %llu.";
    v12 = v10;
    goto LABEL_18;
  }

LABEL_14:
  if (completionCopy)
  {
LABEL_15:
    completionCopy[2](completionCopy);
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __48__SVXSession__deactivateWithContext_completion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 232));
  [WeakRetained session:a1[4] didDeactivateWithContext:a1[5]];

  [*(a1[4] + 344) invalidate];
  v3 = a1[4];
  v4 = *(v3 + 344);
  *(v3 + 344) = 0;

  result = a1[6];
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)_activateWithContext:(id)context options:(unint64_t)options deviceSetupContext:(id)setupContext deviceProblemsState:(id)state localDeviceContext:(id)deviceContext speechSynthesisRecord:(id)record speechSynthesisState:(int64_t)synthesisState speechRecordingAlertPolicy:(id)self0 taskTracker:(id)self1 completion:(id)self2
{
  v230 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  context = setupContext;
  stateCopy = state;
  deviceContextCopy = deviceContext;
  recordCopy = record;
  policyCopy = policy;
  trackerCopy = tracker;
  completionCopy = completion;
  v20 = MEMORY[0x277CEF098];
  v21 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    if (options)
    {
      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v23 = v22;
      if (options)
      {
        [v22 addObject:@"clearsContext"];
      }

      v24 = [v23 copy];
    }

    else
    {
      v24 = MEMORY[0x277CBEBF8];
    }

    v25 = v24;
    *buf = 136315906;
    v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
    v225 = 2112;
    *v226 = contextCopy;
    *&v226[8] = 2112;
    v227 = v25;
    v228 = 2112;
    v229 = trackerCopy;
    _os_log_impl(&dword_2695B9000, v21, OS_LOG_TYPE_INFO, "%s context = %@, options = %@, taskTracker = %@", buf, 0x2Au);
  }

  v26 = *v20;
  contextCopy6 = context;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
    v225 = 2112;
    *v226 = context;
    *&v226[8] = 2112;
    v227 = stateCopy;
    _os_log_impl(&dword_2695B9000, v26, OS_LOG_TYPE_INFO, "%s deviceSetupContext = %@, deviceProblemsState = %@", buf, 0x20u);
  }

  v181 = stateCopy;

  v28 = *v20;
  v29 = contextCopy;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    identifier = [deviceContextCopy identifier];
    *buf = 136315394;
    v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
    v225 = 2112;
    *v226 = identifier;
    _os_log_impl(&dword_2695B9000, v28, OS_LOG_TYPE_INFO, "%s localDeviceContext = %@", buf, 0x16u);
  }

  v31 = *v20;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    if (synthesisState > 2)
    {
      v32 = @"(unknown)";
    }

    else
    {
      v32 = off_279C67C18[synthesisState];
    }

    v33 = v32;
    *buf = 136315650;
    v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
    v225 = 2112;
    *v226 = recordCopy;
    *&v226[8] = 2112;
    v227 = v33;
    _os_log_impl(&dword_2695B9000, v31, OS_LOG_TYPE_INFO, "%s speechSynthesisRecord = %@, speechSynthesisState = %@", buf, 0x20u);
  }

  v34 = *v20;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
    v225 = 2112;
    *v226 = policyCopy;
    _os_log_impl(&dword_2695B9000, v34, OS_LOG_TYPE_INFO, "%s speechRecordingAlertPolicy = %@", buf, 0x16u);
  }

  source = [contextCopy source];
  if (source <= 9 && ((1 << source) & 0x3D6) != 0 && ([(AFPreferences *)self->_preferences assistantIsEnabled]& 1) == 0)
  {
    requestInfo = [contextCopy requestInfo];
    activationEvent = [requestInfo activationEvent];

    v38 = *v20;
    if (activationEvent != 6)
    {
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
        _os_log_error_impl(&dword_2695B9000, v38, OS_LOG_TYPE_ERROR, "%s Siri is not enabled.", buf, 0xCu);
      }

      v52 = MEMORY[0x277CCA9B8];
      v221 = *MEMORY[0x277CCA7E8];
      v53 = [MEMORY[0x277CEF2A0] errorWithCode:18];
      v222 = v53;
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v222 forKeys:&v221 count:1];
      requestInfo4 = [v52 errorWithDomain:@"SiriVOXErrorDomain" code:1 userInfo:v54];

      v51 = completionCopy;
      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, requestInfo4);
      }

      goto LABEL_263;
    }

    v39 = v38;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
      _os_log_error_impl(&dword_2695B9000, v39, OS_LOG_TYPE_ERROR, "%s Siri is not enabled, but since this is a critical security alert, we will allow this announcement", buf, 0xCu);
    }
  }

  [(SVXSession *)self _resetMyriadDecision];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained session:self willActivateWithContext:contextCopy];

  source2 = [contextCopy source];
  if (source2 > 9 || ((1 << source2) & 0x3C6) == 0 || [(SVXSession *)self _isAssistantConnectionAvailable])
  {
    if (options)
    {
      v42 = *v20;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
        _os_log_impl(&dword_2695B9000, v42, OS_LOG_TYPE_DEFAULT, "%s clearContext", buf, 0xCu);
      }

      v43 = [(SVXSession *)self _connection:1];
      [v43 clearContext];

      setApplicationContext = self->_setApplicationContext;
      self->_setApplicationContext = 0;
    }

    v179 = trackerCopy;
    source3 = [contextCopy source];
    languageCode = 0;
    if (source3 > 4)
    {
      if (source3 > 6)
      {
        if (source3 != 7)
        {
          if (source3 != 8)
          {
            speechRequestOptions = 0;
            requestInfo4 = 0;
            if (source3 != 9)
            {
              goto LABEL_257;
            }

LABEL_72:
            requestInfo2 = [contextCopy requestInfo];
            v67 = *v20;
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
              v225 = 2112;
              *v226 = requestInfo2;
              _os_log_impl(&dword_2695B9000, v67, OS_LOG_TYPE_INFO, "%s requestInfo = %@", buf, 0x16u);
            }

            v68 = *v20;
            v56 = v179;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
            {
              isSpeechRequest = [requestInfo2 isSpeechRequest];
              v70 = AFPreferencesTypeToSiriEnabled();
              *buf = 136315650;
              v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
              v225 = 1024;
              *v226 = isSpeechRequest;
              *&v226[4] = 1024;
              *&v226[6] = v70;
              _os_log_impl(&dword_2695B9000, v68, OS_LOG_TYPE_INFO, "%s isSpeechRequest = %d, isTypeToSiriEnabled = %d.", buf, 0x18u);
            }

            if (![requestInfo2 isSpeechRequest] || (objc_msgSend(requestInfo2, "speechRequestOptions"), speechRequestOptions = objc_claimAutoreleasedReturnValue(), requestInfo2, requestInfo2 = 0, requestInfo4 = 0, !speechRequestOptions))
            {
              speechRequestOptions = [objc_alloc(MEMORY[0x277CEF498]) initWithActivationEvent:1];
              requestInfo4 = requestInfo2;
            }

            buttonEvent = [contextCopy buttonEvent];
            if ([buttonEvent type] == 1)
            {
              v72 = *v20;
              if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
              {
                timestamp = [contextCopy timestamp];
                timestamp2 = [buttonEvent timestamp];
                *buf = 136315650;
                v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
                v225 = 2048;
                *v226 = timestamp;
                *&v226[8] = 2048;
                v227 = timestamp2;
                _os_log_impl(&dword_2695B9000, v72, OS_LOG_TYPE_INFO, "%s button_track typedown context = %lld button = %lld", buf, 0x20u);
              }

              timestamp3 = [buttonEvent timestamp];
              v56 = v179;
              if (timestamp3)
              {
                v76 = timestamp3;
                AFMachAbsoluteTimeGetTimeInterval();
                [speechRequestOptions setHomeButtonDownEventTime:?];
                [speechRequestOptions setHomeButtonDownEventMachAbsoluteTime:v76];
                AFMachAbsoluteTimeGetTimeInterval();
                [speechRequestOptions setActivationEventTime:?];
                [speechRequestOptions setActivationEventMachAbsoluteTime:v76];
                [speechRequestOptions setEndpointerOperationMode:2];
                goto LABEL_110;
              }
            }

            else if ([buttonEvent type] == 2)
            {
              v81 = *v20;
              if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
              {
                timestamp4 = [contextCopy timestamp];
                timestamp5 = [buttonEvent timestamp];
                *buf = 136315650;
                v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
                v225 = 2048;
                *v226 = timestamp4;
                *&v226[8] = 2048;
                v227 = timestamp5;
                _os_log_impl(&dword_2695B9000, v81, OS_LOG_TYPE_INFO, "%s button_track typeup context = %lld button = %lld", buf, 0x20u);
              }

              [speechRequestOptions setEndpointerOperationMode:3];
              v56 = v179;
            }

            timestamp6 = [contextCopy timestamp];
            if (timestamp6)
            {
              v85 = timestamp6;
              AFMachAbsoluteTimeGetTimeInterval();
              [speechRequestOptions setActivationEventTime:?];
              [speechRequestOptions setActivationEventMachAbsoluteTime:v85];
            }

LABEL_110:
            [speechRequestOptions setSpeechSynthesisRecord:recordCopy];

            v29 = contextCopy;
            if (!speechRequestOptions)
            {
LABEL_111:
              if (requestInfo4)
              {
                v86 = objc_autoreleasePoolPush();
                v192[0] = MEMORY[0x277D85DD0];
                v192[1] = 3221225472;
                v192[2] = __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_2_145;
                v192[3] = &unk_279C68360;
                v192[4] = self;
                v193 = v29;
                v51 = completionCopy;
                v194 = completionCopy;
                [(SVXSession *)self _startRequestWithInfo:requestInfo4 clearsContext:0 deviceSetupContext:context taskTracker:v56 completion:v192];

                objc_autoreleasePoolPop(v86);
LABEL_113:
                speechRequestOptions = 0;
                speechSynthesisRequest = 0;
                languageCode = 0;
LABEL_114:
                stateCopy = v181;
LABEL_213:
                [(NSUserActivity *)self->_userActivity becomeCurrent];
LABEL_262:

                trackerCopy = v179;
LABEL_263:
                v29 = contextCopy;
                goto LABEL_264;
              }

              languageCode = 0;
              speechRequestOptions = 0;
LABEL_257:
              v173 = *v20;
              if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
                v225 = 2112;
                *v226 = v29;
                _os_log_error_impl(&dword_2695B9000, v173, OS_LOG_TYPE_ERROR, "%s Unable to activate with context %@.", buf, 0x16u);
              }

              v174 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:4 userInfo:0];
              v175 = objc_loadWeakRetained(&self->_delegate);
              [v175 session:self didNotActivateWithContext:v29 error:v174];

              v51 = completionCopy;
              if (completionCopy)
              {
                (*(completionCopy + 2))(completionCopy, v174);
              }

              speechSynthesisRequest = 0;
              stateCopy = v181;
              goto LABEL_262;
            }

            goto LABEL_139;
          }

LABEL_49:
          requestInfo3 = [contextCopy requestInfo];
          requestInfo4 = requestInfo3;
          if (requestInfo3)
          {
            v56 = v179;
            if ([requestInfo3 isSpeechRequest])
            {
              speechRequestOptions = [requestInfo4 speechRequestOptions];

              requestInfo4 = 0;
            }

            else
            {
              speechRequestOptions = 0;
            }
          }

          else
          {
            speechRequestOptions = [objc_alloc(MEMORY[0x277CEF498]) initWithActivationEvent:0];
            v56 = v179;
          }

          if (![speechRequestOptions endpointerOperationMode])
          {
            [speechRequestOptions setEndpointerOperationMode:3];
          }

          [speechRequestOptions activationEventTime];
          if (v98 == 0.0)
          {
LABEL_133:
            if (![requestInfo4 timestamp] && !objc_msgSend(v29, "timestamp"))
            {
              mach_absolute_time();
            }

            AFMachAbsoluteTimeGetTimeInterval();
            [speechRequestOptions setActivationEventTime:?];
          }

LABEL_137:
          if ([speechRequestOptions activationEventMachAbsoluteTime])
          {
            if (!speechRequestOptions)
            {
              goto LABEL_111;
            }
          }

          else
          {
            timestamp7 = [requestInfo4 timestamp];
            if (!timestamp7)
            {
              timestamp7 = [v29 timestamp];
              if (!timestamp7)
              {
                timestamp7 = mach_absolute_time();
              }
            }

            [speechRequestOptions setActivationEventMachAbsoluteTime:timestamp7];
            if (!speechRequestOptions)
            {
              goto LABEL_111;
            }
          }

          goto LABEL_139;
        }

        requestInfo4 = [contextCopy requestInfo];
        v78 = *v20;
        if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
          v225 = 2112;
          *v226 = requestInfo4;
          _os_log_impl(&dword_2695B9000, v78, OS_LOG_TYPE_INFO, "%s requestInfo = %@", buf, 0x16u);
        }

        v56 = v179;
        if (![requestInfo4 isSpeechRequest])
        {
          goto LABEL_111;
        }

        speechRequestOptions = [requestInfo4 speechRequestOptions];

        if (speechRequestOptions)
        {
          if (![speechRequestOptions endpointerOperationMode])
          {
            [speechRequestOptions setEndpointerOperationMode:3];
          }

          [speechRequestOptions activationEventTime];
          if (v79 == 0.0)
          {
            if (![0 timestamp] && !objc_msgSend(contextCopy, "timestamp"))
            {
              mach_absolute_time();
            }

            AFMachAbsoluteTimeGetTimeInterval();
            [speechRequestOptions setActivationEventTime:?];
          }

          if (![speechRequestOptions activationEventMachAbsoluteTime])
          {
            timestamp8 = [0 timestamp];
            if (!timestamp8)
            {
              timestamp8 = [contextCopy timestamp];
              if (!timestamp8)
              {
                timestamp8 = mach_absolute_time();
              }
            }

            [speechRequestOptions setActivationEventMachAbsoluteTime:timestamp8];
          }

          requestInfo4 = 0;
LABEL_139:
          beginDate = [context beginDate];
          endDate = [context endDate];
          if (AFDeviceSetupIsActive())
          {
            activityState = self->_activityState;

            v102 = activityState == 1;
            contextCopy6 = context;
            if (!v102)
            {
              v103 = *v20;
              v29 = contextCopy;
              if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
                _os_log_error_impl(&dword_2695B9000, v103, OS_LOG_TYPE_ERROR, "%s Siri is in device setup mode and is active.", buf, 0xCu);
              }

              languageCode = 0;
              goto LABEL_257;
            }
          }

          else
          {
          }

          contexta = objc_autoreleasePoolPush();
          playbackStateSnapshot = [deviceContextCopy playbackStateSnapshot];
          playbackState = [playbackStateSnapshot playbackState];

          if ([speechRequestOptions isVoiceTrigger])
          {
            if (self->_currentRequestUUID)
            {
              v106 = *v20;
              if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
                _os_log_impl(&dword_2695B9000, v106, OS_LOG_TYPE_INFO, "%s Barged-in over Siri request.", buf, 0xCu);
              }

              v107 = 2;
            }

            else
            {
              v107 = 0;
            }

            if (synthesisState == 2)
            {
              v109 = *v20;
              if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
                _os_log_impl(&dword_2695B9000, v109, OS_LOG_TYPE_INFO, "%s Barged-in over Siri voice output.", buf, 0xCu);
              }

              v107 |= 4uLL;
            }

            homeAnnouncementSnapshot = [deviceContextCopy homeAnnouncementSnapshot];
            state = [homeAnnouncementSnapshot state];

            if (state)
            {
              v112 = *v20;
              if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
                _os_log_impl(&dword_2695B9000, v112, OS_LOG_TYPE_INFO, "%s Barged-in over home announcement playback.", buf, 0xCu);
              }

              v107 |= 0x20uLL;
            }

            if (playbackState == 1)
            {
              v113 = *v20;
              if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
                _os_log_impl(&dword_2695B9000, v113, OS_LOG_TYPE_INFO, "%s Barged-in over media playback.", buf, 0xCu);
              }

              v107 |= 1uLL;
            }

            alarmSnapshot = [deviceContextCopy alarmSnapshot];
            hasFiringAlarms = [alarmSnapshot hasFiringAlarms];

            if (hasFiringAlarms)
            {
              v116 = *v20;
              if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
                _os_log_impl(&dword_2695B9000, v116, OS_LOG_TYPE_INFO, "%s Barged-in over firing alarms.", buf, 0xCu);
              }

              v107 |= 8uLL;
            }

            timerSnapshot = [deviceContextCopy timerSnapshot];
            hasFiringTimers = [timerSnapshot hasFiringTimers];

            if (hasFiringTimers)
            {
              v119 = *v20;
              if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
                _os_log_impl(&dword_2695B9000, v119, OS_LOG_TYPE_INFO, "%s Barged-in over firing timers.", buf, 0xCu);
              }

              v107 |= 0x10uLL;
            }

            [speechRequestOptions setBargeInOptions:v107];
          }

          if (([(AFInstanceContext *)self->_instanceContext supportsAudioPowerUpdate]& 1) == 0)
          {
            v120 = *v20;
            if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
              _os_log_impl(&dword_2695B9000, v120, OS_LOG_TYPE_INFO, "%s Disabled input and output audio power updates.", buf, 0xCu);
            }

            [speechRequestOptions setDisableInputAudioPowerUpdate:1];
            [speechRequestOptions setDisableOutputAudioPowerUpdate:1];
          }

          [speechRequestOptions setIsMediaPlaying:playbackState == 1];
          [speechRequestOptions setSpeechSynthesisRecord:recordCopy];
          beginDate2 = [contextCopy6 beginDate];
          endDate2 = [contextCopy6 endDate];
          IsActive = AFDeviceSetupIsActive();

          if (IsActive)
          {
            [speechRequestOptions setClientAnalyticsContext:&unk_287A34F28];
          }

          if ([contextCopy source] != 4)
          {
            [speechRequestOptions setReloadSmartSiriVolume:1];
          }

          v124 = *v20;
          if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
          {
            [speechRequestOptions activationEvent];
            v125 = AFSpeechEventGetDescription();
            *buf = 136315394;
            v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
            v225 = 2112;
            *v226 = v125;
            _os_log_impl(&dword_2695B9000, v124, OS_LOG_TYPE_INFO, "%s speechRequestOptions.activationEvent = %@", buf, 0x16u);
          }

          v126 = *v20;
          if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
          {
            [speechRequestOptions activationEventTime];
            *buf = 136315394;
            v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
            v225 = 2048;
            *v226 = v127;
            _os_log_impl(&dword_2695B9000, v126, OS_LOG_TYPE_INFO, "%s speechRequestOptions.activationEventTime = %f", buf, 0x16u);
          }

          v128 = *v20;
          if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
          {
            activationEventMachAbsoluteTime = [speechRequestOptions activationEventMachAbsoluteTime];
            *buf = 136315394;
            v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
            v225 = 2048;
            *v226 = activationEventMachAbsoluteTime;
            _os_log_impl(&dword_2695B9000, v128, OS_LOG_TYPE_INFO, "%s speechRequestOptions.activationEventMachAbsoluteTime = %llu", buf, 0x16u);
          }

          v130 = *v20;
          if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
          {
            bargeInOptions = [speechRequestOptions bargeInOptions];
            *buf = 136315394;
            v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
            v225 = 2048;
            *v226 = bargeInOptions;
            _os_log_impl(&dword_2695B9000, v130, OS_LOG_TYPE_INFO, "%s speechRequestOptions.bargeInOptions = %lu", buf, 0x16u);
          }

          v132 = *v20;
          if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
          {
            disableInputAudioPowerUpdate = [speechRequestOptions disableInputAudioPowerUpdate];
            *buf = 136315394;
            v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
            v225 = 1024;
            *v226 = disableInputAudioPowerUpdate;
            _os_log_impl(&dword_2695B9000, v132, OS_LOG_TYPE_INFO, "%s speechRequestOptions.disableInputAudioPowerUpdate = %d", buf, 0x12u);
          }

          v134 = *v20;
          if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
          {
            disableOutputAudioPowerUpdate = [speechRequestOptions disableOutputAudioPowerUpdate];
            *buf = 136315394;
            v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
            v225 = 1024;
            *v226 = disableOutputAudioPowerUpdate;
            _os_log_impl(&dword_2695B9000, v134, OS_LOG_TYPE_INFO, "%s speechRequestOptions.disableOutputAudioPowerUpdate = %d", buf, 0x12u);
          }

          v136 = *v20;
          if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
          {
            [speechRequestOptions endpointerOperationMode];
            v137 = AFSpeechEndpointerOperationModeGetName();
            *buf = 136315394;
            v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
            v225 = 2112;
            *v226 = v137;
            _os_log_impl(&dword_2695B9000, v136, OS_LOG_TYPE_INFO, "%s speechRequestOptions.endpointerOperationMode = %@", buf, 0x16u);
          }

          v138 = *v20;
          if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
          {
            [speechRequestOptions homeButtonDownEventTime];
            *buf = 136315394;
            v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
            v225 = 2048;
            *v226 = v139;
            _os_log_impl(&dword_2695B9000, v138, OS_LOG_TYPE_INFO, "%s speechRequestOptions.homeButtonDownEventTime = %f", buf, 0x16u);
          }

          v140 = *v20;
          if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
          {
            homeButtonDownEventMachAbsoluteTime = [speechRequestOptions homeButtonDownEventMachAbsoluteTime];
            *buf = 136315394;
            v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
            v225 = 2048;
            *v226 = homeButtonDownEventMachAbsoluteTime;
            _os_log_impl(&dword_2695B9000, v140, OS_LOG_TYPE_INFO, "%s speechRequestOptions.homeButtonDownEventMachAbsoluteTime = %llu", buf, 0x16u);
          }

          v142 = *v20;
          if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
          {
            isMediaPlaying = [speechRequestOptions isMediaPlaying];
            *buf = 136315394;
            v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
            v225 = 1024;
            *v226 = isMediaPlaying;
            _os_log_impl(&dword_2695B9000, v142, OS_LOG_TYPE_INFO, "%s speechRequestOptions.isMediaPlaying = %d", buf, 0x12u);
          }

          v144 = *v20;
          if (os_log_type_enabled(v144, OS_LOG_TYPE_INFO))
          {
            speechSynthesisRecord = [speechRequestOptions speechSynthesisRecord];
            *buf = 136315394;
            v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
            v225 = 2112;
            *v226 = speechSynthesisRecord;
            _os_log_impl(&dword_2695B9000, v144, OS_LOG_TYPE_INFO, "%s speechRequestOptions.speechSynthesisRecord = %@", buf, 0x16u);
          }

          v146 = *v20;
          if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
          {
            recordingAlertPolicy = [speechRequestOptions recordingAlertPolicy];
            *buf = 136315394;
            v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
            v225 = 2112;
            *v226 = recordingAlertPolicy;
            _os_log_impl(&dword_2695B9000, v146, OS_LOG_TYPE_INFO, "%s speechRequestOptions.recordingAlertPolicy = %@", buf, 0x16u);
          }

          v148 = *v20;
          if (os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
          {
            reloadSmartSiriVolume = [speechRequestOptions reloadSmartSiriVolume];
            *buf = 136315394;
            v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
            v225 = 1024;
            *v226 = reloadSmartSiriVolume;
            _os_log_impl(&dword_2695B9000, v148, OS_LOG_TYPE_INFO, "%s speechRequestOptions.reloadSmartSiriVolume = %d", buf, 0x12u);
          }

          v195[0] = MEMORY[0x277D85DD0];
          v195[1] = 3221225472;
          v195[2] = __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_144;
          v195[3] = &unk_279C68360;
          v195[4] = self;
          v196 = contextCopy;
          v51 = completionCopy;
          v197 = completionCopy;
          stateCopy = v181;
          [(SVXSession *)self _startSpeechRequestWithOptions:speechRequestOptions clearsContext:0 deviceSetupContext:contextCopy6 deviceProblemsState:v181 localDeviceContext:deviceContextCopy taskTracker:v179 completion:v195];

          objc_autoreleasePoolPop(contexta);
          goto LABEL_212;
        }

        languageCode = 0;
LABEL_227:
        requestInfo4 = 0;
        goto LABEL_257;
      }

      if (source3 != 5)
      {
        requestInfo5 = [contextCopy requestInfo];
        v60 = *v20;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
          v225 = 2112;
          *v226 = requestInfo5;
          _os_log_impl(&dword_2695B9000, v60, OS_LOG_TYPE_INFO, "%s requestInfo = %@", buf, 0x16u);
        }

        v61 = MEMORY[0x277CEF0C8];
        v62 = os_signpost_id_generate(*MEMORY[0x277CEF0C8]);
        v63 = *v61;
        v64 = v63;
        v56 = v179;
        if (v62 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_2695B9000, v64, OS_SIGNPOST_INTERVAL_BEGIN, v62, "voiceUILaunch", "enableTelemetry=YES", buf, 2u);
        }

        self->_launchSignpostID = v62;
        if (![requestInfo5 isSpeechRequest] || (objc_msgSend(requestInfo5, "speechRequestOptions"), speechRequestOptions = objc_claimAutoreleasedReturnValue(), requestInfo5, requestInfo5 = 0, requestInfo4 = 0, !speechRequestOptions))
        {
          speechRequestOptions = [objc_alloc(MEMORY[0x277CEF498]) initWithActivationEvent:8];
          requestInfo4 = requestInfo5;
        }

        if (![speechRequestOptions endpointerOperationMode])
        {
          [speechRequestOptions setEndpointerOperationMode:3];
        }

        [speechRequestOptions activationEventTime];
        v29 = contextCopy;
        if (v65 == 0.0)
        {
          goto LABEL_133;
        }

        goto LABEL_137;
      }

      systemEvent = [contextCopy systemEvent];
      type = [systemEvent type];
      if (type <= 6)
      {
        if (type == 1)
        {
          speechSynthesisRequest = [[SVXSpeechSynthesisRequest alloc] initWithPriority:3 options:1 speakableText:0 speakableContext:0 localizationKey:@"SIRI_VOX_SYSTEM_DEVICE_SETUP_COMPLETION" presynthesizedAudio:0 streamID:0];
          audioSessionID = [systemEvent audioSessionID];
          languageCode = 0;
          v154 = 0;
          v155 = 0;
          v156 = systemEvent;
          v157 = 4;
LABEL_254:

          if (speechSynthesisRequest)
          {
            v178 = objc_autoreleasePoolPush();
            v190[0] = MEMORY[0x277D85DD0];
            v190[1] = 3221225472;
            v190[2] = __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_3_146;
            v190[3] = &unk_279C682E8;
            v190[4] = self;
            v191 = contextCopy;
            v188[0] = MEMORY[0x277D85DD0];
            v188[1] = 3221225472;
            v188[2] = __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_4;
            v188[3] = &unk_279C68310;
            v188[4] = self;
            v51 = completionCopy;
            v189 = completionCopy;
            [(SVXSession *)self _startSpeechSynthesisRequest:speechSynthesisRequest languageCode:languageCode voiceName:0 gender:v154 audioSessionID:audioSessionID introductionSoundID:v157 conclusionSoundID:v155 taskTracker:v179 postActivationHandler:v190 completion:v188];

            objc_autoreleasePoolPop(v178);
            requestInfo4 = 0;
            speechRequestOptions = 0;
            contextCopy6 = context;
            goto LABEL_114;
          }

          speechRequestOptions = 0;
          requestInfo4 = 0;
          contextCopy6 = context;
          v29 = contextCopy;
          goto LABEL_257;
        }

        if (type == 2)
        {
          speechSynthesisRequest = [[SVXSpeechSynthesisRequest alloc] initWithPriority:3 options:1 speakableText:0 speakableContext:0 localizationKey:@"SIRI_VOX_SYSTEM_FACTORY_RESET_CONFIRMATION" presynthesizedAudio:0 streamID:0];
          goto LABEL_241;
        }

        contextCopy6 = context;
        if (type != 3)
        {
          goto LABEL_226;
        }

        v150 = *v20;
        if (os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
          _os_log_impl(&dword_2695B9000, v150, OS_LOG_TYPE_INFO, "%s Starting active audio session request for Audio Ducking Coordination...", buf, 0xCu);
        }

        v207[0] = MEMORY[0x277D85DD0];
        v207[1] = 3221225472;
        v207[2] = __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_133;
        v207[3] = &unk_279C68360;
        v207[4] = self;
        v208 = contextCopy;
        v51 = completionCopy;
        v209 = completionCopy;
        [(SVXSession *)self _startActiveAudioSessionRequestForType:1 taskTracker:v179 completion:v207];

        v151 = v208;
      }

      else
      {
        if (type <= 11)
        {
          if (type == 7)
          {
            deviceSetupFlowScene = [systemEvent deviceSetupFlowScene];
            sceneID = [deviceSetupFlowScene sceneID];
            if (sceneID == 5)
            {
              v155 = 5;
            }

            else
            {
              v155 = 0;
            }

            v160 = *v20;
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
            {
              v161 = v160;
              if (sceneID > 9)
              {
                v162 = @"(unknown)";
              }

              else
              {
                v162 = off_279C689C8[sceneID];
              }

              v170 = v162;
              v171 = @"unspecified";
              v172 = off_279C677F8[v155];
              *buf = 136315906;
              v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
              v225 = 2112;
              *v226 = v170;
              *&v226[8] = 2112;
              v227 = @"unspecified";
              v228 = 2112;
              v229 = v172;
              _os_log_impl(&dword_2695B9000, v161, OS_LOG_TYPE_INFO, "%s deviceSetupFlowSceneID = %@, introductionSoundID = %@, conclusionSoundID = %@", buf, 0x2Au);
            }

            speechSynthesisRequest = SVXDeviceSetupCreateSpeechSynthesisRequestForSceneWithID([deviceSetupFlowScene sceneID]);
            audioSessionID = [systemEvent audioSessionID];

            languageCode = 0;
            v154 = 0;
            goto LABEL_253;
          }

          if (type == 8)
          {
            storeDemo = [systemEvent storeDemo];
            v91 = *v20;
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
              v225 = 2112;
              *v226 = storeDemo;
              _os_log_impl(&dword_2695B9000, v91, OS_LOG_TYPE_INFO, "%s storeDemo = %@", buf, 0x16u);
            }

            languageCode = [storeDemo languageCode];
            gender = [storeDemo gender];
            v93 = SVXStoreDemoGetLocalizationKey([storeDemo transcriptID]);
            if (v93)
            {
              v94 = [(SVXSession *)self _connection:1];
              [(SVXSession *)self _createClientConfiguration:context storeDemo:storeDemo preferences:self->_preferences];
              v96 = v95 = storeDemo;
              [v94 setConfiguration:v96];

              storeDemo = v95;
              v97 = v93;
              speechSynthesisRequest = [[SVXSpeechSynthesisRequest alloc] initWithPriority:3 options:1 speakableText:0 speakableContext:0 localizationKey:v93 presynthesizedAudio:0 streamID:0];
            }

            else
            {
              v97 = 0;
              v169 = *v20;
              if (os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
                _os_log_impl(&dword_2695B9000, v169, OS_LOG_TYPE_INFO, "%s No valid localizationKey", buf, 0xCu);
              }

              speechSynthesisRequest = 0;
            }

            v154 = gender;
            audioSessionID = [systemEvent audioSessionID];

            goto LABEL_249;
          }

LABEL_226:

          languageCode = 0;
          speechRequestOptions = 0;
          goto LABEL_227;
        }

        if (type != 12)
        {
          if (type != 13)
          {
            goto LABEL_226;
          }

          speechSynthesisRequest = [systemEvent speechSynthesisRequest];
          v152 = *v20;
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
            v225 = 2112;
            *v226 = speechSynthesisRequest;
            _os_log_impl(&dword_2695B9000, v152, OS_LOG_TYPE_INFO, "%s speechSynthesisRequest = %@", buf, 0x16u);
          }

LABEL_241:
          audioSessionID = [systemEvent audioSessionID];
          languageCode = 0;
          v154 = 0;
LABEL_249:
          v155 = 0;
LABEL_253:
          v156 = systemEvent;
          v157 = 0;
          goto LABEL_254;
        }

        if ([(SVXSessionUtils *)self->_sessionUtils isSpeechRecordingAllowedWithActivationContext:self->_currentActivationContext])
        {
          v163 = *v20;
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
          {
            currentActivationContext = self->_currentActivationContext;
            *buf = 136315650;
            v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
            v225 = 2112;
            *v226 = contextCopy;
            *&v226[8] = 2112;
            v227 = currentActivationContext;
            _os_log_error_impl(&dword_2695B9000, v163, OS_LOG_TYPE_ERROR, "%s Unable to activate with context %@ because the current activation context %@ is a speech request.", buf, 0x20u);
          }

          v164 = MEMORY[0x277CCA9B8];
          v219 = *MEMORY[0x277CCA450];
          v220 = @"Rejected alarms and timers announcement activation because there's an ongoing speech request.";
          v165 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v220 forKeys:&v219 count:1];
          v166 = [v164 errorWithDomain:@"SiriVOXErrorDomain" code:5 userInfo:v165];

          v167 = objc_loadWeakRetained(&self->_delegate);
          [v167 session:self didNotActivateWithContext:contextCopy error:v166];

          v51 = completionCopy;
          if (completionCopy)
          {
            (*(completionCopy + 2))(completionCopy, v166);
          }

          goto LABEL_244;
        }

        audioSessionID2 = [systemEvent audioSessionID];
        v198[0] = MEMORY[0x277D85DD0];
        v198[1] = 3221225472;
        v198[2] = __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_137;
        v198[3] = &unk_279C68338;
        v198[4] = self;
        v199 = 0;
        v206 = audioSessionID2;
        v204 = 0;
        v205 = 0;
        v203 = 0;
        v200 = v179;
        v201 = contextCopy;
        v51 = completionCopy;
        v202 = completionCopy;
        [(SVXSession *)self _getAlarmAndTimerFiringContextWithCompletion:v198];

        v151 = v199;
      }

LABEL_244:
      requestInfo4 = 0;
      speechRequestOptions = 0;
LABEL_212:
      speechSynthesisRequest = 0;
      languageCode = 0;
      goto LABEL_213;
    }

    if (source3 <= 2)
    {
      if (source3 == 1)
      {
        goto LABEL_72;
      }

      speechRequestOptions = 0;
      requestInfo4 = 0;
      if (source3 != 2)
      {
        goto LABEL_257;
      }

      goto LABEL_49;
    }

    if (source3 == 3)
    {
      v77 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
        _os_log_impl(&dword_2695B9000, v77, OS_LOG_TYPE_INFO, "%s Starting active audio session request for Myriad...", buf, 0xCu);
      }

      v210[0] = MEMORY[0x277D85DD0];
      v210[1] = 3221225472;
      v210[2] = __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_132;
      v210[3] = &unk_279C68360;
      v210[4] = self;
      v211 = contextCopy;
      v51 = completionCopy;
      v212 = completionCopy;
      [(SVXSession *)self _startActiveAudioSessionRequestForType:2 taskTracker:v179 completion:v210];

      requestInfo4 = 0;
      goto LABEL_113;
    }

    speechRequestOptions = [objc_alloc(MEMORY[0x277CEF498]) initWithActivationEvent:5];
    [speechRequestOptions setEndpointerOperationMode:3];
    if (recordCopy && (timestamp9 = [recordCopy beginTimestamp], v29 = contextCopy, v58 = objc_msgSend(recordCopy, "endTimestamp"), timestamp9) && v58)
    {
      if (timestamp9 <= v58)
      {
        timestamp9 = v58;
      }

      v56 = v179;
    }

    else
    {
      timestamp9 = [v29 timestamp];
      v56 = v179;
      if (!timestamp9)
      {
        goto LABEL_127;
      }
    }

    AFMachAbsoluteTimeGetTimeInterval();
    [speechRequestOptions setActivationEventTime:?];
    [speechRequestOptions setActivationEventMachAbsoluteTime:timestamp9];
LABEL_127:
    [speechRequestOptions setRecordingAlertPolicy:policyCopy];
    requestInfo4 = 0;
    if (!speechRequestOptions)
    {
      goto LABEL_111;
    }

    goto LABEL_139;
  }

  v49 = *v20;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v224 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]";
    _os_log_error_impl(&dword_2695B9000, v49, OS_LOG_TYPE_ERROR, "%s Siri is not reachable.", buf, 0xCu);
  }

  v50 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:2 userInfo:0];
  [(SVXSession *)self _requestWillBeginWithTaskTracker:trackerCopy];
  v213[0] = MEMORY[0x277D85DD0];
  v213[1] = 3221225472;
  v213[2] = __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke;
  v213[3] = &unk_279C682C0;
  v214 = trackerCopy;
  selfCopy = self;
  v216 = v50;
  v217 = contextCopy;
  v51 = completionCopy;
  v218 = completionCopy;
  requestInfo4 = v50;
  [(SVXSession *)self _waitForMyriadDecisionUsingHandler:v213];
  [(SVXSession *)self _requestDidEndWithOptions:6 error:0];

LABEL_264:
  v176 = *MEMORY[0x277D85DE8];
}

void __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315650;
    v17 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]_block_invoke";
    v18 = 1024;
    v19 = a2;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s Presenting error %d for task tracker %@", buf, 0x1Cu);
  }

  v6 = *(a1 + 40);
  if (a2)
  {
    v7 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_130;
    v12[3] = &unk_279C69038;
    v12[4] = v6;
    v8 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = *(a1 + 48);
    v15 = *(a1 + 64);
    [v6 _presentError:v8 taskTracker:v7 completion:v12];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(v6 + 29);
    [WeakRetained session:*(a1 + 40) didNotActivateWithContext:*(a1 + 56) error:*(a1 + 48)];

    v10 = *(a1 + 64);
    if (v10)
    {
      (*(v10 + 16))(v10, *(a1 + 48));
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_132(void *a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1[4] + 232));
  v4 = WeakRetained;
  v5 = a1[4];
  v6 = a1[5];
  if (v9)
  {
    [WeakRetained session:v5 didNotActivateWithContext:v6 error:?];
  }

  else
  {
    [WeakRetained session:v5 didActivateWithContext:v6];
  }

  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, v9);
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_133(void *a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1[4] + 232));
  v4 = WeakRetained;
  v5 = a1[4];
  v6 = a1[5];
  if (v9)
  {
    [WeakRetained session:v5 didNotActivateWithContext:v6 error:?];
  }

  else
  {
    [WeakRetained session:v5 didActivateWithContext:v6];
  }

  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, v9);
  }

  return MEMORY[0x2821F96F8]();
}

void __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_137(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[SVXSession _activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:taskTracker:completion:]_block_invoke";
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s alarmAndTimerFiringContext = %@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = [*(v5 + 424) createSpeechSynthesisRequestWithContext:v3 instanceContext:*(v5 + 208)];
  v13 = *(a1 + 96);
  v8 = *(a1 + 72);
  v7 = *(a1 + 80);
  v9 = *(a1 + 88);
  v14 = v3;
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_138;
  v17[3] = &unk_279C682E8;
  v17[4] = *(a1 + 32);
  v18 = *(a1 + 56);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_2_139;
  v15[3] = &unk_279C68310;
  v15[4] = *(a1 + 32);
  v16 = *(a1 + 64);
  [v5 _startSpeechSynthesisRequest:v6 languageCode:v11 voiceName:0 gender:v8 audioSessionID:v13 introductionSoundID:v7 conclusionSoundID:v9 taskTracker:v10 postActivationHandler:v17 completion:v15];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_144(void *a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1[4] + 232));
  v4 = WeakRetained;
  v5 = a1[4];
  v6 = a1[5];
  if (v9)
  {
    [WeakRetained session:v5 didNotActivateWithContext:v6 error:?];
  }

  else
  {
    [WeakRetained session:v5 didActivateWithContext:v6];
  }

  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, v9);
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_2_145(void *a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1[4] + 232));
  v4 = WeakRetained;
  v5 = a1[4];
  v6 = a1[5];
  if (v9)
  {
    [WeakRetained session:v5 didNotActivateWithContext:v6 error:?];
  }

  else
  {
    [WeakRetained session:v5 didActivateWithContext:v6];
  }

  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, v9);
  }

  return MEMORY[0x2821F96F8]();
}

void __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_3_146(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 232));
  v4 = WeakRetained;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v7)
  {
    [WeakRetained session:v5 didNotActivateWithContext:v6 error:v7];
  }

  else
  {
    [WeakRetained session:v5 didActivateWithContext:v6];
  }
}

void __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_5;
  v7[3] = &unk_279C68EF8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 _performBlockAfterResignActive:v7];
}

uint64_t __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_138(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 232));
  v4 = WeakRetained;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v7)
  {
    [WeakRetained session:v5 didNotActivateWithContext:v6 error:v7];
  }

  else
  {
    [WeakRetained session:v5 didActivateWithContext:v6];
  }
}

void __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_2_139(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_3;
  v7[3] = &unk_279C68EF8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 _performBlockAfterResignActive:v7];
}

uint64_t __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_130(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_2;
  v7[3] = &unk_279C69038;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 _performBlockAfterResignActive:v7];
}

uint64_t __194__SVXSession__activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_taskTracker_completion___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 232));
  [WeakRetained session:a1[4] didNotActivateWithContext:a1[5] error:a1[6]];

  result = a1[7];
  if (result)
  {
    v4 = a1[6];
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)taskTrackingCenterDidBecomeIdle:(id)idle
{
  v14 = *MEMORY[0x277D85DE8];
  idleCopy = idle;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[SVXSession taskTrackingCenterDidBecomeIdle:]";
    v12 = 2112;
    v13 = idleCopy;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s taskTrackingCenter = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__SVXSession_taskTrackingCenterDidBecomeIdle___block_invoke;
  v9[3] = &unk_279C68C68;
  v9[4] = self;
  v9[5] = a2;
  [(SVXPerforming *)performer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __46__SVXSession_taskTrackingCenterDidBecomeIdle___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = NSStringFromSelector(*(a1 + 40));
  [v1 _resignActiveForReason:v2];
}

- (void)taskTrackingCenter:(id)center didEndTrackingTaskWithContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  contextCopy = context;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[SVXSession taskTrackingCenter:didEndTrackingTaskWithContext:]";
    v11 = 2112;
    v12 = centerCopy;
    v13 = 2112;
    v14 = contextCopy;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s taskTrackingCenter = %@, context = %@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)taskTrackingCenter:(id)center didBeginTrackingTaskWithContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  contextCopy = context;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[SVXSession taskTrackingCenter:didBeginTrackingTaskWithContext:]";
    v11 = 2112;
    v12 = centerCopy;
    v13 = 2112;
    v14 = contextCopy;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s taskTrackingCenter = %@, context = %@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)taskTrackingCenterWillBecomeBusy:(id)busy
{
  v13 = *MEMORY[0x277D85DE8];
  busyCopy = busy;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[SVXSession taskTrackingCenterWillBecomeBusy:]";
    v11 = 2112;
    v12 = busyCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s taskTrackingCenter = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__SVXSession_taskTrackingCenterWillBecomeBusy___block_invoke;
  v8[3] = &unk_279C68FC0;
  v8[4] = self;
  [(SVXPerforming *)performer performBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stateFeedbackManagerDidStartPlaybackForStateFeedbackType:(int64_t)type
{
  v14 = *MEMORY[0x277D85DE8];
  if (!type && self->_isStateFeedbackEnabled && self->_currentState == 2)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v5 = v4;
      v6 = SRUIFSiriSessionEventGetDescription();
      v8 = 136315650;
      v9 = "[SVXSession stateFeedbackManagerDidStartPlaybackForStateFeedbackType:]";
      v10 = 2048;
      v11 = 0;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s #statefeedback SRUIFSiriStateFeedbackType:%ld SRUIFSiriSessionEvent: %@", &v8, 0x20u);
    }

    [(SVXSession *)self _setCurrentState:3];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)speechSynthesizerDidFailRequest:(id)request taskTracker:(id)tracker error:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  trackerCopy = tracker;
  errorCopy = error;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v22 = "[SVXSession speechSynthesizerDidFailRequest:taskTracker:error:]";
    v23 = 2112;
    v24 = requestCopy;
    v25 = 2112;
    v26 = trackerCopy;
    v27 = 2112;
    v28 = errorCopy;
    _os_log_debug_impl(&dword_2695B9000, v11, OS_LOG_TYPE_DEBUG, "%s request = %@, taskTracker = %@, error = %@", buf, 0x2Au);
  }

  performer = self->_performer;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__SVXSession_speechSynthesizerDidFailRequest_taskTracker_error___block_invoke;
  v17[3] = &unk_279C68930;
  v17[4] = self;
  v18 = requestCopy;
  v19 = trackerCopy;
  v20 = errorCopy;
  v13 = errorCopy;
  v14 = trackerCopy;
  v15 = requestCopy;
  [(SVXPerforming *)performer performBlock:v17];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)speechSynthesizerDidInterruptRequest:(id)request taskTracker:(id)tracker
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  trackerCopy = tracker;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v17 = "[SVXSession speechSynthesizerDidInterruptRequest:taskTracker:]";
    v18 = 2112;
    v19 = requestCopy;
    v20 = 2112;
    v21 = trackerCopy;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s request = %@, taskTracker = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__SVXSession_speechSynthesizerDidInterruptRequest_taskTracker___block_invoke;
  v13[3] = &unk_279C68ED0;
  v13[4] = self;
  v14 = requestCopy;
  v15 = trackerCopy;
  v10 = trackerCopy;
  v11 = requestCopy;
  [(SVXPerforming *)performer performBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)speechSynthesizerDidCancelRequest:(id)request taskTracker:(id)tracker
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  trackerCopy = tracker;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v17 = "[SVXSession speechSynthesizerDidCancelRequest:taskTracker:]";
    v18 = 2112;
    v19 = requestCopy;
    v20 = 2112;
    v21 = trackerCopy;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s request = %@, taskTracker = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__SVXSession_speechSynthesizerDidCancelRequest_taskTracker___block_invoke;
  v13[3] = &unk_279C68ED0;
  v13[4] = self;
  v14 = requestCopy;
  v15 = trackerCopy;
  v10 = trackerCopy;
  v11 = requestCopy;
  [(SVXPerforming *)performer performBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)speechSynthesizerDidFinishRequest:(id)request utteranceInfo:(id)info record:(id)record taskTracker:(id)tracker
{
  v34 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  infoCopy = info;
  recordCopy = record;
  trackerCopy = tracker;
  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v25 = "[SVXSession speechSynthesizerDidFinishRequest:utteranceInfo:record:taskTracker:]";
    v26 = 2112;
    v27 = requestCopy;
    v28 = 2112;
    v29 = infoCopy;
    v30 = 2112;
    v31 = recordCopy;
    v32 = 2112;
    v33 = trackerCopy;
    _os_log_debug_impl(&dword_2695B9000, v14, OS_LOG_TYPE_DEBUG, "%s request = %@, utteranceInfo = %@, record = %@, taskTracker = %@", buf, 0x34u);
  }

  performer = self->_performer;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__SVXSession_speechSynthesizerDidFinishRequest_utteranceInfo_record_taskTracker___block_invoke;
  v20[3] = &unk_279C68930;
  v20[4] = self;
  v21 = requestCopy;
  v22 = recordCopy;
  v23 = trackerCopy;
  v16 = trackerCopy;
  v17 = recordCopy;
  v18 = requestCopy;
  [(SVXPerforming *)performer performBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)speechSynthesizerDidStartRequest:(id)request record:(id)record taskTracker:(id)tracker
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  recordCopy = record;
  trackerCopy = tracker;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v22 = "[SVXSession speechSynthesizerDidStartRequest:record:taskTracker:]";
    v23 = 2112;
    v24 = requestCopy;
    v25 = 2112;
    v26 = recordCopy;
    v27 = 2112;
    v28 = trackerCopy;
    _os_log_debug_impl(&dword_2695B9000, v11, OS_LOG_TYPE_DEBUG, "%s request = %@, record = %@, taskTracker = %@", buf, 0x2Au);
  }

  performer = self->_performer;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__SVXSession_speechSynthesizerDidStartRequest_record_taskTracker___block_invoke;
  v17[3] = &unk_279C68930;
  v17[4] = self;
  v18 = requestCopy;
  v19 = recordCopy;
  v20 = trackerCopy;
  v13 = trackerCopy;
  v14 = recordCopy;
  v15 = requestCopy;
  [(SVXPerforming *)performer performBlock:v17];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)speechSynthesizerWillStartRequest:(id)request taskTracker:(id)tracker
{
  v48 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  trackerCopy = tracker;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v43 = "[SVXSession speechSynthesizerWillStartRequest:taskTracker:]";
    v44 = 2112;
    v45 = requestCopy;
    v46 = 2112;
    v47 = trackerCopy;
    _os_log_debug_impl(&dword_2695B9000, v9, OS_LOG_TYPE_DEBUG, "%s request = %@, taskTracker = %@", buf, 0x20u);
  }

  if ([(SVXSession *)self _isTapToRadarEnabled])
  {
    dialogIdentifier = [trackerCopy dialogIdentifier];
    _tapToRadarManager = [(SVXSession *)self _tapToRadarManager];
    getRMVIssueDialogIdentifiers = [_tapToRadarManager getRMVIssueDialogIdentifiers];
    v13 = [getRMVIssueDialogIdentifiers containsObject:dialogIdentifier];

    if (v13)
    {
      v14 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v43 = "[SVXSession speechSynthesizerWillStartRequest:taskTracker:]";
        v44 = 2112;
        v45 = dialogIdentifier;
        _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s RMV issue (%@) detected, initiating auto tap-to-radar", buf, 0x16u);
      }

      context = [trackerCopy context];
      requestUUID = [context requestUUID];
      v17 = @"Siri detected a voice recognition error";
      v18 = @"RMV";
      v19 = @"Recognize My Voice";
LABEL_8:
      selfCopy2 = self;
      v21 = dialogIdentifier;
      v22 = requestUUID;
LABEL_13:
      [(SVXSession *)selfCopy2 _promptRadarWithReason:v21 requestID:v22 displayReason:v17 issueTitleName:v18 issueDescName:v19];

LABEL_14:
      goto LABEL_15;
    }

    getDomainFatalIssueDialogIdentifiers = [_tapToRadarManager getDomainFatalIssueDialogIdentifiers];
    v24 = [getDomainFatalIssueDialogIdentifiers containsObject:dialogIdentifier];

    if (v24)
    {
      v25 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v43 = "[SVXSession speechSynthesizerWillStartRequest:taskTracker:]";
        v44 = 2112;
        v45 = dialogIdentifier;
        _os_log_impl(&dword_2695B9000, v25, OS_LOG_TYPE_INFO, "%s Domain Fatal issue (%@) detected, initiating auto tap-to-radar", buf, 0x16u);
      }

      context = [trackerCopy context];
      requestUUID = [context requestUUID];
      v17 = @"Siri detected a domain error";
      v18 = @"Domain Fatal";
      selfCopy2 = self;
      v21 = dialogIdentifier;
      v22 = requestUUID;
      v19 = @"Domain Fatal";
      goto LABEL_13;
    }

    getWebSearchIssueDialogIdentifiers = [_tapToRadarManager getWebSearchIssueDialogIdentifiers];
    if ([getWebSearchIssueDialogIdentifiers containsObject:dialogIdentifier])
    {
      getEarlyCutoffUtterances = [_tapToRadarManager getEarlyCutoffUtterances];
      getRecognitionText = [_tapToRadarManager getRecognitionText];
      lowercaseString = [getRecognitionText lowercaseString];
      v38 = [getEarlyCutoffUtterances containsObject:lowercaseString];

      if (v38)
      {
        v34 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v43 = "[SVXSession speechSynthesizerWillStartRequest:taskTracker:]";
          v44 = 2112;
          v45 = dialogIdentifier;
          _os_log_impl(&dword_2695B9000, v34, OS_LOG_TYPE_INFO, "%s Early cutoff issue (%@) detected, initiating auto tap-to-radar", buf, 0x16u);
        }

        context = [trackerCopy context];
        requestUUID = [context requestUUID];
        v17 = @"Siri detected a potential speech problem";
        v18 = @"ASR Early Cutoff";
        v19 = @"Speech Recognition early cutoff caused web search";
        goto LABEL_8;
      }
    }

    else
    {
    }

    getCompanionCommunicationIssueDialogIdentifiers = [_tapToRadarManager getCompanionCommunicationIssueDialogIdentifiers];
    v36 = [getCompanionCommunicationIssueDialogIdentifiers containsObject:dialogIdentifier];

    if (!v36)
    {
      goto LABEL_14;
    }

    v37 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v43 = "[SVXSession speechSynthesizerWillStartRequest:taskTracker:]";
      v44 = 2112;
      v45 = dialogIdentifier;
      _os_log_impl(&dword_2695B9000, v37, OS_LOG_TYPE_INFO, "%s Companion communication issue %@) detected, initiating auto tap-to-radar", buf, 0x16u);
    }

    context = [trackerCopy context];
    requestUUID = [context requestUUID];
    v17 = @"Siri detected a companion communication problem";
    v18 = @"Orchestration";
    v19 = @"Companion communication problem";
    goto LABEL_8;
  }

LABEL_15:
  performer = self->_performer;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __60__SVXSession_speechSynthesizerWillStartRequest_taskTracker___block_invoke;
  v39[3] = &unk_279C68ED0;
  v39[4] = self;
  v40 = requestCopy;
  v41 = trackerCopy;
  v27 = trackerCopy;
  v28 = requestCopy;
  [(SVXPerforming *)performer performBlock:v39];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)speechSynthesizerWillEnqueueRequest:(id)request taskTracker:(id)tracker
{
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  trackerCopy = tracker;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[SVXSession speechSynthesizerWillEnqueueRequest:taskTracker:]";
    v11 = 2112;
    v12 = requestCopy;
    v13 = 2112;
    v14 = trackerCopy;
    _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s request = %@, taskTracker = %@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)speechSynthesizerDidBecomeIdle
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v8 = "[SVXSession speechSynthesizerDidBecomeIdle]";
    _os_log_debug_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  performer = self->_performer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SVXSession_speechSynthesizerDidBecomeIdle__block_invoke;
  v6[3] = &unk_279C68FC0;
  v6[4] = self;
  [(SVXPerforming *)performer performBlock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)speechSynthesizerDidBecomeBusy
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v8 = "[SVXSession speechSynthesizerDidBecomeBusy]";
    _os_log_debug_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  performer = self->_performer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SVXSession_speechSynthesizerDidBecomeBusy__block_invoke;
  v6[3] = &unk_279C68FC0;
  v6[4] = self;
  [(SVXPerforming *)performer performBlock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)acquireAudioSessionForReason:(id)reason completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[SVXSession acquireAudioSessionForReason:completion:]";
    v23 = 2112;
    v24 = reasonCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s reason = %@", buf, 0x16u);
  }

  LOWORD(v16) = 0;
  v9 = [[SVXTaskContext alloc] initWithOrigin:12 timestamp:mach_absolute_time() sessionUUID:0 requestUUID:self->_currentRequestUUID aceId:0 refId:0 dialogIdentifier:0 dialogPhase:0 isUUFR:v16 listensAfterSpeaking:0 listenAfterSpeakingBehavior:0 activationContext:0 deactivationContext:0 error:?];
  v10 = [(SVXTaskTrackingCenter *)self->_taskTrackingCenter beginTrackingTaskWithContext:v9 instrumentationContext:self->_currentRequestInstrumentationContext];
  performer = self->_performer;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__SVXSession_acquireAudioSessionForReason_completion___block_invoke;
  v17[3] = &unk_279C69038;
  v17[4] = self;
  v18 = reasonCopy;
  v19 = v10;
  v20 = completionCopy;
  v12 = v10;
  v13 = reasonCopy;
  v14 = completionCopy;
  [(SVXPerforming *)performer performBlock:v17];

  v15 = *MEMORY[0x277D85DE8];
}

void __54__SVXSession_acquireAudioSessionForReason_completion___block_invoke(id *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__SVXSession_acquireAudioSessionForReason_completion___block_invoke_2;
  v18[3] = &unk_279C68248;
  v18[4] = a1[4];
  v2 = [MEMORY[0x277CEF398] newWithBuilder:v18];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[SVXSession acquireAudioSessionForReason:completion:]_block_invoke";
    v21 = 2112;
    v22 = v2;
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s BEGIN -acquireAudioSession (context = %@)", buf, 0x16u);
  }

  v4 = mach_absolute_time();
  v5 = [a1[4] _connection:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__SVXSession_acquireAudioSessionForReason_completion___block_invoke_90;
  v13[3] = &unk_279C68298;
  v17 = v4;
  v14 = v2;
  v12 = a1[4];
  v6 = a1[7];
  v7 = a1[5];
  *&v8 = a1[6];
  *(&v8 + 1) = v6;
  *&v9 = v12;
  *(&v9 + 1) = v7;
  v15 = v9;
  v16 = v8;
  v10 = v2;
  [v5 acquireAudioSessionWithContext:v10 completion:v13];

  v11 = *MEMORY[0x277D85DE8];
}

void __54__SVXSession_acquireAudioSessionForReason_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 setReason:3];
  v3 = [*(*(a1 + 32) + 56) requestInfo];
  v4 = [v3 activationEvent];

  if (v4 == 6)
  {
    [v6 setOptions:2];
  }

  else if (*(*(a1 + 32) + 80))
  {
    [v6 setSpeechRequestOptions:?];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CEF498]) initWithActivationEvent:0];
    [v6 setSpeechRequestOptions:v5];
  }
}

void __54__SVXSession_acquireAudioSessionForReason_completion___block_invoke_90(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  mach_absolute_time();
  v7 = *(a1 + 72);
  AFMachAbsoluteTimeGetTimeInterval();
  v9 = v8;
  v10 = [v5 error];
  v11 = *MEMORY[0x277CEF098];
  if (v10)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 136315906;
      v28 = "[SVXSession acquireAudioSessionForReason:completion:]_block_invoke";
      v29 = 2112;
      v30 = v12;
      v31 = 2048;
      v32 = v9;
      v33 = 2112;
      v34 = v5;
      _os_log_error_impl(&dword_2695B9000, v11, OS_LOG_TYPE_ERROR, "%s END -acquireAudioSession (context = %@, duration = %f, result = %@)", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    *buf = 136315906;
    v28 = "[SVXSession acquireAudioSessionForReason:completion:]_block_invoke";
    v29 = 2112;
    v30 = v13;
    v31 = 2048;
    v32 = v9;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s END -acquireAudioSession (context = %@, duration = %f, result = %@)", buf, 0x2Au);
  }

  v14 = *(a1 + 40);
  v15 = *(v14 + 176);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__SVXSession_acquireAudioSessionForReason_completion___block_invoke_91;
  v20[3] = &unk_279C68270;
  v20[4] = v14;
  v21 = v5;
  v25 = *(a1 + 64);
  v22 = v10;
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  v26 = v6;
  v16 = v6;
  v17 = v10;
  v18 = v5;
  [v15 performBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __54__SVXSession_acquireAudioSessionForReason_completion___block_invoke_91(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _setAudioSessionID:{objc_msgSend(*(a1 + 40), "audioSessionID")}];
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 3)
  {
    *(v2 + 24) = 4;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 232));
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    v6 = *(v4 + 32);
    v7 = [*(v4 + 120) turnIdentifier];
    [WeakRetained session:v4 didBecomeActiveWithActivationContext:v5 activityUUID:v6 turnID:v7];

    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v9 = *(*(a1 + 32) + 32);
      *buf = 136315394;
      v20 = "[SVXSession acquireAudioSessionForReason:completion:]_block_invoke";
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s SESSION IS ACTIVE (%@)", buf, 0x16u);
    }

    SVXInstrumentationEmitViewAppearContextEnd(*(*(a1 + 32) + 120));
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    if (*(a1 + 48))
    {
      (*(v10 + 16))(v10, 0);
    }

    else
    {
      v11 = [SVXAudioSessionAssertion alloc];
      v12 = *(a1 + 56);
      v13 = [*(a1 + 40) audioSessionID];
      v14 = *(a1 + 64);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __54__SVXSession_acquireAudioSessionForReason_completion___block_invoke_93;
      v17[3] = &unk_279C68220;
      v18 = *(a1 + 80);
      v15 = [(SVXAudioSessionAssertion *)v11 initWithReason:v12 audioSessionID:v13 taskTracker:v14 relinquishHandler:v17];
      (*(*(a1 + 72) + 16))();
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection appLaunchFailedWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__SVXSession_assistantConnection_appLaunchFailedWithBundleIdentifier___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [(SVXPerforming *)performer performBlock:v8];
}

void __70__SVXSession_assistantConnection_appLaunchFailedWithBundleIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 232));
  [WeakRetained session:*(a1 + 32) didFailAppLaunchWithBundleIdentifier:*(a1 + 40)];
}

- (void)assistantConnection:(id)connection willProcessAppLaunchWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__SVXSession_assistantConnection_willProcessAppLaunchWithBundleIdentifier___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [(SVXPerforming *)performer performBlock:v8];
}

void __75__SVXSession_assistantConnection_willProcessAppLaunchWithBundleIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 232));
  [WeakRetained session:*(a1 + 32) willProcessAppLaunchWithBundleIdentifier:*(a1 + 40)];
}

- (void)assistantConnection:(id)connection startUIRequestWithInfo:(id)info completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  infoCopy = info;
  completionCopy = completion;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v18 = "[SVXSession assistantConnection:startUIRequestWithInfo:completion:]";
    v19 = 2112;
    v20 = connectionCopy;
    v21 = 2112;
    v22 = infoCopy;
    _os_log_debug_impl(&dword_2695B9000, v11, OS_LOG_TYPE_DEBUG, "%s connection = %@, info = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__SVXSession_assistantConnection_startUIRequestWithInfo_completion___block_invoke;
  v15[3] = &unk_279C68220;
  v16 = completionCopy;
  v13 = completionCopy;
  [(SVXPerforming *)performer performBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __68__SVXSession_assistantConnection_startUIRequestWithInfo_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)assistantConnection:(id)connection startUIRequestWithText:(id)text completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  textCopy = text;
  completionCopy = completion;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v18 = "[SVXSession assistantConnection:startUIRequestWithText:completion:]";
    v19 = 2112;
    v20 = connectionCopy;
    v21 = 2112;
    v22 = textCopy;
    _os_log_debug_impl(&dword_2695B9000, v11, OS_LOG_TYPE_DEBUG, "%s connection = %@, text = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__SVXSession_assistantConnection_startUIRequestWithText_completion___block_invoke;
  v15[3] = &unk_279C68EF8;
  v15[4] = self;
  v16 = completionCopy;
  v13 = completionCopy;
  [(SVXPerforming *)performer performBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __68__SVXSession_assistantConnection_startUIRequestWithText_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 368) dispatchEvent:0];
  [*(*(a1 + 32) + 368) dispatchEvent:5];
  [*(*(a1 + 32) + 368) dispatchEvent:6];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)assistantConnection:(id)connection audioSessionDidBecomeActive:(BOOL)active
{
  activeCopy = active;
  v18 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v13 = "[SVXSession assistantConnection:audioSessionDidBecomeActive:]";
    v14 = 2112;
    v15 = connectionCopy;
    v16 = 1024;
    v17 = activeCopy;
    _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s connection = %@, flag = %d", buf, 0x1Cu);
  }

  performer = self->_performer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__SVXSession_assistantConnection_audioSessionDidBecomeActive___block_invoke;
  v10[3] = &unk_279C681F8;
  v10[4] = self;
  v11 = activeCopy;
  [(SVXPerforming *)performer performBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection audioSessionWillBecomeActive:(BOOL)active
{
  activeCopy = active;
  v18 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v13 = "[SVXSession assistantConnection:audioSessionWillBecomeActive:]";
    v14 = 2112;
    v15 = connectionCopy;
    v16 = 1024;
    v17 = activeCopy;
    _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s connection = %@, flag = %d", buf, 0x1Cu);
  }

  performer = self->_performer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SVXSession_assistantConnection_audioSessionWillBecomeActive___block_invoke;
  v10[3] = &unk_279C681F8;
  v10[4] = self;
  v11 = activeCopy;
  [(SVXPerforming *)performer performBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection startPlaybackDidFail:(int64_t)fail
{
  v17 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v12 = "[SVXSession assistantConnection:startPlaybackDidFail:]";
    v13 = 2112;
    v14 = connectionCopy;
    v15 = 2048;
    failCopy = fail;
    _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s connection = %@, playbackType = %ld", buf, 0x20u);
  }

  performer = self->_performer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__SVXSession_assistantConnection_startPlaybackDidFail___block_invoke;
  v10[3] = &unk_279C68C68;
  v10[4] = self;
  v10[5] = fail;
  [(SVXPerforming *)performer performBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection willProcessStartPlayback:(int64_t)playback intent:(id)intent completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  intentCopy = intent;
  completionCopy = completion;
  v13 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v23 = "[SVXSession assistantConnection:willProcessStartPlayback:intent:completion:]";
    v24 = 2112;
    v25 = connectionCopy;
    v26 = 2048;
    playbackCopy = playback;
    v28 = 2112;
    v29 = intentCopy;
    _os_log_debug_impl(&dword_2695B9000, v13, OS_LOG_TYPE_DEBUG, "%s connection = %@, playbackType = %ld, intent = %@", buf, 0x2Au);
  }

  performer = self->_performer;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__SVXSession_assistantConnection_willProcessStartPlayback_intent_completion___block_invoke;
  v18[3] = &unk_279C68180;
  v18[4] = self;
  v19 = intentCopy;
  v20 = completionCopy;
  playbackCopy2 = playback;
  v15 = completionCopy;
  v16 = intentCopy;
  [(SVXPerforming *)performer performBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection didHandleQuickStopWithAction:(unint64_t)action
{
  v17 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v12 = "[SVXSession assistantConnection:didHandleQuickStopWithAction:]";
    v13 = 2112;
    v14 = connectionCopy;
    v15 = 2048;
    actionCopy = action;
    _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s connection = %@, actions = %tu", buf, 0x20u);
  }

  performer = self->_performer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SVXSession_assistantConnection_didHandleQuickStopWithAction___block_invoke;
  v10[3] = &unk_279C68C68;
  v10[4] = self;
  v10[5] = action;
  [(SVXPerforming *)performer performBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection didStopAudioPlaybackRequest:(id)request error:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  requestCopy = request;
  errorCopy = error;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v24 = "[SVXSession assistantConnection:didStopAudioPlaybackRequest:error:]";
    v25 = 2112;
    v26 = connectionCopy;
    v27 = 2112;
    v28 = requestCopy;
    v29 = 2112;
    v30 = errorCopy;
    _os_log_debug_impl(&dword_2695B9000, v11, OS_LOG_TYPE_DEBUG, "%s connection = %@, request = %@, error = %@", buf, 0x2Au);
  }

  v12 = [(SVXSoundUtils *)self->_soundUtils getIDFromAudioPlaybackRequest:requestCopy]- 1;
  if (v12 <= 2)
  {
    v13 = 2 * v12;
    analytics = self->_analytics;
    v15 = AFAnalyticsContextCreateWithError();
    [(AFAnalytics *)analytics logEventWithType:v13 + 2708 context:v15];
  }

  performer = self->_performer;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __68__SVXSession_assistantConnection_didStopAudioPlaybackRequest_error___block_invoke;
  v20[3] = &unk_279C68ED0;
  v20[4] = self;
  v21 = requestCopy;
  v22 = errorCopy;
  v17 = errorCopy;
  v18 = requestCopy;
  [(SVXPerforming *)performer performBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection didStartAudioPlaybackRequest:(id)request
{
  v21 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  requestCopy = request;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "[SVXSession assistantConnection:didStartAudioPlaybackRequest:]";
    v17 = 2112;
    v18 = connectionCopy;
    v19 = 2112;
    v20 = requestCopy;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s connection = %@, request = %@", buf, 0x20u);
  }

  v9 = [(SVXSoundUtils *)self->_soundUtils getIDFromAudioPlaybackRequest:requestCopy];
  if ((v9 - 1) <= 2)
  {
    [(AFAnalytics *)self->_analytics logEventWithType:2 * (v9 - 1) + 2707 context:0];
  }

  performer = self->_performer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__SVXSession_assistantConnection_didStartAudioPlaybackRequest___block_invoke;
  v13[3] = &unk_279C68FE8;
  v13[4] = self;
  v14 = requestCopy;
  v11 = requestCopy;
  [(SVXPerforming *)performer performBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection willStartAudioPlaybackRequest:(id)request
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  requestCopy = request;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v15 = "[SVXSession assistantConnection:willStartAudioPlaybackRequest:]";
    v16 = 2112;
    v17 = connectionCopy;
    v18 = 2112;
    v19 = requestCopy;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s connection = %@, request = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__SVXSession_assistantConnection_willStartAudioPlaybackRequest___block_invoke;
  v12[3] = &unk_279C68FE8;
  v12[4] = self;
  v13 = requestCopy;
  v10 = requestCopy;
  [(SVXPerforming *)performer performBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection setUserActivtiyInfoAndMakeCurrent:(id)current webpageURL:(id)l
{
  v27 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  currentCopy = current;
  lCopy = l;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v20 = "[SVXSession assistantConnection:setUserActivtiyInfoAndMakeCurrent:webpageURL:]";
    v21 = 2112;
    v22 = connectionCopy;
    v23 = 2112;
    v24 = currentCopy;
    v25 = 2112;
    v26 = lCopy;
    _os_log_debug_impl(&dword_2695B9000, v11, OS_LOG_TYPE_DEBUG, "%s connection = %@, info = %@, url = %@", buf, 0x2Au);
  }

  performer = self->_performer;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__SVXSession_assistantConnection_setUserActivtiyInfoAndMakeCurrent_webpageURL___block_invoke;
  v16[3] = &unk_279C68ED0;
  v16[4] = self;
  v17 = lCopy;
  v18 = currentCopy;
  v13 = currentCopy;
  v14 = lCopy;
  [(SVXPerforming *)performer performBlock:v16];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __79__SVXSession_assistantConnection_setUserActivtiyInfoAndMakeCurrent_webpageURL___block_invoke(void *a1)
{
  [*(a1[4] + 344) resignCurrent];
  [*(a1[4] + 344) invalidate];
  if (MEMORY[0x277D77BC0])
  {
    v2 = [objc_alloc(MEMORY[0x277CCAE58]) initWithActivityType:*MEMORY[0x277D77BC0]];
    v3 = a1[4];
    v4 = *(v3 + 344);
    *(v3 + 344) = v2;
  }

  if (a1[5])
  {
    [*(a1[4] + 344) setWebpageURL:?];
  }

  if (a1[6])
  {
    [*(a1[4] + 344) setUserInfo:?];
  }

  v5 = *(a1[4] + 344);

  return [v5 becomeCurrent];
}

- (void)assistantConnectionAudioSessionDidEndInterruption:(id)interruption shouldResume:(BOOL)resume
{
  resumeCopy = resume;
  v18 = *MEMORY[0x277D85DE8];
  interruptionCopy = interruption;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v13 = "[SVXSession assistantConnectionAudioSessionDidEndInterruption:shouldResume:]";
    v14 = 2112;
    v15 = interruptionCopy;
    v16 = 1024;
    v17 = resumeCopy;
    _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s connection = %@, shouldResume = %d", buf, 0x1Cu);
  }

  performer = self->_performer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__SVXSession_assistantConnectionAudioSessionDidEndInterruption_shouldResume___block_invoke;
  v10[3] = &unk_279C681F8;
  v10[4] = self;
  v11 = resumeCopy;
  [(SVXPerforming *)performer performBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnectionAudioSessionDidBeginInterruption:(id)interruption
{
  v13 = *MEMORY[0x277D85DE8];
  interruptionCopy = interruption;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v10 = "[SVXSession assistantConnectionAudioSessionDidBeginInterruption:]";
    v11 = 2112;
    v12 = interruptionCopy;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s connection = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SVXSession_assistantConnectionAudioSessionDidBeginInterruption___block_invoke;
  v8[3] = &unk_279C68FC0;
  v8[4] = self;
  [(SVXPerforming *)performer performBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection didChangeAudioSessionID:(unsigned int)d
{
  v18 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v13 = "[SVXSession assistantConnection:didChangeAudioSessionID:]";
    v14 = 2112;
    v15 = connectionCopy;
    v16 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s connection = %@, sessionID = %lu", buf, 0x20u);
  }

  performer = self->_performer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__SVXSession_assistantConnection_didChangeAudioSessionID___block_invoke;
  v10[3] = &unk_279C69128;
  v10[4] = self;
  dCopy2 = d;
  [(SVXPerforming *)performer performBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection shouldSpeak:(BOOL)speak
{
  speakCopy = speak;
  v18 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v13 = "[SVXSession assistantConnection:shouldSpeak:]";
    v14 = 2112;
    v15 = connectionCopy;
    v16 = 1024;
    v17 = speakCopy;
    _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s connection = %@, shouldSpeak = %d", buf, 0x1Cu);
  }

  performer = self->_performer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__SVXSession_assistantConnection_shouldSpeak___block_invoke;
  v10[3] = &unk_279C681F8;
  v10[4] = self;
  v11 = speakCopy;
  [(SVXPerforming *)performer performBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection requestFailedWithError:(id)error requestClass:(id)class
{
  v25 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  errorCopy = error;
  classCopy = class;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v18 = "[SVXSession assistantConnection:requestFailedWithError:requestClass:]";
    v19 = 2112;
    v20 = connectionCopy;
    v21 = 2112;
    v22 = errorCopy;
    v23 = 2112;
    v24 = classCopy;
    _os_log_debug_impl(&dword_2695B9000, v11, OS_LOG_TYPE_DEBUG, "%s connection = %@, error = %@, requestClass = %@", buf, 0x2Au);
  }

  performer = self->_performer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__SVXSession_assistantConnection_requestFailedWithError_requestClass___block_invoke;
  v15[3] = &unk_279C68FE8;
  v15[4] = self;
  v16 = errorCopy;
  v13 = errorCopy;
  [(SVXPerforming *)performer performBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection receivedCommand:(id)command completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  commandCopy = command;
  completionCopy = completion;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v20 = "[SVXSession assistantConnection:receivedCommand:completion:]";
    v21 = 2112;
    v22 = connectionCopy;
    v23 = 2112;
    v24 = commandCopy;
    _os_log_debug_impl(&dword_2695B9000, v11, OS_LOG_TYPE_DEBUG, "%s connection = %@, command = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__SVXSession_assistantConnection_receivedCommand_completion___block_invoke;
  v16[3] = &unk_279C68EA8;
  v16[4] = self;
  v17 = commandCopy;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = commandCopy;
  [(SVXPerforming *)performer performBlock:v16];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnectionRequestFinished:(id)finished
{
  v13 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v10 = "[SVXSession assistantConnectionRequestFinished:]";
    v11 = 2112;
    v12 = finishedCopy;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s connection = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__SVXSession_assistantConnectionRequestFinished___block_invoke;
  v8[3] = &unk_279C68FC0;
  v8[4] = self;
  [(SVXPerforming *)performer performBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnectionDismissAssistant:(id)assistant
{
  v13 = *MEMORY[0x277D85DE8];
  assistantCopy = assistant;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v10 = "[SVXSession assistantConnectionDismissAssistant:]";
    v11 = 2112;
    v12 = assistantCopy;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s connection = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__SVXSession_assistantConnectionDismissAssistant___block_invoke;
  v8[3] = &unk_279C68FC0;
  v8[4] = self;
  [(SVXPerforming *)performer performBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnectionRequestWillStart:(id)start
{
  v16 = *MEMORY[0x277D85DE8];
  startCopy = start;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v13 = "[SVXSession assistantConnectionRequestWillStart:]";
    v14 = 2112;
    v15 = startCopy;
    _os_log_debug_impl(&dword_2695B9000, v6, OS_LOG_TYPE_DEBUG, "%s connection = %@", buf, 0x16u);
  }

  if ([MEMORY[0x277CEF2A8] isResponseFrameworkEnabled])
  {
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      modesConfiguration = self->_modesConfiguration;
      *buf = 136315394;
      v13 = "[SVXSession assistantConnectionRequestWillStart:]";
      v14 = 2112;
      v15 = modesConfiguration;
      _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s #modes Sending modes configuration : %@", buf, 0x16u);
    }

    [(AFModesConfiguration *)startCopy setModesConfiguration:self->_modesConfiguration];
  }

  performer = self->_performer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__SVXSession_assistantConnectionRequestWillStart___block_invoke;
  v11[3] = &unk_279C68FC0;
  v11[4] = self;
  [(SVXPerforming *)performer performBlock:v11];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection recognitionUpdateWithPhrases:(id)phrases utterances:(id)utterances refId:(id)id
{
  v25 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  phrasesCopy = phrases;
  utterancesCopy = utterances;
  idCopy = id;
  v13 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v15 = 136316162;
    v16 = "[SVXSession assistantConnection:recognitionUpdateWithPhrases:utterances:refId:]";
    v17 = 2112;
    v18 = connectionCopy;
    v19 = 2112;
    v20 = phrasesCopy;
    v21 = 2112;
    v22 = utterancesCopy;
    v23 = 2112;
    v24 = idCopy;
    _os_log_debug_impl(&dword_2695B9000, v13, OS_LOG_TYPE_DEBUG, "%s connection = %@, phrases = %@, utterances = %@, refId = %@", &v15, 0x34u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection recognizedAdditionalSpeechInterpretation:(id)interpretation refId:(id)id
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  interpretationCopy = interpretation;
  idCopy = id;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315906;
    v13 = "[SVXSession assistantConnection:recognizedAdditionalSpeechInterpretation:refId:]";
    v14 = 2112;
    v15 = connectionCopy;
    v16 = 2112;
    v17 = interpretationCopy;
    v18 = 2112;
    v19 = idCopy;
    _os_log_debug_impl(&dword_2695B9000, v10, OS_LOG_TYPE_DEBUG, "%s connection = %@, interpretation = %@, refId = %@", &v12, 0x2Au);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection speechRecognizedPartialResult:(id)result
{
  v24 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  resultCopy = result;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v12 = v8;
    af_bestTextInterpretation = [resultCopy af_bestTextInterpretation];
    *buf = 136315906;
    v17 = "[SVXSession assistantConnection:speechRecognizedPartialResult:]";
    v18 = 2112;
    v19 = connectionCopy;
    v20 = 2112;
    v21 = resultCopy;
    v22 = 2112;
    v23 = af_bestTextInterpretation;
    _os_log_debug_impl(&dword_2695B9000, v12, OS_LOG_TYPE_DEBUG, "%s connection = %@, partialResult = %@, text = %@", buf, 0x2Au);
  }

  performer = self->_performer;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__SVXSession_assistantConnection_speechRecognizedPartialResult___block_invoke;
  v14[3] = &unk_279C68FE8;
  v14[4] = self;
  v15 = resultCopy;
  v10 = resultCopy;
  [(SVXPerforming *)performer performBlock:v14];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection speechRecognized:(id)recognized
{
  v26 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  recognizedCopy = recognized;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v14 = v8;
    af_bestTextInterpretation = [recognizedCopy af_bestTextInterpretation];
    *buf = 136315906;
    v19 = "[SVXSession assistantConnection:speechRecognized:]";
    v20 = 2112;
    v21 = connectionCopy;
    v22 = 2112;
    v23 = recognizedCopy;
    v24 = 2112;
    v25 = af_bestTextInterpretation;
    _os_log_debug_impl(&dword_2695B9000, v14, OS_LOG_TYPE_DEBUG, "%s connection = %@, speechRecognized = %@, text = %@", buf, 0x2Au);
  }

  if ([(SVXSession *)self _isTapToRadarEnabled])
  {
    _tapToRadarManager = [(SVXSession *)self _tapToRadarManager];
    af_bestTextInterpretation2 = [recognizedCopy af_bestTextInterpretation];
    [_tapToRadarManager setRecognitionText:af_bestTextInterpretation2];
  }

  performer = self->_performer;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__SVXSession_assistantConnection_speechRecognized___block_invoke;
  v16[3] = &unk_279C68FE8;
  v16[4] = self;
  v17 = recognizedCopy;
  v12 = recognizedCopy;
  [(SVXPerforming *)performer performBlock:v16];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection speechRecognitionDidFail:(id)fail
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  failCopy = fail;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v15 = "[SVXSession assistantConnection:speechRecognitionDidFail:]";
    v16 = 2112;
    v17 = connectionCopy;
    v18 = 2112;
    v19 = failCopy;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s connection = %@, error = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__SVXSession_assistantConnection_speechRecognitionDidFail___block_invoke;
  v12[3] = &unk_279C68FE8;
  v12[4] = self;
  v13 = failCopy;
  v10 = failCopy;
  [(SVXPerforming *)performer performBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection speechRecordingDidFail:(id)fail
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  failCopy = fail;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v15 = "[SVXSession assistantConnection:speechRecordingDidFail:]";
    v16 = 2112;
    v17 = connectionCopy;
    v18 = 2112;
    v19 = failCopy;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s connection = %@, error = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__SVXSession_assistantConnection_speechRecordingDidFail___block_invoke;
  v12[3] = &unk_279C68FE8;
  v12[4] = self;
  v13 = failCopy;
  v10 = failCopy;
  [(SVXPerforming *)performer performBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnectionSpeechRecordingDidCancel:(id)cancel
{
  v13 = *MEMORY[0x277D85DE8];
  cancelCopy = cancel;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v10 = "[SVXSession assistantConnectionSpeechRecordingDidCancel:]";
    v11 = 2112;
    v12 = cancelCopy;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s connection = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SVXSession_assistantConnectionSpeechRecordingDidCancel___block_invoke;
  v8[3] = &unk_279C68FC0;
  v8[4] = self;
  [(SVXPerforming *)performer performBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnectionSpeechRecordingDidEnd:(id)end
{
  v13 = *MEMORY[0x277D85DE8];
  endCopy = end;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v10 = "[SVXSession assistantConnectionSpeechRecordingDidEnd:]";
    v11 = 2112;
    v12 = endCopy;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s connection = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SVXSession_assistantConnectionSpeechRecordingDidEnd___block_invoke;
  v8[3] = &unk_279C68FC0;
  v8[4] = self;
  [(SVXPerforming *)performer performBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection speechRecordingPerformTwoShotPromptWithType:(int64_t)type completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  completionCopy = completion;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v18 = "[SVXSession assistantConnection:speechRecordingPerformTwoShotPromptWithType:completion:]";
    v19 = 2112;
    v20 = connectionCopy;
    v21 = 2048;
    typeCopy = type;
    _os_log_debug_impl(&dword_2695B9000, v10, OS_LOG_TYPE_DEBUG, "%s connection = %@, type = %ld", buf, 0x20u);
  }

  performer = self->_performer;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__SVXSession_assistantConnection_speechRecordingPerformTwoShotPromptWithType_completion___block_invoke;
  v14[3] = &unk_279C68D70;
  v15 = completionCopy;
  typeCopy2 = type;
  v14[4] = self;
  v12 = completionCopy;
  [(SVXPerforming *)performer performBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnectionSpeechRecordingDidDetectStartpoint:(id)startpoint
{
  v13 = *MEMORY[0x277D85DE8];
  startpointCopy = startpoint;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v10 = "[SVXSession assistantConnectionSpeechRecordingDidDetectStartpoint:]";
    v11 = 2112;
    v12 = startpointCopy;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s connection = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SVXSession_assistantConnectionSpeechRecordingDidDetectStartpoint___block_invoke;
  v8[3] = &unk_279C68FC0;
  v8[4] = self;
  [(SVXPerforming *)performer performBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection speechRecordingDidChangeAVRecordRoute:(id)route
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  routeCopy = route;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v15 = "[SVXSession assistantConnection:speechRecordingDidChangeAVRecordRoute:]";
    v16 = 2112;
    v17 = connectionCopy;
    v18 = 2112;
    v19 = routeCopy;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s connection = %@, route = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__SVXSession_assistantConnection_speechRecordingDidChangeAVRecordRoute___block_invoke;
  v12[3] = &unk_279C68FE8;
  v12[4] = self;
  v13 = routeCopy;
  v10 = routeCopy;
  [(SVXPerforming *)performer performBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnection:(id)connection speechRecordingDidBeginOnAVRecordRoute:(id)route audioSessionID:(unsigned int)d
{
  v25 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  routeCopy = route;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v18 = "[SVXSession assistantConnection:speechRecordingDidBeginOnAVRecordRoute:audioSessionID:]";
    v19 = 2112;
    v20 = connectionCopy;
    v21 = 2112;
    v22 = routeCopy;
    v23 = 2048;
    dCopy = d;
    _os_log_debug_impl(&dword_2695B9000, v10, OS_LOG_TYPE_DEBUG, "%s connection = %@, route = %@, audioSessionID = %lu", buf, 0x2Au);
  }

  performer = self->_performer;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__SVXSession_assistantConnection_speechRecordingDidBeginOnAVRecordRoute_audioSessionID___block_invoke;
  v14[3] = &unk_279C681D0;
  dCopy2 = d;
  v14[4] = self;
  v15 = routeCopy;
  v12 = routeCopy;
  [(SVXPerforming *)performer performBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __88__SVXSession_assistantConnection_speechRecordingDidBeginOnAVRecordRoute_audioSessionID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setAudioSessionID:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _handleSpeechRecordingDidBeginOnAVRecordRoute:v3];
}

- (void)assistantConnection:(id)connection speechRecordingWillBeginWithInputAudioPowerXPCWrapper:(id)wrapper
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  wrapperCopy = wrapper;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v15 = "[SVXSession assistantConnection:speechRecordingWillBeginWithInputAudioPowerXPCWrapper:]";
    v16 = 2112;
    v17 = connectionCopy;
    v18 = 2112;
    v19 = wrapperCopy;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s connection = %@, wrapper = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__SVXSession_assistantConnection_speechRecordingWillBeginWithInputAudioPowerXPCWrapper___block_invoke;
  v12[3] = &unk_279C68FE8;
  v12[4] = self;
  v13 = wrapperCopy;
  v10 = wrapperCopy;
  [(SVXPerforming *)performer performBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)assistantConnectionSpeechRecordingWillBegin:(id)begin
{
  v13 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v10 = "[SVXSession assistantConnectionSpeechRecordingWillBegin:]";
    v11 = 2112;
    v12 = beginCopy;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s connection = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SVXSession_assistantConnectionSpeechRecordingWillBegin___block_invoke;
  v8[3] = &unk_279C68FC0;
  v8[4] = self;
  [(SVXPerforming *)performer performBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateLocalDeviceContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SVXSession updateLocalDeviceContext:]";
    v13 = 2112;
    v14 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s localDeviceContext = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__SVXSession_updateLocalDeviceContext___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = contextCopy;
  v7 = contextCopy;
  [(SVXPerforming *)performer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __39__SVXSession_updateLocalDeviceContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 296);
  *(v3 + 296) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)updateDeviceSetupContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SVXSession updateDeviceSetupContext:]";
    v13 = 2112;
    v14 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s deviceSetupContext = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__SVXSession_updateDeviceSetupContext___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = contextCopy;
  v7 = contextCopy;
  [(SVXPerforming *)performer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __39__SVXSession_updateDeviceSetupContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 288);
  *(v3 + 288) = v2;

  v5 = [*(a1 + 32) _connection:0];
  if (v5)
  {
    v7 = v5;
    v6 = [*(a1 + 32) _createClientConfiguration:*(*(a1 + 32) + 288) storeDemo:0 preferences:*(*(a1 + 32) + 216)];
    [v7 setConfiguration:v6];

    v5 = v7;
  }
}

- (void)updateDeviceProblemsState:(id)state
{
  v15 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SVXSession updateDeviceProblemsState:]";
    v13 = 2112;
    v14 = stateCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s deviceProblemsState = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__SVXSession_updateDeviceProblemsState___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = stateCopy;
  v7 = stateCopy;
  [(SVXPerforming *)performer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __40__SVXSession_updateDeviceProblemsState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 280);
  *(v3 + 280) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)invalidate
{
  performer = self->_performer;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __24__SVXSession_invalidate__block_invoke;
  v3[3] = &unk_279C68FC0;
  v3[4] = self;
  [(SVXPerforming *)performer performBlock:v3];
}

- (void)handleCommand:(id)command taskTracker:(id)tracker
{
  commandCopy = command;
  trackerCopy = tracker;
  if (commandCopy)
  {
    performer = self->_performer;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__SVXSession_handleCommand_taskTracker___block_invoke;
    v9[3] = &unk_279C68ED0;
    v9[4] = self;
    v10 = commandCopy;
    v11 = trackerCopy;
    [(SVXPerforming *)performer performBlock:v9];
  }
}

- (void)addRequestBarrier:(id)barrier
{
  barrierCopy = barrier;
  v5 = barrierCopy;
  if (barrierCopy)
  {
    performer = self->_performer;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__SVXSession_addRequestBarrier___block_invoke;
    v7[3] = &unk_279C68EF8;
    v7[4] = self;
    v8 = barrierCopy;
    [(SVXPerforming *)performer performBlock:v7];
  }
}

- (void)stopAudioPlaybackRequest:(id)request immediately:(BOOL)immediately
{
  requestCopy = request;
  performer = self->_performer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__SVXSession_stopAudioPlaybackRequest_immediately___block_invoke;
  v9[3] = &unk_279C681A8;
  v9[4] = self;
  v10 = requestCopy;
  immediatelyCopy = immediately;
  v8 = requestCopy;
  [(SVXPerforming *)performer performBlock:v9];
}

void __51__SVXSession_stopAudioPlaybackRequest_immediately___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection:1];
  [v2 stopAudioPlaybackRequest:*(a1 + 40) immediately:*(a1 + 48)];
}

- (void)startAudioPlaybackRequest:(id)request options:(unint64_t)options completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  performer = self->_performer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__SVXSession_startAudioPlaybackRequest_options_completion___block_invoke;
  v13[3] = &unk_279C68180;
  v14 = requestCopy;
  selfCopy = self;
  v16 = completionCopy;
  optionsCopy = options;
  v11 = completionCopy;
  v12 = requestCopy;
  [(SVXPerforming *)performer performBlock:v13];
}

void __59__SVXSession_startAudioPlaybackRequest_options_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 40) + 336);
    if (!v2)
    {
      v3 = objc_opt_new();
      v4 = *(a1 + 40);
      v5 = *(v4 + 336);
      *(v4 + 336) = v3;

      v2 = *(*(a1 + 40) + 336);
    }

    v6 = objc_opt_new();
    [v2 setObject:v6 forKey:*(a1 + 32)];
  }

  v7 = [*(a1 + 40) _connection:1];
  v8 = *(a1 + 56);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__SVXSession_startAudioPlaybackRequest_options_completion___block_invoke_2;
  v11[3] = &unk_279C68360;
  v10 = *(a1 + 32);
  v9 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  v13 = *(a1 + 48);
  [v7 startAudioPlaybackRequest:v9 options:v8 completion:v11];
}

void __59__SVXSession_startAudioPlaybackRequest_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 176);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__SVXSession_startAudioPlaybackRequest_options_completion___block_invoke_3;
  v9[3] = &unk_279C69038;
  v9[4] = v5;
  v10 = v4;
  v7 = *(a1 + 48);
  v11 = v3;
  v12 = v7;
  v8 = v3;
  [v6 performBlock:v9];
}

void __59__SVXSession_startAudioPlaybackRequest_options_completion___block_invoke_3(void *a1)
{
  v6 = [*(a1[4] + 336) objectForKey:a1[5]];
  [*(a1[4] + 336) removeObjectForKey:a1[5]];
  if (![*(a1[4] + 336) count])
  {
    v2 = a1[4];
    v3 = *(v2 + 336);
    *(v2 + 336) = 0;
  }

  v4 = a1[7];
  v5 = v6;
  if (v4)
  {
    [v6 duration];
    (*(v4 + 16))(v4, a1[6]);
    v5 = v6;
  }
}

- (void)getAlarmAndTimerFiringContextWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    performer = self->_performer;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__SVXSession_getAlarmAndTimerFiringContextWithCompletion___block_invoke;
    v8[3] = &unk_279C68D70;
    v8[4] = self;
    v9 = completionCopy;
    v10 = a2;
    [(SVXPerforming *)performer performBlock:v8];
  }
}

void __58__SVXSession_getAlarmAndTimerFiringContextWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SVXSession_getAlarmAndTimerFiringContextWithCompletion___block_invoke_2;
  v4[3] = &unk_279C68158;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 _getAlarmAndTimerFiringContextWithCompletion:v4];
}

void __58__SVXSession_getAlarmAndTimerFiringContextWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(*(a1 + 48));
  [v2 _resignActiveForReason:v3];
}

- (void)getAudioPowerWithType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    performer = self->_performer;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__SVXSession_getAudioPowerWithType_completion___block_invoke;
    v9[3] = &unk_279C68D70;
    typeCopy = type;
    v9[4] = self;
    v10 = completionCopy;
    [(SVXPerforming *)performer performBlock:v9];
  }
}

void __47__SVXSession_getAudioPowerWithType_completion___block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2 == 1)
  {
    v3 = 144;
    goto LABEL_5;
  }

  if (v2 == 2)
  {
    v3 = 152;
LABEL_5:
    v4 = *(a1[4] + v3);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:
  v5 = v4;
  (*(a1[5] + 16))();
}

- (void)getActivityStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    performer = self->_performer;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__SVXSession_getActivityStateWithCompletion___block_invoke;
    v7[3] = &unk_279C68EF8;
    v7[4] = self;
    v8 = completionCopy;
    [(SVXPerforming *)performer performBlock:v7];
  }
}

- (void)getStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    performer = self->_performer;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SVXSession_getStateWithCompletion___block_invoke;
    v7[3] = &unk_279C68EF8;
    v7[4] = self;
    v8 = completionCopy;
    [(SVXPerforming *)performer performBlock:v7];
  }
}

- (void)dismiss
{
  performer = self->_performer;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __21__SVXSession_dismiss__block_invoke;
  v3[3] = &unk_279C68FC0;
  v3[4] = self;
  [(SVXPerforming *)performer performBlock:v3];
}

- (void)cancelRequest
{
  performer = self->_performer;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __27__SVXSession_cancelRequest__block_invoke;
  v3[3] = &unk_279C68FC0;
  v3[4] = self;
  [(SVXPerforming *)performer performBlock:v3];
}

- (void)transitSpeechToManualEndpointing
{
  performer = self->_performer;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__SVXSession_transitSpeechToManualEndpointing__block_invoke;
  v3[3] = &unk_279C68FC0;
  v3[4] = self;
  [(SVXPerforming *)performer performBlock:v3];
}

- (void)transitSpeechToAutomaticEndpointingWithTimestamp:(unint64_t)timestamp
{
  performer = self->_performer;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__SVXSession_transitSpeechToAutomaticEndpointingWithTimestamp___block_invoke;
  v4[3] = &unk_279C68C68;
  v4[4] = self;
  v4[5] = timestamp;
  [(SVXPerforming *)performer performBlock:v4];
}

- (void)stopSpeech
{
  performer = self->_performer;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __24__SVXSession_stopSpeech__block_invoke;
  v3[3] = &unk_279C68FC0;
  v3[4] = self;
  [(SVXPerforming *)performer performBlock:v3];
}

- (void)preheatWithStyle:(int64_t)style
{
  performer = self->_performer;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__SVXSession_preheatWithStyle___block_invoke;
  v4[3] = &unk_279C68C68;
  v4[4] = self;
  v4[5] = style;
  [(SVXPerforming *)performer performBlock:v4];
}

- (void)performBlock:(id)block
{
  if (block)
  {
    [(SVXPerforming *)self->_performer performBlock:?];
  }
}

- (void)deactivateWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  performer = self->_performer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__SVXSession_deactivateWithContext_completion___block_invoke;
  v11[3] = &unk_279C68EA8;
  v12 = contextCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = contextCopy;
  v10 = completionCopy;
  [(SVXPerforming *)performer performBlock:v11];
}

void __47__SVXSession_deactivateWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CEF380]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SVXSession_deactivateWithContext_completion___block_invoke_2;
  v9[3] = &unk_279C68BA0;
  v10 = *(a1 + 48);
  v3 = [v2 initWithBlock:v9];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SVXSession_deactivateWithContext_completion___block_invoke_3;
  v7[3] = &unk_279C68FC0;
  v8 = v3;
  v6 = v3;
  [v5 _deactivateWithContext:v4 completion:v7];
}

uint64_t __47__SVXSession_deactivateWithContext_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)activateWithContext:(id)context options:(unint64_t)options deviceSetupContext:(id)setupContext deviceProblemsState:(id)state localDeviceContext:(id)deviceContext speechSynthesisRecord:(id)record speechSynthesisState:(int64_t)synthesisState speechRecordingAlertPolicy:(id)self0 completion:(id)self1
{
  v77 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  setupContextCopy = setupContext;
  stateCopy = state;
  deviceContextCopy = deviceContext;
  recordCopy = record;
  policyCopy = policy;
  completionCopy = completion;
  v17 = [SVXTaskContext alloc];
  timestamp = [contextCopy timestamp];
  if (!timestamp)
  {
    timestamp = mach_absolute_time();
  }

  v19 = objc_alloc_init(MEMORY[0x277CCAD78]);
  LOWORD(v50) = 0;
  v59 = [(SVXTaskContext *)v17 initWithOrigin:1 timestamp:timestamp sessionUUID:0 requestUUID:v19 aceId:0 refId:0 dialogIdentifier:0 dialogPhase:0 isUUFR:v50 listensAfterSpeaking:0 listenAfterSpeakingBehavior:contextCopy activationContext:0 deactivationContext:0 error:?];

  source = [contextCopy source];
  v21 = MEMORY[0x277CEF098];
  if (source == 4 && (previousRequestInstrumentationContext = self->_previousRequestInstrumentationContext) != 0)
  {
    analytics = self->_analytics;
    v24 = previousRequestInstrumentationContext;
    v25 = analytics;
    v26 = *v21;
    if (os_log_type_enabled(*v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v72 = "SVXInstrumentationNextTurnBasedContextfromContext";
      v73 = 2112;
      v74 = v25;
      v75 = 2112;
      v76 = v24;
      _os_log_impl(&dword_2695B9000, v26, OS_LOG_TYPE_INFO, "%s #SVXInstrumentation - Start turn (for analytics %@) from current turn (%@)", buf, 0x20u);
    }

    v27 = [(AFAnalytics *)v24 nextTurnBasedContextForAnalytics:v25];
  }

  else
  {
    v24 = self->_analytics;
    v28 = *v21;
    if (os_log_type_enabled(*v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v72 = "SVXInstrumentationNewTurnBasedContext";
      v73 = 2112;
      v74 = v24;
      _os_log_impl(&dword_2695B9000, v28, OS_LOG_TYPE_INFO, "%s #SVXInstrumentation - Start new turn for analytics (%@)", buf, 0x16u);
      v28 = *v21;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v72 = "SVXInstrumentationNewTurnBasedContext";
      v73 = 2112;
      v74 = 0;
      _os_log_impl(&dword_2695B9000, v28, OS_LOG_TYPE_INFO, "%s #SVXInstrumentation - Previous turn ID (%@)", buf, 0x16u);
    }

    v27 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:0 analytics:v24];
    v25 = 0;
  }

  requestInfo = [contextCopy requestInfo];

  if (requestInfo)
  {
    requestInfo2 = [contextCopy requestInfo];
    turnIdentifier = [v27 turnIdentifier];
    [requestInfo2 setTurnIdentifier:turnIdentifier];
  }

  v32 = *v21;
  if (os_log_type_enabled(*v21, OS_LOG_TYPE_INFO))
  {
    v33 = v32;
    turnIdentifier2 = [v27 turnIdentifier];
    turnIdentifier3 = [(AFAnalyticsTurnBasedInstrumentationContext *)self->_previousRequestInstrumentationContext turnIdentifier];
    *buf = 136315650;
    v72 = "[SVXSession activateWithContext:options:deviceSetupContext:deviceProblemsState:localDeviceContext:speechSynthesisRecord:speechSynthesisState:speechRecordingAlertPolicy:completion:]";
    v73 = 2112;
    v74 = turnIdentifier2;
    v75 = 2112;
    v76 = turnIdentifier3;
    _os_log_impl(&dword_2695B9000, v33, OS_LOG_TYPE_INFO, "%s turnID = %@, previousTurnID = %@", buf, 0x20u);
  }

  v36 = [(SVXTaskTrackingCenter *)self->_taskTrackingCenter beginTrackingTaskWithContext:v59 instrumentationContext:v27];
  performer = self->_performer;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __181__SVXSession_activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_completion___block_invoke;
  v60[3] = &unk_279C68130;
  v60[4] = self;
  v61 = contextCopy;
  v62 = setupContextCopy;
  v63 = stateCopy;
  v51 = v27;
  v64 = deviceContextCopy;
  v65 = recordCopy;
  optionsCopy = options;
  synthesisStateCopy = synthesisState;
  v68 = completionCopy;
  v66 = policyCopy;
  v38 = v36;
  v67 = v38;
  v39 = policyCopy;
  v40 = recordCopy;
  v41 = deviceContextCopy;
  v42 = stateCopy;
  v43 = setupContextCopy;
  v44 = contextCopy;
  v45 = completionCopy;
  [(SVXPerforming *)performer performBlock:v60];
  v46 = v67;
  v47 = v38;

  v48 = *MEMORY[0x277D85DE8];
  return v38;
}

void __181__SVXSession_activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CEF340]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __181__SVXSession_activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_completion___block_invoke_2;
  v18[3] = &unk_279C680E0;
  v19 = *(a1 + 96);
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:5 userInfo:0];
  v4 = [v2 initWithBlock:v18 defaultValue:v3];

  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v5 = *(a1 + 56);
  v13 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 104);
  v9 = *(a1 + 112);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __181__SVXSession_activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_completion___block_invoke_3;
  v16[3] = &unk_279C68108;
  v17 = v4;
  v12 = v4;
  [v15 _activateWithContext:v14 options:v8 deviceSetupContext:v13 deviceProblemsState:v5 localDeviceContext:v6 speechSynthesisRecord:v7 speechSynthesisState:v9 speechRecordingAlertPolicy:v10 taskTracker:v11 completion:v16];
}

uint64_t __181__SVXSession_activateWithContext_options_deviceSetupContext_deviceProblemsState_localDeviceContext_speechSynthesisRecord_speechSynthesisState_speechRecordingAlertPolicy_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)prewarmWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  performer = self->_performer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__SVXSession_prewarmWithContext_completion___block_invoke;
  v11[3] = &unk_279C68EA8;
  v12 = contextCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = contextCopy;
  [(SVXPerforming *)performer performBlock:v11];
}

uint64_t __44__SVXSession_prewarmWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) source];
  if (v2 > 5)
  {
    if ((v2 - 8) >= 2)
    {
      if (v2 != 6)
      {
        if (v2 != 7)
        {
          goto LABEL_24;
        }

        v4 = [*(a1 + 32) requestInfo];
        if ([v4 isSpeechRequest])
        {
          v7 = [v4 speechRequestOptions];
          v8 = [v7 isVoiceTrigger];

          if (v8)
          {
            v9 = 2;
          }

          else
          {
            v9 = 0;
          }

          [*(a1 + 40) _preheatWithStyle:v9];
        }

        goto LABEL_23;
      }

      v10 = *(a1 + 40);
      v11 = 2;
LABEL_19:
      [v10 _preheatWithStyle:v11];
      goto LABEL_24;
    }

LABEL_18:
    v10 = *(a1 + 40);
    v11 = 0;
    goto LABEL_19;
  }

  if ((v2 - 1) < 2 || v2 == 4)
  {
    goto LABEL_18;
  }

  if (v2 != 5)
  {
    goto LABEL_24;
  }

  v4 = [*(a1 + 32) systemEvent];
  v5 = [v4 type];
  if (v5 == 1)
  {
    v6 = @"SIRI_VOX_SYSTEM_DEVICE_SETUP_COMPLETION";
    goto LABEL_22;
  }

  if (v5 == 2)
  {
    v6 = @"SIRI_VOX_SYSTEM_FACTORY_RESET_CONFIRMATION";
LABEL_22:
    v12 = *(*(a1 + 40) + 192);
    v13 = [[SVXSpeechSynthesisRequest alloc] initWithPriority:3 options:1 speakableText:0 speakableContext:0 localizationKey:v6 presynthesizedAudio:0 streamID:0];
    [v12 synthesizeRequest:v13 audioChunkHandler:0 taskTracker:0 analyticsContext:0 completion:0];
  }

LABEL_23:

LABEL_24:
  result = *(a1 + 48);
  if (result)
  {
    v15 = *(result + 16);

    return v15();
  }

  return result;
}

- (SVXSession)initWithPerformer:(id)performer serviceCommandHandler:(id)handler powerLevelManager:(id)manager speechSynthesizer:(id)synthesizer instanceContext:(id)context preferences:(id)preferences analytics:(id)analytics delegate:(id)self0
{
  v115 = *MEMORY[0x277D85DE8];
  performerCopy = performer;
  obj = handler;
  handlerCopy = handler;
  managerCopy = manager;
  managerCopy2 = manager;
  synthesizerCopy = synthesizer;
  contextCopy = context;
  preferencesCopy = preferences;
  analyticsCopy = analytics;
  delegateCopy = delegate;
  if (performerCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CCA890] currentHandler];
    v58 = v57 = delegateCopy;
    [v58 handleFailureInMethod:a2 object:self file:@"SVXSession.m" lineNumber:361 description:{@"Invalid parameter not satisfying: %@", @"performer != nil"}];

    delegateCopy = v57;
    performerCopy = 0;
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CCA890] currentHandler];
  synthesizerCopy2 = synthesizer;
  contextCopy2 = context;
  v60 = performerCopy;
  v62 = v61 = delegateCopy;
  [v62 handleFailureInMethod:a2 object:self file:@"SVXSession.m" lineNumber:362 description:{@"Invalid parameter not satisfying: %@", @"serviceCommandHandler != nil"}];

  delegateCopy = v61;
  performerCopy = v60;
  context = contextCopy2;
  synthesizer = synthesizerCopy2;
LABEL_3:
  if (synthesizerCopy)
  {
    if (managerCopy2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [MEMORY[0x277CCA890] currentHandler];
    synthesizerCopy3 = synthesizer;
    contextCopy3 = context;
    v64 = performerCopy;
    v66 = v65 = delegateCopy;
    [v66 handleFailureInMethod:a2 object:self file:@"SVXSession.m" lineNumber:363 description:{@"Invalid parameter not satisfying: %@", @"speechSynthesizer != nil"}];

    delegateCopy = v65;
    performerCopy = v64;
    context = contextCopy3;
    synthesizer = synthesizerCopy3;
    if (managerCopy2)
    {
      goto LABEL_5;
    }
  }

  [MEMORY[0x277CCA890] currentHandler];
  synthesizerCopy4 = synthesizer;
  contextCopy4 = context;
  v68 = performerCopy;
  v70 = v69 = delegateCopy;
  [v70 handleFailureInMethod:a2 object:self file:@"SVXSession.m" lineNumber:364 description:{@"Invalid parameter not satisfying: %@", @"powerLevelManager != nil"}];

  delegateCopy = v69;
  performerCopy = v68;
  context = contextCopy4;
  synthesizer = synthesizerCopy4;
LABEL_5:
  if (!contextCopy)
  {
    [MEMORY[0x277CCA890] currentHandler];
    synthesizerCopy5 = synthesizer;
    contextCopy5 = context;
    v72 = performerCopy;
    v74 = v73 = delegateCopy;
    [v74 handleFailureInMethod:a2 object:self file:@"SVXSession.m" lineNumber:365 description:{@"Invalid parameter not satisfying: %@", @"instanceContext != nil"}];

    delegateCopy = v73;
    performerCopy = v72;
    context = contextCopy5;
    synthesizer = synthesizerCopy5;
  }

  if (!preferencesCopy)
  {
    [MEMORY[0x277CCA890] currentHandler];
    synthesizerCopy6 = synthesizer;
    contextCopy6 = context;
    v76 = performerCopy;
    v78 = v77 = delegateCopy;
    [v78 handleFailureInMethod:a2 object:self file:@"SVXSession.m" lineNumber:366 description:{@"Invalid parameter not satisfying: %@", @"preferences != nil"}];

    delegateCopy = v77;
    performerCopy = v76;
    context = contextCopy6;
    synthesizer = synthesizerCopy6;
  }

  if (!analyticsCopy)
  {
    [MEMORY[0x277CCA890] currentHandler];
    synthesizerCopy7 = synthesizer;
    contextCopy7 = context;
    v80 = performerCopy;
    v82 = v81 = delegateCopy;
    [v82 handleFailureInMethod:a2 object:self file:@"SVXSession.m" lineNumber:367 description:{@"Invalid parameter not satisfying: %@", @"analytics != nil"}];

    delegateCopy = v81;
    performerCopy = v80;
    context = contextCopy7;
    synthesizer = synthesizerCopy7;
  }

  v98.receiver = self;
  v98.super_class = SVXSession;
  v21 = [(SVXSession *)&v98 init];
  if (v21)
  {
    v91 = performerCopy;
    v22 = delegateCopy;
    v83 = managerCopy2;
    v23 = MEMORY[0x277CEF098];
    v24 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136316930;
      v100 = "[SVXSession initWithPerformer:serviceCommandHandler:powerLevelManager:speechSynthesizer:instanceContext:preferences:analytics:delegate:]";
      v101 = 2112;
      v102 = v91;
      v103 = 2112;
      v104 = handlerCopy;
      v105 = 2112;
      v106 = synthesizerCopy;
      v107 = 2112;
      v108 = contextCopy;
      v109 = 2112;
      v110 = preferencesCopy;
      v111 = 2112;
      v112 = analyticsCopy;
      v113 = 2112;
      v114 = v22;
      _os_log_impl(&dword_2695B9000, v24, OS_LOG_TYPE_INFO, "%s performer = %@, serviceCommandHandler = %@, speechSynthesizer = %@, instanceContext = %@, preferences = %@, analytics = %@, delegate = %@", buf, 0x52u);
    }

    v21->_activityState = 1;
    v25 = objc_alloc_init(MEMORY[0x277CCAD78]);
    sessionUUID = v21->_sessionUUID;
    v21->_sessionUUID = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    sessionIdleAssertions = v21->_sessionIdleAssertions;
    v21->_sessionIdleAssertions = v27;

    v29 = *v23;
    if (os_log_type_enabled(*v23, OS_LOG_TYPE_INFO))
    {
      v30 = v21->_sessionUUID;
      *buf = 136315394;
      v100 = "[SVXSession initWithPerformer:serviceCommandHandler:powerLevelManager:speechSynthesizer:instanceContext:preferences:analytics:delegate:]";
      v101 = 2112;
      v102 = v30;
      _os_log_impl(&dword_2695B9000, v29, OS_LOG_TYPE_INFO, "%s sessionUUID = %@", buf, 0x16u);
    }

    objc_storeStrong(&v21->_performer, performer);
    objc_storeStrong(&v21->_serviceCommandHandler, obj);
    objc_storeStrong(&v21->_powerLevelManager, managerCopy);
    objc_storeStrong(&v21->_speechSynthesizer, synthesizer);
    [(SVXSpeechSynthesizer *)v21->_speechSynthesizer addListener:v21];
    objc_storeStrong(&v21->_instanceContext, context);
    objc_storeStrong(&v21->_preferences, preferences);
    objc_storeStrong(&v21->_analytics, analytics);
    delegateCopy = v22;
    objc_storeWeak(&v21->_delegate, v22);
    v21->_currentInstrumentationUIState = 1;
    v21->_currentState = 1;
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    currentSpeechRequestPendingBlocks = v21->_currentSpeechRequestPendingBlocks;
    v21->_currentSpeechRequestPendingBlocks = v31;

    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingRequestBarriers = v21->_pendingRequestBarriers;
    v21->_pendingRequestBarriers = v33;

    performerCopy = v91;
    v35 = [[SVXTaskTrackingCenter alloc] initWithPerformer:v91 delegate:v21];
    taskTrackingCenter = v21->_taskTrackingCenter;
    v21->_taskTrackingCenter = v35;

    v37 = objc_alloc_init(SVXAceViewSpeakableTextExtractor);
    aceViewSpeakableTextExtractor = v21->_aceViewSpeakableTextExtractor;
    v21->_aceViewSpeakableTextExtractor = v37;

    v39 = objc_alloc_init(SVXSpeechSynthesisUtils);
    speechSynthesisUtils = v21->_speechSynthesisUtils;
    v21->_speechSynthesisUtils = v39;

    v41 = objc_alloc_init(SVXSoundUtils);
    soundUtils = v21->_soundUtils;
    v21->_soundUtils = v41;

    v43 = objc_alloc_init(SVXAlarmAndTimerUtilities);
    alarmAndTimerUtils = v21->_alarmAndTimerUtils;
    v21->_alarmAndTimerUtils = v43;

    v45 = objc_alloc_init(SVXAFConnectionFactory);
    connectionFactory = v21->_connectionFactory;
    v21->_connectionFactory = v45;

    v47 = objc_alloc_init(SVXSessionUtils);
    sessionUtils = v21->_sessionUtils;
    v21->_sessionUtils = v47;

    v21->_audioSessionID = 0;
    v49 = objc_alloc_init(MEMORY[0x277CBEB58]);
    audioSessionAssertions = v21->_audioSessionAssertions;
    v21->_audioSessionAssertions = v49;

    v51 = objc_alloc_init(MEMORY[0x277CEF308]);
    modesConfiguration = v21->_modesConfiguration;
    v21->_modesConfiguration = v51;

    v53 = objc_alloc_init(MEMORY[0x277D60410]);
    client = v21->_client;
    v21->_client = v53;

    v21->_isStateFeedbackEnabled = [MEMORY[0x277CEF2A8] isStateFeedbackEnabled];
    managerCopy2 = v83;
  }

  v55 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[SVXSession dealloc]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = SVXSession;
  [(SVXSession *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXSession;
  v4 = [(SVXSession *)&v8 description];
  sessionUUID = self->_sessionUUID;
  v6 = [v3 initWithFormat:@"%@ {sessionUUID = %@, instanceContext = %@}", v4, sessionUUID, self->_instanceContext];

  return v6;
}

@end