@interface SBKeyboardFocusSceneController
- (BOOL)_removeSceneFromRecentsAndUpdateKeyboardFocusTargetIfNeeded:(id)needed reason:(id)reason;
- (BOOL)_updateKeyboardFocusTargetFromPreviouslyFocusedSceneIdentity:(id)identity pid:(int)pid;
- (BOOL)controlsScene:(id)scene;
- (BOOL)shouldAllowInteractionTrackingKeyboardFocusUpdateForWindow:(id)window;
- (BOOL)shouldPreventFocusForSceneWithIdentityToken:(id)token;
- (BOOL)supportsFlexibleWindowing;
- (FBScene)systemUISceneRequestingFocus;
- (NSSet)springBoardFocusLockReasons;
- (NSString)debugDescription;
- (SBKeyboardFocusSceneController)initWithWindowScene:(id)scene dependencies:(id)dependencies;
- (SBKeyboardFocusSceneController)initWithWindowScene:(id)scene policyEnforcer:(id)enforcer pipelineFactory:(id)factory dependencies:(id)dependencies;
- (SBKeyboardFocusSceneControllerDelegate)delegate;
- (SBWindowScene)sbWindowScene;
- (id)_focusLockSpringBoardWindow:(id)window forReason:(id)reason;
- (id)_topmostZOrderedSceneExcluding:(id)excluding;
- (id)_updatePolicyForReason:(id)reason;
- (id)accessibilityKeyboardFocusOverrideTarget;
- (id)bufferEventsForReason:(id)reason generation:(unint64_t)generation;
- (id)focusLockSpringBoardWindow:(id)window forReason:(id)reason;
- (id)generateUpdatedPreferencesForCoalitionMember:(id)member reason:(id)reason;
- (id)keyboardFocusRedirectionForTarget:(id)target;
- (id)mostRecentKeyboardArbiterSuggestedTarget;
- (id)newPipeline;
- (id)redirectSpringBoardLockFocusForReason:(id)reason toProcessidentifier:(int)processidentifier toSceneIdentityToken:(id)token;
- (id)sceneForFocusTarget:(id)target;
- (void)_bootDidComplete:(id)complete;
- (void)_requestPolicyReevaluationForReason:(id)reason;
- (void)appendDescriptionToStream:(id)stream;
- (void)coalitionMemberFocusDidChange:(id)change;
- (void)displayDidBecomeActive;
- (void)invalidate;
- (void)keyboardArbiterSuggestedFocusTarget:(id)target;
- (void)sceneManager:(id)manager didAddExternalForegroundApplicationSceneHandle:(id)handle;
- (void)sceneManager:(id)manager didRemoveExternalForegroundApplicationSceneHandle:(id)handle;
- (void)sceneManager:(id)manager willRemoveExternalForegroundApplicationSceneHandle:(id)handle withReason:(int64_t)reason;
- (void)setCoalition:(id)coalition;
- (void)transientOverlayScenePresenter:(id)presenter didDismissViewController:(id)controller wasTopmostPresentation:(BOOL)presentation;
@end

@implementation SBKeyboardFocusSceneController

- (id)accessibilityKeyboardFocusOverrideTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  accessibilityOverrideTarget = [WeakRetained accessibilityOverrideTarget];

  return accessibilityOverrideTarget;
}

- (id)mostRecentKeyboardArbiterSuggestedTarget
{
  recentlyUsedScenes = self->_recentlyUsedScenes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  sceneIdentityTokensWithShouldPreventFocus = [WeakRetained sceneIdentityTokensWithShouldPreventFocus];
  v5 = [(_SBRecentlyUsedSceneIdentityCache *)recentlyUsedScenes mostRecentFocusTargetForAnyProcessExcludingSceneIdentityTokens:sceneIdentityTokensWithShouldPreventFocus];

  return v5;
}

- (FBScene)systemUISceneRequestingFocus
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  systemUISceneRequestingFocus = [WeakRetained systemUISceneRequestingFocus];

  return systemUISceneRequestingFocus;
}

- (NSSet)springBoardFocusLockReasons
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __61__SBKeyboardFocusSceneController_springBoardFocusLockReasons__block_invoke;
  v19 = &unk_2783C0860;
  selfCopy = self;
  v4 = v3;
  v21 = v4;
  v5 = MEMORY[0x223D6F7F0](&v16);
  if ([(_SBKeyboardFocusSceneControllerDependencyProviding *)self->_dependencies isShowingSystemModalAlert:v16])
  {
    v6 = +[SBKeyboardFocusLockReason systemModalAlert];
    (v5)[2](v5, v6);
  }

  if ([(_SBKeyboardFocusSceneControllerDependencyProviding *)self->_dependencies isPresentingModalBannerInLongLook])
  {
    v7 = +[SBKeyboardFocusLockReason modalBannerInLongLook];
    (v5)[2](v5, v7);
  }

  if ([(_SBKeyboardFocusSceneControllerDependencyProviding *)self->_dependencies isScreenDim])
  {
    v8 = +[SBKeyboardFocusLockReason screenIsDim];
    (v5)[2](v5, v8);
  }

  if ([(_SBKeyboardFocusSceneControllerDependencyProviding *)self->_dependencies isCoverSheetHostingAnApp])
  {
    v9 = +[SBKeyboardFocusLockReason coverSheetHostingApp];
    (v5)[2](v5, v9);
  }

  v10 = [(NSSet *)v4 copy];
  previousDependencyReasonsSpringShouldHaveFocus = self->_previousDependencyReasonsSpringShouldHaveFocus;
  self->_previousDependencyReasonsSpringShouldHaveFocus = v10;

  context = [(BSCompoundAssertion *)self->_springBoardFocusLockAssertions context];
  v13 = [context bs_map:&__block_literal_global_126];

  [(NSSet *)v4 unionSet:v13];
  v14 = v4;

  return v4;
}

- (SBWindowScene)sbWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);

  return WeakRetained;
}

