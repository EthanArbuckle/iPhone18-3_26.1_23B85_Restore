@interface SiriActivationService
+ (id)service;
- (AFPreferences)afPreferences;
- (BOOL)_canActivateForRequest:(id)a3;
- (BOOL)_isEyesFreeEligibleWithRequest:(id)a3;
- (BOOL)_isVoiceActivationMaskNecessaryWithRequestOptions:(id)a3;
- (BOOL)_logCancelledActivationWithButtonIdentifier:(int64_t)a3 duration:(double)a4 targetDuration:(double)a5;
- (BOOL)_shouldHandlePocketStateFetchForRequestOptions:(id)a3;
- (BOOL)_shouldRejectActivationWithButtonIdentifier:(int64_t)a3 activationAssertions:(id)a4;
- (BOOL)_shouldShowHintGlowWithRequest:(id)a3;
- (BOOL)_siriIsEnabled;
- (BOOL)handleActivationRequest:(id)a3;
- (BOOL)handleActivationRequest:(id)a3 systemState:(id)a4;
- (BOOL)isConnectedTo188;
- (BOOL)requestOptionsBuilder:(id)a3 isAcousticIdAllowedWithActiviation:(id)a4;
- (BOOL)requestOptionsBuilder:(id)a3 isPredictedRecordRouteIsZLLWithActiviation:(id)a4;
- (id)_init;
- (id)_uiPresentationIdentifierWithActivation:(id)a3 activationPresentation:(int64_t)a4;
- (id)_updateRequestOptionsWithTestingContextFromActivationRequest:(id)a3 requestOptions:(id)a4;
- (id)allBulletins;
- (id)bulletinForIdentifier:(id)a3;
- (id)bulletinsOnLockScreen;
- (id)requestOptionsBuilder:(id)a3 optionsForOverriding:(id)a4 withActiviation:(id)a5;
- (unint64_t)requestOptionsBuilder:(id)a3 currentLockStateForActivation:(id)a4;
- (void)_B188ActivationEvent:(int64_t)a3 context:(id)a4 options:(id)a5;
- (void)_activatePresentationWithIdentifier:(int64_t)a3 requestOptions:(id)a4 analyticsContext:(id)a5;
- (void)_attachToTether;
- (void)_cancelActivationPreparationForSetup;
- (void)_cancelPendingActivationEventWithReason:(unint64_t)a3;
- (void)_defrost;
- (void)_dismissSiri:(id)a3;
- (void)_handleDesignModeRequest;
- (void)_handlePocketStateFetchForScreenWakeForPresentationIdentifier:(int64_t)a3;
- (void)_handleTapSynthesisIfNeededForButtonIdentifier:(int64_t)a3 buttonUpTimestamp:(double)a4;
- (void)_logActivationToPowerLogWithReason:(int64_t)a3;
- (void)_notifyListenersOfButtonDownWithButtonIdentifier:(int64_t)a3 atTimestamp:(double)a4;
- (void)_notifyListenersOfButtonLongPressWithButtonIdentifier:(int64_t)a3 atTimestamp:(double)a4;
- (void)_notifyListenersOfButtonUpWithButtonIdentifier:(int64_t)a3 atTimestamp:(double)a4;
- (void)_notifySourcesOfCanActivateFromDirectActionSourceChange:(BOOL)a3;
- (void)_notifySourcesOfPresentationStateChange:(id)a3;
- (void)_overrideLockButtonStateIfNeededForRequestOptions:(id)a3;
- (void)_preheatPresentation;
- (void)_recordTimeIfNeededForButtonIdentifier:(int64_t)a3 buttonDownTimestamp:(double)a4;
- (void)_unregisterForVoiceTrigger;
- (void)_updateCanActivateFromDirectActionSource;
- (void)activationRequestFromBluetoothKeyboardActivation:(int64_t)a3;
- (void)activationRequestFromBreadcrumb;
- (void)activationRequestFromButtonIdentifier:(int64_t)a3 context:(id)a4;
- (void)activationRequestFromContinuityWithContext:(id)a3;
- (void)activationRequestFromContinuousConversationHearstWithContext:(id)a3;
- (void)activationRequestFromContinuousConversationJarvisWithContext:(id)a3;
- (void)activationRequestFromContinuousConversationWithContext:(id)a3;
- (void)activationRequestFromDirectActionEventWithContext:(id)a3 completion:(id)a4;
- (void)activationRequestFromRemotePresentationBringUpWithContext:(id)a3;
- (void)activationRequestFromSimpleActivation:(int64_t)a3;
- (void)activationRequestFromSpotlightWithContext:(id)a3;
- (void)activationRequestFromTestRunnerWithContext:(id)a3;
- (void)activationRequestFromTestingWithContext:(id)a3;
- (void)activationRequestFromTostadaWithContext:(id)a3;
- (void)activationRequestFromVocalShortcutWithContext:(id)a3;
- (void)activationRequestFromVoiceTrigger;
- (void)activationRequestFromVoiceTriggerWithContext:(id)a3;
- (void)buttonDownFromButtonIdentifier:(int64_t)a3 timestamp:(double)a4 context:(id)a5;
- (void)buttonLongPressFromButtonIdentifier:(int64_t)a3 deviceIdentifier:(id)a4 context:(id)a5;
- (void)buttonTapFromButtonIdentifier:(int64_t)a3 timestamp:(double)a4 context:(id)a5;
- (void)buttonUpFromButtonIdentifier:(int64_t)a3 deviceIdentifier:(id)a4 timestamp:(double)a5 context:(id)a6;
- (void)cancelPrewarmForFirstTapOfQuickTypeToSiriGesture;
- (void)cancelPrewarmFromButtonIdentifier:(int64_t)a3;
- (void)deactivationRequestFromButtonIdentifier:(int64_t)a3 context:(id)a4 options:(id)a5;
- (void)dealloc;
- (void)didChangeLockState:(unint64_t)a3;
- (void)heaterSuggestsPreheating:(id)a3;
- (void)presentationManager:(id)a3 didChangeAggregateState:(id)a4;
- (void)presentationManager:(id)a3 didEncounterError:(int64_t)a4;
- (void)prewarmForFirstTapOfQuickTypeToSiriGesture;
- (void)prewarmFromButtonIdentifier:(int64_t)a3 longPressInterval:(double)a4;
- (void)prewarmWithRequest:(id)a3;
- (void)registerActivationAssertion:(id)a3 withIdentifier:(id)a4;
- (void)registerActivationSource:(id)a3 withIdentifier:(id)a4;
- (void)registerButtonEventListenerServer:(id)a3 identifier:(id)a4;
- (void)scdaShouldAbort:(id)a3;
- (void)scdaShouldContinue:(id)a3;
- (void)setHintGlowAssertionFromButtonIdentifier:(int64_t)a3 context:(id)a4;
- (void)siriPresentationDismissedWithIdentifier:(int64_t)a3;
- (void)speechRequestStateDidChange:(int64_t)a3;
- (void)unregisterActivationAssertionWithIdentifier:(id)a3;
- (void)unregisterActivationSourceIdentifier:(id)a3;
- (void)unregisterButtonEventListenerWithIdentifier:(id)a3;
@end

@implementation SiriActivationService

+ (id)service
{
  if (service_onceToken != -1)
  {
    +[SiriActivationService service];
  }

  v3 = service_sharedService;

  return v3;
}

- (void)_updateCanActivateFromDirectActionSource
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[SiriActivationService _updateCanActivateFromDirectActionSource]";
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s #activation _updateCanActivateFromDirectActionSource", &v14, 0xCu);
  }

  v4 = objc_opt_new();
  v5 = [SASActivationRequest alloc];
  v6 = [SiriDirectActionContext alloc];
  v7 = [(SiriDirectActionContext *)v6 initWithPayload:MEMORY[0x1E695E0F8]];
  v8 = [(SASActivationRequest *)v5 initWithDirectActionContext:v7];
  [v4 setRequest:v8];

  [v4 setButtonTriggerStateActive:0];
  v9 = [(SiriActivationService *)self systemState];
  [v4 setSystemState:v9];

  v10 = +[SASSiriPocketStateManager sharedManager];
  [v4 setPocketStateManager:v10];

  v11 = [(SiriActivationService *)self afPreferences];
  [v4 setPreferences:v11];

  [v4 setRequestState:{-[SiriActivationService _requestState](self, "_requestState")}];
  v12 = [(SiriActivationService *)self assetUtilities];
  [v4 setAssetUtilities:v12];

  [v4 setPresentationIdentifier:{-[SASPresentationManager nextPresentationToActivate](self->_presentationManager, "nextPresentationToActivate")}];
  [(SiriActivationService *)self setCanActivateFromDirectActionSource:[SASActivationDecision canActivateForCondition:v4]];

  v13 = *MEMORY[0x1E69E9840];
}

- (AFPreferences)afPreferences
{
  afPreferences = self->_afPreferences;
  if (!afPreferences)
  {
    v4 = [MEMORY[0x1E698D1C0] sharedPreferences];
    v5 = self->_afPreferences;
    self->_afPreferences = v4;

    afPreferences = self->_afPreferences;
  }

  return afPreferences;
}

- (BOOL)_siriIsEnabled
{
  v3 = [(SiriActivationService *)self systemState];
  if ([v3 siriIsEnabled])
  {
    v4 = [(SiriActivationService *)self systemState];
    v5 = [v4 siriIsRestricted] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

uint64_t __32__SiriActivationService_service__block_invoke()
{
  service_sharedService = [[SiriActivationService alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v40.receiver = self;
  v40.super_class = SiriActivationService;
  v2 = [(SiriActivationService *)&v40 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(SiriActivationService *)v2 setSources:v3];

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(SiriActivationService *)v2 setActivationAssertions:v4];

    [(SiriActivationService *)v2 setXcTestingActive:0];
    v5 = objc_alloc_init(SASHeater);
    [(SiriActivationService *)v2 setHeater:v5];

    v6 = [(SiriActivationService *)v2 heater];
    [v6 setDelegate:v2];

    [(SiriActivationService *)v2 setSiriTetherIsAttached:0];
    v7 = objc_alloc_init(MEMORY[0x1E698D208]);
    [(SiriActivationService *)v2 setSiriTether:v7];

    v8 = [(SiriActivationService *)v2 siriTether];
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __30__SiriActivationService__init__block_invoke;
    v37 = &unk_1E82F3A80;
    objc_copyWeak(&v38, &location);
    [v8 setAttachmentStatusChangedHandler:&v34];

    v9 = objc_alloc_init(SASTestingInputController);
    testingInputController = v2->_testingInputController;
    v2->_testingInputController = v9;

    v11 = [SASRemoteRequestManager manager:v34];
    [(SiriActivationService *)v2 setRemoteRequestManager:v11];

    v12 = +[SASSystemState sharedSystemState];
    [(SiriActivationService *)v2 setSystemState:v12];

    v13 = [(SiriActivationService *)v2 systemState];
    [v13 addStateChangeListener:v2];

    v14 = objc_alloc_init(MEMORY[0x1E69DEF00]);
    [v14 startObserversWithOptions:1];
    [(SiriActivationService *)v2 setAssetUtilities:v14];
    v15 = objc_alloc_init(SASLockStateMonitor);
    [(SiriActivationService *)v2 setLockStateMonitor:v15];

    v16 = [(SiriActivationService *)v2 lockStateMonitor];
    [v16 setDelegate:v2];

    v17 = +[SASSystemState sharedSystemState];
    [v17 monitorLockState];

    v18 = objc_alloc_init(SASBulletinManager);
    [(SiriActivationService *)v2 setBulletinManager:v18];

    v19 = [(SiriActivationService *)v2 bulletinManager];
    [v19 setDelegate:v2];

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(SiriActivationService *)v2 setAvExternalButtonEvents:v20];

    [(SiriActivationService *)v2 setButtonDownHasOccurredSinceActivation:0];
    v21 = [[SASMyriadController alloc] initWithDelegate:v2];
    myriadController = v2->_myriadController;
    v2->_myriadController = v21;

    v23 = objc_alloc_init(SASPresentationManager);
    presentationManager = v2->_presentationManager;
    v2->_presentationManager = v23;

    [(SASPresentationManager *)v2->_presentationManager setPresentationManagerDelegate:v2];
    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(SiriActivationService *)v2 setButtonEventListeners:v25];

    v26 = objc_alloc_init(SASBluetoothEndpointUtility);
    bluetoothEndpointUtil = v2->_bluetoothEndpointUtil;
    v2->_bluetoothEndpointUtil = v26;

    v28 = [SASActivePresentationInstrumentationSender alloc];
    v29 = [MEMORY[0x1E69CE1E8] sharedAnalytics];
    v30 = [v29 defaultMessageStream];
    v31 = [(SASActivePresentationInstrumentationSender *)v28 initWithAnalyticsStream:v30];
    activationEventInstrumentationSender = v2->_activationEventInstrumentationSender;
    v2->_activationEventInstrumentationSender = v31;

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __30__SiriActivationService__init__block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__SiriActivationService__init__block_invoke_2;
  v3[3] = &unk_1E82F3A58;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __30__SiriActivationService__init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSiriTetherIsAttached:*(a1 + 40)];
}

- (void)dealloc
{
  v3 = [(SiriActivationService *)self systemState];
  [v3 removeStateChangeListener:self];

  v4.receiver = self;
  v4.super_class = SiriActivationService;
  [(SiriActivationService *)&v4 dealloc];
}

