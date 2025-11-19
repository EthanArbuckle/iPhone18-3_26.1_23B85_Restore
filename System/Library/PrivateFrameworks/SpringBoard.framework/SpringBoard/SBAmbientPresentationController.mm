@interface SBAmbientPresentationController
- (BOOL)_evaluatePresentationStateIgnoreLockState:(BOOL)a3 animated:(BOOL)a4 withCompletion:(id)a5;
- (BOOL)_isAmbientPresentationAllowedIgnoreLockState:(BOOL)a3;
- (BOOL)_isNightModeUserSettingEffectivelyEnabled;
- (BOOL)_isRedModeTriggered;
- (BOOL)handleEvent:(id)a3;
- (BOOL)presentIfAllowedAndLockWithCompletion:(id)a3;
- (BOOL)suppressNotificationPresentation;
- (BOOL)wakeToContentForWakeDestination:(id)a3 unlockSource:(int)a4;
- (NSString)coverSheetIdentifier;
- (SBAmbientPresentationController)initWithWindowScene:(id)a3;
- (SBWakeDestinationHandling)wakeDestinationHandler;
- (SBWindowScene)windowScene;
- (id)_connectedChargerIdentifier;
- (id)_connectedWirelessChargerIdentifierForAdapterDetails:(id)a3;
- (id)_fetchConnectedWirelessChargerIdentifier;
- (id)_fetchConnectedWirelessChargerIdentifierFromRawAdapterDetails;
- (id)_widgetDescriptorsForATXStack:(id)a3;
- (id)timeIntervalsWithReasonsForScheduledTimersForAmbientScheduledAlarmObserver:(id)a3;
- (int64_t)_effectiveAlwaysOnMode;
- (void)_carPlayPresentationDidChange:(id)a3;
- (void)_clearUpcomingAlarmSuppressionsIfNecessary;
- (void)_dismissAllOtherAmbientTransientOverlays;
- (void)_displayTransientLockElementIfNecessaryForKeyBagState:(id)a3;
- (void)_evaluateAuthenticationIdleTimerEnablement;
- (void)_evaluateBumpToWakeEnablement;
- (void)_evaluateIdleTimerDisablement;
- (void)_evaluateIdleTimerEnablement;
- (void)_evaluateRedModeTriggerDetectionState;
- (void)_evaluateTriggerDetectionStateIgnoreLockState:(BOOL)a3;
- (void)_fetchDefaultWidgetStacks;
- (void)_hideLockElement;
- (void)_invalidateTransientOverlayWindowTraitsArbiterParticipantIfNeeded;
- (void)_lockStateDidChange:(id)a3;
- (void)_observeAmbientUserSettingChanges;
- (void)_presentLockUIAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)_resetTransientLockSuppressionFlag;
- (void)_setAmbientDisplayStyle:(int64_t)a3 forReason:(id)a4;
- (void)_setAmbientTransientOverlayIsShowingPasscode:(BOOL)a3;
- (void)_setCoverSheetPresentedByUserGesture:(BOOL)a3;
- (void)_setPresented:(BOOL)a3 animated:(BOOL)a4 withCompletion:(id)a5;
- (void)_setSystemApertureProudLockElementHidden:(BOOL)a3;
- (void)_setupStateCaptureBlock;
- (void)_updateAmbientMountState:(int64_t)a3 withReason:(id)a4;
- (void)_updateAmbientTriggerState:(int64_t)a3 analogousTriggerEvents:(BOOL)a4 withReason:(id)a5;
- (void)_updateMotionDetection;
- (void)_updatePosterBoardWithChargerIdentifier:(id)a3;
- (void)_updatePresentationPossibleForMountState:(int64_t)a3;
- (void)_updateScheduledAlarmObserverForPresentationRequested:(BOOL)a3;
- (void)_updateSleepSuppression;
- (void)_updateTelemetryIsPresented:(BOOL)a3;
- (void)_updateTraitsArbiterParticipantForPresented:(BOOL)a3;
- (void)_updateViewObstructedSuppressionManager;
- (void)addObserver:(id)a3;
- (void)ambientIdleTimerController:(id)a3 didChangeIdleTimerBehavior:(id)a4;
- (void)ambientIdleTimerControllerSuppressionDidEnd:(id)a3;
- (void)ambientTransientOverlayViewController:(id)a3 viewDidDisappear:(BOOL)a4;
- (void)ambientTransientOverlayViewControllerWillBeginConfiguration:(id)a3;
- (void)ambientTransientOverlayViewControllerWillEndConfiguration:(id)a3;
- (void)backlightController:(id)a3 didTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5;
- (void)dealloc;
- (void)keybag:(id)a3 extendedStateDidChange:(id)a4;
- (void)liftToWakeController:(id)a3 didIgnoreTransition:(int64_t)a4;
- (void)liftToWakeController:(id)a3 didObserveTransition:(int64_t)a4 deviceOrientation:(int64_t)a5;
- (void)pocketStateMonitor:(id)a3 pocketStateDidChangeFrom:(int64_t)a4 to:(int64_t)a5;
- (void)redModeTriggerManager:(id)a3 didUpdateRedModeTriggeredState:(BOOL)a4;
- (void)scheduledAlarmObserver:(id)a3 timerFiredForReason:(id)a4;
- (void)secureAppOfTypeDidBegin:(unint64_t)a3;
- (void)test_updateAmbientPresentationState:(int64_t)a3 withReason:(id)a4;
- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4;
@end

@implementation SBAmbientPresentationController

- (void)_hideLockElement
{
  if (self->_presented)
  {
    [(SBAmbientPresentationController *)self _setSystemApertureProudLockElementHidden:1];
  }
}

- (void)_evaluateRedModeTriggerDetectionState
{
  if ([(AMAmbientPresentationTriggerManager *)self->_ambientTriggerManager isPresentationDetectionEnabled]&& [(SBAmbientPresentationController *)self _isNightModeUserSettingEffectivelyEnabled]&& !self->_suppressRedModeDisplayStyleForUpcomingAlarm)
  {
    transientOverlay = self->_transientOverlay;
    if (transientOverlay)
    {
      v3 = [(SBAmbientTransientOverlayViewController *)transientOverlay isConfiguringUIVisible]^ 1;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  redModeTriggerManager = self->_redModeTriggerManager;

  [(AMRedModeTriggerManager *)redModeTriggerManager setRedModeDetectionEnabled:v3];
}

- (void)_updateViewObstructedSuppressionManager
{
  v3 = +[SBLockStateAggregator sharedInstance];
  v4 = [v3 lockState];

  v5 = [(SBAmbientPresentationController *)self _isAmbientModeUserSettingEnabled];
  v6 = +[SBUIController sharedInstanceIfExists];
  v7 = [v6 isOnAC];

  if (v5)
  {
    v9 = (v4 & 4) == 0 && v4 != 0;
    v10 = v9 & v7;
    v11 = [MEMORY[0x277CC1D50] isAvailable];
    if (v10 == 1 && v11 != 0)
    {
      if (!self->_suppressionManager)
      {
        v13 = [objc_alloc(MEMORY[0x277CC1D50]) initWithClientType:2];
        suppressionManager = self->_suppressionManager;
        self->_suppressionManager = v13;

        objc_initWeak(location, self);
        v15 = SBLogAmbientPresentation();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Starting view obstructed suppression monitoring", buf, 2u);
        }

        [(CMSuppressionManager *)self->_suppressionManager startService];
        v16 = self->_suppressionManager;
        v17 = [MEMORY[0x277CCABD8] mainQueue];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __74__SBAmbientPresentationController__updateViewObstructedSuppressionManager__block_invoke;
        v20[3] = &unk_2783C1908;
        objc_copyWeak(&v21, location);
        [(CMSuppressionManager *)v16 startSuppressionUpdatesToQueue:v17 withOptions:1 withHandler:v20];

        objc_destroyWeak(&v21);
        objc_destroyWeak(location);
      }

      return;
    }
  }

  else
  {
    [MEMORY[0x277CC1D50] isAvailable];
  }

  if (self->_suppressionManager)
  {
    v18 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Stopping view obstructed suppression monitoring", location, 2u);
    }

    [(CMSuppressionManager *)self->_suppressionManager stopSuppressionUpdates];
    [(CMSuppressionManager *)self->_suppressionManager stopService];
    v19 = self->_suppressionManager;
    self->_suppressionManager = 0;

    self->_isViewObstructedSuppressionActive = 0;
  }
}