id __61__SBKeyboardFocusSceneController_springBoardFocusLockReasons__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *(a2 + 8);
  }

  else
  {
    return 0;
  }
}

- (void)displayDidBecomeActive
{
  if ([(BSCompoundAssertion *)self->_springBoardFocusLockAssertions isActive])
  {
    v3 = +[SBKeyboardFocusArbitrationReason displayDidBecomeActive];
    [(SBKeyboardFocusSceneController *)self _requestPolicyReevaluationForReason:v3];
  }
}

void __61__SBKeyboardFocusSceneController_springBoardFocusLockReasons__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(*(a1 + 32) + 120) member:?];
  v4 = v3;
  if (v3)
  {
    v5 = v3;

    v6 = v5;
  }

  else
  {
    v6 = v7;
  }

  v8 = v6;
  [*(a1 + 40) addObject:v6];
}

- (SBKeyboardFocusSceneController)initWithWindowScene:(id)scene dependencies:(id)dependencies
{
  v29[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACA8];
  dependenciesCopy = dependencies;
  sceneCopy = scene;
  _FBSScene = [sceneCopy _FBSScene];
  identifier = [_FBSScene identifier];
  v11 = [v6 stringWithFormat:@"Scene-%@", identifier];

  v12 = MEMORY[0x277CCACA8];
  _FBSScene2 = [sceneCopy _FBSScene];
  identifier2 = [_FBSScene2 identifier];
  v15 = [v12 stringWithFormat:@"SBSystemKeyCommandPolicyEnforcer-Scene-%@", identifier2];

  v16 = [SBKeyboardFocusScenePolicyEnforcer alloc];
  deliveryManager = [dependenciesCopy deliveryManager];
  eventDeferringSystemShellBehaviorDelegate = [dependenciesCopy eventDeferringSystemShellBehaviorDelegate];
  v19 = [(SBKeyboardFocusScenePolicyEnforcer *)v16 initWithDeliveryManager:deliveryManager debugName:v11 systemShellDelegate:eventDeferringSystemShellBehaviorDelegate];

  v20 = [SBSystemKeyCommandScenePolicyEnforcer alloc];
  sceneProvider = [dependenciesCopy sceneProvider];
  deliveryManager2 = [dependenciesCopy deliveryManager];
  v23 = [(SBSystemKeyCommandScenePolicyEnforcer *)v20 initWithSceneProvider:sceneProvider debugName:v15 deliveryManager:deliveryManager2];

  v24 = [SBKeyboardFocusPolicyEnforcerPipeline alloc];
  v29[0] = v19;
  v29[1] = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v26 = [(SBKeyboardFocusPolicyEnforcerPipeline *)v24 initWithEnforcers:v25];

  v27 = [(SBKeyboardFocusSceneController *)self initWithWindowScene:sceneCopy policyEnforcer:v26 pipelineFactory:0 dependencies:dependenciesCopy];
  return v27;
}

- (SBKeyboardFocusSceneController)initWithWindowScene:(id)scene policyEnforcer:(id)enforcer pipelineFactory:(id)factory dependencies:(id)dependencies
{
  sceneCopy = scene;
  enforcerCopy = enforcer;
  factoryCopy = factory;
  dependenciesCopy = dependencies;
  v54.receiver = self;
  v54.super_class = SBKeyboardFocusSceneController;
  v14 = [(SBKeyboardFocusSceneController *)&v54 init];
  v15 = v14;
  if (v14)
  {
    v51 = enforcerCopy;
    if (factoryCopy)
    {
      v16 = factoryCopy;
    }

    else
    {
      v16 = v14;
    }

    v17 = v16;

    objc_storeWeak(&v15->_sbWindowScene, sceneCopy);
    _FBSScene = [sceneCopy _FBSScene];
    identityToken = [_FBSScene identityToken];
    v20 = [SBKeyboardFocusTarget targetForSceneIdentityToken:identityToken pid:getpid()];
    sbWindowSceneFocusTarget = v15->_sbWindowSceneFocusTarget;
    v15->_sbWindowSceneFocusTarget = v20;

    objc_storeStrong(&v15->_dependencies, dependencies);
    objc_storeStrong(&v15->_policyEnforcer, enforcer);
    _FBSScene2 = [sceneCopy _FBSScene];
    identifier = [_FBSScene2 identifier];
    debugName = v15->_debugName;
    v15->_debugName = identifier;

    v25 = objc_alloc_init(_SBRecentlyUsedSceneIdentityCache);
    recentlyUsedScenes = v15->_recentlyUsedScenes;
    v15->_recentlyUsedScenes = v25;

    newPipeline = [(SBKeyboardFocusSceneController *)v17 newPipeline];
    pipeline = v15->_pipeline;
    v15->_pipeline = newPipeline;

    v15->_coalitionAffinity = [sceneCopy keyboardFocusCoalitionAffinity];
    v29 = objc_alloc_init(MEMORY[0x277CF0730]);
    keyboardFocusEnvironment = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
    [v29 setEnvironment:keyboardFocusEnvironment];

    _FBSScene3 = [sceneCopy _FBSScene];
    settings = [_FBSScene3 settings];
    sb_displayConfigurationForSceneManagers = [settings sb_displayConfigurationForSceneManagers];
    isExternal = [sb_displayConfigurationForSceneManagers isExternal];
    v35 = MEMORY[0x277CF0698];
    if (isExternal)
    {
      hardwareIdentifier = [sb_displayConfigurationForSceneManagers hardwareIdentifier];
      builtinDisplay = [v35 displayWithHardwareIdentifier:hardwareIdentifier];
    }

    else
    {
      builtinDisplay = [MEMORY[0x277CF0698] builtinDisplay];
    }

    [v29 setDisplay:builtinDisplay];
    sceneIdentityToken = [(SBKeyboardFocusTarget *)v15->_sbWindowSceneFocusTarget sceneIdentityToken];
    stringRepresentation = [sceneIdentityToken stringRepresentation];

    v40 = [MEMORY[0x277CF0650] tokenForString:stringRepresentation];
    [v29 setToken:v40];

    v41 = [v29 copy];
    bufferingPredicate = v15->_bufferingPredicate;
    v15->_bufferingPredicate = v41;

    sceneManager = [sceneCopy sceneManager];
    [sceneManager addObserver:v15];

    if (SBWorkspaceIsSystemBootComplete())
    {
      transientOverlayPresenter = [sceneCopy transientOverlayPresenter];
      [transientOverlayPresenter addObserver:v15];
    }

    else
    {
      transientOverlayPresenter = [MEMORY[0x277CCAB98] defaultCenter];
      [transientOverlayPresenter addObserver:v15 selector:sel__bootDidComplete_ name:@"SBBootCompleteNotification" object:0];
    }

    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"SpringBoard - KeyboardFocus - SceneController - %@", v15->_debugName];
    objc_initWeak(&location, v15);
    v46 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v52, &location);
    v47 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureAssertion = v15->_stateCaptureAssertion;
    v15->_stateCaptureAssertion = v47;

    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);

    factoryCopy = v17;
    enforcerCopy = v51;
  }

  v49 = v15;

  return v49;
}