- (void)_notifySourcesOfPresentationStateChange:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  -[SASActivePresentationInstrumentationSender aggregatePresentationRequestStateDidChange:](self->_activationEventInstrumentationSender, "aggregatePresentationRequestStateDidChange:", [v4 requestState]);
  if ([v4 didNewActivationAcceptanceChange])
  {
    v5 = MEMORY[0x1E698D0A0];
    v6 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x1E696AF00];
      v8 = v6;
      v9 = [v7 currentThread];
      *buf = 136315394;
      v30 = "[SiriActivationService _notifySourcesOfPresentationStateChange:]";
      v31 = 2048;
      v32 = [v9 qualityOfService];
      _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy sourcesLock about to lock with qos: %zd", buf, 0x16u);
    }

    os_unfair_lock_lock(&sourcesLock);
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "[SiriActivationService _notifySourcesOfPresentationStateChange:]";
      _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy sourcesLock successfully locked", buf, 0xCu);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [(SiriActivationService *)self sources];
    v12 = [v11 allValues];

    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        v16 = 0;
        do
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * v16);
          v18 = [v4 canAcceptNewActivations];
          v19 = [v17 connection];
          v20 = [v19 remoteTarget];
          v21 = [MEMORY[0x1E696AD98] numberWithBool:v18 ^ 1u];
          [v20 activeChangedTo:v21];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    os_unfair_lock_unlock(&sourcesLock);
    v22 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "[SiriActivationService _notifySourcesOfPresentationStateChange:]";
      _os_log_impl(&dword_1C8137000, v22, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy sourcesLock unlocked", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_notifyListenersOfButtonDownWithButtonIdentifier:(int64_t)a3 atTimestamp:(double)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E698D0A0];
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x1E696AF00];
    v10 = v8;
    v11 = [v9 currentThread];
    *buf = 136315394;
    v18 = "[SiriActivationService _notifyListenersOfButtonDownWithButtonIdentifier:atTimestamp:]";
    v19 = 2048;
    v20 = [v11 qualityOfService];
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy buttonEventListenerLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&buttonEventListenerLock);
  v12 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SiriActivationService _notifyListenersOfButtonDownWithButtonIdentifier:atTimestamp:]";
    _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy buttonEventListenerLock successfully locked", buf, 0xCu);
  }

  v13 = [(SiriActivationService *)self buttonEventListeners];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__SiriActivationService__notifyListenersOfButtonDownWithButtonIdentifier_atTimestamp___block_invoke;
  v16[3] = &__block_descriptor_48_e42_v32__0__NSString_8__SASSignalServer_16_B24l;
  *&v16[4] = a4;
  v16[5] = a3;
  [v13 enumerateKeysAndObjectsUsingBlock:v16];

  os_unfair_lock_unlock(&buttonEventListenerLock);
  v14 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SiriActivationService _notifyListenersOfButtonDownWithButtonIdentifier:atTimestamp:]";
    _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy buttonEventListenerLock unlocked", buf, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __86__SiriActivationService__notifyListenersOfButtonDownWithButtonIdentifier_atTimestamp___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v5 connection];
  v7 = [v6 remoteTarget];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [[SASTimeIntervalTransport alloc] initWithTimeInterval:*(a1 + 32)];
    v10 = [v5 connection];
    v11 = [v10 remoteTarget];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
    [v11 buttonDownWithButtonIdentifier:v12 forListenerIdentifier:v13 atTimestamp:v9];
  }
}

- (void)_notifyListenersOfButtonUpWithButtonIdentifier:(int64_t)a3 atTimestamp:(double)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E698D0A0];
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x1E696AF00];
    v10 = v8;
    v11 = [v9 currentThread];
    *buf = 136315394;
    v18 = "[SiriActivationService _notifyListenersOfButtonUpWithButtonIdentifier:atTimestamp:]";
    v19 = 2048;
    v20 = [v11 qualityOfService];
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy buttonEventListenerLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&buttonEventListenerLock);
  v12 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SiriActivationService _notifyListenersOfButtonUpWithButtonIdentifier:atTimestamp:]";
    _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy buttonEventListenerLock successfully locked", buf, 0xCu);
  }

  v13 = [(SiriActivationService *)self buttonEventListeners];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__SiriActivationService__notifyListenersOfButtonUpWithButtonIdentifier_atTimestamp___block_invoke;
  v16[3] = &__block_descriptor_48_e42_v32__0__NSString_8__SASSignalServer_16_B24l;
  *&v16[4] = a4;
  v16[5] = a3;
  [v13 enumerateKeysAndObjectsUsingBlock:v16];

  os_unfair_lock_unlock(&buttonEventListenerLock);
  v14 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SiriActivationService _notifyListenersOfButtonUpWithButtonIdentifier:atTimestamp:]";
    _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy buttonEventListenerLock unlocked", buf, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __84__SiriActivationService__notifyListenersOfButtonUpWithButtonIdentifier_atTimestamp___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v5 connection];
  v7 = [v6 remoteTarget];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [[SASTimeIntervalTransport alloc] initWithTimeInterval:*(a1 + 32)];
    v10 = [v5 connection];
    v11 = [v10 remoteTarget];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
    [v11 buttonUpWithButtonIdentifier:v12 forListenerIdentifier:v13 atTimestamp:v9];
  }
}

- (void)_notifyListenersOfButtonLongPressWithButtonIdentifier:(int64_t)a3 atTimestamp:(double)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E698D0A0];
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x1E696AF00];
    v10 = v8;
    v11 = [v9 currentThread];
    *buf = 136315394;
    v18 = "[SiriActivationService _notifyListenersOfButtonLongPressWithButtonIdentifier:atTimestamp:]";
    v19 = 2048;
    v20 = [v11 qualityOfService];
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy buttonEventListenerLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&buttonEventListenerLock);
  v12 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SiriActivationService _notifyListenersOfButtonLongPressWithButtonIdentifier:atTimestamp:]";
    _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy buttonEventListenerLock successfully locked", buf, 0xCu);
  }

  v13 = [(SiriActivationService *)self buttonEventListeners];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__SiriActivationService__notifyListenersOfButtonLongPressWithButtonIdentifier_atTimestamp___block_invoke;
  v16[3] = &__block_descriptor_48_e42_v32__0__NSString_8__SASSignalServer_16_B24l;
  *&v16[4] = a4;
  v16[5] = a3;
  [v13 enumerateKeysAndObjectsUsingBlock:v16];

  os_unfair_lock_unlock(&buttonEventListenerLock);
  v14 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SiriActivationService _notifyListenersOfButtonLongPressWithButtonIdentifier:atTimestamp:]";
    _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy buttonEventListenerLock unlocked", buf, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __91__SiriActivationService__notifyListenersOfButtonLongPressWithButtonIdentifier_atTimestamp___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v5 connection];
  v7 = [v6 remoteTarget];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [[SASTimeIntervalTransport alloc] initWithTimeInterval:*(a1 + 32)];
    v10 = [v5 connection];
    v11 = [v10 remoteTarget];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
    [v11 buttonLongPressWithButtonIdentifier:v12 forListenerIdentifier:v13 atTimestamp:v9];
  }
}

- (void)_notifySourcesOfCanActivateFromDirectActionSourceChange:(BOOL)a3
{
  v25 = a3;
  v35 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E698D0A0];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AF00];
    v7 = v5;
    v8 = [v6 currentThread];
    *buf = 136315394;
    v32 = "[SiriActivationService _notifySourcesOfCanActivateFromDirectActionSourceChange:]";
    v33 = 2048;
    v34 = [v8 qualityOfService];
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy sourcesLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&sourcesLock);
  v9 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "[SiriActivationService _notifySourcesOfCanActivateFromDirectActionSourceChange:]";
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy sourcesLock successfully locked", buf, 0xCu);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [(SiriActivationService *)self sources];
  v11 = [v10 allValues];

  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = [v16 connection];
        v18 = [v17 remoteTarget];
        v19 = objc_opt_respondsToSelector();

        if (v19)
        {
          v20 = [v16 connection];
          v21 = [v20 remoteTarget];
          v22 = [MEMORY[0x1E696AD98] numberWithBool:v25];
          [v21 canActivateChangedTo:v22];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  os_unfair_lock_unlock(&sourcesLock);
  v23 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "[SiriActivationService _notifySourcesOfCanActivateFromDirectActionSourceChange:]";
    _os_log_impl(&dword_1C8137000, v23, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy sourcesLock unlocked", buf, 0xCu);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)siriPresentationDismissedWithIdentifier:(int64_t)a3
{
  didDismissForAssesmentModeStartedCompeltion = self->_didDismissForAssesmentModeStartedCompeltion;
  if (didDismissForAssesmentModeStartedCompeltion)
  {
    didDismissForAssesmentModeStartedCompeltion[2](didDismissForAssesmentModeStartedCompeltion, 1);
    v6 = self->_didDismissForAssesmentModeStartedCompeltion;
    self->_didDismissForAssesmentModeStartedCompeltion = 0;
  }

  presentationManager = self->_presentationManager;

  [(SASPresentationManager *)presentationManager presentationWithPresentationIdentifierBecameOff:a3];
}

- (void)registerActivationSource:(id)a3 withIdentifier:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E698D0A0];
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696AF00];
    v11 = v9;
    v12 = [v10 currentThread];
    v25 = 136315394;
    v26 = "[SiriActivationService registerActivationSource:withIdentifier:]";
    v27 = 2048;
    v28 = [v12 qualityOfService];
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy sourcesLock about to lock with qos: %zd", &v25, 0x16u);
  }

  os_unfair_lock_lock(&sourcesLock);
  v13 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315138;
    v26 = "[SiriActivationService registerActivationSource:withIdentifier:]";
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy sourcesLock successfully locked", &v25, 0xCu);
  }

  v14 = [(SiriActivationService *)self sources];
  v15 = [v14 allKeys];
  v16 = [v15 containsObject:v7];

  if (v16)
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [SiriActivationService registerActivationSource:withIdentifier:];
    }

    v17 = [(SiriActivationService *)self sources];
    [v17 removeObjectForKey:v7];
  }

  v18 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315394;
    v26 = "[SiriActivationService registerActivationSource:withIdentifier:]";
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_1C8137000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation Registering '%@'", &v25, 0x16u);
  }

  v19 = [(SiriActivationService *)self sources];
  [v19 setObject:v6 forKey:v7];

  v20 = [v6 connection];
  v21 = [v20 remoteTarget];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[SiriActivationService _shouldRejectNewActivations:](self, "_shouldRejectNewActivations:", -[SiriActivationService _requestState](self, "_requestState"))}];
  [v21 activeChangedTo:v22];

  [v6 specifySenderForInstrumentation:self->_activationEventInstrumentationSender];
  os_unfair_lock_unlock(&sourcesLock);
  v23 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315138;
    v26 = "[SiriActivationService registerActivationSource:withIdentifier:]";
    _os_log_impl(&dword_1C8137000, v23, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy sourcesLock unlocked", &v25, 0xCu);
  }

  [(SiriActivationService *)self _updateCanActivateFromDirectActionSource];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)unregisterActivationSourceIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AF00];
    v8 = v6;
    v9 = [v7 currentThread];
    v19 = 136315394;
    v20 = "[SiriActivationService unregisterActivationSourceIdentifier:]";
    v21 = 2048;
    v22 = [v9 qualityOfService];
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy sourcesLock about to lock with qos: %zd", &v19, 0x16u);
  }

  os_unfair_lock_lock(&sourcesLock);
  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[SiriActivationService unregisterActivationSourceIdentifier:]";
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy sourcesLock successfully locked", &v19, 0xCu);
  }

  v11 = [(SiriActivationService *)self sources];
  v12 = [v11 allKeys];
  v13 = [v12 containsObject:v4];

  v14 = *v5;
  v15 = *v5;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[SiriActivationService unregisterActivationSourceIdentifier:]";
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation Unregistering '%@'", &v19, 0x16u);
    }

    v16 = [(SiriActivationService *)self sources];
    [v16 removeObjectForKey:v4];
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [SiriActivationService unregisterActivationSourceIdentifier:];
  }

  os_unfair_lock_unlock(&sourcesLock);
  v17 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[SiriActivationService unregisterActivationSourceIdentifier:]";
    _os_log_impl(&dword_1C8137000, v17, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy sourcesLock unlocked", &v19, 0xCu);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)registerActivationAssertion:(id)a3 withIdentifier:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E698D0A0];
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696AF00];
    v11 = v9;
    v12 = [v10 currentThread];
    v22 = 136315394;
    v23 = "[SiriActivationService registerActivationAssertion:withIdentifier:]";
    v24 = 2048;
    v25 = [v12 qualityOfService];
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock about to lock with qos: %zd", &v22, 0x16u);
  }

  os_unfair_lock_lock(&assertionLock);
  v13 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "[SiriActivationService registerActivationAssertion:withIdentifier:]";
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock successfully locked", &v22, 0xCu);
  }

  v14 = [(SiriActivationService *)self activationAssertions];
  v15 = [v14 allKeys];
  v16 = [v15 containsObject:v7];

  if (v16)
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [SiriActivationService registerActivationAssertion:withIdentifier:];
    }

    v17 = [(SiriActivationService *)self activationAssertions];
    [v17 removeObjectForKey:v7];
  }

  v18 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "[SiriActivationService registerActivationAssertion:withIdentifier:]";
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_1C8137000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation Registering assertion with Id -  '%@'", &v22, 0x16u);
  }

  v19 = [(SiriActivationService *)self activationAssertions];
  [v19 setObject:v6 forKey:v7];

  os_unfair_lock_unlock(&assertionLock);
  v20 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "[SiriActivationService registerActivationAssertion:withIdentifier:]";
    _os_log_impl(&dword_1C8137000, v20, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock unlocked", &v22, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)unregisterActivationAssertionWithIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AF00];
    v8 = v6;
    v9 = [v7 currentThread];
    v19 = 136315394;
    v20 = "[SiriActivationService unregisterActivationAssertionWithIdentifier:]";
    v21 = 2048;
    v22 = [v9 qualityOfService];
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock about to lock with qos: %zd", &v19, 0x16u);
  }

  os_unfair_lock_lock(&assertionLock);
  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[SiriActivationService unregisterActivationAssertionWithIdentifier:]";
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock successfully locked", &v19, 0xCu);
  }

  v11 = [(SiriActivationService *)self activationAssertions];
  v12 = [v11 allKeys];
  v13 = [v12 containsObject:v4];

  v14 = *v5;
  v15 = *v5;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[SiriActivationService unregisterActivationAssertionWithIdentifier:]";
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation Unregistering assertion %@'", &v19, 0x16u);
    }

    v16 = [(SiriActivationService *)self activationAssertions];
    [v16 removeObjectForKey:v4];
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [SiriActivationService unregisterActivationAssertionWithIdentifier:];
  }

  os_unfair_lock_unlock(&assertionLock);
  v17 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[SiriActivationService unregisterActivationAssertionWithIdentifier:]";
    _os_log_impl(&dword_1C8137000, v17, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock unlocked", &v19, 0xCu);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)registerButtonEventListenerServer:(id)a3 identifier:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E698D0A0];
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696AF00];
    v11 = v9;
    v12 = [v10 currentThread];
    v22 = 136315394;
    v23 = "[SiriActivationService registerButtonEventListenerServer:identifier:]";
    v24 = 2048;
    v25 = [v12 qualityOfService];
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy buttonEventListenerLock about to lock with qos: %zd", &v22, 0x16u);
  }

  os_unfair_lock_lock(&buttonEventListenerLock);
  v13 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "[SiriActivationService registerButtonEventListenerServer:identifier:]";
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy buttonEventListenerLock successfully locked", &v22, 0xCu);
  }

  v14 = [(SiriActivationService *)self buttonEventListeners];
  v15 = [v14 allKeys];
  v16 = [v15 containsObject:v7];

  if (v16)
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [SiriActivationService registerButtonEventListenerServer:identifier:];
    }

    v17 = [(SiriActivationService *)self buttonEventListeners];
    [v17 removeObjectForKey:v7];
  }

  v18 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "[SiriActivationService registerButtonEventListenerServer:identifier:]";
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_1C8137000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation Registering listener with Id -  '%@'", &v22, 0x16u);
  }

  v19 = [(SiriActivationService *)self buttonEventListeners];
  [v19 setObject:v6 forKey:v7];

  os_unfair_lock_unlock(&buttonEventListenerLock);
  v20 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "[SiriActivationService registerButtonEventListenerServer:identifier:]";
    _os_log_impl(&dword_1C8137000, v20, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy buttonEventListenerLock unlocked", &v22, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)unregisterButtonEventListenerWithIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AF00];
    v8 = v6;
    v9 = [v7 currentThread];
    v19 = 136315394;
    v20 = "[SiriActivationService unregisterButtonEventListenerWithIdentifier:]";
    v21 = 2048;
    v22 = [v9 qualityOfService];
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy buttonEventListenerLock about to lock with qos: %zd", &v19, 0x16u);
  }

  os_unfair_lock_lock(&buttonEventListenerLock);
  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[SiriActivationService unregisterButtonEventListenerWithIdentifier:]";
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy buttonEventListenerLock successfully locked", &v19, 0xCu);
  }

  v11 = [(SiriActivationService *)self buttonEventListeners];
  v12 = [v11 allKeys];
  v13 = [v12 containsObject:v4];

  v14 = *v5;
  v15 = *v5;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[SiriActivationService unregisterButtonEventListenerWithIdentifier:]";
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation Unregistering listener %@'", &v19, 0x16u);
    }

    v16 = [(SiriActivationService *)self buttonEventListeners];
    [v16 removeObjectForKey:v4];
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [SiriActivationService unregisterButtonEventListenerWithIdentifier:];
  }

  os_unfair_lock_unlock(&buttonEventListenerLock);
  v17 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[SiriActivationService unregisterButtonEventListenerWithIdentifier:]";
    _os_log_impl(&dword_1C8137000, v17, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy buttonEventListenerLock unlocked", &v19, 0xCu);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)isConnectedTo188
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [MEMORY[0x1E698F468] sharedInstance];
  v3 = [v2 connectedDevices];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 productId] == 8194 && objc_msgSend(v7, "vendorId") == 76)
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)_B188ActivationEvent:(int64_t)a3 context:(id)a4 options:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__SiriActivationService__B188ActivationEvent_context_options___block_invoke;
  v13[3] = &unk_1E82F3AF0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v10 = v9;
  v11 = v8;
  v12 = self;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

