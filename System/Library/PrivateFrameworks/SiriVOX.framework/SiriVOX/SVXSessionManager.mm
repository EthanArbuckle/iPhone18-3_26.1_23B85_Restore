@interface SVXSessionManager
- (SVXSessionManager)initWithModule:(id)a3;
- (SVXSessionManager)initWithModule:(id)a3 enableMyriad:(BOOL)a4;
- (id)_currentSession:(BOOL)a3;
- (void)_activateWithContext:(id)a3 activityState:(int64_t)a4 completion:(id)a5;
- (void)_attachToTether;
- (void)_deactivateWithContext:(id)a3 completion:(id)a4;
- (void)_fetchCurrentActivityStateWithCompletion:(id)a3;
- (void)_fetchCurrentAudioPowerWithType:(int64_t)a3 completion:(id)a4;
- (void)_fetchCurrentStateWithCompletion:(id)a3;
- (void)_fetchStereoPairStateWithCompletion:(id)a3;
- (void)_fetchStereoPartnerLastMyriadWinDate;
- (void)_handleDeviceProblemsStateChanged:(id)a3;
- (void)_handleDeviceSetupContextChanged:(id)a3;
- (void)_handleFetchedStereoPartnerLastMyriadWinDate:(id)a3;
- (void)_handleLocalDeviceContextChanged:(id)a3;
- (void)_handleMyriadForActivationContext:(id)a3;
- (void)_handleSession:(id)a3 didActivateWithContext:(id)a4;
- (void)_handleSession:(id)a3 didBecomeActiveWithActivationContext:(id)a4 activityUUID:(id)a5 turnID:(id)a6;
- (void)_handleSession:(id)a3 didDeactivateWithContext:(id)a4;
- (void)_handleSession:(id)a3 didNotActivateWithContext:(id)a4 error:(id)a5;
- (void)_handleSession:(id)a3 didResignActiveWithDeactivationContext:(id)a4 activityUUID:(id)a5;
- (void)_handleSession:(id)a3 willActivateWithContext:(id)a4;
- (void)_handleSession:(id)a3 willBecomeActiveWithActivationContext:(id)a4 activityUUID:(id)a5 turnID:(id)a6;
- (void)_handleSession:(id)a3 willResignActiveWithOptions:(unint64_t)a4 duration:(double)a5 activityUUID:(id)a6;
- (void)_handleSessionDidInvalidate:(id)a3;
- (void)_handleSpeechSynthesizerDidCancelRequest:(id)a3 taskTracker:(id)a4;
- (void)_handleSpeechSynthesizerDidFailRequest:(id)a3 taskTracker:(id)a4 error:(id)a5;
- (void)_handleSpeechSynthesizerDidFinishRequest:(id)a3 utteranceInfo:(id)a4 record:(id)a5 taskTracker:(id)a6;
- (void)_handleSpeechSynthesizerDidInterruptRequest:(id)a3 taskTracker:(id)a4;
- (void)_handleSpeechSynthesizerDidStartRequest:(id)a3 record:(id)a4 taskTracker:(id)a5;
- (void)_handleSpeechSynthesizerWillStartRequest:(id)a3 taskTracker:(id)a4;
- (void)_invalidateCurrentSession;
- (void)_myriadStereoPartnerDataChanged;
- (void)_preheatWithActivationSource:(int64_t)a3;
- (void)_prewarmWithContext:(id)a3 completion:(id)a4;
- (void)_processNextOperations;
- (void)activateWithContext:(id)a3 completion:(id)a4;
- (void)addActivationListener:(id)a3;
- (void)addActivityListener:(id)a3;
- (void)addAudioPowerUpdateListener:(id)a3;
- (void)attachToTether;
- (void)continuousVoiceTriggerDetectedWithCompletion:(id)a3;
- (void)deactivateWithContext:(id)a3 completion:(id)a4;
- (void)deviceLostMyriadElection;
- (void)deviceSetupManager:(id)a3 didUpdateContext:(id)a4;
- (void)deviceWonMyriadElection;
- (void)fetchCurrentActivityStateWithCompletion:(id)a3;
- (void)fetchCurrentAlarmAndTimerFiringContextWithCompletion:(id)a3;
- (void)fetchCurrentAudioPowerWithType:(int64_t)a3 completion:(id)a4;
- (void)fetchCurrentStateWithCompletion:(id)a3;
- (void)getAudioSessionProviderWithCompletion:(id)a3;
- (void)getCurrentSessionUsingBlock:(id)a3;
- (void)localDeviceContextDidUpdate:(id)a3;
- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5;
- (void)preheatWithActivationSource:(int64_t)a3;
- (void)prewarmWithContext:(id)a3 completion:(id)a4;
- (void)queue:(id)a3 didEnqueueObjects:(id)a4;
- (void)removeActivationListener:(id)a3;
- (void)removeActivityListener:(id)a3;
- (void)removeAudioPowerUpdateListener:(id)a3;
- (void)session:(id)a3 audioSessionDidBecomeActive:(BOOL)a4 activationContext:(id)a5 deactivationContext:(id)a6;
- (void)session:(id)a3 audioSessionWillBecomeActive:(BOOL)a4 activationContext:(id)a5 deactivationContext:(id)a6;
- (void)session:(id)a3 didActivateWithContext:(id)a4;
- (void)session:(id)a3 didBecomeActiveWithActivationContext:(id)a4 activityUUID:(id)a5 turnID:(id)a6;
- (void)session:(id)a3 didChangeFromState:(int64_t)a4 toState:(int64_t)a5;
- (void)session:(id)a3 didDeactivateWithContext:(id)a4;
- (void)session:(id)a3 didEndUpdateAudioPowerWithType:(int64_t)a4;
- (void)session:(id)a3 didFailAppLaunchWithBundleIdentifier:(id)a4;
- (void)session:(id)a3 didNotActivateWithContext:(id)a4 error:(id)a5;
- (void)session:(id)a3 didResignActiveWithDeactivationContext:(id)a4 activityUUID:(id)a5;
- (void)session:(id)a3 didStartSoundWithID:(int64_t)a4;
- (void)session:(id)a3 didStopSoundWithID:(int64_t)a4 error:(id)a5;
- (void)session:(id)a3 willActivateWithContext:(id)a4;
- (void)session:(id)a3 willBecomeActiveWithActivationContext:(id)a4 activityUUID:(id)a5 turnID:(id)a6;
- (void)session:(id)a3 willBeginUpdateAudioPowerWithType:(int64_t)a4 wrapper:(id)a5;
- (void)session:(id)a3 willChangeFromState:(int64_t)a4 toState:(int64_t)a5;
- (void)session:(id)a3 willDeactivateWithContext:(id)a4;
- (void)session:(id)a3 willProcessAppLaunchWithBundleIdentifier:(id)a4;
- (void)session:(id)a3 willResignActiveWithOptions:(unint64_t)a4 duration:(double)a5 activityUUID:(id)a6;
- (void)session:(id)a3 willStartSoundWithID:(int64_t)a4;
- (void)sessionDidInvalidate:(id)a3;
- (void)speechSynthesizerDidCancelRequest:(id)a3 taskTracker:(id)a4;
- (void)speechSynthesizerDidFailRequest:(id)a3 taskTracker:(id)a4 error:(id)a5;
- (void)speechSynthesizerDidFinishRequest:(id)a3 utteranceInfo:(id)a4 record:(id)a5 taskTracker:(id)a6;
- (void)speechSynthesizerDidInterruptRequest:(id)a3 taskTracker:(id)a4;
- (void)speechSynthesizerDidStartRequest:(id)a3 record:(id)a4 taskTracker:(id)a5;
- (void)speechSynthesizerWillStartRequest:(id)a3 taskTracker:(id)a4;
- (void)startWithModuleInstanceProvider:(id)a3 platformDependencies:(id)a4;
- (void)stopWithModuleInstanceProvider:(id)a3;
- (void)unduckDevice;
@end

@implementation SVXSessionManager