- (SBWakeDestinationHandling)wakeDestinationHandler
{
  if (self->_presentationRequested)
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SBAmbientPresentationController)initWithWindowScene:(id)a3
{
  v4 = a3;
  v61.receiver = self;
  v61.super_class = SBAmbientPresentationController;
  v5 = [(SBAmbientPresentationController *)&v61 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, v4);
    if (_os_feature_enabled_impl())
    {
      if (__sb__runningInSpringBoard())
      {
        if (SBFEffectiveDeviceClass() == 2)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v7 = [MEMORY[0x277D75418] currentDevice];
        v8 = [v7 userInterfaceIdiom];

        if (v8 == 1)
        {
          goto LABEL_15;
        }
      }

      v9 = objc_alloc_init(MEMORY[0x277CEA5D0]);
      ambientDefaults = v6->_ambientDefaults;
      v6->_ambientDefaults = v9;

      [(SBAmbientPresentationController *)v6 _observeAmbientUserSettingChanges];
      [v4 isMainDisplayWindowScene];
      IOPMUpdateDominoState();
      v11 = +[SBAmbientDomain rootSettings];
      ambientSettings = v6->_ambientSettings;
      v6->_ambientSettings = v11;

      v13 = [[SBAmbientTelemetryEmitter alloc] initWithAmbientDefaults:v6->_ambientDefaults];
      telemetryEmitter = v6->_telemetryEmitter;
      v6->_telemetryEmitter = v13;

      v15 = objc_alloc_init(MEMORY[0x277CEA5D8]);
      ambientTriggerManager = v6->_ambientTriggerManager;
      v6->_ambientTriggerManager = v15;

      [(AMAmbientPresentationTriggerManager *)v6->_ambientTriggerManager setAmbientDefaults:v6->_ambientDefaults];
      [(AMAmbientPresentationTriggerManager *)v6->_ambientTriggerManager addObserver:v6];
      v17 = objc_alloc_init(MEMORY[0x277CEA5F0]);
      redModeTriggerManager = v6->_redModeTriggerManager;
      v6->_redModeTriggerManager = v17;

      [(AMRedModeTriggerManager *)v6->_redModeTriggerManager addObserver:v6];
      v19 = +[SBAmbientMotionDetectionWakeAttributeMonitor sharedInstance];
      motionDetectionWakeAttributeMonitor = v6->_motionDetectionWakeAttributeMonitor;
      v6->_motionDetectionWakeAttributeMonitor = v19;

      [(SBAmbientMotionDetectionWakeAttributeMonitor *)v6->_motionDetectionWakeAttributeMonitor addObserver:v6];
      [MEMORY[0x277CEA600] prewarm];
      v21 = [MEMORY[0x277CCAB98] defaultCenter];
      [v21 addObserver:v6 selector:sel__lockStateDidChange_ name:@"SBAggregateLockStateDidChangeNotification" object:0];
      [v21 addObserver:v6 selector:sel__carPlayPresentationDidChange_ name:@"SBNotificationCarPlayDestinationAvailabilityDidChange" object:0];
      [v21 addObserver:v6 selector:sel__isOnACDidChange_ name:@"SBUIACStatusChangedNotification" object:0];
      [(SBAmbientPresentationController *)v6 _evaluateTriggerDetectionState];
      v22 = +[SBLockScreenManager sharedInstance];
      lockScreenManager = v6->_lockScreenManager;
      v6->_lockScreenManager = v22;

      v24 = +[SBSecureAppManager sharedInstance];
      secureAppManager = v6->_secureAppManager;
      v6->_secureAppManager = v24;

      [(SBSecureAppManager *)v6->_secureAppManager addWakeDestinationProvider:v6];
      [(SBSecureAppManager *)v6->_secureAppManager addObserver:v6];
      v26 = [SBApp blshService];
      v27 = [v26 platformProvider];
      v28 = objc_opt_class();
      v29 = v27;
      if (v28)
      {
        if (objc_opt_isKindOfClass())
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;

      v32 = [v31 alwaysOnPolicyCoordinator];

      [v32 addExternalPolicy:v6];
      objc_storeWeak(&v6->_alwaysOnPolicyCoordinator, v32);
      if ([v4 isMainDisplayWindowScene])
      {
        v33 = [[SBAmbientMainDisplayController alloc] initWithAmbientPresentationController:v6];
        mainDisplayController = v6->_mainDisplayController;
        v6->_mainDisplayController = v33;
      }

      v35 = [[SBAmbientIdleTimerController alloc] initWithWindowScene:v4];
      ambientIdleTimerController = v6->_ambientIdleTimerController;
      v6->_ambientIdleTimerController = v35;

      [(SBAmbientIdleTimerController *)v6->_ambientIdleTimerController addObserver:v6];
      v37 = [(SBAmbientPresentationController *)v6 windowScene];
      v38 = [v37 coverSheetViewController];

      [v38 startObservingAmbientPresentationForController:v6];
      [v38 registerExternalEventHandler:v6];
      v39 = +[SBLiftToWakeController sharedController];
      liftToWakeController = v6->_liftToWakeController;
      v6->_liftToWakeController = v39;

      [(SBLiftToWakeController *)v6->_liftToWakeController addObserver:v6];
      v41 = +[SBBacklightController sharedInstance];
      backlightController = v6->_backlightController;
      v6->_backlightController = v41;

      [(SBBacklightController *)v6->_backlightController addObserver:v6];
      v43 = objc_alloc_init(SBAmbientScheduledAlarmObserver);
      scheduledAlarmObserver = v6->_scheduledAlarmObserver;
      v6->_scheduledAlarmObserver = v43;

      [(SBAmbientScheduledAlarmObserver *)v6->_scheduledAlarmObserver setDelegate:v6];
      v45 = +[SBPocketStateMonitor sharedInstance];
      pocketStateMonitor = v6->_pocketStateMonitor;
      v6->_pocketStateMonitor = v45;

      [(SBPocketStateMonitor *)v6->_pocketStateMonitor addObserver:v6];
      [(SBAmbientPresentationController *)v6 _updateMotionDetection];
      [(SBAmbientPresentationController *)v6 _updateViewObstructedSuppressionManager];
      v47 = objc_alloc_init(SBAmbientAuthenticationIdleTimer);
      authenticationIdleTimer = v6->_authenticationIdleTimer;
      v6->_authenticationIdleTimer = v47;

      v49 = objc_alloc_init(MEMORY[0x277CEA618]);
      widgetHostManager = v6->_widgetHostManager;
      v6->_widgetHostManager = v49;
      v51 = v49;

      [(SBAmbientPresentationController *)v6 _setupStateCaptureBlock];
      v52 = [SBAmbientWirelessChargingIdleTimer alloc];
      v53 = [SBApp screenSleepCoordinator];
      v54 = +[SBUIController sharedInstance];
      v55 = [(SBAmbientWirelessChargingIdleTimer *)v52 initWithAmbientPresentationController:v6 screenSleepCoordinator:v53 uiController:v54];
      wirelessChargingIdleTimer = v6->_wirelessChargingIdleTimer;
      v6->_wirelessChargingIdleTimer = v55;

      [(SBAmbientWirelessChargingIdleTimer *)v6->_wirelessChargingIdleTimer setEnabled:1];
      v57 = [MEMORY[0x277D65ED8] sharedInstance];
      [v57 addObserver:v6];
      v58 = [v57 state];
      lastKeyBagState = v6->_lastKeyBagState;
      v6->_lastKeyBagState = v58;

      [(SBAmbientPresentationController *)v6 _fetchDefaultWidgetStacks];
    }
  }

LABEL_15:

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_alwaysOnPolicyCoordinator);
  [WeakRetained removeExternalPolicy:self];
  [(SBAmbientIdleTimerController *)self->_ambientIdleTimerController removeObserver:self];
  [(SBAmbientMotionDetectionWakeAttributeMonitor *)self->_motionDetectionWakeAttributeMonitor removeObserver:self];
  [(AMAmbientPresentationTriggerManager *)self->_ambientTriggerManager removeObserver:self];
  [(AMRedModeTriggerManager *)self->_redModeTriggerManager removeObserver:self];
  [(SBSecureAppManager *)self->_secureAppManager removeWakeDestinationProvider:self];
  [(BSInvalidatable *)self->_bumpToWakeAssertion invalidate];
  [(BLSAssertion *)self->_enableIdleTimerAssertion invalidate];
  [(TRAParticipant *)self->_traitsArbiterParticipant invalidate];
  [(BSInvalidatable *)self->_disableIdleTimerAssertion invalidate];
  [(BSInvalidatable *)self->_systemApertureLockElementSuppressionAssertion invalidate];

  v4.receiver = self;
  v4.super_class = SBAmbientPresentationController;
  [(SBAmbientPresentationController *)&v4 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (BOOL)presentIfAllowedAndLockWithCompletion:(id)a3
{
  v4 = a3;
  if ([(SBAmbientPresentationController *)self isPresented])
  {
    v5 = 0;
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v6 = _os_activity_create(&dword_21ED4E000, "presentIfAllowedAndLockWithCompletion:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v7 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Requesting ambient presentation on device lock", buf, 2u);
  }

  objc_initWeak(buf, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SBAmbientPresentationController_presentIfAllowedAndLockWithCompletion___block_invoke;
  v10[3] = &unk_2783B8488;
  v8 = v6;
  v11 = v8;
  objc_copyWeak(&v13, buf);
  v12 = v4;
  v5 = [(SBAmbientPresentationController *)self _evaluatePresentationStateIgnoreLockState:1 animated:1 withCompletion:v10];
  self->_shouldSuppressTransientLockIfKeyBagLocks = v5;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__resetTransientLockSuppressionFlag object:0];
  [(SBAmbientPresentationController *)self performSelector:sel__resetTransientLockSuppressionFlag withObject:0 afterDelay:5.0];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  os_activity_scope_leave(&state);

  if (v4)
  {
LABEL_7:
    if (!v5)
    {
      (*(v4 + 2))(v4, 0);
    }
  }

LABEL_9:

  return v5;
}

void __73__SBAmbientPresentationController_presentIfAllowedAndLockWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v8);
  v4 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = a2;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "presentIfAllowedAndLockWithCompletion: completion called (finished: %{BOOL}u)", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (a2)
  {
    [WeakRetained _presentLockUIAnimated:0 withCompletion:0];
  }

  [v6 _evaluateTriggerDetectionState];
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }

  os_activity_scope_leave(&v8);
}

