@interface SBMainWorkspaceTransitionRequest
+ (id)ancillaryTransitionRequestsForTransitionRequest:(id)a3;
- (SBMainWorkspaceTransitionRequest)initWithDisplayConfiguration:(id)a3;
- (id)_initWithWorkspace:(id)a3 displayConfiguration:(id)a4;
- (id)addCompletionHandler:(id)a3;
- (id)compactDescriptionBuilder;
- (id)completionBlock;
- (id)copyMainWorkspaceTransitionRequest;
- (id)succinctDescriptionBuilder;
- (void)_invalidateCompletionTasks;
- (void)dealloc;
- (void)declineWithReason:(id)a3;
- (void)finalize;
- (void)modifyTransientOverlayContext:(id)a3;
- (void)setTransientOverlayContext:(id)a3;
@end

@implementation SBMainWorkspaceTransitionRequest

- (id)copyMainWorkspaceTransitionRequest
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = [(SBWorkspaceTransitionRequest *)self workspace];
  v4 = [(SBWorkspaceTransitionRequest *)self displayConfiguration];
  v53 = v3;
  v5 = [v3 createRequestWithOptions:0 displayConfiguration:v4];

  [v5 setSource:{-[SBMainWorkspaceTransitionRequest source](self, "source")}];
  v6 = [(SBWorkspaceTransitionRequest *)self eventLabel];
  [v5 setEventLabel:v6];

  v7 = [(SBMainWorkspaceTransitionRequest *)self bannerUnfurlSourceContextProvider];
  [v5 setBannerUnfurlSourceContextProvider:v7];

  [v5 setShouldPreventEmergencyNotificationBannerDismissal:{-[SBMainWorkspaceTransitionRequest shouldPreventEmergencyNotificationBannerDismissal](self, "shouldPreventEmergencyNotificationBannerDismissal")}];
  [v5 setShouldPreventDismissalOfUnrelatedTransientOverlays:{-[SBMainWorkspaceTransitionRequest shouldPreventDismissalOfUnrelatedTransientOverlays](self, "shouldPreventDismissalOfUnrelatedTransientOverlays")}];
  [v5 setCenterConfiguration:{-[SBMainWorkspaceTransitionRequest centerConfiguration](self, "centerConfiguration")}];
  v8 = objc_alloc_init(SBWorkspaceApplicationSceneTransitionContext);
  v9 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __70__SBMainWorkspaceTransitionRequest_copyMainWorkspaceTransitionRequest__block_invoke;
  v58[3] = &unk_2783BA1B8;
  v10 = v8;
  v59 = v10;
  [v9 enumerateEntitiesUsingBlock:v58];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v11 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  v12 = [v11 entitiesWithRemovalContexts];

  v13 = [v12 countByEnumeratingWithState:&v54 objects:v60 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v54 + 1) + 8 * i);
        v18 = [(SBWorkspaceTransitionRequest *)self applicationContext];
        v19 = [v18 removalContextForEntity:v17];
        [(SBWorkspaceApplicationSceneTransitionContext *)v10 setRemovalContext:v19 forEntity:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v14);
  }

  v20 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  v21 = [v20 activatingEntity];
  [(SBWorkspaceApplicationSceneTransitionContext *)v10 setActivatingEntity:v21];

  v22 = [(SBWorkspaceTransitionRequest *)self transientOverlayContext];
  if (v22)
  {
    v23 = objc_alloc_init(SBWorkspaceTransientOverlayTransitionContext);
    -[SBWorkspaceTransientOverlayTransitionContext setAnimated:](v23, "setAnimated:", [v22 isAnimated]);
    v24 = [v22 scenePresenter];
    [(SBWorkspaceTransientOverlayTransitionContext *)v23 setScenePresenter:v24];

    v25 = [v22 presentationManager];
    [(SBWorkspaceTransientOverlayTransitionContext *)v23 setPresentationManager:v25];

    v26 = [v22 transientOverlay];
    [(SBWorkspaceTransientOverlayTransitionContext *)v23 setTransientOverlay:v26];

    -[SBWorkspaceTransientOverlayTransitionContext setTransitionType:](v23, "setTransitionType:", [v22 transitionType]);
  }

  else
  {
    v23 = 0;
  }

  v27 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setRequestedUnlockedEnvironmentMode:](v10, "setRequestedUnlockedEnvironmentMode:", [v27 requestedUnlockedEnvironmentMode]);

  v28 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setRequestedFloatingConfiguration:](v10, "setRequestedFloatingConfiguration:", [v28 requestedFloatingConfiguration]);

  v29 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setRequestedCenterConfiguration:](v10, "setRequestedCenterConfiguration:", [v29 requestedCenterConfiguration]);

  v30 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setRequestedPeekConfiguration:](v10, "setRequestedPeekConfiguration:", [v30 requestedPeekConfiguration]);

  v31 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setRequestedFloatingSwitcherVisible:](v10, "setRequestedFloatingSwitcherVisible:", [v31 requestedFloatingSwitcherVisible]);

  v32 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setRequestedCenterEntityModal:](v10, "setRequestedCenterEntityModal:", [v32 requestedCenterEntityModal]);

  v33 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setWaitsForSceneUpdates:](v10, "setWaitsForSceneUpdates:", [v33 waitsForSceneUpdates]);

  v34 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setPreferredInterfaceOrientation:](v10, "setPreferredInterfaceOrientation:", [v34 preferredInterfaceOrientation]);

  v35 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceTransitionContext setAnimationDisabled:](v10, "setAnimationDisabled:", [v35 animationDisabled]);

  v36 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setPrefersCrossfadeTransition:](v10, "setPrefersCrossfadeTransition:", [v36 prefersCrossfadeTransition]);

  v37 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setPrefersCenterZoomTransition:](v10, "setPrefersCenterZoomTransition:", [v37 prefersCenterZoomTransition]);

  v38 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setPrefersZoomDownAnimation:](v10, "setPrefersZoomDownAnimation:", [v38 prefersZoomDownAnimation]);

  v39 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setTransitioningToLessRecentSpace:](v10, "setTransitioningToLessRecentSpace:", [v39 isTransitioningToLessRecentSpace]);

  v40 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  v41 = [v40 requestedAppExposeBundleID];
  [(SBWorkspaceApplicationSceneTransitionContext *)v10 setRequestedAppExposeBundleID:v41];

  v42 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setDisablesAutoPIP:](v10, "setDisablesAutoPIP:", [v42 disablesAutoPIP]);

  v43 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  v44 = [v43 requestedEntityIdentifierToLayoutAttributes];
  [(SBWorkspaceApplicationSceneTransitionContext *)v10 setRequestedEntityIdentifierToLayoutAttributes:v44];

  v45 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  -[SBWorkspaceApplicationSceneTransitionContext setRetainsSiri:](v10, "setRetainsSiri:", [v45 retainsSiri]);

  v46 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  v47 = [v46 minimizingDisplayItem];
  [(SBWorkspaceApplicationSceneTransitionContext *)v10 setMinimizingDisplayItem:v47];

  v48 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  v49 = [v48 itemsCrossingToOtherDisplay];
  [(SBWorkspaceApplicationSceneTransitionContext *)v10 setItemsCrossingToOtherDisplay:v49];

  v50 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  v51 = [v50 delegate];
  [(SBWorkspaceApplicationSceneTransitionContext *)v10 setDelegate:v51];

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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMainWorkspaceTransitionRequest.m" lineNumber:222 description:@"Entity for a device request must be a SBDeviceApplicationSceneEntity."];
}

