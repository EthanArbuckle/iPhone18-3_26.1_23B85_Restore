@interface SBNotificationBannerDestination
+ (id)_test_notificationRequestForBannerWithIcon;
- (BNPresentable)presentablePendingSnapshot;
- (BOOL)_canReceiveNotificationRequestIfAmbientPresented:(id)presented;
- (BOOL)_canReceiveNotificationRequestIfLocked:(id)locked;
- (BOOL)_isAmbientNotificationsPreviewOnTapOnly;
- (BOOL)_isAmbientPresented;
- (BOOL)_isBundleIdentifierBlockedForCommunicationPolicy:(id)policy;
- (BOOL)_isBundleIdentifierBlockedForScreenTimeExpiration:(id)expiration;
- (BOOL)_isContentSuppressedForNotificationRequest:(id)request;
- (BOOL)_isDeviceAuthenticated;
- (BOOL)_isDismissingLongLookForBanner;
- (BOOL)_isInSetupMode;
- (BOOL)_isPresentedBannerBeingDragged;
- (BOOL)_isPresentingBanner;
- (BOOL)_isPresentingBannerInLongLook;
- (BOOL)_isPresentingBannerPreventingAutomaticLock;
- (BOOL)_isPresentingBannerRequestingRaiseGesture;
- (BOOL)_isPresentingBannerWithHiddenPreview;
- (BOOL)_isPresentingStickyBanner;
- (BOOL)_isShowingShortLookAtRest;
- (BOOL)_isUILocked;
- (BOOL)_presentedBannerMatchesNotificationRequest:(id)request;
- (BOOL)_revokeAllPresentablesWithRequesterIdentifier:(id)identifier reason:(id)reason options:(unint64_t)options;
- (BOOL)_shouldAllowDragInteraction;
- (BOOL)_shouldDismissPresentedBannerPerformingPreludeForcingIfSticky:(BOOL)sticky outReason:(id *)reason;
- (BOOL)_shouldForceDismisssIfStickyForReason:(id)reason;
- (BOOL)_shouldHideStatusBar;
- (BOOL)_shouldScreenTimeSuppressNotificationRequest:(id)request;
- (BOOL)_shouldScreenTimeSuppressNotificationsForBundleIdentifier:(id)identifier;
- (BOOL)canReceiveNotificationRequest:(id)request;
- (BOOL)handleHomeButtonPress;
- (BOOL)isNotificationContentExtensionVisible:(id)visible;
- (BOOL)isPresentingEmergencyNotification;
- (BOOL)notificationViewControllerShouldAllowExpandedPlatterInteraction:(id)interaction;
- (BOOL)shouldDismissForReason:(id)reason outReason:(id *)outReason;
- (CGRect)presentedBannerScreenFrame;
- (NCNotificationAlertDestinationDelegate)delegate;
- (NCNotificationRequest)_presentedNotificationRequest;
- (NCNotificationViewController)presentedBanner;
- (NSString)coverSheetIdentifier;
- (SBNotificationBannerDestination)init;
- (SBNotificationPresentableViewController)_presentedNotificationPresentableVC;
- (id)_ambientPresentationController;
- (id)_dashBoardLegibilitySettings;
- (id)_notificationSectionSettingsForSectionIdentifier:(id)identifier;
- (id)_notificationSystemSettings;
- (id)_notificationViewControllerForRequest:(id)request;
- (id)_notificationViewControllerFromPresentable:(id)presentable;
- (id)_presentableForRequest:(id)request modal:(BOOL)modal;
- (id)_presentedNotificationRequestPresenter;
- (id)_requestFromPresentable:(id)presentable;
- (id)_startTimerWithDelay:(unint64_t)delay eventHandler:(id)handler;
- (id)_staticContentProviderForViewController:(id)controller class:(Class)class notificationRequest:(id)request test:(id)test;
- (id)notificationRequestPresenter:(id)presenter staticContentProviderForNotificationRequest:(id)request;
- (id)notificationRequestPresenterNotificationUsageTrackingState:(id)state;
- (id)notificationViewController:(id)controller auxiliaryOptionsContentProviderForNotificationRequest:(id)request withLongLook:(BOOL)look;
- (id)notificationViewControllerContainerViewProviderForExpandedContent:(id)content;
- (int64_t)participantState;
- (unint64_t)importantAdornmentEligibleOptionsForNotificationViewController:(id)controller;
- (void)_cancelDismissTimer;
- (void)_cancelReplaceAndDismissTimers;
- (void)_cancelReplaceTimer;
- (void)_dismissPresentableCompleted:(id)completed;
- (void)_dismissPresentedBannerOnly:(BOOL)only reason:(id)reason animated:(BOOL)animated;
- (void)_dismissPresentedBannerOnly:(BOOL)only reason:(id)reason animated:(BOOL)animated forceIfSticky:(BOOL)sticky;
- (void)_handleExpansionRequestForViewController:(id)controller notificationRequest:(id)request forTrigger:(int64_t)trigger test:(id)test completionBlock:(id)block;
- (void)_invalidateBiometricAuthIfNecessary;
- (void)_lockStateChanged;
- (void)_performCancelAction;
- (void)_performSilenceAction;
- (void)_postNotificationRequest:(id)request modal:(BOOL)modal completion:(id)completion;
- (void)_postPresentableForRequest:(id)request modal:(BOOL)modal completion:(id)completion;
- (void)_publishDidPresentBannerForNotificationRequest:(id)request;
- (void)_requestBiometricAuthIfAmbientPresentedForNotificationRequest:(id)request;
- (void)_requestUnlockForExpansionForViewController:(id)controller notificationRequest:(id)request completionBlock:(id)block;
- (void)_resetPresentTimer;
- (void)_setReadyForNotificationRequests;
- (void)_setReadyForNotificationRequestsCoalescingWith:(id)with;
- (void)_setStatusBarsHidden:(BOOL)hidden withDuration:(double)duration;
- (void)_setupModeChanged;
- (void)_setupSystemStateChangeNotifications;
- (void)_setupTimers;
- (void)_startDismissTimer;
- (void)_startReplaceAndDismissTimersForRequest:(id)request;
- (void)_startReplaceTimer;
- (void)_updateMotionGestureObservation;
- (void)_userInteractionDidEndForRequestPresenter:(id)presenter;
- (void)_userInteractionWillBeginForRequestPresenter:(id)presenter;
- (void)backlightController:(id)controller didAnimateBacklightToFactor:(float)factor source:(int64_t)source;
- (void)coronaAnimationController:(id)controller willAnimateCoronaTransitionWithAnimator:(id)animator;
- (void)dealloc;
- (void)didReceiveRaiseGesture;
- (void)fullScreenPresentableViewController:(id)controller requestsDismissalWithReason:(id)reason;
- (void)longLookDidDismissForNotificationViewController:(id)controller;
- (void)longLookDidPresentForNotificationViewController:(id)controller;
- (void)longLookWillDismissForNotificationViewController:(id)controller;
- (void)longLookWillPresentForNotificationViewController:(id)controller;
- (void)modifyNotificationRequest:(id)request;
- (void)notificationManagementContentProvider:(id)provider requestsPresentingNotificationManagementViewType:(unint64_t)type forNotificationRequest:(id)request withPresentingView:(id)view;
- (void)notificationManagementViewPresenter:(id)presenter setAllowsCriticalAlerts:(BOOL)alerts forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationManagementViewPresenter:(id)presenter setAllowsNotifications:(BOOL)notifications forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationManagementViewPresenter:(id)presenter setAllowsTimeSensitive:(BOOL)sensitive forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationManagementViewPresenter:(id)presenter setDeliverQuietly:(BOOL)quietly forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationManagementViewPresenter:(id)presenter setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier;
- (void)notificationManagementViewPresenterDidDismissManagementView:(id)view;
- (void)notificationManagementViewPresenterWillPresentManagementView:(id)view;
- (void)notificationPresentableViewController:(id)controller presentationSize:(CGSize *)size containerSize:(CGSize *)containerSize;
- (void)notificationRequestPresenter:(id)presenter didVendTransitionBlockingAssertion:(id)assertion;
- (void)notificationRequestPresenter:(id)presenter executeAction:(id)action withParameters:(id)parameters completion:(id)completion;
- (void)notificationRequestPresenter:(id)presenter shouldTransitionToStage:(id)stage forTrigger:(int64_t)trigger completionBlock:(id)block;
- (void)notificationViewController:(id)controller dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)notificationViewController:(id)controller dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation;
- (void)notificationViewController:(id)controller requestPermissionToExecuteAction:(id)action withParameters:(id)parameters completion:(id)completion;
- (void)prepareDestinationToReceiveCriticalNotificationRequest:(id)request;
- (void)presentModalBannerAndExpandForNotificationRequest:(id)request;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason;
- (void)registerNotificationBannerDestinationObserver:(id)observer;
- (void)setAssistantController:(id)controller;
- (void)setLockScreenManager:(id)manager;
- (void)setSystemStatusBarAssertion:(id)assertion;
- (void)unregisterNotificationBannerDestinationObserver:(id)observer;
- (void)userInteractionDidEndForBannerForPresentable:(id)presentable;
- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable;
- (void)withdrawNotificationRequest:(id)request;
@end

@implementation SBNotificationBannerDestination

- (BOOL)_isPresentingBanner
{
  presentedPresentable = [(SBNotificationBannerDestination *)self presentedPresentable];
  v3 = presentedPresentable != 0;

  return v3;
}

- (BOOL)_isPresentingBannerInLongLook
{
  _isPresentingBanner = [(SBNotificationBannerDestination *)self _isPresentingBanner];
  if (_isPresentingBanner)
  {
    _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
    notificationViewController = [_presentedNotificationPresentableVC notificationViewController];
    hasCommittedToPresentingCustomContentProvidingViewController = [notificationViewController hasCommittedToPresentingCustomContentProvidingViewController];

    LOBYTE(_isPresentingBanner) = hasCommittedToPresentingCustomContentProvidingViewController;
  }

  return _isPresentingBanner;
}

- (BOOL)_shouldHideStatusBar
{
  if (SBFEffectiveHomeButtonType() == 2)
  {
    return 0;
  }

  if (__sb__runningInSpringBoard())
  {
    return SBFEffectiveDeviceClass() != 2;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v2 = [currentDevice userInterfaceIdiom] != 1;

  return v2;
}

- (void)_cancelReplaceAndDismissTimers
{
  [(SBNotificationBannerDestination *)self _cancelReplaceTimer];

  [(SBNotificationBannerDestination *)self _cancelDismissTimer];
}

- (void)_cancelReplaceTimer
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, v0, v1, "canceling replace timer %@", v2, v3, v4, v5, v6);
}

- (void)_cancelDismissTimer
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, v0, v1, "canceling dismiss timer %@", v2, v3, v4, v5, v6);
}

- (int64_t)participantState
{
  if ([(SBNotificationBannerDestination *)self _isPresentingBannerInLongLook])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (SBNotificationPresentableViewController)_presentedNotificationPresentableVC
{
  presentedPresentable = self->_presentedPresentable;
  v3 = objc_opt_class();
  v4 = presentedPresentable;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (NCNotificationAlertDestinationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_lockStateChanged
{
  lockScreenManager = [(SBNotificationBannerDestination *)self lockScreenManager];
  isUILocked = [lockScreenManager isUILocked];

  if ((isUILocked & 1) == 0)
  {
    [(SBNotificationBannerDestination *)self _resetPresentTimer];
  }

  if ([(SBNotificationBannerDestination *)self _isPresentingBannerWithHiddenPreview])
  {
    _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
    notificationViewController = [_presentedNotificationPresentableVC notificationViewController];

    [notificationViewController invalidateContentProviders];
  }
}

- (BOOL)_isPresentingBannerWithHiddenPreview
{
  _presentedNotificationRequest = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
  options = [_presentedNotificationRequest options];
  contentPreviewSetting = [options contentPreviewSetting];

  result = [(SBNotificationBannerDestination *)self _isPresentingBanner];
  if (!contentPreviewSetting)
  {
    return 0;
  }

  return result;
}

- (NCNotificationRequest)_presentedNotificationRequest
{
  _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  notificationViewController = [_presentedNotificationPresentableVC notificationViewController];
  notificationRequest = [notificationViewController notificationRequest];
  if (notificationRequest || (objc_opt_respondsToSelector() & 1) == 0)
  {
    notificationRequest2 = notificationRequest;
  }

  else
  {
    notificationRequest2 = [(BNPresentable *)self->_presentedPresentable notificationRequest];
  }

  v7 = notificationRequest2;

  return v7;
}

- (void)_resetPresentTimer
{
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEBUG))
  {
    [SBNotificationBannerDestination _resetPresentTimer];
  }

  presentTimer = self->_presentTimer;
  v4 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(presentTimer, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (BOOL)_isShowingShortLookAtRest
{
  _isPresentingBanner = [(SBNotificationBannerDestination *)self _isPresentingBanner];
  if (_isPresentingBanner)
  {
    if ([(SBNotificationBannerDestination *)self _isPresentedBannerBeingDragged])
    {
      LOBYTE(_isPresentingBanner) = 0;
    }

    else
    {
      LOBYTE(_isPresentingBanner) = ![(SBNotificationBannerDestination *)self _isPresentingBannerInLongLook];
    }
  }

  return _isPresentingBanner;
}

- (BOOL)_isPresentedBannerBeingDragged
{
  _isPresentingBanner = [(SBNotificationBannerDestination *)self _isPresentingBanner];
  if (_isPresentingBanner)
  {
    _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
    isDragging = [_presentedNotificationPresentableVC isDragging];

    LOBYTE(_isPresentingBanner) = isDragging;
  }

  return _isPresentingBanner;
}

void __47__SBNotificationBannerDestination__setupTimers__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEBUG))
  {
    __47__SBNotificationBannerDestination__setupTimers__block_invoke_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SBNotificationBannerDestination__setupTimers__block_invoke_131;
  block[3] = &unk_2783A8C18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_setReadyForNotificationRequests
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ is now ready to receive notifications", &v8, 0xCu);
  }

  delegate = [(SBNotificationBannerDestination *)self delegate];
  if ([(SBNotificationBannerDestination *)self _isUILocked])
  {
    [delegate destination:self didBecomeReadyToReceiveNotificationsPassingTest:&__block_literal_global_200];
  }

  else
  {
    [delegate destinationDidBecomeReadyToReceiveNotifications:self];
  }
}