void __62__SiriActivationService__B188ActivationEvent_context_options___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[5];
  if (v3)
  {
    v4 = [v3 isValid];
    v2 = *(a1 + 32);
    if (v4)
    {
      [v2[5] invalidate];
      v5 = *(a1 + 32);
      v6 = *(v5 + 40);
      *(v5 + 40) = 0;

      v2 = *(a1 + 32);
    }
  }

  objc_initWeak(&location, v2);
  v7 = MEMORY[0x1E695DFF0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__SiriActivationService__B188ActivationEvent_context_options___block_invoke_2;
  v11[3] = &unk_1E82F3AC8;
  objc_copyWeak(v14, &location);
  v14[1] = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v11 block:0.1];
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __62__SiriActivationService__B188ActivationEvent_context_options___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained presentationsAreIdleAndQuiet];

  v4 = *MEMORY[0x1E698D0A0];
  v5 = os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = v4;
      v7 = objc_loadWeakRetained((a1 + 48));
      v8 = SASRequestStateGetName([v7 _requestState]);
      v16 = 136315394;
      v17 = "[SiriActivationService _B188ActivationEvent:context:options:]_block_invoke_2";
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation B188ActivationEvent with Siri state %@. Activating.", &v16, 0x16u);
    }

    v9 = [[SASActivationRequest alloc] initWithButtonIdentifier:*(a1 + 56) context:*(a1 + 32)];
    v10 = objc_loadWeakRetained((a1 + 48));
    [(SiriDismissalOptions *)v10 handleActivationRequest:v9];
    goto LABEL_10;
  }

  if (v5)
  {
    v11 = v4;
    v12 = objc_loadWeakRetained((a1 + 48));
    v13 = SASRequestStateGetName([v12 _requestState]);
    v16 = 136315394;
    v17 = "[SiriActivationService _B188ActivationEvent:context:options:]_block_invoke";
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation B188ActivationEvent with Siri state %@. Deactivating.", &v16, 0x16u);
  }

  v14 = objc_loadWeakRetained((a1 + 48));
  v9 = v14;
  if (!*(a1 + 40))
  {
    v10 = [[SiriDismissalOptions alloc] initWithDeactivationOptions:0];
    [(SASActivationRequest *)v9 dismissSiriWithOptions:v10];
LABEL_10:

    goto LABEL_11;
  }

  [(SASActivationRequest *)v14 dismissSiriWithOptions:?];
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromButtonIdentifier:(int64_t)a3 context:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 == 3)
  {
    if ([(SiriActivationService *)self isConnectedTo188])
    {
      [(SiriActivationService *)self _B188ActivationEvent:3 context:v6 options:0];
      goto LABEL_18;
    }

    if ([(SiriActivationService *)self _requestState]== 3)
    {
      v7 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
        v22 = 136315650;
        v23 = "[SiriActivationService activationRequestFromButtonIdentifier:context:]";
        v24 = 2112;
        v25 = v6;
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation SiriButtonIdentifierLongPressBTHeadset, context %@, but Siri state is %@. Treating as button long press.", &v22, 0x20u);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v6 address];
      }

      else
      {
        v10 = 0;
      }

      v17 = [SiriLongPressButtonContext alloc];
      v18 = [v6 contextOverride];
      v19 = [(SiriContext *)v17 initWithContextOverride:v18];

      v20 = [MEMORY[0x1E696AE30] processInfo];
      [v20 systemUptime];
      [(SiriLongPressButtonContext *)v19 setButtonDownTimestamp:?];

      [(SiriActivationService *)self buttonLongPressFromButtonIdentifier:3 deviceIdentifier:v10 context:v19];
LABEL_17:

      goto LABEL_18;
    }
  }

  v11 = [(SiriActivationService *)self _requestState];
  v12 = *MEMORY[0x1E698D0A0];
  if (v11 != 3)
  {
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = v12;
      v15 = [v13 stringWithSiriButtonIdentifier:a3];
      v16 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
      v22 = 136315650;
      v23 = "[SiriActivationService activationRequestFromButtonIdentifier:context:]";
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s activationRequestFromButtonIdentifier:%@, with Siri state %@. Activating.", &v22, 0x20u);
    }

    [(SiriActivationService *)self setButtonDownHasOccurredSinceActivation:0];
    v10 = [[SASActivationRequest alloc] initWithButtonIdentifier:a3 context:v6];
    [(SiriActivationService *)self handleActivationRequest:v10];
    goto LABEL_17;
  }

  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    [(SiriActivationService *)v12 activationRequestFromButtonIdentifier:a3 context:self];
  }

LABEL_18:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)deactivationRequestFromButtonIdentifier:(int64_t)a3 context:(id)a4 options:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (a3 == 3 && [(SiriActivationService *)self isConnectedTo188])
  {
    [(SiriActivationService *)self _B188ActivationEvent:3 context:v8 options:v9];
  }

  else
  {
    v10 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = v10;
      v13 = [v11 stringWithSiriButtonIdentifier:a3];
      v14 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
      v16 = 136315650;
      v17 = "[SiriActivationService deactivationRequestFromButtonIdentifier:context:options:]";
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s deactivationRequestFromButtonIdentifier:%@, with Siri state %@. Deactivating.", &v16, 0x20u);
    }

    [(SiriActivationService *)self dismissSiriWithOptions:v9];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldRejectActivationWithButtonIdentifier:(int64_t)a3 activationAssertions:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = +[SASSystemState sharedSystemState];
  v7 = [v6 isInActiveCall];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = a3 - 1;
    v10 = [v5 count];
    v11 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "[SiriActivationService _shouldRejectActivationWithButtonIdentifier:activationAssertions:]";
      v17 = 1024;
      v18 = v9 < 2;
      v19 = 1024;
      v20 = v10 != 0;
      _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s  #activation _shouldRejectActivationWithButtonIdentifier - isBlockableButton:%d assertionsAvailable :%d", &v15, 0x18u);
    }

    v8 = v9 < 2 && v10 != 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)prewarmFromButtonIdentifier:(int64_t)a3 longPressInterval:(double)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = v7;
    v10 = [v8 stringWithSiriButtonIdentifier:a3];
    v11 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
    *buf = 136315906;
    v24 = "[SiriActivationService prewarmFromButtonIdentifier:longPressInterval:]";
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    v29 = 2048;
    v30 = a4;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation %@ button prewarm request, current request state: %@, longPressInterval: %f", buf, 0x2Au);
  }

  v12 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v13 = [v12 assistantIsEnabled];

  if (v13)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithSiriActivationEventType:{0, @"activationEvent"}];
    v22[0] = v14;
    v21[1] = @"eventSource";
    v15 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:a3];
    v22[1] = v15;
    v21[2] = @"interval";
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v22[2] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

    v18 = +[SASAnalytics analytics];
    [v18 enqueueCurrentAnalyticsEventWithType:1402 context:v17];

    [(SiriActivationService *)self _defrost];
    v19 = [(SiriActivationService *)self heater];
    [v19 prepareForUseAfterTimeInterval:a4];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setHintGlowAssertionFromButtonIdentifier:(int64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = [[SASActivationRequest alloc] initWithButtonIdentifier:a3 context:v6];
  if ([(SiriActivationService *)self _shouldShowHintGlowWithRequest:v7])
  {
    v8 = [(SASPresentationManager *)self->_presentationManager nextPresentationToActivate];
    if (a3 == 2 && v8 == 1)
    {
      objc_initWeak(&location, self);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __74__SiriActivationService_setHintGlowAssertionFromButtonIdentifier_context___block_invoke;
      v9[3] = &unk_1E82F36D0;
      objc_copyWeak(&v10, &location);
      SiriInvokeOnMainQueue(v9);
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __74__SiriActivationService_setHintGlowAssertionFromButtonIdentifier_context___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = WeakRetained[24];
      v5 = 136315394;
      v6 = "[SiriActivationService setHintGlowAssertionFromButtonIdentifier:context:]_block_invoke";
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s SiriActivationService request hint glow for next presentation, presentationManager: %@", &v5, 0x16u);
    }

    [WeakRetained[24] requestHintGlowForNextPresentation];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldShowHintGlowWithRequest:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E698D258] saeAvailable])
  {
    v5 = [(SiriActivationService *)self _canActivateForRequest:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_canActivateForRequest:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setRequest:v4];

  [v5 setButtonTriggerStateActive:0];
  v6 = [(SiriActivationService *)self systemState];
  [v5 setSystemState:v6];

  v7 = +[SASSiriPocketStateManager sharedManager];
  [v5 setPocketStateManager:v7];

  v8 = [(SiriActivationService *)self afPreferences];
  [v5 setPreferences:v8];

  [v5 setRequestState:{-[SiriActivationService _requestState](self, "_requestState")}];
  v9 = [(SiriActivationService *)self assetUtilities];
  [v5 setAssetUtilities:v9];

  [v5 setPresentationIdentifier:{-[SASPresentationManager nextPresentationToActivate](self->_presentationManager, "nextPresentationToActivate")}];
  LOBYTE(self) = [SASActivationDecision canActivateForCondition:v5];

  return self;
}

- (void)_defrost
{
  kdebug_trace();

  [(SiriActivationService *)self _attachToTether];
}

- (void)cancelPrewarmFromButtonIdentifier:(int64_t)a3
{
  [(SASHeater *)self->_heater cancelPreparationForButtonIdentifier:a3];
  presentationManager = self->_presentationManager;

  [(SASPresentationManager *)presentationManager cancelAllPreheatedPresentations];
}

