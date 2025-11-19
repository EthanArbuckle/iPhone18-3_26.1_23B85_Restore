@interface SBNotificationBannerDestination
+ (id)_test_notificationRequestForBannerWithIcon;
- (BNPresentable)presentablePendingSnapshot;
- (BOOL)_canReceiveNotificationRequestIfAmbientPresented:(id)a3;
- (BOOL)_canReceiveNotificationRequestIfLocked:(id)a3;
- (BOOL)_isAmbientNotificationsPreviewOnTapOnly;
- (BOOL)_isAmbientPresented;
- (BOOL)_isBundleIdentifierBlockedForCommunicationPolicy:(id)a3;
- (BOOL)_isBundleIdentifierBlockedForScreenTimeExpiration:(id)a3;
- (BOOL)_isContentSuppressedForNotificationRequest:(id)a3;
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
- (BOOL)_presentedBannerMatchesNotificationRequest:(id)a3;
- (BOOL)_revokeAllPresentablesWithRequesterIdentifier:(id)a3 reason:(id)a4 options:(unint64_t)a5;
- (BOOL)_shouldAllowDragInteraction;
- (BOOL)_shouldDismissPresentedBannerPerformingPreludeForcingIfSticky:(BOOL)a3 outReason:(id *)a4;
- (BOOL)_shouldForceDismisssIfStickyForReason:(id)a3;
- (BOOL)_shouldHideStatusBar;
- (BOOL)_shouldScreenTimeSuppressNotificationRequest:(id)a3;
- (BOOL)_shouldScreenTimeSuppressNotificationsForBundleIdentifier:(id)a3;
- (BOOL)canReceiveNotificationRequest:(id)a3;
- (BOOL)handleHomeButtonPress;
- (BOOL)isNotificationContentExtensionVisible:(id)a3;
- (BOOL)isPresentingEmergencyNotification;
- (BOOL)notificationViewControllerShouldAllowExpandedPlatterInteraction:(id)a3;
- (BOOL)shouldDismissForReason:(id)a3 outReason:(id *)a4;
- (CGRect)presentedBannerScreenFrame;
- (NCNotificationAlertDestinationDelegate)delegate;
- (NCNotificationRequest)_presentedNotificationRequest;
- (NCNotificationViewController)presentedBanner;
- (NSString)coverSheetIdentifier;
- (SBNotificationBannerDestination)init;
- (SBNotificationPresentableViewController)_presentedNotificationPresentableVC;
- (id)_ambientPresentationController;
- (id)_dashBoardLegibilitySettings;
- (id)_notificationSectionSettingsForSectionIdentifier:(id)a3;
- (id)_notificationSystemSettings;
- (id)_notificationViewControllerForRequest:(id)a3;
- (id)_notificationViewControllerFromPresentable:(id)a3;
- (id)_presentableForRequest:(id)a3 modal:(BOOL)a4;
- (id)_presentedNotificationRequestPresenter;
- (id)_requestFromPresentable:(id)a3;
- (id)_startTimerWithDelay:(unint64_t)a3 eventHandler:(id)a4;
- (id)_staticContentProviderForViewController:(id)a3 class:(Class)a4 notificationRequest:(id)a5 test:(id)a6;
- (id)notificationRequestPresenter:(id)a3 staticContentProviderForNotificationRequest:(id)a4;
- (id)notificationRequestPresenterNotificationUsageTrackingState:(id)a3;
- (id)notificationViewController:(id)a3 auxiliaryOptionsContentProviderForNotificationRequest:(id)a4 withLongLook:(BOOL)a5;
- (id)notificationViewControllerContainerViewProviderForExpandedContent:(id)a3;
- (int64_t)participantState;
- (unint64_t)importantAdornmentEligibleOptionsForNotificationViewController:(id)a3;
- (void)_cancelDismissTimer;
- (void)_cancelReplaceAndDismissTimers;
- (void)_cancelReplaceTimer;
- (void)_dismissPresentableCompleted:(id)a3;
- (void)_dismissPresentedBannerOnly:(BOOL)a3 reason:(id)a4 animated:(BOOL)a5;
- (void)_dismissPresentedBannerOnly:(BOOL)a3 reason:(id)a4 animated:(BOOL)a5 forceIfSticky:(BOOL)a6;
- (void)_handleExpansionRequestForViewController:(id)a3 notificationRequest:(id)a4 forTrigger:(int64_t)a5 test:(id)a6 completionBlock:(id)a7;
- (void)_invalidateBiometricAuthIfNecessary;
- (void)_lockStateChanged;
- (void)_performCancelAction;
- (void)_performSilenceAction;
- (void)_postNotificationRequest:(id)a3 modal:(BOOL)a4 completion:(id)a5;
- (void)_postPresentableForRequest:(id)a3 modal:(BOOL)a4 completion:(id)a5;
- (void)_publishDidPresentBannerForNotificationRequest:(id)a3;
- (void)_requestBiometricAuthIfAmbientPresentedForNotificationRequest:(id)a3;
- (void)_requestUnlockForExpansionForViewController:(id)a3 notificationRequest:(id)a4 completionBlock:(id)a5;
- (void)_resetPresentTimer;
- (void)_setReadyForNotificationRequests;
- (void)_setReadyForNotificationRequestsCoalescingWith:(id)a3;
- (void)_setStatusBarsHidden:(BOOL)a3 withDuration:(double)a4;
- (void)_setupModeChanged;
- (void)_setupSystemStateChangeNotifications;
- (void)_setupTimers;
- (void)_startDismissTimer;
- (void)_startReplaceAndDismissTimersForRequest:(id)a3;
- (void)_startReplaceTimer;
- (void)_updateMotionGestureObservation;
- (void)_userInteractionDidEndForRequestPresenter:(id)a3;
- (void)_userInteractionWillBeginForRequestPresenter:(id)a3;
- (void)backlightController:(id)a3 didAnimateBacklightToFactor:(float)a4 source:(int64_t)a5;
- (void)coronaAnimationController:(id)a3 willAnimateCoronaTransitionWithAnimator:(id)a4;
- (void)dealloc;
- (void)didReceiveRaiseGesture;
- (void)fullScreenPresentableViewController:(id)a3 requestsDismissalWithReason:(id)a4;
- (void)longLookDidDismissForNotificationViewController:(id)a3;
- (void)longLookDidPresentForNotificationViewController:(id)a3;
- (void)longLookWillDismissForNotificationViewController:(id)a3;
- (void)longLookWillPresentForNotificationViewController:(id)a3;
- (void)modifyNotificationRequest:(id)a3;
- (void)notificationManagementContentProvider:(id)a3 requestsPresentingNotificationManagementViewType:(unint64_t)a4 forNotificationRequest:(id)a5 withPresentingView:(id)a6;
- (void)notificationManagementViewPresenter:(id)a3 setAllowsCriticalAlerts:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationManagementViewPresenter:(id)a3 setAllowsNotifications:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationManagementViewPresenter:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationManagementViewPresenter:(id)a3 setDeliverQuietly:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationManagementViewPresenter:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forSectionIdentifier:(id)a6 threadIdentifier:(id)a7;
- (void)notificationManagementViewPresenterDidDismissManagementView:(id)a3;
- (void)notificationManagementViewPresenterWillPresentManagementView:(id)a3;
- (void)notificationPresentableViewController:(id)a3 presentationSize:(CGSize *)a4 containerSize:(CGSize *)a5;
- (void)notificationRequestPresenter:(id)a3 didVendTransitionBlockingAssertion:(id)a4;
- (void)notificationRequestPresenter:(id)a3 executeAction:(id)a4 withParameters:(id)a5 completion:(id)a6;
- (void)notificationRequestPresenter:(id)a3 shouldTransitionToStage:(id)a4 forTrigger:(int64_t)a5 completionBlock:(id)a6;
- (void)notificationViewController:(id)a3 dragInteraction:(id)a4 session:(id)a5 didEndWithOperation:(unint64_t)a6;
- (void)notificationViewController:(id)a3 dragInteraction:(id)a4 session:(id)a5 willEndWithOperation:(unint64_t)a6;
- (void)notificationViewController:(id)a3 requestPermissionToExecuteAction:(id)a4 withParameters:(id)a5 completion:(id)a6;
- (void)prepareDestinationToReceiveCriticalNotificationRequest:(id)a3;
- (void)presentModalBannerAndExpandForNotificationRequest:(id)a3;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4;
- (void)registerNotificationBannerDestinationObserver:(id)a3;
- (void)setAssistantController:(id)a3;
- (void)setLockScreenManager:(id)a3;
- (void)setSystemStatusBarAssertion:(id)a3;
- (void)unregisterNotificationBannerDestinationObserver:(id)a3;
- (void)userInteractionDidEndForBannerForPresentable:(id)a3;
- (void)userInteractionWillBeginForBannerForPresentable:(id)a3;
- (void)withdrawNotificationRequest:(id)a3;
@end

