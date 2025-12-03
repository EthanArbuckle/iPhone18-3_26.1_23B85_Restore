@interface SiriActivationService
+ (id)service;
- (AFPreferences)afPreferences;
- (BOOL)_canActivateForRequest:(id)request;
- (BOOL)_isEyesFreeEligibleWithRequest:(id)request;
- (BOOL)_isVoiceActivationMaskNecessaryWithRequestOptions:(id)options;
- (BOOL)_logCancelledActivationWithButtonIdentifier:(int64_t)identifier duration:(double)duration targetDuration:(double)targetDuration;
- (BOOL)_shouldHandlePocketStateFetchForRequestOptions:(id)options;
- (BOOL)_shouldRejectActivationWithButtonIdentifier:(int64_t)identifier activationAssertions:(id)assertions;
- (BOOL)_shouldShowHintGlowWithRequest:(id)request;
- (BOOL)_siriIsEnabled;
- (BOOL)handleActivationRequest:(id)request;
- (BOOL)handleActivationRequest:(id)request systemState:(id)state;
- (BOOL)isConnectedTo188;
- (BOOL)requestOptionsBuilder:(id)builder isAcousticIdAllowedWithActiviation:(id)activiation;
- (BOOL)requestOptionsBuilder:(id)builder isPredictedRecordRouteIsZLLWithActiviation:(id)activiation;
- (id)_init;
- (id)_uiPresentationIdentifierWithActivation:(id)activation activationPresentation:(int64_t)presentation;
- (id)_updateRequestOptionsWithTestingContextFromActivationRequest:(id)request requestOptions:(id)options;
- (id)allBulletins;
- (id)bulletinForIdentifier:(id)identifier;
- (id)bulletinsOnLockScreen;
- (id)requestOptionsBuilder:(id)builder optionsForOverriding:(id)overriding withActiviation:(id)activiation;
- (unint64_t)requestOptionsBuilder:(id)builder currentLockStateForActivation:(id)activation;
- (void)_B188ActivationEvent:(int64_t)event context:(id)context options:(id)options;
- (void)_activatePresentationWithIdentifier:(int64_t)identifier requestOptions:(id)options analyticsContext:(id)context;
- (void)_attachToTether;
- (void)_cancelActivationPreparationForSetup;
- (void)_cancelPendingActivationEventWithReason:(unint64_t)reason;
- (void)_defrost;
- (void)_dismissSiri:(id)siri;
- (void)_handleDesignModeRequest;
- (void)_handlePocketStateFetchForScreenWakeForPresentationIdentifier:(int64_t)identifier;
- (void)_handleTapSynthesisIfNeededForButtonIdentifier:(int64_t)identifier buttonUpTimestamp:(double)timestamp;
- (void)_logActivationToPowerLogWithReason:(int64_t)reason;
- (void)_notifyListenersOfButtonDownWithButtonIdentifier:(int64_t)identifier atTimestamp:(double)timestamp;
- (void)_notifyListenersOfButtonLongPressWithButtonIdentifier:(int64_t)identifier atTimestamp:(double)timestamp;
- (void)_notifyListenersOfButtonUpWithButtonIdentifier:(int64_t)identifier atTimestamp:(double)timestamp;
- (void)_notifySourcesOfCanActivateFromDirectActionSourceChange:(BOOL)change;
- (void)_notifySourcesOfPresentationStateChange:(id)change;
- (void)_overrideLockButtonStateIfNeededForRequestOptions:(id)options;
- (void)_preheatPresentation;
- (void)_recordTimeIfNeededForButtonIdentifier:(int64_t)identifier buttonDownTimestamp:(double)timestamp;
- (void)_unregisterForVoiceTrigger;
- (void)_updateCanActivateFromDirectActionSource;
- (void)activationRequestFromBluetoothKeyboardActivation:(int64_t)activation;
- (void)activationRequestFromBreadcrumb;
- (void)activationRequestFromButtonIdentifier:(int64_t)identifier context:(id)context;
- (void)activationRequestFromContinuityWithContext:(id)context;
- (void)activationRequestFromContinuousConversationHearstWithContext:(id)context;
- (void)activationRequestFromContinuousConversationJarvisWithContext:(id)context;
- (void)activationRequestFromContinuousConversationWithContext:(id)context;
- (void)activationRequestFromDirectActionEventWithContext:(id)context completion:(id)completion;
- (void)activationRequestFromRemotePresentationBringUpWithContext:(id)context;
- (void)activationRequestFromSimpleActivation:(int64_t)activation;
- (void)activationRequestFromSpotlightWithContext:(id)context;
- (void)activationRequestFromTestRunnerWithContext:(id)context;
- (void)activationRequestFromTestingWithContext:(id)context;
- (void)activationRequestFromTostadaWithContext:(id)context;
- (void)activationRequestFromVocalShortcutWithContext:(id)context;
- (void)activationRequestFromVoiceTrigger;
- (void)activationRequestFromVoiceTriggerWithContext:(id)context;
- (void)buttonDownFromButtonIdentifier:(int64_t)identifier timestamp:(double)timestamp context:(id)context;
- (void)buttonLongPressFromButtonIdentifier:(int64_t)identifier deviceIdentifier:(id)deviceIdentifier context:(id)context;
- (void)buttonTapFromButtonIdentifier:(int64_t)identifier timestamp:(double)timestamp context:(id)context;
- (void)buttonUpFromButtonIdentifier:(int64_t)identifier deviceIdentifier:(id)deviceIdentifier timestamp:(double)timestamp context:(id)context;
- (void)cancelPrewarmForFirstTapOfQuickTypeToSiriGesture;
- (void)cancelPrewarmFromButtonIdentifier:(int64_t)identifier;
- (void)deactivationRequestFromButtonIdentifier:(int64_t)identifier context:(id)context options:(id)options;
- (void)dealloc;
- (void)didChangeLockState:(unint64_t)state;
- (void)heaterSuggestsPreheating:(id)preheating;
- (void)presentationManager:(id)manager didChangeAggregateState:(id)state;
- (void)presentationManager:(id)manager didEncounterError:(int64_t)error;
- (void)prewarmForFirstTapOfQuickTypeToSiriGesture;
- (void)prewarmFromButtonIdentifier:(int64_t)identifier longPressInterval:(double)interval;
- (void)prewarmWithRequest:(id)request;
- (void)registerActivationAssertion:(id)assertion withIdentifier:(id)identifier;
- (void)registerActivationSource:(id)source withIdentifier:(id)identifier;
- (void)registerButtonEventListenerServer:(id)server identifier:(id)identifier;
- (void)scdaShouldAbort:(id)abort;
- (void)scdaShouldContinue:(id)continue;
- (void)setHintGlowAssertionFromButtonIdentifier:(int64_t)identifier context:(id)context;
- (void)siriPresentationDismissedWithIdentifier:(int64_t)identifier;
- (void)speechRequestStateDidChange:(int64_t)change;
- (void)unregisterActivationAssertionWithIdentifier:(id)identifier;
- (void)unregisterActivationSourceIdentifier:(id)identifier;
- (void)unregisterButtonEventListenerWithIdentifier:(id)identifier;
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
  systemState = [(SiriActivationService *)self systemState];
  [v4 setSystemState:systemState];

  v10 = +[SASSiriPocketStateManager sharedManager];
  [v4 setPocketStateManager:v10];

  afPreferences = [(SiriActivationService *)self afPreferences];
  [v4 setPreferences:afPreferences];

  [v4 setRequestState:{-[SiriActivationService _requestState](self, "_requestState")}];
  assetUtilities = [(SiriActivationService *)self assetUtilities];
  [v4 setAssetUtilities:assetUtilities];

  [v4 setPresentationIdentifier:{-[SASPresentationManager nextPresentationToActivate](self->_presentationManager, "nextPresentationToActivate")}];
  [(SiriActivationService *)self setCanActivateFromDirectActionSource:[SASActivationDecision canActivateForCondition:v4]];

  v13 = *MEMORY[0x1E69E9840];
}

- (AFPreferences)afPreferences
{
  afPreferences = self->_afPreferences;
  if (!afPreferences)
  {
    mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
    v5 = self->_afPreferences;
    self->_afPreferences = mEMORY[0x1E698D1C0];

    afPreferences = self->_afPreferences;
  }

  return afPreferences;
}