- (void)buttonDownFromButtonIdentifier:(int64_t)a3 timestamp:(double)a4 context:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = MEMORY[0x1E698D0A0];
  v10 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = v10;
    v13 = [v11 stringWithSiriButtonIdentifier:a3];
    *buf = 136315394;
    v35 = "[SiriActivationService buttonDownFromButtonIdentifier:timestamp:context:]";
    v36 = 2112;
    v37 = v13;
    _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation buttonDownFromButtonIdentifier:%@", buf, 0x16u);
  }

  if ([(SiriActivationService *)self _requestState]== 4)
  {
    v14 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v35 = "[SiriActivationService buttonDownFromButtonIdentifier:timestamp:context:]";
      _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation button down used while stopping. Ignoring.", buf, 0xCu);
    }
  }

  else
  {
    [(SiriActivationService *)self _notifyListenersOfButtonDownWithButtonIdentifier:a3 atTimestamp:a4];
    v15 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = MEMORY[0x1E696AF00];
      v17 = v15;
      v18 = [v16 currentThread];
      v19 = [v18 qualityOfService];
      *buf = 136315394;
      v35 = "[SiriActivationService buttonDownFromButtonIdentifier:timestamp:context:]";
      v36 = 2048;
      v37 = v19;
      _os_log_impl(&dword_1C8137000, v17, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock about to lock with qos: %zd", buf, 0x16u);
    }

    os_unfair_lock_lock(&assertionLock);
    v20 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v35 = "[SiriActivationService buttonDownFromButtonIdentifier:timestamp:context:]";
      _os_log_impl(&dword_1C8137000, v20, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock successfully locked", buf, 0xCu);
    }

    v21 = [(SiriActivationService *)self _shouldRejectActivationWithButtonIdentifier:a3 activationAssertions:self->_activationAssertions];
    os_unfair_lock_unlock(&assertionLock);
    v22 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v35 = "[SiriActivationService buttonDownFromButtonIdentifier:timestamp:context:]";
      _os_log_impl(&dword_1C8137000, v22, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock unlocked", buf, 0xCu);
    }

    if (v21)
    {
      v23 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v24 = MEMORY[0x1E696AEC0];
        v25 = v23;
        v26 = [v24 stringWithSiriButtonIdentifier:a3];
        activationAssertions = self->_activationAssertions;
        *buf = 136315650;
        v35 = "[SiriActivationService buttonDownFromButtonIdentifier:timestamp:context:]";
        v36 = 2112;
        v37 = v26;
        v38 = 2112;
        v39 = activationAssertions;
        _os_log_impl(&dword_1C8137000, v25, OS_LOG_TYPE_DEFAULT, "%s #activation Rejecting Button Down as we have valid activation assertions. ButtonIdentifier - %@ Activation assertions - %@", buf, 0x20u);
      }
    }

    else
    {
      [(SiriActivationService *)self setButtonDownHasOccurredSinceActivation:1];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __74__SiriActivationService_buttonDownFromButtonIdentifier_timestamp_context___block_invoke;
      aBlock[3] = &unk_1E82F3B18;
      v32 = a3;
      v33 = a4;
      v31 = v8;
      v28 = _Block_copy(aBlock);
      [(SASPresentationManager *)self->_presentationManager sendButtonEventCompletionToPresentations:v28 forButtonEventType:1];
      [(SiriActivationService *)self _recordTimeIfNeededForButtonIdentifier:a3 buttonDownTimestamp:a4];
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __74__SiriActivationService_buttonDownFromButtonIdentifier_timestamp_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 connection];
  v3 = [v6 remoteTarget];
  v4 = [[SASButtonIdentifierTransport alloc] initWithSiriButtonIdentifier:*(a1 + 40)];
  v5 = [[SASTimeIntervalTransport alloc] initWithTimeInterval:*(a1 + 48)];
  [v3 handleButtonDownFromButtonIdentifier:v4 timestamp:v5 context:*(a1 + 32)];
}

- (void)buttonUpFromButtonIdentifier:(int64_t)a3 deviceIdentifier:(id)a4 timestamp:(double)a5 context:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  v12 = MEMORY[0x1E698D0A0];
  v13 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = v13;
    v16 = [v14 stringWithSiriButtonIdentifier:a3];
    *buf = 136315394;
    v41 = "[SiriActivationService buttonUpFromButtonIdentifier:deviceIdentifier:timestamp:context:]";
    v42 = 2112;
    v43 = v16;
    _os_log_impl(&dword_1C8137000, v15, OS_LOG_TYPE_DEFAULT, "%s #activation buttonUpFromButtonIdentifier:%@", buf, 0x16u);
  }

  [(SiriActivationService *)self _notifyListenersOfButtonUpWithButtonIdentifier:a3 atTimestamp:a5];
  v17 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = MEMORY[0x1E696AF00];
    v19 = v17;
    v20 = [v18 currentThread];
    v21 = [v20 qualityOfService];
    *buf = 136315394;
    v41 = "[SiriActivationService buttonUpFromButtonIdentifier:deviceIdentifier:timestamp:context:]";
    v42 = 2048;
    v43 = v21;
    _os_log_impl(&dword_1C8137000, v19, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&assertionLock);
  v22 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v41 = "[SiriActivationService buttonUpFromButtonIdentifier:deviceIdentifier:timestamp:context:]";
    _os_log_impl(&dword_1C8137000, v22, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock successfully locked", buf, 0xCu);
  }

  v23 = [(SiriActivationService *)self _shouldRejectActivationWithButtonIdentifier:a3 activationAssertions:self->_activationAssertions];
  os_unfair_lock_unlock(&assertionLock);
  v24 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v41 = "[SiriActivationService buttonUpFromButtonIdentifier:deviceIdentifier:timestamp:context:]";
    _os_log_impl(&dword_1C8137000, v24, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock unlocked", buf, 0xCu);
  }

  if (v23)
  {
    v25 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v26 = MEMORY[0x1E696AEC0];
      v27 = v25;
      v28 = [v26 stringWithSiriButtonIdentifier:a3];
      activationAssertions = self->_activationAssertions;
      *buf = 136315650;
      v41 = "[SiriActivationService buttonUpFromButtonIdentifier:deviceIdentifier:timestamp:context:]";
      v42 = 2112;
      v43 = v28;
      v44 = 2112;
      v45 = activationAssertions;
      _os_log_impl(&dword_1C8137000, v27, OS_LOG_TYPE_DEFAULT, "%s #activation Rejecting Button Up as we have valid activation assertions. ButtonIdentifier - %@ Activation assertions - %@", buf, 0x20u);
    }
  }

  else
  {
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __89__SiriActivationService_buttonUpFromButtonIdentifier_deviceIdentifier_timestamp_context___block_invoke;
    v35 = &unk_1E82F3B40;
    v38 = a3;
    v36 = v10;
    v39 = a5;
    v37 = v11;
    v30 = _Block_copy(&v32);
    [(SASPresentationManager *)self->_presentationManager sendButtonEventCompletionToPresentations:v30 forButtonEventType:2, v32, v33, v34, v35];
    [(SiriActivationService *)self _handleTapSynthesisIfNeededForButtonIdentifier:a3 buttonUpTimestamp:a5];
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __89__SiriActivationService_buttonUpFromButtonIdentifier_deviceIdentifier_timestamp_context___block_invoke(uint64_t a1, void *a2)
{
  v7 = [a2 connection];
  v3 = [v7 remoteTarget];
  v4 = [[SASButtonIdentifierTransport alloc] initWithSiriButtonIdentifier:*(a1 + 48)];
  v5 = *(a1 + 32);
  v6 = [[SASTimeIntervalTransport alloc] initWithTimeInterval:*(a1 + 56)];
  [v3 handleButtonUpFromButtonIdentifier:v4 deviceIdentifier:v5 timestamp:v6 context:*(a1 + 40)];
}

- (void)buttonTapFromButtonIdentifier:(int64_t)a3 timestamp:(double)a4 context:(id)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = MEMORY[0x1E698D0A0];
  v10 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = v10;
    v13 = [v11 stringWithSiriButtonIdentifier:a3];
    *buf = 136315394;
    v55 = "[SiriActivationService buttonTapFromButtonIdentifier:timestamp:context:]";
    v56 = 2112;
    v57 = v13;
    _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation buttonTapFromButtonIdentifier:%@", buf, 0x16u);
  }

  v14 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = MEMORY[0x1E696AF00];
    v16 = v14;
    v17 = [v15 currentThread];
    v18 = [v17 qualityOfService];
    *buf = 136315394;
    v55 = "[SiriActivationService buttonTapFromButtonIdentifier:timestamp:context:]";
    v56 = 2048;
    v57 = v18;
    _os_log_impl(&dword_1C8137000, v16, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&assertionLock);
  v19 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v55 = "[SiriActivationService buttonTapFromButtonIdentifier:timestamp:context:]";
    _os_log_impl(&dword_1C8137000, v19, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock successfully locked", buf, 0xCu);
  }

  v20 = [(SiriActivationService *)self _shouldRejectActivationWithButtonIdentifier:a3 activationAssertions:self->_activationAssertions];
  os_unfair_lock_unlock(&assertionLock);
  v21 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v55 = "[SiriActivationService buttonTapFromButtonIdentifier:timestamp:context:]";
    _os_log_impl(&dword_1C8137000, v21, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock unlocked", buf, 0xCu);
  }

  if (v20)
  {
    v22 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v23 = MEMORY[0x1E696AEC0];
      v24 = v22;
      v25 = [v23 stringWithSiriButtonIdentifier:a3];
      activationAssertions = self->_activationAssertions;
      *buf = 136315650;
      v55 = "[SiriActivationService buttonTapFromButtonIdentifier:timestamp:context:]";
      v56 = 2112;
      v57 = v25;
      v58 = 2112;
      v59 = activationAssertions;
      _os_log_impl(&dword_1C8137000, v24, OS_LOG_TYPE_DEFAULT, "%s #activation Rejecting Button Tap as we have valid activation assertions. ButtonIdentifier - %@ Activation assertions - %@", buf, 0x20u);
    }
  }

  else
  {
    if ([(SiriActivationService *)self _requestState]== 3)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __73__SiriActivationService_buttonTapFromButtonIdentifier_timestamp_context___block_invoke;
      aBlock[3] = &unk_1E82F3B18;
      v52 = a3;
      v53 = a4;
      v51 = v8;
      v27 = _Block_copy(aBlock);
      [(SASPresentationManager *)self->_presentationManager sendButtonEventCompletionToPresentations:v27 forButtonEventType:3];

      v28 = v51;
    }

    else if ([(SiriActivationService *)self _buttonIsTVMicrophoneButton:a3])
    {
      v29 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
        v31 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
        *buf = 136315394;
        v55 = "[SiriActivationService buttonTapFromButtonIdentifier:timestamp:context:]";
        v56 = 2112;
        v57 = v31;
        _os_log_impl(&dword_1C8137000, v30, OS_LOG_TYPE_DEFAULT, "%s #activation activating due to TV remote microphone button short tap with Siri state %@", buf, 0x16u);
      }

      if ([MEMORY[0x1E698D148] isTVPushToTalkEnabled] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v28 = v8;
      }

      else
      {
        v28 = 0;
      }

      if ([v28 isPTTEligible])
      {
        [(SiriActivationService *)self activationRequestFromButtonIdentifier:a3 context:v28];
      }

      else
      {
        v38 = objc_alloc_init(SiriShortPressButtonContext);
        [(SiriActivationService *)self activationRequestFromButtonIdentifier:a3 context:v38];
      }

      if ([v28 isPTTEligible])
      {
        v39 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v55 = "[SiriActivationService buttonTapFromButtonIdentifier:timestamp:context:]";
          _os_log_impl(&dword_1C8137000, v39, OS_LOG_TYPE_DEFAULT, "%s #activation PTT Eligible Remote, Sending handleButtonTap", buf, 0xCu);
        }

        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __73__SiriActivationService_buttonTapFromButtonIdentifier_timestamp_context___block_invoke_138;
        v46[3] = &unk_1E82F3B18;
        v48 = a3;
        v49 = a4;
        v47 = v8;
        v40 = _Block_copy(v46);
        [(SASPresentationManager *)self->_presentationManager sendButtonEventCompletionToPresentations:v40 forButtonEventType:3];
      }
    }

    else
    {
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __73__SiriActivationService_buttonTapFromButtonIdentifier_timestamp_context___block_invoke_2;
      v42[3] = &unk_1E82F3B18;
      v44 = a3;
      v45 = a4;
      v43 = v8;
      v32 = _Block_copy(v42);
      if (![(SASPresentationManager *)self->_presentationManager sendButtonEventCompletionToApplicableOffPresentations:v32 forButtonEventType:3])
      {
        v33 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v34 = MEMORY[0x1E696AEC0];
          v35 = v33;
          v36 = [v34 stringWithSiriButtonIdentifier:a3];
          v37 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
          *buf = 136315650;
          v55 = "[SiriActivationService buttonTapFromButtonIdentifier:timestamp:context:]";
          v56 = 2112;
          v57 = v36;
          v58 = 2112;
          v59 = v37;
          _os_log_impl(&dword_1C8137000, v35, OS_LOG_TYPE_DEFAULT, "%s buttonTapFromButtonIdentifier:%@, with Siri state %@. Ignoring.", buf, 0x20u);
        }
      }

      v28 = v43;
    }

    [(SiriActivationService *)self _cancelPendingActivationEventWithReason:3];
  }

  v41 = *MEMORY[0x1E69E9840];
}

void __73__SiriActivationService_buttonTapFromButtonIdentifier_timestamp_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 connection];
  v3 = [v6 remoteTarget];
  v4 = [[SASButtonIdentifierTransport alloc] initWithSiriButtonIdentifier:*(a1 + 40)];
  v5 = [[SASTimeIntervalTransport alloc] initWithTimeInterval:*(a1 + 48)];
  [v3 handleButtonTapFromButtonIdentifier:v4 timestamp:v5 context:*(a1 + 32)];
}

