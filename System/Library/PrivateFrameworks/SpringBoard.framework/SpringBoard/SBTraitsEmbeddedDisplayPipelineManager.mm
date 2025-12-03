@interface SBTraitsEmbeddedDisplayPipelineManager
- (BOOL)_controlCenterIsOnTheSameWindowScene:(id)scene;
- (SBTraitsEmbeddedDisplayPipelineManager)initWithArbiter:(id)arbiter sceneDelegate:(id)delegate userInterfaceStyleProvider:(id)provider;
- (id)_layoutCoordinator;
- (id)_orientationInputsForDeviceOrientation:(int64_t)orientation;
- (id)_orientationStateDescription;
- (id)defaultOrientationAnimationSettingsAnimatable:(BOOL)animatable;
- (int64_t)_bootOrientation;
- (void)_addLastNonFlatOverrideInputsValidatorIfNeeded;
- (void)_controlCenterDidDismiss:(id)dismiss;
- (void)_controlCenterWillDismiss:(id)dismiss;
- (void)_evaluateNonFlatOverrideNecessityForCurrentDeviceOrientation:(int64_t)orientation;
- (void)_noteCoverSheetDidDismiss;
- (void)_noteCoverSheetDidPresent;
- (void)_noteCoverSheetWillDismiss;
- (void)_noteCoverSheetWillPresent;
- (void)_noteInputsNeedUpdateAnimated:(BOOL)animated reason:(id)reason;
- (void)_noteInputsNeedUpdateWithAnimationSettings:(id)settings fence:(id)fence reason:(id)reason;
- (void)_updateInputs;
- (void)_updateOrientationEventsEnabledState;
- (void)_updateOrientationInputsDeferralAnimated:(BOOL)animated;
- (void)_userOrientationLockChanged:(id)changed;
- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation;
- (void)ambientPresentationController:(id)controller didUpdateAmbientDisplayStyle:(int64_t)style;
- (void)ambientPresentationController:(id)controller didUpdatePresented:(BOOL)presented;
- (void)ambientPresentationController:(id)controller willUpdatePresented:(BOOL)presented;
- (void)arbiter:(id)arbiter didCompleteUpdateWithContext:(id)context;
- (void)backlightController:(id)controller willAnimateBacklightToFactor:(float)factor source:(int64_t)source;
- (void)dealloc;
- (void)didChangeSettingsForParticipant:(id)participant context:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)setKeyboardFocusContext:(id)context;
- (void)setupDefaultPipelineForArbiter:(id)arbiter;
- (void)startListeningForLockScreenUIPresentations;
- (void)startObservingAmbientPresentation;
- (void)startObservingLayoutStateTransitions;
- (void)updatePreferencesForParticipant:(id)participant updater:(id)updater;
- (void)userInterfaceStyleDidUpdateWithAnimationSettings:(id)settings fence:(id)fence;
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

    arbiter = [(SBTraitsPipelineManager *)self arbiter];
    orientationResolutionStage = [arbiter orientationResolutionStage];
    [orientationResolutionStage addResolutionPolicySpecifier:self->_coverSheetIsolationSpecifier update:0];
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
    arbiter = [(SBTraitsPipelineManager *)self arbiter];
    inputsValidationStage = [arbiter inputsValidationStage];
    [inputsValidationStage addInputsValidator:self->_lastNonFlatOverrideInputsValidator];
  }
}

- (void)_updateOrientationEventsEnabledState
{
  _isBacklightOn = [(SBTraitsEmbeddedDisplayPipelineManager *)self _isBacklightOn];
  v4 = +[SBPlatformController sharedInstance];
  prefersAlwaysOnOrientation = [v4 prefersAlwaysOnOrientation];

  v6 = (_isBacklightOn | prefersAlwaysOnOrientation) & 1;
  if (v6 != [(BKSAccelerometer *)self->_accelerometer orientationEventsEnabled])
  {
    accelerometer = self->_accelerometer;

    [(BKSAccelerometer *)accelerometer setOrientationEventsEnabled:v6];
  }
}

