@interface SBTraitsEmbeddedDisplayPipelineManager
- (BOOL)_controlCenterIsOnTheSameWindowScene:(id)a3;
- (SBTraitsEmbeddedDisplayPipelineManager)initWithArbiter:(id)a3 sceneDelegate:(id)a4 userInterfaceStyleProvider:(id)a5;
- (id)_layoutCoordinator;
- (id)_orientationInputsForDeviceOrientation:(int64_t)a3;
- (id)_orientationStateDescription;
- (id)defaultOrientationAnimationSettingsAnimatable:(BOOL)a3;
- (int64_t)_bootOrientation;
- (void)_addLastNonFlatOverrideInputsValidatorIfNeeded;
- (void)_controlCenterDidDismiss:(id)a3;
- (void)_controlCenterWillDismiss:(id)a3;
- (void)_evaluateNonFlatOverrideNecessityForCurrentDeviceOrientation:(int64_t)a3;
- (void)_noteCoverSheetDidDismiss;
- (void)_noteCoverSheetDidPresent;
- (void)_noteCoverSheetWillDismiss;
- (void)_noteCoverSheetWillPresent;
- (void)_noteInputsNeedUpdateAnimated:(BOOL)a3 reason:(id)a4;
- (void)_noteInputsNeedUpdateWithAnimationSettings:(id)a3 fence:(id)a4 reason:(id)a5;
- (void)_updateInputs;
- (void)_updateOrientationEventsEnabledState;
- (void)_updateOrientationInputsDeferralAnimated:(BOOL)a3;
- (void)_userOrientationLockChanged:(id)a3;
- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4;
- (void)ambientPresentationController:(id)a3 didUpdateAmbientDisplayStyle:(int64_t)a4;
- (void)ambientPresentationController:(id)a3 didUpdatePresented:(BOOL)a4;
- (void)ambientPresentationController:(id)a3 willUpdatePresented:(BOOL)a4;
- (void)arbiter:(id)a3 didCompleteUpdateWithContext:(id)a4;
- (void)backlightController:(id)a3 willAnimateBacklightToFactor:(float)a4 source:(int64_t)a5;
- (void)dealloc;
- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)setKeyboardFocusContext:(id)a3;
- (void)setupDefaultPipelineForArbiter:(id)a3;
- (void)startListeningForLockScreenUIPresentations;
- (void)startObservingAmbientPresentation;
- (void)startObservingLayoutStateTransitions;
- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4;
- (void)userInterfaceStyleDidUpdateWithAnimationSettings:(id)a3 fence:(id)a4;
@end

@implementation SBTraitsEmbeddedDisplayPipelineManager

- (void)_noteCoverSheetWillDismiss
{
  self->_isCoversheetPresented = 0;
  [(SBTraitsEmbeddedDisplayPipelineManager *)self _evaluateNonFlatOverrideNecessityForCurrentDeviceOrientation:[(TRAArbitrationDeviceOrientationInputs *)self->_orientationInputs currentDeviceOrientation]];
  [(SBDeviceOrientationUpdateDeferralAssertion *)self->_deviceUpdateDeferralAssertion invalidate];
  v3 = [(SBDeviceOrientationUpdateManager *)self->_systemOrientationLockManager deviceOrientationUpdateDeferralAssertionWithReason:@"Coversheet dismissal"];
  deviceUpdateDeferralAssertion = self->_deviceUpdateDeferralAssertion;
  self->_deviceUpdateDeferralAssertion = v3;

  if (!self->_coverSheetIsolationSpecifier)
  {
    v5 = [(SBTraitsRoleResolvesOrientationInIsolationPolicySpecifier *)[SBTraitsCoverSheetInIsolationPolicySpecifier alloc] initWithComponentOrder:&unk_283370B50];
    coverSheetIsolationSpecifier = self->_coverSheetIsolationSpecifier;
    self->_coverSheetIsolationSpecifier = v5;

    v8 = [(SBTraitsPipelineManager *)self arbiter];
    v7 = [v8 orientationResolutionStage];
    [v7 addResolutionPolicySpecifier:self->_coverSheetIsolationSpecifier update:0];
  }
}

- (void)_addLastNonFlatOverrideInputsValidatorIfNeeded
{
  if (!self->_lastNonFlatOverrideInputsValidator)
  {
    v3 = [(SBTraitsInputsValidator *)[SBTraitsInputsOrientationNonFlatOverrideValidator alloc] initWithValidatorOrder:&unk_283370B38];
    lastNonFlatOverrideInputsValidator = self->_lastNonFlatOverrideInputsValidator;
    self->_lastNonFlatOverrideInputsValidator = v3;

    [(SBTraitsInputsOrientationNonFlatOverrideValidator *)self->_lastNonFlatOverrideInputsValidator setLastNonFlatOrientationOverride:[(TRAParticipant *)self->_activeOrientationParticipant currentOrientation]];
    v6 = [(SBTraitsPipelineManager *)self arbiter];
    v5 = [v6 inputsValidationStage];
    [v5 addInputsValidator:self->_lastNonFlatOverrideInputsValidator];
  }
}

- (void)_updateOrientationEventsEnabledState
{
  v3 = [(SBTraitsEmbeddedDisplayPipelineManager *)self _isBacklightOn];
  v4 = +[SBPlatformController sharedInstance];
  v5 = [v4 prefersAlwaysOnOrientation];

  v6 = (v3 | v5) & 1;
  if (v6 != [(BKSAccelerometer *)self->_accelerometer orientationEventsEnabled])
  {
    accelerometer = self->_accelerometer;

    [(BKSAccelerometer *)accelerometer setOrientationEventsEnabled:v6];
  }
}

