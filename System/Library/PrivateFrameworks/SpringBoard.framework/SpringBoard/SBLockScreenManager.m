@interface SBLockScreenManager
+ (id)_sharedInstanceCreateIfNeeded:(BOOL)a3;
- (BOOL)_attemptUnlockWithPasscode:(id)a3 mesa:(BOOL)a4 finishUIUnlock:(BOOL)a5 completion:(id)a6;
- (BOOL)_canAttemptRealUIUnlockIgnoringBacklightNonsenseWithReason:(id *)a3;
- (BOOL)_canHandleTransitionRequest:(id)a3;
- (BOOL)_finishUIUnlockFromSource:(int)a3 withOptions:(id)a4 completion:(id)a5;
- (BOOL)_hasValidLockElementSuppressionAssertion;
- (BOOL)_isPasscodeVisible;
- (BOOL)_isUnlockDisabled;
- (BOOL)_lockUI;
- (BOOL)_needsBiometricAuthenticationToExitLostMode;
- (BOOL)_requiresEmptyLockElementForBacklightState:(int64_t)a3;
- (BOOL)_setPasscodeVisible:(BOOL)a3 animated:(BOOL)a4 ignoringPreflightRequirementsForPresentation:(BOOL)a5;
- (BOOL)_shouldBeInSetupMode;
- (BOOL)_shouldBeShowingLockElement;
- (BOOL)_shouldBeShowingLockElementForBacklightState:(int64_t)a3;
- (BOOL)_shouldBloomForAnyReason;
- (BOOL)_shouldDisconnectCallWhenLockingForActiveAudioRoute;
- (BOOL)_shouldEmulateInterstitialPresentationForAccessibility:(BOOL)a3;
- (BOOL)_shouldHideLockForElementSuppressionAssertion;
- (BOOL)_shouldLockAfterEndingFaceTimeCall;
- (BOOL)_shouldLockAfterEndingTelephonyCall;
- (BOOL)_shouldPlayLockSound;
- (BOOL)_shouldReactivateInCallWakingTheDisplay:(BOOL)a3;
- (BOOL)_shouldUnlockUIOnKeyDownEvent;
- (BOOL)_shouldWakeToInCallForUnlockSource:(int)a3 wakingTheDisplay:(BOOL)a4;
- (BOOL)_shouldWakeToOtherContentForUnlockSource:(int)a3 wakingTheDisplay:(BOOL)a4 stopAfterWakeTo:(BOOL)a5;
- (BOOL)_unlockWithRequest:(id)a3 cancelPendingRequests:(BOOL)a4 completion:(id)a5;
- (BOOL)biometricAuthenticationCoordinator:(id)a3 requestsAuthenticationFeedback:(id)a4;
- (BOOL)biometricAuthenticationCoordinator:(id)a3 requestsUnlockWithIntent:(int)a4;
- (BOOL)biometricAuthenticationCoordinatorShouldWaitToInvalidateMatchingAssertion:(id)a3;
- (BOOL)coverSheetViewControllerHasBeenDismissedSinceKeybagLock:(id)a3;
- (BOOL)coverSheetViewControllerHasSecureApp:(id)a3;
- (BOOL)coverSheetViewControllerIsShowingSecureApp:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)handleKeyHIDEvent:(__IOHIDEvent *)a3;
- (BOOL)handleTransitionRequest:(id)a3;
- (BOOL)hasWakeToContentForInactiveDisplay;
- (BOOL)isLockScreenActive;
- (BOOL)isLockScreenVisible;
- (BOOL)isSupressingLockButton;
- (BOOL)passcodeEntryTransientOverlayViewController:(id)a3 authenticatePasscode:(id)a4;
- (BOOL)passcodeEntryTransientOverlayViewControllerDidDetectBottomFaceOcclusionsSinceScreenOn:(id)a3;
- (BOOL)passcodeEntryTransientOverlayViewControllerDidDetectFaceOcclusionsSinceScreenOn:(id)a3;
- (BOOL)playLockSoundIfPermitted;
- (BOOL)shouldLockUIAfterEndingCall;
- (BOOL)shouldTapToWake;
- (BOOL)unlockUIFromSource:(int)a3 withOptions:(id)a4;
- (BOOL)wouldAttemptToHandleATransitionRequest;
- (CSCoverSheetViewController)coverSheetViewController;
- (SBBiometricAuthenticationIndicatorHost)indicatorHost;
- (SBLockScreenManager)init;
- (SBNotificationDestination)notificationDestination;
- (double)contrastForCurrentWallpaper;
- (id)_hostingWindowScene;
- (id)_newLockScreenEnvironment;
- (id)_statusBarLayoutManager;
- (id)acquireSystemApertureLockElementBloomAssertionWithReason:(id)a3;
- (id)acquireSystemApertureLockElementBloomSuppressionAssertionWithReason:(id)a3;
- (id)acquireSystemApertureLockElementSuppressionAssertionWithReason:(id)a3;
- (id)acquireSystemApertureLockElementVisibleAssertionWithReason:(id)a3;
- (id)averageColorForCurrentWallpaper;
- (id)averageColorForCurrentWallpaperInScreenRect:(CGRect)a3;
- (id)coordinatorRequestedIdleTimerBehavior:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)newLegibilitySettingsProvider;
- (id)rootViewController;
- (id)succinctDescription;
- (void)_activateLockScreenAnimated:(BOOL)a3 animationProvider:(id)a4 automatically:(BOOL)a5 inScreenOffMode:(BOOL)a6 dismissNotificationCenter:(BOOL)a7 completion:(id)a8;
- (void)_authenticationStateChanged:(id)a3;
- (void)_cleanupSystemApertureLockElementIgnoringDelays:(BOOL)a3 reason:(id)a4;
- (void)_clearAuthenticationLockAssertion;
- (void)_createAuthenticationAssertion;
- (void)_deviceBlockedChanged:(id)a3;
- (void)_disconnectActiveCallIfNeededFromSource:(int)a3;
- (void)_dismissLockScreenForAuthenticationIfNecessary;
- (void)_dismissLostModeBiometricAuthenticationTransientOverlay;
- (void)_emulateInterstitialPasscodePresentationForAccessibility:(BOOL)a3;
- (void)_evaluatePreArmDisabledAssertions;
- (void)_evaluateWallpaperMode;
- (void)_handleAuthenticationFeedback:(id)a3;
- (void)_handleBacklightDidTurnOff:(id)a3;
- (void)_handleBacklightLevelWillChange:(id)a3;
- (void)_lockFeaturesForRemoteLock:(BOOL)a3;
- (void)_lockScreenDimmed:(id)a3;
- (void)_lockStateObservers;
- (void)_maybeLaunchSetupForcingCheckIfNotBricked:(BOOL)a3;
- (void)_noteStartupTransitionDidBegin;
- (void)_noteStartupTransitionWillBegin;
- (void)_postLockCompletedNotification:(BOOL)a3;
- (void)_prepareWallpaperForInteractiveMode;
- (void)_prepareWallpaperForStaticMode;
- (void)_presentLostModeBiometricAuthenticationTransientOverlay;
- (void)_reallySetUILocked:(BOOL)a3;
- (void)_reevaluateSystemApertureLockElementSuppressionWithReason:(id)a3;
- (void)_relockUIForButtonlikeSource:(int)a3;
- (void)_relockUIForLostMode;
- (void)_resetOrRestoreStateChanged:(id)a3;
- (void)_runPreflightLocationBasedEvaluationToExitLostModeIfNecessary;
- (void)_runUnlockActionBlock:(BOOL)a3;
- (void)_sendUILockStateChangedNotification;
- (void)_setHomeButtonShowPasscodeRecognizer:(id)a3;
- (void)_setHomeButtonSuppressAfterUnlockRecognizer:(id)a3;
- (void)_setMesaAutoUnlockingDisabled:(BOOL)a3 forReason:(id)a4;
- (void)_setMesaCoordinatorDisabled:(BOOL)a3 forReason:(id)a4;
- (void)_setMesaUnlockingDisabled:(BOOL)a3 forReason:(id)a4;
- (void)_setSystemApertureProudLockElementVisible:(BOOL)a3 backlightState:(int64_t)a4 withReason:(id)a5;
- (void)_setSystemApertureProudLockElementVisible:(BOOL)a3 withReason:(id)a4;
- (void)_setSystemApertureProudLockElementVisible:(BOOL)a3 withReason:(id)a4 afterDelay:(double)a5;
- (void)_setUILocked:(BOOL)a3;
- (void)_setUserAuthController:(id)a3;
- (void)_setWalletPreArmDisabled:(BOOL)a3 forReason:(id)a4;
- (void)_showSystemApertureProudLockElementForBacklightState:(int64_t)a3 WithReason:(id)a4;
- (void)_showSystemApertureProudLockElementIfSupportedWithReason:(id)a3;
- (void)_unlockStateObservers;
- (void)_updateBloomIfNeeded;
- (void)_wakeScreenForMouseButtonDown:(id)a3;
- (void)_wakeScreenForTapToWake;
- (void)activateLostModeForRemoteLock:(BOOL)a3;
- (void)addLockStateObserver:(id)a3;
- (void)attemptUnlockWithPasscode:(id)a3 finishUIUnlock:(BOOL)a4 completion:(id)a5;
- (void)backlightController:(id)a3 didTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5;
- (void)backlightController:(id)a3 didUpdateDigitizerDisabled:(BOOL)a4 tapToWakeEnabled:(BOOL)a5;
- (void)backlightController:(id)a3 willTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5;
- (void)biometricAuthenticationCoordinator:(id)a3 handleIdentityMatchSuccess:(BOOL)a4;
- (void)coverSheetViewController:(id)a3 requestsTransientOverlaysDismissedAnimated:(BOOL)a4;
- (void)coverSheetViewController:(id)a3 startSpotlightInteractiveGestureTransactionForGesture:(id)a4;
- (void)coverSheetViewControllerDidCancelInlinePasscode:(id)a3;
- (void)coverSheetViewControllerDidDismissInlinePasscode:(id)a3;
- (void)coverSheetViewControllerIrisPlayingDidFinish:(id)a3;
- (void)coverSheetViewControllerRequestsTranslationToPresentedForExternalLockProvider:(BOOL)a3 animated:(BOOL)a4;
- (void)coverSheetViewControllerShouldDismissContextMenu:(id)a3;
- (void)coverSheetViewControllerWillPresentInlinePasscode:(id)a3;
- (void)coverSheetWindowedAccessoryViewControllerDidDismiss:(id)a3;
- (void)coverSheetWindowedAccessoryViewControllerDidPresent:(id)a3;
- (void)enableLostModePlugin;
- (void)exitLostModeIfNecessaryFromRemoteRequest:(BOOL)a3;
- (void)extendedKeybagLockStateChanged:(BOOL)a3;
- (void)hideDimmingLayerDidChange:(BOOL)a3;
- (void)homeButtonShowPasscodeRecognizerRequestsPasscodeUIToBeShown:(id)a3;
- (void)homeButtonSuppressAfterUnlockRecognizerRequestsEndOfSuppression:(id)a3;
- (void)loadViewsIfNeeded;
- (void)lockScreenViewControllerDidDismiss;
- (void)lockScreenViewControllerDidPresent;
- (void)lockScreenViewControllerWillDismissWithVelocity:(double)a3;
- (void)lockScreenViewControllerWillPerformTransitionToFinalValue:(double)a3 forUserGesture:(BOOL)a4 withVelocity:(double)a5 animated:(BOOL)a6;
- (void)lockScreenViewControllerWillPresent;
- (void)lockUIFromSource:(int)a3 withOptions:(id)a4 completion:(id)a5;
- (void)lostModeBiometricAuthenticationViewControllerDidSucceedAuthentication:(id)a3;
- (void)lostModeBiometricAuthenticationViewControllerDidTapEmergencyButton:(id)a3;
- (void)migrateNotificationsToHistory;
- (void)motionDetectionWakeController:(id)a3 motionDetectStateChanged:(BOOL)a4;
- (void)noteContinuityDisplayWindowSceneConnectionDidChange;
- (void)passcodeEntryTransientOverlayViewControllerDidDisappear:(id)a3;
- (void)passcodeEntryTransientOverlayViewControllerRequestsDismissal:(id)a3;
- (void)passcodeEntryTransientOverlayViewControllerRequestsEmergencyCall:(id)a3;
- (void)reevaluateSystemApertureLockElementSuppressionWithReason:(id)a3;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteLock:(BOOL)a3;
- (void)removeLockStateObserver:(id)a3;
- (void)requestUserAttentionScreenWakeFromSource:(int)a3 reason:(id)a4;
- (void)setBiometricAutoUnlockingDisabled:(BOOL)a3 forReason:(id)a4;
- (void)setIndicatorHost:(id)a3;
- (void)tapToWakeControllerDidRecognizePencilWakeGesture:(id)a3;
- (void)updateSpringBoardStatusBarForLockScreenTeardown;
- (void)wallpaperDidChangeForVariant:(int64_t)a3;
- (void)wallpaperDidUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle:(BOOL)a3;
- (void)wallpaperDidUpdatePreferredSalientContentRectangle:(CGRect)a3;
- (void)wallpaperLegibilityEnvironmentDidChange:(id)a3;
@end

@implementation SBLockScreenManager

- (BOOL)isLockScreenActive
{
  v2 = [(SBLockScreenManager *)&self->super.isa rootViewController];
  v3 = [v2 _appearState] == 2 || objc_msgSend(v2, "_appearState") == 1;

  return v3;
}

- (BOOL)wouldAttemptToHandleATransitionRequest
{
  v3 = [(SBLockScreenManager *)self isUILocked];
  LOBYTE(v4) = 0;
  if ([(SBLockScreenManager *)self isLockScreenActive]&& !v3)
  {
    v5 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
    v4 = [v5 isAnyGestureActivelyRecognized] ^ 1;
  }

  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v7 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
    v6 = [v7 isAnyGestureActivelyRecognized];
  }

  v8 = self->_handlingUnlockRequest && [(SBLockScreenManager *)self isUIUnlocking];
  if ((v3 | v4))
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 | v6;
  }

  return v9 & 1;
}

- (id)rootViewController
{
  if (a1)
  {
    a1 = [a1[4] rootViewController];
    v1 = vars8;
  }

  return a1;
}

- (BOOL)_isUnlockDisabled
{
  if (([(SBFLockOutStatusProvider *)self->_lockOutController isBlocked]& 1) != 0)
  {
    return 1;
  }

  v4 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
  v5 = [v4 isUnlockDisabled];

  return v5;
}

- (CSCoverSheetViewController)coverSheetViewController
{
  v2 = [(SBLockScreenManager *)&self->super.isa rootViewController];
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

- (id)averageColorForCurrentWallpaper
{
  v2 = +[SBWallpaperController sharedInstance];
  v3 = [v2 averageColorForVariant:0];

  return v3;
}

- (id)newLegibilitySettingsProvider
{
  v2 = [SBWallpaperLegibilitySettingsProvider alloc];

  return [(SBWallpaperLegibilitySettingsProvider *)v2 initWithVariant:0];
}

- (BOOL)_shouldBloomForAnyReason
{
  v3 = [(SBLockScreenManager *)self coverSheetViewController];
  if (([v3 isInlinePasscodeLockVisible] & 1) != 0 || (-[BSCompoundAssertion isActive](self->_lockElementBloomAssertions, "isActive") & 1) != 0 || -[SBLockScreenManager _isPasscodeVisible](self, "_isPasscodeVisible"))
  {
    v4 = [(BSCompoundAssertion *)self->_lockElementBloomSuppressionAssertions isActive]^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_updateBloomIfNeeded
{
  if (self->_proudLockAssertion)
  {
    goto LABEL_5;
  }

  v3 = SBLogSystemApertureLockElement();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBLockScreenManager][Lock Element] bloom update without a valid assertion causing reevaluation.", v4, 2u);
  }

  [(SBLockScreenManager *)self _reevaluateSystemApertureLockElementSuppressionWithReason:@"Bloom update without existing assertion"];
  if (self->_proudLockAssertion)
  {
LABEL_5:
    [(SBLockElementViewProvider *)self->_lockElement setBloomed:[(SBLockScreenManager *)self _shouldBloomForAnyReason]];
  }
}

- (void)_runPreflightLocationBasedEvaluationToExitLostModeIfNecessary
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (self->_isInLostMode && !self->_lostModePreflightLocalAuthContext)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD4790]);
    lostModePreflightLocalAuthContext = self->_lostModePreflightLocalAuthContext;
    self->_lostModePreflightLocalAuthContext = v3;

    objc_initWeak(&location, self);
    v5 = self->_lostModePreflightLocalAuthContext;
    v10[0] = &unk_283372500;
    v10[1] = &unk_2833724A0;
    v11[0] = MEMORY[0x277CBEC38];
    v11[1] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __84__SBLockScreenManager__runPreflightLocationBasedEvaluationToExitLostModeIfNecessary__block_invoke;
    v7[3] = &unk_2783C4BA0;
    objc_copyWeak(&v8, &location);
    [(LAContext *)v5 evaluatePolicy:1025 options:v6 reply:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_prepareWallpaperForStaticMode
{
  v3 = +[SBWallpaperController sharedInstance];
  v4 = [v3 updateIrisWallpaperForStaticMode];

  if ((v4 & 1) == 0)
  {
    self->_shouldTransitionIrisWallpaperToStillWhenPlaybackFinishes = 1;
  }
}

- (void)_dismissLockScreenForAuthenticationIfNecessary
{
  [(SBLockScreenManager *)self exitLostModeIfNecessaryFromRemoteRequest:0];
  v3 = [MEMORY[0x277D02C20] rootSettings];
  v4 = [v3 autoDismissUnlockedLockScreen];

  if (v4)
  {

    [(SBLockScreenManager *)self unlockUIFromSource:11 withOptions:0];
  }
}

- (BOOL)_isPasscodeVisible
{
  v3 = [(SBLockScreenManager *)&self->super.isa rootViewController];
  v4 = [v3 _sbWindowScene];
  v5 = [v4 ambientPresentationController];

  v6 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment passcodeViewPresenter];
  if (([v6 isPasscodeLockVisible] & 1) != 0 || -[SBLockScreenManager isPasscodeEntryTransientOverlayVisible](self, "isPasscodeEntryTransientOverlayVisible"))
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 ambientTransientOverlayIsShowingPasscode];
  }

  return v7;
}

- (void)_evaluatePreArmDisabledAssertions
{
  v3 = +[SBSetupManager sharedInstance];
  v4 = [v3 isInSetupMode];

  [(SBLockScreenManager *)self _setWalletPreArmDisabled:v4 forReason:@"Setup"];
  [(SBLockScreenManager *)self _setWalletPreArmDisabled:[(SBFLockOutStatusProvider *)self->_lockOutController isBlocked] forReason:@"Device blocked"];
  v5 = +[SBTelephonyManager sharedTelephonyManager];
  v6 = [v5 incomingCallExists];

  [(SBLockScreenManager *)self _setWalletPreArmDisabled:v6 forReason:@"Phone call"];
}

- (void)_evaluateWallpaperMode
{
  if (self->_isScreenOn && (+[SBCoverSheetPresentationManager sharedInstance](SBCoverSheetPresentationManager, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isPresented], v3, v4))
  {

    [(SBLockScreenManager *)self _prepareWallpaperForInteractiveMode];
  }

  else
  {

    [(SBLockScreenManager *)self _prepareWallpaperForStaticMode];
  }
}

- (void)_unlockStateObservers
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(NSHashTable *)self->_lockStateObservers copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) lockStateProvider:self didUpdateIsUILocked:{0, v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_statusBarLayoutManager
{
  v2 = [(SBLockScreenManager *)&self->super.isa rootViewController];
  v3 = [v2 _sbWindowScene];
  v4 = [v3 statusBarManager];
  v5 = [v4 layoutManager];

  return v5;
}

- (void)_createAuthenticationAssertion
{
  if (!self->_sustainAuthenticationWhileUIUnlockedAssertion && self->_allowDisablePasscodeLockAssertion)
  {
    v3 = [(SBFUserAuthenticationController *)self->_userAuthController createKeybagUnlockAssertionWithReason:@"UI unlocked"];
    sustainAuthenticationWhileUIUnlockedAssertion = self->_sustainAuthenticationWhileUIUnlockedAssertion;
    self->_sustainAuthenticationWhileUIUnlockedAssertion = v3;

    v5 = self->_sustainAuthenticationWhileUIUnlockedAssertion;

    [(SBFAuthenticationAssertion *)v5 activate];
  }
}

- (void)_sendUILockStateChangedNotification
{
  if ([(SBLockScreenManager *)self isUILocked])
  {
    v3 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment backlightController];
    v4 = [v3 shouldDisableALS];

    if (v4)
    {
      BKSHIDServicesAmbientLightSensorDisableAutoBrightness();
    }
  }

  v12 = 1;
  SBGetAggregatedLockStatus(&v12, 0);
  if (_sendUILockStateChangedNotification_token != -1 || (notify_register_check(*MEMORY[0x277D67770], &_sendUILockStateChangedNotification_token), _sendUILockStateChangedNotification_token != -1))
  {
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__SBLockScreenManager__sendUILockStateChangedNotification__block_invoke;
    block[3] = &__block_descriptor_33_e5_v8__0l;
    v11 = v12;
    dispatch_async(v5, block);
  }

  v6 = MEMORY[0x277CBEAC0];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBLockScreenManager isUILocked](self, "isUILocked")}];
  v8 = [v6 dictionaryWithObject:v7 forKey:*MEMORY[0x277D67B18]];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:*MEMORY[0x277D67A48] object:0 userInfo:v8];
}

uint64_t __58__SBLockScreenManager__sendUILockStateChangedNotification__block_invoke(uint64_t a1)
{
  notify_set_state(_sendUILockStateChangedNotification_token, *(a1 + 32));
  v1 = *MEMORY[0x277D67770];

  return notify_post(v1);
}

- (id)_hostingWindowScene
{
  v2 = [(SBLockScreenManager *)&self->super.isa rootViewController];
  v3 = [v2 _sbWindowScene];

  return v3;
}

- (BOOL)_shouldHideLockForElementSuppressionAssertion
{
  v3 = [(SBLockScreenManager *)&self->super.isa rootViewController];
  v4 = [v3 _sbWindowScene];
  v5 = [v4 ambientPresentationController];
  v6 = [v5 ambientTransientOverlayIsShowingPasscode];

  LOBYTE(v3) = v6 | [(SBLockScreenManager *)self isPasscodeEntryTransientOverlayVisible];
  return [(SBLockScreenManager *)self _hasValidLockElementSuppressionAssertion]& (v3 ^ 1);
}

- (BOOL)_hasValidLockElementSuppressionAssertion
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_lockElementSuppressionAssertions;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isValid])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)lockScreenViewControllerDidDismiss
{
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBLockScreenManager lockScreenViewControllerDidDismiss]", buf, 2u);
  }

  v4 = [(SBLockScreenManager *)self _statusBarLayoutManager];
  [v4 setDefaultWindowLevel:*MEMORY[0x277D772B8] + -1.0];

  [(SBLockScreenManager *)self setUIUnlocking:0];
  self->_handlingUnlockRequest = 0;
  [(SBLockScreenManager *)self _evaluateWallpaperMode];
  [(SBLockScreenManager *)self _setHomeButtonSuppressAfterUnlockRecognizer:0];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"SBLockScreenManagerUnlockAnimationDidFinish" object:self];

  v6 = +[SBAlertItemsController sharedInstance];
  [v6 convertLockedAlertsToUnlockedAlerts];

  v7 = +[SBWorkspace mainWorkspace];
  v8 = [v7 createRequestWithOptions:0];

  [v8 finalize];
  v9 = [v8 applicationContext];
  v10 = [v9 applicationSceneEntities];

  v11 = [v10 count];
  v12 = objc_opt_class();
  v13 = [v8 applicationContext];
  v14 = [v13 layoutState];
  v15 = SBSafeCast(v12, v14);

  v16 = [v15 unlockedEnvironmentMode];
  if (!v11 && v16 != 2)
  {
    v17 = +[SBWorkspace mainWorkspace];
    v18 = [v17 transientOverlayPresentationManager];
    v19 = [v18 hasActivePresentation];

    if ((v19 & 1) == 0)
    {
      v20 = +[SBPasscodeController sharedInstance];
      [v20 checkPasscodeCompliance];
    }
  }

  if (self->_proudLockAssertion)
  {
    v21 = SBLogSystemApertureLockElement();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "LockElement dismissal lost the race with didDismiss, trying a soft dismiss.", buf, 2u);
    }

    [(SBLockScreenManager *)self _cleanupSystemApertureLockElementIfNecessaryWithReason:@"DidDismiss"];
    if (self->_proudLockAssertion)
    {
      v22 = SBLogSystemApertureLockElement();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "LockElement dismissal lost the race with didDismiss, starting a hard dismiss timer.", buf, 2u);
      }

      self->_ignoringDelayDismissalPending = 1;
      v23 = [MEMORY[0x277D02C20] rootSettings];
      v24 = [v23 pearlSettings];
      [v24 systemApertureDismissDelayDismissal];
      v26 = v25;

      v27 = dispatch_time(0, (v26 * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__SBLockScreenManager_lockScreenViewControllerDidDismiss__block_invoke;
      block[3] = &unk_2783A8C18;
      block[4] = self;
      dispatch_after(v27, MEMORY[0x277D85CD0], block);
    }
  }

  v28 = [MEMORY[0x277CCAB98] defaultCenter];
  v29 = [(SBLockScreenManager *)self _hostingWindowScene];
  [v28 postNotificationName:@"SBLockScreenUIDidDismissNotification" object:v29];

  [(SBLockScreenDeviceMotionEffectController *)self->_deviceMotionEffectController setWallpaperVisible:0];
  v30 = [(SBLockScreenManager *)self coverSheetViewController];
  LODWORD(v29) = [v30 isUserPresenceDetectionAllowed];

  if (v29)
  {
    v31 = [(SBLockScreenManager *)self coverSheetViewController];
    [v31 disableRecentUserPresenceDetectionForReason:@"SBLockScreenDeviceMotionEffectUserPresenceMonitoring"];
  }
}

