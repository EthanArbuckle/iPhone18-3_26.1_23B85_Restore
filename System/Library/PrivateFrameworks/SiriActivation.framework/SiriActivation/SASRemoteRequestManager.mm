@interface SASRemoteRequestManager
+ (id)manager;
- (id)_init;
- (int64_t)_dismissalReasonForDeactivationReason:(int64_t)reason;
- (void)_handleNewRemoteRequestWithInfo:(id)info;
- (void)_handlePendingVoiceTriggerActivationsWithInfo:(id)info;
- (void)_handleRemotePrewarmWithInfo:(id)info;
- (void)_handleRemoteRequestDismissalWithReason:(int64_t)reason options:(unint64_t)options analyticsContext:(id)context;
- (void)_handleRequestWatcherVoiceTriggerRequestWithInfo:(id)info;
- (void)_processPendingVoiceTriggerActivationsWithInfo:(id)info delay:(double)delay;
- (void)_startFetchingPocketStateUpdates;
@end

@implementation SASRemoteRequestManager

+ (id)manager
{
  if (manager_onceToken != -1)
  {
    +[SASRemoteRequestManager manager];
  }

  v3 = manager_sharedManager;

  return v3;
}

uint64_t __34__SASRemoteRequestManager_manager__block_invoke()
{
  manager_sharedManager = [[SASRemoteRequestManager alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v27.receiver = self;
  v27.super_class = SASRemoteRequestManager;
  v2 = [(SASRemoteRequestManager *)&v27 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698D1C8]);
    [(SASRemoteRequestManager *)v2 setRemoteRequestWatcher:v3];

    objc_initWeak(&location, v2);
    remoteRequestWatcher = [(SASRemoteRequestManager *)v2 remoteRequestWatcher];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __32__SASRemoteRequestManager__init__block_invoke;
    v24[3] = &unk_1E82F41A0;
    objc_copyWeak(&v25, &location);
    [remoteRequestWatcher setPrewarmHandler:v24];

    remoteRequestWatcher2 = [(SASRemoteRequestManager *)v2 remoteRequestWatcher];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __32__SASRemoteRequestManager__init__block_invoke_2;
    v22[3] = &unk_1E82F41C8;
    objc_copyWeak(&v23, &location);
    [remoteRequestWatcher2 setRequestHandler:v22];

    remoteRequestWatcher3 = [(SASRemoteRequestManager *)v2 remoteRequestWatcher];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __32__SASRemoteRequestManager__init__block_invoke_3;
    v20[3] = &unk_1E82F41F0;
    objc_copyWeak(&v21, &location);
    [remoteRequestWatcher3 setDismissalHandler:v20];

    remoteRequestWatcher4 = [(SASRemoteRequestManager *)v2 remoteRequestWatcher];
    [remoteRequestWatcher4 setNewSpeechRequestHandler:&__block_literal_global_80];

    remoteRequestWatcher5 = [(SASRemoteRequestManager *)v2 remoteRequestWatcher];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __32__SASRemoteRequestManager__init__block_invoke_5;
    v18[3] = &unk_1E82F4260;
    objc_copyWeak(&v19, &location);
    [remoteRequestWatcher5 setIntentHandler:v18];

    remoteRequestWatcher6 = [(SASRemoteRequestManager *)v2 remoteRequestWatcher];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __32__SASRemoteRequestManager__init__block_invoke_7;
    v16 = &unk_1E82F42B0;
    objc_copyWeak(&v17, &location);
    [remoteRequestWatcher6 setIntentForwardingActionHandler:&v13];

    v10 = [(SASRemoteRequestManager *)v2 remoteRequestWatcher:v13];
    [v10 setButtonEventHandler:&__block_literal_global_91];

    remoteRequestWatcher7 = [(SASRemoteRequestManager *)v2 remoteRequestWatcher];
    [remoteRequestWatcher7 setActivationHandler:&__block_literal_global_95];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __32__SASRemoteRequestManager__init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRemotePrewarmWithInfo:v3];
}

void __32__SASRemoteRequestManager__init__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleNewRemoteRequestWithInfo:v5];

  v7[2](v7, 0);
}

void __32__SASRemoteRequestManager__init__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRemoteRequestDismissalWithReason:a2 options:a3 analyticsContext:v7];
}

void __32__SASRemoteRequestManager__init__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 activationEvent])
  {
    v4 = [[SiriContinuityContext alloc] initWithSpeechRequestOptions:v2];

    v3 = +[SiriActivationService service];
    [v3 activationRequestFromContinuityWithContext:v4];
  }

  else
  {
    v4 = [[SiriContext alloc] initWithSpeechRequestOptions:v2];

    v3 = +[SiriActivationService service];
    [v3 activationRequestFromButtonIdentifier:1 context:v4];
  }
}