@implementation SBNotificationBannerDestination

- (BOOL)_isPresentingBanner
{
  v2 = [(SBNotificationBannerDestination *)self presentedPresentable];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_isPresentingBannerInLongLook
{
  v3 = [(SBNotificationBannerDestination *)self _isPresentingBanner];
  if (v3)
  {
    v4 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
    v5 = [v4 notificationViewController];
    v6 = [v5 hasCommittedToPresentingCustomContentProvidingViewController];

    LOBYTE(v3) = v6;
  }

  return v3;
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

  v3 = [MEMORY[0x277D75418] currentDevice];
  v2 = [v3 userInterfaceIdiom] != 1;

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
  v3 = [(SBNotificationBannerDestination *)self lockScreenManager];
  v4 = [v3 isUILocked];

  if ((v4 & 1) == 0)
  {
    [(SBNotificationBannerDestination *)self _resetPresentTimer];
  }

  if ([(SBNotificationBannerDestination *)self _isPresentingBannerWithHiddenPreview])
  {
    v5 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
    v6 = [v5 notificationViewController];

    [v6 invalidateContentProviders];
  }
}

- (BOOL)_isPresentingBannerWithHiddenPreview
{
  v3 = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
  v4 = [v3 options];
  v5 = [v4 contentPreviewSetting];

  result = [(SBNotificationBannerDestination *)self _isPresentingBanner];
  if (!v5)
  {
    return 0;
  }

  return result;
}

- (NCNotificationRequest)_presentedNotificationRequest
{
  v3 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  v4 = [v3 notificationViewController];
  v5 = [v4 notificationRequest];
  if (v5 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = [(BNPresentable *)self->_presentedPresentable notificationRequest];
  }

  v7 = v6;

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
  v3 = [(SBNotificationBannerDestination *)self _isPresentingBanner];
  if (v3)
  {
    if ([(SBNotificationBannerDestination *)self _isPresentedBannerBeingDragged])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(SBNotificationBannerDestination *)self _isPresentingBannerInLongLook];
    }
  }

  return v3;
}

- (BOOL)_isPresentedBannerBeingDragged
{
  v3 = [(SBNotificationBannerDestination *)self _isPresentingBanner];
  if (v3)
  {
    v4 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
    v5 = [v4 isDragging];

    LOBYTE(v3) = v5;
  }

  return v3;
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

  v7 = [(SBNotificationBannerDestination *)self delegate];
  if ([(SBNotificationBannerDestination *)self _isUILocked])
  {
    [v7 destination:self didBecomeReadyToReceiveNotificationsPassingTest:&__block_literal_global_200];
  }

  else
  {
    [v7 destinationDidBecomeReadyToReceiveNotifications:self];
  }
}

- (BOOL)_isUILocked
{
  v2 = [(SBNotificationBannerDestination *)self lockScreenManager];
  v3 = [v2 isUILocked];

  return v3;
}

+ (id)_test_notificationRequestForBannerWithIcon
{
  v23[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D77E48] notificationRequestWithRequestDestination:*MEMORY[0x277D77FC8]];
  v3 = [v2 mutableCopy];

  v4 = MEMORY[0x277D755B8];
  v5 = [v3 sectionIdentifier];
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v20 = [v4 _applicationIconImageForBundleIdentifier:v5 format:5 scale:?];

  v7 = [v3 content];
  v8 = [v7 mutableCopy];

  v23[0] = v20;
  v9 = [MEMORY[0x277CBEB68] null];
  v23[1] = v9;
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
    v5 = [SBApp bannerManager];
    v6 = objc_alloc_init(MEMORY[0x277D78058]);
    v7 = [MEMORY[0x277D78058] requesterIdentifier];
    [v5 registerAuthority:v6 forRequesterIdentifier:v7];

    v8 = +[SBSceneManagerCoordinator sharedInstance];
    v9 = [v8 sceneDeactivationManager];
    v10 = [v9 newAssertionWithReason:6];
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

- (void)setAssistantController:(id)a3
{
  v5 = a3;
  assistantController = self->_assistantController;
  if (assistantController != v5)
  {
    v7 = v5;
    [(SBAssistantController *)assistantController removeObserver:self];
    objc_storeStrong(&self->_assistantController, a3);
    [(SBAssistantController *)self->_assistantController addObserver:self];
    v5 = v7;
  }
}

- (void)setLockScreenManager:(id)a3
{
  v5 = a3;
  lockScreenManager = self->_lockScreenManager;
  if (lockScreenManager != v5)
  {
    v9 = v5;
    v7 = [(SBLockScreenManager *)lockScreenManager coverSheetViewController];
    [v7 unregisterExternalBehaviorProvider:self];

    objc_storeStrong(&self->_lockScreenManager, a3);
    v8 = [(SBLockScreenManager *)self->_lockScreenManager coverSheetViewController];
    [v8 registerExternalBehaviorProvider:self];

    v5 = v9;
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

- (BOOL)_shouldForceDismisssIfStickyForReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"dismissOverlays"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"SBBannerManagerDismissalReasonLock") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"performSleep") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"mainScreenAnimationController"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"assistantWillAppear"];
  }

  return v4;
}

- (BOOL)shouldDismissForReason:(id)a3 outReason:(id *)a4
{
  v6 = [(SBNotificationBannerDestination *)self _shouldForceDismisssIfStickyForReason:a3];

  return [(SBNotificationBannerDestination *)self _shouldDismissPresentedBannerPerformingPreludeForcingIfSticky:v6 outReason:a4];
}

- (BOOL)isPresentingEmergencyNotification
{
  v3 = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
  v4 = [v3 options];
  if ([v4 revealsAdditionalContentOnPresentation] && -[SBNotificationBannerDestination _isPresentingBannerInLongLook](self, "_isPresentingBannerInLongLook"))
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
    v7 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 notificationViewController];
      [v9 _lookView];
    }

    else
    {
      v9 = UIViewControllerFromPresentable();
      [v9 viewIfLoaded];
    }
    v10 = ;

    if (v10)
    {
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [v10 window];
      v20 = [v19 screen];
      v21 = [v20 fixedCoordinateSpace];
      [v10 convertRect:v21 toCoordinateSpace:{v12, v14, v16, v18}];
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

- (void)presentModalBannerAndExpandForNotificationRequest:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 notificationIdentifier];
    v8 = [v7 un_logDigest];
    *buf = 138543362;
    v11 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Presenting and expanding modal banner for notification %{public}@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__SBNotificationBannerDestination_presentModalBannerAndExpandForNotificationRequest___block_invoke;
  v9[3] = &unk_2783A8C18;
  v9[4] = self;
  [(SBNotificationBannerDestination *)self _postNotificationRequest:v4 modal:0 completion:v9];
}

void __85__SBNotificationBannerDestination_presentModalBannerAndExpandForNotificationRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _presentedNotificationPresentableVC];
  v1 = [v2 notificationViewController];
  [v1 expandAndPlayMedia];
}

- (void)registerNotificationBannerDestinationObserver:(id)a3
{
  v4 = a3;
  v5 = [(SBNotificationBannerDestination *)self destinationObservers];
  [v5 addObject:v4];
}

- (void)unregisterNotificationBannerDestinationObserver:(id)a3
{
  v4 = a3;
  v5 = [(SBNotificationBannerDestination *)self destinationObservers];
  [v5 removeObject:v4];
}

- (BOOL)canReceiveNotificationRequest:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SBNotificationBannerDestination *)self _isPresentingStickyBanner]|| [(SBNotificationBannerDestination *)self isUserInteractionInProgress])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(SBNotificationBannerDestination *)self _isInSetupMode];
  }

  v6 = [(SBNotificationBannerDestination *)self _canReceiveNotificationRequestIfLocked:v4];
  v7 = [(SBNotificationBannerDestination *)self _canReceiveNotificationRequestIfAmbientPresented:v4];
  v8 = v5 & v6;
  v9 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    v10 = [(SBNotificationBannerDestination *)self identifier];
    v14 = [v4 notificationIdentifier];
    v11 = [v14 un_logDigest];
    v12 = NSStringFromBOOL();
    *buf = 138545154;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v22 = 1024;
    v23 = [(SBNotificationBannerDestination *)self _isPresentingStickyBanner];
    v24 = 1024;
    v25 = [(SBNotificationBannerDestination *)self isUserInteractionInProgress];
    v26 = 1024;
    v27 = [(SBNotificationBannerDestination *)self _isInSetupMode];
    v28 = 1024;
    v29 = v6;
    v30 = 1024;
    v31 = v7;
    _os_log_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ can receive notification %{public}@: %{public}@ [ stickyVisible: %d isUserInteractionInProgress: %d inSetupMode: %d canReceiveNotificationRequestIfLocked: %d canReceiveIfAmbientPresented: %d ]", buf, 0x3Eu);
  }

  return v8 & v7;
}