- (BOOL)suppressNotificationPresentation
{
  if (([(AMAmbientDefaults *)self->_ambientDefaults isFirstPresentation]& 1) != 0)
  {
    return 1;
  }

  else
  {
    return [(AMAmbientDefaults *)self->_ambientDefaults notificationsEnabled]^ 1;
  }
}

- (void)redModeTriggerManager:(id)a3 didUpdateRedModeTriggeredState:(BOOL)a4
{
  v4 = a4;
  v8 = *MEMORY[0x277D85DE8];
  v6 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Trigger manager toggling ambient red mode [ enabled : %{BOOL}d ]", v7, 8u);
  }

  [(SBAmbientPresentationController *)self _setAmbientDisplayStyle:v4 forReason:@"Red Mode Trigger"];
}

- (void)ambientTransientOverlayViewController:(id)a3 viewDidDisappear:(BOOL)a4
{
  if (self->_transientOverlay == a3)
  {
    [(SBAmbientPresentationController *)self _setPresented:0 animated:0];
  }
}

- (void)ambientTransientOverlayViewControllerWillBeginConfiguration:(id)a3
{
  if ([(SBAmbientPresentationController *)self ambientDisplayStyle]== 1)
  {
    [(SBAmbientPresentationController *)self _setAmbientDisplayStyle:0 forReason:@"Configuration"];
  }

  [(SBAmbientPresentationController *)self _evaluateRedModeTriggerDetectionState];

  [(SBAmbientPresentationController *)self _evaluateAuthenticationIdleTimerEnablement];
}

- (void)ambientTransientOverlayViewControllerWillEndConfiguration:(id)a3
{
  [(SBAmbientPresentationController *)self _setAmbientDisplayStyle:[(SBAmbientPresentationController *)self _isRedModeTriggered] forReason:@"Configuration"];
  [(SBAmbientPresentationController *)self _evaluateRedModeTriggerDetectionState];

  [(SBAmbientPresentationController *)self _evaluateAuthenticationIdleTimerEnablement];
}

- (void)backlightController:(id)a3 didTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5
{
  [(SBAmbientPresentationController *)self _evaluateBumpToWakeEnablement:a3];
  [(SBAmbientPresentationController *)self _evaluateAuthenticationIdleTimerEnablement];
  telemetryEmitter = self->_telemetryEmitter;
  presented = self->_presented;
  v9 = [(SBAmbientTransientOverlayViewController *)self->_transientOverlay activeConfiguration];
  [(SBAmbientTelemetryEmitter *)telemetryEmitter logTelemetryForAmbientPresented:presented withBacklightState:a4 screenOffWithConfiguration:v9];
}

- (BOOL)wakeToContentForWakeDestination:(id)a3 unlockSource:(int)a4
{
  if (a4 == 32)
  {
    return 0;
  }

  [(SBAmbientPresentationController *)self _evaluatePresentationStateIgnoreLockState:0 animated:0 withCompletion:0];

  return [(SBAmbientPresentationController *)self isPresented];
}

- (void)ambientIdleTimerController:(id)a3 didChangeIdleTimerBehavior:(id)a4
{
  v6 = a3;
  [(SBAmbientTransientOverlayViewController *)self->_transientOverlay setAmbientIdleTimerBehaviorProvider:a4];
  if ([(SBAmbientPresentationController *)self isPresented])
  {
    -[SBAmbientTelemetryEmitter logTelemetryForSleepSuppressionActive:](self->_telemetryEmitter, "logTelemetryForSleepSuppressionActive:", [v6 isAmbientSuppressed]);
  }
}

- (void)ambientIdleTimerControllerSuppressionDidEnd:(id)a3
{
  if (self->_presented || self->_presentationRequested)
  {
    [(SBLockScreenManager *)self->_lockScreenManager requestUserAttentionScreenWakeFromSource:13 reason:@"Ambient suppression ended"];
  }
}

- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4
{
  v4 = a4;
  [v4 updateOrientationPreferencesWithBlock:&__block_literal_global_392];
  [v4 updateZOrderLevelPreferencesWithBlock:&__block_literal_global_102];
}

void __75__SBAmbientPresentationController_updatePreferencesForParticipant_updater___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setSupportedOrientations:24];
  [v2 setCanDetermineActiveOrientation:1];
}

- (id)timeIntervalsWithReasonsForScheduledTimersForAmbientScheduledAlarmObserver:(id)a3
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"SBAmbientAlarmScheduledTimerReasonRedModeOverride";
  v5[1] = @"SBAmbientAlarmScheduledTimerReasonDisplayWake";
  v6[0] = &unk_28336F760;
  v6[1] = &unk_28336F760;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (void)scheduledAlarmObserver:(id)a3 timerFiredForReason:(id)a4
{
  v5 = a4;
  if ([v5 isEqualToString:@"SBAmbientAlarmScheduledTimerReasonRedModeOverride"])
  {
    v6 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Suppressing ambient red mode for upcoming alarm", buf, 2u);
    }

    self->_suppressRedModeDisplayStyleForUpcomingAlarm = 1;
    [(SBAmbientPresentationController *)self _setAmbientDisplayStyle:0 forReason:@"Alarm"];
    [(SBAmbientPresentationController *)self _evaluateRedModeTriggerDetectionState];
  }

  else if ([v5 isEqualToString:@"SBAmbientAlarmScheduledTimerReasonDisplayWake"] && -[SBAmbientSettings enableSuppression](self->_ambientSettings, "enableSuppression"))
  {
    v7 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Waking up display for upcoming alarm", v8, 2u);
    }

    self->_suppressIdleTimerForUpcomingAlarm = 1;
    [(SBAmbientPresentationController *)self _evaluateIdleTimerEnablement];
    [(SBAmbientPresentationController *)self _evaluateIdleTimerDisablement];
    if ([(SBBacklightController *)self->_backlightController shouldTurnOnScreenForBacklightSource:42])
    {
      [(SBBacklightController *)self->_backlightController setBacklightState:1 source:42];
    }
  }
}

- (void)secureAppOfTypeDidBegin:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if ([(SBAmbientPresentationController *)self isPresented])
  {
    v4 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = secureAppTypeName();
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Dismissing Ambient for secure app %{public}@ begin", &v6, 0xCu);
    }

    [(SBAmbientPresentationController *)self _setPresented:0 animated:1];
  }
}

- (void)pocketStateMonitor:(id)a3 pocketStateDidChangeFrom:(int64_t)a4 to:(int64_t)a5
{
  if (!a4 || !a5)
  {
    [(SBAmbientPresentationController *)self _evaluatePresentationState];
  }
}

- (void)liftToWakeController:(id)a3 didObserveTransition:(int64_t)a4 deviceOrientation:(int64_t)a5
{
  if (a4 == 4)
  {
    [(SBAmbientTelemetryEmitter *)self->_telemetryEmitter logTelemetryForBumpEventIgnored:0, 4, a5];
  }
}

- (void)liftToWakeController:(id)a3 didIgnoreTransition:(int64_t)a4
{
  if (a4 == 4)
  {
    [(SBAmbientTelemetryEmitter *)self->_telemetryEmitter logTelemetryForBumpEventIgnored:1];
  }
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)handleEvent:(id)a3
{
  v4 = [a3 type];
  v5 = 0;
  if (v4 == 9 || v4 == 25)
  {
    goto LABEL_5;
  }

  if (v4 == 36)
  {
    v5 = 1;
LABEL_5:
    [(SBAmbientPresentationController *)self _setCoverSheetPresentedByUserGesture:v5];
  }

  return 0;
}

- (void)keybag:(id)a3 extendedStateDidChange:(id)a4
{
  v5 = a4;
  v4 = v5;
  BSDispatchMain();
}

- (void)_lockStateDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 valueForKey:@"SBAggregateLockStateKey"];
  v6 = [v5 integerValue];

  if (v6 || !self->_presentationRequested)
  {
    [(SBAmbientPresentationController *)self _evaluateTriggerDetectionState];
  }

  [(SBAmbientPresentationController *)self _updateViewObstructedSuppressionManager];
}

- (void)_carPlayPresentationDidChange:(id)a3
{
  if ([(SBAmbientPresentationController *)self isPresented])
  {
    v4 = [SBApp notificationDispatcher];
    v5 = [v4 isCarDestinationActive];

    if (v5)
    {

      [(SBAmbientPresentationController *)self _evaluatePresentationState];
    }
  }
}

