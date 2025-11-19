@interface SBCoverSheetPresentationManager
+ (SBCoverSheetPresentationManager)sharedInstance;
+ (void)getLeadingTopButtonFrame:(CGRect *)a3 trailingTopButtonFrame:(CGRect *)a4 forScreen:(id)a5;
- (BOOL)_isEffectivelyLocked;
- (BOOL)_isGoingToSecureAppForSlidingViewController:(id)a3;
- (BOOL)_isIconFlyInAnimationAllowed;
- (BOOL)_isInAlwaysOn;
- (BOOL)_performInterstitialPresentationIfNeeded:(id)a3;
- (BOOL)coverSheetSlidingViewControllerIsDisplayingInterstitial:(id)a3;
- (BOOL)coverSheetSlidingViewControllerIsInterstitialDismissalAllowed:(id)a3;
- (BOOL)coverSheetSlidingViewControllerPerformExternalUnlockIfNeeded:(id)a3;
- (BOOL)coverSheetSlidingViewControllerShouldAllowDismissal:(id)a3;
- (BOOL)hasContentUnderCoverSheetSlidingViewController:(id)a3;
- (BOOL)hasFirstSwipeShowGrabberOverride;
- (BOOL)isAnyGestureActivelyRecognized;
- (BOOL)isCoverSheetHostingAnApp;
- (BOOL)isDismissGestureActive;
- (BOOL)isInSecureApp;
- (BOOL)isPresented;
- (BOOL)isTransitioning;
- (BOOL)isVisible;
- (BOOL)isVisibleAndNotDisappearing;
- (BOOL)secureAppEnvironmentViewControllerShouldEnableIdleWarning:(id)a3 alwaysOnEnabled:(BOOL)a4;
- (CSCoverSheetTransitionSettings)transitionSettings;
- (NSSet)components;
- (SBCoverSheetPresentationDelegate)delegate;
- (SBCoverSheetPresentationManager)initWithWindowScene:(id)a3;
- (SBCoverSheetSceneManager)sceneManager;
- (SBCoverSheetSlidingViewController)coverSheetSlidingViewController;
- (SBCoverSheetSlidingViewController)secureAppSlidingViewController;
- (SBDeviceApplicationSceneHandle)coverSheetHostedAppSceneHandle;
- (SBPearlMatchingStateProvider)pearlMatchingStateProvider;
- (SBWindow)coverSheetWindow;
- (SBWindow)secureAppWindow;
- (SBWindowScene)windowScene;
- (id)_impactFeedbackGeneratorConfigurationForStyle:(int64_t)a3;
- (id)_newRubberBandFeedbackGeneratorForSettings:(id)a3;
- (id)coverSheetViewController;
- (id)scenesForBacklightSession;
- (id)traitsParticipantForSceneHandle:(id)a3;
- (int64_t)_wallpaperEffectiveInterfaceOrientation;
- (int64_t)idleTimerDuration;
- (int64_t)interfaceOrientationForWallpaperController:(id)a3;
- (unint64_t)restrictedCapabilities;
- (unint64_t)screenEdgesDeferringSystemGestures;
- (void)_acquireAsynchronousRenderingAssertion;
- (void)_acquireSystemApertureCoverSheetAssertion;
- (void)_animateForProgress:(double)a3;
- (void)_authenticationChanged:(id)a3;
- (void)_cleanupARubberBandTransitionForSlidingViewController:(id)a3;
- (void)_cleanupATransition;
- (void)_cleanupDismissalTransition;
- (void)_cleanupIconAnimator;
- (void)_cleanupInterstitialTransitionForSlidingViewController:(id)a3;
- (void)_cleanupPresentationTransition;
- (void)_cleanupRubberBandDismissalTransitionForSlidingViewController:(id)a3;
- (void)_cleanupRubberBandPresentationTransitionForSlidingViewController:(id)a3;
- (void)_clearSecureAppViewControllersIncludingWindow:(BOOL)a3 force:(BOOL)a4;
- (void)_createWallpaperOverlayIfNeededWithCoverSheetFrame:(CGRect)a3;
- (void)_enqueueBlock:(id)a3 withName:(id)a4;
- (void)_finishSecureAppTransitionToPresented:(BOOL)a3;
- (void)_invalidateSystemApertureCoverSheetAssertion;
- (void)_isIconFlyInAnimationAllowed;
- (void)_noteCoverSheetDismissingByUserGesture;
- (void)_noteEffectiveLockStatusMayHaveChangedForUserNotification:(BOOL)a3 canDismiss:(BOOL)a4;
- (void)_notifyDelegateDidDismiss;
- (void)_notifyDelegateDidPresent;
- (void)_notifyDelegateRequestsUnlock;
- (void)_notifyDelegateWillDismissWithVelocity:(double)a3;
- (void)_notifyDelegateWillPerformTransitionWithFinalValue:(double)a3 forUserGesture:(BOOL)a4 withVelocity:(double)a5 animated:(BOOL)a6;
- (void)_notifyDelegateWillPresent;
- (void)_performAfterSecureAppCleanup:(id)a3;
- (void)_prepareCoverSheetWindowForDisplay;
- (void)_prepareForARubberBandTransitionForSlidingViewController:(id)a3;
- (void)_prepareForATransition;
- (void)_prepareForCoverSheetRemovalWithVelocity:(double)a3;
- (void)_prepareForDismissalTransition;
- (void)_prepareForPresentationTransitionForUserGesture:(BOOL)a3;
- (void)_prepareForRubberBandDismissalTransitionForSlidingViewController:(id)a3;
- (void)_prepareForRubberBandPresentationTransitionForSlidingViewController:(id)a3;
- (void)_prepareForSecureAppTransitionToPresented:(BOOL)a3 animated:(BOOL)a4;
- (void)_prepareForTransitionToSecureApp;
- (void)_prepareIconAnimatorForPresenting:(BOOL)a3 withVelocity:(double)a4;
- (void)_prepareInterstitialTransitionForSlidingViewController:(id)a3;
- (void)_prepareSecureAppViewController;
- (void)_prepareSecureAppWindowForDisplay;
- (void)_relinquishAsynchronousRenderingAssertion;
- (void)_relinquishHomeGestureOwnership;
- (void)_removeWallpaperOverlay;
- (void)_requestHomeGestureOwnership;
- (void)_restartStartupTransitionBegan:(id)a3;
- (void)_setCoverSheet:(BOOL)a3 windowVisible:(BOOL)a4 forReason:(id)a5;
- (void)_setCoverSheetPresented:(BOOL)a3 forcePresented:(BOOL)a4 animated:(BOOL)a5 dismissModalPresentation:(BOOL)a6 options:(unint64_t)a7 withCompletion:(id)a8;
- (void)_setOrientationUpdatesDeferred:(BOOL)a3;
- (void)_setTransitionProgress:(double)a3 animated:(BOOL)a4 gestureActive:(BOOL)a5 coverSheetProgress:(double)a6 completion:(id)a7;
- (void)_tellDashBoardOurAppearanceAndBehaviorChanged;
- (void)_tellDashBoardOurAppearanceChanged;
- (void)_tellDashBoardOurBehaviorChanged;
- (void)_transitionFromSecureAppToFullAppAndDismiss:(BOOL)a3 preservingBanners:(BOOL)a4;
- (void)_updateIconsFlyInWithSettings:(id)a3;
- (void)_updateInterstitialTransitionForSlidingViewController:(id)a3 withProgress:(double)a4;
- (void)_updateProximitySensorState;
- (void)_updateSecureAppViewControllerVisibilityForAssertionsActive:(BOOL)a3;
- (void)_updateShouldDisplayFakeStatusBarInVisibleTransition:(BOOL)a3;
- (void)_updateTopButtonsForCoverSheetViewController:(id)a3;
- (void)_updateTransitionToSecureAppWithProgress:(double)a3;
- (void)_updateVisibilityOfWindow:(id)a3 forReasons:(id)a4;
- (void)_updateWallpaperOverlay;
- (void)_updateWallpaperOverlayAlpha:(double)a3;
- (void)addDismissalObserver:(id)a3;
- (void)assistantDidDisappear:(id)a3 windowScene:(id)a4;
- (void)completeOngoingPresentationIfNeeded;
- (void)coverSheetSlidingViewController;
- (void)coverSheetSlidingViewController:(id)a3 animateForGestureActive:(BOOL)a4 withProgress:(double)a5 beginBlock:(id)a6 endBlock:(id)a7;
- (void)coverSheetSlidingViewController:(id)a3 animationTickedWithProgress:(double)a4 velocity:(double)a5 isPresenting:(BOOL)a6 coverSheetFrame:(CGRect)a7 gestureActive:(BOOL)a8 forPresentationValue:(BOOL)a9;
- (void)coverSheetSlidingViewController:(id)a3 committingToEndPresented:(BOOL)a4;
- (void)coverSheetSlidingViewController:(id)a3 isTransitioning:(BOOL)a4;
- (void)coverSheetSlidingViewController:(id)a3 performIconFlyInForPresenting:(BOOL)a4 animated:(BOOL)a5 beginBlock:(id)a6 endBlock:(id)a7;
- (void)coverSheetSlidingViewController:(id)a3 prepareForDismissalTransitionForReversingTransition:(BOOL)a4 forUserGesture:(BOOL)a5;
- (void)coverSheetSlidingViewController:(id)a3 prepareForPresentationTransitionForUserGesture:(BOOL)a4;
- (void)coverSheetSlidingViewController:(id)a3 prepareToAnimateIconFlyInForPresenting:(BOOL)a4 withVelocity:(double)a5;
- (void)coverSheetSlidingViewController:(id)a3 transitionTickedWithProgress:(double)a4 velocity:(double)a5 isPresenting:(BOOL)a6 coverSheetFrame:(CGRect)a7 gestureActive:(BOOL)a8 forPresentationValue:(BOOL)a9;
- (void)coverSheetSlidingViewController:(id)a3 willChangePresentationState:(int64_t)a4 forUserGesture:(BOOL)a5 withVelocity:(double)a6 animated:(BOOL)a7;
- (void)coverSheetSlidingViewControllerCleanupDismissalTransition:(id)a3;
- (void)coverSheetSlidingViewControllerCleanupInterstitialTransition:(id)a3;
- (void)coverSheetSlidingViewControllerCleanupPresentationTransition:(id)a3;
- (void)coverSheetSlidingViewControllerCleanupRubberBandedPresentationTransition:(id)a3;
- (void)coverSheetSlidingViewControllerDidEndDismissGestureOverInterstitial:(id)a3;
- (void)coverSheetSlidingViewControllerDidEndTransition:(id)a3 toPresented:(BOOL)a4;
- (void)coverSheetSlidingViewControllerDidPassRubberBandThreshold:(id)a3;
- (void)coverSheetSlidingViewControllerPrepareForRubberBandedPresentationTransition:(id)a3;
- (void)coverSheetSlidingViewControllerReachabilityAnimationDidEnd:(id)a3;
- (void)coverSheetSlidingViewControllerReachabilityAnimationWillBegin:(id)a3;
- (void)coverSheetSlidingViewControllerUserPresentGestureBegan:(id)a3;
- (void)coverSheetViewController:(id)a3 didChangeActiveBehavior:(id)a4;
- (void)coverSheetViewController:(id)a3 didObscureWallpaper:(BOOL)a4;
- (void)coverSheetViewController:(id)a3 didOccludeWallpaper:(BOOL)a4;
- (void)coverSheetViewControllerActivityItemsMayHaveChanged:(id)a3;
- (void)coverSheetViewControllerDidAddNewSceneHostEnvironment:(id)a3;
- (void)coverSheetViewControllerDidChangeUserPresence:(BOOL)a3;
- (void)coverSheetViewControllerDidUpdateAudioCategoriesDisablingVolumeHUD:(id)a3;
- (void)coverSheetViewControllerExternalLockProviderStateDidChange:(id)a3;
- (void)hostableEntityPresenter:(id)a3 didBeginHosting:(id)a4;
- (void)hostableEntityPresenter:(id)a3 didEndHosting:(id)a4;
- (void)loadViewsIfNeeded;
- (void)noteScreenDidTurnOff;
- (void)pearlMatchingStateProviderStateChangedForMatchFailure:(id)a3;
- (void)reenableCoverSheetScalingForPositioning;
- (void)sceneHandle:(id)a3 didCreateScene:(id)a4;
- (void)sceneHandle:(id)a3 didDestroyScene:(id)a4;
- (void)secureAppOfTypeDidBegin:(unint64_t)a3;
- (void)secureAppOfTypeDidEnd:(unint64_t)a3;
- (void)setActiveInterfaceOrientationLocked:(BOOL)a3;
- (void)setCoverSheetTranslationToPresented:(BOOL)a3 forcingTransition:(BOOL)a4 ignoringPreflightRequirements:(BOOL)a5 suppressingIconFly:(BOOL)a6 animated:(BOOL)a7;
- (void)setCoverSheetWindow:(id)a3;
- (void)setFloatingDockBehaviorAssertion:(id)a3;
- (void)setHasBeenDismissedSinceKeybagLock:(BOOL)a3;
- (void)setIconAnimatorCompletionBlock:(id)a3;
- (void)setIconAnimatorCompletionGroup:(id)a3;
- (void)setLockScreenEnvironment:(id)a3;
- (void)setPearlMatchingStateProvider:(id)a3;
- (void)setSecureAppEnvironmentViewController:(id)a3;
- (void)setSecureAppSlidingViewController:(id)a3;
- (void)setSecureAppViewController:(id)a3;
- (void)setSecureAppWindow:(id)a3;
- (void)setTransitionType:(unint64_t)a3;
- (void)setWallpaperFloatingLayerHidden:(BOOL)a3;
- (void)setWantsHomeGestureOwnership:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)updateBecauseSecureAppChanged;
- (void)updateInterfaceOrientationToMatchOrientation:(int64_t)a3;
- (void)updateVisibilityForGrabberVisible:(BOOL)a3;
- (void)willUIUnlockWithPendingUnlockRequest:(BOOL)a3;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
@end

@implementation SBCoverSheetPresentationManager

- (BOOL)isAnyGestureActivelyRecognized
{
  if ([(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController isAnyGestureActivelyRecognized])
  {
    return 1;
  }

  secureAppSlidingViewController = self->_secureAppSlidingViewController;

  return [(SBCoverSheetSlidingViewController *)secureAppSlidingViewController isAnyGestureActivelyRecognized];
}

+ (SBCoverSheetPresentationManager)sharedInstance
{
  if (sharedInstance_onceToken_24 != -1)
  {
    +[SBCoverSheetPresentationManager sharedInstance];
  }

  v3 = __sharedInstance_1;

  return v3;
}

- (BOOL)isVisible
{
  if (([(SBUILockStateProvider *)self->_uiLockStateProvider isUILocked]& 1) != 0)
  {
    return 1;
  }

  v4 = [(SBCoverSheetPresentationManager *)self coverSheetSlidingViewControllerIfLoaded];
  v3 = [v4 _appearState] != 0;

  return v3;
}

- (void)_tellDashBoardOurAppearanceAndBehaviorChanged
{
  [(SBCoverSheetPresentationManager *)self _tellDashBoardOurAppearanceChanged];

  [(SBCoverSheetPresentationManager *)self _tellDashBoardOurBehaviorChanged];
}

- (void)_tellDashBoardOurAppearanceChanged
{
  v3 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  [v3 externalAppearanceProviderBehaviorChanged:self];
}

- (id)coverSheetViewController
{
  v2 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment rootViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_tellDashBoardOurBehaviorChanged
{
  v3 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  [v3 externalBehaviorProviderBehaviorChanged:self];
}

- (BOOL)isCoverSheetHostingAnApp
{
  v3 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment applicationHoster];
  v4 = [v3 isHostingAnApp];

  if (v4)
  {
LABEL_7:
    LOBYTE(secureAppViewController) = 1;
    return secureAppViewController;
  }

  secureAppViewController = self->_secureAppViewController;
  if (secureAppViewController)
  {
    if (([(BSInvalidatable *)secureAppViewController isHostingAnApp]& 1) == 0)
    {
      v6 = SBLogCoverSheet();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Is coversheet hosting an app ? Neither application hoster nor secure app view controller is hosting an app but we have a secure app view controller. Returning YES", v8, 2u);
      }
    }

    goto LABEL_7;
  }

  return secureAppViewController;
}

- (SBDeviceApplicationSceneHandle)coverSheetHostedAppSceneHandle
{
  v3 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment applicationHoster];
  v4 = [v3 isHostingAnApp];
  secureAppViewController = v3;
  if (v4)
  {
    goto LABEL_4;
  }

  if ([(BSInvalidatable *)self->_secureAppViewController isHostingAnApp])
  {
    secureAppViewController = self->_secureAppViewController;
LABEL_4:
    v6 = [(BSInvalidatable *)secureAppViewController hostedAppSceneHandle];
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (SBWindow)coverSheetWindow
{
  coverSheetWindow = self->_coverSheetWindow;
  if (!coverSheetWindow)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v5 = [(SBWindow *)[SBCoverSheetWindow alloc] initWithWindowScene:WeakRetained role:@"SBTraitsParticipantRoleCoverSheet" debugName:@"CoverSheet"];
    v6 = [MEMORY[0x277D75348] clearColor];
    [(SBCoverSheetWindow *)v5 setBackgroundColor:v6];

    [(SBCoverSheetWindow *)v5 setWindowLevel:*MEMORY[0x277D76EE8]];
    v7 = [WeakRetained statusBarManager];
    v8 = [v7 layoutManager];
    [v8 setOrientationWindow:v5 forStatusBarLayoutLayer:1];

    v9 = +[SBSecureAppManager sharedInstance];
    v10 = [(UIWindow *)v5 _sbWindowScene];
    v11 = [v10 layoutStateTransitionCoordinator];
    [v9 setSecureAppTransitionCoordinator:v11];

    [(SBCoverSheetPresentationManager *)self setCoverSheetWindow:v5];
    coverSheetWindow = self->_coverSheetWindow;
  }

  return coverSheetWindow;
}

- (SBCoverSheetSlidingViewController)coverSheetSlidingViewController
{
  coverSheetSlidingViewController = self->_coverSheetSlidingViewController;
  if (coverSheetSlidingViewController)
  {
  }

  else
  {
    v7[1] = v2;
    v8 = v3;
    [(SBCoverSheetPresentationManager *)a2 coverSheetSlidingViewController:&self->_coverSheetSlidingViewController];
    coverSheetSlidingViewController = v7[0];
  }

  return coverSheetSlidingViewController;
}

- (BOOL)_isEffectivelyLocked
{
  v3 = [SBApp authenticationController];
  if ([v3 isAuthenticated])
  {
    v4 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    v5 = [v4 externalLockProvidersRequireUnlock];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (SBPearlMatchingStateProvider)pearlMatchingStateProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_pearlMatchingStateProvider);

  return WeakRetained;
}