- (BOOL)_siriIsEnabled
{
  systemState = [(SiriActivationService *)self systemState];
  if ([systemState siriIsEnabled])
  {
    systemState2 = [(SiriActivationService *)self systemState];
    v5 = [systemState2 siriIsRestricted] ^ 1;
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

    heater = [(SiriActivationService *)v2 heater];
    [heater setDelegate:v2];

    [(SiriActivationService *)v2 setSiriTetherIsAttached:0];
    v7 = objc_alloc_init(MEMORY[0x1E698D208]);
    [(SiriActivationService *)v2 setSiriTether:v7];

    siriTether = [(SiriActivationService *)v2 siriTether];
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __30__SiriActivationService__init__block_invoke;
    v37 = &unk_1E82F3A80;
    objc_copyWeak(&v38, &location);
    [siriTether setAttachmentStatusChangedHandler:&v34];

    v9 = objc_alloc_init(SASTestingInputController);
    testingInputController = v2->_testingInputController;
    v2->_testingInputController = v9;

    v11 = [SASRemoteRequestManager manager:v34];
    [(SiriActivationService *)v2 setRemoteRequestManager:v11];

    v12 = +[SASSystemState sharedSystemState];
    [(SiriActivationService *)v2 setSystemState:v12];

    systemState = [(SiriActivationService *)v2 systemState];
    [systemState addStateChangeListener:v2];

    v14 = objc_alloc_init(MEMORY[0x1E69DEF00]);
    [v14 startObserversWithOptions:1];
    [(SiriActivationService *)v2 setAssetUtilities:v14];
    v15 = objc_alloc_init(SASLockStateMonitor);
    [(SiriActivationService *)v2 setLockStateMonitor:v15];

    lockStateMonitor = [(SiriActivationService *)v2 lockStateMonitor];
    [lockStateMonitor setDelegate:v2];

    v17 = +[SASSystemState sharedSystemState];
    [v17 monitorLockState];

    v18 = objc_alloc_init(SASBulletinManager);
    [(SiriActivationService *)v2 setBulletinManager:v18];

    bulletinManager = [(SiriActivationService *)v2 bulletinManager];
    [bulletinManager setDelegate:v2];

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
    mEMORY[0x1E69CE1E8] = [MEMORY[0x1E69CE1E8] sharedAnalytics];
    defaultMessageStream = [mEMORY[0x1E69CE1E8] defaultMessageStream];
    v31 = [(SASActivePresentationInstrumentationSender *)v28 initWithAnalyticsStream:defaultMessageStream];
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
  systemState = [(SiriActivationService *)self systemState];
  [systemState removeStateChangeListener:self];

  v4.receiver = self;
  v4.super_class = SiriActivationService;
  [(SiriActivationService *)&v4 dealloc];
}

- (void)_notifySourcesOfPresentationStateChange:(id)change
{
  v33 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  -[SASActivePresentationInstrumentationSender aggregatePresentationRequestStateDidChange:](self->_activationEventInstrumentationSender, "aggregatePresentationRequestStateDidChange:", [changeCopy requestState]);
  if ([changeCopy didNewActivationAcceptanceChange])
  {
    v5 = MEMORY[0x1E698D0A0];
    v6 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x1E696AF00];
      v8 = v6;
      currentThread = [v7 currentThread];
      *buf = 136315394;
      v30 = "[SiriActivationService _notifySourcesOfPresentationStateChange:]";
      v31 = 2048;
      qualityOfService = [currentThread qualityOfService];
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
    sources = [(SiriActivationService *)self sources];
    allValues = [sources allValues];

    v13 = [allValues countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v17 = *(*(&v24 + 1) + 8 * v16);
          canAcceptNewActivations = [changeCopy canAcceptNewActivations];
          connection = [v17 connection];
          remoteTarget = [connection remoteTarget];
          v21 = [MEMORY[0x1E696AD98] numberWithBool:canAcceptNewActivations ^ 1u];
          [remoteTarget activeChangedTo:v21];

          ++v16;
        }

        while (v14 != v16);
        v14 = [allValues countByEnumeratingWithState:&v24 objects:v28 count:16];
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

- (void)_notifyListenersOfButtonDownWithButtonIdentifier:(int64_t)identifier atTimestamp:(double)timestamp
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E698D0A0];
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x1E696AF00];
    v10 = v8;
    currentThread = [v9 currentThread];
    *buf = 136315394;
    v18 = "[SiriActivationService _notifyListenersOfButtonDownWithButtonIdentifier:atTimestamp:]";
    v19 = 2048;
    qualityOfService = [currentThread qualityOfService];
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

  buttonEventListeners = [(SiriActivationService *)self buttonEventListeners];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__SiriActivationService__notifyListenersOfButtonDownWithButtonIdentifier_atTimestamp___block_invoke;
  v16[3] = &__block_descriptor_48_e42_v32__0__NSString_8__SASSignalServer_16_B24l;
  *&v16[4] = timestamp;
  v16[5] = identifier;
  [buttonEventListeners enumerateKeysAndObjectsUsingBlock:v16];

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

- (void)_notifyListenersOfButtonUpWithButtonIdentifier:(int64_t)identifier atTimestamp:(double)timestamp
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E698D0A0];
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x1E696AF00];
    v10 = v8;
    currentThread = [v9 currentThread];
    *buf = 136315394;
    v18 = "[SiriActivationService _notifyListenersOfButtonUpWithButtonIdentifier:atTimestamp:]";
    v19 = 2048;
    qualityOfService = [currentThread qualityOfService];
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

  buttonEventListeners = [(SiriActivationService *)self buttonEventListeners];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__SiriActivationService__notifyListenersOfButtonUpWithButtonIdentifier_atTimestamp___block_invoke;
  v16[3] = &__block_descriptor_48_e42_v32__0__NSString_8__SASSignalServer_16_B24l;
  *&v16[4] = timestamp;
  v16[5] = identifier;
  [buttonEventListeners enumerateKeysAndObjectsUsingBlock:v16];

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

- (void)_notifyListenersOfButtonLongPressWithButtonIdentifier:(int64_t)identifier atTimestamp:(double)timestamp
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E698D0A0];
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x1E696AF00];
    v10 = v8;
    currentThread = [v9 currentThread];
    *buf = 136315394;
    v18 = "[SiriActivationService _notifyListenersOfButtonLongPressWithButtonIdentifier:atTimestamp:]";
    v19 = 2048;
    qualityOfService = [currentThread qualityOfService];
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

  buttonEventListeners = [(SiriActivationService *)self buttonEventListeners];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__SiriActivationService__notifyListenersOfButtonLongPressWithButtonIdentifier_atTimestamp___block_invoke;
  v16[3] = &__block_descriptor_48_e42_v32__0__NSString_8__SASSignalServer_16_B24l;
  *&v16[4] = timestamp;
  v16[5] = identifier;
  [buttonEventListeners enumerateKeysAndObjectsUsingBlock:v16];

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

- (void)_notifySourcesOfCanActivateFromDirectActionSourceChange:(BOOL)change
{
  changeCopy = change;
  v35 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E698D0A0];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AF00];
    v7 = v5;
    currentThread = [v6 currentThread];
    *buf = 136315394;
    v32 = "[SiriActivationService _notifySourcesOfCanActivateFromDirectActionSourceChange:]";
    v33 = 2048;
    qualityOfService = [currentThread qualityOfService];
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
  sources = [(SiriActivationService *)self sources];
  allValues = [sources allValues];

  v12 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        connection = [v16 connection];
        remoteTarget = [connection remoteTarget];
        v19 = objc_opt_respondsToSelector();

        if (v19)
        {
          connection2 = [v16 connection];
          remoteTarget2 = [connection2 remoteTarget];
          v22 = [MEMORY[0x1E696AD98] numberWithBool:changeCopy];
          [remoteTarget2 canActivateChangedTo:v22];
        }
      }

      v13 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
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

- (void)siriPresentationDismissedWithIdentifier:(int64_t)identifier
{
  didDismissForAssesmentModeStartedCompeltion = self->_didDismissForAssesmentModeStartedCompeltion;
  if (didDismissForAssesmentModeStartedCompeltion)
  {
    didDismissForAssesmentModeStartedCompeltion[2](didDismissForAssesmentModeStartedCompeltion, 1);
    v6 = self->_didDismissForAssesmentModeStartedCompeltion;
    self->_didDismissForAssesmentModeStartedCompeltion = 0;
  }

  presentationManager = self->_presentationManager;

  [(SASPresentationManager *)presentationManager presentationWithPresentationIdentifierBecameOff:identifier];
}

- (void)registerActivationSource:(id)source withIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  identifierCopy = identifier;
  v8 = MEMORY[0x1E698D0A0];
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696AF00];
    v11 = v9;
    currentThread = [v10 currentThread];
    v25 = 136315394;
    v26 = "[SiriActivationService registerActivationSource:withIdentifier:]";
    v27 = 2048;
    qualityOfService = [currentThread qualityOfService];
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

  sources = [(SiriActivationService *)self sources];
  allKeys = [sources allKeys];
  v16 = [allKeys containsObject:identifierCopy];

  if (v16)
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [SiriActivationService registerActivationSource:withIdentifier:];
    }

    sources2 = [(SiriActivationService *)self sources];
    [sources2 removeObjectForKey:identifierCopy];
  }

  v18 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315394;
    v26 = "[SiriActivationService registerActivationSource:withIdentifier:]";
    v27 = 2112;
    qualityOfService = identifierCopy;
    _os_log_impl(&dword_1C8137000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation Registering '%@'", &v25, 0x16u);
  }

  sources3 = [(SiriActivationService *)self sources];
  [sources3 setObject:sourceCopy forKey:identifierCopy];

  connection = [sourceCopy connection];
  remoteTarget = [connection remoteTarget];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[SiriActivationService _shouldRejectNewActivations:](self, "_shouldRejectNewActivations:", -[SiriActivationService _requestState](self, "_requestState"))}];
  [remoteTarget activeChangedTo:v22];

  [sourceCopy specifySenderForInstrumentation:self->_activationEventInstrumentationSender];
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

