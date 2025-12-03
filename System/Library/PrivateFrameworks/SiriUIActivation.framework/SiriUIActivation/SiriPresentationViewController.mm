@interface SiriPresentationViewController
+ (id)_applicationStateHelper;
+ (id)extractTestingInputsFromContext:(id)context;
- (AFUISiriSAEEffectsViewController)siriEffectsViewController;
- (AFUISiriViewController)siriViewController;
- (BOOL)_activeTCCHasContentAtPoint:(CGPoint)point;
- (BOOL)_canPresentSiriEffectsViewControllerWithRequestOptions:(id)options;
- (BOOL)_canShowHintGlow;
- (BOOL)_cancelPendingPhoneCall;
- (BOOL)_handleTapButtonBehavior:(int64_t)behavior;
- (BOOL)_handleTapDismissal:(int64_t)dismissal;
- (BOOL)_hasTestingInput;
- (BOOL)_isPresentingVisualIntelligenceCamera;
- (BOOL)_releaseExistingTrigger;
- (BOOL)_shouldHandleNewRequestWithOptions:(id)options currentRequest:(id)request;
- (BOOL)_shouldKeepPonging;
- (BOOL)_shouldProceedPresentingSiriViewController;
- (BOOL)_shouldRequestPresentationForState:(int64_t)state forNewRequest:(id)request currentRequest:(id)currentRequest;
- (BOOL)_shouldShowSetupViewControllerForRequestSource:(int64_t)source;
- (BOOL)headphonesAuthenticated;
- (BOOL)isAmbientPresented;
- (BOOL)isEnabled;
- (BOOL)siriViewController:(id)controller attemptUnlockWithPassword:(id)password;
- (BOOL)siriViewControllerShouldEndSession:(id)session;
- (CGRect)_fallbackFrameForScreen:(id)screen withIdentifier:(int64_t)identifier;
- (CGRect)hostedPresentationFrame;
- (SiriPresentationControllerDelegate)siriPresentationControllerDelegate;
- (SiriPresentationViewController)initWithIdentifier:(int64_t)identifier hostedPresentationFrame:(CGRect)frame displayConfiguration:(id)configuration;
- (UIEdgeInsets)safeAreaInsetsForSceneCreationInSiriViewController:(id)controller;
- (double)hintGlowPresentedDelayIntervalInMs;
- (id)_createPatternFromAHAP:(id)p;
- (id)_createPresentationPropertiesWithRequestOptions:(id)options;
- (id)_createSiriViewControllerWithRequestOptions:(id)options;
- (id)_dequeueTestingInput;
- (id)_fallbackScreenForIdentifier:(int64_t)identifier;
- (id)_foregroundAppInfosForUIPresentationIdentifier:(id)identifier;
- (id)_uiPresentationIdentifier;
- (id)_updateDismissalOptionsIfNecessary:(id)necessary;
- (id)_updateRequestOptionsWithTestingInput:(id)input;
- (id)_viewHostingInstrumentationHandler;
- (id)bulletinsForSiriViewController:(id)controller;
- (id)getDeviceEngagementEvents:(id)events forDeviceEngagementTimeWindow:(double)window;
- (id)siriViewController:(id)controller bulletinWithIdentifier:(id)identifier;
- (id)siriViewController:(id)controller willStartRequestWithOptions:(id)options;
- (int64_t)_dismissalReasonForDismissalWithOptions:(id)options;
- (int64_t)_impliedDismissalReasonFromState;
- (int64_t)_presentationIdentifierFromUIPresentationIdentifier:(id)identifier;
- (int64_t)_viewModeForRequestOptions:(id)options;
- (int64_t)preferredFlamesViewFidelity;
- (unint64_t)supportedInterfaceOrientations;
- (void)_animateOutSiriEffectsView;
- (void)_applicationsDidChange;
- (void)_callIsActiveDidChangeNotification:(id)notification;
- (void)_cancelPendingActivationWithReason:(unint64_t)reason;
- (void)_carSiriButtonHoldToTalkIntervalFiredWithButtonIdentifier:(int64_t)identifier;
- (void)_checkForGuideUpdatesIfNecessary;
- (void)_cleanupUnownedConnection;
- (void)_clearAllTestingInputs;
- (void)_clearSiriViewControllerWithCompletion:(id)completion;
- (void)_dismissDueToUnexpectedError:(id)error;
- (void)_dismissSiriSetup;
- (void)_emitInstrumentationDismissalStateWithReason:(int64_t)reason;
- (void)_enableSpringBoardIdleTimer;
- (void)_enqueueTestInput:(id)input;
- (void)_failedToPresentSiriWithError:(id)error;
- (void)_finishClearingSiriViewController:(id)controller;
- (void)_handleButtonDownWhileListeningFromButtonIdentifier:(id)identifier timestamp:(id)timestamp context:(id)context;
- (void)_handleContextClearForRequestOptions:(id)options;
- (void)_instrumentSuccessfulAppLaunchIfNecessary;
- (void)_invalidateCarSiriButtonHoldToTalkTimer;
- (void)_invalidateHintGlowAssertion;
- (void)_logDismissalRequestedForViewMode:(int64_t)mode withDismissalReason:(int64_t)reason;
- (void)_logDismissalToPowerLogWithReason:(int64_t)reason;
- (void)_logSignatureWithType:(id)type subType:(id)subType context:(id)context;
- (void)_playTamaleHaptic;
- (void)_prepareSiriViewControllerWithRequestOptions:(id)options;
- (void)_presentAndBeginAnimatingEffectsForInvocationType:(int64_t)type;
- (void)_presentSiriEffectsWithRequestOptions:(id)options;
- (void)_presentSiriViewControllerWithPresentationOptions:(id)options requestOptions:(id)requestOptions;
- (void)_presentationDismissalRequestedWithOptions:(id)options withCompletion:(id)completion;
- (void)_presentationRequestedHandlerWithRequestOptions:(id)options;
- (void)_presentationRequestedWithPresentationOptions:(id)options requestOptions:(id)requestOptions;
- (void)_prewarmCameraForBundleIdentifier:(id)identifier;
- (void)_prewarmEdgeLightMetalLayers;
- (void)_processConnectionHouseKeeping;
- (void)_processIncomingRequestOptionsForTestingPayload:(id)payload;
- (void)_punchout:(id)_punchout completion:(id)completion;
- (void)_removePreviousConversationIfNeededWithTestName:(id)name testOptions:(id)options;
- (void)_removeSetupViewControllerIfNecessary;
- (void)_removeSiriEffectsViewControllerIfNeededUsingBlock:(id)block;
- (void)_requestDismissal;
- (void)_requestDismissalWithOptions:(id)options;
- (void)_requestHomeAffordanceSuppression:(int64_t)suppression;
- (void)_requestPresentationWithOptions:(id)options completion:(id)completion;
- (void)_resetStateForInstrumentation;
- (void)_restartVisualIntelligenceIfNeeded;
- (void)_runSyntheticButtonActivationTest;
- (void)_scheduleConnectionHouseKeepingAfterDelay:(double)delay;
- (void)_sendTelephonyHasStartedAfterDelay:(double)delay;
- (void)_setEngagementStatus:(id)status forType:(int64_t)type;
- (void)_setScreenOffDuringActivation:(BOOL)activation;
- (void)_setSpringBoardIdleTimerDisabled:(BOOL)disabled;
- (void)_setUpUnownedConnectionIfNecessary;
- (void)_setupPongTimer;
- (void)_setupSiriViewControllerPresentedSuccessHandler;
- (void)_setupTamaleHaptic;
- (void)_shouldProceedPresentingSiriViewController;
- (void)_showPresentationAndActivateWithRequestOptions:(id)options;
- (void)_showSetupViewControllerIfNecessary;
- (void)_siriDidOpenURL:(id)l;
- (void)_startDeviceScreenEngagementController;
- (void)_startRequestWithOptions:(id)options;
- (void)_startUIRequestWithText:(id)text testName:(id)name;
- (void)_stopDeviceScreenEngagement;
- (void)_tearDownSiriEffectsViewController;
- (void)_teardownPongTimer;
- (void)_terminateVisualIntelligenceCamera;
- (void)_updateCurrentPresentationOptions:(id)options withCompletion:(id)completion;
- (void)_updateHostedPresentationFrame;
- (void)_updateLanguageCode;
- (void)_viewHostingInstrumentationHandler;
- (void)_waitForPing;
- (void)_wasDismissedWithCompletion:(id)completion;
- (void)_watchdogQueue_startAnimationDismissalWatchdogTimerWithTimeoutHandler:(id)handler shouldTurnScreenOff:(BOOL)off;
- (void)_watchdogQueue_stopAnimationDismissalWatchdogTimerIfNeededThen:(id)then onQueue:(id)queue;
- (void)activateHintGlow;
- (void)activateWithPresentationOptionsUpdate:(id)update requestOptions:(id)options;
- (void)activateWithRequestOptions:(id)options;
- (void)activateWithSource:(int64_t)source requestOptions:(id)options timestamp:(id)timestamp;
- (void)activationDeterminedShouldDeferWake:(id)wake;
- (void)aggregateLockStateDidChange;
- (void)animatedAppearanceWithFactory:(id)factory completion:(id)completion;
- (void)animatedDisappearanceWithFactory:(id)factory completion:(id)completion;
- (void)cancelActivatedHintGlow;
- (void)cancelPendingActivationEventWithReason:(id)reason;
- (void)cancelPreheat;
- (void)dealloc;
- (void)deviceScreenEngagementController:(id)controller didGainAttentionWithEvent:(int64_t)event;
- (void)deviceWonMyriadElection;
- (void)didDismissLocationTCC:(id)c;
- (void)didPresentLocationTCC:(id)c;
- (void)dismiss;
- (void)dismissSiriViewController:(id)controller withReason:(int64_t)reason;
- (void)dismissWithOptions:(id)options;
- (void)handleButtonDownFromButtonIdentifier:(id)identifier timestamp:(id)timestamp context:(id)context;
- (void)handleButtonLongPressFromButtonIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier timestamp:(id)timestamp context:(id)context;
- (void)handleButtonTapFromButtonIdentifier:(id)identifier timestamp:(id)timestamp context:(id)context;
- (void)handleButtonUpFromButtonIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier timestamp:(id)timestamp context:(id)context;
- (void)handleRequestWithOptions:(id)options;
- (void)handleRequestWithPresentationOptionsUpdate:(id)update requestOptions:(id)options;
- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion;
- (void)invalidate;
- (void)invalidateSystemApertureAssertion;
- (void)noteApplicationTransition;
- (void)notePanBeganAtPoint:(CGPoint)point;
- (void)noteTapAtPoint:(CGPoint)point;
- (void)openSiriRequestedBySiriSetupViewController:(id)controller;
- (void)openURL:(id)l bundleId:(id)id inPlace:(BOOL)place launchOptions:(id)options completion:(id)completion;
- (void)ping;
- (void)preheatWithOptions:(id)options;
- (void)presentationDismissalRequestedWithOptions:(id)options;
- (void)presentationRequestedWithPresentationOptions:(id)options requestOptions:(id)requestOptions;
- (void)presentationStateProvider:(id)provider presentationStateDidChange:(id)change;
- (void)presentationWithIdentifier:(id)identifier didUpdatePresentationState:(id)state;
- (void)prewarmMetalLayers;
- (void)prewarmOrbViewShaders;
- (void)requestSystemApertureCollapse;
- (void)requestTamaleLaunchAnimationLayerProviderWithCompletion:(id)completion;
- (void)setCurrentLockState:(unint64_t)state;
- (void)setPresentationState:(int64_t)state;
- (void)siriEffectsViewController;
- (void)siriSAEEffectsViewController:(id)controller requestsDismissalWithHandler:(id)handler;
- (void)siriSAEEffectsViewController:(id)controller requestsPresentationWithHandler:(id)handler;
- (void)siriSessionShouldEndExtendAudioSessionForImminentPhoneCall;
- (void)siriSessionShouldExtendAudioSessionForImminentPhoneCall;
- (void)siriViewController;
- (void)siriViewController:(id)controller didCompleteRequestWithError:(id)error;
- (void)siriViewController:(id)controller didCreateSiriScene:(id)scene;
- (void)siriViewController:(id)controller didUpdateAudioCategoriesDisablingVolumeHUD:(id)d;
- (void)siriViewController:(id)controller failedToLaunchAppWithBundleIdentifier:(id)identifier;
- (void)siriViewController:(id)controller presentedIntentWithBundleId:(id)id;
- (void)siriViewController:(id)controller requestsDismissalWithReason:(int64_t)reason withCompletion:(id)completion;
- (void)siriViewController:(id)controller requestsPresentation:(id)presentation;
- (void)siriViewController:(id)controller siriIdleAndQuietStatusDidChange:(BOOL)change;
- (void)siriViewController:(id)controller updateHomeAffordanceForBlurVisibilty:(BOOL)visibilty;
- (void)siriViewController:(id)controller willProcessAppLaunchWithBundleIdentifier:(id)identifier;
- (void)siriViewController:(id)controller willStartHostingSceneWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (void)siriViewController:(id)controller willStopHostingSceneWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (void)siriViewControllerDidFinishDismissing:(id)dismissing;
- (void)siriViewControllerDidReactivateFromFlexibleFollowups;
- (void)siriViewControllerSpeechRequestCancelledFromSiriOrb;
- (void)siriViewControllerSpeechRequestStartedFromSiriOrb;
- (void)startAnimationDismissalWatchdogTimerWithTimeoutHandler:(id)handler shouldTurnScreenOff:(BOOL)off;
- (void)startGuidedAccessForSiriViewController:(id)controller;
- (void)stopAnimationDismissalWatchdogTimerIfNeededThen:(id)then onQueue:(id)queue;
- (void)toggleHomeAffordanceHidden:(BOOL)hidden;
- (void)updateCurrentLockState:(id)state;
- (void)updateEdgeLightWindowLevel:(int64_t)level;
- (void)viewWillLayoutSubviews;
- (void)wakeScreenAfterActivationWithReason:(id)reason;
@end

@implementation SiriPresentationViewController

- (BOOL)_shouldProceedPresentingSiriViewController
{
  clearSiriViewControllerTimer = self->_clearSiriViewControllerTimer;
  if (clearSiriViewControllerTimer && os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [SiriPresentationViewController _shouldProceedPresentingSiriViewController];
  }

  return clearSiriViewControllerTimer == 0;
}

- (AFUISiriViewController)siriViewController
{
  siriViewController = self->_siriViewController;
  if (!siriViewController)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SiriPresentationViewController *)v4 siriViewController];
    }

    siriViewController = self->_siriViewController;
  }

  return siriViewController;
}

- (int64_t)preferredFlamesViewFidelity
{
  if (MGGetBoolAnswer())
  {
    return 0;
  }

  MGGetProductType();
  return 2;
}

- (void)_updateHostedPresentationFrame
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  [OUTLINED_FUNCTION_3_0() hostedPresentationFrame];
  v3 = NSStringFromCGRect(v10);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (CGRect)hostedPresentationFrame
{
  x = self->_hostedPresentationFrame.origin.x;
  y = self->_hostedPresentationFrame.origin.y;
  width = self->_hostedPresentationFrame.size.width;
  height = self->_hostedPresentationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_removeSetupViewControllerIfNecessary
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v6 = 136315394;
    v7 = "[SiriPresentationViewController _removeSetupViewControllerIfNecessary]";
    v8 = 1024;
    siriSetupViewControllerPresented = [(SiriPresentationViewController *)self siriSetupViewControllerPresented];
    _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation _removeSetupViewControllerIfNecessary siriSetupViewControllerPresented: %d", &v6, 0x12u);
  }

  if (self->_siriSetupViewController && [(SiriPresentationViewController *)self siriSetupViewControllerPresented])
  {
    [(UINavigationController *)self->_siriSetupNavigationController dismissViewControllerAnimated:0 completion:0];
    [(SiriPresentationViewController *)self setSiriSetupNavigationController:0];
    [(SiriPresentationViewController *)self setSiriSetupViewController:0];
    [(SiriPresentationViewController *)self setSiriSetupViewControllerPresented:0];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_viewHostingInstrumentationHandler
{
  viewHostingInstrumentationHandler = self->_viewHostingInstrumentationHandler;
  if (!viewHostingInstrumentationHandler)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      [(SiriPresentationViewController *)v4 _viewHostingInstrumentationHandler:v5];
    }

    v12 = objc_opt_new();
    v13 = self->_viewHostingInstrumentationHandler;
    self->_viewHostingInstrumentationHandler = v12;

    viewHostingInstrumentationHandler = self->_viewHostingInstrumentationHandler;
  }

  return viewHostingInstrumentationHandler;
}

- (void)viewWillLayoutSubviews
{
  view = [(SiriPresentationViewController *)self view];
  [view bounds];
  if (CGRectEqualToRect(v21, *MEMORY[0x277CBF3A0]))
  {
    [(SiriPresentationViewController *)self hostedPresentationFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    view2 = [(SiriPresentationViewController *)self view];
    [view2 bounds];
    v5 = v13;
    v7 = v14;
    v9 = v15;
    v11 = v16;
  }

  if ([(SiriPresentationViewController *)self siriViewControllerConfigured])
  {
    siriViewController = [(SiriPresentationViewController *)self siriViewController];
    [siriViewController setHostedPresentationFrame:{v5, v7, v9, v11}];

    siriViewController2 = [(SiriPresentationViewController *)self siriViewController];
    view3 = [siriViewController2 view];
    [view3 setFrame:{v5, v7, v9, v11}];
  }
}

- (void)_viewHostingInstrumentationHandler
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_21FEE5000, self, a3, "%s SiriPresentationViewController initializing new platform hosting instrumentation handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (SiriPresentationControllerDelegate)siriPresentationControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->siriPresentationControllerDelegate);

  return WeakRetained;
}

- (void)ping
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[SiriPresentationViewController ping]";
    _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s #pingpong received ping", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  objc_copyWeak(&v5, buf);
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __38__SiriPresentationViewController_ping__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SiriPresentationViewController ping]_block_invoke";
    _os_log_impl(&dword_21FEE5000, v2, OS_LOG_TYPE_DEFAULT, "%s #pingpong on main thread", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setupPongTimer];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_setupPongTimer
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[SiriPresentationViewController _setupPongTimer]";
    _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s #pingpong", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = MEMORY[0x277CBEBB8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__SiriPresentationViewController__setupPongTimer__block_invoke;
  v9[3] = &unk_278430978;
  objc_copyWeak(&v10, buf);
  v5 = [v4 timerWithTimeInterval:0 repeats:v9 block:1.0];
  pongTimer = [(SiriPresentationViewController *)self pongTimer];
  [pongTimer invalidate];

  [(SiriPresentationViewController *)self setPongTimer:v5];
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [currentRunLoop addTimer:v5 forMode:*MEMORY[0x277CBE738]];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __49__SiriPresentationViewController__setupPongTimer__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _shouldKeepPonging];

  v4 = *MEMORY[0x277CEF098];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = v4;
      v7 = objc_loadWeakRetained((a1 + 32));
      v8 = [v7 connection];
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = [v9 connection];
      v11 = [v10 remoteTarget];
      v17 = 136315650;
      v18 = "[SiriPresentationViewController _setupPongTimer]_block_invoke";
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s #pingpong sending pong and waiting for ping - connection: %@ | remoteTarget: %@", &v17, 0x20u);
    }

    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = [v12 connection];
    v14 = [v13 remoteTarget];
    [v14 pong];

    v15 = objc_loadWeakRetained((a1 + 32));
    [v15 _waitForPing];
  }

  else if (v5)
  {
    v17 = 136315138;
    v18 = "[SiriPresentationViewController _setupPongTimer]_block_invoke";
    _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s #pingpong tried to send pong but _shouldKeepPonging == NO", &v17, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldKeepPonging
{
  if ([(SiriPresentationViewController *)self siriViewControllerConfigured])
  {
    siriViewController = [(SiriPresentationViewController *)self siriViewController];
    isVisible = [siriViewController isVisible];
  }

  else
  {
    isVisible = 0;
  }

  if (self->_currentViewMode)
  {
    siriViewControllerConfigured = 0;
  }

  else
  {
    siriViewControllerConfigured = [(SiriPresentationViewController *)self siriViewControllerConfigured];
  }

  siriSetupNavigationController = [(SiriPresentationViewController *)self siriSetupNavigationController];

  if (self->_currentViewMode == 5 && [(SiriPresentationViewController *)self siriViewControllerConfigured])
  {
    siriViewController2 = [(SiriPresentationViewController *)self siriViewController];
    v8 = [siriViewController2 isVisible] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return (isVisible | siriViewControllerConfigured | v8) & 1 | (siriSetupNavigationController != 0);
}

- (void)_waitForPing
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[SiriPresentationViewController _waitForPing]";
    _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s #pingpong", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = MEMORY[0x277CBEBB8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__SiriPresentationViewController__waitForPing__block_invoke;
  v8[3] = &unk_278430978;
  objc_copyWeak(&v9, buf);
  v5 = [v4 scheduledTimerWithTimeInterval:0 repeats:v8 block:2.0];
  pongTimer = [(SiriPresentationViewController *)self pongTimer];
  [pongTimer invalidate];

  [(SiriPresentationViewController *)self setPongTimer:v5];
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)deviceWonMyriadElection
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SiriPresentationViewController deviceWonMyriadElection]";
    _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s #myriadUI Device won myriad Election, hiding VoiceActivationMAskView", &v5, 0xCu);
  }

  [(AFUISiriViewController *)self->_siriViewController hideVoiceActivationMaskViewIfNecessary];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateCarSiriButtonHoldToTalkTimer
{
  v13 = *MEMORY[0x277D85DE8];
  _carSiriButtonHoldToTalkTimer = [(SiriPresentationViewController *)self _carSiriButtonHoldToTalkTimer];

  if (_carSiriButtonHoldToTalkTimer)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v5 = v4;
      _carSiriButtonHoldToTalkTimer2 = [(SiriPresentationViewController *)self _carSiriButtonHoldToTalkTimer];
      v9 = 136315394;
      v10 = "[SiriPresentationViewController _invalidateCarSiriButtonHoldToTalkTimer]";
      v11 = 2112;
      v12 = _carSiriButtonHoldToTalkTimer2;
      _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_INFO, "%s #activation Invalidating _carSiriButtonHoldToTalkTimer (%@)…", &v9, 0x16u);
    }

    _carSiriButtonHoldToTalkTimer3 = [(SiriPresentationViewController *)self _carSiriButtonHoldToTalkTimer];
    [_carSiriButtonHoldToTalkTimer3 invalidate];

    [(SiriPresentationViewController *)self _setCarSiriButtonHoldToTalkTimer:0];
    [(SiriPresentationViewController *)self _setCarSiriButtonTimeInterval:0.0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_releaseExistingTrigger
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    if (self->_buttonTrigger)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v9 = 136315394;
    v10 = "[SiriPresentationViewController _releaseExistingTrigger]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s _buttonTrigger=%@", &v9, 0x16u);
  }

  buttonTrigger = self->_buttonTrigger;
  if (buttonTrigger)
  {
    buttonTrigger[2](self->_buttonTrigger, 2);
    v6 = self->_buttonTrigger;
    self->_buttonTrigger = 0;

    [(SiriPresentationViewController *)self _setButtonDownEventDidOccur:0];
  }

  result = buttonTrigger != 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_uiPresentationIdentifier
{
  identifier = self->_identifier;
  v3 = @"com.apple.siri.CarDisplay";
  if (identifier > 2)
  {
    if (identifier == 3)
    {
      if ([MEMORY[0x277CEF4D0] saeAvailable])
      {
        return @"com.apple.siri.SystemAssistantExperience";
      }

      else
      {
        return @"com.apple.siri.Compact";
      }
    }

    else if (identifier == 4)
    {
      return @"com.apple.siri.SiriTVPresentation";
    }
  }

  else if (identifier)
  {
    if (identifier == 1)
    {
      mEMORY[0x277D551B0] = [MEMORY[0x277D551B0] sharedSystemState];
      if (([mEMORY[0x277D551B0] isConnectedToEyesFreeDevice] & 1) != 0 || (objc_msgSend(mEMORY[0x277D551B0], "isConnectedToBluetoothVehicle") & 1) != 0 || objc_msgSend(mEMORY[0x277D551B0], "carDNDActive"))
      {
        [MEMORY[0x277CEF4D0] saeAvailable];
        v3 = @"com.apple.siri.EyesFree";
      }

      else
      {
        _AFPreferencesAlwaysEyesFreeEnabled = [(SiriPresentationViewController *)self _AFPreferencesAlwaysEyesFreeEnabled];
        saeAvailable = [MEMORY[0x277CEF4D0] saeAvailable];
        v9 = @"com.apple.siri.Compact";
        if (saeAvailable)
        {
          v9 = @"com.apple.siri.SystemAssistantExperience";
        }

        if (_AFPreferencesAlwaysEyesFreeEnabled)
        {
          v3 = @"com.apple.siri.EyesFree";
        }

        else
        {
          v3 = v9;
        }
      }
    }
  }

  else
  {
    return @"com.apple.siri.Compact";
  }

  return v3;
}

- (BOOL)_hasTestingInput
{
  _testInputQueue = [(SiriPresentationViewController *)self _testInputQueue];
  frontObject = [_testInputQueue frontObject];
  v4 = frontObject != 0;

  return v4;
}

- (BOOL)isAmbientPresented
{
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  siriPresentationControllerDelegate2 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  isAmbientActive = [siriPresentationControllerDelegate2 isAmbientActive];

  return isAmbientActive;
}

- (BOOL)headphonesAuthenticated
{
  headphonesAuthenticationManager = self->_headphonesAuthenticationManager;
  if (headphonesAuthenticationManager)
  {
    LOBYTE(headphonesAuthenticationManager) = [(SASHeadphonesAuthenticationManager *)headphonesAuthenticationManager isAuthenticated];
  }

  return headphonesAuthenticationManager;
}

- (void)prewarmOrbViewShaders
{
  v12 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CEF4D0] saeAvailable] & 1) == 0)
  {
    v2 = objc_alloc(MEMORY[0x277D61A68]);
    v3 = [v2 initWithFrame:{0.0, 0.0, *MEMORY[0x277CEF6B0], *(MEMORY[0x277CEF6B0] + 8)}];
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[SiriPresentationViewController(SUIC) prewarmOrbViewShaders]";
      _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s #orbView Creating temporary orbView for prewarming", buf, 0xCu);
    }

    v5 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SiriPresentationViewController_SUIC__prewarmOrbViewShaders__block_invoke;
    block[3] = &unk_27842FF78;
    v9 = v3;
    v6 = v3;
    dispatch_async(v5, block);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __61__SiriPresentationViewController_SUIC__prewarmOrbViewShaders__block_invoke(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] activateBackground:1];
  [*(a1 + 32) prewarmOrb];
  [*(a1 + 32) invalidate];
  v2 = MEMORY[0x277CD9FF0];

  return [v2 commit];
}

- (void)prewarmMetalLayers
{
  if ([MEMORY[0x277CEF4D0] saeAvailable])
  {

    [(SiriPresentationViewController *)self _prewarmEdgeLightMetalLayers];
  }

  else
  {

    [(SiriPresentationViewController *)self prewarmOrbViewShaders];
  }
}

- (void)_prewarmEdgeLightMetalLayers
{
  v2 = MEMORY[0x277CEF0C8];
  v3 = os_signpost_id_generate(*MEMORY[0x277CEF0C8]);
  v4 = *v2;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21FEE5000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SiriPresentationController+SUIC._prewarmEdgeLightMaskMetalLayers", "", buf, 2u);
  }

  [MEMORY[0x277D61A48] prewarm];
  [MEMORY[0x277D61A60] prewarm];
  v6 = *v2;
  v7 = v6;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_21FEE5000, v7, OS_SIGNPOST_INTERVAL_END, v3, "SiriPresentationController+SUIC._prewarmEdgeLightMaskMetalLayers", "", v8, 2u);
  }
}