- (SBTraitsEmbeddedDisplayPipelineManager)initWithArbiter:(id)arbiter sceneDelegate:(id)delegate userInterfaceStyleProvider:(id)provider
{
  arbiterCopy = arbiter;
  delegateCopy = delegate;
  providerCopy = provider;
  v24.receiver = self;
  v24.super_class = SBTraitsEmbeddedDisplayPipelineManager;
  v11 = [(SBTraitsPipelineManager *)&v24 initWithArbiter:arbiterCopy sceneDelegate:delegateCopy userInterfaceStyleProvider:providerCopy];
  if (v11)
  {
    v12 = +[SBOrientationLockManager sharedInstance];
    userOrientationLockManager = v11->_userOrientationLockManager;
    v11->_userOrientationLockManager = v12;

    _legacy_deviceOrientationUpdateManager = [SBApp _legacy_deviceOrientationUpdateManager];
    systemOrientationLockManager = v11->_systemOrientationLockManager;
    v11->_systemOrientationLockManager = _legacy_deviceOrientationUpdateManager;

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
  arbiter = [(SBTraitsPipelineManager *)self arbiter];

  if (arbiter)
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  arbiter = [(SBTraitsPipelineManager *)self arbiter];
  [arbiter removeObserver:self];

  _layoutCoordinator = [(SBTraitsEmbeddedDisplayPipelineManager *)self _layoutCoordinator];
  [_layoutCoordinator removeObserver:self];

  [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:0];
  sceneDelegate = [(SBTraitsPipelineManager *)self sceneDelegate];
  windowScene = [sceneDelegate windowScene];
  ambientPresentationController = [windowScene ambientPresentationController];
  [ambientPresentationController removeObserver:self];

  v9.receiver = self;
  v9.super_class = SBTraitsEmbeddedDisplayPipelineManager;
  [(SBTraitsEmbeddedDisplayPipelineManager *)&v9 dealloc];
}

- (void)setupDefaultPipelineForArbiter:(id)arbiter
{
  arbiterCopy = arbiter;
  if (arbiterCopy)
  {
    v48 = arbiterCopy;
    v5 = objc_alloc_init(MEMORY[0x277CF05B0]);
    accelerometer = self->_accelerometer;
    self->_accelerometer = v5;

    [(BKSAccelerometer *)self->_accelerometer setDelegate:self];
    v7 = [objc_alloc(MEMORY[0x277D734C0]) initWithKeyboardFocusedParticipantUniqueIdentifier:0];
    keyboardInputs = self->_keyboardInputs;
    self->_keyboardInputs = v7;

    v9 = objc_alloc(MEMORY[0x277D734B8]);
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v11 = [v9 initWithIsPad:{objc_msgSend(currentDevice, "userInterfaceIdiom") == 1}];
    deviceIdiomInputs = self->_deviceIdiomInputs;
    self->_deviceIdiomInputs = v11;

    v13 = [(SBTraitsEmbeddedDisplayPipelineManager *)self _orientationInputsForDeviceOrientation:[(BKSAccelerometer *)self->_accelerometer currentDeviceOrientation]];
    orientationInputs = self->_orientationInputs;
    self->_orientationInputs = v13;

    v15 = objc_alloc(MEMORY[0x277D734C8]);
    userInterfaceStyleProvider = [(SBTraitsPipelineManager *)self userInterfaceStyleProvider];
    v17 = [v15 initWithUserInterfaceStyle:{objc_msgSend(userInterfaceStyleProvider, "currentStyle")}];
    userInterfaceStyleInputs = self->_userInterfaceStyleInputs;
    self->_userInterfaceStyleInputs = v17;

    v19 = [objc_alloc(MEMORY[0x277D734A0]) initWithAmbientPresented:0 ambientDisplayStyle:0];
    ambientPresentationInputs = self->_ambientPresentationInputs;
    self->_ambientPresentationInputs = v19;

    [(SBTraitsEmbeddedDisplayPipelineManager *)self _updateInputs];
    inputsValidationStage = [v48 inputsValidationStage];
    v22 = [(SBTraitsInputsValidator *)[SBTraitsInputsAllUnknownOrientationValidator alloc] initWithValidatorOrder:&unk_283370AC0];
    v23 = [[SBTraitsInputsOrientationLockValidator alloc] initWithValidatorOrder:&unk_283370AD8];
    orientationLockInputsValidator = self->_orientationLockInputsValidator;
    self->_orientationLockInputsValidator = v23;

    [inputsValidationStage addInputsValidator:v22 update:0];
    [inputsValidationStage addInputsValidator:self->_orientationLockInputsValidator update:0];
    zOrderResolutionStage = [v48 zOrderResolutionStage];
    v26 = [(SBTraitsZOrderStageComponent *)[SBTraitsZOrderDefaultResolver alloc] initWithComponentOrder:&unk_283370AF0];
    [zOrderResolutionStage addStageResolver:v26];

    orientationResolutionStage = [v48 orientationResolutionStage];
    v28 = [[SBTraitsOrientationDefaultResolutionPolicySpecifier alloc] initWithComponentOrder:&unk_283370AF0 dataSource:self->_rolesAndDefaultPoliciesProvider];
    [orientationResolutionStage addResolutionPolicySpecifier:v28 update:0];

    v29 = [(SBTraitsOrientationStageComponent *)[SBTraitsOrientationDefaultTreeNodesSpecifier alloc] initWithComponentOrder:&unk_283370AF0];
    [orientationResolutionStage addNodesSpecificationsSpecifier:v29];

    v30 = [[SBTraitsOrientationDefaultTreeResolver alloc] initWithComponentOrder:&unk_283370AF0];
    [orientationResolutionStage addStageResolver:v30];

    ambientPresentationResolutionStage = [v48 ambientPresentationResolutionStage];
    v32 = [[SBTraitsAmbientPresentationDefaultResolver alloc] initWithThresholdRole:@"SBTraitsParticipantRoleAmbient" componentOrder:&unk_283370AF0];
    [ambientPresentationResolutionStage addStageResolver:v32];

    userInterfaceStyleResolutionStage = [v48 userInterfaceStyleResolutionStage];
    v34 = [(SBTraitsUserInterfaceStyleStageComponent *)[SBTraitsUserInterfaceStyleDefaultResolver alloc] initWithComponentOrder:&unk_283370AF0];
    [userInterfaceStyleResolutionStage addStageResolver:v34];

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
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      _bootOrientation = [(SBTraitsEmbeddedDisplayPipelineManager *)self _bootOrientation];
      if (_bootOrientation)
      {
        v45 = _bootOrientation;
        [(SBTraitsEmbeddedDisplayPipelineManager *)self _addLastNonFlatOverrideInputsValidatorIfNeeded];
        [(SBTraitsInputsOrientationNonFlatOverrideValidator *)self->_lastNonFlatOverrideInputsValidator setLastNonFlatOrientationOverride:v45];
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__userOrientationLockChanged_ name:*MEMORY[0x277D67A98] object:0];
    [defaultCenter addObserver:self selector:sel__controlCenterWillDismiss_ name:@"SBControlCenterWillDismissNotification" object:0];
    [defaultCenter addObserver:self selector:sel__controlCenterDidDismiss_ name:@"SBControlCenterDidDismissNotification" object:0];
    [defaultCenter addObserver:self selector:sel__systemOrientationLockChanged_ name:@"SBDeviceOrientationUpdateManager-DeferralAssertionAcquired" object:0];
    [defaultCenter addObserver:self selector:sel__systemOrientationLockChanged_ name:@"SBDeviceOrientationUpdateManager-HasNoActiveDeferralAssertions" object:0];
    v47 = +[SBBacklightController sharedInstanceIfExists];
    self->_backlightIsOn = [v47 screenIsOn];
    [v47 addObserver:self];
    [v48 addObserver:self];

    arbiterCopy = v48;
  }
}

- (void)startObservingLayoutStateTransitions
{
  _layoutCoordinator = [(SBTraitsEmbeddedDisplayPipelineManager *)self _layoutCoordinator];
  [_layoutCoordinator addObserver:self];
}

- (void)startListeningForLockScreenUIPresentations
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  sceneDelegate = [(SBTraitsPipelineManager *)self sceneDelegate];
  windowScene = [sceneDelegate windowScene];

  [defaultCenter addObserver:self selector:sel__noteCoverSheetWillPresent name:@"SBLockScreenUIWillPresentNotification" object:windowScene];
  [defaultCenter addObserver:self selector:sel__noteCoverSheetDidPresent name:@"SBLockScreenUIDidPresentNotification" object:windowScene];
  [defaultCenter addObserver:self selector:sel__noteCoverSheetWillDismiss name:@"SBLockScreenUIWillDismissNotification" object:windowScene];
  [defaultCenter addObserver:self selector:sel__noteCoverSheetDidDismiss name:@"SBLockScreenUIDidDismissNotification" object:windowScene];
}

