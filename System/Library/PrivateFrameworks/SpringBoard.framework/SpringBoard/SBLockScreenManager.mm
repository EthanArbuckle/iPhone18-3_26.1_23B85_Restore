@interface SBLockScreenManager
+ (id)_sharedInstanceCreateIfNeeded:(BOOL)needed;
- (BOOL)_attemptUnlockWithPasscode:(id)passcode mesa:(BOOL)mesa finishUIUnlock:(BOOL)unlock completion:(id)completion;
- (BOOL)_canAttemptRealUIUnlockIgnoringBacklightNonsenseWithReason:(id *)reason;
- (BOOL)_canHandleTransitionRequest:(id)request;
- (BOOL)_finishUIUnlockFromSource:(int)source withOptions:(id)options completion:(id)completion;
- (BOOL)_hasValidLockElementSuppressionAssertion;
- (BOOL)_isPasscodeVisible;
- (BOOL)_isUnlockDisabled;
- (BOOL)_lockUI;
- (BOOL)_needsBiometricAuthenticationToExitLostMode;
- (BOOL)_requiresEmptyLockElementForBacklightState:(int64_t)state;
- (BOOL)_setPasscodeVisible:(BOOL)visible animated:(BOOL)animated ignoringPreflightRequirementsForPresentation:(BOOL)presentation;
- (BOOL)_shouldBeInSetupMode;
- (BOOL)_shouldBeShowingLockElement;
- (BOOL)_shouldBeShowingLockElementForBacklightState:(int64_t)state;
- (BOOL)_shouldBloomForAnyReason;
- (BOOL)_shouldDisconnectCallWhenLockingForActiveAudioRoute;
- (BOOL)_shouldEmulateInterstitialPresentationForAccessibility:(BOOL)accessibility;
- (BOOL)_shouldHideLockForElementSuppressionAssertion;
- (BOOL)_shouldLockAfterEndingFaceTimeCall;
- (BOOL)_shouldLockAfterEndingTelephonyCall;
- (BOOL)_shouldPlayLockSound;
- (BOOL)_shouldReactivateInCallWakingTheDisplay:(BOOL)display;
- (BOOL)_shouldUnlockUIOnKeyDownEvent;
- (BOOL)_shouldWakeToInCallForUnlockSource:(int)source wakingTheDisplay:(BOOL)display;
- (BOOL)_shouldWakeToOtherContentForUnlockSource:(int)source wakingTheDisplay:(BOOL)display stopAfterWakeTo:(BOOL)to;
- (BOOL)_unlockWithRequest:(id)request cancelPendingRequests:(BOOL)requests completion:(id)completion;
- (BOOL)biometricAuthenticationCoordinator:(id)coordinator requestsAuthenticationFeedback:(id)feedback;
- (BOOL)biometricAuthenticationCoordinator:(id)coordinator requestsUnlockWithIntent:(int)intent;
- (BOOL)biometricAuthenticationCoordinatorShouldWaitToInvalidateMatchingAssertion:(id)assertion;
- (BOOL)coverSheetViewControllerHasBeenDismissedSinceKeybagLock:(id)lock;
- (BOOL)coverSheetViewControllerHasSecureApp:(id)app;
- (BOOL)coverSheetViewControllerIsShowingSecureApp:(id)app;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)handleKeyHIDEvent:(__IOHIDEvent *)event;
- (BOOL)handleTransitionRequest:(id)request;
- (BOOL)hasWakeToContentForInactiveDisplay;
- (BOOL)isLockScreenActive;
- (BOOL)isLockScreenVisible;
- (BOOL)isSupressingLockButton;
- (BOOL)passcodeEntryTransientOverlayViewController:(id)controller authenticatePasscode:(id)passcode;
- (BOOL)passcodeEntryTransientOverlayViewControllerDidDetectBottomFaceOcclusionsSinceScreenOn:(id)on;
- (BOOL)passcodeEntryTransientOverlayViewControllerDidDetectFaceOcclusionsSinceScreenOn:(id)on;
- (BOOL)playLockSoundIfPermitted;
- (BOOL)shouldLockUIAfterEndingCall;
- (BOOL)shouldTapToWake;
- (BOOL)unlockUIFromSource:(int)source withOptions:(id)options;
- (BOOL)wouldAttemptToHandleATransitionRequest;
- (CSCoverSheetViewController)coverSheetViewController;
- (SBBiometricAuthenticationIndicatorHost)indicatorHost;
- (SBLockScreenManager)init;
- (SBNotificationDestination)notificationDestination;
- (double)contrastForCurrentWallpaper;
- (id)_hostingWindowScene;
- (id)_newLockScreenEnvironment;
- (id)_statusBarLayoutManager;
- (id)acquireSystemApertureLockElementBloomAssertionWithReason:(id)reason;
- (id)acquireSystemApertureLockElementBloomSuppressionAssertionWithReason:(id)reason;
- (id)acquireSystemApertureLockElementSuppressionAssertionWithReason:(id)reason;
- (id)acquireSystemApertureLockElementVisibleAssertionWithReason:(id)reason;
- (id)averageColorForCurrentWallpaper;
- (id)averageColorForCurrentWallpaperInScreenRect:(CGRect)rect;
- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)newLegibilitySettingsProvider;
- (id)rootViewController;
- (id)succinctDescription;
- (void)_activateLockScreenAnimated:(BOOL)animated animationProvider:(id)provider automatically:(BOOL)automatically inScreenOffMode:(BOOL)mode dismissNotificationCenter:(BOOL)center completion:(id)completion;
- (void)_authenticationStateChanged:(id)changed;
- (void)_cleanupSystemApertureLockElementIgnoringDelays:(BOOL)delays reason:(id)reason;
- (void)_clearAuthenticationLockAssertion;
- (void)_createAuthenticationAssertion;
- (void)_deviceBlockedChanged:(id)changed;
- (void)_disconnectActiveCallIfNeededFromSource:(int)source;
- (void)_dismissLockScreenForAuthenticationIfNecessary;
- (void)_dismissLostModeBiometricAuthenticationTransientOverlay;
- (void)_emulateInterstitialPasscodePresentationForAccessibility:(BOOL)accessibility;
- (void)_evaluatePreArmDisabledAssertions;
- (void)_evaluateWallpaperMode;
- (void)_handleAuthenticationFeedback:(id)feedback;
- (void)_handleBacklightDidTurnOff:(id)off;
- (void)_handleBacklightLevelWillChange:(id)change;
- (void)_lockFeaturesForRemoteLock:(BOOL)lock;
- (void)_lockScreenDimmed:(id)dimmed;
- (void)_lockStateObservers;
- (void)_maybeLaunchSetupForcingCheckIfNotBricked:(BOOL)bricked;
- (void)_noteStartupTransitionDidBegin;
- (void)_noteStartupTransitionWillBegin;
- (void)_postLockCompletedNotification:(BOOL)notification;
- (void)_prepareWallpaperForInteractiveMode;
- (void)_prepareWallpaperForStaticMode;
- (void)_presentLostModeBiometricAuthenticationTransientOverlay;
- (void)_reallySetUILocked:(BOOL)locked;
- (void)_reevaluateSystemApertureLockElementSuppressionWithReason:(id)reason;
- (void)_relockUIForButtonlikeSource:(int)source;
- (void)_relockUIForLostMode;
- (void)_resetOrRestoreStateChanged:(id)changed;
- (void)_runPreflightLocationBasedEvaluationToExitLostModeIfNecessary;
- (void)_runUnlockActionBlock:(BOOL)block;
- (void)_sendUILockStateChangedNotification;
- (void)_setHomeButtonShowPasscodeRecognizer:(id)recognizer;
- (void)_setHomeButtonSuppressAfterUnlockRecognizer:(id)recognizer;
- (void)_setMesaAutoUnlockingDisabled:(BOOL)disabled forReason:(id)reason;
- (void)_setMesaCoordinatorDisabled:(BOOL)disabled forReason:(id)reason;
- (void)_setMesaUnlockingDisabled:(BOOL)disabled forReason:(id)reason;
- (void)_setSystemApertureProudLockElementVisible:(BOOL)visible backlightState:(int64_t)state withReason:(id)reason;
- (void)_setSystemApertureProudLockElementVisible:(BOOL)visible withReason:(id)reason;
- (void)_setSystemApertureProudLockElementVisible:(BOOL)visible withReason:(id)reason afterDelay:(double)delay;
- (void)_setUILocked:(BOOL)locked;
- (void)_setUserAuthController:(id)controller;
- (void)_setWalletPreArmDisabled:(BOOL)disabled forReason:(id)reason;
- (void)_showSystemApertureProudLockElementForBacklightState:(int64_t)state WithReason:(id)reason;
- (void)_showSystemApertureProudLockElementIfSupportedWithReason:(id)reason;
- (void)_unlockStateObservers;
- (void)_updateBloomIfNeeded;
- (void)_wakeScreenForMouseButtonDown:(id)down;
- (void)_wakeScreenForTapToWake;
- (void)activateLostModeForRemoteLock:(BOOL)lock;
- (void)addLockStateObserver:(id)observer;
- (void)attemptUnlockWithPasscode:(id)passcode finishUIUnlock:(BOOL)unlock completion:(id)completion;
- (void)backlightController:(id)controller didTransitionToBacklightState:(int64_t)state source:(int64_t)source;
- (void)backlightController:(id)controller didUpdateDigitizerDisabled:(BOOL)disabled tapToWakeEnabled:(BOOL)enabled;
- (void)backlightController:(id)controller willTransitionToBacklightState:(int64_t)state source:(int64_t)source;
- (void)biometricAuthenticationCoordinator:(id)coordinator handleIdentityMatchSuccess:(BOOL)success;
- (void)coverSheetViewController:(id)controller requestsTransientOverlaysDismissedAnimated:(BOOL)animated;
- (void)coverSheetViewController:(id)controller startSpotlightInteractiveGestureTransactionForGesture:(id)gesture;
- (void)coverSheetViewControllerDidCancelInlinePasscode:(id)passcode;
- (void)coverSheetViewControllerDidDismissInlinePasscode:(id)passcode;
- (void)coverSheetViewControllerIrisPlayingDidFinish:(id)finish;
- (void)coverSheetViewControllerRequestsTranslationToPresentedForExternalLockProvider:(BOOL)provider animated:(BOOL)animated;
- (void)coverSheetViewControllerShouldDismissContextMenu:(id)menu;
- (void)coverSheetViewControllerWillPresentInlinePasscode:(id)passcode;
- (void)coverSheetWindowedAccessoryViewControllerDidDismiss:(id)dismiss;
- (void)coverSheetWindowedAccessoryViewControllerDidPresent:(id)present;
- (void)enableLostModePlugin;
- (void)exitLostModeIfNecessaryFromRemoteRequest:(BOOL)request;
- (void)extendedKeybagLockStateChanged:(BOOL)changed;
- (void)hideDimmingLayerDidChange:(BOOL)change;
- (void)homeButtonShowPasscodeRecognizerRequestsPasscodeUIToBeShown:(id)shown;
- (void)homeButtonSuppressAfterUnlockRecognizerRequestsEndOfSuppression:(id)suppression;
- (void)loadViewsIfNeeded;
- (void)lockScreenViewControllerDidDismiss;
- (void)lockScreenViewControllerDidPresent;
- (void)lockScreenViewControllerWillDismissWithVelocity:(double)velocity;
- (void)lockScreenViewControllerWillPerformTransitionToFinalValue:(double)value forUserGesture:(BOOL)gesture withVelocity:(double)velocity animated:(BOOL)animated;
- (void)lockScreenViewControllerWillPresent;
- (void)lockUIFromSource:(int)source withOptions:(id)options completion:(id)completion;
- (void)lostModeBiometricAuthenticationViewControllerDidSucceedAuthentication:(id)authentication;
- (void)lostModeBiometricAuthenticationViewControllerDidTapEmergencyButton:(id)button;
- (void)migrateNotificationsToHistory;
- (void)motionDetectionWakeController:(id)controller motionDetectStateChanged:(BOOL)changed;
- (void)noteContinuityDisplayWindowSceneConnectionDidChange;
- (void)passcodeEntryTransientOverlayViewControllerDidDisappear:(id)disappear;
- (void)passcodeEntryTransientOverlayViewControllerRequestsDismissal:(id)dismissal;
- (void)passcodeEntryTransientOverlayViewControllerRequestsEmergencyCall:(id)call;
- (void)reevaluateSystemApertureLockElementSuppressionWithReason:(id)reason;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteLock:(BOOL)lock;
- (void)removeLockStateObserver:(id)observer;
- (void)requestUserAttentionScreenWakeFromSource:(int)source reason:(id)reason;
- (void)setBiometricAutoUnlockingDisabled:(BOOL)disabled forReason:(id)reason;
- (void)setIndicatorHost:(id)host;
- (void)tapToWakeControllerDidRecognizePencilWakeGesture:(id)gesture;
- (void)updateSpringBoardStatusBarForLockScreenTeardown;
- (void)wallpaperDidChangeForVariant:(int64_t)variant;
- (void)wallpaperDidUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle:(BOOL)rectangle;
- (void)wallpaperDidUpdatePreferredSalientContentRectangle:(CGRect)rectangle;
- (void)wallpaperLegibilityEnvironmentDidChange:(id)change;
@end

@implementation SBLockScreenManager

- (BOOL)isLockScreenActive
{
  rootViewController = [(SBLockScreenManager *)&self->super.isa rootViewController];
  v3 = [rootViewController _appearState] == 2 || objc_msgSend(rootViewController, "_appearState") == 1;

  return v3;
}

- (BOOL)wouldAttemptToHandleATransitionRequest
{
  isUILocked = [(SBLockScreenManager *)self isUILocked];
  LOBYTE(v4) = 0;
  if ([(SBLockScreenManager *)self isLockScreenActive]&& !isUILocked)
  {
    v5 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
    v4 = [v5 isAnyGestureActivelyRecognized] ^ 1;
  }

  if (isUILocked)
  {
    isAnyGestureActivelyRecognized = 0;
  }

  else
  {
    v7 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
    isAnyGestureActivelyRecognized = [v7 isAnyGestureActivelyRecognized];
  }

  v8 = self->_handlingUnlockRequest && [(SBLockScreenManager *)self isUIUnlocking];
  if ((isUILocked | v4))
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 | isAnyGestureActivelyRecognized;
  }

  return v9 & 1;
}

- (id)rootViewController
{
  if (self)
  {
    self = [self[4] rootViewController];
    v1 = vars8;
  }

  return self;
}

- (BOOL)_isUnlockDisabled
{
  if (([(SBFLockOutStatusProvider *)self->_lockOutController isBlocked]& 1) != 0)
  {
    return 1;
  }

  lockController = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
  isUnlockDisabled = [lockController isUnlockDisabled];

  return isUnlockDisabled;
}

- (CSCoverSheetViewController)coverSheetViewController
{
  rootViewController = [(SBLockScreenManager *)&self->super.isa rootViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = rootViewController;
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
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  if (([coverSheetViewController isInlinePasscodeLockVisible] & 1) != 0 || (-[BSCompoundAssertion isActive](self->_lockElementBloomAssertions, "isActive") & 1) != 0 || -[SBLockScreenManager _isPasscodeVisible](self, "_isPasscodeVisible"))
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
  updateIrisWallpaperForStaticMode = [v3 updateIrisWallpaperForStaticMode];

  if ((updateIrisWallpaperForStaticMode & 1) == 0)
  {
    self->_shouldTransitionIrisWallpaperToStillWhenPlaybackFinishes = 1;
  }
}

- (void)_dismissLockScreenForAuthenticationIfNecessary
{
  [(SBLockScreenManager *)self exitLostModeIfNecessaryFromRemoteRequest:0];
  rootSettings = [MEMORY[0x277D02C20] rootSettings];
  autoDismissUnlockedLockScreen = [rootSettings autoDismissUnlockedLockScreen];

  if (autoDismissUnlockedLockScreen)
  {

    [(SBLockScreenManager *)self unlockUIFromSource:11 withOptions:0];
  }
}

- (BOOL)_isPasscodeVisible
{
  rootViewController = [(SBLockScreenManager *)&self->super.isa rootViewController];
  _sbWindowScene = [rootViewController _sbWindowScene];
  ambientPresentationController = [_sbWindowScene ambientPresentationController];

  passcodeViewPresenter = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment passcodeViewPresenter];
  if (([passcodeViewPresenter isPasscodeLockVisible] & 1) != 0 || -[SBLockScreenManager isPasscodeEntryTransientOverlayVisible](self, "isPasscodeEntryTransientOverlayVisible"))
  {
    ambientTransientOverlayIsShowingPasscode = 1;
  }

  else
  {
    ambientTransientOverlayIsShowingPasscode = [ambientPresentationController ambientTransientOverlayIsShowingPasscode];
  }

  return ambientTransientOverlayIsShowingPasscode;
}

