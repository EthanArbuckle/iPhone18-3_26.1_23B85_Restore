@interface SBModalUIFluidDismissGestureManager
- (SBModalUIFluidDismissGestureManager)initWithWindowScene:(id)a3 systemGestureManager:(id)a4;
- (SBWindowScene)windowScene;
- (id)customScreenEdgePanGestureRecognizerForHomeGestureInteraction:(id)a3;
- (id)viewForSystemGestureRecognizer:(id)a3;
- (int64_t)_dismissalTypeForCurrentContext;
- (int64_t)touchInterfaceOrientationForGestureRecognizer:(id)a3;
- (unint64_t)homeGestureInteraction:(id)a3 systemGestureTypeForType:(int64_t)a4;
- (void)_addOrRemoveGestureForCurrentSettings;
- (void)_notifyObserversDismissalEnded;
- (void)dealloc;
- (void)handleGestureBegan:(id)a3 initiatedFromBottomEdge:(BOOL)a4 dismissalThreshold:(double)a5 initiatedFromIndirectEdge:(BOOL)a6;
- (void)handleGestureChanged:(id)a3;
- (void)handleGestureEnded:(id)a3;
- (void)homeGestureInteractionBegan:(id)a3;
- (void)homeGestureInteractionChanged:(id)a3;
- (void)homeGestureInteractionEnded:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)transactionDidComplete:(id)a3;
@end

@implementation SBModalUIFluidDismissGestureManager

- (int64_t)_dismissalTypeForCurrentContext
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  if (+[SBAssistantController isVisible])
  {
    v3 = [WeakRetained assistantController];
    v4 = [v3 assistantRootViewController];

    if ([v4 ownsHomeGesture])
    {
      v5 = [WeakRetained assistantController];
      v6 = [v5 presentationContext];
      v7 = [v6 hasVisionModality];

      if (v7)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      goto LABEL_21;
    }
  }

  v4 = [WeakRetained transientOverlayPresenter];
  v8 = [v4 viewControllerForGestureDismissal];
  if (v8)
  {
    v9 = [v4 ownsHomeGesture];

    if (v9)
    {
      v10 = [v4 preferredGestureDismissalStyle];
      v11 = 3;
      v12 = 6;
      if (v10 != 5)
      {
        v12 = 0;
      }

      if (v10 != 4)
      {
        v11 = v12;
      }

      v13 = 5;
      v14 = 4;
      if (v10 != 2)
      {
        v14 = 0;
      }

      if (v10 != 1)
      {
        v13 = v14;
      }

      if (v10 <= 3)
      {
        v8 = v13;
      }

      else
      {
        v8 = v11;
      }
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_21:

  return v8;
}

- (SBModalUIFluidDismissGestureManager)initWithWindowScene:(id)a3 systemGestureManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SBModalUIFluidDismissGestureManager;
  v8 = [(SBModalUIFluidDismissGestureManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_systemGestureManager, a4);
    objc_storeWeak(&v9->_windowScene, v6);
    v10 = +[SBHomeGestureDomain rootSettings];
    homeGestureSettings = v9->_homeGestureSettings;
    v9->_homeGestureSettings = v10;

    [(PTSettings *)v9->_homeGestureSettings addKeyObserver:v9];
    v12 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"SBModalUIFluidDismissGestureManager observers"];
    observers = v9->_observers;
    v9->_observers = v12;

    [(SBModalUIFluidDismissGestureManager *)v9 _addOrRemoveGestureForCurrentSettings];
  }

  return v9;
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_observers invalidate];
  observers = self->_observers;
  self->_observers = 0;

  v4.receiver = self;
  v4.super_class = SBModalUIFluidDismissGestureManager;
  [(SBModalUIFluidDismissGestureManager *)&v4 dealloc];
}

- (void)_addOrRemoveGestureForCurrentSettings
{
  v3 = [(SBHomeGestureSettings *)self->_homeGestureSettings isHomeGestureEnabled];
  homeGestureInteraction = self->_homeGestureInteraction;
  if (v3)
  {
    if (homeGestureInteraction)
    {
      return;
    }

    v5 = [[SBHomeGestureInteraction alloc] initWithSystemGestureManager:self->_systemGestureManager delegate:self];
  }

  else
  {
    if (!homeGestureInteraction)
    {
      return;
    }

    [(SBHomeGestureInteraction *)homeGestureInteraction invalidate];
    v5 = 0;
  }

  v6 = self->_homeGestureInteraction;
  self->_homeGestureInteraction = v5;
}