- (void)_prepareWallpaperForInteractiveMode
{
  v6 = +[SBWallpaperController sharedInstance];
  self->_shouldTransitionIrisWallpaperToStillWhenPlaybackFinishes = 0;
  [v6 updateIrisWallpaperForInteractiveMode];
  v3 = [(SBLockScreenManager *)self coverSheetViewController];
  v4 = [v6 irisWallpaperPlayer];
  [v3 setIrisWallpaperPlayer:v4];

  v5 = [v6 wallpaperGestureRecognizer];
  [v3 setWallpaperGestureRecognizer:v5];

  [v3 setWallpaperColorProvider:self];
}

+ (id)_sharedInstanceCreateIfNeeded:(BOOL)a3
{
  if (a3)
  {
    var30[0] = MEMORY[0x277D85DD0];
    var30[1] = 3221225472;
    var30[2] = __53__SBLockScreenManager__sharedInstanceCreateIfNeeded___block_invoke;
    var30[3] = &__block_descriptor_48_e5_v8__0l;
    var30[4] = a2;
    var30[5] = a1;
    if (_sharedInstanceCreateIfNeeded__onceToken_1 != -1)
    {
      dispatch_once(&_sharedInstanceCreateIfNeeded__onceToken_1, var30);
    }

    v3 = var30[7];
  }

  v4 = _sharedInstanceCreateIfNeeded____manager;

  return v4;
}

uint64_t __53__SBLockScreenManager__sharedInstanceCreateIfNeeded___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];

  if (!v2)
  {
    __53__SBLockScreenManager__sharedInstanceCreateIfNeeded___block_invoke_cold_1(a1);
  }

  kdebug_trace();
  v3 = objc_alloc_init(SBLockScreenManager);
  v4 = _sharedInstanceCreateIfNeeded____manager;
  _sharedInstanceCreateIfNeeded____manager = v3;

  return kdebug_trace();
}

- (SBLockScreenManager)init
{
  v71.receiver = self;
  v71.super_class = SBLockScreenManager;
  v2 = [(SBLockScreenManager *)&v71 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_allowDisablePasscodeLockAssertion = 0;
    v5 = [MEMORY[0x277D67C98] sharedInstance];
    v66 = +[SBWalletPreArmController sharedInstance];
    v6 = [[SBLockScreenBiometricAuthenticationCoordinator alloc] initWithBiometricResource:v5 walletPreArmController:v66];
    biometricAuthenticationCoordinator = v3->_biometricAuthenticationCoordinator;
    v3->_biometricAuthenticationCoordinator = v6;

    [(SBLockScreenBiometricAuthenticationCoordinator *)v3->_biometricAuthenticationCoordinator setDelegate:v3];
    v65 = [objc_alloc(MEMORY[0x277D67D10]) initWithBiometricResource:v5 overrideMatchingAssertionFactory:v3->_biometricAuthenticationCoordinator];
    [MEMORY[0x277D67D18] setPasscodeBiometricResource:?];
    v8 = [[SBCoverSheetBiometricResourceObserver alloc] initWithBiometricResource:v5];
    biometricResourceObserver = v3->_biometricResourceObserver;
    v3->_biometricResourceObserver = v8;

    v10 = [[SBPearlInterlockObserver alloc] initWithBiometricResource:v5];
    pearlInterlockObserver = v3->_pearlInterlockObserver;
    v3->_pearlInterlockObserver = v10;

    [(SBPearlInterlockObserver *)v3->_pearlInterlockObserver activate];
    v12 = [MEMORY[0x277D08F78] sharedInstance];
    v3->_isInLostMode = [v12 lostModeIsActive];

    v13 = [(SBLockScreenManager *)v3 _newLockScreenEnvironment];
    lockScreenEnvironment = v3->_lockScreenEnvironment;
    v3->_lockScreenEnvironment = v13;

    v15 = [(SBLockScreenManager *)&v3->super.isa rootViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 setDelegate:v3];
      [v15 addCoverSheetObserver:v3];
    }

    v64 = v15;
    v16 = [(SBLockScreenEnvironment *)v3->_lockScreenEnvironment screenWakeAnimationTarget];
    [v16 updateWakeEffectsForWake:0];

    if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") & 1) == 0)
    {
      v17 = objc_alloc_init(SBLockScreenOrientationManager);
      lockScreenOrientationManager = v3->_lockScreenOrientationManager;
      v3->_lockScreenOrientationManager = v17;
    }

    v19 = v3->_biometricAuthenticationCoordinator;
    v20 = [(SBLockScreenEnvironment *)v3->_lockScreenEnvironment biometricUnlockBehavior];
    [(SBLockScreenBiometricAuthenticationCoordinator *)v19 _setAutoUnlockBehavior:v20];

    [(SBLockScreenManager *)v3 _reallySetUILocked:0];
    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:v3 selector:sel_activationChanged_ name:@"SBLockdownDeviceActivatedChangedNotification" object:0];
    [v21 addObserver:v3 selector:sel__authenticationStateChanged_ name:*MEMORY[0x277D66078] object:0];
    [v21 addObserver:v3 selector:sel__lockUI name:@"SBLockScreenExternalPartyWantsUILockNotification" object:0];
    [v21 addObserver:v3 selector:sel__deviceBlockedChanged_ name:*MEMORY[0x277D66030] object:0];
    [v21 addObserver:v3 selector:sel__resetOrRestoreStateChanged_ name:@"SBResetOrRestoreStateDidChangeNotification" object:0];
    [v21 addObserver:v3 selector:sel__lockScreenDimmed_ name:@"SBLockScreenDimmedNotification" object:0];
    [v21 addObserver:v3 selector:sel__handleBacklightLevelWillChange_ name:*MEMORY[0x277D67A20] object:0];
    [v21 addObserver:v3 selector:sel__handleBacklightDidTurnOff_ name:*MEMORY[0x277D67A18] object:0];
    [v21 addObserver:v3 selector:sel__setupModeChanged name:@"SBInBuddyModeDidChangeNotification" object:0];
    [v21 addObserver:v3 selector:sel__activeCallStateChanged name:*MEMORY[0x277D679E0] object:0];
    [v21 addObserver:v3 selector:sel__noteBootCompleted name:@"SBBootCompleteNotification" object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, LostModeStateChanged, *MEMORY[0x277D08FB8], 0, CFNotificationSuspensionBehaviorCoalesce);
    v23 = [SBApp lockOutController];
    lockOutController = v3->_lockOutController;
    v3->_lockOutController = v23;

    v25 = [SBApp authenticationController];
    [(SBLockScreenManager *)v3 _setUserAuthController:v25];

    v26 = objc_alloc_init(SBLiftToWakeManager);
    liftToWakeManager = v3->_liftToWakeManager;
    v3->_liftToWakeManager = v26;

    if (+[SBTapToWakeController isTapToWakeSupported])
    {
      v28 = objc_alloc_init(SBTapToWakeController);
      tapToWakeController = v3->_tapToWakeController;
      v3->_tapToWakeController = v28;

      [(SBTapToWakeController *)v3->_tapToWakeController setDelegate:v3];
    }

    if (MGGetBoolAnswer())
    {
      v30 = objc_alloc_init(SBMotionDetectionWakeController);
      motionDetectionWakeController = v3->_motionDetectionWakeController;
      v3->_motionDetectionWakeController = v30;

      [(SBMotionDetectionWakeController *)v3->_motionDetectionWakeController setDelegate:v3];
    }

    v32 = [objc_alloc(MEMORY[0x277D65EF0]) initWithTarget:v3 action:sel__wakeScreenForMouseButtonDown_];
    mouseButtonDownGesture = v3->_mouseButtonDownGesture;
    v3->_mouseButtonDownGesture = v32;

    [(SBFMouseButtonDownGestureRecognizer *)v3->_mouseButtonDownGesture setDelegate:v3];
    v34 = +[SBSystemGestureManager mainDisplayManager];
    [v34 addGestureRecognizer:v3->_mouseButtonDownGesture withType:71];

    v35 = objc_alloc_init(SBLockScreenDisabledAssertionManager);
    lockScreenDisabledAssertionManager = v3->_lockScreenDisabledAssertionManager;
    v3->_lockScreenDisabledAssertionManager = v35;

    v37 = [[SBLockScreenAutoUnlockAggregateRule alloc] initWithUserAuthenticationController:v3->_userAuthController];
    autoUnlockRuleAggregator = v3->_autoUnlockRuleAggregator;
    v3->_autoUnlockRuleAggregator = v37;

    [(SBAutoUnlockComposableRule *)v3->_autoUnlockRuleAggregator addAutoUnlockRule:v3->_lockScreenDisabledAssertionManager];
    v39 = v3->_autoUnlockRuleAggregator;
    v40 = [(SBLockScreenEnvironment *)v3->_lockScreenEnvironment autoUnlockRule];
    [(SBAutoUnlockComposableRule *)v39 addAutoUnlockRule:v40];

    [(SBLockScreenManager *)v3 _evaluatePreArmDisabledAssertions];
    v41 = +[SBWallpaperController sharedInstance];
    [v41 addObserver:v3 forVariant:0];
    location[1] = MEMORY[0x277D85DD0];
    location[2] = 3221225472;
    location[3] = __27__SBLockScreenManager_init__block_invoke;
    location[4] = &unk_2783A91C8;
    v42 = v3;
    v70 = v42;
    v43 = BSLogAddStateCaptureBlockWithTitle();
    v44 = +[SBCoverSheetPresentationManager sharedInstance];
    [v44 setLockScreenEnvironment:v3->_lockScreenEnvironment];
    [v44 setUILockStateProvider:v42];
    [v44 setDelegate:v42];
    [v44 setPearlMatchingStateProvider:v3->_biometricResourceObserver];
    v45 = +[SBWorkspace mainWorkspace];
    [v44 setMainWorkspace:v45];

    v46 = [[SBIdleTimerCoordinatorHelper alloc] initWithSourceProvider:v42];
    idleTimerCoordinatorHelper = v42->_idleTimerCoordinatorHelper;
    v42->_idleTimerCoordinatorHelper = v46;

    v48 = +[SBMainWorkspace sharedInstance];
    [(SBLockScreenManager *)v42 _setIdleTimerCoordinator:v48];

    v49 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2833724A0, &unk_2833724B8, &unk_2833724D0, &unk_2833724E8, 0}];
    v50 = objc_alloc(MEMORY[0x277D757B8]);
    v51 = [MEMORY[0x277D76138] privateConfigurationForTypes:v49];
    v52 = [v50 initWithConfiguration:v51];
    authenticationFeedbackGenerator = v42->_authenticationFeedbackGenerator;
    v42->_authenticationFeedbackGenerator = v52;

    [(SBLockScreenManager *)v42 _showSystemApertureProudLockElementIfSupportedWithReason:@"Startup"];
    v54 = +[SBBacklightController sharedInstance];
    [v54 addObserver:v42];
    if ([v54 isDigitizerDisabled])
    {
      v55 = [v54 isTapToWakeEnabled];
      [(SBTapToWakeController *)v42->_tapToWakeController setDigitizerInTapToWakeMode:v55];
      v56 = v42->_tapToWakeController;
      if (v55)
      {
        v57 = [v54 tapToWakeRequiresHitTestSuppression];
      }

      else
      {
        v57 = 0;
      }
    }

    else
    {
      [(SBTapToWakeController *)v42->_tapToWakeController setDigitizerInTapToWakeMode:0];
      v57 = 0;
      v56 = v42->_tapToWakeController;
    }

    [(SBTapToWakeController *)v56 setDigitizerModeRequiresHitTestSuppression:v57];
    objc_initWeak(location, v42);
    v58 = MEMORY[0x277CF0BD0];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __27__SBLockScreenManager_init__block_invoke_223;
    v67[3] = &unk_2783AD688;
    objc_copyWeak(&v68, location);
    v59 = [v58 assertionWithIdentifier:@"SBLockScreenManager lockScreenPresentationPending" stateDidChangeHandler:v67];
    lockScreenPresentationPendingAssertions = v42->_lockScreenPresentationPendingAssertions;
    v42->_lockScreenPresentationPendingAssertions = v59;

    v61 = [v54 screenIsOn];
    v42->_isScreenOn = v61;
    if (v61)
    {
      [v5 noteScreenWillTurnOn];
    }

    else
    {
      [v5 noteScreenDidTurnOff];
    }

    v62 = +[SBLockScreenDeviceMotionEffectController sharedInstance];
    deviceMotionEffectController = v42->_deviceMotionEffectController;
    v42->_deviceMotionEffectController = v62;

    objc_destroyWeak(&v68);
    objc_destroyWeak(location);
  }

  return v3;
}

void __27__SBLockScreenManager_init__block_invoke_223(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v4, (a1 + 32));
  BSDispatchMain();
  objc_destroyWeak(&v4);
}

void __27__SBLockScreenManager_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained coverSheetViewController];
  [v1 setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (id)_newLockScreenEnvironment
{
  v3 = [SBApp userSessionController];
  if ([v3 isLoginSession])
  {
  }

  else
  {
    v4 = +[SBDefaults localDefaults];
    v5 = [v4 multiUserDefaults];
    v6 = [v5 forceLoginWindow];

    if (!v6)
    {
      v8 = objc_alloc_init(SBDashBoardLockScreenEnvironment);
      v9 = [(SBDashBoardLockScreenEnvironment *)v8 coverSheetViewController];
      [v9 setDelegate:self];

      v7 = [(SBDashBoardLockScreenEnvironment *)v8 coverSheetViewController];
      [(SBLoginAppContainerViewController *)v7 addCoverSheetObserver:self];
      goto LABEL_6;
    }
  }

  v7 = objc_alloc_init(SBLoginAppContainerViewController);
  v8 = [[SBLegacyLockScreenEnvironment alloc] initWithLockScreenViewController:v7];
LABEL_6:

  v10 = [(SBDashBoardLockScreenEnvironment *)v8 idleTimerController];
  [v10 setIdleTimerCoordinator:self];

  return v8;
}

- (BOOL)_shouldLockAfterEndingTelephonyCall
{
  if (+[SBInCallPresentationManager isSpecializedAPISupported])
  {
    goto LABEL_2;
  }

  v4 = +[SBTelephonyManager sharedTelephonyManager];
  if (![v4 inCall])
  {
    LOBYTE(v3) = 0;
    goto LABEL_9;
  }

  v5 = [MEMORY[0x277D6EDF8] sharedInstance];
  v6 = [v5 anyCallIsEndpointOnCurrentDevice];

  if (v6 && ![(SBLockScreenManager *)self isUILocked])
  {
    if (SBWorkspaceSpringBoardIsActive())
    {
      LOBYTE(v3) = 1;
      return v3;
    }

    v4 = +[SBWorkspace mainWorkspace];
    v8 = [v4 transientOverlayPresentationManager];
    v3 = [v8 hasActivePresentation] ^ 1;

LABEL_9:
    return v3;
  }

LABEL_2:
  LOBYTE(v3) = 0;
  return v3;
}

- (BOOL)_shouldLockAfterEndingFaceTimeCall
{
  if (!+[SBInCallPresentationManager isSpecializedAPISupported])
  {
    v3 = +[SBConferenceManager sharedInstance];
    v4 = [v3 inFaceTime];

    v5 = +[SBConferenceManager sharedInstance];
    v6 = [v5 inFaceTimeVideo];

    v7 = +[SBWorkspace mainWorkspace];
    LOBYTE(v2) = 0;
    if (!v4 || (v6 & 1) != 0)
    {
      goto LABEL_13;
    }

    IsActive = SBWorkspaceSpringBoardIsActive();
    if ((IsActive & 1) != 0 || ([v7 transientOverlayPresentationManager], v6 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v6, "hasActivePresentation") & 1) == 0))
    {
      v9 = +[SBConferenceManager sharedInstance];
      if ([v9 faceTimeInvitationExists])
      {

        LOBYTE(v2) = 0;
        if (IsActive)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v10 = [v7 pipControllerForType:0];
        v2 = [v10 isPictureInPictureWindowVisibleOnWindowScene:0] ^ 1;

        if (IsActive)
        {
LABEL_13:

          return v2;
        }
      }
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    goto LABEL_13;
  }

  LOBYTE(v2) = 0;
  return v2;
}

- (BOOL)shouldLockUIAfterEndingCall
{
  if (+[SBInCallPresentationManager isSpecializedAPISupported])
  {
    return 0;
  }

  if ([(SBLockScreenManager *)self _shouldLockAfterEndingTelephonyCall])
  {
    return 1;
  }

  return [(SBLockScreenManager *)self _shouldLockAfterEndingFaceTimeCall];
}

- (BOOL)shouldTapToWake
{
  v2 = [(SBLockScreenManager *)self _tapToWakeController];
  v3 = [v2 shouldTapToWake];

  return v3;
}

- (BOOL)playLockSoundIfPermitted
{
  v3 = [(SBLockScreenManager *)self _shouldPlayLockSound];
  if (v3)
  {
    self->_hasPlayedSoundForLock = 1;
    v4 = +[SBSoundController sharedInstance];
    v5 = [MEMORY[0x277D679C8] soundWithFeedbackEventType:1002];
    [v4 playSoundWithDefaultEnvironment:v5];
  }

  return v3;
}

- (BOOL)_shouldPlayLockSound
{
  v3 = +[SBLockScreenManager sharedInstance];
  v4 = [v3 isUILocked];

  if (!v4 || (v5 = [(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet]) != 0 && (v5 = [(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated]) != 0)
  {
    if (self->_hasPlayedSoundForLock)
    {
      v6 = SBLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "didn't play lock sound, have already played sound for this locking", v8, 2u);
      }

      LOBYTE(v5) = 0;
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)isLockScreenVisible
{
  v2 = [(SBLockScreenManager *)self isLockScreenActive];
  if (v2)
  {
    LOBYTE(v2) = !+[SBAssistantController isVisible];
  }

  return v2;
}

- (BOOL)isSupressingLockButton
{
  v2 = [(SBLockScreenManager *)self coverSheetViewController];
  v3 = [v2 isAccessoryAnimationPresenting];

  return v3;
}

- (void)lockUIFromSource:(int)a3 withOptions:(id)a4 completion:(id)a5
{
  v6 = *&a3;
  v71 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromLockSource();
    v12 = [MEMORY[0x277CF0C08] descriptionForRootObject:v8];
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "lockUIFromSource:%{public}@ options:%{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v70 = 0;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __63__SBLockScreenManager_lockUIFromSource_withOptions_completion___block_invoke;
  v66[3] = &unk_2783C4990;
  v68 = buf;
  v66[4] = self;
  v13 = v9;
  v67 = v13;
  v14 = MEMORY[0x223D6F7F0](v66);
  if (self->_allowUILockUnlock)
  {
    v15 = [v8 objectForKey:@"SBUILockOptionsAnimateLockScreenActivationKey"];
    v52 = [v15 BOOLValue];

    v16 = [v8 objectForKey:@"SBUILockOptionsLockAutomaticallyKey"];
    v51 = [v16 BOOLValue];

    v17 = [v8 objectForKey:@"SBUILockOptionsForceLockKey"];
    v56 = [v17 BOOLValue];

    v58 = [v8 objectForKey:@"SBUILockOptionsAnimationTransactionProviderKey"];
    v18 = [v8 objectForKey:@"SBUILockOptionsForceBioLockoutKey"];
    v19 = [v18 BOOLValue];

    v20 = [v8 objectForKey:@"SBUILockOptionsUseScreenOffModeKey"];
    v21 = v20;
    if (v20)
    {
      v50 = [v20 BOOLValue];
    }

    else
    {
      v50 = 1;
    }

    v57 = [v8 bs_BOOLForKey:@"SBUILockOptionsPreserveTransientOverlaysKey"];
    v23 = [v8 objectForKey:@"SBUILockOptionsIgnoreCallKey"];
    v24 = [v23 BOOLValue];

    v53 = !+[SBInCallPresentationManager isSpecializedAPISupported]&& [(SBLockScreenManager *)self shouldLockUIAfterEndingCall];
    v25 = +[SBBacklightController sharedInstance];
    v55 = [v25 backlightState];

    if (v19)
    {
      v26 = [MEMORY[0x277D67C98] sharedInstance];
      [v26 _forceBioLockout];

      notify_post("com.apple.springboard.lock-with-force-biolockout");
    }

    v27 = [MEMORY[0x277D0AB20] sharedInstance];
    [v27 cancelEventsWithName:@"AttemptLock"];

    v28 = [(SBLockScreenManager *)&self->super.isa rootViewController];
    v29 = [v28 _sbWindowScene];

    v59 = [v29 homeScreenController];
    v60 = [v29 switcherController];
    v30 = [SBApp remoteTransientOverlaySessionManager];
    v31 = [v30 hasSessionWithPendingButtonEvents:1 options:0];

    if (v31)
    {
      v14[2](v14, 0);
LABEL_56:
      if ((v57 & 1) == 0)
      {
        v45 = [(SBLockScreenManager *)&self->super.isa rootViewController];
        v46 = [v45 _sbWindowScene];

        v47 = +[SBWorkspace mainWorkspace];
        if (v55 == 3)
        {
          [v47 dismissTransientOverlayPresentationsAnimated:0 windowScene:v46 filter:&__block_literal_global_450];
        }

        else
        {
          [v47 dismissTransientOverlayPresentationsAnimated:0 windowScene:v46 filter:&__block_literal_global_248_0];
        }
      }

      if ((v6 - 1) <= 1)
      {
        [MEMORY[0x277D71F50] _stopAllAlerts];
      }

      v48 = [MEMORY[0x277D6F470] sharedPreferencesController];
      [v48 setValue:MEMORY[0x277CBEC28] forPreferenceKey:*MEMORY[0x277D6F650]];

      (v14)[2](v14, [(SBLockScreenManager *)self isUILocked]);
      goto LABEL_69;
    }

    v32 = [MEMORY[0x277D66010] sharedInstanceIfExists];
    [v32 lockDidBegin];

    v33 = +[SBWorkspace mainWorkspace];
    v54 = [v33 inCallPresentationManager];

    v34 = v24 | v56;
    if ((v24 | v56))
    {
      v35 = 0;
    }

    else
    {
      v35 = [v54 supportsHandlingDeviceLock];
    }

    if (v6 <= 0x18)
    {
      if (((1 << v6) & 0x8024) != 0)
      {
        if ([(SBLockScreenManager *)self isUILocked])
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      if (((1 << v6) & 0xA) != 0)
      {
        if (+[SBInCallPresentationManager isSpecializedAPISupported])
        {
          if (!(v35 & 1 | ![(SBLockScreenManager *)self isUILocked]))
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        if (v53 | ![(SBLockScreenManager *)self isUILocked])
        {
          goto LABEL_37;
        }

LABEL_40:
        if ([v60 unlockedEnvironmentMode] != 3)
        {
          [v59 popToCurrentRootIconListWhenPossible];
        }

        [(SBLockScreenManager *)self _relockUIForButtonlikeSource:v6];
LABEL_55:

        goto LABEL_56;
      }

      if (v6 == 24)
      {
        if (![(SBLockScreenManager *)self isUILocked])
        {
          v35 = 0;
          goto LABEL_37;
        }

        goto LABEL_40;
      }
    }

    if (!v6 && (v56 & 1) == 0)
    {
      v36 = SBLogCommon();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [SBLockScreenManager lockUIFromSource:v36 withOptions:? completion:?];
      }

      v37 = [(SBLockScreenManager *)self isUILocked];
      goto LABEL_68;
    }

LABEL_37:
    if (((+[SBInCallPresentationManager isSpecializedAPISupported]| v34) & 1) == 0)
    {
      if (v6 == 1 && v53)
      {
        v38 = +[SBWorkspace mainWorkspace];
        v39 = [v38 inCallTransientOverlayManager];
        [v39 presentTransientOverlayForUILock];

LABEL_67:
        v37 = 0;
LABEL_68:
        v14[2](v14, v37);

LABEL_69:
        goto LABEL_70;
      }

      [(SBLockScreenManager *)self _disconnectActiveCallIfNeededFromSource:v6];
    }

    if (v34 & 1 | ((v35 & 1) == 0))
    {
      v40 = SBLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *v65 = 0;
        _os_log_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_DEFAULT, "LockUI from source: Now locking", v65, 2u);
      }

      if (v6 == 15)
      {
        v41 = 1;
      }

      else
      {
        v41 = v51;
      }

      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __63__SBLockScreenManager_lockUIFromSource_withOptions_completion___block_invoke_245;
      v61[3] = &unk_2783AE5A0;
      v62 = v60;
      v63 = v59;
      v64 = v14;
      [(SBLockScreenManager *)self _activateLockScreenAnimated:v52 animationProvider:v58 automatically:v41 inScreenOffMode:v50 dismissNotificationCenter:v6 != 4 completion:v61];
      [(SBLockScreenManager *)self _clearAuthenticationLockAssertion];
      if (v56)
      {
        v42 = [SBApp authenticationController];
        v43 = NSStringFromLockSource();
        [v42 revokeAuthenticationImmediatelyForPublicReason:v43];
      }

      if (([(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet]& 1) == 0)
      {
        v44 = +[SBCoverSheetPresentationManager sharedInstance];
        [v44 noteDeviceDidLock];
      }

      goto LABEL_55;
    }

    v49 = SBLogInCallPresentation();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *v65 = 0;
      _os_log_impl(&dword_21ED4E000, v49, OS_LOG_TYPE_DEFAULT, "inCallPresentationManager handleDeviceLockFromSource", v65, 2u);
    }

    [v54 handleDeviceLockFromSource:v6];
    goto LABEL_67;
  }

  v22 = SBLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v65 = 0;
    _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Ignoring lock attempt because we're still initializing ourselves at startup and we're not ready for this yet.", v65, 2u);
  }

  v14[2](v14, 0);
LABEL_70:

  _Block_object_dispose(buf, 8);
}

