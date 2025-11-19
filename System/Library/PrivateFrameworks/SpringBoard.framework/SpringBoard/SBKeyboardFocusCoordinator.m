@interface SBKeyboardFocusCoordinator
+ (id)sharedInstance;
- (BOOL)_handleSceneFocusChange_denyRequestForOverlayUI:(id)a3;
- (BOOL)_isAcceptableVisibilityBasedHostScene:(id)a3 forSBWindowScene:(id)a4;
- (BOOL)_setEnforcedKeyboardFocusPolicy:(id)a3;
- (BOOL)_talkToKeyboardArbiterAdvisor:(id)a3;
- (BOOL)eventDeferringManagerSystemShellBehavior:(id)a3 shouldSuppressRemoteRuleForOwningElement:(id)a4 inEnvironment:(id)a5;
- (BOOL)shouldAllowInteractionTrackingKeyboardFocusUpdateForWindow:(id)a3;
- (BOOL)shouldKeyboardBeWindowSizedForHostWithIdentity:(id)a3;
- (BOOL)shouldPreventFocusForSceneWithIdentityToken:(id)a3;
- (SBKeyboardFocusCoordinator)initWithPolicyEnforcer:(id)a3 sceneControllerFactory:(id)a4 coalitionFactory:(id)a5 sceneProvider:(id)a6 uiKitDependencyProvider:(id)a7 visibilityGraphNavigator:(id)a8;
- (id)_fixupFocusSceneRequest:(id)a3;
- (id)_handleSceneFocusChange_reasonToAvoidFocusingAppSceneIdentityToken:(id)a3;
- (id)_init;
- (id)_sbWindowSceneHostingFBSSceneIdentityToken:(id)a3 ultimateHostTarget:(id *)a4;
- (id)_sbWindowSceneHostingFBSSceneIdentityTokenString:(id)a3;
- (id)_sceneControllerForSBWindowScene:(id)a3;
- (id)_sceneControllerForScene:(id)a3;
- (id)_sceneControllerHostingSceneIdentityToken:(id)a3 ultimateHostTarget:(id *)a4 isSecretScene:(BOOL *)a5;
- (id)accessibilityOverrideTarget;
- (id)addKeyboardFocusObserver:(id)a3;
- (id)additionalEnvironmentDeferralsForFocusTarget:(id)a3;
- (id)appFocusRedirectionForProposedTarget:(id)a3;
- (id)bufferEventsForSpringBoardScene:(id)a3 reason:(id)a4;
- (id)deferAdditionalEnvironments:(id)a3 whenTargetHasKeyboardFocus:(id)a4;
- (id)focusLockSpringBoardWindow:(id)a3 forReason:(id)a4;
- (id)focusLockSpringBoardWindowScene:(id)a3 forAccessibilityReason:(id)a4;
- (id)focusLockSpringBoardWindowScene:(id)a3 forReason:(id)a4;
- (id)preventFocusForSceneWithIdentityToken:(id)a3 reason:(id)a4;
- (id)redirectFocusForReason:(id)a3 fromProcessIdentifier:(int)a4 fromSceneIdentityToken:(id)a5 toProcessIdentifier:(int)a6 toSceneIdentityToken:(id)a7 inContainingWindow:(id)a8;
- (id)redirectSpringBoardLockFocusForReason:(id)a3 toProcessidentifier:(int)a4 toSceneIdentityToken:(id)a5;
- (id)requestKeyboardFocusOverrideSceneIdentityTokenStringRepresentation:(id)a3 forAccessibilityReason:(id)a4;
- (id)suppressKeyboardFocusEvaluationForReason:(id)a3;
- (int)presentingKeyboardProcessIdentifier;
- (int64_t)eventDeferringManagerSystemShellBehavior:(id)a3 isRemoteRuleOwningElement:(id)a4 andContainingWindow:(id)a5 visibleComparedToLocalTargetWindow:(id)a6;
- (void)_callUserFocusSceneRequestCompletionBlocksIfNeeded;
- (void)_handleFocusSceneChange:(id)a3 fromArbiter:(id)a4 request:(id)a5 waitForSecretSceneHost:(BOOL)a6;
- (void)_notifyObserversExternalSceneDidAcquireFocus:(id)a3;
- (void)_notifyObserversFocusedWindowSceneChangedFrom:(id)a3 to:(id)a4;
- (void)_removeSceneFromRecents:(id)a3 reason:(id)a4;
- (void)_setNeedsArbitrationForKeyWindowNotification;
- (void)_updateCoalitionForSceneControllersAddedOrRemoved;
- (void)appendDescriptionToStream:(id)a3;
- (void)keyboardArbiterAdvisor:(id)a3 request:(id)a4 sceneFocusChange:(id)a5;
- (void)keyboardFocusCoalitionDidUpdateEnforcedPolicy:(id)a3;
- (void)multiDisplayUserInteractionCoordinator:(id)a3 updatedActiveWindowScene:(id)a4;
- (void)removeKeyboardFocusFromScene:(id)a3;
- (void)requestArbitrationForSBWindowScene:(id)a3 forReason:(id)a4;
- (void)sceneManager:(id)a3 didAddExternalForegroundApplicationSceneHandle:(id)a4;
- (void)sceneManager:(id)a3 didRemoveExternalForegroundApplicationSceneHandle:(id)a4;
- (void)sceneManager:(id)a3 willRemoveExternalForegroundApplicationSceneHandle:(id)a4 withReason:(int64_t)a5;
- (void)userFocusRequestForScene:(id)a3 reason:(id)a4 completion:(id)a5;
- (void)windowSceneDidConnect:(id)a3;
- (void)windowSceneDidDisconnect:(id)a3;
@end

@implementation SBKeyboardFocusCoordinator

- (void)_setNeedsArbitrationForKeyWindowNotification
{
  v3 = +[SBKeyboardFocusArbitrationReason keyWindowNotification];
  [(SBKeyboardFocusCoordinator *)self _setNeedsArbitrationForReason:v3];
}

- (id)accessibilityOverrideTarget
{
  v2 = [(BSCompoundAssertion *)self->_accessibilityKeyboardFocusTargetOverrides orderedContext];
  v3 = [v2 lastObject];

  return v3;
}

- (void)_callUserFocusSceneRequestCompletionBlocksIfNeeded
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableArray *)self->_userFocusRequestRuleUpdateCompletionHandlers copy];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_userFocusRequestRuleUpdateCompletionHandlers removeAllObjects];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SBKeyboardFocusCoordinator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_62 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_62, block);
  }

  v2 = sharedInstance_sharedInstance_10;

  return v2;
}

void __44__SBKeyboardFocusCoordinator_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = sharedInstance_sharedInstance_10;
  sharedInstance_sharedInstance_10 = v1;
}

- (SBKeyboardFocusCoordinator)initWithPolicyEnforcer:(id)a3 sceneControllerFactory:(id)a4 coalitionFactory:(id)a5 sceneProvider:(id)a6 uiKitDependencyProvider:(id)a7 visibilityGraphNavigator:(id)a8
{
  v39 = a3;
  v38 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v45.receiver = self;
  v45.super_class = SBKeyboardFocusCoordinator;
  v19 = [(SBKeyboardFocusCoordinator *)&v45 init];
  if (v19)
  {
    v20 = [MEMORY[0x277CF0668] sharedInstance];
    deliveryManager = v19->_deliveryManager;
    v19->_deliveryManager = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    sceneControllers = v19->_sceneControllers;
    v19->_sceneControllers = v22;

    objc_storeStrong(&v19->_policyEnforcer, a3);
    objc_storeStrong(&v19->_keyboardFocusSceneControllerFactory, a4);
    objc_storeStrong(&v19->_keyboardFocusCoalitionFactory, a5);
    objc_storeStrong(&v19->_sceneProvider, a6);
    v24 = [v17 keyboardArbiterManager];
    keyboardArbiterManager = v19->_keyboardArbiterManager;
    v19->_keyboardArbiterManager = v24;

    objc_storeStrong(&v19->_visibilityGraphNavigator, a8);
    v26 = objc_alloc_init(_SBRecentlyUsedSceneIdentityCache);
    recentlyUsedScenes = v19->_recentlyUsedScenes;
    v19->_recentlyUsedScenes = v26;

    v28 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"keyboardFocusObservers"];
    observers = v19->_observers;
    v19->_observers = v28;

    v30 = v19->_observers;
    v31 = SBLogKeyboardFocus();
    [(BSCompoundAssertion *)v30 setLog:v31];

    [v17 setSystemShellBehaviorDelegate:v19];
    v32 = [MEMORY[0x277CCAB98] defaultCenter];
    [v32 addObserver:v19 selector:sel__setNeedsArbitrationForKeyWindowNotification name:*MEMORY[0x277D77280] object:0];

    v33 = [SBApp multiDisplayUserInteractionCoordinator];
    [v33 addActiveDisplayWindowSceneObserver:v19];

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __156__SBKeyboardFocusCoordinator_initWithPolicyEnforcer_sceneControllerFactory_coalitionFactory_sceneProvider_uiKitDependencyProvider_visibilityGraphNavigator___block_invoke;
    v42[3] = &unk_2783A92D8;
    v43 = v19;
    v34 = v17;
    v44 = v34;
    v35 = MEMORY[0x223D6F7F0](v42);
    if ([v34 shouldInitAsync])
    {
      v36 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __156__SBKeyboardFocusCoordinator_initWithPolicyEnforcer_sceneControllerFactory_coalitionFactory_sceneProvider_uiKitDependencyProvider_visibilityGraphNavigator___block_invoke_2;
      block[3] = &unk_2783A9348;
      v41 = v35;
      dispatch_async(v36, block);
    }

    else
    {
      v35[2](v35);
    }
  }

  return v19;
}