- (void)_handleMyriadForActivationContext:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v47 = "[SVXSessionManager _handleMyriadForActivationContext:]";
    v48 = 2112;
    v49 = v4;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  v7 = [(__CFString *)v4 requestInfo];
  v8 = [v7 speechRequestOptions];
  v9 = [v8 scdaContext];
  v10 = [(__CFString *)v4 source];
  if (v10 <= 6)
  {
    if ((v10 - 1) >= 2)
    {
      if (v10 == 6)
      {
        v11 = [(SVXSessionManager *)self _currentSession:0];
        goto LABEL_7;
      }

      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (v10 == 9)
  {
LABEL_17:
    v11 = [(SVXSessionManager *)self _currentSession:0];
    goto LABEL_18;
  }

  if (v10 != 7)
  {
LABEL_21:
    v30 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v35 = v30;
      v36 = [(__CFString *)v4 source];
      if (v36 > 9)
      {
        v37 = @"(unknown)";
      }

      else
      {
        v37 = off_279C67C58[v36];
      }

      v38 = v37;
      *buf = 136315394;
      v47 = "[SVXSessionManager _handleMyriadForActivationContext:]";
      v48 = 2112;
      v49 = v38;
      _os_log_error_impl(&dword_2695B9000, v35, OS_LOG_TYPE_ERROR, "%s Ignored because Myriad behavior undefined for Unspecified Activation Source: %@", buf, 0x16u);
    }

    goto LABEL_22;
  }

  if (([v7 isSpeechRequest] & 1) == 0)
  {
LABEL_22:
    v11 = [(SVXSessionManager *)self _currentSession:0];
    goto LABEL_31;
  }

  v27 = [v8 isVoiceTrigger];
  v11 = [(SVXSessionManager *)self _currentSession:0];
  if (v27)
  {
LABEL_7:
    v12 = [v11 beginWaitingForMyriadDecision];
    myriadToken = self->_myriadToken;
    self->_myriadToken = v12;

    v14 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v15 = self->_myriadToken;
      *buf = 136315394;
      v47 = "[SVXSessionManager _handleMyriadForActivationContext:]";
      v48 = 2112;
      v49 = v15;
      _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s Begin waiting for Myriad token %@.", buf, 0x16u);
    }

    v44 = [(AFDeviceContext *)self->_localDeviceContext playbackStateSnapshot];
    v16 = [v44 playbackState];
    v43 = [MEMORY[0x277CCAC38] processInfo];
    [v43 systemUptime];
    v18 = v17;
    v42 = [(AFDeviceContext *)self->_localDeviceContext playbackStateMetadata];
    v41 = [v42 deliveryDate];
    [v41 timeIntervalSinceNow];
    v20 = v19;
    v21 = [(AFDeviceContext *)self->_localDeviceContext alarmSnapshot];
    v22 = [(AFDeviceContext *)self->_localDeviceContext timerSnapshot];
    v23 = v21;
    v45 = v22;
    v24 = objc_alloc_init(MEMORY[0x277D55B00]);
    v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v26 = v25;
    if (v16 == 4)
    {
      [v25 addObject:&unk_287A34498];
      [(__CFString *)v24 setMediaPlaybackInterruptedTime:v18 + v20];
    }

    else if (v16 == 1)
    {
      [v25 addObject:&unk_287A34480];
    }

    v31 = [v23 notifiedFiringAlarmIDs];
    if ([v31 count])
    {
    }

    else
    {
      [v45 notifiedFiringTimerIDs];
      v32 = v40 = v24;
      v39 = [v32 count];

      v24 = v40;
      if (!v39)
      {
LABEL_28:
        [(__CFString *)v24 setReasons:v26];

        v33 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v47 = "[SVXSessionManager _handleMyriadForActivationContext:]";
          v48 = 2112;
          v49 = v24;
          v50 = 2112;
          v51 = v9;
          _os_log_impl(&dword_2695B9000, v33, OS_LOG_TYPE_INFO, "%s Myriad configured for Voice Trigger with scdaGoodnessScoreContext: %@ and scdaContext: %@.", buf, 0x20u);
        }

        [(SVXMyriadDeviceManager *)self->_myriadDeviceManager startAdvertising:0 withSCDAGoodnessScoreContext:v24 withSCDAAudioContext:v9 completion:0];

        goto LABEL_31;
      }
    }

    [v26 addObject:&unk_287A344B0];
    goto LABEL_28;
  }

LABEL_18:
  v28 = [v11 beginWaitingForMyriadDecision];
  v29 = *v5;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v47 = "[SVXSessionManager _handleMyriadForActivationContext:]";
    v48 = 2112;
    v49 = v9;
    _os_log_impl(&dword_2695B9000, v29, OS_LOG_TYPE_INFO, "%s Myriad configured for Direct Trigger with scdaContext %@.", buf, 0x16u);
  }

  [(SVXMyriadDeviceManager *)self->_myriadDeviceManager startAdvertising:1 withSCDAGoodnessScoreContext:0 withSCDAAudioContext:v9 completion:0];
  [v11 endWaitingForMyriadDecisionWithToken:v28 result:1];

LABEL_31:
  v34 = *MEMORY[0x277D85DE8];
}

- (void)_handleLocalDeviceContextChanged:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v4 identifier];
    v12 = 136315394;
    v13 = "[SVXSessionManager _handleLocalDeviceContextChanged:]";
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s localDeviceContext = %@", &v12, 0x16u);
  }

  v8 = [v4 copy];
  localDeviceContext = self->_localDeviceContext;
  self->_localDeviceContext = v8;

  v10 = [(SVXSessionManager *)self _currentSession:0];
  [v10 updateLocalDeviceContext:v4];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeviceSetupContextChanged:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[SVXSessionManager _handleDeviceSetupContextChanged:]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s deviceSetupContext = %@", &v13, 0x16u);
  }

  v6 = [v4 copy];
  deviceSetupContext = self->_deviceSetupContext;
  self->_deviceSetupContext = v6;

  self->_needsClearContext = 1;
  v8 = [v4 beginDate];
  v9 = [v4 endDate];
  v10 = [(SVXSessionManager *)self _deviceSetupIsActive:v8 endDate:v9 recencyDuration:0.0];

  [(SVXMyriadDeviceManager *)self->_myriadDeviceManager setupEnabled:v10];
  v11 = [(SVXSessionManager *)self _currentSession:0];
  [v11 updateDeviceSetupContext:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeviceProblemsStateChanged:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[SVXSessionManager _handleDeviceProblemsStateChanged:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s deviceProblemsState = %@", &v10, 0x16u);
  }

  v6 = [v4 copy];
  deviceProblemsState = self->_deviceProblemsState;
  self->_deviceProblemsState = v6;

  v8 = [(SVXSessionManager *)self _currentSession:0];
  [v8 updateDeviceProblemsState:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechSynthesizerDidFailRequest:(id)a3 taskTracker:(id)a4 error:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = @"idle";
    v10 = 136315394;
    v11 = "[SVXSessionManager _handleSpeechSynthesizerDidFailRequest:taskTracker:error:]";
    v12 = 2112;
    v13 = @"idle";
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s speechSynthesisState = %@", &v10, 0x16u);
  }

  self->_speechSynthesisState = 1;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechSynthesizerDidInterruptRequest:(id)a3 taskTracker:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = @"idle";
    v9 = 136315394;
    v10 = "[SVXSessionManager _handleSpeechSynthesizerDidInterruptRequest:taskTracker:]";
    v11 = 2112;
    v12 = @"idle";
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s speechSynthesisState = %@", &v9, 0x16u);
  }

  self->_speechSynthesisState = 1;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechSynthesizerDidCancelRequest:(id)a3 taskTracker:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = @"idle";
    v9 = 136315394;
    v10 = "[SVXSessionManager _handleSpeechSynthesizerDidCancelRequest:taskTracker:]";
    v11 = 2112;
    v12 = @"idle";
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s speechSynthesisState = %@", &v9, 0x16u);
  }

  self->_speechSynthesisState = 1;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechSynthesizerDidFinishRequest:(id)a3 utteranceInfo:(id)a4 record:(id)a5 taskTracker:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277CEF098];
  v15 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = @"idle";
    v21 = 136315394;
    v22 = "[SVXSessionManager _handleSpeechSynthesizerDidFinishRequest:utteranceInfo:record:taskTracker:]";
    v23 = 2112;
    v24 = @"idle";
    _os_log_impl(&dword_2695B9000, v16, OS_LOG_TYPE_INFO, "%s speechSynthesisState = %@", &v21, 0x16u);

    v15 = *v14;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v21 = 136315394;
    v22 = "[SVXSessionManager _handleSpeechSynthesizerDidFinishRequest:utteranceInfo:record:taskTracker:]";
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s speechSynthesisRecord = %@", &v21, 0x16u);
  }

  self->_speechSynthesisState = 1;
  v18 = [(__CFString *)v12 copy];
  speechSynthesisRecord = self->_speechSynthesisRecord;
  self->_speechSynthesisRecord = v18;

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechSynthesizerDidStartRequest:(id)a3 record:(id)a4 taskTracker:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CEF098];
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = @"speaking";
    v18 = 136315394;
    v19 = "[SVXSessionManager _handleSpeechSynthesizerDidStartRequest:record:taskTracker:]";
    v20 = 2112;
    v21 = @"speaking";
    _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s speechSynthesisState = %@", &v18, 0x16u);

    v12 = *v11;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v18 = 136315394;
    v19 = "[SVXSessionManager _handleSpeechSynthesizerDidStartRequest:record:taskTracker:]";
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s speechSynthesisRecord = %@", &v18, 0x16u);
  }

  self->_speechSynthesisState = 2;
  v15 = [(__CFString *)v9 copy];
  speechSynthesisRecord = self->_speechSynthesisRecord;
  self->_speechSynthesisRecord = v15;

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleSpeechSynthesizerWillStartRequest:(id)a3 taskTracker:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [a4 context];
  v6 = [v5 dialogIdentifier];

  if (v6)
  {
    [(SVXSessionActivityAnnouncer *)self->_activityAnnouncer sessionWillPresentFeedbackWithDialogIdentifier:v6];
  }

  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = @"speaking";
    v11 = 136315394;
    v12 = "[SVXSessionManager _handleSpeechSynthesizerWillStartRequest:taskTracker:]";
    v13 = 2112;
    v14 = @"speaking";
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s speechSynthesisState = %@", &v11, 0x16u);
  }

  self->_speechSynthesisState = 2;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleSessionDidInvalidate:(id)a3
{
  currentSession = self->_currentSession;
  if (currentSession == a3)
  {
    self->_currentSession = 0;
  }

  v5 = [(SVXModule *)self->_module performer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__SVXSessionManager__handleSessionDidInvalidate___block_invoke;
  v6[3] = &unk_279C68FC0;
  v6[4] = self;
  [v5 performBlock:v6 withOptions:0];
}

- (void)_fetchStereoPairStateWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SVXSessionManager _fetchStereoPairStateWithCompletion:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", &buf, 0xCu);
  }

  if (v4)
  {
    v6 = [(SVXModule *)self->_module performer];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__9035;
    v17 = __Block_byref_object_dispose__9036;
    v18 = objc_alloc_init(MEMORY[0x277CEF3A8]);
    v7 = *(*(&buf + 1) + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__SVXSessionManager__fetchStereoPairStateWithCompletion___block_invoke;
    v10[3] = &unk_279C67B80;
    v8 = v6;
    v11 = v8;
    v12 = v4;
    p_buf = &buf;
    [v7 getStereoPairState:v10];

    _Block_object_dispose(&buf, 8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __57__SVXSessionManager__fetchStereoPairStateWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[SVXSessionManager _fetchStereoPairStateWithCompletion:]_block_invoke";
      v16 = 2112;
      v17 = v5;
      _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__SVXSessionManager__fetchStereoPairStateWithCompletion___block_invoke_56;
  v11[3] = &unk_279C67B58;
  v7 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = a2;
  [v7 performBlock:v11];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleFetchedStereoPartnerLastMyriadWinDate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[SVXSessionManager _handleFetchedStereoPartnerLastMyriadWinDate:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s lastWin = %@", &v8, 0x16u);
  }

  lastStereoPartnerMyriadWin = self->_lastStereoPartnerMyriadWin;
  self->_lastStereoPartnerMyriadWin = v4;

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_fetchStereoPartnerLastMyriadWinDate
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SVXSessionManager _fetchStereoPartnerLastMyriadWinDate]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", &buf, 0xCu);
  }

  v4 = [(SVXModule *)self->_module performer];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9035;
  v16 = __Block_byref_object_dispose__9036;
  v17 = objc_alloc_init(MEMORY[0x277CEF3A8]);
  objc_initWeak(&location, self);
  v5 = *(*(&buf + 1) + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__SVXSessionManager__fetchStereoPartnerLastMyriadWinDate__block_invoke;
  v8[3] = &unk_279C67B30;
  v6 = v4;
  v9 = v6;
  objc_copyWeak(&v11, &location);
  p_buf = &buf;
  [v5 getStereoPartnerLastMyriadWinDate:v8];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);

  v7 = *MEMORY[0x277D85DE8];
}

