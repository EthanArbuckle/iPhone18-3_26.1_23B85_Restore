@interface SBModalUIFluidDismissGestureManager
- (SBModalUIFluidDismissGestureManager)initWithWindowScene:(id)scene systemGestureManager:(id)manager;
- (SBWindowScene)windowScene;
- (id)customScreenEdgePanGestureRecognizerForHomeGestureInteraction:(id)interaction;
- (id)viewForSystemGestureRecognizer:(id)recognizer;
- (int64_t)_dismissalTypeForCurrentContext;
- (int64_t)touchInterfaceOrientationForGestureRecognizer:(id)recognizer;
- (unint64_t)homeGestureInteraction:(id)interaction systemGestureTypeForType:(int64_t)type;
- (void)_addOrRemoveGestureForCurrentSettings;
- (void)_notifyObserversDismissalEnded;
- (void)dealloc;
- (void)handleGestureBegan:(id)began initiatedFromBottomEdge:(BOOL)edge dismissalThreshold:(double)threshold initiatedFromIndirectEdge:(BOOL)indirectEdge;
- (void)handleGestureChanged:(id)changed;
- (void)handleGestureEnded:(id)ended;
- (void)homeGestureInteractionBegan:(id)began;
- (void)homeGestureInteractionChanged:(id)changed;
- (void)homeGestureInteractionEnded:(id)ended;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)transactionDidComplete:(id)complete;
@end

@implementation SBModalUIFluidDismissGestureManager

- (int64_t)_dismissalTypeForCurrentContext
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  if (+[SBAssistantController isVisible])
  {
    assistantController = [WeakRetained assistantController];
    assistantRootViewController = [assistantController assistantRootViewController];

    if ([assistantRootViewController ownsHomeGesture])
    {
      assistantController2 = [WeakRetained assistantController];
      presentationContext = [assistantController2 presentationContext];
      hasVisionModality = [presentationContext hasVisionModality];

      if (hasVisionModality)
      {
        viewControllerForGestureDismissal = 2;
      }

      else
      {
        viewControllerForGestureDismissal = 1;
      }

      goto LABEL_21;
    }
  }

  assistantRootViewController = [WeakRetained transientOverlayPresenter];
  viewControllerForGestureDismissal = [assistantRootViewController viewControllerForGestureDismissal];
  if (viewControllerForGestureDismissal)
  {
    ownsHomeGesture = [assistantRootViewController ownsHomeGesture];

    if (ownsHomeGesture)
    {
      preferredGestureDismissalStyle = [assistantRootViewController preferredGestureDismissalStyle];
      v11 = 3;
      v12 = 6;
      if (preferredGestureDismissalStyle != 5)
      {
        v12 = 0;
      }

      if (preferredGestureDismissalStyle != 4)
      {
        v11 = v12;
      }

      v13 = 5;
      v14 = 4;
      if (preferredGestureDismissalStyle != 2)
      {
        v14 = 0;
      }

      if (preferredGestureDismissalStyle != 1)
      {
        v13 = v14;
      }

      if (preferredGestureDismissalStyle <= 3)
      {
        viewControllerForGestureDismissal = v13;
      }

      else
      {
        viewControllerForGestureDismissal = v11;
      }
    }

    else
    {
      viewControllerForGestureDismissal = 0;
    }
  }

LABEL_21:

  return viewControllerForGestureDismissal;
}

