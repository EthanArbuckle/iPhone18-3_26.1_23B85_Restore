@interface SBMainWorkspaceTransitionRequest
+ (id)ancillaryTransitionRequestsForTransitionRequest:(id)request;
- (SBMainWorkspaceTransitionRequest)initWithDisplayConfiguration:(id)configuration;
- (id)_initWithWorkspace:(id)workspace displayConfiguration:(id)configuration;
- (id)addCompletionHandler:(id)handler;
- (id)compactDescriptionBuilder;
- (id)completionBlock;
- (id)copyMainWorkspaceTransitionRequest;
- (id)succinctDescriptionBuilder;
- (void)_invalidateCompletionTasks;
- (void)dealloc;
- (void)declineWithReason:(id)reason;
- (void)finalize;
- (void)modifyTransientOverlayContext:(id)context;
- (void)setTransientOverlayContext:(id)context;
@end

@implementation SBMainWorkspaceTransitionRequest

- (id)copyMainWorkspaceTransitionRequest
{
  v61 = *MEMORY[0x277D85DE8];
  workspace = [(SBWorkspaceTransitionRequest *)self workspace];
  displayConfiguration = [(SBWorkspaceTransitionRequest *)self displayConfiguration];
  v53 = workspace;
  v5 = [workspace createRequestWithOptions:0 displayConfiguration:displayConfiguration];

  [v5 setSource:{-[SBMainWorkspaceTransitionRequest source](self, "source")}];
  eventLabel = [(SBWorkspaceTransitionRequest *)self eventLabel];
  [v5 setEventLabel:eventLabel];

  bannerUnfurlSourceContextProvider = [(SBMainWorkspaceTransitionRequest *)self bannerUnfurlSourceContextProvider];
  [v5 setBannerUnfurlSourceContextProvider:bannerUnfurlSourceContextProvider];

  [v5 setShouldPreventEmergencyNotificationBannerDismissal:{-[SBMainWorkspaceTransitionRequest shouldPreventEmergencyNotificationBannerDismissal](self, "shouldPreventEmergencyNotificationBannerDismissal")}];
  [v5 setShouldPreventDismissalOfUnrelatedTransientOverlays:{-[SBMainWorkspaceTransitionRequest shouldPreventDismissalOfUnrelatedTransientOverlays](self, "shouldPreventDismissalOfUnrelatedTransientOverlays")}];
  [v5 setCenterConfiguration:{-[SBMainWorkspaceTransitionRequest centerConfiguration](self, "centerConfiguration")}];
  v8 = objc_alloc_init(SBWorkspaceApplicationSceneTransitionContext);
  applicationContext = [(SBWorkspaceTransitionRequest *)self applicationContext];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __70__SBMainWorkspaceTransitionRequest_copyMainWorkspaceTransitionRequest__block_invoke;
  v58[3] = &unk_2783BA1B8;
  v10 = v8;
  v59 = v10;
  [applicationContext enumerateEntitiesUsingBlock:v58];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  applicationContext2 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  entitiesWithRemovalContexts = [applicationContext2 entitiesWithRemovalContexts];

  v13 = [entitiesWithRemovalContexts countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v55;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v55 != v15)
        {
          objc_enumerationMutation(entitiesWithRemovalContexts);
        }

        v17 = *(*(&v54 + 1) + 8 * i);
        applicationContext3 = [(SBWorkspaceTransitionRequest *)self applicationContext];
        v19 = [applicationContext3 removalContextForEntity:v17];
        [(SBWorkspaceApplicationSceneTransitionContext *)v10 setRemovalContext:v19 forEntity:v17];
      }

      v14 = [entitiesWithRemovalContexts countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v14);
  }

  applicationContext4 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  activatingEntity = [applicationContext4 activatingEntity];
  [(SBWorkspaceApplicationSceneTransitionContext *)v10 setActivatingEntity:activatingEntity];

  transientOverlayContext = [(SBWorkspaceTransitionRequest *)self transientOverlayContext];
  if (transientOverlayContext)
  {
    v23 = objc_alloc_init(SBWorkspaceTransientOverlayTransitionContext);
    -[SBWorkspaceTransientOverlayTransitionContext setAnimated:](v23, "setAnimated:", [transientOverlayContext isAnimated]);
    scenePresenter = [transientOverlayContext scenePresenter];
    [(SBWorkspaceTransientOverlayTransitionContext *)v23 setScenePresenter:scenePresenter];

    presentationManager = [transientOverlayContext presentationManager];
    [(SBWorkspaceTransientOverlayTransitionContext *)v23 setPresentationManager:presentationManager];

    transientOverlay = [transientOverlayContext transientOverlay];
    [(SBWorkspaceTransientOverlayTransitionContext *)v23 setTransientOverlay:transientOverlay];

    -[SBWorkspaceTransientOverlayTransitionContext setTransitionType:](v23, "setTransitionType:", [transientOverlayContext transitionType]);
  }

  else
  {
    v23 = 0;
  }

  applicationContext5 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setRequestedUnlockedEnvironmentMode:](v10, "setRequestedUnlockedEnvironmentMode:", [applicationContext5 requestedUnlockedEnvironmentMode]);

  applicationContext6 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setRequestedFloatingConfiguration:](v10, "setRequestedFloatingConfiguration:", [applicationContext6 requestedFloatingConfiguration]);

  applicationContext7 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setRequestedCenterConfiguration:](v10, "setRequestedCenterConfiguration:", [applicationContext7 requestedCenterConfiguration]);

  applicationContext8 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setRequestedPeekConfiguration:](v10, "setRequestedPeekConfiguration:", [applicationContext8 requestedPeekConfiguration]);

  applicationContext9 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setRequestedFloatingSwitcherVisible:](v10, "setRequestedFloatingSwitcherVisible:", [applicationContext9 requestedFloatingSwitcherVisible]);

  applicationContext10 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setRequestedCenterEntityModal:](v10, "setRequestedCenterEntityModal:", [applicationContext10 requestedCenterEntityModal]);

  applicationContext11 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setWaitsForSceneUpdates:](v10, "setWaitsForSceneUpdates:", [applicationContext11 waitsForSceneUpdates]);

  applicationContext12 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setPreferredInterfaceOrientation:](v10, "setPreferredInterfaceOrientation:", [applicationContext12 preferredInterfaceOrientation]);

  applicationContext13 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceTransitionContext setAnimationDisabled:](v10, "setAnimationDisabled:", [applicationContext13 animationDisabled]);

  applicationContext14 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setPrefersCrossfadeTransition:](v10, "setPrefersCrossfadeTransition:", [applicationContext14 prefersCrossfadeTransition]);

  applicationContext15 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setPrefersCenterZoomTransition:](v10, "setPrefersCenterZoomTransition:", [applicationContext15 prefersCenterZoomTransition]);

  applicationContext16 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setPrefersZoomDownAnimation:](v10, "setPrefersZoomDownAnimation:", [applicationContext16 prefersZoomDownAnimation]);

  applicationContext17 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setTransitioningToLessRecentSpace:](v10, "setTransitioningToLessRecentSpace:", [applicationContext17 isTransitioningToLessRecentSpace]);

  applicationContext18 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  requestedAppExposeBundleID = [applicationContext18 requestedAppExposeBundleID];
  [(SBWorkspaceApplicationSceneTransitionContext *)v10 setRequestedAppExposeBundleID:requestedAppExposeBundleID];

  applicationContext19 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setDisablesAutoPIP:](v10, "setDisablesAutoPIP:", [applicationContext19 disablesAutoPIP]);

  applicationContext20 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  requestedEntityIdentifierToLayoutAttributes = [applicationContext20 requestedEntityIdentifierToLayoutAttributes];
  [(SBWorkspaceApplicationSceneTransitionContext *)v10 setRequestedEntityIdentifierToLayoutAttributes:requestedEntityIdentifierToLayoutAttributes];

  applicationContext21 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setRetainsSiri:](v10, "setRetainsSiri:", [applicationContext21 retainsSiri]);

  applicationContext22 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  minimizingDisplayItem = [applicationContext22 minimizingDisplayItem];
  [(SBWorkspaceApplicationSceneTransitionContext *)v10 setMinimizingDisplayItem:minimizingDisplayItem];

  applicationContext23 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  itemsCrossingToOtherDisplay = [applicationContext23 itemsCrossingToOtherDisplay];
  [(SBWorkspaceApplicationSceneTransitionContext *)v10 setItemsCrossingToOtherDisplay:itemsCrossingToOtherDisplay];

  applicationContext24 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  delegate = [applicationContext24 delegate];
  [(SBWorkspaceApplicationSceneTransitionContext *)v10 setDelegate:delegate];

  [v5 setApplicationContext:v10];
  [v5 setTransientOverlayContext:v23];

  return v5;
}