id __98__SBKeyboardFocusSceneController_initWithWindowScene_policyEnforcer_pipelineFactory_dependencies___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained debugDescription];

  return v2;
}

- (BOOL)controlsScene:(id)scene
{
  if (!scene)
  {
    return 0;
  }

  sceneCopy = scene;
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  v6 = BSEqualObjects();

  return v6;
}

- (BOOL)supportsFlexibleWindowing
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  switcherController = [WeakRetained switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  return isChamoisOrFlexibleWindowing;
}

- (void)setCoalition:(id)coalition
{
  v23 = *MEMORY[0x277D85DE8];
  coalitionCopy = coalition;
  if (self->_coalitionMember)
  {
    v6 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      debugName = self->_debugName;
      uniqueIdentifier = [(SBKeyboardFocusCoalitionMember *)self->_coalitionMember uniqueIdentifier];
      v17 = 138543618;
      v18 = debugName;
      v19 = 2114;
      v20 = uniqueIdentifier;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] invalidating current participant: %{public}@", &v17, 0x16u);
    }

    [(SBKeyboardFocusCoalitionMember *)self->_coalitionMember invalidate];
    coalitionMember = self->_coalitionMember;
    self->_coalitionMember = 0;
  }

  objc_storeStrong(&self->_coalition, coalition);
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  v11 = [coalitionCopy acquireMemberForWindowScene:WeakRetained delegate:self];
  v12 = self->_coalitionMember;
  self->_coalitionMember = v11;

  v13 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = self->_debugName;
    debugName = [coalitionCopy debugName];
    uniqueIdentifier2 = [(SBKeyboardFocusCoalitionMember *)self->_coalitionMember uniqueIdentifier];
    v17 = 138543874;
    v18 = v14;
    v19 = 2114;
    v20 = debugName;
    v21 = 2114;
    v22 = uniqueIdentifier2;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] participating in coalition %{public}@ - participant: %{public}@", &v17, 0x20u);
  }
}

- (id)redirectSpringBoardLockFocusForReason:(id)reason toProcessidentifier:(int)processidentifier toSceneIdentityToken:(id)token
{
  v6 = *&processidentifier;
  v28 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  tokenCopy = token;
  if (tokenCopy)
  {
    v10 = objc_alloc_init(SBKeyboardFocusRedirection);
    [(SBKeyboardFocusRedirection *)v10 setReason:reasonCopy];
    [(SBKeyboardFocusRedirection *)v10 setFromProcessIdentifier:[(SBKeyboardFocusTarget *)self->_sbWindowSceneFocusTarget pid]];
    sceneIdentityToken = [(SBKeyboardFocusTarget *)self->_sbWindowSceneFocusTarget sceneIdentityToken];
    [(SBKeyboardFocusRedirection *)v10 setFromToken:sceneIdentityToken];

    [(SBKeyboardFocusRedirection *)v10 setToProcessIdentifier:v6];
    [(SBKeyboardFocusRedirection *)v10 setToToken:tokenCopy];
    if (!self->_springBoardFocusRedirections)
    {
      objc_initWeak(location, self);
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-springBoardFocusRedirections", self->_debugName];
      v13 = MEMORY[0x277CF0BD0];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __113__SBKeyboardFocusSceneController_redirectSpringBoardLockFocusForReason_toProcessidentifier_toSceneIdentityToken___block_invoke;
      v23[3] = &unk_2783AD688;
      objc_copyWeak(&v24, location);
      v14 = [v13 assertionWithIdentifier:v12 stateDidChangeHandler:v23];
      springBoardFocusRedirections = self->_springBoardFocusRedirections;
      self->_springBoardFocusRedirections = v14;

      v16 = self->_springBoardFocusRedirections;
      v17 = SBLogKeyboardFocus();
      [(BSCompoundAssertion *)v16 setLog:v17];

      objc_destroyWeak(&v24);
      objc_destroyWeak(location);
    }

    v18 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      debugName = self->_debugName;
      *location = 138543874;
      *&location[4] = debugName;
      v26 = 1024;
      *v27 = v6;
      *&v27[4] = 2114;
      *&v27[6] = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] redirectSpringBoardLockFocusForReason: deferring focus to pid %d for reason: %{public}@ ", location, 0x1Cu);
    }

    v20 = [(BSCompoundAssertion *)self->_springBoardFocusRedirections acquireForReason:reasonCopy withContext:v10];
  }

  else
  {
    v10 = SBLogKeyboardFocus();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_debugName;
      *location = 138543874;
      *&location[4] = v21;
      v26 = 2114;
      *v27 = reasonCopy;
      *&v27[8] = 1024;
      *&v27[10] = v6;
      _os_log_impl(&dword_21ED4E000, &v10->super, OS_LOG_TYPE_DEFAULT, "[%{public}@] error: redirectSpringBoardLockFocusForReason %{public}@ request with pid %d and no token; PID-only rules are not valid", location, 0x1Cu);
    }

    v20 = 0;
  }

  return v20;
}