- (SBModalUIFluidDismissGestureManager)initWithWindowScene:(id)scene systemGestureManager:(id)manager
{
  sceneCopy = scene;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = SBModalUIFluidDismissGestureManager;
  v8 = [(SBModalUIFluidDismissGestureManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_systemGestureManager, manager);
    objc_storeWeak(&v9->_windowScene, sceneCopy);
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
  isHomeGestureEnabled = [(SBHomeGestureSettings *)self->_homeGestureSettings isHomeGestureEnabled];
  homeGestureInteraction = self->_homeGestureInteraction;
  if (isHomeGestureEnabled)
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

- (void)handleGestureBegan:(id)began initiatedFromBottomEdge:(BOOL)edge dismissalThreshold:(double)threshold initiatedFromIndirectEdge:(BOOL)indirectEdge
{
  beganCopy = began;
  currentTransaction = [(SBModalUIFluidDismissGestureManager *)self currentTransaction];

  if (!currentTransaction)
  {
    v12 = +[SBWorkspace mainWorkspace];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __127__SBModalUIFluidDismissGestureManager_handleGestureBegan_initiatedFromBottomEdge_dismissalThreshold_initiatedFromIndirectEdge___block_invoke_3;
    v15[3] = &unk_2783BD778;
    v16 = beganCopy;
    selfCopy = self;
    edgeCopy = edge;
    thresholdCopy = threshold;
    indirectEdgeCopy = indirectEdge;
    [v12 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:&__block_literal_global_276 validator:v15];
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

- (void)handleGestureChanged:(id)changed
{
  changedCopy = changed;
  currentTransaction = [(SBModalUIFluidDismissGestureManager *)self currentTransaction];
  v5 = currentTransaction;
  if (currentTransaction)
  {
    [currentTransaction systemGestureStateChanged:changedCopy];
  }
}

- (void)handleGestureEnded:(id)ended
{
  endedCopy = ended;
  currentTransaction = [(SBModalUIFluidDismissGestureManager *)self currentTransaction];
  v5 = currentTransaction;
  if (currentTransaction)
  {
    [currentTransaction systemGestureStateChanged:endedCopy];
  }

  else if ([endedCopy state] != 4)
  {
    [endedCopy setEnabled:0];
    [endedCopy setEnabled:1];
  }
}

- (unint64_t)homeGestureInteraction:(id)interaction systemGestureTypeForType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_21F8A7A98[type - 1];
  }
}

- (id)customScreenEdgePanGestureRecognizerForHomeGestureInteraction:(id)interaction
{
  v4 = [SBHomeGesturePanGestureRecognizer homeGesturePanGestureRecognizerWithTarget:0 action:0];
  [v4 setInterfaceDelegate:self];
  [v4 setEdges:4];

  return v4;
}

- (void)homeGestureInteractionBegan:(id)began
{
  beganCopy = began;
  recognizedGestureType = [beganCopy recognizedGestureType];
  if (recognizedGestureType == 2)
  {
    [beganCopy indirectScreenEdgeGestureRecognitionDistance];
    v6 = -v5;
  }

  else
  {
    v6 = -200.0;
  }

  recognizedGestureRecognizer = [beganCopy recognizedGestureRecognizer];
  [(SBModalUIFluidDismissGestureManager *)self handleGestureBegan:recognizedGestureRecognizer initiatedFromBottomEdge:1 dismissalThreshold:recognizedGestureType == 2 initiatedFromIndirectEdge:v6];
}

- (void)homeGestureInteractionChanged:(id)changed
{
  recognizedGestureRecognizer = [changed recognizedGestureRecognizer];
  [(SBModalUIFluidDismissGestureManager *)self handleGestureChanged:recognizedGestureRecognizer];
}

- (void)homeGestureInteractionEnded:(id)ended
{
  recognizedGestureRecognizer = [ended recognizedGestureRecognizer];
  [(SBModalUIFluidDismissGestureManager *)self handleGestureEnded:recognizedGestureRecognizer];
}

- (id)viewForSystemGestureRecognizer:(id)recognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _dismissalTypeForCurrentContext = [(SBModalUIFluidDismissGestureManager *)self _dismissalTypeForCurrentContext];
  if ((_dismissalTypeForCurrentContext - 3) < 4)
  {
    transientOverlayPresenter = [WeakRetained transientOverlayPresenter];
    viewControllerForGestureDismissal = [transientOverlayPresenter viewControllerForGestureDismissal];
LABEL_5:
    v8 = viewControllerForGestureDismissal;
    view = [viewControllerForGestureDismissal view];

    goto LABEL_6;
  }

  if ((_dismissalTypeForCurrentContext - 1) <= 1)
  {
    transientOverlayPresenter = [WeakRetained assistantController];
    viewControllerForGestureDismissal = [transientOverlayPresenter assistantRootViewController];
    goto LABEL_5;
  }

  view = 0;
LABEL_6:

  return view;
}

- (int64_t)touchInterfaceOrientationForGestureRecognizer:(id)recognizer
{
  v3 = [(SBModalUIFluidDismissGestureManager *)self viewForSystemGestureRecognizer:recognizer];
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
  orderedContext = [(BSCompoundAssertion *)self->_observers orderedContext];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [orderedContext countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(orderedContext);
        }

        [*(*(&v8 + 1) + 8 * v7++) noteModalUIFluidDismissalDidEnd:self];
      }

      while (v5 != v7);
      v5 = [orderedContext countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)transactionDidComplete:(id)complete
{
  completeCopy = complete;
  currentTransaction = [(SBModalUIFluidDismissGestureManager *)self currentTransaction];

  if (currentTransaction == completeCopy)
  {
    [(SBModalUIFluidDismissGestureManager *)self setCurrentTransaction:0];
  }

  [(SBModalUIFluidDismissGestureManager *)self _notifyObserversDismissalEnded];
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_homeGestureSettings == settings)
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