- (void)startObservingAmbientPresentation
{
  sceneDelegate = [(SBTraitsPipelineManager *)self sceneDelegate];
  windowScene = [sceneDelegate windowScene];
  ambientPresentationController = [windowScene ambientPresentationController];

  -[SBTraitsEmbeddedDisplayPipelineManager ambientPresentationController:didUpdatePresented:](self, "ambientPresentationController:didUpdatePresented:", ambientPresentationController, [ambientPresentationController isPresented]);
  [ambientPresentationController addObserver:self];
}

- (void)userInterfaceStyleDidUpdateWithAnimationSettings:(id)settings fence:(id)fence
{
  v6 = MEMORY[0x277D734C8];
  fenceCopy = fence;
  settingsCopy = settings;
  v8 = [v6 alloc];
  userInterfaceStyleProvider = [(SBTraitsPipelineManager *)self userInterfaceStyleProvider];
  v10 = [v8 initWithUserInterfaceStyle:{objc_msgSend(userInterfaceStyleProvider, "currentStyle")}];
  userInterfaceStyleInputs = self->_userInterfaceStyleInputs;
  self->_userInterfaceStyleInputs = v10;

  [(SBTraitsEmbeddedDisplayPipelineManager *)self _updateInputs];
  [(SBTraitsEmbeddedDisplayPipelineManager *)self _noteInputsNeedUpdateWithAnimationSettings:settingsCopy fence:fenceCopy reason:@"User Interface Style changed"];
}

- (void)setKeyboardFocusContext:(id)context
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = SBTraitsEmbeddedDisplayPipelineManager;
  [(SBTraitsPipelineManager *)&v14 setKeyboardFocusContext:contextCopy];
  keyboardFocusInputsValidator = self->_keyboardFocusInputsValidator;
  if (!keyboardFocusInputsValidator || (-[SBTraitsInputsKeyboardFocusValidator focusContext](keyboardFocusInputsValidator, "focusContext"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqual:contextCopy], v6, (v7 & 1) == 0))
  {
    arbiter = [(SBTraitsPipelineManager *)self arbiter];
    v9 = arbiter;
    if (self->_keyboardFocusInputsValidator)
    {
      if (!contextCopy)
      {
        inputsValidationStage = [arbiter inputsValidationStage];
        [inputsValidationStage removeInputsValidator:self->_keyboardFocusInputsValidator];

        inputsValidationStage2 = self->_keyboardFocusInputsValidator;
        self->_keyboardFocusInputsValidator = 0;
LABEL_8:
      }
    }

    else if (contextCopy)
    {
      v12 = objc_alloc_init(SBTraitsInputsKeyboardFocusValidator);
      v13 = self->_keyboardFocusInputsValidator;
      self->_keyboardFocusInputsValidator = v12;

      inputsValidationStage2 = [v9 inputsValidationStage];
      [inputsValidationStage2 addInputsValidator:self->_keyboardFocusInputsValidator];
      goto LABEL_8;
    }

    [(SBTraitsInputsKeyboardFocusValidator *)self->_keyboardFocusInputsValidator setFocusContext:contextCopy];
    [(SBTraitsEmbeddedDisplayPipelineManager *)self _noteInputsNeedUpdateAnimated:1 reason:@"keyboard focus context changed"];
  }
}

- (id)_layoutCoordinator
{
  sceneDelegate = [(SBTraitsPipelineManager *)self sceneDelegate];
  windowScene = [sceneDelegate windowScene];
  layoutStateTransitionCoordinator = [windowScene layoutStateTransitionCoordinator];

  return layoutStateTransitionCoordinator;
}