- (id)compactDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = SBMainWorkspaceTransitionRequest;
  v3 = [(SBWorkspaceTransitionRequest *)&v7 compactDescriptionBuilder];
  v4 = SBMainWorkspaceTransitionSourceDescription(self->_source);
  v5 = [v3 appendObject:v4 withName:@"source"];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = SBMainWorkspaceTransitionRequest;
  v3 = [(SBWorkspaceTransitionRequest *)&v7 succinctDescriptionBuilder];
  v4 = SBMainWorkspaceTransitionSourceDescription(self->_source);
  v5 = [v3 appendObject:v4 withName:@"source"];

  return v3;
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

+ (id)ancillaryTransitionRequestsForTransitionRequest:(id)a3
{
  v3 = a3;
  v4 = [SBApp windowSceneManager];
  v5 = [v4 connectedWindowScenes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__SBMainWorkspaceTransitionRequest_ancillaryTransitionRequestsForTransitionRequest___block_invoke;
  v9[3] = &unk_2783C0958;
  v10 = v3;
  v6 = v3;
  v7 = [v5 bs_compactMap:v9];

  return v7;
}

id __84__SBMainWorkspaceTransitionRequest_ancillaryTransitionRequestsForTransitionRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 switcherController];
  v4 = [v3 _ancillaryTransitionRequestForTransitionRequest:*(a1 + 32)];

  return v4;
}