void __73__SiriActivationService_buttonTapFromButtonIdentifier_timestamp_context___block_invoke_138(uint64_t a1, void *a2)
{
  v6 = [a2 connection];
  v3 = [v6 remoteTarget];
  v4 = [[SASButtonIdentifierTransport alloc] initWithSiriButtonIdentifier:*(a1 + 40)];
  v5 = [[SASTimeIntervalTransport alloc] initWithTimeInterval:*(a1 + 48)];
  [v3 handleButtonTapFromButtonIdentifier:v4 timestamp:v5 context:*(a1 + 32)];
}

void __73__SiriActivationService_buttonTapFromButtonIdentifier_timestamp_context___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = [a2 connection];
  v3 = [v6 remoteTarget];
  v4 = [[SASButtonIdentifierTransport alloc] initWithSiriButtonIdentifier:*(a1 + 40)];
  v5 = [[SASTimeIntervalTransport alloc] initWithTimeInterval:*(a1 + 48)];
  [v3 handleButtonTapFromButtonIdentifier:v4 timestamp:v5 context:*(a1 + 32)];
}

- (void)buttonLongPressFromButtonIdentifier:(int64_t)a3 deviceIdentifier:(id)a4 context:(id)a5
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E698D0A0];
  v11 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = v11;
    v14 = [v12 stringWithSiriButtonIdentifier:a3];
    *buf = 136315394;
    v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
    v59 = 2112;
    v60 = v14;
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation buttonLongPressFromButtonIdentifier:%@", buf, 0x16u);
  }

  [(NSMutableDictionary *)v9 buttonDownTimestamp];
  [(SiriActivationService *)self _notifyListenersOfButtonLongPressWithButtonIdentifier:a3 atTimestamp:?];
  v15 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = MEMORY[0x1E696AF00];
    v17 = v15;
    v18 = [v16 currentThread];
    v19 = [v18 qualityOfService];
    *buf = 136315394;
    v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
    v59 = 2048;
    v60 = v19;
    _os_log_impl(&dword_1C8137000, v17, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&assertionLock);
  v20 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
    _os_log_impl(&dword_1C8137000, v20, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock successfully locked", buf, 0xCu);
  }

  v21 = [(SiriActivationService *)self _shouldRejectActivationWithButtonIdentifier:a3 activationAssertions:self->_activationAssertions];
  os_unfair_lock_unlock(&assertionLock);
  v22 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
    _os_log_impl(&dword_1C8137000, v22, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy assertionLock unlocked", buf, 0xCu);
  }

  if (v21)
  {
    v23 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v24 = MEMORY[0x1E696AEC0];
      v25 = v23;
      v26 = [v24 stringWithSiriButtonIdentifier:a3];
      activationAssertions = self->_activationAssertions;
      *buf = 136315650;
      v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
      v59 = 2112;
      v60 = v26;
      v61 = 2112;
      v62 = activationAssertions;
      _os_log_impl(&dword_1C8137000, v25, OS_LOG_TYPE_DEFAULT, "%s #activation Rejecting Button Long Press as we have valid activation assertions. ButtonIdentifier - %@ Activation assertions - %@", buf, 0x20u);
LABEL_12:
    }
  }

  else
  {
    if ([(SiriActivationService *)self _shouldRejectNewActivations:[(SiriActivationService *)self _requestState]])
    {
      if ([(SiriActivationService *)self _requestState]== 2 || [(SiriActivationService *)self _requestState]== 4)
      {
        v28 = *v10;
        if (!os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        v29 = MEMORY[0x1E696AEC0];
        v25 = v28;
        v26 = [v29 stringWithSiriButtonIdentifier:a3];
        v30 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
        *buf = 136315906;
        v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
        v59 = 2112;
        v60 = v26;
        v61 = 2112;
        v62 = v9;
        v63 = 2112;
        v64 = v30;
        _os_log_error_impl(&dword_1C8137000, v25, OS_LOG_TYPE_ERROR, "%s #activation buttonLongPressFromButtonIdentifier:%@, context %@, but Siri state is %@. Ignoring.", buf, 0x2Au);
      }

      else
      {
        if ([(SiriActivationService *)self _requestState]== 3)
        {
          v37 = [(SiriActivationService *)self _buttonIsAVExternalButton:a3];
          v38 = *v10;
          v39 = os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT);
          if (!v37)
          {
            if (v39)
            {
              v44 = MEMORY[0x1E696AEC0];
              v45 = v38;
              v46 = [v44 stringWithSiriButtonIdentifier:a3];
              v47 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
              *buf = 136315906;
              v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
              v59 = 2112;
              v60 = v46;
              v61 = 2112;
              v62 = v9;
              v63 = 2112;
              v64 = v47;
              _os_log_impl(&dword_1C8137000, v45, OS_LOG_TYPE_DEFAULT, "%s #activation buttonLongPressFromButtonIdentifier:%@, context %@, but Siri state is %@. Passing to the Presentation Shell.", buf, 0x2Au);
            }

            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __86__SiriActivationService_buttonLongPressFromButtonIdentifier_deviceIdentifier_context___block_invoke;
            aBlock[3] = &unk_1E82F3B68;
            v48 = v9;
            v54 = v48;
            v55 = v8;
            v56 = a3;
            v49 = _Block_copy(aBlock);
            v50 = +[SASSystemState sharedSystemState];
            v51 = [v50 isATV];

            if (v51)
            {
              v52 = [[SASActivationRequest alloc] initWithButtonIdentifier:a3 context:v48];
              [(SASMyriadController *)self->_myriadController activateForRequest:v52 visible:[(SiriActivationService *)self _requestState]== 3];
            }

            [(SASPresentationManager *)self->_presentationManager sendButtonEventCompletionToPresentations:v49 forButtonEventType:4];

            goto LABEL_21;
          }

          if (!v39)
          {
            goto LABEL_21;
          }

          v40 = MEMORY[0x1E696AEC0];
          v25 = v38;
          v26 = [v40 stringWithSiriButtonIdentifier:a3];
          v30 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
          *buf = 136315906;
          v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
          v59 = 2112;
          v60 = v26;
          v61 = 2112;
          v62 = v9;
          v63 = 2112;
          v64 = v30;
          v41 = "%s #activation buttonLongPressFromButtonIdentifier:%@, context %@, but Siri state is %@ and we are in CarPlay. Ignoring because we should also be getting a button down/up.";
        }

        else
        {
          v42 = *v10;
          if (!os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_21;
          }

          v43 = MEMORY[0x1E696AEC0];
          v25 = v42;
          v26 = [v43 stringWithSiriButtonIdentifier:a3];
          v30 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
          *buf = 136315906;
          v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
          v59 = 2112;
          v60 = v26;
          v61 = 2112;
          v62 = v30;
          v63 = 2112;
          v64 = v9;
          v41 = "%s #activation buttonLongPressFromButtonIdentifier:%@, with Siri state %@, context: %@. Ignoring";
        }

        _os_log_impl(&dword_1C8137000, v25, OS_LOG_TYPE_DEFAULT, v41, buf, 0x2Au);
      }

      goto LABEL_12;
    }

    v31 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v32 = MEMORY[0x1E696AEC0];
      v33 = v31;
      v34 = [v32 stringWithSiriButtonIdentifier:a3];
      v35 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
      *buf = 136315906;
      v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
      v59 = 2112;
      v60 = v34;
      v61 = 2112;
      v62 = v35;
      v63 = 2112;
      v64 = v9;
      _os_log_impl(&dword_1C8137000, v33, OS_LOG_TYPE_DEFAULT, "%s #activation buttonLongPressFromButtonIdentifier:%@, with Siri state %@, context %@. Activating.", buf, 0x2Au);
    }

    [(SiriActivationService *)self activationRequestFromButtonIdentifier:a3 context:v9];
  }

LABEL_21:

  v36 = *MEMORY[0x1E69E9840];
}

void __86__SiriActivationService_buttonLongPressFromButtonIdentifier_deviceIdentifier_context___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [SASTimeIntervalTransport alloc];
  [*(a1 + 32) buttonDownTimestamp];
  v4 = [(SASTimeIntervalTransport *)v3 initWithTimeInterval:?];
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [*(a1 + 32) activeDeviceBluetoothIdentifier];

    v5 = v7;
  }

  v8 = [v11 connection];
  v9 = [v8 remoteTarget];
  v10 = [[SASButtonIdentifierTransport alloc] initWithSiriButtonIdentifier:*(a1 + 48)];
  [v9 handleButtonLongPressFromButtonIdentifier:v10 deviceIdentifier:v5 timestamp:v4 context:*(a1 + 32)];
}

- (void)_handleTapSynthesisIfNeededForButtonIdentifier:(int64_t)a3 buttonUpTimestamp:(double)a4
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(SiriActivationService *)self _buttonIsAVExternalButton:?]&& [(SiriActivationService *)self buttonDownHasOccurredSinceActivation])
  {
    v7 = [(SiriActivationService *)self avExternalButtonEvents];
    v8 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:a3];
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      v10 = [(SiriActivationService *)self avExternalButtonEvents];
      v11 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:a3];
      [v10 removeObjectForKey:v11];

      [v9 doubleValue];
      v13 = v12;
      v14 = MEMORY[0x1E698D0A0];
      v15 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315650;
        v23 = "[SiriActivationService _handleTapSynthesisIfNeededForButtonIdentifier:buttonUpTimestamp:]";
        v24 = 2048;
        v25 = a4;
        v26 = 2048;
        v27 = v13;
        _os_log_impl(&dword_1C8137000, v15, OS_LOG_TYPE_DEFAULT, "%s buttonUpTimestamp: %f, buttonDownTimestamp: %f", &v22, 0x20u);
      }

      [(SiriActivationService *)self activationTimestamp];
      if (a4 - v13 < 0.4 && v16 != v13)
      {
        v18 = [(SiriActivationService *)self _requestState];
        v19 = *v14;
        v20 = os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT);
        if (v18 == 3)
        {
          if (v20)
          {
            v22 = 136315138;
            v23 = "[SiriActivationService _handleTapSynthesisIfNeededForButtonIdentifier:buttonUpTimestamp:]";
            _os_log_impl(&dword_1C8137000, v19, OS_LOG_TYPE_DEFAULT, "%s #activation synthesizing button tap", &v22, 0xCu);
          }

          [(SiriActivationService *)self buttonTapFromButtonIdentifier:a3 timestamp:0 context:a4];
        }

        else if (v20)
        {
          v22 = 136315138;
          v23 = "[SiriActivationService _handleTapSynthesisIfNeededForButtonIdentifier:buttonUpTimestamp:]";
          _os_log_impl(&dword_1C8137000, v19, OS_LOG_TYPE_DEFAULT, "%s #activation button tap occurred, but Siri is not yet up. Not synthesizing tap event.", &v22, 0xCu);
        }
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_recordTimeIfNeededForButtonIdentifier:(int64_t)a3 buttonDownTimestamp:(double)a4
{
  if ([(SiriActivationService *)self _buttonIsAVExternalButton:?])
  {
    v9 = [(SiriActivationService *)self avExternalButtonEvents];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v8 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:a3];
    [v9 setObject:v7 forKey:v8];
  }
}

- (void)prewarmForFirstTapOfQuickTypeToSiriGesture
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
    *buf = 136315394;
    v19 = "[SiriActivationService prewarmForFirstTapOfQuickTypeToSiriGesture]";
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation #quickTypeGate Quick Type-to-Siri prewarm request, current request state: %@", buf, 0x16u);
  }

  v6 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v7 = [v6 assistantIsEnabled];

  if (v7)
  {
    v8 = [SASPreheatRequest newWithBuilder:&__block_literal_global_142];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __67__SiriActivationService_prewarmForFirstTapOfQuickTypeToSiriGesture__block_invoke_2;
    v15 = &unk_1E82F3BB0;
    v16 = self;
    v17 = v8;
    v9 = v8;
    v10 = [SASPreheatOptions newWithBuilder:&v12];
    [(SASPresentationManager *)self->_presentationManager preheatNextPresentationToActivateWithOptions:v10, v12, v13, v14, v15, v16];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __67__SiriActivationService_prewarmForFirstTapOfQuickTypeToSiriGesture__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setRequestSource:48];
  [v2 setConfiguration:0];
}

void __67__SiriActivationService_prewarmForFirstTapOfQuickTypeToSiriGesture__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 systemState];
  v5 = [v4 lockStateMonitor];
  [v6 setLockState:{objc_msgSend(v5, "lockState")}];

  [v6 setPreheatRequest:*(a1 + 40)];
}

- (void)prewarmWithRequest:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __44__SiriActivationService_prewarmWithRequest___block_invoke;
  v10 = &unk_1E82F3BB0;
  v11 = self;
  v12 = v4;
  v5 = v4;
  v6 = [SASPreheatOptions newWithBuilder:&v7];
  [(SASPresentationManager *)self->_presentationManager preheatNextPresentationToActivateWithOptions:v6, v7, v8, v9, v10, v11];
}

void __44__SiriActivationService_prewarmWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 systemState];
  v5 = [v4 lockStateMonitor];
  [v6 setLockState:{objc_msgSend(v5, "lockState")}];

  [v6 setPreheatRequest:*(a1 + 40)];
}