- (void)_userOrientationLockChanged:(id)changed
{
  effectiveLockedOrientation = [(SBOrientationLockManager *)self->_userOrientationLockManager effectiveLockedOrientation];
  if ([(SBOrientationLockManager *)self->_userOrientationLockManager isEffectivelyLocked])
  {
    v5 = (effectiveLockedOrientation - 1) >= 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    effectiveLockedOrientation = [(SBOrientationLockManager *)self->_userOrientationLockManager userLockOrientation];
  }

  [(SBTraitsInputsOrientationLockValidator *)self->_orientationLockInputsValidator setLockOrientation:effectiveLockedOrientation];
  _isBacklightOn = [(SBTraitsEmbeddedDisplayPipelineManager *)self _isBacklightOn];

  [(SBTraitsEmbeddedDisplayPipelineManager *)self _noteInputsNeedUpdateAnimated:_isBacklightOn reason:@"User orientation lock changed."];
}

- (void)_updateOrientationInputsDeferralAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _isBacklightOn = [(SBTraitsEmbeddedDisplayPipelineManager *)self _isBacklightOn];
  v6 = [(SBDeviceOrientationUpdateManager *)self->_systemOrientationLockManager isCurrentlyDeferringOrientationUpdates]| ~_isBacklightOn;
  [(SBTraitsInputsOrientationLockValidator *)self->_orientationLockInputsValidator setPrefersDeferringOrientationUpdates:v6 & 1];
  if ((v6 & 1) == 0)
  {

    [(SBTraitsEmbeddedDisplayPipelineManager *)self _noteInputsNeedUpdateAnimated:animatedCopy reason:@"Stop deferring orientation inputs updates."];
  }
}

- (void)_updateInputs
{
  v3 = [objc_alloc(MEMORY[0x277D734B0]) initWithInterfaceIdiomInputs:self->_deviceIdiomInputs userInterfaceStyleInputs:self->_userInterfaceStyleInputs deviceOrientationInputs:self->_orientationInputs keyboardInputs:self->_keyboardInputs ambientPresentationInputs:self->_ambientPresentationInputs];
  inputs = self->_inputs;
  self->_inputs = v3;
}

- (void)_noteInputsNeedUpdateAnimated:(BOOL)animated reason:(id)reason
{
  animatedCopy = animated;
  reasonCopy = reason;
  v7 = [(SBTraitsEmbeddedDisplayPipelineManager *)self defaultOrientationAnimationSettingsAnimatable:animatedCopy];
  [(SBTraitsEmbeddedDisplayPipelineManager *)self _noteInputsNeedUpdateWithAnimationSettings:v7 fence:0 reason:reasonCopy];
}

- (void)_noteInputsNeedUpdateWithAnimationSettings:(id)settings fence:(id)fence reason:(id)reason
{
  settingsCopy = settings;
  fenceCopy = fence;
  reasonCopy = reason;
  arbiter = [(SBTraitsPipelineManager *)self arbiter];
  v13 = objc_alloc(MEMORY[0x277D73498]);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __98__SBTraitsEmbeddedDisplayPipelineManager__noteInputsNeedUpdateWithAnimationSettings_fence_reason___block_invoke;
  v21 = &unk_2783B5238;
  v22 = settingsCopy;
  v23 = fenceCopy;
  v24 = reasonCopy;
  v25 = a2;
  v14 = reasonCopy;
  v15 = fenceCopy;
  v16 = settingsCopy;
  v17 = [v13 initWithBuilder:&v18];
  [arbiter setNeedsUpdateArbitrationWithContext:{v17, v18, v19, v20, v21}];
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

- (void)_controlCenterWillDismiss:(id)dismiss
{
  if ([(SBTraitsEmbeddedDisplayPipelineManager *)self _controlCenterIsOnTheSameWindowScene:dismiss]&& !self->_controlCenterIsolationSpecifier)
  {
    v4 = [(SBTraitsRoleResolvesOrientationInIsolationPolicySpecifier *)[SBTraitsControlCenterInIsolationPolicySpecifier alloc] initWithComponentOrder:&unk_283370B08];
    controlCenterIsolationSpecifier = self->_controlCenterIsolationSpecifier;
    self->_controlCenterIsolationSpecifier = v4;

    arbiter = [(SBTraitsPipelineManager *)self arbiter];
    orientationResolutionStage = [arbiter orientationResolutionStage];
    [orientationResolutionStage addResolutionPolicySpecifier:self->_controlCenterIsolationSpecifier update:0];
  }
}

- (void)_controlCenterDidDismiss:(id)dismiss
{
  if ([(SBTraitsEmbeddedDisplayPipelineManager *)self _controlCenterIsOnTheSameWindowScene:dismiss]&& self->_controlCenterIsolationSpecifier)
  {
    arbiter = [(SBTraitsPipelineManager *)self arbiter];
    orientationResolutionStage = [arbiter orientationResolutionStage];
    [orientationResolutionStage removeResolutionPolicySpecifier:self->_controlCenterIsolationSpecifier];

    controlCenterIsolationSpecifier = self->_controlCenterIsolationSpecifier;
    self->_controlCenterIsolationSpecifier = 0;
  }
}

- (BOOL)_controlCenterIsOnTheSameWindowScene:(id)scene
{
  sceneCopy = scene;
  sceneDelegate = [(SBTraitsPipelineManager *)self sceneDelegate];
  windowScene = [sceneDelegate windowScene];

  object = [sceneCopy object];

  v8 = [object objectForKeyedSubscript:@"SBControlCenterNotificationWindowSceneKey"];

  return windowScene == v8;
}

- (id)defaultOrientationAnimationSettingsAnimatable:(BOOL)animatable
{
  animatableCopy = animatable;
  if ([(SBTraitsEmbeddedDisplayPipelineManager *)self _isBacklightOn])
  {
    v7.receiver = self;
    v7.super_class = SBTraitsEmbeddedDisplayPipelineManager;
    v5 = [(SBTraitsPipelineManager *)&v7 defaultOrientationAnimationSettingsAnimatable:animatableCopy];
  }

  else
  {
    v5 = [MEMORY[0x277CF0B70] settingsWithDuration:0.0];
  }

  return v5;
}

- (void)backlightController:(id)controller willAnimateBacklightToFactor:(float)factor source:(int64_t)source
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = SBSBacklightChangeSourceDescription(source);
    v12 = 138543618;
    v13 = v9;
    v14 = 2048;
    factorCopy = factor;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[EmbeddedPipeline] Backlight is animating with source: %{public}@ to factor: %.1f", &v12, 0x16u);
  }

  v10 = BSFloatGreaterThanFloat();
  _isBacklightOn = [(SBTraitsEmbeddedDisplayPipelineManager *)self _isBacklightOn];
  self->_backlightIsOn = v10;
  [(SBTraitsEmbeddedDisplayPipelineManager *)self _updateOrientationEventsEnabledState];
  if (v10 != _isBacklightOn)
  {
    [(SBTraitsEmbeddedDisplayPipelineManager *)self _updateOrientationInputsDeferralAnimated:0];
  }
}

- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation
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

  [(SBTraitsEmbeddedDisplayPipelineManager *)self _evaluateNonFlatOverrideNecessityForCurrentDeviceOrientation:orientation];
  v8 = [(SBTraitsEmbeddedDisplayPipelineManager *)self _orientationInputsForDeviceOrientation:orientation];
  orientationInputs = self->_orientationInputs;
  self->_orientationInputs = v8;

  [(SBTraitsEmbeddedDisplayPipelineManager *)self _updateInputs];
  [(SBTraitsEmbeddedDisplayPipelineManager *)self _noteInputsNeedUpdateAnimated:[(SBTraitsEmbeddedDisplayPipelineManager *)self _isBacklightOn] reason:@"Device orientation change"];
}

- (id)_orientationInputsForDeviceOrientation:(int64_t)orientation
{
  NonFlatDeviceOrientation = orientation;
  if ((orientation - 1) >= 4)
  {
    if (self->_lastNonFlatOrientation)
    {
      goto LABEL_5;
    }

    NonFlatDeviceOrientation = BKHIDServicesGetNonFlatDeviceOrientation();
  }

  self->_lastNonFlatOrientation = NonFlatDeviceOrientation;
LABEL_5:
  v6 = [objc_alloc(MEMORY[0x277D734A8]) initWithCurrentDeviceOrientation:orientation nonFlatDeviceOrientation:self->_lastNonFlatOrientation];

  return v6;
}

- (void)updatePreferencesForParticipant:(id)participant updater:(id)updater
{
  updaterCopy = updater;
  [updaterCopy updateZOrderLevelPreferencesWithBlock:&__block_literal_global_142];
  [updaterCopy updateOrientationPreferencesWithBlock:&__block_literal_global_101_1];
}

- (void)didChangeSettingsForParticipant:(id)participant context:(id)context
{
  participantCopy = participant;
  role = [participantCopy role];
  v6 = SBTraitsArbiterOrientationActuationEnabledForRole(role);

  v7 = participantCopy;
  if (v6)
  {
    currentSettings = [(TRAParticipant *)self->_activeOrientationParticipant currentSettings];
    orientationSettings = [currentSettings orientationSettings];
    validatedOrientationInputs = [orientationSettings validatedOrientationInputs];
    currentDeviceOrientation = [validatedOrientationInputs currentDeviceOrientation];

    previousSettings = [(TRAParticipant *)self->_activeOrientationParticipant previousSettings];
    orientationSettings2 = [previousSettings orientationSettings];
    validatedOrientationInputs2 = [orientationSettings2 validatedOrientationInputs];
    currentDeviceOrientation2 = [validatedOrientationInputs2 currentDeviceOrientation];

    if (currentDeviceOrientation != currentDeviceOrientation2)
    {
      [(SBDeviceOrientationUpdateManager *)self->_systemOrientationLockManager _legacy_enqueueOrientationUpdateToDeviceOrientation:currentDeviceOrientation source:@"pipeline manager"];
    }

    sbf_currentOrientation = [participantCopy sbf_currentOrientation];
    sbf_previousOrientation = [participantCopy sbf_previousOrientation];
    v7 = participantCopy;
    if (sbf_currentOrientation != sbf_previousOrientation)
    {
      kdebug_trace();
      [MEMORY[0x277CD9FF0] bs_performAfterCommit:&__block_literal_global_108];
      lastNonFlatOverrideInputsValidator = self->_lastNonFlatOverrideInputsValidator;
      if (lastNonFlatOverrideInputsValidator)
      {
        [(SBTraitsInputsOrientationNonFlatOverrideValidator *)lastNonFlatOverrideInputsValidator setLastNonFlatOrientationOverride:sbf_currentOrientation];
      }

      v19 = [SBAnimationUtilities animationSettingsForRotationFromInterfaceOrientation:sbf_previousOrientation toInterfaceOrientation:sbf_currentOrientation];
      v20 = SBApp;
      [v19 duration];
      [v20 _legacy_noteInterfaceOrientationChanged:sbf_currentOrientation duration:1 updateMirroredDisplays:1 force:@"SBTraitArbiterPipelineManager" logMessage:?];
      sceneDelegate = [(SBTraitsPipelineManager *)self sceneDelegate];
      windowScene = [sceneDelegate windowScene];
      displayLayoutPublisher = [windowScene displayLayoutPublisher];
      [displayLayoutPublisher setInterfaceOrientation:sbf_currentOrientation];

      v7 = participantCopy;
    }
  }
}