- (SBTraitsEmbeddedDisplayPipelineManager)initWithArbiter:(id)a3 sceneDelegate:(id)a4 userInterfaceStyleProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = SBTraitsEmbeddedDisplayPipelineManager;
  v11 = [(SBTraitsPipelineManager *)&v24 initWithArbiter:v8 sceneDelegate:v9 userInterfaceStyleProvider:v10];
  if (v11)
  {
    v12 = +[SBOrientationLockManager sharedInstance];
    userOrientationLockManager = v11->_userOrientationLockManager;
    v11->_userOrientationLockManager = v12;

    v14 = [SBApp _legacy_deviceOrientationUpdateManager];
    systemOrientationLockManager = v11->_systemOrientationLockManager;
    v11->_systemOrientationLockManager = v14;

    v16 = objc_alloc_init(SBTraitsEmbeddedDisplayRolesAndDefaultPoliciesProvider);
    rolesAndDefaultPoliciesProvider = v11->_rolesAndDefaultPoliciesProvider;
    v11->_rolesAndDefaultPoliciesProvider = v16;

    objc_initWeak(&location, v11);
    v18 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v22, &location);
    v19 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureInvalidatable = v11->_stateCaptureInvalidatable;
    v11->_stateCaptureInvalidatable = v19;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v11;
}

id __99__SBTraitsEmbeddedDisplayPipelineManager_initWithArbiter_sceneDelegate_userInterfaceStyleProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _orientationStateDescription];

  return v2;
}

- (id)_orientationStateDescription
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = [(SBTraitsPipelineManager *)self arbiter];

  if (v3)
  {
    v4 = +[SBBacklightController sharedInstanceIfExists];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Backlight is on (SBBacklightController %p)", v4];
    v14[0] = v5;
    [v4 screenIsOn];
    v6 = NSStringFromBOOL();
    v15[0] = v6;
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Backlight is on (SBTraitsEmbeddedDisplayPipelineManager %p)", self];
    v14[1] = v7;
    v8 = NSStringFromBOOL();
    v15[1] = v8;
    v14[2] = @"Inputs";
    inputs = self->_inputs;
    if (inputs)
    {
      v10 = [(TRAArbitrationInputs *)inputs description];
    }

    else
    {
      v10 = @"No inputs yet";
    }

    v15[2] = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v11 = [v12 description];

    if (inputs)
    {
    }
  }

  else
  {
    v11 = @"waiting for an arbiter to become available";
  }

  return v11;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(SBTraitsPipelineManager *)self arbiter];
  [v4 removeObserver:self];

  v5 = [(SBTraitsEmbeddedDisplayPipelineManager *)self _layoutCoordinator];
  [v5 removeObserver:self];

  [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:0];
  v6 = [(SBTraitsPipelineManager *)self sceneDelegate];
  v7 = [v6 windowScene];
  v8 = [v7 ambientPresentationController];
  [v8 removeObserver:self];

  v9.receiver = self;
  v9.super_class = SBTraitsEmbeddedDisplayPipelineManager;
  [(SBTraitsEmbeddedDisplayPipelineManager *)&v9 dealloc];
}

- (void)setupDefaultPipelineForArbiter:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v48 = v4;
    v5 = objc_alloc_init(MEMORY[0x277CF05B0]);
    accelerometer = self->_accelerometer;
    self->_accelerometer = v5;

    [(BKSAccelerometer *)self->_accelerometer setDelegate:self];
    v7 = [objc_alloc(MEMORY[0x277D734C0]) initWithKeyboardFocusedParticipantUniqueIdentifier:0];
    keyboardInputs = self->_keyboardInputs;
    self->_keyboardInputs = v7;

    v9 = objc_alloc(MEMORY[0x277D734B8]);
    v10 = [MEMORY[0x277D75418] currentDevice];
    v11 = [v9 initWithIsPad:{objc_msgSend(v10, "userInterfaceIdiom") == 1}];
    deviceIdiomInputs = self->_deviceIdiomInputs;
    self->_deviceIdiomInputs = v11;

    v13 = [(SBTraitsEmbeddedDisplayPipelineManager *)self _orientationInputsForDeviceOrientation:[(BKSAccelerometer *)self->_accelerometer currentDeviceOrientation]];
    orientationInputs = self->_orientationInputs;
    self->_orientationInputs = v13;

    v15 = objc_alloc(MEMORY[0x277D734C8]);
    v16 = [(SBTraitsPipelineManager *)self userInterfaceStyleProvider];
    v17 = [v15 initWithUserInterfaceStyle:{objc_msgSend(v16, "currentStyle")}];
    userInterfaceStyleInputs = self->_userInterfaceStyleInputs;
    self->_userInterfaceStyleInputs = v17;

    v19 = [objc_alloc(MEMORY[0x277D734A0]) initWithAmbientPresented:0 ambientDisplayStyle:0];
    ambientPresentationInputs = self->_ambientPresentationInputs;
    self->_ambientPresentationInputs = v19;

    [(SBTraitsEmbeddedDisplayPipelineManager *)self _updateInputs];
    v21 = [v48 inputsValidationStage];
    v22 = [(SBTraitsInputsValidator *)[SBTraitsInputsAllUnknownOrientationValidator alloc] initWithValidatorOrder:&unk_283370AC0];
    v23 = [[SBTraitsInputsOrientationLockValidator alloc] initWithValidatorOrder:&unk_283370AD8];
    orientationLockInputsValidator = self->_orientationLockInputsValidator;
    self->_orientationLockInputsValidator = v23;

    [v21 addInputsValidator:v22 update:0];
    [v21 addInputsValidator:self->_orientationLockInputsValidator update:0];
    v25 = [v48 zOrderResolutionStage];
    v26 = [(SBTraitsZOrderStageComponent *)[SBTraitsZOrderDefaultResolver alloc] initWithComponentOrder:&unk_283370AF0];
    [v25 addStageResolver:v26];

    v27 = [v48 orientationResolutionStage];
    v28 = [[SBTraitsOrientationDefaultResolutionPolicySpecifier alloc] initWithComponentOrder:&unk_283370AF0 dataSource:self->_rolesAndDefaultPoliciesProvider];
    [v27 addResolutionPolicySpecifier:v28 update:0];

    v29 = [(SBTraitsOrientationStageComponent *)[SBTraitsOrientationDefaultTreeNodesSpecifier alloc] initWithComponentOrder:&unk_283370AF0];
    [v27 addNodesSpecificationsSpecifier:v29];

    v30 = [[SBTraitsOrientationDefaultTreeResolver alloc] initWithComponentOrder:&unk_283370AF0];
    [v27 addStageResolver:v30];

    v31 = [v48 ambientPresentationResolutionStage];
    v32 = [[SBTraitsAmbientPresentationDefaultResolver alloc] initWithThresholdRole:@"SBTraitsParticipantRoleAmbient" componentOrder:&unk_283370AF0];
    [v31 addStageResolver:v32];

    v33 = [v48 userInterfaceStyleResolutionStage];
    v34 = [(SBTraitsUserInterfaceStyleStageComponent *)[SBTraitsUserInterfaceStyleDefaultResolver alloc] initWithComponentOrder:&unk_283370AF0];
    [v33 addStageResolver:v34];

    v35 = [v48 acquireParticipantWithRole:@"SBTraitsParticipantRolePipelineManager" delegate:self];
    activeOrientationParticipant = self->_activeOrientationParticipant;
    self->_activeOrientationParticipant = v35;

    v37 = self->_activeOrientationParticipant;
    v38 = MEMORY[0x277CCACA8];
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = [v38 stringWithFormat:@"%@-Setup", v40];
    [(TRAParticipant *)v37 setNeedsUpdatePreferencesWithReason:v41];

    [(TRAParticipant *)self->_activeOrientationParticipant updatePreferencesIfNeeded];
    [(SBTraitsEmbeddedDisplayPipelineManager *)self _updateOrientationEventsEnabledState];
    v42 = [MEMORY[0x277D75418] currentDevice];
    v43 = [v42 userInterfaceIdiom];

    if ((v43 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v44 = [(SBTraitsEmbeddedDisplayPipelineManager *)self _bootOrientation];
      if (v44)
      {
        v45 = v44;
        [(SBTraitsEmbeddedDisplayPipelineManager *)self _addLastNonFlatOverrideInputsValidatorIfNeeded];
        [(SBTraitsInputsOrientationNonFlatOverrideValidator *)self->_lastNonFlatOverrideInputsValidator setLastNonFlatOrientationOverride:v45];
      }
    }

    v46 = [MEMORY[0x277CCAB98] defaultCenter];
    [v46 addObserver:self selector:sel__userOrientationLockChanged_ name:*MEMORY[0x277D67A98] object:0];
    [v46 addObserver:self selector:sel__controlCenterWillDismiss_ name:@"SBControlCenterWillDismissNotification" object:0];
    [v46 addObserver:self selector:sel__controlCenterDidDismiss_ name:@"SBControlCenterDidDismissNotification" object:0];
    [v46 addObserver:self selector:sel__systemOrientationLockChanged_ name:@"SBDeviceOrientationUpdateManager-DeferralAssertionAcquired" object:0];
    [v46 addObserver:self selector:sel__systemOrientationLockChanged_ name:@"SBDeviceOrientationUpdateManager-HasNoActiveDeferralAssertions" object:0];
    v47 = +[SBBacklightController sharedInstanceIfExists];
    self->_backlightIsOn = [v47 screenIsOn];
    [v47 addObserver:self];
    [v48 addObserver:self];

    v4 = v48;
  }
}