void __57__SVXSessionManager__fetchStereoPartnerLastMyriadWinDate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[SVXSessionManager _fetchStereoPartnerLastMyriadWinDate]_block_invoke";
      v17 = 2112;
      v18 = v6;
      _os_log_error_impl(&dword_2695B9000, v7, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__SVXSessionManager__fetchStereoPartnerLastMyriadWinDate__block_invoke_54;
    v12[3] = &unk_279C690B0;
    objc_copyWeak(&v14, (a1 + 48));
    v13 = v5;
    [v8 performBlock:v12];

    objc_destroyWeak(&v14);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = *MEMORY[0x277D85DE8];
}

void __57__SVXSessionManager__fetchStereoPartnerLastMyriadWinDate__block_invoke_54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleFetchedStereoPartnerLastMyriadWinDate:*(a1 + 32)];
}

- (void)_handleSession:(id)a3 didDeactivateWithContext:(id)a4
{
  activationAnnouncer = self->_activationAnnouncer;
  v6 = a4;
  [(SVXSessionActivationAnnouncer *)activationAnnouncer sessionManager:self didDeactivateWithContext:v6];
  [(SVXSessionActivityAnnouncer *)self->_activityAnnouncer sessionDidDeactivateWithContext:v6];

  v7 = [(SVXModule *)self->_module performer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__SVXSessionManager__handleSession_didDeactivateWithContext___block_invoke;
  v8[3] = &unk_279C68FC0;
  v8[4] = self;
  [v7 performBlock:v8 withOptions:0];
}

- (void)_handleSession:(id)a3 didNotActivateWithContext:(id)a4 error:(id)a5
{
  myriadDeviceManager = self->_myriadDeviceManager;
  v8 = a5;
  v9 = a4;
  [(SVXMyriadDeviceManager *)myriadDeviceManager resetMyriad];
  [(SVXSessionActivationAnnouncer *)self->_activationAnnouncer sessionManager:self didNotActivateWithContext:v9 error:v8];

  v10 = [(SVXModule *)self->_module performer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__SVXSessionManager__handleSession_didNotActivateWithContext_error___block_invoke;
  v11[3] = &unk_279C68FC0;
  v11[4] = self;
  [v10 performBlock:v11 withOptions:0];
}

- (void)_handleSession:(id)a3 didActivateWithContext:(id)a4
{
  [(SVXSessionActivationAnnouncer *)self->_activationAnnouncer sessionManager:self didActivateWithContext:a4];
  v5 = [(SVXModule *)self->_module performer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__SVXSessionManager__handleSession_didActivateWithContext___block_invoke;
  v6[3] = &unk_279C68FC0;
  v6[4] = self;
  [v5 performBlock:v6 withOptions:0];
}

- (void)_handleSession:(id)a3 willActivateWithContext:(id)a4
{
  v5 = a4;
  [(SVXSessionManager *)self _handleMyriadForActivationContext:v5];
  [(SVXSessionActivationAnnouncer *)self->_activationAnnouncer sessionManager:self willActivateWithContext:v5];
}

- (void)_handleSession:(id)a3 didResignActiveWithDeactivationContext:(id)a4 activityUUID:(id)a5
{
  v30[2] = *MEMORY[0x277D85DE8];
  v29[0] = @"sessionUUID";
  v8 = a5;
  v9 = a4;
  v10 = [a3 sessionUUID];
  v11 = [v10 UUIDString];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"unknown";
  }

  v29[1] = @"activityUUID";
  v30[0] = v13;
  v14 = [v8 UUIDString];

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = @"unknown";
  }

  v30[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v17 = [(SVXModule *)self->_module analytics];
  [v17 logEventWithType:1409 context:v16];

  v18 = [(SVXModule *)self->_module instanceContext];
  v19 = [v18 isDefault];

  if (v19)
  {
    coreDuetQueue = self->_coreDuetQueue;
    AFRecordCoreDuetEvent();
    v21 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v28 = "[SVXSessionManager _handleSession:didResignActiveWithDeactivationContext:activityUUID:]";
      _os_log_impl(&dword_2695B9000, v21, OS_LOG_TYPE_INFO, "%s Donating Siri UI end event to Biome Library", buf, 0xCu);
    }

    _recordStartEndBiomeEvent(self->_biomeQueue, @"com.apple.siri.ui.end", v16);
  }

  v22 = [MEMORY[0x277CCAC38] processInfo];
  [v22 systemUptime];
  self->_lastSessionResignActiveTimestamp = v23;

  [(SVXMyriadDeviceManager *)self->_myriadDeviceManager resetMyriad];
  [(SVXSessionActivityAnnouncer *)self->_activityAnnouncer sessionDidResignActiveWithDeactivationContext:v9];

  v24 = [(SVXModule *)self->_module performer];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __88__SVXSessionManager__handleSession_didResignActiveWithDeactivationContext_activityUUID___block_invoke;
  v26[3] = &unk_279C68FC0;
  v26[4] = self;
  [v24 performBlock:v26 withOptions:0];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handleSession:(id)a3 willResignActiveWithOptions:(unint64_t)a4 duration:(double)a5 activityUUID:(id)a6
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = @"sessionUUID";
  v10 = a6;
  v11 = [a3 sessionUUID];
  v12 = [v11 UUIDString];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"unknown";
  }

  v20[1] = @"activityUUID";
  v21[0] = v14;
  v15 = [v10 UUIDString];

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = @"unknown";
  }

  v21[1] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v18 = [(SVXModule *)self->_module analytics];
  [v18 logEventWithType:1408 context:v17];

  [(SVXSessionActivityAnnouncer *)self->_activityAnnouncer sessionWillResignActiveWithOptions:a4 duration:a5];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleSession:(id)a3 didBecomeActiveWithActivationContext:(id)a4 activityUUID:(id)a5 turnID:(id)a6
{
  v30[2] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v29[0] = @"sessionUUID";
  v12 = a5;
  v13 = [a3 sessionUUID];
  v14 = [v13 UUIDString];
  v29[1] = @"activityUUID";
  v30[0] = v14;
  v15 = [v12 UUIDString];

  v16 = @"unknown";
  if (v15)
  {
    v16 = v15;
  }

  v30[1] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  if (!v11)
  {
    v18 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v28 = "[SVXSessionManager _handleSession:didBecomeActiveWithActivationContext:activityUUID:turnID:]";
      _os_log_fault_impl(&dword_2695B9000, v18, OS_LOG_TYPE_FAULT, "%s turnID is nil", buf, 0xCu);
    }
  }

  v19 = [(SVXModule *)self->_module analytics];
  [v19 logEventWithType:1407 context:v17];

  v20 = [(SVXModule *)self->_module instanceContext];
  v21 = [v20 isDefault];

  if (v21)
  {
    coreDuetQueue = self->_coreDuetQueue;
    AFRecordCoreDuetEvent();
    v23 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v28 = "[SVXSessionManager _handleSession:didBecomeActiveWithActivationContext:activityUUID:turnID:]";
      _os_log_impl(&dword_2695B9000, v23, OS_LOG_TYPE_INFO, "%s Donating Siri UI begin event to Biome Library", buf, 0xCu);
    }

    _recordStartEndBiomeEvent(self->_biomeQueue, @"com.apple.siri.ui.begin", v17);
  }

  [(SVXSessionActivityAnnouncer *)self->_activityAnnouncer sessionDidBecomeActiveWithActivationContext:v10 turnID:v11];
  v24 = [(SVXModule *)self->_module performer];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __93__SVXSessionManager__handleSession_didBecomeActiveWithActivationContext_activityUUID_turnID___block_invoke;
  v26[3] = &unk_279C68FC0;
  v26[4] = self;
  [v24 performBlock:v26 withOptions:0];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handleSession:(id)a3 willBecomeActiveWithActivationContext:(id)a4 activityUUID:(id)a5 turnID:(id)a6
{
  v24[2] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v23[0] = @"sessionUUID";
  v12 = a5;
  v13 = [a3 sessionUUID];
  v14 = [v13 UUIDString];
  v23[1] = @"activityUUID";
  v24[0] = v14;
  v15 = [v12 UUIDString];

  v16 = @"unknown";
  if (v15)
  {
    v16 = v15;
  }

  v24[1] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v18 = [(SVXModule *)self->_module analytics];
  [v18 logEventWithType:1406 context:v17];

  if (!v11)
  {
    v19 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_FAULT))
    {
      v21 = 136315138;
      v22 = "[SVXSessionManager _handleSession:willBecomeActiveWithActivationContext:activityUUID:turnID:]";
      _os_log_fault_impl(&dword_2695B9000, v19, OS_LOG_TYPE_FAULT, "%s turnID is nil", &v21, 0xCu);
    }
  }

  [(SVXSessionActivityAnnouncer *)self->_activityAnnouncer sessionWillBecomeActiveWithActivationContext:v10 turnID:v11];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_fetchCurrentAudioPowerWithType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v9 = v6;
    v7 = [(SVXSessionManager *)self _currentSession:0];
    v8 = v7;
    if (v7)
    {
      [v7 getAudioPowerWithType:a3 completion:v9];
    }

    else
    {
      v9[2](v9, 0);
    }

    v6 = v9;
  }
}

- (void)_fetchCurrentActivityStateWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(SVXSessionManager *)self _currentSession:0];
    v6 = v5;
    if (v5)
    {
      [v5 getActivityStateWithCompletion:v7];
    }

    else
    {
      v7[2](v7, 1);
    }

    v4 = v7;
  }
}

- (void)_fetchCurrentStateWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(SVXSessionManager *)self _currentSession:0];
    v6 = v5;
    if (v5)
    {
      [v5 getStateWithCompletion:v7];
    }

    else
    {
      v7[2](v7, 1);
    }

    v4 = v7;
  }
}

- (void)_deactivateWithContext:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[SVXSessionManager _deactivateWithContext:completion:]";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", &v12, 0x16u);
  }

  v9 = [(SVXSessionManager *)self _currentSession:0];
  v10 = v9;
  if (v9)
  {
    [v9 deactivateWithContext:v6 completion:v7];
  }

  else if (v7)
  {
    v7[2](v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_activateWithContext:(id)a3 activityState:(int64_t)a4 completion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "[SVXSessionManager _activateWithContext:activityState:completion:]";
    v20 = 2112;
    v21 = v8;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s context = %@, activityState = %ld", buf, 0x20u);
  }

  if (a4 == 1 && (([MEMORY[0x277CCAC38] processInfo], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "systemUptime"), v13 = v12 - self->_lastSessionResignActiveTimestamp, v11, v13 > 60.0) || self->_needsClearContext))
  {
    self->_needsClearContext = 0;
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(SVXSessionManager *)self _currentSession:1];
  v16 = [v15 activateWithContext:v8 options:v14 deviceSetupContext:self->_deviceSetupContext deviceProblemsState:self->_deviceProblemsState localDeviceContext:self->_localDeviceContext speechSynthesisRecord:self->_speechSynthesisRecord speechSynthesisState:self->_speechSynthesisState speechRecordingAlertPolicy:0 completion:v9];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_prewarmWithContext:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[SVXSessionManager _prewarmWithContext:completion:]";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", &v11, 0x16u);
  }

  [(SVXMyriadDeviceManager *)self->_myriadDeviceManager preheatMyriad];
  v9 = [(SVXSessionManager *)self _currentSession:1];
  [v9 prewarmWithContext:v6 completion:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_preheatWithActivationSource:(int64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    if (a3 > 9)
    {
      v8 = @"(unknown)";
    }

    else
    {
      v8 = off_279C67C58[a3];
    }

    v9 = v8;
    v18 = 136315394;
    v19 = "[SVXSessionManager _preheatWithActivationSource:]";
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s activationSource = %@", &v18, 0x16u);
  }

  if (a3 == 6)
  {
    v10 = [(SVXSessionManager *)self _currentSession:1];
    v11 = v10;
    v12 = 2;
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    v10 = [(SVXSessionManager *)self _currentSession:1];
    v11 = v10;
    v12 = 0;
LABEL_10:
    [v10 preheatWithStyle:v12];

    goto LABEL_12;
  }

  v13 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    v15 = v13;
    if (a3 > 9)
    {
      v16 = @"(unknown)";
    }

    else
    {
      v16 = off_279C67C58[a3];
    }

    v17 = v16;
    v18 = 136315394;
    v19 = "[SVXSessionManager _preheatWithActivationSource:]";
    v20 = 2112;
    v21 = v17;
    _os_log_error_impl(&dword_2695B9000, v15, OS_LOG_TYPE_ERROR, "%s Ignored because activation source %@ does not support preheat.", &v18, 0x16u);
  }

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_processNextOperations
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[SVXSessionManager _processNextOperations]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__SVXSessionManager__processNextOperations__block_invoke;
  v14[3] = &unk_279C67CB0;
  v14[4] = self;
  v5 = MEMORY[0x26D642680](v14);
  v6 = [(SVXSessionManager *)self _currentSession:0];
  v7 = *v3;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[SVXSessionManager _processNextOperations]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s currentSession = %@", buf, 0x16u);
  }

  if (v6)
  {
    v8 = [(SVXModule *)self->_module performer];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__SVXSessionManager__processNextOperations__block_invoke_40;
    v11[3] = &unk_279C67B08;
    v12 = v8;
    v13 = v5;
    v9 = v8;
    [v6 getActivityStateWithCompletion:v11];
  }

  else
  {
    v5[2](v5, 1);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __43__SVXSessionManager__processNextOperations__block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [*(*(a1 + 32) + 144) dequeueObject];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SVXSessionManager _processNextOperations]_block_invoke";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s dequeuedOperation = %@", buf, 0x16u);
  }

  if (v4)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__SVXSessionManager__processNextOperations__block_invoke_37;
    v8[3] = &unk_279C67A90;
    v9 = *(a1 + 32);
    v10 = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__SVXSessionManager__processNextOperations__block_invoke_2;
    v7[3] = &unk_279C67AB8;
    v7[4] = v9;
    [v4 handleOperationUsingActivationBlock:v8 deactivationBlock:v7];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __43__SVXSessionManager__processNextOperations__block_invoke_40(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    if (a2 > 4)
    {
      v6 = @"(unknown)";
    }

    else
    {
      v6 = off_279C676D8[a2];
    }

    v7 = v6;
    *buf = 136315394;
    v14 = "[SVXSessionManager _processNextOperations]_block_invoke";
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s activityState = %@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__SVXSessionManager__processNextOperations__block_invoke_41;
  v10[3] = &unk_279C67AE0;
  v12 = a2;
  v8 = *(a1 + 32);
  v11 = *(a1 + 40);
  [v8 performBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __43__SVXSessionManager__processNextOperations__block_invoke_41(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 == 4 || v1 == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_attachToTether
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(SVXSessionManager *)self _deviceSupportsSiriMUX])
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[SVXSessionManager _attachToTether]";
      _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s Setting _needsClearContext to YES for MUX", &v5, 0xCu);
    }

    self->_needsClearContext = 1;
  }

  [(AFSiriTether *)self->_tether attach:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateCurrentSession
{
  v3 = [(SVXModule *)self->_module performer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SVXSessionManager__invalidateCurrentSession__block_invoke;
  v4[3] = &unk_279C68FC0;
  v4[4] = self;
  [v3 performBlock:v4];
}

void __46__SVXSessionManager__invalidateCurrentSession__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 112);
    *(v3 + 112) = 0;
  }
}