- (SBMainWorkspaceTransitionRequest)initWithDisplayConfiguration:(id)a3
{
  v4 = a3;
  v5 = +[SBWorkspace mainWorkspace];
  v8.receiver = self;
  v8.super_class = SBMainWorkspaceTransitionRequest;
  v6 = [(SBWorkspaceTransitionRequest *)&v8 _initWithWorkspace:v5 displayConfiguration:v4];

  return v6;
}

- (id)_initWithWorkspace:(id)a3 displayConfiguration:(id)a4
{
  v6 = MEMORY[0x277CCA890];
  v7 = a4;
  v8 = [v6 currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"SBMainWorkspaceTransitionRequest.m" lineNumber:66 description:@"call init instead"];

  v9 = [(SBMainWorkspaceTransitionRequest *)self initWithDisplayConfiguration:v7];
  return v9;
}

- (id)addCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (!self->_completionTasks)
    {
      v5 = [MEMORY[0x277CBEB18] array];
      completionTasks = self->_completionTasks;
      self->_completionTasks = v5;
    }

    objc_initWeak(&location, self);
    v7 = [SBMainWorkspaceTransitionRequestCompletionTask alloc];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __57__SBMainWorkspaceTransitionRequest_addCompletionHandler___block_invoke;
    v13 = &unk_2783A9070;
    objc_copyWeak(&v14, &location);
    v8 = [(BSSimpleAssertion *)v7 initWithIdentifier:@"SBMainWorkspaceTransitionRequest" forReason:@"Completion" invalidationBlock:&v10];
    [(SBMainWorkspaceTransitionRequestCompletionTask *)v8 setTask:v4, v10, v11, v12, v13];
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

- (void)declineWithReason:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SBMainWorkspaceTransitionRequest;
  [(SBWorkspaceTransitionRequest *)&v15 declineWithReason:a3];
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

            v10 = [*(*(&v11 + 1) + 8 * v9) task];
            v10[2](v10, 0);

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

- (void)setTransientOverlayContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 presentationManager];

    if (!v6)
    {
      v7 = [(SBWorkspaceTransitionRequest *)self workspace];
      v8 = [v7 transientOverlayPresentationManager];
      [v5 setPresentationManager:v8];
    }
  }

  v9.receiver = self;
  v9.super_class = SBMainWorkspaceTransitionRequest;
  [(SBWorkspaceTransitionRequest *)&v9 setTransientOverlayContext:v5];
}

- (void)modifyTransientOverlayContext:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBMainWorkspaceTransitionRequest;
  [(SBWorkspaceTransitionRequest *)&v11 modifyTransientOverlayContext:a3];
  v4 = [(SBWorkspaceTransitionRequest *)self transientOverlayContext];
  v5 = [v4 transientOverlay];
  v6 = [v5 viewController];

  if (![v4 transitionType])
  {
    if ([v6 prefersContinuityDisplayPresentation] && +[SBContinuitySessionManager areContinuitySessionsAllowed](SBContinuitySessionManager, "areContinuitySessionsAllowed"))
    {
      v7 = +[SBContinuitySessionManager sharedInstance];
      v8 = [v7 currentSession];

      if ([v8 state] == 11)
      {
        v9 = [v8 mainWindowScene];

        if (v9)
        {
LABEL_10:
          [v4 setWindowScene:v9];

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    if ([v6 prefersEmbeddedDisplayPresentation])
    {
      v10 = [(SBWorkspaceTransitionRequest *)self workspace];
      v9 = [v10 mainWindowScene];

      if (v9)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_11:
}

@end