- (void)cancelPrewarmForFirstTapOfQuickTypeToSiriGesture
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
    v7 = 136315394;
    v8 = "[SiriActivationService cancelPrewarmForFirstTapOfQuickTypeToSiriGesture]";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation #quickTypeGate Cancel Quick Type-to-Siri prewarm request, current request state: %@", &v7, 0x16u);
  }

  [(SASPresentationManager *)self->_presentationManager cancelAllPreheatedPresentations];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromDirectActionEventWithContext:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    [v6 directActionEvent];
    v10 = AFDirectActionEventGetName();
    v15 = 136315394;
    v16 = "[SiriActivationService activationRequestFromDirectActionEventWithContext:completion:]";
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromDirectActionEventWithContext:%@", &v15, 0x16u);
  }

  v11 = [[SASActivationRequest alloc] initWithDirectActionContext:v6];
  v12 = [(SiriActivationService *)self handleActivationRequest:v11];
  if (v7)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v12];
    v7[2](v7, v13, 0);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromContinuityWithContext:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[SiriActivationService activationRequestFromContinuityWithContext:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromContinuityWithContext", &v12, 0xCu);
  }

  if (!AFIsInternalInstall())
  {
    goto LABEL_7;
  }

  v6 = [v4 speechRequestOptions];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v9 = [v8 designModeIsEnabled];

  if (v9)
  {
    [(SiriActivationService *)self _handleDesignModeRequest];
  }

  else
  {
LABEL_7:
    v10 = [[SASActivationRequest alloc] initWithContinuityContext:v4];
    [(SiriActivationService *)self handleActivationRequest:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromVoiceTriggerWithContext:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[SiriActivationService activationRequestFromVoiceTriggerWithContext:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromVoiceTriggerWithContext", &v10, 0xCu);
  }

  if (AFIsInternalInstall() && ([MEMORY[0x1E698D1C0] sharedPreferences], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "designModeIsEnabled"), v6, v7))
  {
    [(SiriActivationService *)self _handleDesignModeRequest];
  }

  else
  {
    v8 = [[SASActivationRequest alloc] initWithVoiceTriggerContext:v4];
    [(SiriActivationService *)self handleActivationRequest:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromContinuousConversationWithContext:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SiriActivationService activationRequestFromContinuousConversationWithContext:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromContinuousConversationWithContext with context: %@", &v8, 0x16u);
  }

  v6 = [[SASActivationRequest alloc] initWithContinuousConversationContext:v4];
  [(SiriActivationService *)self handleActivationRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromContinuousConversationHearstWithContext:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SiriActivationService activationRequestFromContinuousConversationHearstWithContext:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromContinuousConversationHearstWithContext with context: %@", &v8, 0x16u);
  }

  v6 = [[SASActivationRequest alloc] initWithContinuousConversationHearstContext:v4];
  [(SiriActivationService *)self handleActivationRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromContinuousConversationJarvisWithContext:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SiriActivationService activationRequestFromContinuousConversationJarvisWithContext:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromContinuousConversationJarvisWithContext with context: %@", &v8, 0x16u);
  }

  v6 = [[SASActivationRequest alloc] initWithContinuousConversationJarvisContext:v4];
  [(SiriActivationService *)self handleActivationRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromBreadcrumb
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SiriActivationService activationRequestFromBreadcrumb]";
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromBreadcrumb", &v6, 0xCu);
  }

  v4 = [[SASActivationRequest alloc] initWithBreadcrumbRequest];
  [(SiriActivationService *)self handleActivationRequest:v4];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromBluetoothKeyboardActivation:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = SASRequestSourceGetName(a3);
    v10 = 136315394;
    v11 = "[SiriActivationService activationRequestFromBluetoothKeyboardActivation:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromSimpleActivation:%@", &v10, 0x16u);
  }

  v8 = [[SASActivationRequest alloc] initWithBluetoothKeyboardShortcutActivation:a3];
  [(SiriActivationService *)self handleActivationRequest:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromRemotePresentationBringUpWithContext:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SiriActivationService activationRequestFromRemotePresentationBringUpWithContext:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromRemotePresentationBringUpWithContext:%@", &v8, 0x16u);
  }

  v6 = [[SASActivationRequest alloc] initWithRemotePresentationBringUpContext:v4];
  [(SiriActivationService *)self handleActivationRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromSimpleActivation:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = SASRequestSourceGetName(a3);
    v10 = 136315394;
    v11 = "[SiriActivationService activationRequestFromSimpleActivation:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromSimpleActivation:%@", &v10, 0x16u);
  }

  v8 = [[SASActivationRequest alloc] initWithSimpleActivation:a3];
  [(SiriActivationService *)self handleActivationRequest:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromSpotlightWithContext:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SiriActivationService activationRequestFromSpotlightWithContext:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromSpotlightWithContext", &v8, 0xCu);
  }

  v6 = [[SASActivationRequest alloc] initWithSpotlightContext:v4];
  [(SiriActivationService *)self handleActivationRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromVoiceTrigger
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SiriActivationService activationRequestFromVoiceTrigger]";
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromVoiceTrigger", &v6, 0xCu);
  }

  v4 = [[SASActivationRequest alloc] initWithVoiceTriggerRequest];
  [(SiriActivationService *)self handleActivationRequest:v4];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromTestingWithContext:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SiriActivationService activationRequestFromTestingWithContext:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromTestingWithContext", &v8, 0xCu);
  }

  v6 = [[SASActivationRequest alloc] initWithTestingContext:v4];
  [(SiriActivationService *)self handleActivationRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromVocalShortcutWithContext:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SiriActivationService activationRequestFromVocalShortcutWithContext:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromVocalShortcutWithContext", &v8, 0xCu);
  }

  v6 = [[SASActivationRequest alloc] initWithVocalShortcutContext:v4];
  [(SiriActivationService *)self handleActivationRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromTostadaWithContext:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SiriActivationService activationRequestFromTostadaWithContext:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromTostadaWithContext", &v8, 0xCu);
  }

  v6 = [[SASActivationRequest alloc] initWithTostadaContext:v4];
  [(SiriActivationService *)self handleActivationRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)speechRequestStateDidChange:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SiriActivationService speechRequestStateDidChange:]";
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation speech request state did change (state = %ld)", &v7, 0x16u);
  }

  if (a3 == 1)
  {
    [(SASMyriadController *)self->_myriadController activateForInTaskRequest:0 isVisible:[(SiriActivationService *)self _requestState]== 3];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)handleActivationRequest:(id)a3
{
  v4 = a3;
  v5 = [(SiriActivationService *)self systemState];
  LOBYTE(self) = [(SiriActivationService *)self handleActivationRequest:v4 systemState:v5];

  return self;
}

- (BOOL)handleActivationRequest:(id)a3 systemState:(id)a4
{
  v75 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E698D0A0];
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696AF00];
    v11 = v9;
    v12 = [v10 currentThread];
    *buf = 136315394;
    v72 = "[SiriActivationService handleActivationRequest:systemState:]";
    v73 = 2048;
    v74 = COERCE_DOUBLE([v12 qualityOfService]);
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy handleActivationLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&handleActivationLock);
  v13 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v72 = "[SiriActivationService handleActivationRequest:systemState:]";
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy handleActivationLock successfully locked", buf, 0xCu);
  }

  v14 = v7;
  v15 = [v6 context];
  v16 = [v15 contextOverride];

  v17 = v14;
  if (v16)
  {
    v18 = [v6 context];
    v19 = [v18 contextOverride];

    v17 = [[SASOverriddenSystemState alloc] initWithSystemState:v14 contextOverride:v19];
  }

  v20 = [(SiriActivationService *)self systemState];
  v21 = [v20 lockStateMonitor];

  v67 = v21;
  v68 = v14;
  if (v21)
  {
    v22 = [v21 lockState] == 0;
  }

  else
  {
    v22 = 1;
  }

  v69[0] = @"activationEvent";
  v23 = [MEMORY[0x1E696AEC0] stringWithSiriActivationEventType:{objc_msgSend(v6, "activationType")}];
  v70[0] = v23;
  v69[1] = @"eventSource";
  v24 = [v6 eventSource];
  v70[1] = v24;
  v69[2] = @"isDeviceUnlocked";
  v25 = [MEMORY[0x1E696AD98] numberWithBool:v22];
  v70[2] = v25;
  v69[3] = @"clockTime";
  v26 = MEMORY[0x1E696AD98];
  v27 = [MEMORY[0x1E695DF00] date];
  [v27 timeIntervalSince1970];
  v28 = [v26 numberWithDouble:?];
  v70[3] = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:4];
  v30 = [v29 mutableCopy];

  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[SASOverriddenSystemState carDNDActive](v17, "carDNDActive")}];
  [v30 setObject:v31 forKeyedSubscript:@"carDNDActive"];

  v32 = [(SASSystemState *)v17 vehicleName];
  [v30 setObject:v32 forKeyedSubscript:@"carVehicleName"];

  v33 = [(SASSystemState *)v17 vehicleModel];
  [v30 setObject:v33 forKeyedSubscript:@"carVehicleModelName"];

  v34 = [(SASSystemState *)v17 vehicleManufacturer];
  [v30 setObject:v34 forKeyedSubscript:@"carVehicleManufacturer"];

  v35 = +[SASAnalytics analytics];
  [v35 enqueueCurrentAnalyticsEventWithType:1404 context:v30];

  kdebug_trace();
  v36 = MEMORY[0x1E698D0A0];
  v37 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v72 = "[SiriActivationService handleActivationRequest:systemState:]";
    v73 = 2112;
    v74 = *&v6;
    _os_log_impl(&dword_1C8137000, v37, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequest = %@", buf, 0x16u);
  }

  v38 = [(SASPresentationManager *)self->_presentationManager nextPresentationToActivate];
  v39 = objc_opt_new();
  [v39 setRequest:v6];
  [v39 setButtonTriggerStateActive:self->_buttonTrigger != 0];
  [v39 setSystemState:v17];
  v40 = +[SASSiriPocketStateManager sharedManager];
  [v39 setPocketStateManager:v40];

  v41 = [(SiriActivationService *)self afPreferences];
  [v39 setPreferences:v41];

  [v39 setRequestState:{-[SiriActivationService _requestState](self, "_requestState")}];
  v42 = [(SiriActivationService *)self assetUtilities];
  [v39 setAssetUtilities:v42];

  [v39 setPresentationIdentifier:v38];
  v43 = [(SiriActivationService *)self _uiPresentationIdentifierWithActivation:v6 activationPresentation:v38];
  [v39 setUiPresentationIdentifier:v43];

  if (![SASActivationDecision canActivateForCondition:v39])
  {
    [(SiriActivationService *)self _cancelPendingActivationEventWithReason:4];
    os_unfair_lock_unlock(&handleActivationLock);
    v49 = *v36;
    if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v72 = "[SiriActivationService handleActivationRequest:systemState:]";
      goto LABEL_28;
    }

LABEL_29:
    v50 = 0;
    v51 = v68;
    goto LABEL_43;
  }

  if (!-[SiriActivationService _siriIsEnabled](self, "_siriIsEnabled") && ([v6 isVisualIntelligenceRequest] & 1) == 0)
  {
    [(SiriActivationService *)self _cancelActivationPreparationForSetup];
  }

  if (([v6 isUIFreeRequestSource] & 1) == 0 && (objc_msgSend(v6, "isContinuousConversationRequest") & 1) == 0 && (objc_msgSend(v6, "isVisualIntelligenceRequest") & 1) == 0)
  {
    if ([v6 isVoiceRequest] && -[SASOverriddenSystemState isConnectedToCarPlay](v17, "isConnectedToCarPlay"))
    {
      v44 = [objc_alloc(MEMORY[0x1E696AD98]) initWithFloat:0.0];
      v45 = *v36;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v45;
        [v44 floatValue];
        *buf = 136315394;
        v72 = "[SiriActivationService handleActivationRequest:systemState:]";
        v73 = 2048;
        v74 = v47;
        _os_log_impl(&dword_1C8137000, v46, OS_LOG_TYPE_DEFAULT, "%s #activation Voice request on CarPlay, delaying Myriad decision by %f ms", buf, 0x16u);
      }

      v48 = [(SASMyriadController *)self->_myriadController activateForRequest:v6 withTimeout:v44 visible:[(SiriActivationService *)self _requestState]== 3];

      v36 = MEMORY[0x1E698D0A0];
      if (!v48)
      {
LABEL_24:
        [(SiriActivationService *)self _cancelPendingActivationEventWithReason:4];
        os_unfair_lock_unlock(&handleActivationLock);
        v49 = *v36;
        if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v72 = "[SiriActivationService handleActivationRequest:systemState:]";
LABEL_28:
          _os_log_impl(&dword_1C8137000, v49, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy handleActivationLock unlocked", buf, 0xCu);
          goto LABEL_29;
        }

        goto LABEL_29;
      }
    }

    else if (![(SASMyriadController *)self->_myriadController activateForRequest:v6 withTimeout:0 visible:[(SiriActivationService *)self _requestState]== 3])
    {
      goto LABEL_24;
    }
  }

  v52 = +[SASAnalytics analytics];
  [v52 flushPendingAnalyticsEventQueue];

  v53 = objc_alloc_init(SASRequestOptionsBuilder);
  v54 = [(SASRequestOptionsBuilder *)v53 buildOptionsWithRequest:v6 presentationIdentifier:v38 dataSource:self];

  if (v38 == 2)
  {
    v55 = objc_alloc_init(MEMORY[0x1E69CF580]);
    v56 = [(SASSystemState *)v17 vehicleManufacturer];
    [v55 setVehicleManufacturer:v56];

    v57 = [(SASSystemState *)v17 vehicleModel];
    [v55 setVehicleModel:v57];

    v58 = [v54 instrumentationEvents];
    [v58 addObject:v55];
  }

  v59 = [(SiriActivationService *)self testingInputController];
  v60 = [v59 dequeuePreloadedTestingContext];

  if (v60 && ([v54 testingContext], v61 = objc_claimAutoreleasedReturnValue(), v61, !v61))
  {
    v62 = [v60 testingContext];
    [v54 setTestingContext:v62];
  }

  else
  {
    [(SiriActivationService *)self _updateRequestOptionsWithTestingContextFromActivationRequest:v6 requestOptions:v54];
    v54 = v62 = v54;
  }

  v51 = v68;
  if ([(SiriActivationService *)self _requestState]== 3)
  {
    [(SASPresentationManager *)self->_presentationManager activePresentations_handleRequestWithOptions:v54];
  }

  else
  {
    [(SiriActivationService *)self _activatePresentationWithIdentifier:v38 requestOptions:v54 analyticsContext:v30];
    -[SiriActivationService _logActivationToPowerLogWithReason:](self, "_logActivationToPowerLogWithReason:", [v6 activationType]);
  }

  v63 = MEMORY[0x1E698D0A0];
  os_unfair_lock_unlock(&handleActivationLock);
  v64 = *v63;
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v72 = "[SiriActivationService handleActivationRequest:systemState:]";
    _os_log_impl(&dword_1C8137000, v64, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy handleActivationLock unlocked", buf, 0xCu);
  }

  v50 = 1;