- (id)_currentSession:(BOOL)a3
{
  v44 = *MEMORY[0x277D85DE8];
  currentSession = self->_currentSession;
  if (currentSession)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
  }

  if (!v5)
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v35 = "[SVXSessionManager _currentSession:]";
      _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s Creating new session...", buf, 0xCu);
    }

    v7 = [SVXSession alloc];
    v8 = [(SVXModule *)self->_module performer];
    speechSynthesizer = self->_speechSynthesizer;
    serviceCommandHandler = self->_serviceCommandHandler;
    powerLevelManager = self->_powerLevelManager;
    v12 = [(SVXModule *)self->_module instanceContext];
    v13 = [(SVXModule *)self->_module preferences];
    v14 = [(SVXModule *)self->_module analytics];
    v15 = [(SVXSession *)v7 initWithPerformer:v8 serviceCommandHandler:serviceCommandHandler powerLevelManager:powerLevelManager speechSynthesizer:speechSynthesizer instanceContext:v12 preferences:v13 analytics:v14 delegate:self];
    v16 = self->_currentSession;
    self->_currentSession = v15;

    v17 = MEMORY[0x277CEF098];
    v18 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v19 = self->_currentSession;
      module = self->_module;
      v21 = v18;
      v22 = [(SVXModule *)module performer];
      v24 = self->_speechSynthesizer;
      v23 = self->_serviceCommandHandler;
      *buf = 136316162;
      v35 = "[SVXSessionManager _currentSession:]";
      v36 = 2112;
      v37 = v19;
      v38 = 2112;
      v39 = v22;
      v40 = 2112;
      v41 = v23;
      v42 = 2112;
      v43 = v24;
      _os_log_impl(&dword_2695B9000, v21, OS_LOG_TYPE_INFO, "%s New session %@ created with (%@, %@, %@), configuring...", buf, 0x34u);
    }

    [(SVXSession *)self->_currentSession updateDeviceProblemsState:self->_deviceProblemsState];
    [(SVXSession *)self->_currentSession updateDeviceSetupContext:self->_deviceSetupContext];
    [(SVXSession *)self->_currentSession updateLocalDeviceContext:self->_localDeviceContext];
    v25 = *v17;
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_INFO))
    {
      v26 = self->_currentSession;
      deviceSetupContext = self->_deviceSetupContext;
      deviceProblemsState = self->_deviceProblemsState;
      localDeviceContext = self->_localDeviceContext;
      v30 = v25;
      v31 = [(AFDeviceContext *)localDeviceContext identifier];
      *buf = 136316162;
      v35 = "[SVXSessionManager _currentSession:]";
      v36 = 2112;
      v37 = v26;
      v38 = 2112;
      v39 = deviceProblemsState;
      v40 = 2112;
      v41 = deviceSetupContext;
      v42 = 2112;
      v43 = v31;
      _os_log_impl(&dword_2695B9000, v30, OS_LOG_TYPE_INFO, "%s New session %@ configured with (%@, %@, %@) and is ready to go.", buf, 0x34u);
    }

    currentSession = self->_currentSession;
  }

  v32 = *MEMORY[0x277D85DE8];

  return currentSession;
}

- (void)attachToTether
{
  v3 = [(SVXModule *)self->_module performer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__SVXSessionManager_attachToTether__block_invoke;
  v4[3] = &unk_279C68FC0;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)queue:(id)a3 didEnqueueObjects:(id)a4
{
  if (self->_queuedOperations == a3)
  {
    v11 = v4;
    v12 = v5;
    v7 = [(SVXModule *)self->_module performer];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__SVXSessionManager_queue_didEnqueueObjects___block_invoke;
    v9[3] = &unk_279C68FE8;
    v9[4] = self;
    v10 = v7;
    v8 = v7;
    [v8 performBlock:v9];
  }
}

uint64_t __45__SVXSessionManager_queue_didEnqueueObjects___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 144) count];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v9 = "[SVXSessionManager queue:didEnqueueObjects:]_block_invoke";
    v10 = 2048;
    v11 = v2;
    _os_log_debug_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEBUG, "%s numberOfQueuedOperations = %lu", buf, 0x16u);
  }

  if (v2 < 2)
  {
    result = [*(a1 + 32) _processNextOperations];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__SVXSessionManager_queue_didEnqueueObjects___block_invoke_35;
    v7[3] = &unk_279C68FC0;
    v4 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    result = [v4 performBlock:v7 withOptions:0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)localDeviceContextDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SVXSessionManager_localDeviceContextDidUpdate___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)deviceSetupManager:(id)a3 didUpdateContext:(id)a4
{
  v5 = a4;
  v6 = [(SVXModule *)self->_module performer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__SVXSessionManager_deviceSetupManager_didUpdateContext___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 performBlock:v8];
}

- (void)speechSynthesizerDidFailRequest:(id)a3 taskTracker:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SVXModule *)self->_module performer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__SVXSessionManager_speechSynthesizerDidFailRequest_taskTracker_error___block_invoke;
  v15[3] = &unk_279C68930;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 performBlock:v15];
}

- (void)speechSynthesizerDidInterruptRequest:(id)a3 taskTracker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SVXModule *)self->_module performer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__SVXSessionManager_speechSynthesizerDidInterruptRequest_taskTracker___block_invoke;
  v11[3] = &unk_279C68ED0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)speechSynthesizerDidCancelRequest:(id)a3 taskTracker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SVXModule *)self->_module performer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__SVXSessionManager_speechSynthesizerDidCancelRequest_taskTracker___block_invoke;
  v11[3] = &unk_279C68ED0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)speechSynthesizerDidFinishRequest:(id)a3 utteranceInfo:(id)a4 record:(id)a5 taskTracker:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SVXModule *)self->_module performer];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__SVXSessionManager_speechSynthesizerDidFinishRequest_utteranceInfo_record_taskTracker___block_invoke;
  v19[3] = &unk_279C68B70;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [v14 performBlock:v19];
}

- (void)speechSynthesizerDidStartRequest:(id)a3 record:(id)a4 taskTracker:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SVXModule *)self->_module performer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__SVXSessionManager_speechSynthesizerDidStartRequest_record_taskTracker___block_invoke;
  v15[3] = &unk_279C68930;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 performBlock:v15];
}

- (void)speechSynthesizerWillStartRequest:(id)a3 taskTracker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SVXModule *)self->_module performer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__SVXSessionManager_speechSynthesizerWillStartRequest_taskTracker___block_invoke;
  v11[3] = &unk_279C68ED0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)deactivateWithContext:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "[SVXSessionManager deactivateWithContext:completion:]";
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  v9 = objc_alloc(MEMORY[0x277CEF380]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54__SVXSessionManager_deactivateWithContext_completion___block_invoke;
  v22[3] = &unk_279C68BA0;
  v23 = v7;
  v10 = v7;
  v11 = [v9 initWithBlock:v22];
  v12 = [SVXSessionOperation alloc];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__SVXSessionManager_deactivateWithContext_completion___block_invoke_2;
  v20[3] = &unk_279C68FC0;
  v21 = v11;
  v13 = v11;
  v14 = [(SVXSessionOperation *)v12 initWithDeactivationContext:v6 completion:v20];
  v15 = [(SVXModule *)self->_module performer];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__SVXSessionManager_deactivateWithContext_completion___block_invoke_3;
  v18[3] = &unk_279C68FE8;
  v18[4] = self;
  v19 = v14;
  v16 = v14;
  [v15 performBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __54__SVXSessionManager_deactivateWithContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)activateWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  audioServicesUtils = self->_audioServicesUtils;
  v8 = a3;
  [(SVXAudioServicesUtils *)audioServicesUtils audioServicesActivateWithTimeout];
  v9 = objc_alloc(MEMORY[0x277CEF340]);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __52__SVXSessionManager_activateWithContext_completion___block_invoke;
  v23[3] = &unk_279C680E0;
  v24 = v6;
  v10 = MEMORY[0x277CCA9B8];
  v11 = v6;
  v12 = [v10 errorWithDomain:@"SiriVOXErrorDomain" code:5 userInfo:0];
  v13 = [v9 initWithBlock:v23 defaultValue:v12];

  v14 = [SVXSessionOperation alloc];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__SVXSessionManager_activateWithContext_completion___block_invoke_33;
  v21[3] = &unk_279C68108;
  v22 = v13;
  v15 = v13;
  v16 = [(SVXSessionOperation *)v14 initWithActivationContext:v8 completion:v21];

  v17 = [(SVXModule *)self->_module performer];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__SVXSessionManager_activateWithContext_completion___block_invoke_2;
  v19[3] = &unk_279C68FE8;
  v19[4] = self;
  v20 = v16;
  v18 = v16;
  [v17 performBlock:v19];
}

void __52__SVXSessionManager_activateWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = MEMORY[0x26D642680](v5);
    v10 = 136315394;
    v11 = "[SVXSessionManager activateWithContext:completion:]_block_invoke";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_DEFAULT, "%s completion:%@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)continuousVoiceTriggerDetectedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__SVXSessionManager_continuousVoiceTriggerDetectedWithCompletion___block_invoke;
  v7[3] = &unk_279C68EF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