- (BOOL)_isUILocked
{
  lockScreenManager = [(SBNotificationBannerDestination *)self lockScreenManager];
  isUILocked = [lockScreenManager isUILocked];

  return isUILocked;
}

+ (id)_test_notificationRequestForBannerWithIcon
{
  v23[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D77E48] notificationRequestWithRequestDestination:*MEMORY[0x277D77FC8]];
  v3 = [v2 mutableCopy];

  v4 = MEMORY[0x277D755B8];
  sectionIdentifier = [v3 sectionIdentifier];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v20 = [v4 _applicationIconImageForBundleIdentifier:sectionIdentifier format:5 scale:?];

  content = [v3 content];
  v8 = [content mutableCopy];

  v23[0] = v20;
  null = [MEMORY[0x277CBEB68] null];
  v23[1] = null;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [v8 setIcons:v10];

  [v3 setContent:v8];
  v11 = objc_alloc_init(MEMORY[0x277D77DF8]);
  v12 = objc_alloc_init(SBNotificationBannerDestinationTestActionRunner);
  [v11 setActionRunner:v12];
  [v11 setShouldDismissNotification:1];
  [v3 setClearAction:v11];
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc_init(MEMORY[0x277D77DF8]);
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Action %lu", 0];
  [v14 setTitle:v15];

  [v14 setActionRunner:v12];
  [v14 setShouldDismissNotification:0];
  [v13 addObject:v14];

  v16 = objc_alloc_init(MEMORY[0x277D77DF8]);
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Action %lu", 1];
  [v16 setTitle:v17];

  [v16 setActionRunner:v12];
  [v16 setShouldDismissNotification:0];
  [v13 addObject:v16];

  v21 = *MEMORY[0x277D77DA0];
  v22 = v13;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  [v3 setSupplementaryActions:v18];

  return v3;
}

- (SBNotificationBannerDestination)init
{
  v18.receiver = self;
  v18.super_class = SBNotificationBannerDestination;
  v2 = [(SBNotificationBannerDestination *)&v18 init];
  if (v2)
  {
    v3 = objc_opt_new();
    destinationObservers = v2->_destinationObservers;
    v2->_destinationObservers = v3;

    [(SBNotificationBannerDestination *)v2 _setupSystemStateChangeNotifications];
    [(SBNotificationBannerDestination *)v2 _setupTimers];
    bannerManager = [SBApp bannerManager];
    v6 = objc_alloc_init(MEMORY[0x277D78058]);
    requesterIdentifier = [MEMORY[0x277D78058] requesterIdentifier];
    [bannerManager registerAuthority:v6 forRequesterIdentifier:requesterIdentifier];

    v8 = +[SBSceneManagerCoordinator sharedInstance];
    sceneDeactivationManager = [v8 sceneDeactivationManager];
    v10 = [sceneDeactivationManager newAssertionWithReason:6];
    resignActiveAssertion = v2->_resignActiveAssertion;
    v2->_resignActiveAssertion = v10;

    v12 = objc_alloc_init(MEMORY[0x277D78078]);
    notificationManagementPresenter = v2->_notificationManagementPresenter;
    v2->_notificationManagementPresenter = v12;

    [(NCNotificationManagementViewPresenter *)v2->_notificationManagementPresenter setDelegate:v2];
    v14 = +[SBBacklightController sharedInstanceIfExists];
    [v14 addObserver:v2];

    v15 = [objc_alloc(MEMORY[0x277D78030]) initWithNotificationAlertDestination:v2];
    transitionBlockingPrototypeRecipe = v2->_transitionBlockingPrototypeRecipe;
    v2->_transitionBlockingPrototypeRecipe = v15;
  }

  return v2;
}

- (void)setAssistantController:(id)controller
{
  controllerCopy = controller;
  assistantController = self->_assistantController;
  if (assistantController != controllerCopy)
  {
    v7 = controllerCopy;
    [(SBAssistantController *)assistantController removeObserver:self];
    objc_storeStrong(&self->_assistantController, controller);
    [(SBAssistantController *)self->_assistantController addObserver:self];
    controllerCopy = v7;
  }
}

- (void)setLockScreenManager:(id)manager
{
  managerCopy = manager;
  lockScreenManager = self->_lockScreenManager;
  if (lockScreenManager != managerCopy)
  {
    v9 = managerCopy;
    coverSheetViewController = [(SBLockScreenManager *)lockScreenManager coverSheetViewController];
    [coverSheetViewController unregisterExternalBehaviorProvider:self];

    objc_storeStrong(&self->_lockScreenManager, manager);
    coverSheetViewController2 = [(SBLockScreenManager *)self->_lockScreenManager coverSheetViewController];
    [coverSheetViewController2 registerExternalBehaviorProvider:self];

    managerCopy = v9;
  }
}

- (void)dealloc
{
  [(SBNotificationBannerDestination *)self setAssistantController:0];
  [(SBNotificationBannerDestination *)self setLockScreenManager:0];
  [(BSInvalidatable *)self->_biometricMatchingAssertion invalidate];
  v3.receiver = self;
  v3.super_class = SBNotificationBannerDestination;
  [(SBNotificationBannerDestination *)&v3 dealloc];
}

- (BOOL)_shouldForceDismisssIfStickyForReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"dismissOverlays"] & 1) != 0 || (objc_msgSend(reasonCopy, "isEqualToString:", @"SBBannerManagerDismissalReasonLock") & 1) != 0 || (objc_msgSend(reasonCopy, "isEqualToString:", @"performSleep") & 1) != 0 || (objc_msgSend(reasonCopy, "isEqualToString:", @"mainScreenAnimationController"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [reasonCopy isEqualToString:@"assistantWillAppear"];
  }

  return v4;
}

- (BOOL)shouldDismissForReason:(id)reason outReason:(id *)outReason
{
  v6 = [(SBNotificationBannerDestination *)self _shouldForceDismisssIfStickyForReason:reason];

  return [(SBNotificationBannerDestination *)self _shouldDismissPresentedBannerPerformingPreludeForcingIfSticky:v6 outReason:outReason];
}

- (BOOL)isPresentingEmergencyNotification
{
  _presentedNotificationRequest = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
  options = [_presentedNotificationRequest options];
  if ([options revealsAdditionalContentOnPresentation] && -[SBNotificationBannerDestination _isPresentingBannerInLongLook](self, "_isPresentingBannerInLongLook"))
  {
    v5 = ![(SBNotificationBannerDestination *)self _isDismissingLongLookForBanner];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (CGRect)presentedBannerScreenFrame
{
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  if ([(SBNotificationBannerDestination *)self _isPresentingBanner])
  {
    _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
    v8 = _presentedNotificationPresentableVC;
    if (_presentedNotificationPresentableVC)
    {
      notificationViewController = [_presentedNotificationPresentableVC notificationViewController];
      [notificationViewController _lookView];
    }

    else
    {
      notificationViewController = UIViewControllerFromPresentable();
      [notificationViewController viewIfLoaded];
    }
    v10 = ;

    if (v10)
    {
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      window = [v10 window];
      screen = [window screen];
      fixedCoordinateSpace = [screen fixedCoordinateSpace];
      [v10 convertRect:fixedCoordinateSpace toCoordinateSpace:{v12, v14, v16, v18}];
      v3 = v22;
      v4 = v23;
      v5 = v24;
      v6 = v25;
    }
  }

  v26 = v3;
  v27 = v4;
  v28 = v5;
  v29 = v6;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)presentModalBannerAndExpandForNotificationRequest:(id)request
{
  v12 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138543362;
    v11 = un_logDigest;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Presenting and expanding modal banner for notification %{public}@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__SBNotificationBannerDestination_presentModalBannerAndExpandForNotificationRequest___block_invoke;
  v9[3] = &unk_2783A8C18;
  v9[4] = self;
  [(SBNotificationBannerDestination *)self _postNotificationRequest:requestCopy modal:0 completion:v9];
}

void __85__SBNotificationBannerDestination_presentModalBannerAndExpandForNotificationRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _presentedNotificationPresentableVC];
  v1 = [v2 notificationViewController];
  [v1 expandAndPlayMedia];
}

- (void)registerNotificationBannerDestinationObserver:(id)observer
{
  observerCopy = observer;
  destinationObservers = [(SBNotificationBannerDestination *)self destinationObservers];
  [destinationObservers addObject:observerCopy];
}

- (void)unregisterNotificationBannerDestinationObserver:(id)observer
{
  observerCopy = observer;
  destinationObservers = [(SBNotificationBannerDestination *)self destinationObservers];
  [destinationObservers removeObject:observerCopy];
}

- (BOOL)canReceiveNotificationRequest:(id)request
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if ([(SBNotificationBannerDestination *)self _isPresentingStickyBanner]|| [(SBNotificationBannerDestination *)self isUserInteractionInProgress])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(SBNotificationBannerDestination *)self _isInSetupMode];
  }

  v6 = [(SBNotificationBannerDestination *)self _canReceiveNotificationRequestIfLocked:requestCopy];
  v7 = [(SBNotificationBannerDestination *)self _canReceiveNotificationRequestIfAmbientPresented:requestCopy];
  v8 = v5 & v6;
  v9 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    identifier = [(SBNotificationBannerDestination *)self identifier];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v12 = NSStringFromBOOL();
    *buf = 138545154;
    v17 = identifier;
    v18 = 2114;
    v19 = un_logDigest;
    v20 = 2114;
    v21 = v12;
    v22 = 1024;
    _isPresentingStickyBanner = [(SBNotificationBannerDestination *)self _isPresentingStickyBanner];
    v24 = 1024;
    isUserInteractionInProgress = [(SBNotificationBannerDestination *)self isUserInteractionInProgress];
    v26 = 1024;
    _isInSetupMode = [(SBNotificationBannerDestination *)self _isInSetupMode];
    v28 = 1024;
    v29 = v6;
    v30 = 1024;
    v31 = v7;
    _os_log_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ can receive notification %{public}@: %{public}@ [ stickyVisible: %d isUserInteractionInProgress: %d inSetupMode: %d canReceiveNotificationRequestIfLocked: %d canReceiveIfAmbientPresented: %d ]", buf, 0x3Eu);
  }

  return v8 & v7;
}

- (void)modifyNotificationRequest:(id)request
{
  requestCopy = request;
  if ([(SBNotificationBannerDestination *)self _presentedBannerMatchesNotificationRequest:requestCopy])
  {
    v5 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEBUG))
    {
      [SBNotificationBannerDestination modifyNotificationRequest:v5];
    }

    _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
    notificationViewController = [_presentedNotificationPresentableVC notificationViewController];

    [notificationViewController setNotificationRequest:requestCopy];
    v8 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__SBNotificationBannerDestination_modifyNotificationRequest___block_invoke;
    v10[3] = &unk_2783A8C18;
    v11 = notificationViewController;
    v9 = notificationViewController;
    [v8 animateWithDuration:v10 animations:0.25];
  }
}

- (void)withdrawNotificationRequest:(id)request
{
  requestCopy = request;
  if (![(SBNotificationBannerDestination *)self _isPresentingBannerInLongLook]&& [(SBNotificationBannerDestination *)self _isPresentingStickyBanner]&& [(SBNotificationBannerDestination *)self _presentedBannerMatchesNotificationRequest:requestCopy])
  {
    v5 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEBUG))
    {
      [SBNotificationBannerDestination withdrawNotificationRequest:v5];
    }

    [(SBNotificationBannerDestination *)self _dismissPresentedBannerOnly:0 reason:@"SBBannerRevocationReasonBannerDestinationWithdraw" animated:1 forceIfSticky:1];
  }
}