void __156__SBKeyboardFocusCoordinator_initWithPolicyEnforcer_sceneControllerFactory_coalitionFactory_sceneProvider_uiKitDependencyProvider_visibilityGraphNavigator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) inputUISceneController];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  v5 = [*(a1 + 40) launchAdvisorWithOmniscientDelegate:*(a1 + 32) sceneDelegate:*(*(a1 + 32) + 80)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 96);
  *(v6 + 96) = v5;

  atomic_store(1u, (*(a1 + 32) + 104));
}

- (id)_init
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(SBKeyboardFocusSceneProvider);
  v4 = [[SBKeyboardFocusSceneSettingPolicyEnforcer alloc] initWithSceneProvider:v3];
  v5 = objc_alloc_init(SBAdditionalEnvironmentDeferralsPolicyEnforcer);
  v6 = [SBKeyboardFocusPolicyEnforcerPipeline alloc];
  v14[0] = v4;
  v14[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v8 = [(SBKeyboardFocusPolicyEnforcerPipeline *)v6 initWithEnforcers:v7];

  v9 = objc_alloc_init(_SBKeyboardFocusSceneControllerFactory);
  v10 = objc_alloc_init(_SBKeyboardFocusCoalitionFactory);
  v11 = objc_alloc_init(_SBKeyboardFocusUIKitDependency);
  v12 = [(SBKeyboardFocusCoordinator *)self initWithPolicyEnforcer:v8 sceneControllerFactory:v9 coalitionFactory:v10 sceneProvider:v3 uiKitDependencyProvider:v11 visibilityGraphNavigator:0];

  [(SBAdditionalEnvironmentDeferralsPolicyEnforcer *)v5 setDelegate:v12];
  return v12;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__SBKeyboardFocusCoordinator_appendDescriptionToStream___block_invoke;
  v10[3] = &unk_2783A92D8;
  v5 = v4;
  v11 = v5;
  v12 = self;
  [v5 appendProem:self block:v10];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SBKeyboardFocusCoordinator_appendDescriptionToStream___block_invoke_2;
  v7[3] = &unk_2783A92D8;
  v8 = v5;
  v9 = self;
  v6 = v5;
  [v6 appendBodySectionWithName:0 block:v7];
}

void __56__SBKeyboardFocusCoordinator_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 208) keyboardFocusTarget];
  v2 = [v1 appendObject:v3 withName:@"target"];
}

id __56__SBKeyboardFocusCoordinator_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 208) withName:@"enforcedPolicy"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 200) withName:@"coalition"];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 120) withName:@"externalSceneWithFocus"];
  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 128) withName:@"sceneWithFocusIncludingSpringBoard"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 232) withName:@"overlayUISceneRequestingFocus"];
}

- (void)windowSceneDidConnect:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[coordinator] scene connected: %@", &v9, 0xCu);
  }

  v7 = [(_SBKeyboardFocusSceneControllerFactory *)self->_keyboardFocusSceneControllerFactory newKeyboardFocusSceneControllerForScene:v5 deliveryManager:self->_deliveryManager sceneProvider:self->_sceneProvider];
  [v7 setDelegate:self];
  if (!v7)
  {
    [(SBKeyboardFocusCoordinator *)a2 windowSceneDidConnect:?];
  }

  [(NSMutableSet *)self->_sceneControllers addObject:v7];
  v8 = [v5 sceneManager];
  [v8 addObserver:self];

  [(SBKeyboardFocusCoordinator *)self _updateCoalitionForSceneControllersAddedOrRemoved];
}

- (void)windowSceneDidDisconnect:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[coordinator] scene disconnected: %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_sceneControllers;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v8)
  {
LABEL_11:

    goto LABEL_12;
  }

  v9 = v8;
  v10 = *v17;
LABEL_5:
  v11 = 0;
  while (1)
  {
    if (*v17 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v16 + 1) + 8 * v11);
    v13 = [v12 sbWindowScene];
    v14 = [v5 isEqual:v13];

    if (v14)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v9)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }
  }

  v15 = v12;

  if (!v15)
  {
LABEL_12:
    [(SBKeyboardFocusCoordinator *)v5 windowSceneDidDisconnect:a2];
  }

  [v15 invalidate];
  [(NSMutableSet *)self->_sceneControllers removeObject:v15];
  [(SBKeyboardFocusCoordinator *)self _updateCoalitionForSceneControllersAddedOrRemoved];
}

- (id)addKeyboardFocusObserver:(id)a3
{
  observers = self->_observers;
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"%@-%p", objc_opt_class(), v5];
  v7 = [(BSCompoundAssertion *)observers acquireForReason:v6 withContext:v5];

  return v7;
}

- (id)bufferEventsForSpringBoardScene:(id)a3 reason:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [SBKeyboardFocusCoordinator bufferEventsForSpringBoardScene:a2 reason:?];
  }

  v9 = v8;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (v7)
  {
    v10 = [(SBKeyboardFocusCoordinator *)self _sceneControllerForScene:v7];
    if (!v10)
    {
      [SBKeyboardFocusCoordinator bufferEventsForSpringBoardScene:v7 reason:a2];
    }

    v11 = v10;
    atomic_fetch_add(&self->_eventBufferingRequestGeneration, 1uLL);
    v12 = atomic_load(&self->_eventBufferingRequestGeneration);
    v13 = [v10 bufferEventsForReason:v9 generation:v12];
  }

  else
  {
    v14 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBKeyboardFocusCoordinator bufferEventsForSpringBoardScene:reason:];
    }

    v13 = 0;
  }

  return v13;
}

- (id)deferAdditionalEnvironments:(id)a3 whenTargetHasKeyboardFocus:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  focusServiceEventDeferralRequests = self->_focusServiceEventDeferralRequests;
  if (!focusServiceEventDeferralRequests)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = self->_focusServiceEventDeferralRequests;
    self->_focusServiceEventDeferralRequests = v9;

    focusServiceEventDeferralRequests = self->_focusServiceEventDeferralRequests;
  }

  [(NSMutableDictionary *)focusServiceEventDeferralRequests setObject:v6 forKey:v7];
  objc_initWeak(&location, self);
  v11 = objc_alloc(MEMORY[0x277CF0CE8]);
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v12 UUIDString];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __85__SBKeyboardFocusCoordinator_deferAdditionalEnvironments_whenTargetHasKeyboardFocus___block_invoke;
  v25 = &unk_2783C5318;
  objc_copyWeak(&v28, &location);
  v14 = v6;
  v26 = v14;
  v15 = v7;
  v27 = v15;
  v16 = [v11 initWithIdentifier:v13 forReason:@"focus service requesting deferral" invalidationBlock:&v22];

  v17 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = v14;
    v32 = 2114;
    v33 = v15;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[coordinator] deferKeyboardEventsForEnvironment: adding requested deferrals for environments: %{public}@ when target %{public}@ has focus", buf, 0x16u);
  }

  v18 = [SBKeyboardFocusArbitrationReason deferAdditionalEnvironments:v22];
  [(SBKeyboardFocusCoordinator *)self _setNeedsArbitrationForReason:v18];

  policyEnforcer = self->_policyEnforcer;
  v20 = [(SBKeyboardFocusCoalition *)self->_coalition enforcedPolicy];
  [(SBKeyboardFocusPolicyEnforcer *)policyEnforcer enforce:v20];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  return v16;
}

void __85__SBKeyboardFocusCoordinator_deferAdditionalEnvironments_whenTargetHasKeyboardFocus___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v6, a1 + 6);
  v4 = a1[4];
  v5 = a1[5];
  BSDispatchMain();

  objc_destroyWeak(&v6);
}

void __85__SBKeyboardFocusCoordinator_deferAdditionalEnvironments_whenTargetHasKeyboardFocus___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[coordinator] deferKeyboardEventsForEnvironment: removing requested deferrals for environments: %{public}@ when target %{public}@ has focus", &v10, 0x16u);
  }

  v6 = [WeakRetained focusServiceEventDeferralRequests];
  [v6 removeObjectForKey:*(a1 + 40)];

  v7 = +[SBKeyboardFocusArbitrationReason deferAdditionalEnvironments];
  [WeakRetained _setNeedsArbitrationForReason:v7];

  v8 = WeakRetained[6];
  v9 = [WeakRetained[25] enforcedPolicy];
  [v8 enforce:v9];
}

- (void)removeKeyboardFocusFromScene:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = v5;
  NSClassFromString(&cfstr_Fbscene.isa);
  if (!v6)
  {
    [SBKeyboardFocusCoordinator removeKeyboardFocusFromScene:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBKeyboardFocusCoordinator removeKeyboardFocusFromScene:a2];
  }

  v7 = [SBKeyboardFocusTarget targetForFBScene:v6];
  v8 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[coordinator] removeKeyboardFocusFromScene: target %{public}@", buf, 0xCu);
  }

  [(SBKeyboardFocusCoordinator *)self _removeSceneFromRecents:v6 reason:@"removeKeyboardFocusFromScene"];
  overlayUISceneRequestingFocus = self->_overlayUISceneRequestingFocus;
  if (overlayUISceneRequestingFocus)
  {
    v10 = [(FBScene *)overlayUISceneRequestingFocus identityToken];
    v11 = [v6 identityToken];
    v12 = [v10 isEqual:v11];

    if (v12)
    {
      v13 = self->_overlayUISceneRequestingFocus;
      self->_overlayUISceneRequestingFocus = 0;
    }
  }

  v14 = [(NSMutableSet *)self->_sceneControllers copy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  v17 = v15;
  if (!v16)
  {
    goto LABEL_22;
  }

  v18 = v16;
  LOBYTE(v19) = 0;
  v20 = *v24;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v24 != v20)
      {
        objc_enumerationMutation(v15);
      }

      if (v19)
      {
        v19 = 1;
      }

      else
      {
        v19 = [*(*(&v23 + 1) + 8 * i) removeKeyboardFocusFromScene:{v6, v23}];
      }
    }

    v18 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v18);

  if (v19)
  {
    v22 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v7;
      _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "[coordinator] removeKeyboardFocusFromScene: target %{public}@ was focus target, requesting full arbitration", buf, 0xCu);
    }

    v17 = +[SBKeyboardFocusArbitrationReason didRemoveKeyboardFocusFromScene];
    [(SBKeyboardFocusCoordinator *)self _setNeedsArbitrationForReason:v17];