- (void)_prepareForDismissalTransition
{
  v3 = SBLogCoverSheet();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "_prepareForDismissalTransition", v4, 2u);
  }

  if ([(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController dismissalSlidingMode]== 2)
  {
    [(SBCoverSheetPresentationManager *)self _cleanupARubberBandTransitionForSlidingViewController:self->_coverSheetSlidingViewController];
  }

  if ([(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController dismissalSlidingMode]== 3)
  {
    [(SBCoverSheetPresentationManager *)self _cleanupInterstitialTransitionForSlidingViewController:self->_coverSheetSlidingViewController];
  }

  if (CSFeatureEnabled())
  {
    [(SBCoverSheetPresentationManager *)self _prepareForATransition];
  }

  else
  {
    [(SBCoverSheetPresentationManager *)self _prepareForCoverSheetRemovalWithVelocity:0.0];
  }
}

- (void)_prepareForATransition
{
  [(SBCoverSheetPresentationManager *)self _setOrientationUpdatesDeferred:1];
  v10 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment idleTimerController];
  if (objc_opt_respondsToSelector())
  {
    [v10 addIdleTimerDisabledAssertionReason:@"SBCoverSheetDisableIdleTimerForGestureInProgress"];
  }

  [(SBCoverSheetPresentationManager *)self _setCoverSheetWindowVisible:1 forReason:@"SBCoverSheetWindowVisibleReasonTransition"];
  v3 = +[SBAlertItemsController sharedInstance];
  [v3 setForceAlertsToPend:1 forReason:@"SBCoverSheetForceAlertItemsToPendReason"];

  transitionOverrideOptions = self->_transitionOverrideOptions;
  if ((transitionOverrideOptions & 2) != 0)
  {
    v5 = 5;
  }

  else if (transitionOverrideOptions)
  {
    v5 = 9;
  }

  else
  {
    v5 = SBCoverSheetTransitionTypeForCurrentState();
  }

  [(SBCoverSheetPresentationManager *)self setTransitionType:v5];
  [(SBCoverSheetPresentationManager *)self _acquireAsynchronousRenderingAssertion];
  v6 = [(SBCoverSheetPresentationManager *)self requireWallpaperAssertion];
  [v6 invalidate];

  v7 = +[SBWallpaperController sharedInstance];
  v8 = [v7 requireWallpaperWithReason:@"CoverSheet"];
  [(SBCoverSheetPresentationManager *)self setRequireWallpaperAssertion:v8];

  v9 = [(SBCoverSheetPresentationManager *)self sceneManager];
  [v9 updateForegroundScenesForCoverSheetAnimationActive:1];
}

- (BOOL)isInSecureApp
{
  v2 = [(SBCoverSheetPresentationManager *)self secureAppSlidingViewControllerIfLoaded];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 _appearState] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_acquireAsynchronousRenderingAssertion
{
  if (!self->_asynchronousRenderingAssertion)
  {
    v4 = [[SBAsynchronousRenderingAssertion alloc] initWithReason:@"SBCoverSheetAsynchronousRenderingReason"];
    asynchronousRenderingAssertion = self->_asynchronousRenderingAssertion;
    self->_asynchronousRenderingAssertion = v4;
  }
}

- (SBCoverSheetSceneManager)sceneManager
{
  sceneManager = self->_sceneManager;
  if (!sceneManager)
  {
    v4 = [SBCoverSheetSceneManager alloc];
    v5 = [(SBCoverSheetPresentationManager *)self coverSheetWindow];
    v6 = [(SBCoverSheetSceneManager *)v4 initWithCoverSheetWindow:v5];
    v7 = self->_sceneManager;
    self->_sceneManager = v6;

    sceneManager = self->_sceneManager;
  }

  return sceneManager;
}

- (int64_t)idleTimerDuration
{
  if (![(SBCoverSheetPresentationManager *)self hasBeenDismissedSinceKeybagLock])
  {
    return 0;
  }

  v2 = [SBApp authenticationController];
  if ([v2 isAuthenticatedCached])
  {
    v3 = 16;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (unint64_t)restrictedCapabilities
{
  v3 = 8 * (self->_secureAppWindow != 0);
  if (([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture]& 1) == 0)
  {
    v4 = [(SBCoverSheetSecureAppEnvironmentViewController *)self->_secureAppEnvironmentViewController zStackParticipant];
    v5 = [v4 ownsHomeGesture];

    if ((v5 & 1) == 0)
    {
      v3 |= 0x1000uLL;
    }
  }

  if ([(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController _appearState]== 2)
  {
    v6 = v3;
  }

  else
  {
    v6 = v3 | 0x40;
  }

  if ([(SBCoverSheetPresentationManager *)self isAnyGestureActivelyRecognized])
  {
    return v6 | 0x100000;
  }

  else
  {
    return v6;
  }
}

- (NSSet)components
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController dismissalSlidingMode];
  v5 = [MEMORY[0x277D02BC8] homeAffordance];
  v6 = [v5 priority:20];
  v7 = [(SBCoverSheetPresentationManager *)self appearanceIdentifier];
  v8 = [v6 identifier:v7];

  if (v4 == 2 || [(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController isTransitioning])
  {
    if (self->_shouldDisplayFakeStatusBar)
    {
      v9 = objc_opt_new();
      v10 = [v9 priority:20];
      v11 = [v10 fakeStatusBar:1];
      v12 = [v11 transitionModifiers:2];
      [v3 addObject:v12];
    }

    [v8 setValue:MEMORY[0x277CBEC38]];
  }

  if ([(SBCoverSheetPresentationManager *)self hasBeenDismissedSinceKeybagLock])
  {
    [v8 setValue:MEMORY[0x277CBEC38]];
  }

  [v3 addObject:v8];
  v13 = [MEMORY[0x277D02BC8] homeAffordance];
  v14 = [(SBCoverSheetPresentationManager *)self appearanceIdentifier];
  v15 = [v13 identifier:v14];

  v16 = [(SBCoverSheetPresentationManager *)self coverSheetSlidingViewController];
  v17 = [v16 systemGesturesDelegate];
  v18 = [v17 syntheticAppearState];

  v19 = [(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture]^ 1;
  if (v18 == 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  [v15 setHidden:v20];
  if (v20 == 1)
  {
    [v15 setPriority:20];
  }

  [v3 addObject:v15];
  if ([(SBCoverSheetPresentationManager *)self hasBeenDismissedSinceKeybagLock])
  {
    v21 = [MEMORY[0x277D02BC8] footerCallToActionLabel];
    v22 = [v21 hidden:1];
    [v3 addObject:v22];
  }

  v23 = [MEMORY[0x277D02BC8] statusBarGradient];
  v24 = [(SBCoverSheetPresentationManager *)self appearanceIdentifier];
  v25 = [v23 identifier:v24];

  v26 = +[SBWallpaperController sharedInstance];
  v27 = [v26 _wallpaperViewForVariant:0];

  if ([v27 hasVideo])
  {
    v28 = [v27 wallpaperName];
    v29 = [v28 length];

    [v25 setHidden:v29 != 0];
    if (v29)
    {
      [v3 addObject:v25];
    }
  }

  else
  {
    [v25 setHidden:0];
  }

  if (self->_wallpaperObscured && (CSFeatureEnabled() & 1) != 0 || [(SBCoverSheetPresentationManager *)self wallpaperFloatingLayerHidden])
  {
    v30 = objc_opt_new();
    v31 = [v30 identifier:@"SBCoverSheetPresentationManager"];
    v32 = [v31 priority:20];
    v33 = [v32 shouldRenderInline:1];

    [v3 addObject:v33];
LABEL_23:

    goto LABEL_28;
  }

  [(SBCoverSheetPresentationManager *)self wallpaperFloatingLayerAlpha];
  if (v34 < 1.0 && CSFeatureEnabled())
  {
    v35 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    v36 = [v35 activeAppearance];
    v33 = [v36 componentForType:23 property:4];

    if (v33)
    {
      v37 = [v33 value];
      v38 = [v37 BOOLValue];

      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v44 = objc_opt_new();
    v41 = [v44 identifier:@"SBCoverSheetPresentationManager"];
    v42 = [v41 priority:20];
    v43 = [v42 shouldRenderInline:v39];

    [(SBCoverSheetPresentationManager *)self wallpaperFloatingLayerAlpha];
    [v43 setAlpha:?];
    [v3 addObject:v43];

    goto LABEL_23;
  }

LABEL_28:

  return v3;
}

- (BOOL)isPresented
{
  v2 = [(SBCoverSheetPresentationManager *)self coverSheetSlidingViewControllerIfLoaded];
  v3 = [v2 _appearState];

  return (v3 - 1) < 2;
}

- (CSCoverSheetTransitionSettings)transitionSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionSettings);

  return WeakRetained;
}

- (void)reenableCoverSheetScalingForPositioning
{
  if ([(SBCoverSheetPresentationManager *)self isInSecureApp])
  {
    v3 = [(SBCoverSheetPresentationManager *)self secureAppSlidingViewController];
    [v3 resumePositionBasedScaling];
  }
}

- (void)_invalidateSystemApertureCoverSheetAssertion
{
  [(BSInvalidatable *)self->_systemApertureCoverSheetAssertion invalidate];
  systemApertureCoverSheetAssertion = self->_systemApertureCoverSheetAssertion;
  self->_systemApertureCoverSheetAssertion = 0;
}

- (void)_relinquishHomeGestureOwnership
{
  v2 = [(SBCoverSheetPresentationManager *)self zStackParticipant];
  [v2 setNeedsUpdatePreferencesWithReason:@"relinquishing home gesture ownership"];
}

- (void)_updateWallpaperOverlay
{
  if (CSFeatureEnabled())
  {
    v3 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    v4 = ([v3 isPasscodeLockVisible] & 1) != 0 || self->_isPresentingInterstitial;

    v6 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    v7 = [v6 externalLockProvidersRequireUnlock];

    v5 = v4 | v7;
  }

  else
  {
    v5 = 0;
  }

  if (self->_wallpaperFloatingLayerHidden || v5 & 1 | ![(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController isTransitioning])
  {

    [(SBCoverSheetPresentationManager *)self _removeWallpaperOverlay];
  }

  else
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9 & 0xFFFFFFFFFFFFFFFBLL) == 1 && (_os_feature_enabled_impl())
    {
      v10 = [MEMORY[0x277D759A0] mainScreen];
      [v10 _referenceBounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
    }

    else
    {
      v10 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
      v19 = [v10 view];
      [v19 bounds];
      v12 = v20;
      v14 = v21;
      v16 = v22;
      v18 = v23;
    }

    [(SBCoverSheetPresentationManager *)self _createWallpaperOverlayIfNeededWithCoverSheetFrame:v12, v14, v16, v18];
  }
}

- (SBCoverSheetPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_cleanupDismissalTransition
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = BSInterfaceOrientationDescription();
  if (a1 == a2)
  {
    v7 = &stru_283094718;
  }

  else
  {
    v7 = @"which is unexpected and doesn't match the active interface orientation! ";
  }

  v8 = [SBApp orientationAggregator];
  v9 = 138543874;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "Unlocking to %{public}@, %{public}@%{public}@", &v9, 0x20u);
}

- (void)_cleanupATransition
{
  [(SBCoverSheetPresentationManager *)self _setCoverSheetWindowVisible:0 forReason:@"SBCoverSheetWindowVisibleReasonTransition"];
  [(SBCoverSheetPresentationManager *)self _setOrientationUpdatesDeferred:0];
  v3 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment idleTimerController];
  if (objc_opt_respondsToSelector())
  {
    [v3 removeIdleTimerDisabledAssertionReason:@"SBCoverSheetDisableIdleTimerForGestureInProgress"];
  }

  [(SBCoverSheetPresentationManager *)self _relinquishAsynchronousRenderingAssertion];
  v4 = [(SBCoverSheetPresentationManager *)self requireWallpaperAssertion];
  [v4 invalidate];

  [(SBCoverSheetPresentationManager *)self setRequireWallpaperAssertion:0];
  v5 = [(SBCoverSheetPresentationManager *)self sceneManager];
  [v5 updateForegroundScenesForCoverSheetAnimationActive:0];

  [(SBCoverSheetPresentationManager *)self _updateWallpaperOverlay];
  v6 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_COVERSHEET_TRANSITION", " enableTelemetry=YES  isAnimation=YES ", v8, 2u);
  }

  kdebug_trace();
  v7 = [(SBCoverSheetPresentationManager *)self ppt_transitionEndsCallback];
  if (v7)
  {
    [(SBCoverSheetPresentationManager *)self setPpt_transitionEndsCallback:0];
    v7[2](v7);
  }
}

- (void)_cleanupIconAnimator
{
  iconAnimator = self->_iconAnimator;
  if (iconAnimator)
  {
    [(SBIconAnimator *)iconAnimator cleanup];
    v4 = self->_iconAnimator;
    self->_iconAnimator = 0;
  }
}

- (void)_relinquishAsynchronousRenderingAssertion
{
  [(BSSimpleAssertion *)self->_asynchronousRenderingAssertion invalidate];
  asynchronousRenderingAssertion = self->_asynchronousRenderingAssertion;
  self->_asynchronousRenderingAssertion = 0;
}

- (void)_removeWallpaperOverlay
{
  v3 = +[SBWallpaperController sharedInstance];
  [v3 removeWallpaperOverlay:self->_wallpaperFloatingLayerViewContainerView];

  [(BSInvalidatable *)self->_wallpaperFloatingLayerView invalidate];
  wallpaperFloatingLayerView = self->_wallpaperFloatingLayerView;
  self->_wallpaperFloatingLayerView = 0;

  wallpaperFloatingLayerViewContainerView = self->_wallpaperFloatingLayerViewContainerView;
  self->_wallpaperFloatingLayerViewContainerView = 0;
}

- (SBWindow)secureAppWindow
{
  if (!self->_secureAppWindow)
  {
    v3 = +[SBSecureAppManager sharedInstance];
    v4 = [v3 hasSecureApp];

    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_windowScene);
      v6 = [(SBWindow *)[SBSecureAppWindow alloc] initWithWindowScene:WeakRetained role:@"SBTraitsParticipantRoleSecureApp" debugName:@"SecureApp"];
      v7 = [MEMORY[0x277D75348] blackColor];
      if (CSFeatureEnabled())
      {
        v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];

        v7 = v8;
      }

      [(SBSecureAppWindow *)v6 setBackgroundColor:v7];
      [(SBSecureAppWindow *)v6 setWindowLevel:*MEMORY[0x277D76EE8] + -5.0];
      [(SBCoverSheetPresentationManager *)self setSecureAppWindow:v6];
    }
  }

  secureAppWindow = self->_secureAppWindow;

  return secureAppWindow;
}

- (void)_notifyDelegateDidDismiss
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __60__SBCoverSheetPresentationManager__notifyDelegateDidDismiss__block_invoke;
  v2[3] = &unk_2783A8C18;
  v2[4] = self;
  [(SBCoverSheetPresentationManager *)self _enqueueBlock:v2 withName:@"didDismiss"];
}

void __60__SBCoverSheetPresentationManager__notifyDelegateDidDismiss__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 lockScreenViewControllerDidDismiss];
}

- (void)completeOngoingPresentationIfNeeded
{
  v3 = [(SBCoverSheetPresentationManager *)self coverSheetSlidingViewControllerIfLoaded];
  v4 = [v3 _appearState];

  if (v4 == 1)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __70__SBCoverSheetPresentationManager_completeOngoingPresentationIfNeeded__block_invoke;
    v5[3] = &unk_2783A8C18;
    v5[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v5];
  }
}

- (id)scenesForBacklightSession
{
  v2 = [(SBCoverSheetPresentationManager *)self secureAppViewController];
  v3 = [v2 applicationSceneHandle];
  v4 = [v3 sceneIfExists];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __49__SBCoverSheetPresentationManager_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = [SBApp windowSceneManager];
  v4 = [v0 embeddedDisplayWindowScene];

  v1 = [[SBCoverSheetPresentationManager alloc] initWithWindowScene:v4];
  v2 = __sharedInstance_1;
  __sharedInstance_1 = v1;

  v3 = +[SBWallpaperController sharedInstance];
  [v3 setOrientationProvider:__sharedInstance_1 forSource:3];

  kdebug_trace();
}

- (SBCoverSheetPresentationManager)initWithWindowScene:(id)a3
{
  v5 = a3;
  v47.receiver = self;
  v47.super_class = SBCoverSheetPresentationManager;
  v6 = [(SBCoverSheetPresentationManager *)&v47 init];
  if (v6)
  {
    if (!v5)
    {
      [(SBCoverSheetPresentationManager *)a2 initWithWindowScene:v6];
    }

    objc_storeWeak(&v6->_windowScene, v5);
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    coverSheetWindowVisibleReasons = v6->_coverSheetWindowVisibleReasons;
    v6->_coverSheetWindowVisibleReasons = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    secureAppWindowVisibleReasons = v6->_secureAppWindowVisibleReasons;
    v6->_secureAppWindowVisibleReasons = v9;

    v11 = objc_alloc_init(SBAtomicObjectQueue);
    unlockProgressQueue = v6->_unlockProgressQueue;
    v6->_unlockProgressQueue = v11;

    v13 = objc_alloc_init(SBAtomicObjectQueue);
    transitionProgressQueue = v6->_transitionProgressQueue;
    v6->_transitionProgressQueue = v13;

    v15 = objc_alloc(MEMORY[0x277CF0C28]);
    v16 = [v15 initWithName:@"SBCoverSheetLockUnlockQueue" onQueue:MEMORY[0x277D85CD0]];
    lockUnlockQueue = v6->_lockUnlockQueue;
    v6->_lockUnlockQueue = v16;

    v18 = [MEMORY[0x277D02C20] rootSettings];
    lockScreenSettings = v6->_lockScreenSettings;
    v6->_lockScreenSettings = v18;

    [(CSLockScreenSettings *)v6->_lockScreenSettings addKeyObserver:v6];
    v20 = [(CSLockScreenSettings *)v6->_lockScreenSettings dashBoardScrollModifierSettings];
    [v20 addKeyObserver:v6];

    v21 = [(SBCoverSheetPresentationManager *)v6 _newRubberBandFeedbackGeneratorForSettings:v6->_lockScreenSettings];
    rubberBandFeedbackGenerator = v6->_rubberBandFeedbackGenerator;
    v6->_rubberBandFeedbackGenerator = v21;

    v23 = [(CSLockScreenSettings *)v6->_lockScreenSettings coverSheetTransitionsSettings];
    v24 = [v23 flyInSettings];
    flyInSettings = v6->_flyInSettings;
    v6->_flyInSettings = v24;

    [(SBCoverSheetPresentationManager *)v6 _updateIconsFlyInWithSettings:v6->_flyInSettings];
    v26 = [(CSLockScreenSettings *)v6->_lockScreenSettings coverSheetTransitionsSettings];
    v27 = [v26 flyInSettings];
    [v27 addKeyObserver:v6];

    v28 = [MEMORY[0x277CCAB98] defaultCenter];
    [v28 addObserver:v6 selector:sel__authenticationChanged_ name:*MEMORY[0x277D66078] object:0];
    [v28 addObserver:v6 selector:sel__restartStartupTransitionBegan_ name:@"SBRestartManagerDidBeginStartupTransitionNotification" object:0];
    v29 = +[SBSecureAppManager sharedInstance];
    [v29 addObserver:v6];

    v30 = +[SBAssistantController sharedInstance];
    [v30 addObserver:v6];

    v31 = [v5 zStackResolver];
    v32 = [v31 acquireParticipantWithIdentifier:8 delegate:v6];
    zStackParticipant = v6->_zStackParticipant;
    v6->_zStackParticipant = v32;

    objc_initWeak(&location, v6);
    v34 = MEMORY[0x277CF0BD0];
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = __55__SBCoverSheetPresentationManager_initWithWindowScene___block_invoke;
    v44 = &unk_2783AD688;
    objc_copyWeak(&v45, &location);
    v37 = [v34 assertionWithIdentifier:v36 stateDidChangeHandler:&v41];
    preserveSecureAppAssertions = v6->_preserveSecureAppAssertions;
    v6->_preserveSecureAppAssertions = v37;

    v39 = [SBApp backlightEnvironmentSessionProvider];
    [v39 registerBacklightEnvironmentSceneProvider:v6];

    if (CSFeatureEnabled())
    {
      v6->_wallpaperFloatingLayerAlpha = 1.0;
    }

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __55__SBCoverSheetPresentationManager_initWithWindowScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  BSDispatchMain();

  objc_destroyWeak(&v5);
}

void __55__SBCoverSheetPresentationManager_initWithWindowScene___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateSecureAppViewControllerVisibilityForAssertionsActive:{objc_msgSend(*(a1 + 32), "isActive")}];
}