void __113__SBKeyboardFocusSceneController_redirectSpringBoardLockFocusForReason_toProcessidentifier_toSceneIdentityToken___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[SBKeyboardFocusArbitrationReason focusRedirectAssertionsDidChange];
  [WeakRetained _requestPolicyReevaluationForReason:v1];
}

- (id)focusLockSpringBoardWindow:(id)window forReason:(id)reason
{
  v19 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  reasonCopy = reason;
  if (windowCopy)
  {
    _sbWindowScene = [windowCopy _sbWindowScene];
    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);

    if (_sbWindowScene != WeakRetained)
    {
      [SBKeyboardFocusSceneController focusLockSpringBoardWindow:a2 forReason:self];
    }

    v11 = [(SBKeyboardFocusSceneController *)self _focusLockSpringBoardWindow:windowCopy forReason:reasonCopy];
  }

  else
  {
    v12 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      debugName = self->_debugName;
      v15 = 138543618;
      v16 = debugName;
      v17 = 2114;
      v18 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] error: focusLockSpringBoardWindow for reason %{public}@ with nil window", &v15, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)shouldAllowInteractionTrackingKeyboardFocusUpdateForWindow:(id)window
{
  windowCopy = window;
  if (windowCopy)
  {
    context = [(BSCompoundAssertion *)self->_springBoardFocusLockAssertions context];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __93__SBKeyboardFocusSceneController_shouldAllowInteractionTrackingKeyboardFocusUpdateForWindow___block_invoke;
    v8[3] = &unk_2783C07C8;
    v9 = windowCopy;
    v6 = [context bs_containsObjectPassingTest:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)keyboardArbiterSuggestedFocusTarget:(id)target
{
  targetCopy = target;
  if (![(SBKeyboardFocusTarget *)targetCopy isEqual:self->_sbWindowSceneFocusTarget])
  {
    v6 = targetCopy;
    if (!targetCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  context = [(BSCompoundAssertion *)self->_springBoardFocusLockAssertions context];
  v5 = [context bs_containsObjectPassingTest:&__block_literal_global_365];

  v6 = targetCopy;
  if ((v5 & 1) == 0)
  {
LABEL_5:
    v7 = targetCopy;
    lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks = self->_lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks;
    self->_lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks = targetCopy;

    v6 = targetCopy;
  }

LABEL_6:
}

- (id)bufferEventsForReason:(id)reason generation:(unint64_t)generation
{
  v32 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v8 = MEMORY[0x277CCACA8];
  objc_opt_class();
  v9 = objc_opt_class();
  if (!reasonCopy)
  {
    v20 = NSStringFromClass(v9);
    v21 = [v8 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"reason", v20];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(SBKeyboardFocusSceneController *)a2 bufferEventsForReason:v21 generation:?];
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x21F56DDACLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBKeyboardFocusSceneController *)reasonCopy bufferEventsForReason:a2 generation:self];
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"BufferingRequest (%ld) - %@", generation, reasonCopy];
  v11 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    debugName = self->_debugName;
    *buf = 138543874;
    v27 = debugName;
    v28 = 2114;
    v29 = reasonCopy;
    v30 = 2048;
    generationCopy = generation;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "[%{public}@] bufferEventsForReason: %{public}@ <%lu>- begin", buf, 0x20u);
  }

  mEMORY[0x277CF0668] = [MEMORY[0x277CF0668] sharedInstance];
  v14 = [mEMORY[0x277CF0668] bufferEventsMatchingPredicate:self->_bufferingPredicate withReason:reasonCopy];

  v15 = objc_alloc(MEMORY[0x277CF0CE8]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __67__SBKeyboardFocusSceneController_bufferEventsForReason_generation___block_invoke;
  v22[3] = &unk_2783C0810;
  v22[4] = self;
  v23 = reasonCopy;
  v24 = v14;
  generationCopy2 = generation;
  v16 = v14;
  v17 = reasonCopy;
  v18 = [v15 initWithIdentifier:reasonCopy forReason:v17 invalidationBlock:v22];

  return v18;
}

uint64_t __67__SBKeyboardFocusSceneController_bufferEventsForReason_generation___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 56);
    v5 = *(a1 + 56);
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v3;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "[%{public}@] bufferEventsForReason: %{public}@ <%lu> - end", &v7, 0x20u);
  }

  return [*(a1 + 48) invalidate];
}

void __72__SBKeyboardFocusSceneController__focusLockSpringBoardWindow_forReason___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 80);
  v2 = +[SBKeyboardFocusArbitrationReason focusLockAssertionsDidChange];
  [v1 setNeedsArbitrationForReason:v2];
}

- (void)_requestPolicyReevaluationForReason:(id)reason
{
  reasonCopy = reason;
  coalitionMember = self->_coalitionMember;
  if (!coalitionMember)
  {
    [SBKeyboardFocusSceneController _requestPolicyReevaluationForReason:a2];
  }

  v7 = reasonCopy;
  [(SBKeyboardFocusCoalitionMember *)coalitionMember requestArbitration:reasonCopy];
}