- (BOOL)handleHomeButtonPress
{
  if (![(SBNotificationBannerDestination *)self _isPresentingBanner]|| ![(SBNotificationBannerDestination *)self _isPresentingBannerInLongLook]&& ![(SBNotificationBannerDestination *)self _isPresentingStickyBanner])
  {
    return 0;
  }

  [(SBNotificationBannerDestination *)self _performCancelAction];
  v3 = 1;
  [(SBNotificationBannerDestination *)self _dismissPresentedBannerAnimated:1 reason:@"SBBannerRevocationReasonBannerDestinationHomeButtonPress" forceIfSticky:1];
  return v3;
}

- (void)prepareDestinationToReceiveCriticalNotificationRequest:(id)request
{
  if ([(SBNotificationBannerDestination *)self _isPresentingBannerInLongLook]|| [(SBNotificationBannerDestination *)self _isPresentingStickyBanner])
  {
    _presentedNotificationRequest = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
    options = [_presentedNotificationRequest options];
    revealsAdditionalContentOnPresentation = [options revealsAdditionalContentOnPresentation];

    if ((revealsAdditionalContentOnPresentation & 1) == 0)
    {
      [(SBNotificationBannerDestination *)self _performCancelAction];

      [(SBNotificationBannerDestination *)self _dismissPresentedBannerAnimated:1 reason:@"SBBannerRevocationReasonBannerDestinationCriticalRequest" forceIfSticky:1];
    }
  }
}

- (BOOL)isNotificationContentExtensionVisible:(id)visible
{
  visibleCopy = visible;
  _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  notificationViewController = [_presentedNotificationPresentableVC notificationViewController];
  v7 = [notificationViewController isContentExtensionVisible:visibleCopy];

  return v7;
}

- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason
{
  v18 = *MEMORY[0x277D85DE8];
  bannerCopy = banner;
  reasonCopy = reason;
  v8 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    identifier = [(SBNotificationBannerDestination *)self identifier];
    v12 = 138543874;
    v13 = identifier;
    v14 = 2114;
    v15 = bannerCopy;
    v16 = 2114;
    v17 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presentable %{public}@ will NOT appear as banner with reason '%{public}@'", &v12, 0x20u);
  }

  [(SBNotificationBannerDestination *)self _cancelReplaceAndDismissTimers];
  [(SBNotificationBannerDestination *)self _dismissPresentableCompleted:bannerCopy];
  v11 = objc_getAssociatedObject(bannerCopy, &_SBNotificationBannerDestinationBannerRequestCompletion);
  objc_setAssociatedObject(bannerCopy, &_SBNotificationBannerDestinationBannerRequestCompletion, 0, 1);
  if (v11)
  {
    v11[2](v11);
  }
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  v18 = *MEMORY[0x277D85DE8];
  bannerCopy = banner;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    identifier = [(SBNotificationBannerDestination *)self identifier];
    v14 = 138543618;
    v15 = identifier;
    v16 = 2114;
    v17 = bannerCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presentable will appear as banner: %{public}@", &v14, 0x16u);
  }

  [(SBNotificationBannerDestination *)self _cancelReplaceAndDismissTimers];
  v8 = [(SBNotificationBannerDestination *)self _requestFromPresentable:bannerCopy];
  if (!v8)
  {
    [SBNotificationBannerDestination presentableWillAppearAsBanner:];
  }

  bannerManager = [SBApp bannerManager];
  v10 = [bannerManager windowSceneForPresentable:self->_presentedPresentable];
  v11 = [bannerManager bannerWindowInWindowScene:v10];
  sb_coronaAnimationController = [v11 sb_coronaAnimationController];
  [sb_coronaAnimationController addParticipant:self];

  delegate = [(SBNotificationBannerDestination *)self delegate];
  [delegate destination:self willPresentNotificationRequest:v8 suppressAlerts:0];

  [(SBNotificationBannerDestination *)self _requestBiometricAuthIfAmbientPresentedForNotificationRequest:v8];
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  v28 = *MEMORY[0x277D85DE8];
  bannerCopy = banner;
  v5 = MEMORY[0x277D77DB0];
  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    identifier = [(SBNotificationBannerDestination *)self identifier];
    v24 = 138543618;
    v25 = identifier;
    v26 = 2114;
    v27 = bannerCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presentable did appear as banner: %{public}@", &v24, 0x16u);
  }

  v9 = [(SBNotificationBannerDestination *)self _requestFromPresentable:bannerCopy];
  if (!v9)
  {
    [SBNotificationBannerDestination presentableDidAppearAsBanner:];
  }

  options = [v9 options];
  dismissAutomatically = [options dismissAutomatically];

  if (dismissAutomatically)
  {
    [(SBNotificationBannerDestination *)self _startReplaceAndDismissTimersForRequest:v9];
  }

  if ([(SBNotificationBannerDestination *)self isPreventingAutomaticLock])
  {
    v12 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    v13 = [v12 acquireIdleTimerDisableAssertionForReason:@"SBNotificationBannerDestination"];
    idleTimerDisableAssertion = self->_idleTimerDisableAssertion;
    self->_idleTimerDisableAssertion = v13;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained destination:self didPresentNotificationRequest:v9];
  v16 = objc_getAssociatedObject(bannerCopy, &_SBNotificationBannerDestinationBannerRequestCompletion);
  objc_setAssociatedObject(bannerCopy, &_SBNotificationBannerDestinationBannerRequestCompletion, 0, 1);
  if (v16)
  {
    v16[2](v16);
  }

  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v17 = +[SBBacklightController sharedInstanceIfExists];
    backlightState = [v17 backlightState];

    if (backlightState == 1)
    {
      v19 = [(SBNotificationBannerDestination *)self _notificationViewControllerFromPresentable:bannerCopy];
      [v19 setContentReplacedWithSnapshot:1];
    }

    else
    {
      objc_storeWeak(&self->_presentablePendingSnapshot, bannerCopy);
      v20 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        identifier2 = [(SBNotificationBannerDestination *)self identifier];
        v23 = SBBacklightStateDescription(backlightState);
        v24 = 138543618;
        v25 = identifier2;
        v26 = 2114;
        v27 = v23;
        _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ reduce transparency enabled, but backlight factor is %{public}@ – deferring", &v24, 0x16u);
      }
    }
  }
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  v19 = *MEMORY[0x277D85DE8];
  bannerCopy = banner;
  reasonCopy = reason;
  v8 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    identifier = [(SBNotificationBannerDestination *)self identifier];
    v13 = 138543874;
    v14 = identifier;
    v15 = 2114;
    v16 = bannerCopy;
    v17 = 2114;
    v18 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presentable %{public}@ will disappear as banner with reason '%{public}@'", &v13, 0x20u);
  }

  if (self->_presentedPresentable == bannerCopy)
  {
    [(BSInvalidatable *)self->_bannerGestureRecognizerPriorityAssertion invalidate];
    bannerGestureRecognizerPriorityAssertion = self->_bannerGestureRecognizerPriorityAssertion;
    self->_bannerGestureRecognizerPriorityAssertion = 0;

    v12 = [(SBNotificationBannerDestination *)self _requestFromPresentable:bannerCopy];
    if (!v12)
    {
      [SBNotificationBannerDestination presentableWillDisappearAsBanner:withReason:];
    }

    if (([reasonCopy isEqualToString:@"SBBannerManagerDismissalReasonLock"] & 1) != 0 || (objc_msgSend(reasonCopy, "isEqualToString:", @"performSleep") & 1) != 0 || (objc_msgSend(reasonCopy, "isEqualToString:", *MEMORY[0x277CF0A50]) & 1) != 0 || objc_msgSend(reasonCopy, "isEqualToString:", *MEMORY[0x277CF0A58]))
    {
      [(SBNotificationBannerDestination *)self _performSilenceAction];
    }

    else if (([reasonCopy isEqualToString:@"assistantWillAppear"] & 1) != 0 || (objc_msgSend(reasonCopy, "isEqualToString:", @"dismissOverlays") & 1) != 0 || objc_msgSend(reasonCopy, "isEqualToString:", @"SBBannerRevocationReasonBannerDestinationDisabled"))
    {
      [(SBNotificationBannerDestination *)self _performCancelAction];
    }
  }
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  v23 = *MEMORY[0x277D85DE8];
  bannerCopy = banner;
  reasonCopy = reason;
  v8 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    identifier = [(SBNotificationBannerDestination *)self identifier];
    v17 = 138543874;
    v18 = identifier;
    v19 = 2114;
    v20 = bannerCopy;
    v21 = 2114;
    v22 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presentable %{public}@ did disappear as banner with reason '%{public}@'", &v17, 0x20u);
  }

  if (self->_presentedPresentable == bannerCopy)
  {
    v11 = [(SBNotificationBannerDestination *)self _requestFromPresentable:bannerCopy];
    if (!v11)
    {
      [SBNotificationBannerDestination presentableDidDisappearAsBanner:withReason:];
    }

    if (![(SBNotificationBannerDestination *)self _isPresentingBannerInLongLook])
    {
      [(SBNotificationBannerDestination *)self _cancelReplaceAndDismissTimers];
    }

    [(SBNotificationBannerDestination *)self _dismissPresentableCompleted:bannerCopy];
    delegate = [(SBNotificationBannerDestination *)self delegate];
    [delegate destination:self didDismissNotificationRequest:v11];

    [(SBNotificationBannerDestination *)self _updateMotionGestureObservation];
    idleTimerDisableAssertion = self->_idleTimerDisableAssertion;
    if (idleTimerDisableAssertion)
    {
      [(BSInvalidatable *)idleTimerDisableAssertion invalidate];
      v14 = self->_idleTimerDisableAssertion;
      self->_idleTimerDisableAssertion = 0;
    }

    starModeDisableAssertion = self->_starModeDisableAssertion;
    if (starModeDisableAssertion)
    {
      [(BSInvalidatable *)starModeDisableAssertion invalidate];
      v16 = self->_starModeDisableAssertion;
      self->_starModeDisableAssertion = 0;
    }

    [(SBNotificationBannerDestination *)self _invalidateBiometricAuthIfNecessary];
  }
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable
{
  v12 = *MEMORY[0x277D85DE8];
  presentableCopy = presentable;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    identifier = [(SBNotificationBannerDestination *)self identifier];
    v8 = 138543618;
    v9 = identifier;
    v10 = 2114;
    v11 = presentableCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presentable will begin user interaction: %{public}@", &v8, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [(SBNotificationBannerDestination *)self _userInteractionWillBeginForRequestPresenter:presentableCopy];
  }
}

- (void)userInteractionDidEndForBannerForPresentable:(id)presentable
{
  v12 = *MEMORY[0x277D85DE8];
  presentableCopy = presentable;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    identifier = [(SBNotificationBannerDestination *)self identifier];
    v8 = 138543618;
    v9 = identifier;
    v10 = 2114;
    v11 = presentableCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presentable did end user interaction: %{public}@", &v8, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [(SBNotificationBannerDestination *)self _userInteractionDidEndForRequestPresenter:presentableCopy];
  }
}

- (void)notificationPresentableViewController:(id)controller presentationSize:(CGSize *)size containerSize:(CGSize *)containerSize
{
  if (containerSize)
  {
    v7 = SBApp;
    controllerCopy = controller;
    bannerManager = [v7 bannerManager];
    v9 = [bannerManager windowSceneForPresentable:controllerCopy];

    if (v9)
    {
      activeDisplayWindowScene = v9;
    }

    else
    {
      windowSceneManager = [SBApp windowSceneManager];
      activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
    }

    v12 = [bannerManager bannerWindowInWindowScene:activeDisplayWindowScene];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    containerSize->width = v18;
    containerSize->height = v20;
    if (size)
    {
      v21 = [bannerManager layoutManagerInWindowScene:activeDisplayWindowScene];
      screen = [activeDisplayWindowScene screen];
      [v21 useableContainerFrameInContainerBounds:screen onScreen:{v14, v16, v18, v20}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [screen scale];
      [v21 presentedFrameForContentWithPreferredSize:v28 inUseableContainerFrame:v30 containerBounds:v24 scale:{v26, v28, v30, *&v14, *&v16, *&v18, *&v20, v31}];
      size->width = v32;
      size->height = v33;
    }
  }
}

- (id)notificationRequestPresenter:(id)presenter staticContentProviderForNotificationRequest:(id)request
{
  presenterCopy = presenter;
  requestCopy = request;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v11 = v16;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __108__SBNotificationBannerDestination_notificationRequestPresenter_staticContentProviderForNotificationRequest___block_invoke;
    v16[3] = &unk_2783B2078;
    v4 = v17;
    v17[0] = presenterCopy;
    v17[1] = self;
    v5 = &v18;
    v12 = 0;
    v18 = requestCopy;
  }

  else
  {
    v12 = objc_opt_class();
    v11 = 0;
  }

  v13 = MEMORY[0x223D6F7F0](v11);
  v14 = [(SBNotificationBannerDestination *)self _staticContentProviderForViewController:presenterCopy class:v12 notificationRequest:requestCopy test:v13];

  if (isKindOfClass)
  {
  }

  return v14;
}