- (void)arbiter:(id)arbiter didCompleteUpdateWithContext:(id)context
{
  v5 = self->_arbiterRunningUpdatesCount - 1;
  self->_arbiterRunningUpdatesCount = v5;
  if (!v5)
  {
    orientationActuationContext = [context orientationActuationContext];
    drawingFence = [orientationActuationContext drawingFence];
    [drawingFence invalidate];
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  contextCopy = context;
  arbiter = [(SBTraitsPipelineManager *)self arbiter];
  fromLayoutState = [contextCopy fromLayoutState];
  toLayoutState = [contextCopy toLayoutState];
  applicationTransitionContext = [contextCopy applicationTransitionContext];

  v9 = [SBSwitcherLayoutTransitionNotes alloc];
  request = [applicationTransitionContext request];
  v11 = [(SBSwitcherLayoutTransitionNotes *)v9 initWithFromPreviousState:fromLayoutState currentLayoutState:toLayoutState transitionRequest:request];

  fromHomeScreen = [(SBSwitcherLayoutTransitionNotes *)v11 fromHomeScreen];
  inApp = [(SBSwitcherLayoutTransitionNotes *)v11 inApp];
  v14 = inApp;
  if (!fromHomeScreen)
  {
    if (![(SBSwitcherLayoutTransitionNotes *)v11 inHomeScreen])
    {
      goto LABEL_20;
    }

    if (self->_homeFollowsSwitcherSpecifier)
    {
      if ([(SBSwitcherLayoutTransitionNotes *)v11 isHomeButtonInitiated])
      {
        orientationResolutionStage = [arbiter orientationResolutionStage];
        [orientationResolutionStage removeResolutionPolicySpecifier:self->_homeFollowsSwitcherSpecifier animate:0];

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

        homeFollowsSwitcherSpecifier = [arbiter orientationResolutionStage];
        [homeFollowsSwitcherSpecifier addResolutionPolicySpecifier:self->_homeIsolationSpecifier animate:0];
      }
    }

LABEL_18:
    if (!self->_dockFollowsHomeSpecifier)
    {
      v25 = [(SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier *)[SBTraitsDockFollowsHomePolicySpecifier alloc] initWithComponentOrder:&unk_283370AD8];
      dockFollowsHomeSpecifier = self->_dockFollowsHomeSpecifier;
      self->_dockFollowsHomeSpecifier = v25;

      orientationResolutionStage2 = [arbiter orientationResolutionStage];
      [orientationResolutionStage2 addResolutionPolicySpecifier:self->_dockFollowsHomeSpecifier];
    }

LABEL_20:
    if (![(SBSwitcherLayoutTransitionNotes *)v11 fromApp]|| !v14)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (inApp && !self->_dockFollowsHomeSpecifier)
  {
    v15 = [(SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier *)[SBTraitsDockFollowsHomePolicySpecifier alloc] initWithComponentOrder:&unk_283370AD8];
    v16 = self->_dockFollowsHomeSpecifier;
    self->_dockFollowsHomeSpecifier = v15;

    orientationResolutionStage3 = [arbiter orientationResolutionStage];
    [orientationResolutionStage3 addResolutionPolicySpecifier:self->_dockFollowsHomeSpecifier];
  }

  if ([(SBSwitcherLayoutTransitionNotes *)v11 inAnySwitcher]&& !self->_homeFollowsSwitcherSpecifier)
  {
    v20 = [(SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier *)[SBTraitsHomeFollowsSwitcherRawPolicySpecifier alloc] initWithComponentOrder:&unk_283370AC0];
    v21 = self->_homeFollowsSwitcherSpecifier;
    self->_homeFollowsSwitcherSpecifier = v20;

    orientationResolutionStage4 = [arbiter orientationResolutionStage];
    [orientationResolutionStage4 addResolutionPolicySpecifier:self->_homeFollowsSwitcherSpecifier animate:0];

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

    orientationResolutionStage5 = [arbiter orientationResolutionStage];
    [orientationResolutionStage5 addResolutionPolicySpecifier:self->_controlCenterIsolationSpecifier update:0];
  }

LABEL_23:
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  contextCopy = context;
  arbiter = [(SBTraitsPipelineManager *)self arbiter];
  fromLayoutState = [contextCopy fromLayoutState];
  toLayoutState = [contextCopy toLayoutState];
  applicationTransitionContext = [contextCopy applicationTransitionContext];

  v9 = [SBSwitcherLayoutTransitionNotes alloc];
  request = [applicationTransitionContext request];
  v11 = [(SBSwitcherLayoutTransitionNotes *)v9 initWithFromPreviousState:fromLayoutState currentLayoutState:toLayoutState transitionRequest:request];

  if (self->_dockFollowsHomeSpecifier)
  {
    orientationResolutionStage = [arbiter orientationResolutionStage];
    [orientationResolutionStage removeResolutionPolicySpecifier:self->_dockFollowsHomeSpecifier];

    dockFollowsHomeSpecifier = self->_dockFollowsHomeSpecifier;
    self->_dockFollowsHomeSpecifier = 0;
  }

  if (self->_controlCenterIsolationSpecifier)
  {
    orientationResolutionStage2 = [arbiter orientationResolutionStage];
    [orientationResolutionStage2 removeResolutionPolicySpecifier:self->_controlCenterIsolationSpecifier];

    controlCenterIsolationSpecifier = self->_controlCenterIsolationSpecifier;
    self->_controlCenterIsolationSpecifier = 0;
  }

  if ([(SBSwitcherLayoutTransitionNotes *)v11 inAnySwitcher]|| [(SBSwitcherLayoutTransitionNotes *)v11 inApp])
  {
    if (self->_homeIsolationSpecifier)
    {
      orientationResolutionStage3 = [arbiter orientationResolutionStage];
      [orientationResolutionStage3 removeResolutionPolicySpecifier:self->_homeIsolationSpecifier];

      homeIsolationSpecifier = self->_homeIsolationSpecifier;
      self->_homeIsolationSpecifier = 0;
    }

    if (!self->_homeFollowsSwitcherSpecifier)
    {
      v18 = [(SBTraitsRoleAFollowsRoleBOrientationPolicySpecifier *)[SBTraitsHomeFollowsSwitcherRawPolicySpecifier alloc] initWithComponentOrder:&unk_283370AC0];
      homeFollowsSwitcherSpecifier = self->_homeFollowsSwitcherSpecifier;
      self->_homeFollowsSwitcherSpecifier = v18;

      orientationResolutionStage4 = [arbiter orientationResolutionStage];
      [orientationResolutionStage4 addResolutionPolicySpecifier:self->_homeFollowsSwitcherSpecifier animate:0];
    }
  }

  else if ([(SBSwitcherLayoutTransitionNotes *)v11 inHomeScreen])
  {
    if (self->_homeFollowsSwitcherSpecifier)
    {
      orientationResolutionStage5 = [arbiter orientationResolutionStage];
      [orientationResolutionStage5 removeResolutionPolicySpecifier:self->_homeFollowsSwitcherSpecifier];

      v22 = self->_homeFollowsSwitcherSpecifier;
      self->_homeFollowsSwitcherSpecifier = 0;
    }

    if (self->_homeIsolationSpecifier)
    {
      orientationResolutionStage6 = [arbiter orientationResolutionStage];
      [orientationResolutionStage6 removeResolutionPolicySpecifier:self->_homeIsolationSpecifier];

      v24 = self->_homeIsolationSpecifier;
      self->_homeIsolationSpecifier = 0;
    }

    if ([(SBSwitcherLayoutTransitionNotes *)v11 stableInHomeScreen])
    {
      [(SBTraitsEmbeddedDisplayPipelineManager *)self _addLastNonFlatOverrideInputsValidatorIfNeeded];
    }
  }
}

- (void)ambientPresentationController:(id)controller willUpdatePresented:(BOOL)presented
{
  presentedCopy = presented;
  arbiter = [(SBTraitsPipelineManager *)self arbiter];
  ambientFollowsRawDeviceOrientationSpecifier = self->_ambientFollowsRawDeviceOrientationSpecifier;
  if (presentedCopy)
  {
    if (ambientFollowsRawDeviceOrientationSpecifier)
    {
      goto LABEL_7;
    }

    v12 = arbiter;
    v8 = [(SBTraitsRoleFollowsDeviceOrientationPolicySpecifier *)[SBAmbientFollowsRawDeviceOrientationPolicySpecifier alloc] initWithComponentOrder:&unk_283370B20];
    v9 = self->_ambientFollowsRawDeviceOrientationSpecifier;
    self->_ambientFollowsRawDeviceOrientationSpecifier = v8;

    [(SBTraitsRoleFollowsDeviceOrientationPolicySpecifier *)self->_ambientFollowsRawDeviceOrientationSpecifier setDeviceOrientationStateTypes:&unk_28336E1C0];
    orientationResolutionStage = [v12 orientationResolutionStage];
    [orientationResolutionStage addResolutionPolicySpecifier:self->_ambientFollowsRawDeviceOrientationSpecifier];
  }

  else
  {
    if (!ambientFollowsRawDeviceOrientationSpecifier)
    {
      goto LABEL_7;
    }

    v12 = arbiter;
    orientationResolutionStage2 = [arbiter orientationResolutionStage];
    [orientationResolutionStage2 removeResolutionPolicySpecifier:self->_ambientFollowsRawDeviceOrientationSpecifier];

    orientationResolutionStage = self->_ambientFollowsRawDeviceOrientationSpecifier;
    self->_ambientFollowsRawDeviceOrientationSpecifier = 0;
  }

  arbiter = v12;
LABEL_7:
}

- (void)ambientPresentationController:(id)controller didUpdatePresented:(BOOL)presented
{
  obj = [objc_alloc(MEMORY[0x277D734A0]) initWithAmbientPresented:presented ambientDisplayStyle:{SBTraitsAmbientDisplayStyleForAmbientDisplayStyle(objc_msgSend(controller, "ambientDisplayStyle"))}];
  if (([obj isEqual:self->_ambientPresentationInputs] & 1) == 0)
  {
    objc_storeStrong(&self->_ambientPresentationInputs, obj);
    [(SBTraitsEmbeddedDisplayPipelineManager *)self _updateInputs];
    [(SBTraitsEmbeddedDisplayPipelineManager *)self _noteInputsNeedUpdateAnimated:1 reason:@"ambient presentation state changed"];
  }
}

- (void)ambientPresentationController:(id)controller didUpdateAmbientDisplayStyle:(int64_t)style
{
  controllerCopy = controller;
  v7 = SBTraitsAmbientDisplayStyleForAmbientDisplayStyle(style);
  v8 = objc_alloc(MEMORY[0x277D734A0]);
  isPresented = [controllerCopy isPresented];

  obj = [v8 initWithAmbientPresented:isPresented ambientDisplayStyle:v7];
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

    arbiter = [(SBTraitsPipelineManager *)self arbiter];
    orientationResolutionStage = [arbiter orientationResolutionStage];
    [orientationResolutionStage addResolutionPolicySpecifier:self->_coverSheetIsolationSpecifier update:0];
  }
}

- (void)_noteCoverSheetDidPresent
{
  self->_isCoversheetPresented = 1;
  [(SBDeviceOrientationUpdateDeferralAssertion *)self->_deviceUpdateDeferralAssertion invalidate];
  arbiter = [(SBTraitsPipelineManager *)self arbiter];
  if (self->_coverSheetIsolationSpecifier)
  {
    orientationResolutionStage = [arbiter orientationResolutionStage];
    [orientationResolutionStage removeResolutionPolicySpecifier:self->_coverSheetIsolationSpecifier update:0];

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

    orientationResolutionStage2 = [arbiter orientationResolutionStage];
    [orientationResolutionStage2 addResolutionPolicySpecifier:self->_coverSheetFollowsDeviceOrientationSpecifier];

    orientationResolutionStage3 = [arbiter orientationResolutionStage];
    [orientationResolutionStage3 addResolutionPolicySpecifier:self->_coverSheetFollowsSecureAppOrientationSpecifier update:0];
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      goto LABEL_12;
    }
  }

  if (!self->_unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation)
  {
    v13 = [(SBTraitsOrientationStageComponent *)[SBTraitsUnlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation alloc] initWithComponentOrder:&unk_283370B98];
    unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation = self->_unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation;
    self->_unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation = v13;

    orientationResolutionStage4 = [arbiter orientationResolutionStage];
    [orientationResolutionStage4 addResolutionPolicySpecifier:self->_unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation];
  }

LABEL_12:
}