LABEL_22:
  }
}

- (void)userFocusRequestForScene:(id)a3 reason:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v13 = v10;
  NSClassFromString(&cfstr_Fbscene.isa);
  if (!v13)
  {
    [SBKeyboardFocusCoordinator userFocusRequestForScene:a2 reason:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBKeyboardFocusCoordinator userFocusRequestForScene:a2 reason:? completion:?];
  }

  v14 = v11;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v14)
  {
    [SBKeyboardFocusCoordinator userFocusRequestForScene:a2 reason:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBKeyboardFocusCoordinator userFocusRequestForScene:a2 reason:? completion:?];
  }

  v15 = [v13 clientHandle];
  v16 = [v15 processHandle];
  v17 = [v16 pid];

  if (v17 <= 0)
  {
    v18 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SBKeyboardFocusCoordinator userFocusRequestForScene:reason:completion:];
    }
  }

  else
  {
    v18 = [v13 identityToken];
    v19 = [SBKeyboardFocusTarget targetForFBScene:v13];
    v20 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138543618;
      v30 = v19;
      v31 = 2114;
      v32 = v14;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "[coordinator] userFocusRequestForScene: requesting target %{public}@ for reason:%{public}@", &v29, 0x16u);
    }

    ++self->_userFocusRequestGeneration;
    v21 = [(SBKeyboardFocusSceneProviding *)self->_sceneProvider isOverlayUIScene:v13];
    if (v21)
    {
      v22 = SBLogKeyboardFocus();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "[coordinator] userFocusRequestForScene: high priority scene!", &v29, 2u);
      }

      objc_storeStrong(&self->_overlayUISceneRequestingFocus, a3);
    }

    [(UIKeyboardArbiterManager *)self->_keyboardArbiterManager userSelectedProcessIdentifier:v17 withSceneIdentity:v18 onCompletion:&__block_literal_global_461];
    if (v12)
    {
      if (((-[SBKeyboardFocusPolicy advicePolicy](self->_enforcedPolicy, "advicePolicy") == 0) & ~v21) != 0 || (-[SBKeyboardFocusPolicy keyboardFocusTarget](self->_enforcedPolicy, "keyboardFocusTarget"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v19 isEqual:v23], v23, v24))
      {
        v12[2](v12, 1);
      }

      else
      {
        userFocusRequestRuleUpdateCompletionHandlers = self->_userFocusRequestRuleUpdateCompletionHandlers;
        if (!userFocusRequestRuleUpdateCompletionHandlers)
        {
          v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v27 = self->_userFocusRequestRuleUpdateCompletionHandlers;
          self->_userFocusRequestRuleUpdateCompletionHandlers = v26;

          userFocusRequestRuleUpdateCompletionHandlers = self->_userFocusRequestRuleUpdateCompletionHandlers;
        }

        v28 = MEMORY[0x223D6F7F0](v12);
        [(NSMutableArray *)userFocusRequestRuleUpdateCompletionHandlers addObject:v28];
      }
    }
  }
}

- (id)suppressKeyboardFocusEvaluationForReason:(id)a3
{
  v4 = a3;
  suppressKeyboardFocusEvaluationAssertion = self->_suppressKeyboardFocusEvaluationAssertion;
  if (!suppressKeyboardFocusEvaluationAssertion)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277CF0BD0];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __71__SBKeyboardFocusCoordinator_suppressKeyboardFocusEvaluationForReason___block_invoke;
    v18 = &unk_2783AD688;
    objc_copyWeak(&v19, &location);
    v7 = [v6 assertionWithIdentifier:@"SBKeyboardFocusCoordinator-keyboardFocusEvaluationSuppression" stateDidChangeHandler:&v15];
    v8 = self->_suppressKeyboardFocusEvaluationAssertion;
    self->_suppressKeyboardFocusEvaluationAssertion = v7;

    v9 = self->_suppressKeyboardFocusEvaluationAssertion;
    v10 = SBLogKeyboardFocus();
    [(BSCompoundAssertion *)v9 setLog:v10, v15, v16, v17, v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    suppressKeyboardFocusEvaluationAssertion = self->_suppressKeyboardFocusEvaluationAssertion;
  }

  v11 = [(BSCompoundAssertion *)suppressKeyboardFocusEvaluationAssertion acquireForReason:v4];
  if (!self->_coalition_suppressKeyboardFocusEvaluationAssertion)
  {
    v12 = [(SBKeyboardFocusCoalition *)self->_coalition suppressKeyboardFocusEvaluationForReason:@"SBKeyboardFocusCoordinatorRequested"];
    coalition_suppressKeyboardFocusEvaluationAssertion = self->_coalition_suppressKeyboardFocusEvaluationAssertion;
    self->_coalition_suppressKeyboardFocusEvaluationAssertion = v12;
  }

  return v11;
}

void __71__SBKeyboardFocusCoordinator_suppressKeyboardFocusEvaluationForReason___block_invoke(uint64_t a1, void *a2)
{
  if (([a2 isActive] & 1) == 0)
  {
    v3 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "finished suppressing keyboard focus evaluation, time to re-evaluate", v7, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [*(WeakRetained + 19) invalidate];
      v6 = v5[19];
      v5[19] = 0;
    }
  }
}

- (id)preventFocusForSceneWithIdentityToken:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  preventFocusForSceneAssertion = self->_preventFocusForSceneAssertion;
  if (!preventFocusForSceneAssertion)
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x277CF0BD0];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __75__SBKeyboardFocusCoordinator_preventFocusForSceneWithIdentityToken_reason___block_invoke;
    v19 = &unk_2783AD688;
    objc_copyWeak(&v20, &location);
    v10 = [v9 assertionWithIdentifier:@"SBWorkspaceKeyboardFocusPreventFocusForPID" stateDidChangeHandler:&v16];
    v11 = self->_preventFocusForSceneAssertion;
    self->_preventFocusForSceneAssertion = v10;

    v12 = self->_preventFocusForSceneAssertion;
    v13 = SBLogKeyboardFocus();
    [(BSCompoundAssertion *)v12 setLog:v13, v16, v17, v18, v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
    preventFocusForSceneAssertion = self->_preventFocusForSceneAssertion;
  }

  v14 = [(BSCompoundAssertion *)preventFocusForSceneAssertion acquireForReason:v7 withContext:v6];

  return v14;
}

void __75__SBKeyboardFocusCoordinator_preventFocusForSceneWithIdentityToken_reason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[SBKeyboardFocusArbitrationReason preventFocusForPID];
  [WeakRetained _setNeedsArbitrationForReason:v1];
}

- (id)redirectFocusForReason:(id)a3 fromProcessIdentifier:(int)a4 fromSceneIdentityToken:(id)a5 toProcessIdentifier:(int)a6 toSceneIdentityToken:(id)a7 inContainingWindow:(id)a8
{
  v10 = *&a6;
  v12 = *&a4;
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  if (!v15)
  {
    v18 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SBKeyboardFocusCoordinator redirectFocusForReason:v12 fromProcessIdentifier:v18 fromSceneIdentityToken:? toProcessIdentifier:? toSceneIdentityToken:? inContainingWindow:?];
    }
  }

  v19 = objc_alloc_init(SBKeyboardFocusRedirection);
  [(SBKeyboardFocusRedirection *)v19 setReason:v14];
  [(SBKeyboardFocusRedirection *)v19 setFromProcessIdentifier:v12];
  [(SBKeyboardFocusRedirection *)v19 setFromToken:v15];
  [(SBKeyboardFocusRedirection *)v19 setToProcessIdentifier:v10];
  [(SBKeyboardFocusRedirection *)v19 setToToken:v16];
  [(SBKeyboardFocusRedirection *)v19 setContainingWindow:v17];
  appFocusRedirections = self->_appFocusRedirections;
  if (!appFocusRedirections)
  {
    objc_initWeak(&location, self);
    v21 = MEMORY[0x277CF0BD0];
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __158__SBKeyboardFocusCoordinator_redirectFocusForReason_fromProcessIdentifier_fromSceneIdentityToken_toProcessIdentifier_toSceneIdentityToken_inContainingWindow___block_invoke;
    v31 = &unk_2783AD688;
    objc_copyWeak(&v32, &location);
    v22 = [v21 assertionWithIdentifier:@"appFocusRedirections" stateDidChangeHandler:&v28];
    v23 = self->_appFocusRedirections;
    self->_appFocusRedirections = v22;

    v24 = self->_appFocusRedirections;
    v25 = SBLogKeyboardFocus();
    [(BSCompoundAssertion *)v24 setLog:v25, v28, v29, v30, v31];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
    appFocusRedirections = self->_appFocusRedirections;
  }

  v26 = [(BSCompoundAssertion *)appFocusRedirections acquireForReason:v14 withContext:v19];

  return v26;
}

void __158__SBKeyboardFocusCoordinator_redirectFocusForReason_fromProcessIdentifier_fromSceneIdentityToken_toProcessIdentifier_toSceneIdentityToken_inContainingWindow___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[SBKeyboardFocusArbitrationReason appFocusRedirections];
  [WeakRetained _setNeedsArbitrationForReason:v1];
}