- (void)_setCoverSheetPresented:(BOOL)a3 forcePresented:(BOOL)a4 animated:(BOOL)a5 dismissModalPresentation:(BOOL)a6 options:(unint64_t)a7 withCompletion:(id)a8
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v14 = a8;
  v15 = [(SBCoverSheetPresentationManager *)self isInSecureApp];
  v16 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  v17 = [v16 isShowingModalView];

  if ([(SBUILockStateProvider *)self->_uiLockStateProvider isUILocked]!= v12 || (v21 = [(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController isAnyGestureActivelyRecognized], v12 && v11) || v21 || v15)
  {
    v18 = [(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController activeGestureRecognizer];
    if (v10 && !v12)
    {
      v19 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_LOCKSCREEN_UNLOCK_ANIMATION_START", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
      }

      kdebug_trace();
      v20 = [MEMORY[0x277CCAB98] defaultCenter];
      [v20 postNotificationName:@"SBCoverSheetWillAnimateDeactivation" object:self];
    }

    [v18 setEnabled:0];
    [v18 setEnabled:1];
    self->_transitionOverrideOptions = a7;
    [(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController setPresented:v12 forUserGesture:(a7 >> 2) & 1 animated:v10 withCompletion:v14];
    self->_transitionOverrideOptions = 0;
  }

  else if ((v12 || v11) && (v9 & v17) != 0)
  {
    v22 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    [v22 dismissModalPresentationAnimated:1 completion:v14];
  }

  else if (v14)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __131__SBCoverSheetPresentationManager__setCoverSheetPresented_forcePresented_animated_dismissModalPresentation_options_withCompletion___block_invoke;
    block[3] = &unk_2783A9348;
    v24 = v14;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)setCoverSheetTranslationToPresented:(BOOL)a3 forcingTransition:(BOOL)a4 ignoringPreflightRequirements:(BOOL)a5 suppressingIconFly:(BOOL)a6 animated:(BOOL)a7
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  self->_iconsIgnoreNextFlyRequest = a6;
  v11 = [(SBCoverSheetPresentationManager *)self coverSheetSlidingViewController];
  [v11 setPresented:v9 forcingTransition:v8 ignoringPreflightRequirements:v7 forUserGesture:0 animated:1 withCompletion:0];

  self->_iconsIgnoreNextFlyRequest = 0;
}

void __70__SBCoverSheetPresentationManager_completeOngoingPresentationIfNeeded__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) coverSheetSlidingViewController];
  [v1 setPresented:1 forUserGesture:0 animated:0 withCompletion:0];
}

- (void)updateBecauseSecureAppChanged
{
  [(SBCoverSheetPresentationManager *)self _clearSecureAppViewControllersIncludingWindow:0 force:1];

  [(SBCoverSheetPresentationManager *)self _prepareSecureAppWindowForDisplay];
}

- (void)updateInterfaceOrientationToMatchOrientation:(int64_t)a3
{
  v5 = [(SBCoverSheetPresentationManager *)self coverSheetWindow];
  v6 = [v5 interfaceOrientation];

  if (v6 != a3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __80__SBCoverSheetPresentationManager_updateInterfaceOrientationToMatchOrientation___block_invoke;
    v7[3] = &unk_2783A8BC8;
    v7[4] = self;
    v7[5] = a3;
    [MEMORY[0x277D75D18] performWithoutAnimation:v7];
  }
}

void __80__SBCoverSheetPresentationManager_updateInterfaceOrientationToMatchOrientation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coverSheetWindow];
  [v2 _legacySetRotatableViewOrientation:*(a1 + 40) duration:0.0];

  v3 = [*(a1 + 32) zStackParticipant];
  [v3 setNeedsUpdatePreferencesWithReason:@"updateInterfaceOrientationToMatchOrientation"];
}

- (BOOL)isVisibleAndNotDisappearing
{
  v3 = [(SBCoverSheetPresentationManager *)self coverSheetSlidingViewControllerIfLoaded];
  v4 = [v3 _appearState];

  if (v4 == 3)
  {
    return 0;
  }

  result = [(SBUILockStateProvider *)self->_uiLockStateProvider isUILocked];
  if (v4)
  {
    return 1;
  }

  return result;
}

- (BOOL)isTransitioning
{
  v2 = [(SBCoverSheetPresentationManager *)self coverSheetSlidingViewControllerIfLoaded];
  v3 = [v2 _appearState];

  return (v3 & 0xFFFFFFFD) == 1;
}

- (BOOL)isDismissGestureActive
{
  if ([(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController isDismissGestureActive])
  {
    return 1;
  }

  secureAppSlidingViewController = self->_secureAppSlidingViewController;

  return [(SBCoverSheetSlidingViewController *)secureAppSlidingViewController isDismissGestureActive];
}

- (void)willUIUnlockWithPendingUnlockRequest:(BOOL)a3
{
  v3 = a3;
  if (![(SBCoverSheetPresentationManager *)self _isEffectivelyLocked])
  {
    v5 = [(SBCoverSheetPresentationManager *)self secureAppViewController];
    v6 = [v5 hostedAppSceneHandle];

    if (v6)
    {

      [(SBCoverSheetPresentationManager *)self _transitionFromSecureAppToFullAppAndDismiss:v3 ^ 1 preservingBanners:v3];
    }
  }
}

- (void)loadViewsIfNeeded
{
  v2 = [(SBCoverSheetPresentationManager *)self coverSheetSlidingViewController];
  [v2 loadViewIfNeeded];
}

- (void)addDismissalObserver:(id)a3
{
  v4 = a3;
  dismissalObservers = self->_dismissalObservers;
  v8 = v4;
  if (!dismissalObservers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_dismissalObservers;
    self->_dismissalObservers = v6;

    v4 = v8;
    dismissalObservers = self->_dismissalObservers;
  }

  [(NSHashTable *)dismissalObservers addObject:v4];
}

- (void)setCoverSheetWindow:(id)a3
{
  v5 = a3;
  if (self->_coverSheetWindow != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_coverSheetWindow, a3);
    [(SBCoverSheetPresentationManager *)self _prepareCoverSheetWindowForDisplay];
    [(SBCoverSheetPresentationManager *)self _updateVisibilityOfWindow:self->_coverSheetWindow forReasons:self->_coverSheetWindowVisibleReasons];
    v6 = [(SBCoverSheetPresentationManager *)self sceneManager];
    [v6 setCoverSheetWindow:self->_coverSheetWindow];

    v5 = v7;
  }
}

- (void)setLockScreenEnvironment:(id)a3
{
  v5 = a3;
  if (self->_lockScreenEnvironment != v5)
  {
    v13 = v5;
    objc_storeStrong(&self->_lockScreenEnvironment, a3);
    v6 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment rootViewController];
    if (objc_opt_respondsToSelector())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [(SBCoverSheetSlidingViewController *)[SBCoverSheetPrimarySlidingViewController alloc] initWithContentViewController:v7 canBePulledDown:1 canBePulledUp:1 dismissalPreemptingGestureRecognizer:0];
    [(SBCoverSheetSlidingViewController *)v8 setDelegate:self];
    [(SBCoverSheetPrimarySlidingViewController *)v8 setGrabberDelegate:self];
    v9 = [SBApp proximitySensorManager];
    [(SBCoverSheetSlidingViewController *)v8 setProximitySensorManager:v9];

    [(SBCoverSheetPresentationManager *)self setCoverSheetSlidingViewController:v8];
    v10 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    [v10 registerExternalAppearanceProvider:self];

    v11 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    [v11 registerExternalBehaviorProvider:self];

    v12 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    [v12 addCoverSheetObserver:self];

    v5 = v13;
  }
}

- (id)traitsParticipantForSceneHandle:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([(SBCoverSheetSecureAppEnvironmentViewController *)self->_secureAppEnvironmentViewController traitsParticipantForSceneHandle:v4], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment applicationHoster];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v6 traitsParticipantForSceneHandle:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)setTransitionType:(unint64_t)a3
{
  if (self->_transitionType != a3)
  {
    self->_transitionType = a3;
    v5 = CSCoverSheetTransitionSettingsForTransitionType(a3);
    [(SBCoverSheetPresentationManager *)self setTransitionSettings:v5];
    [(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController setTransitionSettings:v5];
  }
}

- (void)setPearlMatchingStateProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pearlMatchingStateProvider);
  if (WeakRetained != obj)
  {
    [WeakRetained setDelegate:0];
    objc_storeWeak(&self->_pearlMatchingStateProvider, obj);
    [obj setDelegate:self];
  }
}

- (void)setActiveInterfaceOrientationLocked:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return;
  }

  if (!v3)
  {
    [(SBDisableActiveInterfaceOrientationChangeAssertion *)self->_activeInterfaceOrientationChangeAssertion invalidate];
    activeInterfaceOrientationChangeAssertion = self->_activeInterfaceOrientationChangeAssertion;
    self->_activeInterfaceOrientationChangeAssertion = 0;
LABEL_9:

    return;
  }

  v7 = [SBApp activeInterfaceOrientation];
  if (v7 != [SBApp activeInterfaceOrientationWithoutConsideringTransientOverlays])
  {
    [SBApp noteInterfaceOrientationChanged:v7 logMessage:@"Cover Sheet presentation over transient overlay might cause orientation mismatch"];
  }

  if (!self->_activeInterfaceOrientationChangeAssertion)
  {
    v9 = [[SBDisableActiveInterfaceOrientationChangeAssertion alloc] initWithReason:@"SBCoverSheetLockActiveInterfaceOrientationReason" nudgeOrientationOnInvalidate:1];
    activeInterfaceOrientationChangeAssertion = self->_activeInterfaceOrientationChangeAssertion;
    self->_activeInterfaceOrientationChangeAssertion = v9;
    goto LABEL_9;
  }
}

- (void)setHasBeenDismissedSinceKeybagLock:(BOOL)a3
{
  v3 = a3;
  v29 = *MEMORY[0x277D85DE8];
  if (self->_hasBeenDismissedSinceKeybagLockAndAuthenticated != a3)
  {
    if (!a3 || ([SBApp authenticationController], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isAuthenticated"), v5, v6))
    {
      self->_hasBeenDismissedSinceKeybagLockAndAuthenticated = v3;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v7 = [(NSHashTable *)self->_dismissalObservers copy];
      v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v24;
        do
        {
          v11 = 0;
          do
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v23 + 1) + 8 * v11);
            if (objc_opt_respondsToSelector())
            {
              [v12 coverSheetPresentationManagerDidChangeDismissedSinceKeyBagLockAndAuthenticated:self];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v9);
      }
    }
  }

  if (self->_hasBeenDismissedSinceKeybagLock != v3)
  {
    self->_hasBeenDismissedSinceKeybagLock = v3;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = [(NSHashTable *)self->_dismissalObservers copy];
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v19 + 1) + 8 * v17);
          if (objc_opt_respondsToSelector())
          {
            [v18 coverSheetPresentationManagerDidChangeDismissedSinceKeyBagLock:self];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v15);
    }

    [(SBCoverSheetPresentationManager *)self _tellDashBoardOurAppearanceChanged];
    [(UIViewController *)self->_coverSheetSlidingViewController _setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (void)setIconAnimatorCompletionGroup:(id)a3
{
  v5 = a3;
  if (self->_iconAnimatorCompletionGroup != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_iconAnimatorCompletionGroup, a3);
    [(SBCoverSheetPresentationManager *)self setIconAnimatorCompletionBlock:0];
    v5 = v6;
  }
}

- (void)setIconAnimatorCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  iconAnimatorCompletionBlock = self->_iconAnimatorCompletionBlock;
  if (iconAnimatorCompletionBlock != v4)
  {
    if (iconAnimatorCompletionBlock)
    {
      v6 = SBLogCoverSheet();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = MEMORY[0x223D6F7F0](self->_iconAnimatorCompletionBlock);
        v12 = 134217984;
        v13 = v7;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Cancelling completion block %p for icon animation", &v12, 0xCu);
      }

      dispatch_block_cancel(self->_iconAnimatorCompletionBlock);
    }

    v8 = [v4 copy];
    v9 = self->_iconAnimatorCompletionBlock;
    self->_iconAnimatorCompletionBlock = v8;

    if (self->_iconAnimatorCompletionBlock)
    {
      v10 = SBLogCoverSheet();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = MEMORY[0x223D6F7F0](self->_iconAnimatorCompletionBlock);
        v12 = 134217984;
        v13 = v11;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Scheduling completion block %p for icon animation", &v12, 0xCu);
      }

      dispatch_group_notify(self->_iconAnimatorCompletionGroup, MEMORY[0x277D85CD0], self->_iconAnimatorCompletionBlock);
    }
  }
}

- (void)setFloatingDockBehaviorAssertion:(id)a3
{
  v5 = a3;
  floatingDockBehaviorAssertion = self->_floatingDockBehaviorAssertion;
  p_floatingDockBehaviorAssertion = &self->_floatingDockBehaviorAssertion;
  v6 = floatingDockBehaviorAssertion;
  if (floatingDockBehaviorAssertion != v5)
  {
    v9 = v5;
    [(SBFloatingDockBehaviorAssertion *)v6 invalidate];
    objc_storeStrong(p_floatingDockBehaviorAssertion, a3);
    v5 = v9;
  }
}

- (void)setSecureAppWindow:(id)a3
{
  v5 = a3;
  if (self->_secureAppWindow != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_secureAppWindow, a3);
    [(SBCoverSheetPresentationManager *)self _updateVisibilityOfWindow:self->_secureAppWindow forReasons:self->_secureAppWindowVisibleReasons];
    [(SBCoverSheetPresentationManager *)self _tellDashBoardOurBehaviorChanged];
    v5 = v6;
  }
}

- (SBCoverSheetSlidingViewController)secureAppSlidingViewController
{
  secureAppSlidingViewController = self->_secureAppSlidingViewController;
  if (!secureAppSlidingViewController)
  {
    [(SBCoverSheetPresentationManager *)self _prepareSecureAppViewController];
    secureAppSlidingViewController = self->_secureAppSlidingViewController;
  }

  return secureAppSlidingViewController;
}

- (void)setSecureAppSlidingViewController:(id)a3
{
  v5 = a3;
  secureAppSlidingViewController = self->_secureAppSlidingViewController;
  if (secureAppSlidingViewController != v5)
  {
    v7 = v5;
    [(SBCoverSheetSlidingViewController *)secureAppSlidingViewController bs_endAppearanceTransition:0];
    [(SBWindow *)self->_secureAppWindow setRootViewController:0];
    objc_storeStrong(&self->_secureAppSlidingViewController, a3);
    v5 = v7;
  }
}

- (void)_prepareSecureAppViewController
{
  v15 = +[SBSecureAppManager sharedInstance];
  v3 = [v15 newHostableEntityForCurrentSecureApp];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D02C18]);
    [(SBSecureAppViewController *)v4 setHostedEntity:v3];
    [(SBSecureAppViewController *)v4 setEntityPresenterDelegate:self];
    [(SBSecureAppViewController *)v4 setHostableEntityContentMode:2];
    v5 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    [(CSCoverSheetExternalViewControllerBase *)v4 setCoverSheetViewController:v5];
  }

  else
  {
    v5 = [v15 newApplicationSceneEntityForCurrentSecureApp];
    v4 = [(SBDashBoardHostedAppViewController *)[SBSecureAppViewController alloc] initWithApplicationSceneEntity:v5];
    [(SBDashBoardHostedAppViewController *)v4 setDelegate:self];
    [(SBDashBoardHostedAppViewController *)v4 setPlaceholderContentEnabled:0];
    if (__sb__runningInSpringBoard())
    {
      [(SBDashBoardHostedAppViewController *)v4 setInterfaceOrientationLocked:SBFEffectiveDeviceClass() != 2];
    }

    else
    {
      v6 = [MEMORY[0x277D75418] currentDevice];
      -[SBDashBoardHostedAppViewController setInterfaceOrientationLocked:](v4, "setInterfaceOrientationLocked:", [v6 userInterfaceIdiom] != 1);
    }
  }

  [(SBCoverSheetPresentationManager *)self setSecureAppViewController:v4];
  v7 = [[SBCoverSheetSecureAppEnvironmentViewController alloc] initWithSecureAppViewController:v4];
  [(SBCoverSheetPresentationManager *)self setSecureAppEnvironmentViewController:v7];
  [(SBCoverSheetSecureAppEnvironmentViewController *)self->_secureAppEnvironmentViewController setDelegate:self];
  v8 = SBHomeGestureEnabled();
  v9 = [SBCoverSheetSlidingViewController alloc];
  secureAppEnvironmentViewController = self->_secureAppEnvironmentViewController;
  v11 = [(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController dismissGestureRecognizer];
  v12 = [(SBCoverSheetSlidingViewController *)v9 initWithContentViewController:secureAppEnvironmentViewController canBePulledDown:0 canBePulledUp:v8 dismissalPreemptingGestureRecognizer:v11];

  [(SBCoverSheetSlidingViewController *)v12 setDismissalTransformMode:2];
  [(SBCoverSheetSlidingViewController *)v12 setRoundsCorners:1];
  [(SBCoverSheetSlidingViewController *)v12 setDelegate:self];
  if (CSFeatureEnabled())
  {
    v13 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:0];
    [(PBUIWallpaperEffectViewBase *)v13 setStyle:15];
    v14 = [MEMORY[0x277D75348] blackColor];
    [(SBWallpaperEffectView *)v13 setTintColor:v14];

    [(SBCoverSheetSlidingViewController *)v12 setBackgroundView:v13];
  }

  [(SBCoverSheetPresentationManager *)self setSecureAppSlidingViewController:v12];
  self->_pendingClearSecureAppViewControllers = 0;
}

- (void)_updateSecureAppViewControllerVisibilityForAssertionsActive:(BOOL)a3
{
  if (!a3 && self->_pendingClearSecureAppViewControllers)
  {
    [(SBCoverSheetPresentationManager *)self _clearSecureAppViewControllersIncludingWindow:1];
  }
}

- (void)_clearSecureAppViewControllersIncludingWindow:(BOOL)a3 force:(BOOL)a4
{
  v4 = a3;
  if (a4 || ([(BSCompoundAssertion *)self->_preserveSecureAppAssertions isActive]& 1) == 0)
  {
    v7 = SBLogCoverSheet();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Clearing Secure App View Controllers", v9, 2u);
    }

    [(SBCoverSheetSecureAppEnvironmentViewController *)self->_secureAppEnvironmentViewController relinquishHomeGesture];
    [(SBCoverSheetSecureAppEnvironmentViewController *)self->_secureAppEnvironmentViewController setDelegate:0];
    [(SBCoverSheetSlidingViewController *)self->_secureAppSlidingViewController invalidate];
    [(BSInvalidatable *)self->_secureAppViewController invalidate];
    [(SBCoverSheetPresentationManager *)self setSecureAppViewController:0];
    [(SBCoverSheetPresentationManager *)self setSecureAppEnvironmentViewController:0];
    [(SBCoverSheetPresentationManager *)self setSecureAppSlidingViewController:0];
    if (v4)
    {
      [(SBCoverSheetPresentationManager *)self setSecureAppWindow:0];
    }

    if (self->_secureAppCleanupHandler)
    {
      v8 = MEMORY[0x223D6F7F0]();
      [(SBCoverSheetPresentationManager *)self setSecureAppCleanupHandler:0];
      v8[2](v8);
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  self->_pendingClearSecureAppViewControllers = v6;
}

- (void)_performAfterSecureAppCleanup:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_secureAppWindow)
  {
    v6 = v4;
    [(SBCoverSheetPresentationManager *)self setSecureAppCleanupHandler:v4];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = v4;
    (*(v4 + 2))(v4);
  }

  v5 = v6;
LABEL_6:
}