uint64_t __63__SBLockScreenManager_lockUIFromSource_withOptions_completion___block_invoke(uint64_t result)
{
  v1 = *(*(result + 48) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    *(*(result + 32) + 85) = 0;
    result = *(result + 40);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

uint64_t __63__SBLockScreenManager_lockUIFromSource_withOptions_completion___block_invoke_245(uint64_t a1)
{
  if ([*(a1 + 32) unlockedEnvironmentMode] != 3)
  {
    [*(a1 + 40) popToCurrentRootIconListWhenPossible];
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (SBNotificationDestination)notificationDestination
{
  v2 = [(SBLockScreenManager *)self coverSheetViewController];
  v3 = [v2 notificationDestination];

  return v3;
}

- (BOOL)handleTransitionRequest:(id)a3
{
  v4 = a3;
  if (![(SBLockScreenManager *)self willAttemptToHandleTransitionRequest:v4])
  {
    goto LABEL_13;
  }

  v5 = [(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated];
  v6 = [v4 applicationContext];
  v7 = [v6 applicationSceneEntities];
  v8 = [v7 bs_containsObjectPassingTest:&__block_literal_global_253_1];

  if (!v5 || (v8 & 1) == 0)
  {
    v9 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment applicationLauncher];
    v10 = [v9 handleTransitionRequest:v4];

    if (v10)
    {
      v11 = +[SBWorkspace mainWorkspace];
      v12 = 1;
      [v11 dismissAllTransientOverlayPresentationsAnimated:1];

      goto LABEL_14;
    }
  }

  if (![(SBLockScreenManager *)self _canHandleTransitionRequest:v4])
  {
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v13 = [(SBLockScreenManager *)self coverSheetViewController];
  v14 = [v13 externalLockProvidersRequireUnlock];

  if (!v14)
  {
    v16 = [v4 displayIdentity];
    v17 = [v16 isMainDisplay];

    if (v17)
    {
      [v4 setTransactionProvider:&__block_literal_global_257];
      [v4 modifyApplicationContext:&__block_literal_global_261];
    }

    goto LABEL_13;
  }

  v15 = SBLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [SBLockScreenManager handleTransitionRequest:v15];
  }

  v12 = 1;
LABEL_14:

  return v12;
}

uint64_t __47__SBLockScreenManager_handleTransitionRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 activationSettings];
  v3 = [v2 BOOLForActivationSetting:35];

  return v3 ^ 1u;
}

SBCoverSheetToAppsWorkspaceTransaction *__47__SBLockScreenManager_handleTransitionRequest___block_invoke_254(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SBCoverSheetToAppsWorkspaceTransaction alloc] initWithTransitionRequest:v2];

  return v3;
}

- (BOOL)_canHandleTransitionRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 applicationContext];
  v5 = [v4 resolvedActivatingWorkspaceEntity];
  v6 = [v3 source];

  if ((v6 <= 0x3D && ((1 << v6) & 0x2000C801004C2134) != 0 || v6 == 70 || v6 == 67) && ([v4 isBackground] & 1) == 0)
  {
    v9 = [v4 entities];
    v10 = [v9 count];

    v7 = 0;
    if (v10 <= 1 && v5)
    {
      if ([v5 isApplicationSceneEntity])
      {
        v7 = 1;
      }

      else
      {
        v7 = [v5 isAppClipPlaceholderEntity];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setBiometricAutoUnlockingDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v12 = v6;
  if (!v6)
  {
    [SBLockScreenManager setBiometricAutoUnlockingDisabled:forReason:];
    v6 = 0;
  }

  v7 = [(NSMutableDictionary *)self->_mesaAutoUnlockingDisabledAssertions objectForKeyedSubscript:v6];
  v8 = v7;
  if (v4)
  {

    if (v8)
    {
      goto LABEL_12;
    }

    if (!self->_mesaAutoUnlockingDisabledAssertions)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      mesaAutoUnlockingDisabledAssertions = self->_mesaAutoUnlockingDisabledAssertions;
      self->_mesaAutoUnlockingDisabledAssertions = v9;
    }

    v11 = [(SBLockScreenBiometricAuthenticationCoordinator *)self->_biometricAuthenticationCoordinator acquireDisableAutoUnlockAssertionForReason:v12];
    if (v11)
    {
      [(NSMutableDictionary *)self->_mesaAutoUnlockingDisabledAssertions setObject:v11 forKeyedSubscript:v12];
    }
  }

  else
  {
    [v7 invalidate];

    [(NSMutableDictionary *)self->_mesaAutoUnlockingDisabledAssertions removeObjectForKey:v12];
    if ([(NSMutableDictionary *)self->_mesaAutoUnlockingDisabledAssertions count])
    {
      goto LABEL_12;
    }

    v11 = self->_mesaAutoUnlockingDisabledAssertions;
    self->_mesaAutoUnlockingDisabledAssertions = 0;
  }

LABEL_12:
}

- (void)loadViewsIfNeeded
{
  v2 = +[SBCoverSheetPresentationManager sharedInstance];
  [v2 loadViewsIfNeeded];
}

- (BOOL)hasWakeToContentForInactiveDisplay
{
  if ([(SBLockScreenManager *)self _shouldWakeToInCallForUnlockSource:32 wakingTheDisplay:0])
  {
    return 1;
  }

  return [(SBLockScreenManager *)self _shouldWakeToOtherContentForUnlockSource:32 wakingTheDisplay:0 stopAfterWakeTo:1];
}

- (id)acquireSystemApertureLockElementSuppressionAssertionWithReason:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (!self->_lockElementSuppressionAssertions)
    {
      v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      lockElementSuppressionAssertions = self->_lockElementSuppressionAssertions;
      self->_lockElementSuppressionAssertions = v5;
    }

    v7 = SBLogSystemApertureLockElement();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v4;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Acquiring system aperture lock element suppression assertion for reason: %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v8 = objc_alloc(MEMORY[0x277CF0CE8]);
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __86__SBLockScreenManager_acquireSystemApertureLockElementSuppressionAssertionWithReason___block_invoke;
    v13[3] = &unk_2783A9070;
    objc_copyWeak(&v14, buf);
    v11 = [v8 initWithIdentifier:v10 forReason:v4 invalidationBlock:v13];

    [(NSHashTable *)self->_lockElementSuppressionAssertions addObject:v11];
    if ([(NSHashTable *)self->_lockElementSuppressionAssertions count]== 1)
    {
      [(SBLockScreenManager *)self reevaluateSystemApertureLockElementSuppressionWithReason:@"Lock element suppression assertion acquired"];
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __86__SBLockScreenManager_acquireSystemApertureLockElementSuppressionAssertionWithReason___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogSystemApertureLockElement();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 reason];
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "System aperture lock element suppression assertion did invalidate with reason: %{public}@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[40] removeObject:v3];
    if (![v7[40] count])
    {
      v8 = v7[40];
      v7[40] = 0;

      [v7 reevaluateSystemApertureLockElementSuppressionWithReason:@"Last lock element suppression assertion invalidated"];
    }
  }
}

- (id)acquireSystemApertureLockElementBloomSuppressionAssertionWithReason:(id)a3
{
  v4 = a3;
  lockElementBloomSuppressionAssertions = self->_lockElementBloomSuppressionAssertions;
  if (!lockElementBloomSuppressionAssertions)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277CF0BD0];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __91__SBLockScreenManager_acquireSystemApertureLockElementBloomSuppressionAssertionWithReason___block_invoke;
    v16 = &unk_2783AD688;
    objc_copyWeak(&v17, &location);
    v7 = [v6 assertionWithIdentifier:@"LockElementBloomSuppression" stateDidChangeHandler:&v13];
    v8 = self->_lockElementBloomSuppressionAssertions;
    self->_lockElementBloomSuppressionAssertions = v7;

    v9 = self->_lockElementBloomSuppressionAssertions;
    v10 = SBLogSystemApertureLockElement();
    [(BSCompoundAssertion *)v9 setLog:v10, v13, v14, v15, v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    lockElementBloomSuppressionAssertions = self->_lockElementBloomSuppressionAssertions;
  }

  v11 = [(BSCompoundAssertion *)lockElementBloomSuppressionAssertions acquireForReason:v4];

  return v11;
}

void __91__SBLockScreenManager_acquireSystemApertureLockElementBloomSuppressionAssertionWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBloomIfNeeded];
}

- (id)acquireSystemApertureLockElementBloomAssertionWithReason:(id)a3
{
  v4 = a3;
  lockElementBloomAssertions = self->_lockElementBloomAssertions;
  if (!lockElementBloomAssertions)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277CF0BD0];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __80__SBLockScreenManager_acquireSystemApertureLockElementBloomAssertionWithReason___block_invoke;
    v16 = &unk_2783AD688;
    objc_copyWeak(&v17, &location);
    v7 = [v6 assertionWithIdentifier:@"LockElementBloom" stateDidChangeHandler:&v13];
    v8 = self->_lockElementBloomAssertions;
    self->_lockElementBloomAssertions = v7;

    v9 = self->_lockElementBloomAssertions;
    v10 = SBLogSystemApertureLockElement();
    [(BSCompoundAssertion *)v9 setLog:v10, v13, v14, v15, v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    lockElementBloomAssertions = self->_lockElementBloomAssertions;
  }

  v11 = [(BSCompoundAssertion *)lockElementBloomAssertions acquireForReason:v4];

  return v11;
}

void __80__SBLockScreenManager_acquireSystemApertureLockElementBloomAssertionWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBloomIfNeeded];
}

- (id)acquireSystemApertureLockElementVisibleAssertionWithReason:(id)a3
{
  v4 = a3;
  lockElementVisibleAssertions = self->_lockElementVisibleAssertions;
  if (!lockElementVisibleAssertions)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277CF0BD0];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __82__SBLockScreenManager_acquireSystemApertureLockElementVisibleAssertionWithReason___block_invoke;
    v16 = &unk_2783AD688;
    objc_copyWeak(&v17, &location);
    v7 = [v6 assertionWithIdentifier:@"LockElementVisible" stateDidChangeHandler:&v13];
    v8 = self->_lockElementVisibleAssertions;
    self->_lockElementVisibleAssertions = v7;

    v9 = self->_lockElementVisibleAssertions;
    v10 = SBLogSystemApertureLockElement();
    [(BSCompoundAssertion *)v9 setLog:v10, v13, v14, v15, v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    lockElementVisibleAssertions = self->_lockElementVisibleAssertions;
  }

  v11 = [(BSCompoundAssertion *)lockElementVisibleAssertions acquireForReason:v4];

  return v11;
}

void __82__SBLockScreenManager_acquireSystemApertureLockElementVisibleAssertionWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained _shouldBeShowingLockElement] & 1) == 0)
  {
    [WeakRetained _setSystemApertureProudLockElementVisible:0 withReason:@"LockElementVisibleAssertionStateChange"];
  }
}

- (void)reevaluateSystemApertureLockElementSuppressionWithReason:(id)a3
{
  [(SBLockScreenManager *)self _reevaluateSystemApertureLockElementSuppressionWithReason:a3];

  [(SBLockScreenManager *)self _updateBloomIfNeeded];
}

- (void)_reevaluateSystemApertureLockElementSuppressionWithReason:(id)a3
{
  v4 = a3;
  if ([(SBLockScreenManager *)self _shouldHideLockForElementSuppressionAssertion])
  {
    [(SBLockScreenManager *)self _setSystemApertureProudLockElementVisible:0 withReason:v4];
  }

  else
  {
    [(SBLockScreenManager *)self _showSystemApertureProudLockElementIfSupportedWithReason:v4];
  }
}

- (void)noteContinuityDisplayWindowSceneConnectionDidChange
{
  if (self->_isReadyForContinuityDisplays || ([SBApp hasFinishedLaunching] & 1) != 0 || self->_uiHasBeenLockedOnce)
  {

    [(SBLockScreenManager *)self _sendUILockStateChangedNotification];
  }

  else
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBLockScreenManager] suppressing lock state change for continuity display connection, not ready yet after boot", v4, 2u);
    }
  }
}

- (void)migrateNotificationsToHistory
{
  v2 = [(SBLockScreenManager *)self coverSheetViewController];
  [v2 _migrateNotificationsToHistory];
}

- (void)lockScreenViewControllerWillPresent
{
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBLockScreenManager lockScreenViewControllerWillPresent]", v6, 2u);
  }

  [(SBLockScreenManager *)self _evaluateWallpaperMode];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = [(SBLockScreenManager *)self _hostingWindowScene];
  [v4 postNotificationName:@"SBLockScreenUIWillPresentNotification" object:v5];
}

uint64_t __57__SBLockScreenManager_lockScreenViewControllerDidPresent__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 120) & 1) == 0)
  {
    v2 = result;
    result = [*(v1 + 168) isAuthenticated];
    if ((result & 1) == 0)
    {
      result = [*(*(v2 + 32) + 168) hasPasscodeSet];
      if (result)
      {
        SBUIPrewarmKeyboard();
        v3 = *(v2 + 32);

        return [v3 setPasscodeVisible:1 animated:0];
      }
    }
  }

  return result;
}

- (void)lockScreenViewControllerWillDismissWithVelocity:(double)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[SBLockScreenManager lockScreenViewControllerWillDismissWithVelocity:]", buf, 2u);
  }

  v6 = [(SBLockScreenUnlockRequest *)self->_unlockRequest source];
  [(SBLockScreenManager *)self setUIUnlocking:1];
  v7 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
  [v7 prepareForUIUnlock];

  if (v6 != 23)
  {
    v8 = [SBApp homeHardwareButton];
    [v8 cancelLongPress];
  }

  v9 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment buttonObserver];
  v10 = [v9 createHomeButtonSuppressAfterUnlockRecognizerForUnlockSource:v6];

  if (v10)
  {
    [(SBLockScreenManager *)self _setHomeButtonSuppressAfterUnlockRecognizer:v10];
  }

  [(SBLockScreenManager *)self _setUILocked:0];
  BKSHIDServicesAmbientLightSensorEnableAutoBrightness();
  [(SBLockScreenManager *)self _sendUILockStateChangedNotification];
  v11 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  [v11 resetIdleTimerForReason:@"LockScreenVCWillDismiss"];

  v12 = +[SBEventObserverRegistry sharedInstance];
  [v12 postEventToInterestedObservers:*MEMORY[0x277D66F98]];

  [(SBLockScreenManager *)self _runUnlockActionBlock:1];
  v13 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
  [v13 finishUIUnlockFromSource:v6];

  v14 = +[SBLockStateAggregator sharedInstance];
  LOBYTE(v13) = [v14 hasAnyLockState];

  if ((v13 & 1) == 0)
  {
    v15 = +[SBWorkspace mainWorkspace];
    v16 = [v15 pipCoordinator];

    [v16 setPictureInPictureWindowsHidden:0 withReason:@"SBLockScreenPictureInPictureHiddenReason"];
  }

  [(SBLockScreenManager *)self _unlockStateObservers];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v17 = +[SBApplicationController sharedInstance];
  v18 = [v17 allApplications];

  v19 = [v18 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v53;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v53 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v52 + 1) + 8 * i);
        [v23 setHasDisplayedLaunchAlert:0 forType:3];
        [v23 setHasShownDataPlanAlertSinceLock:0];
      }

      v20 = [v18 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v20);
  }

  v24 = +[SBKeyboardSuppressionManager sharedInstance];
  [v24 stopSuppressingKeyboardWithReason:@"SBSuppressKeyboardForUILock"];

  v25 = +[SBWorkspace mainWorkspace];
  v26 = [v25 createRequestWithOptions:0];

  [v26 finalize];
  v27 = [v26 applicationContext];
  v28 = [v27 applicationSceneEntities];

  if ([v28 count])
  {
    v46 = v26;
    v29 = v10;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v30 = v28;
    v31 = [v30 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v49;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v49 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [*(*(&v48 + 1) + 8 * j) sceneHandle];
          v36 = [v35 sceneIfExists];
          [v36 updateSettingsWithBlock:&__block_literal_global_305];
        }

        v32 = [v30 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v32);
    }

    v37 = +[SBWorkspace mainWorkspace];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __71__SBLockScreenManager_lockScreenViewControllerWillDismissWithVelocity___block_invoke_2;
    v47[3] = &__block_descriptor_40_e42_v16__0__SBMainWorkspaceTransitionRequest_8l;
    *&v47[4] = a3;
    [v37 requestTransitionWithBuilder:v47];
    v10 = v29;
    v26 = v46;
  }

  else
  {
    v42 = SBLogCommon();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      [SBLockScreenManager lockScreenViewControllerWillDismissWithVelocity:v42];
    }

    v43 = [(SBLockScreenManager *)&self->super.isa rootViewController];
    v37 = [v43 _sbWindowScene];

    v44 = [v37 homeScreenController];
    [v44 beginRequiringContentForReason:@"SBUIHomeScreenActiveContentRequirementReason"];
    if (+[SBFloatingDockController isFloatingDockSupported])
    {
      v45 = [v44 homeScreenViewController];
      [v45 nudgeIconInterfaceOrientation:objc_msgSend(SBApp duration:{"interfaceOrientationForCurrentDeviceOrientation:", 0), 0.0}];
    }
  }

  v38 = +[SBAlertItemsController sharedInstance];
  [v38 activatePendedAlertsIfNecessary];

  if (![v28 count] || (-[SBLockScreenManager lockScreenViewControllerWillDismissWithVelocity:].cold.2(&self->super.isa) & 1) != 0)
  {
    v39 = [(SBLockScreenManager *)self _statusBarLayoutManager];
    [v39 setDefaultWindowLevel:*MEMORY[0x277D772B8] + -1.0];
  }

  v40 = [MEMORY[0x277CCAB98] defaultCenter];
  v41 = [(SBLockScreenManager *)self _hostingWindowScene];
  [v40 postNotificationName:@"SBLockScreenUIWillDismissNotification" object:v41];
}

void __71__SBLockScreenManager_lockScreenViewControllerWillDismissWithVelocity___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__SBLockScreenManager_lockScreenViewControllerWillDismissWithVelocity___block_invoke_3;
  v3[3] = &__block_descriptor_40_e54_v16__0__SBWorkspaceApplicationSceneTransitionContext_8l;
  v3[4] = *(a1 + 32);
  v2 = a2;
  [v2 modifyApplicationContext:v3];
  [v2 setSource:11];
  [v2 setTransactionProvider:&__block_literal_global_309_0];
}

void __71__SBLockScreenManager_lockScreenViewControllerWillDismissWithVelocity___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SBWorkspaceCoverSheetFlyInContext alloc] initWithProgress:1 velocity:1.0 supportsBlur:*(a1 + 32)];
  [v3 setCoverSheetFlyInContext:v4];
}

SBCoverSheetToAppsWorkspaceTransaction *__71__SBLockScreenManager_lockScreenViewControllerWillDismissWithVelocity___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SBCoverSheetToAppsWorkspaceTransaction alloc] initWithTransitionRequest:v2];

  return v3;
}

uint64_t __57__SBLockScreenManager_lockScreenViewControllerDidDismiss__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 296) == 1)
  {
    if (*(result + 272))
    {
      return [result _cleanupSystemApertureLockElementIgnoringDelays:1 reason:@"DidDismissPlusDelay"];
    }
  }

  return result;
}

- (void)lockScreenViewControllerWillPerformTransitionToFinalValue:(double)a3 forUserGesture:(BOOL)a4 withVelocity:(double)a5 animated:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v20[5] = *MEMORY[0x277D85DE8];
  v19[0] = @"SBLockScreenUIWillPerformTransitionFinalValueKey";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v20[0] = v10;
  v19[1] = @"SBLockScreenUIWillPerformTransitionForUserGestureKey";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v20[1] = v11;
  v19[2] = @"SBLockScreenUIWillPerformTransitionVelocityKey";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v20[2] = v12;
  v19[3] = @"SBLockScreenUIWillPerformTransitionAnimatedKey";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v20[3] = v13;
  v19[4] = @"SBLockScreenUIWillPerformTransitionLowLuminanceKey";
  v14 = MEMORY[0x277CCABB0];
  v15 = +[SBBacklightController sharedInstance];
  v16 = [v14 numberWithInt:{!SBBacklightStateIsActive(objc_msgSend(v15, "backlightState"))}];
  v20[4] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];

  v18 = [MEMORY[0x277CCAB98] defaultCenter];
  [v18 postNotificationName:@"SBLockScreenUIWillPerformTransitionNotification" object:self userInfo:v17];
}

- (void)coverSheetViewControllerIrisPlayingDidFinish:(id)a3
{
  if (self->_shouldTransitionIrisWallpaperToStillWhenPlaybackFinishes)
  {
    [(SBLockScreenManager *)self _evaluateWallpaperMode];
  }
}

- (void)coverSheetWindowedAccessoryViewControllerDidDismiss:(id)a3
{
  v3 = +[SBUIController sharedInstance];
  [v3 windowedAccessoryDismissed];
}

- (void)coverSheetWindowedAccessoryViewControllerDidPresent:(id)a3
{
  v3 = +[SBUIController sharedInstance];
  [v3 windowedAccessoryPresented];
}

- (void)coverSheetViewControllerWillPresentInlinePasscode:(id)a3
{
  [(SBLockScreenManager *)self _updateBloomIfNeeded];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"SBLockScreenPasscodeUIVisibilityUpdatedNotification" object:self];
}

- (void)coverSheetViewControllerDidDismissInlinePasscode:(id)a3
{
  v12 = a3;
  [(SBLockScreenManager *)self _updateBloomIfNeeded];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"SBLockScreenPasscodeUIVisibilityUpdatedNotification" object:self];

  if (CSFeatureEnabled())
  {
    v5 = [(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated];
    v6 = [v12 externalLockProvidersRequireUnlock];
    v7 = +[SBCoverSheetPresentationManager sharedInstance];
    v8 = [v7 isInSecureApp];

    v9 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
    v10 = [v9 isProcessingUnlockAttempt];

    if ((v5 & (v6 ^ 1) & 1) == 0 && (v8 & 1) == 0 && (v10 & 1) == 0)
    {
      v11 = +[SBCoverSheetPresentationManager sharedInstance];
      [v11 setCoverSheetTranslationToPresented:1 forcingTransition:0 ignoringPreflightRequirements:0 animated:1];
    }
  }
}

- (void)coverSheetViewControllerDidCancelInlinePasscode:(id)a3
{
  v5 = a3;
  if (CSFeatureEnabled())
  {
    [(SBLockScreenManager *)self coverSheetViewControllerDidDismissInlinePasscode:v5];
    v4 = +[SBCoverSheetPresentationManager sharedInstance];
    [v4 reenableCoverSheetScalingForPositioning];
  }
}

- (void)coverSheetViewController:(id)a3 requestsTransientOverlaysDismissedAnimated:(BOOL)a4
{
  v4 = [SBMainWorkspace sharedInstance:a3];
  v6 = [v4 transientOverlayPresentationManager];

  if ([v6 hasActivePresentation])
  {
    v5 = +[SBTransientOverlayDismissalRequest dismissalRequestForAllViewControllers];
    [v6 performDismissalRequest:v5];
  }
}

- (void)coverSheetViewControllerRequestsTranslationToPresentedForExternalLockProvider:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (CSFeatureEnabled())
  {
    v6 = +[SBCoverSheetPresentationManager sharedInstance];
    [v6 setCoverSheetTranslationToPresented:v5 forcingTransition:0 ignoringPreflightRequirements:1 animated:v4];
  }
}

- (void)coverSheetViewController:(id)a3 startSpotlightInteractiveGestureTransactionForGesture:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 spotlightInteractiveGestureTransaction];

  if (!v7)
  {
    v8 = SBApp;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __102__SBLockScreenManager_coverSheetViewController_startSpotlightInteractiveGestureTransactionForGesture___block_invoke;
    v12[3] = &unk_2783ACE58;
    v13 = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __102__SBLockScreenManager_coverSheetViewController_startSpotlightInteractiveGestureTransactionForGesture___block_invoke_2;
    v9[3] = &unk_2783C2600;
    v10 = v13;
    v11 = v5;
    [v8 beginInteractiveSpotlightTransientOverlayPresentationWithValidator:v12 beginHandler:v9];
  }
}

void __102__SBLockScreenManager_coverSheetViewController_startSpotlightInteractiveGestureTransactionForGesture___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isDragging])
  {
    [*(a1 + 40) setSpotlightInteractiveGestureTransaction:v3];
    objc_initWeak(&location, *(a1 + 40));
    v4 = [v3 completionBlock];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __102__SBLockScreenManager_coverSheetViewController_startSpotlightInteractiveGestureTransactionForGesture___block_invoke_3;
    v6[3] = &unk_2783C25D8;
    v5 = v4;
    v7 = v5;
    objc_copyWeak(&v8, &location);
    [v3 setCompletionBlock:v6];
    objc_destroyWeak(&v8);

    objc_destroyWeak(&location);
  }

  else
  {
    [v3 noteGestureFinishedBeforeTransactionBegan];
  }
}

void __102__SBLockScreenManager_coverSheetViewController_startSpotlightInteractiveGestureTransactionForGesture___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setSpotlightInteractiveGestureTransaction:0];
    WeakRetained = v4;
  }
}

- (BOOL)coverSheetViewControllerHasSecureApp:(id)a3
{
  v3 = +[SBSecureAppManager sharedInstance];
  v4 = [v3 hasSecureApp];

  return v4;
}

- (BOOL)coverSheetViewControllerIsShowingSecureApp:(id)a3
{
  v3 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
  v4 = [v3 isInSecureApp];

  return v4;
}

- (BOOL)coverSheetViewControllerHasBeenDismissedSinceKeybagLock:(id)a3
{
  v3 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
  v4 = [v3 hasBeenDismissedSinceKeybagLock];

  return v4;
}

- (id)averageColorForCurrentWallpaperInScreenRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = +[SBWallpaperController sharedInstance];
  v8 = [v7 averageColorInRect:0 forVariant:{x, y, width, height}];

  return v8;
}

- (double)contrastForCurrentWallpaper
{
  v2 = +[SBWallpaperController sharedInstance];
  [v2 contrastForVariant:0];
  v4 = v3;

  return v4;
}

- (id)coordinatorRequestedIdleTimerBehavior:(id)a3
{
  v4 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment idleTimerProvider];
  v5 = v4;
  if (v4)
  {
    [v4 coordinatorRequestedIdleTimerBehavior:self];
  }

  else
  {
    +[SBIdleTimerBehavior disabledBehavior];
  }
  v6 = ;

  return v6;
}

- (void)_wakeScreenForTapToWake
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = +[SBBacklightController sharedInstance];
  if (([v3 screenIsOn] & 1) == 0)
  {
    kdebug_trace();
    v7[0] = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v7[1] = @"SBUIUnlockOptionsStartFadeInAnimation";
    v8[0] = v4;
    v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v8[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
    [(SBLockScreenManager *)self unlockUIFromSource:17 withOptions:v6];
  }
}