- (id)redirectSpringBoardLockFocusForReason:(id)a3 toProcessidentifier:(int)a4 toSceneIdentityToken:(id)a5
{
  v6 = *&a4;
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = [MEMORY[0x277CBEB58] set];
    v11 = [(NSMutableSet *)self->_sceneControllers copy];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v25 + 1) + 8 * i) redirectSpringBoardLockFocusForReason:v8 toProcessidentifier:v6 toSceneIdentityToken:v9];
          [v10 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    v18 = objc_alloc(MEMORY[0x277CF0CE8]);
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Coordinator:redirectSpringBoardLockFocusForReason: %@", v8];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __109__SBKeyboardFocusCoordinator_redirectSpringBoardLockFocusForReason_toProcessidentifier_toSceneIdentityToken___block_invoke;
    v23[3] = &unk_2783A8A98;
    v24 = v10;
    v20 = v10;
    v21 = [v18 initWithIdentifier:v19 forReason:v8 invalidationBlock:v23];
  }

  else
  {
    v12 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = v8;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[coordinator] error: redirectSpringBoardLockFocusForReason for reason %{public}@ with no token. PID-only rules are not valid", buf, 0xCu);
    }

    v21 = 0;
  }

  return v21;
}

void __109__SBKeyboardFocusCoordinator_redirectSpringBoardLockFocusForReason_toProcessidentifier_toSceneIdentityToken___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) invalidate];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (id)focusLockSpringBoardWindow:(id)a3 forReason:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [v7 windowScene];
    v10 = [(SBKeyboardFocusCoordinator *)self _sceneControllerForScene:v9];
    if (!v10)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"[coordinator] request focus lock for SB window %@ but we don't have a matching sceneController for it's windowScene %@", v7, v9];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [(SBKeyboardFocusCoordinator *)a2 focusLockSpringBoardWindow:v17 forReason:?];
      }

      [v17 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x21F734E34);
    }

    v11 = v10;
    v12 = v8;
    if (!v12)
    {
      [SBKeyboardFocusCoordinator focusLockSpringBoardWindow:a2 forReason:?];
    }

    v13 = v12;
    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [SBKeyboardFocusCoordinator focusLockSpringBoardWindow:v13 forReason:a2];
    }

    v14 = [v11 focusLockSpringBoardWindow:v7 forReason:v13];
  }

  else
  {
    v15 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[coordinator] error: focusLockSpringBoardWindow for reason %{public}@ with nil window", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (id)focusLockSpringBoardWindowScene:(id)a3 forReason:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [(SBKeyboardFocusCoordinator *)self _sceneControllerForScene:v7];
    if (!v9)
    {
      [SBKeyboardFocusCoordinator focusLockSpringBoardWindowScene:v7 forReason:a2];
    }

    v10 = v9;
    v11 = v8;
    if (!v11)
    {
      [SBKeyboardFocusCoordinator focusLockSpringBoardWindowScene:a2 forReason:?];
    }

    v12 = v11;
    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [SBKeyboardFocusCoordinator focusLockSpringBoardWindowScene:v12 forReason:a2];
    }

    v13 = [v10 focusLockSpringBoardForReason:v12];
  }

  else
  {
    v14 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBKeyboardFocusCoordinator focusLockSpringBoardWindowScene:forReason:];
    }

    v13 = 0;
  }

  return v13;
}

- (void)requestArbitrationForSBWindowScene:(id)a3 forReason:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v10 = v6;
    v7 = [(SBKeyboardFocusCoordinator *)self _sceneControllerForScene:a3];
    v8 = [v7 description];
    v9 = [v10 annotatedWithSourceName:v8];

    v6 = v9;
  }

  v11 = v6;
  [(SBKeyboardFocusCoordinator *)self _setNeedsArbitrationForReason:v6];
}

- (int)presentingKeyboardProcessIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__SBKeyboardFocusCoordinator_presentingKeyboardProcessIdentifier__block_invoke;
  v4[3] = &unk_2783C5340;
  v4[4] = &v5;
  [(SBKeyboardFocusCoordinator *)self _talkToKeyboardArbiterAdvisor:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __65__SBKeyboardFocusCoordinator_presentingKeyboardProcessIdentifier__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 presentingKeyboardProcessIdentifier];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)shouldAllowInteractionTrackingKeyboardFocusUpdateForWindow:(id)a3
{
  v4 = a3;
  v5 = [v4 windowScene];
  v6 = [(SBKeyboardFocusCoordinator *)self _sceneControllerForScene:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 shouldAllowInteractionTrackingKeyboardFocusUpdateForWindow:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)focusLockSpringBoardWindowScene:(id)a3 forAccessibilityReason:(id)a4
{
  v6 = a3;
  v7 = [SBKeyboardFocusLockReason accessibility:a4];
  v8 = [(SBKeyboardFocusCoordinator *)self focusLockSpringBoardWindowScene:v6 forReason:v7];

  return v8;
}

- (id)requestKeyboardFocusOverrideSceneIdentityTokenStringRepresentation:(id)a3 forAccessibilityReason:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = MEMORY[0x277CCACA8];
  objc_opt_class();
  v11 = objc_opt_class();
  if (!v9)
  {
    v22 = NSStringFromClass(v11);
    v23 = [v10 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"tokenString", v22];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(SBKeyboardFocusCoordinator *)a2 requestKeyboardFocusOverrideSceneIdentityTokenStringRepresentation:v23 forAccessibilityReason:?];
    }

    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x21F735490);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBKeyboardFocusCoordinator requestKeyboardFocusOverrideSceneIdentityTokenStringRepresentation:v9 forAccessibilityReason:a2];
  }

  v12 = [(SBKeyboardFocusSceneProviding *)self->_sceneProvider sceneForIdentityTokenStringRepresentation:v9];
  if (v12)
  {
    accessibilityKeyboardFocusTargetOverrides = self->_accessibilityKeyboardFocusTargetOverrides;
    if (!accessibilityKeyboardFocusTargetOverrides)
    {
      objc_initWeak(&location, self);
      v14 = MEMORY[0x277CF0BD0];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __120__SBKeyboardFocusCoordinator_requestKeyboardFocusOverrideSceneIdentityTokenStringRepresentation_forAccessibilityReason___block_invoke;
      v24[3] = &unk_2783C3100;
      objc_copyWeak(&v26, &location);
      v25 = v8;
      v15 = [v14 assertionWithIdentifier:@"accessibilityKeyboardArbiterOverrides" stateDidChangeHandler:v24];
      v16 = self->_accessibilityKeyboardFocusTargetOverrides;
      self->_accessibilityKeyboardFocusTargetOverrides = v15;

      v17 = self->_accessibilityKeyboardFocusTargetOverrides;
      v18 = SBLogKeyboardFocus();
      [(BSCompoundAssertion *)v17 setLog:v18];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
      accessibilityKeyboardFocusTargetOverrides = self->_accessibilityKeyboardFocusTargetOverrides;
    }

    v19 = [SBKeyboardFocusTarget targetForFBScene:v12];
    v20 = [(BSCompoundAssertion *)accessibilityKeyboardFocusTargetOverrides acquireForReason:v8 withContext:v19];
  }

  else
  {
    v19 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SBKeyboardFocusCoordinator requestKeyboardFocusOverrideSceneIdentityTokenStringRepresentation:forAccessibilityReason:];
    }

    v20 = 0;
  }

  return v20;
}

void __120__SBKeyboardFocusCoordinator_requestKeyboardFocusOverrideSceneIdentityTokenStringRepresentation_forAccessibilityReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [SBKeyboardFocusArbitrationReason accessibility:*(a1 + 32)];
  [WeakRetained _setNeedsArbitrationForReason:v2];
}

- (id)_sceneControllerHostingSceneIdentityToken:(id)a3 ultimateHostTarget:(id *)a4 isSecretScene:(BOOL *)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  *a5 = 0;
  if (v8)
  {
    v24 = a4;
    v25 = self;
    v26 = a5;
    v9 = [(NSMutableSet *)self->_sceneControllers copy];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = [v15 sbWindowScene];
          v17 = [v16 _FBSScene];
          v18 = [v17 identityToken];
          v19 = [v18 isEqual:v8];

          if (v19)
          {
            v22 = v15;
            v20 = v10;
            goto LABEL_16;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v20 = [(SBKeyboardFocusCoordinator *)v25 _sbWindowSceneHostingFBSSceneIdentityToken:v8 ultimateHostTarget:v24];
    if (v20)
    {
      v21 = *v24 != 0;
    }

    else
    {
      v21 = 1;
    }

    *v26 = v21;
    v22 = [(SBKeyboardFocusCoordinator *)v25 _sceneControllerForSBWindowScene:v20];
LABEL_16:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)_isAcceptableVisibilityBasedHostScene:(id)a3 forSBWindowScene:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 identityToken];
  v8 = [v6 _FBSScene];

  v9 = [v8 identityToken];
  v10 = [v9 isEqual:v7];

  if (v10 & 1) == 0 && ((-[SBKeyboardFocusSceneProviding anyConnectedSBWindowSceneContainsSceneIdentity:](self->_sceneProvider, "anyConnectedSBWindowSceneContainsSceneIdentity:", v7) & 1) != 0 || (-[SBKeyboardFocusSceneProviding isSystemUISceneIdentityToken:](self->_sceneProvider, "isSystemUISceneIdentityToken:", v7) & 1) != 0 || (externalSceneIdentities = self->_externalSceneIdentities, [v7 stringRepresentation], v14 = objc_claimAutoreleasedReturnValue(), LOBYTE(externalSceneIdentities) = -[NSSet containsObject:](externalSceneIdentities, "containsObject:", v14), v14, (externalSceneIdentities)))
  {
    v12 = 1;
  }

  else
  {
    v11 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v7;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "unacceptable host scene: %{public}@", &v16, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (id)_sbWindowSceneHostingFBSSceneIdentityToken:(id)a3 ultimateHostTarget:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v8 = [v6 stringRepresentation];
  v9 = [(SBKeyboardFocusCoordinator *)self _sbWindowSceneHostingFBSSceneIdentityTokenString:v8];

  if (!v9)
  {
    v10 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 stringRepresentation];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Searching the visibility graph for hosting information for %{public}@", &buf, 0xCu);
    }

    visibilityGraphNavigator = self->_visibilityGraphNavigator;
    if (!visibilityGraphNavigator)
    {
      v13 = objc_alloc_init(SBKeyboardFocusVisibilityGraphNavigator);
      v14 = self->_visibilityGraphNavigator;
      self->_visibilityGraphNavigator = v13;

      visibilityGraphNavigator = self->_visibilityGraphNavigator;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__150;
    v37 = __Block_byref_object_dispose__150;
    v38 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__150;
    v28 = __Block_byref_object_dispose__150;
    v29 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __92__SBKeyboardFocusCoordinator__sbWindowSceneHostingFBSSceneIdentityToken_ultimateHostTarget___block_invoke;
    v23[3] = &unk_2783C5368;
    v23[4] = self;
    v23[5] = &buf;
    v23[6] = &v24;
    [(SBKeyboardFocusVisibilityGraphNavigator *)visibilityGraphNavigator reverseEnumerateChainContainingSceneIdentityToken:v7 block:v23];
    v9 = *(*(&buf + 1) + 40);
    *a4 = v25[5];
    v15 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v9 _FBSScene];
      v17 = [v16 identityToken];
      v18 = [v17 stringRepresentation];
      v19 = v18;
      v20 = v25[5];
      if (!v20)
      {
        v20 = @"<none>";
      }

      *v30 = 138543618;
      v31 = v18;
      v32 = 2114;
      v33 = v20;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Visibility graph search found root scene %{public}@ and ultimate host %{public}@", v30, 0x16u);
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&buf, 8);

    if (!v9)
    {
      v21 = SBLogKeyboardFocus();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SBKeyboardFocusCoordinator _sbWindowSceneHostingFBSSceneIdentityToken:v7 ultimateHostTarget:v21];
      }

      goto LABEL_15;
    }
  }