uint64_t __66__SVXSessionManager_continuousVoiceTriggerDetectedWithCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 64) startAdvertising:3 withSCDAGoodnessScoreContext:0 withSCDAAudioContext:0 completion:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)prewarmWithContext:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[SVXSessionManager prewarmWithContext:completion:]";
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  if ([(SVXAudioServicesUtils *)self->_audioServicesUtils shouldPrewarmAudioServicesActivate])
  {
    [(SVXAudioServicesUtils *)self->_audioServicesUtils audioServicesActivateWithTimeout];
  }

  v9 = [(SVXModule *)self->_module analytics];
  [v9 logEventWithType:1402 context:0];

  v10 = [(SVXModule *)self->_module performer];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__SVXSessionManager_prewarmWithContext_completion___block_invoke;
  v14[3] = &unk_279C68EA8;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  [v10 performBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 didFailAppLaunchWithBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SVXModule *)self->_module performer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SVXSessionManager_session_didFailAppLaunchWithBundleIdentifier___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 performBlock:v8];
}

- (void)session:(id)a3 willProcessAppLaunchWithBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SVXModule *)self->_module performer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__SVXSessionManager_session_willProcessAppLaunchWithBundleIdentifier___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 performBlock:v8];
}

- (void)sessionDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SVXSessionManager_sessionDidInvalidate___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)session:(id)a3 audioSessionDidBecomeActive:(BOOL)a4 activationContext:(id)a5 deactivationContext:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(SVXModule *)self->_module performer];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __95__SVXSessionManager_session_audioSessionDidBecomeActive_activationContext_deactivationContext___block_invoke;
  v17[3] = &unk_279C67A68;
  v17[4] = self;
  v18 = v10;
  v21 = a4;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  [v13 performBlock:v17];
}

- (void)session:(id)a3 audioSessionWillBecomeActive:(BOOL)a4 activationContext:(id)a5 deactivationContext:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(SVXModule *)self->_module performer];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__SVXSessionManager_session_audioSessionWillBecomeActive_activationContext_deactivationContext___block_invoke;
  v17[3] = &unk_279C67A68;
  v17[4] = self;
  v18 = v10;
  v21 = a4;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  [v13 performBlock:v17];
}

- (void)session:(id)a3 didDeactivateWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SVXModule *)self->_module performer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__SVXSessionManager_session_didDeactivateWithContext___block_invoke;
  v11[3] = &unk_279C68ED0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)session:(id)a3 willDeactivateWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SVXModule *)self->_module performer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__SVXSessionManager_session_willDeactivateWithContext___block_invoke;
  v11[3] = &unk_279C68ED0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)session:(id)a3 didNotActivateWithContext:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SVXModule *)self->_module performer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__SVXSessionManager_session_didNotActivateWithContext_error___block_invoke;
  v15[3] = &unk_279C68930;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 performBlock:v15];
}

- (void)session:(id)a3 didActivateWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SVXModule *)self->_module performer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__SVXSessionManager_session_didActivateWithContext___block_invoke;
  v11[3] = &unk_279C68ED0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)session:(id)a3 willActivateWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SVXModule *)self->_module performer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__SVXSessionManager_session_willActivateWithContext___block_invoke;
  v11[3] = &unk_279C68ED0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)session:(id)a3 didResignActiveWithDeactivationContext:(id)a4 activityUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SVXModule *)self->_module performer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__SVXSessionManager_session_didResignActiveWithDeactivationContext_activityUUID___block_invoke;
  v15[3] = &unk_279C68930;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 performBlock:v15];
}

- (void)session:(id)a3 willResignActiveWithOptions:(unint64_t)a4 duration:(double)a5 activityUUID:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(SVXModule *)self->_module performer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__SVXSessionManager_session_willResignActiveWithOptions_duration_activityUUID___block_invoke;
  v15[3] = &unk_279C67A40;
  v15[4] = self;
  v16 = v10;
  v19 = a5;
  v17 = v11;
  v18 = a4;
  v13 = v11;
  v14 = v10;
  [v12 performBlock:v15];
}

- (void)session:(id)a3 didBecomeActiveWithActivationContext:(id)a4 activityUUID:(id)a5 turnID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SVXModule *)self->_module performer];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__SVXSessionManager_session_didBecomeActiveWithActivationContext_activityUUID_turnID___block_invoke;
  v19[3] = &unk_279C68B70;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [v14 performBlock:v19];
}

- (void)session:(id)a3 willBecomeActiveWithActivationContext:(id)a4 activityUUID:(id)a5 turnID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SVXModule *)self->_module performer];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __87__SVXSessionManager_session_willBecomeActiveWithActivationContext_activityUUID_turnID___block_invoke;
  v19[3] = &unk_279C68B70;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [v14 performBlock:v19];
}

- (void)session:(id)a3 didStopSoundWithID:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(SVXModule *)self->_module performer];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__SVXSessionManager_session_didStopSoundWithID_error___block_invoke;
  v13[3] = &unk_279C686F0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  [v10 performBlock:v13];
}