- (void)modifyNotificationRequest:(id)a3
{
  v4 = a3;
  if ([(SBNotificationBannerDestination *)self _presentedBannerMatchesNotificationRequest:v4])
  {
    v5 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEBUG))
    {
      [SBNotificationBannerDestination modifyNotificationRequest:v5];
    }

    v6 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
    v7 = [v6 notificationViewController];

    [v7 setNotificationRequest:v4];
    v8 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__SBNotificationBannerDestination_modifyNotificationRequest___block_invoke;
    v10[3] = &unk_2783A8C18;
    v11 = v7;
    v9 = v7;
    [v8 animateWithDuration:v10 animations:0.25];
  }
}

- (void)withdrawNotificationRequest:(id)a3
{
  v4 = a3;
  if (![(SBNotificationBannerDestination *)self _isPresentingBannerInLongLook]&& [(SBNotificationBannerDestination *)self _isPresentingStickyBanner]&& [(SBNotificationBannerDestination *)self _presentedBannerMatchesNotificationRequest:v4])
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

- (void)prepareDestinationToReceiveCriticalNotificationRequest:(id)a3
{
  if ([(SBNotificationBannerDestination *)self _isPresentingBannerInLongLook]|| [(SBNotificationBannerDestination *)self _isPresentingStickyBanner])
  {
    v4 = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
    v5 = [v4 options];
    v6 = [v5 revealsAdditionalContentOnPresentation];

    if ((v6 & 1) == 0)
    {
      [(SBNotificationBannerDestination *)self _performCancelAction];

      [(SBNotificationBannerDestination *)self _dismissPresentedBannerAnimated:1 reason:@"SBBannerRevocationReasonBannerDestinationCriticalRequest" forceIfSticky:1];
    }
  }
}

- (BOOL)isNotificationContentExtensionVisible:(id)a3
{
  v4 = a3;
  v5 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  v6 = [v5 notificationViewController];
  v7 = [v6 isContentExtensionVisible:v4];

  return v7;
}

- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(SBNotificationBannerDestination *)self identifier];
    v12 = 138543874;
    v13 = v10;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presentable %{public}@ will NOT appear as banner with reason '%{public}@'", &v12, 0x20u);
  }

  [(SBNotificationBannerDestination *)self _cancelReplaceAndDismissTimers];
  [(SBNotificationBannerDestination *)self _dismissPresentableCompleted:v6];
  v11 = objc_getAssociatedObject(v6, &_SBNotificationBannerDestinationBannerRequestCompletion);
  objc_setAssociatedObject(v6, &_SBNotificationBannerDestinationBannerRequestCompletion, 0, 1);
  if (v11)
  {
    v11[2](v11);
  }
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(SBNotificationBannerDestination *)self identifier];
    v14 = 138543618;
    v15 = v7;
    v16 = 2114;
    v17 = v4;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presentable will appear as banner: %{public}@", &v14, 0x16u);
  }

  [(SBNotificationBannerDestination *)self _cancelReplaceAndDismissTimers];
  v8 = [(SBNotificationBannerDestination *)self _requestFromPresentable:v4];
  if (!v8)
  {
    [SBNotificationBannerDestination presentableWillAppearAsBanner:];
  }

  v9 = [SBApp bannerManager];
  v10 = [v9 windowSceneForPresentable:self->_presentedPresentable];
  v11 = [v9 bannerWindowInWindowScene:v10];
  v12 = [v11 sb_coronaAnimationController];
  [v12 addParticipant:self];

  v13 = [(SBNotificationBannerDestination *)self delegate];
  [v13 destination:self willPresentNotificationRequest:v8 suppressAlerts:0];

  [(SBNotificationBannerDestination *)self _requestBiometricAuthIfAmbientPresentedForNotificationRequest:v8];
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D77DB0];
  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(SBNotificationBannerDestination *)self identifier];
    v24 = 138543618;
    v25 = v8;
    v26 = 2114;
    v27 = v4;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presentable did appear as banner: %{public}@", &v24, 0x16u);
  }

  v9 = [(SBNotificationBannerDestination *)self _requestFromPresentable:v4];
  if (!v9)
  {
    [SBNotificationBannerDestination presentableDidAppearAsBanner:];
  }

  v10 = [v9 options];
  v11 = [v10 dismissAutomatically];

  if (v11)
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
  v16 = objc_getAssociatedObject(v4, &_SBNotificationBannerDestinationBannerRequestCompletion);
  objc_setAssociatedObject(v4, &_SBNotificationBannerDestinationBannerRequestCompletion, 0, 1);
  if (v16)
  {
    v16[2](v16);
  }

  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v17 = +[SBBacklightController sharedInstanceIfExists];
    v18 = [v17 backlightState];

    if (v18 == 1)
    {
      v19 = [(SBNotificationBannerDestination *)self _notificationViewControllerFromPresentable:v4];
      [v19 setContentReplacedWithSnapshot:1];
    }

    else
    {
      objc_storeWeak(&self->_presentablePendingSnapshot, v4);
      v20 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = [(SBNotificationBannerDestination *)self identifier];
        v23 = SBBacklightStateDescription(v18);
        v24 = 138543618;
        v25 = v22;
        v26 = 2114;
        v27 = v23;
        _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ reduce transparency enabled, but backlight factor is %{public}@ – deferring", &v24, 0x16u);
      }
    }
  }
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(SBNotificationBannerDestination *)self identifier];
    v13 = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presentable %{public}@ will disappear as banner with reason '%{public}@'", &v13, 0x20u);
  }

  if (self->_presentedPresentable == v6)
  {
    [(BSInvalidatable *)self->_bannerGestureRecognizerPriorityAssertion invalidate];
    bannerGestureRecognizerPriorityAssertion = self->_bannerGestureRecognizerPriorityAssertion;
    self->_bannerGestureRecognizerPriorityAssertion = 0;

    v12 = [(SBNotificationBannerDestination *)self _requestFromPresentable:v6];
    if (!v12)
    {
      [SBNotificationBannerDestination presentableWillDisappearAsBanner:withReason:];
    }

    if (([v7 isEqualToString:@"SBBannerManagerDismissalReasonLock"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"performSleep") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CF0A50]) & 1) != 0 || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CF0A58]))
    {
      [(SBNotificationBannerDestination *)self _performSilenceAction];
    }

    else if (([v7 isEqualToString:@"assistantWillAppear"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"dismissOverlays") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"SBBannerRevocationReasonBannerDestinationDisabled"))
    {
      [(SBNotificationBannerDestination *)self _performCancelAction];
    }
  }
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(SBNotificationBannerDestination *)self identifier];
    v17 = 138543874;
    v18 = v10;
    v19 = 2114;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presentable %{public}@ did disappear as banner with reason '%{public}@'", &v17, 0x20u);
  }

  if (self->_presentedPresentable == v6)
  {
    v11 = [(SBNotificationBannerDestination *)self _requestFromPresentable:v6];
    if (!v11)
    {
      [SBNotificationBannerDestination presentableDidDisappearAsBanner:withReason:];
    }

    if (![(SBNotificationBannerDestination *)self _isPresentingBannerInLongLook])
    {
      [(SBNotificationBannerDestination *)self _cancelReplaceAndDismissTimers];
    }

    [(SBNotificationBannerDestination *)self _dismissPresentableCompleted:v6];
    v12 = [(SBNotificationBannerDestination *)self delegate];
    [v12 destination:self didDismissNotificationRequest:v11];

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

- (void)userInteractionWillBeginForBannerForPresentable:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(SBNotificationBannerDestination *)self identifier];
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presentable will begin user interaction: %{public}@", &v8, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [(SBNotificationBannerDestination *)self _userInteractionWillBeginForRequestPresenter:v4];
  }
}

- (void)userInteractionDidEndForBannerForPresentable:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(SBNotificationBannerDestination *)self identifier];
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presentable did end user interaction: %{public}@", &v8, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [(SBNotificationBannerDestination *)self _userInteractionDidEndForRequestPresenter:v4];
  }
}

- (void)notificationPresentableViewController:(id)a3 presentationSize:(CGSize *)a4 containerSize:(CGSize *)a5
{
  if (a5)
  {
    v7 = SBApp;
    v8 = a3;
    v34 = [v7 bannerManager];
    v9 = [v34 windowSceneForPresentable:v8];

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v11 = [SBApp windowSceneManager];
      v10 = [v11 activeDisplayWindowScene];
    }

    v12 = [v34 bannerWindowInWindowScene:v10];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    a5->width = v18;
    a5->height = v20;
    if (a4)
    {
      v21 = [v34 layoutManagerInWindowScene:v10];
      v22 = [v10 screen];
      [v21 useableContainerFrameInContainerBounds:v22 onScreen:{v14, v16, v18, v20}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [v22 scale];
      [v21 presentedFrameForContentWithPreferredSize:v28 inUseableContainerFrame:v30 containerBounds:v24 scale:{v26, v28, v30, *&v14, *&v16, *&v18, *&v20, v31}];
      a4->width = v32;
      a4->height = v33;
    }
  }
}