uint64_t __108__SBNotificationBannerDestination_notificationRequestPresenter_staticContentProviderForNotificationRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ([*(a1 + 40) _isContentSuppressedForNotificationRequest:*(a1 + 48)] && (objc_msgSend(v2, "hasCommittedToPresentingCustomContentProvidingViewController") & 1) == 0)
  {
    v3 = [v2 isShortLook];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)notificationRequestPresenter:(id)presenter shouldTransitionToStage:(id)stage forTrigger:(int64_t)trigger completionBlock:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  stageCopy = stage;
  blockCopy = block;
  v13 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    identifier = [(SBNotificationBannerDestination *)self identifier];
    v16 = NCStringFromStageChangeTrigger();
    *buf = 138544130;
    v35 = identifier;
    v36 = 2114;
    v37 = presenterCopy;
    v38 = 2114;
    v39 = stageCopy;
    v40 = 2114;
    v41 = v16;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ request presenter '%{public}@' requesting transition to stage '%{public}@' for triger '%{public}@'", buf, 0x2Au);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (objc_opt_respondsToSelector())
  {
    notificationRequest = [presenterCopy notificationRequest];
  }

  else
  {
    notificationRequest = 0;
  }

  triggerCopy = trigger;
  v25 = stageCopy;
  if (isKindOfClass)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __115__SBNotificationBannerDestination_notificationRequestPresenter_shouldTransitionToStage_forTrigger_completionBlock___block_invoke;
    v32[3] = &unk_2783A94B0;
    v20 = v33;
    v33[0] = presenterCopy;
    v33[1] = self;
    v21 = MEMORY[0x223D6F7F0](v32);
    v22 = blockCopy;
  }

  else
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __115__SBNotificationBannerDestination_notificationRequestPresenter_shouldTransitionToStage_forTrigger_completionBlock___block_invoke_62;
    v30[3] = &unk_2783A94B0;
    v20 = v31;
    v23 = presenterCopy;
    v31[0] = v23;
    v31[1] = self;
    v21 = MEMORY[0x223D6F7F0](v30);
    v22 = v27;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __115__SBNotificationBannerDestination_notificationRequestPresenter_shouldTransitionToStage_forTrigger_completionBlock___block_invoke_65;
    v27[3] = &unk_2783A9C98;
    stageCopy = &v28;
    v28 = v23;
    v6 = &v29;
    v29 = blockCopy;
  }

  v24 = MEMORY[0x223D6F7F0](v22);
  [(SBNotificationBannerDestination *)self _handleExpansionRequestForViewController:presenterCopy notificationRequest:notificationRequest forTrigger:triggerCopy test:v21 completionBlock:v24];

  if ((isKindOfClass & 1) == 0)
  {
  }
}

uint64_t __115__SBNotificationBannerDestination_notificationRequestPresenter_shouldTransitionToStage_forTrigger_completionBlock___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _presentedNotificationPresentableVC];
  v4 = [v3 notificationViewController];

  if (v2 == v4 && (([v3 bs_isDisappearingOrDisappeared] & 1) != 0 || objc_msgSend(v3, "bannerAppearState") == 3 || !objc_msgSend(v3, "bannerAppearState")))
  {
    v7 = *MEMORY[0x277D77DB0];
    v5 = 0;
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v8 identifier];
      v11 = *(*(a1 + 40) + 48);
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presentable requesting finishing long look transition, but is disappearing or disappeared: %{public}@", &v12, 0x16u);

      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

BOOL __115__SBNotificationBannerDestination_notificationRequestPresenter_shouldTransitionToStage_forTrigger_completionBlock___block_invoke_62(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (objc_opt_respondsToSelector() & 1) != 0 && [*(a1 + 32) bannerStage] > 1;
  v3 = [*(a1 + 32) bs_isDisappearingOrDisappeared] | v2;
  if (v3)
  {
    v4 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = v4;
      v7 = [v5 identifier];
      v8 = *(a1 + 32);
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ request presenter requesting transition to detail stage, but is disappearing or already transitioned: %{public}@", &v10, 0x16u);
    }
  }

  return (v3 & 1) == 0;
}

uint64_t __115__SBNotificationBannerDestination_notificationRequestPresenter_shouldTransitionToStage_forTrigger_completionBlock___block_invoke_65(uint64_t a1, int a2)
{
  if (a2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 32) invalidateStaticContent];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)notificationRequestPresenter:(id)presenter executeAction:(id)action withParameters:(id)parameters completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  actionCopy = action;
  parametersCopy = parameters;
  completionCopy = completion;
  v14 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    identifier = [(SBNotificationBannerDestination *)self identifier];
    identifier2 = [actionCopy identifier];
    v18 = [(__CFString *)parametersCopy count];
    v19 = @"{}";
    *buf = 138543875;
    v30 = identifier;
    if (v18)
    {
      v19 = parametersCopy;
    }

    v31 = 2114;
    v32 = identifier2;
    v33 = 2113;
    v34 = v19;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ executing action %{public}@ with parameters %{private}@", buf, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    notificationRequest = [presenterCopy notificationRequest];
  }

  else
  {
    notificationRequest = 0;
  }

  delegate = [(SBNotificationBannerDestination *)self delegate];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __104__SBNotificationBannerDestination_notificationRequestPresenter_executeAction_withParameters_completion___block_invoke;
  v25[3] = &unk_2783A8E88;
  v25[4] = self;
  v26 = notificationRequest;
  v27 = actionCopy;
  v28 = completionCopy;
  v22 = completionCopy;
  v23 = actionCopy;
  v24 = notificationRequest;
  [delegate destination:self executeAction:v23 forNotificationRequest:v24 requestAuthentication:1 withParameters:parametersCopy completion:v25];
}

uint64_t __104__SBNotificationBannerDestination_notificationRequestPresenter_executeAction_withParameters_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2 && ([*(a1 + 32) _isPresentingBannerInLongLook] & 1) == 0)
  {
    v3 = [*(a1 + 40) defaultAction];
    v4 = *(a1 + 48);
    if (v3 != v4)
    {
      v5 = [*(a1 + 40) options];
      if ([v5 displaysActionsInline])
      {
        v6 = [*(a1 + 40) supplementaryActions];
        v7 = [v6 objectForKey:*MEMORY[0x277D77DA0]];
        if ([v7 containsObject:*(a1 + 48)])
        {
          v8 = [*(a1 + 48) activationMode];

          if (v8 == 1)
          {
            goto LABEL_12;
          }

LABEL_9:
          [*(a1 + 32) _dismissPresentedBannerOnly:0 reason:@"SBBannerRevocationReasonBannerDestinationBackgroundDefaultAction" animated:1 forceIfSticky:1];
          goto LABEL_12;
        }
      }

      goto LABEL_12;
    }

    v9 = [v4 activationMode];

    if (v9 == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_12:
  result = *(a1 + 56);
  if (result)
  {
    v11 = *(result + 16);

    return v11();
  }

  return result;
}

- (id)notificationRequestPresenterNotificationUsageTrackingState:(id)state
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D78018];
  identifier = [(SBNotificationBannerDestination *)self identifier];
  v7[0] = identifier;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (void)notificationRequestPresenter:(id)presenter didVendTransitionBlockingAssertion:(id)assertion
{
  presenterCopy = presenter;
  assertionCopy = assertion;
  _presentedNotificationRequestPresenter = [(SBNotificationBannerDestination *)self _presentedNotificationRequestPresenter];

  if (_presentedNotificationRequestPresenter == presenterCopy)
  {
    [(SBNotificationBannerDestination *)self _cancelReplaceAndDismissTimers];
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __99__SBNotificationBannerDestination_notificationRequestPresenter_didVendTransitionBlockingAssertion___block_invoke;
    v9[3] = &unk_2783B8418;
    objc_copyWeak(&v12, &location);
    v10 = presenterCopy;
    selfCopy = self;
    [assertionCopy addInvalidationBlock:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __99__SBNotificationBannerDestination_notificationRequestPresenter_didVendTransitionBlockingAssertion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v7 = WeakRetained;
  v4 = [WeakRetained _presentedNotificationRequestPresenter];

  if (v3 == v4)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) notificationRequest];
    [v5 _startReplaceAndDismissTimersForRequest:v6];
  }
}

- (void)notificationViewController:(id)controller requestPermissionToExecuteAction:(id)action withParameters:(id)parameters completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  actionCopy = action;
  parametersCopy = parameters;
  completionCopy = completion;
  v14 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    identifier = [(SBNotificationBannerDestination *)self identifier];
    identifier2 = [actionCopy identifier];
    v18 = [(__CFString *)parametersCopy count];
    v19 = @"{}";
    *v22 = 138543875;
    *&v22[4] = identifier;
    if (v18)
    {
      v19 = parametersCopy;
    }

    *&v22[12] = 2114;
    *&v22[14] = identifier2;
    v23 = 2113;
    v24 = v19;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ requesting permission to execute action %{public}@ with parameters %{private}@", v22, 0x20u);
  }

  notificationRequest = [controllerCopy notificationRequest];
  delegate = [(SBNotificationBannerDestination *)self delegate];
  [delegate destination:self requestPermissionToExecuteAction:actionCopy forNotificationRequest:notificationRequest withParameters:parametersCopy completion:completionCopy];
}

- (void)notificationViewController:(id)controller dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation
{
  if ((operation & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(SBNotificationBannerDestination *)self _dismissPresentedBannerAnimated:0 reason:@"SBBannerRevocationReasonBannerDestinationDragAndDrop" forceIfSticky:1];
  }
}

- (void)notificationViewController:(id)controller dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  notificationViewControllerForActiveDragSession = self->_notificationViewControllerForActiveDragSession;
  if (notificationViewControllerForActiveDragSession == controller)
  {
    self->_notificationViewControllerForActiveDragSession = 0;
  }
}

- (BOOL)notificationViewControllerShouldAllowExpandedPlatterInteraction:(id)interaction
{
  interactionCopy = interaction;
  _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  notificationViewController = [_presentedNotificationPresentableVC notificationViewController];

  if (notificationViewController != interactionCopy)
  {
    goto LABEL_2;
  }

  if (![_presentedNotificationPresentableVC bs_isAppearingOrAppeared])
  {
    v7 = 0;
    goto LABEL_7;
  }

  if ([_presentedNotificationPresentableVC bannerAppearState] == 1)
  {
LABEL_2:
    v7 = 1;
  }

  else
  {
    v7 = [_presentedNotificationPresentableVC bannerAppearState] == 2;
  }

LABEL_7:

  return v7;
}

- (id)notificationViewControllerContainerViewProviderForExpandedContent:(id)content
{
  contentCopy = content;
  _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  notificationViewController = [_presentedNotificationPresentableVC notificationViewController];

  if (notificationViewController == contentCopy)
  {
    v8 = objc_alloc(MEMORY[0x277D679B0]);
    view = [_presentedNotificationPresentableVC view];
    v7 = [v8 initWithRequester:contentCopy containerView:view reason:@"Container view requested for notification banner" invalidationBlock:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)notificationViewController:(id)controller auxiliaryOptionsContentProviderForNotificationRequest:(id)request withLongLook:(BOOL)look
{
  lookCopy = look;
  requestCopy = request;
  sectionIdentifier = [requestCopy sectionIdentifier];
  v9 = [(SBNotificationBannerDestination *)self _notificationSectionSettingsForSectionIdentifier:sectionIdentifier];
  isUserConfigurable = [v9 isUserConfigurable];

  v11 = 0;
  if (isUserConfigurable && lookCopy)
  {
    v11 = [objc_alloc(MEMORY[0x277D78070]) initWithNotificationRequest:requestCopy managementDelegate:self];
  }

  return v11;
}

- (unint64_t)importantAdornmentEligibleOptionsForNotificationViewController:(id)controller
{
  if ([(SBNotificationBannerDestination *)self _isPresentingBanner])
  {
    return -5;
  }

  else
  {
    return -1;
  }
}

- (void)longLookWillPresentForNotificationViewController:(id)controller
{
  v19 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if ([(SBNotificationBannerDestination *)self _shouldHideStatusBar])
  {
    [MEMORY[0x277D75D18] _currentAnimationDuration];
    [(SBNotificationBannerDestination *)self _setStatusBarsHidden:1 withDuration:?];
  }

  resignActiveAssertion = [(SBNotificationBannerDestination *)self resignActiveAssertion];
  _fbsDisplayIdentity = [controllerCopy _fbsDisplayIdentity];
  [resignActiveAssertion sb_acquireForDisplayIdentity:_fbsDisplayIdentity];

  [(SBNotificationBannerDestination *)self _cancelReplaceAndDismissTimers];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  destinationObservers = [(SBNotificationBannerDestination *)self destinationObservers];
  v8 = [destinationObservers copy];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 notificationBannerDestinationWillPresentLongLook:self];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)longLookDidPresentForNotificationViewController:(id)controller
{
  v31 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  notificationRequest = [controllerCopy notificationRequest];
  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138543362;
    v30 = un_logDigest;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Long look presented for notification %{public}@", buf, 0xCu);
  }

  options = [notificationRequest options];
  revealsAdditionalContentOnPresentation = [options revealsAdditionalContentOnPresentation];

  if (revealsAdditionalContentOnPresentation)
  {
    if ([(SBNotificationBannerDestination *)self _isContentSuppressedForNotificationRequest:notificationRequest])
    {
      [controllerCopy invalidateContentProviders];
    }
  }

  else
  {
    [(SBNotificationBannerDestination *)self _setReadyForNotificationRequestsCoalescingWith:notificationRequest];
  }

  v12 = +[SBKeyboardFocusCoordinator sharedInstance];
  _sbWindowScene = [controllerCopy _sbWindowScene];
  v14 = +[SBKeyboardFocusArbitrationReason longLookDidPresentForNotificationViewController];
  [v12 requestArbitrationForSBWindowScene:_sbWindowScene forReason:v14];

  lockScreenManager = [(SBNotificationBannerDestination *)self lockScreenManager];
  coverSheetViewController = [lockScreenManager coverSheetViewController];
  [coverSheetViewController externalBehaviorProviderBehaviorChanged:self];

  [(SBNotificationBannerDestination *)self _updateMotionGestureObservation];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  destinationObservers = [(SBNotificationBannerDestination *)self destinationObservers];
  v18 = [destinationObservers copy];

  v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v24 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v23 notificationBannerDestinationDidPresentLongLook:self];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v20);
  }
}