- (void)setSecureAppViewController:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_secureAppViewController != v5)
  {
    v6 = SBLogCoverSheet();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Secure app view controller changed to %@", &v11, 0xCu);
    }

    v7 = [(BSInvalidatable *)self->_secureAppViewController applicationSceneHandle];
    [v7 removeObserver:self];

    [(BSInvalidatable *)self->_secureAppViewController bs_endAppearanceTransition:0];
    [(BSInvalidatable *)self->_secureAppViewController removeFromParentViewController];
    objc_storeStrong(&self->_secureAppViewController, a3);
    v8 = [(BSInvalidatable *)self->_secureAppViewController applicationSceneHandle];
    [v8 addObserver:self];

    v9 = [SBApp backlightEnvironmentSessionProvider];
    [v9 invalidateBacklightScenesForProvider:self];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"BCoverSheetSecureAppChangedNotification" object:self];
  }
}

- (void)setSecureAppEnvironmentViewController:(id)a3
{
  v5 = a3;
  if (self->_secureAppEnvironmentViewController != v5)
  {
    v8 = v5;
    v6 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    [v6 removeApplicationHoster:self->_secureAppEnvironmentViewController];

    [(SBCoverSheetSecureAppEnvironmentViewController *)self->_secureAppEnvironmentViewController bs_endAppearanceTransition:0];
    [(SBCoverSheetSecureAppEnvironmentViewController *)self->_secureAppEnvironmentViewController removeFromParentViewController];
    objc_storeStrong(&self->_secureAppEnvironmentViewController, a3);
    v7 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    [v7 addApplicationHoster:self->_secureAppEnvironmentViewController];

    v5 = v8;
  }
}

- (void)_noteEffectiveLockStatusMayHaveChangedForUserNotification:(BOOL)a3 canDismiss:(BOOL)a4
{
  v10 = [(SBCoverSheetPresentationManager *)self secureAppViewController];
  if ([v10 isHostingAnApp])
  {
    v7 = [(SBCoverSheetPresentationManager *)self _isEffectivelyLocked];

    if (!v7)
    {
      v8 = objc_alloc_init(SBLockScreenUnlockRequest);
      [(SBLockScreenUnlockRequest *)v8 setName:@"Unlock UI for authenticated while in secure app"];
      [(SBLockScreenUnlockRequest *)v8 setSource:24];
      [(SBLockScreenUnlockRequest *)v8 setIntent:1];
      v9 = [(SBCoverSheetPresentationManager *)self uiLockStateProvider];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __104__SBCoverSheetPresentationManager__noteEffectiveLockStatusMayHaveChangedForUserNotification_canDismiss___block_invoke;
      v11[3] = &unk_2783B6E08;
      v11[4] = self;
      v12 = a3;
      v13 = a4;
      [v9 coverSheetPresentationManager:self unlockWithRequest:v8 completion:v11];
    }
  }

  else
  {
  }
}

void __104__SBCoverSheetPresentationManager__noteEffectiveLockStatusMayHaveChangedForUserNotification_canDismiss___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) secureAppViewController];
    v4 = [v3 isHostingAnApp];

    if (v4)
    {
      if (*(a1 + 40) == 1)
      {
        v5 = [SBApp notificationDispatcher];
        v6 = [v5 bannerDestination];
        v7 = [v6 isPresentingBannerInLongLook];
      }

      else
      {
        v7 = 0;
      }

      v8 = *(a1 + 32);
      v9 = (v7 ^ 1) & *(a1 + 41);

      [v8 _transitionFromSecureAppToFullAppAndDismiss:v9 preservingBanners:v7];
    }
  }
}

- (void)_transitionFromSecureAppToFullAppAndDismiss:(BOOL)a3 preservingBanners:(BOOL)a4
{
  v5 = a3;
  v7 = [(SBCoverSheetPresentationManager *)self secureAppViewController];
  v8 = [v7 hostedAppSceneHandle];

  if (v8)
  {
    v9 = [SBDeviceApplicationSceneEntity alloc];
    v10 = [v8 application];
    v11 = [(SBDeviceApplicationSceneEntity *)v9 initWithApplicationForMainDisplay:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = +[SBMainWorkspace sharedInstance];
  v13 = [v12 createRequestForApplicationActivation:v11 options:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __97__SBCoverSheetPresentationManager__transitionFromSecureAppToFullAppAndDismiss_preservingBanners___block_invoke;
  v20[3] = &__block_descriptor_33_e70___SBMainWorkspaceTransaction_16__0__SBMainWorkspaceTransitionRequest_8l;
  v21 = a4;
  [v13 setTransactionProvider:v20];
  v14 = [v8 application];
  v15 = [v14 bundleIdentifier];
  v16 = [v15 isEqualToString:@"com.apple.purplebuddy"];

  if (v5 && (v16 & 1) == 0)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __97__SBCoverSheetPresentationManager__transitionFromSecureAppToFullAppAndDismiss_preservingBanners___block_invoke_2;
    v18[3] = &unk_2783A8BF0;
    v18[4] = self;
    v19 = v8;
    v17 = [v13 addCompletionHandler:v18];
  }

  if (objc_opt_respondsToSelector())
  {
    [(BSInvalidatable *)self->_secureAppViewController setIntentToTransitionFromSecureAppToFull:1];
  }

  [v12 executeTransitionRequest:v13];
}

SBCoverSheetToAppsWorkspaceTransaction *__97__SBCoverSheetPresentationManager__transitionFromSecureAppToFullAppAndDismiss_preservingBanners___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SBCoverSheetToAppsWorkspaceTransaction alloc] initWithTransitionRequest:v3 forSecureAppTransition:1];

  [(SBCoverSheetToAppsWorkspaceTransaction *)v4 setPreservesBanners:*(a1 + 32)];

  return v4;
}

void __97__SBCoverSheetPresentationManager__transitionFromSecureAppToFullAppAndDismiss_preservingBanners___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __97__SBCoverSheetPresentationManager__transitionFromSecureAppToFullAppAndDismiss_preservingBanners___block_invoke_3;
    v3[3] = &unk_2783A8C18;
    v2 = *(a1 + 32);
    v4 = *(a1 + 40);
    [v2 _performAfterSecureAppCleanup:v3];
  }
}

void __97__SBCoverSheetPresentationManager__transitionFromSecureAppToFullAppAndDismiss_preservingBanners___block_invoke_3(uint64_t a1)
{
  v2 = [SBDeviceApplicationSceneEntity alloc];
  v3 = [*(a1 + 32) application];
  v6 = [(SBDeviceApplicationSceneEntity *)v2 initWithApplicationForMainDisplay:v3];

  v4 = [(SBApplicationSceneEntity *)v6 sceneHandle];
  v5 = v4;
  if (v4)
  {
    SBWorkspaceSuspendApplicationScene(v4);
  }
}

- (void)coverSheetViewControllerExternalLockProviderStateDidChange:(id)a3
{
  v4 = [MEMORY[0x277D0AB20] sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __94__SBCoverSheetPresentationManager_coverSheetViewControllerExternalLockProviderStateDidChange___block_invoke;
  v6[3] = &unk_2783A8C18;
  v6[4] = self;
  v5 = [MEMORY[0x277D0AB18] eventWithName:@"external lock provider state did change" handler:v6];
  [v4 executeOrAppendEvent:v5];
}

- (void)coverSheetViewControllerDidAddNewSceneHostEnvironment:(id)a3
{
  v3 = SBApp;
  v4 = a3;
  v5 = [v3 backlightEnvironmentSessionProvider];
  [v5 invalidateBacklightSceneHostEnvironmentsForProvider:v4];
}

- (void)coverSheetViewControllerActivityItemsMayHaveChanged:(id)a3
{
  v3 = [(SBCoverSheetPresentationManager *)self zStackParticipant];
  [v3 setNeedsUpdatePreferencesWithReason:@"coversheet activity items may have changed"];
}

- (void)coverSheetViewControllerDidUpdateAudioCategoriesDisablingVolumeHUD:(id)a3
{
  v3 = [(SBCoverSheetPresentationManager *)self zStackParticipant];
  [v3 setNeedsUpdatePreferencesWithReason:@"coversheet updated audio categories disabling the Volume HUD"];
}

- (void)coverSheetViewController:(id)a3 didObscureWallpaper:(BOOL)a4
{
  if (self->_wallpaperObscured != a4)
  {
    v5 = a4;
    self->_wallpaperObscured = a4;
    v6 = +[SBWallpaperController sharedInstance];
    [v6 setWallpaperObscured:v5];
  }
}

- (void)coverSheetViewController:(id)a3 didOccludeWallpaper:(BOOL)a4
{
  v4 = a4;
  v5 = +[SBLockScreenDeviceMotionEffectController sharedInstance];
  [v5 setWallpaperObscured:v4];
}

- (void)coverSheetViewControllerDidChangeUserPresence:(BOOL)a3
{
  v3 = a3;
  v4 = +[SBLockScreenDeviceMotionEffectController sharedInstance];
  [v4 setUserPresenceDetected:v3];
}

- (void)coverSheetViewController:(id)a3 didChangeActiveBehavior:(id)a4
{
  v4 = [(SBCoverSheetPresentationManager *)self zStackParticipant:a3];
  [v4 setNeedsUpdatePreferencesWithReason:@"coversheet active behavior did change"];
}

- (void)_updateTopButtonsForCoverSheetViewController:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 _screen];
  [v4 getLeadingTopButtonFrame:&v8 trailingTopButtonFrame:&v6 forScreen:v5];

  [v3 updateLeadingTopButtonFrame:v8 trailingTopButtonFrame:{v9, v6, v7}];
}

+ (void)getLeadingTopButtonFrame:(CGRect *)a3 trailingTopButtonFrame:(CGRect *)a4 forScreen:(id)a5
{
  v18 = a5;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = [SBApp windowSceneManager];
    v8 = [v18 displayIdentity];
    v9 = [v7 windowSceneForDisplayIdentity:v8];

    v10 = [v9 homeScreenController];
    [v10 getLeadingTopButtonFrame:a3 trailingTopButtonFrame:a4];
  }

  else
  {
    [v18 bounds];
    Width = CGRectGetWidth(v20);
    v21.size.width = 60.0;
    v21.origin.x = 0.0;
    v21.origin.y = 8.0;
    v21.size.height = 24.0;
    v12 = CGRectGetWidth(v21);
    if (a3)
    {
      __asm { FMOV            V2.2D, #8.0 }

      a3->origin = _Q2;
      a3->size = xmmword_21F8A6D10;
    }

    if (a4)
    {
      a4->origin.x = Width - v12 + -8.0;
      *&a4->origin.y = xmmword_21F8A6D20;
      a4->size.height = 24.0;
    }
  }
}

- (void)pearlMatchingStateProviderStateChangedForMatchFailure:(id)a3
{
  if ([a3 seenMatchResultSinceScreenOn])
  {
    v4 = [SBApp authenticationController];
    v5 = [v4 isAuthenticated];

    if ((v5 & 1) == 0)
    {
      if ([(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController isAnyGestureActivelyRecognized])
      {
        v6 = [(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController activeGestureRecognizer];
        [v6 setEnabled:0];
        [v6 setEnabled:1];
      }
    }
  }
}

- (void)coverSheetSlidingViewController:(id)a3 prepareForPresentationTransitionForUserGesture:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  BSDispatchQueueAssertMain();
  if (self->_coverSheetSlidingViewController == v6)
  {
    v7 = SBLogCoverSheet();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "cover sheet sliding view controller prepare for presentation transition", buf, 2u);
    }

    [(SBCoverSheetPresentationManager *)self _prepareForPresentationTransitionForUserGesture:v4];
    v8 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    [v8 prepareForTransitionToPresented:1 reversingTransition:0 forUserGesture:v4];

    if (CSFeatureEnabled())
    {
      v9 = +[SBSecureAppManager sharedInstance];
      if ([v9 hasSecureApp])
      {
      }

      else
      {
        v10 = [(SBCoverSheetPresentationManager *)self isInSecureApp];

        if (!v10)
        {
          goto LABEL_10;
        }
      }

      if ([(SBCoverSheetPresentationManager *)self _isEffectivelyLocked])
      {
        [(SBCoverSheetPresentationManager *)self _prepareForSecureAppTransitionToPresented:0 animated:v4];
      }
    }
  }

LABEL_10:
  if (self->_secureAppSlidingViewController == v6)
  {
    v11 = SBLogCoverSheet();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "secure app view controller prepare for presentation transition", v12, 2u);
    }
  }
}

- (void)coverSheetSlidingViewControllerCleanupPresentationTransition:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (self->_coverSheetSlidingViewController == v4)
  {
    if (CSFeatureEnabled())
    {
      v5 = +[SBSecureAppManager sharedInstance];
      v6 = ([v5 hasSecureApp] & 1) == 0 && !-[SBCoverSheetPresentationManager isInSecureApp](self, "isInSecureApp");

      if (self->_coverSheetSlidingViewController == v4 && (v6 & 1) == 0 && [(SBCoverSheetPresentationManager *)self _isEffectivelyLocked])
      {
        [(SBCoverSheetPresentationManager *)self _finishSecureAppTransitionToPresented:0];
      }
    }

    [(SBCoverSheetPresentationManager *)self _cleanupPresentationTransition];
  }

  if (self->_secureAppSlidingViewController == v4)
  {
    v7 = SBLogCoverSheet();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "secure app view controller clean up presentation transition", v8, 2u);
    }
  }
}

- (void)coverSheetSlidingViewControllerPrepareForRubberBandedPresentationTransition:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  [(SBCoverSheetPresentationManager *)self _prepareForRubberBandPresentationTransitionForSlidingViewController:v4];
}

- (void)coverSheetSlidingViewControllerCleanupRubberBandedPresentationTransition:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  [(SBCoverSheetPresentationManager *)self _cleanupRubberBandPresentationTransitionForSlidingViewController:v4];

  if (self->_rubberBandCleanupNeeded)
  {
    v5 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    [v5 cleanupRubberBandTransition];
  }
}

- (void)coverSheetSlidingViewController:(id)a3 prepareForDismissalTransitionForReversingTransition:(BOOL)a4 forUserGesture:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  BSDispatchQueueAssertMain();
  if (self->_secureAppSlidingViewController == v8)
  {
    v9 = SBLogCoverSheet();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "secure app view controller prepare for dismissal transition", buf, 2u);
    }
  }

  v10 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  v11 = [SBApp authenticationController];
  v12 = [v11 isAuthenticated];

  v13 = [(SBCoverSheetPresentationManager *)self pearlMatchingStateProvider];
  v14 = v13;
  if (self->_coverSheetSlidingViewController == v8)
  {
    v15 = [v13 pearlMatchEnabledAndPossible] ^ 1;
  }

  else
  {
    v15 = 1;
  }

  v16 = [v10 externalLockProvidersRequireUnlock];
  v17 = [(SBCoverSheetSlidingViewController *)v8 dismissalSlidingMode];
  if (v12)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17 == 2 || !v6;
  }

  v20 = [(SBCoverSheetPresentationManager *)self _isGoingToSecureAppForSlidingViewController:v8];
  if (v5)
  {
    [MEMORY[0x277CCAB98] defaultCenter];
    v28 = v8;
    v21 = v10;
    v22 = v16;
    v23 = v19;
    v24 = v14;
    v25 = v5;
    v27 = v26 = v15;
    [v27 postNotificationName:@"SBBiometricEventTimestampNotificationCoversheetSwipedForDismissal" object:self];

    v15 = v26;
    v5 = v25;
    v14 = v24;
    v19 = v23;
    v16 = v22;
    v10 = v21;
    v8 = v28;
    [v10 prepareForTransitionToPresented:0 reversingTransition:v6 forUserGesture:1];
    if (!v6)
    {
      [(SBCoverSheetPresentationManager *)self _noteCoverSheetDismissingByUserGesture];
    }

    if (v20)
    {
      goto LABEL_20;
    }
  }

  else
  {
    [v10 prepareForTransitionToPresented:0 reversingTransition:v6 forUserGesture:0];
    if (v20)
    {
LABEL_20:
      if (CSFeatureEnabled())
      {
        [(SBCoverSheetPresentationManager *)self _prepareForSecureAppTransitionToPresented:1 animated:v5];
      }

      else
      {
        [(SBCoverSheetPresentationManager *)self _prepareForTransitionToSecureApp];
      }

      goto LABEL_27;
    }
  }

  if (v19 && (CSFeatureEnabled() & 1) == 0)
  {
    if ((v15 | v16))
    {
      [(SBCoverSheetPresentationManager *)self _prepareForRubberBandDismissalTransitionForSlidingViewController:v8];
    }

    else
    {
      [(SBCoverSheetPresentationManager *)self _prepareInterstitialTransitionForSlidingViewController:v8];
    }
  }

  else
  {
    [(SBCoverSheetPresentationManager *)self _prepareForDismissalTransition];
  }

LABEL_27:
}

- (void)coverSheetSlidingViewControllerUserPresentGestureBegan:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (self->_coverSheetSlidingViewController == v4)
  {
    [(SBCoverSheetPresentationManager *)self setHasBeenDismissedSinceKeybagLock:1];
    [(SBCoverSheetPresentationManager *)self setHasBeenDismissedSinceBoot:1];
  }

  if (self->_secureAppSlidingViewController == v4)
  {
    v5 = SBLogCoverSheet();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "secure app view controller user present gesture began", v8, 2u);
    }
  }

  v6 = [(UIWindow *)self->_coverSheetWindow _sbWindowScene];
  v7 = [v6 controlCenterController];
  [v7 dismissAnimated:0];
}

- (void)coverSheetSlidingViewController:(id)a3 committingToEndPresented:(BOOL)a4
{
  v6 = a3;
  BSDispatchQueueAssertMain();
  coverSheetSlidingViewController = self->_coverSheetSlidingViewController;

  if (coverSheetSlidingViewController == v6)
  {
    if (a4)
    {

      [(SBCoverSheetPresentationManager *)self setWantsHomeGestureOwnership:1];
    }

    else
    {
      [(SBCoverSheetPresentationManager *)self setHasBeenDismissedSinceKeybagLock:1];
      [(SBCoverSheetPresentationManager *)self setHasBeenDismissedSinceBoot:1];
      [(SBCoverSheetPresentationManager *)self setWantsHomeGestureOwnership:0];

      [(SBCoverSheetPresentationManager *)self _invalidateSystemApertureCoverSheetAssertion];
    }
  }
}

- (void)coverSheetSlidingViewControllerCleanupDismissalTransition:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (self->_coverSheetSlidingViewController == v4)
  {
    v5 = SBLogCoverSheet();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "cover sheet sliding view controller cleanup dismissal transition", buf, 2u);
    }
  }

  if (self->_secureAppSlidingViewController == v4)
  {
    v6 = SBLogCoverSheet();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "secure app view controller cleanup dismissal transition", v26, 2u);
    }
  }

  v7 = [(SBCoverSheetPresentationManager *)self _isEffectivelyLocked];
  v8 = [(SBCoverSheetPresentationManager *)self _isGoingToSecureAppForSlidingViewController:v4];
  if (CSFeatureEnabled() && v8)
  {
    [(SBCoverSheetPresentationManager *)self _finishSecureAppTransitionToPresented:1];
  }

  if (CSFeatureEnabled())
  {
    v9 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    v10 = ([v9 isPasscodeLockVisible] & 1) != 0 || self->_isPresentingInterstitial;

    v15 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    v16 = [v15 externalLockProvidersRequireUnlock];

    v17 = [(SBCoverSheetPresentationManager *)self secureAppSlidingViewControllerIfLoaded];
    if (v17 == v4)
    {
      v19 = +[SBSecureAppManager sharedInstance];
      v18 = [v19 hasSecureApp];
    }

    else
    {
      v18 = 0;
    }

    v11 = v10 | v18 | v16;
    if (v8)
    {
LABEL_28:
      v20 = SBLogCoverSheet();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "*** not cleaning up cover sheet dismissal transition because going to secure app ***", v25, 2u);
      }

      v21 = [(SBCoverSheetPresentationManager *)self coverSheetSlidingViewController];
      [v21 setDismissGesturesEnabled:0];

      v13 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
      [v13 setCoverSheetIsVisible:0];