- (SiriPresentationViewController)initWithIdentifier:(int64_t)identifier hostedPresentationFrame:(CGRect)frame displayConfiguration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v57 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  kdebug_trace();
  v52.receiver = self;
  v52.super_class = SiriPresentationViewController;
  v13 = [(SiriPresentationViewController *)&v52 init];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CEF678]) initWithDelegate:v13];
    language = v13->_language;
    v13->_language = v14;

    [(SiriPresentationViewController *)v13 _updateLanguageCode];
    v13->_presentationStateProcessingLock._os_unfair_lock_opaque = 0;
    if (identifier == 1 || identifier == 4)
    {
      v16 = [[SiriPresentationStateProvider alloc] initWithSiriPresentationIdentifier:identifier delegate:v13];
      presentationStateProvider = v13->_presentationStateProvider;
      v13->_presentationStateProvider = v16;

      if (((identifier == 1) & _os_feature_enabled_impl()) == 1)
      {
        v18 = objc_alloc_init(MEMORY[0x277D55178]);
        headphonesAuthenticationManager = v13->_headphonesAuthenticationManager;
        v13->_headphonesAuthenticationManager = v18;

        v20 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v21 = v13->_headphonesAuthenticationManager;
          *buf = 136315394;
          v54 = "[SiriPresentationViewController initWithIdentifier:hostedPresentationFrame:displayConfiguration:]";
          v55 = 2112;
          v56 = v21;
          _os_log_impl(&dword_21FEE5000, v20, OS_LOG_TYPE_DEFAULT, "%s #activation using 🎧 SASHeadphonesAuthenticationManager: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      _os_feature_enabled_impl();
    }

    [(SiriPresentationViewController *)v13 setHostedPresentationFrame:x, y, width, height];
    objc_storeStrong(&v13->_displayConfiguration, configuration);
    v13->_identifier = identifier;
    [(SiriPresentationViewController *)v13 setLock:0];
    date = [MEMORY[0x277CBEAA8] date];
    lastAppUpdateTimestamp = v13->_lastAppUpdateTimestamp;
    v13->_lastAppUpdateTimestamp = date;

    [(SiriPresentationViewController *)v13 _setShouldDeferWake:0];
    v24 = objc_alloc_init(MEMORY[0x277CEF370]);
    testInputQueue = v13->_testInputQueue;
    v13->_testInputQueue = v24;

    mEMORY[0x277D551B0] = [MEMORY[0x277D551B0] sharedSystemState];
    [mEMORY[0x277D551B0] addStateChangeListener:v13];

    v27 = +[SiriPresentationViewController _applicationStateHelper];
    [(SiriPresentationViewController *)v13 setApplicationStateHelper:v27];

    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, v13, _AppDataDidChange, @"com.apple.LaunchServices.applicationRegistered", 0, CFNotificationSuspensionBehaviorDrop);
    CFNotificationCenterAddObserver(DistributedCenter, v13, _AppDataDidChange, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorDrop);
    v29 = MEMORY[0x277CF3288];
    configuration = [MEMORY[0x277D55170] configuration];
    machServiceIdentifier = [configuration machServiceIdentifier];
    configuration2 = [MEMORY[0x277D55170] configuration];
    v33 = [configuration2 identifierForService:0];
    v34 = [v29 endpointForMachName:machServiceIdentifier service:v33 instance:0];

    v35 = [MEMORY[0x277CF3280] connectionWithEndpoint:v34];
    [(SiriPresentationViewController *)v13 setConnection:v35];

    objc_initWeak(buf, v13);
    connection = [(SiriPresentationViewController *)v13 connection];
    v46 = MEMORY[0x277D85DD0];
    v47 = 3221225472;
    v48 = __98__SiriPresentationViewController_initWithIdentifier_hostedPresentationFrame_displayConfiguration___block_invoke;
    v49 = &unk_278430278;
    v37 = v13;
    v50 = v37;
    objc_copyWeak(&v51, buf);
    [connection configureConnection:&v46];

    v38 = [(SiriPresentationViewController *)v37 connection:v46];
    [v38 activate];

    v39 = dispatch_queue_create("Animation Dismissal watchdog queue", 0);
    watchdogQueue = v37->_watchdogQueue;
    v37->_watchdogQueue = v39;

    v41 = dispatch_get_global_queue(-2, 0);
    dispatch_async(v41, &__block_literal_global_106);

    objc_destroyWeak(&v51);
    objc_destroyWeak(buf);
  }

  if (identifier != 2)
  {
    v42 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v54 = "[SiriPresentationViewController initWithIdentifier:hostedPresentationFrame:displayConfiguration:]";
      _os_log_impl(&dword_21FEE5000, v42, OS_LOG_TYPE_DEFAULT, "%s #userAttention Setting up userAttentionController", buf, 0xCu);
    }

    v43 = [[SASUIDeviceScreenEngagementController alloc] initWithSamplingInterval:1.0 attentionLostTimeout:5.0];
    [(SASUIDeviceScreenEngagementController *)v43 setDelegate:v13];
    [(SiriPresentationViewController *)v13 _setDeviceScreenEngagementController:v43];
  }

  [(SiriPresentationViewController *)v13 _startDeviceScreenEngagementController];
  kdebug_trace();

  v44 = *MEMORY[0x277D85DE8];
  return v13;
}

void __98__SiriPresentationViewController_initWithIdentifier_hostedPresentationFrame_displayConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D55188] serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = [MEMORY[0x277D55188] interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__SiriPresentationViewController_initWithIdentifier_hostedPresentationFrame_displayConfiguration___block_invoke_2;
  v8[3] = &unk_278430230;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setInvalidationHandler:v8];
  [v3 setInterruptionHandler:&__block_literal_global_2];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __98__SiriPresentationViewController_initWithIdentifier_hostedPresentationFrame_displayConfiguration___block_invoke_100;
  v6[3] = &unk_278430230;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setActivationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
}

void __98__SiriPresentationViewController_initWithIdentifier_hostedPresentationFrame_displayConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __98__SiriPresentationViewController_initWithIdentifier_hostedPresentationFrame_displayConfiguration___block_invoke_2_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 remoteTarget];
    v6 = [objc_alloc(MEMORY[0x277D55200]) initWithSiriPresentationIdentifier:{objc_msgSend(WeakRetained, "identifier")}];
    [v5 unregisterPresentationIdentifier:v6];

    v7 = [WeakRetained presentationStateProvider];
    [v7 stopProvidingPresentationStateUpdatesAndResendLastUpdateOnResumption:1];
  }
}

void __98__SiriPresentationViewController_initWithIdentifier_hostedPresentationFrame_displayConfiguration___block_invoke_99(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __98__SiriPresentationViewController_initWithIdentifier_hostedPresentationFrame_displayConfiguration___block_invoke_99_cold_1();
  }

  [v2 activate];
}

void __98__SiriPresentationViewController_initWithIdentifier_hostedPresentationFrame_displayConfiguration___block_invoke_100(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 293);
    v5 = [v7 remoteTarget];
    v6 = [objc_alloc(MEMORY[0x277D55200]) initWithSiriPresentationIdentifier:{-[os_unfair_lock_s identifier](v4, "identifier")}];
    [v5 registerPresentationIdentifier:v6];

    os_unfair_lock_unlock(v4 + 293);
    [*&v4[334]._os_unfair_lock_opaque beginProvidingPresentationStateUpdates];
  }
}

void __98__SiriPresentationViewController_initWithIdentifier_hostedPresentationFrame_displayConfiguration___block_invoke_2_103()
{
  v1 = [MEMORY[0x277CFE318] userContext];
  v0 = [MEMORY[0x277CFE338] keyPathForSiriActiveStatus];
  [v1 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v0];
}

- (void)dealloc
{
  [(SiriPresentationViewController *)self _invalidateCarSiriButtonHoldToTalkTimer];
  mEMORY[0x277D551B0] = [MEMORY[0x277D551B0] sharedSystemState];
  [mEMORY[0x277D551B0] removeStateChangeListener:self];

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, self, @"com.apple.LaunchServices.applicationRegistered", 0);
  CFNotificationCenterRemoveObserver(DistributedCenter, self, @"com.apple.LaunchServices.applicationUnregistered", 0);
  [(SiriPresentationViewController *)self _stopDeviceScreenEngagement];
  [(SiriPresentationViewController *)self invalidate];
  v5.receiver = self;
  v5.super_class = SiriPresentationViewController;
  [(SiriPresentationViewController *)&v5 dealloc];
}

- (void)invalidate
{
  kdebug_trace();
  connection = [(SiriPresentationViewController *)self connection];
  remoteTarget = [connection remoteTarget];
  v5 = [objc_alloc(MEMORY[0x277D55200]) initWithSiriPresentationIdentifier:{-[SiriPresentationViewController identifier](self, "identifier")}];
  [remoteTarget unregisterPresentationIdentifier:v5];

  connection2 = [(SiriPresentationViewController *)self connection];
  [connection2 invalidate];

  presentationStateProvider = [(SiriPresentationViewController *)self presentationStateProvider];
  [presentationStateProvider stopProvidingPresentationStateUpdatesAndResendLastUpdateOnResumption:1];

  if ([(SiriPresentationViewController *)self siriViewControllerConfigured])
  {
    siriViewController = [(SiriPresentationViewController *)self siriViewController];
    [siriViewController invalidate];
  }
}

- (void)dismiss
{
  v3 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:0 animated:1];
  [(SiriPresentationViewController *)self dismissWithOptions:v3];
}

- (void)dismissWithOptions:(id)options
{
  optionsCopy = options;
  kdebug_trace();
  os_unfair_lock_lock(&self->_lock);
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v6, &location);
  SiriUIInvokeOnMainQueue();
  [(SiriPresentationViewController *)self presentationDismissalRequestedWithOptions:optionsCopy, v5, 3221225472, __53__SiriPresentationViewController_dismissWithOptions___block_invoke, &unk_2784302A0];
  os_unfair_lock_unlock(&self->_lock);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __53__SiriPresentationViewController_dismissWithOptions___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained hintGlowAssertion];

    if (v3)
    {
      v4 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = "[SiriPresentationViewController dismissWithOptions:]_block_invoke";
        _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s SiriPresentationViewController transition to activating state for a smoother dismissal", &v7, 0xCu);
      }

      [v2 setCurrentGlowState:1];
      v5 = [v2 hintGlowAssertion];
      [v5 setSystemGlowStyle:0];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(SiriPresentationOptions *)self->_currentPresentationOptions requestSource]== 54 || [(SiriPresentationOptions *)self->_currentPresentationOptions requestSource]== 57)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[SiriPresentationViewController isEnabled]";
      _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s #VisualIntelligence - presentation always enabled for Visual Intelligence", &v11, 0xCu);
    }

    v4 = 1;
  }

  else
  {
    v5 = _AXSHomeButtonAssistant();
    mEMORY[0x277D551B0] = [MEMORY[0x277D551B0] sharedSystemState];
    if ([mEMORY[0x277D551B0] siriIsSupported])
    {
      mEMORY[0x277D551B0]2 = [MEMORY[0x277D551B0] sharedSystemState];
      siriIsEnabled = [mEMORY[0x277D551B0]2 siriIsEnabled];
      if (v5)
      {
        v4 = siriIsEnabled;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  completionCopy = completion;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [(SiriPresentationViewController *)v9 hasContentAtPoint:y completion:?];
  }

  if ([(SiriPresentationViewController *)self _activeTCCHasContentAtPoint:x, y])
  {
    v10 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
    {
      [(SiriPresentationViewController *)v10 hasContentAtPoint:y completion:?];
    }

    completionCopy[2](completionCopy, 1);
  }

  else
  {
    siriViewController = [(SiriPresentationViewController *)self siriViewController];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__SiriPresentationViewController_hasContentAtPoint_completion___block_invoke;
    v12[3] = &unk_2784302C8;
    v14 = x;
    v15 = y;
    v13 = completionCopy;
    [siriViewController hasContentAtPoint:v12 completion:{x, y}];
  }
}

uint64_t __63__SiriPresentationViewController_hasContentAtPoint_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    __63__SiriPresentationViewController_hasContentAtPoint_completion___block_invoke_cold_1(a1, v4);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)notePanBeganAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  siriViewController = [(SiriPresentationViewController *)self siriViewController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SiriPresentationViewController_notePanBeganAtPoint___block_invoke;
  v8[3] = &unk_2784302F0;
  v9 = siriViewController;
  v7 = siriViewController;
  [(SiriPresentationViewController *)self hasContentAtPoint:v8 completion:x, y];
}

- (void)noteTapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  siriViewController = [(SiriPresentationViewController *)self siriViewController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__SiriPresentationViewController_noteTapAtPoint___block_invoke;
  v8[3] = &unk_2784302F0;
  v9 = siriViewController;
  v7 = siriViewController;
  [(SiriPresentationViewController *)self hasContentAtPoint:v8 completion:x, y];
}

- (void)noteApplicationTransition
{
  siriViewController = [(SiriPresentationViewController *)self siriViewController];
  [siriViewController noteApplicationTransition];
}

- (void)animatedAppearanceWithFactory:(id)factory completion:(id)completion
{
  factoryCopy = factory;
  completionCopy = completion;
  if ([(SiriPresentationViewController *)self siriViewControllerConfigured])
  {
    objc_initWeak(&location, self);
    v8 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __75__SiriPresentationViewController_animatedAppearanceWithFactory_completion___block_invoke;
    v14[3] = &unk_278430318;
    objc_copyWeak(&v17, &location);
    v15 = factoryCopy;
    v16 = completionCopy;
    SiriUIInvokeOnMainQueue();

    v9 = v15;
LABEL_5:

    objc_destroyWeak(v8 + 6);
    objc_destroyWeak(&location);
    goto LABEL_6;
  }

  if (self->_siriSetupViewController)
  {
    objc_initWeak(&location, self);
    v8 = v10;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__SiriPresentationViewController_animatedAppearanceWithFactory_completion___block_invoke_2;
    v10[3] = &unk_278430318;
    objc_copyWeak(&v13, &location);
    v11 = factoryCopy;
    v12 = completionCopy;
    SiriUIInvokeOnMainQueue();

    v9 = v11;
    goto LABEL_5;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_6:
}

void __75__SiriPresentationViewController_animatedAppearanceWithFactory_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 164);
    v4 = v3 == 4 || v3 == 8;
    v7 = WeakRetained;
    if (v4 || ([*(WeakRetained + 174) currentRequestOptions], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isTypeToSiriRequest"), v5, v6))
    {
      [v7 _requestHomeAffordanceSuppression:0];
    }

    else if (v7[164] == 7)
    {
      [v7 _requestHomeAffordanceSuppression:2];
    }

    [v7[174] animatedAppearanceWithFactory:*(a1 + 32) completion:*(a1 + 40)];
    WeakRetained = v7;
  }
}

void __75__SiriPresentationViewController_animatedAppearanceWithFactory_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _requestHomeAffordanceSuppression:1];
    [v3[175] animatedAppearanceWithFactory:*(a1 + 32) completion:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)animatedDisappearanceWithFactory:(id)factory completion:(id)completion
{
  factoryCopy = factory;
  completionCopy = completion;
  if ([(SiriPresentationViewController *)self siriViewControllerConfigured])
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v10, &location);
    v8 = factoryCopy;
    v9 = completionCopy;
    SiriUIInvokeOnMainQueue();

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __78__SiriPresentationViewController_animatedDisappearanceWithFactory_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _tearDownSiriEffectsViewController];
    [v3[174] animatedDisappearanceWithFactory:*(a1 + 32) completion:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)aggregateLockStateDidChange
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SiriPresentationViewController aggregateLockStateDidChange]";
    _os_log_impl(&dword_21FEE5000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (AFUISiriSAEEffectsViewController)siriEffectsViewController
{
  siriEffectsViewController = self->_siriEffectsViewController;
  if (!siriEffectsViewController)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      [(SiriPresentationViewController *)v4 siriEffectsViewController:v5];
    }

    [(SiriPresentationViewController *)self _updateHostedPresentationFrame];
    v12 = objc_alloc(MEMORY[0x277CEF680]);
    _viewHostingInstrumentationHandler = [(SiriPresentationViewController *)self _viewHostingInstrumentationHandler];
    v14 = [v12 initWithDelegate:self instrumentationHandler:_viewHostingInstrumentationHandler];
    v15 = self->_siriEffectsViewController;
    self->_siriEffectsViewController = v14;

    siriEffectsViewController = self->_siriEffectsViewController;
  }

  return siriEffectsViewController;
}

- (void)didPresentLocationTCC:(id)c
{
  cCopy = c;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [SiriPresentationViewController didPresentLocationTCC:v5];
  }

  activeTCCs = self->_activeTCCs;
  if (!activeTCCs)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    v8 = self->_activeTCCs;
    self->_activeTCCs = v7;

    activeTCCs = self->_activeTCCs;
  }

  [(NSMutableSet *)activeTCCs addObject:cCopy];
}

- (void)didDismissLocationTCC:(id)c
{
  cCopy = c;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [SiriPresentationViewController didDismissLocationTCC:v5];
  }

  [(NSMutableSet *)self->_activeTCCs removeObject:cCopy];
}

- (BOOL)_activeTCCHasContentAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v27 = *MEMORY[0x277D85DE8];
  v6 = [(NSMutableSet *)self->_activeTCCs count];
  if (v6)
  {
    siriViewController = [(SiriPresentationViewController *)self siriViewController];
    view = [siriViewController view];
    window = [view window];
    screen = [window screen];

    coordinateSpace = [screen coordinateSpace];
    [MEMORY[0x277CBEB98] setWithSet:self->_activeTCCs];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v25 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = *v23;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v12);
          }

          alertController = [*(*(&v22 + 1) + 8 * i) alertController];
          view2 = [alertController view];

          [view2 convertPoint:coordinateSpace fromCoordinateSpace:{x, y}];
          v18 = [view2 hitTest:0 withEvent:?];

          if (v18)
          {
            LOBYTE(v13) = 1;
            goto LABEL_12;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v19 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [(SiriPresentationViewController *)v13 _activeTCCHasContentAtPoint:v6, v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)activateHintGlow
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

void __50__SiriPresentationViewController_activateHintGlow__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && [*(a1 + 32) _canShowHintGlow])
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[SiriPresentationViewController activateHintGlow]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s SiriPresentationViewController can show hint glow", buf, 0xCu);
    }

    v4 = [WeakRetained siriEffectsViewController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SiriPresentationViewController_activateHintGlow__block_invoke_123;
    v7[3] = &unk_278430390;
    v5 = *(a1 + 32);
    v7[4] = WeakRetained;
    v7[5] = v5;
    [v4 requestPresentationWithHandler:v7];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __50__SiriPresentationViewController_activateHintGlow__block_invoke_123(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__SiriPresentationViewController_activateHintGlow__block_invoke_2;
    aBlock[3] = &unk_27842FF78;
    aBlock[4] = *(a1 + 32);
    v3 = _Block_copy(aBlock);
    v4 = [*(a1 + 40) siriViewController];
    v5 = [v4 shouldPlaceEffectsWindowOnTopOfSiriWindow];

    if (v5)
    {
      [*(a1 + 32) updateEdgeLightWindowLevel:1];
    }

    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[SiriPresentationViewController activateHintGlow]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s SiriPresentationViewController requesting .Activating hint glow effect", buf, 0xCu);
    }

    v7 = [MEMORY[0x277D66A98] sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__SiriPresentationViewController_activateHintGlow__block_invoke_125;
    v10[3] = &unk_278430368;
    v10[4] = *(a1 + 32);
    v11 = v3;
    v8 = v3;
    [v7 requestSystemGlowEffectWithInitialStyle:0 completion:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __50__SiriPresentationViewController_activateHintGlow__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) siriEffectsViewController];
  [v1 beginHintingForInvocationType:1];
}

void __50__SiriPresentationViewController_activateHintGlow__block_invoke_125(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = v3;
  SiriUIInvokeOnMainQueue();
}

void __50__SiriPresentationViewController_activateHintGlow__block_invoke_2_126(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x277CEF098];
  v4 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v6 = 136315138;
      v7 = "[SiriPresentationViewController activateHintGlow]_block_invoke_2";
      _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s SiriPresentationViewController began .Activating hint glow effect", &v6, 0xCu);
    }

    [*(a1 + 40) setCurrentGlowState:1];
    [*(a1 + 40) setHintGlowAssertion:*(a1 + 32)];
    (*(*(a1 + 48) + 16))();
  }

  else if (v4)
  {
    v6 = 136315138;
    v7 = "[SiriPresentationViewController activateHintGlow]_block_invoke";
    _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s SiriPresentationViewController failed to acquire .Activating hint glow effect", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canShowHintGlow
{
  if (![(SiriPresentationViewController *)self _isSpringBoardMainScreenPresentation])
  {
    return 0;
  }

  siriEffectsViewController = [(SiriPresentationViewController *)self siriEffectsViewController];
  v4 = [siriEffectsViewController state] == 0;

  return v4;
}

- (void)cancelActivatedHintGlow
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

void __57__SiriPresentationViewController_cancelActivatedHintGlow__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[SiriPresentationViewController cancelActivatedHintGlow]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v2, OS_LOG_TYPE_DEFAULT, "%s SiriPresentationViewController cancel hint glow activation", &v4, 0xCu);
    }

    [WeakRetained _invalidateHintGlowAssertion];
    [WeakRetained _tearDownSiriEffectsViewController];
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)presentationRequestedWithPresentationOptions:(id)options requestOptions:(id)requestOptions
{
  optionsCopy = options;
  requestOptionsCopy = requestOptions;
  kdebug_trace();
  objc_initWeak(&location, self);
  objc_copyWeak(&v10, &location);
  v8 = optionsCopy;
  v9 = requestOptionsCopy;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __94__SiriPresentationViewController_presentationRequestedWithPresentationOptions_requestOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([WeakRetained _shouldProceedPresentingSiriViewController])
    {
      [v3 _presentationRequestedWithPresentationOptions:*(a1 + 32) requestOptions:*(a1 + 40)];
    }

    else
    {
      [v3 _invalidateHintGlowAssertion];
      [v3 _failedToPresentSiriWithError:0];
    }

    WeakRetained = v3;
  }
}

- (double)hintGlowPresentedDelayIntervalInMs
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.siri.internal"];
  v3 = [v2 valueForKey:@"HintGlowPresentedDelayInMs"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 15.0;
  }

  return v5;
}

- (void)_invalidateHintGlowAssertion
{
  if (self->_currentGlowState != 2)
  {
    self->_currentGlowState = 0;
    [(SBSHardwareButtonSystemGlowStyleControlling *)self->_hintGlowAssertion invalidate];
    hintGlowAssertion = self->_hintGlowAssertion;
    self->_hintGlowAssertion = 0;
  }
}

- (void)_presentationRequestedWithPresentationOptions:(id)options requestOptions:(id)requestOptions
{
  v22 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  requestOptionsCopy = requestOptions;
  kdebug_trace();
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[SiriPresentationViewController _presentationRequestedWithPresentationOptions:requestOptions:]";
    v18 = 2112;
    v19 = optionsCopy;
    v20 = 2112;
    v21 = requestOptionsCopy;
    _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation presentationRequestedWithPresentationOptions:%@ requestOptions:%@", &v16, 0x20u);
  }

  v10 = [optionsCopy wakeScreen] ^ 1;
  v11 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[SiriPresentationViewController _presentationRequestedWithPresentationOptions:requestOptions:]";
    v18 = 1024;
    LODWORD(v19) = v10;
    _os_log_impl(&dword_21FEE5000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation Setting screen off during activation: %{BOOL}i", &v16, 0x12u);
  }

  [(SiriPresentationViewController *)self _setScreenOffDuringActivation:v10];
  -[SiriPresentationViewController setCurrentLockState:](self, "setCurrentLockState:", [requestOptionsCopy currentLockState]);
  [(SiriPresentationViewController *)self _processIncomingRequestOptionsForTestingPayload:requestOptionsCopy];
  v12 = -[SiriPresentationViewController _shouldShowSetupViewControllerForRequestSource:](self, "_shouldShowSetupViewControllerForRequestSource:", [requestOptionsCopy requestSource]);
  v13 = *v8;
  v14 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v16 = 136315138;
      v17 = "[SiriPresentationViewController _presentationRequestedWithPresentationOptions:requestOptions:]";
      _os_log_impl(&dword_21FEE5000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation showing setup view controller", &v16, 0xCu);
    }

    [(SiriPresentationViewController *)self _showSetupViewControllerIfNecessary];
  }

  else
  {
    if (v14)
    {
      v16 = 136315138;
      v17 = "[SiriPresentationViewController _presentationRequestedWithPresentationOptions:requestOptions:]";
      _os_log_impl(&dword_21FEE5000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation presenting Siri view controller", &v16, 0xCu);
    }

    [(SiriPresentationViewController *)self _removeSetupViewControllerIfNecessary];
    [(SiriPresentationViewController *)self _presentSiriViewControllerWithPresentationOptions:optionsCopy requestOptions:requestOptionsCopy];
  }

  kdebug_trace();

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_presentSiriEffectsWithRequestOptions:(id)options
{
  v32 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if ([(SiriPresentationViewController *)self _canPresentSiriEffectsViewControllerWithRequestOptions:optionsCopy])
  {
    siriEffectsViewController = [(SiriPresentationViewController *)self siriEffectsViewController];
    isInitialBringUp = [optionsCopy isInitialBringUp];
    v7 = MEMORY[0x277CEF098];
    if ((isInitialBringUp & 1) != 0 || [optionsCopy requestSource] == 20 || !-[AFUISiriSAEEffectsViewController state](self->_siriEffectsViewController, "state"))
    {
      if ([optionsCopy requestSource] == 2)
      {
        state = [siriEffectsViewController state];
        v9 = *v7;
        v10 = os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT);
        if (state == 5)
        {
          if (v10)
          {
            *buf = 136315138;
            v29 = "[SiriPresentationViewController _presentSiriEffectsWithRequestOptions:]";
            _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s SiriPresentationViewController #activation effects already presented for button invocation; starting effects animations", buf, 0xCu);
          }

          [siriEffectsViewController beginAnimatingEffectsForInvocationType:1];
        }

        else
        {
          if (v10)
          {
            v11 = v9;
            [siriEffectsViewController state];
            v12 = NSStringFromAFUISiriSAEEffectsViewControllerState();
            *buf = 136315394;
            v29 = "[SiriPresentationViewController _presentSiriEffectsWithRequestOptions:]";
            v30 = 2114;
            v31 = v12;
            _os_log_impl(&dword_21FEE5000, v11, OS_LOG_TYPE_DEFAULT, "%s SiriPresentationViewController #activation effects not presented for button invocation; requesting presentation, then animating (effects state: %{public}@)", buf, 0x16u);
          }

          [(SiriPresentationViewController *)self _presentAndBeginAnimatingEffectsForInvocationType:1];
        }
      }

      else if ([optionsCopy isVisualIntelligenceRequest])
      {
        [(SiriPresentationViewController *)self _presentAndBeginAnimatingEffectsForInvocationType:3];
      }

      else
      {
        v13 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          [siriEffectsViewController state];
          v15 = NSStringFromAFUISiriSAEEffectsViewControllerState();
          *buf = 136315394;
          v29 = "[SiriPresentationViewController _presentSiriEffectsWithRequestOptions:]";
          v30 = 2114;
          v31 = v15;
          _os_log_impl(&dword_21FEE5000, v14, OS_LOG_TYPE_DEFAULT, "%s SiriPresentationViewController #activation requesting effects presentation and animating for voice invocation (effects state: %{public}@)", buf, 0x16u);
        }

        [(SiriPresentationViewController *)self _presentAndBeginAnimatingEffectsForInvocationType:2];
      }
    }

    v16 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      [(SiriPresentationViewController *)self hintGlowPresentedDelayIntervalInMs];
      *buf = 136315394;
      v29 = "[SiriPresentationViewController _presentSiriEffectsWithRequestOptions:]";
      v30 = 2048;
      v31 = v18;
      _os_log_impl(&dword_21FEE5000, v17, OS_LOG_TYPE_DEFAULT, "%s SiriPresentationViewController delaying %lf ms for hint glow presented state.", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    [(SiriPresentationViewController *)self hintGlowPresentedDelayIntervalInMs];
    v20 = dispatch_time(0, (v19 / 1000.0 * 1000000000.0));
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __72__SiriPresentationViewController__presentSiriEffectsWithRequestOptions___block_invoke;
    v25 = &unk_2784300F8;
    objc_copyWeak(&v27, buf);
    selfCopy = self;
    dispatch_after(v20, MEMORY[0x277D85CD0], &v22);
    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  if ([optionsCopy requestSource] == 54 && !-[SiriPresentationViewController _isPresentingVisualIntelligenceCamera](self, "_isPresentingVisualIntelligenceCamera"))
  {
    [(SiriPresentationViewController *)self _playTamaleHaptic];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __72__SiriPresentationViewController__presentSiriEffectsWithRequestOptions___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[171];
    v5 = *MEMORY[0x277CEF098];
    v6 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *buf = 136315138;
        v11 = "[SiriPresentationViewController _presentSiriEffectsWithRequestOptions:]_block_invoke_3";
        _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s SiriPresentationViewController transition to glow presented from activating state", buf, 0xCu);
      }

      *(v3 + 172) = 2;
      [*(v3 + 171) setSystemGlowStyle:1];
    }

    else
    {
      if (v6)
      {
        *buf = 136315138;
        v11 = "[SiriPresentationViewController _presentSiriEffectsWithRequestOptions:]_block_invoke";
        _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s SiriPresentationViewController transition to hint glow presented directly because Siri is already presented", buf, 0xCu);
      }

      v7 = [MEMORY[0x277D66A98] sharedInstance];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __72__SiriPresentationViewController__presentSiriEffectsWithRequestOptions___block_invoke_130;
      v9[3] = &unk_2784303E0;
      v9[4] = v3;
      [v7 requestSystemGlowEffectWithInitialStyle:1 completion:v9];
    }

    if ([*(a1 + 32) _isPresentingVisualIntelligenceCamera])
    {
      [v3 updateEdgeLightWindowLevel:1];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __72__SiriPresentationViewController__presentSiriEffectsWithRequestOptions___block_invoke_130(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  SiriUIInvokeOnMainQueue();
}

uint64_t __72__SiriPresentationViewController__presentSiriEffectsWithRequestOptions___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCurrentGlowState:2];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setHintGlowAssertion:v3];
}