- (void)_noteCoverSheetDidDismiss
{
  self->_isCoversheetPresented = 0;
  [(SBDeviceOrientationUpdateDeferralAssertion *)self->_deviceUpdateDeferralAssertion invalidate];
  arbiter = [(SBTraitsPipelineManager *)self arbiter];
  if (self->_coverSheetIsolationSpecifier)
  {
    orientationResolutionStage = [arbiter orientationResolutionStage];
    [orientationResolutionStage removeResolutionPolicySpecifier:self->_coverSheetIsolationSpecifier update:0];

    coverSheetIsolationSpecifier = self->_coverSheetIsolationSpecifier;
    self->_coverSheetIsolationSpecifier = 0;
  }

  if (self->_coverSheetFollowsDeviceOrientationSpecifier)
  {
    orientationResolutionStage2 = [arbiter orientationResolutionStage];
    [orientationResolutionStage2 removeResolutionPolicySpecifier:self->_coverSheetFollowsDeviceOrientationSpecifier];

    coverSheetFollowsDeviceOrientationSpecifier = self->_coverSheetFollowsDeviceOrientationSpecifier;
    self->_coverSheetFollowsDeviceOrientationSpecifier = 0;
  }

  if (self->_coverSheetFollowsSecureAppOrientationSpecifier)
  {
    orientationResolutionStage3 = [arbiter orientationResolutionStage];
    [orientationResolutionStage3 removeResolutionPolicySpecifier:self->_coverSheetFollowsSecureAppOrientationSpecifier];

    coverSheetFollowsSecureAppOrientationSpecifier = self->_coverSheetFollowsSecureAppOrientationSpecifier;
    self->_coverSheetFollowsSecureAppOrientationSpecifier = 0;
  }

  if (self->_unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation)
  {
    orientationResolutionStage4 = [arbiter orientationResolutionStage];
    [orientationResolutionStage4 removeResolutionPolicySpecifier:self->_unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation];

    unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation = self->_unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation;
    self->_unlockedEnvironmentFollowsCoverSheetInsteadOfDeviceOrientation = 0;
  }

  [(SBTraitsEmbeddedDisplayPipelineManager *)self _evaluateNonFlatOverrideNecessityForCurrentDeviceOrientation:[(TRAArbitrationDeviceOrientationInputs *)self->_orientationInputs currentDeviceOrientation]];
}