- (id)_updatePolicyForReason:(id)reason
{
  v30 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = objc_alloc_init(SBMutableKeyboardFocusPolicy);
  lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks = self->_lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks;
  if (lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks)
  {
    sceneIdentityToken = [(SBKeyboardFocusTarget *)lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks sceneIdentityToken];
    v8 = [(SBKeyboardFocusSceneController *)self shouldPreventFocusForSceneWithIdentityToken:sceneIdentityToken];

    v9 = self->_lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks;
    if (v8)
    {
      sceneIdentityToken2 = [(SBKeyboardFocusTarget *)self->_lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks sceneIdentityToken];
      [(SBKeyboardFocusSceneController *)self _updateKeyboardFocusTargetFromPreviouslyFocusedSceneIdentity:sceneIdentityToken2 pid:[(SBKeyboardFocusTarget *)self->_lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks pid]];

      v9 = self->_lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks;
    }
  }

  else
  {
    v9 = 0;
  }

  [(SBMutableKeyboardFocusPolicy *)v5 setKeyboardFocusTarget:v9];
  [(SBMutableKeyboardFocusPolicy *)v5 setAdvicePolicy:1];
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  [(SBMutableKeyboardFocusPolicy *)v5 setWindowSceneAncestor:WeakRetained];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __57__SBKeyboardFocusSceneController__updatePolicyForReason___block_invoke;
  v21[3] = &unk_2783C0838;
  v21[4] = self;
  v12 = [SBKeyboardFocusResolutionContext build:v21];
  v13 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    debugName = self->_debugName;
    v18 = self->_lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks;
    *buf = 138543874;
    v23 = debugName;
    v24 = 2114;
    v25 = reasonCopy;
    v26 = 2114;
    v27 = v18;
    _os_log_debug_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEBUG, "[%{public}@] - generating new policy for reason: %{public}@ - last non-SB keyboard arbiter suggestion: %{public}@]", buf, 0x20u);
  }

  [(SBKeyboardFocusResolutionPipeline *)self->_pipeline generateKeyboardFocusPolicy:v5 resolutionContext:v12];
  v14 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v19 = self->_debugName;
    auditHistory = [(SBKeyboardFocusPolicy *)v5 auditHistory];
    *buf = 138544130;
    v23 = v19;
    v24 = 2114;
    v25 = reasonCopy;
    v26 = 2114;
    v27 = v5;
    v28 = 2114;
    v29 = auditHistory;
    _os_log_debug_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEBUG, "[%{public}@] - generated policy for reason: %{public}@ - %{public}@ : %{public}@]", buf, 0x2Au);
  }

  v15 = v5;
  return v5;
}

void __57__SBKeyboardFocusSceneController__updatePolicyForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 88);
  v4 = a2;
  [v4 setScreenDim:{objc_msgSend(v3, "isScreenDim")}];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained zStackResolver];
  [v4 setZStackResolver:v5];
}

- (void)_bootDidComplete:(id)complete
{
  sbWindowScene = [(SBKeyboardFocusSceneController *)self sbWindowScene];
  transientOverlayPresenter = [sbWindowScene transientOverlayPresenter];
  [transientOverlayPresenter addObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBBootCompleteNotification" object:0];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CF0C08];
  debugStyle = [MEMORY[0x277CF0C10] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__SBKeyboardFocusSceneController_appendDescriptionToStream___block_invoke;
  v10[3] = &unk_2783A92D8;
  v5 = streamCopy;
  v11 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v10];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SBKeyboardFocusSceneController_appendDescriptionToStream___block_invoke_2;
  v7[3] = &unk_2783A92D8;
  v8 = v5;
  selfCopy2 = self;
  v6 = v5;
  [v6 appendBodySectionWithName:0 block:v7];
}

void __60__SBKeyboardFocusSceneController_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 160) withName:@"lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 112) withName:@"springBoardFocusLockAssertions"];
  v4 = [*(a1 + 32) hasDebugStyle];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v4)
  {
    v7 = [*(a1 + 32) appendObject:*(v5 + 144) withName:@"preferredPolicy"];
    v8 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 152) withName:@"enforcedPolicy"];
  }

  else
  {
    v9 = [*(v5 + 144) keyboardFocusTarget];
    v10 = [v6 appendObject:v9 withName:@"preferredKeyboardFocusTarget"];

    v11 = *(a1 + 32);
    v13 = [*(*(a1 + 40) + 152) keyboardFocusTarget];
    v12 = [v11 appendObject:v13 withName:@"enforcedKeyboardFocusTarget"];
  }
}

- (void)invalidate
{
  [(BSCompoundAssertion *)self->_springBoardFocusRedirections invalidate];
  [(BSCompoundAssertion *)self->_springBoardFocusLockAssertions invalidate];
  [(BSCompoundAssertion *)self->_suppressKeyboardFocusEvaluationAssertion invalidate];
  [(SBKeyboardFocusPolicyEnforcer *)self->_policyEnforcer invalidate];
  [(SBKeyboardFocusCoalitionMember *)self->_coalitionMember invalidate];
  stateCaptureAssertion = self->_stateCaptureAssertion;

  [(BSInvalidatable *)stateCaptureAssertion invalidate];
}

- (void)sceneManager:(id)manager didAddExternalForegroundApplicationSceneHandle:(id)handle
{
  v22 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  scene = [handleCopy scene];

  identityToken = [scene identityToken];
  clientHandle = [scene clientHandle];
  processHandle = [clientHandle processHandle];
  v10 = [processHandle pid];

  if (v10 >= 1)
  {
    [(_SBRecentlyUsedSceneIdentityCache *)self->_recentlyUsedScenes addSceneIdentityToken:identityToken forPID:v10];
    v11 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      debugName = self->_debugName;
      recentlyUsedScenes = self->_recentlyUsedScenes;
      v14 = 138544130;
      v15 = debugName;
      v16 = 1024;
      v17 = v10;
      v18 = 2114;
      v19 = identityToken;
      v20 = 2114;
      v21 = recentlyUsedScenes;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] didAddExternalForegroundApplicationSceneHandle pid:%d scene:%{public}@ now:%{public}@", &v14, 0x26u);
    }
  }
}