- (BOOL)_canPresentSiriEffectsViewControllerWithRequestOptions:(id)options
{
  optionsCopy = options;
  currentViewMode = self->_currentViewMode;
  if (![(SiriPresentationViewController *)self _isSpringBoardMainScreenPresentation])
  {
    goto LABEL_7;
  }

  LOBYTE(v6) = 0;
  if (([optionsCopy isForUIFree] & 1) == 0 && currentViewMode)
  {
    if (([optionsCopy isTypeToSiriRequest] & 1) == 0 && objc_msgSend(MEMORY[0x277CEF4D0], "saeAvailable"))
    {
      v6 = [optionsCopy isVisualIntelligenceRequest] ^ 1;
      goto LABEL_8;
    }

LABEL_7:
    LOBYTE(v6) = 0;
  }

LABEL_8:

  return v6;
}

- (void)_presentAndBeginAnimatingEffectsForInvocationType:(int64_t)type
{
  objc_initWeak(&location, self);
  siriEffectsViewController = [(SiriPresentationViewController *)self siriEffectsViewController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__SiriPresentationViewController__presentAndBeginAnimatingEffectsForInvocationType___block_invoke;
  v6[3] = &unk_278430408;
  objc_copyWeak(v7, &location);
  v6[4] = self;
  v7[1] = type;
  [siriEffectsViewController requestPresentationWithHandler:v6];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

uint64_t __84__SiriPresentationViewController__presentAndBeginAnimatingEffectsForInvocationType___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v5 = [*(a1 + 32) siriViewController];
    v6 = [v5 shouldPlaceEffectsWindowOnTopOfSiriWindow];

    if (v6)
    {
      [v11 updateEdgeLightWindowLevel:1];
    }

    if (a2)
    {
      v7 = [v11 siriViewController];
      v8 = [v11 siriEffectsViewController];
      [v7 setEdgeLightViewProvider:v8];

      v9 = [v11 siriEffectsViewController];
      [v9 beginAnimatingEffectsForInvocationType:*(a1 + 48)];

      if ([v11 _isPresentingVisualIntelligenceCamera])
      {
        [v11 updateEdgeLightWindowLevel:1];
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_tearDownSiriEffectsViewController
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__SiriPresentationViewController__tearDownSiriEffectsViewController__block_invoke;
  v3[3] = &unk_2784302A0;
  objc_copyWeak(&v4, &location);
  [(SiriPresentationViewController *)self _removeSiriEffectsViewControllerIfNeededUsingBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __68__SiriPresentationViewController__tearDownSiriEffectsViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 176);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __68__SiriPresentationViewController__tearDownSiriEffectsViewController__block_invoke_2;
    v5[3] = &unk_278430430;
    objc_copyWeak(&v6, (a1 + 32));
    [v4 requestDismissalWithHandler:v5];
    objc_destroyWeak(&v6);
  }
}

void __68__SiriPresentationViewController__tearDownSiriEffectsViewController__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = MEMORY[0x277CEF098];
    if ((a2 & 1) == 0 && os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __68__SiriPresentationViewController__tearDownSiriEffectsViewController__block_invoke_2_cold_1();
    }

    v8 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[SiriPresentationViewController _tearDownSiriEffectsViewController]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s SiriPresentationViewController setting siriEffectsVC to nil after dismissal of effects window", &v10, 0xCu);
    }

    [WeakRetained setSiriEffectsViewController:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_animateOutSiriEffectsView
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__SiriPresentationViewController__animateOutSiriEffectsView__block_invoke;
  v3[3] = &unk_2784302A0;
  objc_copyWeak(&v4, &location);
  [(SiriPresentationViewController *)self _removeSiriEffectsViewControllerIfNeededUsingBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __60__SiriPresentationViewController__animateOutSiriEffectsView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained siriViewController];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __60__SiriPresentationViewController__animateOutSiriEffectsView__block_invoke_2;
    v5[3] = &unk_2784302A0;
    objc_copyWeak(&v6, (a1 + 32));
    [v4 animateOrbViewToOffIfNecessaryWithCompletion:v5];

    objc_destroyWeak(&v6);
  }
}

void __60__SiriPresentationViewController__animateOutSiriEffectsView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _tearDownSiriEffectsViewController];
    WeakRetained = v2;
  }
}

- (void)_removeSiriEffectsViewControllerIfNeededUsingBlock:(id)block
{
  v12 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  _isSpringBoardMainScreenPresentation = [(SiriPresentationViewController *)self _isSpringBoardMainScreenPresentation];
  if ([(AFUISiriSAEEffectsViewController *)self->_siriEffectsViewController state])
  {
    v6 = blockCopy == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || !_isSpringBoardMainScreenPresentation)
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[SiriPresentationViewController _removeSiriEffectsViewControllerIfNeededUsingBlock:]";
      _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s SiriPresentationViewController don't need to remove siriEffectsVC, setting it to nil", &v10, 0xCu);
    }

    [(SiriPresentationViewController *)self setSiriEffectsViewController:0];
  }

  else
  {
    blockCopy[2](blockCopy);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldShowSetupViewControllerForRequestSource:(int64_t)source
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  v5 = [mEMORY[0x277CEF368] assistantIsEnabled] ^ 1;
  if (source == 54)
  {
    LOBYTE(v5) = 0;
  }

  if (source == 57)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (void)wakeScreenAfterActivationWithReason:(id)reason
{
  v27 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    [(SiriPresentationViewController *)self _wasScreenOffDuringActivation];
    v8 = NSStringFromBOOL();
    shouldDeferWake = self->_shouldDeferWake;
    v10 = NSStringFromBOOL();
    *buf = 136315650;
    v22 = "[SiriPresentationViewController wakeScreenAfterActivationWithReason:]";
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_21FEE5000, v7, OS_LOG_TYPE_DEFAULT, "%s #myriadUI Wake Screen was requested when _wasScreenOffDuringActivation was %@ and _shouldDeferOSiriActWake was %@", buf, 0x20u);
  }

  if ([(SiriPresentationViewController *)self _wasScreenOffDuringActivation])
  {
    siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
    v12 = [objc_opt_class() conformsToProtocol:&unk_2833C6D08];

    if (v12)
    {
      siriPresentationControllerDelegate2 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
      v14 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = "[SiriPresentationViewController wakeScreenAfterActivationWithReason:]";
        _os_log_impl(&dword_21FEE5000, v14, OS_LOG_TYPE_DEFAULT, "%s #myriadUI Asking presentationControllerDelegate to wake screen", buf, 0xCu);
      }

      [siriPresentationControllerDelegate2 screenWakeRequested];
      _analytics = [(SiriPresentationViewController *)self _analytics];
      v19 = @"reason";
      v20 = reasonCopy;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [_analytics logEventWithType:1930 context:v16];
    }
  }

  else
  {
    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "[SiriPresentationViewController wakeScreenAfterActivationWithReason:]";
      _os_log_impl(&dword_21FEE5000, v17, OS_LOG_TYPE_DEFAULT, "%s #SiriPocketStateManager: Tried to turn the screen on but it wasn't kept off at activation.", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)activationDeterminedShouldDeferWake:(id)wake
{
  v13 = *MEMORY[0x277D85DE8];
  wakeCopy = wake;
  -[SiriPresentationViewController _setShouldDeferWake:](self, "_setShouldDeferWake:", [wakeCopy BOOLValue]);
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    [wakeCopy BOOLValue];
    v7 = NSStringFromBOOL();
    v9 = 136315394;
    v10 = "[SiriPresentationViewController activationDeterminedShouldDeferWake:]";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s #myriadUI Pocket determined should cancel screen wake - %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_presentSiriViewControllerWithPresentationOptions:(id)options requestOptions:(id)requestOptions
{
  v40 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  requestOptionsCopy = requestOptions;
  kdebug_trace();
  [(SiriPresentationViewController *)self _prepareSiriViewControllerWithRequestOptions:requestOptionsCopy];
  if ([requestOptionsCopy isForUIFree])
  {
    v8 = MEMORY[0x277CEF098];
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      uiPresentationIdentifier = [requestOptionsCopy uiPresentationIdentifier];
      *buf = 136315394;
      v37 = "[SiriPresentationViewController _presentSiriViewControllerWithPresentationOptions:requestOptions:]";
      v38 = 2112;
      v39 = uiPresentationIdentifier;
      _os_log_impl(&dword_21FEE5000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation Not requesting presentation for %@, handling request directly", buf, 0x16u);
    }

    v12 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = MEMORY[0x277CCACC8];
      v14 = v12;
      currentThread = [v13 currentThread];
      qualityOfService = [currentThread qualityOfService];
      *buf = 136315394;
      v37 = "[SiriPresentationViewController _presentSiriViewControllerWithPresentationOptions:requestOptions:]";
      v38 = 2048;
      v39 = qualityOfService;
      _os_log_impl(&dword_21FEE5000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy self->_presentationStateProcessingLock about to lock with qos: %zd", buf, 0x16u);
    }

    os_unfair_lock_lock(&self->_presentationStateProcessingLock);
    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v37 = "[SiriPresentationViewController _presentSiriViewControllerWithPresentationOptions:requestOptions:]";
      _os_log_impl(&dword_21FEE5000, v17, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy self->_presentationStateProcessingLock successfully locked", buf, 0xCu);
    }

    [(SiriPresentationViewController *)self setPresentationState:3];
    os_unfair_lock_unlock(&self->_presentationStateProcessingLock);
    v18 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v37 = "[SiriPresentationViewController _presentSiriViewControllerWithPresentationOptions:requestOptions:]";
      _os_log_impl(&dword_21FEE5000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy self->_presentationStateProcessingLock unlocked", buf, 0xCu);
    }

    requestSource = [requestOptionsCopy requestSource];
    v21 = requestSource == 41 || requestSource == 38;
    [(SiriPresentationViewController *)self _updateAnnouncementRequestsPermittedWhilePresentationActive:v21];
    [(SiriPresentationViewController *)self _showPresentationAndActivateWithRequestOptions:requestOptionsCopy];
    [(SiriPresentationViewController *)self _presentationRequestedHandlerWithRequestOptions:requestOptionsCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __99__SiriPresentationViewController__presentSiriViewControllerWithPresentationOptions_requestOptions___block_invoke;
    v32[3] = &unk_278430480;
    objc_copyWeak(&v34, &location);
    v22 = requestOptionsCopy;
    v33 = v22;
    [(SiriPresentationViewController *)self _requestPresentationWithOptions:optionsCopy completion:v32];
    requestInfo = [v22 requestInfo];
    requiresUserInteraction = [requestInfo requiresUserInteraction];

    if (requiresUserInteraction && ([v22 currentLockState] & 2) != 0)
    {
      v25 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v37 = "[SiriPresentationViewController _presentSiriViewControllerWithPresentationOptions:requestOptions:]";
        _os_log_impl(&dword_21FEE5000, v25, OS_LOG_TYPE_DEFAULT, "%s #activation Device is locked during handoff; presenting passcode unlock screen.", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      siriViewController = self->_siriViewController;
      requestInfo2 = [v22 requestInfo];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __99__SiriPresentationViewController__presentSiriViewControllerWithPresentationOptions_requestOptions___block_invoke_246;
      v29[3] = &unk_2784304A8;
      objc_copyWeak(&v31, buf);
      v30 = v22;
      [(AFUISiriViewController *)siriViewController showPasscodeUnlockScreenForRequest:requestInfo2 passcodeUnlockClient:0 unlockCompletion:v29];

      objc_destroyWeak(&v31);
      objc_destroyWeak(buf);
    }

    else
    {
      [(SiriPresentationViewController *)self _showPresentationAndActivateWithRequestOptions:v22];
    }

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  kdebug_trace();

  v28 = *MEMORY[0x277D85DE8];
}

void __99__SiriPresentationViewController__presentSiriViewControllerWithPresentationOptions_requestOptions___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v5;
  v9 = a2;
  v7 = *(a1 + 32);
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v8);
}

void __99__SiriPresentationViewController__presentSiriViewControllerWithPresentationOptions_requestOptions___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v5 = *(a1 + 32);
LABEL_11:
    [v3 _failedToPresentSiriWithError:v5];
    goto LABEL_12;
  }

  if ((*(WeakRetained + 1166) & 1) == 0)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[SiriPresentationViewController _presentSiriViewControllerWithPresentationOptions:requestOptions:]_block_invoke_2";
      _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s #myriadUI Waking screen", &v7, 0xCu);
    }

    [v3 wakeScreenAfterActivationWithReason:@"MyriadUI"];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    goto LABEL_11;
  }

  if (*(a1 + 56) != 1)
  {
    v5 = 0;
    goto LABEL_11;
  }

  [v3 _presentationRequestedHandlerWithRequestOptions:*(a1 + 40)];
LABEL_12:

  v6 = *MEMORY[0x277D85DE8];
}

void __99__SiriPresentationViewController__presentSiriViewControllerWithPresentationOptions_requestOptions___block_invoke_246(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *MEMORY[0x277CEF098];
    v6 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v6)
      {
        v9 = 136315394;
        v10 = "[SiriPresentationViewController _presentSiriViewControllerWithPresentationOptions:requestOptions:]_block_invoke";
        v11 = 2048;
        v12 = a2;
        _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation Device unlock aborted with result = %ld", &v9, 0x16u);
      }

      v7 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:0 animated:1 dismissalReason:14];
      [WeakRetained dismissWithOptions:v7];
    }

    else
    {
      if (v6)
      {
        v9 = 136315138;
        v10 = "[SiriPresentationViewController _presentSiriViewControllerWithPresentationOptions:requestOptions:]_block_invoke";
        _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation Device is now unlocked; proceeding with the handoff request.", &v9, 0xCu);
      }

      [WeakRetained _showPresentationAndActivateWithRequestOptions:*(a1 + 32)];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_startDeviceScreenEngagementController
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _os_feature_enabled_impl();
  v4 = *MEMORY[0x277CEF098];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 136315138;
      v12 = "[SiriPresentationViewController _startDeviceScreenEngagementController]";
      _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s #userAttention Starting device screen engagement", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    _deviceScreenEngagementController = [(SiriPresentationViewController *)self _deviceScreenEngagementController];
    v7 = MEMORY[0x277D85CD0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__SiriPresentationViewController__startDeviceScreenEngagementController__block_invoke;
    v9[3] = &unk_2784304D0;
    objc_copyWeak(&v10, buf);
    [_deviceScreenEngagementController startIfNeededForTypes:10 completionQueue:MEMORY[0x277D85CD0] completion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else if (v5)
  {
    *buf = 136315138;
    v12 = "[SiriPresentationViewController _startDeviceScreenEngagementController]";
    _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s #modes Response framework is not enabled.", buf, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __72__SiriPresentationViewController__startDeviceScreenEngagementController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __72__SiriPresentationViewController__startDeviceScreenEngagementController__block_invoke_cold_1(a1, v4, v3);
    }
  }
}

- (void)_stopDeviceScreenEngagement
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *self;
  v5 = 136315650;
  v6 = "[SiriPresentationViewController _stopDeviceScreenEngagement]";
  v7 = 2114;
  v8 = v3;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_21FEE5000, log, OS_LOG_TYPE_ERROR, "%s #userAttention Failed to stop device screen engagement: %{public}@, error: %{public}@", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_setEngagementStatus:(id)status forType:(int64_t)type
{
  deviceEngagementTimeStamps = self->_deviceEngagementTimeStamps;
  if (deviceEngagementTimeStamps)
  {
    v8 = deviceEngagementTimeStamps;
    v9 = self->_deviceEngagementTimeStamps;
    self->_deviceEngagementTimeStamps = v8;
    statusCopy = status;
  }

  else
  {
    v11 = MEMORY[0x277CBEB38];
    statusCopy2 = status;
    dictionary = [v11 dictionary];
    v9 = self->_deviceEngagementTimeStamps;
    self->_deviceEngagementTimeStamps = dictionary;
  }

  v14 = self->_deviceEngagementTimeStamps;
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [(NSMutableDictionary *)v14 setObject:status forKey:v15];
}

- (void)deviceScreenEngagementController:(id)controller didGainAttentionWithEvent:(int64_t)event
{
  v6 = [MEMORY[0x277CBEAA8] now];
  [(SiriPresentationViewController *)self _setEngagementStatus:v6 forType:event];
}

- (void)_requestPresentationWithOptions:(id)options completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  objc_storeStrong(&self->_currentPresentationOptions, options);
  [(SiriPresentationViewController *)self _updateAnnouncementRequestsPermittedWhilePresentationActive:0];
  v9 = MEMORY[0x277CEF098];
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x277CCACC8];
    v12 = v10;
    currentThread = [v11 currentThread];
    *buf = 136315394;
    v31 = "[SiriPresentationViewController _requestPresentationWithOptions:completion:]";
    v32 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_21FEE5000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy self->_presentationStateProcessingLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_presentationStateProcessingLock);
  v14 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[SiriPresentationViewController _requestPresentationWithOptions:completion:]";
    _os_log_impl(&dword_21FEE5000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy self->_presentationStateProcessingLock successfully locked", buf, 0xCu);
  }

  [(SiriPresentationViewController *)self setPresentationState:1];
  os_unfair_lock_unlock(&self->_presentationStateProcessingLock);
  v15 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[SiriPresentationViewController _requestPresentationWithOptions:completion:]";
    _os_log_impl(&dword_21FEE5000, v15, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy self->_presentationStateProcessingLock unlocked", buf, 0xCu);
  }

  v16 = objc_alloc(MEMORY[0x277D55198]);
  requestSource = [optionsCopy requestSource];
  _uiPresentationIdentifier = [(SiriPresentationViewController *)self _uiPresentationIdentifier];
  v19 = [v16 initWithRequestSource:requestSource uiPresentationIdentifier:_uiPresentationIdentifier];

  siriViewController = [(SiriPresentationViewController *)self siriViewController];
  [siriViewController siriWillBePresented:{objc_msgSend(v19, "requestSource")}];
  objc_initWeak(buf, self);
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __77__SiriPresentationViewController__requestPresentationWithOptions_completion___block_invoke;
  v25[3] = &unk_2784304F8;
  objc_copyWeak(&v29, buf);
  v22 = v19;
  v26 = v22;
  selfCopy = self;
  v23 = completionCopy;
  v28 = v23;
  [siriPresentationControllerDelegate siriPresentation:self requestsPresentationWithOptions:optionsCopy withHandler:v25];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);

  v24 = *MEMORY[0x277D85DE8];
}

void __77__SiriPresentationViewController__requestPresentationWithOptions_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v7 = MEMORY[0x277CEF098];
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x277CCACC8];
      v10 = v8;
      v11 = [v9 currentThread];
      v21 = 136315394;
      v22 = "[SiriPresentationViewController _requestPresentationWithOptions:completion:]_block_invoke";
      v23 = 2048;
      v24 = [v11 qualityOfService];
      _os_log_impl(&dword_21FEE5000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy strongSelf->_presentationStateProcessingLock about to lock with qos: %zd", &v21, 0x16u);
    }

    os_unfair_lock_lock(WeakRetained + 272);
    v12 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = "[SiriPresentationViewController _requestPresentationWithOptions:completion:]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy strongSelf->_presentationStateProcessingLock successfully locked", &v21, 0xCu);
    }

    if (v5 || !a2)
    {
      [(os_unfair_lock_s *)WeakRetained setPresentationState:6];
      os_unfair_lock_unlock(WeakRetained + 272);
      v15 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315138;
        v22 = "[SiriPresentationViewController _requestPresentationWithOptions:completion:]_block_invoke";
        _os_log_impl(&dword_21FEE5000, v15, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy strongSelf->_presentationStateProcessingLock unlocked", &v21, 0xCu);
      }

      v16 = *&WeakRetained[336]._os_unfair_lock_opaque;
      *&WeakRetained[336]._os_unfair_lock_opaque = 0;

      v17 = [*(a1 + 40) _uiPresentationIdentifier];
      v18 = [v17 isEqualToString:@"com.apple.siri.Compact"];

      if (v18)
      {
        v19 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:0 animated:0 requestCancellationReason:11 dismissalReason:59];
        [(os_unfair_lock_s *)WeakRetained dismissWithOptions:v19];
      }
    }

    else
    {
      [(os_unfair_lock_s *)WeakRetained setPresentationState:2];
      v13 = [(os_unfair_lock_s *)WeakRetained siriViewController];
      [v13 siriWasPresented:{objc_msgSend(*(a1 + 32), "requestSource")}];

      os_unfair_lock_unlock(WeakRetained + 272);
      v14 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315138;
        v22 = "[SiriPresentationViewController _requestPresentationWithOptions:completion:]_block_invoke";
        _os_log_impl(&dword_21FEE5000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy strongSelf->_presentationStateProcessingLock unlocked", &v21, 0xCu);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_createPresentationPropertiesWithRequestOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(optionsCopy, "requestSource")}];
  [v4 setObject:v5 forKey:*MEMORY[0x277CEF648]];

  requestInfo = [optionsCopy requestInfo];

  activationEvent = [requestInfo activationEvent];
  if (activationEvent == 9 || activationEvent == 6)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CEF650]];
  }

  return v4;
}

- (void)_showPresentationAndActivateWithRequestOptions:(id)options
{
  optionsCopy = options;
  v7 = [(SiriPresentationViewController *)self _createPresentationPropertiesWithRequestOptions:optionsCopy];
  siriViewController = self->_siriViewController;
  uiPresentationIdentifier = [optionsCopy uiPresentationIdentifier];
  [(AFUISiriViewController *)siriViewController showPresentationWithIdentifier:uiPresentationIdentifier properties:v7 lockState:[(SiriPresentationViewController *)self currentLockState]];

  [(SiriPresentationViewController *)self activateWithRequestOptions:optionsCopy];
  self->_activationHandled = 1;
}

- (void)_prepareSiriViewControllerWithRequestOptions:(id)options
{
  v52 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  kdebug_trace();
  [(SiriPresentationViewController *)self _updateHostedPresentationFrame];
  if ([(SiriPresentationViewController *)self siriViewControllerConfigured])
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SiriPresentationViewController _prepareSiriViewControllerWithRequestOptions:];
    }

    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277CCA498];
    v48[0] = *MEMORY[0x277CCA450];
    v48[1] = v6;
    v49[0] = @"Reusing AFUISiriViewController is currently unsupported.";
    v49[1] = @"If this call is necessary, use siriViewControllerConfigured to check if it is ready to use";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
    v8 = [v5 errorWithDomain:@"com.apple.siri.activation" code:3 userInfo:v7];

    [(SiriPresentationViewController *)self _dismissDueToUnexpectedError:v8];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [(SiriPresentationViewController *)self resetGestureBehaviors];
    }

    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v51 = "[SiriPresentationViewController _prepareSiriViewControllerWithRequestOptions:]";
      _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation creating new AFUISiriViewController", buf, 0xCu);
    }

    v10 = [(SiriPresentationViewController *)self _createSiriViewControllerWithRequestOptions:optionsCopy];
    siriViewController = self->_siriViewController;
    self->_siriViewController = v10;

    siriViewController = [(SiriPresentationViewController *)self siriViewController];
    [(SiriPresentationViewController *)self addChildViewController:siriViewController];

    siriViewController2 = [(SiriPresentationViewController *)self siriViewController];
    view = [siriViewController2 view];
    [view setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

    view2 = [(SiriPresentationViewController *)self view];
    siriViewController3 = [(SiriPresentationViewController *)self siriViewController];
    view3 = [siriViewController3 view];
    [view2 addSubview:view3];

    siriViewController4 = [(SiriPresentationViewController *)self siriViewController];
    [siriViewController4 didMoveToParentViewController:self];

    siriViewController5 = [(SiriPresentationViewController *)self siriViewController];
    [(SiriPresentationViewController *)self hostedPresentationFrame];
    [siriViewController5 setHostedPresentationFrame:?];

    if ([optionsCopy isForStark])
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      appBundleIdentifier = [optionsCopy appBundleIdentifier];
      v21 = appBundleIdentifier;
      v22 = @"com.apple.siri";
      if (appBundleIdentifier)
      {
        v22 = appBundleIdentifier;
      }

      v23 = v22;

      if ([(__CFString *)v23 caseInsensitiveCompare:*MEMORY[0x277CEF660]]&& [(__CFString *)v23 caseInsensitiveCompare:*MEMORY[0x277CEF6A8]])
      {
        v24 = objc_alloc_init(MEMORY[0x277D47178]);
        v25 = objc_alloc_init(MEMORY[0x277D47968]);
        [v25 setBundleId:v23];
        [v24 setAppIdentifyingInfo:v25];
        v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v27 = MEMORY[0x277CEF170];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __79__SiriPresentationViewController__prepareSiriViewControllerWithRequestOptions___block_invoke;
        v45[3] = &unk_278430520;
        v46 = v23;
        v47 = v24;
        v28 = v24;
        v29 = [v27 newWithBuilder:v45];
        [v26 addObject:v29];
      }

      else
      {
        v26 = 0;
      }

      currentCarPlaySupportedOEMAppIdList = [optionsCopy currentCarPlaySupportedOEMAppIdList];

      if (currentCarPlaySupportedOEMAppIdList)
      {
        v31 = objc_alloc_init(MEMORY[0x277D471F0]);
        currentCarPlaySupportedOEMAppIdList2 = [optionsCopy currentCarPlaySupportedOEMAppIdList];
        [v31 setAppIds:currentCarPlaySupportedOEMAppIdList2];

        v33 = MEMORY[0x277CEF170];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __79__SiriPresentationViewController__prepareSiriViewControllerWithRequestOptions___block_invoke_2;
        v43[3] = &unk_278430548;
        v44 = v31;
        v34 = v31;
        v35 = [v33 newWithBuilder:v43];
        [v8 addObject:v35];
      }
    }

    else
    {
      v26 = 0;
      v8 = 0;
    }

    [(SiriPresentationViewController *)self setCurrentCarPlaySupportedOEMAppIdList:v8];
    [(SiriPresentationViewController *)self setStarkAppBundleIdentifierContext:v26];
    uiPresentationIdentifier = [optionsCopy uiPresentationIdentifier];
    v37 = [(SiriPresentationViewController *)self _foregroundAppInfosForUIPresentationIdentifier:uiPresentationIdentifier];
    [(SiriPresentationViewController *)self setContextAppInfosForSiriViewController:v37];

    [(SiriPresentationViewController *)self _handleContextClearForRequestOptions:optionsCopy];
    siriViewController6 = [(SiriPresentationViewController *)self siriViewController];
    [siriViewController6 siriWillActivateFromSource:{objc_msgSend(optionsCopy, "requestSource")}];

    siriViewController7 = [(SiriPresentationViewController *)self siriViewController];
    if ([optionsCopy isForStark])
    {
      v40 = 0;
    }

    else
    {
      v40 = [optionsCopy isForUIFree] ^ 1;
    }

    [siriViewController7 setStatusBarEnabled:v40];

    if ([optionsCopy requestSource] == 20)
    {
      siriViewController8 = [(SiriPresentationViewController *)self siriViewController];
      [siriViewController8 setShowsStatusBar:1];
    }

    kdebug_trace();
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __79__SiriPresentationViewController__prepareSiriViewControllerWithRequestOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAssociatedBundleIdentifier:v3];
  [v4 setAceContext:*(a1 + 40)];
}