LABEL_43:

  v65 = *MEMORY[0x1E69E9840];
  return v50;
}

- (void)_logActivationToPowerLogWithReason:(int64_t)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"ReasonStart";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  PLLogRegisteredEvent();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_activatePresentationWithIdentifier:(int64_t)a3 requestOptions:(id)a4 analyticsContext:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = v10;
    v13 = [v11 stringWithSiriPresentationIdentifier:a3];
    *buf = 136315394;
    v21 = "[SiriActivationService _activatePresentationWithIdentifier:requestOptions:analyticsContext:]";
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation _activatePresentation %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__SiriActivationService__activatePresentationWithIdentifier_requestOptions_analyticsContext___block_invoke;
  v16[3] = &unk_1E82F3C00;
  objc_copyWeak(v19, buf);
  v14 = v8;
  v19[1] = a3;
  v17 = v14;
  v18 = self;
  SiriInvokeOnMainQueue(v16);

  objc_destroyWeak(v19);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x1E69E9840];
}

void __93__SiriActivationService__activatePresentationWithIdentifier_requestOptions_analyticsContext___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [[SiriPresentationOptions alloc] initWithBuilder:0];
    v4 = [WeakRetained _shouldHandlePocketStateFetchForRequestOptions:*(a1 + 32)];
    v5 = MEMORY[0x1E698D0A0];
    v6 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v28 = "[SiriActivationService _activatePresentationWithIdentifier:requestOptions:analyticsContext:]_block_invoke";
      v29 = 1024;
      v30 = v4;
      _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation Deferring wake, shouldHandlePocketStateFetch: (%{BOOL}d)", buf, 0x12u);
    }

    [WeakRetained[24] presentationWithPresentationIdentifier:*(a1 + 56) activationDeterminedShouldDeferWake:v4];
    if (v4)
    {
      [WeakRetained _handlePocketStateFetchForScreenWakeForPresentationIdentifier:*(a1 + 56)];
    }

    if ([*(a1 + 32) isHTTRequestSource])
    {
      [*(a1 + 32) buttonDownTimestamp];
      [WeakRetained setActivationTimestamp:?];
    }

    [WeakRetained[24] presentationWithPresentationIdentifierBeganStarting:*(a1 + 56)];
    v7 = [*(a1 + 32) uiPresentationIdentifier];
    v8 = [v7 isEqualToString:@"com.apple.siri.UIFree"];
    v9 = [WeakRetained _isVoiceActivationMaskNecessaryWithRequestOptions:*(a1 + 32)];
    if ([v7 isEqualToString:@"com.apple.siri.Compact"])
    {
      v10 = 2;
    }

    else if ([v7 isEqualToString:@"com.apple.siri.SystemAssistantExperience"])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v11 = v9 | v4;
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      __93__SiriActivationService__activatePresentationWithIdentifier_requestOptions_analyticsContext___block_invoke_cold_1(v12, v10, v7);
    }

    v13 = v11 | v8;
    v14 = [*(a1 + 32) isVisualIntelligenceRequest];
    v15 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      __93__SiriActivationService__activatePresentationWithIdentifier_requestOptions_analyticsContext___block_invoke_cold_2(v14, v15);
    }

    v16 = v13 ^ 1;
    if (_SiriActivationDeviceSupportsPearlID_onceToken != -1)
    {
      __93__SiriActivationService__activatePresentationWithIdentifier_requestOptions_analyticsContext___block_invoke_cold_3();
    }

    v17 = _SiriActivationDeviceSupportsPearlID_deviceSupportsPearlID;
    v18 = [MEMORY[0x1E698D258] saeAvailable];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __93__SiriActivationService__activatePresentationWithIdentifier_requestOptions_analyticsContext___block_invoke_174;
    v21[3] = &unk_1E82F3BD8;
    v24 = v17;
    v25 = v14 & 1 | ((v18 & 1) == 0);
    v26 = v16 & 1;
    v23 = v10;
    v22 = *(a1 + 32);
    v19 = [(SiriPresentationOptions *)v3 mutatedCopyWithMutator:v21];

    [WeakRetained[24] presentationRequestedWithPresentationIdentifier:*(a1 + 56) presentationOptions:v19 requestOptions:*(a1 + 32)];
    [*(a1 + 40) _overrideLockButtonStateIfNeededForRequestOptions:*(a1 + 32)];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __93__SiriActivationService__activatePresentationWithIdentifier_requestOptions_analyticsContext___block_invoke_174(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 setShouldAllowBiometricAutoUnlock:v3];
  [v4 setShouldDeactivateScenesBelow:*(a1 + 49)];
  [v4 setWakeScreen:*(a1 + 50)];
  [v4 setRotationStyle:*(a1 + 40)];
  [v4 setRequestSource:{objc_msgSend(*(a1 + 32), "requestSource")}];
  [v4 setInputType:{objc_msgSend(*(a1 + 32), "inputType")}];
  v5 = [*(a1 + 32) launchActions];
  [v4 setLaunchActions:v5];
}

- (void)_overrideLockButtonStateIfNeededForRequestOptions:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 requestSource] == 41)
  {
    v5 = [v4 requestInfo];
    v6 = v5;
    if (v5 && [v5 isAlwaysAllowedWhileDeviceLocked])
    {
      v7 = [v4 uiPresentationIdentifier];
      if ([v7 isEqualToString:@"com.apple.siri.UIFree"])
      {
        v8 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315138;
          v11 = "[SiriActivationService _overrideLockButtonStateIfNeededForRequestOptions:]";
          _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation Overriding lock button active override for Workout Buddy / Workout Voice Feedback", &v10, 0xCu);
        }

        [(SiriActivationService *)self _updateButtonSourceActiveOverride:2 activeOverride:0];
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldHandlePocketStateFetchForRequestOptions:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 isWiredMicOrBTHeadsetOrWx])
  {
    goto LABEL_7;
  }

  v5 = soft_SBUIGetUserAgent();
  v6 = [v5 isScreenOn];

  if (_SiriActivationDeviceSupportsProxSensor_onceToken != -1)
  {
    [SiriActivationService _shouldHandlePocketStateFetchForRequestOptions:];
  }

  v7 = _SiriActivationDeviceSupportsProxSensor_deviceSupportsProxSensor;
  v8 = [v4 uiPresentationIdentifier];
  v9 = [v8 isEqualToString:@"com.apple.siri.EyesFree"];

  v10 = [v4 uiPresentationIdentifier];
  v11 = [v10 isEqualToString:@"com.apple.siri.BluetoothCar"];

  v12 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136316162;
    v17 = "[SiriActivationService _shouldHandlePocketStateFetchForRequestOptions:]";
    v18 = 1024;
    v19 = v6 ^ 1;
    v20 = 1024;
    v21 = v7;
    v22 = 1024;
    v23 = v9;
    v24 = 1024;
    v25 = v11;
    _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation should handle pocket state fetch via isScreenOff (%{BOOL}d) && siriActivationDeviceSupportsProxSensor (%{BOOL}d) && !(requestIsEyesFree (%{BOOL}d) || requestIsBluetoothCar (%{BOOL}d))", &v16, 0x24u);
  }

  if (!(v6 & 1 | ((v7 & 1) == 0) | (v9 | v11) & 1))
  {
    v13 = ![(SiriActivationService *)self _pocketStateFetchingInProgressForHeadsetActivation];
  }

  else
  {
LABEL_7:
    LOBYTE(v13) = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)_handlePocketStateFetchForScreenWakeForPresentationIdentifier:(int64_t)a3
{
  [(SiriActivationService *)self _setPocketStateFetchingInProgressForHeadsetActivation:1];
  objc_initWeak(&location, self);
  v5 = +[SASSiriPocketStateManager sharedManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__SiriActivationService__handlePocketStateFetchForScreenWakeForPresentationIdentifier___block_invoke;
  v6[3] = &unk_1E82F3C28;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  [v5 queryForPocketStateWithCompletion:v6];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __87__SiriActivationService__handlePocketStateFetchForScreenWakeForPresentationIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_8;
  }

  [WeakRetained _setPocketStateFetchingInProgressForHeadsetActivation:0];
  if (v5)
  {
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      __87__SiriActivationService__handlePocketStateFetchForScreenWakeForPresentationIdentifier___block_invoke_cold_1();
    }
  }

  else
  {
    v11 = a2 & 0xFFFFFFFFFFFFFFFDLL;
    v12 = *MEMORY[0x1E698D0A0];
    v13 = os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT);
    if (v11 == 1)
    {
      if (v13)
      {
        v14 = 136315138;
        v15 = "[SiriActivationService _handlePocketStateFetchForScreenWakeForPresentationIdentifier:]_block_invoke";
        _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #SiriPocketStateManager: Device is face down on table or in pocket. Leaving screen off.", &v14, 0xCu);
      }

      v8 = 0;
      goto LABEL_6;
    }

    if (v13)
    {
      v14 = 136315138;
      v15 = "[SiriActivationService _handlePocketStateFetchForScreenWakeForPresentationIdentifier:]_block_invoke";
      _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #SiriPocketStateManager: Turning on the screen...", &v14, 0xCu);
    }
  }

  v8 = 1;
LABEL_6:
  v9 = v8 ^ 1;
  [v7[24] presentationWithPresentationIdentifier:*(a1 + 40) activationDeterminedShouldDeferWake:v8 ^ 1u];
  if ((v9 & 1) == 0)
  {
    [v7[24] presentationWithPresentationIdentifierWakeScreenAfterActivation:*(a1 + 40) reason:@"PocketStateFetch"];
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_dismissSiri:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SiriActivationService _dismissSiri:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation", &v7, 0xCu);
  }

  [(SASPresentationManager *)self->_presentationManager startingAndActiveAndStoppingPresentations_presentationDismissalRequestedWithOptions:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_preheatPresentation
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[SiriActivationService _preheatPresentation]";
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s #activation", buf, 0xCu);
  }

  v4 = [SASPreheatRequest newWithBuilder:&__block_literal_global_181];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __45__SiriActivationService__preheatPresentation__block_invoke_2;
  v11 = &unk_1E82F3BB0;
  v12 = self;
  v13 = v4;
  v5 = v4;
  v6 = [SASPreheatOptions newWithBuilder:&v8];
  [(SASPresentationManager *)self->_presentationManager preheatNextPresentationToActivateWithOptions:v6, v8, v9, v10, v11, v12];

  v7 = *MEMORY[0x1E69E9840];
}

void __45__SiriActivationService__preheatPresentation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 systemState];
  v5 = [v4 lockStateMonitor];
  [v6 setLockState:{objc_msgSend(v5, "lockState")}];

  [v6 setPreheatRequest:*(a1 + 40)];
}

- (void)_attachToTether
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SiriActivationService _attachToTether]";
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s #activation _attachToTether", &v6, 0xCu);
  }

  v4 = [(SiriActivationService *)self siriTether];
  [v4 attach:0];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_cancelActivationPreparationForSetup
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SiriActivationService _cancelActivationPreparationForSetup]";
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s #activation _cancelActivationPreparationForSetup", &v5, 0xCu);
  }

  [(SiriActivationService *)self _cancelPendingActivationEventWithReason:1];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_cancelPendingActivationEventWithReason:(unint64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = [v6 stringWithSiriPresentationActivationCancelReason:a3];
    v10 = 136315394;
    v11 = "[SiriActivationService _cancelPendingActivationEventWithReason:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation _cancelPendingActivationEventWithReason:%@", &v10, 0x16u);
  }

  [(SASPresentationManager *)self->_presentationManager startingPresentations_cancelPendingActivationWithReason:a3];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_handleDesignModeRequest
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SiriActivationService _handleDesignModeRequest]";
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation activating in design mode", &v5, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.internal.activation", 0, 0, 1u);
  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isVoiceActivationMaskNecessaryWithRequestOptions:(id)a3
{
  v3 = a3;
  v4 = soft_SBUIGetUserAgent();
  v5 = [v4 isScreenOn] ^ 1;

  v6 = [v3 requestSource];
  return (v6 == 8) & v5;
}

- (BOOL)requestOptionsBuilder:(id)a3 isPredictedRecordRouteIsZLLWithActiviation:(id)a4
{
  v4 = [(SiriActivationService *)self heater:a3];
  v5 = [v4 predictedRecordRouteIsZLL];

  return v5;
}