LABEL_31:

      [(SBCoverSheetPresentationManager *)self _cleanupATransition];
      goto LABEL_32;
    }
  }

  else
  {
    v11 = 0;
    if (v8)
    {
      goto LABEL_28;
    }
  }

  v12 = v11 | ~v7;
  v13 = SBLogCoverSheet();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v11)
    {
      if (v14)
      {
        *v23 = 0;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "*** not cleaning up cover sheet dismissal transition because we're presenting an interstitial or external lock provider ***", v23, 2u);
      }

      goto LABEL_31;
    }

    if (v14)
    {
      *v22 = 0;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "cleaning up cover sheet dismissal transition", v22, 2u);
    }

    [(SBCoverSheetPresentationManager *)self _cleanupDismissalTransition];
  }

  else
  {
    if (v14)
    {
      *v24 = 0;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "*** not cleaning up cover sheet dismissal transition because requires unlock ***", v24, 2u);
    }

    [(SBCoverSheetPresentationManager *)self _setCoverSheetPresented:1 forcePresented:1 animated:1 withCompletion:0];
  }

LABEL_32:
}

- (void)coverSheetSlidingViewControllerDidEndTransition:(id)a3 toPresented:(BOOL)a4
{
  v4 = a4;
  BSDispatchQueueAssertMain();
  if (CSFeatureEnabled())
  {
    v6 = +[SBWallpaperController sharedInstance];
    v7 = !v4;
    [v6 setActiveVariant:v7];

    if (!v7)
    {
      [(SBCoverSheetPresentationManager *)self _updateWallpaperOverlayAlpha:1.0];
      [(SBCoverSheetPresentationManager *)self setWallpaperFloatingLayerHidden:0];
    }
  }

  [(SBCoverSheetPresentationManager *)self setTransitionType:0];
}

- (void)coverSheetSlidingViewControllerDidPassRubberBandThreshold:(id)a3
{
  BSDispatchQueueAssertMain();
  [(SBCoverSheetPresentationManager *)self _notifyDelegateRequestsUnlock];
  [(UIImpactFeedbackGenerator *)self->_rubberBandFeedbackGenerator impactOccurred];
  self->_rubberBandCleanupNeeded = 0;
}

- (BOOL)hasContentUnderCoverSheetSlidingViewController:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  coverSheetSlidingViewController = self->_coverSheetSlidingViewController;

  if (coverSheetSlidingViewController != v4)
  {
    return 0;
  }

  v7 = +[SBSecureAppManager sharedInstance];
  v8 = [v7 hasSecureApp];

  return v8;
}

- (void)coverSheetSlidingViewController:(id)a3 animationTickedWithProgress:(double)a4 velocity:(double)a5 isPresenting:(BOOL)a6 coverSheetFrame:(CGRect)a7 gestureActive:(BOOL)a8 forPresentationValue:(BOOL)a9
{
  v9 = a9;
  v12 = a3;
  if (v9)
  {
    kdebug_trace();
    kdebug_trace();
    if (self->_coverSheetSlidingViewController == v12)
    {
      v13 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
      [v13 updateCoverSheetDraggingProgress:1 forPresentationValue:a4];

      unlockProgressQueue = self->_unlockProgressQueue;
      v15 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
      [(SBAtomicObjectQueue *)unlockProgressQueue enqueue:v15];

      BSDispatchMain();
    }
  }

  else
  {
    v16 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    [v16 updateCoverSheetDraggingProgress:0 forPresentationValue:a4];
  }
}

void __168__SBCoverSheetPresentationManager_coverSheetSlidingViewController_animationTickedWithProgress_velocity_isPresenting_coverSheetFrame_gestureActive_forPresentationValue___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 424) dequeue];
  [v2 bs_CGFloatValue];
  v4 = v3;

  if (v4 > 0.9)
  {
    v5 = *(a1 + 40);
    if (v4 <= 0.8)
    {
      if (v5 <= 0.0)
      {
        goto LABEL_11;
      }
    }

    else if (v5 <= 0.0)
    {
      if (v5 >= 0.0)
      {
        goto LABEL_11;
      }

LABEL_8:
      [*(a1 + 32) _acquireSystemApertureCoverSheetAssertion];
      goto LABEL_11;
    }

    [*(a1 + 32) _invalidateSystemApertureCoverSheetAssertion];
    goto LABEL_11;
  }

  if (v4 > 0.8 && *(a1 + 40) < 0.0)
  {
    goto LABEL_8;
  }

LABEL_11:
  [*(a1 + 32) _updateShouldDisplayFakeStatusBarInVisibleTransition:v4 < 0.9];
  v11 = [*(a1 + 32) transitionSettings];
  v6 = v4;
  if ([v11 usesFixedWallpaperPresentationProgress])
  {
    [v11 fixedWallpaperPresentationProgress];
    v6 = v7;
  }

  v8 = +[SBWallpaperController sharedInstance];
  [v8 updateWallpaperAnimationWithProgress:v6];

  if ((CSFeatureEnabled() & 1) == 0)
  {
    [*(a1 + 32) setWallpaperFloatingLayerHidden:v4 > 0.2];
  }

  v9 = [*(a1 + 32) coverSheetViewController];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 208));
  [v9 updateBackgroundGlassEffectForDraggingProgress:objc_msgSend(WeakRetained usingGlassEffects:{"supportsGlassEffects"), v4}];
}

- (void)coverSheetSlidingViewController:(id)a3 transitionTickedWithProgress:(double)a4 velocity:(double)a5 isPresenting:(BOOL)a6 coverSheetFrame:(CGRect)a7 gestureActive:(BOOL)a8 forPresentationValue:(BOOL)a9
{
  v11 = a3;
  transitionProgressQueue = self->_transitionProgressQueue;
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [(SBAtomicObjectQueue *)transitionProgressQueue enqueue:v13];

  v14 = v11;
  BSDispatchMain();
}

void __169__SBCoverSheetPresentationManager_coverSheetSlidingViewController_transitionTickedWithProgress_velocity_isPresenting_coverSheetFrame_gestureActive_forPresentationValue___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 432) dequeue];
  [v2 bs_CGFloatValue];
  v4 = v3;

  v5 = +[SBWallpaperController sharedInstance];
  [v5 updateActiveVariantTransitionProgress:v4];

  if (CSFeatureEnabled())
  {
    if (*(a1 + 48) == 1)
    {
      [*(a1 + 32) _updateWallpaperOverlayAlpha:1.0 - v4];
    }

    v6 = +[SBSecureAppManager sharedInstance];
    if ([v6 hasSecureApp])
    {
      v7 = 0;
    }

    else
    {
      v7 = [*(a1 + 32) isInSecureApp] ^ 1;
    }

    v8 = *(a1 + 32);
    if (*(a1 + 40) == v8[55] && (v7 & 1) == 0 && [v8 _isEffectivelyLocked])
    {
      [*(a1 + 32) _updateTransitionToSecureAppWithProgress:v4];
    }
  }

  v9 = [*(a1 + 32) coverSheetViewController];
  [v9 updateCoverSheetTransitionProgress:v4];
}

- (void)_updateShouldDisplayFakeStatusBarInVisibleTransition:(BOOL)a3
{
  v4 = a3 || self->_secureAppViewController || self->_needsFakeStatusBarUpdate || self->_preparingToDismissCoverSheet;
  v5 = v4;
  if (self->_shouldDisplayFakeStatusBar != v5)
  {
    self->_needsFakeStatusBarUpdate = 0;
    self->_shouldDisplayFakeStatusBar = v5;
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v7 = [WeakRetained statusBarManager];
    v8 = [v7 layoutManager];

    v9 = MEMORY[0x277D75D18];
    if (self->_shouldDisplayFakeStatusBar)
    {
      v10 = v14;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v11 = __88__SBCoverSheetPresentationManager__updateShouldDisplayFakeStatusBarInVisibleTransition___block_invoke;
    }

    else
    {
      v10 = v13;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v11 = __88__SBCoverSheetPresentationManager__updateShouldDisplayFakeStatusBarInVisibleTransition___block_invoke_2;
    }

    v10[2] = v11;
    v10[3] = &unk_2783A92D8;
    v10[4] = self;
    v10[5] = v8;
    v12 = v8;
    [v9 performWithoutAnimation:v10];

    [(SBCoverSheetPresentationManager *)self _tellDashBoardOurAppearanceAndBehaviorChanged];
  }
}

uint64_t __88__SBCoverSheetPresentationManager__updateShouldDisplayFakeStatusBarInVisibleTransition___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) statusBarTransitionController];
  [v2 updateStatusBarForLockScreenComeback];

  v3 = *(a1 + 40);

  return [v3 addActiveLayoutLayer:1];
}

uint64_t __88__SBCoverSheetPresentationManager__updateShouldDisplayFakeStatusBarInVisibleTransition___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) statusBarTransitionController];
  [v2 updateStatusBarForLockScreenTeardown];

  v3 = *(a1 + 40);

  return [v3 removeActiveLayoutLayer:1];
}

- (void)coverSheetSlidingViewController:(id)a3 prepareToAnimateIconFlyInForPresenting:(BOOL)a4 withVelocity:(double)a5
{
  if (self->_iconsWereLastAnimatedIn == a4)
  {
    v6 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_transitionSettings);
    v9 = [WeakRetained iconsFlyIn];

    if (v9)
    {
      v10 = SBLogCoverSheet();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [SBCoverSheetPresentationManager coverSheetSlidingViewController:v6 prepareToAnimateIconFlyInForPresenting:v10 withVelocity:a5];
      }

      [(SBCoverSheetPresentationManager *)self _prepareIconAnimatorForPresenting:v6 withVelocity:a5];
    }
  }
}

- (void)coverSheetSlidingViewController:(id)a3 performIconFlyInForPresenting:(BOOL)a4 animated:(BOOL)a5 beginBlock:(id)a6 endBlock:(id)a7
{
  v8 = a5;
  v9 = a4;
  v11 = a6;
  v12 = a7;
  v13 = SBLogCoverSheet();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [SBCoverSheetPresentationManager coverSheetSlidingViewController:v9 performIconFlyInForPresenting:v13 animated:? beginBlock:? endBlock:?];
  }

  if (self->_iconsWereLastAnimatedIn == v9)
  {
    self->_iconsWereLastAnimatedIn = !v9;
    if (v8 && self->_iconAnimator && self->_iconAnimatorCompletionGroup)
    {
      if (v11)
      {
        v11[2](v11);
      }

      if (v9)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __126__SBCoverSheetPresentationManager_coverSheetSlidingViewController_performIconFlyInForPresenting_animated_beginBlock_endBlock___block_invoke;
      v15[3] = &unk_2783A9348;
      v16 = v12;
      [(SBCoverSheetPresentationManager *)self _setTransitionProgress:1 animated:0 gestureActive:v15 coverSheetProgress:v14 completion:v14];
    }
  }
}

uint64_t __126__SBCoverSheetPresentationManager_coverSheetSlidingViewController_performIconFlyInForPresenting_animated_beginBlock_endBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)coverSheetSlidingViewController:(id)a3 animateForGestureActive:(BOOL)a4 withProgress:(double)a5 beginBlock:(id)a6 endBlock:(id)a7
{
  v9 = a4;
  v11 = a6;
  v12 = a7;
  v13 = SBLogCoverSheet();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(SBCoverSheetPresentationManager *)v13 coverSheetSlidingViewController:v14 animateForGestureActive:v15 withProgress:v16 beginBlock:v17 endBlock:v18, v19, v20];
  }

  if (self->_iconAnimator && self->_iconAnimatorCompletionGroup)
  {
    v21 = a5 > 0.2 && self->_iconAnimatorNeedsAnimating;
    if (v9)
    {
      v21 = a5 > 0.560000002;
    }

    if (v21)
    {
      if (v11)
      {
        v11[2](v11);
      }

      self->_iconAnimatorNeedsAnimating = 0;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __124__SBCoverSheetPresentationManager_coverSheetSlidingViewController_animateForGestureActive_withProgress_beginBlock_endBlock___block_invoke;
      v22[3] = &unk_2783A9348;
      v23 = v12;
      [(SBCoverSheetPresentationManager *)self _setTransitionProgress:1 animated:v9 gestureActive:v22 coverSheetProgress:1.0 completion:a5];
    }
  }
}

uint64_t __124__SBCoverSheetPresentationManager_coverSheetSlidingViewController_animateForGestureActive_withProgress_beginBlock_endBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)coverSheetSlidingViewControllerPerformExternalUnlockIfNeeded:(id)a3
{
  v4 = a3;
  if (CSFeatureEnabled())
  {
    v5 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    v6 = [v5 externalLockProvidersRequireUnlock];

    v7 = [(SBCoverSheetPresentationManager *)self secureAppSlidingViewControllerIfLoaded];
    if (v7 == v4)
    {
      v10 = +[SBSecureAppManager sharedInstance];
      v8 = [v10 hasSecureApp];
    }

    else
    {
      v8 = 0;
    }

    if (v6 && (+[SBAlertItemsController sharedInstance](SBAlertItemsController, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 hasVisibleAlert], v11, (v12 & 1) == 0))
    {
      v13 = +[SBAlertItemsController sharedInstance];
      [v13 setForceAlertsToPend:0 forReason:@"SBCoverSheetForceAlertItemsToPendReason"];
    }

    else if (!v8)
    {
      goto LABEL_12;
    }

    [(SBCoverSheetPresentationManager *)self _notifyDelegateRequestsUnlock];
LABEL_12:
    v9 = v6 | v8;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:

  return v9 & 1;
}

- (BOOL)coverSheetSlidingViewControllerIsDisplayingInterstitial:(id)a3
{
  v3 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  v4 = [v3 isPasscodeLockVisible];

  return v4;
}

- (void)coverSheetSlidingViewControllerCleanupInterstitialTransition:(id)a3
{
  v4 = a3;
  if (CSFeatureEnabled())
  {
    if (!self->_isDismissingInterstitial)
    {
      self->_isDismissingInterstitial = 1;
      v5 = *MEMORY[0x277D76620];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __96__SBCoverSheetPresentationManager_coverSheetSlidingViewControllerCleanupInterstitialTransition___block_invoke;
      v7[3] = &unk_2783A8C18;
      v7[4] = self;
      [v5 _performBlockAfterCATransactionCommits:v7];
      v6 = [(SBCoverSheetPresentationManager *)self _isGoingToSecureAppForSlidingViewController:v4];
      if ([(SBCoverSheetPresentationManager *)self _isEffectivelyLocked])
      {
        if (!v6)
        {
          [(SBCoverSheetPresentationManager *)self _setCoverSheetPresented:1 forcePresented:1 animated:1 withCompletion:0];
        }
      }
    }
  }

  else
  {
    [(SBCoverSheetPresentationManager *)self _cleanupInterstitialTransitionForSlidingViewController:v4];
  }
}

void __96__SBCoverSheetPresentationManager_coverSheetSlidingViewControllerCleanupInterstitialTransition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coverSheetViewController];
  [v2 dismissInterstitialPresentationAnimated:1];

  *(*(a1 + 32) + 17) = 0;
}

- (BOOL)coverSheetSlidingViewControllerShouldAllowDismissal:(id)a3
{
  if (self->_coverSheetSlidingViewController != a3 || (CSFeatureEnabled() & 1) != 0 || ![(SBCoverSheetPresentationManager *)self _isEffectivelyLocked])
  {
    return 1;
  }

  secureAppViewController = self->_secureAppViewController;

  return [(BSInvalidatable *)secureAppViewController isHostingAnApp];
}

- (void)coverSheetSlidingViewController:(id)a3 isTransitioning:(BOOL)a4
{
  v4 = a4;
  v5 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  [v5 setPartiallyOnScreen:v4];
}

- (void)coverSheetSlidingViewControllerReachabilityAnimationWillBegin:(id)a3
{
  v3 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  [v3 handleReachabilityAnimationWillBegin];
}

- (void)coverSheetSlidingViewControllerReachabilityAnimationDidEnd:(id)a3
{
  v3 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  [v3 handleReachabilityAnimationDidEnd];
}

- (void)coverSheetSlidingViewController:(id)a3 willChangePresentationState:(int64_t)a4 forUserGesture:(BOOL)a5 withVelocity:(double)a6 animated:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v12 = a3;
  coverSheetSlidingViewController = self->_coverSheetSlidingViewController;
  v16 = v12;
  v14 = [(SBCoverSheetPresentationManager *)self _isGoingToSecureAppForSlidingViewController:?];
  if (a4 <= 5)
  {
    if (a4 == 1)
    {
      goto LABEL_13;
    }

    if (a4 != 5)
    {
      goto LABEL_14;
    }

    if (v14)
    {
      goto LABEL_13;
    }

    [(SBCoverSheetPresentationManager *)self _prepareForCoverSheetRemovalWithVelocity:a6];
    v15 = 1.0;
    goto LABEL_12;
  }

  if (a4 == 6)
  {
    if (coverSheetSlidingViewController == v16)
    {
      v15 = 0.0;
LABEL_12:
      [(SBCoverSheetPresentationManager *)self _notifyDelegateWillPerformTransitionWithFinalValue:v9 forUserGesture:v7 withVelocity:v15 animated:a6];
    }

LABEL_13:
    BSDispatchMain();
    goto LABEL_14;
  }

  if (a4 == 7)
  {
    goto LABEL_13;
  }

LABEL_14:
}

void __132__SBCoverSheetPresentationManager_coverSheetSlidingViewController_willChangePresentationState_forUserGesture_withVelocity_animated___block_invoke()
{
  v0 = +[SBWallpaperController sharedInstance];
  [v0 beginActiveVariantTransition];
}

void __132__SBCoverSheetPresentationManager_coverSheetSlidingViewController_willChangePresentationState_forUserGesture_withVelocity_animated___block_invoke_2()
{
  v0 = +[SBWallpaperController sharedInstance];
  [v0 beginActiveVariantTransition];
}

void __132__SBCoverSheetPresentationManager_coverSheetSlidingViewController_willChangePresentationState_forUserGesture_withVelocity_animated___block_invoke_3()
{
  v0 = +[SBWallpaperController sharedInstance];
  [v0 endActiveVariantTransition];
}

- (void)coverSheetSlidingViewControllerDidEndDismissGestureOverInterstitial:(id)a3
{
  v3 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  [v3 cleanupInterstitialWhileOffScreen];
}

- (BOOL)coverSheetSlidingViewControllerIsInterstitialDismissalAllowed:(id)a3
{
  v4 = [(SBCoverSheetPresentationManager *)self pearlMatchingStateProvider];
  v5 = [v4 pearlMatchEnabledAndPossible];

  v6 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  LOBYTE(v4) = [v6 externalLockProvidersRequireUnlock];

  return v5 & (v4 ^ 1);
}

- (void)_createWallpaperOverlayIfNeededWithCoverSheetFrame:(CGRect)a3
{
  if (!self->_wallpaperFloatingLayerView)
  {
    height = a3.size.height;
    width = a3.size.width;
    v6 = [(SBCoverSheetPresentationManager *)self transitionSettings:a3.origin.x];
    v7 = [v6 floatingLayerAsWallpaperOverlay];

    if (v7)
    {
      v8 = +[SBWallpaperController sharedInstance];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v8 createWallpaperFloatingViewForReason:v10 ignoreReplica:1];
      wallpaperFloatingLayerView = self->_wallpaperFloatingLayerView;
      self->_wallpaperFloatingLayerView = v11;

      v13 = objc_alloc_init(MEMORY[0x277D75D18]);
      wallpaperFloatingLayerViewContainerView = self->_wallpaperFloatingLayerViewContainerView;
      self->_wallpaperFloatingLayerViewContainerView = v13;

      [(UIView *)self->_wallpaperFloatingLayerViewContainerView setClipsToBounds:1];
      [(UIView *)self->_wallpaperFloatingLayerViewContainerView addSubview:self->_wallpaperFloatingLayerView];
      [(UIView *)self->_wallpaperFloatingLayerViewContainerView setFrame:0.0, 0.0, width, height];
      [(BSInvalidatable *)self->_wallpaperFloatingLayerView setFrame:0.0, 0.0, width, height];
      v15 = +[SBWallpaperController sharedInstance];
      [v15 addWallpaperOverlay:self->_wallpaperFloatingLayerViewContainerView];
    }
  }
}

