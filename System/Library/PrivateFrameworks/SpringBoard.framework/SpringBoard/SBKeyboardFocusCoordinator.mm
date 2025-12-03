@interface SBKeyboardFocusCoordinator
+ (id)sharedInstance;
- (BOOL)_handleSceneFocusChange_denyRequestForOverlayUI:(id)i;
- (BOOL)_isAcceptableVisibilityBasedHostScene:(id)scene forSBWindowScene:(id)windowScene;
- (BOOL)_setEnforcedKeyboardFocusPolicy:(id)policy;
- (BOOL)_talkToKeyboardArbiterAdvisor:(id)advisor;
- (BOOL)eventDeferringManagerSystemShellBehavior:(id)behavior shouldSuppressRemoteRuleForOwningElement:(id)element inEnvironment:(id)environment;
- (BOOL)shouldAllowInteractionTrackingKeyboardFocusUpdateForWindow:(id)window;
- (BOOL)shouldKeyboardBeWindowSizedForHostWithIdentity:(id)identity;
- (BOOL)shouldPreventFocusForSceneWithIdentityToken:(id)token;
- (SBKeyboardFocusCoordinator)initWithPolicyEnforcer:(id)enforcer sceneControllerFactory:(id)factory coalitionFactory:(id)coalitionFactory sceneProvider:(id)provider uiKitDependencyProvider:(id)dependencyProvider visibilityGraphNavigator:(id)navigator;
- (id)_fixupFocusSceneRequest:(id)request;
- (id)_handleSceneFocusChange_reasonToAvoidFocusingAppSceneIdentityToken:(id)token;
- (id)_init;
- (id)_sbWindowSceneHostingFBSSceneIdentityToken:(id)token ultimateHostTarget:(id *)target;
- (id)_sbWindowSceneHostingFBSSceneIdentityTokenString:(id)string;
- (id)_sceneControllerForSBWindowScene:(id)scene;
- (id)_sceneControllerForScene:(id)scene;
- (id)_sceneControllerHostingSceneIdentityToken:(id)token ultimateHostTarget:(id *)target isSecretScene:(BOOL *)scene;
- (id)accessibilityOverrideTarget;
- (id)addKeyboardFocusObserver:(id)observer;
- (id)additionalEnvironmentDeferralsForFocusTarget:(id)target;
- (id)appFocusRedirectionForProposedTarget:(id)target;
- (id)bufferEventsForSpringBoardScene:(id)scene reason:(id)reason;
- (id)deferAdditionalEnvironments:(id)environments whenTargetHasKeyboardFocus:(id)focus;
- (id)focusLockSpringBoardWindow:(id)window forReason:(id)reason;
- (id)focusLockSpringBoardWindowScene:(id)scene forAccessibilityReason:(id)reason;
- (id)focusLockSpringBoardWindowScene:(id)scene forReason:(id)reason;
- (id)preventFocusForSceneWithIdentityToken:(id)token reason:(id)reason;
- (id)redirectFocusForReason:(id)reason fromProcessIdentifier:(int)identifier fromSceneIdentityToken:(id)token toProcessIdentifier:(int)processIdentifier toSceneIdentityToken:(id)identityToken inContainingWindow:(id)window;
- (id)redirectSpringBoardLockFocusForReason:(id)reason toProcessidentifier:(int)processidentifier toSceneIdentityToken:(id)token;
- (id)requestKeyboardFocusOverrideSceneIdentityTokenStringRepresentation:(id)representation forAccessibilityReason:(id)reason;
- (id)suppressKeyboardFocusEvaluationForReason:(id)reason;
- (int)presentingKeyboardProcessIdentifier;
- (int64_t)eventDeferringManagerSystemShellBehavior:(id)behavior isRemoteRuleOwningElement:(id)element andContainingWindow:(id)window visibleComparedToLocalTargetWindow:(id)targetWindow;
- (void)_callUserFocusSceneRequestCompletionBlocksIfNeeded;
- (void)_handleFocusSceneChange:(id)change fromArbiter:(id)arbiter request:(id)request waitForSecretSceneHost:(BOOL)host;
- (void)_notifyObserversExternalSceneDidAcquireFocus:(id)focus;
- (void)_notifyObserversFocusedWindowSceneChangedFrom:(id)from to:(id)to;
- (void)_removeSceneFromRecents:(id)recents reason:(id)reason;
- (void)_setNeedsArbitrationForKeyWindowNotification;
- (void)_updateCoalitionForSceneControllersAddedOrRemoved;
- (void)appendDescriptionToStream:(id)stream;
- (void)keyboardArbiterAdvisor:(id)advisor request:(id)request sceneFocusChange:(id)change;
- (void)keyboardFocusCoalitionDidUpdateEnforcedPolicy:(id)policy;
- (void)multiDisplayUserInteractionCoordinator:(id)coordinator updatedActiveWindowScene:(id)scene;
- (void)removeKeyboardFocusFromScene:(id)scene;
- (void)requestArbitrationForSBWindowScene:(id)scene forReason:(id)reason;
- (void)sceneManager:(id)manager didAddExternalForegroundApplicationSceneHandle:(id)handle;
- (void)sceneManager:(id)manager didRemoveExternalForegroundApplicationSceneHandle:(id)handle;
- (void)sceneManager:(id)manager willRemoveExternalForegroundApplicationSceneHandle:(id)handle withReason:(int64_t)reason;
- (void)userFocusRequestForScene:(id)scene reason:(id)reason completion:(id)completion;
- (void)windowSceneDidConnect:(id)connect;
- (void)windowSceneDidDisconnect:(id)disconnect;
@end

@implementation SBKeyboardFocusCoordinator

- (void)_setNeedsArbitrationForKeyWindowNotification
{
  v3 = +[SBKeyboardFocusArbitrationReason keyWindowNotification];
  [(SBKeyboardFocusCoordinator *)self _setNeedsArbitrationForReason:v3];
}