- (void)sceneManager:(id)manager willRemoveExternalForegroundApplicationSceneHandle:(id)handle withReason:(int64_t)reason
{
  handleCopy = handle;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  scene = [handleCopy scene];

  LODWORD(handleCopy) = [(SBKeyboardFocusSceneController *)self _removeSceneFromRecentsAndUpdateKeyboardFocusTargetIfNeeded:scene reason:@"willRemoveExternalForegroundApplicationSceneHandle"];
  if (handleCopy)
  {
    v8 = +[SBKeyboardFocusArbitrationReason removedKeyboardArbiterSceneWillRemove];
    [(SBKeyboardFocusSceneController *)self _requestPolicyReevaluationForReason:v8];
  }
}

- (void)sceneManager:(id)manager didRemoveExternalForegroundApplicationSceneHandle:(id)handle
{
  handleCopy = handle;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  scene = [handleCopy scene];
  if ([scene isValid])
  {
    scene2 = [handleCopy scene];
    v7 = [(SBKeyboardFocusSceneController *)self _removeSceneFromRecentsAndUpdateKeyboardFocusTargetIfNeeded:scene2 reason:@"didRemoveExternalForegroundApplicationSceneHandle"];

    if (v7)
    {
      v8 = +[SBKeyboardFocusArbitrationReason removedKeyboardArbiterSceneDidRemove];
      [(SBKeyboardFocusSceneController *)self _requestPolicyReevaluationForReason:v8];
    }
  }
}

- (BOOL)_removeSceneFromRecentsAndUpdateKeyboardFocusTargetIfNeeded:(id)needed reason:(id)reason
{
  v24 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  neededCopy = needed;
  identityToken = [neededCopy identityToken];
  clientHandle = [neededCopy clientHandle];

  processHandle = [clientHandle processHandle];
  v11 = [processHandle pid];

  v12 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    debugName = self->_debugName;
    v16 = 138544130;
    v17 = debugName;
    v18 = 2114;
    v19 = identityToken;
    v20 = 1024;
    v21 = v11;
    v22 = 2114;
    v23 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] removing scene: %{public}@ pid: %d for reason: %{public}@", &v16, 0x26u);
  }

  [(_SBRecentlyUsedSceneIdentityCache *)self->_recentlyUsedScenes removeSceneIdentityToken:identityToken forPID:v11];
  v14 = [(SBKeyboardFocusSceneController *)self _updateKeyboardFocusTargetFromPreviouslyFocusedSceneIdentity:identityToken pid:v11];

  return v14;
}

- (id)_topmostZOrderedSceneExcluding:(id)excluding
{
  v49 = *MEMORY[0x277D85DE8];
  excludingCopy = excluding;
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  switcherController = [WeakRetained switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    displayItemLayoutAttributesProvider = [switcherController displayItemLayoutAttributesProvider];
    appLayoutPreviouslyOnStage = [switcherController appLayoutPreviouslyOnStage];
    interfaceOrientation = [switcherController interfaceOrientation];
    if ((interfaceOrientation - 1) < 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2 * ((interfaceOrientation - 3) < 2);
    }

    v13 = [displayItemLayoutAttributesProvider lastInteractedDisplayItemsInAppLayout:appLayoutPreviouslyOnStage orientation:v12];

    sceneManager = [WeakRetained sceneManager];
    externalApplicationSceneHandles = [sceneManager externalApplicationSceneHandles];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v16 = v13;
    v33 = [v16 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v33)
    {
      v17 = *v44;
      v37 = switcherController;
      v38 = WeakRetained;
      v35 = v16;
      v36 = externalApplicationSceneHandles;
      v32 = *v44;
      do
      {
        v18 = 0;
        do
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(v16);
          }

          v34 = v18;
          uniqueIdentifier = [*(*(&v43 + 1) + 8 * v18) uniqueIdentifier];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v20 = externalApplicationSceneHandles;
          v21 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v40;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v40 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v39 + 1) + 8 * i);
                sceneIdentifier = [v25 sceneIdentifier];
                v27 = [uniqueIdentifier isEqual:sceneIdentifier];

                if (v27)
                {
                  scene = [v25 scene];
                  identityToken = [scene identityToken];
                  if (([identityToken isEqual:excludingCopy] & 1) != 0 || objc_msgSend(scene, "contentState") != 2)
                  {
                  }

                  else
                  {
                    v30 = [SBKeyboardFocusTarget targetForFBScene:scene];

                    if (v30)
                    {

                      switcherController = v37;
                      WeakRetained = v38;
                      v16 = v35;
                      externalApplicationSceneHandles = v36;
                      goto LABEL_28;
                    }
                  }
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v22);
          }

          v18 = v34 + 1;
          switcherController = v37;
          WeakRetained = v38;
          v16 = v35;
          externalApplicationSceneHandles = v36;
          v17 = v32;
        }

        while (v34 + 1 != v33);
        v30 = 0;
        v33 = [v35 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v33);
    }

    else
    {
      v30 = 0;
    }