- (void)_invalidateCompletionTasks
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_completionTasks copy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_completionTasks removeAllObjects];
  completionTasks = self->_completionTasks;
  self->_completionTasks = 0;
}

- (void)dealloc
{
  [(SBMainWorkspaceTransitionRequest *)self _invalidateCompletionTasks];
  v3.receiver = self;
  v3.super_class = SBMainWorkspaceTransitionRequest;
  [(SBMainWorkspaceTransitionRequest *)&v3 dealloc];
}

void __70__SBMainWorkspaceTransitionRequest_copyMainWorkspaceTransitionRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = SBLayoutRoleForIdentifier(a2);
  if (SBLayoutRoleIsValid(v5))
  {
    [*(a1 + 32) setEntity:v6 forLayoutRole:v5];
  }
}

- (void)finalize
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBMainWorkspaceTransitionRequest.m" lineNumber:222 description:@"Entity for a device request must be a SBDeviceApplicationSceneEntity."];
}

- (id)compactDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = SBMainWorkspaceTransitionRequest;
  compactDescriptionBuilder = [(SBWorkspaceTransitionRequest *)&v7 compactDescriptionBuilder];
  v4 = SBMainWorkspaceTransitionSourceDescription(self->_source);
  v5 = [compactDescriptionBuilder appendObject:v4 withName:@"source"];

  return compactDescriptionBuilder;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = SBMainWorkspaceTransitionRequest;
  succinctDescriptionBuilder = [(SBWorkspaceTransitionRequest *)&v7 succinctDescriptionBuilder];
  v4 = SBMainWorkspaceTransitionSourceDescription(self->_source);
  v5 = [succinctDescriptionBuilder appendObject:v4 withName:@"source"];

  return succinctDescriptionBuilder;
}