- (BOOL)_isAmbientPresentationAllowedIgnoreLockState:(BOOL)a3
{
  v36 = a3;
  v70 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v37 = [(SBAmbientPresentationController *)self _isAmbientModeUserSettingEnabled];
  v5 = +[SBLockStateAggregator sharedInstance];
  v6 = [v5 lockState];

  v8 = (v6 & 4) == 0 && v6 != 0;
  v35 = v8;
  v9 = [SBApp authenticationController];
  v34 = [v9 hasAuthenticatedAtLeastOnceSinceBoot];

  v10 = [SBApp notificationDispatcher];
  v11 = [v10 isCarDestinationActive];

  v12 = +[SBUIController sharedInstanceIfExists];
  v33 = [v12 isConnectedToWindowedAccessory];

  v13 = [WeakRetained coverSheetViewController];
  if ([(SBSecureAppManager *)self->_secureAppManager hasSecureApp])
  {
    v32 = 1;
  }

  else
  {
    v32 = [v13 isHostingAnApp];
  }

  v14 = +[SBSetupManager sharedInstance];
  v31 = [v14 isInSetupMode];

  v15 = [(SBPocketStateMonitor *)self->_pocketStateMonitor pocketState];
  isViewObstructedSuppressionActive = self->_isViewObstructedSuppressionActive;
  v16 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
  v17 = [v16 hasBeenDismissedSinceKeybagLock];

  if (v17)
  {
    v29 = [v13 isInteractingWithNotificationList];
    v18 = [(SBAmbientPresentationController *)self _isCoverSheetPresentedByUserGesture];
  }

  else
  {
    v29 = 0;
    v18 = 0;
  }

  v19 = [v13 coverSheetSpotlightPresenter];
  v20 = [v19 isSpotlightPresented];

  v21 = [v13 isShowingTodayView];
  v22 = WeakRetained;
  if ([(SBAmbientPresentationController *)self isPresented])
  {
    v23 = 0;
  }

  else
  {
    v24 = [WeakRetained transientOverlayPresenter];
    v23 = [v24 hasActivePresentation];
  }

  if (v37)
  {
    v25 = v11;
    if (!(((v35 || v36) & v34 ^ 1 | v11 | v33 | v32) & 1 | v31 & 1 | (v15 != 0) | isViewObstructedSuppressionActive | v29 & 1 | v18 | v20 & 1))
    {
      v26 = (v21 | v23) ^ 1;
      goto LABEL_21;
    }
  }

  else
  {
    v25 = v11;
  }

  v26 = 0;
LABEL_21:
  v27 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67112960;
    v39 = v26 & 1;
    v40 = 1024;
    v41 = v37;
    v42 = 1024;
    v43 = v35;
    v44 = 1024;
    v45 = v36;
    v46 = 1024;
    v47 = v34;
    v48 = 1024;
    v49 = v25;
    v50 = 1024;
    v51 = v33;
    v52 = 1024;
    v53 = v32;
    v54 = 1024;
    v55 = v31;
    v56 = 1024;
    v57 = v15 == 0;
    v58 = 1024;
    v59 = isViewObstructedSuppressionActive;
    v60 = 1024;
    v61 = v29;
    v62 = 1024;
    v63 = v18;
    v64 = 1024;
    v65 = v20;
    v66 = 1024;
    v67 = v21;
    v68 = 1024;
    v69 = v23;
    _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "Ambient presentation allowed = %{BOOL}d [ enabled:%{BOOL}d ; lockedButNotBlocked:%{BOOL}d ; ignoreLockState:%{BOOL}d ; unlockedSinceBoot:%{BOOL}d ; carplay:%{BOOL}d ; screenOccludingAccessory:%{BOOL}d ; hostingApp:%{BOOL}d ; isInSetupMode:%{BOOL}d ; isOutOfPocket:%{BOOL}d ; isViewObstructed:%{BOOL}d ; listInteraction:%{BOOL}d ; pullDownCoverSheet:%{BOOL}d ; spotlight:%{BOOL}d ; todayView:%{BOOL}d ; transientOverlayPreventsPresentation:%{BOOL}d ]", buf, 0x62u);
  }

  return v26 & 1;
}

- (void)_updateAmbientTriggerState:(int64_t)a3 analogousTriggerEvents:(BOOL)a4 withReason:(id)a5
{
  v5 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = AMStringForAmbientTriggerState();
    v11 = 138543874;
    v12 = v10;
    v13 = 2114;
    v14 = v8;
    v15 = 1024;
    v16 = v5;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Updating ambient presentation trigger state to '%{public}@' with reason: '%{public}@' [ analogousTriggerEvents : %{BOOL}d ]", &v11, 0x1Cu);
  }

  self->_presentationRequested = a3 == 1;
  [(SBAmbientPresentationController *)self _evaluatePresentationState];
  [(SBAmbientPresentationController *)self _updateScheduledAlarmObserverForPresentationRequested:self->_presentationRequested];
}

- (void)_updateAmbientMountState:(int64_t)a3 withReason:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMStringForAmbientMountState();
    v9 = 138543618;
    v10 = v8;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Updating ambient presentation mount state to '%{public}@' with reason: '%{public}@'", &v9, 0x16u);
  }

  [(SBAmbientPresentationController *)self _updatePresentationPossibleForMountState:a3];
}

- (void)_evaluateTriggerDetectionStateIgnoreLockState:(BOOL)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [(SBAmbientPresentationController *)self _isAmbientPresentationAllowedIgnoreLockState:a3];
  v5 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Evaluating trigger detection state [ shouldEnable : %{BOOL}d ]", v6, 8u);
  }

  [(AMAmbientPresentationTriggerManager *)self->_ambientTriggerManager setPresentationDetectionEnabled:v4];
  [(SBAmbientPresentationController *)self _evaluateRedModeTriggerDetectionState];
}

- (BOOL)_evaluatePresentationStateIgnoreLockState:(BOOL)a3 animated:(BOOL)a4 withCompletion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = self->_presentationRequested && [(SBAmbientPresentationController *)self _isAmbientPresentationAllowedIgnoreLockState:v6];
  [(SBAmbientPresentationController *)self _setPresented:v9 animated:v5 withCompletion:v8];
  disableAlwaysOnAssertion = self->_disableAlwaysOnAssertion;
  if (self->_presentationRequested)
  {
    if (!disableAlwaysOnAssertion)
    {
      v11 = MEMORY[0x277CF0868];
      v12 = [MEMORY[0x277CF08F8] disableAlwaysOn];
      v18[0] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      v14 = [v11 acquireWithExplanation:@"ambient" observer:0 attributes:v13];
      v15 = self->_disableAlwaysOnAssertion;
      self->_disableAlwaysOnAssertion = v14;
    }
  }

  else if (disableAlwaysOnAssertion)
  {
    [(BLSAssertion *)disableAlwaysOnAssertion invalidate];
    v16 = self->_disableAlwaysOnAssertion;
    self->_disableAlwaysOnAssertion = 0;
  }

  [(SBAmbientPresentationController *)self _updateSleepSuppression];
  [(SBAmbientPresentationController *)self _evaluateBumpToWakeEnablement];
  [(SBAmbientPresentationController *)self _updateMotionDetection];
  [(SBAmbientPresentationController *)self _evaluateIdleTimerEnablement];
  [(SBAmbientPresentationController *)self _evaluateTriggerDetectionStateIgnoreLockState:v6];

  return v9;
}

- (void)_evaluateBumpToWakeEnablement
{
  if (![(SBBacklightController *)self->_backlightController screenIsOn]&& self->_presentationRequested && [(SBAmbientPresentationController *)self _isBumpToWakeUserSettingEnabled])
  {
    if (self->_bumpToWakeAssertion)
    {
      return;
    }

    v3 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Enabling bump-to-wake", buf, 2u);
    }

    v4 = [(SBLiftToWakeController *)self->_liftToWakeController acquireBumpToWakeEnableAssertionForReason:@"Ambient"];
    bumpToWakeAssertion = self->_bumpToWakeAssertion;
    self->_bumpToWakeAssertion = v4;
  }

  else
  {
    if (!self->_bumpToWakeAssertion)
    {
      return;
    }

    v6 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Disabling bump-to-wake", v7, 2u);
    }

    [(BSInvalidatable *)self->_bumpToWakeAssertion invalidate];
    bumpToWakeAssertion = self->_bumpToWakeAssertion;
    self->_bumpToWakeAssertion = 0;
  }
}