void __32__SASRemoteRequestManager__init__block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained[3];
  if (v11)
  {
    [v11 invalidateIntentDelivery];
  }

  v12 = [objc_alloc(MEMORY[0x1E696E738]) initWithBundleIdentifier:v8];

  v13 = WeakRetained[3];
  WeakRetained[3] = v12;

  v14 = WeakRetained[3];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __32__SASRemoteRequestManager__init__block_invoke_6;
  v17[3] = &unk_1E82F4238;
  v18 = WeakRetained;
  v19 = v7;
  v15 = v7;
  v16 = WeakRetained;
  [v14 deliverIntent:v9 reply:v17];
}

void __32__SASRemoteRequestManager__init__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = 0;

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

void __32__SASRemoteRequestManager__init__block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained[3];
    if (v12)
    {
      [v12 invalidateIntentDelivery];
    }

    v13 = [objc_alloc(MEMORY[0x1E696E738]) initWithBundleIdentifier:v8 intentForwardingAction:v7];
    v14 = v11[3];
    v11[3] = v13;

    v15 = v11[3];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __32__SASRemoteRequestManager__init__block_invoke_8;
    v16[3] = &unk_1E82F4288;
    objc_copyWeak(&v18, (a1 + 32));
    v17 = v9;
    [v15 deliverIntentForwardingActionWithResponseHandler:v16];

    objc_destroyWeak(&v18);
  }
}

void __32__SASRemoteRequestManager__init__block_invoke_8(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 3);
    *(WeakRetained + 3) = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
  }
}

void __32__SASRemoteRequestManager__init__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 source] == 4)
  {
    v3 = [v2 deviceID];
    [v2 timestamp];
    AFMachAbsoluteTimeGetTimeInterval();
    v5 = v4;
    if ([v2 event] == 9)
    {
      v6 = +[SiriActivationService service];
      [v6 buttonUpFromButtonIdentifier:8 deviceIdentifier:v3 timestamp:0 context:v5];
    }
  }

  else
  {
    v7 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      __32__SASRemoteRequestManager__init__block_invoke_9_cold_1(v7, v2);
    }
  }
}

void __32__SASRemoteRequestManager__init__block_invoke_92(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 source] == 12)
  {
    v6 = objc_alloc_init(SiriRemotePresentationBringUpContext);
    v7 = +[SiriActivationService service];
    [v7 activationRequestFromRemotePresentationBringUpWithContext:v6];

    if (v5)
    {
      v5[2](v5, 0);
    }
  }

  else
  {
    v8 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      __32__SASRemoteRequestManager__init__block_invoke_92_cold_1(v8, v4);
    }

    v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.siri.activation" code:5 userInfo:&unk_1F47D2068];
    (v5)[2](v5, v6);
  }
}

- (void)_handleRemotePrewarmWithInfo:(id)info
{
  v19 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[SASRemoteRequestManager _handleRemotePrewarmWithInfo:]";
    v17 = 2112;
    v18 = infoCopy;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s info=%@", &v15, 0x16u);
  }

  if ([(SASRemoteRequestManager *)self _requestWatcherVoiceActivationEnabled])
  {
    speechRequestOptions = [infoCopy speechRequestOptions];
    activationEvent = [speechRequestOptions activationEvent];

    if (activationEvent == 8)
    {
      [(SASRemoteRequestManager *)self _startFetchingPocketStateUpdates];
      if (AFDeviceSupportsAOP())
      {
        [(SASRemoteRequestManager *)self setCurrentVoiceTriggerRestriction:1];
        [(SASRemoteRequestManager *)self setPendingVoiceTriggerRestrictionCount:[(SASRemoteRequestManager *)self pendingVoiceTriggerRestrictionCount]+ 1];
        v9 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136315138;
          v16 = "[SASRemoteRequestManager _handleRemotePrewarmWithInfo:]";
          _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s scheduling pending activation timer to give pocket detect time", &v15, 0xCu);
        }

        [(SASRemoteRequestManager *)self _processPendingVoiceTriggerActivationsWithInfo:infoCopy delay:0.35];
      }

      v10 = +[SiriActivationService service];
      [v10 updatePredicatedRecordRoute];
    }
  }

  speechRequestOptions2 = [infoCopy speechRequestOptions];
  activationEvent2 = [speechRequestOptions2 activationEvent];

  if (activationEvent2 == 31)
  {
    v13 = +[SiriActivationService service];
    [v13 updatePredicatedRecordRoute];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleNewRemoteRequestWithInfo:(id)info
{
  v23 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[SASRemoteRequestManager _handleNewRemoteRequestWithInfo:]";
    v21 = 2112;
    v22 = infoCopy;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s info=%@", buf, 0x16u);
  }

  speechRequestOptions = [infoCopy speechRequestOptions];
  activationEvent = [speechRequestOptions activationEvent];

  if (activationEvent != 31 && activationEvent != 8)
  {
    if ([infoCopy activationEvent] == 8)
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [infoCopy performSelector:sel_text];
        if (!infoCopy)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v9 = 0;
        if (!infoCopy)
        {
          goto LABEL_18;
        }
      }

      if (!-[SiriMagusContext length](v9, "length") || (v11 = [SiriTestingContext alloc], v18 = v9, [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1], v12 = objc_claimAutoreleasedReturnValue(), v10 = -[SiriTestingContext initWithRequestInfo:recognitionStrings:siriContextOverride:](v11, "initWithRequestInfo:recognitionStrings:siriContextOverride:", infoCopy, v12, 0), v12, !v10))
      {
LABEL_18:
        v14 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          [SASRemoteRequestManager _handleNewRemoteRequestWithInfo:v14];
        }

        goto LABEL_27;
      }

      v13 = +[SiriActivationService service];
      [v13 activationRequestFromTestingWithContext:v10];