- (void)handleGestureBegan:(id)a3 initiatedFromBottomEdge:(BOOL)a4 dismissalThreshold:(double)a5 initiatedFromIndirectEdge:(BOOL)a6
{
  v10 = a3;
  v11 = [(SBModalUIFluidDismissGestureManager *)self currentTransaction];

  if (!v11)
  {
    v12 = +[SBWorkspace mainWorkspace];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v14 = [WeakRetained _fbsDisplayConfiguration];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __127__SBModalUIFluidDismissGestureManager_handleGestureBegan_initiatedFromBottomEdge_dismissalThreshold_initiatedFromIndirectEdge___block_invoke_3;
    v15[3] = &unk_2783BD778;
    v16 = v10;
    v17 = self;
    v19 = a4;
    v18 = a5;
    v20 = a6;
    [v12 requestTransitionWithOptions:0 displayConfiguration:v14 builder:&__block_literal_global_276 validator:v15];
  }
}

void __127__SBModalUIFluidDismissGestureManager_handleGestureBegan_initiatedFromBottomEdge_dismissalThreshold_initiatedFromIndirectEdge___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setSource:11];
  [v2 setEventLabel:@"SBModalUIFluidDismissSystemGesture"];
  [v2 modifyTransientOverlayContext:&__block_literal_global_12];
}

void __127__SBModalUIFluidDismissGestureManager_handleGestureBegan_initiatedFromBottomEdge_dismissalThreshold_initiatedFromIndirectEdge___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = +[SBWorkspace mainWorkspace];
  v3 = [v4 transientOverlayPresentationManager];
  [v2 setPresentationManager:v3];
}

uint64_t __127__SBModalUIFluidDismissGestureManager_handleGestureBegan_initiatedFromBottomEdge_dismissalThreshold_initiatedFromIndirectEdge___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) state];
  v5 = [*(a1 + 40) _dismissalTypeForCurrentContext];
  if (v5)
  {
    v6 = (v4 - 1) >= 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v7 == 1)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __127__SBModalUIFluidDismissGestureManager_handleGestureBegan_initiatedFromBottomEdge_dismissalThreshold_initiatedFromIndirectEdge___block_invoke_4;
    v11[3] = &unk_2783BD750;
    v13 = v5;
    v15 = *(a1 + 56);
    v14 = *(a1 + 48);
    v10 = *(a1 + 32);
    v8 = v10.i64[0];
    v12 = vextq_s8(v10, v10, 8uLL);
    [v3 setTransactionProvider:v11];
  }

  return v7;
}

SBModalUIFluidDismissGestureWorkspaceTransaction *__127__SBModalUIFluidDismissGestureManager_handleGestureBegan_initiatedFromBottomEdge_dismissalThreshold_initiatedFromIndirectEdge___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SBModalUIFluidDismissGestureWorkspaceTransaction alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v6 = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)v4 initWithTransitionRequest:v3 windowScene:WeakRetained dismissalType:*(a1 + 48) initiatedFromBottomEdge:*(a1 + 64)];

  [(SBModalUIFluidDismissGestureWorkspaceTransaction *)v6 setDismissalThreshold:*(a1 + 56)];
  [(SBModalUIFluidDismissGestureWorkspaceTransaction *)v6 setAnimateGestureCancelationOrFailure:*(a1 + 65)];
  [(SBModalUIFluidDismissGestureWorkspaceTransaction *)v6 addObserver:*(a1 + 32)];
  [(SBSystemGestureWorkspaceTransaction *)v6 setGestureRecognizer:*(a1 + 40)];
  [*(a1 + 32) setCurrentTransaction:v6];

  return v6;
}

- (void)handleGestureChanged:(id)a3
{
  v6 = a3;
  v4 = [(SBModalUIFluidDismissGestureManager *)self currentTransaction];
  v5 = v4;
  if (v4)
  {
    [v4 systemGestureStateChanged:v6];
  }
}