- (id)notificationRequestPresenter:(id)a3 staticContentProviderForNotificationRequest:(id)a4
{
  v8 = a3;
  v9 = a4;
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
    v17[0] = v8;
    v17[1] = self;
    v5 = &v18;
    v12 = 0;
    v18 = v9;
  }

  else
  {
    v12 = objc_opt_class();
    v11 = 0;
  }

  v13 = MEMORY[0x223D6F7F0](v11);
  v14 = [(SBNotificationBannerDestination *)self _staticContentProviderForViewController:v8 class:v12 notificationRequest:v9 test:v13];

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

- (void)notificationRequestPresenter:(id)a3 shouldTransitionToStage:(id)a4 forTrigger:(int64_t)a5 completionBlock:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v26 = a6;
  v13 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(SBNotificationBannerDestination *)self identifier];
    v16 = NCStringFromStageChangeTrigger();
    *buf = 138544130;
    v35 = v15;
    v36 = 2114;
    v37 = v11;
    v38 = 2114;
    v39 = v12;
    v40 = 2114;
    v41 = v16;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ request presenter '%{public}@' requesting transition to stage '%{public}@' for triger '%{public}@'", buf, 0x2Au);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (objc_opt_respondsToSelector())
  {
    v18 = [v11 notificationRequest];
  }

  else
  {
    v18 = 0;
  }

  v19 = a5;
  v25 = v12;
  if (isKindOfClass)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __115__SBNotificationBannerDestination_notificationRequestPresenter_shouldTransitionToStage_forTrigger_completionBlock___block_invoke;
    v32[3] = &unk_2783A94B0;
    v20 = v33;
    v33[0] = v11;
    v33[1] = self;
    v21 = MEMORY[0x223D6F7F0](v32);
    v22 = v26;
  }

  else
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __115__SBNotificationBannerDestination_notificationRequestPresenter_shouldTransitionToStage_forTrigger_completionBlock___block_invoke_62;
    v30[3] = &unk_2783A94B0;
    v20 = v31;
    v23 = v11;
    v31[0] = v23;
    v31[1] = self;
    v21 = MEMORY[0x223D6F7F0](v30);
    v22 = v27;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __115__SBNotificationBannerDestination_notificationRequestPresenter_shouldTransitionToStage_forTrigger_completionBlock___block_invoke_65;
    v27[3] = &unk_2783A9C98;
    v12 = &v28;
    v28 = v23;
    v6 = &v29;
    v29 = v26;
  }

  v24 = MEMORY[0x223D6F7F0](v22);
  [(SBNotificationBannerDestination *)self _handleExpansionRequestForViewController:v11 notificationRequest:v18 forTrigger:v19 test:v21 completionBlock:v24];

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

- (void)notificationRequestPresenter:(id)a3 executeAction:(id)a4 withParameters:(id)a5 completion:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [(SBNotificationBannerDestination *)self identifier];
    v17 = [v11 identifier];
    v18 = [(__CFString *)v12 count];
    v19 = @"{}";
    *buf = 138543875;
    v30 = v16;
    if (v18)
    {
      v19 = v12;
    }

    v31 = 2114;
    v32 = v17;
    v33 = 2113;
    v34 = v19;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ executing action %{public}@ with parameters %{private}@", buf, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v20 = [v10 notificationRequest];
  }

  else
  {
    v20 = 0;
  }

  v21 = [(SBNotificationBannerDestination *)self delegate];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __104__SBNotificationBannerDestination_notificationRequestPresenter_executeAction_withParameters_completion___block_invoke;
  v25[3] = &unk_2783A8E88;
  v25[4] = self;
  v26 = v20;
  v27 = v11;
  v28 = v13;
  v22 = v13;
  v23 = v11;
  v24 = v20;
  [v21 destination:self executeAction:v23 forNotificationRequest:v24 requestAuthentication:1 withParameters:v12 completion:v25];
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

- (id)notificationRequestPresenterNotificationUsageTrackingState:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D78018];
  v3 = [(SBNotificationBannerDestination *)self identifier];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (void)notificationRequestPresenter:(id)a3 didVendTransitionBlockingAssertion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBNotificationBannerDestination *)self _presentedNotificationRequestPresenter];

  if (v8 == v6)
  {
    [(SBNotificationBannerDestination *)self _cancelReplaceAndDismissTimers];
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __99__SBNotificationBannerDestination_notificationRequestPresenter_didVendTransitionBlockingAssertion___block_invoke;
    v9[3] = &unk_2783B8418;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    v11 = self;
    [v7 addInvalidationBlock:v9];

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

- (void)notificationViewController:(id)a3 requestPermissionToExecuteAction:(id)a4 withParameters:(id)a5 completion:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [(SBNotificationBannerDestination *)self identifier];
    v17 = [v11 identifier];
    v18 = [(__CFString *)v12 count];
    v19 = @"{}";
    *v22 = 138543875;
    *&v22[4] = v16;
    if (v18)
    {
      v19 = v12;
    }

    *&v22[12] = 2114;
    *&v22[14] = v17;
    v23 = 2113;
    v24 = v19;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ requesting permission to execute action %{public}@ with parameters %{private}@", v22, 0x20u);
  }

  v20 = [v10 notificationRequest];
  v21 = [(SBNotificationBannerDestination *)self delegate];
  [v21 destination:self requestPermissionToExecuteAction:v11 forNotificationRequest:v20 withParameters:v12 completion:v13];
}

- (void)notificationViewController:(id)a3 dragInteraction:(id)a4 session:(id)a5 willEndWithOperation:(unint64_t)a6
{
  if ((a6 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(SBNotificationBannerDestination *)self _dismissPresentedBannerAnimated:0 reason:@"SBBannerRevocationReasonBannerDestinationDragAndDrop" forceIfSticky:1];
  }
}

- (void)notificationViewController:(id)a3 dragInteraction:(id)a4 session:(id)a5 didEndWithOperation:(unint64_t)a6
{
  notificationViewControllerForActiveDragSession = self->_notificationViewControllerForActiveDragSession;
  if (notificationViewControllerForActiveDragSession == a3)
  {
    self->_notificationViewControllerForActiveDragSession = 0;
  }
}

- (BOOL)notificationViewControllerShouldAllowExpandedPlatterInteraction:(id)a3
{
  v4 = a3;
  v5 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  v6 = [v5 notificationViewController];

  if (v6 != v4)
  {
    goto LABEL_2;
  }

  if (![v5 bs_isAppearingOrAppeared])
  {
    v7 = 0;
    goto LABEL_7;
  }

  if ([v5 bannerAppearState] == 1)
  {
LABEL_2:
    v7 = 1;
  }

  else
  {
    v7 = [v5 bannerAppearState] == 2;
  }

LABEL_7:

  return v7;
}

- (id)notificationViewControllerContainerViewProviderForExpandedContent:(id)a3
{
  v4 = a3;
  v5 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  v6 = [v5 notificationViewController];

  if (v6 == v4)
  {
    v8 = objc_alloc(MEMORY[0x277D679B0]);
    v9 = [v5 view];
    v7 = [v8 initWithRequester:v4 containerView:v9 reason:@"Container view requested for notification banner" invalidationBlock:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)notificationViewController:(id)a3 auxiliaryOptionsContentProviderForNotificationRequest:(id)a4 withLongLook:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [v7 sectionIdentifier];
  v9 = [(SBNotificationBannerDestination *)self _notificationSectionSettingsForSectionIdentifier:v8];
  v10 = [v9 isUserConfigurable];

  v11 = 0;
  if (v10 && v5)
  {
    v11 = [objc_alloc(MEMORY[0x277D78070]) initWithNotificationRequest:v7 managementDelegate:self];
  }

  return v11;
}

- (unint64_t)importantAdornmentEligibleOptionsForNotificationViewController:(id)a3
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

- (void)longLookWillPresentForNotificationViewController:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SBNotificationBannerDestination *)self _shouldHideStatusBar])
  {
    [MEMORY[0x277D75D18] _currentAnimationDuration];
    [(SBNotificationBannerDestination *)self _setStatusBarsHidden:1 withDuration:?];
  }

  v5 = [(SBNotificationBannerDestination *)self resignActiveAssertion];
  v6 = [v4 _fbsDisplayIdentity];
  [v5 sb_acquireForDisplayIdentity:v6];

  [(SBNotificationBannerDestination *)self _cancelReplaceAndDismissTimers];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(SBNotificationBannerDestination *)self destinationObservers];
  v8 = [v7 copy];

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