- (void)_evaluateIdleTimerEnablement
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_presentationRequested && !self->_suppressIdleTimerForUpcomingAlarm)
  {
    v3 = ![(SBAmbientPresentationController *)self _isAmbientAlwaysOnUserSettingEnabled];
  }

  else
  {
    v3 = 0;
  }

  v4 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    presentationRequested = self->_presentationRequested;
    suppressIdleTimerForUpcomingAlarm = self->_suppressIdleTimerForUpcomingAlarm;
    v7 = [(SBAmbientPresentationController *)self _isAmbientAlwaysOnUserSettingEnabled];
    v8 = self->_enableIdleTimerAssertion != 0;
    *buf = 67110144;
    v17 = v3;
    v18 = 1024;
    v19 = presentationRequested;
    v20 = 1024;
    v21 = suppressIdleTimerForUpcomingAlarm;
    v22 = 1024;
    v23 = v7;
    v24 = 1024;
    v25 = v8;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Evaluating idle timer enablement - Enable = %{BOOL}d [ presentationRequested:%{BOOL}d ; suppressForAlarm:%{BOOL}d ; userSetting:%{BOOL}d ; assertion=%{BOOL}d ]", buf, 0x20u);
  }

  enableIdleTimerAssertion = self->_enableIdleTimerAssertion;
  if (v3)
  {
    if (enableIdleTimerAssertion)
    {
      return;
    }

    v10 = MEMORY[0x277CF0868];
    v11 = [MEMORY[0x277CEA5C8] allowAmbientIdleTimer];
    v15 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v13 = [v10 acquireWithExplanation:@"Ambient Always-On Setting" observer:0 attributes:v12];
    v14 = self->_enableIdleTimerAssertion;
    self->_enableIdleTimerAssertion = v13;
  }

  else
  {
    if (!enableIdleTimerAssertion)
    {
      return;
    }

    [(BLSAssertion *)enableIdleTimerAssertion invalidate];
    v11 = self->_enableIdleTimerAssertion;
    self->_enableIdleTimerAssertion = 0;
  }
}

- (void)_evaluateIdleTimerDisablement
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = self->_presentationRequested && self->_suppressIdleTimerForUpcomingAlarm && [(SBAmbientSettings *)self->_ambientSettings enableSuppression];
  v4 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    presentationRequested = self->_presentationRequested;
    suppressIdleTimerForUpcomingAlarm = self->_suppressIdleTimerForUpcomingAlarm;
    v7 = [(SBAmbientSettings *)self->_ambientSettings enableSuppression];
    v8 = self->_disableIdleTimerAssertion != 0;
    v13[0] = 67110144;
    v13[1] = v3;
    v14 = 1024;
    v15 = presentationRequested;
    v16 = 1024;
    v17 = suppressIdleTimerForUpcomingAlarm;
    v18 = 1024;
    v19 = v7;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Evaluating idle timer disablement - Disable = %{BOOL}d [ presentationRequested:%{BOOL}d ; suppressForAlarm:%{BOOL}d ; suppressionEnabled:%{BOOL}d ; assertion=%{BOOL}d ]", v13, 0x20u);
  }

  disableIdleTimerAssertion = self->_disableIdleTimerAssertion;
  if (v3)
  {
    if (disableIdleTimerAssertion)
    {
      return;
    }

    v10 = +[SBIdleTimerGlobalCoordinator sharedInstanceIfExists];
    v11 = [v10 acquireIdleTimerDisableAssertionForReason:@"Ambient Suppression"];
    v12 = self->_disableIdleTimerAssertion;
    self->_disableIdleTimerAssertion = v11;
  }

  else
  {
    if (!disableIdleTimerAssertion)
    {
      return;
    }

    [(BSInvalidatable *)disableIdleTimerAssertion invalidate];
    v10 = self->_disableIdleTimerAssertion;
    self->_disableIdleTimerAssertion = 0;
  }
}

- (void)_evaluateAuthenticationIdleTimerEnablement
{
  v3 = [(SBAmbientPresentationController *)self isPresented];
  v4 = [(SBBacklightController *)self->_backlightController screenIsOn];
  v5 = [(SBAmbientTransientOverlayViewController *)self->_transientOverlay isConfiguringUIVisible];
  v6 = (v5 | [(SBAmbientTransientOverlayViewController *)self->_transientOverlay wantsIdleTimerDisabled]) ^ 1;
  authenticationIdleTimer = self->_authenticationIdleTimer;

  [(SBAmbientAuthenticationIdleTimer *)authenticationIdleTimer setEnabled:(v3 && v4) & v6];
}

- (void)_setSystemApertureProudLockElementHidden:(BOOL)a3
{
  systemApertureLockElementSuppressionAssertion = self->_systemApertureLockElementSuppressionAssertion;
  if (a3)
  {
    if (systemApertureLockElementSuppressionAssertion)
    {
      return;
    }

    v5 = [(SBLockScreenManager *)self->_lockScreenManager acquireSystemApertureLockElementSuppressionAssertionWithReason:@"Ambient presented"];
  }

  else
  {
    if (!systemApertureLockElementSuppressionAssertion)
    {
      return;
    }

    [(BSInvalidatable *)systemApertureLockElementSuppressionAssertion invalidate];
    v5 = 0;
  }

  v6 = self->_systemApertureLockElementSuppressionAssertion;
  self->_systemApertureLockElementSuppressionAssertion = v5;
}

- (void)_displayTransientLockElementIfNecessaryForKeyBagState:(id)a3
{
  v4 = a3;
  v5 = [(SBFMobileKeyBagState *)self->_lastKeyBagState isEffectivelyLocked];
  v6 = [v4 isEffectivelyLocked];
  if ((v5 & 1) == 0 && v6 && !self->_shouldSuppressTransientLockIfKeyBagLocks)
  {
    [(SBAmbientPresentationController *)self _setSystemApertureProudLockElementHidden:0];
    if ((SBUIIsSystemApertureEnabled() & 1) == 0)
    {
      [(SBAmbientTransientOverlayViewController *)self->_transientOverlay displayTransientProudLock];
    }

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideLockElement object:0];
    [(SBAmbientPresentationController *)self performSelector:sel__hideLockElement withObject:0 afterDelay:2.0];
  }

  [(SBAmbientPresentationController *)self _resetTransientLockSuppressionFlag];
  lastKeyBagState = self->_lastKeyBagState;
  self->_lastKeyBagState = v4;
}

- (void)_resetTransientLockSuppressionFlag
{
  if (self->_shouldSuppressTransientLockIfKeyBagLocks)
  {
    self->_shouldSuppressTransientLockIfKeyBagLocks = 0;
  }
}

- (void)_updateSleepSuppression
{
  ambientIdleTimerController = self->_ambientIdleTimerController;
  v3 = self->_presentationRequested && [(SBAmbientPresentationController *)self _shouldSuppressForSleep];

  [(SBAmbientIdleTimerController *)ambientIdleTimerController setSuppressForSleep:v3];
}

- (void)_setPresented:(BOOL)a3 animated:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a3;
  v73 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = v8;
  if (self->_presented == v6)
  {
    if (v8)
    {
      (*(v8 + 2))(v8, 0);
    }
  }

  else
  {
    v41 = a4;
    v10 = self->_presentationGeneration + 1;
    self->_presentationGeneration = v10;
    [(SBAmbientPresentationController *)self _updateTraitsArbiterParticipantForPresented:v6];
    v11 = [(SBAmbientPresentationController *)self _connectedChargerIdentifier];
    v12 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v68 = v6;
      v69 = 2114;
      v70 = v11;
      v71 = 2048;
      v72 = v10;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Setting ambient overlay presented = %{BOOL}d with chargerId = %{public}@ (generation %lu)", buf, 0x1Cu);
    }

    self->_presented = v6;
    if (v6)
    {
      [(SBAmbientPresentationController *)self _updatePosterBoardWithChargerIdentifier:v11];
    }

    else
    {
      [(SBAmbientPresentationController *)self _setAmbientTransientOverlayIsShowingPasscode:0];
    }

    v42 = v11;
    v13 = [(SBAmbientPresentationController *)self windowScene];
    if ([v13 isMainDisplayWindowScene])
    {
      [(SBAmbientPresentationController *)self _setSystemApertureProudLockElementHidden:v6];
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v14 = self->_observers;
    v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v61 objects:v66 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v62;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v62 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v61 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v19 ambientPresentationController:self willUpdatePresented:self->_presented];
          }
        }

        v16 = [(NSHashTable *)v14 countByEnumeratingWithState:&v61 objects:v66 count:16];
      }

      while (v16);
    }

    presented = self->_presented;
    [(SBAmbientPresentationController *)self _dismissAllOtherAmbientTransientOverlays];
    if (presented)
    {
      [(SBAmbientPresentationController *)self _setAmbientDisplayStyle:[(SBAmbientPresentationController *)self _isRedModeTriggered] forReason:@"Presentation"];
      v21 = objc_alloc_init(SBAmbientTransientOverlayViewController);
      transientOverlay = self->_transientOverlay;
      self->_transientOverlay = v21;

      [(SBAmbientTransientOverlayViewController *)self->_transientOverlay setDelegate:self];
      v23 = self->_transientOverlay;
      v24 = [(SBAmbientIdleTimerController *)self->_ambientIdleTimerController idleTimerBehaviorProvider];
      [(SBAmbientTransientOverlayViewController *)v23 setAmbientIdleTimerBehaviorProvider:v24];

      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke;
      v60[3] = &unk_2783A8C18;
      v60[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v60];
      v25 = [[SBWorkspaceTransientOverlay alloc] initWithViewController:self->_transientOverlay];
      v26 = +[SBWorkspace mainWorkspace];
      v27 = [v13 _sbDisplayConfiguration];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke_2;
      v54[3] = &unk_2783C1868;
      v58 = v10;
      v59 = v41;
      v55 = v25;
      v56 = self;
      v57 = v9;
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke_6;
      v53[3] = &unk_2783B3E70;
      v53[4] = self;
      v53[5] = v10;
      v28 = v25;
      [v26 requestTransitionWithOptions:0 displayConfiguration:v27 builder:v54 validator:v53];
    }

    else
    {
      v29 = [v13 controlCenterController];
      if ([v29 isPresented])
      {
        [v29 dismissAnimated:1];
      }

      [(SBAmbientPresentationController *)self _invalidateTransientOverlayWindowTraitsArbiterParticipantIfNeeded];
      if (self->_transientOverlay)
      {
        v30 = [[SBWorkspaceTransientOverlay alloc] initWithViewController:self->_transientOverlay];
        v31 = +[SBWorkspace mainWorkspace];
        v32 = [v13 _sbDisplayConfiguration];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke_142;
        v48[3] = &unk_2783C1890;
        v51 = v10;
        v49 = v30;
        v52 = v41;
        v50 = v9;
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke_5_151;
        v47[3] = &unk_2783B3E70;
        v47[4] = self;
        v47[5] = v10;
        v33 = v30;
        [v31 requestTransitionWithOptions:0 displayConfiguration:v32 builder:v48 validator:v47];
      }

      else if (v9)
      {
        v9[2](v9, 0);
      }

      v34 = self->_transientOverlay;
      self->_transientOverlay = 0;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v35 = self->_observers;
    v36 = [(NSHashTable *)v35 countByEnumeratingWithState:&v43 objects:v65 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v44;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v43 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v40 ambientPresentationController:self didUpdatePresented:self->_presented];
          }
        }

        v37 = [(NSHashTable *)v35 countByEnumeratingWithState:&v43 objects:v65 count:16];
      }

      while (v37);
    }

    [v13 isMainDisplayWindowScene];
    IOPMUpdateDominoState();
    [(SBAmbientPresentationController *)self _updateTelemetryIsPresented:self->_presented];
  }

  [(SBAmbientPresentationController *)self _evaluateAuthenticationIdleTimerEnablement];
}