LABEL_16:

  return v9;
}

uint64_t __92__SBKeyboardFocusCoordinator__sbWindowSceneHostingFBSSceneIdentityToken_ultimateHostTarget___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v6 = [*(a1 + 32) _sbWindowSceneHostingFBSSceneIdentityTokenString:v15];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = [*(*(a1 + 32) + 32) sceneForIdentityTokenStringRepresentation:v15];
    if (v10 && [*(a1 + 32) _isAcceptableVisibilityBasedHostScene:v10 forSBWindowScene:*(*(*(a1 + 40) + 8) + 40)])
    {
      v11 = [SBKeyboardFocusTarget targetForFBScene:v10];
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    *a4 = 1;
  }

  return MEMORY[0x2821F9730](v9);
}

- (id)_sbWindowSceneHostingFBSSceneIdentityTokenString:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v4 = [SBApp windowSceneManager];
    v5 = [v4 connectedWindowScenes];

    obj = v5;
    v25 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v25)
    {
      v24 = *v31;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v30 + 1) + 8 * i);
          v8 = [v7 _FBSScene];
          v9 = [v8 identityToken];
          v10 = [v9 stringRepresentation];
          v11 = BSEqualObjects();

          if (v11)
          {
            v21 = v7;
            goto LABEL_24;
          }

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v12 = [v7 sceneManager];
          v13 = [v12 allScenes];

          v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
LABEL_10:
            v17 = 0;
            while (1)
            {
              if (*v27 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [*(*(&v26 + 1) + 8 * v17) identityToken];
              v19 = [v18 stringRepresentation];
              v20 = BSEqualObjects();

              if (v20)
              {
                break;
              }

              if (v15 == ++v17)
              {
                v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
                if (v15)
                {
                  goto LABEL_10;
                }

                goto LABEL_16;
              }
            }

            v21 = v7;

            if (v21)
            {
              goto LABEL_24;
            }
          }

          else
          {
LABEL_16:
          }
        }

        v21 = 0;
        v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v21 = 0;
    }

LABEL_24:
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_sceneControllerForSBWindowScene:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_sceneControllers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v26 + 1) + 8 * v9);
      if ([v10 controlsScene:v4])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v10;

    if (v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_9:
  }

  v12 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [SBKeyboardFocusCoordinator _sceneControllerForSBWindowScene:];
  }

  v13 = [v4 keyboardFocusCoalitionAffinity];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_sceneControllers;
  v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
LABEL_15:
    v18 = 0;
    while (1)
    {
      if (*v23 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v22 + 1) + 8 * v18);
      if (v13 == [v19 coalitionAffinity])
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v16)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    v11 = v19;

    if (v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_21:
  }

  v20 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [SBKeyboardFocusCoordinator _sceneControllerForSBWindowScene:];
  }

  v11 = [(NSMutableSet *)self->_sceneControllers anyObject];
LABEL_26:

  return v11;
}

- (id)_sceneControllerForScene:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_sceneControllers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 controlsScene:{v4, v11}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_updateCoalitionForSceneControllersAddedOrRemoved
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(BKSHIDEventDeliveryManager *)self->_deliveryManager transactionAssertionWithReason:@"Updating Coalition"];
  v4 = self->_coalition;
  v5 = self->_coalition_suppressKeyboardFocusEvaluationAssertion;
  v6 = [(NSMutableSet *)self->_sceneControllers copy];
  v7 = [(_SBKeyboardFocusCoalitionFactory *)self->_keyboardFocusCoalitionFactory newCoalitionForSceneControllers:v6];
  coalition = self->_coalition;
  self->_coalition = v7;

  if ([(BSCompoundAssertion *)self->_suppressKeyboardFocusEvaluationAssertion isActive])
  {
    v9 = [(SBKeyboardFocusCoalition *)self->_coalition suppressKeyboardFocusEvaluationForReason:@"SBKeyboardFocusCoordinatorRequested"];
    coalition_suppressKeyboardFocusEvaluationAssertion = self->_coalition_suppressKeyboardFocusEvaluationAssertion;
    self->_coalition_suppressKeyboardFocusEvaluationAssertion = v9;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * v15++) setCoalition:{self->_coalition, v17}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  [(SBKeyboardFocusCoalition *)self->_coalition setDelegate:self];
  [(SBKeyboardFocusCoalition *)v4 invalidate];
  [(BSInvalidatable *)v5 invalidate];
  v16 = +[SBKeyboardFocusArbitrationReason didResetCoalition];
  [(SBKeyboardFocusCoordinator *)self _setNeedsArbitrationForReason:v16];

  [v3 invalidate];
}

- (BOOL)_setEnforcedKeyboardFocusPolicy:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  p_enforcedPolicy = &self->_enforcedPolicy;
  v7 = BSEqualObjects();
  if ((v7 & 1) == 0)
  {
    objc_storeStrong(p_enforcedPolicy, a3);
    v8 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[coordinator] new enforced policy: %{public}@ ", &v10, 0xCu);
    }
  }

  return v7 ^ 1;
}

- (void)_notifyObserversExternalSceneDidAcquireFocus:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(BSCompoundAssertion *)self->_observers context];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) keyboardFocusController:self externalSceneDidAcquireFocus:v4];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_notifyObserversFocusedWindowSceneChangedFrom:(id)a3 to:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(BSCompoundAssertion *)self->_observers context];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
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
          [v13 keyboardFocusController:self didUpdateWindowSceneWithFocusFrom:v6 to:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)_talkToKeyboardArbiterAdvisor:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = atomic_load(&self->_arbiterDidInitialize);
  if (v5)
  {
    v4[2](v4, self->_keyboardArbiterAdvisor);
  }

  return v5 & 1;
}

- (void)sceneManager:(id)a3 didAddExternalForegroundApplicationSceneHandle:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = [v5 scene];

  v7 = [v6 identityToken];
  v8 = [v6 clientHandle];
  v9 = [v8 processHandle];
  v10 = [v9 pid];

  if (v10 >= 1)
  {
    [(_SBRecentlyUsedSceneIdentityCache *)self->_recentlyUsedScenes addSceneIdentityToken:v7 forPID:v10];
    v11 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      recentlyUsedScenes = self->_recentlyUsedScenes;
      v13[0] = 67109634;
      v13[1] = v10;
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = recentlyUsedScenes;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[coordinator] didAddExternalForegroundApplicationSceneHandle pid:%d scene:%{public}@ now:%{public}@", v13, 0x1Cu);
    }
  }
}

- (void)sceneManager:(id)a3 willRemoveExternalForegroundApplicationSceneHandle:(id)a4 withReason:(int64_t)a5
{
  v8 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (!a5)
  {
    v7 = [v8 scene];
    [(SBKeyboardFocusCoordinator *)self _removeSceneFromRecents:v7 reason:@"willRemoveExternalForegroundApplicationSceneHandle"];
  }
}

- (void)sceneManager:(id)a3 didRemoveExternalForegroundApplicationSceneHandle:(id)a4
{
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [v7 scene];
  if ([v5 isValid])
  {
    v6 = [v7 scene];
    [(SBKeyboardFocusCoordinator *)self _removeSceneFromRecents:v6 reason:@"didRemoveExternalForegroundApplicationSceneHandle"];
  }
}

- (void)_removeSceneFromRecents:(id)a3 reason:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 identityToken];
  v9 = [v7 clientHandle];

  v10 = [v9 processHandle];
  v11 = [v10 pid];

  [(_SBRecentlyUsedSceneIdentityCache *)self->_recentlyUsedScenes removeSceneIdentityToken:v8 forPID:v11];
  v12 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    recentlyUsedScenes = self->_recentlyUsedScenes;
    v14 = 138413058;
    v15 = v6;
    v16 = 1024;
    v17 = v11;
    v18 = 2114;
    v19 = v8;
    v20 = 2114;
    v21 = recentlyUsedScenes;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[coordinator] _removeSceneFromRecents %@ pid:%d scene:%{public}@ now:%{public}@", &v14, 0x26u);
  }
}