- (void)_evaluatePreArmDisabledAssertions
{
  v3 = +[SBSetupManager sharedInstance];
  isInSetupMode = [v3 isInSetupMode];

  [(SBLockScreenManager *)self _setWalletPreArmDisabled:isInSetupMode forReason:@"Setup"];
  [(SBLockScreenManager *)self _setWalletPreArmDisabled:[(SBFLockOutStatusProvider *)self->_lockOutController isBlocked] forReason:@"Device blocked"];
  v5 = +[SBTelephonyManager sharedTelephonyManager];
  incomingCallExists = [v5 incomingCallExists];

  [(SBLockScreenManager *)self _setWalletPreArmDisabled:incomingCallExists forReason:@"Phone call"];
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
  rootViewController = [(SBLockScreenManager *)&self->super.isa rootViewController];
  _sbWindowScene = [rootViewController _sbWindowScene];
  statusBarManager = [_sbWindowScene statusBarManager];
  layoutManager = [statusBarManager layoutManager];

  return layoutManager;
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
    backlightController = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment backlightController];
    shouldDisableALS = [backlightController shouldDisableALS];

    if (shouldDisableALS)
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

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D67A48] object:0 userInfo:v8];
}

uint64_t __58__SBLockScreenManager__sendUILockStateChangedNotification__block_invoke(uint64_t a1)
{
  notify_set_state(_sendUILockStateChangedNotification_token, *(a1 + 32));
  v1 = *MEMORY[0x277D67770];

  return notify_post(v1);
}

- (id)_hostingWindowScene
{
  rootViewController = [(SBLockScreenManager *)&self->super.isa rootViewController];
  _sbWindowScene = [rootViewController _sbWindowScene];

  return _sbWindowScene;
}