- (void)_evaluateNonFlatOverrideNecessityForCurrentDeviceOrientation:(int64_t)orientation
{
  arbiter = [(SBTraitsPipelineManager *)self arbiter];
  if (self->_isCoversheetPresented)
  {
    if (!self->_lastNonFlatOverrideInputsValidator)
    {
      goto LABEL_12;
    }

    v15 = arbiter;
    inputsValidationStage = [arbiter inputsValidationStage];
    [inputsValidationStage removeInputsValidator:self->_lastNonFlatOverrideInputsValidator update:0];

    lastNonFlatOverrideInputsValidator = self->_lastNonFlatOverrideInputsValidator;
    self->_lastNonFlatOverrideInputsValidator = 0;
  }

  else
  {
    v15 = arbiter;
    sceneDelegate = [(SBTraitsPipelineManager *)self sceneDelegate];
    windowScene = [sceneDelegate windowScene];
    layoutStateProvider = [windowScene layoutStateProvider];
    lastNonFlatOverrideInputsValidator = [layoutStateProvider layoutState];

    unlockedEnvironmentMode = [lastNonFlatOverrideInputsValidator unlockedEnvironmentMode];
    if ((orientation - 1) > 3)
    {
      [(SBTraitsEmbeddedDisplayPipelineManager *)self _addLastNonFlatOverrideInputsValidatorIfNeeded];
    }

    else
    {
      if (self->_lastNonFlatOverrideInputsValidator)
      {
        v12 = unlockedEnvironmentMode == 1;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        inputsValidationStage2 = [v15 inputsValidationStage];
        [inputsValidationStage2 removeInputsValidator:self->_lastNonFlatOverrideInputsValidator update:0];

        v14 = self->_lastNonFlatOverrideInputsValidator;
        self->_lastNonFlatOverrideInputsValidator = 0;
      }
    }
  }

  arbiter = v15;
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