- (void)longLookDidPresentForNotificationViewController:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 notificationRequest];
  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 notificationIdentifier];
    v9 = [v8 un_logDigest];
    *buf = 138543362;
    v30 = v9;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Long look presented for notification %{public}@", buf, 0xCu);
  }

  v10 = [v5 options];
  v11 = [v10 revealsAdditionalContentOnPresentation];

  if (v11)
  {
    if ([(SBNotificationBannerDestination *)self _isContentSuppressedForNotificationRequest:v5])
    {
      [v4 invalidateContentProviders];
    }
  }

  else
  {
    [(SBNotificationBannerDestination *)self _setReadyForNotificationRequestsCoalescingWith:v5];
  }

  v12 = +[SBKeyboardFocusCoordinator sharedInstance];
  v13 = [v4 _sbWindowScene];
  v14 = +[SBKeyboardFocusArbitrationReason longLookDidPresentForNotificationViewController];
  [v12 requestArbitrationForSBWindowScene:v13 forReason:v14];

  v15 = [(SBNotificationBannerDestination *)self lockScreenManager];
  v16 = [v15 coverSheetViewController];
  [v16 externalBehaviorProviderBehaviorChanged:self];

  [(SBNotificationBannerDestination *)self _updateMotionGestureObservation];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = [(SBNotificationBannerDestination *)self destinationObservers];
  v18 = [v17 copy];

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

- (void)longLookWillDismissForNotificationViewController:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SBNotificationBannerDestination *)self _shouldHideStatusBar])
  {
    [MEMORY[0x277D75D18] _currentAnimationDuration];
    [(SBNotificationBannerDestination *)self _setStatusBarsHidden:0 withDuration:?];
  }

  v5 = [v4 notificationRequest];
  v6 = [v5 options];
  v7 = [v6 revealsAdditionalContentOnPresentation];

  if ((v7 & 1) == 0)
  {
    v8 = [v4 _lookView];
    [v8 setHidden:1];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(SBNotificationBannerDestination *)self destinationObservers];
  v10 = [v9 copy];

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

- (void)longLookDidDismissForNotificationViewController:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 notificationRequest];
  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 notificationIdentifier];
    v9 = [v8 un_logDigest];
    *buf = 138543362;
    v33 = v9;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Long look dismissed for notification %{public}@", buf, 0xCu);
  }

  v10 = [(SBNotificationBannerDestination *)self delegate];
  [v10 destination:self didDismissNotificationRequest:v5];

  v11 = [(SBNotificationBannerDestination *)self resignActiveAssertion];
  [v11 relinquish];

  v12 = +[SBKeyboardFocusCoordinator sharedInstance];
  v13 = [v4 _sbWindowScene];
  v14 = +[SBKeyboardFocusArbitrationReason longLookDidDismissForNotificationViewController];
  [v12 requestArbitrationForSBWindowScene:v13 forReason:v14];

  v15 = [(SBNotificationBannerDestination *)self lockScreenManager];
  v16 = [v15 coverSheetViewController];
  [v16 externalBehaviorProviderBehaviorChanged:self];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [(SBNotificationBannerDestination *)self destinationObservers];
  v18 = [v17 copy];

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

  v24 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  v25 = [v24 notificationViewController];

  if (v25 == v4)
  {
    v26 = [(BNPresentable *)self->_presentedPresentable requesterIdentifier];
    [(SBNotificationBannerDestination *)self _revokeAllPresentablesWithRequesterIdentifier:v26 reason:@"SBBannerRevocationReasonLongLookDismissal" options:1];
  }
}

- (void)fullScreenPresentableViewController:(id)a3 requestsDismissalWithReason:(id)a4
{
  v5 = a3;
  v6 = SBApp;
  v7 = a4;
  v8 = [v6 bannerManager];
  v9 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:v5];
  v13 = 0;
  v10 = [v8 revokePresentablesWithIdentification:v9 reason:v7 options:0 userInfo:0 error:&v13];

  v11 = v13;
  if (!v10)
  {
    v12 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [(SBNotificationBannerDestination *)v12 fullScreenPresentableViewController:v5 requestsDismissalWithReason:v11];
    }
  }
}

- (void)didReceiveRaiseGesture
{
  v2 = a1;
  OUTLINED_FUNCTION_5_6();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_34(&dword_21ED4E000, v5, v6, "Destination %{public}@ received raise gesture", v7, v8, v9, v10, v11);
}

- (void)_updateMotionGestureObservation
{
  v2 = a1;
  OUTLINED_FUNCTION_5_6();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_34(&dword_21ED4E000, v5, v6, "Destination %{public}@ is listening to raise gesture", v7, v8, v9, v10, v11);
}

- (void)coronaAnimationController:(id)a3 willAnimateCoronaTransitionWithAnimator:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  [v7 addAnimations:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __101__SBNotificationBannerDestination_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke_3;
  v8[3] = &unk_2783B8440;
  v8[4] = self;
  v8[5] = v10;
  [v7 addCompletion:v8];
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

- (void)backlightController:(id)a3 didAnimateBacklightToFactor:(float)a4 source:(int64_t)a5
{
  v18 = *MEMORY[0x277D85DE8];
  if (fabsf(a4 + -1.0) < 2.2204e-16)
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentablePendingSnapshot);
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v7 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [(SBNotificationBannerDestination *)self identifier];
        v14 = 138543618;
        v15 = v9;
        v16 = 2114;
        v17 = WeakRetained;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ backlight is on, snapshotting presentable %{public}@", &v14, 0x16u);
      }

      v10 = [WeakRetained notificationViewController];
      [v10 setContentReplacedWithSnapshot:1];

      objc_storeWeak(&self->_presentablePendingSnapshot, 0);
    }

    else
    {
      v11 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [(SBNotificationBannerDestination *)self identifier];
        v14 = 138543362;
        v15 = v13;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ backlight is on, but no presentable pending snapshot", &v14, 0xCu);
      }
    }
  }
}

- (id)_notificationViewControllerFromPresentable:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 notificationViewController];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_requestFromPresentable:(id)a3
{
  v4 = a3;
  v5 = [(SBNotificationBannerDestination *)self _notificationViewControllerFromPresentable:v4];
  v6 = [v5 notificationRequest];

  if (!v6)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 notificationRequest];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_presentedNotificationRequestPresenter
{
  v3 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  v4 = [v3 notificationViewController];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(SBNotificationBannerDestination *)self presentedPresentable];
  }

  v7 = v6;

  return v7;
}

- (BOOL)_isDeviceAuthenticated
{
  v2 = [SBApp authenticationController];
  v3 = [v2 isAuthenticated];

  return v3;
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

- (void)_setReadyForNotificationRequestsCoalescingWith:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v4 notificationIdentifier];
    v10 = [v9 un_logDigest];
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ is now ready to receive notifications coalescing with %{public}@", &v12, 0x16u);
  }

  v11 = [(SBNotificationBannerDestination *)self delegate];
  [v11 destination:self didBecomeReadyToReceiveNotificationsCoalescedWith:v4];
}