- (void)multiDisplayUserInteractionCoordinator:(id)a3 updatedActiveWindowScene:(id)a4
{
  v4 = [(SBKeyboardFocusCoordinator *)self _sceneControllerForSBWindowScene:a4];
  [v4 displayDidBecomeActive];
}

- (id)appFocusRedirectionForProposedTarget:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(BSCompoundAssertion *)self->_appFocusRedirections orderedContext];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 fromProcessIdentifier];
        if ([v4 pid] == v10)
        {
          v11 = [v9 fromToken];
          v12 = [v4 sceneIdentityToken];
          if (v12)
          {
            v13 = v12;
            v14 = [v4 sceneIdentityToken];
            v15 = [v14 isEqual:v11];

            if (v15)
            {
              v6 = v9;

              goto LABEL_14;
            }
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v6;
}

- (BOOL)shouldPreventFocusForSceneWithIdentityToken:(id)a3
{
  preventFocusForSceneAssertion = self->_preventFocusForSceneAssertion;
  v4 = a3;
  v5 = [(BSCompoundAssertion *)preventFocusForSceneAssertion context];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)keyboardFocusCoalitionDidUpdateEnforcedPolicy:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = [a3 enforcedPolicy];
  [(SBKeyboardFocusPolicyEnforcer *)self->_policyEnforcer enforce:v4];
  v5 = [(SBKeyboardFocusPolicy *)self->_enforcedPolicy sbWindowSceneAncestor];
  v6 = [v4 sbWindowSceneAncestor];
  v7 = [(SBKeyboardFocusCoordinator *)self _setEnforcedKeyboardFocusPolicy:v4];
  if (![(SBKeyboardFocusCoordinator *)self isHandlingKeyboardArbiterSuggestion])
  {
    v8 = [(SBKeyboardFocusPolicy *)self->_enforcedPolicy keyboardFocusTarget];
    v9 = [v8 pid];
    v10 = getpid();

    if (v9 != v10 || [v4 advicePolicy])
    {
      v11 = [(SBKeyboardFocusPolicy *)self->_enforcedPolicy keyboardFocusTarget];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __76__SBKeyboardFocusCoordinator_keyboardFocusCoalitionDidUpdateEnforcedPolicy___block_invoke;
      v35[3] = &unk_2783C5390;
      v36 = v11;
      v12 = v11;
      [(SBKeyboardFocusCoordinator *)self _talkToKeyboardArbiterAdvisor:v35];
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = self->_sceneControllers;
  v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v29 = v7;
    v30 = v6;
    v16 = v5;
    v17 = *v32;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = [*(*(&v31 + 1) + 8 * i) sbWindowSceneFocusTarget];
        v20 = [(SBKeyboardFocusPolicy *)self->_enforcedPolicy keyboardFocusTarget];
        v21 = [v19 isEqual:v20];

        if (v21)
        {
          v22 = 1;
          goto LABEL_15;
        }
      }

      v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    v22 = 0;
LABEL_15:
    v5 = v16;
    v6 = v30;
    v7 = v29;
  }

  else
  {
    v22 = 0;
  }

  if (v7)
  {
    v23 = [(SBKeyboardFocusCoordinator *)self windowSceneWithFocus];
    sceneProvider = self->_sceneProvider;
    v25 = [v4 keyboardFocusTarget];
    v26 = [(SBKeyboardFocusSceneProviding *)sceneProvider sceneForFocusTarget:v25];

    if (v22)
    {
      v27 = v23;
    }

    else
    {
      v27 = v26;
    }

    objc_storeStrong(&self->_sceneWithFocusIncludingSpringBoard, v27);
    if ([v4 advicePolicy])
    {
      if (v22)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26;
      }

      [(SBKeyboardFocusCoordinator *)self setExternalSceneWithFocus:v28];
      [(SBKeyboardFocusCoordinator *)self _notifyObserversExternalSceneDidAcquireFocus:v26];
    }
  }

  [(SBKeyboardFocusCoordinator *)self _callUserFocusSceneRequestCompletionBlocksIfNeeded];
  if (v5 != v6)
  {
    [(SBKeyboardFocusCoordinator *)self _notifyObserversFocusedWindowSceneChangedFrom:v5 to:v6];
  }
}

void __76__SBKeyboardFocusCoordinator_keyboardFocusCoalitionDidUpdateEnforcedPolicy___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 pid];
  v6 = [*(a1 + 32) sceneIdentityToken];
  [v4 keyboardFocusDidChangeWithoutAdvisorInputToPid:v5 sceneIdentity:v6];
}

- (BOOL)eventDeferringManagerSystemShellBehavior:(id)a3 shouldSuppressRemoteRuleForOwningElement:(id)a4 inEnvironment:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v11 = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    v13 = [v8 eventDeferringManager];
    v14 = [v13 windowHostingScene];
    v15 = [(SBKeyboardFocusPolicy *)self->_enforcedPolicy sbWindowSceneAncestor];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      v17 = objc_opt_class();
      v18 = v9;
      if (v17)
      {
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v21 = v19;

      if (v21)
      {
        v22 = [(BSCompoundAssertion *)self->_appFocusRedirections context];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __126__SBKeyboardFocusCoordinator_eventDeferringManagerSystemShellBehavior_shouldSuppressRemoteRuleForOwningElement_inEnvironment___block_invoke;
        v27[3] = &unk_2783C53B8;
        v28 = v21;
        v23 = [v22 bs_containsObjectPassingTest:v27];

        v20 = (v23 & 1) == 0 && [(SBKeyboardFocusPolicy *)self->_enforcedPolicy shouldSuppressRemoteDeferring];
      }

      else
      {
        v20 = [(SBKeyboardFocusPolicy *)self->_enforcedPolicy shouldSuppressRemoteDeferring];
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  v20 = 0;
LABEL_17:
  v24 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v9 interfaceElementCategory];
    *buf = 67109376;
    v30 = v20;
    v31 = 1024;
    v32 = v25;
    _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "[coordinator] shouldSuppressRemoteRuleForOwningElement: %{BOOL}u element: %d", buf, 0xEu);
  }

  return v20;
}

BOOL __126__SBKeyboardFocusCoordinator_eventDeferringManagerSystemShellBehavior_shouldSuppressRemoteRuleForOwningElement_inEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  LODWORD(a1) = [*(a1 + 32) serviceProcessIdentifier];
  if (a1 == [v3 toProcessIdentifier])
  {
    v4 = [v3 toToken];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)eventDeferringManagerSystemShellBehavior:(id)a3 isRemoteRuleOwningElement:(id)a4 andContainingWindow:(id)a5 visibleComparedToLocalTargetWindow:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = objc_opt_class();
  v15 = v10;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = [v13 eventDeferringManager];

  v19 = [v18 windowHostingScene];
  v20 = [(SBKeyboardFocusPolicy *)self->_enforcedPolicy sbWindowSceneAncestor];
  v21 = [v19 isEqual:v20];

  v22 = 0;
  if (v21 && v17)
  {
    v23 = [(BSCompoundAssertion *)self->_appFocusRedirections context];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __152__SBKeyboardFocusCoordinator_eventDeferringManagerSystemShellBehavior_isRemoteRuleOwningElement_andContainingWindow_visibleComparedToLocalTargetWindow___block_invoke;
    v28[3] = &unk_2783C53B8;
    v29 = v17;
    v24 = [v23 bs_firstObjectPassingTest:v28];

    if (v24)
    {
      v25 = [v24 containingWindow];
      [v25 windowLevel];
      [v12 windowLevel];
      if (BSFloatGreaterThanOrEqualToFloat())
      {
        v22 = 1;
      }

      else
      {
        v22 = -1;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  v26 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v31 = v22;
    v32 = 2114;
    v33 = v11;
    v34 = 2114;
    v35 = v12;
    _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "[coordinator] isRemoteRuleOwningElement:andContainingWindow:visibleComparedToLocalTargetWindow: %ld remoteRuleWindow: %{public}@ localTargetWindow: %{public}@", buf, 0x20u);
  }

  return v22;
}

BOOL __152__SBKeyboardFocusCoordinator_eventDeferringManagerSystemShellBehavior_isRemoteRuleOwningElement_andContainingWindow_visibleComparedToLocalTargetWindow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 toToken];
  if (v4 || (v5 = [*(a1 + 32) serviceProcessIdentifier], v5 != objc_msgSend(v3, "toProcessIdentifier")))
  {
    v7 = 0;
  }

  else
  {
    v6 = [v3 containingWindow];
    v7 = v6 != 0;
  }

  return v7;
}

- (id)additionalEnvironmentDeferralsForFocusTarget:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_focusServiceEventDeferralRequests objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldKeyboardBeWindowSizedForHostWithIdentity:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertNotMain();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SBKeyboardFocusCoordinator_shouldKeyboardBeWindowSizedForHostWithIdentity___block_invoke;
  block[3] = &unk_2783AB258;
  v8 = v4;
  v9 = &v10;
  block[4] = self;
  v5 = v4;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  LOBYTE(v4) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

void __77__SBKeyboardFocusCoordinator_shouldKeyboardBeWindowSizedForHostWithIdentity___block_invoke(void *a1)
{
  v4 = [*(a1[4] + 200) enforcedPolicy];
  v2 = [v4 sbWindowSceneAncestor];
  v3 = [v2 medusaHostedKeyboardWindowController];
  *(*(a1[6] + 8) + 24) = [v3 shouldKeyboardBeWindowSizedForHostWithIdentity:a1[5]];
}