- (void)_updateWallpaperOverlayAlpha:(double)a3
{
  if (CSFeatureEnabled())
  {
    [(SBCoverSheetPresentationManager *)self setWallpaperFloatingLayerAlpha:a3];
    [(BSInvalidatable *)self->_wallpaperFloatingLayerView setAlpha:a3];

    [(SBCoverSheetPresentationManager *)self _tellDashBoardOurAppearanceChanged];
  }
}

- (BOOL)hasFirstSwipeShowGrabberOverride
{
  v2 = +[SBWorkspace mainWorkspace];
  v3 = [v2 transientOverlayPresentationManager];
  v4 = [v3 hasActivePresentation];

  return v4;
}

- (unint64_t)screenEdgesDeferringSystemGestures
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = [WeakRetained switcherController];

  v4 = [v3 layoutStatePrimaryElement];
  v5 = [v4 workspaceEntity];
  v6 = [v5 applicationSceneEntity];
  v7 = [v6 sceneHandle];
  v8 = [v7 screenEdgesDeferringSystemGestures];

  return v8;
}

- (void)updateVisibilityForGrabberVisible:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") & 1) == 0)
    {
      v6 = [SBApp activeInterfaceOrientation];
      [v5 setEffectiveInterfaceOrientationOverride:v6];
      [(SBCoverSheetPresentationManager *)self updateInterfaceOrientationToMatchOrientation:v6];
    }
  }

  [(SBCoverSheetPresentationManager *)self _setCoverSheetWindowVisible:v3 forReason:@"SBCoverSheetPresentTongueGrabberVisibleReason"];
}

- (BOOL)secureAppEnvironmentViewControllerShouldEnableIdleWarning:(id)a3 alwaysOnEnabled:(BOOL)a4
{
  if (!a4)
  {
    return 1;
  }

  v4 = [a3 hostedAppSceneHandle];
  v5 = [v4 application];
  v6 = [v5 bundleIdentifier];

  v7 = +[SBSecureAppManager sharedInstance];
  v8 = [v7 secureAppAction];
  v9 = [v7 wakeDestination];
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || ([v8 isInProcessAction] & 1) != 0 || objc_msgSend(v9, "type") != 1)
  {
    v13 = 1;
  }

  else
  {
    v11 = [v9 identifier];
    v12 = [v11 isEqualToString:v6];

    v13 = v12 ^ 1;
  }

  return v13;
}

- (void)secureAppOfTypeDidBegin:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = SBLogCoverSheet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = a3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SecureApp began of type: %lu", &v12, 0xCu);
  }

  v6 = [(SBUILockStateProvider *)self->_uiLockStateProvider isUILocked];
  v7 = +[SBSecureAppManager sharedInstance];
  v8 = [v7 hasSecureApp];

  if (v6 && v8)
  {
    if (!+[SBBacklightPlatformProvider deviceSupportsAlwaysOn])
    {
      [(SBCoverSheetPresentationManager *)self _isInAlwaysOn];
LABEL_10:
      [(SBCoverSheetPresentationManager *)self setCoverSheetPresented:0 animated:1 withCompletion:0];
      return;
    }

    v9 = [SBApp authenticationController];
    v10 = [v9 hasPasscodeSet];

    v11 = [(SBCoverSheetPresentationManager *)self _isInAlwaysOn];
    if (v10 || !v11)
    {
      goto LABEL_10;
    }
  }
}

- (BOOL)_isInAlwaysOn
{
  v2 = +[SBBacklightController sharedInstanceIfExists];
  v3 = [v2 backlightState] == 3;

  return v3;
}

- (void)secureAppOfTypeDidEnd:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = SBLogCoverSheet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SecureApp ended of type: %lu", &v10, 0xCu);
  }

  v6 = [(SBCoverSheetPresentationManager *)self _secureAppTypeGetsCorrectDismissalSemantics:a3];
  v7 = +[SBSecureAppManager sharedInstance];
  v8 = [v7 secureAppAction];
  v9 = [v8 secureAppType];

  if (!v6 && [(SBUILockStateProvider *)self->_uiLockStateProvider isUILocked]&& !v9)
  {
    [(SBCoverSheetPresentationManager *)self setCoverSheetPresented:1 animated:1 withCompletion:0];
  }
}

- (void)assistantDidDisappear:(id)a3 windowScene:(id)a4
{
  v5 = [SBSecureAppManager sharedInstance:a3];
  v6 = [v5 secureAppAction];
  v7 = [v6 secureAppType];

  if ([(SBUILockStateProvider *)self->_uiLockStateProvider isUILocked])
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFFBLL) == 10;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {

    [(SBCoverSheetPresentationManager *)self setCoverSheetPresented:0 animated:1 withCompletion:0];
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v13 = a3;
  v6 = a4;
  lockScreenSettings = self->_lockScreenSettings;
  if (lockScreenSettings == v13)
  {
    if (([v6 isEqualToString:@"unlockRubberBandFeedbackIntensity"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"unlockRubberBandFeedbackInterval"))
    {
      v11 = [(SBCoverSheetPresentationManager *)self _newRubberBandFeedbackGeneratorForSettings:self->_lockScreenSettings];
      rubberBandFeedbackGenerator = self->_rubberBandFeedbackGenerator;
      self->_rubberBandFeedbackGenerator = v11;
    }
  }

  else
  {
    v8 = [(CSLockScreenSettings *)lockScreenSettings dashBoardScrollModifierSettings];

    if (v8 == v13)
    {
      if ([v6 isEqualToString:@"strategy"])
      {
        [(SBCoverSheetPresentationManager *)self _tellDashBoardOurBehaviorChanged];
      }
    }

    else
    {
      v9 = [(CSLockScreenSettings *)self->_lockScreenSettings coverSheetTransitionsSettings];
      v10 = [v9 flyInSettings];

      if (v10 == v13)
      {
        [(SBCoverSheetPresentationManager *)self _updateIconsFlyInWithSettings:v13];
      }
    }
  }
}

- (void)_updateIconsFlyInWithSettings:(id)a3
{
  v4 = a3;
  self->_centerFollowsFinger = [v4 centerFollowsFinger];
  self->_animateIconsOnPresentationToo = [v4 animateIconsOnPresentationToo];
  [v4 iconsFlyInInteractiveResponseMin];
  self->_iconFlyInInteractiveResponseMin = v5;
  [v4 iconsFlyInInteractiveResponseMax];
  self->_iconFlyInInteractiveResponseMax = v6;
  [v4 iconsFlyInInteractiveDampingRatioMin];
  self->_iconFlyInInteractiveDampingRatioMin = v7;
  [v4 iconsFlyInInteractiveDampingRatioMax];
  self->_iconFlyInInteractiveDampingRatioMax = v8;
  [v4 iconsFlyInTension];
  self->_iconFlyInTension = v9;
  [v4 iconsFlyInFriction];
  v11 = v10;

  self->_iconFlyInFriction = v11;
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(SBCoverSheetPresentationManager *)self wantsHomeGestureOwnership])
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  [v7 setActivationPolicyForParticipantsBelow:v8];
  if (![(SBCoverSheetPresentationManager *)self wantsHomeGestureOwnership])
  {
    goto LABEL_22;
  }

  v9 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  if ([v9 isLockScreenShowingDefaultContent])
  {
  }

  else
  {
    v10 = +[SBAssistantController sharedInstanceIfExists];
    v11 = [v10 isVisible];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  v23 = v6;
  v12 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = [v12 sceneHostEnvironmentEntriesForBacklightSession];
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = [*(*(&v24 + 1) + 8 * i) bundleIdentifier];
        if (v19)
        {
          if (!v16)
          {
            v16 = [MEMORY[0x277CBEB58] set];
          }

          [v16 addObject:v19];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  [v7 setAssociatedBundleIdentifiersToSuppressInSystemAperture:v16];
  v20 = [v12 audioCategoriesDisablingVolumeHUD];
  [v7 setAudioCategoriesDisablingVolumeHUD:v20];

  v6 = v23;
LABEL_22:
  v21 = self->_coverSheetWindow;
  if ([(SBCoverSheetPresentationManager *)self wantsHomeGestureOwnership])
  {
    v22 = ([(SBWindow *)v21 interfaceOrientation]- 3) < 2;
  }

  else
  {
    v22 = 0;
  }

  [v7 setSuppressSystemApertureForSystemChromeSuppression:v22];
  if ([(SBCoverSheetPresentationManager *)self isPresented])
  {
    [v7 setAllowsDimmingWhenForegroundInactive:1];
  }
}

- (void)sceneHandle:(id)a3 didCreateScene:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SBCoverSheetPresentationManager_sceneHandle_didCreateScene___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__SBCoverSheetPresentationManager_sceneHandle_didCreateScene___block_invoke(uint64_t a1)
{
  v2 = [SBApp backlightEnvironmentSessionProvider];
  [v2 invalidateBacklightScenesForProvider:*(a1 + 32)];
}

- (void)sceneHandle:(id)a3 didDestroyScene:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SBCoverSheetPresentationManager_sceneHandle_didDestroyScene___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__SBCoverSheetPresentationManager_sceneHandle_didDestroyScene___block_invoke(uint64_t a1)
{
  v2 = [SBApp backlightEnvironmentSessionProvider];
  [v2 invalidateBacklightScenesForProvider:*(a1 + 32)];
}

- (void)hostableEntityPresenter:(id)a3 didBeginHosting:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SBCoverSheetPresentationManager_hostableEntityPresenter_didBeginHosting___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __75__SBCoverSheetPresentationManager_hostableEntityPresenter_didBeginHosting___block_invoke(uint64_t a1)
{
  v2 = [SBApp backlightEnvironmentSessionProvider];
  [v2 invalidateBacklightScenesForProvider:*(a1 + 32)];
}

- (void)hostableEntityPresenter:(id)a3 didEndHosting:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SBCoverSheetPresentationManager_hostableEntityPresenter_didEndHosting___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __73__SBCoverSheetPresentationManager_hostableEntityPresenter_didEndHosting___block_invoke(uint64_t a1)
{
  v2 = [SBApp backlightEnvironmentSessionProvider];
  [v2 invalidateBacklightScenesForProvider:*(a1 + 32)];
}

- (int64_t)_wallpaperEffectiveInterfaceOrientation
{
  v3 = [SBApp activeInterfaceOrientation];

  return [(SBCoverSheetPresentationManager *)self _wallpaperEffectiveInterfaceOrientationWithFallbackOrientation:v3];
}

- (int64_t)interfaceOrientationForWallpaperController:(id)a3
{
  v4 = [(SBCoverSheetPresentationManager *)self coverSheetWindow];
  v5 = -[SBCoverSheetPresentationManager _wallpaperEffectiveInterfaceOrientationWithFallbackOrientation:](self, "_wallpaperEffectiveInterfaceOrientationWithFallbackOrientation:", [v4 interfaceOrientation]);

  return v5;
}

- (void)_prepareForPresentationTransitionForUserGesture:(BOOL)a3
{
  v3 = a3;
  v5 = SBLogCoverSheet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[SBCoverSheetPresentationManager _prepareForPresentationTransition]", buf, 2u);
  }

  v6 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [(SBCoverSheetPresentationManager *)self _prepareForATransition];
  v8 = [(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController _appearState];
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") & 1) == 0 && !v8)
  {
    v9 = [SBApp activeInterfaceOrientation];
    [v6 setEffectiveInterfaceOrientationOverride:v9];
    [(SBCoverSheetPresentationManager *)self updateInterfaceOrientationToMatchOrientation:v9];
  }

  v10 = [MEMORY[0x277D75418] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if ((v11 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v12 = [WeakRetained homeScreenController];
    v13 = [v12 homeScreenViewController];
    [v13 setAllowIconRotation:0 forReason:@"SBCoverSheetSuspendIconRotationReason"];
  }

  [(SBCoverSheetPresentationManager *)self setActiveInterfaceOrientationLocked:1];
  v14 = +[SBWallpaperController sharedInstance];
  [v14 activateOrientationSource:3];

  v15 = [(SBCoverSheetPresentationManager *)self coverSheetSlidingViewController];
  [v15 bs_beginAppearanceTransition:1 animated:0];

  v16 = [(SBCoverSheetPresentationManager *)self coverSheetSlidingViewController];
  [v16 setDismissGesturesEnabled:1];

  v17 = [(SBCoverSheetPresentationManager *)self suspendWallpaperAnimationAssertion];
  [v17 invalidate];

  v18 = +[SBWallpaperController sharedInstance];
  v19 = [v18 suspendWallpaperAnimationForReason:@"SBCoverSheetSuspendWallpaperAnimationForTransition"];
  [(SBCoverSheetPresentationManager *)self setSuspendWallpaperAnimationAssertion:v19];

  [(SBCoverSheetPresentationManager *)self setParticipantState:2];
  [(SBCoverSheetPresentationManager *)self _tellDashBoardOurAppearanceAndBehaviorChanged];
  v20 = [(SBCoverSheetPresentationManager *)self transitionSettings];
  if ([v20 revealWallpaper])
  {
    v21 = +[SBWallpaperController sharedInstance];
    [v21 setActiveVariant:0];
  }

  if (!v8)
  {
    [(SBCoverSheetPresentationManager *)self _notifyDelegateWillPresent];
    v22 = SBLogTelemetrySignposts();
    if (os_signpost_enabled(v22))
    {
      *v27 = 0;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v22, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_COVERSHEET_TRANSITION", " enableTelemetry=YES  isAnimation=YES ", v27, 2u);
    }

    kdebug_trace();
    v23 = [(SBCoverSheetPresentationManager *)self ppt_transitionBeginsCallback];
    if (v23)
    {
      [(SBCoverSheetPresentationManager *)self setPpt_transitionBeginsCallback:0];
      v23[2](v23);
    }
  }

  v24 = [MEMORY[0x277CCAB98] defaultCenter];
  [v24 postNotificationName:@"SBCoverSheetWillPresentNotification" object:self];

  self->_dismissingCoverSheet = 0;
  [(SBCoverSheetPresentationManager *)self setNeedsFakeStatusBarUpdate:1];
  [(SBCoverSheetPresentationManager *)self _updateWallpaperOverlay];
  if (v3 && [(SBCoverSheetPresentationManager *)self hasBeenDismissedSinceKeybagLock])
  {
    [v6 noteWillPresentForUserGesture];
  }

  else if (self->_shouldDisplayFakeStatusBar)
  {
    v25 = [WeakRetained statusBarManager];
    v26 = [v25 layoutManager];
    [v26 addActiveLayoutLayer:1];
  }

  [(SBCoverSheetPresentationManager *)self _acquireSystemApertureCoverSheetAssertion];
  if (CSFeatureEnabled())
  {
    [(SBCoverSheetPresentationManager *)self setWallpaperFloatingLayerHidden:0];
    [(SBCoverSheetPresentationManager *)self _updateWallpaperOverlayAlpha:0.0];
  }
}

- (void)_acquireSystemApertureCoverSheetAssertion
{
  if (!self->_systemApertureCoverSheetAssertion)
  {
    v6 = [SBApp systemApertureControllerForMainDisplay];
    v4 = [v6 systemApertureRepresentationSuppressionAssertionForCoversheetVisibility];
    systemApertureCoverSheetAssertion = self->_systemApertureCoverSheetAssertion;
    self->_systemApertureCoverSheetAssertion = v4;
  }
}

- (void)_cleanupPresentationTransition
{
  v3 = SBLogCoverSheet();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBCoverSheetPresentationManager _cleanupPresentationTransition]", v25, 2u);
  }

  v4 = 1;
  [(SBCoverSheetPresentationManager *)self _setCoverSheetWindowVisible:1 forReason:@"SBCoverSheetWindowVisibleReasonPresented"];
  [(SBCoverSheetPresentationManager *)self _setSecureAppWindowVisible:0 forReason:@"SBCoverSheetWindowVisibleReasonPresented"];
  [(SBCoverSheetPresentationManager *)self _cleanupATransition];
  if ([(SBCoverSheetPresentationManager *)self hasBeenDismissedSinceKeybagLock])
  {
    v5 = [SBApp authenticationController];
    v4 = [v5 isAuthenticated] ^ 1;
  }

  v6 = [(SBCoverSheetPresentationManager *)self sceneManager];
  [v6 updateSceneManagerForPresented:1 suspendUnderLockEnvironment:v4];

  v7 = [(SBCoverSheetPresentationManager *)self coverSheetSlidingViewController];
  [v7 bs_endAppearanceTransition:1];

  [(SBCoverSheetPresentationManager *)self _notifyDelegateDidPresent];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"SBCoverSheetDidPresentNotification" object:self];

  [(SBCoverSheetPresentationManager *)self _clearSecureAppViewControllersIncludingWindow:1];
  [MEMORY[0x277D75940] _synchronizeDrawing];
  v9 = +[SBWallpaperController sharedInstance];
  [v9 setActiveVariant:0];
  v10 = +[SBWallpaperController sharedInstance];
  [v10 setWindowLevel:*MEMORY[0x277D76EE8] + -15.0];

  self->_shouldDisplayFakeStatusBar = 0;
  [(SBCoverSheetPresentationManager *)self _tellDashBoardOurAppearanceAndBehaviorChanged];
  v11 = [(SBCoverSheetPresentationManager *)self suspendWallpaperAnimationAssertion];
  [v11 invalidate];

  [(SBCoverSheetPresentationManager *)self setSuspendWallpaperAnimationAssertion:0];
  v12 = +[SBAlertItemsController sharedInstance];
  [v12 setForceAlertsToPend:0 forReason:@"SBCoverSheetForceAlertItemsToPendReason"];

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v14 = [(SBCoverSheetPresentationManager *)self keyboardFocusAssertion];
  if (!v14)
  {
    v15 = [(SBCoverSheetPresentationManager *)self mainWorkspace];
    v16 = [v15 keyboardFocusController];
    v17 = +[SBKeyboardFocusLockReason coverSheet];
    v18 = [v16 focusLockSpringBoardWindowScene:WeakRetained forReason:v17];
    [(SBCoverSheetPresentationManager *)self setKeyboardFocusAssertion:v18];
  }

  if ((CSFeatureEnabled() & 1) == 0)
  {
    v19 = [SBFloatingDockBehaviorAssertion alloc];
    v20 = [WeakRetained floatingDockController];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [(SBFloatingDockBehaviorAssertion *)v19 initWithFloatingDockController:v20 visibleProgress:0 animated:0 gesturePossible:11 atLevel:v22 reason:0 withCompletion:0.0];

    [(SBCoverSheetPresentationManager *)self setFloatingDockBehaviorAssertion:v23];
  }

  v24 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  [v24 setCoverSheetIsVisible:1];
}

- (void)_prepareForARubberBandTransitionForSlidingViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_coverSheetSlidingViewController == v4)
  {
    [(SBCoverSheetPresentationManager *)self _prepareForATransition];
    [(SBCoverSheetPresentationManager *)self _tellDashBoardOurAppearanceAndBehaviorChanged];
    v4 = v5;
  }

  [(SBCoverSheetSlidingViewController *)v4 setDismissalSlidingMode:2];
}