- (void)motionDetectionWakeController:(id)a3 motionDetectStateChanged:(BOOL)a4
{
  v4 = a4;
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v4)
  {
    if (!self->_motionDetectionIdleTimerAssertion)
    {
      v7 = SBLogBacklight();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Disabling idle timer because motion detected", v14, 2u);
      }

      v8 = +[SBIdleTimerGlobalCoordinator sharedInstanceIfExists];
      v9 = [v8 acquireIdleTimerDisableAssertionForReason:@"Motion-to-Wake"];
      motionDetectionIdleTimerAssertion = self->_motionDetectionIdleTimerAssertion;
      self->_motionDetectionIdleTimerAssertion = v9;
    }

    v11 = +[SBBacklightController sharedInstance];
    if (([v11 screenIsOn] & 1) == 0)
    {
      v15[0] = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
      v15[1] = @"SBUIUnlockOptionsStartFadeInAnimation";
      v16[0] = MEMORY[0x277CBEC38];
      v16[1] = MEMORY[0x277CBEC38];
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
      [(SBLockScreenManager *)self unlockUIFromSource:38 withOptions:v12];
    }
  }

  else
  {
    v13 = SBLogBacklight();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Ending idle timer disabling because no motion detected", v14, 2u);
    }

    [(BSInvalidatable *)self->_motionDetectionIdleTimerAssertion invalidate];
    v11 = self->_motionDetectionIdleTimerAssertion;
    self->_motionDetectionIdleTimerAssertion = 0;
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (self->_mouseButtonDownGesture != a3)
  {
    return 1;
  }

  v5 = +[SBBacklightController sharedInstance];
  v6 = [v5 screenIsOn];
  if (v6)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "_mouseButtonDownGesture: not receiving touch because screen is already on", v9, 2u);
    }
  }

  v4 = v6 ^ 1;

  return v4;
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_alertLaunchFinish && self->_wakeToRemoteAlertHandle == v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SBLockScreenManager_remoteAlertHandleDidActivate___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __52__SBLockScreenManager_remoteAlertHandleDidActivate___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 152);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)tapToWakeControllerDidRecognizePencilWakeGesture:(id)a3
{
  v4 = [(SBLockScreenManager *)self coverSheetViewController];
  v5 = [v4 applicationLauncher];
  [v5 launchQuickNote];

  [(SBLockScreenManager *)self _wakeScreenForTapToWake];
}

- (BOOL)biometricAuthenticationCoordinator:(id)a3 requestsUnlockWithIntent:(int)a4
{
  v6 = a3;
  if (self->_isUILocked)
  {
    if (a4 == 3)
    {
      if ([(SBLockScreenManager *)self isLockScreenVisible])
      {
        v7 = 1;
LABEL_10:
        v10 = [(SBFUserAuthenticationController *)self->_userAuthController createGracePeriodAssertionWithReason:@"Bio authentication attempt"];
        [v10 activate];
        v8 = [(SBLockScreenManager *)self _attemptUnlockWithPasscode:0 mesa:1 finishUIUnlock:v7];
        [v10 invalidate];

        goto LABEL_11;
      }

      v9 = SBLogLockScreenBiometricCoordinator();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Bio authentication request to dismiss denied because the lock-screen isn't currently visible -> swizzling unlock intent to authenticate only.", v12, 2u);
      }
    }

    v7 = 0;
    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (BOOL)biometricAuthenticationCoordinator:(id)a3 requestsAuthenticationFeedback:(id)a4
{
  v5 = a4;
  if ([(SBLockScreenManager *)self isLockScreenVisible])
  {
    v6 = ![(SBLockScreenManager *)self _isPasscodeVisible];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277D67C98] sharedInstance];
  v8 = [v7 biometricLockoutState];

  if (v6)
  {
    v9 = [(SBLockScreenManager *)self coverSheetViewController];
    if (![v9 phoneUnlockEnabledAndRequirementsMet] || v8)
    {
      [(SBLockScreenManager *)self _handleAuthenticationFeedback:v5];
    }
  }

  return v6;
}

- (void)biometricAuthenticationCoordinator:(id)a3 handleIdentityMatchSuccess:(BOOL)a4
{
  v4 = a4;
  v5 = [(SBLockScreenManager *)self coverSheetViewController];
  [v5 completePhoneAutoUnlockWithNotification:!v4];
}

- (BOOL)biometricAuthenticationCoordinatorShouldWaitToInvalidateMatchingAssertion:(id)a3
{
  v3 = [(SBLockScreenManager *)self coverSheetViewController];
  v4 = [v3 shouldCompletePhoneAutoUnlockWithNotification];

  return v4;
}

- (void)lostModeBiometricAuthenticationViewControllerDidSucceedAuthentication:(id)a3
{
  [(SBLockScreenManager *)self _dismissLostModeBiometricAuthenticationTransientOverlay];

  [(SBLockScreenManager *)self _dismissLockScreenForAuthenticationIfNecessary];
}

- (void)lostModeBiometricAuthenticationViewControllerDidTapEmergencyButton:(id)a3
{
  [(SBLockScreenManager *)self _relockUIForLostMode];
  v5 = [(SBLockScreenManager *)self coverSheetViewController];
  v4 = [MEMORY[0x277D02B80] actionWithType:2];
  [v5 handleAction:v4 fromSender:0];
}

- (void)_setSystemApertureProudLockElementVisible:(BOOL)a3 withReason:(id)a4 afterDelay:(double)a5
{
  v8 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__SBLockScreenManager__setSystemApertureProudLockElementVisible_withReason_afterDelay___block_invoke;
  v14[3] = &unk_2783A97D8;
  v15 = v8;
  v16 = self;
  v17 = a3;
  v9 = v8;
  v10 = MEMORY[0x223D6F7F0](v14);
  v11 = [v9 copy];
  delayedLockReason = self->_delayedLockReason;
  self->_delayedLockReason = v11;

  v13 = dispatch_time(0, (a5 * 1000000000.0));
  dispatch_after(v13, MEMORY[0x277D85CD0], v10);
}

void *__87__SBLockScreenManager__setSystemApertureProudLockElementVisible_withReason_afterDelay___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isEqualToString:*(*(a1 + 40) + 288)];
  result = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);

    return [result _setSystemApertureProudLockElementVisible:v4 withReason:v5];
  }

  else if (!result[36])
  {
    v6 = SBLogSystemApertureLockElement();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "The dismiss reason has changed from reason:%{public}@ to nil", &v8, 0xCu);
    }

    return [*(a1 + 40) _setSystemApertureProudLockElementVisible:objc_msgSend(*(a1 + 40) withReason:{"_shouldBeShowingLockElement"), @"Collision cleanup"}];
  }

  return result;
}

- (void)_setSystemApertureProudLockElementVisible:(BOOL)a3 withReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[SBBacklightController sharedInstance];
  -[SBLockScreenManager _setSystemApertureProudLockElementVisible:backlightState:withReason:](self, "_setSystemApertureProudLockElementVisible:backlightState:withReason:", v4, [v7 backlightState], v6);
}

- (void)_setSystemApertureProudLockElementVisible:(BOOL)a3 backlightState:(int64_t)a4 withReason:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = +[SBLockElementViewProvider deviceSupportsElement];
  v10 = [(SBLockScreenManager *)self _requiresEmptyLockElementForBacklightState:a4];
  v11 = [(SBLockScreenManager *)self _shouldHideLockForElementSuppressionAssertion];
  v12 = [(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet];
  if (v6)
  {
    if (!v11 && v9 && v12 | v10)
    {
      delayedLockReason = self->_delayedLockReason;
      self->_delayedLockReason = 0;

      if (v10 != [(SBLockElementViewProvider *)self->_lockElement isEmpty])
      {
        [(SAInvalidatable *)self->_proudLockAssertion invalidateWithReason:@"Changing lock provider empty state"];
        proudLockAssertion = self->_proudLockAssertion;
        self->_proudLockAssertion = 0;
      }

      if (!self->_proudLockAssertion)
      {
        lockElement = self->_lockElement;
        if (!lockElement)
        {
          v16 = objc_alloc_init(SBLockElementViewProvider);
          v17 = self->_lockElement;
          self->_lockElement = v16;

          v18 = self->_lockElement;
          WeakRetained = objc_loadWeakRetained(&self->_indicatorHost);
          [(SBLockElementViewProvider *)v18 setIndicatorHost:WeakRetained];

          lockElement = self->_lockElement;
        }

        [(SBLockElementViewProvider *)lockElement setEmpty:v10];
        [(SBLockElementViewProvider *)self->_lockElement setAuthenticated:[(SBFUserAuthenticationController *)self->_userAuthController isAuthenticatedCached]];
        v20 = [SBApp systemApertureControllerForMainDisplay];
        v21 = [v20 registerElement:self->_lockElement];
        v22 = self->_proudLockAssertion;
        self->_proudLockAssertion = v21;

        [(SBLockScreenManager *)self _updateBloomIfNeeded];
      }
    }
  }

  else
  {
    v23 = self->_delayedLockReason;
    self->_delayedLockReason = 0;

    if (([(BSCompoundAssertion *)self->_lockElementVisibleAssertions isActive]& 1) != 0)
    {
      v24 = SBLogSystemApertureLockElement();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Cannot hide lock element because we have an active lock element visible assertion", v26, 2u);
      }
    }

    else
    {
      [(SAInvalidatable *)self->_proudLockAssertion invalidateWithReason:v8];
      v25 = self->_proudLockAssertion;
      self->_proudLockAssertion = 0;
    }
  }
}

- (void)_cleanupSystemApertureLockElementIgnoringDelays:(BOOL)a3 reason:(id)a4
{
  v4 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self->_proudLockAssertion && ![(SBLockScreenManager *)self _shouldBeShowingLockElement])
  {
    if (v4)
    {
      v7 = SBLogSystemApertureLockElement();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        v10 = v6;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "SBLockScreenManager dismissed lock element without delay with reason:%{public}@", &v9, 0xCu);
      }

      goto LABEL_11;
    }

    if (!self->_delayedLockReason)
    {
LABEL_11:
      self->_ignoringDelayDismissalPending = 0;
      [(SBLockScreenManager *)self _setSystemApertureProudLockElementVisible:0 withReason:v6];
      goto LABEL_12;
    }

    v8 = SBLogSystemApertureLockElement();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBLockScreenManager tried to dismiss aperture forReason:%{public}@ but in delay", &v9, 0xCu);
    }
  }

LABEL_12:
}

- (void)_showSystemApertureProudLockElementIfSupportedWithReason:(id)a3
{
  v4 = a3;
  if ([(SBLockScreenManager *)self _shouldBeShowingLockElement])
  {
    [(SBLockScreenManager *)self _setSystemApertureProudLockElementVisible:1 withReason:v4];
  }
}

- (void)_showSystemApertureProudLockElementForBacklightState:(int64_t)a3 WithReason:(id)a4
{
  v6 = a4;
  if ([(SBLockScreenManager *)self _shouldBeShowingLockElementForBacklightState:a3])
  {
    [(SBLockScreenManager *)self _setSystemApertureProudLockElementVisible:1 backlightState:a3 withReason:v6];
  }
}

- (BOOL)_shouldBeShowingLockElement
{
  v3 = +[SBBacklightController sharedInstance];
  LOBYTE(self) = -[SBLockScreenManager _shouldBeShowingLockElementForBacklightState:](self, "_shouldBeShowingLockElementForBacklightState:", [v3 backlightState]);

  return self;
}

- (BOOL)_shouldBeShowingLockElementForBacklightState:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(SBLockScreenManager *)self isLockScreenActive];
  v6 = self->_isUILocked || v5;
  v7 = [(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated];
  v8 = [(SBLockScreenManager *)self _requiresEmptyLockElementForBacklightState:a3];
  v9 = v6 & (v7 ^ 1 | v8);
  if (v9)
  {
    v10 = v8;
    v11 = SBLogSystemApertureLockElement();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109632;
      v13[1] = v5;
      v14 = 1024;
      v15 = v7 & 1;
      v16 = 1024;
      v17 = v10;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[SBLockScreenManager][Lock Element] should show lock element. lockScreenActive: %{BOOL}u, authed: %{BOOL}u, empty: %{BOOL}u", v13, 0x14u);
    }
  }

  return v9 & 1;
}

- (BOOL)_requiresEmptyLockElementForBacklightState:(int64_t)a3
{
  v4 = [(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet]^ 1;
  if (a3 == 3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (void)homeButtonShowPasscodeRecognizerRequestsPasscodeUIToBeShown:(id)a3
{
  if (self->_isScreenOn && [(SBLockScreenManager *)self isUILocked]&& ([(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated]& 1) == 0 && [(SBLockScreenManager *)self isLockScreenVisible]&& ![(SBLockScreenManager *)self _isPasscodeVisible])
  {
    if ([(SBLockScreenManager *)self _shouldEmulateInterstitialPresentationForAccessibility:1])
    {
      if (CSFeatureEnabled())
      {
        v4 = +[SBCoverSheetPresentationManager sharedInstance];
        [v4 setCoverSheetTranslationToPresented:0 forcingTransition:0 ignoringPreflightRequirements:0 animated:1];
      }

      else
      {
        [(SBLockScreenManager *)self _emulateInterstitialPasscodePresentationForAccessibility:1];
      }
    }

    [(SBLockScreenManager *)self _setPasscodeVisible:1 animated:1 ignoringPreflightRequirementsForPresentation:1];
  }

  [(SBLockScreenManager *)self _setHomeButtonShowPasscodeRecognizer:0];
}

- (void)_handleAuthenticationFeedback:(id)a3
{
  v4 = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__SBLockScreenManager__handleAuthenticationFeedback___block_invoke;
  v17[3] = &unk_2783A92D8;
  v5 = v4;
  v18 = v5;
  v19 = self;
  v6 = MEMORY[0x223D6F7F0](v17);
  if ([v5 vibrate])
  {
    v7 = [v5 result];
    v8 = [MEMORY[0x277D67C98] sharedInstance];
    v9 = [v8 hasPearlSupport];
    v10 = v9;
    if (v7)
    {

      v11 = 1001;
      if (v10)
      {
        v11 = 1015;
      }

      goto LABEL_12;
    }

    if (v9)
    {
      v12 = _AXSPearlAuthenticationHapticsEnabled();

      if (v12)
      {
        v11 = 1014;
LABEL_12:
        authenticationFeedbackGenerator = self->_authenticationFeedbackGenerator;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __53__SBLockScreenManager__handleAuthenticationFeedback___block_invoke_2;
        v14[3] = &unk_2783B3D68;
        v14[4] = self;
        v16 = v11;
        v15 = v6;
        [(UINotificationFeedbackGenerator *)authenticationFeedbackGenerator activateWithCompletionBlock:v14];

        goto LABEL_13;
      }
    }

    else
    {
    }

    v11 = 1000;
    goto LABEL_12;
  }

  v6[2](v6);
LABEL_13:
}

void __53__SBLockScreenManager__handleAuthenticationFeedback___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) jiggleLock])
  {
    v2 = [*(*(a1 + 40) + 32) lockController];
    [v2 jiggleLockIcon];

    [*(*(a1 + 40) + 280) shake];
  }

  if ([*(a1 + 32) showPasscode])
  {
    if ([*(a1 + 40) isLockScreenVisible])
    {
      v3 = [*(*(a1 + 40) + 32) controlCenterPresenter];
      v4 = [v3 isVisible];

      if ((v4 & 1) == 0)
      {
        v5 = *(a1 + 40);
        v6 = +[SBBacklightController sharedInstance];
        [v5 setPasscodeVisible:1 animated:{objc_msgSend(v6, "screenIsOn")}];
      }
    }
  }
}

void __53__SBLockScreenManager__handleAuthenticationFeedback___block_invoke_2(uint64_t a1, char a2)
{
  v4 = [MEMORY[0x277D02C20] rootSettings];
  [v4 lockJiggleHapticDelay];
  v6 = v5;
  [v4 lockJiggleAnimationDelay];
  v8 = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__SBLockScreenManager__handleAuthenticationFeedback___block_invoke_3;
  v13[3] = &unk_2783ABD10;
  v14 = a2;
  v9 = *(a1 + 48);
  v13[4] = *(a1 + 32);
  v13[5] = v9;
  v10 = MEMORY[0x223D6F7F0](v13);
  if (BSFloatIsZero())
  {
    v10[2](v10);
  }

  else
  {
    v11 = dispatch_time(0, (v6 * 1000000000.0));
    dispatch_after(v11, MEMORY[0x277D85CD0], v10);
  }

  if (BSFloatIsZero())
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = dispatch_time(0, (v8 * 1000000000.0));
    dispatch_after(v12, MEMORY[0x277D85CD0], *(a1 + 40));
  }
}

uint64_t __53__SBLockScreenManager__handleAuthenticationFeedback___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(*(a1 + 32) + 256) _privateNotificationOccurred:*(a1 + 40)];
  }

  v2 = *(*(a1 + 32) + 256);

  return [v2 deactivate];
}

- (void)_setWalletPreArmDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  *&v23[5] = *MEMORY[0x277D85DE8];
  v6 = a4;
  BSDispatchQueueAssertMain();
  if (!v6)
  {
    [SBLockScreenManager _setWalletPreArmDisabled:forReason:];
  }

  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109378;
    v23[0] = v4;
    LOWORD(v23[1]) = 2114;
    *(&v23[1] + 2) = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[SBLockScreenManager _setWalletPreArmDisabled:%{BOOL}u forReason:%{public}@]", &v22, 0x12u);
  }

  mesaWalletPreArmDisabledReasons = self->_mesaWalletPreArmDisabledReasons;
  if (v4)
  {
    if (!mesaWalletPreArmDisabledReasons)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v10 = self->_mesaWalletPreArmDisabledReasons;
      self->_mesaWalletPreArmDisabledReasons = v9;

      mesaWalletPreArmDisabledReasons = self->_mesaWalletPreArmDisabledReasons;
    }

    if ([(NSMutableSet *)mesaWalletPreArmDisabledReasons containsObject:v6])
    {
      p_super = SBLogCommon();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543362;
        *v23 = v6;
        _os_log_impl(&dword_21ED4E000, p_super, OS_LOG_TYPE_DEFAULT, "SBLockScreenManager - Bailing early as we already acquired a wallet pre-arm disabled assertion for reason: %{public}@", &v22, 0xCu);
      }
    }

    else
    {
      [(NSMutableSet *)self->_mesaWalletPreArmDisabledReasons addObject:v6];
      v15 = [(NSMutableDictionary *)self->_mesaWalletPreArmDisabledAssertions objectForKeyedSubscript:v6];

      if (v15)
      {
        goto LABEL_20;
      }

      v16 = SBLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543362;
        *v23 = v6;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "SBLockScreenManager - Acquiring a wallet pre-arm disable assertion for reason: %{public}@", &v22, 0xCu);
      }

      p_super = [(SBLockScreenBiometricAuthenticationCoordinator *)self->_biometricAuthenticationCoordinator acquireDisableWalletPreArmAssertionForReason:v6];
      if (p_super)
      {
        if ([(NSMutableSet *)self->_mesaWalletPreArmDisabledReasons containsObject:v6])
        {
          mesaWalletPreArmDisabledAssertions = self->_mesaWalletPreArmDisabledAssertions;
          if (!mesaWalletPreArmDisabledAssertions)
          {
            v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v19 = self->_mesaWalletPreArmDisabledAssertions;
            self->_mesaWalletPreArmDisabledAssertions = v18;

            mesaWalletPreArmDisabledAssertions = self->_mesaWalletPreArmDisabledAssertions;
          }

          [(NSMutableDictionary *)mesaWalletPreArmDisabledAssertions setObject:p_super forKeyedSubscript:v6];
          v20 = SBLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 138543362;
            *v23 = v6;
            _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "SBLockScreenManager - Added the wallet pre-arm disable assertion for reason: %{public}@", &v22, 0xCu);
          }
        }

        else
        {
          v21 = SBLogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 138543362;
            *v23 = v6;
            _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "SBLockScreenManager - Due to a re-entrant call that re-enabled wallet pre-arm, invalidating a pre-arm disable assertion with reason: %{public}@", &v22, 0xCu);
          }

          [p_super invalidate];
        }
      }
    }

    goto LABEL_18;
  }

  if (mesaWalletPreArmDisabledReasons)
  {
    [(NSMutableSet *)mesaWalletPreArmDisabledReasons removeObject:v6];
    if (![(NSMutableSet *)self->_mesaWalletPreArmDisabledReasons count])
    {
      v12 = self->_mesaWalletPreArmDisabledReasons;
      self->_mesaWalletPreArmDisabledReasons = 0;
    }
  }

  v13 = SBLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543362;
    *v23 = v6;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "SBLockScreenManager - Removing a wallet pre-arm disable assertion for reason: %{public}@", &v22, 0xCu);
  }

  v14 = [(NSMutableDictionary *)self->_mesaWalletPreArmDisabledAssertions objectForKeyedSubscript:v6];
  [v14 invalidate];

  [(NSMutableDictionary *)self->_mesaWalletPreArmDisabledAssertions removeObjectForKey:v6];
  if (![(NSMutableDictionary *)self->_mesaWalletPreArmDisabledAssertions count])
  {
    p_super = &self->_mesaWalletPreArmDisabledAssertions->super.super;
    self->_mesaWalletPreArmDisabledAssertions = 0;
LABEL_18:
  }

LABEL_20:
}

- (void)_setMesaCoordinatorDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v12 = v6;
  if (!v6)
  {
    [SBLockScreenManager _setMesaCoordinatorDisabled:forReason:];
    v6 = 0;
  }

  v7 = [(NSMutableDictionary *)self->_mesaCoordinatorDisabledAssertions objectForKeyedSubscript:v6];
  v8 = v7;
  if (v4)
  {

    if (v8)
    {
      goto LABEL_12;
    }

    if (!self->_mesaCoordinatorDisabledAssertions)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      mesaCoordinatorDisabledAssertions = self->_mesaCoordinatorDisabledAssertions;
      self->_mesaCoordinatorDisabledAssertions = v9;
    }

    v11 = [(SBLockScreenBiometricAuthenticationCoordinator *)self->_biometricAuthenticationCoordinator acquireDisableCoordinatorAssertionForReason:v12];
    if (v11)
    {
      [(NSMutableDictionary *)self->_mesaCoordinatorDisabledAssertions setObject:v11 forKeyedSubscript:v12];
    }
  }

  else
  {
    [v7 invalidate];

    [(NSMutableDictionary *)self->_mesaCoordinatorDisabledAssertions removeObjectForKey:v12];
    if ([(NSMutableDictionary *)self->_mesaCoordinatorDisabledAssertions count])
    {
      goto LABEL_12;
    }

    v11 = self->_mesaCoordinatorDisabledAssertions;
    self->_mesaCoordinatorDisabledAssertions = 0;
  }

LABEL_12:
}

- (void)_setMesaAutoUnlockingDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v8 = a4;
  v6 = [MEMORY[0x277D67C98] sharedInstance];
  v7 = [v6 hasPearlSupport];

  if ((v7 & 1) == 0)
  {
    [(SBLockScreenManager *)self setBiometricAutoUnlockingDisabled:v4 forReason:v8];
  }
}

- (void)_activateLockScreenAnimated:(BOOL)a3 animationProvider:(id)a4 automatically:(BOOL)a5 inScreenOffMode:(BOOL)a6 dismissNotificationCenter:(BOOL)a7 completion:(id)a8
{
  v8 = a6;
  v9 = a5;
  v10 = a3;
  v35[1] = *MEMORY[0x277D85DE8];
  v12 = a8;
  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  v34 = @"Animated";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  v35[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  [v13 postNotificationName:@"SBLockScreenUIWillLockNotification" object:self userInfo:v15];

  v16 = [SBTelephonyManager sharedTelephonyManagerCreatingIfNecessary:0];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 incomingCallExists];
    v19 = SBLogCommon();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (!v18 || v9)
    {
      if (v20)
      {
        *buf = 67109632;
        v29 = [v17 incomingCallExists];
        v30 = 1024;
        v31 = v9;
        v32 = 1024;
        v33 = v10;
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_INFO, "[[SBTelephonyManager sharedTelephonyManager] incomingCallExists] %d autoLock %d animate %d", buf, 0x14u);
      }

      if (!v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v20)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_INFO, "Disconnecting call", buf, 2u);
      }

      [v17 disconnectIncomingCall];
      if (!v8)
      {
LABEL_18:
        v23 = [(SBLockScreenManager *)self coverSheetViewController];
        [v23 activateMainPageWithCompletion:0];

        v24 = +[SBCoverSheetPresentationManager sharedInstance];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __136__SBLockScreenManager__activateLockScreenAnimated_animationProvider_automatically_inScreenOffMode_dismissNotificationCenter_completion___block_invoke;
        v25[3] = &unk_2783B1770;
        v25[4] = self;
        v27 = v10;
        v26 = v12;
        [v24 setCoverSheetPresented:1 animated:v10 withCompletion:v25];

        goto LABEL_19;
      }
    }
  }

  else
  {
    v21 = SBLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_INFO, "Telephony controller not checked in", buf, 2u);
    }

    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") & 1) == 0)
  {
    [(SBLockScreenOrientationManager *)self->_lockScreenOrientationManager updateInterfaceOrientationWithRequestedOrientation:0 animated:0];
  }

  v22 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment backlightController];
  [v22 setInScreenOffMode:1];

  if (v12)
  {
    (*(v12 + 2))(v12, 1);
  }

LABEL_19:
  [(SBLockScreenManager *)self _evaluateWallpaperMode];
}