- (void)_postNotificationRequest:(id)a3 modal:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v10 = _os_activity_create(&dword_21ED4E000, "post-banner", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v10, &state);

  v11 = MEMORY[0x277D77DB0];
  v12 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v26 = [(SBNotificationBannerDestination *)self identifier];
    v27 = [v8 notificationIdentifier];
    v28 = [v27 un_logDigest];
    *buf = 138543618;
    v32 = v26;
    v33 = 2114;
    *v34 = v28;
    _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "Destination %{public}@ received notification %{public}@", buf, 0x16u);
  }

  v13 = [v8 alertOptions];
  v14 = [v13 shouldSuppress];

  v15 = [v8 sb_shouldSuppressAlert];
  v16 = [(SBNotificationBannerDestination *)self _shouldScreenTimeSuppressNotificationRequest:v8];
  if (((v14 | (v15 | v16)) & 1) == 0 || v6)
  {
    if ([(SBNotificationBannerDestination *)self _isPresentingBannerInLongLook])
    {
      v20 = *v11;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v8 notificationIdentifier];
        v22 = [v21 un_logDigest];
        v23 = [(SBNotificationBannerDestination *)self identifier];
        *buf = 138543618;
        v32 = v22;
        v33 = 2114;
        *v34 = v23;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Forwarding notification %{public}@ to long look banner %{public}@", buf, 0x16u);
      }

      v24 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
      v25 = [v24 notificationViewController];
      [v25 didForwardNotificationRequestToCustomContent:v8];
    }

    else
    {
      [(SBNotificationBannerDestination *)self _postPresentableForRequest:v8 modal:v6 completion:v9];
      [(SBNotificationBannerDestination *)self _publishDidPresentBannerForNotificationRequest:v8];
      if (!v6)
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
      v18 = [v8 notificationIdentifier];
      v19 = [v18 un_logDigest];
      *buf = 138544386;
      v32 = v19;
      v33 = 1024;
      *v34 = (v14 | (v15 | v16)) & 1;
      *&v34[4] = 1024;
      *&v34[6] = v15;
      v35 = 1024;
      v36 = v14;
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

- (BOOL)_presentedBannerMatchesNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
  v6 = [v5 notificationIdentifier];
  v7 = [v4 notificationIdentifier];
  if ([v6 isEqualToString:v7])
  {
    v8 = [v5 sectionIdentifier];
    v9 = [v4 sectionIdentifier];
    v10 = [v8 isEqualToString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_setStatusBarsHidden:(BOOL)a3 withDuration:(double)a4
{
  v4 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v9;
    v11 = @"NO";
    if (v4)
    {
      v11 = @"YES";
    }

    v23 = 138412546;
    v24 = v9;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%@ is setting status bar hidden = %@", &v23, 0x16u);
  }

  v12 = [(SBNotificationBannerDestination *)self appsStatusBarAssertion];
  v13 = [SBApp bannerManager];
  v14 = [v13 windowSceneForPresentable:self->_presentedPresentable];

  v15 = !v4;
  if (!v4 || v12)
  {
    if (!v12)
    {
      v15 = 0;
    }

    if (v15 == 1)
    {
      [(SBNotificationBannerDestination *)self setAppsStatusBarAssertion:0];
      [v12 invalidate];
    }
  }

  else
  {
    v16 = [v14 switcherController];
    v17 = [v16 requestInAppStatusBarHiddenAssertionForReason:@"SBNotificationBannerDestination" animated:0];
    [(SBNotificationBannerDestination *)self setAppsStatusBarAssertion:v17];
  }

  v18 = [v14 statusBarManager];
  v19 = [v18 assertionManager];

  if (v4)
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v19 newSettingsAssertionWithStatusBarHidden:1 atLevel:13 reason:v21];
    [(SBNotificationBannerDestination *)self setSystemStatusBarAssertion:v22];
  }

  else
  {
    [(SBNotificationBannerDestination *)self setSystemStatusBarAssertion:0];
  }
}

- (void)setSystemStatusBarAssertion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [(SBWindowSceneStatusBarSettingsAssertion *)v4 acquire];
  }

  [(SBWindowSceneStatusBarSettingsAssertion *)self->_systemStatusBarAssertion invalidate];
  systemStatusBarAssertion = self->_systemStatusBarAssertion;
  self->_systemStatusBarAssertion = v5;
}

- (BOOL)_canReceiveNotificationRequestIfLocked:(id)a3
{
  v4 = a3;
  if ([(SBNotificationBannerDestination *)self _isUILocked])
  {
    v5 = [v4 requestDestinations];
    v6 = [v5 containsObject:*MEMORY[0x277D77FE0]];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_isContentSuppressedForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(SBNotificationBannerDestination *)self _isDeviceAuthenticated];
  v6 = [v4 options];

  v7 = [v6 contentPreviewSetting];
  if (v5 && v7 == 2)
  {
    return 1;
  }

  else
  {
    return (v7 != 0) & ~v5;
  }
}

- (id)_notificationSectionSettingsForSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBNotificationBannerDestination *)self delegate];
  v6 = [v5 notificationSectionSettingsForDestination:self forSectionIdentifier:v4];

  return v6;
}

- (id)_notificationSystemSettings
{
  v3 = [(SBNotificationBannerDestination *)self delegate];
  v4 = [v3 notificationSystemSettingsForDestination:self];

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

- (id)_staticContentProviderForViewController:(id)a3 class:(Class)a4 notificationRequest:(id)a5 test:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v12 && !(*(v12 + 2))(v12))
  {
    v15 = 0;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [v10 staticContentProvider];
    }

    else
    {
      v14 = 0;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0 || (v15 = [v14 copy]) == 0)
    {
      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = MEMORY[0x277D78088];
      }

      v15 = [[v16 alloc] initWithNotificationRequest:v11];
      v17 = [v11 sectionIdentifier];
      v18 = [(SBNotificationBannerDestination *)self _notificationSectionSettingsForSectionIdentifier:v17];

      [v15 setSummarizationEnabled:{objc_msgSend(v18, "isSummarizationEnabled")}];
    }

    [v15 setDeviceAuthenticated:{-[SBNotificationBannerDestination _isDeviceAuthenticated](self, "_isDeviceAuthenticated")}];
    [v15 setDelegate:v10];
  }

  return v15;
}

- (void)_handleExpansionRequestForViewController:(id)a3 notificationRequest:(id)a4 forTrigger:(int64_t)a5 test:(id)a6 completionBlock:(id)a7
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v14 && !v14[2](v14))
  {
LABEL_13:
    v15[2](v15, 0);
    goto LABEL_25;
  }

  v16 = [(SBNotificationBannerDestination *)self _isAmbientPresented];
  v17 = [(SBNotificationBannerDestination *)self _isContentSuppressedForNotificationRequest:v13];
  v18 = v17;
  if (!v16)
  {
    if (v17)
    {
LABEL_9:
      [(SBNotificationBannerDestination *)self _requestUnlockForExpansionForViewController:v12 notificationRequest:v13 completionBlock:v15];
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (a5 == 4)
  {
    v19 = *MEMORY[0x277D77DB0];
    v20 = os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v20)
      {
        v21 = v19;
        v22 = [v13 notificationIdentifier];
        v23 = [v22 un_logDigest];
        v24 = NCStringFromStageChangeTrigger();
        v41 = 138543618;
        v42 = v23;
        v43 = 2114;
        v44 = v24;
        _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Requesting unlock for expansion of request %{public}@ for trigger %{public}@ in Ambient", &v41, 0x16u);
      }

      goto LABEL_9;
    }

    if (v20)
    {
      v30 = v19;
      v31 = [v13 notificationIdentifier];
      v32 = [v31 un_logDigest];
      v33 = NCStringFromStageChangeTrigger();
      v41 = 138543618;
      v42 = v32;
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
      v27 = [v13 notificationIdentifier];
      v28 = [v27 un_logDigest];
      v29 = NCStringFromStageChangeTrigger();
      v41 = 138543618;
      v42 = v28;
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
      v40 = [v13 notificationIdentifier];
      v32 = [v40 un_logDigest];
      v41 = 138543362;
      v42 = v32;
      _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEFAULT, "Expanding notification for request %{public}@ because content is not suppressed in Ambient", &v41, 0xCu);

      goto LABEL_23;
    }

LABEL_24:
    v15[2](v15, 1);
    goto LABEL_25;
  }

  v34 = [(SBNotificationBannerDestination *)self _isDeviceAuthenticated];
  v35 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v36 = v35;
    v37 = [v13 notificationIdentifier];
    v38 = [v37 un_logDigest];
    v41 = 138543618;
    v42 = v38;
    v43 = 1024;
    LODWORD(v44) = v34;
    _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "Checking expanding notification for request %{public}@ in Ambient [ isAuthenticated = %{BOOL}d ]", &v41, 0x12u);
  }

  v15[2](v15, v34);
  if (v34)
  {
    [(SBNotificationBannerDestination *)self _invalidateBiometricAuthIfNecessary];
  }

LABEL_25:
}

- (void)_requestUnlockForExpansionForViewController:(id)a3 notificationRequest:(id)a4 completionBlock:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v9 notificationIdentifier];
    v14 = [v13 un_logDigest];
    *buf = 138543362;
    v26 = v14;
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
  v18 = [(SBNotificationBannerDestination *)self lockScreenManager];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __115__SBNotificationBannerDestination__requestUnlockForExpansionForViewController_notificationRequest_completionBlock___block_invoke;
  v21[3] = &unk_2783B8488;
  v19 = v9;
  v22 = v19;
  objc_copyWeak(&v24, buf);
  v20 = v10;
  v23 = v20;
  [v18 unlockWithRequest:v15 completion:v21];

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

- (void)_userInteractionWillBeginForRequestPresenter:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(SBNotificationBannerDestination *)v5 isUserInteractionInProgress])
  {
    [(SBNotificationBannerDestination *)v5 setUserInteractionInProgress:1];
    v6 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 notificationRequest];
      v8 = [v7 notificationIdentifier];
      v9 = [v8 un_logDigest];
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "User interaction started for banner for request %{public}@", &v10, 0xCu);
    }

    if (![(SBNotificationBannerDestination *)v5 _isPresentingBannerInLongLook])
    {
      [(SBNotificationBannerDestination *)v5 _cancelReplaceAndDismissTimers];
    }
  }

  objc_sync_exit(v5);
}