- (id)completionBlock
{
  if (self->_completionTasks)
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __51__SBMainWorkspaceTransitionRequest_completionBlock__block_invoke_2;
    v4[3] = &unk_2783AC358;
    objc_copyWeak(&v5, &location);
    v2 = [v4 copy];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {
    v2 = [&__block_literal_global_370 copy];
  }

  return v2;
}

+ (id)ancillaryTransitionRequestsForTransitionRequest:(id)request
{
  requestCopy = request;
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__SBMainWorkspaceTransitionRequest_ancillaryTransitionRequestsForTransitionRequest___block_invoke;
  v9[3] = &unk_2783C0958;
  v10 = requestCopy;
  v6 = requestCopy;
  v7 = [connectedWindowScenes bs_compactMap:v9];

  return v7;
}

id __84__SBMainWorkspaceTransitionRequest_ancillaryTransitionRequestsForTransitionRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 switcherController];
  v4 = [v3 _ancillaryTransitionRequestForTransitionRequest:*(a1 + 32)];

  return v4;
}

- (SBMainWorkspaceTransitionRequest)initWithDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = +[SBWorkspace mainWorkspace];
  v8.receiver = self;
  v8.super_class = SBMainWorkspaceTransitionRequest;
  v6 = [(SBWorkspaceTransitionRequest *)&v8 _initWithWorkspace:v5 displayConfiguration:configurationCopy];

  return v6;
}