- (id)accessibilityOverrideTarget
{
  orderedContext = [(BSCompoundAssertion *)self->_accessibilityKeyboardFocusTargetOverrides orderedContext];
  lastObject = [orderedContext lastObject];

  return lastObject;
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
  block[4] = self;
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

- (SBKeyboardFocusCoordinator)initWithPolicyEnforcer:(id)enforcer sceneControllerFactory:(id)factory coalitionFactory:(id)coalitionFactory sceneProvider:(id)provider uiKitDependencyProvider:(id)dependencyProvider visibilityGraphNavigator:(id)navigator
{
  enforcerCopy = enforcer;
  factoryCopy = factory;
  coalitionFactoryCopy = coalitionFactory;
  providerCopy = provider;
  dependencyProviderCopy = dependencyProvider;
  navigatorCopy = navigator;
  v45.receiver = self;
  v45.super_class = SBKeyboardFocusCoordinator;
  v19 = [(SBKeyboardFocusCoordinator *)&v45 init];
  if (v19)
  {
    mEMORY[0x277CF0668] = [MEMORY[0x277CF0668] sharedInstance];
    deliveryManager = v19->_deliveryManager;
    v19->_deliveryManager = mEMORY[0x277CF0668];

    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    sceneControllers = v19->_sceneControllers;
    v19->_sceneControllers = v22;

    objc_storeStrong(&v19->_policyEnforcer, enforcer);
    objc_storeStrong(&v19->_keyboardFocusSceneControllerFactory, factory);
    objc_storeStrong(&v19->_keyboardFocusCoalitionFactory, coalitionFactory);
    objc_storeStrong(&v19->_sceneProvider, provider);
    keyboardArbiterManager = [dependencyProviderCopy keyboardArbiterManager];
    keyboardArbiterManager = v19->_keyboardArbiterManager;
    v19->_keyboardArbiterManager = keyboardArbiterManager;

    objc_storeStrong(&v19->_visibilityGraphNavigator, navigator);
    v26 = objc_alloc_init(_SBRecentlyUsedSceneIdentityCache);
    recentlyUsedScenes = v19->_recentlyUsedScenes;
    v19->_recentlyUsedScenes = v26;

    v28 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"keyboardFocusObservers"];
    observers = v19->_observers;
    v19->_observers = v28;

    v30 = v19->_observers;
    v31 = SBLogKeyboardFocus();
    [(BSCompoundAssertion *)v30 setLog:v31];

    [dependencyProviderCopy setSystemShellBehaviorDelegate:v19];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v19 selector:sel__setNeedsArbitrationForKeyWindowNotification name:*MEMORY[0x277D77280] object:0];

    multiDisplayUserInteractionCoordinator = [SBApp multiDisplayUserInteractionCoordinator];
    [multiDisplayUserInteractionCoordinator addActiveDisplayWindowSceneObserver:v19];

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __156__SBKeyboardFocusCoordinator_initWithPolicyEnforcer_sceneControllerFactory_coalitionFactory_sceneProvider_uiKitDependencyProvider_visibilityGraphNavigator___block_invoke;
    v42[3] = &unk_2783A92D8;
    v43 = v19;
    v34 = dependencyProviderCopy;
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

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__SBKeyboardFocusCoordinator_appendDescriptionToStream___block_invoke;
  v10[3] = &unk_2783A92D8;
  v5 = streamCopy;
  v11 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v10];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SBKeyboardFocusCoordinator_appendDescriptionToStream___block_invoke_2;
  v7[3] = &unk_2783A92D8;
  v8 = v5;
  selfCopy2 = self;
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

- (void)windowSceneDidConnect:(id)connect
{
  v11 = *MEMORY[0x277D85DE8];
  connectCopy = connect;
  v6 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = connectCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[coordinator] scene connected: %@", &v9, 0xCu);
  }

  v7 = [(_SBKeyboardFocusSceneControllerFactory *)self->_keyboardFocusSceneControllerFactory newKeyboardFocusSceneControllerForScene:connectCopy deliveryManager:self->_deliveryManager sceneProvider:self->_sceneProvider];
  [v7 setDelegate:self];
  if (!v7)
  {
    [(SBKeyboardFocusCoordinator *)a2 windowSceneDidConnect:?];
  }

  [(NSMutableSet *)self->_sceneControllers addObject:v7];
  sceneManager = [connectCopy sceneManager];
  [sceneManager addObserver:self];

  [(SBKeyboardFocusCoordinator *)self _updateCoalitionForSceneControllersAddedOrRemoved];
}

- (void)windowSceneDidDisconnect:(id)disconnect
{
  v23 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  v6 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = disconnectCopy;
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
    sbWindowScene = [v12 sbWindowScene];
    v14 = [disconnectCopy isEqual:sbWindowScene];

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
    [(SBKeyboardFocusCoordinator *)disconnectCopy windowSceneDidDisconnect:a2];
  }

  [v15 invalidate];
  [(NSMutableSet *)self->_sceneControllers removeObject:v15];
  [(SBKeyboardFocusCoordinator *)self _updateCoalitionForSceneControllersAddedOrRemoved];
}

- (id)addKeyboardFocusObserver:(id)observer
{
  observers = self->_observers;
  v4 = MEMORY[0x277CCACA8];
  observerCopy = observer;
  observerCopy = [v4 stringWithFormat:@"%@-%p", objc_opt_class(), observerCopy];
  v7 = [(BSCompoundAssertion *)observers acquireForReason:observerCopy withContext:observerCopy];

  return v7;
}

