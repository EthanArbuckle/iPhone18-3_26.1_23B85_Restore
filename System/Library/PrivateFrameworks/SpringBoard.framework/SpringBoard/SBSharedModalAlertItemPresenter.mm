@interface SBSharedModalAlertItemPresenter
- (SBAlertItem)currentlyPresentedAlertItem;
- (SBSharedModalAlertItemPresenter)initWithLockOutProvider:(id)provider systemGestureManager:(id)manager reachabilityManager:(id)reachabilityManager alertLayoutPresentationVerifier:(id)verifier windowScene:(id)scene enableGestures:(BOOL)gestures;
- (unint64_t)barSwipeAffordanceView:(id)view systemGestureTypeForType:(int64_t)type;
- (void)_performActionForAlertController:(id)controller invokeActionBlock:(id)block dismissControllerBlock:(id)controllerBlock;
- (void)_updateBarSwipeViewWithAlertController:(id)controller;
- (void)_updateHomeGestureParticipant;
- (void)alertControllerDidDisappear:(id)disappear;
- (void)dealloc;
- (void)dismissAlertItem:(id)item animated:(BOOL)animated completion:(id)completion;
- (void)handleReachabilityYOffsetDidChange;
- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)view;
- (void)homeGrabberViewDidReceiveClick:(id)click;
- (void)invalidate;
- (void)modalViewControllerStack:(id)stack didDismissViewController:(id)controller;
- (void)modalViewControllerStack:(id)stack didPresentViewController:(id)controller;
- (void)modalViewControllerStack:(id)stack willDismissViewController:(id)controller animated:(BOOL)animated;
- (void)modalViewControllerStack:(id)stack willPresentViewController:(id)controller;
- (void)presentAlertItem:(id)item isLocked:(BOOL)locked animated:(BOOL)animated completion:(id)completion;
- (void)zStackParticipantDidChange:(id)change;
@end

@implementation SBSharedModalAlertItemPresenter

- (SBAlertItem)currentlyPresentedAlertItem
{
  topViewController = [(SBModalViewControllerStack *)self->_modalViewControllerStack topViewController];
  alertItem = [topViewController alertItem];

  return alertItem;
}

- (SBSharedModalAlertItemPresenter)initWithLockOutProvider:(id)provider systemGestureManager:(id)manager reachabilityManager:(id)reachabilityManager alertLayoutPresentationVerifier:(id)verifier windowScene:(id)scene enableGestures:(BOOL)gestures
{
  gesturesCopy = gestures;
  providerCopy = provider;
  managerCopy = manager;
  reachabilityManagerCopy = reachabilityManager;
  verifierCopy = verifier;
  sceneCopy = scene;
  v40.receiver = self;
  v40.super_class = SBSharedModalAlertItemPresenter;
  v18 = [(SBSharedModalAlertItemPresenter *)&v40 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_lockOutProvider, provider);
    objc_storeStrong(&v19->_systemGestureManager, manager);
    zStackResolver = [sceneCopy zStackResolver];
    zStackResolver = v19->_zStackResolver;
    v19->_zStackResolver = zStackResolver;

    v22 = SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleAlert");
    v23 = off_27839E900;
    if (!v22)
    {
      v23 = off_2783A0F98;
    }

    v24 = [objc_alloc(*v23) initWithWindowScene:sceneCopy role:@"SBTraitsParticipantRoleAlert" debugName:@"SBAlertItemWindow" alertLayoutPresentationVerifier:verifierCopy];
    window = v19->_window;
    v19->_window = v24;

    [(SBWindow *)v19->_window setOpaque:0];
    v26 = v19->_window;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SBWindow *)v26 setBackgroundColor:clearColor];

    [(SBWindow *)v19->_window setWindowLevel:*MEMORY[0x277D772A8]];
    [(SBWindow *)v19->_window setHidden:1];
    objc_storeStrong(&v19->_alertLayoutPresentationVerifier, verifier);
    [verifierCopy setAlertItemWindow:v19->_window];
    [verifierCopy setAlertPresenter:v19];
    objc_storeStrong(&v19->_reachabilityManager, reachabilityManager);
    [(SBReachabilityManager *)v19->_reachabilityManager addObserver:v19];
    v28 = [SBBarSwipeAffordanceView alloc];
    [(SBWindow *)v19->_window bounds];
    v29 = [(SBBarSwipeAffordanceView *)v28 initWithFrame:managerCopy systemGestureManager:gesturesCopy enableGestures:?];
    [(SBBarSwipeAffordanceView *)v29 setAutoresizingMask:18];
    [(SBBarSwipeAffordanceView *)v29 setDelegate:v19];
    [(SBBarSwipeAffordanceView *)v29 setPointerClickDelegate:v19];
    [(SBBarSwipeAffordanceView *)v29 addObserver:v19];
    [(SBBarSwipeAffordanceView *)v29 setActive:0];
    [(SBBarSwipeAffordanceView *)v29 setUserInteractionEnabled:0];
    [(SBWindow *)v19->_window addSubview:v29];
    layer = [(SBBarSwipeAffordanceView *)v29 layer];
    [layer setZPosition:1.0];

    barSwipeView = v19->_barSwipeView;
    v19->_barSwipeView = v29;
    v32 = v29;

    v33 = [SBModalViewControllerStack alloc];
    rootViewController = [(SBWindow *)v19->_window rootViewController];
    v35 = [(SBModalViewControllerStack *)v33 initWithPresentingViewController:rootViewController];
    modalViewControllerStack = v19->_modalViewControllerStack;
    v19->_modalViewControllerStack = v35;

    [(SBModalViewControllerStack *)v19->_modalViewControllerStack setDelegate:v19];
  }

  return v19;
}