- (void)_presentationRequestedHandlerWithRequestOptions:(id)options
{
  v16 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  kdebug_trace();
  if ([optionsCopy requestSource] != 20)
  {
    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    [remoteTarget didPresentSiri];
  }

  -[AFUISiriViewController siriDidActivateFromSource:](self->_siriViewController, "siriDidActivateFromSource:", [optionsCopy requestSource]);
  if ([MEMORY[0x277CEF688] availabilityState] == 1 || objc_msgSend(MEMORY[0x277CEF688], "availabilityState") == 3)
  {
    [(AFUISiriViewController *)self->_siriViewController presentRemoteViewControllerIfNecessary];
  }

  else if ([MEMORY[0x277CEF688] availabilityState] == 2)
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[SiriPresentationViewController _presentationRequestedHandlerWithRequestOptions:]";
      _os_log_impl(&dword_21FEE5000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation Device not unlocked since boot; presenting passcode unlock screen", buf, 0xCu);
    }

    isVisualIntelligenceRequest = [optionsCopy isVisualIntelligenceRequest];
    objc_initWeak(buf, self);
    siriViewController = self->_siriViewController;
    requestInfo = [optionsCopy requestInfo];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __82__SiriPresentationViewController__presentationRequestedHandlerWithRequestOptions___block_invoke;
    v11[3] = &unk_278430570;
    v12 = optionsCopy;
    objc_copyWeak(&v13, buf);
    [(AFUISiriViewController *)siriViewController showPasscodeUnlockScreenForRequest:requestInfo passcodeUnlockClient:isVisualIntelligenceRequest unlockCompletion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  kdebug_trace();

  v6 = *MEMORY[0x277D85DE8];
}

void __82__SiriPresentationViewController__presentationRequestedHandlerWithRequestOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v9 = 136315394;
      v10 = "[SiriPresentationViewController _presentationRequestedHandlerWithRequestOptions:]_block_invoke";
      v11 = 2048;
      v12 = a2;
      _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation Device unlock aborted with result = %ld", &v9, 0x16u);
    }

    v6 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:0 animated:1 dismissalReason:15];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained dismissWithOptions:v6];
  }

  else
  {
    if (v5)
    {
      v9 = 136315138;
      v10 = "[SiriPresentationViewController _presentationRequestedHandlerWithRequestOptions:]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation Device is now unlocked; proceeding with the request.", &v9, 0xCu);
    }

    v6 = [objc_alloc(MEMORY[0x277D55198]) initWithRequestSource:{objc_msgSend(*(a1 + 32), "requestSource")}];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained activateWithRequestOptions:v6];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleRequestWithOptions:(id)options
{
  optionsCopy = options;
  kdebug_trace();
  objc_initWeak(&location, self);
  v5 = optionsCopy;
  objc_copyWeak(&v6, &location);
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);
}

void __59__SiriPresentationViewController_handleRequestWithOptions___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) requestSource] == 15 || objc_msgSend(*(a1 + 32), "requestSource") == 16)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained siriViewController];
    [v3 siriWillActivateFromSource:{objc_msgSend(*(a1 + 32), "requestSource")}];
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 activateWithRequestOptions:*(a1 + 32)];
}

- (void)handleRequestWithPresentationOptionsUpdate:(id)update requestOptions:(id)options
{
  updateCopy = update;
  optionsCopy = options;
  kdebug_trace();
  objc_initWeak(&location, self);
  v8 = optionsCopy;
  objc_copyWeak(&v10, &location);
  v9 = updateCopy;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __92__SiriPresentationViewController_handleRequestWithPresentationOptionsUpdate_requestOptions___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) requestSource] == 15 || objc_msgSend(*(a1 + 32), "requestSource") == 16)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v3 = [WeakRetained siriViewController];
    [v3 siriWillActivateFromSource:{objc_msgSend(*(a1 + 32), "requestSource")}];
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  [v4 activateWithPresentationOptionsUpdate:*(a1 + 40) requestOptions:*(a1 + 32)];
}

- (void)activateWithPresentationOptionsUpdate:(id)update requestOptions:(id)options
{
  optionsCopy = options;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__SiriPresentationViewController_activateWithPresentationOptionsUpdate_requestOptions___block_invoke;
  v8[3] = &unk_278430170;
  v8[4] = self;
  v9 = optionsCopy;
  v7 = optionsCopy;
  [(SiriPresentationViewController *)self _updateCurrentPresentationOptions:update withCompletion:v8];
}

void __87__SiriPresentationViewController_activateWithPresentationOptionsUpdate_requestOptions___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __87__SiriPresentationViewController_activateWithPresentationOptionsUpdate_requestOptions___block_invoke_2;
  v2[3] = &unk_278430170;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __87__SiriPresentationViewController_activateWithPresentationOptionsUpdate_requestOptions___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) activateWithRequestOptions:*(a1 + 40)];
  v2 = [*(a1 + 32) siriViewController];
  [v2 siriWasPresented:{objc_msgSend(*(a1 + 40), "requestSource")}];
}

- (void)_updateCurrentPresentationOptions:(id)options withCompletion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  objc_initWeak(&location, self);
  objc_copyWeak(&v10, &location);
  v8 = optionsCopy;
  v9 = completionCopy;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

uint64_t __83__SiriPresentationViewController__updateCurrentPresentationOptions_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 168, *(a1 + 32));
    v3 = [v8 siriPresentationControllerDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [v8 siriPresentationControllerDelegate];
      [v5 siriPresentation:v8 didUpdatePresentationOptions:v8[168]];
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }

  return MEMORY[0x2821F9730]();
}

- (void)activateWithRequestOptions:(id)options
{
  optionsCopy = options;
  -[SiriPresentationViewController activateWithSource:requestOptions:timestamp:](self, "activateWithSource:requestOptions:timestamp:", [optionsCopy requestSource], optionsCopy, 0);
}

- (int64_t)_viewModeForRequestOptions:(id)options
{
  v16 = *MEMORY[0x277D85DE8];
  uiPresentationIdentifier = [options uiPresentationIdentifier];
  v4 = [uiPresentationIdentifier isEqualToString:@"com.apple.siri.CarDisplay"];
  v5 = MEMORY[0x277CEF098];
  if (v4)
  {
    goto LABEL_2;
  }

  if ([uiPresentationIdentifier isEqualToString:@"com.apple.siri.EyesFree"])
  {
    v6 = 4;
    goto LABEL_14;
  }

  if ([uiPresentationIdentifier isEqualToString:@"com.apple.siri.BluetoothCar"])
  {
    v6 = 8;
    goto LABEL_14;
  }

  if ([uiPresentationIdentifier isEqualToString:@"com.apple.siri.UIFree"])
  {
    goto LABEL_8;
  }

  if ([uiPresentationIdentifier isEqualToString:@"com.apple.siri.SiriTVPresentation"])
  {
    v6 = 6;
  }

  else
  {
    if (([uiPresentationIdentifier isEqualToString:@"com.apple.siri.Compact"] & 1) == 0 && (objc_msgSend(uiPresentationIdentifier, "isEqualToString:", @"com.apple.siri.SystemAssistantExperience") & 1) == 0)
    {
      if ([uiPresentationIdentifier isEqualToString:@"com.apple.siri.CarDisplay.UIFree"])
      {
LABEL_2:
        v6 = 5;
        goto LABEL_14;
      }

      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        [SiriPresentationViewController _viewModeForRequestOptions:];
      }

LABEL_8:
      v6 = 0;
      goto LABEL_14;
    }

    v6 = 7;
  }

LABEL_14:
  v7 = *v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = SiriUINSStringFromSiriUIViewMode();
    v12 = 136315394;
    v13 = "[SiriPresentationViewController _viewModeForRequestOptions:]";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation: Returning SiriUIViewMode:%@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)activateWithSource:(int64_t)source requestOptions:(id)options timestamp:(id)timestamp
{
  optionsCopy = options;
  timestampCopy = timestamp;
  if (optionsCopy)
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277D55198]);
    _uiPresentationIdentifier = [(SiriPresentationViewController *)self _uiPresentationIdentifier];
    v10 = [v11 initWithRequestSource:source uiPresentationIdentifier:_uiPresentationIdentifier];
  }

  if (!SASRequestSourceIsHTT())
  {
    goto LABEL_11;
  }

  [(SiriPresentationViewController *)self _releaseExistingTrigger];
  if (!optionsCopy)
  {
    [(SiriPresentationViewController *)self _setButtonDownEventDidOccur:1];
    [timestampCopy timeInterval];
    [(SiriPresentationViewController *)self _setButtonDownTimestamp:?];
    [timestampCopy timeInterval];
    [v10 setTimestamp:?];
    v14 = objc_alloc(MEMORY[0x277D551A0]);
    p_buttonTrigger = &self->_buttonTrigger;
    v16 = v10;
    goto LABEL_9;
  }

  [optionsCopy buttonDownTimestamp];
  if (v13 == 0.0)
  {
    [(SiriPresentationViewController *)self _setButtonDownEventDidOccur:0];
    [(SiriPresentationViewController *)self _setButtonDownTimestamp:0.0];
LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  [(SiriPresentationViewController *)self _setButtonDownEventDidOccur:1];
  [optionsCopy buttonDownTimestamp];
  [(SiriPresentationViewController *)self _setButtonDownTimestamp:?];
  v14 = objc_alloc(MEMORY[0x277D551A0]);
  p_buttonTrigger = &self->_buttonTrigger;
  v16 = optionsCopy;
LABEL_9:
  v17 = [v14 initWithRequestOptions:v16 updateHandle:p_buttonTrigger];
LABEL_12:
  objc_initWeak(&location, self);
  v18 = optionsCopy;
  v19 = v17;
  objc_copyWeak(&v21, &location);
  v20 = v10;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __78__SiriPresentationViewController_activateWithSource_requestOptions_timestamp___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _shouldShowSetupViewControllerForRequestSource:{objc_msgSend(*(a1 + 40), "requestSource")}])
  {
    v2 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[SiriPresentationViewController activateWithSource:requestOptions:timestamp:]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation showing setup view controller", buf, 0xCu);
    }

    [*(a1 + 32) _showSetupViewControllerIfNecessary];
    v3 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (*(a1 + 48))
    {
      if ([*(a1 + 40) isShortButtonPressAction] && (objc_msgSend(*(a1 + 40), "isATVRemotePTTEligible") & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 64));
        v8 = [WeakRetained siriViewController];
        [v8 shortTapActionWithRequestOptions:*(a1 + 40)];

        v11 = objc_loadWeakRetained((a1 + 64));
        v9 = [v11 siriViewController];
        [v9 presentRemoteViewControllerIfNecessary];
      }

      else
      {
        v11 = objc_loadWeakRetained((a1 + 64));
        v4 = [v11 siriViewController];
        [v4 startRequestWithActivationTrigger:*(a1 + 48)];
      }
    }

    else
    {
      v5 = objc_loadWeakRetained((a1 + 64));
      v6 = *(a1 + 40);
      if (!v6)
      {
        v6 = *(a1 + 56);
      }

      v11 = v5;
      [v5 _startRequestWithOptions:v6];
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)_startRequestWithOptions:(id)options
{
  v37 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x277CCACC8];
    v8 = v6;
    currentThread = [v7 currentThread];
    *buf = 136315394;
    v34 = "[SiriPresentationViewController _startRequestWithOptions:]";
    v35 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _presentationStateProcessingLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_presentationStateProcessingLock);
  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[SiriPresentationViewController _startRequestWithOptions:]";
    _os_log_impl(&dword_21FEE5000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _presentationStateProcessingLock successfully locked", buf, 0xCu);
  }

  presentationState = self->_presentationState;
  os_unfair_lock_unlock(&self->_presentationStateProcessingLock);
  v12 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[SiriPresentationViewController _startRequestWithOptions:]";
    _os_log_impl(&dword_21FEE5000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _presentationStateProcessingLock unlocked", buf, 0xCu);
  }

  if ([(SiriPresentationViewController *)self siriViewControllerConfigured])
  {
    siriViewController = [(SiriPresentationViewController *)self siriViewController];
    currentRequestOptions = [siriViewController currentRequestOptions];
  }

  else
  {
    currentRequestOptions = 0;
  }

  v15 = [(SiriPresentationViewController *)self _shouldRequestPresentationForState:presentationState forNewRequest:optionsCopy currentRequest:currentRequestOptions];
  v16 = [(SiriPresentationViewController *)self _shouldHandleNewRequestWithOptions:optionsCopy currentRequest:currentRequestOptions];
  if ([optionsCopy isForStark] && objc_msgSend(MEMORY[0x277CEF668], "isRequestForAnnounceNotification:", currentRequestOptions))
  {
    v17 = [MEMORY[0x277CEF668] isRequestForMessageReadBannerTap:optionsCopy];
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v17 = 0;
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v18 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[SiriPresentationViewController _startRequestWithOptions:]";
    _os_log_impl(&dword_21FEE5000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation requesting presentation for new request.", buf, 0xCu);
  }

  v19 = objc_alloc(MEMORY[0x277D55208]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __59__SiriPresentationViewController__startRequestWithOptions___block_invoke;
  v31[3] = &unk_278430610;
  v32 = optionsCopy;
  v20 = [v19 initWithBuilder:v31];
  objc_initWeak(buf, self);
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __59__SiriPresentationViewController__startRequestWithOptions___block_invoke_2;
  v27 = &unk_278430638;
  objc_copyWeak(&v29, buf);
  v30 = v17;
  selfCopy = self;
  [(SiriPresentationViewController *)self _requestPresentationWithOptions:v20 completion:&v24];
  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);

LABEL_18:
  if (v16)
  {
    if ([optionsCopy isVisualIntelligenceRequest] && -[SiriPresentationViewController identifier](self, "identifier") == 1)
    {
      [(SiriPresentationViewController *)self _restartVisualIntelligenceIfNeeded];
      [(SiriPresentationViewController *)self _prewarmCameraForBundleIdentifier:@"com.apple.VisualIntelligenceCamera"];
    }

    v21 = [(SiriPresentationViewController *)self siriViewController:v24];
    [v21 startRequestWithOptions:optionsCopy];
  }

  else
  {
    v22 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v34 = "[SiriPresentationViewController _startRequestWithOptions:]";
      _os_log_impl(&dword_21FEE5000, v22, OS_LOG_TYPE_DEFAULT, "%s #activation ignoring starting a new request.", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __59__SiriPresentationViewController__startRequestWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setRequestSource:{objc_msgSend(v3, "requestSource")}];
  [v4 setInputType:{objc_msgSend(*(a1 + 32), "inputType")}];
}

void __59__SiriPresentationViewController__startRequestWithOptions___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v8 || (a2 & 1) == 0)
  {
    [WeakRetained _failedToPresentSiriWithError:v8];
  }

  else if (*(a1 + 48) == 1 && [*(a1 + 32) siriViewControllerConfigured])
  {
    v6 = objc_alloc_init(MEMORY[0x277D5A770]);
    v7 = [*(a1 + 32) siriViewController];
    [v7 emitInstrumentationEvent:v6];
  }
}

- (void)_restartVisualIntelligenceIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_cachedSceneHostedView)
  {
    if ([(SiriPresentationViewController *)self _isPresentingVisualIntelligenceCamera])
    {
      v3 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315138;
        v11 = "[SiriPresentationViewController _restartVisualIntelligenceIfNeeded]";
        _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s #visualIntelligence visualIntelligence already active ignoring.", &v10, 0xCu);
      }
    }

    else
    {
      v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v5 = v4;
      if ((self->_currentLockState & 2) != 0)
      {
        self->_retryWindowStart = v4;
        self->_numberOfVILaunchesInRestartPeriod = 0;
        v6 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315138;
          v11 = "[SiriPresentationViewController _restartVisualIntelligenceIfNeeded]";
          _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s #visualIntelligence - terminating VI camera for invoking while locked", &v10, 0xCu);
        }

        [(SiriPresentationViewController *)self _terminateVisualIntelligenceCamera];
      }

      if (v5 - self->_retryWindowStart > 0x6FC23ABFFLL)
      {
        self->_numberOfVILaunchesInRestartPeriod = 1;
        self->_retryWindowStart = v5;
      }

      else
      {
        numberOfVILaunchesInRestartPeriod = self->_numberOfVILaunchesInRestartPeriod;
        self->_numberOfVILaunchesInRestartPeriod = numberOfVILaunchesInRestartPeriod + 1;
        if (numberOfVILaunchesInRestartPeriod >= 2)
        {
          self->_retryWindowStart = v5;
          self->_numberOfVILaunchesInRestartPeriod = 0;
          v8 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
          {
            v10 = 136315138;
            v11 = "[SiriPresentationViewController _restartVisualIntelligenceIfNeeded]";
            _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s #visualIntelligence - terminating VI camera for invoking 3x within restart period", &v10, 0xCu);
          }

          [(SiriPresentationViewController *)self _terminateVisualIntelligenceCamera];
        }
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_terminateVisualIntelligenceCamera
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  localizedDescription = [OUTLINED_FUNCTION_3_0() localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldRequestPresentationForState:(int64_t)state forNewRequest:(id)request currentRequest:(id)currentRequest
{
  requestCopy = request;
  currentRequestCopy = currentRequest;
  if ([requestCopy isForStark])
  {
    v9 = [MEMORY[0x277CEF668] shouldPresentForNewRequest:requestCopy duringCurrentRequest:currentRequestCopy];
    if (state == 3)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_shouldHandleNewRequestWithOptions:(id)options currentRequest:(id)request
{
  optionsCopy = options;
  requestCopy = request;
  if ([optionsCopy isForStark])
  {
    v7 = [MEMORY[0x277CEF668] shouldStartNewRequest:optionsCopy duringCurrentRequest:requestCopy];
  }

  else
  {
    v7 = ([optionsCopy isRemotePresentationBringUp] & 1) == 0 && (!objc_msgSend(optionsCopy, "isVisualIntelligenceRequest") || objc_msgSend(MEMORY[0x277CEF688], "availabilityState") != 2);
  }

  return v7;
}

- (CGRect)_fallbackFrameForScreen:(id)screen withIdentifier:(int64_t)identifier
{
  screenCopy = screen;
  v6 = screenCopy;
  if (identifier > 4)
  {
    v10 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v14 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    [screenCopy bounds];
    v10 = v9;
    v12 = v11;
    if (identifier == 2)
    {
      v14 = v8;
      v13 = v7 + -44.0;
    }

    else
    {
      v13 = v7;
      v14 = v8;
    }
  }

  v15 = v10;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)_fallbackScreenForIdentifier:(int64_t)identifier
{
  if (identifier > 4)
  {
    v5 = 0;
  }

  else
  {
    if (identifier == 2)
    {
      [MEMORY[0x277D759A0] _carScreen];
    }

    else
    {
      [MEMORY[0x277D759A0] mainScreen];
    }
    v5 = ;
  }

  return v5;
}

- (void)presentationDismissalRequestedWithOptions:(id)options
{
  optionsCopy = options;
  kdebug_trace();
  v5 = [(SiriPresentationViewController *)self _updateDismissalOptionsIfNecessary:optionsCopy];

  [(SiriPresentationViewController *)self _presentationDismissalRequestedWithOptions:v5 withCompletion:0];
}

- (id)_updateDismissalOptionsIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if ([necessaryCopy dismissalReason] == 8 && self->_isVoiceActivationMaskShown)
  {
    v5 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:objc_msgSend(necessaryCopy animated:"deactivationOptions") requestCancellationReason:objc_msgSend(necessaryCopy dismissalReason:"animated") shouldTurnScreenOff:{objc_msgSend(necessaryCopy, "reason"), objc_msgSend(necessaryCopy, "dismissalReason"), 1}];
  }

  else
  {
    v5 = necessaryCopy;
  }

  v6 = v5;

  return v6;
}

- (void)_presentationDismissalRequestedWithOptions:(id)options withCompletion:(id)completion
{
  v66 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v61 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]";
    v62 = 2112;
    v63 = optionsCopy;
    _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation %@", buf, 0x16u);
  }

  v10 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x277CCACC8];
    v12 = v10;
    currentThread = [v11 currentThread];
    qualityOfService = [currentThread qualityOfService];
    *buf = 136315394;
    v61 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]";
    v62 = 2048;
    v63 = qualityOfService;
    _os_log_impl(&dword_21FEE5000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _presentationStateProcessingLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_presentationStateProcessingLock);
  v15 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v61 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]";
    _os_log_impl(&dword_21FEE5000, v15, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _presentationStateProcessingLock successfully locked", buf, 0xCu);
  }

  presentationState = [(SiriPresentationViewController *)self presentationState];
  if (presentationState != 4)
  {
    [(SiriPresentationViewController *)self setPresentationState:4];
    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v61 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]";
      _os_log_impl(&dword_21FEE5000, v17, OS_LOG_TYPE_DEFAULT, "%s #activation isDismissing:YES", buf, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_presentationStateProcessingLock);
  v18 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v61 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]";
    _os_log_impl(&dword_21FEE5000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _presentationStateProcessingLock unlocked", buf, 0xCu);
  }

  if (presentationState == 4)
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    [(SiriPresentationViewController *)self _invalidateCarSiriButtonHoldToTalkTimer];
    v19 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      [(SiriPresentationViewController *)self _isDelayingSessionEnd];
      v21 = NSStringFromBOOL();
      *buf = 136315650;
      v61 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]";
      v62 = 2112;
      v63 = optionsCopy;
      v64 = 2112;
      v65 = v21;
      _os_log_impl(&dword_21FEE5000, v20, OS_LOG_TYPE_DEFAULT, "%s #activation options:%@ _isDelayingSessionEnd:%@", buf, 0x20u);
    }

    if ([(SiriPresentationViewController *)self _isDelayingSessionEnd])
    {
      v22 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v61 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]";
        _os_log_impl(&dword_21FEE5000, v22, OS_LOG_TYPE_DEFAULT, "%s #activation #noisy #punchout delaying session end, did not send willDismiss before dismissal", buf, 0xCu);
      }
    }

    else
    {
      connection = [(SiriPresentationViewController *)self connection];
      remoteTarget = [connection remoteTarget];
      [remoteTarget willDismiss];
    }

    reason = [optionsCopy reason];
    if (reason)
    {
      v26 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v61 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]";
        _os_log_impl(&dword_21FEE5000, v26, OS_LOG_TYPE_DEFAULT, "%s #cancellationReason: Passing through cancellationReason", buf, 0xCu);
      }

      siriViewController = [(SiriPresentationViewController *)self siriViewController];
      [siriViewController setSiriRequestCancellationReason:reason];
    }

    [(SiriPresentationViewController *)self _instrumentSuccessfulAppLaunchIfNecessary];
    siriViewController2 = [(SiriPresentationViewController *)self siriViewController];
    viewMode = [siriViewController2 viewMode];

    v30 = [(SiriPresentationViewController *)self _dismissalReasonForDismissalWithOptions:optionsCopy];
    [(SiriPresentationViewController *)self _logDismissalRequestedForViewMode:viewMode withDismissalReason:v30];
    v31 = MEMORY[0x277CCACA8];
    v32 = SASDismissalReasonGetName();
    v33 = [v31 stringWithFormat:@"#activation dismissal reason: %@", v32];

    IsError = SASDismissalIsError();
    v35 = *v8;
    if (IsError)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        [SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:];
      }
    }

    else if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v61 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]";
      v62 = 2112;
      v63 = v33;
      _os_log_impl(&dword_21FEE5000, v35, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
    }

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __92__SiriPresentationViewController__presentationDismissalRequestedWithOptions_withCompletion___block_invoke;
    aBlock[3] = &unk_2784306B0;
    objc_copyWeak(v58, &location);
    v36 = optionsCopy;
    v55 = v36;
    v58[1] = v30;
    selfCopy = self;
    v57 = completionCopy;
    v37 = _Block_copy(aBlock);
    if (-[SiriPresentationViewController currentViewMode](self, "currentViewMode") == 7 && [v36 shouldTurnScreenOff])
    {
      v38 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v61 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]";
        _os_log_impl(&dword_21FEE5000, v38, OS_LOG_TYPE_DEFAULT, "%s #activation #myriadUI : Animating Orb before requesting dismissal", buf, 0xCu);
      }

      -[SiriPresentationViewController startAnimationDismissalWatchdogTimerWithTimeoutHandler:shouldTurnScreenOff:](self, "startAnimationDismissalWatchdogTimerWithTimeoutHandler:shouldTurnScreenOff:", v37, [v36 shouldTurnScreenOff]);
      objc_initWeak(buf, self);
      siriViewController3 = [(SiriPresentationViewController *)self siriViewController];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __92__SiriPresentationViewController__presentationDismissalRequestedWithOptions_withCompletion___block_invoke_291;
      v51[3] = &unk_278430048;
      objc_copyWeak(&v53, buf);
      v52 = v37;
      [siriViewController3 animateOrbViewDismissalIfNecessaryWithCompletion:v51];

      objc_destroyWeak(&v53);
      objc_destroyWeak(buf);
    }

    else
    {
      v37[2](v37);
    }

    objc_copyWeak(&v50, &location);
    SiriUIInvokeOnMainQueue();
    v40 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
    {
      [(SiriPresentationViewController *)v40 _presentationDismissalRequestedWithOptions:v41 withCompletion:v42, v43, v44, v45, v46, v47];
    }

    viewHostingInstrumentationHandler = self->_viewHostingInstrumentationHandler;
    self->_viewHostingInstrumentationHandler = 0;

    objc_destroyWeak(&v50);
    objc_destroyWeak(v58);
    objc_destroyWeak(&location);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __92__SiriPresentationViewController__presentationDismissalRequestedWithOptions_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained siriPresentationControllerDelegate];
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__SiriPresentationViewController__presentationDismissalRequestedWithOptions_withCompletion___block_invoke_2;
  v7[3] = &unk_278430688;
  objc_copyWeak(v12, (a1 + 56));
  v12[1] = *(a1 + 64);
  v8 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  v9 = WeakRetained;
  v10 = v6;
  v11 = v5;
  [v3 siriPresentation:WeakRetained requestsDismissalWithOptions:v4 withHandler:v7];

  objc_destroyWeak(v12);
}