LABEL_26:
LABEL_27:

      goto LABEL_28;
    }

    if (activationEvent > 33)
    {
      if (activationEvent == 34)
      {
        v9 = [(SiriContinuityContext *)[SiriMagusContext alloc] initWithRequestInfo:infoCopy];
        v10 = +[SiriActivationService service];
        [(SiriTestingContext *)v10 activationRequestFromContinuousConversationHearstWithContext:v9];
        goto LABEL_26;
      }

      if (activationEvent == 35)
      {
        v9 = [(SiriContinuityContext *)[SiriMagusContext alloc] initWithRequestInfo:infoCopy];
        v10 = +[SiriActivationService service];
        [(SiriTestingContext *)v10 activationRequestFromContinuousConversationJarvisWithContext:v9];
        goto LABEL_26;
      }
    }

    else
    {
      if (activationEvent == 27)
      {
        v15 = [SiriHearstLongPressButtonContext alloc];
        speechRequestOptions2 = [infoCopy speechRequestOptions];
        v9 = [(SiriHearstLongPressButtonContext *)v15 initWithSpeechRequestOptions:speechRequestOptions2];

        v10 = +[SiriActivationService service];
        [(SiriTestingContext *)v10 buttonLongPressFromButtonIdentifier:8 context:v9];
        goto LABEL_26;
      }

      if (activationEvent == 30)
      {
        v9 = [(SiriContinuityContext *)[SiriMagusContext alloc] initWithRequestInfo:infoCopy];
        v10 = +[SiriActivationService service];
        [(SiriTestingContext *)v10 activationRequestFromContinuousConversationWithContext:v9];
        goto LABEL_26;
      }
    }

    v9 = [[SiriContinuityContext alloc] initWithRequestInfo:infoCopy];
    v10 = +[SiriActivationService service];
    [(SiriTestingContext *)v10 activationRequestFromContinuityWithContext:v9];
    goto LABEL_26;
  }

  [(SASRemoteRequestManager *)self _handleRequestWatcherVoiceTriggerRequestWithInfo:infoCopy];