- (void)dealloc
{
  [(SBReachabilityManager *)self->_reachabilityManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBSharedModalAlertItemPresenter;
  [(SBSharedModalAlertItemPresenter *)&v3 dealloc];
}

- (void)invalidate
{
  v14 = *MEMORY[0x277D85DE8];
  viewControllers = [(SBModalViewControllerStack *)self->_modalViewControllerStack viewControllers];
  v3 = [viewControllers bs_map:&__block_literal_global_231];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) deactivateForReason:{4, v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)presentAlertItem:(id)item isLocked:(BOOL)locked animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  lockedCopy = locked;
  itemCopy = item;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  if (!itemCopy)
  {
    [SBSharedModalAlertItemPresenter presentAlertItem:a2 isLocked:self animated:? completion:?];
  }

  v13 = [itemCopy _prepareNewAlertControllerWithLockedState:lockedCopy requirePasscodeForActions:{-[SBFLockOutStatusProvider isLockedOut](self->_lockOutProvider, "isLockedOut")}];
  if (!v13)
  {
    [SBSharedModalAlertItemPresenter presentAlertItem:a2 isLocked:self animated:itemCopy completion:?];
  }

  [v13 setCoordinatedActionPerformingDelegate:self];
  modalViewControllerStack = self->_modalViewControllerStack;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__SBSharedModalAlertItemPresenter_presentAlertItem_isLocked_animated_completion___block_invoke;
  v16[3] = &unk_2783A9C70;
  v17 = completionCopy;
  v15 = completionCopy;
  [(SBModalViewControllerStack *)modalViewControllerStack addViewController:v13 animated:animatedCopy completion:v16];
}

uint64_t __81__SBSharedModalAlertItemPresenter_presentAlertItem_isLocked_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dismissAlertItem:(id)item animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  itemCopy = item;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  if (!itemCopy)
  {
    [SBSharedModalAlertItemPresenter dismissAlertItem:a2 animated:self completion:?];
  }

  _alertController = [itemCopy _alertController];
  if (!_alertController)
  {
    [SBSharedModalAlertItemPresenter dismissAlertItem:a2 animated:self completion:itemCopy];
  }

  modalViewControllerStack = self->_modalViewControllerStack;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__SBSharedModalAlertItemPresenter_dismissAlertItem_animated_completion___block_invoke;
  v15[3] = &unk_2783A9C98;
  v16 = itemCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = itemCopy;
  [(SBModalViewControllerStack *)modalViewControllerStack removeViewController:_alertController animated:animatedCopy completion:v15];
}

uint64_t __72__SBSharedModalAlertItemPresenter_dismissAlertItem_animated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) doCleanupAfterDeactivationAnimation];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)modalViewControllerStack:(id)stack willPresentViewController:(id)controller
{
  [(SBWindow *)self->_window setHidden:0, controller];
  [(SBFWindow *)self->_window makeKeyWindow];

  [(SBSharedModalAlertItemPresenter *)self _updateHomeGestureParticipant];
}

- (void)modalViewControllerStack:(id)stack didPresentViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setAlertControllerDelegate:self];
  alertItem = [controllerCopy alertItem];
  [alertItem _setPresented:1];
  [(SBSharedModalAlertItemPresenter *)self _updateBarSwipeViewWithAlertController:controllerCopy];

  [(SBAlertLayoutPresentationVerifier *)self->_alertLayoutPresentationVerifier scheduleAlertLayoutVerificationForReason:@"didPresent alertController"];
}

- (void)modalViewControllerStack:(id)stack willDismissViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  alertLayoutPresentationVerifier = self->_alertLayoutPresentationVerifier;
  stackCopy = stack;
  [(SBAlertLayoutPresentationVerifier *)alertLayoutPresentationVerifier scheduleAlertLayoutVerificationForReason:@"willDismiss alertController"];
  [controllerCopy setAlertControllerDelegate:0];
  [(SBSharedModalAlertItemPresenter *)self _updateHomeGestureParticipant];
  topViewController = [stackCopy topViewController];

  [(SBSharedModalAlertItemPresenter *)self _updateBarSwipeViewWithAlertController:topViewController];
  if (!topViewController && !animated)
  {
    [(SBFWindow *)self->_window resignAsKeyWindow];
    [(SBWindow *)self->_window setHidden:1];
  }
}