- (void)startObservingLayoutStateTransitions
{
  v3 = [(SBTraitsEmbeddedDisplayPipelineManager *)self _layoutCoordinator];
  [v3 addObserver:self];
}

- (void)startListeningForLockScreenUIPresentations
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = [(SBTraitsPipelineManager *)self sceneDelegate];
  v4 = [v3 windowScene];

  [v5 addObserver:self selector:sel__noteCoverSheetWillPresent name:@"SBLockScreenUIWillPresentNotification" object:v4];
  [v5 addObserver:self selector:sel__noteCoverSheetDidPresent name:@"SBLockScreenUIDidPresentNotification" object:v4];
  [v5 addObserver:self selector:sel__noteCoverSheetWillDismiss name:@"SBLockScreenUIWillDismissNotification" object:v4];
  [v5 addObserver:self selector:sel__noteCoverSheetDidDismiss name:@"SBLockScreenUIDidDismissNotification" object:v4];
}

- (void)startObservingAmbientPresentation
{
  v3 = [(SBTraitsPipelineManager *)self sceneDelegate];
  v4 = [v3 windowScene];
  v5 = [v4 ambientPresentationController];

  -[SBTraitsEmbeddedDisplayPipelineManager ambientPresentationController:didUpdatePresented:](self, "ambientPresentationController:didUpdatePresented:", v5, [v5 isPresented]);
  [v5 addObserver:self];
}

- (void)userInterfaceStyleDidUpdateWithAnimationSettings:(id)a3 fence:(id)a4
{
  v6 = MEMORY[0x277D734C8];
  v7 = a4;
  v12 = a3;
  v8 = [v6 alloc];
  v9 = [(SBTraitsPipelineManager *)self userInterfaceStyleProvider];
  v10 = [v8 initWithUserInterfaceStyle:{objc_msgSend(v9, "currentStyle")}];
  userInterfaceStyleInputs = self->_userInterfaceStyleInputs;
  self->_userInterfaceStyleInputs = v10;

  [(SBTraitsEmbeddedDisplayPipelineManager *)self _updateInputs];
  [(SBTraitsEmbeddedDisplayPipelineManager *)self _noteInputsNeedUpdateWithAnimationSettings:v12 fence:v7 reason:@"User Interface Style changed"];
}

- (void)setKeyboardFocusContext:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SBTraitsEmbeddedDisplayPipelineManager;
  [(SBTraitsPipelineManager *)&v14 setKeyboardFocusContext:v4];
  keyboardFocusInputsValidator = self->_keyboardFocusInputsValidator;
  if (!keyboardFocusInputsValidator || (-[SBTraitsInputsKeyboardFocusValidator focusContext](keyboardFocusInputsValidator, "focusContext"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqual:v4], v6, (v7 & 1) == 0))
  {
    v8 = [(SBTraitsPipelineManager *)self arbiter];
    v9 = v8;
    if (self->_keyboardFocusInputsValidator)
    {
      if (!v4)
      {
        v10 = [v8 inputsValidationStage];
        [v10 removeInputsValidator:self->_keyboardFocusInputsValidator];

        v11 = self->_keyboardFocusInputsValidator;
        self->_keyboardFocusInputsValidator = 0;
LABEL_8:
      }
    }

    else if (v4)
    {
      v12 = objc_alloc_init(SBTraitsInputsKeyboardFocusValidator);
      v13 = self->_keyboardFocusInputsValidator;
      self->_keyboardFocusInputsValidator = v12;

      v11 = [v9 inputsValidationStage];
      [v11 addInputsValidator:self->_keyboardFocusInputsValidator];
      goto LABEL_8;
    }

    [(SBTraitsInputsKeyboardFocusValidator *)self->_keyboardFocusInputsValidator setFocusContext:v4];
    [(SBTraitsEmbeddedDisplayPipelineManager *)self _noteInputsNeedUpdateAnimated:1 reason:@"keyboard focus context changed"];
  }
}