- (void)longLookWillDismissForNotificationViewController:(id)controller
{
  v21 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if ([(SBNotificationBannerDestination *)self _shouldHideStatusBar])
  {
    [MEMORY[0x277D75D18] _currentAnimationDuration];
    [(SBNotificationBannerDestination *)self _setStatusBarsHidden:0 withDuration:?];
  }

  notificationRequest = [controllerCopy notificationRequest];
  options = [notificationRequest options];
  revealsAdditionalContentOnPresentation = [options revealsAdditionalContentOnPresentation];

  if ((revealsAdditionalContentOnPresentation & 1) == 0)
  {
    _lookView = [controllerCopy _lookView];
    [_lookView setHidden:1];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  destinationObservers = [(SBNotificationBannerDestination *)self destinationObservers];
  v10 = [destinationObservers copy];

  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

        v15 = *(*(&v16 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 notificationBannerDestinationWillDismissLongLook:self];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)longLookDidDismissForNotificationViewController:(id)controller
{
  v34 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  notificationRequest = [controllerCopy notificationRequest];
  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138543362;
    v33 = un_logDigest;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Long look dismissed for notification %{public}@", buf, 0xCu);
  }

  delegate = [(SBNotificationBannerDestination *)self delegate];
  [delegate destination:self didDismissNotificationRequest:notificationRequest];

  resignActiveAssertion = [(SBNotificationBannerDestination *)self resignActiveAssertion];
  [resignActiveAssertion relinquish];

  v12 = +[SBKeyboardFocusCoordinator sharedInstance];
  _sbWindowScene = [controllerCopy _sbWindowScene];
  v14 = +[SBKeyboardFocusArbitrationReason longLookDidDismissForNotificationViewController];
  [v12 requestArbitrationForSBWindowScene:_sbWindowScene forReason:v14];

  lockScreenManager = [(SBNotificationBannerDestination *)self lockScreenManager];
  coverSheetViewController = [lockScreenManager coverSheetViewController];
  [coverSheetViewController externalBehaviorProviderBehaviorChanged:self];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  destinationObservers = [(SBNotificationBannerDestination *)self destinationObservers];
  v18 = [destinationObservers copy];

  v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      v22 = 0;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * v22);
        if (objc_opt_respondsToSelector())
        {
          [v23 notificationBannerDestinationDidDismissLongLook:self];
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }

  _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  notificationViewController = [_presentedNotificationPresentableVC notificationViewController];

  if (notificationViewController == controllerCopy)
  {
    requesterIdentifier = [(BNPresentable *)self->_presentedPresentable requesterIdentifier];
    [(SBNotificationBannerDestination *)self _revokeAllPresentablesWithRequesterIdentifier:requesterIdentifier reason:@"SBBannerRevocationReasonLongLookDismissal" options:1];
  }
}

- (void)fullScreenPresentableViewController:(id)controller requestsDismissalWithReason:(id)reason
{
  controllerCopy = controller;
  v6 = SBApp;
  reasonCopy = reason;
  bannerManager = [v6 bannerManager];
  v9 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:controllerCopy];
  v13 = 0;
  v10 = [bannerManager revokePresentablesWithIdentification:v9 reason:reasonCopy options:0 userInfo:0 error:&v13];

  v11 = v13;
  if (!v10)
  {
    v12 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [(SBNotificationBannerDestination *)v12 fullScreenPresentableViewController:controllerCopy requestsDismissalWithReason:v11];
    }
  }
}

- (void)didReceiveRaiseGesture
{
  selfCopy = self;
  OUTLINED_FUNCTION_5_6();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_34(&dword_21ED4E000, v5, v6, "Destination %{public}@ received raise gesture", v7, v8, v9, v10, v11);
}

- (void)_updateMotionGestureObservation
{
  selfCopy = self;
  OUTLINED_FUNCTION_5_6();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_34(&dword_21ED4E000, v5, v6, "Destination %{public}@ is listening to raise gesture", v7, v8, v9, v10, v11);
}

- (void)coronaAnimationController:(id)controller willAnimateCoronaTransitionWithAnimator:(id)animator
{
  controllerCopy = controller;
  animatorCopy = animator;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__71;
  v10[4] = __Block_byref_object_dispose__71;
  v11 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __101__SBNotificationBannerDestination_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke;
  v9[3] = &unk_2783A9300;
  v9[4] = self;
  v9[5] = v10;
  [animatorCopy addAnimations:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __101__SBNotificationBannerDestination_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke_3;
  v8[3] = &unk_2783B8440;
  v8[4] = self;
  v8[5] = v10;
  [animatorCopy addCompletion:v8];
  _Block_object_dispose(v10, 8);
}

void __101__SBNotificationBannerDestination_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _presentedNotificationPresentableVC];
  v3 = [v2 notificationViewController];

  if (v3)
  {
    v4 = [v3 materialGroupNameBase];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [v3 setContentReplacedWithSnapshot:0];
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v8 stringByAppendingString:@"-CoronaChange"];

      [v3 setMaterialGroupNameBase:v9];
    }

    v10 = [v3 view];
    v11 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __101__SBNotificationBannerDestination_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke_2;
    v13[3] = &unk_2783A8C18;
    v14 = v10;
    v12 = v10;
    [v11 performWithoutAnimation:v13];
    [v12 pl_performCrossFadeIfNecessary];
  }
}

uint64_t __101__SBNotificationBannerDestination_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void __101__SBNotificationBannerDestination_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _presentedNotificationPresentableVC];
  v3 = [v2 notificationViewController];

  [v3 setMaterialGroupNameBase:*(*(*(a1 + 40) + 8) + 40)];
}

- (void)backlightController:(id)controller didAnimateBacklightToFactor:(float)factor source:(int64_t)source
{
  v18 = *MEMORY[0x277D85DE8];
  if (fabsf(factor + -1.0) < 2.2204e-16)
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentablePendingSnapshot);
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v7 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        identifier = [(SBNotificationBannerDestination *)self identifier];
        v14 = 138543618;
        v15 = identifier;
        v16 = 2114;
        v17 = WeakRetained;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ backlight is on, snapshotting presentable %{public}@", &v14, 0x16u);
      }

      notificationViewController = [WeakRetained notificationViewController];
      [notificationViewController setContentReplacedWithSnapshot:1];

      objc_storeWeak(&self->_presentablePendingSnapshot, 0);
    }

    else
    {
      v11 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        identifier2 = [(SBNotificationBannerDestination *)self identifier];
        v14 = 138543362;
        v15 = identifier2;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ backlight is on, but no presentable pending snapshot", &v14, 0xCu);
      }
    }
  }
}

- (id)_notificationViewControllerFromPresentable:(id)presentable
{
  presentableCopy = presentable;
  if (objc_opt_respondsToSelector())
  {
    notificationViewController = [presentableCopy notificationViewController];
  }

  else
  {
    notificationViewController = 0;
  }

  return notificationViewController;
}

- (id)_requestFromPresentable:(id)presentable
{
  presentableCopy = presentable;
  v5 = [(SBNotificationBannerDestination *)self _notificationViewControllerFromPresentable:presentableCopy];
  notificationRequest = [v5 notificationRequest];

  if (!notificationRequest)
  {
    if (objc_opt_respondsToSelector())
    {
      notificationRequest = [presentableCopy notificationRequest];
    }

    else
    {
      notificationRequest = 0;
    }
  }

  return notificationRequest;
}

- (id)_presentedNotificationRequestPresenter
{
  _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  notificationViewController = [_presentedNotificationPresentableVC notificationViewController];
  v5 = notificationViewController;
  if (notificationViewController)
  {
    presentedPresentable = notificationViewController;
  }

  else
  {
    presentedPresentable = [(SBNotificationBannerDestination *)self presentedPresentable];
  }

  v7 = presentedPresentable;

  return v7;
}

- (BOOL)_isDeviceAuthenticated
{
  authenticationController = [SBApp authenticationController];
  isAuthenticated = [authenticationController isAuthenticated];

  return isAuthenticated;
}

- (void)_setupModeChanged
{
  if (![(SBNotificationBannerDestination *)self _isInSetupMode])
  {

    [(SBNotificationBannerDestination *)self _resetPresentTimer];
  }
}

uint64_t __67__SBNotificationBannerDestination__setReadyForNotificationRequests__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 requestDestinations];
  v3 = [v2 containsObject:*MEMORY[0x277D77FE0]];

  return v3;
}

- (void)_setReadyForNotificationRequestsCoalescingWith:(id)with
{
  v16 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    notificationIdentifier = [withCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = un_logDigest;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ is now ready to receive notifications coalescing with %{public}@", &v12, 0x16u);
  }

  delegate = [(SBNotificationBannerDestination *)self delegate];
  [delegate destination:self didBecomeReadyToReceiveNotificationsCoalescedWith:withCopy];
}

- (void)_postNotificationRequest:(id)request modal:(BOOL)modal completion:(id)completion
{
  modalCopy = modal;
  v39 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v10 = _os_activity_create(&dword_21ED4E000, "post-banner", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v10, &state);

  v11 = MEMORY[0x277D77DB0];
  v12 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    identifier = [(SBNotificationBannerDestination *)self identifier];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138543618;
    v32 = identifier;
    v33 = 2114;
    *v34 = un_logDigest;
    _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "Destination %{public}@ received notification %{public}@", buf, 0x16u);
  }

  alertOptions = [requestCopy alertOptions];
  shouldSuppress = [alertOptions shouldSuppress];

  sb_shouldSuppressAlert = [requestCopy sb_shouldSuppressAlert];
  v16 = [(SBNotificationBannerDestination *)self _shouldScreenTimeSuppressNotificationRequest:requestCopy];
  if (((shouldSuppress | (sb_shouldSuppressAlert | v16)) & 1) == 0 || modalCopy)
  {
    if ([(SBNotificationBannerDestination *)self _isPresentingBannerInLongLook])
    {
      v20 = *v11;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        notificationIdentifier2 = [requestCopy notificationIdentifier];
        un_logDigest2 = [notificationIdentifier2 un_logDigest];
        identifier2 = [(SBNotificationBannerDestination *)self identifier];
        *buf = 138543618;
        v32 = un_logDigest2;
        v33 = 2114;
        *v34 = identifier2;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Forwarding notification %{public}@ to long look banner %{public}@", buf, 0x16u);
      }

      _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
      notificationViewController = [_presentedNotificationPresentableVC notificationViewController];
      [notificationViewController didForwardNotificationRequestToCustomContent:requestCopy];
    }

    else
    {
      [(SBNotificationBannerDestination *)self _postPresentableForRequest:requestCopy modal:modalCopy completion:completionCopy];
      [(SBNotificationBannerDestination *)self _publishDidPresentBannerForNotificationRequest:requestCopy];
      if (!modalCopy)
      {
        [(SBNotificationBannerDestination *)self _updateMotionGestureObservation];
      }
    }
  }

  else
  {
    v17 = *v11;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      notificationIdentifier3 = [requestCopy notificationIdentifier];
      un_logDigest3 = [notificationIdentifier3 un_logDigest];
      *buf = 138544386;
      v32 = un_logDigest3;
      v33 = 1024;
      *v34 = (shouldSuppress | (sb_shouldSuppressAlert | v16)) & 1;
      *&v34[4] = 1024;
      *&v34[6] = sb_shouldSuppressAlert;
      v35 = 1024;
      v36 = shouldSuppress;
      v37 = 1024;
      v38 = v16;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Banner for notification %{public}@ was dropped. suppressed: %d application: %d, do not disturb: %d screen time: %d", buf, 0x24u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__SBNotificationBannerDestination__postNotificationRequest_modal_completion___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  os_activity_scope_leave(&state);
}