- (id)bufferEventsForSpringBoardScene:(id)scene reason:(id)reason
{
  sceneCopy = scene;
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [SBKeyboardFocusCoordinator bufferEventsForSpringBoardScene:a2 reason:?];
  }

  v9 = reasonCopy;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (sceneCopy)
  {
    v10 = [(SBKeyboardFocusCoordinator *)self _sceneControllerForScene:sceneCopy];
    if (!v10)
    {
      [SBKeyboardFocusCoordinator bufferEventsForSpringBoardScene:sceneCopy reason:a2];
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

- (id)deferAdditionalEnvironments:(id)environments whenTargetHasKeyboardFocus:(id)focus
{
  v34 = *MEMORY[0x277D85DE8];
  environmentsCopy = environments;
  focusCopy = focus;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  focusServiceEventDeferralRequests = self->_focusServiceEventDeferralRequests;
  if (!focusServiceEventDeferralRequests)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = self->_focusServiceEventDeferralRequests;
    self->_focusServiceEventDeferralRequests = v9;

    focusServiceEventDeferralRequests = self->_focusServiceEventDeferralRequests;
  }

  [(NSMutableDictionary *)focusServiceEventDeferralRequests setObject:environmentsCopy forKey:focusCopy];
  objc_initWeak(&location, self);
  v11 = objc_alloc(MEMORY[0x277CF0CE8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __85__SBKeyboardFocusCoordinator_deferAdditionalEnvironments_whenTargetHasKeyboardFocus___block_invoke;
  v25 = &unk_2783C5318;
  objc_copyWeak(&v28, &location);
  v14 = environmentsCopy;
  v26 = v14;
  v15 = focusCopy;
  v27 = v15;
  v16 = [v11 initWithIdentifier:uUIDString forReason:@"focus service requesting deferral" invalidationBlock:&v22];

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
  enforcedPolicy = [(SBKeyboardFocusCoalition *)self->_coalition enforcedPolicy];
  [(SBKeyboardFocusPolicyEnforcer *)policyEnforcer enforce:enforcedPolicy];

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

- (void)removeKeyboardFocusFromScene:(id)scene
{
  v30 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = sceneCopy;
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
    identityToken = [(FBScene *)overlayUISceneRequestingFocus identityToken];
    identityToken2 = [v6 identityToken];
    v12 = [identityToken isEqual:identityToken2];

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

- (void)userFocusRequestForScene:(id)scene reason:(id)reason completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  reasonCopy = reason;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v13 = sceneCopy;
  NSClassFromString(&cfstr_Fbscene.isa);
  if (!v13)
  {
    [SBKeyboardFocusCoordinator userFocusRequestForScene:a2 reason:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBKeyboardFocusCoordinator userFocusRequestForScene:a2 reason:? completion:?];
  }

  v14 = reasonCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v14)
  {
    [SBKeyboardFocusCoordinator userFocusRequestForScene:a2 reason:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBKeyboardFocusCoordinator userFocusRequestForScene:a2 reason:? completion:?];
  }

  clientHandle = [v13 clientHandle];
  processHandle = [clientHandle processHandle];
  v17 = [processHandle pid];

  if (v17 <= 0)
  {
    identityToken = SBLogKeyboardFocus();
    if (os_log_type_enabled(identityToken, OS_LOG_TYPE_ERROR))
    {
      [SBKeyboardFocusCoordinator userFocusRequestForScene:reason:completion:];
    }
  }

  else
  {
    identityToken = [v13 identityToken];
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

      objc_storeStrong(&self->_overlayUISceneRequestingFocus, scene);
    }

    [(UIKeyboardArbiterManager *)self->_keyboardArbiterManager userSelectedProcessIdentifier:v17 withSceneIdentity:identityToken onCompletion:&__block_literal_global_461];
    if (completionCopy)
    {
      if (((-[SBKeyboardFocusPolicy advicePolicy](self->_enforcedPolicy, "advicePolicy") == 0) & ~v21) != 0 || (-[SBKeyboardFocusPolicy keyboardFocusTarget](self->_enforcedPolicy, "keyboardFocusTarget"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v19 isEqual:v23], v23, v24))
      {
        completionCopy[2](completionCopy, 1);
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

        v28 = MEMORY[0x223D6F7F0](completionCopy);
        [(NSMutableArray *)userFocusRequestRuleUpdateCompletionHandlers addObject:v28];
      }
    }
  }
}

- (id)suppressKeyboardFocusEvaluationForReason:(id)reason
{
  reasonCopy = reason;
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

  v11 = [(BSCompoundAssertion *)suppressKeyboardFocusEvaluationAssertion acquireForReason:reasonCopy];
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

- (id)preventFocusForSceneWithIdentityToken:(id)token reason:(id)reason
{
  tokenCopy = token;
  reasonCopy = reason;
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

  v14 = [(BSCompoundAssertion *)preventFocusForSceneAssertion acquireForReason:reasonCopy withContext:tokenCopy];

  return v14;
}

void __75__SBKeyboardFocusCoordinator_preventFocusForSceneWithIdentityToken_reason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[SBKeyboardFocusArbitrationReason preventFocusForPID];
  [WeakRetained _setNeedsArbitrationForReason:v1];
}

- (id)redirectFocusForReason:(id)reason fromProcessIdentifier:(int)identifier fromSceneIdentityToken:(id)token toProcessIdentifier:(int)processIdentifier toSceneIdentityToken:(id)identityToken inContainingWindow:(id)window
{
  v10 = *&processIdentifier;
  v12 = *&identifier;
  reasonCopy = reason;
  tokenCopy = token;
  identityTokenCopy = identityToken;
  windowCopy = window;
  if (!tokenCopy)
  {
    v18 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SBKeyboardFocusCoordinator redirectFocusForReason:v12 fromProcessIdentifier:v18 fromSceneIdentityToken:? toProcessIdentifier:? toSceneIdentityToken:? inContainingWindow:?];
    }
  }

  v19 = objc_alloc_init(SBKeyboardFocusRedirection);
  [(SBKeyboardFocusRedirection *)v19 setReason:reasonCopy];
  [(SBKeyboardFocusRedirection *)v19 setFromProcessIdentifier:v12];
  [(SBKeyboardFocusRedirection *)v19 setFromToken:tokenCopy];
  [(SBKeyboardFocusRedirection *)v19 setToProcessIdentifier:v10];
  [(SBKeyboardFocusRedirection *)v19 setToToken:identityTokenCopy];
  [(SBKeyboardFocusRedirection *)v19 setContainingWindow:windowCopy];
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

  v26 = [(BSCompoundAssertion *)appFocusRedirections acquireForReason:reasonCopy withContext:v19];

  return v26;
}

void __158__SBKeyboardFocusCoordinator_redirectFocusForReason_fromProcessIdentifier_fromSceneIdentityToken_toProcessIdentifier_toSceneIdentityToken_inContainingWindow___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[SBKeyboardFocusArbitrationReason appFocusRedirections];
  [WeakRetained _setNeedsArbitrationForReason:v1];
}