void __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) view];
  [v1 layoutIfNeeded];
}

void __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEventLabelWithFormat:@"PresentAmbientTransientOverlay(%llu)", *(a1 + 56)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke_3;
  v10[3] = &unk_2783AA298;
  v4 = *(a1 + 32);
  v13 = *(a1 + 64);
  v5 = *(a1 + 40);
  v11 = v4;
  v12 = v5;
  [v3 modifyTransientOverlayContext:v10];
  [v3 modifyApplicationContext:&__block_literal_global_139_1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke_5;
  v8[3] = &unk_2783A9C98;
  v6 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v9 = v6;
  v7 = [v3 addCompletionHandler:v8];
}

void __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTransitionType:0];
  [v3 setTransientOverlay:*(a1 + 32)];
  [v3 setAnimated:*(a1 + 48)];
  [v3 setShouldDismissSiriUponPresentation:{objc_msgSend(*(*(a1 + 40) + 24), "dismissesSiriForPresentation")}];
}

void __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke_5(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 136) lockScreenEnvironment];
  v4 = [v2 passcodeViewPresenter];

  if ([v4 isPasscodeLockVisible])
  {
    [v4 setPasscodeLockVisible:0 animated:0];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 1);
  }
}

BOOL __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke_6(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 280);
  if (v2 != v1)
  {
    v4 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(*(a1 + 32) + 280);
      v8 = 134218240;
      v9 = v6;
      v10 = 2048;
      v11 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Skipping superseded ambient overlay presentation (current generation %lu  request generation %lu)", &v8, 0x16u);
    }
  }

  return v2 == v1;
}

void __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke_142(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEventLabelWithFormat:@"DismissAmbientTransientOverlay(%llu)", *(a1 + 48)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke_2_146;
  v7[3] = &unk_2783A9E50;
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  [v3 modifyTransientOverlayContext:v7];
  [v3 modifyApplicationContext:&__block_literal_global_149_1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke_4_150;
  v5[3] = &unk_2783A9C70;
  v6 = *(a1 + 40);
  v4 = [v3 addCompletionHandler:v5];
}

void __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke_2_146(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTransitionType:1];
  [v3 setTransientOverlay:*(a1 + 32)];
  [v3 setAnimated:*(a1 + 40)];
}

uint64_t __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke_4_150(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __73__SBAmbientPresentationController__setPresented_animated_withCompletion___block_invoke_5_151(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 280) != *(a1 + 40))
  {
    v3 = a2;
    v4 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(*(a1 + 32) + 280);
      v8 = 134218240;
      v9 = v6;
      v10 = 2048;
      v11 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Forcing superseded ambient overlay dismissal to be unanimated (current generation %lu  request generation %lu)", &v8, 0x16u);
    }

    [v3 modifyTransientOverlayContext:&__block_literal_global_154_2];
  }

  return 1;
}

- (void)_dismissAllOtherAmbientTransientOverlays
{
  v7 = [a2 succinctDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_fault_impl(&dword_21ED4E000, a4, OS_LOG_TYPE_FAULT, "Found untracked transient overlay instance %@. Dismissing.", a1, 0xCu);
}

- (BOOL)_isRedModeTriggered
{
  v3 = [(SBAmbientPresentationController *)self _isNightModeUserSettingEffectivelyEnabled];
  if (v3)
  {
    redModeTriggerManager = self->_redModeTriggerManager;

    LOBYTE(v3) = [(AMRedModeTriggerManager *)redModeTriggerManager isRedModeTriggered];
  }

  return v3;
}

- (void)_setAmbientDisplayStyle:(int64_t)a3 forReason:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self->_ambientDisplayStyle != a3)
  {
    v7 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = AMUIAmbientDisplayStyleString();
      *buf = 138543618;
      v21 = v8;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Setting ambient display style to %{public}@ for reason %{public}@", buf, 0x16u);
    }

    self->_ambientDisplayStyle = a3;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = self->_observers;
    v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [v14 ambientPresentationController:self didUpdateAmbientDisplayStyle:{a3, v15}];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    if ([(SBAmbientPresentationController *)self isPresented])
    {
      [(SBAmbientTelemetryEmitter *)self->_telemetryEmitter logTelemetryForAmbientPresented:self->_presented displayStyle:self->_ambientDisplayStyle];
    }
  }
}

- (void)_setAmbientTransientOverlayIsShowingPasscode:(BOOL)a3
{
  if (self->_ambientTransientOverlayIsShowingPasscode != a3)
  {
    self->_ambientTransientOverlayIsShowingPasscode = a3;
    v5 = @"Dismissed";
    if (a3)
    {
      v5 = @"Presented";
    }

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Ambient Passcode %@", v5];
    [(SBLockScreenManager *)self->_lockScreenManager reevaluateSystemApertureLockElementSuppressionWithReason:v6];
  }
}

- (void)_setCoverSheetPresentedByUserGesture:(BOOL)a3
{
  if (self->_coverSheetPresentedByUserGesture != a3)
  {
    self->_coverSheetPresentedByUserGesture = a3;
    [(SBAmbientPresentationController *)self _evaluatePresentationState];
  }
}

- (void)_updatePresentationPossibleForMountState:(int64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  if (self->_presentationPossible)
  {
    self->_presentationPossible = a3 == 1;
    if (!a3)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v4 = self->_observers;
      v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v25;
        do
        {
          v8 = 0;
          do
          {
            if (*v25 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v24 + 1) + 8 * v8);
            if (objc_opt_respondsToSelector())
            {
              [v9 ambientPresentationControllerCancelledPossiblePresentation:self];
            }

            ++v8;
          }

          while (v6 != v8);
          v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v6);
      }
    }
  }

  else if (a3 == 1)
  {
    self->_presentationPossible = 1;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = self->_observers;
    v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 ambientPresentationControllerWillPossiblyPresent:self];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v12);
    }

    if (!self->_presentationPossibleTimeoutConfigured)
    {
      self->_presentationPossibleTimeoutConfigured = 1;
      objc_initWeak(&location, self);
      v16 = dispatch_time(0, 5000000000);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __76__SBAmbientPresentationController__updatePresentationPossibleForMountState___block_invoke;
      v17[3] = &unk_2783A8C68;
      objc_copyWeak(&v18, &location);
      dispatch_after(v16, MEMORY[0x277D85CD0], v17);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

void __76__SBAmbientPresentationController__updatePresentationPossibleForMountState___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (*(WeakRetained + 96) == 1)
  {
    *(WeakRetained + 48) = 0;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = WeakRetained[4];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 ambientPresentationControllerCancelledPossiblePresentation:{v2, v9}];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (void)_updatePosterBoardWithChargerIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];
  v6 = [v5 substringToIndex:7];

  v7 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = v6;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Pushing chargerId '%@' to PosterBoard", buf, 0x16u);
  }

  v8 = objc_alloc_init(MEMORY[0x277D3EA00]);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__SBAmbientPresentationController__updatePosterBoardWithChargerIdentifier___block_invoke;
    v10[3] = &unk_2783B2F80;
    v11 = v6;
    v12 = v3;
    [v8 notifyActiveChargerIdentifierDidUpdate:v12 completion:v10];

    v9 = v11;
  }

  else
  {
    v9 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SBAmbientPresentationController *)v6 _updatePosterBoardWithChargerIdentifier:v9];
    }
  }
}