- (void)modalViewControllerStack:(id)stack didDismissViewController:(id)controller
{
  alertItem = [controller alertItem];
  [alertItem _setPresented:0];

  topViewController = [(SBModalViewControllerStack *)self->_modalViewControllerStack topViewController];

  if (!topViewController)
  {
    [(SBFWindow *)self->_window resignAsKeyWindow];
    [(SBWindow *)self->_window setHidden:1];

    [(SBSharedModalAlertItemPresenter *)self _updateHomeGestureParticipant];
  }
}

- (void)_performActionForAlertController:(id)controller invokeActionBlock:(id)block dismissControllerBlock:(id)controllerBlock
{
  if (block)
  {
    (*(block + 2))(block);
  }
}

- (void)alertControllerDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  viewControllers = [(SBModalViewControllerStack *)self->_modalViewControllerStack viewControllers];
  v6 = [viewControllers containsObject:disappearCopy];

  if (v6)
  {
    alertItem = [disappearCopy alertItem];
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBSharedModalAlertItemPresenter.m" lineNumber:384 description:{@"Unexpectedly dismissed alert controller (%@), please file a radar to PEP SpringBoard about this bad citizen: %@", disappearCopy, alertItem}];
  }
}

- (void)handleReachabilityYOffsetDidChange
{
  [(SBReachabilityManager *)self->_reachabilityManager effectiveReachabilityYOffset];
  window = self->_window;
  CGAffineTransformMakeTranslation(&v5, 0.0, v4 * -0.5);
  [(SBWindow *)window setTransform:&v5];
}

- (void)_updateHomeGestureParticipant
{
  topViewController = [(SBModalViewControllerStack *)self->_modalViewControllerStack topViewController];

  zStackParticipant = self->_zStackParticipant;
  if (topViewController)
  {
    v5 = zStackParticipant == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v7 = [(SBFZStackResolver *)self->_zStackResolver acquireParticipantWithIdentifier:24 delegate:self];
    v8 = self->_zStackParticipant;
    self->_zStackParticipant = v7;

    v9 = self->_zStackParticipant;

    [(SBSharedModalAlertItemPresenter *)self zStackParticipantDidChange:v9];
  }

  else
  {
    if (zStackParticipant)
    {
      v6 = topViewController == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      [(SBFZStackParticipant *)zStackParticipant invalidate];
      v10 = self->_zStackParticipant;
      self->_zStackParticipant = 0;
    }
  }
}

- (void)_updateBarSwipeViewWithAlertController:(id)controller
{
  controllerCopy = controller;
  barSwipeView = self->_barSwipeView;
  if (([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture]& 1) != 0)
  {
    alertItem = [controllerCopy alertItem];
    -[SBBarSwipeAffordanceView setActive:](barSwipeView, "setActive:", [alertItem allowMenuButtonDismissal]);
  }

  else
  {
    [(SBBarSwipeAffordanceView *)barSwipeView setActive:0];
  }
}

- (void)zStackParticipantDidChange:(id)change
{
  topViewController = [(SBModalViewControllerStack *)self->_modalViewControllerStack topViewController];
  [(SBSharedModalAlertItemPresenter *)self _updateBarSwipeViewWithAlertController:topViewController];
}

- (unint64_t)barSwipeAffordanceView:(id)view systemGestureTypeForType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_21F8A73B0[type - 1];
  }
}

- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)view
{
  currentlyPresentedAlertItem = [(SBSharedModalAlertItemPresenter *)self currentlyPresentedAlertItem];
  [currentlyPresentedAlertItem deactivate];
}

- (void)homeGrabberViewDidReceiveClick:(id)click
{
  clickCopy = click;
  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant)
  {
    v8 = clickCopy;
    ownsHomeGesture = [(SBFZStackParticipant *)zStackParticipant ownsHomeGesture];
    clickCopy = v8;
    if (ownsHomeGesture)
    {
      currentlyPresentedAlertItem = [(SBSharedModalAlertItemPresenter *)self currentlyPresentedAlertItem];
      [currentlyPresentedAlertItem deactivate];

      clickCopy = v8;
    }
  }
}

- (void)presentAlertItem:(uint64_t)a1 isLocked:(uint64_t)a2 animated:completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSharedModalAlertItemPresenter.m" lineNumber:266 description:{@"Invalid parameter not satisfying: %@", @"alertItem"}];
}

- (void)presentAlertItem:(uint64_t)a3 isLocked:animated:completion:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSharedModalAlertItemPresenter.m" lineNumber:270 description:{@"Attempt to present an alert item without an alertController - alertItem: %@", a3}];
}

- (void)dismissAlertItem:(uint64_t)a1 animated:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSharedModalAlertItemPresenter.m" lineNumber:283 description:{@"Invalid parameter not satisfying: %@", @"alertItem"}];
}

- (void)dismissAlertItem:(uint64_t)a1 animated:(uint64_t)a2 completion:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSharedModalAlertItemPresenter.m" lineNumber:287 description:{@"Attempting to dismiss an alert item without an alertController - alertItem: %@", a3}];
}

@end