- (void)session:(id)a3 didStartSoundWithID:(int64_t)a4
{
  v6 = a3;
  v7 = [(SVXModule *)self->_module performer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__SVXSessionManager_session_didStartSoundWithID___block_invoke;
  v9[3] = &unk_279C68E58;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [v7 performBlock:v9];
}

- (void)session:(id)a3 willStartSoundWithID:(int64_t)a4
{
  v6 = a3;
  v7 = [(SVXModule *)self->_module performer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__SVXSessionManager_session_willStartSoundWithID___block_invoke;
  v9[3] = &unk_279C68E58;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [v7 performBlock:v9];
}

- (void)session:(id)a3 didEndUpdateAudioPowerWithType:(int64_t)a4
{
  v6 = a3;
  v7 = [(SVXModule *)self->_module performer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SVXSessionManager_session_didEndUpdateAudioPowerWithType___block_invoke;
  v9[3] = &unk_279C68E58;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [v7 performBlock:v9];
}

- (void)session:(id)a3 willBeginUpdateAudioPowerWithType:(int64_t)a4 wrapper:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(SVXModule *)self->_module performer];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__SVXSessionManager_session_willBeginUpdateAudioPowerWithType_wrapper___block_invoke;
  v13[3] = &unk_279C686F0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  [v10 performBlock:v13];
}

- (void)session:(id)a3 didChangeFromState:(int64_t)a4 toState:(int64_t)a5
{
  v8 = a3;
  v9 = [(SVXModule *)self->_module performer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__SVXSessionManager_session_didChangeFromState_toState___block_invoke;
  v11[3] = &unk_279C67A18;
  v11[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  [v9 performBlock:v11];
}

- (void)session:(id)a3 willChangeFromState:(int64_t)a4 toState:(int64_t)a5
{
  v8 = a3;
  v9 = [(SVXModule *)self->_module performer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__SVXSessionManager_session_willChangeFromState_toState___block_invoke;
  v11[3] = &unk_279C67A18;
  v11[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  [v9 performBlock:v11];
}

- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v19 = "[SVXSessionManager notifyObserver:didChangeStateFrom:to:]";
    v20 = 2112;
    v21 = v8;
    v22 = 2048;
    v23 = a4;
    v24 = 2048;
    v25 = a5;
    _os_log_debug_impl(&dword_2695B9000, v9, OS_LOG_TYPE_DEBUG, "%s notifyObserver = %@, fromState = %llu, toState = %llu", buf, 0x2Au);
  }

  if (self->_deviceProblemsNotifyObserver == v8)
  {
    v10 = [SVXDeviceProblemsState alloc];
    if ((a5 & (((a5 >> 1) & 0xFFFE0 | a5 & 0x1E) == 0)) != 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = (a5 >> 1) & 0xFFFE0 | a5 & 0x1E;
    }

    v12 = [(SVXDeviceProblemsState *)v10 initWithIsFixingProblems:(a5 >> 5) & 1 problems:v11];
    v13 = [(SVXModule *)self->_module performer];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__SVXSessionManager_notifyObserver_didChangeStateFrom_to___block_invoke;
    v16[3] = &unk_279C68FE8;
    v16[4] = self;
    v17 = v12;
    v14 = v12;
    [v13 performBlock:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)stopWithModuleInstanceProvider:(id)a3
{
  tether = self->_tether;
  self->_tether = 0;
  v5 = a3;

  v6 = [(AFQueue *)self->_queuedOperations dequeueAllObjects];
  [(AFNotifyObserver *)self->_deviceProblemsNotifyObserver invalidate];
  deviceProblemsNotifyObserver = self->_deviceProblemsNotifyObserver;
  self->_deviceProblemsNotifyObserver = 0;

  deviceProblemsState = self->_deviceProblemsState;
  self->_deviceProblemsState = 0;

  [(SVXSessionManager *)self _invalidateCurrentSession];
  [(SVXAnnouncer *)self->_activationAnnouncer removeAllListeners];
  [(SVXAnnouncer *)self->_audioPowerUpdateAnnouncer removeAllListeners];
  [(SVXAnnouncer *)self->_activityAnnouncer removeAllListeners];
  [(SVXSpeechSynthesizer *)self->_speechSynthesizer removeListener:self];
  speechSynthesizer = self->_speechSynthesizer;
  self->_speechSynthesizer = 0;

  powerLevelManager = self->_powerLevelManager;
  self->_powerLevelManager = 0;

  v14 = [v5 deviceSetupManager];
  [v14 removeListener:self];
  deviceSetupContext = self->_deviceSetupContext;
  self->_deviceSetupContext = 0;

  v12 = [v5 systemObserver];

  [v12 removeDeviceContextListener:self];
  localDeviceContext = self->_localDeviceContext;
  self->_localDeviceContext = 0;

  [(SVXSessionManager *)self _stopMonitoringAvailability];
}

- (void)startWithModuleInstanceProvider:(id)a3 platformDependencies:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v6 = a4;
  [(SVXSessionManager *)self _beginMonitoringAvailability];
  if (!self->_tether)
  {
    tetherFactory = self->_tetherFactory;
    v8 = [(SVXModule *)self->_module instanceContext];
    v9 = [(SVXAFSiriTetherFactory *)tetherFactory createWithInstanceContext:v8];
    tether = self->_tether;
    self->_tether = v9;

    objc_initWeak(&location, self);
    v11 = self->_tether;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __74__SVXSessionManager_startWithModuleInstanceProvider_platformDependencies___block_invoke;
    v55[3] = &unk_279C679A0;
    objc_copyWeak(&v56, &location);
    [(AFSiriTether *)v11 setAttachmentStatusChangedHandler:v55];
    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);
  }

  [(SVXSessionManager *)self _attachToTether];
  v12 = [v44 speechSynthesizer];
  speechSynthesizer = self->_speechSynthesizer;
  self->_speechSynthesizer = v12;

  [(SVXSpeechSynthesizer *)self->_speechSynthesizer addListener:self];
  self->_speechSynthesisState = 1;
  v14 = [SVXPowerLevelManager alloc];
  module = self->_module;
  v16 = [(SVXSpeechSynthesizer *)self->_speechSynthesizer ttsSession];
  v17 = [(SVXPowerLevelManager *)v14 initWithModule:module audioPowerProvider:v16];
  powerLevelManager = self->_powerLevelManager;
  self->_powerLevelManager = v17;

  v19 = [v44 serviceCommandHandler];
  serviceCommandHandler = self->_serviceCommandHandler;
  self->_serviceCommandHandler = v19;

  deviceProblemsState = self->_deviceProblemsState;
  self->_deviceProblemsState = 0;

  v22 = objc_alloc(MEMORY[0x277CEF338]);
  v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:"com.apple.sharing.problems"];
  v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v25 = dispatch_queue_create("com.apple.SiriVOX.device-problems", v24);

  v26 = [v22 initWithName:v23 options:1 queue:v25 delegate:self];
  deviceProblemsNotifyObserver = self->_deviceProblemsNotifyObserver;
  self->_deviceProblemsNotifyObserver = v26;

  objc_initWeak(&location, self);
  v28 = [(SVXModule *)self->_module performer];
  deviceSetupContext = self->_deviceSetupContext;
  self->_deviceSetupContext = 0;

  v30 = [v44 deviceSetupManager];
  [v30 addListener:self];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __74__SVXSessionManager_startWithModuleInstanceProvider_platformDependencies___block_invoke_2;
  v52[3] = &unk_279C679C8;
  v31 = v28;
  v53 = v31;
  objc_copyWeak(&v54, &location);
  [v30 getContextWithCompletion:v52];
  localDeviceContext = self->_localDeviceContext;
  self->_localDeviceContext = 0;

  v33 = [v44 systemObserver];
  [v33 addDeviceContextListener:self];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __74__SVXSessionManager_startWithModuleInstanceProvider_platformDependencies___block_invoke_4;
  v49[3] = &unk_279C679F0;
  v34 = v31;
  v50 = v34;
  objc_copyWeak(&v51, &location);
  [v33 getLocalDeviceContextWithCompletion:v49];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v35 = v6;
  v36 = [v35 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v36)
  {
    v37 = *v46;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v46 != v37)
        {
          objc_enumerationMutation(v35);
        }

        v39 = *(*(&v45 + 1) + 8 * i);
        if ([v39 type] == 2)
        {
          activityAnnouncer = self->_activityAnnouncer;
          v41 = [v39 activityListener];
          [(SVXAnnouncer *)activityAnnouncer addListener:v41];
        }

        else
        {
          if ([v39 type] != 3)
          {
            continue;
          }

          audioPowerUpdateAnnouncer = self->_audioPowerUpdateAnnouncer;
          v41 = [v39 audioPowerUpdateListener];
          [(SVXAnnouncer *)audioPowerUpdateAnnouncer addListener:v41];
        }
      }

      v36 = [v35 countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v36);
  }

  objc_destroyWeak(&v51);
  objc_destroyWeak(&v54);

  objc_destroyWeak(&location);
  v43 = *MEMORY[0x277D85DE8];
}

void __74__SVXSessionManager_startWithModuleInstanceProvider_platformDependencies___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained attachToTether];
  }
}

void __74__SVXSessionManager_startWithModuleInstanceProvider_platformDependencies___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__SVXSessionManager_startWithModuleInstanceProvider_platformDependencies___block_invoke_3;
  v6[3] = &unk_279C690B0;
  objc_copyWeak(&v8, (a1 + 40));
  v5 = v3;
  v7 = v5;
  [v4 performBlock:v6];

  objc_destroyWeak(&v8);
}

void __74__SVXSessionManager_startWithModuleInstanceProvider_platformDependencies___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__SVXSessionManager_startWithModuleInstanceProvider_platformDependencies___block_invoke_5;
  v6[3] = &unk_279C690B0;
  objc_copyWeak(&v8, (a1 + 40));
  v5 = v3;
  v7 = v5;
  [v4 performBlock:v6];

  objc_destroyWeak(&v8);
}

void __74__SVXSessionManager_startWithModuleInstanceProvider_platformDependencies___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleLocalDeviceContextChanged:*(a1 + 32)];
}

void __74__SVXSessionManager_startWithModuleInstanceProvider_platformDependencies___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleDeviceSetupContextChanged:*(a1 + 32)];
}

- (SVXSessionManager)initWithModule:(id)a3 enableMyriad:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v41.receiver = self;
  v41.super_class = SVXSessionManager;
  v8 = [(SVXSessionManager *)&v41 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_module, a3);
    v10 = [v7 instanceContext];
    if (v4)
    {
      v11 = [SVXMyriadDeviceManager alloc];
      v12 = [v7 analytics];
      v13 = [v7 preferences];
      v14 = [(SVXMyriadDeviceManager *)v11 initWithInstanceContext:v10 analytics:v12 preferences:v13 delegate:v9];
      myriadDeviceManager = v9->_myriadDeviceManager;
      v9->_myriadDeviceManager = v14;

      v16 = [v7 preferences];
      v9->_myriadDuckingAllowed = [v16 myriadDuckingEnabled];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, _myriadStereoPartnerDataChanged, *MEMORY[0x277CEF5C8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    if ([v10 isDefault])
    {
      v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_UTILITY, 0);
      v20 = dispatch_queue_create(0, v19);
      coreDuetQueue = v9->_coreDuetQueue;
      v9->_coreDuetQueue = v20;

      v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v23 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_UTILITY, 0);
      v24 = dispatch_queue_create(0, v23);
      biomeQueue = v9->_biomeQueue;
      v9->_biomeQueue = v24;
    }

    v26 = [(SVXModule *)v9->_module performer];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __49__SVXSessionManager_initWithModule_enableMyriad___block_invoke;
    v39[3] = &unk_279C68FC0;
    v27 = v9;
    v40 = v27;
    [v26 performBlock:v39];

    v28 = objc_alloc_init(SVXSessionActivationAnnouncer);
    activationAnnouncer = v27->_activationAnnouncer;
    v27->_activationAnnouncer = v28;

    v30 = objc_alloc_init(SVXAudioPowerUpdateAnnouncer);
    audioPowerUpdateAnnouncer = v27->_audioPowerUpdateAnnouncer;
    v27->_audioPowerUpdateAnnouncer = v30;

    v32 = objc_alloc_init(SVXSessionActivityAnnouncer);
    activityAnnouncer = v27->_activityAnnouncer;
    v27->_activityAnnouncer = v32;

    v34 = objc_alloc_init(SVXAFSiriTetherFactory);
    tetherFactory = v27->_tetherFactory;
    v27->_tetherFactory = v34;

    v36 = objc_alloc_init(MEMORY[0x277CEF370]);
    queuedOperations = v27->_queuedOperations;
    v27->_queuedOperations = v36;

    [(AFQueue *)v27->_queuedOperations setDelegate:v27];
  }

  return v9;
}

- (SVXSessionManager)initWithModule:(id)a3
{
  v4 = a3;
  v5 = [(SVXSessionManager *)self initWithModule:v4 enableMyriad:AFIsHorseman()];

  return v5;
}