uint64_t __136__SBLockScreenManager__activateLockScreenAnimated_animationProvider_automatically_inScreenOffMode_dismissNotificationCenter_completion___block_invoke(uint64_t a1)
{
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") & 1) == 0)
  {
    [*(*(a1 + 32) + 400) updateInterfaceOrientationWithRequestedOrientation:0 animated:*(a1 + 48)];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)_shouldDisconnectCallWhenLockingForActiveAudioRoute
{
  if (+[SBInCallPresentationManager isSpecializedAPISupported])
  {
    return 0;
  }

  v3 = +[SBAVSystemControllerCache sharedInstance];
  v4 = [v3 activeAudioRoute];

  if (v4)
  {
    v2 = [v4 isEqual:@"Receiver"];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

- (void)_disconnectActiveCallIfNeededFromSource:(int)a3
{
  v5 = +[SBInCallPresentationManager isSpecializedAPISupported];
  if (a3 == 3 && !v5)
  {
    v6 = +[SBConferenceManager sharedInstance];
    if ([v6 inFaceTime])
    {
      v7 = SBLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Terminating video call due to smart cover closure.", buf, 2u);
      }

      [v6 endFaceTime];
    }

    v8 = +[SBTelephonyManager sharedTelephonyManager];
    if ([v8 inCall] && -[SBLockScreenManager _shouldDisconnectCallWhenLockingForActiveAudioRoute](self, "_shouldDisconnectCallWhenLockingForActiveAudioRoute"))
    {
      v9 = SBLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Terminating telephony call due to smart cover closure.", v11, 2u);
      }

      v10 = +[SBTelephonyManager sharedTelephonyManager];
      [v10 disconnectDisplayedCall];
    }
  }
}

- (void)_relockUIForButtonlikeSource:(int)a3
{
  v3 = *&a3;
  if ([(SBLockScreenManager *)self isPasscodeEntryTransientOverlayVisible])
  {

    [(SBLockScreenManager *)self setPasscodeVisible:0 animated:1];
  }

  else
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"SBLockScreenUIRelockedNotification" object:self userInfo:0];

    if (!+[SBInCallPresentationManager isSpecializedAPISupported])
    {
      [(SBLockScreenManager *)self _disconnectActiveCallIfNeededFromSource:v3];
    }

    v6 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment backlightController];
    [v6 setInScreenOffMode:1];

    if ([(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet])
    {
      userAuthController = self->_userAuthController;
      v8 = NSStringFromLockSource();
      [(SBFUserAuthenticationController *)userAuthController revokeAuthenticationIfNecessaryForPublicReason:v8];
    }

    if (self->_isInLostMode)
    {

      [(SBLockScreenManager *)self enableLostModePlugin];
    }
  }
}

- (void)_clearAuthenticationLockAssertion
{
  sustainAuthenticationWhileUIUnlockedAssertion = self->_sustainAuthenticationWhileUIUnlockedAssertion;
  if (sustainAuthenticationWhileUIUnlockedAssertion)
  {
    [(SBFAuthenticationAssertion *)sustainAuthenticationWhileUIUnlockedAssertion invalidate];
    v4 = self->_sustainAuthenticationWhileUIUnlockedAssertion;
    self->_sustainAuthenticationWhileUIUnlockedAssertion = 0;
  }
}

- (void)_setUILocked:(BOOL)a3
{
  v3 = a3;
  if (!self->_allowUILockUnlock)
  {
    [SBLockScreenManager _setUILocked:];
  }

  [(SBLockScreenManager *)self _reallySetUILocked:v3];
}

- (void)_reallySetUILocked:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  userAuthController = self->_userAuthController;
  if (userAuthController && !a3 && ([(SBFUserAuthenticationController *)userAuthController isAuthenticated]& 1) == 0)
  {
    [SBLockScreenManager _reallySetUILocked:];
  }

  self->_isUILocked = a3;
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    isUILocked = self->_isUILocked;
    v11[0] = 67109120;
    v11[1] = isUILocked;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "UILocked: %d", v11, 8u);
  }

  v8 = [SBApp HIDUISensorController];
  [v8 setPocketTouchesExpected:self->_isUILocked];

  v9 = [SBTelephonyManager sharedTelephonyManagerCreatingIfNecessary:1];
  [v9 setFastDormancySuspended:!self->_isUILocked];

  [(SBLockScreenManager *)self _postLockCompletedNotification:self->_isUILocked];
  if (self->_isUILocked)
  {
    [(SBLockScreenManager *)self _setMesaCoordinatorDisabled:0 forReason:@"UI Unlocked"];
  }

  else
  {
    [(SBLockScreenBiometricAuthenticationCoordinator *)self->_biometricAuthenticationCoordinator setAuthenticated:[(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated]];
    [(SBLockScreenManager *)self _setMesaCoordinatorDisabled:1 forReason:@"UI Unlocked"];
    [(SBLockScreenManager *)self _createAuthenticationAssertion];
  }

  v10 = +[SBAlertItemsController sharedInstance];
  [v10 setInUILockedMode:self->_isUILocked];
}

- (void)_lockStateObservers
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(NSHashTable *)self->_lockStateObservers copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) lockStateProvider:self didUpdateIsUILocked:{1, v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)_canAttemptRealUIUnlockIgnoringBacklightNonsenseWithReason:(id *)a3
{
  if (([(SBFLockOutStatusProvider *)self->_lockOutController isBlocked]& 1) != 0)
  {
    v5 = @"Device is blocked";
  }

  else
  {
    if (self->_allowUILockUnlock)
    {
      return 1;
    }

    v5 = @"Global 'allow UIUnlock' flag is set to NO";
  }

  result = 0;
  *a3 = v5;
  return result;
}

- (void)requestUserAttentionScreenWakeFromSource:(int)a3 reason:(id)a4
{
  v4 = *&a3;
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = NSStringFromUnlockSource();
  if (![SBApp caseIsEnabledAndLatched])
  {
    v8 = +[SBBacklightController sharedInstance];
    v9 = [v8 backlightState];
    if (v9 >= 3)
    {
      if (v9 - 3 >= 2)
      {
        goto LABEL_17;
      }

      v14 = [(SBLockScreenManager *)self isLockScreenActive];
      v12 = SBLogCommon();
      v15 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        if (v15)
        {
          v16 = SBBacklightStateDescription(v9);
          *buf = 138543874;
          v19 = v7;
          v20 = 2114;
          v21 = v6;
          v22 = 2114;
          v23 = v16;
          _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "requestUserAttentionScreenWakeFromSource:%{public}@ (%{public}@) state:%{public}@ unlockUI", buf, 0x20u);
        }

        v26 = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
        v27[0] = MEMORY[0x277CBEC38];
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
        [(SBLockScreenManager *)self unlockUIFromSource:v4 withOptions:v12];
        goto LABEL_16;
      }

      if (!v15)
      {
LABEL_16:

        goto LABEL_17;
      }

      v13 = SBBacklightStateDescription(v9);
      v17 = SBSBacklightChangeSourceDescription([v8 lastBacklightChangeSource]);
      *buf = 138544130;
      v19 = v7;
      v20 = 2114;
      v21 = v6;
      v22 = 2114;
      v23 = v13;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "requestUserAttentionScreenWakeFromSource:%{public}@ (%{public}@) state:%{public}@ -- ignoring because screen is off, but UILocked is zero. Last known backlight change source:%{public}@.", buf, 0x2Au);
    }

    else
    {
      v10 = SBLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = SBBacklightStateDescription(v9);
        *buf = 138543874;
        v19 = v7;
        v20 = 2114;
        v21 = v6;
        v22 = 2114;
        v23 = v11;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "requestUserAttentionScreenWakeFromSource:%{public}@ (%{public}@) state:%{public}@ resetIdleTimer", buf, 0x20u);
      }

      v12 = +[SBIdleTimerGlobalCoordinator sharedInstance];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"UserAttentionScreenWake|%@|", v7, v6];
      [v12 resetIdleTimerForReason:v13];
    }

    goto LABEL_16;
  }

  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = v7;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "requestUserAttentionScreenWakeFromSource:%{public}@ (%{public}@) -- ignoring because smart cover is closed", buf, 0x16u);
  }

LABEL_17:
}

- (BOOL)_shouldReactivateInCallWakingTheDisplay:(BOOL)a3
{
  v3 = a3;
  v4 = +[SBTelephonyManager sharedTelephonyManager];
  v5 = 0;
  if (!+[SBInCallPresentationManager isSpecializedAPISupported]&& v3)
  {
    if ([v4 inCall])
    {
      v5 = [v4 isEndpointOnCurrentDevice];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_shouldWakeToInCallForUnlockSource:(int)a3 wakingTheDisplay:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v6 = +[SBInCallPresentationManager isSpecializedAPISupported];
  if (v6)
  {
    v7 = +[SBWorkspace mainWorkspace];
    v8 = [v7 inCallPresentationManager];

    v9 = [v8 supportsBecomingVisibleWhenUnlockingFromSource:v5 wakingDisplay:v4];
    LOBYTE(v6) = v9;
  }

  return v6;
}

- (BOOL)_shouldWakeToOtherContentForUnlockSource:(int)a3 wakingTheDisplay:(BOOL)a4 stopAfterWakeTo:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = +[SBTelephonyManager sharedTelephonyManager];
  v9 = [(SBLockScreenManager *)self _shouldReactivateInCallWakingTheDisplay:v6];
  if ([v8 incomingCallExists])
  {
    v10 = 0;
  }

  else
  {
    v11 = [v8 outgoingCallExists];
    v10 = 0;
    if (!v9 && (v6 || v5) && (v11 & 1) == 0)
    {
      v12 = +[SBSecureAppManager sharedInstance];
      v10 = [v12 hasWakeDestination];
    }
  }

  return v10;
}

- (BOOL)unlockUIFromSource:(int)a3 withOptions:(id)a4
{
  v4 = *&a3;
  v137 = *MEMORY[0x277D85DE8];
  v106 = a4;
  if (self->_allowUILockUnlock)
  {
    oslog = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment screenWakeAnimationTarget];
    v104 = +[SBBacklightController sharedInstance];
    v102 = +[SBScreenWakeAnimationController sharedInstance];
    v99 = +[SBSecureAppManager sharedInstance];
    v103 = [v104 screenIsOn];
    if (+[SBBacklightPlatformProvider deviceSupportsAlwaysOn])
    {
      v98 = [(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet]^ 1;
    }

    else
    {
      v98 = 0;
    }

    v8 = [v106 objectForKey:@"SBUIUnlockOptionsSuppressingWakeToKey"];
    v9 = [v8 BOOLValue];

    v10 = [v106 objectForKey:@"SBUIUnlockOptionsOnlyWakeToActionsKey"];
    v101 = [v10 BOOLValue];

    v11 = [v106 objectForKey:@"SBUIUnlockOptionsNoBacklightChangesKey"];
    v12 = [v11 BOOLValue];

    v13 = [v106 objectForKey:@"SBUIUnlockOptionsTurnOnScreenFirstKey"];
    v100 = [v13 BOOLValue];

    v14 = [v106 objectForKey:@"SBUIUnlockOptionsStartFadeInAnimation"];
    LODWORD(v92) = [v14 BOOLValue];

    v95 = [v104 shouldTurnOnScreenForBacklightSource:SBUIConvertUnlockSourceToBacklightChangeSource()] & (v12 ^ 1);
    v15 = (v103 ^ 1) & v100 & v95;
    v16 = [(SBLockScreenManager *)self _shouldReactivateInCallWakingTheDisplay:v15];
    v96 = [(SBLockScreenManager *)self _shouldWakeToOtherContentForUnlockSource:v4 wakingTheDisplay:v15 stopAfterWakeTo:v101];
    if ([v102 isSleepAnimationInProgress])
    {
      HIDWORD(v92) = 1;
    }

    else
    {
      HIDWORD(v92) = [v102 isWakeAnimationInProgress];
    }

    v17 = [v106 objectForKey:{@"SBUIUnlockOptionsRequestedOrientationKey", v92}];
    v97 = [v17 unsignedIntegerValue];

    if ((v103 & 1) == 0 && [(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet])
    {
      [(SBLockScreenManager *)self _setSystemApertureProudLockElementVisible:1 withReason:@"Screen On"];
    }

    v18 = [(SBLockScreenManager *)self coverSheetViewController];
    [v18 respondToUIUnlockFromSource:v4];

    v19 = SBLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = NSStringFromUnlockSource();
      v21 = [MEMORY[0x277CF0C08] descriptionForRootObject:v106];
      v22 = BSDeviceOrientationDescription();
      *buf = 138544130;
      *&buf[4] = v20;
      *&buf[12] = 2114;
      *&buf[14] = v21;
      *&buf[22] = 1024;
      v134 = v103 ^ 1;
      v135 = 2114;
      v136 = v22;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "unlockUIFromSource:%{public}@ options:(%{public}@) screenWasOff:%{BOOL}u requestedOrientation:%{public}@", buf, 0x26u);
    }

    if (v16)
    {
      v23 = +[SBWorkspace mainWorkspace];
      v24 = [v23 inCallPresentationManager];
      [v24 reactivateInCallForReason:2];
    }

    v129[0] = MEMORY[0x277D85DD0];
    v129[1] = 3221225472;
    v129[2] = __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke;
    v129[3] = &unk_2783C49F8;
    v25 = (v9 | v98) & 1;
    v131 = v25;
    v129[4] = self;
    v130 = v4;
    v132 = v15;
    v26 = MEMORY[0x223D6F7F0](v129);
    if (v26[2]())
    {
      if (v4 == 32)
      {
        v27 = [[SBSpuriousScreenUndimmingAssertion alloc] initWithIdentifier:@"SBLockScreenManagerWakeToInactivePhone"];
      }

      else
      {
        v27 = 0;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v134) = 0;
      objc_initWeak(&location, self);
      v122[0] = MEMORY[0x277D85DD0];
      v122[1] = 3221225472;
      v122[2] = __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke_2;
      v122[3] = &unk_2783C4A20;
      v125 = buf;
      v35 = v27;
      v123 = v35;
      objc_copyWeak(&v126, &location);
      v124 = v106;
      v127 = v4;
      v36 = MEMORY[0x223D6F7F0](v122);
      v37 = +[SBWorkspace mainWorkspace];
      v119[0] = MEMORY[0x277D85DD0];
      v119[1] = 3221225472;
      v119[2] = __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke_3;
      v119[3] = &unk_2783C4A68;
      v121 = v4;
      v38 = v36;
      v120 = v38;
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v117[2] = __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke_7;
      v117[3] = &unk_2783C4A90;
      v118 = v26;
      [v37 requestTransitionWithOptions:0 builder:v119 validator:v117];

      v39 = dispatch_time(0, 300000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke_8;
      block[3] = &unk_2783A9348;
      v40 = v38;
      v116 = v40;
      dispatch_after(v39, MEMORY[0x277D85CD0], block);
      v41 = SBLogCommon();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *v114 = 0;
        _os_log_impl(&dword_21ED4E000, v41, OS_LOG_TYPE_DEFAULT, "Delaying unlockUIFromSource call to wake to InCall.", v114, 2u);
      }

      objc_destroyWeak(&v126);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);

      goto LABEL_73;
    }

    if (!v96 || (v25 & 1) != 0)
    {
LABEL_42:
      if (v101)
      {
        v52 = SBLogCommon();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v52, OS_LOG_TYPE_DEFAULT, "Aborting unlockUIFromSource after completing wake actions, as requested", buf, 2u);
        }

        [oslog updateWakeEffectsForWake:1];
        goto LABEL_73;
      }

      v53 = [(SBFLockOutStatusProvider *)self->_lockOutController isLockedOut];
      v54 = [(SBLockScreenAutoUnlockAggregateRule *)self->_autoUnlockRuleAggregator shouldAutoUnlockForSource:v4];
      v55 = (v53 ^ 1) & v54;
      if ((v100 & v95) != 1)
      {
LABEL_53:
        if (((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") | v100 ^ 1 | v103 | v94) & 1) == 0)
        {
          [(SBLockScreenOrientationManager *)self->_lockScreenOrientationManager updateInterfaceOrientationWithRequestedOrientation:v97 animated:0];
        }

        if (v55)
        {
          v57 = 1;
        }

        else
        {
          v58 = [v106 objectForKey:@"SBUIUnlockOptionsNoPasscodeAnimationKey"];
          v59 = [v58 BOOLValue];

          v57 = v59 ^ 1u;
        }

        if (v4 == 15)
        {
          v60 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment buttonObserver];
          [v60 noteMenuButtonDown];

          v61 = [SBApp homeHardwareButton];
          v107[0] = MEMORY[0x277D85DD0];
          v107[1] = 3221225472;
          v107[2] = __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke_395;
          v107[3] = &unk_2783A8C18;
          v107[4] = self;
          [v61 performAfterMenuButtonUpIsHandledUsingBlock:v107];
        }

        if ((v100 & v95) != 0)
        {
          if ([(SBLockScreenManager *)self isUILocked]& (!v54 | v53))
          {
            v62 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment backlightController];
            v63 = [v62 isInScreenOffMode];

            if (v63)
            {
              v64 = [SBApp statusBarStateAggregator];
              [v64 sendStatusBarActions:9];
              v65 = +[SBVideoOutController sharedInstance];
              [v65 updateScreenSharingBackgroundActivityAssertion];
            }
          }

          v66 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment backlightController];
          [v66 setInScreenOffMode:0 forAutoUnlock:v54 fromUnlockSource:v4];
        }

        if (!(v100 ^ 1 | v54 & v95))
        {
          v68 = SBLogCommon();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            *&buf[4] = 1;
            *&buf[8] = 1024;
            *&buf[10] = v54;
            *&buf[14] = 1024;
            *&buf[16] = v95;
            _os_log_impl(&dword_21ED4E000, v68, OS_LOG_TYPE_DEFAULT, "Bailing from UIUnlock because: turnOnScreenFirst = %d; autoUnlock = %d; shouldTurnOnScreen = %d", buf, 0x14u);
          }

          goto LABEL_73;
        }

        if ([(SBLockScreenManager *)self _isUnlockDisabled])
        {
          v67 = SBLogCommon();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v67, OS_LOG_TYPE_DEFAULT, "Ignoring unlock attempt because unlock is disabled.", buf, 2u);
          }

          goto LABEL_73;
        }

        unlockRequest = self->_unlockRequest;
        if (!unlockRequest || [(SBLockScreenUnlockRequest *)unlockRequest intent]!= 2)
        {
          v71 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
          v72 = [v71 willUIUnlockFromSource:v4 isLockScreenDisabledForAssertion:{-[SBLockScreenDisabledAssertionManager isLockScreenDisabledForAssertion](self->_lockScreenDisabledAssertionManager, "isLockScreenDisabledForAssertion")}];

          if ((v72 & 1) == 0)
          {
            v77 = SBLogCommon();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              v78 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
              v79 = objc_opt_class();
              v80 = NSStringFromClass(v79);
              *buf = 138543618;
              *&buf[4] = v80;
              *&buf[12] = 1024;
              *&buf[14] = v4;
              _os_log_impl(&dword_21ED4E000, v77, OS_LOG_TYPE_DEFAULT, "%{public}@ said it can't UI-unlock for source %d", buf, 0x12u);
            }

            v81 = [(SBLockScreenManager *)self coverSheetViewController];
            v7 = [v81 externalLockProvidersShowPasscode];

            if (v7)
            {
              LOBYTE(v7) = 0;
              self->_saveUnlockRequest = 1;
            }

            goto LABEL_74;
          }
        }

        if (v103)
        {
          p_userAuthController = &self->_userAuthController;
          v74 = [(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated];
          if (v74 & 1 | !v54)
          {
            v75 = [(SBFUserAuthenticationController *)*p_userAuthController isAuthenticated];
            v76 = 0;
            if (v74)
            {
              v55 = 1;
LABEL_96:
              if (v55 && v75)
              {
                v85 = [(SBLockScreenManager *)self _finishUIUnlockFromSource:v4 withOptions:v106];
              }

              else
              {
                if (!v76)
                {
                  goto LABEL_73;
                }

                if ([(SBLockScreenManager *)self _isPasscodeVisible])
                {
                  LOBYTE(v7) = 1;
                  goto LABEL_74;
                }

                if ([(SBLockScreenManager *)self _isPasscodeVisible])
                {
                  goto LABEL_73;
                }

                if (v4 == 15)
                {
                  v86 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment buttonObserver];
                  v87 = [v86 createHomeButtonShowPasscodeRecognizerForHomeButtonPress];

                  if (v87)
                  {
                    [(SBLockScreenManager *)self _setHomeButtonShowPasscodeRecognizer:v87];

LABEL_73:
                    LOBYTE(v7) = 0;
LABEL_74:

                    goto LABEL_75;
                  }
                }

                v88 = [v106 objectForKey:@"SBUIUnlockOptionsSimulateSwipeToUnlock"];
                v89 = [v88 BOOLValue];

                if (v89 && [(SBLockScreenManager *)self _shouldEmulateInterstitialPresentationForAccessibility:0])
                {
                  if (CSFeatureEnabled())
                  {
                    v90 = +[SBCoverSheetPresentationManager sharedInstance];
                    [v90 setCoverSheetTranslationToPresented:0 forcingTransition:0 ignoringPreflightRequirements:0 animated:v57];
                  }

                  else
                  {
                    [(SBLockScreenManager *)self _emulateInterstitialPasscodePresentationForAccessibility:0];
                  }

                  v91 = +[SBWallpaperController sharedInstance];
                  [v91 updateWallpaperAnimationWithWakeSourceIsSwipeToUnlock:1];
                }

                v85 = [(SBLockScreenManager *)self _setPasscodeVisible:1 animated:v57 ignoringPreflightRequirementsForPresentation:1];
              }

              LOBYTE(v7) = v85;
              goto LABEL_74;
            }

            v55 = 0;
          }

          else
          {
            v84 = [MEMORY[0x277D02C20] rootSettings];
            v55 = [v84 autoDismissUnlockedLockScreen];

            v75 = [(SBFUserAuthenticationController *)*p_userAuthController isAuthenticated];
          }
        }

        else
        {
          v82 = [MEMORY[0x277D67C98] sharedInstance];
          v83 = [v82 hasBiometricAuthenticationCapabilityEnabled] && objc_msgSend(v82, "biometricLockoutState") && objc_msgSend(v82, "biometricLockoutState") != 1;

          p_userAuthController = &self->_userAuthController;
          v75 = [(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated];
          if (!v83)
          {
            v76 = 0;
            goto LABEL_96;
          }
        }

        v76 = [(SBFUserAuthenticationController *)*p_userAuthController hasPasscodeSet]& (v75 ^ 1);
        goto LABEL_96;
      }

      if (!(v55 & 1 | ((v93 & 1) == 0)))
      {
        if ([(SBLockScreenManager *)self isLockScreenActive])
        {
          v56 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment backlightController];
          [v56 startLockScreenFadeInAnimationForSource:v4];

LABEL_52:
          [v104 turnOnScreenFullyWithBacklightSource:SBUIConvertUnlockSourceToBacklightChangeSource()];
          goto LABEL_53;
        }

        if (![v102 interruptSleepAnimationIfNeeded])
        {
          goto LABEL_52;
        }
      }

      [oslog updateWakeEffectsForWake:1];
      goto LABEL_52;
    }

    v28 = [v99 wakeDestination];
    if ([v28 type] == 1)
    {
      self->_performingWakeToAppTransition = 1;
      v29 = +[SBCoverSheetPresentationManager sharedInstance];
      [v29 setCoverSheetPresented:0 animated:0 withCompletion:0];

      self->_performingWakeToAppTransition = 0;
      if (![(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated])
      {
        goto LABEL_41;
      }

      v30 = [(SBLockScreenManager *)self coverSheetViewController];
      v31 = [v30 externalLockProvidersRequireUnlock];

      if (v31)
      {
        goto LABEL_41;
      }

      v32 = +[SBApplicationController sharedInstance];
      v33 = [v28 identifier];
      v34 = [v32 applicationWithBundleIdentifier:v33];

      SBWorkspaceActivateApplication(v34);
    }

    else
    {
      v42 = [v28 type];
      if (v4 != 10 && v42 == 2)
      {
        if (!self->_alertLaunchFinish)
        {
          v43 = objc_alloc_init(MEMORY[0x277D66BC0]);
          [v43 setReason:*MEMORY[0x277D67160]];
          objc_initWeak(buf, self);
          v110[0] = MEMORY[0x277D85DD0];
          v110[1] = 3221225472;
          v110[2] = __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke_392;
          v110[3] = &unk_2783BE250;
          objc_copyWeak(&v112, buf);
          v111 = v106;
          v113 = v4;
          v44 = [v110 copy];
          alertLaunchFinish = self->_alertLaunchFinish;
          self->_alertLaunchFinish = v44;

          v46 = MEMORY[0x277D66BF0];
          v47 = [v28 remoteAlertDefinition];
          v48 = [v46 newHandleWithDefinition:v47 configurationContext:0];
          wakeToRemoteAlertHandle = self->_wakeToRemoteAlertHandle;
          self->_wakeToRemoteAlertHandle = v48;

          [(SBSRemoteAlertHandle *)self->_wakeToRemoteAlertHandle registerObserver:self];
          v50 = dispatch_time(0, 500000000);
          v108[0] = MEMORY[0x277D85DD0];
          v108[1] = 3221225472;
          v108[2] = __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke_2_394;
          v108[3] = &unk_2783A8C68;
          objc_copyWeak(&v109, buf);
          dispatch_after(v50, MEMORY[0x277D85CD0], v108);
          [(SBSRemoteAlertHandle *)self->_wakeToRemoteAlertHandle activateWithContext:v43];
          objc_destroyWeak(&v109);

          objc_destroyWeak(&v112);
          objc_destroyWeak(buf);
        }

        [oslog updateWakeEffectsForWake:1];
        v51 = SBLogCommon();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v51, OS_LOG_TYPE_DEFAULT, "Delaying unlockUIFromSource call to wake to remote alert.", buf, 2u);
        }

        goto LABEL_73;
      }

      if ([v28 type] != 3)
      {
        goto LABEL_41;
      }

      v34 = [v28 wakeHandler];
      [v34 wakeToContentForWakeDestination:v28 unlockSource:v4];
    }

LABEL_41:
    [oslog updateWakeEffectsForWake:1];

    goto LABEL_42;
  }

  oslog = SBLogCommon();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromUnlockSource();
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&dword_21ED4E000, oslog, OS_LOG_TYPE_DEFAULT, "unlockUIFromSource:%{public}@ Ignoring unlock attempt because we're still initializing ourselves at startup and we're not ready for this yet.", buf, 0xCu);
  }

  LOBYTE(v7) = 0;
LABEL_75:

  return v7;
}

uint64_t __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke(uint64_t a1)
{
  if (*(a1 + 44))
  {
    return 0;
  }

  else
  {
    return [*(a1 + 32) _shouldWakeToInCallForUnlockSource:*(a1 + 40) wakingTheDisplay:*(a1 + 45)];
  }
}