void __92__SiriPresentationViewController__presentationDismissalRequestedWithOptions_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CEF098];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]_block_invoke_2";
    _os_log_impl(&dword_21FEE5000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation handler for siriPresentation:requestsDismissalWithOptions:WithHandler:", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = *(WeakRetained + 168);
  *(WeakRetained + 168) = 0;

  if (v5 || !a2)
  {
    v11 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MEMORY[0x277CCABB0];
      v13 = v11;
      v14 = [v12 numberWithBool:a2];
      *buf = 136315650;
      v32 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]_block_invoke";
      v33 = 2112;
      v34 = v14;
      v35 = 2112;
      v36 = v5;
      _os_log_impl(&dword_21FEE5000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation handler for siriPresentation:requestsDismissalWithOptions:WithHandler: returned success:%@ error:%@. Aborting dismissal and calling resetSiriToActive to reset state.", buf, 0x20u);
    }

    v15 = [WeakRetained connection];
    v16 = [v15 remoteTarget];
    [v16 resetSiriToActive];

    v17 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v18 = MEMORY[0x277CCACC8];
      v19 = v17;
      v20 = [v18 currentThread];
      v21 = [v20 qualityOfService];
      *buf = 136315394;
      v32 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]_block_invoke";
      v33 = 2048;
      v34 = v21;
      _os_log_impl(&dword_21FEE5000, v19, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy strongSelf->_presentationStateProcessingLock about to lock with qos: %zd", buf, 0x16u);
    }

    os_unfair_lock_lock((*(a1 + 40) + 1088));
    v22 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v22, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy strongSelf->_presentationStateProcessingLock successfully locked", buf, 0xCu);
    }

    [*(a1 + 48) setPresentationState:6];
    v23 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v23, OS_LOG_TYPE_DEFAULT, "%s #activation isDismissing:NO", buf, 0xCu);
    }

    os_unfair_lock_unlock(WeakRetained + 272);
    v24 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v24, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy innerStrongSelf->_presentationStateProcessingLock unlocked", buf, 0xCu);
    }

    v25 = *(a1 + 56);
    if (v25)
    {
      (*(v25 + 16))(v25, 0);
    }
  }

  else
  {
    v10 = [WeakRetained siriViewController];
    [v10 siriWillBeginTearDownForDismissalReason:*(a1 + 72) withOriginalDismissalOptions:*(a1 + 32)];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __92__SiriPresentationViewController__presentationDismissalRequestedWithOptions_withCompletion___block_invoke_290;
    v27[3] = &unk_278430660;
    objc_copyWeak(&v29, (a1 + 64));
    v27[4] = WeakRetained;
    v28 = *(a1 + 56);
    v30 = a2;
    [WeakRetained _wasDismissedWithCompletion:v27];

    objc_destroyWeak(&v29);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __92__SiriPresentationViewController__presentationDismissalRequestedWithOptions_withCompletion___block_invoke_290(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _isDelayingSessionEnd];
    v5 = MEMORY[0x277CEF098];
    if (v4)
    {
      v6 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315138;
        v24 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]_block_invoke";
        _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation #noisy #punchout delaying session end, did not send didDismiss on dismissal", &v23, 0xCu);
      }
    }

    else
    {
      v7 = [v3 connection];
      v8 = [v7 remoteTarget];
      [v8 didDismiss];

      [v3 _teardownPongTimer];
    }

    v9 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x277CCACC8];
      v11 = v9;
      v12 = [v10 currentThread];
      v13 = [v12 qualityOfService];
      v23 = 136315394;
      v24 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]_block_invoke";
      v25 = 2048;
      v26 = v13;
      _os_log_impl(&dword_21FEE5000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy innerStrongSelf->_presentationStateProcessingLock about to lock with qos: %zd", &v23, 0x16u);
    }

    os_unfair_lock_lock((*(a1 + 32) + 1088));
    v14 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy innerStrongSelf->_presentationStateProcessingLock successfully locked", &v23, 0xCu);
    }

    [v3 setPresentationState:5];
    v15 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v15, OS_LOG_TYPE_DEFAULT, "%s #activation isDismissing:NO", &v23, 0xCu);
    }

    os_unfair_lock_unlock((*(a1 + 32) + 1088));
    v16 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v16, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy innerStrongSelf->_presentationStateProcessingLock unlocked", &v23, 0xCu);
    }

    [v3 _setShouldDeferWake:0];
    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(*(a1 + 32) + 1166);
      v19 = v17;
      v20 = NSStringFromBOOL();
      v23 = 136315394;
      v24 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]_block_invoke";
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_21FEE5000, v19, OS_LOG_TYPE_DEFAULT, "%s #myriadUI Resetting shouldDeferWake - %@", &v23, 0x16u);
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      (*(v21 + 16))(v21, *(a1 + 56));
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __92__SiriPresentationViewController__presentationDismissalRequestedWithOptions_withCompletion___block_invoke_291(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained stopAnimationDismissalWatchdogTimerIfNeededThen:*(a1 + 32) onQueue:MEMORY[0x277D85CD0]];

  v4 = objc_loadWeakRetained((a1 + 40));
  v3 = [v4 _analytics];
  [v3 logEventWithType:1931 context:0];
}

void __92__SiriPresentationViewController__presentationDismissalRequestedWithOptions_withCompletion___block_invoke_2_292(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[171])
    {
      v3 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "[SiriPresentationViewController _presentationDismissalRequestedWithOptions:withCompletion:]_block_invoke_2";
        _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s SiriPresentationViewController invalidate hint glow assertion for dismissal", &v6, 0xCu);
      }

      *(v2 + 172) = 0;
      [*(v2 + 171) invalidate];
      v4 = *(v2 + 171);
      *(v2 + 171) = 0;
    }

    [v2 _tearDownSiriEffectsViewController];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setUpUnownedConnectionIfNecessary
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    unownedConnection = self->_unownedConnection;
    v6 = MEMORY[0x277CCABB0];
    v7 = v4;
    v8 = [v6 numberWithBool:{-[SiriPresentationViewController siriViewControllerConfigured](self, "siriViewControllerConfigured")}];
    v14 = 136315650;
    v15 = "[SiriPresentationViewController _setUpUnownedConnectionIfNecessary]";
    v16 = 2112;
    v17 = unownedConnection;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_21FEE5000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation _unownedConnection: %@ , siriViewControllerConfigured: %@", &v14, 0x20u);
  }

  if (!self->_unownedConnection && ![(SiriPresentationViewController *)self siriViewControllerConfigured])
  {
    v9 = objc_alloc_init(MEMORY[0x277CEF218]);
    v10 = self->_unownedConnection;
    self->_unownedConnection = v9;

    v11 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_unownedConnection;
      v14 = 136315394;
      v15 = "[SiriPresentationViewController _setUpUnownedConnectionIfNecessary]";
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_21FEE5000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation created new _unownedConnection: %@", &v14, 0x16u);
    }

    [(SiriPresentationViewController *)self _scheduleConnectionHouseKeepingAfterDelay:2.0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)preheatWithOptions:(id)options
{
  v14 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  kdebug_trace();
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SiriPresentationViewController preheatWithOptions:]";
    v12 = 2112;
    v13 = optionsCopy;
    _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation Activation service requests preheat with options %@", buf, 0x16u);
  }

  preheatRequest = [optionsCopy preheatRequest];
  v7 = [preheatRequest configuration] == 1;

  if (!v7)
  {
    objc_initWeak(buf, self);
    objc_copyWeak(&v9, buf);
    SiriUIInvokeOnMainQueue();
    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __53__SiriPresentationViewController_preheatWithOptions___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1040) = 0;
    [WeakRetained _setUpUnownedConnectionIfNecessary];
    [v2[152] preheatWithStyle:1];
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2[152];
      v6 = 136315394;
      v7 = "[SiriPresentationViewController preheatWithOptions:]_block_invoke";
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s #activation preheated _unownedConnection: %@", &v6, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)cancelPreheat
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v5 = "[SiriPresentationViewController cancelPreheat]";
    _os_log_impl(&dword_21FEE5000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation Cancel preheat", buf, 0xCu);
  }

  SiriUIInvokeOnMainQueue();
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t __47__SiriPresentationViewController_cancelPreheat__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _cleanupUnownedConnection];
  v2 = *(a1 + 32);
  if (v2[171])
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[SiriPresentationViewController cancelPreheat]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s SiriPresentationViewController invalidate hint glow assertion for cancel preheat", &v8, 0xCu);
    }

    *(*(a1 + 32) + 1376) = 0;
    [*(*(a1 + 32) + 1368) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1368);
    *(v4 + 1368) = 0;

    v2 = *(a1 + 32);
  }

  result = [v2 _tearDownSiriEffectsViewController];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleButtonDownFromButtonIdentifier:(id)identifier timestamp:(id)timestamp context:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  timestampCopy = timestamp;
  contextCopy = context;
  kdebug_trace();
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[SiriPresentationViewController handleButtonDownFromButtonIdentifier:timestamp:context:]";
    v19 = 2112;
    v20 = identifierCopy;
    v21 = 2112;
    v22 = timestampCopy;
    _os_log_impl(&dword_21FEE5000, v11, OS_LOG_TYPE_DEFAULT, "%s handleButtonDownFromButtonIdentifier:%@ timestamp:%@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  objc_copyWeak(&v16, buf);
  v13 = identifierCopy;
  v14 = timestampCopy;
  v15 = contextCopy;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __89__SiriPresentationViewController_handleButtonDownFromButtonIdentifier_timestamp_context___block_invoke(id *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained _isSpringBoardMainScreenPresentation])
    {
      v4 = SBUIGetUserAgent();
      v5 = [v4 isScreenOn];

      v6 = [a1[4] siriButtonIdentifier] == 1 || objc_msgSend(a1[4], "siriButtonIdentifier") == 2;
      if ((v6 & v5) == 1)
      {
        [v3 _setScreenOffDuringActivation:0];
        v13 = 1;
      }

      else
      {
        v13 = v6 & (v5 ^ 1);
      }

      v14 = [a1[4] siriButtonIdentifier];
      if ((v14 > 9 || ((1 << v14) & 0x3E6) == 0) && v14 - 200 >= 2 && v14 - 100 > 1)
      {
        if (v13)
        {
          goto LABEL_36;
        }

        goto LABEL_28;
      }

      if ((v13 & 1) == 0 && ([v3 _cancelPendingPhoneCall] & 1) == 0)
      {
LABEL_28:
        [v3 activateWithSource:objc_msgSend(MEMORY[0x277D55160] timestamp:{"requestSourceForButtonIdentifier:", objc_msgSend(a1[4], "siriButtonIdentifier")), a1[5]}];
      }
    }

    else if ([v3 identifier] == 4 && (v7 = a1[6], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = a1[6];
      if ([v8 isListening])
      {
        v9 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v29 = "[SiriPresentationViewController handleButtonDownFromButtonIdentifier:timestamp:context:]_block_invoke";
          _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation Received Button Down While Listening", buf, 0xCu);
        }

        [v3 _handleButtonDownWhileListeningFromButtonIdentifier:a1[4] timestamp:a1[5] context:v8];
      }
    }

    else if (([a1[4] siriButtonIdentifier] - 5) <= 2)
    {
      if ([v3 siriViewControllerConfigured])
      {
        v10 = [v3 siriViewController];
        v11 = [v10 isVisible];

        if (v11)
        {
          [v3 _setButtonDownEventDidOccur:1];
          [a1[5] timeInterval];
          [v3 _setButtonDownTimestamp:?];
        }

        v12 = [v3 siriViewController];
        if ([v12 isListening])
        {
        }

        else
        {
          v16 = [v3 clearSiriViewControllerTimer];

          if (!v16)
          {
            [v3 _invalidateCarSiriButtonHoldToTalkTimer];
            [a1[5] timeInterval];
            [v3 _setCarSiriButtonTimeInterval:?];
            v17 = MEMORY[0x277CBEBB8];
            v22 = MEMORY[0x277D85DD0];
            v23 = 3221225472;
            v24 = __89__SiriPresentationViewController_handleButtonDownFromButtonIdentifier_timestamp_context___block_invoke_297;
            v25 = &unk_2784306D8;
            objc_copyWeak(&v27, a1 + 7);
            v26 = a1[4];
            v18 = [v17 scheduledTimerWithTimeInterval:0 repeats:&v22 block:0.4];
            [v3 _setCarSiriButtonHoldToTalkTimer:{v18, v22, v23, v24, v25}];

            v19 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = [v3 _carSiriButtonHoldToTalkTimer];
              *buf = 136315650;
              v29 = "[SiriPresentationViewController handleButtonDownFromButtonIdentifier:timestamp:context:]_block_invoke_2";
              v30 = 2112;
              v31 = v20;
              v32 = 2048;
              v33 = 0x3FD999999999999ALL;
              _os_log_impl(&dword_21FEE5000, v19, OS_LOG_TYPE_INFO, "%s #activation Started Car Siri button long press timer (%@) for %f seconds", buf, 0x20u);
            }

            objc_destroyWeak(&v27);
          }
        }
      }

      else
      {
        v15 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v29 = "[SiriPresentationViewController handleButtonDownFromButtonIdentifier:timestamp:context:]_block_invoke";
          _os_log_impl(&dword_21FEE5000, v15, OS_LOG_TYPE_INFO, "%s #activation button pressed, but AFUISiriViewController is not set up, returning early.", buf, 0xCu);
        }
      }
    }
  }

LABEL_36:

  v21 = *MEMORY[0x277D85DE8];
}

void __89__SiriPresentationViewController_handleButtonDownFromButtonIdentifier_timestamp_context___block_invoke_297(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _carSiriButtonHoldToTalkIntervalFiredWithButtonIdentifier:{objc_msgSend(*(a1 + 32), "siriButtonIdentifier")}];
    WeakRetained = v3;
  }
}

- (void)_handleButtonDownWhileListeningFromButtonIdentifier:(id)identifier timestamp:(id)timestamp context:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  timestampCopy = timestamp;
  contextCopy = context;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[SiriPresentationViewController _handleButtonDownWhileListeningFromButtonIdentifier:timestamp:context:]";
    v18 = 2112;
    v19 = identifierCopy;
    v20 = 2112;
    v21 = timestampCopy;
    _os_log_impl(&dword_21FEE5000, v11, OS_LOG_TYPE_DEFAULT, "%s _handleButtonDownWhileListeningFromButtonIdentifier:%@ timestamp:%@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  objc_copyWeak(&v15, buf);
  v13 = identifierCopy;
  v14 = contextCopy;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __104__SiriPresentationViewController__handleButtonDownWhileListeningFromButtonIdentifier_timestamp_context___block_invoke(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && [a1[4] siriButtonIdentifier] == 201 && objc_msgSend(a1[5], "isPTTEligible") && objc_msgSend(WeakRetained[174], "isListening"))
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[SiriPresentationViewController _handleButtonDownWhileListeningFromButtonIdentifier:timestamp:context:]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s #ptt We are Listening, sending Button Down While Listening to Siri View Controller", &v5, 0xCu);
    }

    [WeakRetained[174] tvRemoteSentButtonDownWhileListening];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleButtonUpFromButtonIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier timestamp:(id)timestamp context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  deviceIdentifierCopy = deviceIdentifier;
  timestampCopy = timestamp;
  contextCopy = context;
  kdebug_trace();
  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    *&buf[4] = "[SiriPresentationViewController handleButtonUpFromButtonIdentifier:deviceIdentifier:timestamp:context:]";
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    *&buf[22] = 2112;
    v24 = deviceIdentifierCopy;
    v25 = 2112;
    v26 = timestampCopy;
    v27 = 2112;
    v28 = contextCopy;
    _os_log_impl(&dword_21FEE5000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation handleButtonUpFromButtonIdentifier:%@ deviceIdentifier:%@ timestamp:%@ context:%@", buf, 0x34u);
  }

  if ([MEMORY[0x277CEF2A8] isTVPushToTalkEnabled] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = contextCopy;
  }

  else
  {
    v15 = 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v24) = 0;
  objc_initWeak(&location, self);
  objc_copyWeak(&v21, &location);
  v17 = identifierCopy;
  v18 = v15;
  v19 = contextCopy;
  v20 = deviceIdentifierCopy;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);

  v16 = *MEMORY[0x277D85DE8];
}

void __104__SiriPresentationViewController_handleButtonUpFromButtonIdentifier_deviceIdentifier_timestamp_context___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained && [WeakRetained _buttonIdentifierIsHoldToTalkTrigger:{objc_msgSend(*(a1 + 32), "siriButtonIdentifier")}])
  {
    if (([*(a1 + 32) siriButtonIdentifier] - 5) <= 2)
    {
      [WeakRetained _invalidateCarSiriButtonHoldToTalkTimer];
    }

    *(*(*(a1 + 72) + 8) + 24) = [WeakRetained _releaseExistingTrigger];
  }

  if ([*(a1 + 32) siriButtonIdentifier] == 201)
  {
    if ([*(a1 + 40) isPTTEligible] && *(*(*(a1 + 72) + 8) + 24) == 1 && (AFPreferencesTypeToSiriEnabled() & 1) == 0)
    {
      v18 = *MEMORY[0x277CEF098];
      if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v19 = *(a1 + 40);
      v8 = v18;
      [v19 remoteType];
      v20 = SiriTVStringForRemoteType();
      v21 = *(*(*(a1 + 72) + 8) + 24);
      v22 = 136315650;
      v23 = "[SiriPresentationViewController handleButtonUpFromButtonIdentifier:deviceIdentifier:timestamp:context:]_block_invoke";
      v24 = 2112;
      v25 = v20;
      v26 = 1024;
      v27 = v21;
      _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #ptt Not stopping requests as the remote - %@ is PTT Eligible, and tap released trigger - %{BOOL}d", &v22, 0x1Cu);
    }

    else
    {
      v3 = MEMORY[0x277CEF098];
      v4 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315138;
        v23 = "[SiriPresentationViewController handleButtonUpFromButtonIdentifier:deviceIdentifier:timestamp:context:]_block_invoke";
        _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s Stopping request due to wired mic tap", &v22, 0xCu);
      }

      v5 = [MEMORY[0x277D55160] requestSourceForButtonIdentifier:{objc_msgSend(*(a1 + 32), "siriButtonIdentifier")}];
      v6 = objc_alloc(MEMORY[0x277D55198]);
      v7 = [*(a1 + 48) _uiPresentationIdentifier];
      v8 = [v6 initWithRequestSource:v5 uiPresentationIdentifier:v7 buttonContext:*(a1 + 56)];

      if ([*(a1 + 64) length])
      {
        [v8 setActivationDeviceIdentifier:*(a1 + 64)];
      }

      v9 = objc_loadWeakRetained((a1 + 80));
      v10 = [v9 siriViewController];
      v11 = [v10 isListening];

      if (v11)
      {
        v12 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315138;
          v23 = "[SiriPresentationViewController handleButtonUpFromButtonIdentifier:deviceIdentifier:timestamp:context:]_block_invoke";
          _os_log_impl(&dword_21FEE5000, v12, OS_LOG_TYPE_DEFAULT, "%s Stopping request due to wired mic tap", &v22, 0xCu);
        }

        v13 = objc_loadWeakRetained((a1 + 80));
        v14 = [v13 siriViewController];
        [v14 stopRequestWithOptions:v8];
      }

      v15 = objc_loadWeakRetained((a1 + 80));
      v16 = [v15 siriViewController];
      [v16 didReceiveButtonUpWithRequestOptions:v8];
    }
  }

LABEL_20:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleButtonTapFromButtonIdentifier:(id)identifier timestamp:(id)timestamp context:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  timestampCopy = timestamp;
  contextCopy = context;
  kdebug_trace();
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[SiriPresentationViewController handleButtonTapFromButtonIdentifier:timestamp:context:]";
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&dword_21FEE5000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation handleButtonTapFromButtonIdentifier:%@", buf, 0x16u);
  }

  if (![MEMORY[0x277CEF2A8] isTVPushToTalkEnabled] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = 0;
    goto LABEL_8;
  }

  v12 = contextCopy;
  if (![v12 isPTTEligible])
  {
LABEL_8:
    objc_initWeak(buf, self);
    v15 = identifierCopy;
    objc_copyWeak(&v16, buf);
    SiriUIInvokeOnMainQueue();
    objc_destroyWeak(&v16);

    objc_destroyWeak(buf);
    goto LABEL_9;
  }

  activeDeviceBluetoothIdentifier = [v12 activeDeviceBluetoothIdentifier];
  [(SiriPresentationViewController *)self handleButtonUpFromButtonIdentifier:identifierCopy deviceIdentifier:activeDeviceBluetoothIdentifier timestamp:timestampCopy context:v12];

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
}

void __88__SiriPresentationViewController_handleButtonTapFromButtonIdentifier_timestamp_context___block_invoke(id *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18 = @"eventSource";
  v2 = [MEMORY[0x277CCACA8] stringWithSiriButtonIdentifier:{objc_msgSend(a1[4], "siriButtonIdentifier")}];
  v19[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v4 = [MEMORY[0x277CEF158] sharedAnalytics];
  v5 = AFAnalyticsEventCreateCurrent();
  [v4 logEvent:v5];

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (-[NSObject _handleTapButtonBehavior:](WeakRetained, "_handleTapButtonBehavior:", [a1[4] siriButtonIdentifier]))
  {
  }

  else
  {
    v10 = objc_loadWeakRetained(a1 + 6);
    if (([v10 _buttonIdentifierIsHoldToTalkTrigger:{objc_msgSend(a1[4], "siriButtonIdentifier")}] & 1) == 0)
    {
      goto LABEL_8;
    }

    v11 = objc_loadWeakRetained(a1 + 6);
    v12 = [v11 _releaseExistingTrigger];

    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = a1[4];
    WeakRetained = v7;
    v10 = [v8 stringWithSiriButtonIdentifier:{objc_msgSend(v9, "siriButtonIdentifier")}];
    v14 = 136315394;
    v15 = "[SiriPresentationViewController handleButtonTapFromButtonIdentifier:timestamp:context:]_block_invoke";
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_21FEE5000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%s #activation handled for %@", &v14, 0x16u);
LABEL_8:
  }

LABEL_9:
  [a1[5] _setButtonDownEventDidOccur:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleButtonLongPressFromButtonIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier timestamp:(id)timestamp context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  deviceIdentifierCopy = deviceIdentifier;
  timestampCopy = timestamp;
  contextCopy = context;
  kdebug_trace();
  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v22 = "[SiriPresentationViewController handleButtonLongPressFromButtonIdentifier:deviceIdentifier:timestamp:context:]";
    v23 = 2112;
    v24 = identifierCopy;
    v25 = 2112;
    v26 = deviceIdentifierCopy;
    v27 = 2112;
    v28 = timestampCopy;
    _os_log_impl(&dword_21FEE5000, v14, OS_LOG_TYPE_DEFAULT, "%s handleButtonLongPressFromButtonIdentifier:%@ deviceIdentifier:%@ timestamp:%@", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  objc_copyWeak(&v20, buf);
  v16 = identifierCopy;
  v17 = contextCopy;
  v18 = timestampCopy;
  v19 = deviceIdentifierCopy;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __111__SiriPresentationViewController_handleButtonLongPressFromButtonIdentifier_deviceIdentifier_timestamp_context___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[174] isListening];
    v5 = *MEMORY[0x277CEF098];
    v6 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = *(a1 + 32);
        v14 = 136315394;
        v15 = "[SiriPresentationViewController handleButtonLongPressFromButtonIdentifier:deviceIdentifier:timestamp:context:]_block_invoke";
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation handleButtonLongPressFromIdentifier:%@ whileListening:YES Ignoring", &v14, 0x16u);
      }
    }

    else
    {
      if (v6)
      {
        v8 = *(a1 + 32);
        v14 = 136315394;
        v15 = "[SiriPresentationViewController handleButtonLongPressFromButtonIdentifier:deviceIdentifier:timestamp:context:]_block_invoke";
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation handleButtonLongPressFromIdentifier:%@ whileListening:NO Starting a new request", &v14, 0x16u);
      }

      v9 = [MEMORY[0x277D55160] requestSourceForButtonIdentifier:{objc_msgSend(*(a1 + 32), "siriButtonIdentifier")}];
      v10 = objc_alloc(MEMORY[0x277D55198]);
      v11 = [*(a1 + 40) _uiPresentationIdentifier];
      v12 = [v10 initWithRequestSource:v9 uiPresentationIdentifier:v11 buttonContext:*(a1 + 48)];

      [*(a1 + 56) timeInterval];
      [v12 setButtonDownTimestamp:?];
      if ([*(a1 + 64) length])
      {
        [v12 setActivationDeviceIdentifier:*(a1 + 64)];
      }

      [v3 activateWithSource:v9 requestOptions:v12 timestamp:*(a1 + 56)];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)presentationWithIdentifier:(id)identifier didUpdatePresentationState:(id)state
{
  v17 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = v6;
    v9 = [v7 stringWithSiriPresentationIdentifier:{-[SiriPresentationViewController identifier](self, "identifier")}];
    v11 = 136315650;
    v12 = "[SiriPresentationViewController presentationWithIdentifier:didUpdatePresentationState:]";
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = stateCopy;
    _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s %@ received presentation state update %@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_handleTapButtonBehavior:(int64_t)behavior
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = v6;
    v9 = [v7 stringWithSiriButtonIdentifier:behavior];
    v29 = 136315394;
    v30 = "[SiriPresentationViewController _handleTapButtonBehavior:]";
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation _handleTapButtonBehavior:%@", &v29, 0x16u);
  }

  v10 = objc_alloc(MEMORY[0x277D55198]);
  v11 = [MEMORY[0x277D55160] requestSourceForButtonIdentifier:behavior];
  _uiPresentationIdentifier = [(SiriPresentationViewController *)self _uiPresentationIdentifier];
  v13 = [v10 initWithRequestSource:v11 uiPresentationIdentifier:_uiPresentationIdentifier];

  if (behavior > 9)
  {
    goto LABEL_19;
  }

  if (((1 << behavior) & 0x30E) != 0)
  {
    if ([(SiriPresentationViewController *)self _wasScreenOffDuringActivation])
    {
      v14 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136315138;
        v30 = "[SiriPresentationViewController _handleTapButtonBehavior:]";
        _os_log_impl(&dword_21FEE5000, v14, OS_LOG_TYPE_DEFAULT, "%s Turning on the screen because pocket state kept the screen off during activation", &v29, 0xCu);
      }

      siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
      v16 = [objc_opt_class() conformsToProtocol:&unk_2833C6D08];

      if (v16)
      {
        siriPresentationControllerDelegate2 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
        [siriPresentationControllerDelegate2 screenWakeRequested];
        _analytics = [(SiriPresentationViewController *)self _analytics];
        [_analytics logEventWithType:1930 context:&unk_2833B4E30];

        [(SiriPresentationViewController *)self _setScreenOffDuringActivation:0];
LABEL_18:

LABEL_21:
        v21 = 1;
        goto LABEL_23;
      }

LABEL_22:
      v21 = 0;
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (((1 << behavior) & 0xE0) != 0)
  {
LABEL_11:
    selfCopy2 = self;
    behaviorCopy = behavior;
    goto LABEL_12;
  }

  if (behavior != 4)
  {
LABEL_19:
    if (behavior == 201)
    {
      siriViewController = [(SiriPresentationViewController *)self siriViewController];
      [siriViewController shortTapActionWithRequestOptions:v13];

      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if ([(AFUISiriViewController *)self->_siriViewController isListening])
  {
    v22 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315138;
      v30 = "[SiriPresentationViewController _handleTapButtonBehavior:]";
      _os_log_impl(&dword_21FEE5000, v22, OS_LOG_TYPE_DEFAULT, "%s Stopping request due to wired mic tap", &v29, 0xCu);
    }

    siriPresentationControllerDelegate2 = [(SiriPresentationViewController *)self siriViewController];
    v23 = objc_alloc(MEMORY[0x277D55198]);
    _uiPresentationIdentifier2 = [(SiriPresentationViewController *)self _uiPresentationIdentifier];
    v25 = [v23 initWithRequestSource:18 uiPresentationIdentifier:_uiPresentationIdentifier2];
    [siriPresentationControllerDelegate2 stopRequestWithOptions:v25];

    goto LABEL_18;
  }

  selfCopy2 = self;
  behaviorCopy = 4;
LABEL_12:
  v21 = [(SiriPresentationViewController *)selfCopy2 _handleTapDismissal:behaviorCopy];
LABEL_23:

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)_handleTapDismissal:(int64_t)dismissal
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(SiriPresentationViewController *)self _cancelPendingPhoneCall])
  {
LABEL_6:
    v6 = 1;
    goto LABEL_7;
  }

  if (self->_siriSetupViewController)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[SiriPresentationViewController _handleTapDismissal:]";
      _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s Dismissing Siri setup due to button tap", &v20, 0xCu);
    }

    [(SiriPresentationViewController *)self _dismissSiriSetup];
    goto LABEL_6;
  }

  siriViewControllerConfigured = [(SiriPresentationViewController *)self siriViewControllerConfigured];
  v10 = *MEMORY[0x277CEF098];
  v11 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (siriViewControllerConfigured)
  {
    if (v11)
    {
      v20 = 136315138;
      v21 = "[SiriPresentationViewController _handleTapDismissal:]";
      _os_log_impl(&dword_21FEE5000, v10, OS_LOG_TYPE_DEFAULT, "%s Dismissing Siri due to button tap", &v20, 0xCu);
    }

    if ((dismissal & 0xFFFFFFFFFFFFFFFELL) == 6)
    {
      v12 = 20;
    }

    else if (dismissal == 5)
    {
      siriViewController = [(SiriPresentationViewController *)self siriViewController];
      currentRequestOptions = [siriViewController currentRequestOptions];
      requestSource = [currentRequestOptions requestSource];

      if (requestSource == 38)
      {
        v12 = 41;
      }

      else
      {
        v12 = 50;
      }
    }

    else
    {
      v12 = 5;
    }

    v6 = 1;
    v19 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:0 animated:1 dismissalReason:v12];
    [(SiriPresentationViewController *)self _requestDismissalWithOptions:v19];
  }

  else
  {
    if (v11)
    {
      activationHandled = self->_activationHandled;
      siriViewController = self->_siriViewController;
      v15 = v10;
      v20 = 136315650;
      v21 = "[SiriPresentationViewController _handleTapDismissal:]";
      v22 = 1024;
      v23 = activationHandled;
      v24 = 1024;
      isVisible = [(AFUISiriViewController *)siriViewController isVisible];
      _os_log_impl(&dword_21FEE5000, v15, OS_LOG_TYPE_DEFAULT, "%s Not handled: _activationHandled=%d [_siriViewController isVisible]=%d", &v20, 0x18u);
    }

    v6 = 0;
  }