- (void)keyboardArbiterAdvisor:(id)a3 request:(id)a4 sceneFocusChange:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(SBKeyboardFocusCoordinator *)self _handleFocusSceneChange:v10 fromArbiter:v8 request:v9 waitForSecretSceneHost:1];
  }

  else
  {
    atomic_fetch_add(&self->_eventBufferingRequestGeneration, 1uLL);
    v11 = atomic_load(&self->_eventBufferingRequestGeneration);
    v12 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = @"background keyboard arbiter request";
      v26 = 2048;
      v27 = v11;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[coordinator] buffer all events for reason: %{public}@ <%lu>- begin", buf, 0x16u);
    }

    v13 = objc_alloc_init(MEMORY[0x277CF0730]);
    v14 = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
    [v13 setEnvironment:v14];

    v15 = [(BKSHIDEventDeliveryManager *)self->_deliveryManager bufferEventsMatchingPredicate:v13 withReason:@"background keyboard arbiter request"];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__SBKeyboardFocusCoordinator_keyboardArbiterAdvisor_request_sceneFocusChange___block_invoke;
    block[3] = &unk_2783C53E0;
    block[4] = self;
    v18 = v10;
    v19 = v8;
    v20 = v9;
    v21 = @"background keyboard arbiter request";
    v22 = v15;
    v23 = v11;
    v16 = v15;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __78__SBKeyboardFocusCoordinator_keyboardArbiterAdvisor_request_sceneFocusChange___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _handleFocusSceneChange:*(a1 + 40) fromArbiter:*(a1 + 48) request:*(a1 + 56) waitForSecretSceneHost:1];
  v2 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 80);
    v6 = 138543618;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[coordinator] buffer all events for reason: %{public}@ <%lu> - end", &v6, 0x16u);
  }

  return [*(a1 + 72) invalidate];
}

- (id)_handleSceneFocusChange_reasonToAvoidFocusingAppSceneIdentityToken:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBKeyboardFocusSceneProviding *)self->_sceneProvider deviceApplicationSceneHandleForSceneIdentity:v4];
  v6 = v5;
  if (v5)
  {
    if ([v5 isOccluded])
    {
      v7 = @"isOccluded";
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[coordinator] not a known app scene %{public}@", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_handleSceneFocusChange_denyRequestForOverlayUI:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBKeyboardFocusSceneProviding *)self->_sceneProvider sceneForFocusTarget:v4];
  if ([(SBKeyboardFocusSceneProviding *)self->_sceneProvider isOverlayUIScene:v5])
  {
    overlayUISceneRequestingFocus = self->_overlayUISceneRequestingFocus;
    if (!overlayUISceneRequestingFocus || ([(FBScene *)overlayUISceneRequestingFocus isEqual:v5]& 1) == 0)
    {
      self = SBLogKeyboardFocus();
      if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v4;
        v8 = "[coordinator] denying request to focus OverlayUI target %{public}@ because OverlayUI hasn't requested focus!";
        goto LABEL_9;
      }

LABEL_10:

      LOBYTE(self) = 1;
      goto LABEL_11;
    }
  }

  v7 = [v5 identityToken];
  LODWORD(self) = [(SBKeyboardFocusCoordinator *)self shouldPreventFocusForSceneWithIdentityToken:v7];

  if (self)
  {
    self = SBLogKeyboardFocus();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v4;
      v8 = "[coordinator] denying request to focus OverlayUI target %{public}@ because an assertion preventing focus exists";
LABEL_9:
      _os_log_impl(&dword_21ED4E000, &self->super, OS_LOG_TYPE_DEFAULT, v8, &v10, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_11:

  return self;
}

- (void)_handleFocusSceneChange:(id)a3 fromArbiter:(id)a4 request:(id)a5 waitForSecretSceneHost:(BOOL)a6
{
  v6 = a6;
  *&v65[5] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  ++self->_handleFocusChangeGenerationCount;
  v13 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    handleFocusChangeGenerationCount = self->_handleFocusChangeGenerationCount;
    v15 = [v10 pid];
    v16 = [v10 sceneIdentity];
    *buf = 67109634;
    *v64 = handleFocusChangeGenerationCount;
    *&v64[4] = 1024;
    *&v64[6] = v15;
    v65[0] = 2114;
    *&v65[1] = v16;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[coordinator] gen:%d handling new keyboard arbiter request pid: %d sceneIdentity: %{public}@", buf, 0x18u);
  }

  v17 = [(SBKeyboardFocusCoordinator *)self _fixupFocusSceneRequest:v10];
  v18 = [MEMORY[0x277D22AC0] focusNothingChange];
  v19 = [v17 isEqual:v18];

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v21 = [v17 sceneIdentity];
    v20 = +[SBKeyboardFocusTarget targetForSceneIdentityToken:pid:](SBKeyboardFocusTarget, "targetForSceneIdentityToken:pid:", v21, [v17 pid]);

    if (v20 && [(SBKeyboardFocusCoordinator *)self _handleSceneFocusChange_denyRequestForOverlayUI:v20])
    {
      v22 = 0;
LABEL_37:
      v35 = [MEMORY[0x277D22AC0] focusNothingChange];
      [v11 applySceneFocusChange:v35 forRequest:v12];
      goto LABEL_38;
    }
  }

  v55 = v11;
  v23 = [MEMORY[0x277D22AC0] focusNothingChange];
  v24 = [v17 isEqual:v23];

  v54 = v17;
  if (v24)
  {
    v25 = [(SBKeyboardFocusPolicy *)self->_enforcedPolicy sbWindowSceneAncestor];
    if (v25)
    {
      v22 = [(SBKeyboardFocusCoordinator *)self _sceneControllerForSBWindowScene:v25];
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_17;
  }

  v53 = [v17 sceneIdentity];
  v62 = 0;
  v26 = [v17 sceneIdentity];
  v61 = 0;
  v22 = [(SBKeyboardFocusCoordinator *)self _sceneControllerHostingSceneIdentityToken:v26 ultimateHostTarget:&v61 isSecretScene:&v62];
  v25 = v61;

  if (v25)
  {
    v27 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *v64 = v20;
      *&v64[8] = 2114;
      *v65 = v25;
      _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "[coordinator] S33KR3T target %{public}@ has an ultimate host %{public}@", buf, 0x16u);
    }

    v28 = v25;
    v20 = v28;
    goto LABEL_15;
  }

  if (v62)
  {
    if (v6)
    {
      v43 = v20;
      v44 = v10;
      v45 = v12;
      v46 = self->_handleFocusChangeGenerationCount;
      v47 = SBLogKeyboardFocus();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v64 = v46;
        _os_log_impl(&dword_21ED4E000, v47, OS_LOG_TYPE_DEFAULT, "[coordinator] S33KR3T gen:%d host not found; retrying once", buf, 8u);
      }

      v48 = dispatch_time(0, 200000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __97__SBKeyboardFocusCoordinator__handleFocusSceneChange_fromArbiter_request_waitForSecretSceneHost___block_invoke;
      block[3] = &unk_2783A9288;
      v60 = v46;
      block[4] = self;
      v57 = v44;
      v11 = v55;
      v58 = v55;
      v12 = v45;
      v10 = v44;
      v59 = v12;
      v49 = MEMORY[0x277D85CD0];
      dispatch_after(v48, MEMORY[0x277D85CD0], block);

      v20 = v43;
      v17 = v54;
LABEL_36:

      goto LABEL_37;
    }
  }

  else if ([v22 supportsFlexibleWindowing])
  {
    v25 = v53;
    v50 = [(SBKeyboardFocusCoordinator *)self _handleSceneFocusChange_reasonToAvoidFocusingAppSceneIdentityToken:v53];
    if (!v50)
    {
      goto LABEL_17;
    }

    v51 = v50;
    v52 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      [SBKeyboardFocusCoordinator _handleFocusSceneChange:fromArbiter:request:waitForSecretSceneHost:];
    }

    v11 = v55;
    goto LABEL_36;
  }

LABEL_15:

LABEL_17:
  if (!v22)
  {
    v29 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [SBKeyboardFocusCoordinator _handleFocusSceneChange:v29 fromArbiter:? request:? waitForSecretSceneHost:?];
    }

    v22 = [(NSMutableSet *)self->_sceneControllers anyObject];
  }

  v30 = v10;
  v31 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v22 debugName];
    *buf = 138543618;
    *v64 = v32;
    *&v64[8] = 2114;
    *v65 = v20;
    _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "[coordinator] informing scene controller '%{public}@' of focusTarget: %{public}@", buf, 0x16u);
  }

  v33 = v12;

  [v22 keyboardArbiterSuggestedFocusTarget:v20];
  [(SBKeyboardFocusCoordinator *)self setHandlingKeyboardArbiterSuggestion:1];
  v34 = +[SBKeyboardFocusArbitrationReason keyboardArbiterSuggestion];
  [v22 requestPolicyReevaluationForReason:v34];

  v35 = [(SBKeyboardFocusCoordinator *)self enforcedPolicy];
  v36 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v35 keyboardFocusTarget];
    *buf = 138543618;
    *v64 = v30;
    *&v64[8] = 2114;
    *v65 = v37;
    _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "[coordinator] keyboard arbiter suggested %{public}@ and we replied %{public}@", buf, 0x16u);
  }

  v38 = objc_alloc(MEMORY[0x277D22AC0]);
  v39 = [v35 keyboardFocusTarget];
  v40 = [v39 sceneIdentityToken];
  v41 = [v35 keyboardFocusTarget];
  v42 = [v38 initWithSceneIdentity:v40 pid:{objc_msgSend(v41, "pid")}];

  v11 = v55;
  v12 = v33;
  [v55 applySceneFocusChange:v42 forRequest:v33];
  [(SBKeyboardFocusCoordinator *)self setHandlingKeyboardArbiterSuggestion:0];

  v10 = v30;
  v17 = v54;