- (id)_layoutCoordinator
{
  v2 = [(SBTraitsPipelineManager *)self sceneDelegate];
  v3 = [v2 windowScene];
  v4 = [v3 layoutStateTransitionCoordinator];

  return v4;
}

- (void)_userOrientationLockChanged:(id)a3
{
  v4 = [(SBOrientationLockManager *)self->_userOrientationLockManager effectiveLockedOrientation];
  if ([(SBOrientationLockManager *)self->_userOrientationLockManager isEffectivelyLocked])
  {
    v5 = (v4 - 1) >= 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v4 = [(SBOrientationLockManager *)self->_userOrientationLockManager userLockOrientation];
  }

  [(SBTraitsInputsOrientationLockValidator *)self->_orientationLockInputsValidator setLockOrientation:v4];
  v6 = [(SBTraitsEmbeddedDisplayPipelineManager *)self _isBacklightOn];

  [(SBTraitsEmbeddedDisplayPipelineManager *)self _noteInputsNeedUpdateAnimated:v6 reason:@"User orientation lock changed."];
}

- (void)_updateOrientationInputsDeferralAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBTraitsEmbeddedDisplayPipelineManager *)self _isBacklightOn];
  v6 = [(SBDeviceOrientationUpdateManager *)self->_systemOrientationLockManager isCurrentlyDeferringOrientationUpdates]| ~v5;
  [(SBTraitsInputsOrientationLockValidator *)self->_orientationLockInputsValidator setPrefersDeferringOrientationUpdates:v6 & 1];
  if ((v6 & 1) == 0)
  {

    [(SBTraitsEmbeddedDisplayPipelineManager *)self _noteInputsNeedUpdateAnimated:v3 reason:@"Stop deferring orientation inputs updates."];
  }
}

- (void)_updateInputs
{
  v3 = [objc_alloc(MEMORY[0x277D734B0]) initWithInterfaceIdiomInputs:self->_deviceIdiomInputs userInterfaceStyleInputs:self->_userInterfaceStyleInputs deviceOrientationInputs:self->_orientationInputs keyboardInputs:self->_keyboardInputs ambientPresentationInputs:self->_ambientPresentationInputs];
  inputs = self->_inputs;
  self->_inputs = v3;
}

- (void)_noteInputsNeedUpdateAnimated:(BOOL)a3 reason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBTraitsEmbeddedDisplayPipelineManager *)self defaultOrientationAnimationSettingsAnimatable:v4];
  [(SBTraitsEmbeddedDisplayPipelineManager *)self _noteInputsNeedUpdateWithAnimationSettings:v7 fence:0 reason:v6];
}

- (void)_noteInputsNeedUpdateWithAnimationSettings:(id)a3 fence:(id)a4 reason:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(SBTraitsPipelineManager *)self arbiter];
  v13 = objc_alloc(MEMORY[0x277D73498]);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __98__SBTraitsEmbeddedDisplayPipelineManager__noteInputsNeedUpdateWithAnimationSettings_fence_reason___block_invoke;
  v21 = &unk_2783B5238;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = a2;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = [v13 initWithBuilder:&v18];
  [v12 setNeedsUpdateArbitrationWithContext:{v17, v18, v19, v20, v21}];
}

void __98__SBTraitsEmbeddedDisplayPipelineManager__noteInputsNeedUpdateWithAnimationSettings_fence_reason___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 56));
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[EmbeddedPipeline] %{public}@ updating inputs with animation settings: %{public}@ fence: %{public}@", &v9, 0x20u);
  }

  v8 = [objc_alloc(MEMORY[0x277D734E8]) initWithAnimationSettings:*(a1 + 32) drawingFence:*(a1 + 40)];
  [v3 setOrientationActuationContext:v8];
  [v3 setUserInterfaceStyleActuationContext:v8];
  [v3 setReason:*(a1 + 48)];
}

- (void)_controlCenterWillDismiss:(id)a3
{
  if ([(SBTraitsEmbeddedDisplayPipelineManager *)self _controlCenterIsOnTheSameWindowScene:a3]&& !self->_controlCenterIsolationSpecifier)
  {
    v4 = [(SBTraitsRoleResolvesOrientationInIsolationPolicySpecifier *)[SBTraitsControlCenterInIsolationPolicySpecifier alloc] initWithComponentOrder:&unk_283370B08];
    controlCenterIsolationSpecifier = self->_controlCenterIsolationSpecifier;
    self->_controlCenterIsolationSpecifier = v4;

    v7 = [(SBTraitsPipelineManager *)self arbiter];
    v6 = [v7 orientationResolutionStage];
    [v6 addResolutionPolicySpecifier:self->_controlCenterIsolationSpecifier update:0];
  }
}

- (void)_controlCenterDidDismiss:(id)a3
{
  if ([(SBTraitsEmbeddedDisplayPipelineManager *)self _controlCenterIsOnTheSameWindowScene:a3]&& self->_controlCenterIsolationSpecifier)
  {
    v4 = [(SBTraitsPipelineManager *)self arbiter];
    v5 = [v4 orientationResolutionStage];
    [v5 removeResolutionPolicySpecifier:self->_controlCenterIsolationSpecifier];

    controlCenterIsolationSpecifier = self->_controlCenterIsolationSpecifier;
    self->_controlCenterIsolationSpecifier = 0;
  }
}

- (BOOL)_controlCenterIsOnTheSameWindowScene:(id)a3
{
  v4 = a3;
  v5 = [(SBTraitsPipelineManager *)self sceneDelegate];
  v6 = [v5 windowScene];

  v7 = [v4 object];

  v8 = [v7 objectForKeyedSubscript:@"SBControlCenterNotificationWindowSceneKey"];

  return v6 == v8;
}