- (void)_cleanupARubberBandTransitionForSlidingViewController:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_coverSheetSlidingViewController == v4)
  {
    [(SBCoverSheetPresentationManager *)self _cleanupATransition];
    v4 = v6;
  }

  [(SBCoverSheetSlidingViewController *)v4 setDismissalSlidingMode:1];
  v5 = +[SBAlertItemsController sharedInstance];
  [v5 setForceAlertsToPend:0 forReason:@"SBCoverSheetForceAlertItemsToPendReason"];
}

- (void)_prepareForRubberBandPresentationTransitionForSlidingViewController:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCoverSheet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "_prepareForRubberBandPresentationTransitionForSlidingViewController: %@", &v6, 0xCu);
  }

  [(SBCoverSheetPresentationManager *)self _prepareForARubberBandTransitionForSlidingViewController:v4];
}

- (void)_cleanupRubberBandPresentationTransitionForSlidingViewController:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCoverSheet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "_cleanupRubberBandPresentationTransitionForSlidingViewController: %@", &v6, 0xCu);
  }

  [(SBCoverSheetPresentationManager *)self _cleanupARubberBandTransitionForSlidingViewController:v4];
}

- (void)_prepareForRubberBandDismissalTransitionForSlidingViewController:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCoverSheet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "_prepareForRubberBandDismissalTransitionForSlidingViewController: %@", &v7, 0xCu);
  }

  [(SBCoverSheetPresentationManager *)self _prepareForARubberBandTransitionForSlidingViewController:v4];
  [(UIImpactFeedbackGenerator *)self->_rubberBandFeedbackGenerator prepare];
  self->_rubberBandCleanupNeeded = 1;
  v6 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  [v6 prepareRubberBandTransition];
}

- (void)_cleanupRubberBandDismissalTransitionForSlidingViewController:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCoverSheet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "_cleanupRubberBandDismissalTransitionForSlidingViewController: %@", &v6, 0xCu);
  }

  [(SBCoverSheetPresentationManager *)self _cleanupARubberBandTransitionForSlidingViewController:v4];
}

- (void)_prepareInterstitialTransitionForSlidingViewController:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCoverSheet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "_prepareInterstitialTransitionForSlidingViewController: %@", &v9, 0xCu);
  }

  v6 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v6))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_COVERSHEET_INTERSTITIAL_TRANSITION", " enableTelemetry=YES  isAnimation=YES ", &v9, 2u);
  }

  kdebug_trace();
  [v4 setDismissalSlidingMode:3];
  v7 = [(SBCoverSheetPresentationManager *)self pearlMatchingStateProvider];
  [v7 reset];

  v8 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  [v8 prepareForInterstitialPresentation];
}

- (void)_updateInterstitialTransitionForSlidingViewController:(id)a3 withProgress:(double)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = SBLogCoverSheet();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2048;
    v12 = a4;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "_updateInterstitialTransitionForSlidingViewController: %@ withProgress: %.2f", &v9, 0x16u);
  }

  v8 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  [v8 updateInterstitialPresentationWithProgress:a4];
}

- (void)_cleanupInterstitialTransitionForSlidingViewController:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCoverSheet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "_cleanupInterstitialTransitionForSlidingViewController: %@", &v11, 0xCu);
  }

  [v4 setDismissalSlidingMode:1];
  v6 = [v4 activeGestureRecognizer];
  v7 = [v6 state] == 2;
  v8 = v7 | [(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController mathForGestureRecognizerPointsDown:v6];
  v9 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
  [v9 cleanupInterstitialPresentationToPresented:!v8 inPlace:v7];

  v10 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v10))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_COVERSHEET_INTERSTITIAL_TRANSITION", " enableTelemetry=YES  isAnimation=YES ", &v11, 2u);
  }

  kdebug_trace();
}

- (BOOL)_performInterstitialPresentationIfNeeded:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!CSFeatureEnabled())
  {
    v5 = 0;
    goto LABEL_17;
  }

  v5 = 1;
  if (!self->_isPresentingInterstitial)
  {
    self->_isPresentingInterstitial = 1;
    v6 = SBLogCoverSheet();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "_performInterstitialPresentationIfNeeded: %@", buf, 0xCu);
    }

    v7 = [(SBCoverSheetPresentationManager *)self _isEffectivelyLocked];
    v8 = [(SBCoverSheetPresentationManager *)self _isGoingToSecureAppForSlidingViewController:v4];
    v9 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    v10 = ([v9 isPasscodeLockVisible] & 1) == 0 && v7 && !v8;

    v11 = [(SBCoverSheetPresentationManager *)self coverSheetViewController];
    v12 = [v11 isPasscodeLockVisible];

    if (v7)
    {
      v5 = v12 | !v8;
      if (!v10)
      {
LABEL_11:
        self->_isPresentingInterstitial = 0;
LABEL_14:
        v15 = SBLogTelemetrySignposts();
        if (os_signpost_enabled(v15))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_21ED4E000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_COVERSHEET_INTERSTITIAL_TRANSITION", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
        }

        kdebug_trace();
        goto LABEL_17;
      }
    }

    else
    {
      v5 = 0;
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    v13 = [(SBCoverSheetPresentationManager *)self pearlMatchingStateProvider];
    [v13 reset];

    v14 = *MEMORY[0x277D76620];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __76__SBCoverSheetPresentationManager__performInterstitialPresentationIfNeeded___block_invoke;
    v17[3] = &unk_2783A8C18;
    v17[4] = self;
    [v14 _performBlockAfterCATransactionCommits:v17];
    goto LABEL_14;
  }

LABEL_17:

  return v5 & 1;
}

void __76__SBCoverSheetPresentationManager__performInterstitialPresentationIfNeeded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coverSheetViewController];
  [v2 performInterstitialPresentationAnimated:1];

  *(*(a1 + 32) + 16) = 0;
}

- (void)_prepareForCoverSheetRemovalWithVelocity:(double)a3
{
  v5 = [(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController _appearState];
  [(SBCoverSheetPresentationManager *)self _prepareForATransition];
  [(SBCoverSheetPresentationManager *)self _setCoverSheetWindowVisible:0 forReason:@"SBCoverSheetWindowVisibleReasonPresented"];
  v6 = [(SBCoverSheetPresentationManager *)self coverSheetSlidingViewController];
  [v6 bs_beginAppearanceTransition:0 animated:0];

  [MEMORY[0x277D75940] _synchronizeDrawing];
  v7 = [(SBCoverSheetPresentationManager *)self transitionSettings];
  v8 = [v7 revealWallpaper];

  if ((v8 & 1) == 0)
  {
    v9 = +[SBWallpaperController sharedInstance];
    [v9 setActiveVariant:1];
  }

  v10 = [(SBCoverSheetPresentationManager *)self sceneManager];
  [v10 updateSceneManagerForPresented:0 suspendUnderLockEnvironment:0];

  if (v5 == 2)
  {
    [(SBCoverSheetPresentationManager *)self _notifyDelegateWillDismissWithVelocity:a3];
    v11 = SBLogTelemetrySignposts();
    if (os_signpost_enabled(v11))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_COVERSHEET_TRANSITION", " enableTelemetry=YES  isAnimation=YES ", v21, 2u);
    }

    kdebug_trace();
    v12 = [(SBCoverSheetPresentationManager *)self ppt_transitionBeginsCallback];
    if (v12)
    {
      [(SBCoverSheetPresentationManager *)self setPpt_transitionBeginsCallback:0];
      v12[2](v12);
    }
  }

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 postNotificationName:@"SBCoverSheetWillDismissNotification" object:self];

  if ((CSFeatureEnabled() & 1) == 0)
  {
    [(SBCoverSheetPresentationManager *)self setFloatingDockBehaviorAssertion:0];
  }

  v14 = [(SBCoverSheetPresentationManager *)self suspendWallpaperAnimationAssertion];
  [v14 invalidate];

  v15 = +[SBWallpaperController sharedInstance];
  v16 = [v15 suspendWallpaperAnimationForReason:@"SBCoverSheetSuspendWallpaperAnimationForTransition"];
  [(SBCoverSheetPresentationManager *)self setSuspendWallpaperAnimationAssertion:v16];

  self->_preparingToDismissCoverSheet = 1;
  [(SBCoverSheetPresentationManager *)self _updateShouldDisplayFakeStatusBarInVisibleTransition:0];
  [(SBCoverSheetPresentationManager *)self _tellDashBoardOurAppearanceAndBehaviorChanged];
  v17 = +[SBWallpaperController sharedInstance];
  [v17 setWindowLevel:*MEMORY[0x277D772B0] + -3.0];

  *&self->_preparingToDismissCoverSheet = 256;
  [(SBCoverSheetPresentationManager *)self _updateWallpaperOverlay];
  v18 = CSFeatureEnabled();
  if (v5 == 2 && (v18 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_transitionSettings);
    if ([WeakRetained iconsFlyIn])
    {
      v20 = [(SBCoverSheetPresentationManager *)self hasBeenDismissedSinceKeybagLock];

      if (!v20)
      {
        [(SBCoverSheetPresentationManager *)self _prepareIconAnimatorForPresenting:0 withVelocity:0.0];
      }
    }

    else
    {
    }
  }
}

- (void)_prepareForTransitionToSecureApp
{
  [(SBCoverSheetPresentationManager *)self _prepareSecureAppWindowForDisplay];
  v3 = SBCoverSheetTransitionTypeForCurrentState();

  [(SBCoverSheetPresentationManager *)self setTransitionType:v3];
}

- (void)_prepareForSecureAppTransitionToPresented:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (CSFeatureEnabled() && (v5 || self->_secureAppSlidingViewController))
  {
    [(SBCoverSheetPresentationManager *)self _prepareSecureAppWindowForDisplay];
    if (v4)
    {
      v7 = [(SBCoverSheetPresentationManager *)self secureAppWindow];
      v8 = v7;
      v9 = 1.0;
      if (v5)
      {
        v9 = 0.0;
      }

      [v7 setAlpha:v9];
    }

    v10 = SBCoverSheetTransitionTypeForCurrentState();

    [(SBCoverSheetPresentationManager *)self setTransitionType:v10];
  }
}

- (void)_updateTransitionToSecureAppWithProgress:(double)a3
{
  if (CSFeatureEnabled())
  {
    v5 = [(SBCoverSheetPresentationManager *)self secureAppWindow];
    [v5 setAlpha:a3];
  }
}

- (void)_finishSecureAppTransitionToPresented:(BOOL)a3
{
  v3 = a3;
  if (CSFeatureEnabled())
  {
    v5 = [(SBCoverSheetPresentationManager *)self secureAppWindow];
    v7 = v5;
    v6 = 0.0;
    if (v3)
    {
      v6 = 1.0;
    }

    [v5 setAlpha:v6];
  }
}

- (void)noteScreenDidTurnOff
{
  [(SBCoverSheetPresentationManager *)self setHasBeenDismissedSinceKeybagLock:0];
  v3 = [(SBCoverSheetPresentationManager *)self sceneManager];
  [v3 updateSceneManagerForPresented:1 suspendUnderLockEnvironment:1];

  [(SBCoverSheetPresentationManager *)self _setOrientationUpdatesDeferred:0];
  if ([(SBCoverSheetPresentationManager *)self transitionType])
  {

    [(SBCoverSheetPresentationManager *)self _setCoverSheetPresented:1 forcePresented:1 animated:0 withCompletion:0];
  }
}

- (void)_notifyDelegateWillPresent
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __61__SBCoverSheetPresentationManager__notifyDelegateWillPresent__block_invoke;
  v2[3] = &unk_2783A8C18;
  v2[4] = self;
  [(SBCoverSheetPresentationManager *)self _enqueueBlock:v2 withName:@"willPresent"];
}

void __61__SBCoverSheetPresentationManager__notifyDelegateWillPresent__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 lockScreenViewControllerWillPresent];
}

- (void)_notifyDelegateDidPresent
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __60__SBCoverSheetPresentationManager__notifyDelegateDidPresent__block_invoke;
  v2[3] = &unk_2783A8C18;
  v2[4] = self;
  [(SBCoverSheetPresentationManager *)self _enqueueBlock:v2 withName:@"didPresent"];
}

void __60__SBCoverSheetPresentationManager__notifyDelegateDidPresent__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 lockScreenViewControllerDidPresent];
}

- (void)_notifyDelegateWillDismissWithVelocity:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__SBCoverSheetPresentationManager__notifyDelegateWillDismissWithVelocity___block_invoke;
  v3[3] = &unk_2783A8BC8;
  v3[4] = self;
  *&v3[5] = a3;
  [(SBCoverSheetPresentationManager *)self _enqueueBlock:v3 withName:@"willDismiss"];
}

void __74__SBCoverSheetPresentationManager__notifyDelegateWillDismissWithVelocity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 lockScreenViewControllerWillDismissWithVelocity:*(a1 + 40)];
}

- (void)_notifyDelegateRequestsUnlock
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __64__SBCoverSheetPresentationManager__notifyDelegateRequestsUnlock__block_invoke;
  v2[3] = &unk_2783A8C18;
  v2[4] = self;
  [(SBCoverSheetPresentationManager *)self _enqueueBlock:v2 withName:@"requestsUnlock"];
}

void __64__SBCoverSheetPresentationManager__notifyDelegateRequestsUnlock__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 lockScreenViewControllerRequestsUnlock];
}

- (void)_notifyDelegateWillPerformTransitionWithFinalValue:(double)a3 forUserGesture:(BOOL)a4 withVelocity:(double)a5 animated:(BOOL)a6
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __123__SBCoverSheetPresentationManager__notifyDelegateWillPerformTransitionWithFinalValue_forUserGesture_withVelocity_animated___block_invoke;
  v6[3] = &unk_2783B6E70;
  v6[4] = self;
  v7 = a4;
  *&v6[5] = a3;
  *&v6[6] = a5;
  v8 = a6;
  [(SBCoverSheetPresentationManager *)self _enqueueBlock:v6 withName:@"willPerformTransition"];
}

void __123__SBCoverSheetPresentationManager__notifyDelegateWillPerformTransitionWithFinalValue_forUserGesture_withVelocity_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 lockScreenViewControllerWillPerformTransitionToFinalValue:*(a1 + 56) forUserGesture:*(a1 + 57) withVelocity:*(a1 + 40) animated:*(a1 + 48)];
}

- (void)_enqueueBlock:(id)a3 withName:(id)a4
{
  v5 = [MEMORY[0x277CF0C30] eventWithName:a4 handler:a3];
  [(BSEventQueue *)self->_lockUnlockQueue executeOrInsertEvent:v5 atPosition:1];
}

- (void)setWantsHomeGestureOwnership:(BOOL)a3
{
  if (self->_wantsHomeGestureOwnership != a3)
  {
    self->_wantsHomeGestureOwnership = a3;
    if (a3)
    {
      [(SBCoverSheetPresentationManager *)self _requestHomeGestureOwnership];
    }

    else
    {
      [(SBCoverSheetPresentationManager *)self _relinquishHomeGestureOwnership];
    }
  }
}

- (void)_requestHomeGestureOwnership
{
  v2 = [(SBCoverSheetPresentationManager *)self zStackParticipant];
  [v2 setNeedsUpdatePreferencesWithReason:@"requesting home gesture ownership"];
}

- (void)_setOrientationUpdatesDeferred:(BOOL)a3
{
  v3 = a3;
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") & 1) == 0)
  {
    deferOrientationUpdatesAssertion = self->_deferOrientationUpdatesAssertion;
    if ((((deferOrientationUpdatesAssertion == 0) ^ v3) & 1) == 0)
    {
      if (v3)
      {
        v6 = [SBApp deviceOrientationUpdateDeferralAssertionWithReason:@"SBCoverSheetLockOrientationForInteractiveTransition"];
      }

      else
      {
        [(BSInvalidatable *)deferOrientationUpdatesAssertion invalidate];
        v6 = 0;
      }

      v7 = self->_deferOrientationUpdatesAssertion;
      self->_deferOrientationUpdatesAssertion = v6;
    }
  }
}

- (void)_setCoverSheet:(BOOL)a3 windowVisible:(BOOL)a4 forReason:(id)a5
{
  v5 = a4;
  v6 = a3;
  v36 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (v6)
  {
    v9 = [(SBCoverSheetPresentationManager *)self coverSheetWindow];
    v10 = 136;
  }

  else
  {
    v9 = [(SBCoverSheetPresentationManager *)self secureAppWindow];
    v10 = 144;
  }

  v11 = *(&self->super.isa + v10);
  v12 = v11;
  if (v5)
  {
    v13 = [v11 count];
    [v12 addObject:v8];
    v14 = SBLogCoverSheet();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [SBCoverSheetPresentationManager _setCoverSheet:windowVisible:forReason:];
    }

    v15 = SBLogCoverSheet();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(SBCoverSheetPresentationManager *)v12 _setCoverSheet:v15 windowVisible:v16 forReason:v17, v18, v19, v20, v21];
    }

    if (!v13)
    {
      v22 = SBLogCoverSheet();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = @"Secure App";
        if (v6)
        {
          v23 = @"CoverSheet";
        }

        v34 = 138543362;
        v35 = v23;
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_INFO, "Making %{public}@ Window visible", &v34, 0xCu);
      }

      [v9 makeKeyAndVisible];
    }
  }

  else
  {
    [v11 removeObject:v8];
    v24 = SBLogCoverSheet();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [SBCoverSheetPresentationManager _setCoverSheet:windowVisible:forReason:];
    }

    v25 = SBLogCoverSheet();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [(SBCoverSheetPresentationManager *)v12 _setCoverSheet:v25 windowVisible:v26 forReason:v27, v28, v29, v30, v31];
    }

    if (![v12 count])
    {
      v32 = SBLogCoverSheet();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = @"Secure App";
        if (v6)
        {
          v33 = @"CoverSheet";
        }

        v34 = 138543362;
        v35 = v33;
        _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_INFO, "Making %{public}@ Window hidden", &v34, 0xCu);
      }

      [v9 resignAsKeyWindow];
      [v9 setHidden:1];
    }
  }
}

- (void)_updateVisibilityOfWindow:(id)a3 forReasons:(id)a4
{
  v5 = a3;
  if ([a4 count])
  {
    [v5 makeKeyAndVisible];
  }

  else
  {
    [v5 setHidden:1];
  }
}

- (void)_prepareCoverSheetWindowForDisplay
{
  v5 = [(SBCoverSheetPresentationManager *)self coverSheetSlidingViewController];
  v3 = [v5 contentViewController];

  if (v3)
  {
    v4 = [(SBCoverSheetPresentationManager *)self coverSheetWindow];
    [v4 setRootViewController:v5];
  }
}

- (void)_prepareSecureAppWindowForDisplay
{
  v3 = +[SBSecureAppManager sharedInstance];
  v4 = [v3 hasSecureApp];

  if (v4)
  {
    v5 = [(SBCoverSheetPresentationManager *)self secureAppSlidingViewController];
    if (v5)
    {
      v6 = [(SBCoverSheetPresentationManager *)self secureAppWindow];
      [v6 setRootViewController:v5];

      v7 = [v5 view];
      [v7 layoutIfNeeded];

      [(SBCoverSheetPresentationManager *)self _setSecureAppWindowVisible:1 forReason:@"SBCoverSheetWindowVisibleReasonPresented"];
      [(SBCoverSheetSecureAppEnvironmentViewController *)self->_secureAppEnvironmentViewController requestHomeGestureOwnership];
    }
  }

  self->_pendingClearSecureAppViewControllers = 0;
}

- (void)_updateProximitySensorState
{
  if ([(SBCoverSheetPresentationManager *)self isPresented])
  {
    v3 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment proximityBehaviorProvider];
    v4 = [v3 expectsFaceContact];
  }

  else
  {
    v4 = 0;
  }

  v5 = [SBApp proximitySensorManager];
  [v5 client:@"CoverSheet" wantsProximityDetectionEnabled:v4];
}