- (void)_userInteractionDidEndForRequestPresenter:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(SBNotificationBannerDestination *)v5 isUserInteractionInProgress])
  {
    [(SBNotificationBannerDestination *)v5 setUserInteractionInProgress:0];
    v6 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 notificationRequest];
      v8 = [v7 notificationIdentifier];
      v9 = [v8 un_logDigest];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "User interaction ended for presenter for request %{public}@", &v11, 0xCu);
    }

    if (![(SBNotificationBannerDestination *)v5 _isPresentingBannerInLongLook])
    {
      v10 = [v4 notificationRequest];
      [(SBNotificationBannerDestination *)v5 _startReplaceAndDismissTimersForRequest:v10];
    }
  }

  objc_sync_exit(v5);
}

- (id)_ambientPresentationController
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 activeDisplayWindowScene];
  v4 = [v3 ambientPresentationController];

  return v4;
}

- (BOOL)_isAmbientPresented
{
  v2 = [(SBNotificationBannerDestination *)self _ambientPresentationController];
  v3 = [v2 isPresented];

  return v3;
}

- (BOOL)_isAmbientNotificationsPreviewOnTapOnly
{
  v2 = [(SBNotificationBannerDestination *)self _ambientPresentationController];
  v3 = [v2 notificationsPreviewOnTapOnly];

  return v3;
}

- (BOOL)_canReceiveNotificationRequestIfAmbientPresented:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SBNotificationBannerDestination *)self _isAmbientPresented])
  {
    v5 = [v4 options];
    v6 = [v5 suppressPresentationInAmbient];

    v7 = [(SBNotificationBannerDestination *)self _ambientPresentationController];
    v8 = [v7 suppressNotificationPresentation];

    v9 = [v4 interruptionLevel];
    v10 = [v4 options];
    v11 = [v10 revealsAdditionalContentOnPresentation];

    if (v6 & 1 | ((v8 & 1) == 0))
    {
      v12 = v6 ^ 1;
    }

    else
    {
      v12 = (v9 == 3) | v11;
    }

    v13 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v9 == 3;
      v15 = v13;
      v16 = [v4 notificationIdentifier];
      v17 = [v16 un_logDigest];
      v19 = 138544642;
      v20 = v17;
      v21 = 1024;
      v22 = v12 & 1;
      v23 = 1024;
      v24 = v6;
      v25 = 1024;
      v26 = v8 & 1;
      v27 = 1024;
      v28 = v14;
      v29 = 1024;
      v30 = v11 & 1;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Can receive request %{public}@ in ambient : %{BOOL}d [ requestSuppress:%{BOOL}d ; ambientSuppress:%{BOOL}d ; critical:%{BOOL}d ; emergency:%{BOOL}d ]", &v19, 0x2Au);
    }
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

- (void)_requestBiometricAuthIfAmbientPresentedForNotificationRequest:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SBNotificationBannerDestination *)self _isAmbientPresented]&& [(SBNotificationBannerDestination *)self _isContentSuppressedForNotificationRequest:v4])
  {
    v5 = [MEMORY[0x277D67C98] sharedInstance];
    v6 = v5;
    biometricMatchingAssertion = self->_biometricMatchingAssertion;
    if (biometricMatchingAssertion)
    {
      [v5 resumeMatchingForAssertion:biometricMatchingAssertion advisory:1];
    }

    else
    {
      v8 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = [v4 notificationIdentifier];
        v11 = [v10 un_logDigest];
        v14 = 138543362;
        v15 = v11;
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

- (void)_publishDidPresentBannerForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(SBNotificationBannerDestination *)self destinationObservers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__SBNotificationBannerDestination__publishDidPresentBannerForNotificationRequest___block_invoke;
  v7[3] = &unk_2783B84B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
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
  v3 = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
  if ([(SBNotificationBannerDestination *)self _isPresentingBanner])
  {
    v4 = [v3 options];
    v5 = [v4 dismissAutomatically] ^ 1;
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

  v3 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  v4 = [v3 notificationViewController];
  v5 = [v4 isNotPresentingOrHasCommittedToDismissingCustomContentProvidingViewController];

  return v5;
}

- (BOOL)_isPresentingBannerRequestingRaiseGesture
{
  v3 = [(SBNotificationBannerDestination *)self _isPresentingBanner];
  if (v3)
  {
    v4 = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
    v5 = [v4 options];
    v6 = [v5 playMediaWhenRaised];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)_isPresentingBannerPreventingAutomaticLock
{
  v2 = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
  v3 = [v2 options];
  v4 = [v3 preventsAutomaticLock];

  return v4;
}

- (BOOL)_isInSetupMode
{
  v2 = [(SBNotificationBannerDestination *)self setupManager];
  v3 = [v2 isInSetupMode];

  return v3;
}

- (BOOL)_shouldScreenTimeSuppressNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 options];
  if ([v5 overridesDowntime])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 sectionIdentifier];
    v6 = [(SBNotificationBannerDestination *)self _shouldScreenTimeSuppressNotificationsForBundleIdentifier:v7];
  }

  return v6;
}

- (BOOL)_shouldScreenTimeSuppressNotificationsForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBNotificationBannerDestination *)self _isBundleIdentifierBlockedForScreenTimeExpiration:v4]|| [(SBNotificationBannerDestination *)self _isBundleIdentifierBlockedForCommunicationPolicy:v4];

  return v5;
}

- (BOOL)_isBundleIdentifierBlockedForScreenTimeExpiration:(id)a3
{
  v3 = a3;
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:v3];

  v6 = [v5 info];
  LOBYTE(v3) = [v6 isBlockedForScreenTimeExpiration];

  return v3;
}

- (BOOL)_isBundleIdentifierBlockedForCommunicationPolicy:(id)a3
{
  v3 = a3;
  v4 = +[SBCommunicationPolicyManager sharedInstance];
  v5 = [v4 shouldScreenTimeSuppressNotificationsForBundleIdentifier:v3];

  return v5;
}

- (id)_notificationViewControllerForRequest:(id)a3
{
  v4 = MEMORY[0x277D78098];
  v5 = a3;
  v6 = [[v4 alloc] initWithNotificationRequest:v5 revealingAdditionalContentOnPresentation:0];

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

- (id)_presentableForRequest:(id)a3 modal:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(SBNotificationBannerDestination *)self _isAmbientPresented])
  {
    v7 = [objc_alloc(MEMORY[0x277D78050]) initWithNotificationRequest:v6];
    [(NCNotificationPresentableViewController *)v7 setDelegate:self];
    [(SBNotificationPresentableViewController *)v7 addPresentableObserver:self];
  }

  else
  {
    v8 = [(SBNotificationBannerDestination *)self _notificationViewControllerForRequest:v6];
    [v8 setRevealAdditionalContentOnPresentation:v4];
    v7 = [(NCNotificationPresentableViewController *)[SBNotificationPresentableViewController alloc] initWithNotificationViewController:v8];
    [(NCNotificationPresentableViewController *)v7 setDelegate:self];
  }

  return v7;
}

- (void)_postPresentableForRequest:(id)a3 modal:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(SBNotificationBannerDestination *)self delegate];
  v11 = MEMORY[0x277D77DB0];
  if (self->_presentedPresentable)
  {
    v12 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
    v13 = [v12 notificationViewController];

    [v13 setInteractionEnabled:0];
    v14 = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
    if (v14)
    {
      v15 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
      {
        [SBNotificationBannerDestination _postPresentableForRequest:v15 modal:? completion:?];
      }

      [v10 destination:self willDismissNotificationRequest:v14];
    }
  }

  v16 = [(SBNotificationBannerDestination *)self _presentableForRequest:v8 modal:v6];
  presentedPresentable = self->_presentedPresentable;
  self->_presentedPresentable = v16;

  v18 = MEMORY[0x223D6F7F0](v9);
  if (v18)
  {
    v19 = self->_presentedPresentable;
    v20 = MEMORY[0x223D6F7F0](v18);
    objc_setAssociatedObject(v19, &_SBNotificationBannerDestinationBannerRequestCompletion, v20, 3);
  }

  v21 = [v8 options];
  v22 = [v21 dismissAutomatically];

  v23 = *v11;
  v24 = os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT);
  if (!v22 || v6)
  {
    if (v24)
    {
      v30 = self->_presentedPresentable;
      v26 = v23;
      v27 = [v8 notificationIdentifier];
      v28 = [v27 un_logDigest];
      *buf = 138543618;
      v41 = v30;
      v42 = 2114;
      v43 = v28;
      v29 = "Posting sticky banner %{public}@ for notification %{public}@";
      goto LABEL_15;
    }
  }

  else if (v24)
  {
    v25 = self->_presentedPresentable;
    v26 = v23;
    v27 = [v8 notificationIdentifier];
    v28 = [v27 un_logDigest];
    *buf = 138543618;
    v41 = v25;
    v42 = 2114;
    v43 = v28;
    v29 = "Posting banner %{public}@ for notification %{public}@";
LABEL_15:
    _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
  }

  v31 = [SBApp bannerManager];
  v32 = [v31 acquireGestureRecognizerPriorityAssertionForPresentable:self->_presentedPresentable priority:1 reason:@"user notification banner destination presenting banner"];
  bannerGestureRecognizerPriorityAssertion = self->_bannerGestureRecognizerPriorityAssertion;
  self->_bannerGestureRecognizerPriorityAssertion = v32;

  v34 = [SBApp bannerManager];
  v35 = self->_presentedPresentable;
  v36 = *MEMORY[0x277D68078];
  v38[0] = *MEMORY[0x277D68070];
  v38[1] = v36;
  v39[0] = &unk_283371168;
  v39[1] = MEMORY[0x277CBEC38];
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  [v34 postPresentable:v35 withOptions:1 userInfo:v37 error:0];

  [MEMORY[0x277D78060] presentedNotificationRequestAsBanner:v8];
}