- (BOOL)_presentedBannerMatchesNotificationRequest:(id)request
{
  requestCopy = request;
  _presentedNotificationRequest = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
  notificationIdentifier = [_presentedNotificationRequest notificationIdentifier];
  notificationIdentifier2 = [requestCopy notificationIdentifier];
  if ([notificationIdentifier isEqualToString:notificationIdentifier2])
  {
    sectionIdentifier = [_presentedNotificationRequest sectionIdentifier];
    sectionIdentifier2 = [requestCopy sectionIdentifier];
    v10 = [sectionIdentifier isEqualToString:sectionIdentifier2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_setStatusBarsHidden:(BOOL)hidden withDuration:(double)duration
{
  hiddenCopy = hidden;
  v27 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v9;
    v11 = @"NO";
    if (hiddenCopy)
    {
      v11 = @"YES";
    }

    v23 = 138412546;
    v24 = v9;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%@ is setting status bar hidden = %@", &v23, 0x16u);
  }

  appsStatusBarAssertion = [(SBNotificationBannerDestination *)self appsStatusBarAssertion];
  bannerManager = [SBApp bannerManager];
  v14 = [bannerManager windowSceneForPresentable:self->_presentedPresentable];

  v15 = !hiddenCopy;
  if (!hiddenCopy || appsStatusBarAssertion)
  {
    if (!appsStatusBarAssertion)
    {
      v15 = 0;
    }

    if (v15 == 1)
    {
      [(SBNotificationBannerDestination *)self setAppsStatusBarAssertion:0];
      [appsStatusBarAssertion invalidate];
    }
  }

  else
  {
    switcherController = [v14 switcherController];
    v17 = [switcherController requestInAppStatusBarHiddenAssertionForReason:@"SBNotificationBannerDestination" animated:0];
    [(SBNotificationBannerDestination *)self setAppsStatusBarAssertion:v17];
  }

  statusBarManager = [v14 statusBarManager];
  assertionManager = [statusBarManager assertionManager];

  if (hiddenCopy)
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [assertionManager newSettingsAssertionWithStatusBarHidden:1 atLevel:13 reason:v21];
    [(SBNotificationBannerDestination *)self setSystemStatusBarAssertion:v22];
  }

  else
  {
    [(SBNotificationBannerDestination *)self setSystemStatusBarAssertion:0];
  }
}

- (void)setSystemStatusBarAssertion:(id)assertion
{
  assertionCopy = assertion;
  v5 = assertionCopy;
  if (assertionCopy)
  {
    [(SBWindowSceneStatusBarSettingsAssertion *)assertionCopy acquire];
  }

  [(SBWindowSceneStatusBarSettingsAssertion *)self->_systemStatusBarAssertion invalidate];
  systemStatusBarAssertion = self->_systemStatusBarAssertion;
  self->_systemStatusBarAssertion = v5;
}

- (BOOL)_canReceiveNotificationRequestIfLocked:(id)locked
{
  lockedCopy = locked;
  if ([(SBNotificationBannerDestination *)self _isUILocked])
  {
    requestDestinations = [lockedCopy requestDestinations];
    v6 = [requestDestinations containsObject:*MEMORY[0x277D77FE0]];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_isContentSuppressedForNotificationRequest:(id)request
{
  requestCopy = request;
  _isDeviceAuthenticated = [(SBNotificationBannerDestination *)self _isDeviceAuthenticated];
  options = [requestCopy options];

  contentPreviewSetting = [options contentPreviewSetting];
  if (_isDeviceAuthenticated && contentPreviewSetting == 2)
  {
    return 1;
  }

  else
  {
    return (contentPreviewSetting != 0) & ~_isDeviceAuthenticated;
  }
}

- (id)_notificationSectionSettingsForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(SBNotificationBannerDestination *)self delegate];
  v6 = [delegate notificationSectionSettingsForDestination:self forSectionIdentifier:identifierCopy];

  return v6;
}

- (id)_notificationSystemSettings
{
  delegate = [(SBNotificationBannerDestination *)self delegate];
  v4 = [delegate notificationSystemSettingsForDestination:self];

  return v4;
}

- (BOOL)_shouldAllowDragInteraction
{
  v3 = +[SBPlatformController sharedInstance];
  if ([v3 isMedusaCapable])
  {
    v4 = ![(SBNotificationBannerDestination *)self _isUILocked];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)_staticContentProviderForViewController:(id)controller class:(Class)class notificationRequest:(id)request test:(id)test
{
  controllerCopy = controller;
  requestCopy = request;
  testCopy = test;
  v13 = testCopy;
  if (testCopy && !(*(testCopy + 2))(testCopy))
  {
    v15 = 0;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      staticContentProvider = [controllerCopy staticContentProvider];
    }

    else
    {
      staticContentProvider = 0;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0 || (v15 = [staticContentProvider copy]) == 0)
    {
      if (class)
      {
        classCopy = class;
      }

      else
      {
        classCopy = MEMORY[0x277D78088];
      }

      v15 = [[classCopy alloc] initWithNotificationRequest:requestCopy];
      sectionIdentifier = [requestCopy sectionIdentifier];
      v18 = [(SBNotificationBannerDestination *)self _notificationSectionSettingsForSectionIdentifier:sectionIdentifier];

      [v15 setSummarizationEnabled:{objc_msgSend(v18, "isSummarizationEnabled")}];
    }

    [v15 setDeviceAuthenticated:{-[SBNotificationBannerDestination _isDeviceAuthenticated](self, "_isDeviceAuthenticated")}];
    [v15 setDelegate:controllerCopy];
  }

  return v15;
}

- (void)_handleExpansionRequestForViewController:(id)controller notificationRequest:(id)request forTrigger:(int64_t)trigger test:(id)test completionBlock:(id)block
{
  v45 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  requestCopy = request;
  testCopy = test;
  blockCopy = block;
  if (testCopy && !testCopy[2](testCopy))
  {
LABEL_13:
    blockCopy[2](blockCopy, 0);
    goto LABEL_25;
  }

  _isAmbientPresented = [(SBNotificationBannerDestination *)self _isAmbientPresented];
  v17 = [(SBNotificationBannerDestination *)self _isContentSuppressedForNotificationRequest:requestCopy];
  v18 = v17;
  if (!_isAmbientPresented)
  {
    if (v17)
    {
LABEL_9:
      [(SBNotificationBannerDestination *)self _requestUnlockForExpansionForViewController:controllerCopy notificationRequest:requestCopy completionBlock:blockCopy];
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (trigger == 4)
  {
    v19 = *MEMORY[0x277D77DB0];
    v20 = os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v20)
      {
        v21 = v19;
        notificationIdentifier = [requestCopy notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        v24 = NCStringFromStageChangeTrigger();
        v41 = 138543618;
        v42 = un_logDigest;
        v43 = 2114;
        v44 = v24;
        _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Requesting unlock for expansion of request %{public}@ for trigger %{public}@ in Ambient", &v41, 0x16u);
      }

      goto LABEL_9;
    }

    if (v20)
    {
      v30 = v19;
      notificationIdentifier2 = [requestCopy notificationIdentifier];
      un_logDigest2 = [notificationIdentifier2 un_logDigest];
      v33 = NCStringFromStageChangeTrigger();
      v41 = 138543618;
      v42 = un_logDigest2;
      v43 = 2114;
      v44 = v33;
      _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEFAULT, "Expanding request %{public}@ for trigger %{public}@ in Ambient", &v41, 0x16u);

LABEL_23:
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if ([(SBNotificationBannerDestination *)self _isAmbientNotificationsPreviewOnTapOnly])
  {
    v25 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      notificationIdentifier3 = [requestCopy notificationIdentifier];
      un_logDigest3 = [notificationIdentifier3 un_logDigest];
      v29 = NCStringFromStageChangeTrigger();
      v41 = 138543618;
      v42 = un_logDigest3;
      v43 = 2114;
      v44 = v29;
      _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "Not expanding notification for request %{public}@ on trigger %{public}@ because previews are set to be shown on tap only in Ambient", &v41, 0x16u);
    }

    goto LABEL_13;
  }

  if (!v18)
  {
    v39 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v30 = v39;
      notificationIdentifier4 = [requestCopy notificationIdentifier];
      un_logDigest2 = [notificationIdentifier4 un_logDigest];
      v41 = 138543362;
      v42 = un_logDigest2;
      _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEFAULT, "Expanding notification for request %{public}@ because content is not suppressed in Ambient", &v41, 0xCu);

      goto LABEL_23;
    }

LABEL_24:
    blockCopy[2](blockCopy, 1);
    goto LABEL_25;
  }

  _isDeviceAuthenticated = [(SBNotificationBannerDestination *)self _isDeviceAuthenticated];
  v35 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v36 = v35;
    notificationIdentifier5 = [requestCopy notificationIdentifier];
    un_logDigest4 = [notificationIdentifier5 un_logDigest];
    v41 = 138543618;
    v42 = un_logDigest4;
    v43 = 1024;
    LODWORD(v44) = _isDeviceAuthenticated;
    _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "Checking expanding notification for request %{public}@ in Ambient [ isAuthenticated = %{BOOL}d ]", &v41, 0x12u);
  }

  blockCopy[2](blockCopy, _isDeviceAuthenticated);
  if (_isDeviceAuthenticated)
  {
    [(SBNotificationBannerDestination *)self _invalidateBiometricAuthIfNecessary];
  }

LABEL_25:
}

- (void)_requestUnlockForExpansionForViewController:(id)controller notificationRequest:(id)request completionBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  requestCopy = request;
  blockCopy = block;
  v11 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138543362;
    v26 = un_logDigest;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Requesting unlock for expansion of request %{public}@", buf, 0xCu);
  }

  v15 = objc_alloc_init(SBLockScreenUnlockRequest);
  [(SBLockScreenUnlockRequest *)v15 setSource:10];
  [(SBLockScreenUnlockRequest *)v15 setIntent:2];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  [(SBLockScreenUnlockRequest *)v15 setName:v17];

  [(SBLockScreenUnlockRequest *)v15 setWantsBiometricPresentation:1];
  [(SBNotificationBannerDestination *)self _cancelReplaceAndDismissTimers];
  objc_initWeak(buf, self);
  lockScreenManager = [(SBNotificationBannerDestination *)self lockScreenManager];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __115__SBNotificationBannerDestination__requestUnlockForExpansionForViewController_notificationRequest_completionBlock___block_invoke;
  v21[3] = &unk_2783B8488;
  v19 = requestCopy;
  v22 = v19;
  objc_copyWeak(&v24, buf);
  v20 = blockCopy;
  v23 = v20;
  [lockScreenManager unlockWithRequest:v15 completion:v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

uint64_t __115__SBNotificationBannerDestination__requestUnlockForExpansionForViewController_notificationRequest_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 notificationIdentifier];
    v8 = [v7 un_logDigest];
    v11 = 138543618;
    v12 = v8;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Unlock request completed for request %{public}@ [ success = %{BOOL}d ]", &v11, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _startReplaceAndDismissTimersForRequest:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)_userInteractionWillBeginForRequestPresenter:(id)presenter
{
  v12 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(SBNotificationBannerDestination *)selfCopy isUserInteractionInProgress])
  {
    [(SBNotificationBannerDestination *)selfCopy setUserInteractionInProgress:1];
    v6 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      notificationRequest = [presenterCopy notificationRequest];
      notificationIdentifier = [notificationRequest notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v10 = 138543362;
      v11 = un_logDigest;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "User interaction started for banner for request %{public}@", &v10, 0xCu);
    }

    if (![(SBNotificationBannerDestination *)selfCopy _isPresentingBannerInLongLook])
    {
      [(SBNotificationBannerDestination *)selfCopy _cancelReplaceAndDismissTimers];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_userInteractionDidEndForRequestPresenter:(id)presenter
{
  v13 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(SBNotificationBannerDestination *)selfCopy isUserInteractionInProgress])
  {
    [(SBNotificationBannerDestination *)selfCopy setUserInteractionInProgress:0];
    v6 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      notificationRequest = [presenterCopy notificationRequest];
      notificationIdentifier = [notificationRequest notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v11 = 138543362;
      v12 = un_logDigest;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "User interaction ended for presenter for request %{public}@", &v11, 0xCu);
    }

    if (![(SBNotificationBannerDestination *)selfCopy _isPresentingBannerInLongLook])
    {
      notificationRequest2 = [presenterCopy notificationRequest];
      [(SBNotificationBannerDestination *)selfCopy _startReplaceAndDismissTimersForRequest:notificationRequest2];
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)_ambientPresentationController
{
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
  ambientPresentationController = [activeDisplayWindowScene ambientPresentationController];

  return ambientPresentationController;
}