LABEL_28:
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (BOOL)_updateKeyboardFocusTargetFromPreviouslyFocusedSceneIdentity:(id)identity pid:(int)pid
{
  v4 = *&pid;
  v33 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  sceneIdentityToken = [(SBKeyboardFocusTarget *)self->_lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks sceneIdentityToken];
  if (sceneIdentityToken)
  {
    v8 = sceneIdentityToken;
    sceneIdentityToken2 = [(SBKeyboardFocusTarget *)self->_lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks sceneIdentityToken];
    v10 = BSEqualObjects();

    if (v10)
    {
      v11 = [(SBKeyboardFocusSceneController *)self _topmostZOrderedSceneExcluding:identityCopy];
      if (v11)
      {
        v12 = v11;
        sceneIdentityTokensWithShouldPreventFocus = SBLogKeyboardFocus();
        if (os_log_type_enabled(sceneIdentityTokensWithShouldPreventFocus, OS_LOG_TYPE_DEFAULT))
        {
          debugName = self->_debugName;
          v27 = 138543618;
          v28 = debugName;
          v29 = 2114;
          v30 = v12;
          _os_log_impl(&dword_21ED4E000, sceneIdentityTokensWithShouldPreventFocus, OS_LOG_TYPE_DEFAULT, "[%{public}@] setting keyboard arbiter suggested scene to z-order topmost scene %{public}@ ", &v27, 0x16u);
        }

        goto LABEL_18;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      sceneIdentityTokensWithShouldPreventFocus = [WeakRetained sceneIdentityTokensWithShouldPreventFocus];

      v17 = [(_SBRecentlyUsedSceneIdentityCache *)self->_recentlyUsedScenes mostRecentFocusTargetForPID:v4 excludingSceneIdentityTokens:sceneIdentityTokensWithShouldPreventFocus];
      if (v17)
      {
        v12 = v17;
        v18 = SBLogKeyboardFocus();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = self->_debugName;
          sceneIdentityToken3 = [(SBKeyboardFocusTarget *)v12 sceneIdentityToken];
          v27 = 138543874;
          v28 = v19;
          v29 = 2114;
          v30 = sceneIdentityToken3;
          v31 = 1024;
          v32 = [(SBKeyboardFocusTarget *)v12 pid];
          v21 = "[%{public}@] setting keyboard arbiter suggested scene to %{public}@ in same pid %d";
LABEL_13:
          _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, v21, &v27, 0x1Cu);
        }
      }

      else
      {
        v12 = [(_SBRecentlyUsedSceneIdentityCache *)self->_recentlyUsedScenes mostRecentFocusTargetForAnyProcessExcludingSceneIdentityTokens:sceneIdentityTokensWithShouldPreventFocus];
        v18 = SBLogKeyboardFocus();
        v22 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (!v12)
        {
          if (v22)
          {
            v24 = self->_debugName;
            v27 = 138543362;
            v28 = v24;
            _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] no available fallbacks for keyboard arbiter suggested scene", &v27, 0xCu);
          }

          v12 = 0;
          goto LABEL_17;
        }

        if (v22)
        {
          v23 = self->_debugName;
          sceneIdentityToken3 = [(SBKeyboardFocusTarget *)v12 sceneIdentityToken];
          v27 = 138543874;
          v28 = v23;
          v29 = 2114;
          v30 = sceneIdentityToken3;
          v31 = 1024;
          v32 = [(SBKeyboardFocusTarget *)v12 pid];
          v21 = "[%{public}@] setting keyboard arbiter suggested scene to %{public}@ in MRU pid %d";
          goto LABEL_13;
        }
      }

LABEL_17:

LABEL_18:
      lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks = self->_lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks;
      self->_lastKeyboardArbiterSuggestedFocusTargetExcludingFocusLocks = v12;

      v15 = 1;
      goto LABEL_19;
    }
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (void)transientOverlayScenePresenter:(id)presenter didDismissViewController:(id)controller wasTopmostPresentation:(BOOL)presentation
{
  v18 = *MEMORY[0x277D85DE8];
  hostedSceneIdentityTokens = [controller hostedSceneIdentityTokens];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [hostedSceneIdentityTokens countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    LOBYTE(v9) = 0;
    v10 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(hostedSceneIdentityTokens);
        }

        v9 = v9 || [(SBKeyboardFocusSceneController *)self _updateKeyboardFocusTargetFromPreviouslyFocusedSceneIdentity:*(*(&v13 + 1) + 8 * i) pid:0];
      }

      v8 = [hostedSceneIdentityTokens countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
    if (v9)
    {
      v12 = +[SBKeyboardFocusArbitrationReason didDismissTransientOverlayScene];
      [(SBKeyboardFocusSceneController *)self _requestPolicyReevaluationForReason:v12];
    }
  }
}

- (id)newPipeline
{
  v13[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(SBKeyboardFocusAccessibilityResolutionStage);
  [(SBKeyboardFocusAccessibilityResolutionStage *)v3 setDelegate:self];
  [(SBKeyboardFocusAccessibilityResolutionStage *)v3 setSceneProvider:self];
  v4 = objc_alloc_init(SBKeyboardArbiterResolutionStage);
  [(SBKeyboardArbiterResolutionStage *)v4 setDelegate:self];
  [(SBKeyboardArbiterResolutionStage *)v4 setSceneProvider:self];
  v5 = objc_alloc_init(SBSystemUISceneResolutionStage);
  [(SBSystemUISceneResolutionStage *)v5 setDelegate:self];
  [(SBSystemUISceneResolutionStage *)v5 setSceneProvider:self];
  v6 = objc_alloc_init(SBSpringBoardFocusLockResolutionStage);
  [(SBSpringBoardFocusLockResolutionStage *)v6 setDelegate:self];
  [(SBSpringBoardFocusLockResolutionStage *)v6 setSceneProvider:self];
  v7 = objc_alloc_init(SBFocusRedirectResolutionStage);
  [(SBFocusRedirectResolutionStage *)v7 setDelegate:self];
  [(SBFocusRedirectResolutionStage *)v7 setSceneProvider:self];
  v8 = objc_alloc_init(SBSpringBoardOutboundFocusResolutionStage);
  [(SBSpringBoardOutboundFocusResolutionStage *)v8 setSceneProvider:self];
  v9 = [SBKeyboardFocusResolutionPipeline alloc];
  v13[0] = v3;
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:6];
  v11 = [(SBKeyboardFocusResolutionPipeline *)v9 initWithResolutionStages:v10];

  return v11;
}

- (BOOL)shouldPreventFocusForSceneWithIdentityToken:(id)token
{
  tokenCopy = token;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained shouldPreventFocusForSceneWithIdentityToken:tokenCopy];

  return v6;
}

- (id)sceneForFocusTarget:(id)target
{
  dependencies = self->_dependencies;
  targetCopy = target;
  sceneProvider = [(_SBKeyboardFocusSceneControllerDependencyProviding *)dependencies sceneProvider];
  sceneIdentityToken = [targetCopy sceneIdentityToken];

  v7 = [sceneProvider sceneForIdentityToken:sceneIdentityToken];

  return v7;
}