LABEL_7:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)updateCurrentLockState:(id)state
{
  stateCopy = state;
  kdebug_trace();
  objc_initWeak(&location, self);
  objc_copyWeak(&v6, &location);
  v5 = stateCopy;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __57__SiriPresentationViewController_updateCurrentLockState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCurrentLockState:{objc_msgSend(*(a1 + 32), "SASLockState")}];
}

- (void)setCurrentLockState:(unint64_t)state
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_currentLockState != state)
  {
    self->_currentLockState = state;
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      currentLockState = self->_currentLockState;
      v9 = 136315394;
      v10 = "[SiriPresentationViewController setCurrentLockState:]";
      v11 = 2048;
      v12 = currentLockState;
      _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation Lock state in SiriPresentationViewController updated to %zd", &v9, 0x16u);
    }

    if (self->_siriViewController)
    {
      siriViewController = [(SiriPresentationViewController *)self siriViewController];
      [siriViewController setLockState:state];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_requestDismissal
{
  v3 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:0 animated:1];
  [(SiriPresentationViewController *)self _requestDismissalWithOptions:v3];
}

- (void)_requestDismissalWithOptions:(id)options
{
  v9 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  [(SiriPresentationViewController *)self _invalidateCarSiriButtonHoldToTalkTimer];
  [(SiriPresentationViewController *)self _setScreenOffDuringActivation:0];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[SiriPresentationViewController _requestDismissalWithOptions:]";
    _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_INFO, "%s wantsDismissal", &v7, 0xCu);
  }

  [(SiriPresentationViewController *)self presentationDismissalRequestedWithOptions:optionsCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_carSiriButtonHoldToTalkIntervalFiredWithButtonIdentifier:(int64_t)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  [(SiriPresentationViewController *)self _carSiriButtonTimeInterval];
  if (v5 != 0.0)
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[SiriPresentationViewController _carSiriButtonHoldToTalkIntervalFiredWithButtonIdentifier:]";
      _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_INFO, "%s #activation Starting new Speech Request due to Car Siri button long press timer", &v12, 0xCu);
    }

    v7 = objc_alloc(MEMORY[0x277D55198]);
    v8 = [MEMORY[0x277D55160] requestSourceForButtonIdentifier:identifier];
    _uiPresentationIdentifier = [(SiriPresentationViewController *)self _uiPresentationIdentifier];
    v10 = [v7 initWithRequestSource:v8 uiPresentationIdentifier:_uiPresentationIdentifier];

    [(SiriPresentationViewController *)self activateWithRequestOptions:v10];
  }

  [(SiriPresentationViewController *)self _invalidateCarSiriButtonHoldToTalkTimer];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)cancelPendingActivationEventWithReason:(id)reason
{
  v13 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  kdebug_trace();
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[SiriPresentationViewController cancelPendingActivationEventWithReason:]";
    v11 = 2112;
    v12 = reasonCopy;
    _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s cancelPendingActivationEventWithReason:%@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  objc_copyWeak(&v8, buf);
  v7 = reasonCopy;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);

  v6 = *MEMORY[0x277D85DE8];
}

void __73__SiriPresentationViewController_cancelPendingActivationEventWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _cancelPendingActivationWithReason:{objc_msgSend(*(a1 + 32), "cancelReason")}];
}

- (void)_cancelPendingActivationWithReason:(unint64_t)reason
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = v6;
    v9 = [v7 stringWithSiriPresentationActivationCancelReason:reason];
    *buf = 136315394;
    v19 = "[SiriPresentationViewController _cancelPendingActivationWithReason:]";
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s cancelReason=%@", buf, 0x16u);
  }

  if (self->_activationHandled)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      [SiriPresentationViewController _cancelPendingActivationWithReason:];
    }
  }

  else
  {
    if (self->_receivedIncomingPhoneCall)
    {
      reasonCopy = 5;
    }

    else
    {
      reasonCopy = reason;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithSiriPresentationActivationCancelReason:{reasonCopy, @"cancelReason"}];
    v17 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

    mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
    v14 = AFAnalyticsEventCreateCurrent();
    [mEMORY[0x277CEF158] logEvent:v14];

    if (self->_unownedConnection)
    {
      [(SiriPresentationViewController *)self _cleanupUnownedConnection];
      [(SiriPresentationViewController *)self _requestDismissal];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)siriSessionShouldExtendAudioSessionForImminentPhoneCall
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SiriPresentationViewController siriSessionShouldExtendAudioSessionForImminentPhoneCall]";
    _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s #PhoneCallAudioSessionHandler Extending audio session for imminent phone call. Setting _waitingForTelephonyToStart:YES", &v5, 0xCu);
  }

  [(SiriPresentationViewController *)self _setWaitingForTelephonyToStart:1];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)siriSessionShouldEndExtendAudioSessionForImminentPhoneCall
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CCABB0];
    siriViewController = self->_siriViewController;
    v6 = v3;
    v7 = [v4 numberWithBool:{-[AFUISiriViewController isVisible](siriViewController, "isVisible")}];
    v9 = 136315394;
    v10 = "[SiriPresentationViewController siriSessionShouldEndExtendAudioSessionForImminentPhoneCall]";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s #PhoneCallAudioSessionHandler stop extending audio session while visible: %@", &v9, 0x16u);
  }

  if ([(AFUISiriViewController *)self->_siriViewController isVisible])
  {
    self->_waitingForTelephonyToStart = 0;
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__telephonyHasStarted object:0];
  }

  else
  {
    [(SiriPresentationViewController *)self _setWaitingForTelephonyToStart:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_createSiriViewControllerWithRequestOptions:(id)options
{
  v47 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = optionsCopy;
  if (optionsCopy)
  {
    requestSource = [optionsCopy requestSource];
  }

  else
  {
    requestSource = 0;
  }

  v7 = [(SiriPresentationViewController *)self _viewModeForRequestOptions:v5];
  self->_currentViewMode = v7;
  v8 = [(SiriPresentationViewController *)self _shouldAllowResizingBetweenModesForViewMode:v7];
  v9 = [objc_alloc(MEMORY[0x277D61998]) initWithFlamesViewFidelity:-[SiriPresentationViewController preferredFlamesViewFidelity](self isSystemHostedPresentation:"preferredFlamesViewFidelity") allowResizingBetweenModes:1 siriViewMode:v8 showsSensitiveUI:{v7, 1}];
  if ([v5 isVisualIntelligenceRequest])
  {
    v10 = 0;
  }

  else
  {
    unownedConnection = self->_unownedConnection;
    if (unownedConnection)
    {
      v12 = unownedConnection;
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CEF218]);
    }

    v10 = v12;
  }

  v13 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = SASRequestSourceGetName();
    *buf = 136315906;
    v36 = "[SiriPresentationViewController _createSiriViewControllerWithRequestOptions:]";
    v37 = 2112;
    v38 = v10;
    v39 = 2112;
    v40 = v9;
    v41 = 2112;
    v42 = v15;
    _os_log_impl(&dword_21FEE5000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation Creating new view controller with connection: %@, configuration: %@, requestSource: %@", buf, 0x2Au);
  }

  if ([(SiriPresentationViewController *)self _canPresentSiriEffectsViewControllerWithRequestOptions:v5])
  {
    siriEffectsViewController = [(SiriPresentationViewController *)self siriEffectsViewController];
  }

  else
  {
    siriEffectsViewController = 0;
  }

  v17 = objc_alloc(MEMORY[0x277CEF698]);
  displayConfiguration = self->_displayConfiguration;
  _viewHostingInstrumentationHandler = [(SiriPresentationViewController *)self _viewHostingInstrumentationHandler];
  v20 = [v17 initWithConnection:v10 configuration:v9 requestSource:requestSource delegate:self displayConfiguration:displayConfiguration edgeLightViewProvider:siriEffectsViewController instrumentationHandler:_viewHostingInstrumentationHandler];

  v21 = self->_unownedConnection;
  self->_unownedConnection = 0;

  [v20 setDataSource:self];
  [v20 setLockState:{-[SiriPresentationViewController currentLockState](self, "currentLockState")}];
  [(SiriPresentationViewController *)self hostedPresentationFrame];
  [v20 setHostedPresentationFrame:?];
  if ([v5 isConnectedToCarPlay])
  {
    _AFPreferencesAlwaysEyesFreeEnabled = 0;
  }

  else
  {
    _AFPreferencesAlwaysEyesFreeEnabled = 1;
    if (v7 != 4 && v7 != 8)
    {
      _AFPreferencesAlwaysEyesFreeEnabled = [(SiriPresentationViewController *)self _AFPreferencesAlwaysEyesFreeEnabled];
    }
  }

  [v20 setSupportsCarPlayVehicleData:{objc_msgSend(v5, "supportsCarPlayVehicleData")}];
  [v20 setCarOwnsMainAudio:{objc_msgSend(v5, "carOwnsMainAudio")}];
  [v20 setEyesFree:_AFPreferencesAlwaysEyesFreeEnabled];
  [v20 setDeviceInStarkMode:{objc_msgSend(v5, "isForStark")}];
  [v20 setCarDNDActive:{objc_msgSend(v5, "isForCarDND")}];
  [v20 setDirectActionEvent:{objc_msgSend(v5, "directActionEvent")}];
  v23 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    log = v23;
    v24 = siriEffectsViewController;
    v25 = v10;
    v26 = v9;
    if ([v5 isForStark])
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    [v5 carDNDStatus];
    v28 = CARAutomaticFeatureStateGetName();
    v29 = NSStringFromBOOL();
    [v5 supportsCarPlayVehicleData];
    v30 = NSStringFromBOOL();
    [v5 carOwnsMainAudio];
    v31 = NSStringFromBOOL();
    *buf = 136316418;
    v36 = "[SiriPresentationViewController _createSiriViewControllerWithRequestOptions:]";
    v37 = 2112;
    v38 = v27;
    v9 = v26;
    v10 = v25;
    siriEffectsViewController = v24;
    v39 = 2112;
    v40 = v28;
    v41 = 2112;
    v42 = v29;
    v43 = 2112;
    v44 = v30;
    v45 = 2112;
    v46 = v31;
    _os_log_impl(&dword_21FEE5000, log, OS_LOG_TYPE_DEFAULT, "%s #activation #carPlay #carDnd #eyesFree isForStark: %@, carDNDStatus: %@, eyesFree: %@, supportsCarPlayVehicleData: %@, carOwnsMainAudio: %@", buf, 0x3Eu);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_scheduleConnectionHouseKeepingAfterDelay:(double)delay
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithDouble:delay];
    v10 = 136315394;
    v11 = "[SiriPresentationViewController _scheduleConnectionHouseKeepingAfterDelay:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_21FEE5000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation delay: %@", &v10, 0x16u);
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__processConnectionHouseKeeping object:0];
  [(SiriPresentationViewController *)self performSelector:sel__processConnectionHouseKeeping withObject:0 afterDelay:delay];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_processConnectionHouseKeeping
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SiriPresentationViewController _processConnectionHouseKeeping]";
    _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s #activation", &v5, 0xCu);
  }

  [(SiriPresentationViewController *)self _cleanupUnownedConnection];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupUnownedConnection
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    unownedConnection = self->_unownedConnection;
    v8 = 136315394;
    v9 = "[SiriPresentationViewController _cleanupUnownedConnection]";
    v10 = 2112;
    v11 = unownedConnection;
    _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s #activation _unownedConnection: %@", &v8, 0x16u);
  }

  v5 = self->_unownedConnection;
  if (v5)
  {
    [(AFConnection *)v5 cancelRequest];
    [(AFConnection *)self->_unownedConnection endSession];
    [(AFConnection *)self->_unownedConnection invalidate];
    [(AFConnection *)self->_unownedConnection setSpeechDelegate:0];
    [(AFConnection *)self->_unownedConnection setDelegate:0];
    v6 = self->_unownedConnection;
    self->_unownedConnection = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_clearSiriViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __73__SiriPresentationViewController__clearSiriViewControllerWithCompletion___block_invoke;
  v10 = &unk_278430778;
  selfCopy = self;
  v5 = completionCopy;
  v12 = v5;
  v6 = _Block_copy(&v7);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v6[2](v6);
  }

  else
  {
    dispatch_sync(MEMORY[0x277D85CD0], v6);
  }
}

void __73__SiriPresentationViewController__clearSiriViewControllerWithCompletion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[SiriPresentationViewController _clearSiriViewControllerWithCompletion:]_block_invoke";
    _os_log_impl(&dword_21FEE5000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation _clearSiriViewController", buf, 0xCu);
  }

  v3 = *(*(a1 + 32) + 1392);
  objc_initWeak(buf, *(a1 + 32));
  [*(a1 + 32) _invalidateCarSiriButtonHoldToTalkTimer];
  [*(a1 + 32) _cleanupUnownedConnection];
  v4 = _Block_copy(*(a1 + 40));
  v5 = *(a1 + 32);
  v6 = *(v5 + 1096);
  *(v5 + 1096) = v4;

  v7 = *(a1 + 32);
  if (v3)
  {
    v8 = MEMORY[0x277CBEBB8];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __73__SiriPresentationViewController__clearSiriViewControllerWithCompletion___block_invoke_325;
    v16 = &unk_2784306D8;
    objc_copyWeak(&v18, buf);
    v17 = v3;
    v9 = [v8 scheduledTimerWithTimeInterval:0 repeats:&v13 block:3.0];
    [v7 setClearSiriViewControllerTimer:{v9, v13, v14, v15, v16}];

    [*(*(a1 + 32) + 1392) siriDidDeactivate];
    [*(*(a1 + 32) + 1392) setDataSource:0];
    v10 = [*(*(a1 + 32) + 1392) underlyingConnection];
    [v10 invalidate];

    [*(*(a1 + 32) + 1392) willMoveToParentViewController:0];
    v11 = [*(*(a1 + 32) + 1392) view];
    [v11 removeFromSuperview];

    [*(*(a1 + 32) + 1392) removeFromParentViewController];
    [*(a1 + 32) setSiriViewController:0];

    objc_destroyWeak(&v18);
  }

  else
  {
    [*(a1 + 32) _finishClearingSiriViewController:0];
  }

  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __73__SiriPresentationViewController__clearSiriViewControllerWithCompletion___block_invoke_325(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SiriPresentationViewController _clearSiriViewControllerWithCompletion:]_block_invoke";
    _os_log_impl(&dword_21FEE5000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation calling didDismiss from inside clearSiriViewControllerTimer", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishClearingSiriViewController:*(a1 + 32)];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_finishClearingSiriViewController:(id)controller
{
  v15 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[SiriPresentationViewController _finishClearingSiriViewController:]";
    _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation _finishClearingSiriViewController", &v13, 0xCu);
  }

  [(SiriPresentationViewController *)self _invalidateCarSiriButtonHoldToTalkTimer];
  clearSiriViewControllerTimer = [(SiriPresentationViewController *)self clearSiriViewControllerTimer];
  [clearSiriViewControllerTimer invalidate];

  [(SiriPresentationViewController *)self setClearSiriViewControllerTimer:0];
  v8 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[SiriPresentationViewController _finishClearingSiriViewController:]";
    _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation clearSiriViewControllerTimer was invalidated", &v13, 0xCu);
  }

  [(AFUISiriViewController *)self->_siriViewController updatePresentationVisualState:0];
  [controllerCopy setDelegate:0];

  v9 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[SiriPresentationViewController _finishClearingSiriViewController:]";
    _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s Attempting to enable the SpringBoard idle timer because we are losing the SiriViewController", &v13, 0xCu);
  }

  [(SiriPresentationViewController *)self _enableSpringBoardIdleTimer];
  dismissalCompletion = self->_dismissalCompletion;
  if (dismissalCompletion)
  {
    dismissalCompletion[2]();
    v11 = self->_dismissalCompletion;
    self->_dismissalCompletion = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleContextClearForRequestOptions:(id)options
{
  v11 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (-[SiriPresentationViewController _isDelayingSessionEnd](self, "_isDelayingSessionEnd") && ([optionsCopy isForStark] & 1) != 0 || objc_msgSend(optionsCopy, "directActionEvent") && (objc_msgSend(optionsCopy, "isForStark") & 1) != 0)
  {
    v5 = 6;
  }

  else
  {
    v5 = 7;
  }

  if ([optionsCopy requestSource] == 27)
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[SiriPresentationViewController _handleContextClearForRequestOptions:]";
      _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s Triggerless request, dont clear Siri context", &v9, 0xCu);
    }

    v5 = 3;
  }

  siriViewController = [(SiriPresentationViewController *)self siriViewController];
  [siriViewController resetContextTypes:v5];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_dismissSiriSetup
{
  if (self->_siriSetupNavigationController)
  {
    objc_initWeak(&location, self);
    siriSetupNavigationController = self->_siriSetupNavigationController;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __51__SiriPresentationViewController__dismissSiriSetup__block_invoke;
    v4[3] = &unk_2784302A0;
    objc_copyWeak(&v5, &location);
    [(UINavigationController *)siriSetupNavigationController dismissViewControllerAnimated:1 completion:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __51__SiriPresentationViewController__dismissSiriSetup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSiriSetupNavigationController:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setSiriSetupViewController:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setSiriSetupViewControllerPresented:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 _isPresentingVisualIntelligenceCamera];

  if ((v6 & 1) == 0)
  {
    v8 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:0 animated:0 dismissalReason:30];
    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 dismissWithOptions:v8];
  }
}

- (void)_wasDismissedWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  kdebug_trace();
  if ([(SiriPresentationViewController *)self _isDelayingSessionEnd])
  {
    siriViewController = [(SiriPresentationViewController *)self siriViewController];
    _siriView = [siriViewController _siriView];
    [_siriView setMode:0];

    siriViewController2 = [(SiriPresentationViewController *)self siriViewController];
    [siriViewController2 cancelSpeechRecordingIfNecessary];

LABEL_7:
    v9 = 1;
    goto LABEL_9;
  }

  if ([(SiriPresentationViewController *)self siriSetupViewControllerPresented])
  {
    [(SiriPresentationViewController *)self _removeSetupViewControllerIfNecessary];
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SiriPresentationViewController _wasDismissedWithCompletion:]";
      _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s Attempting to enable the SpringBoard idle timer because we are losing the setupViewController", &v12, 0xCu);
    }

    [(SiriPresentationViewController *)self _enableSpringBoardIdleTimer];
    goto LABEL_7;
  }

  [(SiriPresentationViewController *)self _clearSiriViewControllerWithCompletion:completionCopy];
  v9 = 0;
LABEL_9:
  [(AFUISiriViewController *)self->_siriViewController setIsSceneHostingVisualIntelligence:0];
  if ([(SiriPresentationViewController *)self _startGuidedAccessOnDismissal])
  {
    _AXSGuidedAccessStartSession();
    [(SiriPresentationViewController *)self _setStartGuidedAccessOnDismissal:0];
  }

  v10 = v9 ^ 1;
  if (!completionCopy)
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    completionCopy[2](completionCopy);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_siriDidOpenURL:(id)l
{
  lCopy = l;
  kdebug_trace();
  v5 = _ACIsTelephonyURL(lCopy);

  if (v5)
  {

    [(SiriPresentationViewController *)self _setWaitingForTelephonyToStart:1];
  }
}

- (void)_enableSpringBoardIdleTimer
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(SiriPresentationViewController *)self presentationHostedInSpringBoard])
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[SiriPresentationViewController _enableSpringBoardIdleTimer]";
      _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s Siri enabled SpringBoard idle timer", &v5, 0xCu);
    }

    [(SiriPresentationViewController *)self _setSpringBoardIdleTimerDisabled:0];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_dismissDueToUnexpectedError:(id)error
{
  errorCopy = error;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [SiriPresentationViewController _dismissDueToUnexpectedError:];
  }

  v5 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:0 animated:0 dismissalReason:21];
  [(SiriPresentationViewController *)self _requestDismissalWithOptions:v5];
}

- (int64_t)_impliedDismissalReasonFromState
{
  if (self->_instrumentationDismissalState.punchedOut)
  {
    return 9;
  }

  if (self->_instrumentationDismissalState.incomingPhoneCallDetected)
  {
    return 2;
  }

  if (self->_instrumentationDismissalState.outgoingPhoneCallDetected)
  {
    return 3;
  }

  if (self->_instrumentationDismissalState.fluidDismissalSet)
  {
    return 6;
  }

  if ([(NSString *)self->_instrumentationDismissalState.attemptedAppLaunchIdentifier length:v2])
  {
    return 29;
  }

  return 0;
}

- (void)_logDismissalRequestedForViewMode:(int64_t)mode withDismissalReason:(int64_t)reason
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = SASDismissalReasonGetName();
  v7 = v6;
  if (v6)
  {
    v11 = @"reason";
    v12[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    _analytics = [(SiriPresentationViewController *)self _analytics];
    [_analytics logEventWithType:1460 context:v8];
  }

  [(SiriPresentationViewController *)self _logDismissalToPowerLogWithReason:reason];
  [(SiriPresentationViewController *)self _emitInstrumentationDismissalStateWithReason:reason];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_logDismissalToPowerLogWithReason:(int64_t)reason
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"ReasonEnd";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:reason];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  PLLogRegisteredEvent();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_instrumentSuccessfulAppLaunchIfNecessary
{
  p_instrumentationDismissalState = &self->_instrumentationDismissalState;
  if ([(NSString *)self->_instrumentationDismissalState.attemptedAppLaunchIdentifier length])
  {
    v5 = objc_alloc_init(MEMORY[0x277D5A9B0]);
    [v5 setAppID:p_instrumentationDismissalState->attemptedAppLaunchIdentifier];
    siriViewController = [(SiriPresentationViewController *)self siriViewController];
    [siriViewController emitInstrumentationEvent:v5];
  }
}

- (void)_emitInstrumentationDismissalStateWithReason:(int64_t)reason
{
  siriViewController = [(SiriPresentationViewController *)self siriViewController];
  [siriViewController emitUIStateTransitionForSiriDismissalWithReason:reason];

  [(SiriPresentationViewController *)self _resetStateForInstrumentation];
}

- (int64_t)_dismissalReasonForDismissalWithOptions:(id)options
{
  dismissalReason = [options dismissalReason];
  _impliedDismissalReasonFromState = [(SiriPresentationViewController *)self _impliedDismissalReasonFromState];
  if (dismissalReason)
  {
    if (_impliedDismissalReasonFromState == 29 && dismissalReason == 4)
    {
      return 29;
    }

    else
    {
      return dismissalReason;
    }
  }

  else
  {

    return [(SiriPresentationViewController *)self _impliedDismissalReasonFromState];
  }
}

- (void)_resetStateForInstrumentation
{
  p_instrumentationDismissalState = &self->_instrumentationDismissalState;
  *&self->_instrumentationDismissalState.fluidDismissalSet = 0;
  attemptedAppLaunchIdentifier = self->_instrumentationDismissalState.attemptedAppLaunchIdentifier;
  p_instrumentationDismissalState->attemptedAppLaunchIdentifier = &stru_2833B2D30;
}

- (void)_logSignatureWithType:(id)type subType:(id)subType context:(id)context
{
  typeCopy = type;
  subTypeCopy = subType;
  contextCopy = context;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [SiriPresentationViewController _logSignatureWithType:subType:context:];
  }

  mEMORY[0x277D55AE8] = [MEMORY[0x277D55AE8] sharedInstance];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [mEMORY[0x277D55AE8] reportIssueForType:typeCopy subType:subTypeCopy context:contextCopy processIdentifier:objc_msgSend(processInfo walkboutStatus:{"processIdentifier"), AFIsInternalInstall()}];
}

- (void)siriViewController:(id)controller willProcessAppLaunchWithBundleIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  objc_copyWeak(&v9, &location);
  v8 = identifierCopy;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __94__SiriPresentationViewController_siriViewController_willProcessAppLaunchWithBundleIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 125, *(a1 + 32));
    WeakRetained = v3;
  }
}