- (void)unregisterActivationSourceIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AF00];
    v8 = v6;
    currentThread = [v7 currentThread];
    v19 = 136315394;
    v20 = "[SiriActivationService unregisterActivationSourceIdentifier:]";
    v21 = 2048;
    qualityOfService = [currentThread qualityOfService];
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

  sources = [(SiriActivationService *)self sources];
  allKeys = [sources allKeys];
  v13 = [allKeys containsObject:identifierCopy];

  v14 = *v5;
  v15 = *v5;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[SiriActivationService unregisterActivationSourceIdentifier:]";
      v21 = 2112;
      qualityOfService = identifierCopy;
      _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation Unregistering '%@'", &v19, 0x16u);
    }

    sources2 = [(SiriActivationService *)self sources];
    [sources2 removeObjectForKey:identifierCopy];
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

- (void)registerActivationAssertion:(id)assertion withIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  identifierCopy = identifier;
  v8 = MEMORY[0x1E698D0A0];
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696AF00];
    v11 = v9;
    currentThread = [v10 currentThread];
    v22 = 136315394;
    v23 = "[SiriActivationService registerActivationAssertion:withIdentifier:]";
    v24 = 2048;
    qualityOfService = [currentThread qualityOfService];
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

  activationAssertions = [(SiriActivationService *)self activationAssertions];
  allKeys = [activationAssertions allKeys];
  v16 = [allKeys containsObject:identifierCopy];

  if (v16)
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [SiriActivationService registerActivationAssertion:withIdentifier:];
    }

    activationAssertions2 = [(SiriActivationService *)self activationAssertions];
    [activationAssertions2 removeObjectForKey:identifierCopy];
  }

  v18 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "[SiriActivationService registerActivationAssertion:withIdentifier:]";
    v24 = 2112;
    qualityOfService = identifierCopy;
    _os_log_impl(&dword_1C8137000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation Registering assertion with Id -  '%@'", &v22, 0x16u);
  }

  activationAssertions3 = [(SiriActivationService *)self activationAssertions];
  [activationAssertions3 setObject:assertionCopy forKey:identifierCopy];

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

- (void)unregisterActivationAssertionWithIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AF00];
    v8 = v6;
    currentThread = [v7 currentThread];
    v19 = 136315394;
    v20 = "[SiriActivationService unregisterActivationAssertionWithIdentifier:]";
    v21 = 2048;
    qualityOfService = [currentThread qualityOfService];
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

  activationAssertions = [(SiriActivationService *)self activationAssertions];
  allKeys = [activationAssertions allKeys];
  v13 = [allKeys containsObject:identifierCopy];

  v14 = *v5;
  v15 = *v5;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[SiriActivationService unregisterActivationAssertionWithIdentifier:]";
      v21 = 2112;
      qualityOfService = identifierCopy;
      _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation Unregistering assertion %@'", &v19, 0x16u);
    }

    activationAssertions2 = [(SiriActivationService *)self activationAssertions];
    [activationAssertions2 removeObjectForKey:identifierCopy];
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

- (void)registerButtonEventListenerServer:(id)server identifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  identifierCopy = identifier;
  v8 = MEMORY[0x1E698D0A0];
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696AF00];
    v11 = v9;
    currentThread = [v10 currentThread];
    v22 = 136315394;
    v23 = "[SiriActivationService registerButtonEventListenerServer:identifier:]";
    v24 = 2048;
    qualityOfService = [currentThread qualityOfService];
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

  buttonEventListeners = [(SiriActivationService *)self buttonEventListeners];
  allKeys = [buttonEventListeners allKeys];
  v16 = [allKeys containsObject:identifierCopy];

  if (v16)
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [SiriActivationService registerButtonEventListenerServer:identifier:];
    }

    buttonEventListeners2 = [(SiriActivationService *)self buttonEventListeners];
    [buttonEventListeners2 removeObjectForKey:identifierCopy];
  }

  v18 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "[SiriActivationService registerButtonEventListenerServer:identifier:]";
    v24 = 2112;
    qualityOfService = identifierCopy;
    _os_log_impl(&dword_1C8137000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation Registering listener with Id -  '%@'", &v22, 0x16u);
  }

  buttonEventListeners3 = [(SiriActivationService *)self buttonEventListeners];
  [buttonEventListeners3 setObject:serverCopy forKey:identifierCopy];

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

- (void)unregisterButtonEventListenerWithIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AF00];
    v8 = v6;
    currentThread = [v7 currentThread];
    v19 = 136315394;
    v20 = "[SiriActivationService unregisterButtonEventListenerWithIdentifier:]";
    v21 = 2048;
    qualityOfService = [currentThread qualityOfService];
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

  buttonEventListeners = [(SiriActivationService *)self buttonEventListeners];
  allKeys = [buttonEventListeners allKeys];
  v13 = [allKeys containsObject:identifierCopy];

  v14 = *v5;
  v15 = *v5;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[SiriActivationService unregisterButtonEventListenerWithIdentifier:]";
      v21 = 2112;
      qualityOfService = identifierCopy;
      _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation Unregistering listener %@'", &v19, 0x16u);
    }

    buttonEventListeners2 = [(SiriActivationService *)self buttonEventListeners];
    [buttonEventListeners2 removeObjectForKey:identifierCopy];
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
  mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
  connectedDevices = [mEMORY[0x1E698F468] connectedDevices];

  v4 = [connectedDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(connectedDevices);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 productId] == 8194 && objc_msgSend(v7, "vendorId") == 76)
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [connectedDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)_B188ActivationEvent:(int64_t)event context:(id)context options:(id)options
{
  contextCopy = context;
  optionsCopy = options;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__SiriActivationService__B188ActivationEvent_context_options___block_invoke;
  v13[3] = &unk_1E82F3AF0;
  v13[4] = self;
  v14 = contextCopy;
  v15 = optionsCopy;
  eventCopy = event;
  v10 = optionsCopy;
  v11 = contextCopy;
  selfCopy = self;
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

- (void)activationRequestFromButtonIdentifier:(int64_t)identifier context:(id)context
{
  v28 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (identifier == 3)
  {
    if ([(SiriActivationService *)self isConnectedTo188])
    {
      [(SiriActivationService *)self _B188ActivationEvent:3 context:contextCopy options:0];
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
        v25 = contextCopy;
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation SiriButtonIdentifierLongPressBTHeadset, context %@, but Siri state is %@. Treating as button long press.", &v22, 0x20u);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        address = [contextCopy address];
      }

      else
      {
        address = 0;
      }

      v17 = [SiriLongPressButtonContext alloc];
      contextOverride = [contextCopy contextOverride];
      v19 = [(SiriContext *)v17 initWithContextOverride:contextOverride];

      processInfo = [MEMORY[0x1E696AE30] processInfo];
      [processInfo systemUptime];
      [(SiriLongPressButtonContext *)v19 setButtonDownTimestamp:?];

      [(SiriActivationService *)self buttonLongPressFromButtonIdentifier:3 deviceIdentifier:address context:v19];
LABEL_17:

      goto LABEL_18;
    }
  }

  _requestState = [(SiriActivationService *)self _requestState];
  v12 = *MEMORY[0x1E698D0A0];
  if (_requestState != 3)
  {
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = v12;
      v15 = [v13 stringWithSiriButtonIdentifier:identifier];
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
    address = [[SASActivationRequest alloc] initWithButtonIdentifier:identifier context:contextCopy];
    [(SiriActivationService *)self handleActivationRequest:address];
    goto LABEL_17;
  }

  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    [(SiriActivationService *)v12 activationRequestFromButtonIdentifier:identifier context:self];
  }