- (id)defaultOrientationAnimationSettingsAnimatable:(BOOL)a3
{
  v3 = a3;
  if ([(SBTraitsEmbeddedDisplayPipelineManager *)self _isBacklightOn])
  {
    v7.receiver = self;
    v7.super_class = SBTraitsEmbeddedDisplayPipelineManager;
    v5 = [(SBTraitsPipelineManager *)&v7 defaultOrientationAnimationSettingsAnimatable:v3];
  }

  else
  {
    v5 = [MEMORY[0x277CF0B70] settingsWithDuration:0.0];
  }

  return v5;
}

- (void)backlightController:(id)a3 willAnimateBacklightToFactor:(float)a4 source:(int64_t)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = SBSBacklightChangeSourceDescription(a5);
    v12 = 138543618;
    v13 = v9;
    v14 = 2048;
    v15 = a4;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[EmbeddedPipeline] Backlight is animating with source: %{public}@ to factor: %.1f", &v12, 0x16u);
  }

  v10 = BSFloatGreaterThanFloat();
  v11 = [(SBTraitsEmbeddedDisplayPipelineManager *)self _isBacklightOn];
  self->_backlightIsOn = v10;
  [(SBTraitsEmbeddedDisplayPipelineManager *)self _updateOrientationEventsEnabledState];
  if (v10 != v11)
  {
    [(SBTraitsEmbeddedDisplayPipelineManager *)self _updateOrientationInputsDeferralAnimated:0];
  }
}

- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = SBFStringForBSDeviceOrientation();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[EmbeddedPipeline][Accelerometer] did change device orientation to: %{public}@", &v10, 0xCu);
  }

  [(SBTraitsEmbeddedDisplayPipelineManager *)self _evaluateNonFlatOverrideNecessityForCurrentDeviceOrientation:a4];
  v8 = [(SBTraitsEmbeddedDisplayPipelineManager *)self _orientationInputsForDeviceOrientation:a4];
  orientationInputs = self->_orientationInputs;
  self->_orientationInputs = v8;

  [(SBTraitsEmbeddedDisplayPipelineManager *)self _updateInputs];
  [(SBTraitsEmbeddedDisplayPipelineManager *)self _noteInputsNeedUpdateAnimated:[(SBTraitsEmbeddedDisplayPipelineManager *)self _isBacklightOn] reason:@"Device orientation change"];
}

- (id)_orientationInputsForDeviceOrientation:(int64_t)a3
{
  NonFlatDeviceOrientation = a3;
  if ((a3 - 1) >= 4)
  {
    if (self->_lastNonFlatOrientation)
    {
      goto LABEL_5;
    }

    NonFlatDeviceOrientation = BKHIDServicesGetNonFlatDeviceOrientation();
  }

  self->_lastNonFlatOrientation = NonFlatDeviceOrientation;
LABEL_5:
  v6 = [objc_alloc(MEMORY[0x277D734A8]) initWithCurrentDeviceOrientation:a3 nonFlatDeviceOrientation:self->_lastNonFlatOrientation];

  return v6;
}

- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4
{
  v4 = a4;
  [v4 updateZOrderLevelPreferencesWithBlock:&__block_literal_global_142];
  [v4 updateOrientationPreferencesWithBlock:&__block_literal_global_101_1];
}

- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4
{
  v24 = a3;
  v5 = [v24 role];
  v6 = SBTraitsArbiterOrientationActuationEnabledForRole(v5);

  v7 = v24;
  if (v6)
  {
    v8 = [(TRAParticipant *)self->_activeOrientationParticipant currentSettings];
    v9 = [v8 orientationSettings];
    v10 = [v9 validatedOrientationInputs];
    v11 = [v10 currentDeviceOrientation];

    v12 = [(TRAParticipant *)self->_activeOrientationParticipant previousSettings];
    v13 = [v12 orientationSettings];
    v14 = [v13 validatedOrientationInputs];
    v15 = [v14 currentDeviceOrientation];

    if (v11 != v15)
    {
      [(SBDeviceOrientationUpdateManager *)self->_systemOrientationLockManager _legacy_enqueueOrientationUpdateToDeviceOrientation:v11 source:@"pipeline manager"];
    }

    v16 = [v24 sbf_currentOrientation];
    v17 = [v24 sbf_previousOrientation];
    v7 = v24;
    if (v16 != v17)
    {
      kdebug_trace();
      [MEMORY[0x277CD9FF0] bs_performAfterCommit:&__block_literal_global_108];
      lastNonFlatOverrideInputsValidator = self->_lastNonFlatOverrideInputsValidator;
      if (lastNonFlatOverrideInputsValidator)
      {
        [(SBTraitsInputsOrientationNonFlatOverrideValidator *)lastNonFlatOverrideInputsValidator setLastNonFlatOrientationOverride:v16];
      }

      v19 = [SBAnimationUtilities animationSettingsForRotationFromInterfaceOrientation:v17 toInterfaceOrientation:v16];
      v20 = SBApp;
      [v19 duration];
      [v20 _legacy_noteInterfaceOrientationChanged:v16 duration:1 updateMirroredDisplays:1 force:@"SBTraitArbiterPipelineManager" logMessage:?];
      v21 = [(SBTraitsPipelineManager *)self sceneDelegate];
      v22 = [v21 windowScene];
      v23 = [v22 displayLayoutPublisher];
      [v23 setInterfaceOrientation:v16];

      v7 = v24;
    }
  }
}