- (id)keyboardFocusRedirectionForTarget:(id)target
{
  targetCopy = target;
  v5 = targetCopy;
  if (targetCopy && [targetCopy isEqual:self->_sbWindowSceneFocusTarget])
  {
    WeakRetained = [(BSCompoundAssertion *)self->_springBoardFocusRedirections orderedContext];
    lastObject = [WeakRetained lastObject];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    lastObject = [WeakRetained appFocusRedirectionForProposedTarget:v5];
  }

  v8 = lastObject;

  return v8;
}

- (void)coalitionMemberFocusDidChange:(id)change
{
  v14 = *MEMORY[0x277D85DE8];
  if ([change hasFocus])
  {
    enforcedPolicy = [(SBKeyboardFocusCoalition *)self->_coalition enforcedPolicy];
    v5 = BSEqualObjects();
    v6 = SBLogKeyboardFocus();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(SBKeyboardFocusSceneController *)self coalitionMemberFocusDidChange:v7];
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        debugName = self->_debugName;
        v10 = 138543618;
        v11 = debugName;
        v12 = 2114;
        v13 = enforcedPolicy;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] coalition says I have focus; enforcing policy: %{public}@", &v10, 0x16u);
      }

      objc_storeStrong(&self->_enforcedPolicy, enforcedPolicy);
      [(SBKeyboardFocusPolicyEnforcer *)self->_policyEnforcer enforce:self->_enforcedPolicy];
    }
  }

  else
  {
    [(SBKeyboardFocusPolicyEnforcer *)self->_policyEnforcer stopEnforcing];
    enforcedPolicy = self->_enforcedPolicy;
    self->_enforcedPolicy = 0;
  }
}

- (id)generateUpdatedPreferencesForCoalitionMember:(id)member reason:(id)reason
{
  v5 = [(SBKeyboardFocusSceneController *)self _updatePolicyForReason:reason];
  preferredPolicy = self->_preferredPolicy;
  self->_preferredPolicy = v5;

  v7 = self->_preferredPolicy;
  springBoardFocusLockReasons = [(SBKeyboardFocusSceneController *)self springBoardFocusLockReasons];
  v9 = [SBKeyboardFocusCoalitionMemberPreferences preferencesWithPolicy:v7 lockReasons:springBoardFocusLockReasons];

  return v9;
}

- (SBKeyboardFocusSceneControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

BOOL __93__SBKeyboardFocusSceneController_shouldAllowInteractionTrackingKeyboardFocusUpdateForWindow___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2 == *(a1 + 32);
}

BOOL __70__SBKeyboardFocusSceneController_keyboardArbiterSuggestedFocusTarget___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2 != 0;
}

- (id)_focusLockSpringBoardWindow:(id)window forReason:(id)reason
{
  v28 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  reasonCopy = reason;
  if (!self->_springBoardFocusLockAssertions)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-springBoardFocusLockAssertions", self->_debugName];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __72__SBKeyboardFocusSceneController__focusLockSpringBoardWindow_forReason___block_invoke;
    v21[3] = &unk_2783BB090;
    v21[4] = self;
    v9 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:v8 stateDidChangeHandler:v21];
    springBoardFocusLockAssertions = self->_springBoardFocusLockAssertions;
    self->_springBoardFocusLockAssertions = v9;

    v11 = self->_springBoardFocusLockAssertions;
    v12 = SBLogKeyboardFocus();
    [(BSCompoundAssertion *)v11 setLog:v12];
  }

  v13 = objc_alloc_init(_SBKeyboardFocusAssertionContext);
  [(SBKeyboardClientSettingObserverContext *)v13 setScene:reasonCopy];
  [(SBKeyboardClientSettingObserverContext *)v13 setOldClientSettings:windowCopy];
  v14 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    debugName = self->_debugName;
    _debugName = [windowCopy _debugName];
    *buf = 138543874;
    v23 = debugName;
    v24 = 2114;
    v25 = _debugName;
    v26 = 2114;
    v27 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] focusLockSpringBoardWindow: %{public}@ for reason: %{public}@", buf, 0x20u);
  }

  v17 = self->_springBoardFocusLockAssertions;
  name = [reasonCopy name];
  v19 = [(BSCompoundAssertion *)v17 acquireForReason:name withContext:v13];

  return v19;
}

- (void)focusLockSpringBoardWindow:(const char *)a1 forReason:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[window _sbWindowScene] == _sbWindowScene"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"SBKeyboardFocusSceneController.m";
    v17 = 1024;
    v18 = 230;
    v19 = 2114;
    v20 = v4;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)bufferEventsForReason:(uint64_t)a3 generation:.cold.1(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 classForCoder];
  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = NSStringFromClass(v6);
  objc_opt_class();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"reason", v7, v9];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v15 = 138544642;
    v16 = v11;
    v17 = 2114;
    v18 = v13;
    v19 = 2048;
    v20 = a3;
    v21 = 2114;
    v22 = @"SBKeyboardFocusSceneController.m";
    v23 = 1024;
    v24 = 258;
    v25 = 2114;
    v26 = v10;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v14, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v15);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)bufferEventsForReason:(uint64_t)a3 generation:.cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9 = 138544642;
  v10 = v4;
  OUTLINED_FUNCTION_4_0();
  v11 = @"SBKeyboardFocusSceneController.m";
  v12 = 1024;
  v13 = 258;
  v14 = v7;
  v15 = a3;
  OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9);
}

- (void)_requestPolicyReevaluationForReason:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't function without a coalition"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v8 = 138544642;
    v9 = v3;
    OUTLINED_FUNCTION_4_0();
    v10 = @"SBKeyboardFocusSceneController.m";
    v11 = 1024;
    v12 = 309;
    v13 = v6;
    v14 = v2;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)coalitionMemberFocusDidChange:(os_log_t)log .cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v4 = *a2;
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "[%{public}@] coalition says I have focus, but enforced policy is the same so not updating anything: %{public}@", &v5, 0x16u);
}

@end