- (void)_myriadStereoPartnerDataChanged
{
  v3 = [(SVXModule *)self->_module performer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__SVXSessionManager__myriadStereoPartnerDataChanged__block_invoke;
  v4[3] = &unk_279C68FC0;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)unduckDevice
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[SVXSessionManager unduckDevice]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s BTLE Device should unduck audio", buf, 0xCu);
  }

  v4 = [(SVXModule *)self->_module performer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SVXSessionManager_unduckDevice__block_invoke;
  v6[3] = &unk_279C68FC0;
  v6[4] = self;
  [v4 performBlock:v6];

  v5 = *MEMORY[0x277D85DE8];
}

void __33__SVXSessionManager_unduckDevice__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  if (v2)
  {
    *(v1 + 72) = 0;

    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[SVXSessionManager unduckDevice]_block_invoke";
      _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s BTLE released audio session tracker", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)deviceWonMyriadElection
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[SVXSessionManager deviceWonMyriadElection]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s BTLE Device continues to interact", buf, 0xCu);
  }

  v4 = [(SVXModule *)self->_module performer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SVXSessionManager_deviceWonMyriadElection__block_invoke;
  v6[3] = &unk_279C68FC0;
  v6[4] = self;
  [v4 performBlock:v6];

  v5 = *MEMORY[0x277D85DE8];
}

void __44__SVXSessionManager_deviceWonMyriadElection__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = v1[7];
  if (v2)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[SVXSessionManager deviceWonMyriadElection]_block_invoke";
      v11 = 2112;
      v12 = v2;
      _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s End waiting for Myriad token %@ as won.", &v9, 0x16u);
      v1 = *(a1 + 32);
    }

    v5 = [v1 _currentSession:0];
    [v5 endWaitingForMyriadDecisionWithToken:*(*(a1 + 32) + 56) result:1];

    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deviceLostMyriadElection
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = mach_absolute_time();
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[SVXSessionManager deviceLostMyriadElection]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s BTLE Device should abort session", buf, 0xCu);
  }

  v5 = [(SVXModule *)self->_module analytics];
  [v5 logEventWithType:1403 context:0];

  v6 = [(SVXModule *)self->_module performer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__SVXSessionManager_deviceLostMyriadElection__block_invoke;
  v9[3] = &unk_279C68E58;
  v10 = v6;
  v11 = v3;
  v9[4] = self;
  v7 = v6;
  [v7 performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __45__SVXSessionManager_deviceLostMyriadElection__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4 = MEMORY[0x277CEF098];
  if (v3)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v32 = "[SVXSessionManager deviceLostMyriadElection]_block_invoke";
      v33 = 2112;
      v34 = v3;
      _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s End waiting for Myriad token %@ as lost.", buf, 0x16u);
      v2 = *(a1 + 32);
    }

    v6 = [v2 _currentSession:0];
    [v6 endWaitingForMyriadDecisionWithToken:*(*(a1 + 32) + 56) result:0];

    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = 0;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 80) == 1)
  {
    v9 = [SVXActivationContext alloc];
    v10 = *(a1 + 48);
    v11 = SVXClientInfoGetCurrent();
    v12 = [(SVXActivationContext *)v9 initWithSource:3 timestamp:v10 buttonEvent:0 systemEvent:0 clientInfo:v11 requestInfo:0 userInfo:0];

    v13 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v32 = "[SVXSessionManager deviceLostMyriadElection]_block_invoke";
      _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s BTLE willObtainTracker", buf, 0xCu);
    }

    v14 = [*(a1 + 32) _currentSession:1];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __45__SVXSessionManager_deviceLostMyriadElection__block_invoke_13;
    v28[3] = &unk_279C682E8;
    v15 = *(a1 + 40);
    v16 = *(a1 + 32);
    v29 = v15;
    v30 = v16;
    v17 = [v14 activateWithContext:v12 completion:v28];
    v18 = *(a1 + 32);
    v19 = *(v18 + 72);
    *(v18 + 72) = v17;

    v20 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
    {
      v21 = *(*(a1 + 32) + 72);
      *buf = 136315394;
      v32 = "[SVXSessionManager deviceLostMyriadElection]_block_invoke";
      v33 = 2112;
      v34 = v21;
      _os_log_impl(&dword_2695B9000, v20, OS_LOG_TYPE_INFO, "%s BTLE didObtainTracker = %@", buf, 0x16u);
    }

    v22 = v29;
  }

  else
  {
    v23 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v32 = "[SVXSessionManager deviceLostMyriadElection]_block_invoke";
      _os_log_impl(&dword_2695B9000, v23, OS_LOG_TYPE_INFO, "%s BTLE deactivate", buf, 0xCu);
      v2 = *(a1 + 32);
    }

    v12 = [v2 _currentSession:0];
    v24 = [SVXDeactivationContext alloc];
    v25 = *(a1 + 48);
    v22 = SVXClientInfoGetCurrent();
    v26 = [(SVXDeactivationContext *)v24 initWithSource:3 timestamp:v25 buttonEvent:0 clientInfo:v22 userInfo:0 options:0];
    [(SVXActivationContext *)v12 deactivateWithContext:v26 completion:0];
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __45__SVXSessionManager_deviceLostMyriadElection__block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SVXSessionManager_deviceLostMyriadElection__block_invoke_2;
  v7[3] = &unk_279C68FE8;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 performBlock:v7];
}

void __45__SVXSessionManager_deviceLostMyriadElection__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = *(v2 + 72);
    *(v2 + 72) = 0;

    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 136315394;
      v8 = "[SVXSessionManager deviceLostMyriadElection]_block_invoke_2";
      v9 = 2112;
      v10 = v6;
      _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s BTLE released audio session tracker (error = %@)", &v7, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeActivityListener:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SVXSessionManager_removeActivityListener___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)addActivityListener:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__SVXSessionManager_addActivityListener___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)removeAudioPowerUpdateListener:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SVXSessionManager_removeAudioPowerUpdateListener___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)addAudioPowerUpdateListener:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SVXSessionManager_addAudioPowerUpdateListener___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)removeActivationListener:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__SVXSessionManager_removeActivationListener___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)addActivationListener:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SVXSessionManager_addActivationListener___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)getAudioSessionProviderWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SVXModule *)self->_module performer];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__SVXSessionManager_getAudioSessionProviderWithCompletion___block_invoke;
    v6[3] = &unk_279C68EF8;
    v6[4] = self;
    v7 = v4;
    [v5 performBlock:v6];
  }
}

void __59__SVXSessionManager_getAudioSessionProviderWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _currentSession:1];
  (*(v1 + 16))(v1, v2);
}

- (void)getCurrentSessionUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SVXModule *)self->_module performer];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__SVXSessionManager_getCurrentSessionUsingBlock___block_invoke;
    v6[3] = &unk_279C68EF8;
    v6[4] = self;
    v7 = v4;
    [v5 performBlock:v6];
  }
}

void __49__SVXSessionManager_getCurrentSessionUsingBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _currentSession:1];
  (*(v1 + 16))(v1, v2);
}

- (void)fetchCurrentAlarmAndTimerFiringContextWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SVXSessionManager_fetchCurrentAlarmAndTimerFiringContextWithCompletion___block_invoke;
  v7[3] = &unk_279C68EF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

void __74__SVXSessionManager_fetchCurrentAlarmAndTimerFiringContextWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentSession:1];
  [v2 getAlarmAndTimerFiringContextWithCompletion:*(a1 + 40)];
}

- (void)fetchCurrentAudioPowerWithType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(SVXModule *)self->_module performer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SVXSessionManager_fetchCurrentAudioPowerWithType_completion___block_invoke;
  v9[3] = &unk_279C68D70;
  v10 = v6;
  v11 = a3;
  v9[4] = self;
  v8 = v6;
  [v7 performBlock:v9];
}

- (void)fetchCurrentActivityStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__SVXSessionManager_fetchCurrentActivityStateWithCompletion___block_invoke;
  v7[3] = &unk_279C68EF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

void __61__SVXSessionManager_fetchCurrentActivityStateWithCompletion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __61__SVXSessionManager_fetchCurrentActivityStateWithCompletion___block_invoke_2;
  v2[3] = &unk_279C68BA0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _fetchCurrentActivityStateWithCompletion:v2];
}

- (void)fetchCurrentStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SVXSessionManager_fetchCurrentStateWithCompletion___block_invoke;
  v7[3] = &unk_279C68EF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)preheatWithActivationSource:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    if (a3 > 9)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_279C67C58[a3];
    }

    v8 = v7;
    *buf = 136315394;
    v14 = "[SVXSessionManager preheatWithActivationSource:]";
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s activationSource = %@", buf, 0x16u);
  }

  if ([(SVXAudioServicesUtils *)self->_audioServicesUtils shouldPrewarmAudioServicesActivate])
  {
    [(SVXAudioServicesUtils *)self->_audioServicesUtils audioServicesActivateWithTimeout];
  }

  v9 = [(SVXModule *)self->_module analytics];
  [v9 logEventWithType:1402 context:0];

  v10 = [(SVXModule *)self->_module performer];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__SVXSessionManager_preheatWithActivationSource___block_invoke;
  v12[3] = &unk_279C68C68;
  v12[4] = self;
  v12[5] = a3;
  [v10 performBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

@end