- (void)arbiter:(id)a3 didCompleteUpdateWithContext:(id)a4
{
  v5 = self->_arbiterRunningUpdatesCount - 1;
  self->_arbiterRunningUpdatesCount = v5;
  if (!v5)
  {
    v7 = [a4 orientationActuationContext];
    v6 = [v7 drawingFence];
    [v6 invalidate];
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  v5 = a4;
  v31 = [(SBTraitsPipelineManager *)self arbiter];
  v6 = [v5 fromLayoutState];
  v7 = [v5 toLayoutState];
  v8 = [v5 applicationTransitionContext];

  v9 = [SBSwitcherLayoutTransitionNotes alloc];
  v10 = [v8 request];
  v11 = [(SBSwitcherLayoutTransitionNotes *)v9 initWithFromPreviousState:v6 currentLayoutState:v7 transitionRequest:v10];

  v12 = [(SBSwitcherLayoutTransitionNotes *)v11 fromHomeScreen];
  v13 = [(SBSwitcherLayoutTransitionNotes *)v11 inApp];
  v14 = v13;
  if (!v12)
  {
    if (![(SBSwitcherLayoutTransitionNotes *)v11 inHomeScreen])
    {
      goto LABEL_20;
    }

    if (self->_homeFollowsSwitcherSpecifier)
    {
      if ([(SBSwitcherLayoutTransitionNotes *)v11 isHomeButtonInitiated])
      {
        v18 = [v31 orientationResolutionStage];
        [v18 removeResolutionPolicySpecifier:self->_homeFollowsSwitcherSpecifier animate:0];

        homeFollowsSwitcherSpecifier = self->_homeFollowsSwitcherSpecifier;
        self->_homeFollowsSwitcherSpecifier = 0;
      }

      else
      {
        if (self->_homeIsolationSpecifier)
        {
          goto LABEL_18;
        }

        v23 = [(SBTraitsRoleResolvesOrientationInIsolationPolicySpecifier *)[SBTraitsHomeInIsolationPolicySpecifier alloc] initWithComponentOrder:&unk_283370AC0];
        homeIsolationSpecifier = self->_homeIsolationSpecifier;
        self->_homeIsolationSpecifier = v23;

        homeFollowsSwitcherSpecifier = [v31 orientationResolutionStage];
        [homeFollowsSwitcherSpecifier addResolutionPolicySpecifier:self->_homeIsolationSpecifier animate:0];
      }
    }

LABEL_18:
    if (!self->_dockFollowsHomeSpecifier)
    {
      v25 = [(SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier *)[SBTraitsDockFollowsHomePolicySpecifier alloc] initWithComponentOrder:&unk_283370AD8];
      dockFollowsHomeSpecifier = self->_dockFollowsHomeSpecifier;
      self->_dockFollowsHomeSpecifier = v25;

      v27 = [v31 orientationResolutionStage];
      [v27 addResolutionPolicySpecifier:self->_dockFollowsHomeSpecifier];
    }

LABEL_20:
    if (![(SBSwitcherLayoutTransitionNotes *)v11 fromApp]|| !v14)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v13 && !self->_dockFollowsHomeSpecifier)
  {
    v15 = [(SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier *)[SBTraitsDockFollowsHomePolicySpecifier alloc] initWithComponentOrder:&unk_283370AD8];
    v16 = self->_dockFollowsHomeSpecifier;
    self->_dockFollowsHomeSpecifier = v15;

    v17 = [v31 orientationResolutionStage];
    [v17 addResolutionPolicySpecifier:self->_dockFollowsHomeSpecifier];
  }

  if ([(SBSwitcherLayoutTransitionNotes *)v11 inAnySwitcher]&& !self->_homeFollowsSwitcherSpecifier)
  {
    v20 = [(SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier *)[SBTraitsHomeFollowsSwitcherRawPolicySpecifier alloc] initWithComponentOrder:&unk_283370AC0];
    v21 = self->_homeFollowsSwitcherSpecifier;
    self->_homeFollowsSwitcherSpecifier = v20;

    v22 = [v31 orientationResolutionStage];
    [v22 addResolutionPolicySpecifier:self->_homeFollowsSwitcherSpecifier animate:0];

    if (!v14)
    {
      goto LABEL_8;
    }
  }

  else if (!v14)
  {
LABEL_8:
    [(SBSwitcherLayoutTransitionNotes *)v11 fromApp];
    goto LABEL_23;
  }

LABEL_21:
  if (!self->_controlCenterIsolationSpecifier)
  {
    v28 = [(SBTraitsRoleResolvesOrientationInIsolationPolicySpecifier *)[SBTraitsControlCenterInIsolationPolicySpecifier alloc] initWithComponentOrder:&unk_283370B08];
    controlCenterIsolationSpecifier = self->_controlCenterIsolationSpecifier;
    self->_controlCenterIsolationSpecifier = v28;

    v30 = [v31 orientationResolutionStage];
    [v30 addResolutionPolicySpecifier:self->_controlCenterIsolationSpecifier update:0];
  }

LABEL_23:
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v5 = a4;
  v25 = [(SBTraitsPipelineManager *)self arbiter];
  v6 = [v5 fromLayoutState];
  v7 = [v5 toLayoutState];
  v8 = [v5 applicationTransitionContext];

  v9 = [SBSwitcherLayoutTransitionNotes alloc];
  v10 = [v8 request];
  v11 = [(SBSwitcherLayoutTransitionNotes *)v9 initWithFromPreviousState:v6 currentLayoutState:v7 transitionRequest:v10];

  if (self->_dockFollowsHomeSpecifier)
  {
    v12 = [v25 orientationResolutionStage];
    [v12 removeResolutionPolicySpecifier:self->_dockFollowsHomeSpecifier];

    dockFollowsHomeSpecifier = self->_dockFollowsHomeSpecifier;
    self->_dockFollowsHomeSpecifier = 0;
  }

  if (self->_controlCenterIsolationSpecifier)
  {
    v14 = [v25 orientationResolutionStage];
    [v14 removeResolutionPolicySpecifier:self->_controlCenterIsolationSpecifier];

    controlCenterIsolationSpecifier = self->_controlCenterIsolationSpecifier;
    self->_controlCenterIsolationSpecifier = 0;
  }

  if ([(SBSwitcherLayoutTransitionNotes *)v11 inAnySwitcher]|| [(SBSwitcherLayoutTransitionNotes *)v11 inApp])
  {
    if (self->_homeIsolationSpecifier)
    {
      v16 = [v25 orientationResolutionStage];
      [v16 removeResolutionPolicySpecifier:self->_homeIsolationSpecifier];

      homeIsolationSpecifier = self->_homeIsolationSpecifier;
      self->_homeIsolationSpecifier = 0;
    }

    if (!self->_homeFollowsSwitcherSpecifier)
    {
      v18 = [(SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier *)[SBTraitsHomeFollowsSwitcherRawPolicySpecifier alloc] initWithComponentOrder:&unk_283370AC0];
      homeFollowsSwitcherSpecifier = self->_homeFollowsSwitcherSpecifier;
      self->_homeFollowsSwitcherSpecifier = v18;

      v20 = [v25 orientationResolutionStage];
      [v20 addResolutionPolicySpecifier:self->_homeFollowsSwitcherSpecifier animate:0];
    }
  }

  else if ([(SBSwitcherLayoutTransitionNotes *)v11 inHomeScreen])
  {
    if (self->_homeFollowsSwitcherSpecifier)
    {
      v21 = [v25 orientationResolutionStage];
      [v21 removeResolutionPolicySpecifier:self->_homeFollowsSwitcherSpecifier];

      v22 = self->_homeFollowsSwitcherSpecifier;
      self->_homeFollowsSwitcherSpecifier = 0;
    }

    if (self->_homeIsolationSpecifier)
    {
      v23 = [v25 orientationResolutionStage];
      [v23 removeResolutionPolicySpecifier:self->_homeIsolationSpecifier];

      v24 = self->_homeIsolationSpecifier;
      self->_homeIsolationSpecifier = 0;
    }

    if ([(SBSwitcherLayoutTransitionNotes *)v11 stableInHomeScreen])
    {
      [(SBTraitsEmbeddedDisplayPipelineManager *)self _addLastNonFlatOverrideInputsValidatorIfNeeded];
    }
  }
}

- (void)ambientPresentationController:(id)a3 willUpdatePresented:(BOOL)a4
{
  v4 = a4;
  v6 = [(SBTraitsPipelineManager *)self arbiter];
  ambientFollowsRawDeviceOrientationSpecifier = self->_ambientFollowsRawDeviceOrientationSpecifier;
  if (v4)
  {
    if (ambientFollowsRawDeviceOrientationSpecifier)
    {
      goto LABEL_7;
    }

    v12 = v6;
    v8 = [(SBTraitsRoleFollowsDeviceOrientationPolicySpecifier *)[SBAmbientFollowsRawDeviceOrientationPolicySpecifier alloc] initWithComponentOrder:&unk_283370B20];
    v9 = self->_ambientFollowsRawDeviceOrientationSpecifier;
    self->_ambientFollowsRawDeviceOrientationSpecifier = v8;

    [(SBTraitsRoleFollowsDeviceOrientationPolicySpecifier *)self->_ambientFollowsRawDeviceOrientationSpecifier setDeviceOrientationStateTypes:&unk_28336E1C0];
    v10 = [v12 orientationResolutionStage];
    [v10 addResolutionPolicySpecifier:self->_ambientFollowsRawDeviceOrientationSpecifier];
  }

  else
  {
    if (!ambientFollowsRawDeviceOrientationSpecifier)
    {
      goto LABEL_7;
    }

    v12 = v6;
    v11 = [v6 orientationResolutionStage];
    [v11 removeResolutionPolicySpecifier:self->_ambientFollowsRawDeviceOrientationSpecifier];

    v10 = self->_ambientFollowsRawDeviceOrientationSpecifier;
    self->_ambientFollowsRawDeviceOrientationSpecifier = 0;
  }

  v6 = v12;
LABEL_7:
}

- (void)ambientPresentationController:(id)a3 didUpdatePresented:(BOOL)a4
{
  obj = [objc_alloc(MEMORY[0x277D734A0]) initWithAmbientPresented:a4 ambientDisplayStyle:{SBTraitsAmbientDisplayStyleForAmbientDisplayStyle(objc_msgSend(a3, "ambientDisplayStyle"))}];
  if (([obj isEqual:self->_ambientPresentationInputs] & 1) == 0)
  {
    objc_storeStrong(&self->_ambientPresentationInputs, obj);
    [(SBTraitsEmbeddedDisplayPipelineManager *)self _updateInputs];
    [(SBTraitsEmbeddedDisplayPipelineManager *)self _noteInputsNeedUpdateAnimated:1 reason:@"ambient presentation state changed"];
  }
}

- (void)ambientPresentationController:(id)a3 didUpdateAmbientDisplayStyle:(int64_t)a4
{
  v6 = a3;
  v7 = SBTraitsAmbientDisplayStyleForAmbientDisplayStyle(a4);
  v8 = objc_alloc(MEMORY[0x277D734A0]);
  v9 = [v6 isPresented];

  obj = [v8 initWithAmbientPresented:v9 ambientDisplayStyle:v7];
  if (([obj isEqual:self->_ambientPresentationInputs] & 1) == 0)
  {
    objc_storeStrong(&self->_ambientPresentationInputs, obj);
    [(SBTraitsEmbeddedDisplayPipelineManager *)self _updateInputs];
    [(SBTraitsEmbeddedDisplayPipelineManager *)self _noteInputsNeedUpdateAnimated:1 reason:@"ambient display style changed"];
  }
}

- (void)_noteCoverSheetWillPresent
{
  self->_isCoversheetPresented = 1;
  [(SBDeviceOrientationUpdateDeferralAssertion *)self->_deviceUpdateDeferralAssertion invalidate];
  v3 = [(SBDeviceOrientationUpdateManager *)self->_systemOrientationLockManager deviceOrientationUpdateDeferralAssertionWithReason:@"Coversheet presentation"];
  deviceUpdateDeferralAssertion = self->_deviceUpdateDeferralAssertion;
  self->_deviceUpdateDeferralAssertion = v3;

  if (!self->_coverSheetIsolationSpecifier)
  {
    v5 = [(SBTraitsRoleResolvesOrientationInIsolationPolicySpecifier *)[SBTraitsCoverSheetInIsolationPolicySpecifier alloc] initWithComponentOrder:&unk_283370B50];
    coverSheetIsolationSpecifier = self->_coverSheetIsolationSpecifier;
    self->_coverSheetIsolationSpecifier = v5;

    v8 = [(SBTraitsPipelineManager *)self arbiter];
    v7 = [v8 orientationResolutionStage];
    [v7 addResolutionPolicySpecifier:self->_coverSheetIsolationSpecifier update:0];
  }
}

- (void)_noteCoverSheetDidPresent
{
  self->_isCoversheetPresented = 1;
  [(SBDeviceOrientationUpdateDeferralAssertion *)self->_deviceUpdateDeferralAssertion invalidate];
  v16 = [(SBTraitsPipelineManager *)self arbiter];
  if (self->_coverSheetIsolationSpecifier)
  {
    v3 = [v16 orientationResolutionStage];
    [v3 removeResolutionPolicySpecifier:self->_coverSheetIsolationSpecifier update:0];

    coverSheetIsolationSpecifier = self->_coverSheetIsolationSpecifier;
    self->_coverSheetIsolationSpecifier = 0;
  }

  if (!self->_coverSheetFollowsDeviceOrientationSpecifier)
  {
    v5 = [(SBTraitsRoleFollowsDeviceOrientationPolicySpecifier *)[SBTraitsCoverSheetFollowsDeviceOrientationPolicySpecifier alloc] initWithComponentOrder:&unk_283370B68];
    coverSheetFollowsDeviceOrientationSpecifier = self->_coverSheetFollowsDeviceOrientationSpecifier;
    self->_coverSheetFollowsDeviceOrientationSpecifier = v5;

    v7 = [(SBTraitsOrientationStageComponent *)[SBTraitsCoverSheetFollowsSecureAppOrientationPolicySpecifier alloc] initWithComponentOrder:&unk_283370B80];
    coverSheetFollowsSecureAppOrientationSpecifier = self->_coverSheetFollowsSecureAppOrientationSpecifier;
    self->_coverSheetFollowsSecureAppOrientationSpecifier = v7;

    v9 = [v16 orientationResolutionStage];
    [v9 addResolutionPolicySpecifier:self->_coverSheetFollowsDeviceOrientationSpecifier];

    v10 = [v16 orientationResolutionStage];
    [v10 addResolutionPolicySpecifier:self->_coverSheetFollowsSecureAppOrientationSpecifier update:0];
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = [MEMORY[0x277D75418] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12)
    {
      goto LABEL_12;
    }
  }

  if (!self->_unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation)
  {
    v13 = [(SBTraitsOrientationStageComponent *)[SBTraitsUnlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation alloc] initWithComponentOrder:&unk_283370B98];
    unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation = self->_unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation;
    self->_unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation = v13;

    v15 = [v16 orientationResolutionStage];
    [v15 addResolutionPolicySpecifier:self->_unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation];
  }

LABEL_12:
}

- (void)_noteCoverSheetDidDismiss
{
  self->_isCoversheetPresented = 0;
  [(SBDeviceOrientationUpdateDeferralAssertion *)self->_deviceUpdateDeferralAssertion invalidate];
  v11 = [(SBTraitsPipelineManager *)self arbiter];
  if (self->_coverSheetIsolationSpecifier)
  {
    v3 = [v11 orientationResolutionStage];
    [v3 removeResolutionPolicySpecifier:self->_coverSheetIsolationSpecifier update:0];

    coverSheetIsolationSpecifier = self->_coverSheetIsolationSpecifier;
    self->_coverSheetIsolationSpecifier = 0;
  }

  if (self->_coverSheetFollowsDeviceOrientationSpecifier)
  {
    v5 = [v11 orientationResolutionStage];
    [v5 removeResolutionPolicySpecifier:self->_coverSheetFollowsDeviceOrientationSpecifier];

    coverSheetFollowsDeviceOrientationSpecifier = self->_coverSheetFollowsDeviceOrientationSpecifier;
    self->_coverSheetFollowsDeviceOrientationSpecifier = 0;
  }

  if (self->_coverSheetFollowsSecureAppOrientationSpecifier)
  {
    v7 = [v11 orientationResolutionStage];
    [v7 removeResolutionPolicySpecifier:self->_coverSheetFollowsSecureAppOrientationSpecifier];

    coverSheetFollowsSecureAppOrientationSpecifier = self->_coverSheetFollowsSecureAppOrientationSpecifier;
    self->_coverSheetFollowsSecureAppOrientationSpecifier = 0;
  }

  if (self->_unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation)
  {
    v9 = [v11 orientationResolutionStage];
    [v9 removeResolutionPolicySpecifier:self->_unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation];

    unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation = self->_unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation;
    self->_unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation = 0;
  }

  [(SBTraitsEmbeddedDisplayPipelineManager *)self _evaluateNonFlatOverrideNecessityForCurrentDeviceOrientation:[(TRAArbitrationDeviceOrientationInputs *)self->_orientationInputs currentDeviceOrientation]];
}

- (void)_evaluateNonFlatOverrideNecessityForCurrentDeviceOrientation:(int64_t)a3
{
  v5 = [(SBTraitsPipelineManager *)self arbiter];
  if (self->_isCoversheetPresented)
  {
    if (!self->_lastNonFlatOverrideInputsValidator)
    {
      goto LABEL_12;
    }

    v15 = v5;
    v6 = [v5 inputsValidationStage];
    [v6 removeInputsValidator:self->_lastNonFlatOverrideInputsValidator update:0];

    lastNonFlatOverrideInputsValidator = self->_lastNonFlatOverrideInputsValidator;
    self->_lastNonFlatOverrideInputsValidator = 0;
  }

  else
  {
    v15 = v5;
    v8 = [(SBTraitsPipelineManager *)self sceneDelegate];
    v9 = [v8 windowScene];
    v10 = [v9 layoutStateProvider];
    lastNonFlatOverrideInputsValidator = [v10 layoutState];

    v11 = [lastNonFlatOverrideInputsValidator unlockedEnvironmentMode];
    if ((a3 - 1) > 3)
    {
      [(SBTraitsEmbeddedDisplayPipelineManager *)self _addLastNonFlatOverrideInputsValidatorIfNeeded];
    }

    else
    {
      if (self->_lastNonFlatOverrideInputsValidator)
      {
        v12 = v11 == 1;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        v13 = [v15 inputsValidationStage];
        [v13 removeInputsValidator:self->_lastNonFlatOverrideInputsValidator update:0];

        v14 = self->_lastNonFlatOverrideInputsValidator;
        self->_lastNonFlatOverrideInputsValidator = 0;
      }
    }
  }

  v5 = v15;
LABEL_12:
}

- (int64_t)_bootOrientation
{
  v2 = MGGetSInt32Answer();
  v3 = 2;
  v4 = 4;
  if (v2 != 270)
  {
    v4 = 0;
  }

  if (v2 != 180)
  {
    v3 = v4;
  }

  v5 = 1;
  v6 = 3;
  if (v2 != 90)
  {
    v6 = 0;
  }

  if (v2)
  {
    v5 = v6;
  }

  if (v2 <= 179)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

@end