LABEL_28:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_handleRequestWatcherVoiceTriggerRequestWithInfo:(id)info
{
  v14 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if ([(SASRemoteRequestManager *)self _requestWatcherVoiceActivationEnabled])
  {
    currentVoiceTriggerRestriction = self->_currentVoiceTriggerRestriction;
    if (currentVoiceTriggerRestriction)
    {
      if (currentVoiceTriggerRestriction == 2)
      {
        v7 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315138;
          v13 = "[SASRemoteRequestManager _handleRequestWatcherVoiceTriggerRequestWithInfo:]";
          _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s Received VoiceTrigger activation request, but currently blocking VoiceTrigger activations", &v12, 0xCu);
        }
      }

      else if (currentVoiceTriggerRestriction == 1)
      {
        v6 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315138;
          v13 = "[SASRemoteRequestManager _handleRequestWatcherVoiceTriggerRequestWithInfo:]";
          _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s Received VoiceTrigger activation request, already pending for possible future activation", &v12, 0xCu);
        }

        [(SASRemoteRequestManager *)self setHasPendingVoiceTriggerActivation:1];
        [(SASRemoteRequestManager *)self setPendingVoiceTriggerActivationInfo:infoCopy];
      }
    }

    else
    {
      v8 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[SASRemoteRequestManager _handleRequestWatcherVoiceTriggerRequestWithInfo:]";
        _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s Received VoiceTrigger activation request, no restrictions, activating", &v12, 0xCu);
      }

      v9 = [(SiriContinuityContext *)[SiriVoiceTriggerContext alloc] initWithRequestInfo:infoCopy];
      v10 = +[SiriActivationService service];
      [v10 activationRequestFromVoiceTriggerWithContext:v9];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_processPendingVoiceTriggerActivationsWithInfo:(id)info delay:(double)delay
{
  infoCopy = info;
  objc_initWeak(&location, self);
  v7 = dispatch_time(0, (delay * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__SASRemoteRequestManager__processPendingVoiceTriggerActivationsWithInfo_delay___block_invoke;
  block[3] = &unk_1E82F37D0;
  objc_copyWeak(&v11, &location);
  v10 = infoCopy;
  v8 = infoCopy;
  dispatch_after(v7, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __80__SASRemoteRequestManager__processPendingVoiceTriggerActivationsWithInfo_delay___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained currentVoiceTriggerRestriction];

  if (v5 != 2)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 setCurrentVoiceTriggerRestriction:0];

    v7 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_loadWeakRetained((a1 + 40));
      v9 = [v8 pendingVoiceTriggerRestrictionCount];
      if (v9)
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = MEMORY[0x1E696AD98];
        v1 = objc_loadWeakRetained((a1 + 40));
        v2 = [v11 numberWithUnsignedInteger:{objc_msgSend(v1, "pendingVoiceTriggerRestrictionCount")}];
        v12 = [v10 stringWithFormat:@"with %@ pending activations", v2];
      }

      else
      {
        v12 = @"no pending activations";
      }

      *buf = 136315394;
      v16 = "[SASRemoteRequestManager _processPendingVoiceTriggerActivationsWithInfo:delay:]_block_invoke";
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s pending voice trigger activation timer fired, %@", buf, 0x16u);
      if (v9)
      {
      }
    }

    v13 = objc_loadWeakRetained((a1 + 40));
    [v13 _handlePendingVoiceTriggerActivationsWithInfo:*(a1 + 32)];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleRemoteRequestDismissalWithReason:(int64_t)reason options:(unint64_t)options analyticsContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = MEMORY[0x1E698D0A0];
  v10 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = AFSiriDeactivationReasonGetName();
    v13 = AFSiriDeactivationOptionsGetNames();
    v26 = 136315906;
    v27 = "[SASRemoteRequestManager _handleRemoteRequestDismissalWithReason:options:analyticsContext:]";
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = contextCopy;
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s Handling remote request dismissal, reason=%@, options=%@, analyticsContext=%@", &v26, 0x2Au);
  }

  if (contextCopy)
  {
    v14 = [contextCopy objectForKey:@"inSpokenNotification"];
    bOOLValue = [v14 BOOLValue];

    if (reason == 2)
    {
      if (bOOLValue)
      {
        mEMORY[0x1E698D0C8] = [MEMORY[0x1E698D0C8] sharedAnalytics];
        [mEMORY[0x1E698D0C8] logEventWithType:6007 context:0];

        v17 = [(SASRemoteRequestManager *)self _dismissalReasonForDeactivationReason:2];
LABEL_10:
        CancellationReason = SASDismissalReasonGetCancellationReason(v17);
        goto LABEL_12;
      }
    }
  }

  v17 = [(SASRemoteRequestManager *)self _dismissalReasonForDeactivationReason:reason];
  if (reason != 3)
  {
    goto LABEL_10;
  }

  v18 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    CancellationReason = 5;
    v21 = AFRequestCancellationReasonGetName();
    v22 = AFSiriDeactivationReasonGetName();
    v26 = 136315650;
    v27 = "[SASRemoteRequestManager _handleRemoteRequestDismissalWithReason:options:analyticsContext:]";
    v28 = 2112;
    v29 = v21;
    v30 = 2112;
    v31 = v22;
    _os_log_impl(&dword_1C8137000, v19, OS_LOG_TYPE_DEFAULT, "%s #cancellationReason: Setting cancellationReason to %@ because deactivationReason is %@", &v26, 0x20u);
  }

  else
  {
    CancellationReason = 5;
  }