LABEL_38:

  [(SBKeyboardFocusCoordinator *)self _callUserFocusSceneRequestCompletionBlocksIfNeeded];
}

void __97__SBKeyboardFocusCoordinator__handleFocusSceneChange_fromArbiter_request_waitForSecretSceneHost___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = *(*(a1 + 32) + 56);
  v4 = SBLogKeyboardFocus();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v2 == v3)
  {
    if (v5)
    {
      v6 = *(a1 + 64);
      v9 = 67109120;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[coordinator] S33KR3T gen:%d begin host retry", &v9, 8u);
    }

    [*(a1 + 32) _handleFocusSceneChange:*(a1 + 40) fromArbiter:*(a1 + 48) request:*(a1 + 56) waitForSecretSceneHost:0];
  }

  else
  {
    if (v5)
    {
      v7 = *(a1 + 64);
      v8 = *(*(a1 + 32) + 56);
      v9 = 67109376;
      v10 = v7;
      v11 = 1024;
      v12 = v8;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[coordinator] S33KR3T gen:%d host retry usurped (current gen:%d)", &v9, 0xEu);
    }
  }
}

- (id)_fixupFocusSceneRequest:(id)a3
{
  *&v32[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = [v5 pid];
  v7 = [MEMORY[0x277D22AC0] focusNothingChange];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    v9 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "arbiter: arbiter requested nothing", &v31, 2u);
    }

    v10 = [(BSCompoundAssertion *)self->_preventFocusForSceneAssertion context];
    v11 = [(_SBRecentlyUsedSceneIdentityCache *)self->_recentlyUsedScenes mostRecentFocusTargetForAnyProcessExcludingSceneIdentityTokens:v10];
    v12 = SBLogKeyboardFocus();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v31 = 138543362;
        *v32 = v11;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[coordinator] using MRU target %{public}@", &v31, 0xCu);
      }

      v14 = objc_alloc(MEMORY[0x277D22AC0]);
      v15 = [v11 sceneIdentityToken];
      v3 = [v14 initWithSceneIdentity:v15 pid:{objc_msgSend(v11, "pid")}];

LABEL_26:
      goto LABEL_27;
    }

    if (v13)
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[coordinator] no MRU scenes to fallback", &v31, 2u);
    }

LABEL_17:
    v19 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v5 sceneIdentity];
      v31 = 67109378;
      v32[0] = v6;
      LOWORD(v32[1]) = 2114;
      *(&v32[1] + 2) = v20;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[coordinator] failed to fixup arbiter requested pid %d / %{public}@", &v31, 0x12u);
    }

    v3 = [MEMORY[0x277D22AC0] focusNothingChange];
    goto LABEL_27;
  }

  v10 = [v5 sceneIdentity];
  v16 = SBLogKeyboardFocus();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v17)
    {
      v31 = 67109378;
      v32[0] = v6;
      LOWORD(v32[1]) = 2114;
      *(&v32[1] + 2) = v10;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "arbiter: arbiter requested pid %d / %{public}@", &v31, 0x12u);
    }

    v18 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 67109378;
      v32[0] = v6;
      LOWORD(v32[1]) = 2114;
      *(&v32[1] + 2) = v10;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[coordinator] using arbiter suggested pid %d + scene: %{public}@", &v31, 0x12u);
    }

    v3 = v5;
    goto LABEL_26;
  }

  if (v17)
  {
    v31 = 67109120;
    v32[0] = v6;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "arbiter: arbiter requested pid %d / nil scene", &v31, 8u);
  }

  v10 = [(BSCompoundAssertion *)self->_preventFocusForSceneAssertion context];
  v21 = [(_SBRecentlyUsedSceneIdentityCache *)self->_recentlyUsedScenes mostRecentFocusTargetForPID:v6 excludingSceneIdentityTokens:v10];
  if (v21)
  {
    v22 = v21;
    v23 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138543362;
      *v32 = v22;
      _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "[coordinator] using arbiter requested MRU target: %{public}@", &v31, 0xCu);
    }

    v24 = objc_alloc(MEMORY[0x277D22AC0]);
    v25 = [v22 sceneIdentityToken];
    v3 = [v24 initWithSceneIdentity:v25 pid:{objc_msgSend(v22, "pid")}];

    goto LABEL_26;
  }

  v27 = [(_SBRecentlyUsedSceneIdentityCache *)self->_recentlyUsedScenes mostRecentFocusTargetForAnyProcessExcludingSceneIdentityTokens:v10];
  v28 = SBLogKeyboardFocus();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v27)
  {
    if (v29)
    {
      v31 = 138543362;
      *v32 = v27;
      _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "[coordinator] using MRU target %{public}@", &v31, 0xCu);
    }

    v30 = objc_alloc(MEMORY[0x277D22AC0]);
    v28 = [v27 sceneIdentityToken];
    v3 = [v30 initWithSceneIdentity:v28 pid:{objc_msgSend(v27, "pid")}];
  }

  else if (v29)
  {
    LOWORD(v31) = 0;
    _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "[coordinator] uh oh... no MRU scenes!", &v31, 2u);
  }

  if (!v27)
  {
    goto LABEL_17;
  }

LABEL_27:

  return v3;
}

- (void)windowSceneDidConnect:(char *)a1 .cold.1(char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"We need a keyboard focus scene controller"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_5_0();
    v6 = NSStringFromClass(v5);
    v8 = 138544642;
    v9 = a1;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBKeyboardFocusCoordinator.m";
    v16 = 1024;
    v17 = 250;
    v18 = 2114;
    v19 = v4;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)windowSceneDidDisconnect:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v4 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = a1;
  v5 = [v4 stringWithFormat:@"no such scene <%@: %p>"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_10_9();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)bufferEventsForSpringBoardScene:(void *)a1 reason:(char *)a2 .cold.1(void *a1, char *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v12 = [a1 _sceneIdentifier];
  v4 = [v3 stringWithFormat:@"[coordinator] buffer events requested but we don't have a matching sceneController for its windowScene %@"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_10_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)bufferEventsForSpringBoardScene:(char *)a1 reason:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"reason", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)removeKeyboardFocusFromScene:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSceneClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)removeKeyboardFocusFromScene:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)userFocusRequestForScene:(char *)a1 reason:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSceneClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)userFocusRequestForScene:(char *)a1 reason:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)userFocusRequestForScene:(char *)a1 reason:completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)userFocusRequestForScene:(char *)a1 reason:completion:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)redirectFocusForReason:(int)a1 fromProcessIdentifier:(NSObject *)a2 fromSceneIdentityToken:toProcessIdentifier:toSceneIdentityToken:inContainingWindow:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Focus rule set with from pid %d and no token; PID-only rules are not valid", v2, 8u);
}

- (void)focusLockSpringBoardWindow:(void *)a1 forReason:(const char *)a2 .cold.1(void *a1, const char *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  objc_opt_class();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"reason", v5, v7];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_9_0();
    v15 = @"SBKeyboardFocusCoordinator.m";
    v16 = 1024;
    v17 = 516;
    v18 = v12;
    v19 = v8;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v13, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v14);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)focusLockSpringBoardWindow:(char *)a1 forReason:.cold.2(char *a1)
{
  v2 = MEMORY[0x277CCACA8];
  objc_opt_class();
  v3 = objc_opt_class();
  v12 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_10_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"reason", v12, v13);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)focusLockSpringBoardWindow:(uint64_t)a3 forReason:.cold.3(const char *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  OUTLINED_FUNCTION_6_14();
  v11 = a2;
  v12 = v8;
  v13 = @"SBKeyboardFocusCoordinator.m";
  v14 = 1024;
  v15 = 515;
  v16 = v8;
  v17 = a3;
  OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v9, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v10);
}

- (void)focusLockSpringBoardWindowScene:(void *)a1 forReason:(const char *)a2 .cold.1(void *a1, const char *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  objc_opt_class();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"reason", v5, v7];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_9_0();
    v15 = @"SBKeyboardFocusCoordinator.m";
    v16 = 1024;
    v17 = 528;
    v18 = v12;
    v19 = v8;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v13, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v14);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)focusLockSpringBoardWindowScene:(char *)a1 forReason:.cold.2(char *a1)
{
  v2 = MEMORY[0x277CCACA8];
  objc_opt_class();
  v3 = objc_opt_class();
  v12 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_10_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"reason", v12, v13);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)focusLockSpringBoardWindowScene:(uint64_t)a1 forReason:(char *)a2 .cold.3(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[coordinator] request focus lock for SB window scene %@ but we don't have a matching sceneController for its windowScene"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_5_0();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)requestKeyboardFocusOverrideSceneIdentityTokenStringRepresentation:(void *)a1 forAccessibilityReason:(const char *)a2 .cold.1(void *a1, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  objc_opt_class();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"tokenString", v5, v7];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_9_0();
    v16 = @"SBKeyboardFocusCoordinator.m";
    v17 = 1024;
    v18 = 569;
    v19 = v12;
    v20 = v8;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v13, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v15);
  }

  v14 = v8;
  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)requestKeyboardFocusOverrideSceneIdentityTokenStringRepresentation:(uint64_t)a3 forAccessibilityReason:.cold.3(const char *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  OUTLINED_FUNCTION_6_14();
  v11 = a2;
  v12 = v8;
  v13 = @"SBKeyboardFocusCoordinator.m";
  v14 = 1024;
  v15 = 569;
  v16 = v8;
  v17 = a3;
  OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v9, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v10);
}

- (void)_sbWindowSceneHostingFBSSceneIdentityToken:(void *)a1 ultimateHostTarget:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 stringRepresentation];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Couldn't find the SB window scene hosting scene identity token: %{public}@", v4, 0xCu);
}

@end