void __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    [*(a1 + 32) invalidate];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v4 = [*(a1 + 40) mutableCopy];
    [v4 setObject:MEMORY[0x277CBEC38] forKey:@"SBUIUnlockOptionsSuppressingWakeToKey"];
    [WeakRetained unlockUIFromSource:*(a1 + 64) withOptions:v4];
  }
}

void __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTransactionProvider:&__block_literal_global_387];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke_5;
  v7[3] = &__block_descriptor_36_e54_v16__0__SBWorkspaceApplicationSceneTransitionContext_8l;
  v8 = *(a1 + 40);
  [v3 modifyApplicationContext:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke_6;
  v5[3] = &unk_2783A9C70;
  v6 = *(a1 + 32);
  v4 = [v3 addCompletionHandler:v5];
}

SBWakeToInCallWorkspaceTransaction *__54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(SBMainWorkspaceTransaction *)[SBWakeToInCallWorkspaceTransaction alloc] initWithTransitionRequest:v2];

  return v3;
}

void __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke_392(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained[18])
  {
    v6 = WeakRetained;
    v3 = [*(a1 + 32) mutableCopy];
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SBUIUnlockOptionsSuppressingWakeToKey"];
    [v6 unlockUIFromSource:*(a1 + 48) withOptions:v3];
    v4 = v6[18];
    v6[18] = 0;

    v5 = v6[19];
    v6[19] = 0;

    WeakRetained = v6;
  }
}

void __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke_2_394(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained[19])
  {
    v2 = WeakRetained;
    [WeakRetained[18] invalidate];
    (*(v2[19] + 2))();
    WeakRetained = v2;
  }
}

void __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke_395(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 32) buttonObserver];
  [v1 noteMenuButtonUp];
}

- (BOOL)_finishUIUnlockFromSource:(int)a3 withOptions:(id)a4 completion:(id)a5
{
  v6 = *&a3;
  v46 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = SBLogScreenWake();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromUnlockSource();
    *buf = 138543362;
    v45 = v11;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "_finishUIUnlockFromSource: %{public}@", buf, 0xCu);
  }

  if ([(SBFLockOutStatusProvider *)self->_lockOutController isBlocked])
  {
    v12 = SBLogScreenWake();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Bailing out of _finishUIUnlockFromSource because the device is blocked.", buf, 2u);
    }

    if (!v9)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (([(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated]& 1) == 0)
  {
    [SBLockScreenManager _finishUIUnlockFromSource:withOptions:completion:];
  }

  v13 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
  v14 = [v13 canBeDeactivatedForUIUnlockFromSource:v6];

  if (!v14)
  {
    v29 = SBLogScreenWake();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "Lock screen REFUSED to be deactivated! NOT unlocking.", buf, 2u);
    }

    if (!v9)
    {
      goto LABEL_25;
    }

LABEL_24:
    v9[2](v9, 0);
LABEL_25:
    v30 = 0;
    goto LABEL_28;
  }

  v15 = [(SBLockScreenUnlockRequest *)self->_unlockRequest destinationApplication];
  v16 = v15 == 0;

  v17 = [(SBLockScreenUnlockRequest *)self->_unlockRequest source];
  v18 = 1;
  if (v17 != 34)
  {
    v18 = 2;
  }

  if (v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  if (v6 == 33)
  {
    v20 = +[SBWallpaperController sharedInstance];
    [v20 updateWallpaperAnimationWithWakeSourceIsSwipeToUnlock:1];
  }

  v21 = (v6 > 0x29) | ((0x1FFFFFFDFF7uLL >> v6) & 1);
  v22 = self->_unlockRequest;
  v23 = v22;
  if ((v19 & 1) != 0 && v22)
  {
    v24 = [(SBLockScreenUnlockRequest *)v22 destinationApplication];
    v25 = [v24 bundleIdentifier];

    v26 = [[SBCaptureApplicationLaunchRequest alloc] initWithCaptureApplicationBundleIdentifier:v25];
    [(SBCaptureApplicationLaunchRequest *)v26 setLaunchType:0];
    v27 = [(SBLockScreenUnlockRequest *)v23 launchActions];
    [(SBCaptureApplicationLaunchRequest *)v26 setLaunchActions:v27];

    [(SBCaptureApplicationLaunchRequest *)v26 setPrewarmCamera:1];
    objc_initWeak(buf, self);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __72__SBLockScreenManager__finishUIUnlockFromSource_withOptions_completion___block_invoke;
    v37[3] = &unk_2783C4AE0;
    v28 = v25;
    v38 = v28;
    v39 = self;
    v42 = v21;
    v41[1] = v19;
    objc_copyWeak(v41, buf);
    v40 = v9;
    v43 = v14;
    [(SBCaptureApplicationLaunchRequest *)v26 setCompletionBlock:v37];
    objc_storeStrong(&self->_captureApplicationLaunchRequest, v26);
    [(SBCaptureApplicationLaunchRequest *)v26 initiate];

    objc_destroyWeak(v41);
    objc_destroyWeak(buf);
  }

  else
  {
    v31 = +[SBCoverSheetPresentationManager sharedInstance];
    [v31 willUIUnlockWithPendingUnlockRequest:self->_unlockRequest != 0];

    v32 = +[SBCoverSheetPresentationManager sharedInstance];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __72__SBLockScreenManager__finishUIUnlockFromSource_withOptions_completion___block_invoke_2;
    v34[3] = &unk_2783AB500;
    v35 = v9;
    v36 = v14;
    [v32 setCoverSheetPresented:0 animated:v21 options:v19 withCompletion:v34];

    v28 = v35;
  }

  v30 = 1;
LABEL_28:

  return v30;
}

void __72__SBLockScreenManager__finishUIUnlockFromSource_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__SBLockScreenManager__finishUIUnlockFromSource_withOptions_completion___block_invoke_cold_1(a1, v3, v4);
    }
  }

  v5 = +[SBCoverSheetPresentationManager sharedInstance];
  [v5 willUIUnlockWithPendingUnlockRequest:*(*(a1 + 40) + 72) != 0];

  v6 = +[SBCoverSheetPresentationManager sharedInstance];
  v7 = *(a1 + 72);
  v8 = *(a1 + 64);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__SBLockScreenManager__finishUIUnlockFromSource_withOptions_completion___block_invoke_401;
  v9[3] = &unk_2783C4AB8;
  objc_copyWeak(&v11, (a1 + 56));
  v10 = *(a1 + 48);
  v12 = *(a1 + 73);
  [v6 setCoverSheetPresented:0 animated:v7 options:v8 withCompletion:v9];

  objc_destroyWeak(&v11);
}

void __72__SBLockScreenManager__finishUIUnlockFromSource_withOptions_completion___block_invoke_401(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48));
  }

  v3 = WeakRetained[47];
  WeakRetained[47] = 0;
}

uint64_t __72__SBLockScreenManager__finishUIUnlockFromSource_withOptions_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)_runUnlockActionBlock:(BOOL)a3
{
  v3 = a3;
  unlockRequest = self->_unlockRequest;
  if (unlockRequest)
  {
    self->_unlockRequest = 0;

    v6 = _runUnlockActionBlock__token;
    v7 = MEMORY[0x277D67928];
    if (_runUnlockActionBlock__token != -1 || (notify_register_check(*MEMORY[0x277D67928], &_runUnlockActionBlock__token), v6 = _runUnlockActionBlock__token, _runUnlockActionBlock__token != -1))
    {
      notify_set_state(v6, [(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated]);
      notify_post(*v7);
    }
  }

  v8 = MEMORY[0x223D6F7F0](self->_unlockActionBlock, a2);
  if (v8)
  {
    unlockActionBlock = self->_unlockActionBlock;
    self->_unlockActionBlock = 0;
    v10 = v8;

    v10[2](v10, v3);
    v8 = v10;
  }
}

- (BOOL)_setPasscodeVisible:(BOOL)a3 animated:(BOOL)a4 ignoringPreflightRequirementsForPresentation:(BOOL)a5
{
  v5 = a4;
  if (!a3)
  {
    self->_presentedPasscodeWhileUILocking = 0;
    [(SBLockScreenManager *)self _setMesaAutoUnlockingDisabled:a3 forReason:@"SBApplicationRequestedDeviceUnlock", a5];
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[SBLockScreenManager][Lock Element] hiding passcode is about to update bloom, oddly enough...", buf, 2u);
    }

    [(SBLockScreenManager *)self _updateBloomIfNeeded];
    if (self->_passcodeEntryTransientOverlayViewController)
    {
      v10 = +[SBWorkspace mainWorkspace];
      [v10 dismissTransientOverlayViewController:self->_passcodeEntryTransientOverlayViewController animated:v5 completion:0];

      passcodeEntryTransientOverlayViewController = self->_passcodeEntryTransientOverlayViewController;
      self->_passcodeEntryTransientOverlayViewController = 0;

      [(SBLockScreenManager *)self reevaluateSystemApertureLockElementSuppressionWithReason:@"Transient Passcode dismissed"];
    }

    v12 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment passcodeViewPresenter];
    [v12 setPasscodeLockVisible:0 animated:v5 completion:0];

    self->_handlingUnlockRequest = 0;
    [(SBLockScreenManager *)self _runUnlockActionBlock:0];
LABEL_9:
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 postNotificationName:@"SBLockScreenPasscodeUIVisibilityUpdatedNotification" object:self];

    return 1;
  }

  v7 = a5;
  if (![(SBLockScreenManager *)self _isUnlockDisabled])
  {
    if (([(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet]& 1) == 0)
    {
      v8 = 1;
      [(SBLockScreenManager *)self _runUnlockActionBlock:1];
      return v8;
    }

    v15 = [(SBLockScreenManager *)self coverSheetViewController];
    [v15 attemptPhoneUnlockWithRemoteDevice];

    [(SBLockScreenManager *)self _setMesaAutoUnlockingDisabled:1 forReason:@"SBApplicationRequestedDeviceUnlock"];
    if ([(SBLockScreenManager *)self isUILocked])
    {
      v16 = +[SBWorkspace mainWorkspace];
      v17 = [v16 transientOverlayPresentationManager];
      v18 = [v17 hasActivePresentation];
    }

    else
    {
      v18 = 0;
    }

    v19 = [(SBLockScreenManager *)&self->super.isa rootViewController];
    v20 = [v19 _sbWindowScene];

    v59 = v20;
    if ([(SBLockScreenManager *)self isUILocked])
    {
      v21 = [v20 assistantController];
      v22 = [v21 presentationContext];
      v23 = [v22 hasVisionModality];
    }

    else
    {
      v23 = 0;
    }

    v24 = [SBApp notificationDispatcher];
    v25 = [v24 bannerDestination];

    v26 = [SBApp notificationDispatcher];
    v27 = [v26 dashBoardDestination];

    v58 = v27;
    if ([v25 isPresentingBannerInLongLook])
    {
      v28 = 1;
    }

    else
    {
      v28 = [v27 isPresentingNotificationInLongLook];
    }

    v29 = +[SBCoverSheetPresentationManager sharedInstance];
    v30 = [v29 isCoverSheetHostingAnApp];

    v31 = [(SBLockScreenManager *)self coverSheetViewController];
    v57 = [v31 _passcodePresentationMode];

    v32 = 1;
    if (((v18 | v23) & 1) == 0 && (v28 & 1) == 0 && ![(SBLockScreenUnlockRequest *)self->_unlockRequest forceAlertAuthenticationUI]&& [(SBLockScreenUnlockRequest *)self->_unlockRequest source]!= 9 && [(SBLockScreenUnlockRequest *)self->_unlockRequest source]!= 4 && [(SBLockScreenUnlockRequest *)self->_unlockRequest source]!= 26 && !(([(SBLockScreenUnlockRequest *)self->_unlockRequest source]== 34) | v30 & 1))
    {
      v32 = [(SBLockScreenManager *)self _specifiesTransientPresentationForMode:v57];
    }

    v33 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment customActionStore];
    v34 = [v33 _customLockScreenActionContext];

    v35 = [(SBLockScreenManager *)self isLockScreenActive];
    v36 = v35;
    if (v32 || !v35)
    {
      if (!self->_passcodeEntryTransientOverlayViewController)
      {
        v40 = [SBPasscodeEntryTransientOverlayViewController alloc];
        v41 = [SBApp authenticationController];
        v42 = [(SBPasscodeEntryTransientOverlayViewController *)v40 initWithAuthenticationController:v41];
        v43 = self->_passcodeEntryTransientOverlayViewController;
        self->_passcodeEntryTransientOverlayViewController = v42;

        [(SBPasscodeEntryTransientOverlayViewController *)self->_passcodeEntryTransientOverlayViewController setDelegate:self];
        -[SBPasscodeEntryTransientOverlayViewController setUseBiometricPresentation:](self->_passcodeEntryTransientOverlayViewController, "setUseBiometricPresentation:", [v34 wantsBiometricPresentation]);
        v44 = self->_passcodeEntryTransientOverlayViewController;
        v45 = [v34 unlockDestination];
        [(SBPasscodeEntryTransientOverlayViewController *)v44 setUnlockDestination:v45];

        v46 = [MEMORY[0x277D75418] currentDevice];
        v47 = [v46 userInterfaceIdiom];

        if ((v47 & 0xFFFFFFFFFFFFFFFBLL) != 1)
        {
          -[SBPasscodeEntryTransientOverlayViewController setOverridePresentationOrientation:](self->_passcodeEntryTransientOverlayViewController, "setOverridePresentationOrientation:", [*MEMORY[0x277D76620] activeInterfaceOrientation]);
        }

        unlockRequest = self->_unlockRequest;
        if (!unlockRequest || [(SBLockScreenUnlockRequest *)unlockRequest intent]== 3)
        {
          v49 = self->_passcodeEntryTransientOverlayViewController;
          v50 = +[SBTelephonyManager sharedTelephonyManager];
          -[SBPasscodeEntryTransientOverlayViewController setShowEmergencyCallButton:](v49, "setShowEmergencyCallButton:", [v50 emergencyCallSupported]);
        }
      }

      if (v57 == 2)
      {
        [(SBPasscodeEntryTransientOverlayViewController *)self->_passcodeEntryTransientOverlayViewController setIntent:3];
      }

      v51 = v59;
      if (v23)
      {
        [(SBPasscodeEntryTransientOverlayViewController *)self->_passcodeEntryTransientOverlayViewController setDismissesSiriForPresentation:0];
      }

      v52 = +[SBWorkspace mainWorkspace];
      v53 = self->_passcodeEntryTransientOverlayViewController;
      v54 = [(SBLockScreenUnlockRequest *)self->_unlockRequest process];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __97__SBLockScreenManager__setPasscodeVisible_animated_ignoringPreflightRequirementsForPresentation___block_invoke;
      v62[3] = &unk_2783A8C18;
      v62[4] = self;
      [v52 presentTransientOverlayViewController:v53 originatingProcess:v54 animated:v5 completion:v62];

      self->_passcodeEntryTransientOverlayViewControllerPresentedAnimated = v5;
    }

    else
    {
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __97__SBLockScreenManager__setPasscodeVisible_animated_ignoringPreflightRequirementsForPresentation___block_invoke_404;
      v61[3] = &unk_2783A8C18;
      v61[4] = self;
      v37 = MEMORY[0x223D6F7F0](v61);
      v38 = self->_unlockRequest;
      if (v38)
      {
        v39 = [(SBLockScreenUnlockRequest *)v38 intent];
      }

      else
      {
        v39 = 3;
      }

      v51 = v59;
      v55 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment passcodeViewPresenter];
      [v55 setPasscodeLockVisible:1 intent:v39 ignoringPreflightRequirementsForPresentation:v7 animated:v5 completion:v37];
    }

    [(SBLockScreenManager *)self _runPreflightLocationBasedEvaluationToExitLostModeIfNecessary];
    if (v36)
    {
      v56 = ![(SBLockScreenManager *)self isUILocked];
    }

    else
    {
      v56 = 0;
    }

    self->_presentedPasscodeWhileUILocking = v56;

    goto LABEL_9;
  }

  return 0;
}

uint64_t __97__SBLockScreenManager__setPasscodeVisible_animated_ignoringPreflightRequirementsForPresentation___block_invoke(uint64_t a1)
{
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[SBLockScreenManager][Lock Element] transient passcode overlay presentation is going to trigger bloom", v4, 2u);
  }

  return [*(a1 + 32) _updateBloomIfNeeded];
}

uint64_t __97__SBLockScreenManager__setPasscodeVisible_animated_ignoringPreflightRequirementsForPresentation___block_invoke_404(uint64_t a1)
{
  v2 = [*(a1 + 32) coverSheetViewController];
  [v2 cleanupRubberBandTransition];

  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBLockScreenManager][Lock Element] changing passcode being visible is going to trigger bloom update", v5, 2u);
  }

  return [*(a1 + 32) _updateBloomIfNeeded];
}

- (BOOL)_unlockWithRequest:(id)a3 cancelPendingRequests:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v85 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = v9;
  NSClassFromString(&cfstr_Sblockscreenun_0.isa);
  if (!v11)
  {
    [SBLockScreenManager _unlockWithRequest:a2 cancelPendingRequests:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBLockScreenManager _unlockWithRequest:a2 cancelPendingRequests:? completion:?];
  }

  v12 = [v11 windowScene];
  v13 = [v12 authenticationStatusProvider];
  userAuthController = v13;
  if (!v13)
  {
    userAuthController = self->_userAuthController;
  }

  v69 = v10;
  v15 = userAuthController;

  v16 = [v11 source];
  v17 = [v11 intent];
  v18 = [(SBFUserAuthenticationController *)v15 isAuthenticated];
  if (v6)
  {
    [(SBLockScreenManager *)self _runUnlockActionBlock:0];
  }

  else if (self->_unlockRequest)
  {
    v19 = +[SBSecureAppManager sharedInstance];
    v20 = [v19 hasSecureApp];

    if ((v20 & 1) == 0)
    {
      v38 = SBLogCommon();
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        goto LABEL_45;
      }

      *buf = 0;
      v39 = "[Unlock Request] Previous request in place and cancellation not requested. Failing.";
      goto LABEL_44;
    }
  }

  v21 = v15;
  v22 = [v12 isContinuityDisplayWindowScene];
  v23 = +[SBBacklightController sharedInstance];
  v24 = [v23 screenIsOn];

  if ((v24 & 1) == 0 && (v22 & 1) == 0)
  {
    v25 = SBLogCommon();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v84 = v11;
      _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_INFO, "[Unlock Request] Turning screen on for unlock request: %@", buf, 0xCu);
    }

    v81 = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
    v26 = MEMORY[0x277CBEC38];
    v82 = MEMORY[0x277CBEC38];
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    if ((v17 & 0xFFFFFFFE) == 2)
    {
      v28 = v18;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      if ([v12 isContinuityDisplayWindowScene])
      {
        v79 = @"SBUIUnlockOptionsNoBacklightChangesKey";
        v80 = v26;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];

        v27 = v29;
      }
    }

    else
    {
      [(SBLockScreenManager *)self setPasscodeVisible:1 animated:0];
    }

    [(SBLockScreenManager *)self unlockUIFromSource:v16 withOptions:v27];
  }

  if (!v16 || !v17)
  {
    v31 = SBLogCommon();
    v15 = v21;
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v32 = "[Unlock Request] Request had no source, or didn't want to actually unlock. Succeeding.";
    goto LABEL_31;
  }

  if (v17 == 2)
  {
    v30 = v18;
  }

  else
  {
    v30 = 0;
  }

  v15 = v21;
  if (v30 == 1)
  {
    v31 = SBLogCommon();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v32 = "[Unlock Request] AuthenticateOnly specified, and we are authenticated. Succeeding.";
    goto LABEL_31;
  }

  if (v17 == 1)
  {
    v34 = v18;
  }

  else
  {
    v34 = 1;
  }

  if ((v34 & 1) == 0)
  {
    v38 = SBLogCommon();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      goto LABEL_45;
    }

    *buf = 0;
    v39 = "[Unlock Request] DismissOnly specified, but we are not authenticated. Failing.";
LABEL_44:
    _os_log_impl(&dword_21ED4E000, v38, OS_LOG_TYPE_INFO, v39, buf, 2u);
LABEL_45:

    v33 = v69;
    if (v69)
    {
      v69[2](v69, 0);
    }

    goto LABEL_47;
  }

  v35 = [v12 uiLockStateProvider];
  if (v35)
  {
    v36 = [v12 uiLockStateProvider];
    v37 = [v36 isUILocked];

    v15 = v21;
  }

  else
  {
    v37 = [(SBLockScreenManager *)self isUILocked];
  }

  if ((v17 | 2) != 3)
  {
    goto LABEL_55;
  }

  if ((v18 ^ 1 | v37))
  {
    if ((v17 | 2) == 3)
    {
      v78 = 0;
      v42 = [(SBLockScreenManager *)self _canAttemptRealUIUnlockIgnoringBacklightNonsenseWithReason:&v78];
      v43 = v78;
      v44 = v43;
      if (!v42)
      {
        v54 = SBLogCommon();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v84 = v44;
          _os_log_impl(&dword_21ED4E000, v54, OS_LOG_TYPE_INFO, "[Unlock Request] Request to dismiss failed with reason: %@. Failing.", buf, 0xCu);
        }

        v15 = v21;
        v33 = v69;
        if (v69)
        {
          v69[2](v69, 0);
        }

        v40 = 0;
        goto LABEL_81;
      }

      v68 = v43;
LABEL_56:
      v45 = MEMORY[0x277CF0BA0];
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __75__SBLockScreenManager__unlockWithRequest_cancelPendingRequests_completion___block_invoke;
      v76[3] = &unk_2783C1060;
      v77 = v69;
      v46 = [v45 sentinelWithQueue:MEMORY[0x277D85CD0] signalHandler:v76];
      v47 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment customActionStore];
      v48 = [v47 _customLockScreenActionContext];

      if (v48)
      {
        v49 = 0;
        v15 = v21;
        v33 = v69;
LABEL_73:
        v56 = [v11 copy];
        unlockRequest = self->_unlockRequest;
        self->_unlockRequest = v56;

        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __75__SBLockScreenManager__unlockWithRequest_cancelPendingRequests_completion___block_invoke_423;
        v70[3] = &unk_2783A9940;
        v58 = v46;
        v71 = v58;
        v59 = v47;
        v72 = v59;
        v60 = v49;
        v73 = v60;
        v61 = [v70 copy];
        unlockActionBlock = self->_unlockActionBlock;
        self->_unlockActionBlock = v61;

        self->_handlingUnlockRequest = 1;
        v63 = SBLogCommon();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v63, OS_LOG_TYPE_INFO, "[Unlock Request] Attempting real UIUnlock...", buf, 2u);
        }

        self->_saveUnlockRequest = 0;
        v40 = [(SBLockScreenManager *)self unlockUIFromSource:v16 withOptions:0];
        if (!v40)
        {
          self->_handlingUnlockRequest = 0;
          v64 = SBLogCommon();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v64, OS_LOG_TYPE_INFO, "[Unlock Request] Attempted UIUnlock failed :(", buf, 2u);
          }

          if (!self->_saveUnlockRequest)
          {
            [(SBLockScreenManager *)self _runUnlockActionBlock:0];
          }
        }

        v44 = v68;
LABEL_81:

        goto LABEL_48;
      }

      v65 = v47;
      v49 = objc_alloc_init(MEMORY[0x277D65EF8]);
      v50 = [v11 name];
      [v49 setIdentifier:v50];

      [v49 setIntent:v17];
      [v49 setSource:v16];
      [v49 setWantsBiometricPresentation:{objc_msgSend(v11, "wantsBiometricPresentation")}];
      [v49 setConfirmedNotInPocket:{objc_msgSend(v11, "confirmedNotInPocket")}];
      v51 = [v11 destinationApplication];
      v52 = [v11 unlockDestination];

      v67 = v46;
      if (v52)
      {
        v53 = [v11 unlockDestination];
      }

      else
      {
        if (!v51)
        {
          v51 = 0;
          v55 = 0;
          goto LABEL_70;
        }

        v53 = [v51 displayName];
      }

      v55 = v53;
LABEL_70:
      v15 = v21;
      [v49 setUnlockDestination:{v55, v65}];
      v33 = v69;
      if (v17 != 2)
      {
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __75__SBLockScreenManager__unlockWithRequest_cancelPendingRequests_completion___block_invoke_2;
        v74[3] = &unk_2783A8C18;
        v75 = v67;
        [v49 setAction:v74];
      }

      [v66 setCustomLockScreenActionContext:v49];

      v47 = v66;
      v46 = v67;
      goto LABEL_73;
    }

LABEL_55:
    v68 = 0;
    goto LABEL_56;
  }

  v31 = SBLogCommon();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v32 = "[Unlock Request] Dismiss specified, and we are already UI-unlocked. Succeeding.";
LABEL_31:
    _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_INFO, v32, buf, 2u);
  }

LABEL_32:

  v33 = v69;
  if (v69)
  {
    v69[2](v69, 1);
  }

LABEL_47:
  v40 = 0;
LABEL_48:

  return v40;
}

void __75__SBLockScreenManager__unlockWithRequest_cancelPendingRequests_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isComplete])
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      if ([v5 isFailed])
      {
        (*(v3 + 16))(v3, 0);
      }

      else
      {
        v4 = [v5 context];
        (*(v3 + 16))(v3, [v4 BOOLValue]);
      }
    }
  }
}

uint64_t __75__SBLockScreenManager__unlockWithRequest_cancelPendingRequests_completion___block_invoke_2(uint64_t a1)
{
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "[Unlock Request] Performing action!", v4, 2u);
  }

  return [*(a1 + 32) signalWithContext:MEMORY[0x277CBEC38]];
}

void __75__SBLockScreenManager__unlockWithRequest_cancelPendingRequests_completion___block_invoke_423(uint64_t a1, char a2)
{
  v4 = SBLogCommon();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "[Unlock Request] Request failed.", buf, 2u);
    }

    v7 = *(a1 + 32);
    v8 = MEMORY[0x277CBEC28];
    goto LABEL_9;
  }

  if (v5)
  {
    *v13 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "[Unlock Request] Request succeeded!", v13, 2u);
  }

  v6 = [*(a1 + 48) action];

  if (!v6)
  {
    v7 = *(a1 + 32);
    v8 = MEMORY[0x277CBEC38];
LABEL_9:
    [v7 signalWithContext:v8];
    v10 = *(a1 + 40);
    v9 = a1 + 40;
    v11 = [v10 _customLockScreenActionContext];
    v12 = *(v9 + 8);

    if (v11 == v12)
    {
      [*v9 setCustomLockScreenActionContext:0];
    }
  }
}