- (BOOL)requestOptionsBuilder:(id)a3 isAcousticIdAllowedWithActiviation:(id)a4
{
  v5 = a4;
  if ([(SiriActivationService *)self _isInitialRequest])
  {
    v6 = [v5 isVoiceRequest] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_uiPresentationIdentifierWithActivation:(id)a3 activationPresentation:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 isUIFreeRequestSource];
  v8 = [(SiriActivationService *)self _isEyesFreeEligibleWithRequest:v6];
  if ([(SiriActivationService *)self _eyesFreeRedesignOnlySteeringWheelEnabled])
  {
    v9 = 1;
  }

  else
  {
    v10 = [(SiriActivationService *)self bluetoothEndpointUtil];
    v11 = [v10 isConnectedToBluetoothVehicle];

    v9 = v11 ^ 1;
  }

  v12 = [(SiriActivationService *)self _saeAvailable];
  v13 = [v6 isVisualIntelligenceRequest];
  if (a4 == 2)
  {
    v14 = @"com.apple.siri.CarDisplay";
    if (v7)
    {
      v14 = @"com.apple.siri.CarDisplay.UIFree";
    }

    v15 = v14;
  }

  else if (v7)
  {
    v15 = @"com.apple.siri.UIFree";
  }

  else if (a4 == 4)
  {
    v15 = @"com.apple.siri.SiriTVPresentation";
  }

  else
  {
    v15 = @"com.apple.siri.Compact";
    if (a4 == 3)
    {
      if (v12)
      {
        v15 = @"com.apple.siri.SystemAssistantExperience";
      }
    }

    else if (a4 == 1)
    {
      if (v8)
      {
        v15 = @"com.apple.siri.EyesFree";
      }

      else
      {
        v17 = @"com.apple.siri.SystemAssistantExperience";
        if (!v12)
        {
          v17 = @"com.apple.siri.Compact";
        }

        if ((v9 | v13))
        {
          v15 = v17;
        }

        else
        {
          v15 = @"com.apple.siri.BluetoothCar";
        }
      }
    }
  }

  return v15;
}

- (BOOL)_isEyesFreeEligibleWithRequest:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SiriActivationService *)self systemState];
  v6 = [v5 isConnectedToEyesFreeDevice];

  v7 = [(SiriActivationService *)self systemState];
  v8 = [v7 carDNDActive];

  v9 = AFPreferencesAlwaysEyesFreeEnabled();
  v10 = [v4 requestSource] == 5 || objc_msgSend(v4, "requestSource") == 44;
  if (SASRequestSourceIsVisualIntelligenceDirectInvocation([v4 requestSource]))
  {
    v11 = 1;
  }

  else
  {
    v11 = [v4 isVisualIntelligenceRequest];
  }

  v12 = _os_feature_enabled_impl();
  v13 = _os_feature_enabled_impl();
  v14 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136316418;
    v20 = "[SiriActivationService _isEyesFreeEligibleWithRequest:]";
    v21 = 1024;
    v22 = v11;
    v23 = 1024;
    v24 = v8;
    v25 = 1024;
    v26 = v9;
    v27 = 1024;
    v28 = v6;
    v29 = 1024;
    v30 = v10;
    _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation checking if EyesFree is eligible: isVisualIntelligenceRequest = %d, isCarDND = %d, isDebugSettingOn = %d, isEyesFreeDevice = %d, isRequestSourceEyesFreeEligible = %d", &v19, 0x2Au);
  }

  v15 = v11 | v9 | v8;
  v16 = v11 ^ v15;
  if ((v15 & 1) == 0 && ((v6 ^ 1) & 1) == 0)
  {
    v16 = (v12 ^ 1 | v10) & (v13 ^ 1);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

- (id)requestOptionsBuilder:(id)a3 optionsForOverriding:(id)a4 withActiviation:(id)a5
{
  v6 = a4;
  v7 = a5;
  if ([v7 isTestingRequest])
  {
    v8 = [v7 context];
    v9 = [v8 testingContext];
    [v6 setTestingContext:v9];
  }

  return v6;
}

- (unint64_t)requestOptionsBuilder:(id)a3 currentLockStateForActivation:(id)a4
{
  v4 = [(SiriActivationService *)self systemState:a3];
  v5 = [v4 lockStateMonitor];
  v6 = [v5 lockState];

  return v6;
}

- (void)heaterSuggestsPreheating:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [(SiriActivationService *)self _requestState];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = SASRequestStateGetName(v4);
    v9 = 136315394;
    v10 = "[SiriActivationService heaterSuggestsPreheating:]";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation preheat; request state = %@", &v9, 0x16u);
  }

  kdebug_trace();
  [(SiriActivationService *)self _preheatPresentation];
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)_logCancelledActivationWithButtonIdentifier:(int64_t)a3 duration:(double)a4 targetDuration:(double)a5
{
  v27 = *MEMORY[0x1E69E9840];
  if (fabs(a5 + -0.4) < 2.22044605e-16 || fabs(a5 + -0.65) >= 2.22044605e-16 || _AXSHomeButtonAssistant())
  {
    goto LABEL_12;
  }

  v8 = +[SASSystemState sharedSystemState];
  if (([v8 siriIsSupported] & 1) == 0)
  {

    goto LABEL_12;
  }

  v9 = +[SASSystemState sharedSystemState];
  v10 = [v9 siriIsEnabled];

  if (!v10)
  {
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:a3];
  v12 = a4 > 0.2;
  v13 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v18 = "[SiriActivationService _logCancelledActivationWithButtonIdentifier:duration:targetDuration:]";
    v19 = 2112;
    v20 = v11;
    v21 = 2048;
    v22 = a4;
    v23 = 1024;
    v24 = a4 > 0.2;
    v25 = 2048;
    v26 = a5;
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation cancelledPreparationWithButtonIdentifier: %@ duration: %f, willSendEvent: %d, targetDuration: %f, ", buf, 0x30u);
  }

  if (a4 > 0.2)
  {
    v16 = v11;
    AnalyticsSendEventLazy();
  }

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

id __93__SiriActivationService__logCancelledActivationWithButtonIdentifier_duration_targetDuration___block_invoke(uint64_t a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"duration";
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  v3 = *(a1 + 32);
  v10[0] = v2;
  v10[1] = v3;
  v9[1] = @"buttonIdentifier";
  v9[2] = @"targetDuration";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  v10[2] = v4;
  v9[3] = @"targetDurationEnum";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v10[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)activationRequestFromTestRunnerWithContext:(id)a3
{
  v4 = a3;
  v6 = [[SASActivationRequest alloc] initWithTestingContext:v4];

  v5 = [(SiriActivationService *)self systemState];
  [(SiriActivationService *)self handleActivationRequest:v6 systemState:v5];
}

- (void)_unregisterForVoiceTrigger
{
  if (self->_voiceTriggerNotifyTokenIsValid)
  {
    notify_cancel(self->_voiceTriggerNotifyToken);
    self->_voiceTriggerNotifyTokenIsValid = 0;
  }
}

- (void)scdaShouldAbort:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SiriActivationService scdaShouldAbort:]";
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #myriad SCDA should abort session", &v7, 0xCu);
  }

  v5 = [[SiriDismissalOptions alloc] initWithDeactivationOptions:0 animated:1 requestCancellationReason:1 dismissalReason:8 shouldTurnScreenOff:0];
  [(SiriActivationService *)self dismissSiriWithOptions:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)scdaShouldContinue:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SiriActivationService scdaShouldContinue:]";
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #myriad SCDA continues to interact, device won election", &v6, 0xCu);
  }

  [(SASPresentationManager *)self->_presentationManager activePresentations_deviceWonMyriadElection];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)didChangeLockState:(unint64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = v5;
    v8 = [v6 numberWithUnsignedInteger:a3];
    v10 = 136315394;
    v11 = "[SiriActivationService didChangeLockState:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation lockState: %@", &v10, 0x16u);
  }

  [(SASPresentationManager *)self->_presentationManager activeAndStartingPresentations_updateCurrentLockState:a3];
  v9 = *MEMORY[0x1E69E9840];
}

- (id)allBulletins
{
  v2 = [(SiriActivationService *)self bulletinManager];
  v3 = [v2 allBulletins];

  return v3;
}

- (id)bulletinsOnLockScreen
{
  v2 = [(SiriActivationService *)self bulletinManager];
  v3 = [v2 bulletinsOnLockScreen];

  return v3;
}

- (id)bulletinForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SiriActivationService *)self bulletinManager];
  v6 = [v5 bulletinForIdentifier:v4];

  return v6;
}

- (void)presentationManager:(id)a3 didChangeAggregateState:(id)a4
{
  [(SiriActivationService *)self _notifySourcesOfPresentationStateChange:a4];

  [(SiriActivationService *)self _updateCanActivateFromDirectActionSource];
}

- (void)presentationManager:(id)a3 didEncounterError:(int64_t)a4
{
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    [SiriActivationService presentationManager:v6 didEncounterError:a4];
  }

  v7 = [[SiriDismissalOptions alloc] initWithDeactivationOptions:0 animated:0 dismissalReason:28];
  [(SiriActivationService *)self _dismissSiri:v7];
}

- (id)_updateRequestOptionsWithTestingContextFromActivationRequest:(id)a3 requestOptions:(id)a4
{
  v34[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 activationType] == 7)
  {
    v7 = [v5 context];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [v5 context];
      v10 = [v9 testingContext];
      if (([v9 containsRecognitionStrings] & 1) != 0 || objc_msgSend(v9, "containsAudioInput"))
      {
        v11 = [v9 testingContext];
        v12 = [v11 objectForKeyedSubscript:@"SiriTestingContextAudioInputKey"];

        if (v12)
        {
          v13 = [v11 objectForKeyedSubscript:@"SiriTestingContextAudioInputKey"];
        }

        else
        {
          v13 = 0;
        }

        v14 = [v11 objectForKeyedSubscript:@"SiriTestingContextRecognitionStringKey"];

        if (v14)
        {
          v15 = [v11 objectForKeyedSubscript:@"SiriTestingContextRecognitionStringKey"];
          v16 = [v15 firstObject];
        }

        else
        {
          v16 = 0;
        }

        v17 = 0;
      }

      else
      {
        v17 = [v10 objectForKey:@"testOptions"];

        if (v17)
        {
          v17 = [v10 objectForKey:@"testOptions"];
          v13 = [v17 objectForKey:@"speechFile"];
          v16 = 0;
        }

        else
        {
          v16 = 0;
          v13 = 0;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v13;
        if ([v18 length])
        {
          v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:v18 isDirectory:0];
          if ([v19 checkResourceIsReachableAndReturnError:0])
          {
            [v6 setSpeechFileURL:v19];
          }

          else
          {
            v32 = v10;
            v20 = [v17 objectForKey:@"testName"];
            v21 = v20;
            v22 = &stru_1F47C3998;
            if (v20)
            {
              v22 = v20;
            }

            v31 = v22;

            v23 = [v6 testingContext];

            v24 = MEMORY[0x1E695DF90];
            if (v23)
            {
              v25 = [v6 testingContext];
              v26 = [v24 dictionaryWithDictionary:v25];
            }

            else
            {
              v26 = [MEMORY[0x1E695DF90] dictionary];
            }

            v33[0] = @"SiriTestingContextFailedTestNameKey";
            v33[1] = @"SiriTestingContextFailedTestMessageKey";
            v34[0] = v31;
            v34[1] = @"Speech file not found";
            v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:{2, v19}];
            [v26 setObject:v27 forKeyedSubscript:@"SiriTestingContextFailedTestIdentifierKey"];

            [v6 setTestingContext:v26];
            v10 = v32;
            v19 = v30;
          }
        }
      }

      if ([v16 length])
      {
        [v6 setText:v16];
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)registerActivationSource:withIdentifier:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1C8137000, v0, v1, "%s #activation Registration of '%@' when it is already registered. Removing", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)unregisterActivationSourceIdentifier:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1C8137000, v0, v1, "%s #activation Unregister request of '%@' when it is not registered.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerActivationAssertion:withIdentifier:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1C8137000, v0, v1, "%s #activation Registration of '%@' assertion when it is already present. Removing", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)unregisterActivationAssertionWithIdentifier:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1C8137000, v0, v1, "%s #activation Unregister assertion for '%@' when it is not registered.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerButtonEventListenerServer:identifier:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1C8137000, v0, v1, "%s #activation Registration of '%@' listener when it is already present. Removing", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)unregisterButtonEventListenerWithIdentifier:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1C8137000, v0, v1, "%s #activation Unregister listener for '%@' when it is not registered.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromButtonIdentifier:(void *)a3 context:.cold.1(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  v6 = a1;
  v7 = [v5 stringWithSiriButtonIdentifier:a2];
  v8 = SASRequestStateGetName([a3 _requestState]);
  v10 = 136315650;
  v11 = "[SiriActivationService activationRequestFromButtonIdentifier:context:]";
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  _os_log_error_impl(&dword_1C8137000, v6, OS_LOG_TYPE_ERROR, "%s activationRequestFromButtonIdentifier:%@, with Siri state %@. Ignoring.", &v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

void __93__SiriActivationService__activatePresentationWithIdentifier_requestOptions_analyticsContext___block_invoke_cold_1(void *a1, unint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = SiriPresentationRotationStyleGetName(a2);
  v9[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v10 = v7;
  v11 = a3;
  _os_log_debug_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEBUG, "%s #activation Setting rotation style for presentation { rotationStyle: %@, presentation: %@ }", v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void __93__SiriActivationService__activatePresentationWithIdentifier_requestOptions_analyticsContext___block_invoke_cold_2(char a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[SiriActivationService _activatePresentationWithIdentifier:requestOptions:analyticsContext:]_block_invoke";
  v5 = 1024;
  v6 = a1 & 1;
  _os_log_debug_impl(&dword_1C8137000, a2, OS_LOG_TYPE_DEBUG, "%s #activation is Visual Intelligence Launch: %d", &v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

void __87__SiriActivationService__handlePocketStateFetchForScreenWakeForPresentationIdentifier___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1C8137000, v0, v1, "%s #activation #SiriPocketStateManager: error querying the pocket state for screen wake: %@ Turning on the screen...", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)presentationManager:(void *)a1 didEncounterError:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = SASPresentationManagerErrorGetName(a2);
  v6[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1C8137000, v3, OS_LOG_TYPE_ERROR, "%s #activation error: %@", v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

@end