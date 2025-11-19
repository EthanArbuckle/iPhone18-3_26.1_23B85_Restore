@interface SBSharedModalAlertItemPresenter
- (SBAlertItem)currentlyPresentedAlertItem;
- (SBSharedModalAlertItemPresenter)initWithLockOutProvider:(id)a3 systemGestureManager:(id)a4 reachabilityManager:(id)a5 alertLayoutPresentationVerifier:(id)a6 windowScene:(id)a7 enableGestures:(BOOL)a8;
- (unint64_t)barSwipeAffordanceView:(id)a3 systemGestureTypeForType:(int64_t)a4;
- (void)_performActionForAlertController:(id)a3 invokeActionBlock:(id)a4 dismissControllerBlock:(id)a5;
- (void)_updateBarSwipeViewWithAlertController:(id)a3;
- (void)_updateHomeGestureParticipant;
- (void)alertControllerDidDisappear:(id)a3;
- (void)dealloc;
- (void)dismissAlertItem:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)handleReachabilityYOffsetDidChange;
- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)a3;
- (void)homeGrabberViewDidReceiveClick:(id)a3;
- (void)invalidate;
- (void)modalViewControllerStack:(id)a3 didDismissViewController:(id)a4;
- (void)modalViewControllerStack:(id)a3 didPresentViewController:(id)a4;
- (void)modalViewControllerStack:(id)a3 willDismissViewController:(id)a4 animated:(BOOL)a5;
- (void)modalViewControllerStack:(id)a3 willPresentViewController:(id)a4;
- (void)presentAlertItem:(id)a3 isLocked:(BOOL)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)zStackParticipantDidChange:(id)a3;
@end

@implementation SBSharedModalAlertItemPresenter

- (SBAlertItem)currentlyPresentedAlertItem
{
  v2 = [(SBModalViewControllerStack *)self->_modalViewControllerStack topViewController];
  v3 = [v2 alertItem];

  return v3;
}