- (void)updateSpringBoardStatusBarForLockScreenTeardown
{
  v4 = [SBApp statusBarStateAggregator];
  [v4 beginCoalescentBlock];
  [v4 updateStatusBarItem:13];
  [v4 endCoalescentBlock];
  v3 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment statusBarTransitionController];
  [v3 updateStatusBarForLockScreenTeardown];
}

- (void)_setUserAuthController:(id)a3
{
  objc_storeStrong(&self->_userAuthController, a3);
  v5 = a3;
  [(SBFUserAuthenticationController *)self->_userAuthController _addPrivateAuthenticationObserver:self];
}

- (void)_setHomeButtonShowPasscodeRecognizer:(id)a3
{
  v5 = a3;
  homeButtonShowPasscodeRecognizer = self->_homeButtonShowPasscodeRecognizer;
  if (homeButtonShowPasscodeRecognizer != v5)
  {
    v7 = v5;
    [(SBHomeButtonShowPasscodeRecognizer *)homeButtonShowPasscodeRecognizer setDelegate:0];
    objc_storeStrong(&self->_homeButtonShowPasscodeRecognizer, a3);
    [(SBHomeButtonShowPasscodeRecognizer *)self->_homeButtonShowPasscodeRecognizer setDelegate:self];
    v5 = v7;
  }
}

- (void)_setHomeButtonSuppressAfterUnlockRecognizer:(id)a3
{
  v5 = a3;
  homeButtonSuppressAfterUnlockRecognizer = self->_homeButtonSuppressAfterUnlockRecognizer;
  if (homeButtonSuppressAfterUnlockRecognizer != v5)
  {
    v7 = v5;
    [(SBHomeButtonSuppressAfterUnlockRecognizer *)homeButtonSuppressAfterUnlockRecognizer setDelegate:0];
    objc_storeStrong(&self->_homeButtonSuppressAfterUnlockRecognizer, a3);
    [(SBHomeButtonSuppressAfterUnlockRecognizer *)self->_homeButtonSuppressAfterUnlockRecognizer setDelegate:self];
    v5 = v7;
  }
}

- (void)_wakeScreenForMouseButtonDown:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SBBacklightController sharedInstance];
  if ([v5 screenIsOn])
  {
    v6 = SBLogBacklight();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      v7 = "_wakeScreenForMouseButtonDown: not waking because screen is on";
LABEL_7:
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, v7, v16, 2u);
    }
  }

  else
  {
    v8 = [SBApp caseIsEnabledAndLatched];
    v6 = SBLogBacklight();
    v9 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v9)
      {
        *v16 = 0;
        v7 = "_wakeScreenForMouseButtonDown: not waking because smart cover closed";
        goto LABEL_7;
      }
    }

    else
    {
      if (v9)
      {
        *v16 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "_wakeScreenForMouseButtonDown: waking", v16, 2u);
      }

      v10 = SBLogBacklight();
      v11 = os_signpost_id_make_with_pointer(v10, v4);

      v12 = SBLogBacklight();
      v13 = v12;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *v16 = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "_wakeScreenForMouseButtonDown", &unk_21F8B82DE, v16, 2u);
      }

      v17[0] = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
      v17[1] = @"SBUIUnlockOptionsStartFadeInAnimation";
      v18[0] = MEMORY[0x277CBEC38];
      v18[1] = MEMORY[0x277CBEC38];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
      [(SBLockScreenManager *)self unlockUIFromSource:17 withOptions:v14];

      v15 = SBLogBacklight();
      v6 = v15;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *v16 = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v6, OS_SIGNPOST_INTERVAL_END, v11, "_wakeScreenForMouseButtonDown", &unk_21F8B82DE, v16, 2u);
      }
    }
  }
}

- (id)succinctDescription
{
  v2 = [(SBLockScreenManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBLockScreenManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBLockScreenManager *)self succinctDescriptionBuilder];
  v5 = [v4 appendBool:self->_isUILocked withName:@"UI Locked"];
  v6 = [v4 appendBool:self->_allowDisablePasscodeLockAssertion withName:@"Allows DisablePasscodeLockAssertion"];
  v7 = [v4 appendBool:self->_allowUILockUnlock withName:@"Allow Locking/Unlocking"];
  if (self->_isInLostMode)
  {
    v8 = [v4 appendBool:1 withName:@"inLostMode"];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__SBLockScreenManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v12[3] = &unk_2783A92D8;
  v9 = v4;
  v13 = v9;
  v14 = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:0 block:v12];
  v10 = v9;

  return v9;
}

- (void)_noteStartupTransitionWillBegin
{
  self->_allowUILockUnlock = 1;
  v3 = [SBApp userSessionController];
  v4 = [v3 isMultiUserSupported];

  if (v4 && (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") & 1) == 0)
  {
    lockScreenOrientationManager = self->_lockScreenOrientationManager;

    [(SBLockScreenOrientationManager *)lockScreenOrientationManager updateInterfaceOrientationWithRequestedOrientation:0 animated:0];
  }
}

- (void)_noteStartupTransitionDidBegin
{
  self->_allowDisablePasscodeLockAssertion = 1;
  if (!self->_isUILocked)
  {
    [(SBLockScreenManager *)self _createAuthenticationAssertion];
  }
}

- (void)_postLockCompletedNotification:(BOOL)a3
{
  v4 = _postLockCompletedNotification__lockCompleteToken;
  if (_postLockCompletedNotification__lockCompleteToken == -1)
  {
    notify_register_check("com.apple.springboard.lockcomplete", &_postLockCompletedNotification__lockCompleteToken);
    v4 = _postLockCompletedNotification__lockCompleteToken;
  }

  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SBLockScreenManager__postLockCompletedNotification___block_invoke;
    block[3] = &__block_descriptor_33_e5_v8__0l;
    v7 = a3;
    dispatch_async(v5, block);
  }
}

uint64_t __54__SBLockScreenManager__postLockCompletedNotification___block_invoke(uint64_t a1)
{
  result = notify_set_state(_postLockCompletedNotification__lockCompleteToken, *(a1 + 32));
  if (*(a1 + 32) == 1)
  {

    return notify_post("com.apple.springboard.lockcomplete");
  }

  return result;
}

- (void)_setMesaUnlockingDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v12 = v6;
  if (!v6)
  {
    [SBLockScreenManager _setMesaUnlockingDisabled:forReason:];
    v6 = 0;
  }

  v7 = [(NSMutableDictionary *)self->_mesaUnlockingDisabledAssertions objectForKeyedSubscript:v6];
  v8 = v7;
  if (v4)
  {

    if (v8)
    {
      goto LABEL_12;
    }

    if (!self->_mesaUnlockingDisabledAssertions)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      mesaUnlockingDisabledAssertions = self->_mesaUnlockingDisabledAssertions;
      self->_mesaUnlockingDisabledAssertions = v9;
    }

    v11 = [(SBLockScreenBiometricAuthenticationCoordinator *)self->_biometricAuthenticationCoordinator acquireDisableUnlockAssertionForReason:v12];
    if (v11)
    {
      [(NSMutableDictionary *)self->_mesaUnlockingDisabledAssertions setObject:v11 forKeyedSubscript:v12];
    }
  }

  else
  {
    [v7 invalidate];

    [(NSMutableDictionary *)self->_mesaUnlockingDisabledAssertions removeObjectForKey:v12];
    if ([(NSMutableDictionary *)self->_mesaUnlockingDisabledAssertions count])
    {
      goto LABEL_12;
    }

    v11 = self->_mesaUnlockingDisabledAssertions;
    self->_mesaUnlockingDisabledAssertions = 0;
  }

LABEL_12:
}

- (BOOL)_attemptUnlockWithPasscode:(id)a3 mesa:(BOOL)a4 finishUIUnlock:(BOOL)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  if ([(SBLockScreenManager *)self isUILocked]|| self->_unlockRequest)
  {
    v12 = [(SBFUserAuthenticationController *)self->_userAuthController createGracePeriodAssertionWithReason:@"UI unlock attempt"];
    [v12 activate];
    v13 = [(SBLockScreenUnlockRequest *)self->_unlockRequest source];
    v14 = [(SBLockScreenUnlockRequest *)self->_unlockRequest process];
    if (v14)
    {
      v15 = [(SBLockScreenUnlockRequest *)self->_unlockRequest intent]== 2;
    }

    else
    {
      v15 = 0;
    }

    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __81__SBLockScreenManager__attemptUnlockWithPasscode_mesa_finishUIUnlock_completion___block_invoke;
    v27 = &unk_2783C4B58;
    v30 = v11;
    v16 = v12;
    v28 = v16;
    v29 = self;
    v31 = v13;
    v32 = a5;
    v33 = v8;
    v17 = MEMORY[0x223D6F7F0](&v24);
    v18 = objc_alloc(MEMORY[0x277D65DF0]);
    if (v8)
    {
      v19 = [v18 initForBiometricAuthenticationWithSource:v15 handler:{v17, v24, v25, v26, v27}];
    }

    else
    {
      v19 = [v18 initForPasscode:v10 source:v15 handler:{v17, v24, v25, v26, v27}];
    }

    v20 = v19;
    [(SBFUserAuthenticationController *)self->_userAuthController processAuthenticationRequest:v19];

    v21 = 1;
  }

  else
  {
    v23 = SBLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_INFO, "Not locked so not unlocking", buf, 2u);
    }

    if (v11)
    {
      (*(v11 + 2))(v11, 0, 0);
    }

    v21 = 0;
  }

  return v21;
}

void __81__SBLockScreenManager__attemptUnlockWithPasscode_mesa_finishUIUnlock_completion___block_invoke(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"no";
    if (a2)
    {
      v5 = @"yes";
    }

    *buf = 138412290;
    v23 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Unlock attempt succeeded: %@", buf, 0xCu);
  }

  v6 = MEMORY[0x277CF0BA0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __81__SBLockScreenManager__attemptUnlockWithPasscode_mesa_finishUIUnlock_completion___block_invoke_453;
  v18[3] = &unk_2783C4B08;
  v20 = *(a1 + 48);
  v21 = a2;
  v19 = *(a1 + 32);
  v7 = [v6 sentinelWithCompletion:v18];
  if (a2)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__SBLockScreenManager__attemptUnlockWithPasscode_mesa_finishUIUnlock_completion___block_invoke_2;
    v16[3] = &unk_2783C4B30;
    v16[4] = *(a1 + 40);
    v17 = *(a1 + 56);
    v8 = MEMORY[0x223D6F7F0](v16);
    v9 = *(a1 + 40);
    if (*(a1 + 60) == 1)
    {
      if ([v9[9] source] == 13)
      {
        v10 = 13;
      }

      else if ([*(*(a1 + 40) + 72) source] == 34)
      {
        v10 = 34;
      }

      else if (*(a1 + 61))
      {
        v10 = 23;
      }

      else
      {
        v10 = 17;
      }

      v12 = *(a1 + 40);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __81__SBLockScreenManager__attemptUnlockWithPasscode_mesa_finishUIUnlock_completion___block_invoke_4;
      v13[3] = &unk_2783AB4D8;
      v13[4] = v12;
      v15 = v8;
      v14 = v7;
      [v12 _finishUIUnlockFromSource:v10 withOptions:0 completion:v13];
    }

    else
    {
      [v9 _runUnlockActionBlock:1];
      v8[2](v8, 1);
      [v7 signal];
    }
  }

  else
  {
    if ([*(*(a1 + 40) + 160) isBlocked])
    {
      v11 = [*(*(a1 + 40) + 32) passcodeViewPresenter];
      [v11 setPasscodeLockVisible:0 animated:1];
    }

    [v7 signal];
  }
}

uint64_t __81__SBLockScreenManager__attemptUnlockWithPasscode_mesa_finishUIUnlock_completion___block_invoke_453(uint64_t a1, void *a2)
{
  result = [a2 isComplete];
  if (result)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 1, *(a1 + 48));
    }

    v5 = *(a1 + 32);

    return [v5 invalidate];
  }

  return result;
}

void __81__SBLockScreenManager__attemptUnlockWithPasscode_mesa_finishUIUnlock_completion___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _createAuthenticationAssertion];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __81__SBLockScreenManager__attemptUnlockWithPasscode_mesa_finishUIUnlock_completion___block_invoke_3;
    v5[3] = &unk_2783AC098;
    v6 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v3 = [MEMORY[0x277D0AB18] eventWithName:@"authenticateOnly" handler:v5];
    v4 = [MEMORY[0x277D0AB20] sharedInstance];
    [v4 executeOrAppendEvent:v3];
  }
}

uint64_t __81__SBLockScreenManager__attemptUnlockWithPasscode_mesa_finishUIUnlock_completion___block_invoke_3(uint64_t a1)
{
  v2 = +[SBCoverSheetPresentationManager sharedInstance];
  [v2 authenticationStateMayHaveChangedFromSource:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 setPasscodeVisible:0 animated:1];
}

uint64_t __81__SBLockScreenManager__attemptUnlockWithPasscode_mesa_finishUIUnlock_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _runUnlockActionBlock:a2];
  [*(a1 + 32) _lockFeaturesForRemoteLock:0];
  if ([*(a1 + 32) isPasscodeEntryTransientOverlayVisible])
  {
    [*(a1 + 32) setPasscodeVisible:0 animated:1];
  }

  (*(*(a1 + 48) + 16))();
  v3 = *(a1 + 40);

  return [v3 signal];
}

- (void)attemptUnlockWithPasscode:(id)a3 finishUIUnlock:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v12 = a3;
  v8 = a5;
  v9 = [v12 length];
  if (v6)
  {
    unlockRequest = self->_unlockRequest;
    if (unlockRequest)
    {
      v11 = [(SBLockScreenUnlockRequest *)unlockRequest intent]== 3;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  [(SBLockScreenManager *)self _attemptUnlockWithPasscode:v12 mesa:v9 == 0 finishUIUnlock:v11 completion:v8];
}

- (void)_authenticationStateChanged:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = [(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated];
  if (v4)
  {
    [(SBLockElementViewProvider *)self->_lockElement setAuthenticated:1];
    v5 = [MEMORY[0x277D02C20] rootSettings];
    v6 = [v5 pearlSettings];
    [v6 systemApertureDismissDelayAuth];
    [(SBLockScreenManager *)self _setSystemApertureProudLockElementVisible:0 withReason:@"Authenticated" afterDelay:?];

    if (self->_isInLostMode && [(SBLockScreenManager *)self _needsBiometricAuthenticationToExitLostMode])
    {
      [(SBLockScreenManager *)self _presentLostModeBiometricAuthenticationTransientOverlay];
    }

    else
    {
      [(SBLockScreenManager *)self _dismissLockScreenForAuthenticationIfNecessary];
    }

    lostModePreflightLocalAuthContext = self->_lostModePreflightLocalAuthContext;
    self->_lostModePreflightLocalAuthContext = 0;
  }

  else
  {
    self->_ignoringDelayDismissalPending = 0;
    [(SBLockScreenManager *)self _showSystemApertureProudLockElementIfSupportedWithReason:@"Unauthenticated"];
    [(SBLockElementViewProvider *)self->_lockElement setAuthenticated:0];
    if ([(SBLockScreenManager *)self isUILocked]|| [(SBLockScreenManager *)self isLockScreenActive]|| [(BSCompoundAssertion *)self->_lockScreenPresentationPendingAssertions isActive])
    {
      if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") & 1) == 0)
      {
        [(SBLockScreenOrientationManager *)self->_lockScreenOrientationManager updateInterfaceOrientationWithRequestedOrientation:0 animated:0];
      }

      v7 = [(SBLockScreenManager *)self coverSheetViewController];
      [v7 activateMainPageWithCompletion:0];
    }

    else
    {
      v16[0] = @"SBUILockOptionsForceLockKey";
      v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v17[0] = v7;
      v16[1] = @"SBUILockOptionsLockAutomaticallyKey";
      v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v17[1] = v13;
      v16[2] = @"SBUILockOptionsUseScreenOffModeKey";
      v14 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v17[2] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
      [(SBLockScreenManager *)self lockUIFromSource:11 withOptions:v15];
    }

    v8 = [MEMORY[0x277D262A0] sharedConnection];
    v9 = [v8 isLockScreenControlCenterAllowed];

    if ((v9 & 1) == 0)
    {
      v10 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment controlCenterPresenter];
      [v10 dismissAnimated:0];
    }
  }

  v12 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
  [v12 setAuthenticated:v4];

  [(SBLockScreenBiometricAuthenticationCoordinator *)self->_biometricAuthenticationCoordinator setAuthenticated:v4];
}

- (void)_deviceBlockedChanged:(id)a3
{
  v11[3] = *MEMORY[0x277D85DE8];
  if ([(SBLockScreenManager *)self isUILocked])
  {
    v4 = +[SBCoverSheetPresentationManager sharedInstance];
    if ([v4 isInSecureApp])
    {
      v5 = [(SBFLockOutStatusProvider *)self->_lockOutController isBlocked];

      if (!v5)
      {
LABEL_6:
        v6 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment blockedStateObserver];
        [v6 noteDeviceBlockedStatusUpdated];
LABEL_9:

        goto LABEL_10;
      }

      v4 = +[SBCoverSheetPresentationManager sharedInstance];
      [v4 setCoverSheetPresented:1 animated:1 withCompletion:0];
    }

    goto LABEL_6;
  }

  if ([(SBFLockOutStatusProvider *)self->_lockOutController isBlocked])
  {
    v10[0] = @"SBUILockOptionsForceLockKey";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v11[0] = v6;
    v10[1] = @"SBUILockOptionsLockAutomaticallyKey";
    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v11[1] = v7;
    v10[2] = @"SBUILockOptionsUseScreenOffModeKey";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v11[2] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
    [(SBLockScreenManager *)self lockUIFromSource:19 withOptions:v9];

    goto LABEL_9;
  }

LABEL_10:
  [(SBLockScreenManager *)self _evaluatePreArmDisabledAssertions];
}

- (void)_resetOrRestoreStateChanged:(id)a3
{
  v18[3] = *MEMORY[0x277D85DE8];
  if ([(SBLockScreenManager *)self isUILocked])
  {
    v14 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment blockedStateObserver];
    [v14 noteResetRestoreStateUpdated];
  }

  else
  {
    v4 = +[SBSyncController sharedInstance];
    if ([v4 isRestoring])
    {
    }

    else
    {
      v5 = +[SBSyncController sharedInstance];
      v6 = [v5 isResetting];

      if (!v6)
      {
        return;
      }
    }

    v7 = +[SBBacklightController sharedInstance];
    [v7 setBacklightState:3 source:25];

    v17[0] = @"SBUILockOptionsForceLockKey";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v18[0] = v8;
    v17[1] = @"SBUILockOptionsLockAutomaticallyKey";
    v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v18[1] = v9;
    v17[2] = @"SBUILockOptionsUseScreenOffModeKey";
    v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v18[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
    [(SBLockScreenManager *)self lockUIFromSource:6 withOptions:v11];

    v15 = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
    v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v16 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [(SBLockScreenManager *)self unlockUIFromSource:6 withOptions:v13];
  }
}

- (void)_handleBacklightLevelWillChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D67A28]];
  [v5 floatValue];
  v7 = v6;

  v8 = BSFloatGreaterThanFloat();
  v9 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment backlightController];
  [v9 setBacklightLevel:v7];

  if (self->_isScreenOn != v8)
  {
    self->_isScreenOn = v8;
    if (v8)
    {
      [(SBCoverSheetBiometricResourceObserver *)self->_biometricResourceObserver reset];
      [(SBLockScreenManager *)self _setMesaCoordinatorDisabled:0 forReason:@"Screen off"];
      v10 = [MEMORY[0x277D67C98] sharedInstance];
      [v10 noteScreenWillTurnOn];

      [(SBFMouseButtonDownGestureRecognizer *)self->_mouseButtonDownGesture setEnabled:0];
      [(SBLockScreenManager *)self _evaluateWallpaperMode];
      v12 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
      [v12 completeOngoingPresentationIfNeeded];
    }

    else
    {
      [(SBLockScreenManager *)self _setHomeButtonShowPasscodeRecognizer:0];
      [(SBLockScreenManager *)self _setMesaCoordinatorDisabled:1 forReason:@"Screen off"];
      v11 = [MEMORY[0x277D67C98] sharedInstance];
      [v11 noteScreenDidTurnOff];

      v12 = +[SBWallpaperController sharedInstance];
      [v12 updateWallpaperAnimationWithWakeSourceIsSwipeToUnlock:0];
    }
  }
}

- (void)_handleBacklightDidTurnOff:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D67A10]];
  v6 = [v5 intValue];

  [(SBLockScreenManager *)self setPasscodeVisible:0 animated:0];
  if (v6 != 13)
  {
    v7 = +[SBCoverSheetPresentationManager sharedInstance];
    [v7 noteScreenDidTurnOff];
  }

  [(SBFMouseButtonDownGestureRecognizer *)self->_mouseButtonDownGesture setEnabled:1];

  [(SBLockScreenManager *)self _evaluateWallpaperMode];
}

- (void)_lockScreenDimmed:(id)a3
{
  v4 = [SBApp bannerManager];
  [v4 dismissAllBannersInAllWindowScenesAnimated:0 reason:@"SBBannerManagerDismissalReasonLock"];

  [(SBLockScreenManager *)self _clearAuthenticationLockAssertion];
}

- (void)homeButtonSuppressAfterUnlockRecognizerRequestsEndOfSuppression:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    [SBLockScreenManager homeButtonSuppressAfterUnlockRecognizerRequestsEndOfSuppression:];
    v5 = 0;
  }

  homeButtonSuppressAfterUnlockRecognizer = self->_homeButtonSuppressAfterUnlockRecognizer;
  if (!homeButtonSuppressAfterUnlockRecognizer)
  {
    [(SBLockScreenManager *)a2 homeButtonSuppressAfterUnlockRecognizerRequestsEndOfSuppression:&self->_homeButtonSuppressAfterUnlockRecognizer, &v9];
    v5 = v7;
    homeButtonSuppressAfterUnlockRecognizer = v9;
  }

  if (homeButtonSuppressAfterUnlockRecognizer != v5)
  {
    [SBLockScreenManager homeButtonSuppressAfterUnlockRecognizerRequestsEndOfSuppression:];
  }

  [(SBLockScreenManager *)self _setHomeButtonSuppressAfterUnlockRecognizer:0, v7];
}

- (void)remoteLock:(BOOL)a3
{
  v9[3] = *MEMORY[0x277D85DE8];
  if (a3 && [(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet])
  {
    [(SBLockScreenManager *)self _lockFeaturesForRemoteLock:1];
  }

  v8[0] = @"SBUILockOptionsUseScreenOffModeKey";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v9[0] = v4;
  v8[1] = @"SBUILockOptionsLockAutomaticallyKey";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v9[1] = v5;
  v8[2] = @"SBUILockOptionsForceLockKey";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v9[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  [(SBLockScreenManager *)self lockUIFromSource:21 withOptions:v7];
}

- (void)_lockFeaturesForRemoteLock:(BOOL)a3
{
  v3 = a3;
  v4 = +[SBDefaults localDefaults];
  v5 = [v4 lockScreenDefaults];
  [v5 setLimitFeaturesForRemoteLock:v3];

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D67A50];
  v7 = MEMORY[0x277CBEAC0];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v9 = [v7 dictionaryWithObject:v8 forKey:*MEMORY[0x277D67B30]];
  [v10 postNotificationName:v6 object:0 userInfo:v9];
}

- (void)activateLostModeForRemoteLock:(BOOL)a3
{
  v23[3] = *MEMORY[0x277D85DE8];
  if (!self->_isInLostMode)
  {
    v3 = a3;
    self->_isInLostMode = 1;
    v5 = [SBApp userSessionController];
    if ([v5 canLogout])
    {
      [v5 logout];
    }

    else
    {
      v6 = +[SBMediaController sharedInstance];
      [v6 stopForEventSource:5];

      v7 = +[SBTelephonyManager sharedTelephonyManager];
      [v7 disconnectAllCalls];

      v8 = +[SBConferenceManager sharedInstance];
      [v8 endFaceTime];

      if (![(SBLockScreenManager *)self isUILocked])
      {
        v22[0] = @"SBUILockOptionsUseScreenOffModeKey";
        v9 = [MEMORY[0x277CCABB0] numberWithBool:0];
        v23[0] = v9;
        v22[1] = @"SBUILockOptionsLockAutomaticallyKey";
        v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v23[1] = v10;
        v22[2] = @"SBUILockOptionsForceLockKey";
        v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v23[2] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
        [(SBLockScreenManager *)self lockUIFromSource:20 withOptions:v12];
      }

      [(SBLockScreenManager *)self setPasscodeVisible:0 animated:1];
      [(SBLockScreenManager *)self enableLostModePlugin];
      v13 = +[SBAlertItemsController sharedInstance];
      [v13 setForceAlertsToPend:1 forReason:@"SBLockScreenManagerPendAlertsForLostMode"];

      v14 = [SBApp bannerManager];
      v15 = [v14 acquireBannerSuppressionAssertionForReason:@"SBLockScreenManagerBusyForLostMode"];
      bannerSuppressionAssertion = self->_bannerSuppressionAssertion;
      self->_bannerSuppressionAssertion = v15;

      if (v3)
      {
        v17 = [SBApp userSessionController];
        v18 = [v17 isLoginSession];

        if (v18)
        {
          v19 = [MEMORY[0x277D0AAC0] sharedInstance];
          v20 = [v19 allApplicationProcesses];
          v21 = [v20 bs_filter:&__block_literal_global_499];

          SBWorkspaceTerminateProcesses(v21, 5, 0, @"entering lost mode", 0);
        }

        else
        {
          SBWorkspaceTerminateAllApps(5, 0, @"entering lost mode", 0);
        }
      }
    }
  }
}

uint64_t __53__SBLockScreenManager_activateLostModeForRemoteLock___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.LoginUI"];

  return v3 ^ 1u;
}