- (BOOL)_shouldHideLockForElementSuppressionAssertion
{
  rootViewController = [(SBLockScreenManager *)&self->super.isa rootViewController];
  _sbWindowScene = [rootViewController _sbWindowScene];
  ambientPresentationController = [_sbWindowScene ambientPresentationController];
  ambientTransientOverlayIsShowingPasscode = [ambientPresentationController ambientTransientOverlayIsShowingPasscode];

  LOBYTE(rootViewController) = ambientTransientOverlayIsShowingPasscode | [(SBLockScreenManager *)self isPasscodeEntryTransientOverlayVisible];
  return [(SBLockScreenManager *)self _hasValidLockElementSuppressionAssertion]& (rootViewController ^ 1);
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

  _statusBarLayoutManager = [(SBLockScreenManager *)self _statusBarLayoutManager];
  [_statusBarLayoutManager setDefaultWindowLevel:*MEMORY[0x277D772B8] + -1.0];

  [(SBLockScreenManager *)self setUIUnlocking:0];
  self->_handlingUnlockRequest = 0;
  [(SBLockScreenManager *)self _evaluateWallpaperMode];
  [(SBLockScreenManager *)self _setHomeButtonSuppressAfterUnlockRecognizer:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SBLockScreenManagerUnlockAnimationDidFinish" object:self];

  v6 = +[SBAlertItemsController sharedInstance];
  [v6 convertLockedAlertsToUnlockedAlerts];

  v7 = +[SBWorkspace mainWorkspace];
  v8 = [v7 createRequestWithOptions:0];

  [v8 finalize];
  applicationContext = [v8 applicationContext];
  applicationSceneEntities = [applicationContext applicationSceneEntities];

  v11 = [applicationSceneEntities count];
  v12 = objc_opt_class();
  applicationContext2 = [v8 applicationContext];
  layoutState = [applicationContext2 layoutState];
  v15 = SBSafeCast(v12, layoutState);

  unlockedEnvironmentMode = [v15 unlockedEnvironmentMode];
  if (!v11 && unlockedEnvironmentMode != 2)
  {
    v17 = +[SBWorkspace mainWorkspace];
    transientOverlayPresentationManager = [v17 transientOverlayPresentationManager];
    hasActivePresentation = [transientOverlayPresentationManager hasActivePresentation];

    if ((hasActivePresentation & 1) == 0)
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
      rootSettings = [MEMORY[0x277D02C20] rootSettings];
      pearlSettings = [rootSettings pearlSettings];
      [pearlSettings systemApertureDismissDelayDismissal];
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

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  _hostingWindowScene = [(SBLockScreenManager *)self _hostingWindowScene];
  [defaultCenter2 postNotificationName:@"SBLockScreenUIDidDismissNotification" object:_hostingWindowScene];

  [(SBLockScreenDeviceMotionEffectController *)self->_deviceMotionEffectController setWallpaperVisible:0];
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  LODWORD(_hostingWindowScene) = [coverSheetViewController isUserPresenceDetectionAllowed];

  if (_hostingWindowScene)
  {
    coverSheetViewController2 = [(SBLockScreenManager *)self coverSheetViewController];
    [coverSheetViewController2 disableRecentUserPresenceDetectionForReason:@"SBLockScreenDeviceMotionEffectUserPresenceMonitoring"];
  }
}

- (void)_prepareWallpaperForInteractiveMode
{
  v6 = +[SBWallpaperController sharedInstance];
  self->_shouldTransitionIrisWallpaperToStillWhenPlaybackFinishes = 0;
  [v6 updateIrisWallpaperForInteractiveMode];
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  irisWallpaperPlayer = [v6 irisWallpaperPlayer];
  [coverSheetViewController setIrisWallpaperPlayer:irisWallpaperPlayer];

  wallpaperGestureRecognizer = [v6 wallpaperGestureRecognizer];
  [coverSheetViewController setWallpaperGestureRecognizer:wallpaperGestureRecognizer];

  [coverSheetViewController setWallpaperColorProvider:self];
}

+ (id)_sharedInstanceCreateIfNeeded:(BOOL)needed
{
  if (needed)
  {
    var30[0] = MEMORY[0x277D85DD0];
    var30[1] = 3221225472;
    var30[2] = __53__SBLockScreenManager__sharedInstanceCreateIfNeeded___block_invoke;
    var30[3] = &__block_descriptor_48_e5_v8__0l;
    var30[4] = a2;
    var30[5] = self;
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
    mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
    v66 = +[SBWalletPreArmController sharedInstance];
    v6 = [[SBLockScreenBiometricAuthenticationCoordinator alloc] initWithBiometricResource:mEMORY[0x277D67C98] walletPreArmController:v66];
    biometricAuthenticationCoordinator = v3->_biometricAuthenticationCoordinator;
    v3->_biometricAuthenticationCoordinator = v6;

    [(SBLockScreenBiometricAuthenticationCoordinator *)v3->_biometricAuthenticationCoordinator setDelegate:v3];
    v65 = [objc_alloc(MEMORY[0x277D67D10]) initWithBiometricResource:mEMORY[0x277D67C98] overrideMatchingAssertionFactory:v3->_biometricAuthenticationCoordinator];
    [MEMORY[0x277D67D18] setPasscodeBiometricResource:?];
    v8 = [[SBCoverSheetBiometricResourceObserver alloc] initWithBiometricResource:mEMORY[0x277D67C98]];
    biometricResourceObserver = v3->_biometricResourceObserver;
    v3->_biometricResourceObserver = v8;

    v10 = [[SBPearlInterlockObserver alloc] initWithBiometricResource:mEMORY[0x277D67C98]];
    pearlInterlockObserver = v3->_pearlInterlockObserver;
    v3->_pearlInterlockObserver = v10;

    [(SBPearlInterlockObserver *)v3->_pearlInterlockObserver activate];
    mEMORY[0x277D08F78] = [MEMORY[0x277D08F78] sharedInstance];
    v3->_isInLostMode = [mEMORY[0x277D08F78] lostModeIsActive];

    _newLockScreenEnvironment = [(SBLockScreenManager *)v3 _newLockScreenEnvironment];
    lockScreenEnvironment = v3->_lockScreenEnvironment;
    v3->_lockScreenEnvironment = _newLockScreenEnvironment;

    rootViewController = [(SBLockScreenManager *)&v3->super.isa rootViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [rootViewController setDelegate:v3];
      [rootViewController addCoverSheetObserver:v3];
    }

    v64 = rootViewController;
    screenWakeAnimationTarget = [(SBLockScreenEnvironment *)v3->_lockScreenEnvironment screenWakeAnimationTarget];
    [screenWakeAnimationTarget updateWakeEffectsForWake:0];

    if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") & 1) == 0)
    {
      v17 = objc_alloc_init(SBLockScreenOrientationManager);
      lockScreenOrientationManager = v3->_lockScreenOrientationManager;
      v3->_lockScreenOrientationManager = v17;
    }

    v19 = v3->_biometricAuthenticationCoordinator;
    biometricUnlockBehavior = [(SBLockScreenEnvironment *)v3->_lockScreenEnvironment biometricUnlockBehavior];
    [(SBLockScreenBiometricAuthenticationCoordinator *)v19 _setAutoUnlockBehavior:biometricUnlockBehavior];

    [(SBLockScreenManager *)v3 _reallySetUILocked:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_activationChanged_ name:@"SBLockdownDeviceActivatedChangedNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__authenticationStateChanged_ name:*MEMORY[0x277D66078] object:0];
    [defaultCenter addObserver:v3 selector:sel__lockUI name:@"SBLockScreenExternalPartyWantsUILockNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__deviceBlockedChanged_ name:*MEMORY[0x277D66030] object:0];
    [defaultCenter addObserver:v3 selector:sel__resetOrRestoreStateChanged_ name:@"SBResetOrRestoreStateDidChangeNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__lockScreenDimmed_ name:@"SBLockScreenDimmedNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__handleBacklightLevelWillChange_ name:*MEMORY[0x277D67A20] object:0];
    [defaultCenter addObserver:v3 selector:sel__handleBacklightDidTurnOff_ name:*MEMORY[0x277D67A18] object:0];
    [defaultCenter addObserver:v3 selector:sel__setupModeChanged name:@"SBInBuddyModeDidChangeNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__activeCallStateChanged name:*MEMORY[0x277D679E0] object:0];
    [defaultCenter addObserver:v3 selector:sel__noteBootCompleted name:@"SBBootCompleteNotification" object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, LostModeStateChanged, *MEMORY[0x277D08FB8], 0, CFNotificationSuspensionBehaviorCoalesce);
    lockOutController = [SBApp lockOutController];
    lockOutController = v3->_lockOutController;
    v3->_lockOutController = lockOutController;

    authenticationController = [SBApp authenticationController];
    [(SBLockScreenManager *)v3 _setUserAuthController:authenticationController];

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
    autoUnlockRule = [(SBLockScreenEnvironment *)v3->_lockScreenEnvironment autoUnlockRule];
    [(SBAutoUnlockComposableRule *)v39 addAutoUnlockRule:autoUnlockRule];

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
      isTapToWakeEnabled = [v54 isTapToWakeEnabled];
      [(SBTapToWakeController *)v42->_tapToWakeController setDigitizerInTapToWakeMode:isTapToWakeEnabled];
      v56 = v42->_tapToWakeController;
      if (isTapToWakeEnabled)
      {
        tapToWakeRequiresHitTestSuppression = [v54 tapToWakeRequiresHitTestSuppression];
      }

      else
      {
        tapToWakeRequiresHitTestSuppression = 0;
      }
    }

    else
    {
      [(SBTapToWakeController *)v42->_tapToWakeController setDigitizerInTapToWakeMode:0];
      tapToWakeRequiresHitTestSuppression = 0;
      v56 = v42->_tapToWakeController;
    }

    [(SBTapToWakeController *)v56 setDigitizerModeRequiresHitTestSuppression:tapToWakeRequiresHitTestSuppression];
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

    screenIsOn = [v54 screenIsOn];
    v42->_isScreenOn = screenIsOn;
    if (screenIsOn)
    {
      [mEMORY[0x277D67C98] noteScreenWillTurnOn];
    }

    else
    {
      [mEMORY[0x277D67C98] noteScreenDidTurnOff];
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
  userSessionController = [SBApp userSessionController];
  if ([userSessionController isLoginSession])
  {
  }

  else
  {
    v4 = +[SBDefaults localDefaults];
    multiUserDefaults = [v4 multiUserDefaults];
    forceLoginWindow = [multiUserDefaults forceLoginWindow];

    if (!forceLoginWindow)
    {
      v8 = objc_alloc_init(SBDashBoardLockScreenEnvironment);
      coverSheetViewController = [(SBDashBoardLockScreenEnvironment *)v8 coverSheetViewController];
      [coverSheetViewController setDelegate:self];

      coverSheetViewController2 = [(SBDashBoardLockScreenEnvironment *)v8 coverSheetViewController];
      [(SBLoginAppContainerViewController *)coverSheetViewController2 addCoverSheetObserver:self];
      goto LABEL_6;
    }
  }

  coverSheetViewController2 = objc_alloc_init(SBLoginAppContainerViewController);
  v8 = [[SBLegacyLockScreenEnvironment alloc] initWithLockScreenViewController:coverSheetViewController2];
LABEL_6:

  idleTimerController = [(SBDashBoardLockScreenEnvironment *)v8 idleTimerController];
  [idleTimerController setIdleTimerCoordinator:self];

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

  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  anyCallIsEndpointOnCurrentDevice = [mEMORY[0x277D6EDF8] anyCallIsEndpointOnCurrentDevice];

  if (anyCallIsEndpointOnCurrentDevice && ![(SBLockScreenManager *)self isUILocked])
  {
    if (SBWorkspaceSpringBoardIsActive())
    {
      LOBYTE(v3) = 1;
      return v3;
    }

    v4 = +[SBWorkspace mainWorkspace];
    transientOverlayPresentationManager = [v4 transientOverlayPresentationManager];
    v3 = [transientOverlayPresentationManager hasActivePresentation] ^ 1;

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
    inFaceTime = [v3 inFaceTime];

    v5 = +[SBConferenceManager sharedInstance];
    inFaceTimeVideo = [v5 inFaceTimeVideo];

    v7 = +[SBWorkspace mainWorkspace];
    LOBYTE(v2) = 0;
    if (!inFaceTime || (inFaceTimeVideo & 1) != 0)
    {
      goto LABEL_13;
    }

    IsActive = SBWorkspaceSpringBoardIsActive();
    if ((IsActive & 1) != 0 || ([v7 transientOverlayPresentationManager], inFaceTimeVideo = objc_claimAutoreleasedReturnValue(), (objc_msgSend(inFaceTimeVideo, "hasActivePresentation") & 1) == 0))
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
  _tapToWakeController = [(SBLockScreenManager *)self _tapToWakeController];
  shouldTapToWake = [_tapToWakeController shouldTapToWake];

  return shouldTapToWake;
}

- (BOOL)playLockSoundIfPermitted
{
  _shouldPlayLockSound = [(SBLockScreenManager *)self _shouldPlayLockSound];
  if (_shouldPlayLockSound)
  {
    self->_hasPlayedSoundForLock = 1;
    v4 = +[SBSoundController sharedInstance];
    v5 = [MEMORY[0x277D679C8] soundWithFeedbackEventType:1002];
    [v4 playSoundWithDefaultEnvironment:v5];
  }

  return _shouldPlayLockSound;
}

- (BOOL)_shouldPlayLockSound
{
  v3 = +[SBLockScreenManager sharedInstance];
  isUILocked = [v3 isUILocked];

  if (!isUILocked || (v5 = [(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet]) != 0 && (v5 = [(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated]) != 0)
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
  isLockScreenActive = [(SBLockScreenManager *)self isLockScreenActive];
  if (isLockScreenActive)
  {
    LOBYTE(isLockScreenActive) = !+[SBAssistantController isVisible];
  }

  return isLockScreenActive;
}

- (BOOL)isSupressingLockButton
{
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  isAccessoryAnimationPresenting = [coverSheetViewController isAccessoryAnimationPresenting];

  return isAccessoryAnimationPresenting;
}

- (void)lockUIFromSource:(int)source withOptions:(id)options completion:(id)completion
{
  v6 = *&source;
  v71 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromLockSource();
    v12 = [MEMORY[0x277CF0C08] descriptionForRootObject:optionsCopy];
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
  v13 = completionCopy;
  v67 = v13;
  v14 = MEMORY[0x223D6F7F0](v66);
  if (self->_allowUILockUnlock)
  {
    v15 = [optionsCopy objectForKey:@"SBUILockOptionsAnimateLockScreenActivationKey"];
    bOOLValue = [v15 BOOLValue];

    v16 = [optionsCopy objectForKey:@"SBUILockOptionsLockAutomaticallyKey"];
    bOOLValue2 = [v16 BOOLValue];

    v17 = [optionsCopy objectForKey:@"SBUILockOptionsForceLockKey"];
    bOOLValue3 = [v17 BOOLValue];

    v58 = [optionsCopy objectForKey:@"SBUILockOptionsAnimationTransactionProviderKey"];
    v18 = [optionsCopy objectForKey:@"SBUILockOptionsForceBioLockoutKey"];
    bOOLValue4 = [v18 BOOLValue];

    v20 = [optionsCopy objectForKey:@"SBUILockOptionsUseScreenOffModeKey"];
    v21 = v20;
    if (v20)
    {
      bOOLValue5 = [v20 BOOLValue];
    }

    else
    {
      bOOLValue5 = 1;
    }

    v57 = [optionsCopy bs_BOOLForKey:@"SBUILockOptionsPreserveTransientOverlaysKey"];
    v23 = [optionsCopy objectForKey:@"SBUILockOptionsIgnoreCallKey"];
    bOOLValue6 = [v23 BOOLValue];

    v53 = !+[SBInCallPresentationManager isSpecializedAPISupported]&& [(SBLockScreenManager *)self shouldLockUIAfterEndingCall];
    v25 = +[SBBacklightController sharedInstance];
    backlightState = [v25 backlightState];

    if (bOOLValue4)
    {
      mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
      [mEMORY[0x277D67C98] _forceBioLockout];

      notify_post("com.apple.springboard.lock-with-force-biolockout");
    }

    mEMORY[0x277D0AB20] = [MEMORY[0x277D0AB20] sharedInstance];
    [mEMORY[0x277D0AB20] cancelEventsWithName:@"AttemptLock"];

    rootViewController = [(SBLockScreenManager *)&self->super.isa rootViewController];
    _sbWindowScene = [rootViewController _sbWindowScene];

    homeScreenController = [_sbWindowScene homeScreenController];
    switcherController = [_sbWindowScene switcherController];
    remoteTransientOverlaySessionManager = [SBApp remoteTransientOverlaySessionManager];
    v31 = [remoteTransientOverlaySessionManager hasSessionWithPendingButtonEvents:1 options:0];

    if (v31)
    {
      v14[2](v14, 0);
LABEL_56:
      if ((v57 & 1) == 0)
      {
        rootViewController2 = [(SBLockScreenManager *)&self->super.isa rootViewController];
        _sbWindowScene2 = [rootViewController2 _sbWindowScene];

        v47 = +[SBWorkspace mainWorkspace];
        if (backlightState == 3)
        {
          [v47 dismissTransientOverlayPresentationsAnimated:0 windowScene:_sbWindowScene2 filter:&__block_literal_global_450];
        }

        else
        {
          [v47 dismissTransientOverlayPresentationsAnimated:0 windowScene:_sbWindowScene2 filter:&__block_literal_global_248_0];
        }
      }

      if ((v6 - 1) <= 1)
      {
        [MEMORY[0x277D71F50] _stopAllAlerts];
      }

      mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
      [mEMORY[0x277D6F470] setValue:MEMORY[0x277CBEC28] forPreferenceKey:*MEMORY[0x277D6F650]];

      (v14)[2](v14, [(SBLockScreenManager *)self isUILocked]);
      goto LABEL_69;
    }

    mEMORY[0x277D66010] = [MEMORY[0x277D66010] sharedInstanceIfExists];
    [mEMORY[0x277D66010] lockDidBegin];

    v33 = +[SBWorkspace mainWorkspace];
    inCallPresentationManager = [v33 inCallPresentationManager];

    v34 = bOOLValue6 | bOOLValue3;
    if ((bOOLValue6 | bOOLValue3))
    {
      supportsHandlingDeviceLock = 0;
    }

    else
    {
      supportsHandlingDeviceLock = [inCallPresentationManager supportsHandlingDeviceLock];
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
          if (!(supportsHandlingDeviceLock & 1 | ![(SBLockScreenManager *)self isUILocked]))
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
        if ([switcherController unlockedEnvironmentMode] != 3)
        {
          [homeScreenController popToCurrentRootIconListWhenPossible];
        }

        [(SBLockScreenManager *)self _relockUIForButtonlikeSource:v6];
LABEL_55:

        goto LABEL_56;
      }

      if (v6 == 24)
      {
        if (![(SBLockScreenManager *)self isUILocked])
        {
          supportsHandlingDeviceLock = 0;
          goto LABEL_37;
        }

        goto LABEL_40;
      }
    }

    if (!v6 && (bOOLValue3 & 1) == 0)
    {
      v36 = SBLogCommon();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [SBLockScreenManager lockUIFromSource:v36 withOptions:? completion:?];
      }

      isUILocked = [(SBLockScreenManager *)self isUILocked];
      goto LABEL_68;
    }

LABEL_37:
    if (((+[SBInCallPresentationManager isSpecializedAPISupported]| v34) & 1) == 0)
    {
      if (v6 == 1 && v53)
      {
        v38 = +[SBWorkspace mainWorkspace];
        inCallTransientOverlayManager = [v38 inCallTransientOverlayManager];
        [inCallTransientOverlayManager presentTransientOverlayForUILock];

LABEL_67:
        isUILocked = 0;
LABEL_68:
        v14[2](v14, isUILocked);

LABEL_69:
        goto LABEL_70;
      }

      [(SBLockScreenManager *)self _disconnectActiveCallIfNeededFromSource:v6];
    }

    if (v34 & 1 | ((supportsHandlingDeviceLock & 1) == 0))
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
        v41 = bOOLValue2;
      }

      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __63__SBLockScreenManager_lockUIFromSource_withOptions_completion___block_invoke_245;
      v61[3] = &unk_2783AE5A0;
      v62 = switcherController;
      v63 = homeScreenController;
      v64 = v14;
      [(SBLockScreenManager *)self _activateLockScreenAnimated:bOOLValue animationProvider:v58 automatically:v41 inScreenOffMode:bOOLValue5 dismissNotificationCenter:v6 != 4 completion:v61];
      [(SBLockScreenManager *)self _clearAuthenticationLockAssertion];
      if (bOOLValue3)
      {
        authenticationController = [SBApp authenticationController];
        v43 = NSStringFromLockSource();
        [authenticationController revokeAuthenticationImmediatelyForPublicReason:v43];
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

    [inCallPresentationManager handleDeviceLockFromSource:v6];
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
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  notificationDestination = [coverSheetViewController notificationDestination];

  return notificationDestination;
}

- (BOOL)handleTransitionRequest:(id)request
{
  requestCopy = request;
  if (![(SBLockScreenManager *)self willAttemptToHandleTransitionRequest:requestCopy])
  {
    goto LABEL_13;
  }

  isAuthenticated = [(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated];
  applicationContext = [requestCopy applicationContext];
  applicationSceneEntities = [applicationContext applicationSceneEntities];
  v8 = [applicationSceneEntities bs_containsObjectPassingTest:&__block_literal_global_253_1];

  if (!isAuthenticated || (v8 & 1) == 0)
  {
    applicationLauncher = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment applicationLauncher];
    v10 = [applicationLauncher handleTransitionRequest:requestCopy];

    if (v10)
    {
      v11 = +[SBWorkspace mainWorkspace];
      v12 = 1;
      [v11 dismissAllTransientOverlayPresentationsAnimated:1];

      goto LABEL_14;
    }
  }

  if (![(SBLockScreenManager *)self _canHandleTransitionRequest:requestCopy])
  {
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  externalLockProvidersRequireUnlock = [coverSheetViewController externalLockProvidersRequireUnlock];

  if (!externalLockProvidersRequireUnlock)
  {
    displayIdentity = [requestCopy displayIdentity];
    isMainDisplay = [displayIdentity isMainDisplay];

    if (isMainDisplay)
    {
      [requestCopy setTransactionProvider:&__block_literal_global_257];
      [requestCopy modifyApplicationContext:&__block_literal_global_261];
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

- (BOOL)_canHandleTransitionRequest:(id)request
{
  requestCopy = request;
  applicationContext = [requestCopy applicationContext];
  resolvedActivatingWorkspaceEntity = [applicationContext resolvedActivatingWorkspaceEntity];
  source = [requestCopy source];

  if ((source <= 0x3D && ((1 << source) & 0x2000C801004C2134) != 0 || source == 70 || source == 67) && ([applicationContext isBackground] & 1) == 0)
  {
    entities = [applicationContext entities];
    v10 = [entities count];

    isAppClipPlaceholderEntity = 0;
    if (v10 <= 1 && resolvedActivatingWorkspaceEntity)
    {
      if ([resolvedActivatingWorkspaceEntity isApplicationSceneEntity])
      {
        isAppClipPlaceholderEntity = 1;
      }

      else
      {
        isAppClipPlaceholderEntity = [resolvedActivatingWorkspaceEntity isAppClipPlaceholderEntity];
      }
    }
  }

  else
  {
    isAppClipPlaceholderEntity = 0;
  }

  return isAppClipPlaceholderEntity;
}

- (void)setBiometricAutoUnlockingDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  v12 = reasonCopy;
  if (!reasonCopy)
  {
    [SBLockScreenManager setBiometricAutoUnlockingDisabled:forReason:];
    reasonCopy = 0;
  }

  v7 = [(NSMutableDictionary *)self->_mesaAutoUnlockingDisabledAssertions objectForKeyedSubscript:reasonCopy];
  v8 = v7;
  if (disabledCopy)
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

- (id)acquireSystemApertureLockElementSuppressionAssertionWithReason:(id)reason
{
  v17 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (reasonCopy)
  {
    if (!self->_lockElementSuppressionAssertions)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      lockElementSuppressionAssertions = self->_lockElementSuppressionAssertions;
      self->_lockElementSuppressionAssertions = weakObjectsHashTable;
    }

    v7 = SBLogSystemApertureLockElement();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Acquiring system aperture lock element suppression assertion for reason: %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v8 = objc_alloc(MEMORY[0x277CF0CE8]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __86__SBLockScreenManager_acquireSystemApertureLockElementSuppressionAssertionWithReason___block_invoke;
    v13[3] = &unk_2783A9070;
    objc_copyWeak(&v14, buf);
    v11 = [v8 initWithIdentifier:uUIDString forReason:reasonCopy invalidationBlock:v13];

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

- (id)acquireSystemApertureLockElementBloomSuppressionAssertionWithReason:(id)reason
{
  reasonCopy = reason;
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

  v11 = [(BSCompoundAssertion *)lockElementBloomSuppressionAssertions acquireForReason:reasonCopy];

  return v11;
}

void __91__SBLockScreenManager_acquireSystemApertureLockElementBloomSuppressionAssertionWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBloomIfNeeded];
}

- (id)acquireSystemApertureLockElementBloomAssertionWithReason:(id)reason
{
  reasonCopy = reason;
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

  v11 = [(BSCompoundAssertion *)lockElementBloomAssertions acquireForReason:reasonCopy];

  return v11;
}

void __80__SBLockScreenManager_acquireSystemApertureLockElementBloomAssertionWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBloomIfNeeded];
}

- (id)acquireSystemApertureLockElementVisibleAssertionWithReason:(id)reason
{
  reasonCopy = reason;
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

  v11 = [(BSCompoundAssertion *)lockElementVisibleAssertions acquireForReason:reasonCopy];

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

- (void)reevaluateSystemApertureLockElementSuppressionWithReason:(id)reason
{
  [(SBLockScreenManager *)self _reevaluateSystemApertureLockElementSuppressionWithReason:reason];

  [(SBLockScreenManager *)self _updateBloomIfNeeded];
}

- (void)_reevaluateSystemApertureLockElementSuppressionWithReason:(id)reason
{
  reasonCopy = reason;
  if ([(SBLockScreenManager *)self _shouldHideLockForElementSuppressionAssertion])
  {
    [(SBLockScreenManager *)self _setSystemApertureProudLockElementVisible:0 withReason:reasonCopy];
  }

  else
  {
    [(SBLockScreenManager *)self _showSystemApertureProudLockElementIfSupportedWithReason:reasonCopy];
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
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  [coverSheetViewController _migrateNotificationsToHistory];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  _hostingWindowScene = [(SBLockScreenManager *)self _hostingWindowScene];
  [defaultCenter postNotificationName:@"SBLockScreenUIWillPresentNotification" object:_hostingWindowScene];
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

- (void)lockScreenViewControllerWillDismissWithVelocity:(double)velocity
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[SBLockScreenManager lockScreenViewControllerWillDismissWithVelocity:]", buf, 2u);
  }

  source = [(SBLockScreenUnlockRequest *)self->_unlockRequest source];
  [(SBLockScreenManager *)self setUIUnlocking:1];
  lockController = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
  [lockController prepareForUIUnlock];

  if (source != 23)
  {
    homeHardwareButton = [SBApp homeHardwareButton];
    [homeHardwareButton cancelLongPress];
  }

  buttonObserver = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment buttonObserver];
  v10 = [buttonObserver createHomeButtonSuppressAfterUnlockRecognizerForUnlockSource:source];

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
  lockController2 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
  [lockController2 finishUIUnlockFromSource:source];

  v14 = +[SBLockStateAggregator sharedInstance];
  LOBYTE(lockController2) = [v14 hasAnyLockState];

  if ((lockController2 & 1) == 0)
  {
    v15 = +[SBWorkspace mainWorkspace];
    pipCoordinator = [v15 pipCoordinator];

    [pipCoordinator setPictureInPictureWindowsHidden:0 withReason:@"SBLockScreenPictureInPictureHiddenReason"];
  }

  [(SBLockScreenManager *)self _unlockStateObservers];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v17 = +[SBApplicationController sharedInstance];
  allApplications = [v17 allApplications];

  v19 = [allApplications countByEnumeratingWithState:&v52 objects:v58 count:16];
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
          objc_enumerationMutation(allApplications);
        }

        v23 = *(*(&v52 + 1) + 8 * i);
        [v23 setHasDisplayedLaunchAlert:0 forType:3];
        [v23 setHasShownDataPlanAlertSinceLock:0];
      }

      v20 = [allApplications countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v20);
  }

  v24 = +[SBKeyboardSuppressionManager sharedInstance];
  [v24 stopSuppressingKeyboardWithReason:@"SBSuppressKeyboardForUILock"];

  v25 = +[SBWorkspace mainWorkspace];
  v26 = [v25 createRequestWithOptions:0];

  [v26 finalize];
  applicationContext = [v26 applicationContext];
  applicationSceneEntities = [applicationContext applicationSceneEntities];

  if ([applicationSceneEntities count])
  {
    v46 = v26;
    v29 = v10;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v30 = applicationSceneEntities;
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

          sceneHandle = [*(*(&v48 + 1) + 8 * j) sceneHandle];
          sceneIfExists = [sceneHandle sceneIfExists];
          [sceneIfExists updateSettingsWithBlock:&__block_literal_global_305];
        }

        v32 = [v30 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v32);
    }

    _sbWindowScene = +[SBWorkspace mainWorkspace];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __71__SBLockScreenManager_lockScreenViewControllerWillDismissWithVelocity___block_invoke_2;
    v47[3] = &__block_descriptor_40_e42_v16__0__SBMainWorkspaceTransitionRequest_8l;
    *&v47[4] = velocity;
    [_sbWindowScene requestTransitionWithBuilder:v47];
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

    rootViewController = [(SBLockScreenManager *)&self->super.isa rootViewController];
    _sbWindowScene = [rootViewController _sbWindowScene];

    homeScreenController = [_sbWindowScene homeScreenController];
    [homeScreenController beginRequiringContentForReason:@"SBUIHomeScreenActiveContentRequirementReason"];
    if (+[SBFloatingDockController isFloatingDockSupported])
    {
      homeScreenViewController = [homeScreenController homeScreenViewController];
      [homeScreenViewController nudgeIconInterfaceOrientation:objc_msgSend(SBApp duration:{"interfaceOrientationForCurrentDeviceOrientation:", 0), 0.0}];
    }
  }

  v38 = +[SBAlertItemsController sharedInstance];
  [v38 activatePendedAlertsIfNecessary];

  if (![applicationSceneEntities count] || (-[SBLockScreenManager lockScreenViewControllerWillDismissWithVelocity:].cold.2(&self->super.isa) & 1) != 0)
  {
    _statusBarLayoutManager = [(SBLockScreenManager *)self _statusBarLayoutManager];
    [_statusBarLayoutManager setDefaultWindowLevel:*MEMORY[0x277D772B8] + -1.0];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  _hostingWindowScene = [(SBLockScreenManager *)self _hostingWindowScene];
  [defaultCenter postNotificationName:@"SBLockScreenUIWillDismissNotification" object:_hostingWindowScene];
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

- (void)lockScreenViewControllerWillPerformTransitionToFinalValue:(double)value forUserGesture:(BOOL)gesture withVelocity:(double)velocity animated:(BOOL)animated
{
  animatedCopy = animated;
  gestureCopy = gesture;
  v20[5] = *MEMORY[0x277D85DE8];
  v19[0] = @"SBLockScreenUIWillPerformTransitionFinalValueKey";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  v20[0] = v10;
  v19[1] = @"SBLockScreenUIWillPerformTransitionForUserGestureKey";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:gestureCopy];
  v20[1] = v11;
  v19[2] = @"SBLockScreenUIWillPerformTransitionVelocityKey";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:velocity];
  v20[2] = v12;
  v19[3] = @"SBLockScreenUIWillPerformTransitionAnimatedKey";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:animatedCopy];
  v20[3] = v13;
  v19[4] = @"SBLockScreenUIWillPerformTransitionLowLuminanceKey";
  v14 = MEMORY[0x277CCABB0];
  v15 = +[SBBacklightController sharedInstance];
  v16 = [v14 numberWithInt:{!SBBacklightStateIsActive(objc_msgSend(v15, "backlightState"))}];
  v20[4] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SBLockScreenUIWillPerformTransitionNotification" object:self userInfo:v17];
}

- (void)coverSheetViewControllerIrisPlayingDidFinish:(id)finish
{
  if (self->_shouldTransitionIrisWallpaperToStillWhenPlaybackFinishes)
  {
    [(SBLockScreenManager *)self _evaluateWallpaperMode];
  }
}

- (void)coverSheetWindowedAccessoryViewControllerDidDismiss:(id)dismiss
{
  v3 = +[SBUIController sharedInstance];
  [v3 windowedAccessoryDismissed];
}

- (void)coverSheetWindowedAccessoryViewControllerDidPresent:(id)present
{
  v3 = +[SBUIController sharedInstance];
  [v3 windowedAccessoryPresented];
}

- (void)coverSheetViewControllerWillPresentInlinePasscode:(id)passcode
{
  [(SBLockScreenManager *)self _updateBloomIfNeeded];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SBLockScreenPasscodeUIVisibilityUpdatedNotification" object:self];
}

- (void)coverSheetViewControllerDidDismissInlinePasscode:(id)passcode
{
  passcodeCopy = passcode;
  [(SBLockScreenManager *)self _updateBloomIfNeeded];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SBLockScreenPasscodeUIVisibilityUpdatedNotification" object:self];

  if (CSFeatureEnabled())
  {
    isAuthenticated = [(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated];
    externalLockProvidersRequireUnlock = [passcodeCopy externalLockProvidersRequireUnlock];
    v7 = +[SBCoverSheetPresentationManager sharedInstance];
    isInSecureApp = [v7 isInSecureApp];

    lockController = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
    isProcessingUnlockAttempt = [lockController isProcessingUnlockAttempt];

    if ((isAuthenticated & (externalLockProvidersRequireUnlock ^ 1) & 1) == 0 && (isInSecureApp & 1) == 0 && (isProcessingUnlockAttempt & 1) == 0)
    {
      v11 = +[SBCoverSheetPresentationManager sharedInstance];
      [v11 setCoverSheetTranslationToPresented:1 forcingTransition:0 ignoringPreflightRequirements:0 animated:1];
    }
  }
}

- (void)coverSheetViewControllerDidCancelInlinePasscode:(id)passcode
{
  passcodeCopy = passcode;
  if (CSFeatureEnabled())
  {
    [(SBLockScreenManager *)self coverSheetViewControllerDidDismissInlinePasscode:passcodeCopy];
    v4 = +[SBCoverSheetPresentationManager sharedInstance];
    [v4 reenableCoverSheetScalingForPositioning];
  }
}

- (void)coverSheetViewController:(id)controller requestsTransientOverlaysDismissedAnimated:(BOOL)animated
{
  v4 = [SBMainWorkspace sharedInstance:controller];
  transientOverlayPresentationManager = [v4 transientOverlayPresentationManager];

  if ([transientOverlayPresentationManager hasActivePresentation])
  {
    v5 = +[SBTransientOverlayDismissalRequest dismissalRequestForAllViewControllers];
    [transientOverlayPresentationManager performDismissalRequest:v5];
  }
}

- (void)coverSheetViewControllerRequestsTranslationToPresentedForExternalLockProvider:(BOOL)provider animated:(BOOL)animated
{
  animatedCopy = animated;
  providerCopy = provider;
  if (CSFeatureEnabled())
  {
    v6 = +[SBCoverSheetPresentationManager sharedInstance];
    [v6 setCoverSheetTranslationToPresented:providerCopy forcingTransition:0 ignoringPreflightRequirements:1 animated:animatedCopy];
  }
}

- (void)coverSheetViewController:(id)controller startSpotlightInteractiveGestureTransactionForGesture:(id)gesture
{
  controllerCopy = controller;
  gestureCopy = gesture;
  spotlightInteractiveGestureTransaction = [controllerCopy spotlightInteractiveGestureTransaction];

  if (!spotlightInteractiveGestureTransaction)
  {
    v8 = SBApp;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __102__SBLockScreenManager_coverSheetViewController_startSpotlightInteractiveGestureTransactionForGesture___block_invoke;
    v12[3] = &unk_2783ACE58;
    v13 = gestureCopy;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __102__SBLockScreenManager_coverSheetViewController_startSpotlightInteractiveGestureTransactionForGesture___block_invoke_2;
    v9[3] = &unk_2783C2600;
    v10 = v13;
    v11 = controllerCopy;
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

- (BOOL)coverSheetViewControllerHasSecureApp:(id)app
{
  v3 = +[SBSecureAppManager sharedInstance];
  hasSecureApp = [v3 hasSecureApp];

  return hasSecureApp;
}

- (BOOL)coverSheetViewControllerIsShowingSecureApp:(id)app
{
  v3 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
  isInSecureApp = [v3 isInSecureApp];

  return isInSecureApp;
}

- (BOOL)coverSheetViewControllerHasBeenDismissedSinceKeybagLock:(id)lock
{
  v3 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
  hasBeenDismissedSinceKeybagLock = [v3 hasBeenDismissedSinceKeybagLock];

  return hasBeenDismissedSinceKeybagLock;
}

- (id)averageColorForCurrentWallpaperInScreenRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior
{
  idleTimerProvider = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment idleTimerProvider];
  v5 = idleTimerProvider;
  if (idleTimerProvider)
  {
    [idleTimerProvider coordinatorRequestedIdleTimerBehavior:self];
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

- (void)motionDetectionWakeController:(id)controller motionDetectStateChanged:(BOOL)changed
{
  changedCopy = changed;
  v16[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (changedCopy)
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

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (self->_mouseButtonDownGesture != recognizer)
  {
    return 1;
  }

  v5 = +[SBBacklightController sharedInstance];
  screenIsOn = [v5 screenIsOn];
  if (screenIsOn)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "_mouseButtonDownGesture: not receiving touch because screen is already on", v9, 2u);
    }
  }

  v4 = screenIsOn ^ 1;

  return v4;
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  v5 = activateCopy;
  if (self->_alertLaunchFinish && self->_wakeToRemoteAlertHandle == activateCopy)
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

- (void)tapToWakeControllerDidRecognizePencilWakeGesture:(id)gesture
{
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  applicationLauncher = [coverSheetViewController applicationLauncher];
  [applicationLauncher launchQuickNote];

  [(SBLockScreenManager *)self _wakeScreenForTapToWake];
}

- (BOOL)biometricAuthenticationCoordinator:(id)coordinator requestsUnlockWithIntent:(int)intent
{
  coordinatorCopy = coordinator;
  if (self->_isUILocked)
  {
    if (intent == 3)
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

- (BOOL)biometricAuthenticationCoordinator:(id)coordinator requestsAuthenticationFeedback:(id)feedback
{
  feedbackCopy = feedback;
  if ([(SBLockScreenManager *)self isLockScreenVisible])
  {
    v6 = ![(SBLockScreenManager *)self _isPasscodeVisible];
  }

  else
  {
    v6 = 0;
  }

  mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
  biometricLockoutState = [mEMORY[0x277D67C98] biometricLockoutState];

  if (v6)
  {
    coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
    if (![coverSheetViewController phoneUnlockEnabledAndRequirementsMet] || biometricLockoutState)
    {
      [(SBLockScreenManager *)self _handleAuthenticationFeedback:feedbackCopy];
    }
  }

  return v6;
}

- (void)biometricAuthenticationCoordinator:(id)coordinator handleIdentityMatchSuccess:(BOOL)success
{
  successCopy = success;
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  [coverSheetViewController completePhoneAutoUnlockWithNotification:!successCopy];
}

- (BOOL)biometricAuthenticationCoordinatorShouldWaitToInvalidateMatchingAssertion:(id)assertion
{
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  shouldCompletePhoneAutoUnlockWithNotification = [coverSheetViewController shouldCompletePhoneAutoUnlockWithNotification];

  return shouldCompletePhoneAutoUnlockWithNotification;
}

- (void)lostModeBiometricAuthenticationViewControllerDidSucceedAuthentication:(id)authentication
{
  [(SBLockScreenManager *)self _dismissLostModeBiometricAuthenticationTransientOverlay];

  [(SBLockScreenManager *)self _dismissLockScreenForAuthenticationIfNecessary];
}

- (void)lostModeBiometricAuthenticationViewControllerDidTapEmergencyButton:(id)button
{
  [(SBLockScreenManager *)self _relockUIForLostMode];
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  v4 = [MEMORY[0x277D02B80] actionWithType:2];
  [coverSheetViewController handleAction:v4 fromSender:0];
}

- (void)_setSystemApertureProudLockElementVisible:(BOOL)visible withReason:(id)reason afterDelay:(double)delay
{
  reasonCopy = reason;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__SBLockScreenManager__setSystemApertureProudLockElementVisible_withReason_afterDelay___block_invoke;
  v14[3] = &unk_2783A97D8;
  v15 = reasonCopy;
  selfCopy = self;
  visibleCopy = visible;
  v9 = reasonCopy;
  v10 = MEMORY[0x223D6F7F0](v14);
  v11 = [v9 copy];
  delayedLockReason = self->_delayedLockReason;
  self->_delayedLockReason = v11;

  v13 = dispatch_time(0, (delay * 1000000000.0));
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

- (void)_setSystemApertureProudLockElementVisible:(BOOL)visible withReason:(id)reason
{
  visibleCopy = visible;
  reasonCopy = reason;
  v7 = +[SBBacklightController sharedInstance];
  -[SBLockScreenManager _setSystemApertureProudLockElementVisible:backlightState:withReason:](self, "_setSystemApertureProudLockElementVisible:backlightState:withReason:", visibleCopy, [v7 backlightState], reasonCopy);
}

- (void)_setSystemApertureProudLockElementVisible:(BOOL)visible backlightState:(int64_t)state withReason:(id)reason
{
  visibleCopy = visible;
  reasonCopy = reason;
  v9 = +[SBLockElementViewProvider deviceSupportsElement];
  v10 = [(SBLockScreenManager *)self _requiresEmptyLockElementForBacklightState:state];
  _shouldHideLockForElementSuppressionAssertion = [(SBLockScreenManager *)self _shouldHideLockForElementSuppressionAssertion];
  hasPasscodeSet = [(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet];
  if (visibleCopy)
  {
    if (!_shouldHideLockForElementSuppressionAssertion && v9 && hasPasscodeSet | v10)
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
        systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
        v21 = [systemApertureControllerForMainDisplay registerElement:self->_lockElement];
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
      [(SAInvalidatable *)self->_proudLockAssertion invalidateWithReason:reasonCopy];
      v25 = self->_proudLockAssertion;
      self->_proudLockAssertion = 0;
    }
  }
}

- (void)_cleanupSystemApertureLockElementIgnoringDelays:(BOOL)delays reason:(id)reason
{
  delaysCopy = delays;
  v11 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (self->_proudLockAssertion && ![(SBLockScreenManager *)self _shouldBeShowingLockElement])
  {
    if (delaysCopy)
    {
      v7 = SBLogSystemApertureLockElement();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        v10 = reasonCopy;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "SBLockScreenManager dismissed lock element without delay with reason:%{public}@", &v9, 0xCu);
      }

      goto LABEL_11;
    }

    if (!self->_delayedLockReason)
    {
LABEL_11:
      self->_ignoringDelayDismissalPending = 0;
      [(SBLockScreenManager *)self _setSystemApertureProudLockElementVisible:0 withReason:reasonCopy];
      goto LABEL_12;
    }

    v8 = SBLogSystemApertureLockElement();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBLockScreenManager tried to dismiss aperture forReason:%{public}@ but in delay", &v9, 0xCu);
    }
  }

LABEL_12:
}

- (void)_showSystemApertureProudLockElementIfSupportedWithReason:(id)reason
{
  reasonCopy = reason;
  if ([(SBLockScreenManager *)self _shouldBeShowingLockElement])
  {
    [(SBLockScreenManager *)self _setSystemApertureProudLockElementVisible:1 withReason:reasonCopy];
  }
}

- (void)_showSystemApertureProudLockElementForBacklightState:(int64_t)state WithReason:(id)reason
{
  reasonCopy = reason;
  if ([(SBLockScreenManager *)self _shouldBeShowingLockElementForBacklightState:state])
  {
    [(SBLockScreenManager *)self _setSystemApertureProudLockElementVisible:1 backlightState:state withReason:reasonCopy];
  }
}

- (BOOL)_shouldBeShowingLockElement
{
  v3 = +[SBBacklightController sharedInstance];
  LOBYTE(self) = -[SBLockScreenManager _shouldBeShowingLockElementForBacklightState:](self, "_shouldBeShowingLockElementForBacklightState:", [v3 backlightState]);

  return self;
}

- (BOOL)_shouldBeShowingLockElementForBacklightState:(int64_t)state
{
  v18 = *MEMORY[0x277D85DE8];
  isLockScreenActive = [(SBLockScreenManager *)self isLockScreenActive];
  v6 = self->_isUILocked || isLockScreenActive;
  isAuthenticated = [(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated];
  v8 = [(SBLockScreenManager *)self _requiresEmptyLockElementForBacklightState:state];
  v9 = v6 & (isAuthenticated ^ 1 | v8);
  if (v9)
  {
    v10 = v8;
    v11 = SBLogSystemApertureLockElement();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109632;
      v13[1] = isLockScreenActive;
      v14 = 1024;
      v15 = isAuthenticated & 1;
      v16 = 1024;
      v17 = v10;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[SBLockScreenManager][Lock Element] should show lock element. lockScreenActive: %{BOOL}u, authed: %{BOOL}u, empty: %{BOOL}u", v13, 0x14u);
    }
  }

  return v9 & 1;
}

- (BOOL)_requiresEmptyLockElementForBacklightState:(int64_t)state
{
  v4 = [(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet]^ 1;
  if (state == 3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (void)homeButtonShowPasscodeRecognizerRequestsPasscodeUIToBeShown:(id)shown
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

- (void)_handleAuthenticationFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__SBLockScreenManager__handleAuthenticationFeedback___block_invoke;
  v17[3] = &unk_2783A92D8;
  v5 = feedbackCopy;
  v18 = v5;
  selfCopy = self;
  v6 = MEMORY[0x223D6F7F0](v17);
  if ([v5 vibrate])
  {
    result = [v5 result];
    mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
    hasPearlSupport = [mEMORY[0x277D67C98] hasPearlSupport];
    v10 = hasPearlSupport;
    if (result)
    {

      v11 = 1001;
      if (v10)
      {
        v11 = 1015;
      }

      goto LABEL_12;
    }

    if (hasPearlSupport)
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

- (void)_setWalletPreArmDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  *&v23[5] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  BSDispatchQueueAssertMain();
  if (!reasonCopy)
  {
    [SBLockScreenManager _setWalletPreArmDisabled:forReason:];
  }

  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109378;
    v23[0] = disabledCopy;
    LOWORD(v23[1]) = 2114;
    *(&v23[1] + 2) = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[SBLockScreenManager _setWalletPreArmDisabled:%{BOOL}u forReason:%{public}@]", &v22, 0x12u);
  }

  mesaWalletPreArmDisabledReasons = self->_mesaWalletPreArmDisabledReasons;
  if (disabledCopy)
  {
    if (!mesaWalletPreArmDisabledReasons)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v10 = self->_mesaWalletPreArmDisabledReasons;
      self->_mesaWalletPreArmDisabledReasons = v9;

      mesaWalletPreArmDisabledReasons = self->_mesaWalletPreArmDisabledReasons;
    }

    if ([(NSMutableSet *)mesaWalletPreArmDisabledReasons containsObject:reasonCopy])
    {
      p_super = SBLogCommon();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543362;
        *v23 = reasonCopy;
        _os_log_impl(&dword_21ED4E000, p_super, OS_LOG_TYPE_DEFAULT, "SBLockScreenManager - Bailing early as we already acquired a wallet pre-arm disabled assertion for reason: %{public}@", &v22, 0xCu);
      }
    }

    else
    {
      [(NSMutableSet *)self->_mesaWalletPreArmDisabledReasons addObject:reasonCopy];
      v15 = [(NSMutableDictionary *)self->_mesaWalletPreArmDisabledAssertions objectForKeyedSubscript:reasonCopy];

      if (v15)
      {
        goto LABEL_20;
      }

      v16 = SBLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543362;
        *v23 = reasonCopy;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "SBLockScreenManager - Acquiring a wallet pre-arm disable assertion for reason: %{public}@", &v22, 0xCu);
      }

      p_super = [(SBLockScreenBiometricAuthenticationCoordinator *)self->_biometricAuthenticationCoordinator acquireDisableWalletPreArmAssertionForReason:reasonCopy];
      if (p_super)
      {
        if ([(NSMutableSet *)self->_mesaWalletPreArmDisabledReasons containsObject:reasonCopy])
        {
          mesaWalletPreArmDisabledAssertions = self->_mesaWalletPreArmDisabledAssertions;
          if (!mesaWalletPreArmDisabledAssertions)
          {
            v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v19 = self->_mesaWalletPreArmDisabledAssertions;
            self->_mesaWalletPreArmDisabledAssertions = v18;

            mesaWalletPreArmDisabledAssertions = self->_mesaWalletPreArmDisabledAssertions;
          }

          [(NSMutableDictionary *)mesaWalletPreArmDisabledAssertions setObject:p_super forKeyedSubscript:reasonCopy];
          v20 = SBLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 138543362;
            *v23 = reasonCopy;
            _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "SBLockScreenManager - Added the wallet pre-arm disable assertion for reason: %{public}@", &v22, 0xCu);
          }
        }

        else
        {
          v21 = SBLogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 138543362;
            *v23 = reasonCopy;
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
    [(NSMutableSet *)mesaWalletPreArmDisabledReasons removeObject:reasonCopy];
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
    *v23 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "SBLockScreenManager - Removing a wallet pre-arm disable assertion for reason: %{public}@", &v22, 0xCu);
  }

  v14 = [(NSMutableDictionary *)self->_mesaWalletPreArmDisabledAssertions objectForKeyedSubscript:reasonCopy];
  [v14 invalidate];

  [(NSMutableDictionary *)self->_mesaWalletPreArmDisabledAssertions removeObjectForKey:reasonCopy];
  if (![(NSMutableDictionary *)self->_mesaWalletPreArmDisabledAssertions count])
  {
    p_super = &self->_mesaWalletPreArmDisabledAssertions->super.super;
    self->_mesaWalletPreArmDisabledAssertions = 0;
LABEL_18:
  }

LABEL_20:
}

- (void)_setMesaCoordinatorDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  v12 = reasonCopy;
  if (!reasonCopy)
  {
    [SBLockScreenManager _setMesaCoordinatorDisabled:forReason:];
    reasonCopy = 0;
  }

  v7 = [(NSMutableDictionary *)self->_mesaCoordinatorDisabledAssertions objectForKeyedSubscript:reasonCopy];
  v8 = v7;
  if (disabledCopy)
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

- (void)_setMesaAutoUnlockingDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
  hasPearlSupport = [mEMORY[0x277D67C98] hasPearlSupport];

  if ((hasPearlSupport & 1) == 0)
  {
    [(SBLockScreenManager *)self setBiometricAutoUnlockingDisabled:disabledCopy forReason:reasonCopy];
  }
}

- (void)_activateLockScreenAnimated:(BOOL)animated animationProvider:(id)provider automatically:(BOOL)automatically inScreenOffMode:(BOOL)mode dismissNotificationCenter:(BOOL)center completion:(id)completion
{
  modeCopy = mode;
  automaticallyCopy = automatically;
  animatedCopy = animated;
  v35[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v34 = @"Animated";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:animatedCopy];
  v35[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  [defaultCenter postNotificationName:@"SBLockScreenUIWillLockNotification" object:self userInfo:v15];

  v16 = [SBTelephonyManager sharedTelephonyManagerCreatingIfNecessary:0];
  v17 = v16;
  if (v16)
  {
    incomingCallExists = [v16 incomingCallExists];
    v19 = SBLogCommon();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (!incomingCallExists || automaticallyCopy)
    {
      if (v20)
      {
        *buf = 67109632;
        incomingCallExists2 = [v17 incomingCallExists];
        v30 = 1024;
        v31 = automaticallyCopy;
        v32 = 1024;
        v33 = animatedCopy;
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_INFO, "[[SBTelephonyManager sharedTelephonyManager] incomingCallExists] %d autoLock %d animate %d", buf, 0x14u);
      }

      if (!modeCopy)
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
      if (!modeCopy)
      {
LABEL_18:
        coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
        [coverSheetViewController activateMainPageWithCompletion:0];

        v24 = +[SBCoverSheetPresentationManager sharedInstance];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __136__SBLockScreenManager__activateLockScreenAnimated_animationProvider_automatically_inScreenOffMode_dismissNotificationCenter_completion___block_invoke;
        v25[3] = &unk_2783B1770;
        v25[4] = self;
        v27 = animatedCopy;
        v26 = completionCopy;
        [v24 setCoverSheetPresented:1 animated:animatedCopy withCompletion:v25];

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

    if (!modeCopy)
    {
      goto LABEL_18;
    }
  }

  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") & 1) == 0)
  {
    [(SBLockScreenOrientationManager *)self->_lockScreenOrientationManager updateInterfaceOrientationWithRequestedOrientation:0 animated:0];
  }

  backlightController = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment backlightController];
  [backlightController setInScreenOffMode:1];

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
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
  activeAudioRoute = [v3 activeAudioRoute];

  if (activeAudioRoute)
  {
    v2 = [activeAudioRoute isEqual:@"Receiver"];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

- (void)_disconnectActiveCallIfNeededFromSource:(int)source
{
  v5 = +[SBInCallPresentationManager isSpecializedAPISupported];
  if (source == 3 && !v5)
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

- (void)_relockUIForButtonlikeSource:(int)source
{
  v3 = *&source;
  if ([(SBLockScreenManager *)self isPasscodeEntryTransientOverlayVisible])
  {

    [(SBLockScreenManager *)self setPasscodeVisible:0 animated:1];
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBLockScreenUIRelockedNotification" object:self userInfo:0];

    if (!+[SBInCallPresentationManager isSpecializedAPISupported])
    {
      [(SBLockScreenManager *)self _disconnectActiveCallIfNeededFromSource:v3];
    }

    backlightController = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment backlightController];
    [backlightController setInScreenOffMode:1];

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

- (void)_setUILocked:(BOOL)locked
{
  lockedCopy = locked;
  if (!self->_allowUILockUnlock)
  {
    [SBLockScreenManager _setUILocked:];
  }

  [(SBLockScreenManager *)self _reallySetUILocked:lockedCopy];
}

- (void)_reallySetUILocked:(BOOL)locked
{
  v12 = *MEMORY[0x277D85DE8];
  userAuthController = self->_userAuthController;
  if (userAuthController && !locked && ([(SBFUserAuthenticationController *)userAuthController isAuthenticated]& 1) == 0)
  {
    [SBLockScreenManager _reallySetUILocked:];
  }

  self->_isUILocked = locked;
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    isUILocked = self->_isUILocked;
    v11[0] = 67109120;
    v11[1] = isUILocked;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "UILocked: %d", v11, 8u);
  }

  hIDUISensorController = [SBApp HIDUISensorController];
  [hIDUISensorController setPocketTouchesExpected:self->_isUILocked];

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

- (BOOL)_canAttemptRealUIUnlockIgnoringBacklightNonsenseWithReason:(id *)reason
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
  *reason = v5;
  return result;
}

- (void)requestUserAttentionScreenWakeFromSource:(int)source reason:(id)reason
{
  v4 = *&source;
  v27[1] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = NSStringFromUnlockSource();
  if (![SBApp caseIsEnabledAndLatched])
  {
    v8 = +[SBBacklightController sharedInstance];
    backlightState = [v8 backlightState];
    if (backlightState >= 3)
    {
      if (backlightState - 3 >= 2)
      {
        goto LABEL_17;
      }

      isLockScreenActive = [(SBLockScreenManager *)self isLockScreenActive];
      v12 = SBLogCommon();
      v15 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (isLockScreenActive)
      {
        if (v15)
        {
          v16 = SBBacklightStateDescription(backlightState);
          *buf = 138543874;
          v19 = v7;
          v20 = 2114;
          v21 = reasonCopy;
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

      reasonCopy = SBBacklightStateDescription(backlightState);
      v17 = SBSBacklightChangeSourceDescription([v8 lastBacklightChangeSource]);
      *buf = 138544130;
      v19 = v7;
      v20 = 2114;
      v21 = reasonCopy;
      v22 = 2114;
      v23 = reasonCopy;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "requestUserAttentionScreenWakeFromSource:%{public}@ (%{public}@) state:%{public}@ -- ignoring because screen is off, but UILocked is zero. Last known backlight change source:%{public}@.", buf, 0x2Au);
    }

    else
    {
      v10 = SBLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = SBBacklightStateDescription(backlightState);
        *buf = 138543874;
        v19 = v7;
        v20 = 2114;
        v21 = reasonCopy;
        v22 = 2114;
        v23 = v11;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "requestUserAttentionScreenWakeFromSource:%{public}@ (%{public}@) state:%{public}@ resetIdleTimer", buf, 0x20u);
      }

      v12 = +[SBIdleTimerGlobalCoordinator sharedInstance];
      reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"UserAttentionScreenWake|%@|", v7, reasonCopy];
      [v12 resetIdleTimerForReason:reasonCopy];
    }

    goto LABEL_16;
  }

  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = v7;
    v20 = 2114;
    v21 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "requestUserAttentionScreenWakeFromSource:%{public}@ (%{public}@) -- ignoring because smart cover is closed", buf, 0x16u);
  }

LABEL_17:
}

- (BOOL)_shouldReactivateInCallWakingTheDisplay:(BOOL)display
{
  displayCopy = display;
  v4 = +[SBTelephonyManager sharedTelephonyManager];
  isEndpointOnCurrentDevice = 0;
  if (!+[SBInCallPresentationManager isSpecializedAPISupported]&& displayCopy)
  {
    if ([v4 inCall])
    {
      isEndpointOnCurrentDevice = [v4 isEndpointOnCurrentDevice];
    }

    else
    {
      isEndpointOnCurrentDevice = 0;
    }
  }

  return isEndpointOnCurrentDevice;
}

- (BOOL)_shouldWakeToInCallForUnlockSource:(int)source wakingTheDisplay:(BOOL)display
{
  displayCopy = display;
  v5 = *&source;
  v6 = +[SBInCallPresentationManager isSpecializedAPISupported];
  if (v6)
  {
    v7 = +[SBWorkspace mainWorkspace];
    inCallPresentationManager = [v7 inCallPresentationManager];

    v9 = [inCallPresentationManager supportsBecomingVisibleWhenUnlockingFromSource:v5 wakingDisplay:displayCopy];
    LOBYTE(v6) = v9;
  }

  return v6;
}

- (BOOL)_shouldWakeToOtherContentForUnlockSource:(int)source wakingTheDisplay:(BOOL)display stopAfterWakeTo:(BOOL)to
{
  toCopy = to;
  displayCopy = display;
  v8 = +[SBTelephonyManager sharedTelephonyManager];
  v9 = [(SBLockScreenManager *)self _shouldReactivateInCallWakingTheDisplay:displayCopy];
  if ([v8 incomingCallExists])
  {
    hasWakeDestination = 0;
  }

  else
  {
    outgoingCallExists = [v8 outgoingCallExists];
    hasWakeDestination = 0;
    if (!v9 && (displayCopy || toCopy) && (outgoingCallExists & 1) == 0)
    {
      v12 = +[SBSecureAppManager sharedInstance];
      hasWakeDestination = [v12 hasWakeDestination];
    }
  }

  return hasWakeDestination;
}

- (BOOL)unlockUIFromSource:(int)source withOptions:(id)options
{
  v4 = *&source;
  v137 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (self->_allowUILockUnlock)
  {
    oslog = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment screenWakeAnimationTarget];
    v104 = +[SBBacklightController sharedInstance];
    v102 = +[SBScreenWakeAnimationController sharedInstance];
    v99 = +[SBSecureAppManager sharedInstance];
    screenIsOn = [v104 screenIsOn];
    if (+[SBBacklightPlatformProvider deviceSupportsAlwaysOn])
    {
      v98 = [(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet]^ 1;
    }

    else
    {
      v98 = 0;
    }

    v8 = [optionsCopy objectForKey:@"SBUIUnlockOptionsSuppressingWakeToKey"];
    bOOLValue = [v8 BOOLValue];

    v10 = [optionsCopy objectForKey:@"SBUIUnlockOptionsOnlyWakeToActionsKey"];
    bOOLValue2 = [v10 BOOLValue];

    v11 = [optionsCopy objectForKey:@"SBUIUnlockOptionsNoBacklightChangesKey"];
    bOOLValue3 = [v11 BOOLValue];

    v13 = [optionsCopy objectForKey:@"SBUIUnlockOptionsTurnOnScreenFirstKey"];
    bOOLValue4 = [v13 BOOLValue];

    v14 = [optionsCopy objectForKey:@"SBUIUnlockOptionsStartFadeInAnimation"];
    LODWORD(v92) = [v14 BOOLValue];

    v95 = [v104 shouldTurnOnScreenForBacklightSource:SBUIConvertUnlockSourceToBacklightChangeSource()] & (bOOLValue3 ^ 1);
    v15 = (screenIsOn ^ 1) & bOOLValue4 & v95;
    v16 = [(SBLockScreenManager *)self _shouldReactivateInCallWakingTheDisplay:v15];
    v96 = [(SBLockScreenManager *)self _shouldWakeToOtherContentForUnlockSource:v4 wakingTheDisplay:v15 stopAfterWakeTo:bOOLValue2];
    if ([v102 isSleepAnimationInProgress])
    {
      HIDWORD(v92) = 1;
    }

    else
    {
      HIDWORD(v92) = [v102 isWakeAnimationInProgress];
    }

    v17 = [optionsCopy objectForKey:{@"SBUIUnlockOptionsRequestedOrientationKey", v92}];
    unsignedIntegerValue = [v17 unsignedIntegerValue];

    if ((screenIsOn & 1) == 0 && [(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet])
    {
      [(SBLockScreenManager *)self _setSystemApertureProudLockElementVisible:1 withReason:@"Screen On"];
    }

    coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
    [coverSheetViewController respondToUIUnlockFromSource:v4];

    v19 = SBLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = NSStringFromUnlockSource();
      v21 = [MEMORY[0x277CF0C08] descriptionForRootObject:optionsCopy];
      v22 = BSDeviceOrientationDescription();
      *buf = 138544130;
      *&buf[4] = v20;
      *&buf[12] = 2114;
      *&buf[14] = v21;
      *&buf[22] = 1024;
      v134 = screenIsOn ^ 1;
      v135 = 2114;
      v136 = v22;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "unlockUIFromSource:%{public}@ options:(%{public}@) screenWasOff:%{BOOL}u requestedOrientation:%{public}@", buf, 0x26u);
    }

    if (v16)
    {
      v23 = +[SBWorkspace mainWorkspace];
      inCallPresentationManager = [v23 inCallPresentationManager];
      [inCallPresentationManager reactivateInCallForReason:2];
    }

    v129[0] = MEMORY[0x277D85DD0];
    v129[1] = 3221225472;
    v129[2] = __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke;
    v129[3] = &unk_2783C49F8;
    v25 = (bOOLValue | v98) & 1;
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
      v124 = optionsCopy;
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
      if (bOOLValue2)
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

      isLockedOut = [(SBFLockOutStatusProvider *)self->_lockOutController isLockedOut];
      v54 = [(SBLockScreenAutoUnlockAggregateRule *)self->_autoUnlockRuleAggregator shouldAutoUnlockForSource:v4];
      autoDismissUnlockedLockScreen = (isLockedOut ^ 1) & v54;
      if ((bOOLValue4 & v95) != 1)
      {
LABEL_53:
        if (((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") | bOOLValue4 ^ 1 | screenIsOn | v94) & 1) == 0)
        {
          [(SBLockScreenOrientationManager *)self->_lockScreenOrientationManager updateInterfaceOrientationWithRequestedOrientation:unsignedIntegerValue animated:0];
        }

        if (autoDismissUnlockedLockScreen)
        {
          v57 = 1;
        }

        else
        {
          v58 = [optionsCopy objectForKey:@"SBUIUnlockOptionsNoPasscodeAnimationKey"];
          bOOLValue5 = [v58 BOOLValue];

          v57 = bOOLValue5 ^ 1u;
        }

        if (v4 == 15)
        {
          buttonObserver = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment buttonObserver];
          [buttonObserver noteMenuButtonDown];

          homeHardwareButton = [SBApp homeHardwareButton];
          v107[0] = MEMORY[0x277D85DD0];
          v107[1] = 3221225472;
          v107[2] = __54__SBLockScreenManager_unlockUIFromSource_withOptions___block_invoke_395;
          v107[3] = &unk_2783A8C18;
          v107[4] = self;
          [homeHardwareButton performAfterMenuButtonUpIsHandledUsingBlock:v107];
        }

        if ((bOOLValue4 & v95) != 0)
        {
          if ([(SBLockScreenManager *)self isUILocked]& (!v54 | isLockedOut))
          {
            backlightController = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment backlightController];
            isInScreenOffMode = [backlightController isInScreenOffMode];

            if (isInScreenOffMode)
            {
              statusBarStateAggregator = [SBApp statusBarStateAggregator];
              [statusBarStateAggregator sendStatusBarActions:9];
              v65 = +[SBVideoOutController sharedInstance];
              [v65 updateScreenSharingBackgroundActivityAssertion];
            }
          }

          backlightController2 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment backlightController];
          [backlightController2 setInScreenOffMode:0 forAutoUnlock:v54 fromUnlockSource:v4];
        }

        if (!(bOOLValue4 ^ 1 | v54 & v95))
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
          lockController = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
          v72 = [lockController willUIUnlockFromSource:v4 isLockScreenDisabledForAssertion:{-[SBLockScreenDisabledAssertionManager isLockScreenDisabledForAssertion](self->_lockScreenDisabledAssertionManager, "isLockScreenDisabledForAssertion")}];

          if ((v72 & 1) == 0)
          {
            v77 = SBLogCommon();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              lockController2 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
              v79 = objc_opt_class();
              v80 = NSStringFromClass(v79);
              *buf = 138543618;
              *&buf[4] = v80;
              *&buf[12] = 1024;
              *&buf[14] = v4;
              _os_log_impl(&dword_21ED4E000, v77, OS_LOG_TYPE_DEFAULT, "%{public}@ said it can't UI-unlock for source %d", buf, 0x12u);
            }

            coverSheetViewController2 = [(SBLockScreenManager *)self coverSheetViewController];
            externalLockProvidersShowPasscode = [coverSheetViewController2 externalLockProvidersShowPasscode];

            if (externalLockProvidersShowPasscode)
            {
              LOBYTE(externalLockProvidersShowPasscode) = 0;
              self->_saveUnlockRequest = 1;
            }

            goto LABEL_74;
          }
        }

        if (screenIsOn)
        {
          p_userAuthController = &self->_userAuthController;
          isAuthenticated = [(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated];
          if (isAuthenticated & 1 | !v54)
          {
            isAuthenticated2 = [(SBFUserAuthenticationController *)*p_userAuthController isAuthenticated];
            v76 = 0;
            if (isAuthenticated)
            {
              autoDismissUnlockedLockScreen = 1;
LABEL_96:
              if (autoDismissUnlockedLockScreen && isAuthenticated2)
              {
                v85 = [(SBLockScreenManager *)self _finishUIUnlockFromSource:v4 withOptions:optionsCopy];
              }

              else
              {
                if (!v76)
                {
                  goto LABEL_73;
                }

                if ([(SBLockScreenManager *)self _isPasscodeVisible])
                {
                  LOBYTE(externalLockProvidersShowPasscode) = 1;
                  goto LABEL_74;
                }

                if ([(SBLockScreenManager *)self _isPasscodeVisible])
                {
                  goto LABEL_73;
                }

                if (v4 == 15)
                {
                  buttonObserver2 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment buttonObserver];
                  createHomeButtonShowPasscodeRecognizerForHomeButtonPress = [buttonObserver2 createHomeButtonShowPasscodeRecognizerForHomeButtonPress];

                  if (createHomeButtonShowPasscodeRecognizerForHomeButtonPress)
                  {
                    [(SBLockScreenManager *)self _setHomeButtonShowPasscodeRecognizer:createHomeButtonShowPasscodeRecognizerForHomeButtonPress];

LABEL_73:
                    LOBYTE(externalLockProvidersShowPasscode) = 0;
LABEL_74:

                    goto LABEL_75;
                  }
                }

                v88 = [optionsCopy objectForKey:@"SBUIUnlockOptionsSimulateSwipeToUnlock"];
                bOOLValue6 = [v88 BOOLValue];

                if (bOOLValue6 && [(SBLockScreenManager *)self _shouldEmulateInterstitialPresentationForAccessibility:0])
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

              LOBYTE(externalLockProvidersShowPasscode) = v85;
              goto LABEL_74;
            }

            autoDismissUnlockedLockScreen = 0;
          }

          else
          {
            rootSettings = [MEMORY[0x277D02C20] rootSettings];
            autoDismissUnlockedLockScreen = [rootSettings autoDismissUnlockedLockScreen];

            isAuthenticated2 = [(SBFUserAuthenticationController *)*p_userAuthController isAuthenticated];
          }
        }

        else
        {
          mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
          v83 = [mEMORY[0x277D67C98] hasBiometricAuthenticationCapabilityEnabled] && objc_msgSend(mEMORY[0x277D67C98], "biometricLockoutState") && objc_msgSend(mEMORY[0x277D67C98], "biometricLockoutState") != 1;

          p_userAuthController = &self->_userAuthController;
          isAuthenticated2 = [(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated];
          if (!v83)
          {
            v76 = 0;
            goto LABEL_96;
          }
        }

        v76 = [(SBFUserAuthenticationController *)*p_userAuthController hasPasscodeSet]& (isAuthenticated2 ^ 1);
        goto LABEL_96;
      }

      if (!(autoDismissUnlockedLockScreen & 1 | ((v93 & 1) == 0)))
      {
        if ([(SBLockScreenManager *)self isLockScreenActive])
        {
          backlightController3 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment backlightController];
          [backlightController3 startLockScreenFadeInAnimationForSource:v4];

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

    wakeDestination = [v99 wakeDestination];
    if ([wakeDestination type] == 1)
    {
      self->_performingWakeToAppTransition = 1;
      v29 = +[SBCoverSheetPresentationManager sharedInstance];
      [v29 setCoverSheetPresented:0 animated:0 withCompletion:0];

      self->_performingWakeToAppTransition = 0;
      if (![(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated])
      {
        goto LABEL_41;
      }

      coverSheetViewController3 = [(SBLockScreenManager *)self coverSheetViewController];
      externalLockProvidersRequireUnlock = [coverSheetViewController3 externalLockProvidersRequireUnlock];

      if (externalLockProvidersRequireUnlock)
      {
        goto LABEL_41;
      }

      v32 = +[SBApplicationController sharedInstance];
      identifier = [wakeDestination identifier];
      wakeHandler = [v32 applicationWithBundleIdentifier:identifier];

      SBWorkspaceActivateApplication(wakeHandler);
    }

    else
    {
      type = [wakeDestination type];
      if (v4 != 10 && type == 2)
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
          v111 = optionsCopy;
          v113 = v4;
          v44 = [v110 copy];
          alertLaunchFinish = self->_alertLaunchFinish;
          self->_alertLaunchFinish = v44;

          v46 = MEMORY[0x277D66BF0];
          remoteAlertDefinition = [wakeDestination remoteAlertDefinition];
          v48 = [v46 newHandleWithDefinition:remoteAlertDefinition configurationContext:0];
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

      if ([wakeDestination type] != 3)
      {
        goto LABEL_41;
      }

      wakeHandler = [wakeDestination wakeHandler];
      [wakeHandler wakeToContentForWakeDestination:wakeDestination unlockSource:v4];
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

  LOBYTE(externalLockProvidersShowPasscode) = 0;
LABEL_75:

  return externalLockProvidersShowPasscode;
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

- (BOOL)_finishUIUnlockFromSource:(int)source withOptions:(id)options completion:(id)completion
{
  v6 = *&source;
  v46 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
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

    if (!completionCopy)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (([(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated]& 1) == 0)
  {
    [SBLockScreenManager _finishUIUnlockFromSource:withOptions:completion:];
  }

  lockController = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
  v14 = [lockController canBeDeactivatedForUIUnlockFromSource:v6];

  if (!v14)
  {
    v29 = SBLogScreenWake();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "Lock screen REFUSED to be deactivated! NOT unlocking.", buf, 2u);
    }

    if (!completionCopy)
    {
      goto LABEL_25;
    }

LABEL_24:
    completionCopy[2](completionCopy, 0);
LABEL_25:
    v30 = 0;
    goto LABEL_28;
  }

  destinationApplication = [(SBLockScreenUnlockRequest *)self->_unlockRequest destinationApplication];
  v16 = destinationApplication == 0;

  source = [(SBLockScreenUnlockRequest *)self->_unlockRequest source];
  v18 = 1;
  if (source != 34)
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
    destinationApplication2 = [(SBLockScreenUnlockRequest *)v22 destinationApplication];
    bundleIdentifier = [destinationApplication2 bundleIdentifier];

    v26 = [[SBCaptureApplicationLaunchRequest alloc] initWithCaptureApplicationBundleIdentifier:bundleIdentifier];
    [(SBCaptureApplicationLaunchRequest *)v26 setLaunchType:0];
    launchActions = [(SBLockScreenUnlockRequest *)v23 launchActions];
    [(SBCaptureApplicationLaunchRequest *)v26 setLaunchActions:launchActions];

    [(SBCaptureApplicationLaunchRequest *)v26 setPrewarmCamera:1];
    objc_initWeak(buf, self);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __72__SBLockScreenManager__finishUIUnlockFromSource_withOptions_completion___block_invoke;
    v37[3] = &unk_2783C4AE0;
    v28 = bundleIdentifier;
    v38 = v28;
    selfCopy = self;
    v42 = v21;
    v41[1] = v19;
    objc_copyWeak(v41, buf);
    v40 = completionCopy;
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
    v35 = completionCopy;
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

- (void)_runUnlockActionBlock:(BOOL)block
{
  blockCopy = block;
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

    v10[2](v10, blockCopy);
    v8 = v10;
  }
}

- (BOOL)_setPasscodeVisible:(BOOL)visible animated:(BOOL)animated ignoringPreflightRequirementsForPresentation:(BOOL)presentation
{
  animatedCopy = animated;
  if (!visible)
  {
    self->_presentedPasscodeWhileUILocking = 0;
    [(SBLockScreenManager *)self _setMesaAutoUnlockingDisabled:visible forReason:@"SBApplicationRequestedDeviceUnlock", presentation];
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
      [v10 dismissTransientOverlayViewController:self->_passcodeEntryTransientOverlayViewController animated:animatedCopy completion:0];

      passcodeEntryTransientOverlayViewController = self->_passcodeEntryTransientOverlayViewController;
      self->_passcodeEntryTransientOverlayViewController = 0;

      [(SBLockScreenManager *)self reevaluateSystemApertureLockElementSuppressionWithReason:@"Transient Passcode dismissed"];
    }

    passcodeViewPresenter = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment passcodeViewPresenter];
    [passcodeViewPresenter setPasscodeLockVisible:0 animated:animatedCopy completion:0];

    self->_handlingUnlockRequest = 0;
    [(SBLockScreenManager *)self _runUnlockActionBlock:0];
LABEL_9:
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBLockScreenPasscodeUIVisibilityUpdatedNotification" object:self];

    return 1;
  }

  presentationCopy = presentation;
  if (![(SBLockScreenManager *)self _isUnlockDisabled])
  {
    if (([(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet]& 1) == 0)
    {
      v8 = 1;
      [(SBLockScreenManager *)self _runUnlockActionBlock:1];
      return v8;
    }

    coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
    [coverSheetViewController attemptPhoneUnlockWithRemoteDevice];

    [(SBLockScreenManager *)self _setMesaAutoUnlockingDisabled:1 forReason:@"SBApplicationRequestedDeviceUnlock"];
    if ([(SBLockScreenManager *)self isUILocked])
    {
      v16 = +[SBWorkspace mainWorkspace];
      transientOverlayPresentationManager = [v16 transientOverlayPresentationManager];
      hasActivePresentation = [transientOverlayPresentationManager hasActivePresentation];
    }

    else
    {
      hasActivePresentation = 0;
    }

    rootViewController = [(SBLockScreenManager *)&self->super.isa rootViewController];
    _sbWindowScene = [rootViewController _sbWindowScene];

    v59 = _sbWindowScene;
    if ([(SBLockScreenManager *)self isUILocked])
    {
      assistantController = [_sbWindowScene assistantController];
      presentationContext = [assistantController presentationContext];
      hasVisionModality = [presentationContext hasVisionModality];
    }

    else
    {
      hasVisionModality = 0;
    }

    notificationDispatcher = [SBApp notificationDispatcher];
    bannerDestination = [notificationDispatcher bannerDestination];

    notificationDispatcher2 = [SBApp notificationDispatcher];
    dashBoardDestination = [notificationDispatcher2 dashBoardDestination];

    v58 = dashBoardDestination;
    if ([bannerDestination isPresentingBannerInLongLook])
    {
      isPresentingNotificationInLongLook = 1;
    }

    else
    {
      isPresentingNotificationInLongLook = [dashBoardDestination isPresentingNotificationInLongLook];
    }

    v29 = +[SBCoverSheetPresentationManager sharedInstance];
    isCoverSheetHostingAnApp = [v29 isCoverSheetHostingAnApp];

    coverSheetViewController2 = [(SBLockScreenManager *)self coverSheetViewController];
    _passcodePresentationMode = [coverSheetViewController2 _passcodePresentationMode];

    v32 = 1;
    if (((hasActivePresentation | hasVisionModality) & 1) == 0 && (isPresentingNotificationInLongLook & 1) == 0 && ![(SBLockScreenUnlockRequest *)self->_unlockRequest forceAlertAuthenticationUI]&& [(SBLockScreenUnlockRequest *)self->_unlockRequest source]!= 9 && [(SBLockScreenUnlockRequest *)self->_unlockRequest source]!= 4 && [(SBLockScreenUnlockRequest *)self->_unlockRequest source]!= 26 && !(([(SBLockScreenUnlockRequest *)self->_unlockRequest source]== 34) | isCoverSheetHostingAnApp & 1))
    {
      v32 = [(SBLockScreenManager *)self _specifiesTransientPresentationForMode:_passcodePresentationMode];
    }

    customActionStore = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment customActionStore];
    _customLockScreenActionContext = [customActionStore _customLockScreenActionContext];

    isLockScreenActive = [(SBLockScreenManager *)self isLockScreenActive];
    v36 = isLockScreenActive;
    if (v32 || !isLockScreenActive)
    {
      if (!self->_passcodeEntryTransientOverlayViewController)
      {
        v40 = [SBPasscodeEntryTransientOverlayViewController alloc];
        authenticationController = [SBApp authenticationController];
        v42 = [(SBPasscodeEntryTransientOverlayViewController *)v40 initWithAuthenticationController:authenticationController];
        v43 = self->_passcodeEntryTransientOverlayViewController;
        self->_passcodeEntryTransientOverlayViewController = v42;

        [(SBPasscodeEntryTransientOverlayViewController *)self->_passcodeEntryTransientOverlayViewController setDelegate:self];
        -[SBPasscodeEntryTransientOverlayViewController setUseBiometricPresentation:](self->_passcodeEntryTransientOverlayViewController, "setUseBiometricPresentation:", [_customLockScreenActionContext wantsBiometricPresentation]);
        v44 = self->_passcodeEntryTransientOverlayViewController;
        unlockDestination = [_customLockScreenActionContext unlockDestination];
        [(SBPasscodeEntryTransientOverlayViewController *)v44 setUnlockDestination:unlockDestination];

        currentDevice = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];

        if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
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

      if (_passcodePresentationMode == 2)
      {
        [(SBPasscodeEntryTransientOverlayViewController *)self->_passcodeEntryTransientOverlayViewController setIntent:3];
      }

      v51 = v59;
      if (hasVisionModality)
      {
        [(SBPasscodeEntryTransientOverlayViewController *)self->_passcodeEntryTransientOverlayViewController setDismissesSiriForPresentation:0];
      }

      v52 = +[SBWorkspace mainWorkspace];
      v53 = self->_passcodeEntryTransientOverlayViewController;
      process = [(SBLockScreenUnlockRequest *)self->_unlockRequest process];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __97__SBLockScreenManager__setPasscodeVisible_animated_ignoringPreflightRequirementsForPresentation___block_invoke;
      v62[3] = &unk_2783A8C18;
      v62[4] = self;
      [v52 presentTransientOverlayViewController:v53 originatingProcess:process animated:animatedCopy completion:v62];

      self->_passcodeEntryTransientOverlayViewControllerPresentedAnimated = animatedCopy;
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
        intent = [(SBLockScreenUnlockRequest *)v38 intent];
      }

      else
      {
        intent = 3;
      }

      v51 = v59;
      passcodeViewPresenter2 = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment passcodeViewPresenter];
      [passcodeViewPresenter2 setPasscodeLockVisible:1 intent:intent ignoringPreflightRequirementsForPresentation:presentationCopy animated:animatedCopy completion:v37];
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

- (BOOL)_unlockWithRequest:(id)request cancelPendingRequests:(BOOL)requests completion:(id)completion
{
  requestsCopy = requests;
  v85 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v11 = requestCopy;
  NSClassFromString(&cfstr_Sblockscreenun_0.isa);
  if (!v11)
  {
    [SBLockScreenManager _unlockWithRequest:a2 cancelPendingRequests:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBLockScreenManager _unlockWithRequest:a2 cancelPendingRequests:? completion:?];
  }

  windowScene = [v11 windowScene];
  authenticationStatusProvider = [windowScene authenticationStatusProvider];
  userAuthController = authenticationStatusProvider;
  if (!authenticationStatusProvider)
  {
    userAuthController = self->_userAuthController;
  }

  v69 = completionCopy;
  v15 = userAuthController;

  source = [v11 source];
  intent = [v11 intent];
  isAuthenticated = [(SBFUserAuthenticationController *)v15 isAuthenticated];
  if (requestsCopy)
  {
    [(SBLockScreenManager *)self _runUnlockActionBlock:0];
  }

  else if (self->_unlockRequest)
  {
    v19 = +[SBSecureAppManager sharedInstance];
    hasSecureApp = [v19 hasSecureApp];

    if ((hasSecureApp & 1) == 0)
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
  isContinuityDisplayWindowScene = [windowScene isContinuityDisplayWindowScene];
  v23 = +[SBBacklightController sharedInstance];
  screenIsOn = [v23 screenIsOn];

  if ((screenIsOn & 1) == 0 && (isContinuityDisplayWindowScene & 1) == 0)
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
    if ((intent & 0xFFFFFFFE) == 2)
    {
      v28 = isAuthenticated;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      if ([windowScene isContinuityDisplayWindowScene])
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

    [(SBLockScreenManager *)self unlockUIFromSource:source withOptions:v27];
  }

  if (!source || !intent)
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

  if (intent == 2)
  {
    v30 = isAuthenticated;
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

  if (intent == 1)
  {
    v34 = isAuthenticated;
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

  uiLockStateProvider = [windowScene uiLockStateProvider];
  if (uiLockStateProvider)
  {
    uiLockStateProvider2 = [windowScene uiLockStateProvider];
    isUILocked = [uiLockStateProvider2 isUILocked];

    v15 = v21;
  }

  else
  {
    isUILocked = [(SBLockScreenManager *)self isUILocked];
  }

  if ((intent | 2) != 3)
  {
    goto LABEL_55;
  }

  if ((isAuthenticated ^ 1 | isUILocked))
  {
    if ((intent | 2) == 3)
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
      customActionStore = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment customActionStore];
      _customLockScreenActionContext = [customActionStore _customLockScreenActionContext];

      if (_customLockScreenActionContext)
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
        v59 = customActionStore;
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
        v40 = [(SBLockScreenManager *)self unlockUIFromSource:source withOptions:0];
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

      v65 = customActionStore;
      v49 = objc_alloc_init(MEMORY[0x277D65EF8]);
      name = [v11 name];
      [v49 setIdentifier:name];

      [v49 setIntent:intent];
      [v49 setSource:source];
      [v49 setWantsBiometricPresentation:{objc_msgSend(v11, "wantsBiometricPresentation")}];
      [v49 setConfirmedNotInPocket:{objc_msgSend(v11, "confirmedNotInPocket")}];
      destinationApplication = [v11 destinationApplication];
      unlockDestination = [v11 unlockDestination];

      v67 = v46;
      if (unlockDestination)
      {
        unlockDestination2 = [v11 unlockDestination];
      }

      else
      {
        if (!destinationApplication)
        {
          destinationApplication = 0;
          v55 = 0;
          goto LABEL_70;
        }

        unlockDestination2 = [destinationApplication displayName];
      }

      v55 = unlockDestination2;
LABEL_70:
      v15 = v21;
      [v49 setUnlockDestination:{v55, v65}];
      v33 = v69;
      if (intent != 2)
      {
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __75__SBLockScreenManager__unlockWithRequest_cancelPendingRequests_completion___block_invoke_2;
        v74[3] = &unk_2783A8C18;
        v75 = v67;
        [v49 setAction:v74];
      }

      [v66 setCustomLockScreenActionContext:v49];

      customActionStore = v66;
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
  statusBarStateAggregator = [SBApp statusBarStateAggregator];
  [statusBarStateAggregator beginCoalescentBlock];
  [statusBarStateAggregator updateStatusBarItem:13];
  [statusBarStateAggregator endCoalescentBlock];
  statusBarTransitionController = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment statusBarTransitionController];
  [statusBarTransitionController updateStatusBarForLockScreenTeardown];
}

- (void)_setUserAuthController:(id)controller
{
  objc_storeStrong(&self->_userAuthController, controller);
  controllerCopy = controller;
  [(SBFUserAuthenticationController *)self->_userAuthController _addPrivateAuthenticationObserver:self];
}

- (void)_setHomeButtonShowPasscodeRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  homeButtonShowPasscodeRecognizer = self->_homeButtonShowPasscodeRecognizer;
  if (homeButtonShowPasscodeRecognizer != recognizerCopy)
  {
    v7 = recognizerCopy;
    [(SBHomeButtonShowPasscodeRecognizer *)homeButtonShowPasscodeRecognizer setDelegate:0];
    objc_storeStrong(&self->_homeButtonShowPasscodeRecognizer, recognizer);
    [(SBHomeButtonShowPasscodeRecognizer *)self->_homeButtonShowPasscodeRecognizer setDelegate:self];
    recognizerCopy = v7;
  }
}

- (void)_setHomeButtonSuppressAfterUnlockRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  homeButtonSuppressAfterUnlockRecognizer = self->_homeButtonSuppressAfterUnlockRecognizer;
  if (homeButtonSuppressAfterUnlockRecognizer != recognizerCopy)
  {
    v7 = recognizerCopy;
    [(SBHomeButtonSuppressAfterUnlockRecognizer *)homeButtonSuppressAfterUnlockRecognizer setDelegate:0];
    objc_storeStrong(&self->_homeButtonSuppressAfterUnlockRecognizer, recognizer);
    [(SBHomeButtonSuppressAfterUnlockRecognizer *)self->_homeButtonSuppressAfterUnlockRecognizer setDelegate:self];
    recognizerCopy = v7;
  }
}

- (void)_wakeScreenForMouseButtonDown:(id)down
{
  v18[2] = *MEMORY[0x277D85DE8];
  downCopy = down;
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
    caseIsEnabledAndLatched = [SBApp caseIsEnabledAndLatched];
    v6 = SBLogBacklight();
    v9 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (caseIsEnabledAndLatched)
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
      v11 = os_signpost_id_make_with_pointer(v10, downCopy);

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
  succinctDescriptionBuilder = [(SBLockScreenManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBLockScreenManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBLockScreenManager *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendBool:self->_isUILocked withName:@"UI Locked"];
  v6 = [succinctDescriptionBuilder appendBool:self->_allowDisablePasscodeLockAssertion withName:@"Allows DisablePasscodeLockAssertion"];
  v7 = [succinctDescriptionBuilder appendBool:self->_allowUILockUnlock withName:@"Allow Locking/Unlocking"];
  if (self->_isInLostMode)
  {
    v8 = [succinctDescriptionBuilder appendBool:1 withName:@"inLostMode"];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__SBLockScreenManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v12[3] = &unk_2783A92D8;
  v9 = succinctDescriptionBuilder;
  v13 = v9;
  selfCopy = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:0 block:v12];
  v10 = v9;

  return v9;
}

- (void)_noteStartupTransitionWillBegin
{
  self->_allowUILockUnlock = 1;
  userSessionController = [SBApp userSessionController];
  isMultiUserSupported = [userSessionController isMultiUserSupported];

  if (isMultiUserSupported && (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") & 1) == 0)
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

- (void)_postLockCompletedNotification:(BOOL)notification
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
    notificationCopy = notification;
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

- (void)_setMesaUnlockingDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  v12 = reasonCopy;
  if (!reasonCopy)
  {
    [SBLockScreenManager _setMesaUnlockingDisabled:forReason:];
    reasonCopy = 0;
  }

  v7 = [(NSMutableDictionary *)self->_mesaUnlockingDisabledAssertions objectForKeyedSubscript:reasonCopy];
  v8 = v7;
  if (disabledCopy)
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

- (BOOL)_attemptUnlockWithPasscode:(id)passcode mesa:(BOOL)mesa finishUIUnlock:(BOOL)unlock completion:(id)completion
{
  mesaCopy = mesa;
  passcodeCopy = passcode;
  completionCopy = completion;
  if ([(SBLockScreenManager *)self isUILocked]|| self->_unlockRequest)
  {
    v12 = [(SBFUserAuthenticationController *)self->_userAuthController createGracePeriodAssertionWithReason:@"UI unlock attempt"];
    [v12 activate];
    source = [(SBLockScreenUnlockRequest *)self->_unlockRequest source];
    process = [(SBLockScreenUnlockRequest *)self->_unlockRequest process];
    if (process)
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
    v30 = completionCopy;
    v16 = v12;
    v28 = v16;
    selfCopy = self;
    v31 = source;
    unlockCopy = unlock;
    v33 = mesaCopy;
    v17 = MEMORY[0x223D6F7F0](&v24);
    v18 = objc_alloc(MEMORY[0x277D65DF0]);
    if (mesaCopy)
    {
      v19 = [v18 initForBiometricAuthenticationWithSource:v15 handler:{v17, v24, v25, v26, v27}];
    }

    else
    {
      v19 = [v18 initForPasscode:passcodeCopy source:v15 handler:{v17, v24, v25, v26, v27}];
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

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
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

- (void)attemptUnlockWithPasscode:(id)passcode finishUIUnlock:(BOOL)unlock completion:(id)completion
{
  unlockCopy = unlock;
  passcodeCopy = passcode;
  completionCopy = completion;
  v9 = [passcodeCopy length];
  if (unlockCopy)
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

  [(SBLockScreenManager *)self _attemptUnlockWithPasscode:passcodeCopy mesa:v9 == 0 finishUIUnlock:v11 completion:completionCopy];
}

- (void)_authenticationStateChanged:(id)changed
{
  v17[3] = *MEMORY[0x277D85DE8];
  isAuthenticated = [(SBFUserAuthenticationController *)self->_userAuthController isAuthenticated];
  if (isAuthenticated)
  {
    [(SBLockElementViewProvider *)self->_lockElement setAuthenticated:1];
    rootSettings = [MEMORY[0x277D02C20] rootSettings];
    pearlSettings = [rootSettings pearlSettings];
    [pearlSettings systemApertureDismissDelayAuth];
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

      coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
      [coverSheetViewController activateMainPageWithCompletion:0];
    }

    else
    {
      v16[0] = @"SBUILockOptionsForceLockKey";
      coverSheetViewController = [MEMORY[0x277CCABB0] numberWithBool:1];
      v17[0] = coverSheetViewController;
      v16[1] = @"SBUILockOptionsLockAutomaticallyKey";
      v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v17[1] = v13;
      v16[2] = @"SBUILockOptionsUseScreenOffModeKey";
      v14 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v17[2] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
      [(SBLockScreenManager *)self lockUIFromSource:11 withOptions:v15];
    }

    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    isLockScreenControlCenterAllowed = [mEMORY[0x277D262A0] isLockScreenControlCenterAllowed];

    if ((isLockScreenControlCenterAllowed & 1) == 0)
    {
      controlCenterPresenter = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment controlCenterPresenter];
      [controlCenterPresenter dismissAnimated:0];
    }
  }

  lockController = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
  [lockController setAuthenticated:isAuthenticated];

  [(SBLockScreenBiometricAuthenticationCoordinator *)self->_biometricAuthenticationCoordinator setAuthenticated:isAuthenticated];
}

- (void)_deviceBlockedChanged:(id)changed
{
  v11[3] = *MEMORY[0x277D85DE8];
  if ([(SBLockScreenManager *)self isUILocked])
  {
    v4 = +[SBCoverSheetPresentationManager sharedInstance];
    if ([v4 isInSecureApp])
    {
      isBlocked = [(SBFLockOutStatusProvider *)self->_lockOutController isBlocked];

      if (!isBlocked)
      {
LABEL_6:
        blockedStateObserver = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment blockedStateObserver];
        [blockedStateObserver noteDeviceBlockedStatusUpdated];
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
    blockedStateObserver = [MEMORY[0x277CCABB0] numberWithBool:1];
    v11[0] = blockedStateObserver;
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

- (void)_resetOrRestoreStateChanged:(id)changed
{
  v18[3] = *MEMORY[0x277D85DE8];
  if ([(SBLockScreenManager *)self isUILocked])
  {
    blockedStateObserver = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment blockedStateObserver];
    [blockedStateObserver noteResetRestoreStateUpdated];
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
      isResetting = [v5 isResetting];

      if (!isResetting)
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

- (void)_handleBacklightLevelWillChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D67A28]];
  [v5 floatValue];
  v7 = v6;

  v8 = BSFloatGreaterThanFloat();
  backlightController = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment backlightController];
  [backlightController setBacklightLevel:v7];

  if (self->_isScreenOn != v8)
  {
    self->_isScreenOn = v8;
    if (v8)
    {
      [(SBCoverSheetBiometricResourceObserver *)self->_biometricResourceObserver reset];
      [(SBLockScreenManager *)self _setMesaCoordinatorDisabled:0 forReason:@"Screen off"];
      mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
      [mEMORY[0x277D67C98] noteScreenWillTurnOn];

      [(SBFMouseButtonDownGestureRecognizer *)self->_mouseButtonDownGesture setEnabled:0];
      [(SBLockScreenManager *)self _evaluateWallpaperMode];
      v12 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
      [v12 completeOngoingPresentationIfNeeded];
    }

    else
    {
      [(SBLockScreenManager *)self _setHomeButtonShowPasscodeRecognizer:0];
      [(SBLockScreenManager *)self _setMesaCoordinatorDisabled:1 forReason:@"Screen off"];
      mEMORY[0x277D67C98]2 = [MEMORY[0x277D67C98] sharedInstance];
      [mEMORY[0x277D67C98]2 noteScreenDidTurnOff];

      v12 = +[SBWallpaperController sharedInstance];
      [v12 updateWallpaperAnimationWithWakeSourceIsSwipeToUnlock:0];
    }
  }
}

- (void)_handleBacklightDidTurnOff:(id)off
{
  userInfo = [off userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D67A10]];
  intValue = [v5 intValue];

  [(SBLockScreenManager *)self setPasscodeVisible:0 animated:0];
  if (intValue != 13)
  {
    v7 = +[SBCoverSheetPresentationManager sharedInstance];
    [v7 noteScreenDidTurnOff];
  }

  [(SBFMouseButtonDownGestureRecognizer *)self->_mouseButtonDownGesture setEnabled:1];

  [(SBLockScreenManager *)self _evaluateWallpaperMode];
}

- (void)_lockScreenDimmed:(id)dimmed
{
  bannerManager = [SBApp bannerManager];
  [bannerManager dismissAllBannersInAllWindowScenesAnimated:0 reason:@"SBBannerManagerDismissalReasonLock"];

  [(SBLockScreenManager *)self _clearAuthenticationLockAssertion];
}

- (void)homeButtonSuppressAfterUnlockRecognizerRequestsEndOfSuppression:(id)suppression
{
  suppressionCopy = suppression;
  v7 = suppressionCopy;
  if (!suppressionCopy)
  {
    [SBLockScreenManager homeButtonSuppressAfterUnlockRecognizerRequestsEndOfSuppression:];
    suppressionCopy = 0;
  }

  homeButtonSuppressAfterUnlockRecognizer = self->_homeButtonSuppressAfterUnlockRecognizer;
  if (!homeButtonSuppressAfterUnlockRecognizer)
  {
    [(SBLockScreenManager *)a2 homeButtonSuppressAfterUnlockRecognizerRequestsEndOfSuppression:&self->_homeButtonSuppressAfterUnlockRecognizer, &v9];
    suppressionCopy = v7;
    homeButtonSuppressAfterUnlockRecognizer = v9;
  }

  if (homeButtonSuppressAfterUnlockRecognizer != suppressionCopy)
  {
    [SBLockScreenManager homeButtonSuppressAfterUnlockRecognizerRequestsEndOfSuppression:];
  }

  [(SBLockScreenManager *)self _setHomeButtonSuppressAfterUnlockRecognizer:0, v7];
}

- (void)remoteLock:(BOOL)lock
{
  v9[3] = *MEMORY[0x277D85DE8];
  if (lock && [(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet])
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

- (void)_lockFeaturesForRemoteLock:(BOOL)lock
{
  lockCopy = lock;
  v4 = +[SBDefaults localDefaults];
  lockScreenDefaults = [v4 lockScreenDefaults];
  [lockScreenDefaults setLimitFeaturesForRemoteLock:lockCopy];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D67A50];
  v7 = MEMORY[0x277CBEAC0];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:lockCopy];
  v9 = [v7 dictionaryWithObject:v8 forKey:*MEMORY[0x277D67B30]];
  [defaultCenter postNotificationName:v6 object:0 userInfo:v9];
}

- (void)activateLostModeForRemoteLock:(BOOL)lock
{
  v23[3] = *MEMORY[0x277D85DE8];
  if (!self->_isInLostMode)
  {
    lockCopy = lock;
    self->_isInLostMode = 1;
    userSessionController = [SBApp userSessionController];
    if ([userSessionController canLogout])
    {
      [userSessionController logout];
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

      bannerManager = [SBApp bannerManager];
      v15 = [bannerManager acquireBannerSuppressionAssertionForReason:@"SBLockScreenManagerBusyForLostMode"];
      bannerSuppressionAssertion = self->_bannerSuppressionAssertion;
      self->_bannerSuppressionAssertion = v15;

      if (lockCopy)
      {
        userSessionController2 = [SBApp userSessionController];
        isLoginSession = [userSessionController2 isLoginSession];

        if (isLoginSession)
        {
          mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
          allApplicationProcesses = [mEMORY[0x277D0AAC0] allApplicationProcesses];
          v21 = [allApplicationProcesses bs_filter:&__block_literal_global_499];

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

- (void)exitLostModeIfNecessaryFromRemoteRequest:(BOOL)request
{
  if (self->_isInLostMode)
  {
    v11 = v4;
    v12 = v3;
    self->_isInLostMode = 0;
    if (request)
    {
      [(SBLockScreenManager *)self _lockFeaturesForRemoteLock:0];
    }

    else
    {
      mEMORY[0x277D08F78] = [MEMORY[0x277D08F78] sharedInstance];
      [mEMORY[0x277D08F78] disableLostMode];
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
    pluginPresenter = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment pluginPresenter];
    objc_initWeak(location, pluginPresenter);

    passcodeViewPresenter = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment passcodeViewPresenter];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__SBLockScreenManager_enableLostModePlugin__block_invoke;
    v6[3] = &unk_2783A8C68;
    objc_copyWeak(&v7, location);
    [passcodeViewPresenter setPasscodeLockVisible:0 animated:0 completion:v6];

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
    mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
    v6 = [(SBLostModeBiometricAuthenticationTransientOverlayViewController *)v4 initWithLockScreenManager:self biometricResource:mEMORY[0x277D67C98]];
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
  mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
  hasEnrolledIdentities = [mEMORY[0x277D67C98] hasEnrolledIdentities];

  v5 = _os_feature_enabled_impl();
  mEMORY[0x277CD47B0] = [MEMORY[0x277CD47B0] sharedInstance];
  isFeatureEnabled = [mEMORY[0x277CD47B0] isFeatureEnabled];

  if (hasEnrolledIdentities)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = !v8 && isFeatureEnabled != 0 && !self->_isInFamiliarLocationToExitLostMode;
  v11 = SBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    isInFamiliarLocationToExitLostMode = self->_isInFamiliarLocationToExitLostMode;
    v14[0] = 67110144;
    v14[1] = v10;
    v15 = 1024;
    v16 = hasEnrolledIdentities;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = isFeatureEnabled;
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

- (void)_maybeLaunchSetupForcingCheckIfNotBricked:(BOOL)bricked
{
  brickedCopy = bricked;
  v23[4] = *MEMORY[0x277D85DE8];
  v5 = +[SBLockdownManager sharedInstance];
  brickedDevice = [v5 brickedDevice];

  if (brickedDevice)
  {
    mEMORY[0x277D0AB20] = [MEMORY[0x277D0AB20] sharedInstance];
    [mEMORY[0x277D0AB20] cancelEventsWithName:@"HandleActivationChanged"];

    v8 = +[SBDefaults externalDefaults];
    setupDefaults = [v8 setupDefaults];
    [setupDefaults setDeviceSetup:0];

    v10 = +[SBSetupManager sharedInstance];
    LOBYTE(setupDefaults) = [v10 updateInSetupMode];

    if (setupDefaults)
    {
      v11 = SBLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [SBLockScreenManager _maybeLaunchSetupForcingCheckIfNotBricked:v11];
      }

      __65__SBLockScreenManager__maybeLaunchSetupForcingCheckIfNotBricked___block_invoke();
      v12 = +[SBDefaults localDefaults];
      setupDefaults2 = [v12 setupDefaults];
      [setupDefaults2 setInSetupModeForActivationChange:1];
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
      setupDefaults2 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v23[1] = setupDefaults2;
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

  else if (brickedCopy)
  {
    v14 = +[SBSetupManager sharedInstance];
    updateInSetupMode = [v14 updateInSetupMode];

    if (updateInSetupMode)
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
  isInSetupMode = [v3 isInSetupMode];
  setupDefaults = [v4 setupDefaults];
  inSetupModeForActivationChange = [setupDefaults inSetupModeForActivationChange];

  if (!isInSetupMode || ([SBApp caseIsEnabledAndLatched] & 1) != 0 || ((objc_msgSend(v3, "setupHasFinishedRestoringFromBackup") | inSetupModeForActivationChange) & 1) != 0)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = ![(SBLockScreenManager *)self isInLostMode];
  }

  return v8;
}

- (BOOL)handleKeyHIDEvent:(__IOHIDEvent *)event
{
  if (event)
  {
    v4 = BKSHIDEventGetBaseAttributes();
    if (([v4 source] & 0xFFFFFFFD) == 1)
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      if ([(SBLockScreenManager *)self isUILocked])
      {
        v6 = +[SBWorkspace mainWorkspace];
        transientOverlayPresentationManager = [v6 transientOverlayPresentationManager];
        hasActivePresentation = [transientOverlayPresentationManager hasActivePresentation];
      }

      else
      {
        hasActivePresentation = 1;
      }

      isBlocked = [(SBFLockOutStatusProvider *)self->_lockOutController isBlocked];
      v9 = 0;
      if (!IntegerValue || (hasActivePresentation & 1) != 0 || (isBlocked & 1) != 0)
      {
        goto LABEL_15;
      }

      if ([(SBLockScreenManager *)self _shouldUnlockUIOnKeyDownEvent])
      {
        customActionStore = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment customActionStore];
        _customLockScreenActionContext = [customActionStore _customLockScreenActionContext];

        if (!_customLockScreenActionContext)
        {
          v13 = objc_alloc_init(MEMORY[0x277D65EF8]);
          [v13 setConfirmedNotInPocket:1];
          [customActionStore setCustomLockScreenActionContext:v13];
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
  keyWindow = [MEMORY[0x277D75DA0] keyWindow];
  firstResponder = [keyWindow firstResponder];

  if (firstResponder)
  {
    return 0;
  }

  modalAlertPresentationCoordinator = [SBApp modalAlertPresentationCoordinator];
  isShowingSystemModalAlert = [modalAlertPresentationCoordinator isShowingSystemModalAlert];

  v8 = +[SBAssistantController isVisible];
  controlCenterPresenter = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment controlCenterPresenter];
  isVisible = [controlCenterPresenter isVisible];

  notificationDispatcher = [SBApp notificationDispatcher];
  bannerDestination = [notificationDispatcher bannerDestination];
  isPresentingBannerInLongLook = [bannerDestination isPresentingBannerInLongLook];

  v14 = +[SBCoverSheetPresentationManager sharedInstance];
  isCoverSheetHostingAnApp = [v14 isCoverSheetHostingAnApp];

  if (![(SBLockScreenManager *)self isUILocked]|| (isShowingSystemModalAlert & 1) != 0 || v8 || (isVisible & 1) != 0 || (isPresentingBannerInLongLook & 1) != 0 || (isCoverSheetHostingAnApp & 1) != 0)
  {
    return 0;
  }

  lockController = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
  shouldUnlockUIOnKeyDownEvent = [lockController shouldUnlockUIOnKeyDownEvent];

  return shouldUnlockUIOnKeyDownEvent;
}

- (void)addLockStateObserver:(id)observer
{
  observerCopy = observer;
  v8 = observerCopy;
  if (!observerCopy)
  {
    [SBLockScreenManager addLockStateObserver:];
    observerCopy = 0;
  }

  lockStateObservers = self->_lockStateObservers;
  if (!lockStateObservers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_lockStateObservers;
    self->_lockStateObservers = weakObjectsHashTable;

    observerCopy = v8;
    lockStateObservers = self->_lockStateObservers;
  }

  [(NSHashTable *)lockStateObservers addObject:observerCopy];
  if ([(SBLockScreenManager *)self isUILocked])
  {
    [v8 lockStateProvider:self didUpdateIsUILocked:1];
  }
}

- (void)removeLockStateObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (!observerCopy)
  {
    [SBLockScreenManager removeLockStateObserver:];
    observerCopy = 0;
  }

  [(NSHashTable *)self->_lockStateObservers removeObject:observerCopy];
}

- (BOOL)passcodeEntryTransientOverlayViewController:(id)controller authenticatePasscode:(id)passcode
{
  passcodeCopy = passcode;
  if (!self->_unlockRequest)
  {
    controllerCopy = controller;
    v8 = objc_alloc_init(SBLockScreenUnlockRequest);
    [(SBLockScreenUnlockRequest *)v8 setName:@"Unlock For Passcode Entry Alert View Controller"];
    intent = [controllerCopy intent];

    [(SBLockScreenUnlockRequest *)v8 setIntent:intent];
    unlockRequest = self->_unlockRequest;
    self->_unlockRequest = v8;
  }

  [(SBLockScreenManager *)self attemptUnlockWithPasscode:passcodeCopy];

  return 1;
}

- (void)passcodeEntryTransientOverlayViewControllerDidDisappear:(id)disappear
{
  if (self->_passcodeEntryTransientOverlayViewController == disappear)
  {
    [(SBLockScreenManager *)self setPasscodeVisible:0 animated:1];
  }
}

- (void)passcodeEntryTransientOverlayViewControllerRequestsDismissal:(id)dismissal
{
  v4 = +[SBWorkspace mainWorkspace];
  [v4 dismissTransientOverlayViewController:self->_passcodeEntryTransientOverlayViewController animated:self->_passcodeEntryTransientOverlayViewControllerPresentedAnimated completion:0];
}

- (void)passcodeEntryTransientOverlayViewControllerRequestsEmergencyCall:(id)call
{
  v4 = +[SBCoverSheetPresentationManager sharedInstance];
  isInSecureApp = [v4 isInSecureApp];

  callController = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment callController];
  [callController launchEmergencyDialerAnimated:isInSecureApp ^ 1u];

  [(SBLockScreenManager *)self setPasscodeVisible:0 animated:1];
}

- (BOOL)passcodeEntryTransientOverlayViewControllerDidDetectFaceOcclusionsSinceScreenOn:(id)on
{
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  didDetectFaceOcclusionsSinceScreenOn = [coverSheetViewController didDetectFaceOcclusionsSinceScreenOn];

  return didDetectFaceOcclusionsSinceScreenOn;
}

- (BOOL)passcodeEntryTransientOverlayViewControllerDidDetectBottomFaceOcclusionsSinceScreenOn:(id)on
{
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  didDetectBottomFaceOcclusionsSinceScreenOn = [coverSheetViewController didDetectBottomFaceOcclusionsSinceScreenOn];

  return didDetectBottomFaceOcclusionsSinceScreenOn;
}

- (void)extendedKeybagLockStateChanged:(BOOL)changed
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (changed && ![(SBLockScreenManager *)self isUILocked]&& ![(SBLockScreenManager *)self isLockScreenActive]&& ([(BSCompoundAssertion *)self->_lockScreenPresentationPendingAssertions isActive]& 1) == 0)
  {
    v4 = +[SBLockScreenManager sharedInstance];
    v7 = @"SBUILockOptionsUseScreenOffModeKey";
    v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v8[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v4 lockUIFromSource:11 withOptions:v6];
  }
}

- (void)wallpaperDidChangeForVariant:(int64_t)variant
{
  if (!variant)
  {
    [(SBLockScreenManager *)self _evaluateWallpaperMode];
  }
}

- (void)hideDimmingLayerDidChange:(BOOL)change
{
  changeCopy = change;
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  [coverSheetViewController setHidesDimmingLayer:changeCopy];
}

- (void)wallpaperDidUpdatePreferredSalientContentRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  [coverSheetViewController setPosterPreferredSalientContentRectangle:{x, y, width, height}];
}

- (void)wallpaperDidUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle:(BOOL)rectangle
{
  rectangleCopy = rectangle;
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  [coverSheetViewController setAdaptiveTimeHonorsPreferredSalientContentRectangle:rectangleCopy];
}

- (void)wallpaperLegibilityEnvironmentDidChange:(id)change
{
  changeCopy = change;
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  [coverSheetViewController wallpaperLegibilityEnvironmentDidChange:changeCopy];
}

- (void)backlightController:(id)controller didUpdateDigitizerDisabled:(BOOL)disabled tapToWakeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  disabledCopy = disabled;
  controllerCopy = controller;
  v8 = disabledCopy & enabledCopy;
  [(SBTapToWakeController *)self->_tapToWakeController setDigitizerInTapToWakeMode:v8];
  tapToWakeController = self->_tapToWakeController;
  if (v8 == 1)
  {
    tapToWakeRequiresHitTestSuppression = [controllerCopy tapToWakeRequiresHitTestSuppression];
  }

  else
  {
    tapToWakeRequiresHitTestSuppression = 0;
  }

  [(SBTapToWakeController *)tapToWakeController setDigitizerModeRequiresHitTestSuppression:tapToWakeRequiresHitTestSuppression];
}

- (void)backlightController:(id)controller willTransitionToBacklightState:(int64_t)state source:(int64_t)source
{
  controllerCopy = controller;
  if (state != 3)
  {
    v9 = controllerCopy;
    hasPasscodeSet = [(SBFUserAuthenticationController *)self->_userAuthController hasPasscodeSet];
    controllerCopy = v9;
    if ((hasPasscodeSet & 1) == 0)
    {
      [(SBLockScreenManager *)self _setSystemApertureProudLockElementVisible:0 backlightState:state withReason:@"BacklightInactive"];
      controllerCopy = v9;
    }
  }
}

- (void)backlightController:(id)controller didTransitionToBacklightState:(int64_t)state source:(int64_t)source
{
  if (state == 3)
  {
    [(SBLockScreenManager *)self _clearAuthenticationLockAssertion:controller];

    [(SBLockScreenManager *)self _showSystemApertureProudLockElementForBacklightState:3 WithReason:@"BacklightInactive"];
  }
}

- (BOOL)_shouldEmulateInterstitialPresentationForAccessibility:(BOOL)accessibility
{
  accessibilityCopy = accessibility;
  v5 = UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSAssistiveTouchEnabled() != 0;
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  v7 = 0;
  if (coverSheetViewController && (!accessibilityCopy || v5))
  {
    v7 = SBFEffectiveHomeButtonType() == 2;
  }

  return v7;
}

- (void)_emulateInterstitialPasscodePresentationForAccessibility:(BOOL)accessibility
{
  accessibilityCopy = accessibility;
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  if ([(SBLockScreenManager *)self _shouldEmulateInterstitialPresentationForAccessibility:accessibilityCopy])
  {
    [coverSheetViewController prepareForInterstitialPresentation];
    [coverSheetViewController updateInterstitialPresentationWithProgress:0.0];
    if (accessibilityCopy)
    {
      v6 = MEMORY[0x277D75D18];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __80__SBLockScreenManager__emulateInterstitialPasscodePresentationForAccessibility___block_invoke;
      v9[3] = &unk_2783A8C18;
      v10 = coverSheetViewController;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __80__SBLockScreenManager__emulateInterstitialPasscodePresentationForAccessibility___block_invoke_2;
      v7[3] = &unk_2783A9398;
      v8 = v10;
      [v6 animateWithDuration:v9 animations:v7 completion:0.4];
    }

    else
    {
      [coverSheetViewController cleanupInterstitialPresentationToPresented:1 inPlace:0];
    }
  }
}

- (void)setIndicatorHost:(id)host
{
  lockElement = self->_lockElement;
  if (lockElement)
  {
    [(SBLockElementViewProvider *)lockElement setIndicatorHost:host];
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
  rootViewController = [(SBLockScreenManager *)&self->super.isa rootViewController];
  _sbWindowScene = [rootViewController _sbWindowScene];

  switcherController = [_sbWindowScene switcherController];
  if ([switcherController isAnySwitcherVisible])
  {
    [switcherController dismissMainAndFloatingSwitchersWithSource:7 animated:0];
  }

  if ([switcherController isInAnyPeekState])
  {
    [switcherController cancelPeekWithSource:7 animated:0];
  }

  _lockUI = [(SBLockScreenManager *)self _lockUI];
  lockController = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
  [lockController setAuthenticated:{-[SBFUserAuthenticationController isAuthenticated](self->_userAuthController, "isAuthenticated")}];

  _statusBarLayoutManager = [(SBLockScreenManager *)self _statusBarLayoutManager];
  [_statusBarLayoutManager setDefaultWindowLevel:*MEMORY[0x277D76EE8] + 20.0];

  bannerManager = [SBApp bannerManager];
  [bannerManager dismissAllBannersInAllWindowScenesAnimated:0 reason:@"SBBannerManagerDismissalReasonLock"];

  if (!self->_presentedPasscodeWhileUILocking)
  {
    [(SBLockScreenManager *)self setPasscodeVisible:0 animated:1];
  }

  if (self->_isInLostMode)
  {
    [(SBLockScreenManager *)self enableLostModePlugin];
  }

  userSessionController = [SBApp userSessionController];
  isMultiUserSupported = [userSessionController isMultiUserSupported];

  v13 = SBFEffectiveHomeButtonType();
  if ((isMultiUserSupported & 1) == 0 && v13 != 2)
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
  homeScreenController = [_sbWindowScene homeScreenController];
  [homeScreenController endRequiringContentForReason:@"SBUIHomeScreenActiveContentRequirementReason"];

  if (_lockUI)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBLockScreenUIDidLockNotification" object:self];
  }

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  _hostingWindowScene = [(SBLockScreenManager *)self _hostingWindowScene];
  [defaultCenter2 postNotificationName:@"SBLockScreenUIDidPresentNotification" object:_hostingWindowScene];

  [(SBLockScreenDeviceMotionEffectController *)self->_deviceMotionEffectController setWallpaperVisible:1];
  coverSheetViewController = [(SBLockScreenManager *)self coverSheetViewController];
  LODWORD(_hostingWindowScene) = [coverSheetViewController isUserPresenceDetectionAllowed];

  if (_hostingWindowScene)
  {
    coverSheetViewController2 = [(SBLockScreenManager *)self coverSheetViewController];
    [coverSheetViewController2 enableRecentUserPresenceDetectionForReason:@"SBLockScreenDeviceMotionEffectUserPresenceMonitoring"];
  }
}

- (void)coverSheetViewControllerShouldDismissContextMenu:(id)menu
{
  rootViewController = [(SBLockScreenManager *)&self->super.isa rootViewController];
  _sbWindowScene = [rootViewController _sbWindowScene];
  homeScreenController = [_sbWindowScene homeScreenController];

  if ([homeScreenController areAnyIconViewContextMenusShowing])
  {
    [homeScreenController dismissAppIconForceTouchControllers:0];
  }
}

- (BOOL)_lockUI
{
  rootViewController = [(SBLockScreenManager *)&self->super.isa rootViewController];
  _sbWindowScene = [rootViewController _sbWindowScene];

  switcherController = [_sbWindowScene switcherController];
  if ([(SBLockScreenManager *)self isUILocked]&& self->_uiHasBeenLockedOnce)
  {
    v6 = 0;
  }

  else
  {
    layoutStateApplicationSceneHandles = [switcherController layoutStateApplicationSceneHandles];
    v8 = [layoutStateApplicationSceneHandles count];

    if (v8 >= 2)
    {
      v9 = +[SBKeyboardSuppressionManager sharedInstance];
      displayIdentity = [switcherController displayIdentity];
      [v9 startSuppressingKeyboardWithReason:@"SBSuppressKeyboardForUILock" predicate:0 displayIdentity:displayIdentity];
    }

    [(SBLockScreenManager *)self _setUILocked:1];
    self->_uiHasBeenLockedOnce = 1;
    [(SBLockScreenManager *)self _sendUILockStateChangedNotification];
    lockController = [(SBLockScreenEnvironment *)self->_lockScreenEnvironment lockController];
    [lockController prepareForUILock];

    v12 = +[SBLockStateAggregator sharedInstance];
    hasAnyLockState = [v12 hasAnyLockState];

    if (hasAnyLockState)
    {
      v14 = +[SBWorkspace mainWorkspace];
      pipCoordinator = [v14 pipCoordinator];

      [pipCoordinator setPictureInPictureWindowsHidden:1 withReason:@"SBLockScreenPictureInPictureHiddenReason"];
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