- (SBSharedModalAlertItemPresenter)initWithLockOutProvider:(id)a3 systemGestureManager:(id)a4 reachabilityManager:(id)a5 alertLayoutPresentationVerifier:(id)a6 windowScene:(id)a7 enableGestures:(BOOL)a8
{
  v8 = a8;
  v39 = a3;
  v15 = a4;
  v38 = a5;
  v16 = a6;
  v17 = a7;
  v40.receiver = self;
  v40.super_class = SBSharedModalAlertItemPresenter;
  v18 = [(SBSharedModalAlertItemPresenter *)&v40 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_lockOutProvider, a3);
    objc_storeStrong(&v19->_systemGestureManager, a4);
    v20 = [v17 zStackResolver];
    zStackResolver = v19->_zStackResolver;
    v19->_zStackResolver = v20;

    v22 = SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleAlert");
    v23 = off_27839E900;
    if (!v22)
    {
      v23 = off_2783A0F98;
    }

    v24 = [objc_alloc(*v23) initWithWindowScene:v17 role:@"SBTraitsParticipantRoleAlert" debugName:@"SBAlertItemWindow" alertLayoutPresentationVerifier:v16];
    window = v19->_window;
    v19->_window = v24;

    [(SBWindow *)v19->_window setOpaque:0];
    v26 = v19->_window;
    v27 = [MEMORY[0x277D75348] clearColor];
    [(SBWindow *)v26 setBackgroundColor:v27];

    [(SBWindow *)v19->_window setWindowLevel:*MEMORY[0x277D772A8]];
    [(SBWindow *)v19->_window setHidden:1];
    objc_storeStrong(&v19->_alertLayoutPresentationVerifier, a6);
    [v16 setAlertItemWindow:v19->_window];
    [v16 setAlertPresenter:v19];
    objc_storeStrong(&v19->_reachabilityManager, a5);
    [(SBReachabilityManager *)v19->_reachabilityManager addObserver:v19];
    v28 = [SBBarSwipeAffordanceView alloc];
    [(SBWindow *)v19->_window bounds];
    v29 = [(SBBarSwipeAffordanceView *)v28 initWithFrame:v15 systemGestureManager:v8 enableGestures:?];
    [(SBBarSwipeAffordanceView *)v29 setAutoresizingMask:18];
    [(SBBarSwipeAffordanceView *)v29 setDelegate:v19];
    [(SBBarSwipeAffordanceView *)v29 setPointerClickDelegate:v19];
    [(SBBarSwipeAffordanceView *)v29 addObserver:v19];
    [(SBBarSwipeAffordanceView *)v29 setActive:0];
    [(SBBarSwipeAffordanceView *)v29 setUserInteractionEnabled:0];
    [(SBWindow *)v19->_window addSubview:v29];
    v30 = [(SBBarSwipeAffordanceView *)v29 layer];
    [v30 setZPosition:1.0];

    barSwipeView = v19->_barSwipeView;
    v19->_barSwipeView = v29;
    v32 = v29;

    v33 = [SBModalViewControllerStack alloc];
    v34 = [(SBWindow *)v19->_window rootViewController];
    v35 = [(SBModalViewControllerStack *)v33 initWithPresentingViewController:v34];
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
  v2 = [(SBModalViewControllerStack *)self->_modalViewControllerStack viewControllers];
  v3 = [v2 bs_map:&__block_literal_global_231];

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

- (void)presentAlertItem:(id)a3 isLocked:(BOOL)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v8 = a4;
  v11 = a3;
  v12 = a6;
  BSDispatchQueueAssertMain();
  if (!v11)
  {
    [SBSharedModalAlertItemPresenter presentAlertItem:a2 isLocked:self animated:? completion:?];
  }

  v13 = [v11 _prepareNewAlertControllerWithLockedState:v8 requirePasscodeForActions:{-[SBFLockOutStatusProvider isLockedOut](self->_lockOutProvider, "isLockedOut")}];
  if (!v13)
  {
    [SBSharedModalAlertItemPresenter presentAlertItem:a2 isLocked:self animated:v11 completion:?];
  }

  [v13 setCoordinatedActionPerformingDelegate:self];
  modalViewControllerStack = self->_modalViewControllerStack;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__SBSharedModalAlertItemPresenter_presentAlertItem_isLocked_animated_completion___block_invoke;
  v16[3] = &unk_2783A9C70;
  v17 = v12;
  v15 = v12;
  [(SBModalViewControllerStack *)modalViewControllerStack addViewController:v13 animated:v7 completion:v16];
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

- (void)dismissAlertItem:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  BSDispatchQueueAssertMain();
  if (!v9)
  {
    [SBSharedModalAlertItemPresenter dismissAlertItem:a2 animated:self completion:?];
  }

  v11 = [v9 _alertController];
  if (!v11)
  {
    [SBSharedModalAlertItemPresenter dismissAlertItem:a2 animated:self completion:v9];
  }

  modalViewControllerStack = self->_modalViewControllerStack;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__SBSharedModalAlertItemPresenter_dismissAlertItem_animated_completion___block_invoke;
  v15[3] = &unk_2783A9C98;
  v16 = v9;
  v17 = v10;
  v13 = v10;
  v14 = v9;
  [(SBModalViewControllerStack *)modalViewControllerStack removeViewController:v11 animated:v6 completion:v15];
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

- (void)modalViewControllerStack:(id)a3 willPresentViewController:(id)a4
{
  [(SBWindow *)self->_window setHidden:0, a4];
  [(SBFWindow *)self->_window makeKeyWindow];

  [(SBSharedModalAlertItemPresenter *)self _updateHomeGestureParticipant];
}

- (void)modalViewControllerStack:(id)a3 didPresentViewController:(id)a4
{
  v5 = a4;
  [v5 setAlertControllerDelegate:self];
  v6 = [v5 alertItem];
  [v6 _setPresented:1];
  [(SBSharedModalAlertItemPresenter *)self _updateBarSwipeViewWithAlertController:v5];

  [(SBAlertLayoutPresentationVerifier *)self->_alertLayoutPresentationVerifier scheduleAlertLayoutVerificationForReason:@"didPresent alertController"];
}

- (void)modalViewControllerStack:(id)a3 willDismissViewController:(id)a4 animated:(BOOL)a5
{
  v11 = a4;
  alertLayoutPresentationVerifier = self->_alertLayoutPresentationVerifier;
  v9 = a3;
  [(SBAlertLayoutPresentationVerifier *)alertLayoutPresentationVerifier scheduleAlertLayoutVerificationForReason:@"willDismiss alertController"];
  [v11 setAlertControllerDelegate:0];
  [(SBSharedModalAlertItemPresenter *)self _updateHomeGestureParticipant];
  v10 = [v9 topViewController];

  [(SBSharedModalAlertItemPresenter *)self _updateBarSwipeViewWithAlertController:v10];
  if (!v10 && !a5)
  {
    [(SBFWindow *)self->_window resignAsKeyWindow];
    [(SBWindow *)self->_window setHidden:1];
  }
}

- (void)modalViewControllerStack:(id)a3 didDismissViewController:(id)a4
{
  v5 = [a4 alertItem];
  [v5 _setPresented:0];

  v6 = [(SBModalViewControllerStack *)self->_modalViewControllerStack topViewController];

  if (!v6)
  {
    [(SBFWindow *)self->_window resignAsKeyWindow];
    [(SBWindow *)self->_window setHidden:1];

    [(SBSharedModalAlertItemPresenter *)self _updateHomeGestureParticipant];
  }
}

- (void)_performActionForAlertController:(id)a3 invokeActionBlock:(id)a4 dismissControllerBlock:(id)a5
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)alertControllerDidDisappear:(id)a3
{
  v9 = a3;
  v5 = [(SBModalViewControllerStack *)self->_modalViewControllerStack viewControllers];
  v6 = [v5 containsObject:v9];

  if (v6)
  {
    v7 = [v9 alertItem];
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SBSharedModalAlertItemPresenter.m" lineNumber:384 description:{@"Unexpectedly dismissed alert controller (%@), please file a radar to PEP SpringBoard about this bad citizen: %@", v9, v7}];
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
  v3 = [(SBModalViewControllerStack *)self->_modalViewControllerStack topViewController];

  zStackParticipant = self->_zStackParticipant;
  if (v3)
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
      v6 = v3 == 0;
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

- (void)_updateBarSwipeViewWithAlertController:(id)a3
{
  v6 = a3;
  barSwipeView = self->_barSwipeView;
  if (([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture]& 1) != 0)
  {
    v5 = [v6 alertItem];
    -[SBBarSwipeAffordanceView setActive:](barSwipeView, "setActive:", [v5 allowMenuButtonDismissal]);
  }

  else
  {
    [(SBBarSwipeAffordanceView *)barSwipeView setActive:0];
  }
}

- (void)zStackParticipantDidChange:(id)a3
{
  v4 = [(SBModalViewControllerStack *)self->_modalViewControllerStack topViewController];
  [(SBSharedModalAlertItemPresenter *)self _updateBarSwipeViewWithAlertController:v4];
}

- (unint64_t)barSwipeAffordanceView:(id)a3 systemGestureTypeForType:(int64_t)a4
{
  if ((a4 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_21F8A73B0[a4 - 1];
  }
}

- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)a3
{
  v3 = [(SBSharedModalAlertItemPresenter *)self currentlyPresentedAlertItem];
  [v3 deactivate];
}

- (void)homeGrabberViewDidReceiveClick:(id)a3
{
  v4 = a3;
  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant)
  {
    v8 = v4;
    v6 = [(SBFZStackParticipant *)zStackParticipant ownsHomeGesture];
    v4 = v8;
    if (v6)
    {
      v7 = [(SBSharedModalAlertItemPresenter *)self currentlyPresentedAlertItem];
      [v7 deactivate];

      v4 = v8;
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