void __75__SBAmbientPresentationController__updatePosterBoardWithChargerIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogAmbientPresentation();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75__SBAmbientPresentationController__updatePosterBoardWithChargerIdentifier___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@) Successfully pushed charger update of '%@' to PosterBoard", &v8, 0x16u);
  }
}

- (void)_updateMotionDetection
{
  v3 = [(SBAmbientIdleTimerController *)self->_ambientIdleTimerController isUserSleepPredicted];
  v4 = [(SBAmbientMotionDetectionWakeAttributeMonitor *)self->_motionDetectionWakeAttributeMonitor shouldEnableMotionDetectionWake];
  if (self->_presentationRequested && (v3 || v4) && [(SBAmbientPresentationController *)self _isMotionToWakePermitted]&& [(SBAmbientPresentationController *)self _isMotionToWakeUserSettingEnabled])
  {
    if (self->_motionToWakeEnableAssertion)
    {
      return;
    }

    v5 = [(SBLockScreenManager *)self->_lockScreenManager acquireMotionDetectionWakeEnableAssertionWithReason:@"Ambient Nighttime"];
    motionToWakeEnableAssertion = self->_motionToWakeEnableAssertion;
    self->_motionToWakeEnableAssertion = v5;

    telemetryEmitter = self->_telemetryEmitter;
    v8 = self->_motionToWakeEnableAssertion != 0;
  }

  else
  {
    v9 = self->_motionToWakeEnableAssertion;
    if (!v9)
    {
      return;
    }

    [(BSInvalidatable *)v9 invalidate];
    v10 = self->_motionToWakeEnableAssertion;
    self->_motionToWakeEnableAssertion = 0;

    telemetryEmitter = self->_telemetryEmitter;
    v8 = 0;
  }

  [(SBAmbientTelemetryEmitter *)telemetryEmitter logTelemetryForMotionToWakeEnabled:v8];
}

- (void)_updateTraitsArbiterParticipantForPresented:(BOOL)a3
{
  traitsArbiterParticipant = self->_traitsArbiterParticipant;
  if (a3)
  {
    if (traitsArbiterParticipant)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v9 = [WeakRetained traitsArbiter];

    v6 = [v9 acquireParticipantWithRole:@"SBTraitsParticipantRoleAmbient" delegate:self];
    v7 = self->_traitsArbiterParticipant;
    self->_traitsArbiterParticipant = v6;

    [(TRAParticipant *)self->_traitsArbiterParticipant setNeedsUpdatePreferencesWithReason:@"Ambient Presented"];
    v8 = v9;
  }

  else
  {
    if (!traitsArbiterParticipant)
    {
      return;
    }

    [(TRAParticipant *)traitsArbiterParticipant invalidate];
    v8 = self->_traitsArbiterParticipant;
    self->_traitsArbiterParticipant = 0;
  }
}

- (void)_invalidateTransientOverlayWindowTraitsArbiterParticipantIfNeeded
{
  v3 = [(SBAmbientTransientOverlayViewController *)self->_transientOverlay viewIfLoaded];
  v4 = [v3 window];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;

  v8 = [(SBAmbientTransientOverlayViewController *)self->_transientOverlay isForegroundActive];
  v9 = v11;
  if (v11 && v8)
  {
    v10 = [v11 traitsParticipant];
    [v10 invalidate];

    v9 = v11;
  }
}

- (void)_updateTelemetryIsPresented:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    [(AMAmbientDefaults *)self->_ambientDefaults setLifetimePresentationCounter:[(AMAmbientDefaults *)self->_ambientDefaults lifetimePresentationCounter]+ 1];
  }

  [(SBAmbientTelemetryEmitter *)self->_telemetryEmitter logTelemetryForAmbientPresented:self->_presented displayStyle:self->_ambientDisplayStyle];
  if (v3)
  {
    telemetryEmitter = self->_telemetryEmitter;
    v6 = [(SBAmbientTransientOverlayViewController *)self->_transientOverlay activeConfiguration];
    v7 = [(SBAmbientTransientOverlayViewController *)self->_transientOverlay activeConfigurationMetadata];
    [(SBAmbientTelemetryEmitter *)telemetryEmitter logTelemetryForAmbientConfigurationUpdate:v6 metadata:v7];

    v8 = self->_telemetryEmitter;
    v9 = [(SBAmbientIdleTimerController *)self->_ambientIdleTimerController isAmbientSuppressed];

    [(SBAmbientTelemetryEmitter *)v8 logTelemetryForSleepSuppressionActive:v9];
  }
}

- (void)_presentLockUIAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v14[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v13[0] = @"SBUILockOptionsAnimateLockScreenActivationKey";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v14[0] = v7;
  v14[1] = MEMORY[0x277CBEC38];
  v13[1] = @"SBUILockOptionsPreserveTransientOverlaysKey";
  v13[2] = @"SBUILockOptionsUseScreenOffModeKey";
  v14[2] = MEMORY[0x277CBEC28];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  lockScreenManager = self->_lockScreenManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__SBAmbientPresentationController__presentLockUIAnimated_withCompletion___block_invoke;
  v11[3] = &unk_2783A9C70;
  v12 = v6;
  v10 = v6;
  [(SBLockScreenManager *)lockScreenManager lockUIFromSource:13 withOptions:v8 completion:v11];
}

uint64_t __73__SBAmbientPresentationController__presentLockUIAnimated_withCompletion___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)_fetchDefaultWidgetStacks
{
  v3 = [MEMORY[0x277D65ED8] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SBAmbientPresentationController__fetchDefaultWidgetStacks__block_invoke;
  v4[3] = &unk_2783A8C18;
  v4[4] = self;
  [v3 performAfterFirstUnlockSinceBootUsingBlock:v4];
}

void __60__SBAmbientPresentationController__fetchDefaultWidgetStacks__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CEB450] sharedInstance];
  v3 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Fetching ambient default stacks from proactive after first unlock", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SBAmbientPresentationController__fetchDefaultWidgetStacks__block_invoke_186;
  v4[3] = &unk_2783C18B8;
  v4[4] = *(a1 + 32);
  [v2 fetchSmartStackOfVariant:3 completionHandler:v4];
}

void __60__SBAmbientPresentationController__fetchDefaultWidgetStacks__block_invoke_186(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count] > 1)
  {
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = [v5 objectAtIndexedSubscript:1];
    v9 = [*(a1 + 32) _widgetDescriptorsForATXStack:v7];
    v10 = [*(a1 + 32) _widgetDescriptorsForATXStack:v8];
    v11 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Setting ambient default proactive stacks: Leading:%@ Trailing:%@", buf, 0x16u);
    }

    if (v9 && v10)
    {
      v12 = *(a1 + 32);
      v14[0] = v9;
      v14[1] = v10;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
      [v12 setDefaultWidgetStacks:v13];
    }
  }

  else
  {
    v7 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__SBAmbientPresentationController__fetchDefaultWidgetStacks__block_invoke_186_cold_1(v6, v7);
    }
  }
}

- (id)_widgetDescriptorsForATXStack:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 smallDefaultStack];
  v5 = v4;
  if (!v4 || ![v4 count])
  {
    v6 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SBAmbientPresentationController *)v5 _widgetDescriptorsForATXStack:v6];
    }

    goto LABEL_20;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (!v7)
  {
LABEL_20:
    v9 = 0;
    goto LABEL_21;
  }

  v8 = v7;
  v17 = v5;
  v18 = v3;
  v9 = 0;
  v10 = *v20;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v19 + 1) + 8 * i);
      v13 = [v12 avocadoDescriptor];
      v14 = [v13 sanitizedDescriptor];

      if (v14)
      {
        if (!v9)
        {
          v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        [v9 addObject:v14];
      }

      else
      {
        v15 = SBLogAmbientPresentation();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v12;
          _os_log_error_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_ERROR, "Widget in proactive default stack is missing a descriptor:%@", buf, 0xCu);
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  }

  while (v8);
  v5 = v17;
  v3 = v18;
LABEL_21:

  return v9;
}

- (id)_connectedChargerIdentifier
{
  v3 = +[SBUIController sharedInstance];
  v4 = [v3 connectedWirelessChargerIdentifier];

  if (!v4)
  {
    v5 = [(SBAmbientPresentationController *)self _fetchConnectedWirelessChargerIdentifier];
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v6 = [(SBAmbientPresentationController *)self _fetchConnectedWirelessChargerIdentifierFromRawAdapterDetails];
      if (v6)
      {
        v4 = v6;
      }

      else
      {
        v4 = @"DefaultChargerIdentifier";
      }
    }
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"SBAmbientChargerId", v4];

  return v7;
}