- (id)redirectSpringBoardLockFocusForReason:(id)reason toProcessidentifier:(int)processidentifier toSceneIdentityToken:(id)token
{
  v6 = *&processidentifier;
  v32 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  tokenCopy = token;
  if (tokenCopy)
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

          v17 = [*(*(&v25 + 1) + 8 * i) redirectSpringBoardLockFocusForReason:reasonCopy toProcessidentifier:v6 toSceneIdentityToken:tokenCopy];
          [v10 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    v18 = objc_alloc(MEMORY[0x277CF0CE8]);
    reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Coordinator:redirectSpringBoardLockFocusForReason: %@", reasonCopy];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __109__SBKeyboardFocusCoordinator_redirectSpringBoardLockFocusForReason_toProcessidentifier_toSceneIdentityToken___block_invoke;
    v23[3] = &unk_2783A8A98;
    v24 = v10;
    v20 = v10;
    v21 = [v18 initWithIdentifier:reasonCopy forReason:reasonCopy invalidationBlock:v23];
  }

  else
  {
    v12 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = reasonCopy;
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

- (id)focusLockSpringBoardWindow:(id)window forReason:(id)reason
{
  v20 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  reasonCopy = reason;
  if (windowCopy)
  {
    windowScene = [windowCopy windowScene];
    v10 = [(SBKeyboardFocusCoordinator *)self _sceneControllerForScene:windowScene];
    if (!v10)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"[coordinator] request focus lock for SB window %@ but we don't have a matching sceneController for it's windowScene %@", windowCopy, windowScene];
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
    v12 = reasonCopy;
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

    v14 = [v11 focusLockSpringBoardWindow:windowCopy forReason:v13];
  }

  else
  {
    v15 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[coordinator] error: focusLockSpringBoardWindow for reason %{public}@ with nil window", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (id)focusLockSpringBoardWindowScene:(id)scene forReason:(id)reason
{
  sceneCopy = scene;
  reasonCopy = reason;
  if (sceneCopy)
  {
    v9 = [(SBKeyboardFocusCoordinator *)self _sceneControllerForScene:sceneCopy];
    if (!v9)
    {
      [SBKeyboardFocusCoordinator focusLockSpringBoardWindowScene:sceneCopy forReason:a2];
    }

    v10 = v9;
    v11 = reasonCopy;
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

- (void)requestArbitrationForSBWindowScene:(id)scene forReason:(id)reason
{
  reasonCopy = reason;
  if (scene)
  {
    v10 = reasonCopy;
    v7 = [(SBKeyboardFocusCoordinator *)self _sceneControllerForScene:scene];
    v8 = [v7 description];
    v9 = [v10 annotatedWithSourceName:v8];

    reasonCopy = v9;
  }

  v11 = reasonCopy;
  [(SBKeyboardFocusCoordinator *)self _setNeedsArbitrationForReason:reasonCopy];
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

- (BOOL)shouldAllowInteractionTrackingKeyboardFocusUpdateForWindow:(id)window
{
  windowCopy = window;
  windowScene = [windowCopy windowScene];
  v6 = [(SBKeyboardFocusCoordinator *)self _sceneControllerForScene:windowScene];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 shouldAllowInteractionTrackingKeyboardFocusUpdateForWindow:windowCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)focusLockSpringBoardWindowScene:(id)scene forAccessibilityReason:(id)reason
{
  sceneCopy = scene;
  v7 = [SBKeyboardFocusLockReason accessibility:reason];
  v8 = [(SBKeyboardFocusCoordinator *)self focusLockSpringBoardWindowScene:sceneCopy forReason:v7];

  return v8;
}

- (id)requestKeyboardFocusOverrideSceneIdentityTokenStringRepresentation:(id)representation forAccessibilityReason:(id)reason
{
  representationCopy = representation;
  reasonCopy = reason;
  v9 = representationCopy;
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
      v25 = reasonCopy;
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
    v20 = [(BSCompoundAssertion *)accessibilityKeyboardFocusTargetOverrides acquireForReason:reasonCopy withContext:v19];
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

- (id)_sceneControllerHostingSceneIdentityToken:(id)token ultimateHostTarget:(id *)target isSecretScene:(BOOL *)scene
{
  v32 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  *scene = 0;
  if (tokenCopy)
  {
    targetCopy = target;
    selfCopy = self;
    sceneCopy = scene;
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
          sbWindowScene = [v15 sbWindowScene];
          _FBSScene = [sbWindowScene _FBSScene];
          identityToken = [_FBSScene identityToken];
          v19 = [identityToken isEqual:tokenCopy];

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

    v20 = [(SBKeyboardFocusCoordinator *)selfCopy _sbWindowSceneHostingFBSSceneIdentityToken:tokenCopy ultimateHostTarget:targetCopy];
    if (v20)
    {
      v21 = *targetCopy != 0;
    }

    else
    {
      v21 = 1;
    }

    *sceneCopy = v21;
    v22 = [(SBKeyboardFocusCoordinator *)selfCopy _sceneControllerForSBWindowScene:v20];
LABEL_16:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)_isAcceptableVisibilityBasedHostScene:(id)scene forSBWindowScene:(id)windowScene
{
  v18 = *MEMORY[0x277D85DE8];
  windowSceneCopy = windowScene;
  identityToken = [scene identityToken];
  _FBSScene = [windowSceneCopy _FBSScene];

  identityToken2 = [_FBSScene identityToken];
  v10 = [identityToken2 isEqual:identityToken];

  if (v10 & 1) == 0 && ((-[SBKeyboardFocusSceneProviding anyConnectedSBWindowSceneContainsSceneIdentity:](self->_sceneProvider, "anyConnectedSBWindowSceneContainsSceneIdentity:", identityToken) & 1) != 0 || (-[SBKeyboardFocusSceneProviding isSystemUISceneIdentityToken:](self->_sceneProvider, "isSystemUISceneIdentityToken:", identityToken) & 1) != 0 || (externalSceneIdentities = self->_externalSceneIdentities, [identityToken stringRepresentation], v14 = objc_claimAutoreleasedReturnValue(), LOBYTE(externalSceneIdentities) = -[NSSet containsObject:](externalSceneIdentities, "containsObject:", v14), v14, (externalSceneIdentities)))
  {
    v12 = 1;
  }

  else
  {
    v11 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = identityToken;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "unacceptable host scene: %{public}@", &v16, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (id)_sbWindowSceneHostingFBSSceneIdentityToken:(id)token ultimateHostTarget:(id *)target
{
  v39 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v7 = tokenCopy;
  if (!tokenCopy)
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  stringRepresentation = [tokenCopy stringRepresentation];
  v9 = [(SBKeyboardFocusCoordinator *)self _sbWindowSceneHostingFBSSceneIdentityTokenString:stringRepresentation];

  if (!v9)
  {
    v10 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      stringRepresentation2 = [v7 stringRepresentation];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = stringRepresentation2;
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
    *target = v25[5];
    v15 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      _FBSScene = [v9 _FBSScene];
      identityToken = [_FBSScene identityToken];
      stringRepresentation3 = [identityToken stringRepresentation];
      v19 = stringRepresentation3;
      v20 = v25[5];
      if (!v20)
      {
        v20 = @"<none>";
      }

      *v30 = 138543618;
      v31 = stringRepresentation3;
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

- (id)_sbWindowSceneHostingFBSSceneIdentityTokenString:(id)string
{
  v36 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (stringCopy)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    windowSceneManager = [SBApp windowSceneManager];
    connectedWindowScenes = [windowSceneManager connectedWindowScenes];

    obj = connectedWindowScenes;
    v25 = [connectedWindowScenes countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          _FBSScene = [v7 _FBSScene];
          identityToken = [_FBSScene identityToken];
          stringRepresentation = [identityToken stringRepresentation];
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
          sceneManager = [v7 sceneManager];
          allScenes = [sceneManager allScenes];

          v14 = [allScenes countByEnumeratingWithState:&v26 objects:v34 count:16];
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
                objc_enumerationMutation(allScenes);
              }

              identityToken2 = [*(*(&v26 + 1) + 8 * v17) identityToken];
              stringRepresentation2 = [identityToken2 stringRepresentation];
              v20 = BSEqualObjects();

              if (v20)
              {
                break;
              }

              if (v15 == ++v17)
              {
                v15 = [allScenes countByEnumeratingWithState:&v26 objects:v34 count:16];
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

- (id)_sceneControllerForSBWindowScene:(id)scene
{
  v32 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
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
      if ([v10 controlsScene:sceneCopy])
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

    anyObject = v10;

    if (anyObject)
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

  keyboardFocusCoalitionAffinity = [sceneCopy keyboardFocusCoalitionAffinity];
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
      if (keyboardFocusCoalitionAffinity == [v19 coalitionAffinity])
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

    anyObject = v19;

    if (anyObject)
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

  anyObject = [(NSMutableSet *)self->_sceneControllers anyObject];
LABEL_26:

  return anyObject;
}

- (id)_sceneControllerForScene:(id)scene
{
  v16 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
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
        if ([v9 controlsScene:{sceneCopy, v11}])
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

- (BOOL)_setEnforcedKeyboardFocusPolicy:(id)policy
{
  v12 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  p_enforcedPolicy = &self->_enforcedPolicy;
  v7 = BSEqualObjects();
  if ((v7 & 1) == 0)
  {
    objc_storeStrong(p_enforcedPolicy, policy);
    v8 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = policyCopy;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[coordinator] new enforced policy: %{public}@ ", &v10, 0xCu);
    }
  }

  return v7 ^ 1;
}

- (void)_notifyObserversExternalSceneDidAcquireFocus:(id)focus
{
  v15 = *MEMORY[0x277D85DE8];
  focusCopy = focus;
  if (focusCopy)
  {
    context = [(BSCompoundAssertion *)self->_observers context];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [context countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(context);
          }

          [*(*(&v10 + 1) + 8 * v9++) keyboardFocusController:self externalSceneDidAcquireFocus:focusCopy];
        }

        while (v7 != v9);
        v7 = [context countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_notifyObserversFocusedWindowSceneChangedFrom:(id)from to:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  context = [(BSCompoundAssertion *)self->_observers context];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [context countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(context);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 keyboardFocusController:self didUpdateWindowSceneWithFocusFrom:fromCopy to:toCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [context countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)_talkToKeyboardArbiterAdvisor:(id)advisor
{
  advisorCopy = advisor;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = atomic_load(&self->_arbiterDidInitialize);
  if (v5)
  {
    advisorCopy[2](advisorCopy, self->_keyboardArbiterAdvisor);
  }

  return v5 & 1;
}

- (void)sceneManager:(id)manager didAddExternalForegroundApplicationSceneHandle:(id)handle
{
  v18 = *MEMORY[0x277D85DE8];
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
      recentlyUsedScenes = self->_recentlyUsedScenes;
      v13[0] = 67109634;
      v13[1] = v10;
      v14 = 2114;
      v15 = identityToken;
      v16 = 2114;
      v17 = recentlyUsedScenes;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[coordinator] didAddExternalForegroundApplicationSceneHandle pid:%d scene:%{public}@ now:%{public}@", v13, 0x1Cu);
    }
  }
}

- (void)sceneManager:(id)manager willRemoveExternalForegroundApplicationSceneHandle:(id)handle withReason:(int64_t)reason
{
  handleCopy = handle;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (!reason)
  {
    scene = [handleCopy scene];
    [(SBKeyboardFocusCoordinator *)self _removeSceneFromRecents:scene reason:@"willRemoveExternalForegroundApplicationSceneHandle"];
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
    [(SBKeyboardFocusCoordinator *)self _removeSceneFromRecents:scene2 reason:@"didRemoveExternalForegroundApplicationSceneHandle"];
  }
}

- (void)_removeSceneFromRecents:(id)recents reason:(id)reason
{
  v22 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  recentsCopy = recents;
  identityToken = [recentsCopy identityToken];
  clientHandle = [recentsCopy clientHandle];

  processHandle = [clientHandle processHandle];
  v11 = [processHandle pid];

  [(_SBRecentlyUsedSceneIdentityCache *)self->_recentlyUsedScenes removeSceneIdentityToken:identityToken forPID:v11];
  v12 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    recentlyUsedScenes = self->_recentlyUsedScenes;
    v14 = 138413058;
    v15 = reasonCopy;
    v16 = 1024;
    v17 = v11;
    v18 = 2114;
    v19 = identityToken;
    v20 = 2114;
    v21 = recentlyUsedScenes;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[coordinator] _removeSceneFromRecents %@ pid:%d scene:%{public}@ now:%{public}@", &v14, 0x26u);
  }
}

- (void)multiDisplayUserInteractionCoordinator:(id)coordinator updatedActiveWindowScene:(id)scene
{
  v4 = [(SBKeyboardFocusCoordinator *)self _sceneControllerForSBWindowScene:scene];
  [v4 displayDidBecomeActive];
}

- (id)appFocusRedirectionForProposedTarget:(id)target
{
  v22 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  orderedContext = [(BSCompoundAssertion *)self->_appFocusRedirections orderedContext];
  v6 = [orderedContext countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(orderedContext);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        fromProcessIdentifier = [v9 fromProcessIdentifier];
        if ([targetCopy pid] == fromProcessIdentifier)
        {
          fromToken = [v9 fromToken];
          sceneIdentityToken = [targetCopy sceneIdentityToken];
          if (sceneIdentityToken)
          {
            v13 = sceneIdentityToken;
            sceneIdentityToken2 = [targetCopy sceneIdentityToken];
            v15 = [sceneIdentityToken2 isEqual:fromToken];

            if (v15)
            {
              v6 = v9;

              goto LABEL_14;
            }
          }
        }
      }

      v6 = [orderedContext countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (BOOL)shouldPreventFocusForSceneWithIdentityToken:(id)token
{
  preventFocusForSceneAssertion = self->_preventFocusForSceneAssertion;
  tokenCopy = token;
  context = [(BSCompoundAssertion *)preventFocusForSceneAssertion context];
  v6 = [context containsObject:tokenCopy];

  return v6;
}

- (void)keyboardFocusCoalitionDidUpdateEnforcedPolicy:(id)policy
{
  v38 = *MEMORY[0x277D85DE8];
  enforcedPolicy = [policy enforcedPolicy];
  [(SBKeyboardFocusPolicyEnforcer *)self->_policyEnforcer enforce:enforcedPolicy];
  sbWindowSceneAncestor = [(SBKeyboardFocusPolicy *)self->_enforcedPolicy sbWindowSceneAncestor];
  sbWindowSceneAncestor2 = [enforcedPolicy sbWindowSceneAncestor];
  v7 = [(SBKeyboardFocusCoordinator *)self _setEnforcedKeyboardFocusPolicy:enforcedPolicy];
  if (![(SBKeyboardFocusCoordinator *)self isHandlingKeyboardArbiterSuggestion])
  {
    keyboardFocusTarget = [(SBKeyboardFocusPolicy *)self->_enforcedPolicy keyboardFocusTarget];
    v9 = [keyboardFocusTarget pid];
    v10 = getpid();

    if (v9 != v10 || [enforcedPolicy advicePolicy])
    {
      keyboardFocusTarget2 = [(SBKeyboardFocusPolicy *)self->_enforcedPolicy keyboardFocusTarget];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __76__SBKeyboardFocusCoordinator_keyboardFocusCoalitionDidUpdateEnforcedPolicy___block_invoke;
      v35[3] = &unk_2783C5390;
      v36 = keyboardFocusTarget2;
      v12 = keyboardFocusTarget2;
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
    v30 = sbWindowSceneAncestor2;
    v16 = sbWindowSceneAncestor;
    v17 = *v32;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v13);
        }

        sbWindowSceneFocusTarget = [*(*(&v31 + 1) + 8 * i) sbWindowSceneFocusTarget];
        keyboardFocusTarget3 = [(SBKeyboardFocusPolicy *)self->_enforcedPolicy keyboardFocusTarget];
        v21 = [sbWindowSceneFocusTarget isEqual:keyboardFocusTarget3];

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
    sbWindowSceneAncestor = v16;
    sbWindowSceneAncestor2 = v30;
    v7 = v29;
  }

  else
  {
    v22 = 0;
  }

  if (v7)
  {
    windowSceneWithFocus = [(SBKeyboardFocusCoordinator *)self windowSceneWithFocus];
    sceneProvider = self->_sceneProvider;
    keyboardFocusTarget4 = [enforcedPolicy keyboardFocusTarget];
    v26 = [(SBKeyboardFocusSceneProviding *)sceneProvider sceneForFocusTarget:keyboardFocusTarget4];

    if (v22)
    {
      v27 = windowSceneWithFocus;
    }

    else
    {
      v27 = v26;
    }

    objc_storeStrong(&self->_sceneWithFocusIncludingSpringBoard, v27);
    if ([enforcedPolicy advicePolicy])
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
  if (sbWindowSceneAncestor != sbWindowSceneAncestor2)
  {
    [(SBKeyboardFocusCoordinator *)self _notifyObserversFocusedWindowSceneChangedFrom:sbWindowSceneAncestor to:sbWindowSceneAncestor2];
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

- (BOOL)eventDeferringManagerSystemShellBehavior:(id)behavior shouldSuppressRemoteRuleForOwningElement:(id)element inEnvironment:(id)environment
{
  v33 = *MEMORY[0x277D85DE8];
  behaviorCopy = behavior;
  elementCopy = element;
  environmentCopy = environment;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  keyboardFocusEnvironment = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
  v12 = [environmentCopy isEqual:keyboardFocusEnvironment];

  if (v12)
  {
    eventDeferringManager = [behaviorCopy eventDeferringManager];
    windowHostingScene = [eventDeferringManager windowHostingScene];
    sbWindowSceneAncestor = [(SBKeyboardFocusPolicy *)self->_enforcedPolicy sbWindowSceneAncestor];
    v16 = [windowHostingScene isEqual:sbWindowSceneAncestor];

    if (v16)
    {
      v17 = objc_opt_class();
      v18 = elementCopy;
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
        context = [(BSCompoundAssertion *)self->_appFocusRedirections context];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __126__SBKeyboardFocusCoordinator_eventDeferringManagerSystemShellBehavior_shouldSuppressRemoteRuleForOwningElement_inEnvironment___block_invoke;
        v27[3] = &unk_2783C53B8;
        v28 = v21;
        v23 = [context bs_containsObjectPassingTest:v27];

        shouldSuppressRemoteDeferring = (v23 & 1) == 0 && [(SBKeyboardFocusPolicy *)self->_enforcedPolicy shouldSuppressRemoteDeferring];
      }

      else
      {
        shouldSuppressRemoteDeferring = [(SBKeyboardFocusPolicy *)self->_enforcedPolicy shouldSuppressRemoteDeferring];
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  shouldSuppressRemoteDeferring = 0;
LABEL_17:
  v24 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    interfaceElementCategory = [elementCopy interfaceElementCategory];
    *buf = 67109376;
    v30 = shouldSuppressRemoteDeferring;
    v31 = 1024;
    v32 = interfaceElementCategory;
    _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "[coordinator] shouldSuppressRemoteRuleForOwningElement: %{BOOL}u element: %d", buf, 0xEu);
  }

  return shouldSuppressRemoteDeferring;
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

- (int64_t)eventDeferringManagerSystemShellBehavior:(id)behavior isRemoteRuleOwningElement:(id)element andContainingWindow:(id)window visibleComparedToLocalTargetWindow:(id)targetWindow
{
  v36 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  windowCopy = window;
  targetWindowCopy = targetWindow;
  behaviorCopy = behavior;
  v14 = objc_opt_class();
  v15 = elementCopy;
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

  eventDeferringManager = [behaviorCopy eventDeferringManager];

  windowHostingScene = [eventDeferringManager windowHostingScene];
  sbWindowSceneAncestor = [(SBKeyboardFocusPolicy *)self->_enforcedPolicy sbWindowSceneAncestor];
  v21 = [windowHostingScene isEqual:sbWindowSceneAncestor];

  v22 = 0;
  if (v21 && v17)
  {
    context = [(BSCompoundAssertion *)self->_appFocusRedirections context];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __152__SBKeyboardFocusCoordinator_eventDeferringManagerSystemShellBehavior_isRemoteRuleOwningElement_andContainingWindow_visibleComparedToLocalTargetWindow___block_invoke;
    v28[3] = &unk_2783C53B8;
    v29 = v17;
    v24 = [context bs_firstObjectPassingTest:v28];

    if (v24)
    {
      containingWindow = [v24 containingWindow];
      [containingWindow windowLevel];
      [targetWindowCopy windowLevel];
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
    v33 = windowCopy;
    v34 = 2114;
    v35 = targetWindowCopy;
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

- (id)additionalEnvironmentDeferralsForFocusTarget:(id)target
{
  if (target)
  {
    v4 = [(NSMutableDictionary *)self->_focusServiceEventDeferralRequests objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldKeyboardBeWindowSizedForHostWithIdentity:(id)identity
{
  identityCopy = identity;
  BSDispatchQueueAssertNotMain();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SBKeyboardFocusCoordinator_shouldKeyboardBeWindowSizedForHostWithIdentity___block_invoke;
  block[3] = &unk_2783AB258;
  v8 = identityCopy;
  v9 = &v10;
  block[4] = self;
  v5 = identityCopy;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  LOBYTE(identityCopy) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return identityCopy;
}

void __77__SBKeyboardFocusCoordinator_shouldKeyboardBeWindowSizedForHostWithIdentity___block_invoke(void *a1)
{
  v4 = [*(a1[4] + 200) enforcedPolicy];
  v2 = [v4 sbWindowSceneAncestor];
  v3 = [v2 medusaHostedKeyboardWindowController];
  *(*(a1[6] + 8) + 24) = [v3 shouldKeyboardBeWindowSizedForHostWithIdentity:a1[5]];
}

- (void)keyboardArbiterAdvisor:(id)advisor request:(id)request sceneFocusChange:(id)change
{
  v28 = *MEMORY[0x277D85DE8];
  advisorCopy = advisor;
  requestCopy = request;
  changeCopy = change;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(SBKeyboardFocusCoordinator *)self _handleFocusSceneChange:changeCopy fromArbiter:advisorCopy request:requestCopy waitForSecretSceneHost:1];
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
    keyboardFocusEnvironment = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
    [v13 setEnvironment:keyboardFocusEnvironment];

    v15 = [(BKSHIDEventDeliveryManager *)self->_deliveryManager bufferEventsMatchingPredicate:v13 withReason:@"background keyboard arbiter request"];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__SBKeyboardFocusCoordinator_keyboardArbiterAdvisor_request_sceneFocusChange___block_invoke;
    block[3] = &unk_2783C53E0;
    block[4] = self;
    v18 = changeCopy;
    v19 = advisorCopy;
    v20 = requestCopy;
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

- (id)_handleSceneFocusChange_reasonToAvoidFocusingAppSceneIdentityToken:(id)token
{
  v12 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v5 = [(SBKeyboardFocusSceneProviding *)self->_sceneProvider deviceApplicationSceneHandleForSceneIdentity:tokenCopy];
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
      v11 = tokenCopy;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[coordinator] not a known app scene %{public}@", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_handleSceneFocusChange_denyRequestForOverlayUI:(id)i
{
  v12 = *MEMORY[0x277D85DE8];
  iCopy = i;
  v5 = [(SBKeyboardFocusSceneProviding *)self->_sceneProvider sceneForFocusTarget:iCopy];
  if ([(SBKeyboardFocusSceneProviding *)self->_sceneProvider isOverlayUIScene:v5])
  {
    overlayUISceneRequestingFocus = self->_overlayUISceneRequestingFocus;
    if (!overlayUISceneRequestingFocus || ([(FBScene *)overlayUISceneRequestingFocus isEqual:v5]& 1) == 0)
    {
      self = SBLogKeyboardFocus();
      if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = iCopy;
        v8 = "[coordinator] denying request to focus OverlayUI target %{public}@ because OverlayUI hasn't requested focus!";
        goto LABEL_9;
      }

LABEL_10:

      LOBYTE(self) = 1;
      goto LABEL_11;
    }
  }

  identityToken = [v5 identityToken];
  LODWORD(self) = [(SBKeyboardFocusCoordinator *)self shouldPreventFocusForSceneWithIdentityToken:identityToken];

  if (self)
  {
    self = SBLogKeyboardFocus();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = iCopy;
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

- (void)_handleFocusSceneChange:(id)change fromArbiter:(id)arbiter request:(id)request waitForSecretSceneHost:(BOOL)host
{
  hostCopy = host;
  *&v65[5] = *MEMORY[0x277D85DE8];
  changeCopy = change;
  arbiterCopy = arbiter;
  requestCopy = request;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  ++self->_handleFocusChangeGenerationCount;
  v13 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    handleFocusChangeGenerationCount = self->_handleFocusChangeGenerationCount;
    v15 = [changeCopy pid];
    sceneIdentity = [changeCopy sceneIdentity];
    *buf = 67109634;
    *v64 = handleFocusChangeGenerationCount;
    *&v64[4] = 1024;
    *&v64[6] = v15;
    v65[0] = 2114;
    *&v65[1] = sceneIdentity;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[coordinator] gen:%d handling new keyboard arbiter request pid: %d sceneIdentity: %{public}@", buf, 0x18u);
  }

  v17 = [(SBKeyboardFocusCoordinator *)self _fixupFocusSceneRequest:changeCopy];
  focusNothingChange = [MEMORY[0x277D22AC0] focusNothingChange];
  v19 = [v17 isEqual:focusNothingChange];

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    sceneIdentity2 = [v17 sceneIdentity];
    v20 = +[SBKeyboardFocusTarget targetForSceneIdentityToken:pid:](SBKeyboardFocusTarget, "targetForSceneIdentityToken:pid:", sceneIdentity2, [v17 pid]);

    if (v20 && [(SBKeyboardFocusCoordinator *)self _handleSceneFocusChange_denyRequestForOverlayUI:v20])
    {
      anyObject = 0;
LABEL_37:
      focusNothingChange2 = [MEMORY[0x277D22AC0] focusNothingChange];
      [arbiterCopy applySceneFocusChange:focusNothingChange2 forRequest:requestCopy];
      goto LABEL_38;
    }
  }

  v55 = arbiterCopy;
  focusNothingChange3 = [MEMORY[0x277D22AC0] focusNothingChange];
  v24 = [v17 isEqual:focusNothingChange3];

  v54 = v17;
  if (v24)
  {
    sbWindowSceneAncestor = [(SBKeyboardFocusPolicy *)self->_enforcedPolicy sbWindowSceneAncestor];
    if (sbWindowSceneAncestor)
    {
      anyObject = [(SBKeyboardFocusCoordinator *)self _sceneControllerForSBWindowScene:sbWindowSceneAncestor];
    }

    else
    {
      anyObject = 0;
    }

    goto LABEL_17;
  }

  sceneIdentity3 = [v17 sceneIdentity];
  v62 = 0;
  sceneIdentity4 = [v17 sceneIdentity];
  v61 = 0;
  anyObject = [(SBKeyboardFocusCoordinator *)self _sceneControllerHostingSceneIdentityToken:sceneIdentity4 ultimateHostTarget:&v61 isSecretScene:&v62];
  sbWindowSceneAncestor = v61;

  if (sbWindowSceneAncestor)
  {
    v27 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *v64 = v20;
      *&v64[8] = 2114;
      *v65 = sbWindowSceneAncestor;
      _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "[coordinator] S33KR3T target %{public}@ has an ultimate host %{public}@", buf, 0x16u);
    }

    v28 = sbWindowSceneAncestor;
    v20 = v28;
    goto LABEL_15;
  }

  if (v62)
  {
    if (hostCopy)
    {
      v43 = v20;
      v44 = changeCopy;
      v45 = requestCopy;
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
      arbiterCopy = v55;
      v58 = v55;
      requestCopy = v45;
      changeCopy = v44;
      v59 = requestCopy;
      v49 = MEMORY[0x277D85CD0];
      dispatch_after(v48, MEMORY[0x277D85CD0], block);

      v20 = v43;
      v17 = v54;
LABEL_36:

      goto LABEL_37;
    }
  }

  else if ([anyObject supportsFlexibleWindowing])
  {
    sbWindowSceneAncestor = sceneIdentity3;
    v50 = [(SBKeyboardFocusCoordinator *)self _handleSceneFocusChange_reasonToAvoidFocusingAppSceneIdentityToken:sceneIdentity3];
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

    arbiterCopy = v55;
    goto LABEL_36;
  }

LABEL_15:

LABEL_17:
  if (!anyObject)
  {
    v29 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [SBKeyboardFocusCoordinator _handleFocusSceneChange:v29 fromArbiter:? request:? waitForSecretSceneHost:?];
    }

    anyObject = [(NSMutableSet *)self->_sceneControllers anyObject];
  }

  v30 = changeCopy;
  v31 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    debugName = [anyObject debugName];
    *buf = 138543618;
    *v64 = debugName;
    *&v64[8] = 2114;
    *v65 = v20;
    _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "[coordinator] informing scene controller '%{public}@' of focusTarget: %{public}@", buf, 0x16u);
  }

  v33 = requestCopy;

  [anyObject keyboardArbiterSuggestedFocusTarget:v20];
  [(SBKeyboardFocusCoordinator *)self setHandlingKeyboardArbiterSuggestion:1];
  v34 = +[SBKeyboardFocusArbitrationReason keyboardArbiterSuggestion];
  [anyObject requestPolicyReevaluationForReason:v34];

  focusNothingChange2 = [(SBKeyboardFocusCoordinator *)self enforcedPolicy];
  v36 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    keyboardFocusTarget = [focusNothingChange2 keyboardFocusTarget];
    *buf = 138543618;
    *v64 = v30;
    *&v64[8] = 2114;
    *v65 = keyboardFocusTarget;
    _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "[coordinator] keyboard arbiter suggested %{public}@ and we replied %{public}@", buf, 0x16u);
  }

  v38 = objc_alloc(MEMORY[0x277D22AC0]);
  keyboardFocusTarget2 = [focusNothingChange2 keyboardFocusTarget];
  sceneIdentityToken = [keyboardFocusTarget2 sceneIdentityToken];
  keyboardFocusTarget3 = [focusNothingChange2 keyboardFocusTarget];
  v42 = [v38 initWithSceneIdentity:sceneIdentityToken pid:{objc_msgSend(keyboardFocusTarget3, "pid")}];

  arbiterCopy = v55;
  requestCopy = v33;
  [v55 applySceneFocusChange:v42 forRequest:v33];
  [(SBKeyboardFocusCoordinator *)self setHandlingKeyboardArbiterSuggestion:0];

  changeCopy = v30;
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

- (id)_fixupFocusSceneRequest:(id)request
{
  *&v32[5] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = [requestCopy pid];
  focusNothingChange = [MEMORY[0x277D22AC0] focusNothingChange];
  v8 = [requestCopy isEqual:focusNothingChange];

  if (v8)
  {
    v9 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "arbiter: arbiter requested nothing", &v31, 2u);
    }

    context = [(BSCompoundAssertion *)self->_preventFocusForSceneAssertion context];
    v11 = [(_SBRecentlyUsedSceneIdentityCache *)self->_recentlyUsedScenes mostRecentFocusTargetForAnyProcessExcludingSceneIdentityTokens:context];
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
      sceneIdentityToken = [v11 sceneIdentityToken];
      focusNothingChange2 = [v14 initWithSceneIdentity:sceneIdentityToken pid:{objc_msgSend(v11, "pid")}];

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
      sceneIdentity = [requestCopy sceneIdentity];
      v31 = 67109378;
      v32[0] = v6;
      LOWORD(v32[1]) = 2114;
      *(&v32[1] + 2) = sceneIdentity;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[coordinator] failed to fixup arbiter requested pid %d / %{public}@", &v31, 0x12u);
    }

    focusNothingChange2 = [MEMORY[0x277D22AC0] focusNothingChange];
    goto LABEL_27;
  }

  context = [requestCopy sceneIdentity];
  v16 = SBLogKeyboardFocus();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (context)
  {
    if (v17)
    {
      v31 = 67109378;
      v32[0] = v6;
      LOWORD(v32[1]) = 2114;
      *(&v32[1] + 2) = context;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "arbiter: arbiter requested pid %d / %{public}@", &v31, 0x12u);
    }

    v18 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 67109378;
      v32[0] = v6;
      LOWORD(v32[1]) = 2114;
      *(&v32[1] + 2) = context;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[coordinator] using arbiter suggested pid %d + scene: %{public}@", &v31, 0x12u);
    }

    focusNothingChange2 = requestCopy;
    goto LABEL_26;
  }

  if (v17)
  {
    v31 = 67109120;
    v32[0] = v6;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "arbiter: arbiter requested pid %d / nil scene", &v31, 8u);
  }

  context = [(BSCompoundAssertion *)self->_preventFocusForSceneAssertion context];
  v21 = [(_SBRecentlyUsedSceneIdentityCache *)self->_recentlyUsedScenes mostRecentFocusTargetForPID:v6 excludingSceneIdentityTokens:context];
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
    sceneIdentityToken2 = [v22 sceneIdentityToken];
    focusNothingChange2 = [v24 initWithSceneIdentity:sceneIdentityToken2 pid:{objc_msgSend(v22, "pid")}];

    goto LABEL_26;
  }

  v27 = [(_SBRecentlyUsedSceneIdentityCache *)self->_recentlyUsedScenes mostRecentFocusTargetForAnyProcessExcludingSceneIdentityTokens:context];
  sceneIdentityToken3 = SBLogKeyboardFocus();
  v29 = os_log_type_enabled(sceneIdentityToken3, OS_LOG_TYPE_DEFAULT);
  if (v27)
  {
    if (v29)
    {
      v31 = 138543362;
      *v32 = v27;
      _os_log_impl(&dword_21ED4E000, sceneIdentityToken3, OS_LOG_TYPE_DEFAULT, "[coordinator] using MRU target %{public}@", &v31, 0xCu);
    }

    v30 = objc_alloc(MEMORY[0x277D22AC0]);
    sceneIdentityToken3 = [v27 sceneIdentityToken];
    focusNothingChange2 = [v30 initWithSceneIdentity:sceneIdentityToken3 pid:{objc_msgSend(v27, "pid")}];
  }

  else if (v29)
  {
    LOWORD(v31) = 0;
    _os_log_impl(&dword_21ED4E000, sceneIdentityToken3, OS_LOG_TYPE_DEFAULT, "[coordinator] uh oh... no MRU scenes!", &v31, 2u);
  }

  if (!v27)
  {
    goto LABEL_17;
  }

LABEL_27:

  return focusNothingChange2;
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