- (BOOL)_isAmbientPresented
{
  _ambientPresentationController = [(SBNotificationBannerDestination *)self _ambientPresentationController];
  isPresented = [_ambientPresentationController isPresented];

  return isPresented;
}

- (BOOL)_isAmbientNotificationsPreviewOnTapOnly
{
  _ambientPresentationController = [(SBNotificationBannerDestination *)self _ambientPresentationController];
  notificationsPreviewOnTapOnly = [_ambientPresentationController notificationsPreviewOnTapOnly];

  return notificationsPreviewOnTapOnly;
}

- (BOOL)_canReceiveNotificationRequestIfAmbientPresented:(id)presented
{
  v31 = *MEMORY[0x277D85DE8];
  presentedCopy = presented;
  if ([(SBNotificationBannerDestination *)self _isAmbientPresented])
  {
    options = [presentedCopy options];
    suppressPresentationInAmbient = [options suppressPresentationInAmbient];

    _ambientPresentationController = [(SBNotificationBannerDestination *)self _ambientPresentationController];
    suppressNotificationPresentation = [_ambientPresentationController suppressNotificationPresentation];

    interruptionLevel = [presentedCopy interruptionLevel];
    options2 = [presentedCopy options];
    revealsAdditionalContentOnPresentation = [options2 revealsAdditionalContentOnPresentation];

    if (suppressPresentationInAmbient & 1 | ((suppressNotificationPresentation & 1) == 0))
    {
      v12 = suppressPresentationInAmbient ^ 1;
    }

    else
    {
      v12 = (interruptionLevel == 3) | revealsAdditionalContentOnPresentation;
    }

    v13 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = interruptionLevel == 3;
      v15 = v13;
      notificationIdentifier = [presentedCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v19 = 138544642;
      v20 = un_logDigest;
      v21 = 1024;
      v22 = v12 & 1;
      v23 = 1024;
      v24 = suppressPresentationInAmbient;
      v25 = 1024;
      v26 = suppressNotificationPresentation & 1;
      v27 = 1024;
      v28 = v14;
      v29 = 1024;
      v30 = revealsAdditionalContentOnPresentation & 1;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Can receive request %{public}@ in ambient : %{BOOL}d [ requestSuppress:%{BOOL}d ; ambientSuppress:%{BOOL}d ; critical:%{BOOL}d ; emergency:%{BOOL}d ]", &v19, 0x2Au);
    }
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

- (void)_requestBiometricAuthIfAmbientPresentedForNotificationRequest:(id)request
{
  v16 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if ([(SBNotificationBannerDestination *)self _isAmbientPresented]&& [(SBNotificationBannerDestination *)self _isContentSuppressedForNotificationRequest:requestCopy])
  {
    mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
    v6 = mEMORY[0x277D67C98];
    biometricMatchingAssertion = self->_biometricMatchingAssertion;
    if (biometricMatchingAssertion)
    {
      [mEMORY[0x277D67C98] resumeMatchingForAssertion:biometricMatchingAssertion advisory:1];
    }

    else
    {
      v8 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        notificationIdentifier = [requestCopy notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        v14 = 138543362;
        v15 = un_logDigest;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Acquiring biometric matching assertion for notification presentation in Ambient for request %{public}@", &v14, 0xCu);
      }

      v12 = [v6 acquireMatchingAssertionWithMode:3 reason:@"SBNotificationBannerDestinationAmbientAuthentication"];
      v13 = self->_biometricMatchingAssertion;
      self->_biometricMatchingAssertion = v12;
    }
  }
}

- (void)_invalidateBiometricAuthIfNecessary
{
  if (self->_biometricMatchingAssertion)
  {
    v3 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating biometric matching assertion for notification presentation in Ambient", v5, 2u);
    }

    [(BSInvalidatable *)self->_biometricMatchingAssertion invalidate];
    biometricMatchingAssertion = self->_biometricMatchingAssertion;
    self->_biometricMatchingAssertion = 0;
  }
}

- (void)_publishDidPresentBannerForNotificationRequest:(id)request
{
  requestCopy = request;
  destinationObservers = [(SBNotificationBannerDestination *)self destinationObservers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__SBNotificationBannerDestination__publishDidPresentBannerForNotificationRequest___block_invoke;
  v7[3] = &unk_2783B84B0;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  [destinationObservers enumerateObjectsUsingBlock:v7];
}

void __82__SBNotificationBannerDestination__publishDidPresentBannerForNotificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 notificationBannerDestination:*(a1 + 32) didPresentBannerForNotificationRequest:*(a1 + 40)];
  }
}

- (BOOL)_isPresentingStickyBanner
{
  _presentedNotificationRequest = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
  if ([(SBNotificationBannerDestination *)self _isPresentingBanner])
  {
    options = [_presentedNotificationRequest options];
    v5 = [options dismissAutomatically] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_isDismissingLongLookForBanner
{
  if (![(SBNotificationBannerDestination *)self _isPresentingBannerInLongLook])
  {
    return 1;
  }

  _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  notificationViewController = [_presentedNotificationPresentableVC notificationViewController];
  isNotPresentingOrHasCommittedToDismissingCustomContentProvidingViewController = [notificationViewController isNotPresentingOrHasCommittedToDismissingCustomContentProvidingViewController];

  return isNotPresentingOrHasCommittedToDismissingCustomContentProvidingViewController;
}

- (BOOL)_isPresentingBannerRequestingRaiseGesture
{
  _isPresentingBanner = [(SBNotificationBannerDestination *)self _isPresentingBanner];
  if (_isPresentingBanner)
  {
    _presentedNotificationRequest = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
    options = [_presentedNotificationRequest options];
    playMediaWhenRaised = [options playMediaWhenRaised];

    LOBYTE(_isPresentingBanner) = playMediaWhenRaised;
  }

  return _isPresentingBanner;
}

- (BOOL)_isPresentingBannerPreventingAutomaticLock
{
  _presentedNotificationRequest = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
  options = [_presentedNotificationRequest options];
  preventsAutomaticLock = [options preventsAutomaticLock];

  return preventsAutomaticLock;
}

- (BOOL)_isInSetupMode
{
  setupManager = [(SBNotificationBannerDestination *)self setupManager];
  isInSetupMode = [setupManager isInSetupMode];

  return isInSetupMode;
}

- (BOOL)_shouldScreenTimeSuppressNotificationRequest:(id)request
{
  requestCopy = request;
  options = [requestCopy options];
  if ([options overridesDowntime])
  {
    v6 = 0;
  }

  else
  {
    sectionIdentifier = [requestCopy sectionIdentifier];
    v6 = [(SBNotificationBannerDestination *)self _shouldScreenTimeSuppressNotificationsForBundleIdentifier:sectionIdentifier];
  }

  return v6;
}

- (BOOL)_shouldScreenTimeSuppressNotificationsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(SBNotificationBannerDestination *)self _isBundleIdentifierBlockedForScreenTimeExpiration:identifierCopy]|| [(SBNotificationBannerDestination *)self _isBundleIdentifierBlockedForCommunicationPolicy:identifierCopy];

  return v5;
}

- (BOOL)_isBundleIdentifierBlockedForScreenTimeExpiration:(id)expiration
{
  expirationCopy = expiration;
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:expirationCopy];

  info = [v5 info];
  LOBYTE(expirationCopy) = [info isBlockedForScreenTimeExpiration];

  return expirationCopy;
}

- (BOOL)_isBundleIdentifierBlockedForCommunicationPolicy:(id)policy
{
  policyCopy = policy;
  v4 = +[SBCommunicationPolicyManager sharedInstance];
  v5 = [v4 shouldScreenTimeSuppressNotificationsForBundleIdentifier:policyCopy];

  return v5;
}

- (id)_notificationViewControllerForRequest:(id)request
{
  v4 = MEMORY[0x277D78098];
  requestCopy = request;
  v6 = [[v4 alloc] initWithNotificationRequest:requestCopy revealingAdditionalContentOnPresentation:0];

  [v6 setDelegate:self];
  [v6 addObserver:self];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v9 = [v8 stringByAppendingFormat:@"-%lu", ++_notificationViewControllerForRequest____reduceTransparencyBannerCount];

    v8 = v9;
  }

  [v6 setMaterialGroupNameBase:v8];
  [v6 updateContent];

  return v6;
}

- (id)_dashBoardLegibilitySettings
{
  dashBoardLegibilityProvider = self->_dashBoardLegibilityProvider;
  if (!dashBoardLegibilityProvider)
  {
    v4 = objc_alloc_init(SBDashBoardLegibilityProvider);
    v5 = self->_dashBoardLegibilityProvider;
    self->_dashBoardLegibilityProvider = v4;

    dashBoardLegibilityProvider = self->_dashBoardLegibilityProvider;
  }

  return [(SBDashBoardLegibilityProvider *)dashBoardLegibilityProvider currentLegibilitySettings];
}

- (id)_presentableForRequest:(id)request modal:(BOOL)modal
{
  modalCopy = modal;
  requestCopy = request;
  if ([(SBNotificationBannerDestination *)self _isAmbientPresented])
  {
    v7 = [objc_alloc(MEMORY[0x277D78050]) initWithNotificationRequest:requestCopy];
    [(NCNotificationPresentableViewController *)v7 setDelegate:self];
    [(SBNotificationPresentableViewController *)v7 addPresentableObserver:self];
  }

  else
  {
    v8 = [(SBNotificationBannerDestination *)self _notificationViewControllerForRequest:requestCopy];
    [v8 setRevealAdditionalContentOnPresentation:modalCopy];
    v7 = [(NCNotificationPresentableViewController *)[SBNotificationPresentableViewController alloc] initWithNotificationViewController:v8];
    [(NCNotificationPresentableViewController *)v7 setDelegate:self];
  }

  return v7;
}

- (void)_postPresentableForRequest:(id)request modal:(BOOL)modal completion:(id)completion
{
  modalCopy = modal;
  v44 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  delegate = [(SBNotificationBannerDestination *)self delegate];
  v11 = MEMORY[0x277D77DB0];
  if (self->_presentedPresentable)
  {
    _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
    notificationViewController = [_presentedNotificationPresentableVC notificationViewController];

    [notificationViewController setInteractionEnabled:0];
    _presentedNotificationRequest = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
    if (_presentedNotificationRequest)
    {
      v15 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
      {
        [SBNotificationBannerDestination _postPresentableForRequest:v15 modal:? completion:?];
      }

      [delegate destination:self willDismissNotificationRequest:_presentedNotificationRequest];
    }
  }

  v16 = [(SBNotificationBannerDestination *)self _presentableForRequest:requestCopy modal:modalCopy];
  presentedPresentable = self->_presentedPresentable;
  self->_presentedPresentable = v16;

  v18 = MEMORY[0x223D6F7F0](completionCopy);
  if (v18)
  {
    v19 = self->_presentedPresentable;
    v20 = MEMORY[0x223D6F7F0](v18);
    objc_setAssociatedObject(v19, &_SBNotificationBannerDestinationBannerRequestCompletion, v20, 3);
  }

  options = [requestCopy options];
  dismissAutomatically = [options dismissAutomatically];

  v23 = *v11;
  v24 = os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT);
  if (!dismissAutomatically || modalCopy)
  {
    if (v24)
    {
      v30 = self->_presentedPresentable;
      v26 = v23;
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543618;
      v41 = v30;
      v42 = 2114;
      v43 = un_logDigest;
      v29 = "Posting sticky banner %{public}@ for notification %{public}@";
      goto LABEL_15;
    }
  }

  else if (v24)
  {
    v25 = self->_presentedPresentable;
    v26 = v23;
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138543618;
    v41 = v25;
    v42 = 2114;
    v43 = un_logDigest;
    v29 = "Posting banner %{public}@ for notification %{public}@";
LABEL_15:
    _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
  }

  bannerManager = [SBApp bannerManager];
  v32 = [bannerManager acquireGestureRecognizerPriorityAssertionForPresentable:self->_presentedPresentable priority:1 reason:@"user notification banner destination presenting banner"];
  bannerGestureRecognizerPriorityAssertion = self->_bannerGestureRecognizerPriorityAssertion;
  self->_bannerGestureRecognizerPriorityAssertion = v32;

  bannerManager2 = [SBApp bannerManager];
  v35 = self->_presentedPresentable;
  v36 = *MEMORY[0x277D68078];
  v38[0] = *MEMORY[0x277D68070];
  v38[1] = v36;
  v39[0] = &unk_283371168;
  v39[1] = MEMORY[0x277CBEC38];
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  [bannerManager2 postPresentable:v35 withOptions:1 userInfo:v37 error:0];

  [MEMORY[0x277D78060] presentedNotificationRequestAsBanner:requestCopy];
}