- (id)_fetchConnectedWirelessChargerIdentifier
{
  v3 = IOPSCopyExternalPowerAdapterDetails();
  if (v3)
  {
    v4 = [(SBAmbientPresentationController *)self _connectedWirelessChargerIdentifierForAdapterDetails:v3];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 copy];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_fetchConnectedWirelessChargerIdentifierFromRawAdapterDetails
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__125;
  v14 = __Block_byref_object_dispose__125;
  v15 = 0;
  v3 = IOServiceMatching("IOPMPowerSource");
  if (v3)
  {
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v3);
    v5 = MatchingService;
    if (MatchingService)
    {
      CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"AppleRawAdapterDetails", *MEMORY[0x277CBECE8], 0);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __96__SBAmbientPresentationController__fetchConnectedWirelessChargerIdentifierFromRawAdapterDetails__block_invoke;
      v9[3] = &unk_2783C18E0;
      v9[4] = self;
      v9[5] = &v10;
      [CFProperty enumerateObjectsUsingBlock:v9];
    }

    IOObjectRelease(v5);
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __96__SBAmbientPresentationController__fetchConnectedWirelessChargerIdentifierFromRawAdapterDetails__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) _connectedWirelessChargerIdentifierForAdapterDetails:a2];
  if (v6)
  {
    v10 = v6;
    v7 = [v6 copy];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = v10;
    *a4 = 1;
  }
}

- (id)_connectedWirelessChargerIdentifierForAdapterDetails:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"FamilyCode"];
  if (-[SBAmbientPresentationController _isConnectedChargerInternalWirelessWithFamilyCode:](self, "_isConnectedChargerInternalWirelessWithFamilyCode:", [v5 intValue]))
  {
    v6 = [v4 objectForKey:@"Source"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 copy];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_observeAmbientUserSettingChanges
{
  v40[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  ambientDefaults = self->_ambientDefaults;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enableAmbientMode"];
  v40[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  v6 = MEMORY[0x277D85CD0];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __68__SBAmbientPresentationController__observeAmbientUserSettingChanges__block_invoke;
  v33[3] = &unk_2783A8C68;
  objc_copyWeak(&v34, &location);
  v7 = [(AMAmbientDefaults *)ambientDefaults observeDefaults:v5 onQueue:MEMORY[0x277D85CD0] withBlock:v33];

  v8 = self->_ambientDefaults;
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nightModeEnabled"];
  v39[0] = v9;
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"alwaysOnMode"];
  v39[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __68__SBAmbientPresentationController__observeAmbientUserSettingChanges__block_invoke_2;
  v31[3] = &unk_2783A8C68;
  objc_copyWeak(&v32, &location);
  v12 = [(AMAmbientDefaults *)v8 observeDefaults:v11 onQueue:MEMORY[0x277D85CD0] withBlock:v31];

  v13 = self->_ambientDefaults;
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"alwaysOnMode"];
  v38 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __68__SBAmbientPresentationController__observeAmbientUserSettingChanges__block_invoke_3;
  v29[3] = &unk_2783A8C68;
  objc_copyWeak(&v30, &location);
  v16 = [(AMAmbientDefaults *)v13 observeDefaults:v15 onQueue:MEMORY[0x277D85CD0] withBlock:v29];

  v17 = self->_ambientDefaults;
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"bumpToWakeEnabled"];
  v37 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __68__SBAmbientPresentationController__observeAmbientUserSettingChanges__block_invoke_4;
  v27[3] = &unk_2783A8C68;
  objc_copyWeak(&v28, &location);
  v20 = [(AMAmbientDefaults *)v17 observeDefaults:v19 onQueue:MEMORY[0x277D85CD0] withBlock:v27];

  v21 = self->_ambientDefaults;
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"motionToWakeEnabled"];
  v36 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __68__SBAmbientPresentationController__observeAmbientUserSettingChanges__block_invoke_5;
  v25[3] = &unk_2783A8C68;
  objc_copyWeak(&v26, &location);
  v24 = [(AMAmbientDefaults *)v21 observeDefaults:v23 onQueue:MEMORY[0x277D85CD0] withBlock:v25];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

void __68__SBAmbientPresentationController__observeAmbientUserSettingChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _evaluatePresentationState];
  [WeakRetained _updateViewObstructedSuppressionManager];
}

void __68__SBAmbientPresentationController__observeAmbientUserSettingChanges__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained _isNightModeUserSettingEffectivelyEnabled] & 1) == 0)
  {
    [WeakRetained _setAmbientDisplayStyle:0 forReason:@"Settings Change"];
  }

  [WeakRetained _evaluateTriggerDetectionState];
}

void __68__SBAmbientPresentationController__observeAmbientUserSettingChanges__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _evaluateIdleTimerEnablement];
  [WeakRetained _updateSleepSuppression];
  [WeakRetained _updateMotionDetection];
  [WeakRetained _evaluateRedModeTriggerDetectionState];
}

void __68__SBAmbientPresentationController__observeAmbientUserSettingChanges__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _evaluateBumpToWakeEnablement];
}

void __68__SBAmbientPresentationController__observeAmbientUserSettingChanges__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateMotionDetection];
}

- (int64_t)_effectiveAlwaysOnMode
{
  if (!MGGetBoolAnswer())
  {
    return 0;
  }

  ambientDefaults = self->_ambientDefaults;

  return [(AMAmbientDefaults *)ambientDefaults alwaysOnMode];
}

- (BOOL)_isNightModeUserSettingEffectivelyEnabled
{
  if ([(SBAmbientPresentationController *)self _isNightModeUserSettingEnabled])
  {
    return 1;
  }

  return [(SBAmbientPresentationController *)self _isNightModeSettingMandatory];
}

- (void)_updateScheduledAlarmObserverForPresentationRequested:(BOOL)a3
{
  [(SBAmbientScheduledAlarmObserver *)self->_scheduledAlarmObserver setObservationEnabled:self->_presentationRequested];
  if (!self->_presentationRequested)
  {

    [(SBAmbientPresentationController *)self _clearUpcomingAlarmSuppressionsIfNecessary];
  }
}

- (void)_clearUpcomingAlarmSuppressionsIfNecessary
{
  if (self->_suppressRedModeDisplayStyleForUpcomingAlarm)
  {
    v3 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Clearing ambient red mode suppression for upcoming alarm", buf, 2u);
    }

    self->_suppressRedModeDisplayStyleForUpcomingAlarm = 0;
    [(SBAmbientPresentationController *)self _evaluateRedModeTriggerDetectionState];
  }

  if (self->_suppressIdleTimerForUpcomingAlarm)
  {
    v4 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Clearing idle timer suppression for upcoming alarm", v5, 2u);
    }

    self->_suppressIdleTimerForUpcomingAlarm = 0;
    [(SBAmbientPresentationController *)self _evaluateIdleTimerEnablement];
    [(SBAmbientPresentationController *)self _evaluateIdleTimerDisablement];
  }
}

- (void)_setupStateCaptureBlock
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v4, &location);
  v3 = BSLogAddStateCaptureBlockWithTitle();

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

id __58__SBAmbientPresentationController__setupStateCaptureBlock__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([WeakRetained isPresented])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  [v2 setObject:v3 forKeyedSubscript:@"presented"];
  if ([WeakRetained isPresentationRequested])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v2 setObject:v4 forKeyedSubscript:@"presentationRequested"];
  [WeakRetained ambientDisplayStyle];
  v5 = AMUIAmbientDisplayStyleString();
  [v2 setObject:v5 forKeyedSubscript:@"displayStyle"];

  v6 = [WeakRetained[3] activeConfiguration];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 providerBundleIdentifier];
    [v2 setObject:v8 forKeyedSubscript:@"activeFace"];

    v9 = [v7 descriptorIdentifier];
    [v2 setObject:v9 forKeyedSubscript:@"activeFaceDescriptor"];
  }

  v10 = [WeakRetained[3] activeConfigurationMetadata];
  if (v10)
  {
    [v2 setObject:v10 forKeyedSubscript:@"activeFaceMetadata"];
  }

  return v2;
}

void __74__SBAmbientPresentationController__updateViewObstructedSuppressionManager__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained && ([v3 reason] & 1) != 0)
  {
    v6 = [v3 type];
    v7 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = v6 == 1;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Received view obstructed suppression event [ isSuppressed:%{BOOL}d ]", v8, 8u);
    }

    v5[248] = v6 == 1;
    [v5 _evaluatePresentationState];
  }
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (void)test_updateAmbientPresentationState:(int64_t)a3 withReason:(id)a4
{
  v6 = a4;
  if (a3 <= 3)
  {
    v7 = qword_21F8A8638[a3];
    v8 = qword_21F8A8658[a3];
    v9 = v6;
    [(SBAmbientPresentationController *)self _updateAmbientTriggerState:v7 analogousTriggerEvents:0 withReason:v6];
    [(SBAmbientPresentationController *)self _updateAmbientMountState:v8 withReason:v9];
    v6 = v9;
  }
}

- (void)_updatePosterBoardWithChargerIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "(%{public}@) Failed; PosterBoard Services does not support this call.", &v2, 0xCu);
}

void __75__SBAmbientPresentationController__updatePosterBoardWithChargerIdentifier___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138543874;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "(%{public}@) Failed to push charger update of '%@' to PosterBoard; error: %@", &v5, 0x20u);
}

void __60__SBAmbientPresentationController__fetchDefaultWidgetStacks__block_invoke_186_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch default proactive widget stacks with error:%@", &v4, 0xCu);
}

- (void)_widgetDescriptorsForATXStack:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Proactive default stack:%@ is nil or empty", &v2, 0xCu);
}

@end