- (void)handleGestureEnded:(id)a3
{
  v6 = a3;
  v4 = [(SBModalUIFluidDismissGestureManager *)self currentTransaction];
  v5 = v4;
  if (v4)
  {
    [v4 systemGestureStateChanged:v6];
  }

  else if ([v6 state] != 4)
  {
    [v6 setEnabled:0];
    [v6 setEnabled:1];
  }
}

- (unint64_t)homeGestureInteraction:(id)a3 systemGestureTypeForType:(int64_t)a4
{
  if ((a4 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_21F8A7A98[a4 - 1];
  }
}

- (id)customScreenEdgePanGestureRecognizerForHomeGestureInteraction:(id)a3
{
  v4 = [SBHomeGesturePanGestureRecognizer homeGesturePanGestureRecognizerWithTarget:0 action:0];
  [v4 setInterfaceDelegate:self];
  [v4 setEdges:4];

  return v4;
}

- (void)homeGestureInteractionBegan:(id)a3
{
  v8 = a3;
  v4 = [v8 recognizedGestureType];
  if (v4 == 2)
  {
    [v8 indirectScreenEdgeGestureRecognitionDistance];
    v6 = -v5;
  }

  else
  {
    v6 = -200.0;
  }

  v7 = [v8 recognizedGestureRecognizer];
  [(SBModalUIFluidDismissGestureManager *)self handleGestureBegan:v7 initiatedFromBottomEdge:1 dismissalThreshold:v4 == 2 initiatedFromIndirectEdge:v6];
}

- (void)homeGestureInteractionChanged:(id)a3
{
  v4 = [a3 recognizedGestureRecognizer];
  [(SBModalUIFluidDismissGestureManager *)self handleGestureChanged:v4];
}

- (void)homeGestureInteractionEnded:(id)a3
{
  v4 = [a3 recognizedGestureRecognizer];
  [(SBModalUIFluidDismissGestureManager *)self handleGestureEnded:v4];
}

- (id)viewForSystemGestureRecognizer:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v5 = [(SBModalUIFluidDismissGestureManager *)self _dismissalTypeForCurrentContext];
  if ((v5 - 3) < 4)
  {
    v6 = [WeakRetained transientOverlayPresenter];
    v7 = [v6 viewControllerForGestureDismissal];
LABEL_5:
    v8 = v7;
    v9 = [v7 view];

    goto LABEL_6;
  }

  if ((v5 - 1) <= 1)
  {
    v6 = [WeakRetained assistantController];
    v7 = [v6 assistantRootViewController];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (int64_t)touchInterfaceOrientationForGestureRecognizer:(id)a3
{
  v3 = [(SBModalUIFluidDismissGestureManager *)self viewForSystemGestureRecognizer:a3];
  v4 = v3;
  if (v3 && (([v3 window], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "window"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "convertPoint:toView:", v6, 1.0, 1.0), objc_msgSend(v5, "_convertPointToSceneReferenceSpace:"), v8 = v7, v10 = v9, objc_msgSend(v4, "window"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "window"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "convertPoint:toView:", v12, 0.0, 0.0), objc_msgSend(v11, "_convertPointToSceneReferenceSpace:"), v14 = v13, v16 = v15, v12, v11, v6, v5, v17 = v8 <= v14) || v10 <= v16))
  {
    if (v8 > v14 || v10 > v16)
    {
      if (v10 > v16)
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = 3;
      }

      else
      {
        v18 = 4;
      }
    }

    else
    {
      v18 = 2;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (void)_notifyObserversDismissalEnded
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(BSCompoundAssertion *)self->_observers orderedContext];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
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

        [*(*(&v8 + 1) + 8 * v7++) noteModalUIFluidDismissalDidEnd:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)transactionDidComplete:(id)a3
{
  v4 = a3;
  v5 = [(SBModalUIFluidDismissGestureManager *)self currentTransaction];

  if (v5 == v4)
  {
    [(SBModalUIFluidDismissGestureManager *)self setCurrentTransaction:0];
  }

  [(SBModalUIFluidDismissGestureManager *)self _notifyObserversDismissalEnded];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_homeGestureSettings == a3)
  {
    block[5] = v4;
    block[6] = v5;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__SBModalUIFluidDismissGestureManager_settings_changedValueForKey___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end