- (id)_startTimerWithDelay:(unint64_t)delay eventHandler:(id)handler
{
  handlerCopy = handler;
  v7 = dispatch_get_global_queue(33, 0);
  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7);
  v9 = dispatch_time(0, 1000000000 * delay);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __69__SBNotificationBannerDestination__startTimerWithDelay_eventHandler___block_invoke;
  handler[3] = &unk_2783AA1E8;
  v10 = v8;
  v16 = v10;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = handlerCopy;
  dispatch_source_set_event_handler(v10, handler);
  dispatch_activate(v10);
  v12 = v18;
  v13 = v10;

  return v10;
}

void __69__SBNotificationBannerDestination__startTimerWithDelay_eventHandler___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEBUG))
  {
    __69__SBNotificationBannerDestination__startTimerWithDelay_eventHandler___block_invoke_cold_1();
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__SBNotificationBannerDestination__startTimerWithDelay_eventHandler___block_invoke_130;
  v3[3] = &unk_2783A98A0;
  v2 = *(a1 + 48);
  v3[4] = *(a1 + 40);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __69__SBNotificationBannerDestination__startTimerWithDelay_eventHandler___block_invoke_130(uint64_t a1)
{
  if ([*(a1 + 32) _isShowingShortLookAtRest])
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      __69__SBNotificationBannerDestination__startTimerWithDelay_eventHandler___block_invoke_130_cold_1(v3);
    }
  }
}

- (void)_startReplaceTimer
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, v0, v1, "started replace timer %@", v2, v3, v4, v5, v6);
}

- (void)_startDismissTimer
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, v0, v1, "started dismiss timer %@", v2, v3, v4, v5, v6);
}

- (void)_startReplaceAndDismissTimersForRequest:(id)request
{
  options = [request options];
  if ([options dismissAutomatically] && !-[SBNotificationBannerDestination isUserInteractionInProgress](self, "isUserInteractionInProgress"))
  {
    _presentedNotificationRequestPresenter = [(SBNotificationBannerDestination *)self _presentedNotificationRequestPresenter];
    activeTransitionBlockingAssertions = [_presentedNotificationRequestPresenter activeTransitionBlockingAssertions];
    v6 = [activeTransitionBlockingAssertions count];

    if (!v6)
    {
      [(SBNotificationBannerDestination *)self _startReplaceTimer];

      [(SBNotificationBannerDestination *)self _startDismissTimer];
    }
  }

  else
  {
  }
}

- (void)_setupTimers
{
  v3 = dispatch_get_global_queue(33, 0);
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
  presentTimer = self->_presentTimer;
  self->_presentTimer = v4;

  v6 = self->_presentTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __47__SBNotificationBannerDestination__setupTimers__block_invoke;
  handler[3] = &unk_2783A8C18;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  dispatch_activate(self->_presentTimer);
}

- (void)_setupSystemStateChangeNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__lockStateChanged name:@"SBAggregateLockStateDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__setupModeChanged name:@"SBInBuddyModeDidChangeNotification" object:0];
}

- (void)_performSilenceAction
{
  _presentedNotificationRequest = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
  delegate = [(SBNotificationBannerDestination *)self delegate];
  silenceAction = [_presentedNotificationRequest silenceAction];
  [delegate destination:self executeAction:silenceAction forNotificationRequest:_presentedNotificationRequest requestAuthentication:0 withParameters:MEMORY[0x277CBEC10] completion:0];
}

- (void)_performCancelAction
{
  _presentedNotificationRequest = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
  delegate = [(SBNotificationBannerDestination *)self delegate];
  cancelAction = [_presentedNotificationRequest cancelAction];
  [delegate destination:self executeAction:cancelAction forNotificationRequest:_presentedNotificationRequest requestAuthentication:0 withParameters:MEMORY[0x277CBEC10] completion:0];
}

- (void)_dismissPresentedBannerOnly:(BOOL)only reason:(id)reason animated:(BOOL)animated forceIfSticky:(BOOL)sticky
{
  stickyCopy = sticky;
  animatedCopy = animated;
  onlyCopy = only;
  reasonCopy = reason;
  if ([(SBNotificationBannerDestination *)self _shouldDismissPresentedBannerPerformingPreludeForcingIfSticky:stickyCopy outReason:0])
  {
    [(SBNotificationBannerDestination *)self _dismissPresentedBannerOnly:onlyCopy reason:reasonCopy animated:animatedCopy];
  }
}

- (BOOL)_shouldDismissPresentedBannerPerformingPreludeForcingIfSticky:(BOOL)sticky outReason:(id *)reason
{
  if ([(SBNotificationBannerDestination *)self isPresentingBanner])
  {
    if (sticky || ![(SBNotificationBannerDestination *)self _isPresentingStickyBanner])
    {
      return 1;
    }

    if (reason)
    {
      v7 = @"presentingStickyBanner";
LABEL_8:
      result = 0;
      *reason = v7;
      return result;
    }
  }

  else if (reason)
  {
    v7 = @"noBanner";
    goto LABEL_8;
  }

  return 0;
}

- (BOOL)_revokeAllPresentablesWithRequesterIdentifier:(id)identifier reason:(id)reason options:(unint64_t)options
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v8 = SBApp;
  reasonCopy = reason;
  bannerManager = [v8 bannerManager];
  v11 = [MEMORY[0x277CF0AC0] identificationWithRequesterIdentifier:identifierCopy];
  v17 = 0;
  v12 = [bannerManager revokePresentablesWithIdentification:v11 reason:reasonCopy options:options userInfo:0 error:&v17];

  v13 = v17;
  if (!v12)
  {
    code = [v13 code];
    v15 = *MEMORY[0x277D77DB0];
    if (code == 3)
    {
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = identifierCopy;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "No presentables to revoke with requester identifier %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [SBNotificationBannerDestination _revokeAllPresentablesWithRequesterIdentifier:reason:options:];
    }
  }

  return v12 != 0;
}

- (void)_dismissPresentedBannerOnly:(BOOL)only reason:(id)reason animated:(BOOL)animated
{
  onlyCopy = only;
  v22 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  _presentedNotificationRequest = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
  v9 = MEMORY[0x277D77DB0];
  v10 = *MEMORY[0x277D77DB0];
  if (_presentedNotificationRequest)
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      notificationIdentifier = [_presentedNotificationRequest notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v20 = 138543362;
      v21 = un_logDigest;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Revoking banner for notification %{public}@", &v20, 0xCu);
    }

    bannerManager = [SBApp bannerManager];
    v15 = [bannerManager windowSceneForPresentable:self->_presentedPresentable];
    v16 = [bannerManager isDisplayingBannerInWindowScene:v15];

    delegate = [(SBNotificationBannerDestination *)self delegate];
    [delegate destination:self willDismissNotificationRequest:_presentedNotificationRequest];

    requesterIdentifier = [(BNPresentable *)self->_presentedPresentable requesterIdentifier];
    [(SBNotificationBannerDestination *)self _revokeAllPresentablesWithRequesterIdentifier:requesterIdentifier reason:reasonCopy options:onlyCopy];

    if ((v16 & 1) == 0)
    {
      v19 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Tried to dismiss a banner that was queued but not currently presented", &v20, 2u);
      }

      [(SBNotificationBannerDestination *)self _dismissPresentableCompleted:0];
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [SBNotificationBannerDestination _dismissPresentedBannerOnly:v10 reason:? animated:?];
    }

    [(SBNotificationBannerDestination *)self _dismissPresentableCompleted:0];
  }
}

- (void)_dismissPresentableCompleted:(id)completed
{
  presentedPresentable = self->_presentedPresentable;
  self->_presentedPresentable = 0;

  [(SBNotificationBannerDestination *)self _resetPresentTimer];
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)notificationManagementContentProvider:(id)provider requestsPresentingNotificationManagementViewType:(unint64_t)type forNotificationRequest:(id)request withPresentingView:(id)view
{
  notificationManagementPresenter = self->_notificationManagementPresenter;
  viewCopy = view;
  requestCopy = request;
  _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  notificationViewController = [_presentedNotificationPresentableVC notificationViewController];
  bs_topPresentedViewController = [notificationViewController bs_topPresentedViewController];
  [(NCNotificationManagementViewPresenter *)notificationManagementPresenter presentNotificationManagementViewType:type forNotificationRequest:requestCopy withPresentingViewController:bs_topPresentedViewController withPresentingView:viewCopy];
}

- (void)notificationManagementViewPresenter:(id)presenter setAllowsNotifications:(BOOL)notifications forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  notificationsCopy = notifications;
  identifierCopy = identifier;
  delegate = [(SBNotificationBannerDestination *)self delegate];
  [delegate destination:self setAllowsNotifications:notificationsCopy forSectionIdentifier:identifierCopy];
}

- (void)notificationManagementViewPresenter:(id)presenter setDeliverQuietly:(BOOL)quietly forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  quietlyCopy = quietly;
  identifierCopy = identifier;
  delegate = [(SBNotificationBannerDestination *)self delegate];
  [delegate destination:self setDeliverQuietly:quietlyCopy forSectionIdentifier:identifierCopy];
}

- (void)notificationManagementViewPresenter:(id)presenter setAllowsCriticalAlerts:(BOOL)alerts forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  alertsCopy = alerts;
  identifierCopy = identifier;
  delegate = [(SBNotificationBannerDestination *)self delegate];
  [delegate destination:self setAllowsCriticalAlerts:alertsCopy forSectionIdentifier:identifierCopy];
}

- (void)notificationManagementViewPresenter:(id)presenter setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier
{
  mutedCopy = muted;
  threadIdentifierCopy = threadIdentifier;
  identifierCopy = identifier;
  dateCopy = date;
  delegate = [(SBNotificationBannerDestination *)self delegate];
  [delegate destination:self setMuted:mutedCopy untilDate:dateCopy forSectionIdentifier:identifierCopy threadIdentifier:threadIdentifierCopy];
}

- (void)notificationManagementViewPresenter:(id)presenter setAllowsTimeSensitive:(BOOL)sensitive forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  sensitiveCopy = sensitive;
  identifierCopy = identifier;
  delegate = [(SBNotificationBannerDestination *)self delegate];
  [delegate destination:self setAllowsTimeSensitive:sensitiveCopy forSectionIdentifier:identifierCopy];
}

- (void)notificationManagementViewPresenterWillPresentManagementView:(id)view
{
  _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  notificationViewController = [_presentedNotificationPresentableVC notificationViewController];
  bs_topPresentedViewController = [notificationViewController bs_topPresentedViewController];

  if (objc_opt_respondsToSelector())
  {
    [bs_topPresentedViewController preserveInputViews];
  }
}

- (void)notificationManagementViewPresenterDidDismissManagementView:(id)view
{
  _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  notificationViewController = [_presentedNotificationPresentableVC notificationViewController];
  bs_topPresentedViewController = [notificationViewController bs_topPresentedViewController];

  if (objc_opt_respondsToSelector())
  {
    [bs_topPresentedViewController restoreInputViews];
  }
}

- (BNPresentable)presentablePendingSnapshot
{
  WeakRetained = objc_loadWeakRetained(&self->_presentablePendingSnapshot);

  return WeakRetained;
}

- (NCNotificationViewController)presentedBanner
{
  _presentedNotificationPresentableVC = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  notificationViewController = [_presentedNotificationPresentableVC notificationViewController];

  return notificationViewController;
}

- (void)modifyNotificationRequest:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5_6() notificationIdentifier];
  v4 = [v3 un_logDigest];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_34(&dword_21ED4E000, v5, v6, "Modifying notification %{public}@ in banner", v7, v8, v9, v10, v11);
}

- (void)withdrawNotificationRequest:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5_6() notificationIdentifier];
  v4 = [v3 un_logDigest];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_34(&dword_21ED4E000, v5, v6, "Withdrawing notification %{public}@ from banner", v7, v8, v9, v10, v11);
}

- (void)presentableWillAppearAsBanner:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)presentableDidAppearAsBanner:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)presentableWillDisappearAsBanner:withReason:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)presentableDidDisappearAsBanner:withReason:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)fullScreenPresentableViewController:(uint64_t)a3 requestsDismissalWithReason:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = BNEffectivePresentableDescription();
  OUTLINED_FUNCTION_1_1();
  v7 = 2114;
  v8 = a3;
  _os_log_error_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_ERROR, "Failed to revoke presentable '%{public}@': %{public}@", v6, 0x16u);
}

- (void)_postPresentableForRequest:(void *)a1 modal:completion:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5_6() notificationIdentifier];
  v4 = [v3 un_logDigest];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_34(&dword_21ED4E000, v5, v6, "Replacing banner for notification %{public}@", v7, v8, v9, v10, v11);
}

- (void)_revokeAllPresentablesWithRequesterIdentifier:reason:options:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_21ED4E000, v1, OS_LOG_TYPE_ERROR, "Failed to revoke presentables with requester identifier %{public}@: %{public}@", v2, 0x16u);
}

@end