LABEL_12:
  v23 = [[SiriDismissalOptions alloc] initWithDeactivationOptions:options animated:1 requestCancellationReason:CancellationReason dismissalReason:v17];
  v24 = +[SiriActivationService service];
  [v24 dismissSiriWithOptions:v23];

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_handlePendingVoiceTriggerActivationsWithInfo:(id)info
{
  v26 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    pendingVoiceTriggerRestrictionCount = self->_pendingVoiceTriggerRestrictionCount;
    hasPendingVoiceTriggerActivation = self->_hasPendingVoiceTriggerActivation;
    *buf = 136315650;
    v21 = "[SASRemoteRequestManager _handlePendingVoiceTriggerActivationsWithInfo:]";
    v22 = 2048;
    v23 = pendingVoiceTriggerRestrictionCount;
    v24 = 1024;
    LODWORD(v25) = hasPendingVoiceTriggerActivation;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s PendingCount:%tu, hasPendingTrigger:%i", buf, 0x1Cu);
  }

  if ([(SASRemoteRequestManager *)self pendingVoiceTriggerRestrictionCount])
  {
    [(SASRemoteRequestManager *)self setPendingVoiceTriggerRestrictionCount:[(SASRemoteRequestManager *)self pendingVoiceTriggerRestrictionCount]- 1];
  }

  if (![(SASRemoteRequestManager *)self pendingVoiceTriggerRestrictionCount]&& [(SASRemoteRequestManager *)self hasPendingVoiceTriggerActivation])
  {
    v9 = infoCopy;
    pendingVoiceTriggerActivationInfo = [(SASRemoteRequestManager *)self pendingVoiceTriggerActivationInfo];

    if (pendingVoiceTriggerActivationInfo)
    {
      v11 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        pendingVoiceTriggerActivationInfo2 = [(SASRemoteRequestManager *)self pendingVoiceTriggerActivationInfo];
        *buf = 136315650;
        v21 = "[SASRemoteRequestManager _handlePendingVoiceTriggerActivationsWithInfo:]";
        v22 = 2112;
        v23 = v9;
        v24 = 2112;
        v25 = pendingVoiceTriggerActivationInfo2;
        _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s replacing prewarm AFRequestInfo %@ with newer pending activation AFRequestInfo %@", buf, 0x20u);
      }

      pendingVoiceTriggerActivationInfo3 = [(SASRemoteRequestManager *)self pendingVoiceTriggerActivationInfo];

      v9 = pendingVoiceTriggerActivationInfo3;
    }

    objc_initWeak(buf, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__SASRemoteRequestManager__handlePendingVoiceTriggerActivationsWithInfo___block_invoke;
    v17[3] = &unk_1E82F4318;
    v18 = v9;
    v15 = v9;
    objc_copyWeak(&v19, buf);
    dispatch_async(MEMORY[0x1E69E96A0], v17);
    objc_destroyWeak(&v19);

    objc_destroyWeak(buf);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __73__SASRemoteRequestManager__handlePendingVoiceTriggerActivationsWithInfo___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[SASRemoteRequestManager _handlePendingVoiceTriggerActivationsWithInfo:]_block_invoke";
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s count is zero after being decremented, activating from pending", &v9, 0xCu);
  }

  v3 = [(SiriContinuityContext *)[SiriVoiceTriggerContext alloc] initWithRequestInfo:*(a1 + 32)];
  v4 = +[SiriActivationService service];
  [v4 activationRequestFromVoiceTriggerWithContext:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPendingVoiceTriggerRestrictionCount:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 setHasPendingVoiceTriggerActivation:0];

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 setPendingVoiceTriggerActivationInfo:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_startFetchingPocketStateUpdates
{
  v2 = +[SASSiriPocketStateManager sharedManager];
  [v2 queryForPocketStateWithCompletion:0];
}

- (int64_t)_dismissalReasonForDeactivationReason:(int64_t)reason
{
  if (reason < 0x15)
  {
    return qword_1C818F878[reason];
  }

  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    [SASRemoteRequestManager _dismissalReasonForDeactivationReason:v4];
  }

  return 0;
}

void __32__SASRemoteRequestManager__init__block_invoke_9_cold_1(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  [a2 event];
  [a2 source];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

void __32__SASRemoteRequestManager__init__block_invoke_92_cold_1(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  [a2 event];
  [a2 source];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_handleNewRemoteRequestWithInfo:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[SASRemoteRequestManager _handleNewRemoteRequestWithInfo:]";
  _os_log_error_impl(&dword_1C8137000, log, OS_LOG_TYPE_ERROR, "%s TestAutomation activationEvent does not contain recognition text or speech file paths.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_dismissalReasonForDeactivationReason:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v8 = AFSiriDeactivationReasonGetName();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end