- (id)_initWithWorkspace:(id)workspace displayConfiguration:(id)configuration
{
  v6 = MEMORY[0x277CCA890];
  configurationCopy = configuration;
  currentHandler = [v6 currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBMainWorkspaceTransitionRequest.m" lineNumber:66 description:@"call init instead"];

  v9 = [(SBMainWorkspaceTransitionRequest *)self initWithDisplayConfiguration:configurationCopy];
  return v9;
}

- (id)addCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (!self->_completionTasks)
    {
      array = [MEMORY[0x277CBEB18] array];
      completionTasks = self->_completionTasks;
      self->_completionTasks = array;
    }

    objc_initWeak(&location, self);
    v7 = [SBMainWorkspaceTransitionRequestCompletionTask alloc];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __57__SBMainWorkspaceTransitionRequest_addCompletionHandler___block_invoke;
    v13 = &unk_2783A9070;
    objc_copyWeak(&v14, &location);
    v8 = [(BSSimpleAssertion *)v7 initWithIdentifier:@"SBMainWorkspaceTransitionRequest" forReason:@"Completion" invalidationBlock:&v10];
    [(SBMainWorkspaceTransitionRequestCompletionTask *)v8 setTask:handlerCopy, v10, v11, v12, v13];
    [(NSMutableArray *)self->_completionTasks addObject:v8];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __57__SBMainWorkspaceTransitionRequest_addCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[14] removeObject:v5];
  }
}

void __51__SBMainWorkspaceTransitionRequest_completionBlock__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = WeakRetained[14];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 task];

          if (v11)
          {
            v12 = [v10 task];
            v12[2](v12, a2);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [v4 _invalidateCompletionTasks];
  }
}

- (void)declineWithReason:(id)reason
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SBMainWorkspaceTransitionRequest;
  [(SBWorkspaceTransitionRequest *)&v15 declineWithReason:reason];
  if (![(SBWorkspaceTransitionRequest *)self isFinalized])
  {
    [(SBMainWorkspaceTransitionRequest *)self setTransactionProvider:0];
    [(SBMainWorkspaceTransitionRequest *)self setTransactionConfigurator:0];
    completionTasks = self->_completionTasks;
    if (completionTasks)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v5 = completionTasks;
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            task = [*(*(&v11 + 1) + 8 * v9) task];
            task[2](task, 0);

            ++v9;
          }

          while (v7 != v9);
          v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
        }

        while (v7);
      }

      [(SBMainWorkspaceTransitionRequest *)self _invalidateCompletionTasks];
    }
  }
}

- (void)setTransientOverlayContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy)
  {
    presentationManager = [contextCopy presentationManager];

    if (!presentationManager)
    {
      workspace = [(SBWorkspaceTransitionRequest *)self workspace];
      transientOverlayPresentationManager = [workspace transientOverlayPresentationManager];
      [v5 setPresentationManager:transientOverlayPresentationManager];
    }
  }

  v9.receiver = self;
  v9.super_class = SBMainWorkspaceTransitionRequest;
  [(SBWorkspaceTransitionRequest *)&v9 setTransientOverlayContext:v5];
}

- (void)modifyTransientOverlayContext:(id)context
{
  v11.receiver = self;
  v11.super_class = SBMainWorkspaceTransitionRequest;
  [(SBWorkspaceTransitionRequest *)&v11 modifyTransientOverlayContext:context];
  transientOverlayContext = [(SBWorkspaceTransitionRequest *)self transientOverlayContext];
  transientOverlay = [transientOverlayContext transientOverlay];
  viewController = [transientOverlay viewController];

  if (![transientOverlayContext transitionType])
  {
    if ([viewController prefersContinuityDisplayPresentation] && +[SBContinuitySessionManager areContinuitySessionsAllowed](SBContinuitySessionManager, "areContinuitySessionsAllowed"))
    {
      v7 = +[SBContinuitySessionManager sharedInstance];
      currentSession = [v7 currentSession];

      if ([currentSession state] == 11)
      {
        mainWindowScene = [currentSession mainWindowScene];

        if (mainWindowScene)
        {
LABEL_10:
          [transientOverlayContext setWindowScene:mainWindowScene];

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    if ([viewController prefersEmbeddedDisplayPresentation])
    {
      workspace = [(SBWorkspaceTransitionRequest *)self workspace];
      mainWindowScene = [workspace mainWindowScene];

      if (mainWindowScene)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_11:
}

@end