LABEL_18:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)deactivationRequestFromButtonIdentifier:(int64_t)identifier context:(id)context options:(id)options
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  optionsCopy = options;
  if (identifier == 3 && [(SiriActivationService *)self isConnectedTo188])
  {
    [(SiriActivationService *)self _B188ActivationEvent:3 context:contextCopy options:optionsCopy];
  }

  else
  {
    v10 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = v10;
      v13 = [v11 stringWithSiriButtonIdentifier:identifier];
      v14 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
      v16 = 136315650;
      v17 = "[SiriActivationService deactivationRequestFromButtonIdentifier:context:options:]";
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s deactivationRequestFromButtonIdentifier:%@, with Siri state %@. Deactivating.", &v16, 0x20u);
    }

    [(SiriActivationService *)self dismissSiriWithOptions:optionsCopy];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldRejectActivationWithButtonIdentifier:(int64_t)identifier activationAssertions:(id)assertions
{
  v21 = *MEMORY[0x1E69E9840];
  assertionsCopy = assertions;
  v6 = +[SASSystemState sharedSystemState];
  isInActiveCall = [v6 isInActiveCall];

  if (isInActiveCall)
  {
    v8 = 1;
  }

  else
  {
    v9 = identifier - 1;
    v10 = [assertionsCopy count];
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

- (void)prewarmFromButtonIdentifier:(int64_t)identifier longPressInterval:(double)interval
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = v7;
    v10 = [v8 stringWithSiriButtonIdentifier:identifier];
    v11 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
    *buf = 136315906;
    v24 = "[SiriActivationService prewarmFromButtonIdentifier:longPressInterval:]";
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    v29 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation %@ button prewarm request, current request state: %@, longPressInterval: %f", buf, 0x2Au);
  }

  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x1E698D1C0] assistantIsEnabled];

  if (assistantIsEnabled)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithSiriActivationEventType:{0, @"activationEvent"}];
    v22[0] = v14;
    v21[1] = @"eventSource";
    v15 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:identifier];
    v22[1] = v15;
    v21[2] = @"interval";
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:interval];
    v22[2] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

    v18 = +[SASAnalytics analytics];
    [v18 enqueueCurrentAnalyticsEventWithType:1402 context:v17];

    [(SiriActivationService *)self _defrost];
    heater = [(SiriActivationService *)self heater];
    [heater prepareForUseAfterTimeInterval:interval];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setHintGlowAssertionFromButtonIdentifier:(int64_t)identifier context:(id)context
{
  contextCopy = context;
  v7 = [[SASActivationRequest alloc] initWithButtonIdentifier:identifier context:contextCopy];
  if ([(SiriActivationService *)self _shouldShowHintGlowWithRequest:v7])
  {
    nextPresentationToActivate = [(SASPresentationManager *)self->_presentationManager nextPresentationToActivate];
    if (identifier == 2 && nextPresentationToActivate == 1)
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

- (BOOL)_shouldShowHintGlowWithRequest:(id)request
{
  requestCopy = request;
  if ([MEMORY[0x1E698D258] saeAvailable])
  {
    v5 = [(SiriActivationService *)self _canActivateForRequest:requestCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_canActivateForRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_new();
  [v5 setRequest:requestCopy];

  [v5 setButtonTriggerStateActive:0];
  systemState = [(SiriActivationService *)self systemState];
  [v5 setSystemState:systemState];

  v7 = +[SASSiriPocketStateManager sharedManager];
  [v5 setPocketStateManager:v7];

  afPreferences = [(SiriActivationService *)self afPreferences];
  [v5 setPreferences:afPreferences];

  [v5 setRequestState:{-[SiriActivationService _requestState](self, "_requestState")}];
  assetUtilities = [(SiriActivationService *)self assetUtilities];
  [v5 setAssetUtilities:assetUtilities];

  [v5 setPresentationIdentifier:{-[SASPresentationManager nextPresentationToActivate](self->_presentationManager, "nextPresentationToActivate")}];
  LOBYTE(self) = [SASActivationDecision canActivateForCondition:v5];

  return self;
}

- (void)_defrost
{
  kdebug_trace();

  [(SiriActivationService *)self _attachToTether];
}

- (void)cancelPrewarmFromButtonIdentifier:(int64_t)identifier
{
  [(SASHeater *)self->_heater cancelPreparationForButtonIdentifier:identifier];
  presentationManager = self->_presentationManager;

  [(SASPresentationManager *)presentationManager cancelAllPreheatedPresentations];
}

- (void)buttonDownFromButtonIdentifier:(int64_t)identifier timestamp:(double)timestamp context:(id)context
{
  v40 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = MEMORY[0x1E698D0A0];
  v10 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = v10;
    v13 = [v11 stringWithSiriButtonIdentifier:identifier];
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
    [(SiriActivationService *)self _notifyListenersOfButtonDownWithButtonIdentifier:identifier atTimestamp:timestamp];
    v15 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = MEMORY[0x1E696AF00];
      v17 = v15;
      currentThread = [v16 currentThread];
      qualityOfService = [currentThread qualityOfService];
      *buf = 136315394;
      v35 = "[SiriActivationService buttonDownFromButtonIdentifier:timestamp:context:]";
      v36 = 2048;
      v37 = qualityOfService;
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

    v21 = [(SiriActivationService *)self _shouldRejectActivationWithButtonIdentifier:identifier activationAssertions:self->_activationAssertions];
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
        v26 = [v24 stringWithSiriButtonIdentifier:identifier];
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
      identifierCopy = identifier;
      timestampCopy = timestamp;
      v31 = contextCopy;
      v28 = _Block_copy(aBlock);
      [(SASPresentationManager *)self->_presentationManager sendButtonEventCompletionToPresentations:v28 forButtonEventType:1];
      [(SiriActivationService *)self _recordTimeIfNeededForButtonIdentifier:identifier buttonDownTimestamp:timestamp];
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

- (void)buttonUpFromButtonIdentifier:(int64_t)identifier deviceIdentifier:(id)deviceIdentifier timestamp:(double)timestamp context:(id)context
{
  v46 = *MEMORY[0x1E69E9840];
  deviceIdentifierCopy = deviceIdentifier;
  contextCopy = context;
  v12 = MEMORY[0x1E698D0A0];
  v13 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = v13;
    v16 = [v14 stringWithSiriButtonIdentifier:identifier];
    *buf = 136315394;
    v41 = "[SiriActivationService buttonUpFromButtonIdentifier:deviceIdentifier:timestamp:context:]";
    v42 = 2112;
    v43 = v16;
    _os_log_impl(&dword_1C8137000, v15, OS_LOG_TYPE_DEFAULT, "%s #activation buttonUpFromButtonIdentifier:%@", buf, 0x16u);
  }

  [(SiriActivationService *)self _notifyListenersOfButtonUpWithButtonIdentifier:identifier atTimestamp:timestamp];
  v17 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = MEMORY[0x1E696AF00];
    v19 = v17;
    currentThread = [v18 currentThread];
    qualityOfService = [currentThread qualityOfService];
    *buf = 136315394;
    v41 = "[SiriActivationService buttonUpFromButtonIdentifier:deviceIdentifier:timestamp:context:]";
    v42 = 2048;
    v43 = qualityOfService;
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

  v23 = [(SiriActivationService *)self _shouldRejectActivationWithButtonIdentifier:identifier activationAssertions:self->_activationAssertions];
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
      v28 = [v26 stringWithSiriButtonIdentifier:identifier];
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
    identifierCopy = identifier;
    v36 = deviceIdentifierCopy;
    timestampCopy = timestamp;
    v37 = contextCopy;
    v30 = _Block_copy(&v32);
    [(SASPresentationManager *)self->_presentationManager sendButtonEventCompletionToPresentations:v30 forButtonEventType:2, v32, v33, v34, v35];
    [(SiriActivationService *)self _handleTapSynthesisIfNeededForButtonIdentifier:identifier buttonUpTimestamp:timestamp];
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

- (void)buttonTapFromButtonIdentifier:(int64_t)identifier timestamp:(double)timestamp context:(id)context
{
  v60 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = MEMORY[0x1E698D0A0];
  v10 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = v10;
    v13 = [v11 stringWithSiriButtonIdentifier:identifier];
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
    currentThread = [v15 currentThread];
    qualityOfService = [currentThread qualityOfService];
    *buf = 136315394;
    v55 = "[SiriActivationService buttonTapFromButtonIdentifier:timestamp:context:]";
    v56 = 2048;
    v57 = qualityOfService;
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

  v20 = [(SiriActivationService *)self _shouldRejectActivationWithButtonIdentifier:identifier activationAssertions:self->_activationAssertions];
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
      v25 = [v23 stringWithSiriButtonIdentifier:identifier];
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
      identifierCopy = identifier;
      timestampCopy = timestamp;
      v51 = contextCopy;
      v27 = _Block_copy(aBlock);
      [(SASPresentationManager *)self->_presentationManager sendButtonEventCompletionToPresentations:v27 forButtonEventType:3];

      v28 = v51;
    }

    else if ([(SiriActivationService *)self _buttonIsTVMicrophoneButton:identifier])
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
        v28 = contextCopy;
      }

      else
      {
        v28 = 0;
      }

      if ([v28 isPTTEligible])
      {
        [(SiriActivationService *)self activationRequestFromButtonIdentifier:identifier context:v28];
      }

      else
      {
        v38 = objc_alloc_init(SiriShortPressButtonContext);
        [(SiriActivationService *)self activationRequestFromButtonIdentifier:identifier context:v38];
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
        identifierCopy2 = identifier;
        timestampCopy2 = timestamp;
        v47 = contextCopy;
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
      identifierCopy3 = identifier;
      timestampCopy3 = timestamp;
      v43 = contextCopy;
      v32 = _Block_copy(v42);
      if (![(SASPresentationManager *)self->_presentationManager sendButtonEventCompletionToApplicableOffPresentations:v32 forButtonEventType:3])
      {
        v33 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v34 = MEMORY[0x1E696AEC0];
          v35 = v33;
          v36 = [v34 stringWithSiriButtonIdentifier:identifier];
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

- (void)buttonLongPressFromButtonIdentifier:(int64_t)identifier deviceIdentifier:(id)deviceIdentifier context:(id)context
{
  v65 = *MEMORY[0x1E69E9840];
  deviceIdentifierCopy = deviceIdentifier;
  contextCopy = context;
  v10 = MEMORY[0x1E698D0A0];
  v11 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = v11;
    v14 = [v12 stringWithSiriButtonIdentifier:identifier];
    *buf = 136315394;
    v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
    v59 = 2112;
    v60 = v14;
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation buttonLongPressFromButtonIdentifier:%@", buf, 0x16u);
  }

  [(NSMutableDictionary *)contextCopy buttonDownTimestamp];
  [(SiriActivationService *)self _notifyListenersOfButtonLongPressWithButtonIdentifier:identifier atTimestamp:?];
  v15 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = MEMORY[0x1E696AF00];
    v17 = v15;
    currentThread = [v16 currentThread];
    qualityOfService = [currentThread qualityOfService];
    *buf = 136315394;
    v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
    v59 = 2048;
    v60 = qualityOfService;
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

  v21 = [(SiriActivationService *)self _shouldRejectActivationWithButtonIdentifier:identifier activationAssertions:self->_activationAssertions];
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
      v26 = [v24 stringWithSiriButtonIdentifier:identifier];
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
        v26 = [v29 stringWithSiriButtonIdentifier:identifier];
        v30 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
        *buf = 136315906;
        v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
        v59 = 2112;
        v60 = v26;
        v61 = 2112;
        v62 = contextCopy;
        v63 = 2112;
        v64 = v30;
        _os_log_error_impl(&dword_1C8137000, v25, OS_LOG_TYPE_ERROR, "%s #activation buttonLongPressFromButtonIdentifier:%@, context %@, but Siri state is %@. Ignoring.", buf, 0x2Au);
      }

      else
      {
        if ([(SiriActivationService *)self _requestState]== 3)
        {
          v37 = [(SiriActivationService *)self _buttonIsAVExternalButton:identifier];
          v38 = *v10;
          v39 = os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT);
          if (!v37)
          {
            if (v39)
            {
              v44 = MEMORY[0x1E696AEC0];
              v45 = v38;
              v46 = [v44 stringWithSiriButtonIdentifier:identifier];
              v47 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
              *buf = 136315906;
              v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
              v59 = 2112;
              v60 = v46;
              v61 = 2112;
              v62 = contextCopy;
              v63 = 2112;
              v64 = v47;
              _os_log_impl(&dword_1C8137000, v45, OS_LOG_TYPE_DEFAULT, "%s #activation buttonLongPressFromButtonIdentifier:%@, context %@, but Siri state is %@. Passing to the Presentation Shell.", buf, 0x2Au);
            }

            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __86__SiriActivationService_buttonLongPressFromButtonIdentifier_deviceIdentifier_context___block_invoke;
            aBlock[3] = &unk_1E82F3B68;
            v48 = contextCopy;
            v54 = v48;
            v55 = deviceIdentifierCopy;
            identifierCopy = identifier;
            v49 = _Block_copy(aBlock);
            v50 = +[SASSystemState sharedSystemState];
            isATV = [v50 isATV];

            if (isATV)
            {
              v52 = [[SASActivationRequest alloc] initWithButtonIdentifier:identifier context:v48];
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
          v26 = [v40 stringWithSiriButtonIdentifier:identifier];
          v30 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
          *buf = 136315906;
          v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
          v59 = 2112;
          v60 = v26;
          v61 = 2112;
          v62 = contextCopy;
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
          v26 = [v43 stringWithSiriButtonIdentifier:identifier];
          v30 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
          *buf = 136315906;
          v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
          v59 = 2112;
          v60 = v26;
          v61 = 2112;
          v62 = v30;
          v63 = 2112;
          v64 = contextCopy;
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
      v34 = [v32 stringWithSiriButtonIdentifier:identifier];
      v35 = SASRequestStateGetName([(SiriActivationService *)self _requestState]);
      *buf = 136315906;
      v58 = "[SiriActivationService buttonLongPressFromButtonIdentifier:deviceIdentifier:context:]";
      v59 = 2112;
      v60 = v34;
      v61 = 2112;
      v62 = v35;
      v63 = 2112;
      v64 = contextCopy;
      _os_log_impl(&dword_1C8137000, v33, OS_LOG_TYPE_DEFAULT, "%s #activation buttonLongPressFromButtonIdentifier:%@, with Siri state %@, context %@. Activating.", buf, 0x2Au);
    }

    [(SiriActivationService *)self activationRequestFromButtonIdentifier:identifier context:contextCopy];
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

- (void)_handleTapSynthesisIfNeededForButtonIdentifier:(int64_t)identifier buttonUpTimestamp:(double)timestamp
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(SiriActivationService *)self _buttonIsAVExternalButton:?]&& [(SiriActivationService *)self buttonDownHasOccurredSinceActivation])
  {
    avExternalButtonEvents = [(SiriActivationService *)self avExternalButtonEvents];
    v8 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:identifier];
    v9 = [avExternalButtonEvents objectForKey:v8];

    if (v9)
    {
      avExternalButtonEvents2 = [(SiriActivationService *)self avExternalButtonEvents];
      v11 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:identifier];
      [avExternalButtonEvents2 removeObjectForKey:v11];

      [v9 doubleValue];
      v13 = v12;
      v14 = MEMORY[0x1E698D0A0];
      v15 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315650;
        v23 = "[SiriActivationService _handleTapSynthesisIfNeededForButtonIdentifier:buttonUpTimestamp:]";
        v24 = 2048;
        timestampCopy = timestamp;
        v26 = 2048;
        v27 = v13;
        _os_log_impl(&dword_1C8137000, v15, OS_LOG_TYPE_DEFAULT, "%s buttonUpTimestamp: %f, buttonDownTimestamp: %f", &v22, 0x20u);
      }

      [(SiriActivationService *)self activationTimestamp];
      if (timestamp - v13 < 0.4 && v16 != v13)
      {
        _requestState = [(SiriActivationService *)self _requestState];
        v19 = *v14;
        v20 = os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT);
        if (_requestState == 3)
        {
          if (v20)
          {
            v22 = 136315138;
            v23 = "[SiriActivationService _handleTapSynthesisIfNeededForButtonIdentifier:buttonUpTimestamp:]";
            _os_log_impl(&dword_1C8137000, v19, OS_LOG_TYPE_DEFAULT, "%s #activation synthesizing button tap", &v22, 0xCu);
          }

          [(SiriActivationService *)self buttonTapFromButtonIdentifier:identifier timestamp:0 context:timestamp];
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

- (void)_recordTimeIfNeededForButtonIdentifier:(int64_t)identifier buttonDownTimestamp:(double)timestamp
{
  if ([(SiriActivationService *)self _buttonIsAVExternalButton:?])
  {
    avExternalButtonEvents = [(SiriActivationService *)self avExternalButtonEvents];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:timestamp];
    v8 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:identifier];
    [avExternalButtonEvents setObject:v7 forKey:v8];
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

  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x1E698D1C0] assistantIsEnabled];

  if (assistantIsEnabled)
  {
    v8 = [SASPreheatRequest newWithBuilder:&__block_literal_global_142];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __67__SiriActivationService_prewarmForFirstTapOfQuickTypeToSiriGesture__block_invoke_2;
    v15 = &unk_1E82F3BB0;
    selfCopy = self;
    v17 = v8;
    v9 = v8;
    v10 = [SASPreheatOptions newWithBuilder:&v12];
    [(SASPresentationManager *)self->_presentationManager preheatNextPresentationToActivateWithOptions:v10, v12, v13, v14, v15, selfCopy];
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

- (void)prewarmWithRequest:(id)request
{
  requestCopy = request;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __44__SiriActivationService_prewarmWithRequest___block_invoke;
  v10 = &unk_1E82F3BB0;
  selfCopy = self;
  v12 = requestCopy;
  v5 = requestCopy;
  v6 = [SASPreheatOptions newWithBuilder:&v7];
  [(SASPresentationManager *)self->_presentationManager preheatNextPresentationToActivateWithOptions:v6, v7, v8, v9, v10, selfCopy];
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

- (void)activationRequestFromDirectActionEventWithContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    [contextCopy directActionEvent];
    v10 = AFDirectActionEventGetName();
    v15 = 136315394;
    v16 = "[SiriActivationService activationRequestFromDirectActionEventWithContext:completion:]";
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromDirectActionEventWithContext:%@", &v15, 0x16u);
  }

  v11 = [[SASActivationRequest alloc] initWithDirectActionContext:contextCopy];
  v12 = [(SiriActivationService *)self handleActivationRequest:v11];
  if (completionCopy)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v12];
    completionCopy[2](completionCopy, v13, 0);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromContinuityWithContext:(id)context
{
  v14 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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

  speechRequestOptions = [contextCopy speechRequestOptions];
  if (!speechRequestOptions)
  {
    goto LABEL_7;
  }

  v7 = speechRequestOptions;
  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  designModeIsEnabled = [mEMORY[0x1E698D1C0] designModeIsEnabled];

  if (designModeIsEnabled)
  {
    [(SiriActivationService *)self _handleDesignModeRequest];
  }

  else
  {
LABEL_7:
    v10 = [[SASActivationRequest alloc] initWithContinuityContext:contextCopy];
    [(SiriActivationService *)self handleActivationRequest:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromVoiceTriggerWithContext:(id)context
{
  v12 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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
    v8 = [[SASActivationRequest alloc] initWithVoiceTriggerContext:contextCopy];
    [(SiriActivationService *)self handleActivationRequest:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromContinuousConversationWithContext:(id)context
{
  v12 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SiriActivationService activationRequestFromContinuousConversationWithContext:]";
    v10 = 2112;
    v11 = contextCopy;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromContinuousConversationWithContext with context: %@", &v8, 0x16u);
  }

  v6 = [[SASActivationRequest alloc] initWithContinuousConversationContext:contextCopy];
  [(SiriActivationService *)self handleActivationRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromContinuousConversationHearstWithContext:(id)context
{
  v12 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SiriActivationService activationRequestFromContinuousConversationHearstWithContext:]";
    v10 = 2112;
    v11 = contextCopy;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromContinuousConversationHearstWithContext with context: %@", &v8, 0x16u);
  }

  v6 = [[SASActivationRequest alloc] initWithContinuousConversationHearstContext:contextCopy];
  [(SiriActivationService *)self handleActivationRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromContinuousConversationJarvisWithContext:(id)context
{
  v12 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SiriActivationService activationRequestFromContinuousConversationJarvisWithContext:]";
    v10 = 2112;
    v11 = contextCopy;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromContinuousConversationJarvisWithContext with context: %@", &v8, 0x16u);
  }

  v6 = [[SASActivationRequest alloc] initWithContinuousConversationJarvisContext:contextCopy];
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

  initWithBreadcrumbRequest = [[SASActivationRequest alloc] initWithBreadcrumbRequest];
  [(SiriActivationService *)self handleActivationRequest:initWithBreadcrumbRequest];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromBluetoothKeyboardActivation:(int64_t)activation
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = SASRequestSourceGetName(activation);
    v10 = 136315394;
    v11 = "[SiriActivationService activationRequestFromBluetoothKeyboardActivation:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromSimpleActivation:%@", &v10, 0x16u);
  }

  v8 = [[SASActivationRequest alloc] initWithBluetoothKeyboardShortcutActivation:activation];
  [(SiriActivationService *)self handleActivationRequest:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromRemotePresentationBringUpWithContext:(id)context
{
  v12 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SiriActivationService activationRequestFromRemotePresentationBringUpWithContext:]";
    v10 = 2112;
    v11 = contextCopy;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromRemotePresentationBringUpWithContext:%@", &v8, 0x16u);
  }

  v6 = [[SASActivationRequest alloc] initWithRemotePresentationBringUpContext:contextCopy];
  [(SiriActivationService *)self handleActivationRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromSimpleActivation:(int64_t)activation
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = SASRequestSourceGetName(activation);
    v10 = 136315394;
    v11 = "[SiriActivationService activationRequestFromSimpleActivation:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromSimpleActivation:%@", &v10, 0x16u);
  }

  v8 = [[SASActivationRequest alloc] initWithSimpleActivation:activation];
  [(SiriActivationService *)self handleActivationRequest:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromSpotlightWithContext:(id)context
{
  v10 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SiriActivationService activationRequestFromSpotlightWithContext:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromSpotlightWithContext", &v8, 0xCu);
  }

  v6 = [[SASActivationRequest alloc] initWithSpotlightContext:contextCopy];
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

  initWithVoiceTriggerRequest = [[SASActivationRequest alloc] initWithVoiceTriggerRequest];
  [(SiriActivationService *)self handleActivationRequest:initWithVoiceTriggerRequest];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromTestingWithContext:(id)context
{
  v10 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SiriActivationService activationRequestFromTestingWithContext:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromTestingWithContext", &v8, 0xCu);
  }

  v6 = [[SASActivationRequest alloc] initWithTestingContext:contextCopy];
  [(SiriActivationService *)self handleActivationRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromVocalShortcutWithContext:(id)context
{
  v10 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SiriActivationService activationRequestFromVocalShortcutWithContext:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromVocalShortcutWithContext", &v8, 0xCu);
  }

  v6 = [[SASActivationRequest alloc] initWithVocalShortcutContext:contextCopy];
  [(SiriActivationService *)self handleActivationRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)activationRequestFromTostadaWithContext:(id)context
{
  v10 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SiriActivationService activationRequestFromTostadaWithContext:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromTostadaWithContext", &v8, 0xCu);
  }

  v6 = [[SASActivationRequest alloc] initWithTostadaContext:contextCopy];
  [(SiriActivationService *)self handleActivationRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)speechRequestStateDidChange:(int64_t)change
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SiriActivationService speechRequestStateDidChange:]";
    v9 = 2048;
    changeCopy = change;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation speech request state did change (state = %ld)", &v7, 0x16u);
  }

  if (change == 1)
  {
    [(SASMyriadController *)self->_myriadController activateForInTaskRequest:0 isVisible:[(SiriActivationService *)self _requestState]== 3];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)handleActivationRequest:(id)request
{
  requestCopy = request;
  systemState = [(SiriActivationService *)self systemState];
  LOBYTE(self) = [(SiriActivationService *)self handleActivationRequest:requestCopy systemState:systemState];

  return self;
}

- (BOOL)handleActivationRequest:(id)request systemState:(id)state
{
  v75 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  stateCopy = state;
  v8 = MEMORY[0x1E698D0A0];
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696AF00];
    v11 = v9;
    currentThread = [v10 currentThread];
    *buf = 136315394;
    v72 = "[SiriActivationService handleActivationRequest:systemState:]";
    v73 = 2048;
    v74 = COERCE_DOUBLE([currentThread qualityOfService]);
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

  v14 = stateCopy;
  context = [requestCopy context];
  contextOverride = [context contextOverride];

  v17 = v14;
  if (contextOverride)
  {
    context2 = [requestCopy context];
    contextOverride2 = [context2 contextOverride];

    v17 = [[SASOverriddenSystemState alloc] initWithSystemState:v14 contextOverride:contextOverride2];
  }

  systemState = [(SiriActivationService *)self systemState];
  lockStateMonitor = [systemState lockStateMonitor];

  v67 = lockStateMonitor;
  v68 = v14;
  if (lockStateMonitor)
  {
    v22 = [lockStateMonitor lockState] == 0;
  }

  else
  {
    v22 = 1;
  }

  v69[0] = @"activationEvent";
  v23 = [MEMORY[0x1E696AEC0] stringWithSiriActivationEventType:{objc_msgSend(requestCopy, "activationType")}];
  v70[0] = v23;
  v69[1] = @"eventSource";
  eventSource = [requestCopy eventSource];
  v70[1] = eventSource;
  v69[2] = @"isDeviceUnlocked";
  v25 = [MEMORY[0x1E696AD98] numberWithBool:v22];
  v70[2] = v25;
  v69[3] = @"clockTime";
  v26 = MEMORY[0x1E696AD98];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v28 = [v26 numberWithDouble:?];
  v70[3] = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:4];
  v30 = [v29 mutableCopy];

  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[SASOverriddenSystemState carDNDActive](v17, "carDNDActive")}];
  [v30 setObject:v31 forKeyedSubscript:@"carDNDActive"];

  vehicleName = [(SASSystemState *)v17 vehicleName];
  [v30 setObject:vehicleName forKeyedSubscript:@"carVehicleName"];

  vehicleModel = [(SASSystemState *)v17 vehicleModel];
  [v30 setObject:vehicleModel forKeyedSubscript:@"carVehicleModelName"];

  vehicleManufacturer = [(SASSystemState *)v17 vehicleManufacturer];
  [v30 setObject:vehicleManufacturer forKeyedSubscript:@"carVehicleManufacturer"];

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
    v74 = *&requestCopy;
    _os_log_impl(&dword_1C8137000, v37, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequest = %@", buf, 0x16u);
  }

  nextPresentationToActivate = [(SASPresentationManager *)self->_presentationManager nextPresentationToActivate];
  v39 = objc_opt_new();
  [v39 setRequest:requestCopy];
  [v39 setButtonTriggerStateActive:self->_buttonTrigger != 0];
  [v39 setSystemState:v17];
  v40 = +[SASSiriPocketStateManager sharedManager];
  [v39 setPocketStateManager:v40];

  afPreferences = [(SiriActivationService *)self afPreferences];
  [v39 setPreferences:afPreferences];

  [v39 setRequestState:{-[SiriActivationService _requestState](self, "_requestState")}];
  assetUtilities = [(SiriActivationService *)self assetUtilities];
  [v39 setAssetUtilities:assetUtilities];

  [v39 setPresentationIdentifier:nextPresentationToActivate];
  v43 = [(SiriActivationService *)self _uiPresentationIdentifierWithActivation:requestCopy activationPresentation:nextPresentationToActivate];
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

  if (!-[SiriActivationService _siriIsEnabled](self, "_siriIsEnabled") && ([requestCopy isVisualIntelligenceRequest] & 1) == 0)
  {
    [(SiriActivationService *)self _cancelActivationPreparationForSetup];
  }

  if (([requestCopy isUIFreeRequestSource] & 1) == 0 && (objc_msgSend(requestCopy, "isContinuousConversationRequest") & 1) == 0 && (objc_msgSend(requestCopy, "isVisualIntelligenceRequest") & 1) == 0)
  {
    if ([requestCopy isVoiceRequest] && -[SASOverriddenSystemState isConnectedToCarPlay](v17, "isConnectedToCarPlay"))
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

      v48 = [(SASMyriadController *)self->_myriadController activateForRequest:requestCopy withTimeout:v44 visible:[(SiriActivationService *)self _requestState]== 3];

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

    else if (![(SASMyriadController *)self->_myriadController activateForRequest:requestCopy withTimeout:0 visible:[(SiriActivationService *)self _requestState]== 3])
    {
      goto LABEL_24;
    }
  }

  v52 = +[SASAnalytics analytics];
  [v52 flushPendingAnalyticsEventQueue];

  v53 = objc_alloc_init(SASRequestOptionsBuilder);
  v54 = [(SASRequestOptionsBuilder *)v53 buildOptionsWithRequest:requestCopy presentationIdentifier:nextPresentationToActivate dataSource:self];

  if (nextPresentationToActivate == 2)
  {
    v55 = objc_alloc_init(MEMORY[0x1E69CF580]);
    vehicleManufacturer2 = [(SASSystemState *)v17 vehicleManufacturer];
    [v55 setVehicleManufacturer:vehicleManufacturer2];

    vehicleModel2 = [(SASSystemState *)v17 vehicleModel];
    [v55 setVehicleModel:vehicleModel2];

    instrumentationEvents = [v54 instrumentationEvents];
    [instrumentationEvents addObject:v55];
  }

  testingInputController = [(SiriActivationService *)self testingInputController];
  dequeuePreloadedTestingContext = [testingInputController dequeuePreloadedTestingContext];

  if (dequeuePreloadedTestingContext && ([v54 testingContext], v61 = objc_claimAutoreleasedReturnValue(), v61, !v61))
  {
    testingContext = [dequeuePreloadedTestingContext testingContext];
    [v54 setTestingContext:testingContext];
  }

  else
  {
    [(SiriActivationService *)self _updateRequestOptionsWithTestingContextFromActivationRequest:requestCopy requestOptions:v54];
    v54 = testingContext = v54;
  }

  v51 = v68;
  if ([(SiriActivationService *)self _requestState]== 3)
  {
    [(SASPresentationManager *)self->_presentationManager activePresentations_handleRequestWithOptions:v54];
  }

  else
  {
    [(SiriActivationService *)self _activatePresentationWithIdentifier:nextPresentationToActivate requestOptions:v54 analyticsContext:v30];
    -[SiriActivationService _logActivationToPowerLogWithReason:](self, "_logActivationToPowerLogWithReason:", [requestCopy activationType]);
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

- (void)_logActivationToPowerLogWithReason:(int64_t)reason
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"ReasonStart";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  PLLogRegisteredEvent();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_activatePresentationWithIdentifier:(int64_t)identifier requestOptions:(id)options analyticsContext:(id)context
{
  v24 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  contextCopy = context;
  v10 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = v10;
    v13 = [v11 stringWithSiriPresentationIdentifier:identifier];
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
  v14 = optionsCopy;
  v19[1] = identifier;
  v17 = v14;
  selfCopy = self;
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

- (void)_overrideLockButtonStateIfNeededForRequestOptions:(id)options
{
  v12 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if ([optionsCopy requestSource] == 41)
  {
    requestInfo = [optionsCopy requestInfo];
    v6 = requestInfo;
    if (requestInfo && [requestInfo isAlwaysAllowedWhileDeviceLocked])
    {
      uiPresentationIdentifier = [optionsCopy uiPresentationIdentifier];
      if ([uiPresentationIdentifier isEqualToString:@"com.apple.siri.UIFree"])
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

- (BOOL)_shouldHandlePocketStateFetchForRequestOptions:(id)options
{
  v26 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (![optionsCopy isWiredMicOrBTHeadsetOrWx])
  {
    goto LABEL_7;
  }

  v5 = soft_SBUIGetUserAgent();
  isScreenOn = [v5 isScreenOn];

  if (_SiriActivationDeviceSupportsProxSensor_onceToken != -1)
  {
    [SiriActivationService _shouldHandlePocketStateFetchForRequestOptions:];
  }

  v7 = _SiriActivationDeviceSupportsProxSensor_deviceSupportsProxSensor;
  uiPresentationIdentifier = [optionsCopy uiPresentationIdentifier];
  v9 = [uiPresentationIdentifier isEqualToString:@"com.apple.siri.EyesFree"];

  uiPresentationIdentifier2 = [optionsCopy uiPresentationIdentifier];
  v11 = [uiPresentationIdentifier2 isEqualToString:@"com.apple.siri.BluetoothCar"];

  v12 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136316162;
    v17 = "[SiriActivationService _shouldHandlePocketStateFetchForRequestOptions:]";
    v18 = 1024;
    v19 = isScreenOn ^ 1;
    v20 = 1024;
    v21 = v7;
    v22 = 1024;
    v23 = v9;
    v24 = 1024;
    v25 = v11;
    _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation should handle pocket state fetch via isScreenOff (%{BOOL}d) && siriActivationDeviceSupportsProxSensor (%{BOOL}d) && !(requestIsEyesFree (%{BOOL}d) || requestIsBluetoothCar (%{BOOL}d))", &v16, 0x24u);
  }

  if (!(isScreenOn & 1 | ((v7 & 1) == 0) | (v9 | v11) & 1))
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

- (void)_handlePocketStateFetchForScreenWakeForPresentationIdentifier:(int64_t)identifier
{
  [(SiriActivationService *)self _setPocketStateFetchingInProgressForHeadsetActivation:1];
  objc_initWeak(&location, self);
  v5 = +[SASSiriPocketStateManager sharedManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__SiriActivationService__handlePocketStateFetchForScreenWakeForPresentationIdentifier___block_invoke;
  v6[3] = &unk_1E82F3C28;
  objc_copyWeak(v7, &location);
  v7[1] = identifier;
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

- (void)_dismissSiri:(id)siri
{
  v9 = *MEMORY[0x1E69E9840];
  siriCopy = siri;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SiriActivationService _dismissSiri:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation", &v7, 0xCu);
  }

  [(SASPresentationManager *)self->_presentationManager startingAndActiveAndStoppingPresentations_presentationDismissalRequestedWithOptions:siriCopy];

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
  selfCopy = self;
  v13 = v4;
  v5 = v4;
  v6 = [SASPreheatOptions newWithBuilder:&v8];
  [(SASPresentationManager *)self->_presentationManager preheatNextPresentationToActivateWithOptions:v6, v8, v9, v10, v11, selfCopy];

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

  siriTether = [(SiriActivationService *)self siriTether];
  [siriTether attach:0];

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

- (void)_cancelPendingActivationEventWithReason:(unint64_t)reason
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = [v6 stringWithSiriPresentationActivationCancelReason:reason];
    v10 = 136315394;
    v11 = "[SiriActivationService _cancelPendingActivationEventWithReason:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation _cancelPendingActivationEventWithReason:%@", &v10, 0x16u);
  }

  [(SASPresentationManager *)self->_presentationManager startingPresentations_cancelPendingActivationWithReason:reason];
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

- (BOOL)_isVoiceActivationMaskNecessaryWithRequestOptions:(id)options
{
  optionsCopy = options;
  v4 = soft_SBUIGetUserAgent();
  v5 = [v4 isScreenOn] ^ 1;

  requestSource = [optionsCopy requestSource];
  return (requestSource == 8) & v5;
}

- (BOOL)requestOptionsBuilder:(id)builder isPredictedRecordRouteIsZLLWithActiviation:(id)activiation
{
  v4 = [(SiriActivationService *)self heater:builder];
  predictedRecordRouteIsZLL = [v4 predictedRecordRouteIsZLL];

  return predictedRecordRouteIsZLL;
}

- (BOOL)requestOptionsBuilder:(id)builder isAcousticIdAllowedWithActiviation:(id)activiation
{
  activiationCopy = activiation;
  if ([(SiriActivationService *)self _isInitialRequest])
  {
    v6 = [activiationCopy isVoiceRequest] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_uiPresentationIdentifierWithActivation:(id)activation activationPresentation:(int64_t)presentation
{
  activationCopy = activation;
  isUIFreeRequestSource = [activationCopy isUIFreeRequestSource];
  v8 = [(SiriActivationService *)self _isEyesFreeEligibleWithRequest:activationCopy];
  if ([(SiriActivationService *)self _eyesFreeRedesignOnlySteeringWheelEnabled])
  {
    v9 = 1;
  }

  else
  {
    bluetoothEndpointUtil = [(SiriActivationService *)self bluetoothEndpointUtil];
    isConnectedToBluetoothVehicle = [bluetoothEndpointUtil isConnectedToBluetoothVehicle];

    v9 = isConnectedToBluetoothVehicle ^ 1;
  }

  _saeAvailable = [(SiriActivationService *)self _saeAvailable];
  isVisualIntelligenceRequest = [activationCopy isVisualIntelligenceRequest];
  if (presentation == 2)
  {
    v14 = @"com.apple.siri.CarDisplay";
    if (isUIFreeRequestSource)
    {
      v14 = @"com.apple.siri.CarDisplay.UIFree";
    }

    v15 = v14;
  }

  else if (isUIFreeRequestSource)
  {
    v15 = @"com.apple.siri.UIFree";
  }

  else if (presentation == 4)
  {
    v15 = @"com.apple.siri.SiriTVPresentation";
  }

  else
  {
    v15 = @"com.apple.siri.Compact";
    if (presentation == 3)
    {
      if (_saeAvailable)
      {
        v15 = @"com.apple.siri.SystemAssistantExperience";
      }
    }

    else if (presentation == 1)
    {
      if (v8)
      {
        v15 = @"com.apple.siri.EyesFree";
      }

      else
      {
        v17 = @"com.apple.siri.SystemAssistantExperience";
        if (!_saeAvailable)
        {
          v17 = @"com.apple.siri.Compact";
        }

        if ((v9 | isVisualIntelligenceRequest))
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

- (BOOL)_isEyesFreeEligibleWithRequest:(id)request
{
  v31 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  systemState = [(SiriActivationService *)self systemState];
  isConnectedToEyesFreeDevice = [systemState isConnectedToEyesFreeDevice];

  systemState2 = [(SiriActivationService *)self systemState];
  carDNDActive = [systemState2 carDNDActive];

  v9 = AFPreferencesAlwaysEyesFreeEnabled();
  v10 = [requestCopy requestSource] == 5 || objc_msgSend(requestCopy, "requestSource") == 44;
  if (SASRequestSourceIsVisualIntelligenceDirectInvocation([requestCopy requestSource]))
  {
    isVisualIntelligenceRequest = 1;
  }

  else
  {
    isVisualIntelligenceRequest = [requestCopy isVisualIntelligenceRequest];
  }

  v12 = _os_feature_enabled_impl();
  v13 = _os_feature_enabled_impl();
  v14 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136316418;
    v20 = "[SiriActivationService _isEyesFreeEligibleWithRequest:]";
    v21 = 1024;
    v22 = isVisualIntelligenceRequest;
    v23 = 1024;
    v24 = carDNDActive;
    v25 = 1024;
    v26 = v9;
    v27 = 1024;
    v28 = isConnectedToEyesFreeDevice;
    v29 = 1024;
    v30 = v10;
    _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation checking if EyesFree is eligible: isVisualIntelligenceRequest = %d, isCarDND = %d, isDebugSettingOn = %d, isEyesFreeDevice = %d, isRequestSourceEyesFreeEligible = %d", &v19, 0x2Au);
  }

  v15 = isVisualIntelligenceRequest | v9 | carDNDActive;
  v16 = isVisualIntelligenceRequest ^ v15;
  if ((v15 & 1) == 0 && ((isConnectedToEyesFreeDevice ^ 1) & 1) == 0)
  {
    v16 = (v12 ^ 1 | v10) & (v13 ^ 1);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

- (id)requestOptionsBuilder:(id)builder optionsForOverriding:(id)overriding withActiviation:(id)activiation
{
  overridingCopy = overriding;
  activiationCopy = activiation;
  if ([activiationCopy isTestingRequest])
  {
    context = [activiationCopy context];
    testingContext = [context testingContext];
    [overridingCopy setTestingContext:testingContext];
  }

  return overridingCopy;
}

- (unint64_t)requestOptionsBuilder:(id)builder currentLockStateForActivation:(id)activation
{
  v4 = [(SiriActivationService *)self systemState:builder];
  lockStateMonitor = [v4 lockStateMonitor];
  lockState = [lockStateMonitor lockState];

  return lockState;
}

- (void)heaterSuggestsPreheating:(id)preheating
{
  v13 = *MEMORY[0x1E69E9840];
  _requestState = [(SiriActivationService *)self _requestState];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = SASRequestStateGetName(_requestState);
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

- (BOOL)_logCancelledActivationWithButtonIdentifier:(int64_t)identifier duration:(double)duration targetDuration:(double)targetDuration
{
  v27 = *MEMORY[0x1E69E9840];
  if (fabs(targetDuration + -0.4) < 2.22044605e-16 || fabs(targetDuration + -0.65) >= 2.22044605e-16 || _AXSHomeButtonAssistant())
  {
    goto LABEL_12;
  }

  v8 = +[SASSystemState sharedSystemState];
  if (([v8 siriIsSupported] & 1) == 0)
  {

    goto LABEL_12;
  }

  v9 = +[SASSystemState sharedSystemState];
  siriIsEnabled = [v9 siriIsEnabled];

  if (!siriIsEnabled)
  {
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:identifier];
  v12 = duration > 0.2;
  v13 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v18 = "[SiriActivationService _logCancelledActivationWithButtonIdentifier:duration:targetDuration:]";
    v19 = 2112;
    v20 = v11;
    v21 = 2048;
    durationCopy = duration;
    v23 = 1024;
    v24 = duration > 0.2;
    v25 = 2048;
    targetDurationCopy = targetDuration;
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation cancelledPreparationWithButtonIdentifier: %@ duration: %f, willSendEvent: %d, targetDuration: %f, ", buf, 0x30u);
  }

  if (duration > 0.2)
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

- (void)activationRequestFromTestRunnerWithContext:(id)context
{
  contextCopy = context;
  v6 = [[SASActivationRequest alloc] initWithTestingContext:contextCopy];

  systemState = [(SiriActivationService *)self systemState];
  [(SiriActivationService *)self handleActivationRequest:v6 systemState:systemState];
}

- (void)_unregisterForVoiceTrigger
{
  if (self->_voiceTriggerNotifyTokenIsValid)
  {
    notify_cancel(self->_voiceTriggerNotifyToken);
    self->_voiceTriggerNotifyTokenIsValid = 0;
  }
}

- (void)scdaShouldAbort:(id)abort
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

- (void)scdaShouldContinue:(id)continue
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

- (void)didChangeLockState:(unint64_t)state
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = v5;
    v8 = [v6 numberWithUnsignedInteger:state];
    v10 = 136315394;
    v11 = "[SiriActivationService didChangeLockState:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation lockState: %@", &v10, 0x16u);
  }

  [(SASPresentationManager *)self->_presentationManager activeAndStartingPresentations_updateCurrentLockState:state];
  v9 = *MEMORY[0x1E69E9840];
}

- (id)allBulletins
{
  bulletinManager = [(SiriActivationService *)self bulletinManager];
  allBulletins = [bulletinManager allBulletins];

  return allBulletins;
}

- (id)bulletinsOnLockScreen
{
  bulletinManager = [(SiriActivationService *)self bulletinManager];
  bulletinsOnLockScreen = [bulletinManager bulletinsOnLockScreen];

  return bulletinsOnLockScreen;
}

- (id)bulletinForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  bulletinManager = [(SiriActivationService *)self bulletinManager];
  v6 = [bulletinManager bulletinForIdentifier:identifierCopy];

  return v6;
}

- (void)presentationManager:(id)manager didChangeAggregateState:(id)state
{
  [(SiriActivationService *)self _notifySourcesOfPresentationStateChange:state];

  [(SiriActivationService *)self _updateCanActivateFromDirectActionSource];
}

- (void)presentationManager:(id)manager didEncounterError:(int64_t)error
{
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    [SiriActivationService presentationManager:v6 didEncounterError:error];
  }

  v7 = [[SiriDismissalOptions alloc] initWithDeactivationOptions:0 animated:0 dismissalReason:28];
  [(SiriActivationService *)self _dismissSiri:v7];
}

- (id)_updateRequestOptionsWithTestingContextFromActivationRequest:(id)request requestOptions:(id)options
{
  v34[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  if ([requestCopy activationType] == 7)
  {
    context = [requestCopy context];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      context2 = [requestCopy context];
      testingContext = [context2 testingContext];
      if (([context2 containsRecognitionStrings] & 1) != 0 || objc_msgSend(context2, "containsAudioInput"))
      {
        testingContext2 = [context2 testingContext];
        v12 = [testingContext2 objectForKeyedSubscript:@"SiriTestingContextAudioInputKey"];

        if (v12)
        {
          v13 = [testingContext2 objectForKeyedSubscript:@"SiriTestingContextAudioInputKey"];
        }

        else
        {
          v13 = 0;
        }

        v14 = [testingContext2 objectForKeyedSubscript:@"SiriTestingContextRecognitionStringKey"];

        if (v14)
        {
          v15 = [testingContext2 objectForKeyedSubscript:@"SiriTestingContextRecognitionStringKey"];
          firstObject = [v15 firstObject];
        }

        else
        {
          firstObject = 0;
        }

        v17 = 0;
      }

      else
      {
        v17 = [testingContext objectForKey:@"testOptions"];

        if (v17)
        {
          v17 = [testingContext objectForKey:@"testOptions"];
          v13 = [v17 objectForKey:@"speechFile"];
          firstObject = 0;
        }

        else
        {
          firstObject = 0;
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
            [optionsCopy setSpeechFileURL:v19];
          }

          else
          {
            v32 = testingContext;
            v20 = [v17 objectForKey:@"testName"];
            v21 = v20;
            v22 = &stru_1F47C3998;
            if (v20)
            {
              v22 = v20;
            }

            v31 = v22;

            testingContext3 = [optionsCopy testingContext];

            v24 = MEMORY[0x1E695DF90];
            if (testingContext3)
            {
              testingContext4 = [optionsCopy testingContext];
              dictionary = [v24 dictionaryWithDictionary:testingContext4];
            }

            else
            {
              dictionary = [MEMORY[0x1E695DF90] dictionary];
            }

            v33[0] = @"SiriTestingContextFailedTestNameKey";
            v33[1] = @"SiriTestingContextFailedTestMessageKey";
            v34[0] = v31;
            v34[1] = @"Speech file not found";
            v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:{2, v19}];
            [dictionary setObject:v27 forKeyedSubscript:@"SiriTestingContextFailedTestIdentifierKey"];

            [optionsCopy setTestingContext:dictionary];
            testingContext = v32;
            v19 = v30;
          }
        }
      }

      if ([firstObject length])
      {
        [optionsCopy setText:firstObject];
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];

  return optionsCopy;
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