- (void)siriViewController:(id)controller failedToLaunchAppWithBundleIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  objc_copyWeak(&v8, &location);
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __91__SiriPresentationViewController_siriViewController_failedToLaunchAppWithBundleIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[125];
    WeakRetained[125] = &stru_2833B2D30;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (void)siriViewControllerDidFinishDismissing:(id)dismissing
{
  v12 = *MEMORY[0x277D85DE8];
  dismissingCopy = dismissing;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SiriPresentationViewController siriViewControllerDidFinishDismissing:]";
    v10 = 2112;
    v11 = dismissingCopy;
    _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation siriViewControllerDidFinishDismissing: %@", &v8, 0x16u);
  }

  if (self->_clearSiriViewControllerTimer)
  {
    [(SiriPresentationViewController *)self _finishClearingSiriViewController:dismissingCopy];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:0 animated:0];
    [(SiriPresentationViewController *)self dismissWithOptions:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dismissSiriViewController:(id)controller withReason:(int64_t)reason
{
  v18 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = SASDismissalReasonGetName();
    v12 = 136315650;
    v13 = "[SiriPresentationViewController dismissSiriViewController:withReason:]";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = controllerCopy;
    _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s #punchout #activation %@ %@", &v12, 0x20u);
  }

  v10 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:0 animated:1 dismissalReason:reason];
  [(SiriPresentationViewController *)self presentationDismissalRequestedWithOptions:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startGuidedAccessForSiriViewController:(id)controller
{
  [(SiriPresentationViewController *)self _setStartGuidedAccessOnDismissal:1];
  v4 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:0 animated:1];
  [(SiriPresentationViewController *)self presentationDismissalRequestedWithOptions:v4];
}

- (id)siriViewController:(id)controller willStartRequestWithOptions:(id)options
{
  optionsCopy = options;
  requestInfo = [optionsCopy requestInfo];

  if (requestInfo)
  {
    requestInfo2 = [optionsCopy requestInfo];
    if ([requestInfo2 activationEvent] == 6 || objc_msgSend(requestInfo2, "activationEvent") == 9)
    {
      requestCompletionOptions = [requestInfo2 requestCompletionOptions];
      completionOptions = self->_completionOptions;
      self->_completionOptions = requestCompletionOptions;
    }
  }

  if (([optionsCopy isTypeToSiriRequest] & 1) == 0)
  {
    [(SiriPresentationViewController *)self _presentSiriEffectsWithRequestOptions:optionsCopy];
  }

  v10 = [(SiriPresentationViewController *)self _updateRequestOptionsWithTestingInput:optionsCopy];

  return v10;
}

- (id)_updateRequestOptionsWithTestingInput:(id)input
{
  inputCopy = input;
  if ([(SiriPresentationViewController *)self _hasTestingInput])
  {
    _dequeueTestingInput = [(SiriPresentationViewController *)self _dequeueTestingInput];
    type = [_dequeueTestingInput type];
    if (type == 2)
    {
      recordedSpeechURL = [_dequeueTestingInput recordedSpeechURL];
      [inputCopy setSpeechFileURL:recordedSpeechURL];
    }

    else
    {
      if (type != 1)
      {
LABEL_7:

        goto LABEL_8;
      }

      recordedSpeechURL = [_dequeueTestingInput text];
      [inputCopy setText:recordedSpeechURL];
    }

    goto LABEL_7;
  }

LABEL_8:

  return inputCopy;
}

- (BOOL)siriViewControllerShouldEndSession:(id)session
{
  v17 = *MEMORY[0x277D85DE8];
  _isDelayingSessionEnd = [(SiriPresentationViewController *)self _isDelayingSessionEnd];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = NSStringFromBOOL();
    waitingForTelephonyToStart = self->_waitingForTelephonyToStart;
    v11 = 136315650;
    v12 = "[SiriPresentationViewController siriViewControllerShouldEndSession:]";
    v13 = 2112;
    v14 = v7;
    v15 = 1024;
    v16 = waitingForTelephonyToStart;
    _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s #punchout shouldEnd:%@ waitingForTelephonyToStart:%i", &v11, 0x1Cu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return !_isDelayingSessionEnd;
}

- (void)siriViewController:(id)controller willStartHostingSceneWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    siriPresentationControllerDelegate2 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
    [siriPresentationControllerDelegate2 siriPresentation:self willStartHostingSceneWithIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy];
  }
}

- (void)siriViewController:(id)controller willStopHostingSceneWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    siriPresentationControllerDelegate2 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
    [siriPresentationControllerDelegate2 siriPresentation:self willStopHostingSceneWithIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy];
  }
}

- (void)requestTamaleLaunchAnimationLayerProviderWithCompletion:(id)completion
{
  completionCopy = completion;
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    siriPresentationControllerDelegate2 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __90__SiriPresentationViewController_requestTamaleLaunchAnimationLayerProviderWithCompletion___block_invoke;
    v8[3] = &unk_2784307A0;
    v9 = completionCopy;
    [siriPresentationControllerDelegate2 requestTamaleLaunchAnimationLayerProviderWithCompletion:v8];
  }
}

void __90__SiriPresentationViewController_requestTamaleLaunchAnimationLayerProviderWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 transitioningLayer];
  (*(v2 + 16))(v2, v3);
}

- (void)siriViewController:(id)controller siriIdleAndQuietStatusDidChange:(BOOL)change
{
  changeCopy = change;
  if ([(SiriPresentationViewController *)self presentationHostedInSpringBoard])
  {
    [(SiriPresentationViewController *)self _setSpringBoardIdleTimerDisabled:!changeCopy];
  }

  self->_isIdleAndQuiet = changeCopy;
}

- (void)_setScreenOffDuringActivation:(BOOL)activation
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = NSStringFromBOOL();
    v9 = 136315394;
    v10 = "[SiriPresentationViewController _setScreenOffDuringActivation:]";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s #myriadUI Setting wasScreenOffDuringActivation to %@", &v9, 0x16u);
  }

  self->_wasScreenOffDuringActivation = activation;
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __70__SiriPresentationViewController_openURL_bundleId_inPlace_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)openURL:(id)l bundleId:(id)id inPlace:(BOOL)place launchOptions:(id)options completion:(id)completion
{
  placeCopy = place;
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  idCopy = id;
  optionsCopy = options;
  completionCopy = completion;
  v16 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = NSStringFromBOOL();
    *buf = 136315906;
    v31 = "[SiriPresentationViewController openURL:bundleId:inPlace:launchOptions:completion:]";
    v32 = 2112;
    v33 = idCopy;
    v34 = 2112;
    v35 = v18;
    v36 = 2112;
    v37 = lCopy;
    _os_log_impl(&dword_21FEE5000, v17, OS_LOG_TYPE_DEFAULT, "%s #punchout 2 bundleId:%@ inPlace:%@ url:%@", buf, 0x2Au);
  }

  if ([idCopy isEqualToString:*MEMORY[0x277D619F8]])
  {
    defaultBrowserBundleIdentifier = [MEMORY[0x277D619D8] defaultBrowserBundleIdentifier];

    idCopy = defaultBrowserBundleIdentifier;
  }

  v20 = objc_alloc_init(MEMORY[0x277D55210]);
  v21 = v20;
  if (placeCopy)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  [v20 setPunchoutStyle:v22];
  [v21 setBundleIdentifier:idCopy];
  if (lCopy)
  {
    objc_initWeak(buf, self);
    v23 = MEMORY[0x277CC1E48];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __84__SiriPresentationViewController_openURL_bundleId_inPlace_launchOptions_completion___block_invoke;
    v25[3] = &unk_2784307F0;
    v26 = v21;
    v27 = lCopy;
    objc_copyWeak(&v29, buf);
    v28 = completionCopy;
    [v23 getAppLinkWithURL:v27 completionHandler:v25];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    [(SiriPresentationViewController *)self _punchout:v21 completion:completionCopy];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __84__SiriPresentationViewController_openURL_bundleId_inPlace_launchOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [a2 targetApplicationProxy];
    v5 = [v4 bundleIdentifier];
    [v3 setBundleIdentifier:v5];
  }

  [*(a1 + 32) setUrl:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _punchout:*(a1 + 32) completion:*(a1 + 48)];
}

- (void)_punchout:(id)_punchout completion:(id)completion
{
  _punchoutCopy = _punchout;
  completionCopy = completion;
  objc_initWeak(&location, self);
  objc_copyWeak(&v10, &location);
  v8 = _punchoutCopy;
  v9 = completionCopy;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __55__SiriPresentationViewController__punchout_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained siriPresentationControllerDelegate];
  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SiriPresentationViewController__punchout_completion___block_invoke_2;
  v6[3] = &unk_278430818;
  v7 = v5;
  objc_copyWeak(&v9, (a1 + 48));
  v8 = *(a1 + 40);
  [v3 siriPresentation:v4 requestsPunchout:v7 withHandler:v6];

  objc_destroyWeak(&v9);
}

void __55__SiriPresentationViewController__punchout_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CEF098];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    if (a2)
    {
      v9 = @"Completed";
    }

    else
    {
      v9 = [v5 localizedDescription];
    }

    v19 = 136315650;
    v20 = "[SiriPresentationViewController _punchout:completion:]_block_invoke_2";
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_21FEE5000, v7, OS_LOG_TYPE_DEFAULT, "%s #punchout 3 %@ %@", &v19, 0x20u);
    if ((a2 & 1) == 0)
    {
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 993) = a2;
    if (a2)
    {
      v12 = [*(a1 + 32) url];
      v13 = _ACIsTelephonyURL(v12);

      if (v13)
      {
        v14 = [v11 siriViewController];
        [v14 telephonyRequestCompleted];
      }
    }

    if ([*(a1 + 32) punchoutStyle] == 2 && v11[164] == 5)
    {
      v15 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        v20 = "[SiriPresentationViewController _punchout:completion:]_block_invoke";
        _os_log_impl(&dword_21FEE5000, v15, OS_LOG_TYPE_DEFAULT, "%s #punchout 4 Deactivating scene and returning focus back to CarPlay", &v19, 0xCu);
      }

      v16 = [v11 siriViewController];
      [v16 deactivateScene];
    }

    v17 = *(a1 + 40);
    if (v17)
    {
      (*(v17 + 16))(v17, a2, v5);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)siriViewController:(id)controller attemptUnlockWithPassword:(id)password
{
  passwordCopy = password;
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  v7 = [objc_opt_class() conformsToProtocol:&unk_2833C6D08];

  if (v7)
  {
    siriPresentationControllerDelegate2 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
    v9 = [siriPresentationControllerDelegate2 siriPresentation:self requestsDeviceUnlockWithPassword:passwordCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)siriViewController:(id)controller updateHomeAffordanceForBlurVisibilty:(BOOL)visibilty
{
  visibiltyCopy = visibilty;
  if ([(SiriPresentationViewController *)self isAmbientPresented])
  {
    v6 = [MEMORY[0x277CEF4D0] saeAvailable] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  if ((visibiltyCopy & v6) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  [(SiriPresentationViewController *)self _requestHomeAffordanceSuppression:v7];
}

- (void)_requestHomeAffordanceSuppression:(int64_t)suppression
{
  v18 = *MEMORY[0x277D85DE8];
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (suppression == 1 || !self->_isVoiceActivationMaskShown)
    {
      siriPresentationControllerDelegate2 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
      [siriPresentationControllerDelegate2 siriPresentation:self setHomeAffordanceSuppression:suppression];

      v9 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = v9;
        v12 = [v10 stringWithSiriHomeAffordanceSuppression:suppression];
        v14 = 136315394;
        v15 = "[SiriPresentationViewController _requestHomeAffordanceSuppression:]";
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_21FEE5000, v11, OS_LOG_TYPE_DEFAULT, "%s #Compact: Telling SpringBoard that the Siri Home affordance state is %@", &v14, 0x16u);
      }
    }

    else
    {
      v7 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315138;
        v15 = "[SiriPresentationViewController _requestHomeAffordanceSuppression:]";
        _os_log_impl(&dword_21FEE5000, v7, OS_LOG_TYPE_DEFAULT, "%s #Compact: Not showing Home Affordance as we are showing voiceActivationMask, Returning", &v14, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)siriViewController:(id)controller didCompleteRequestWithError:(id)error
{
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__SiriPresentationViewController_siriViewController_didCompleteRequestWithError___block_invoke;
  v7[3] = &unk_2784302A0;
  objc_copyWeak(&v8, &location);
  dispatch_async(v5, v7);

  completionOptions = self->_completionOptions;
  self->_completionOptions = 0;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __81__SiriPresentationViewController_siriViewController_didCompleteRequestWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained siriViewController];
    if ([v2 carDNDActive])
    {
      v3 = [v5 siriViewController];
      v4 = [v3 currentSource];

      WeakRetained = v5;
      if (v4 != 8)
      {
        goto LABEL_6;
      }

      v2 = [MEMORY[0x277D619B8] sharedPreferences];
      [v2 setVoiceRequestMadeWhileInCarDND:1];
    }

    WeakRetained = v5;
  }

LABEL_6:
}

- (void)siriViewController:(id)controller requestsPresentation:(id)presentation
{
  v17 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  presentationCopy = presentation;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[SiriPresentationViewController siriViewController:requestsPresentation:]";
    _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation siriPresentationControllerDelegate called", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [objc_alloc(MEMORY[0x277D55208]) initWithBuilder:0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__SiriPresentationViewController_siriViewController_requestsPresentation___block_invoke;
  v12[3] = &unk_278430868;
  objc_copyWeak(&v14, buf);
  v10 = presentationCopy;
  v13 = v10;
  [(SiriPresentationViewController *)self _requestPresentationWithOptions:v9 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

void __74__SiriPresentationViewController_siriViewController_requestsPresentation___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  objc_copyWeak(&v7, (a1 + 40));
  v6 = v5;
  v8 = a2;
  SiriUIInvokeOnMainQueue();
  (*(*(a1 + 32) + 16))();

  objc_destroyWeak(&v7);
}

void __74__SiriPresentationViewController_siriViewController_requestsPresentation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  if (WeakRetained && !v3)
  {
    if (*(a1 + 48))
    {
      goto LABEL_6;
    }

    v3 = 0;
  }

  v4 = WeakRetained;
  [WeakRetained _failedToPresentSiriWithError:v3];
  WeakRetained = v4;
LABEL_6:
}

- (void)siriViewController:(id)controller requestsDismissalWithReason:(int64_t)reason withCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = SASDismissalReasonGetName();
    v13 = 136315394;
    v14 = "[SiriPresentationViewController siriViewController:requestsDismissalWithReason:withCompletion:]";
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation dismissal requested %@", &v13, 0x16u);
  }

  v11 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:0 animated:1 dismissalReason:reason];
  [(SiriPresentationViewController *)self _presentationDismissalRequestedWithOptions:v11 withCompletion:completionCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)siriViewController:(id)controller presentedIntentWithBundleId:(id)id
{
  idCopy = id;
  intentUsageDelegate = [(SiriPresentationViewController *)self intentUsageDelegate];
  [intentUsageDelegate activeIntentWithBundleId:idCopy];
}

- (id)getDeviceEngagementEvents:(id)events forDeviceEngagementTimeWindow:(double)window
{
  array = [MEMORY[0x277CBEB18] array];
  deviceEngagementTimeStamps = [(SiriPresentationViewController *)self deviceEngagementTimeStamps];
  v8 = [deviceEngagementTimeStamps objectForKey:&unk_2833B4E80];

  deviceEngagementTimeStamps2 = [(SiriPresentationViewController *)self deviceEngagementTimeStamps];
  v10 = [deviceEngagementTimeStamps2 objectForKey:&unk_2833B4E98];

  date = [MEMORY[0x277CBEAA8] date];
  v12 = date;
  if (v8)
  {
    [date timeIntervalSinceDate:v8];
    if (v13 < window)
    {
      [array addObject:&unk_2833B4E80];
    }
  }

  if (v10)
  {
    [v12 timeIntervalSinceDate:v10];
    if (v14 < window)
    {
      [array addObject:&unk_2833B4E98];
    }
  }

  return array;
}

- (id)bulletinsForSiriViewController:(id)controller
{
  v28 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  connection = [(SiriPresentationViewController *)self connection];
  remoteTarget = [connection remoteTarget];

  if ([(SiriPresentationViewController *)self identifier]== 1)
  {
    mEMORY[0x277D551B0] = [MEMORY[0x277D551B0] sharedSystemState];
    lockStateMonitor = [mEMORY[0x277D551B0] lockStateMonitor];
    lockState = [lockStateMonitor lockState];

    if ((lockState & 2) != 0)
    {
      [remoteTarget bulletinsOnLockScreen];
    }

    else
    {
      [remoteTarget allBulletins];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v10 = v20 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if (([v15 isRead] & 1) == 0)
          {
            [array addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v24 = "[SiriPresentationViewController bulletinsForSiriViewController:]";
    v25 = 2112;
    v26 = array;
    _os_log_impl(&dword_21FEE5000, v16, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)siriViewController:(id)controller didUpdateAudioCategoriesDisablingVolumeHUD:(id)d
{
  dCopy = d;
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    siriPresentationControllerDelegate2 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
    [siriPresentationControllerDelegate2 siriPresentation:self didUpdateAudioCategoriesDisablingVolumeHUD:dCopy];
  }
}

- (void)siriViewControllerSpeechRequestStartedFromSiriOrb
{
  v10 = *MEMORY[0x277D85DE8];
  connection = [(SiriPresentationViewController *)self connection];
  remoteTarget = [connection remoteTarget];

  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SiriPresentationViewController siriViewControllerSpeechRequestStartedFromSiriOrb]";
    v8 = 2112;
    v9 = remoteTarget;
    _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s Speech request was started from Siri orb button press %@", &v6, 0x16u);
  }

  [remoteTarget speechRequestStartedFromSiriOrb];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)siriViewControllerDidReactivateFromFlexibleFollowups
{
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    siriPresentationControllerDelegate2 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
    [siriPresentationControllerDelegate2 siriRequestDidReactivateForSiriPresentation:self];
  }
}

- (void)siriViewControllerSpeechRequestCancelledFromSiriOrb
{
  v10 = *MEMORY[0x277D85DE8];
  connection = [(SiriPresentationViewController *)self connection];
  remoteTarget = [connection remoteTarget];

  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SiriPresentationViewController siriViewControllerSpeechRequestCancelledFromSiriOrb]";
    v8 = 2112;
    v9 = remoteTarget;
    _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s Speech request was cancelled from Siri orb button press %@", &v6, 0x16u);
  }

  [remoteTarget speechRequestCancelledFromSiriOrb];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)requestSystemApertureCollapse
{
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    siriPresentationControllerDelegate2 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
    [siriPresentationControllerDelegate2 restrictSystemApertureToDefaultLayoutWithReason:@"Siri requested collapse"];

    [(SiriPresentationViewController *)self invalidateSystemApertureAssertion];
  }
}

- (void)invalidateSystemApertureAssertion
{
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    siriPresentationControllerDelegate2 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
    [siriPresentationControllerDelegate2 invalidateSystemApertureAssertionWithReason:@"Siri invalidated collapse"];
  }
}

- (void)toggleHomeAffordanceHidden:(BOOL)hidden
{
  if (hidden)
  {
    if (SiriUIDeviceIsPad())
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  [(SiriPresentationViewController *)self _requestHomeAffordanceSuppression:v4];
}

- (void)updateEdgeLightWindowLevel:(int64_t)level
{
  objc_initWeak(&location, self);
  objc_copyWeak(v4, &location);
  v4[1] = level;
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(v4);
  objc_destroyWeak(&location);
}

void __61__SiriPresentationViewController_updateEdgeLightWindowLevel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    if (v4 == 1)
    {
      v6 = [WeakRetained siriPresentationControllerDelegate];
      v7 = [v3 edgeLightWindowLevelInvalidable];
      if (v7)
      {
      }

      else if (objc_opt_respondsToSelector())
      {
        if ([*(a1 + 32) _isPresentingVisualIntelligenceCamera])
        {
          v8 = @"EdgeLight In Tamale";
        }

        else
        {
          v8 = @"User Drilled in";
        }

        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __61__SiriPresentationViewController_updateEdgeLightWindowLevel___block_invoke_2;
        v9[3] = &unk_278430890;
        v9[4] = v3;
        [v6 siriPresentation:v3 acquireElevatedEffectsViewControllerAssertionWithReason:v8 handler:v9];
      }
    }

    else if (!v4)
    {
      v5 = [WeakRetained edgeLightWindowLevelInvalidable];
      [v5 invalidate];

      [v3 setEdgeLightWindowLevelInvalidable:0];
    }
  }
}

- (void)siriViewController:(id)controller didCreateSiriScene:(id)scene
{
  sceneCopy = scene;
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [siriPresentationControllerDelegate siriPresentation:self didCreateSiriScene:sceneCopy];
  }
}

- (id)siriViewController:(id)controller bulletinWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  connection = [(SiriPresentationViewController *)self connection];
  remoteTarget = [connection remoteTarget];
  v8 = [remoteTarget bulletinForIdentifier:identifierCopy];

  return v8;
}

- (UIEdgeInsets)safeAreaInsetsForSceneCreationInSiriViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (self->_currentViewMode == 7)
  {
    view = [(SiriPresentationViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    _FBSScene = [windowScene _FBSScene];
    settings = [_FBSScene settings];

    [settings safeAreaInsetsPortrait];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    goto LABEL_26;
  }

  view2 = [(SiriPresentationViewController *)controllerCopy view];
  [view2 safeAreaInsets];
  v12 = *MEMORY[0x277D768C8];
  v14 = *(MEMORY[0x277D768C8] + 8);
  v18 = *(MEMORY[0x277D768C8] + 24);
  if (v23 != v14 || v20 != v12 || v22 != v18)
  {

LABEL_24:
    selfCopy = v5;
LABEL_25:
    view3 = [(SiriPresentationViewController *)selfCopy view];
    [view3 safeAreaInsets];
    v12 = v41;
    v14 = v42;
    v16 = v43;
    v18 = v44;

    goto LABEL_26;
  }

  v26 = v21;
  v16 = *(MEMORY[0x277D768C8] + 16);

  if (v26 != v16)
  {
    goto LABEL_24;
  }

  [(SiriPresentationViewController *)v5 additionalSafeAreaInsets];
  if (v30 != v14 || v27 != v12 || v29 != v18 || v28 != v16)
  {
    selfCopy2 = v5;
LABEL_23:
    [(SiriPresentationViewController *)selfCopy2 additionalSafeAreaInsets];
    v12 = v35;
    v14 = v36;
    v16 = v37;
    v18 = v38;
    goto LABEL_26;
  }

  view4 = [(SiriPresentationViewController *)self view];
  [view4 safeAreaInsets];
  if (v53 != v14 || v50 != v12 || v52 != v18)
  {

LABEL_41:
    selfCopy = self;
    goto LABEL_25;
  }

  v56 = v51;

  if (v56 != v16)
  {
    goto LABEL_41;
  }

  [(SiriPresentationViewController *)self additionalSafeAreaInsets];
  if (v60 != v14 || v57 != v12 || v59 != v18 || v58 != v16)
  {
    selfCopy2 = self;
    goto LABEL_23;
  }

LABEL_26:

  v45 = v12;
  v46 = v14;
  v47 = v16;
  v48 = v18;
  result.right = v48;
  result.bottom = v47;
  result.left = v46;
  result.top = v45;
  return result;
}

- (void)siriSAEEffectsViewController:(id)controller requestsPresentationWithHandler:(id)handler
{
  handlerCopy = handler;
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    siriEffectsViewController = [(SiriPresentationViewController *)self siriEffectsViewController];
    [siriPresentationControllerDelegate siriPresentation:self requestsPresentationOfEffectsViewController:siriEffectsViewController withHandler:handlerCopy];
  }

  else
  {
    siriEffectsViewController = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.siri.activation" code:6 userInfo:0];
    handlerCopy[2](handlerCopy, 0, siriEffectsViewController);
  }
}

- (void)siriSAEEffectsViewController:(id)controller requestsDismissalWithHandler:(id)handler
{
  handlerCopy = handler;
  siriPresentationControllerDelegate = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [siriPresentationControllerDelegate siriPresentation:self requestsDismissalOfEffectsViewControllerWithHandler:handlerCopy];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.siri.activation" code:6 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v6);
  }
}

- (void)_checkForGuideUpdatesIfNecessary
{
  v17 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    date = [MEMORY[0x277CBEAA8] date];
    lastGuideCheck = self->_lastGuideCheck;
    if (lastGuideCheck)
    {
      v5 = [(NSDate *)lastGuideCheck dateByAddingTimeInterval:86400.0];
      if ([v5 compare:date] == -1)
      {
        availabilityState = [MEMORY[0x277CEF688] availabilityState];

        if (availabilityState)
        {
          goto LABEL_15;
        }
      }

      else
      {
        mEMORY[0x277CEF670] = [MEMORY[0x277CEF670] sharedManager];
        cachedGuideSnippet = [mEMORY[0x277CEF670] cachedGuideSnippet];
        if (cachedGuideSnippet)
        {

LABEL_15:
          goto LABEL_16;
        }

        availabilityState2 = [MEMORY[0x277CEF688] availabilityState];

        if (availabilityState2)
        {
          goto LABEL_15;
        }
      }
    }

    else if ([MEMORY[0x277CEF688] availabilityState])
    {
      goto LABEL_15;
    }

    objc_storeStrong(&self->_lastGuideCheck, date);
    mEMORY[0x277CEF670]2 = [MEMORY[0x277CEF670] sharedManager];
    v11 = [mEMORY[0x277CEF670]2 shouldCheckForUpdateWithLastAppUpdateTime:self->_lastAppUpdateTimestamp];

    if (v11)
    {
      v12 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = "[SiriPresentationViewController _checkForGuideUpdatesIfNecessary]";
        _os_log_impl(&dword_21FEE5000, v12, OS_LOG_TYPE_DEFAULT, "%s Checking for guide updates", &v15, 0xCu);
      }

      mEMORY[0x277CEF670]3 = [MEMORY[0x277CEF670] sharedManager];
      [mEMORY[0x277CEF670]3 checkGuideUpdate];
    }

    goto LABEL_15;
  }

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_applicationsDidChange
{
  date = [MEMORY[0x277CBEAA8] date];
  lastAppUpdateTimestamp = self->_lastAppUpdateTimestamp;
  self->_lastAppUpdateTimestamp = date;

  MEMORY[0x2821F96F8]();
}

- (void)_setSpringBoardIdleTimerDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v12 = *MEMORY[0x277D85DE8];
  if ([(SiriPresentationViewController *)self presentationHostedInSpringBoard])
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"Enabled";
      if (disabledCopy)
      {
        v6 = @"Disabled";
      }

      *buf = 136315394;
      v9 = "[SiriPresentationViewController _setSpringBoardIdleTimerDisabled:]";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s %@ the SpringBoard idle timer", buf, 0x16u);
    }

    SiriUIInvokeOnMainQueue();
    self->_springBoardIdleTimerDisabled = disabledCopy;
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __67__SiriPresentationViewController__setSpringBoardIdleTimerDisabled___block_invoke(uint64_t a1)
{
  v2 = SBUIGetUserAgent();
  [v2 setIdleTimerDisabled:*(a1 + 32) forReason:@"SiriIsTalking"];
}

- (BOOL)_cancelPendingPhoneCall
{
  v9 = *MEMORY[0x277D85DE8];
  _isWaitingForTelephonyToStart = [(SiriPresentationViewController *)self _isWaitingForTelephonyToStart];
  if (_isWaitingForTelephonyToStart)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[SiriPresentationViewController _cancelPendingPhoneCall]";
      _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s #PhoneCallAudioSessionHandler we are waiting for telephony to start, so cancelling pending phone call", &v7, 0xCu);
    }

    CTCallListDisconnect();
    [(SiriPresentationViewController *)self _setWaitingForTelephonyToStart:0];
  }

  v5 = *MEMORY[0x277D85DE8];
  return _isWaitingForTelephonyToStart;
}