- (id)_startTimerWithDelay:(unint64_t)a3 eventHandler:(id)a4
{
  v6 = a4;
  v7 = dispatch_get_global_queue(33, 0);
  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7);
  v9 = dispatch_time(0, 1000000000 * a3);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __69__SBNotificationBannerDestination__startTimerWithDelay_eventHandler___block_invoke;
  handler[3] = &unk_2783AA1E8;
  v10 = v8;
  v16 = v10;
  v17 = self;
  v18 = v6;
  v11 = v6;
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

- (void)_startReplaceAndDismissTimersForRequest:(id)a3
{
  v7 = [a3 options];
  if ([v7 dismissAutomatically] && !-[SBNotificationBannerDestination isUserInteractionInProgress](self, "isUserInteractionInProgress"))
  {
    v4 = [(SBNotificationBannerDestination *)self _presentedNotificationRequestPresenter];
    v5 = [v4 activeTransitionBlockingAssertions];
    v6 = [v5 count];

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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__lockStateChanged name:@"SBAggregateLockStateDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__setupModeChanged name:@"SBInBuddyModeDidChangeNotification" object:0];
}

- (void)_performSilenceAction
{
  v5 = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
  v3 = [(SBNotificationBannerDestination *)self delegate];
  v4 = [v5 silenceAction];
  [v3 destination:self executeAction:v4 forNotificationRequest:v5 requestAuthentication:0 withParameters:MEMORY[0x277CBEC10] completion:0];
}

- (void)_performCancelAction
{
  v5 = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
  v3 = [(SBNotificationBannerDestination *)self delegate];
  v4 = [v5 cancelAction];
  [v3 destination:self executeAction:v4 forNotificationRequest:v5 requestAuthentication:0 withParameters:MEMORY[0x277CBEC10] completion:0];
}

- (void)_dismissPresentedBannerOnly:(BOOL)a3 reason:(id)a4 animated:(BOOL)a5 forceIfSticky:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a3;
  v10 = a4;
  if ([(SBNotificationBannerDestination *)self _shouldDismissPresentedBannerPerformingPreludeForcingIfSticky:v6 outReason:0])
  {
    [(SBNotificationBannerDestination *)self _dismissPresentedBannerOnly:v8 reason:v10 animated:v7];
  }
}

- (BOOL)_shouldDismissPresentedBannerPerformingPreludeForcingIfSticky:(BOOL)a3 outReason:(id *)a4
{
  if ([(SBNotificationBannerDestination *)self isPresentingBanner])
  {
    if (a3 || ![(SBNotificationBannerDestination *)self _isPresentingStickyBanner])
    {
      return 1;
    }

    if (a4)
    {
      v7 = @"presentingStickyBanner";
LABEL_8:
      result = 0;
      *a4 = v7;
      return result;
    }
  }

  else if (a4)
  {
    v7 = @"noBanner";
    goto LABEL_8;
  }

  return 0;
}

- (BOOL)_revokeAllPresentablesWithRequesterIdentifier:(id)a3 reason:(id)a4 options:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = SBApp;
  v9 = a4;
  v10 = [v8 bannerManager];
  v11 = [MEMORY[0x277CF0AC0] identificationWithRequesterIdentifier:v7];
  v17 = 0;
  v12 = [v10 revokePresentablesWithIdentification:v11 reason:v9 options:a5 userInfo:0 error:&v17];

  v13 = v17;
  if (!v12)
  {
    v14 = [v13 code];
    v15 = *MEMORY[0x277D77DB0];
    if (v14 == 3)
    {
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = v7;
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

- (void)_dismissPresentedBannerOnly:(BOOL)a3 reason:(id)a4 animated:(BOOL)a5
{
  v5 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(SBNotificationBannerDestination *)self _presentedNotificationRequest];
  v9 = MEMORY[0x277D77DB0];
  v10 = *MEMORY[0x277D77DB0];
  if (v8)
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v8 notificationIdentifier];
      v13 = [v12 un_logDigest];
      v20 = 138543362;
      v21 = v13;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Revoking banner for notification %{public}@", &v20, 0xCu);
    }

    v14 = [SBApp bannerManager];
    v15 = [v14 windowSceneForPresentable:self->_presentedPresentable];
    v16 = [v14 isDisplayingBannerInWindowScene:v15];

    v17 = [(SBNotificationBannerDestination *)self delegate];
    [v17 destination:self willDismissNotificationRequest:v8];

    v18 = [(BNPresentable *)self->_presentedPresentable requesterIdentifier];
    [(SBNotificationBannerDestination *)self _revokeAllPresentablesWithRequesterIdentifier:v18 reason:v7 options:v5];

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

- (void)_dismissPresentableCompleted:(id)a3
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

- (void)notificationManagementContentProvider:(id)a3 requestsPresentingNotificationManagementViewType:(unint64_t)a4 forNotificationRequest:(id)a5 withPresentingView:(id)a6
{
  notificationManagementPresenter = self->_notificationManagementPresenter;
  v10 = a6;
  v11 = a5;
  v14 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  v12 = [v14 notificationViewController];
  v13 = [v12 bs_topPresentedViewController];
  [(NCNotificationManagementViewPresenter *)notificationManagementPresenter presentNotificationManagementViewType:a4 forNotificationRequest:v11 withPresentingViewController:v13 withPresentingView:v10];
}

- (void)notificationManagementViewPresenter:(id)a3 setAllowsNotifications:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v6 = a4;
  v8 = a6;
  v9 = [(SBNotificationBannerDestination *)self delegate];
  [v9 destination:self setAllowsNotifications:v6 forSectionIdentifier:v8];
}

- (void)notificationManagementViewPresenter:(id)a3 setDeliverQuietly:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v6 = a4;
  v8 = a6;
  v9 = [(SBNotificationBannerDestination *)self delegate];
  [v9 destination:self setDeliverQuietly:v6 forSectionIdentifier:v8];
}

- (void)notificationManagementViewPresenter:(id)a3 setAllowsCriticalAlerts:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v6 = a4;
  v8 = a6;
  v9 = [(SBNotificationBannerDestination *)self delegate];
  [v9 destination:self setAllowsCriticalAlerts:v6 forSectionIdentifier:v8];
}

- (void)notificationManagementViewPresenter:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forSectionIdentifier:(id)a6 threadIdentifier:(id)a7
{
  v9 = a4;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = [(SBNotificationBannerDestination *)self delegate];
  [v14 destination:self setMuted:v9 untilDate:v13 forSectionIdentifier:v12 threadIdentifier:v11];
}

- (void)notificationManagementViewPresenter:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v6 = a4;
  v8 = a6;
  v9 = [(SBNotificationBannerDestination *)self delegate];
  [v9 destination:self setAllowsTimeSensitive:v6 forSectionIdentifier:v8];
}

- (void)notificationManagementViewPresenterWillPresentManagementView:(id)a3
{
  v3 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  v4 = [v3 notificationViewController];
  v5 = [v4 bs_topPresentedViewController];

  if (objc_opt_respondsToSelector())
  {
    [v5 preserveInputViews];
  }
}

- (void)notificationManagementViewPresenterDidDismissManagementView:(id)a3
{
  v3 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  v4 = [v3 notificationViewController];
  v5 = [v4 bs_topPresentedViewController];

  if (objc_opt_respondsToSelector())
  {
    [v5 restoreInputViews];
  }
}

- (BNPresentable)presentablePendingSnapshot
{
  WeakRetained = objc_loadWeakRetained(&self->_presentablePendingSnapshot);

  return WeakRetained;
}

- (NCNotificationViewController)presentedBanner
{
  v2 = [(SBNotificationBannerDestination *)self _presentedNotificationPresentableVC];
  v3 = [v2 notificationViewController];

  return v3;
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