- (void)_authenticationChanged:(id)a3
{
  v4 = SBApp;
  v5 = a3;
  v6 = [v4 authenticationController];
  v7 = [v6 isAuthenticatedCached];

  v8 = [v5 userInfo];

  v9 = [v8 bs_BOOLForKey:*MEMORY[0x277D66080]];
  if ([(SBCoverSheetSlidingViewController *)self->_coverSheetSlidingViewController dismissalSlidingMode]!= 1 && v7 && (v9 & 1) == 0)
  {
    v10 = SBLogCoverSheet();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "Authentication state changed while in a non-tracking dismissal transition, re-preparing for dismissal.", v12, 2u);
    }

    [(SBCoverSheetPresentationManager *)self coverSheetSlidingViewController:self->_coverSheetSlidingViewController prepareForDismissalTransitionForReversingTransition:0 forUserGesture:0];
  }

  if (!(v7 & 1 | ((v9 & 1) == 0)))
  {
    [(SBCoverSheetPresentationManager *)self setHasBeenDismissedSinceKeybagLock:0];
    if (![(SBCoverSheetPresentationManager *)self isTransitioning]&& ([(SBUILockStateProvider *)self->_uiLockStateProvider isLockScreenPresentationPending]& 1) == 0)
    {
      v11 = [(SBCoverSheetPresentationManager *)self sceneManager];
      [v11 updateSceneManagerForPresented:1 suspendUnderLockEnvironment:1];
    }
  }
}

- (void)_restartStartupTransitionBegan:(id)a3
{
  v6 = [a3 object];
  v4 = [v6 startupTransition];
  v5 = [v4 destination];

  if (v5 == 2)
  {
    [(SBCoverSheetPresentationManager *)self setHasBeenDismissedSinceBoot:1];
    [(SBCoverSheetPresentationManager *)self setHasBeenDismissedSinceKeybagLock:1];
  }
}

- (id)_impactFeedbackGeneratorConfigurationForStyle:(int64_t)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
LABEL_7:
      v3 = [MEMORY[0x277D76020] defaultConfiguration];
      goto LABEL_11;
    }

    v3 = [MEMORY[0x277D76020] lightConfiguration];
  }

  else
  {
    switch(a3)
    {
      case 2:
        v3 = [MEMORY[0x277D76020] strongConfiguration];
        break;
      case 3:
        v3 = [MEMORY[0x277D76020] softConfiguration];
        break;
      case 4:
        v3 = [MEMORY[0x277D76020] rigidConfiguration];
        break;
      default:
        goto LABEL_7;
    }
  }

LABEL_11:

  return v3;
}

- (id)_newRubberBandFeedbackGeneratorForSettings:(id)a3
{
  v4 = a3;
  v5 = -[SBCoverSheetPresentationManager _impactFeedbackGeneratorConfigurationForStyle:](self, "_impactFeedbackGeneratorConfigurationForStyle:", [v4 unlockRubberBandFeedbackIntensity]);
  v6 = [v5 feedback];
  v7 = [v6 copy];

  if (v7)
  {
    v8 = [MEMORY[0x277D75F58] feedbackPattern];
    [v8 addFeedback:v7 atTime:0.0];
    [v4 unlockRubberBandFeedbackInterval];
    [v8 addFeedback:v7 atTime:?];
    [v5 setFeedback:v8];
  }

  v9 = [objc_alloc(MEMORY[0x277D755F0]) initWithConfiguration:v5];

  return v9;
}

- (void)_noteCoverSheetDismissingByUserGesture
{
  v2 = +[SBDefaults localDefaults];
  v4 = [v2 lockScreenDefaults];

  v3 = [v4 gesturalDismissalCount];
  if (v3 <= 9)
  {
    [v4 setGesturalDismissalCount:v3 + 1];
  }
}

- (BOOL)_isGoingToSecureAppForSlidingViewController:(id)a3
{
  coverSheetSlidingViewController = self->_coverSheetSlidingViewController;
  v6 = +[SBSecureAppManager sharedInstance];
  if ([v6 hasSecureApp])
  {
    v7 = 0;
  }

  else
  {
    v7 = ![(SBCoverSheetPresentationManager *)self isInSecureApp];
  }

  v8 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
  v9 = [v8 isProcessingUnlockAttempt];

  if (coverSheetSlidingViewController != a3 || (v9 & 1) != 0 || (v7 & 1) != 0)
  {
    return 0;
  }

  return [(SBCoverSheetPresentationManager *)self _isEffectivelyLocked];
}

- (void)_prepareIconAnimatorForPresenting:(BOOL)a3 withVelocity:(double)a4
{
  v5 = a3;
  v46 = *MEMORY[0x277D85DE8];
  if (SBReduceMotion())
  {
    v7 = SBLogCoverSheet();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Not preparing icon animator due to reduced motion", buf, 2u);
    }

    return;
  }

  if (self->_iconAnimator)
  {
    v8 = SBLogCoverSheet();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Reusing icon animator due to reversed in progress animation", buf, 2u);
    }

    [(SBCoverSheetIconFlyInAnimator *)self->_iconAnimator prepareWithVelocity:!v5 forFlyIn:a4];
    return;
  }

  [(SBCoverSheetPresentationManager *)self _cleanupIconAnimator];
  v9 = SBLogCoverSheet();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Preparing for icon animation", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v11 = [WeakRetained homeScreenController];
  v12 = [v11 iconManager];
  v41 = [v11 _openFolderController];
  if (CSFeatureEnabled())
  {
    v13 = [WeakRetained modalLibraryController];
    v14 = v13;
    if (v13)
    {
      if ([v13 isPresentingLibrary])
      {
        v15 = [v14 libraryViewController];
        v16 = objc_opt_class();
        v17 = v15;
        if (v16)
        {
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }

        v21 = v18;

        goto LABEL_24;
      }
    }

    else if ([v12 isMainDisplayLibraryViewVisible])
    {
      v17 = [v12 overlayLibraryViewController];
      v20 = objc_opt_class();
      v21 = __BSSafeCast(v17, v20);
LABEL_24:

LABEL_25:
      v22 = [v21 podFolderViewController];
      if (v22)
      {
        [v21 dismissSearch];
        if ([v21 isPresentingFolder])
        {
          [v21 popNestedViewControllerAnimated:0 withCompletion:0];
        }
      }

      v23 = objc_opt_class();
      v24 = v22;
      if (v23)
      {
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = [v11 _currentFolderController];
      }

      v19 = v27;

      goto LABEL_37;
    }

    v21 = 0;
    goto LABEL_25;
  }

  v19 = [v11 _currentFolderController];
LABEL_37:
  v40 = WeakRetained;
  if (v41)
  {
    [v12 closeFolderAnimated:0 withCompletion:0];
  }

  v28 = [v11 _rootFolderController];
  [v28 dismissSpotlightAnimated:0 completionHandler:0];
  v29 = MEMORY[0x277D75D18];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __82__SBCoverSheetPresentationManager__prepareIconAnimatorForPresenting_withVelocity___block_invoke;
  v42[3] = &unk_2783A8C18;
  v30 = v12;
  v43 = v30;
  [v29 performWithoutAnimation:v42];
  v31 = [[SBCoverSheetIconFlyInAnimator alloc] initWithFolderController:v19];
  iconAnimator = self->_iconAnimator;
  self->_iconAnimator = v31;

  v33 = [MEMORY[0x277D661A0] rootSettings];
  v34 = [v33 iconAnimationSettings];
  v35 = [v34 unlockSettings];
  v36 = [v35 copy];

  [(SBIconAnimator *)self->_iconAnimator setSettings:v36];
  [(SBCoverSheetIconFlyInAnimator *)self->_iconAnimator prepareWithVelocity:!v5 forFlyIn:a4];
  if (v5)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.0;
  }

  [(SBCenterIconZoomAnimator *)self->_iconAnimator setFraction:1.0 - v37 withCenter:*&SBCoverSheetIconFlyInDefaultCenter, unk_27CF03CB0];
  [(SBCoverSheetPresentationManager *)self _animateForProgress:v37];
  [(SBCoverSheetIconFlyInAnimator *)self->_iconAnimator setIconSpreadFraction:v37];
  [(SBCoverSheetPresentationManager *)self _setTransitionProgress:0 animated:0 gestureActive:0 coverSheetProgress:v37 completion:0.0];
  self->_iconAnimatorNeedsAnimating = 1;
  v38 = dispatch_group_create();
  v39 = SBLogCoverSheet();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v45 = v38;
    _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_DEFAULT, "Creating completion group for icon animation: %p", buf, 0xCu);
  }

  [(SBCoverSheetPresentationManager *)self setIconAnimatorCompletionGroup:v38];
}

- (void)_animateForProgress:(double)a3
{
  v29[1] = *MEMORY[0x277D85DE8];
  if (CSFeatureEnabled())
  {
    v4 = [(SBCenterIconZoomAnimator *)self->_iconAnimator folderController];
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      v7 = (objc_opt_isKindOfClass() & 1) != 0 ? v6 : 0;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_windowScene);
      v10 = [WeakRetained modalLibraryController];
      v11 = v10;
      if (v10 && [v10 isPresentingLibrary])
      {
        v12 = [v11 libraryViewController];
        v13 = objc_opt_class();
        v14 = v12;
        if (v13)
        {
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }

        v24 = v15;
        v19 = v14;
      }

      else
      {
        v16 = [WeakRetained homeScreenController];
        v17 = [v16 iconManager];
        v18 = [v17 isMainDisplayLibraryViewVisible];

        if (!v18)
        {
          v24 = 0;
LABEL_25:
          v25 = [v24 containerViewController];
          v26 = [v25 searchBar];

          if (v26)
          {
            iconAnimator = self->_iconAnimator;
            v29[0] = v26;
            v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
            [(SBCoverSheetIconFlyInAnimator *)iconAnimator setFractionForAlphaFadeOfViews:v28];
          }

          return;
        }

        v19 = [WeakRetained homeScreenController];
        v14 = [v19 iconManager];
        v20 = [v14 overlayLibraryViewController];
        v21 = objc_opt_class();
        v22 = v20;
        if (v21)
        {
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;
      }

      goto LABEL_25;
    }
  }
}

- (BOOL)_isIconFlyInAnimationAllowed
{
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 lockScreenDefaults];

  v4 = [v3 disableIconFlyInAnimation];
  v5 = SBLogCoverSheet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBCoverSheetPresentationManager *)v4 _isIconFlyInAnimationAllowed];
  }

  return v4 ^ 1;
}

- (void)_setTransitionProgress:(double)a3 animated:(BOOL)a4 gestureActive:(BOOL)a5 coverSheetProgress:(double)a6 completion:(id)a7
{
  v7 = a5;
  v8 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v11 = a7;
  if (v8)
  {
    v12 = SBLogDashBoardTelemetrySignposts();
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_ICON_FLY_IN_ANIMATION", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
    }

    kdebug_trace();
    iconFlyInFriction = 0.0;
    v57 = 0.0;
    if (v7)
    {
      convertDampingRatioAndResponseToTensionAndFriction();
    }

    else
    {
      iconFlyInTension = self->_iconFlyInTension;
      iconFlyInFriction = self->_iconFlyInFriction;
      v57 = iconFlyInTension;
    }

    v14 = [(SBCoverSheetPresentationManager *)self iconAnimatorCompletionGroup];
    dispatch_group_enter(v14);
    v15 = SBLogCoverSheet();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v14;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Entering completion group %p for icon animation", buf, 0xCu);
    }

    v16 = [(SBCoverSheetPresentationManager *)self iconAnimatorCompletionBlock];
    v17 = v16 == 0;

    if (v17)
    {
      objc_initWeak(buf, self);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke;
      block[3] = &unk_2783B0E88;
      block[4] = self;
      objc_copyWeak(&v55, buf);
      v18 = dispatch_block_create(0, block);
      [(SBCoverSheetPresentationManager *)self setIconAnimatorCompletionBlock:v18];

      objc_destroyWeak(&v55);
      objc_destroyWeak(buf);
    }

    dispatch_group_enter(v14);
    v53[6] = 0;
    v53[7] = 0;
    convertDampingRatioAndResponseToTensionAndFriction();
    v19 = MEMORY[0x277D75D18];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_230;
    v53[3] = &unk_2783A8BC8;
    v53[4] = self;
    *&v53[5] = a3;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_3;
    v51[3] = &unk_2783AE4B8;
    v20 = v14;
    v52 = v20;
    [v19 _animateUsingSpringWithTension:0 friction:v53 interactive:v51 animations:0.0 completion:0.0];
    v21 = MEMORY[0x277D75D18];
    v23 = iconFlyInFriction;
    v22 = v57;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_4;
    v49[3] = &unk_2783B1B18;
    v49[4] = self;
    v50 = v7;
    *&v49[5] = a3;
    *&v49[6] = v57;
    *&v49[7] = iconFlyInFriction;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_6;
    v46[3] = &unk_2783AE668;
    v24 = v20;
    v47 = v24;
    v25 = v11;
    v48 = v25;
    [v21 _animateUsingSpringWithTension:0 friction:v49 interactive:v46 animations:v22 completion:v23];
    v26 = CSFeatureEnabled();
    v27 = [(SBCoverSheetPresentationManager *)self _isIconFlyInAnimationAllowed];
    if (self->_iconsIgnoreNextFlyRequest)
    {
      v27 = 0;
      self->_iconsIgnoreNextFlyRequest = 0;
    }

    IsZero = BSFloatIsZero();
    v29 = [(SBCoverSheetPresentationManager *)self _isInAlwaysOn];
    v30 = [(CSCoverSheetFlyInSettings *)self->_flyInSettings animatesFlyOut];
    v31 = [(CSCoverSheetFlyInSettings *)self->_flyInSettings animatesFlyOutToAOD];
    if (v29)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    if (v26 & v27) == 1 && ((IsZero ^ 1 | v32))
    {
      [(SBCoverSheetIconFlyInAnimator *)self->_iconAnimator animateZPositionsToFraction:v24 completionGroup:v25 completion:a3];
      dispatch_group_enter(v24);
      v33 = SBLogCoverSheet();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v24;
        _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_DEFAULT, "Entering completion group %p for icon spread portion of icon animation", buf, 0xCu);
      }

      flyInSettings = self->_flyInSettings;
      if (IsZero)
      {
        [(CSCoverSheetFlyInSettings *)flyInSettings iconsFlyOutResponse];
      }

      else
      {
        [(CSCoverSheetFlyInSettings *)flyInSettings iconsFlyInResponse];
      }

      *buf = 0;
      v45[6] = 0;
      convertDampingRatioAndResponseToTensionAndFriction();
      v36 = MEMORY[0x277D75D18];
      v37 = *buf;
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_232;
      v45[3] = &unk_2783A8BC8;
      v45[4] = self;
      *&v45[5] = a3;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_3_234;
      v43[3] = &unk_2783AE4B8;
      v44 = v24;
      [v36 _animateUsingSpringWithTension:0 friction:v45 interactive:v43 animations:v37 completion:0.0];
    }

    else if (!((IsZero ^ 1 | v32) & 1 | ((v26 & v27 & 1) == 0)))
    {
      v35 = MEMORY[0x277D75D18];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_235;
      v39[3] = &unk_2783AB780;
      v39[4] = self;
      v42 = a3;
      v40 = v24;
      v41 = v25;
      [v35 performWithoutAnimation:v39];
    }
  }

  else
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_2_236;
    v38[3] = &unk_2783A8BC8;
    v38[4] = self;
    *&v38[5] = a3;
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v38];
  }
}

void __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SBLogDashBoardTelemetrySignposts();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_ICON_FLY_IN_ANIMATION", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
  }

  kdebug_trace();
  v3 = SBLogCoverSheet();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 256);
    *buf = 134217984;
    v9 = v4;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Running completion for icon animation group %p", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIconAnimatorCompletionGroup:0];
  v6 = dispatch_time(0, 100000000);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_229;
  v7[3] = &unk_2783A92D8;
  v7[4] = *(a1 + 32);
  v7[5] = WeakRetained;
  dispatch_after(v6, MEMORY[0x277D85CD0], v7);
}

uint64_t __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_229(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogCoverSheet();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 256);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up icon animator for icon animation group %p", &v5, 0xCu);
  }

  return [*(a1 + 40) _cleanupIconAnimator];
}

uint64_t __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_230(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(30.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_2;
  v4[3] = &unk_2783A8BC8;
  v4[4] = *(a1 + 32);
  v4[5] = *(a1 + 40);
  return [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114125 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

uint64_t __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v8 = CAFrameRateRangeMake(30.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_5;
  v4[3] = &unk_2783B1B18;
  v4[4] = *(a1 + 32);
  v7 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  return [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114125 updateReason:v4 animations:{*&v8.minimum, *&v8.maximum, *&v8.preferred}];
}

void __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _animateForProgress:*(a1 + 40)];
  if ((*(a1 + 64) & 1) == 0)
  {
    v2 = +[SBWallpaperController sharedInstance];
    [v2 updateWallpaperAnimationWithIconFlyInTension:*(a1 + 48) friction:*(a1 + 56)];
  }
}

uint64_t __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_6(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  dispatch_group_leave(*(a1 + 32));
  v2 = SBLogCoverSheet();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Leaving completion group %p for icon animation", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_232(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(30.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_2_233;
  v4[3] = &unk_2783A8BC8;
  v4[4] = *(a1 + 32);
  v4[5] = *(a1 + 40);
  return [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114125 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_3_234(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  dispatch_group_leave(*(a1 + 32));
  v2 = SBLogCoverSheet();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Leaving completion group %p for icon spread portion of icon animation", &v4, 0xCu);
  }
}

uint64_t __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_235(uint64_t a1)
{
  [*(*(a1 + 32) + 248) animateZPositionsToFraction:*(a1 + 40) completionGroup:*(a1 + 48) completion:*(a1 + 56)];
  v2 = *(*(a1 + 32) + 248);
  v3 = *(a1 + 56);

  return [v2 setIconSpreadFraction:v3];
}

uint64_t __111__SBCoverSheetPresentationManager__setTransitionProgress_animated_gestureActive_coverSheetProgress_completion___block_invoke_2_236(uint64_t a1)
{
  [*(*(a1 + 32) + 248) setFraction:1.0 - *(a1 + 40) withCenter:{*&SBCoverSheetIconFlyInDefaultCenter, unk_27CF03CB0}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _animateForProgress:v3];
}

- (void)setWallpaperFloatingLayerHidden:(BOOL)a3
{
  if (self->_wallpaperFloatingLayerHidden != a3)
  {
    self->_wallpaperFloatingLayerHidden = a3;
    [(SBCoverSheetPresentationManager *)self _tellDashBoardOurAppearanceChanged];

    [(SBCoverSheetPresentationManager *)self _updateWallpaperOverlay];
  }
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (void)initWithWindowScene:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCoverSheetPresentationManager.m" lineNumber:263 description:{@"Invalid parameter not satisfying: %@", @"windowScene"}];
}

- (void)coverSheetSlidingViewController
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBCoverSheetPresentationManager.m" lineNumber:544 description:@"asking for the coversheet sliding view controller before it was initialized."];

  *a4 = *a3;
}

- (void)coverSheetSlidingViewController:(char)a1 prepareToAnimateIconFlyInForPresenting:(NSObject *)a2 withVelocity:(double)a3 .cold.1(char a1, NSObject *a2, double a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "prepareToAnimateIconFlyInForPresenting:%@ withVelocity:%@", &v7, 0x16u);
}

- (void)coverSheetSlidingViewController:(char)a1 performIconFlyInForPresenting:(NSObject *)a2 animated:beginBlock:endBlock:.cold.1(char a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "animateIconFlyInForPresenting:%@ beginBlock:endBlock:", &v4, 0xCu);
}

- (void)_isIconFlyInAnimationAllowed
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "SBCoverSheetPresentationManager disableIconFlyInAnimation: %{BOOL}u", v2, 8u);
}

@end