- (void)exitLostModeIfNecessaryFromRemoteRequest:(BOOL)a3
{
  if (self->_isInLostMode)
  {
    v11 = v4;
    v12 = v3;
    self->_isInLostMode = 0;
    if (a3)
    {
      [(SBLockScreenManager *)self _lockFeaturesForRemoteLock:0];
    }

    else
    {
      v8 = [MEMORY[0x277D08F78] sharedInstance];
      [v8 disableLostMode];
    }

    [(SBLockScreenManager *)self _maybeLaunchSetupForcingCheckIfNotBricked:1, v11, v12, v5];
    v9 = +[SBAlertItemsController sharedInstance];
    [v9 setForceAlertsToPend:0 forReason:@"SBLockScreenManagerPendAlertsForLostMode"];

    [(BSInvalidatable *)self->_bannerSuppressionAssertion invalidate];
    bannerSuppressionAssertion = self->_bannerSuppressionAssertion;
    self->_bannerSuppressionAssertion = 0;
  }
}

- (void)enableLostModePlugin
{
  if (self->_isInLostMode)
  {
    v3 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment pluginPresenter];
    objc_initWeak(location, v3);

    v4 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment passcodeViewPresenter];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__SBLockScreenManager_enableLostModePlugin__block_invoke;
    v6[3] = &unk_2783A8C68;
    objc_copyWeak(&v7, location);
    [v4 setPasscodeLockVisible:0 animated:0 completion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "We wanted to enable the lost mode plugin but we don't think we're in lost mode.", location, 2u);
    }
  }
}

void __43__SBLockScreenManager_enableLostModePlugin__block_invoke(uint64_t a1)
{
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Enabling lost mode plugin since we are in lost mode.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [MEMORY[0x277D67958] contextWithName:@"FindMyiPhoneLockScreen"];
  [WeakRetained enableLockScreenPluginWithContext:v4];
}

- (void)_presentLostModeBiometricAuthenticationTransientOverlay
{
  if (!self->_lostModeBiometricAuthenticationTransientOverlay)
  {
    v4 = [SBLostModeBiometricAuthenticationTransientOverlayViewController alloc];
    v5 = [MEMORY[0x277D67C98] sharedInstance];
    v6 = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)v4 initWithLockScreenManager:self biometricResource:v5];
    lostModeBiometricAuthenticationTransientOverlay = self->_lostModeBiometricAuthenticationTransientOverlay;
    self->_lostModeBiometricAuthenticationTransientOverlay = v6;

    [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)self->_lostModeBiometricAuthenticationTransientOverlay setDelegate:self];
    v8 = +[SBWorkspace mainWorkspace];
    [v8 presentTransientOverlayViewController:self->_lostModeBiometricAuthenticationTransientOverlay animated:1 completion:0];
  }
}

- (void)_dismissLostModeBiometricAuthenticationTransientOverlay
{
  if (self->_lostModeBiometricAuthenticationTransientOverlay)
  {
    v3 = +[SBWorkspace mainWorkspace];
    [v3 dismissTransientOverlayViewController:self->_lostModeBiometricAuthenticationTransientOverlay animated:1 completion:0];

    lostModeBiometricAuthenticationTransientOverlay = self->_lostModeBiometricAuthenticationTransientOverlay;
    self->_lostModeBiometricAuthenticationTransientOverlay = 0;
  }
}

- (void)_relockUIForLostMode
{
  v5[4] = *MEMORY[0x277D85DE8];
  [(SBLockScreenManager *)self _dismissLostModeBiometricAuthenticationTransientOverlay];
  v4[0] = @"SBUILockOptionsUseScreenOffModeKey";
  v4[1] = @"SBUILockOptionsLockAutomaticallyKey";
  v5[0] = MEMORY[0x277CBEC28];
  v5[1] = MEMORY[0x277CBEC38];
  v4[2] = @"SBUILockOptionsForceLockKey";
  v4[3] = @"SBUILockOptionsForceBioLockoutKey";
  v5[2] = MEMORY[0x277CBEC38];
  v5[3] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];
  [(SBLockScreenManager *)self lockUIFromSource:20 withOptions:v3];
}

- (BOOL)_needsBiometricAuthenticationToExitLostMode
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D67C98] sharedInstance];
  v4 = [v3 hasEnrolledIdentities];

  v5 = _os_feature_enabled_impl();
  v6 = [MEMORY[0x277CD47B0] sharedInstance];
  v7 = [v6 isFeatureEnabled];

  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = !v8 && v7 != 0 && !self->_isInFamiliarLocationToExitLostMode;
  v11 = SBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    isInFamiliarLocationToExitLostMode = self->_isInFamiliarLocationToExitLostMode;
    v14[0] = 67110144;
    v14[1] = v10;
    v15 = 1024;
    v16 = v4;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = v7;
    v21 = 1024;
    v22 = isInFamiliarLocationToExitLostMode;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[Lost Mode Exit] needsBioAuth: %{BOOL}u, bioIdentityEnrolled: %{BOOL}u, featureEnabled: %{BOOL}u, deviceProtectionEnabled: %{BOOL}u, isInFamiliarLocation: %{BOOL}u", v14, 0x20u);
  }

  return v10;
}

void __84__SBLockScreenManager__runPreflightLocationBasedEvaluationToExitLostModeIfNecessary__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[368] = a3 == 0;
  }
}

- (void)_maybeLaunchSetupForcingCheckIfNotBricked:(BOOL)a3
{
  v3 = a3;
  v23[4] = *MEMORY[0x277D85DE8];
  v5 = +[SBLockdownManager sharedInstance];
  v6 = [v5 brickedDevice];

  if (v6)
  {
    v7 = [MEMORY[0x277D0AB20] sharedInstance];
    [v7 cancelEventsWithName:@"HandleActivationChanged"];

    v8 = +[SBDefaults externalDefaults];
    v9 = [v8 setupDefaults];
    [v9 setDeviceSetup:0];

    v10 = +[SBSetupManager sharedInstance];
    LOBYTE(v9) = [v10 updateInSetupMode];

    if (v9)
    {
      v11 = SBLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [SBLockScreenManager _maybeLaunchSetupForcingCheckIfNotBricked:v11];
      }

      __65__SBLockScreenManager__maybeLaunchSetupForcingCheckIfNotBricked___block_invoke();
      v12 = +[SBDefaults localDefaults];
      v13 = [v12 setupDefaults];
      [v13 setInSetupModeForActivationChange:1];
    }

    else
    {
      if ([(SBLockScreenManager *)self isUILocked])
      {
        return;
      }

      v16 = SBLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "Locking the UI", v21, 2u);
      }

      v17 = +[SBTelephonyManager sharedTelephonyManager];
      [v17 disconnectAllCalls];

      v22[0] = @"SBUILockOptionsUseScreenOffModeKey";
      v12 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v23[0] = v12;
      v22[1] = @"SBUILockOptionsAnimateLockScreenActivationKey";
      v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v23[1] = v13;
      v22[2] = @"SBUILockOptionsLockAutomaticallyKey";
      v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v23[2] = v18;
      v22[3] = @"SBUILockOptionsForceLockKey";
      v19 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v23[3] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
      [(SBLockScreenManager *)self lockUIFromSource:18 withOptions:v20];
    }
  }

  else if (v3)
  {
    v14 = +[SBSetupManager sharedInstance];
    v15 = [v14 updateInSetupMode];

    if (v15)
    {

      __65__SBLockScreenManager__maybeLaunchSetupForcingCheckIfNotBricked___block_invoke();
    }
  }
}

void __65__SBLockScreenManager__maybeLaunchSetupForcingCheckIfNotBricked___block_invoke()
{
  BKSHIDServicesAmbientLightSensorEnableAutoBrightness();
  v0 = +[SBApplicationController sharedInstance];
  v1 = [v0 setupApplication];

  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Activating Setup because we think we're bricked.", v7, 2u);
  }

  SBWorkspaceActivateApplication(v1);
  v3 = [SBApp bannerManager];
  [v3 setSuspended:1 forReason:@"com.apple.purplebuddy"];

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 1)
  {
LABEL_7:
    [SBApp updateNativeOrientationWithOrientation:1 updateMirroredDisplays:1 animated:0 logMessage:@"Setting orientation to Portrait for unlock to Setup."];
    v6 = +[SBSetupManager sharedInstance];
    [v6 setDeferringDeviceOrientationUpdates:1];
  }

LABEL_8:
}

- (BOOL)_shouldBeInSetupMode
{
  v3 = +[SBSetupManager sharedInstance];
  v4 = +[SBDefaults localDefaults];
  v5 = [v3 isInSetupMode];
  v6 = [v4 setupDefaults];
  v7 = [v6 inSetupModeForActivationChange];

  if (!v5 || ([SBApp caseIsEnabledAndLatched] & 1) != 0 || ((objc_msgSend(v3, "setupHasFinishedRestoringFromBackup") | v7) & 1) != 0)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = ![(SBLockScreenManager *)self isInLostMode];
  }

  return v8;
}

- (BOOL)handleKeyHIDEvent:(__IOHIDEvent *)a3
{
  if (a3)
  {
    v4 = BKSHIDEventGetBaseAttributes();
    if (([v4 source] & 0xFFFFFFFD) == 1)
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      if ([(SBLockScreenManager *)self isUILocked])
      {
        v6 = +[SBWorkspace mainWorkspace];
        v7 = [v6 transientOverlayPresentationManager];
        v8 = [v7 hasActivePresentation];
      }

      else
      {
        v8 = 1;
      }

      v10 = [(SBFLockOutStatusProvider *)self->_lockOutController isBlocked];
      v9 = 0;
      if (!IntegerValue || (v8 & 1) != 0 || (v10 & 1) != 0)
      {
        goto LABEL_15;
      }

      if ([(SBLockScreenManager *)self _shouldUnlockUIOnKeyDownEvent])
      {
        v11 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment customActionStore];
        v12 = [v11 _customLockScreenActionContext];

        if (!v12)
        {
          v13 = objc_alloc_init(MEMORY[0x277D65EF8]);
          [v13 setConfirmedNotInPocket:1];
          [v11 setCustomLockScreenActionContext:v13];
        }

        [(SBLockScreenManager *)self unlockUIFromSource:2 withOptions:0];

        v9 = 1;
        goto LABEL_15;
      }
    }

    v9 = 0;
LABEL_15:

    return v9;
  }

  return 0;
}

- (BOOL)_shouldUnlockUIOnKeyDownEvent
{
  v3 = [MEMORY[0x277D75DA0] keyWindow];
  v4 = [v3 firstResponder];

  if (v4)
  {
    return 0;
  }

  v6 = [SBApp modalAlertPresentationCoordinator];
  v7 = [v6 isShowingSystemModalAlert];

  v8 = +[SBAssistantController isVisible];
  v9 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment controlCenterPresenter];
  v10 = [v9 isVisible];

  v11 = [SBApp notificationDispatcher];
  v12 = [v11 bannerDestination];
  v13 = [v12 isPresentingBannerInLongLook];

  v14 = +[SBCoverSheetPresentationManager sharedInstance];
  v15 = [v14 isCoverSheetHostingAnApp];

  if (![(SBLockScreenManager *)self isUILocked]|| (v7 & 1) != 0 || v8 || (v10 & 1) != 0 || (v13 & 1) != 0 || (v15 & 1) != 0)
  {
    return 0;
  }

  v16 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
  v17 = [v16 shouldUnlockUIOnKeyDownEvent];

  return v17;
}

- (void)addLockStateObserver:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4)
  {
    [SBLockScreenManager addLockStateObserver:];
    v4 = 0;
  }

  lockStateObservers = self->_lockStateObservers;
  if (!lockStateObservers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_lockStateObservers;
    self->_lockStateObservers = v6;

    v4 = v8;
    lockStateObservers = self->_lockStateObservers;
  }

  [(NSHashTable *)lockStateObservers addObject:v4];
  if ([(SBLockScreenManager *)self isUILocked])
  {
    [v8 lockStateProvider:self didUpdateIsUILocked:1];
  }
}

- (void)removeLockStateObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [SBLockScreenManager removeLockStateObserver:];
    v4 = 0;
  }

  [(NSHashTable *)self->_lockStateObservers removeObject:v4];
}

- (BOOL)passcodeEntryTransientOverlayViewController:(id)a3 authenticatePasscode:(id)a4
{
  v6 = a4;
  if (!self->_unlockRequest)
  {
    v7 = a3;
    v8 = objc_alloc_init(SBLockScreenUnlockRequest);
    [(SBLockScreenUnlockRequest *)v8 setName:@"Unlock For Passcode Entry Alert View Controller"];
    v9 = [v7 intent];

    [(SBLockScreenUnlockRequest *)v8 setIntent:v9];
    unlockRequest = self->_unlockRequest;
    self->_unlockRequest = v8;
  }

  [(SBLockScreenManager *)self attemptUnlockWithPasscode:v6];

  return 1;
}

- (void)passcodeEntryTransientOverlayViewControllerDidDisappear:(id)a3
{
  if (self->_passcodeEntryTransientOverlayViewController == a3)
  {
    [(SBLockScreenManager *)self setPasscodeVisible:0 animated:1];
  }
}

- (void)passcodeEntryTransientOverlayViewControllerRequestsDismissal:(id)a3
{
  v4 = +[SBWorkspace mainWorkspace];
  [v4 dismissTransientOverlayViewController:self->_passcodeEntryTransientOverlayViewController animated:self->_passcodeEntryTransientOverlayViewControllerPresentedAnimated completion:0];
}

- (void)passcodeEntryTransientOverlayViewControllerRequestsEmergencyCall:(id)a3
{
  v4 = +[SBCoverSheetPresentationManager sharedInstance];
  v5 = [v4 isInSecureApp];

  v6 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment callController];
  [v6 launchEmergencyDialerAnimated:v5 ^ 1u];

  [(SBLockScreenManager *)self setPasscodeVisible:0 animated:1];
}

- (BOOL)passcodeEntryTransientOverlayViewControllerDidDetectFaceOcclusionsSinceScreenOn:(id)a3
{
  v3 = [(SBLockScreenManager *)self coverSheetViewController];
  v4 = [v3 didDetectFaceOcclusionsSinceScreenOn];

  return v4;
}

- (BOOL)passcodeEntryTransientOverlayViewControllerDidDetectBottomFaceOcclusionsSinceScreenOn:(id)a3
{
  v3 = [(SBLockScreenManager *)self coverSheetViewController];
  v4 = [v3 didDetectBottomFaceOcclusionsSinceScreenOn];

  return v4;
}

- (void)extendedKeybagLockStateChanged:(BOOL)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a3 && ![(SBLockScreenManager *)self isUILocked]&& ![(SBLockScreenManager *)self isLockScreenActive]&& ([(BSCompoundAssertion *)self->_lockScreenPresentationPendingAssertions isActive]& 1) == 0)
  {
    v4 = +[SBLockScreenManager sharedInstance];
    v7 = @"SBUILockOptionsUseScreenOffModeKey";
    v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v8[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v4 lockUIFromSource:11 withOptions:v6];
  }
}

- (void)wallpaperDidChangeForVariant:(int64_t)a3
{
  if (!a3)
  {
    [(SBLockScreenManager *)self _evaluateWallpaperMode];
  }
}

- (void)hideDimmingLayerDidChange:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBLockScreenManager *)self coverSheetViewController];
  [v4 setHidesDimmingLayer:v3];
}

- (void)wallpaperDidUpdatePreferredSalientContentRectangle:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(SBLockScreenManager *)self coverSheetViewController];
  [v7 setPosterPreferredSalientContentRectangle:{x, y, width, height}];
}

- (void)wallpaperDidUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBLockScreenManager *)self coverSheetViewController];
  [v4 setAdaptiveTimeHonorsPreferredSalientContentRectangle:v3];
}

- (void)wallpaperLegibilityEnvironmentDidChange:(id)a3
{
  v4 = a3;
  v5 = [(SBLockScreenManager *)self coverSheetViewController];
  [v5 wallpaperLegibilityEnvironmentDidChange:v4];
}

- (void)backlightController:(id)a3 didUpdateDigitizerDisabled:(BOOL)a4 tapToWakeEnabled:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v11 = a3;
  v8 = v6 & v5;
  [(SBTapToWakeController *)self->_tapToWakeController setDigitizerInTapToWakeMode:v8];
  tapToWakeController = self->_tapToWakeController;
  if (v8 == 1)
  {
    v10 = [v11 tapToWakeRequiresHitTestSuppression];
  }

  else
  {
    v10 = 0;
  }

  [(SBTapToWakeController *)tapToWakeController setDigitizerModeRequiresHitTestSuppression:v10];
}

- (void)backlightController:(id)a3 willTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5
{
  v7 = a3;
  if (a4 != 3)
  {
    v9 = v7;
    v8 = [(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet];
    v7 = v9;
    if ((v8 & 1) == 0)
    {
      [(SBLockScreenManager *)self _setSystemApertureProudLockElementVisible:0 backlightState:a4 withReason:@"BacklightInactive"];
      v7 = v9;
    }
  }
}

- (void)backlightController:(id)a3 didTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5
{
  if (a4 == 3)
  {
    [(SBLockScreenManager *)self _clearAuthenticationLockAssertion:a3];

    [(SBLockScreenManager *)self _showSystemApertureProudLockElementForBacklightState:3 WithReason:@"BacklightInactive"];
  }
}

- (BOOL)_shouldEmulateInterstitialPresentationForAccessibility:(BOOL)a3
{
  v3 = a3;
  v5 = UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSAssistiveTouchEnabled() != 0;
  v6 = [(SBLockScreenManager *)self coverSheetViewController];
  v7 = 0;
  if (v6 && (!v3 || v5))
  {
    v7 = SBFEffectiveHomeButtonType() == 2;
  }

  return v7;
}

- (void)_emulateInterstitialPasscodePresentationForAccessibility:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBLockScreenManager *)self coverSheetViewController];
  if ([(SBLockScreenManager *)self _shouldEmulateInterstitialPresentationForAccessibility:v3])
  {
    [v5 prepareForInterstitialPresentation];
    [v5 updateInterstitialPresentationWithProgress:0.0];
    if (v3)
    {
      v6 = MEMORY[0x277D75D18];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __80__SBLockScreenManager__emulateInterstitialPasscodePresentationForAccessibility___block_invoke;
      v9[3] = &unk_2783A8C18;
      v10 = v5;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __80__SBLockScreenManager__emulateInterstitialPasscodePresentationForAccessibility___block_invoke_2;
      v7[3] = &unk_2783A9398;
      v8 = v10;
      [v6 animateWithDuration:v9 animations:v7 completion:0.4];
    }

    else
    {
      [v5 cleanupInterstitialPresentationToPresented:1 inPlace:0];
    }
  }
}

- (void)setIndicatorHost:(id)a3
{
  lockElement = self->_lockElement;
  if (lockElement)
  {
    [(SBLockElementViewProvider *)lockElement setIndicatorHost:a3];
  }
}

- (SBBiometricAuthenticationIndicatorHost)indicatorHost
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorHost);

  return WeakRetained;
}

- (void)lockScreenViewControllerDidPresent
{
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBLockScreenManager lockScreenViewControllerDidPresent]", buf, 2u);
  }

  [(SBLockScreenManager *)self setUIUnlocking:0];
  self->_handlingUnlockRequest = 0;
  v4 = [(SBLockScreenManager *)&self->super.isa rootViewController];
  v5 = [v4 _sbWindowScene];

  v6 = [v5 switcherController];
  if ([v6 isAnySwitcherVisible])
  {
    [v6 dismissMainAndFloatingSwitchersWithSource:7 animated:0];
  }

  if ([v6 isInAnyPeekState])
  {
    [v6 cancelPeekWithSource:7 animated:0];
  }

  v7 = [(SBLockScreenManager *)self _lockUI];
  v8 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
  [v8 setAuthenticated:{-[SBFUserAuthenticationController isAuthenticated](self->_userAuthController, "isAuthenticated")}];

  v9 = [(SBLockScreenManager *)self _statusBarLayoutManager];
  [v9 setDefaultWindowLevel:*MEMORY[0x277D76EE8] + 20.0];

  v10 = [SBApp bannerManager];
  [v10 dismissAllBannersInAllWindowScenesAnimated:0 reason:@"SBBannerManagerDismissalReasonLock"];

  if (!self->_presentedPasscodeWhileUILocking)
  {
    [(SBLockScreenManager *)self setPasscodeVisible:0 animated:1];
  }

  if (self->_isInLostMode)
  {
    [(SBLockScreenManager *)self enableLostModePlugin];
  }

  v11 = [SBApp userSessionController];
  v12 = [v11 isMultiUserSupported];

  v13 = SBFEffectiveHomeButtonType();
  if ((v12 & 1) == 0 && v13 != 2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SBLockScreenManager_lockScreenViewControllerDidPresent__block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    if (lockScreenViewControllerDidPresent_onceToken != -1)
    {
      dispatch_once(&lockScreenViewControllerDidPresent_onceToken, block);
    }
  }

  [(SBLockScreenManager *)self _showSystemApertureProudLockElementIfSupportedWithReason:@"DidPresent"];
  v14 = [v5 homeScreenController];
  [v14 endRequiringContentForReason:@"SBUIHomeScreenActiveContentRequirementReason"];

  if (v7)
  {
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 postNotificationName:@"SBLockScreenUIDidLockNotification" object:self];
  }

  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  v17 = [(SBLockScreenManager *)self _hostingWindowScene];
  [v16 postNotificationName:@"SBLockScreenUIDidPresentNotification" object:v17];

  [(SBLockScreenDeviceMotionEffectController *)self->_deviceMotionEffectController setWallpaperVisible:1];
  v18 = [(SBLockScreenManager *)self coverSheetViewController];
  LODWORD(v17) = [v18 isUserPresenceDetectionAllowed];

  if (v17)
  {
    v19 = [(SBLockScreenManager *)self coverSheetViewController];
    [v19 enableRecentUserPresenceDetectionForReason:@"SBLockScreenDeviceMotionEffectUserPresenceMonitoring"];
  }
}

- (void)coverSheetViewControllerShouldDismissContextMenu:(id)a3
{
  v3 = [(SBLockScreenManager *)&self->super.isa rootViewController];
  v4 = [v3 _sbWindowScene];
  v5 = [v4 homeScreenController];

  if ([v5 areAnyIconViewContextMenusShowing])
  {
    [v5 dismissAppIconForceTouchControllers:0];
  }
}

- (BOOL)_lockUI
{
  v3 = [(SBLockScreenManager *)&self->super.isa rootViewController];
  v4 = [v3 _sbWindowScene];

  v5 = [v4 switcherController];
  if ([(SBLockScreenManager *)self isUILocked]&& self->_uiHasBeenLockedOnce)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v5 layoutStateApplicationSceneHandles];
    v8 = [v7 count];

    if (v8 >= 2)
    {
      v9 = +[SBKeyboardSuppressionManager sharedInstance];
      v10 = [v5 displayIdentity];
      [v9 startSuppressingKeyboardWithReason:@"SBSuppressKeyboardForUILock" predicate:0 displayIdentity:v10];
    }

    [(SBLockScreenManager *)self _setUILocked:1];
    self->_uiHasBeenLockedOnce = 1;
    [(SBLockScreenManager *)self _sendUILockStateChangedNotification];
    v11 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
    [v11 prepareForUILock];

    v12 = +[SBLockStateAggregator sharedInstance];
    v13 = [v12 hasAnyLockState];

    if (v13)
    {
      v14 = +[SBWorkspace mainWorkspace];
      v15 = [v14 pipCoordinator];

      [v15 setPictureInPictureWindowsHidden:1 withReason:@"SBLockScreenPictureInPictureHiddenReason"];
    }

    [(SBLockScreenManager *)self _lockStateObservers];
    v6 = 1;
  }

  return v6;
}

void __53__SBLockScreenManager__sharedInstanceCreateIfNeeded___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SBLockScreenManager.m" lineNumber:384 description:@"Unexpectedly created SBLockScreenManager before UIApplication instance was created."];
}

- (void)lockUIFromSource:(os_log_t)log withOptions:completion:.cold.1(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "[SBLockScreenManager lockUIFromSource:withOptions:completion:]";
  v3 = 1024;
  v4 = 0;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "%s unknown lock source %d; ignoring.", &v1, 0x12u);
}

- (void)setBiometricAutoUnlockingDisabled:forReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (uint64_t)lockScreenViewControllerWillDismissWithVelocity:(id *)a1 .cold.2(id *a1)
{
  v1 = [(SBLockScreenManager *)a1 rootViewController];
  v2 = [v1 _sbWindowScene];
  v3 = [v2 switcherController];
  v4 = [v3 windowManagementContext];
  v5 = [v4 isChamoisOrFlexibleWindowing];

  return v5;
}

- (void)_setWalletPreArmDisabled:forReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_setMesaCoordinatorDisabled:forReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_setUILocked:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_reallySetUILocked:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_finishUIUnlockFromSource:withOptions:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __72__SBLockScreenManager__finishUIUnlockFromSource_withOptions_completion___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [a2 debugDescription];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "Error while launching capture application (%@): %@", &v6, 0x16u);
}

- (void)_unlockWithRequest:(const char *)a1 cancelPendingRequests:completion:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:SBLockScreenUnlockRequestClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBLockScreenManager.m";
    v9 = 1024;
    v10 = 2953;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_unlockWithRequest:(const char *)a1 cancelPendingRequests:completion:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBLockScreenManager.m";
    v9 = 1024;
    v10 = 2953;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_setMesaUnlockingDisabled:forReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)homeButtonSuppressAfterUnlockRecognizerRequestsEndOfSuppression:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"recognizer" object:? file:? lineNumber:? description:?];
}

- (void)homeButtonSuppressAfterUnlockRecognizerRequestsEndOfSuppression:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBLockScreenManager.m" lineNumber:3623 description:@"Unexpectedly received end of suppresion from a SBHomeButtonSuppressAfterUnlock recognizer but there is no active one"];

  *a4 = *a3;
}

- (void)homeButtonSuppressAfterUnlockRecognizerRequestsEndOfSuppression:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addLockStateObserver:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"observer" object:? file:? lineNumber:? description:?];
}

- (void)removeLockStateObserver:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"observer" object:? file:? lineNumber:? description:?];
}

@end