- (void)_sendTelephonyHasStartedAfterDelay:(double)delay
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithDouble:delay];
    v10 = 136315394;
    v11 = "[SiriPresentationViewController _sendTelephonyHasStartedAfterDelay:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_21FEE5000, v7, OS_LOG_TYPE_DEFAULT, "%s #PhoneCallAudioSessionHandler Setting %@ second audio session extension timer, if the timer fires, we'll stop extending the audio session", &v10, 0x16u);
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__telephonyHasStarted object:0];
  [(SiriPresentationViewController *)self performSelector:sel__telephonyHasStarted withObject:0 afterDelay:delay];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callIsActiveDidChangeNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *MEMORY[0x277D26B50];
    v8 = 136315394;
    v9 = "[SiriPresentationViewController _callIsActiveDidChangeNotification:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s #PhoneCallAudioSessionHandler %@ posted: ending audio session", &v8, 0x16u);
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__telephonyHasStarted object:0];
  if ([(SiriPresentationViewController *)self _isWaitingForTelephonyToStart])
  {
    [(SiriPresentationViewController *)self _telephonyHasStarted];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_showSetupViewControllerIfNecessary
{
  v18 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[SiriPresentationViewController _showSetupViewControllerIfNecessary]";
    _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s #activation Siri supported but not enabled, presenting an AFUISiriSetupViewController", buf, 0xCu);
  }

  [(SiriPresentationViewController *)self _updateHostedPresentationFrame];
  if (!self->_siriSetupViewController)
  {
    v4 = objc_alloc_init(MEMORY[0x277CEF690]);
    siriSetupViewController = self->_siriSetupViewController;
    self->_siriSetupViewController = v4;

    [(AFUISiriSetupViewController *)self->_siriSetupViewController setDelegate:self];
    v6 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_siriSetupViewController];
    siriSetupNavigationController = self->_siriSetupNavigationController;
    self->_siriSetupNavigationController = v6;

    [(UINavigationController *)self->_siriSetupNavigationController setModalPresentationStyle:2];
    presentationController = [(UINavigationController *)self->_siriSetupNavigationController presentationController];
    [presentationController setDelegate:self->_siriSetupViewController];
  }

  v9 = objc_alloc(MEMORY[0x277D61AF0]);
  v10 = [v9 initWithSuiteName:*MEMORY[0x277D61B48]];
  v11 = [v10 integerForKey:@"NumberOfTimesSetupSiriShown"];
  if (v11 < 2)
  {
    [v10 setInteger:v11 + 1 forKey:@"NumberOfTimesSetupSiriShown"];
    [v10 synchronize];
  }

  else
  {
    [(AFUISiriSetupViewController *)self->_siriSetupViewController setLastTimeShown:1];
  }

  if ([(SiriPresentationViewController *)self _isPresentingVisualIntelligenceCamera])
  {
    siriSetupNavigationController = [(SiriPresentationViewController *)self siriSetupNavigationController];
    [(SiriPresentationViewController *)self presentViewController:siriSetupNavigationController animated:1 completion:0];

    [(SiriPresentationViewController *)self setSiriSetupViewControllerPresented:1];
  }

  else
  {
    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__SiriPresentationViewController__showSetupViewControllerIfNecessary__block_invoke;
    v14[3] = &unk_278430900;
    objc_copyWeak(&v15, buf);
    [(SiriPresentationViewController *)self siriViewController:0 requestsPresentation:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  kdebug_trace();

  v13 = *MEMORY[0x277D85DE8];
}

void __69__SiriPresentationViewController__showSetupViewControllerIfNecessary__block_invoke(uint64_t a1, char a2)
{
  objc_copyWeak(&v3, (a1 + 32));
  v4 = a2;
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v3);
}

void __69__SiriPresentationViewController__showSetupViewControllerIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == 1)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained siriSetupNavigationController];
    [v4 presentViewController:v3 animated:1 completion:0];

    [v4 _setupSiriViewControllerPresentedSuccessHandler];
    WeakRetained = v4;
  }
}

- (void)_setupSiriViewControllerPresentedSuccessHandler
{
  kdebug_trace();
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  [remoteTarget didPresentSiri];

  [(SiriPresentationViewController *)self setSiriSetupViewControllerPresented:1];
}

- (void)openSiriRequestedBySiriSetupViewController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  objc_copyWeak(&v5, &location);
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __77__SiriPresentationViewController_openSiriRequestedBySiriSetupViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _removeSetupViewControllerIfNecessary];
    v4 = objc_alloc(MEMORY[0x277D55198]);
    v5 = [*(a1 + 32) _uiPresentationIdentifier];
    v6 = [v4 initWithRequestSource:20 uiPresentationIdentifier:v5];

    v7 = objc_alloc(MEMORY[0x277D55208]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__SiriPresentationViewController_openSiriRequestedBySiriSetupViewController___block_invoke_2;
    v13[3] = &unk_278430610;
    v8 = v6;
    v14 = v8;
    v9 = [v7 initWithBuilder:v13];
    if ([*(a1 + 32) _isPresentingVisualIntelligenceCamera])
    {
      [v3 handleRequestWithOptions:v8];
    }

    else
    {
      [v3 presentationRequestedWithPresentationOptions:v9 requestOptions:v8];
    }

    v10 = [v3[174] _siriView];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [v3[174] _fullSiriView];
      [v12 setBackdropVisible:1];
    }
  }
}

void __77__SiriPresentationViewController_openSiriRequestedBySiriSetupViewController___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setRequestSource:{objc_msgSend(v3, "requestSource")}];
  [v4 setInputType:{objc_msgSend(*(a1 + 32), "inputType")}];
}

- (void)startAnimationDismissalWatchdogTimerWithTimeoutHandler:(id)handler shouldTurnScreenOff:(BOOL)off
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  watchdogQueue = self->_watchdogQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __109__SiriPresentationViewController_startAnimationDismissalWatchdogTimerWithTimeoutHandler_shouldTurnScreenOff___block_invoke;
  v9[3] = &unk_278430928;
  objc_copyWeak(&v11, &location);
  v10 = handlerCopy;
  offCopy = off;
  v8 = handlerCopy;
  dispatch_async(watchdogQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __109__SiriPresentationViewController_startAnimationDismissalWatchdogTimerWithTimeoutHandler_shouldTurnScreenOff___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _watchdogQueue_startAnimationDismissalWatchdogTimerWithTimeoutHandler:*(a1 + 32) shouldTurnScreenOff:*(a1 + 48)];
}

- (void)_watchdogQueue_startAnimationDismissalWatchdogTimerWithTimeoutHandler:(id)handler shouldTurnScreenOff:(BOOL)off
{
  v29 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  animationDismissalTimer = [(SiriPresentationViewController *)self animationDismissalTimer];

  v8 = MEMORY[0x277CEF098];
  if (animationDismissalTimer)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SiriPresentationViewController _watchdogQueue_startAnimationDismissalWatchdogTimerWithTimeoutHandler:shouldTurnScreenOff:];
    }

    animationDismissalTimer2 = [(SiriPresentationViewController *)self animationDismissalTimer];
    [animationDismissalTimer2 cancelIfNotAlreadyCanceled];

    [(SiriPresentationViewController *)self setAnimationDismissalTimer:0];
  }

  objc_initWeak(&location, self);
  v10 = objc_alloc(MEMORY[0x277CEF530]);
  v11 = MEMORY[0x277D85CD0];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __124__SiriPresentationViewController__watchdogQueue_startAnimationDismissalWatchdogTimerWithTimeoutHandler_shouldTurnScreenOff___block_invoke;
  v20 = &unk_278430928;
  objc_copyWeak(&v22, &location);
  v12 = handlerCopy;
  v21 = v12;
  offCopy = off;
  v13 = [v10 initWithTimeoutInterval:MEMORY[0x277D85CD0] onQueue:&v17 timeoutHandler:0.75];
  [(SiriPresentationViewController *)self setAnimationDismissalTimer:v13, v17, v18, v19, v20];

  v14 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[SiriPresentationViewController _watchdogQueue_startAnimationDismissalWatchdogTimerWithTimeoutHandler:shouldTurnScreenOff:]";
    v27 = 2048;
    v28 = 0x3FE8000000000000;
    _os_log_impl(&dword_21FEE5000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation #myriadUI - Starting animation dismissal watchdog timer for %f seconds", buf, 0x16u);
  }

  animationDismissalTimer3 = [(SiriPresentationViewController *)self animationDismissalTimer];
  [animationDismissalTimer3 start];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  v16 = *MEMORY[0x277D85DE8];
}

void __124__SiriPresentationViewController__watchdogQueue_startAnimationDismissalWatchdogTimerWithTimeoutHandler_shouldTurnScreenOff___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __124__SiriPresentationViewController__watchdogQueue_startAnimationDismissalWatchdogTimerWithTimeoutHandler_shouldTurnScreenOff___block_invoke_cold_1();
  }

  v3 = [WeakRetained animationDismissalTimer];
  [v3 cancelIfNotAlreadyCanceled];

  [WeakRetained setAnimationDismissalTimer:0];
  (*(*(a1 + 32) + 16))();
  if (*(a1 + 48) == 1)
  {
    v4 = [WeakRetained _analytics];
    [v4 logEventWithType:1931 context:0];
  }

  [WeakRetained _logSignatureWithType:@"AnimationDismissalWatchdogTimerFired" subType:0 context:MEMORY[0x277CBEC10]];
}

- (void)_watchdogQueue_stopAnimationDismissalWatchdogTimerIfNeededThen:(id)then onQueue:(id)queue
{
  v15 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  thenCopy = then;
  animationDismissalTimer = [(SiriPresentationViewController *)self animationDismissalTimer];

  v9 = *MEMORY[0x277CEF098];
  v10 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (animationDismissalTimer)
  {
    if (v10)
    {
      v13 = 136315138;
      v14 = "[SiriPresentationViewController _watchdogQueue_stopAnimationDismissalWatchdogTimerIfNeededThen:onQueue:]";
      _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #myriadUI - Animation dismissal watchdog timer request stopping", &v13, 0xCu);
    }

    animationDismissalTimer2 = [(SiriPresentationViewController *)self animationDismissalTimer];
    [animationDismissalTimer2 cancelIfNotAlreadyCanceled];

    [(SiriPresentationViewController *)self setAnimationDismissalTimer:0];
  }

  else if (v10)
  {
    v13 = 136315138;
    v14 = "[SiriPresentationViewController _watchdogQueue_stopAnimationDismissalWatchdogTimerIfNeededThen:onQueue:]";
    _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #myriadUI - Animation dismissal watchdog timer request stopping, but not needed", &v13, 0xCu);
  }

  dispatch_async(queueCopy, thenCopy);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stopAnimationDismissalWatchdogTimerIfNeededThen:(id)then onQueue:(id)queue
{
  thenCopy = then;
  queueCopy = queue;
  objc_initWeak(&location, self);
  watchdogQueue = self->_watchdogQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__SiriPresentationViewController_stopAnimationDismissalWatchdogTimerIfNeededThen_onQueue___block_invoke;
  v11[3] = &unk_278430950;
  objc_copyWeak(&v14, &location);
  v12 = queueCopy;
  v13 = thenCopy;
  v9 = queueCopy;
  v10 = thenCopy;
  dispatch_async(watchdogQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __90__SiriPresentationViewController_stopAnimationDismissalWatchdogTimerIfNeededThen_onQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _watchdogQueue_stopAnimationDismissalWatchdogTimerIfNeededThen:*(a1 + 40) onQueue:*(a1 + 32)];
}

- (void)_updateLanguageCode
{
  _language = [(SiriPresentationViewController *)self _language];
  spokenLanguageCode = [_language spokenLanguageCode];

  MEMORY[0x223D73ED0](spokenLanguageCode);
}

- (unint64_t)supportedInterfaceOrientations
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(SiriPresentationOptions *)self->_currentPresentationOptions requestSource]== 54 || [(SiriPresentationOptions *)self->_currentPresentationOptions requestSource]== 57)
  {
LABEL_3:
    supportedInterfaceOrientations = 2;
    goto LABEL_4;
  }

  siriViewController = self->_siriViewController;
  if (!siriViewController)
  {
    if (SiriUIDeviceIsZoomed() & 1) == 0 && (SiriUIIsAllOrientationsSupported())
    {
      supportedInterfaceOrientations = 30;
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  currentViewMode = self->_currentViewMode;
  v8 = currentViewMode == 8 || currentViewMode == 4;
  if (currentViewMode == 4 || currentViewMode == 8)
  {
    supportedInterfaceOrientations = 2;
  }

  else
  {
    supportedInterfaceOrientations = [(AFUISiriViewController *)siriViewController supportedInterfaceOrientations];
  }

  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v8)
    {
      v11 = @"YES";
    }

    v12 = 136315394;
    v13 = "[SiriPresentationViewController supportedInterfaceOrientations]";
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&dword_21FEE5000, v10, OS_LOG_TYPE_DEFAULT, "%s 🚗📱 Forcing portrait mode for Siri EyesFree: %@", &v12, 0x16u);
  }

LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
  return supportedInterfaceOrientations;
}

void __46__SiriPresentationViewController__waitForPing__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __46__SiriPresentationViewController__waitForPing__block_invoke_cold_1();
  }

  v2 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA450];
  v8[0] = @"SiriPresentationViewController expected ping from SiriActivationService but timed out.";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.siri.activation" code:4 userInfo:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissDueToUnexpectedError:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_teardownPongTimer
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[SiriPresentationViewController _teardownPongTimer]";
    _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s #pingpong", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  objc_copyWeak(&v5, buf);
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __52__SiriPresentationViewController__teardownPongTimer__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SiriPresentationViewController _teardownPongTimer]_block_invoke";
    _os_log_impl(&dword_21FEE5000, v2, OS_LOG_TYPE_DEFAULT, "%s #pingpong on main thread", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained pongTimer];
  [v4 invalidate];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setPongTimer:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_foregroundAppInfosForUIPresentationIdentifier:(id)identifier
{
  v4 = [(SiriPresentationViewController *)self _presentationIdentifierFromUIPresentationIdentifier:identifier];
  applicationStateHelper = [(SiriPresentationViewController *)self applicationStateHelper];
  v6 = applicationStateHelper;
  if (v4 == 2)
  {
    [applicationStateHelper foregroundAppInfosForCarPlay];
  }

  else
  {
    [applicationStateHelper foregroundAppInfos];
  }
  v7 = ;

  return v7;
}

- (int64_t)_presentationIdentifierFromUIPresentationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.siri.EyesFree"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.siri.BluetoothCar"))
  {
LABEL_3:
    v4 = 1;
    goto LABEL_4;
  }

  if ([identifierCopy isEqualToString:@"com.apple.siri.CarDisplay"])
  {
    goto LABEL_6;
  }

  if ([identifierCopy isEqualToString:@"com.apple.siri.UIFree"])
  {
    goto LABEL_3;
  }

  if ([identifierCopy isEqualToString:@"com.apple.siri.SiriTVPresentation"])
  {
    v4 = 4;
    goto LABEL_4;
  }

  if ([identifierCopy isEqualToString:@"com.apple.siri.Compact"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.siri.SystemAssistantExperience"))
  {
    goto LABEL_3;
  }

  if ([identifierCopy isEqualToString:@"com.apple.siri.CarDisplay.UIFree"])
  {
LABEL_6:
    v4 = 2;
    goto LABEL_4;
  }

  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [SiriPresentationViewController _presentationIdentifierFromUIPresentationIdentifier:];
  }

  v4 = 0;
LABEL_4:

  return v4;
}

- (void)presentationStateProvider:(id)provider presentationStateDidChange:(id)change
{
  v14 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[SiriPresentationViewController presentationStateProvider:presentationStateDidChange:]";
    v12 = 2112;
    v13 = changeCopy;
    _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s %@", &v10, 0x16u);
  }

  connection = [(SiriPresentationViewController *)self connection];
  remoteTarget = [connection remoteTarget];
  [remoteTarget didUpdatePresentationState:changeCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setPresentationState:(int64_t)state
{
  v17 = *MEMORY[0x277D85DE8];
  presentationState = self->_presentationState;
  if (presentationState != state)
  {
    self->_presentationState = state;
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = SiriUIPresentationStateGetName();
      v8 = SiriUIPresentationStateGetName();
      v11 = 136315650;
      v12 = "[SiriPresentationViewController setPresentationState:]";
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation updating presentation state from %@ to %@", &v11, 0x20u);
    }

    if ([(SiriPresentationViewController *)self siriViewControllerConfigured])
    {
      siriViewController = [(SiriPresentationViewController *)self siriViewController];
      [siriViewController presentationStateUpdatedFromPresentationState:presentationState toPresentationState:self->_presentationState];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_failedToPresentSiriWithError:(id)error
{
  errorCopy = error;
  connection = [(SiriPresentationViewController *)self connection];
  remoteTarget = [connection remoteTarget];
  v6 = remoteTarget;
  if (errorCopy)
  {
    [remoteTarget failedToPresentSiriWithError:errorCopy];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.siri.activation" code:1 userInfo:&unk_2833B4E58];
    [v6 failedToPresentSiriWithError:v7];
  }
}

- (id)_createPatternFromAHAP:(id)p
{
  v25 = *MEMORY[0x277D85DE8];
  pCopy = p;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 URLForResource:pCopy withExtension:@"ahap"];

  if (v5)
  {
    v20 = 0;
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5 options:0 error:&v20];
    v7 = v20;
    if (v7)
    {
      v8 = v7;
      v9 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v22 = "[SiriPresentationViewController _createPatternFromAHAP:]";
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s Error reading pattern file: %@", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_19;
    }

    v19 = 0;
    v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v19];
    v13 = v19;
    if (v13)
    {
      v8 = v13;
      v14 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v22 = "[SiriPresentationViewController _createPatternFromAHAP:]";
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&dword_21FEE5000, v14, OS_LOG_TYPE_DEFAULT, "%s Error parsing JSON data: %@", buf, 0x16u);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = 0;
        v10 = [objc_alloc(MEMORY[0x277CBF6D0]) initWithDictionary:v12 error:&v18];
        v8 = v18;
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v15 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = "[SiriPresentationViewController _createPatternFromAHAP:]";
        _os_log_impl(&dword_21FEE5000, v15, OS_LOG_TYPE_DEFAULT, "%s Error creating haptic pattern returning nil", buf, 0xCu);
      }

      v8 = 0;
    }

    v10 = 0;
    goto LABEL_18;
  }

  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[SiriPresentationViewController _createPatternFromAHAP:]";
    v23 = 2112;
    v24 = pCopy;
    _os_log_impl(&dword_21FEE5000, v11, OS_LOG_TYPE_DEFAULT, "%s Pattern file not found: %@", buf, 0x16u);
  }

  v10 = 0;
LABEL_20:

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_setupTamaleHaptic
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __52__SiriPresentationViewController__setupTamaleHaptic__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277CEF098];
  if (v2 && os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __52__SiriPresentationViewController__setupTamaleHaptic__block_invoke_cold_1();
  }

  if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    __52__SiriPresentationViewController__setupTamaleHaptic__block_invoke_cold_2();
  }

  return 1;
}

- (void)_playTamaleHaptic
{
  v9 = *MEMORY[0x277D85DE8];
  [(SiriPresentationViewController *)self _setupTamaleHaptic];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[SiriPresentationViewController _playTamaleHaptic]";
    _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s Tamale Starting haptic playback", buf, 0xCu);
  }

  hapticPlayer = self->hapticPlayer;
  v6 = 0;
  [(CHHapticPatternPlayer *)hapticPlayer startAtTime:&v6 error:0.0];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_prewarmCameraForBundleIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[SiriPresentationViewController _prewarmCameraForBundleIdentifier:]";
    v15 = 2114;
    v16 = identifierCopy;
    _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation prewarming camera for bundleID '%{public}@'", buf, 0x16u);
  }

  v5 = *MEMORY[0x277CE5900];
  v12[0] = *MEMORY[0x277CE58F8];
  v6 = *MEMORY[0x277CE5918];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{mach_absolute_time(), v5, v6}];
  v12[1] = v7;
  v11[2] = *MEMORY[0x277CE5928];
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:mach_continuous_time()];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  AVCapturePrewarmWithOptions();

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)_applicationStateHelper
{
  v2 = objc_alloc_init(MEMORY[0x277D61A30]);

  return v2;
}

- (BOOL)_isPresentingVisualIntelligenceCamera
{
  siriViewControllerConfigured = [(SiriPresentationViewController *)self siriViewControllerConfigured];
  if (siriViewControllerConfigured)
  {
    siriViewController = self->_siriViewController;

    LOBYTE(siriViewControllerConfigured) = [(AFUISiriViewController *)siriViewController isSceneHostingVisualIntelligence];
  }

  return siriViewControllerConfigured;
}

+ (id)extractTestingInputsFromContext:(id)context
{
  v42 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = objc_opt_new();
  [contextCopy objectForKey:*MEMORY[0x277D55280]];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v5 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v37;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v36 + 1) + 8 * i);
        v10 = objc_alloc(MEMORY[0x277D551B8]);
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __75__SiriPresentationViewController_Testing__extractTestingInputsFromContext___block_invoke;
        v35[3] = &unk_278430120;
        v35[4] = v9;
        v11 = [v10 initWithBuilder:v35];
        [v4 addObject:v11];
      }

      v6 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v6);
  }

  v12 = [contextCopy objectForKey:{*MEMORY[0x277D55260], self}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v31 + 1) + 8 * j);
        v18 = objc_alloc(MEMORY[0x277D551B8]);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __75__SiriPresentationViewController_Testing__extractTestingInputsFromContext___block_invoke_2;
        v30[3] = &unk_278430120;
        v30[4] = v17;
        v19 = [v18 initWithBuilder:v30];
        [v4 addObject:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v14);
  }

  v20 = *MEMORY[0x277D55268];
  v21 = [contextCopy objectForKey:*MEMORY[0x277D55268]];

  if (v21)
  {
    v22 = [contextCopy objectForKey:v20];
    v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277D55278]];
    v24 = [v22 objectForKeyedSubscript:*MEMORY[0x277D55270]];
    [v28 _failTestWithName:v23 andFailure:v24];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v4;
}

void __75__SiriPresentationViewController_Testing__extractTestingInputsFromContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setText:v2];
  [v3 setType:1];
}

void __75__SiriPresentationViewController_Testing__extractTestingInputsFromContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v2 fileURLWithPath:v3];
  [v5 setRecordedSpeechURL:v4];

  [v5 setType:2];
}

- (void)_processIncomingRequestOptionsForTestingPayload:(id)payload
{
  v18 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  testingContext = [payloadCopy testingContext];

  if (testingContext)
  {
    [(SiriPresentationViewController *)self _clearAllTestingInputs];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    testingContext2 = [payloadCopy testingContext];
    v7 = [SiriPresentationViewController extractTestingInputsFromContext:testingContext2];

    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(SiriPresentationViewController *)self _enqueueTestInput:*(*(&v13 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_clearAllTestingInputs
{
  _testInputQueue = [(SiriPresentationViewController *)self _testInputQueue];
  dequeueAllObjects = [_testInputQueue dequeueAllObjects];
}

- (void)_enqueueTestInput:(id)input
{
  inputCopy = input;
  _testInputQueue = [(SiriPresentationViewController *)self _testInputQueue];
  [_testInputQueue enqueueObject:inputCopy];
}

- (id)_dequeueTestingInput
{
  _testInputQueue = [(SiriPresentationViewController *)self _testInputQueue];
  dequeueObject = [_testInputQueue dequeueObject];

  return dequeueObject;
}

- (void)_runSyntheticButtonActivationTest
{
  v2 = objc_alloc_init(SASHIDGenerator);
  if (MGGetSInt32Answer() == 2)
  {
    [(SASHIDGenerator *)v2 sendHoldLockButtonHIDEvents];
  }

  else
  {
    [(SASHIDGenerator *)v2 sendHoldHomeButtonHIDEvents];
  }
}

- (void)_startUIRequestWithText:(id)text testName:(id)name
{
  v4 = MEMORY[0x277CEF3A8];
  textCopy = text;
  v6 = objc_alloc_init(v4);
  [v6 startUIRequest:textCopy];

  [v6 barrier];
}

- (void)_removePreviousConversationIfNeededWithTestName:(id)name testOptions:(id)options
{
  v4 = [options objectForKeyedSubscript:@"keepPreviousConversation"];
  bOOLValue = [v4 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v6 = objc_alloc_init(MEMORY[0x277CEF228]);
    [v6 removeConversationWithIdentifier:*MEMORY[0x277CEF658] completionBlock:0];
  }
}

void __98__SiriPresentationViewController_initWithIdentifier_hostedPresentationFrame_displayConfiguration___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __98__SiriPresentationViewController_initWithIdentifier_hostedPresentationFrame_displayConfiguration___block_invoke_99_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)hasContentAtPoint:(CGFloat)a3 completion:.cold.1(void *a1, CGFloat a2, CGFloat a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v15.x = a2;
  v15.y = a3;
  v6 = NSStringFromCGPoint(v15);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_21FEE5000, v7, v8, "%s #dismissal Checking for content at point: %@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)hasContentAtPoint:(CGFloat)a3 completion:.cold.2(void *a1, CGFloat a2, CGFloat a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v15.x = a2;
  v15.y = a3;
  v6 = NSStringFromCGPoint(v15);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_21FEE5000, v7, v8, "%s #dismissal Siri has content at point %@? YES", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x277D85DE8];
}

void __63__SiriPresentationViewController_hasContentAtPoint_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = a2;
  v13.x = v2;
  v13.y = v3;
  v5 = NSStringFromCGPoint(v13);
  v11 = NSStringFromBOOL();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v6, v7, OS_LOG_TYPE_DEBUG, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)siriEffectsViewController
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_21FEE5000, self, a3, "%s SiriPresentationViewController creating siri effects VC", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)didPresentLocationTCC:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3_0() debugDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)didDismissLocationTCC:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_3_0() debugDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_activeTCCHasContentAtPoint:(os_log_t)log .cold.1(char a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = @"was not";
  v6 = "[SiriPresentationViewController _activeTCCHasContentAtPoint:]";
  v5 = 136315650;
  if (a1)
  {
    v3 = @"was";
  }

  v7 = 2048;
  v8 = a2;
  v9 = 2112;
  v10 = v3;
  _os_log_debug_impl(&dword_21FEE5000, log, OS_LOG_TYPE_DEBUG, "%s #location #dismissal hit testing %lu alerts - touch %@ in content.", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

void __68__SiriPresentationViewController__tearDownSiriEffectsViewController__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __72__SiriPresentationViewController__startDeviceScreenEngagementController__block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _deviceScreenEngagementController];
  v10[0] = 136315650;
  OUTLINED_FUNCTION_5();
  v11 = v8;
  v12 = a3;
  _os_log_error_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_ERROR, "%s #userAttention Failed to start device screen engagement: %{public}@, error: %{public}@", v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_shouldProceedPresentingSiriViewController
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_prepareSiriViewControllerWithRequestOptions:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_viewModeForRequestOptions:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_presentationDismissalRequestedWithOptions:withCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_presentationDismissalRequestedWithOptions:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_21FEE5000, a1, a3, "%s SiriPresentationViewController invalidating platform hosting instrumentation handler for dismissal", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_presentationDismissalRequestedWithOptions:withCompletion:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_cancelPendingActivationWithReason:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)siriViewController
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  callStackSymbols = [OUTLINED_FUNCTION_3_0() callStackSymbols];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_dismissDueToUnexpectedError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_logSignatureWithType:subType:context:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_watchdogQueue_startAnimationDismissalWatchdogTimerWithTimeoutHandler:shouldTurnScreenOff:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __124__SiriPresentationViewController__watchdogQueue_startAnimationDismissalWatchdogTimerWithTimeoutHandler_shouldTurnScreenOff___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__SiriPresentationViewController__waitForPing__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_presentationIdentifierFromUIPresentationIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_createPatternFromAHAP:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = objc_begin_catch(a1);
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 0x16u);
  }

  objc_end_catch();
  v6 = *MEMORY[0x277D85DE8];
}

void __52__SiriPresentationViewController__setupTamaleHaptic__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__SiriPresentationViewController__setupTamaleHaptic__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end