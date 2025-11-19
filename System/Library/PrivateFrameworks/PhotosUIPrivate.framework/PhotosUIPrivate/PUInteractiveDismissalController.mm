@interface PUInteractiveDismissalController
- (BOOL)canBeginDismissalAtLocationFromProvider:(id)a3;
- (PUInteractiveDismissalControllerDelegate)delegate;
- (PUTileController)designatedTileController;
- (PUTilingView)tilingView;
- (PUTilingViewControllerTransition)tilingViewControllerTransition;
- (UIViewController)_viewController;
- (int64_t)_preferredDismissalTransitionType;
- (void)_invalidateViewController;
- (void)_invalidateViewHostingGestureRecognizers;
- (void)_updateGestureRecognizersIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateInterruptibleViewControllerTransitionIfNeeded;
- (void)_updateViewControllerIfNeeded;
- (void)_updateViewHostingGestureRecognizersIfNeeded;
- (void)beginDismissal;
- (void)endDismissal:(BOOL)a3;
- (void)invalidateDelegateData;
- (void)setDelegate:(id)a3;
- (void)setDismissalInteractionProgress:(double)a3;
- (void)setIsHandlingDismissalInteraction:(BOOL)a3;
- (void)updateDismissalWithInteractionProgress:(double)a3 interactionWillFinish:(BOOL)a4;
@end

@implementation PUInteractiveDismissalController

- (UIViewController)_viewController
{
  WeakRetained = objc_loadWeakRetained(&self->__viewController);

  return WeakRetained;
}

- (PUInteractiveDismissalControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateInterruptibleViewControllerTransitionIfNeeded
{
  v3 = [(PUInteractiveDismissalController *)self _interruptibleViewControllerTransition];

  if (!v3)
  {
    v8 = [(PUInteractiveDismissalController *)self _viewController];
    v4 = [v8 pu_navigationTransition];
    if (v4 || ([v8 pu_modalTransition], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
    }

    else
    {
      v7 = [v8 navigationController];
      v5 = [v7 pu_modalTransition];
    }

    if ([v5 conformsToProtocol:&unk_1F2C96D38])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    [(PUInteractiveDismissalController *)self _setInterruptibleViewControllerTransition:v6];
  }
}

- (void)_updateGestureRecognizersIfNeeded
{
  if ([(PUInteractiveDismissalController *)self _needsUpdateGestureRecognizers])
  {
    [(PUInteractiveDismissalController *)self _setNeedsUpdateGestureRecognizers:0];
    v3 = [(PUInteractiveDismissalController *)self _viewHostingGestureRecognizers];
    [(PUInteractiveDismissalController *)self updateGestureRecognizersWithHostingView:v3];
  }
}

- (void)_updateViewHostingGestureRecognizersIfNeeded
{
  v3 = [(PUInteractiveDismissalController *)self _viewHostingGestureRecognizers];

  if (!v3)
  {
    v4 = [(PUInteractiveDismissalController *)self delegate];
    v5 = [v4 interactiveDismissalControllerViewHostingGestureRecognizers:self];

    [(PUInteractiveDismissalController *)self _setViewHostingGestureRecognizers:v5];
  }
}

- (void)_invalidateViewHostingGestureRecognizers
{
  [(PUInteractiveDismissalController *)self _setViewHostingGestureRecognizers:0];

  [(PUInteractiveDismissalController *)self _invalidateGestureRecognizers];
}

- (void)_updateViewControllerIfNeeded
{
  v3 = [(PUInteractiveDismissalController *)self _viewController];

  if (!v3)
  {
    v4 = [(PUInteractiveDismissalController *)self delegate];
    v5 = [v4 interactiveDismissalControllerViewController:self];

    [(PUInteractiveDismissalController *)self _setViewController:v5];
  }
}

- (void)_invalidateViewController
{
  [(PUInteractiveDismissalController *)self _setViewController:0];

  [(PUInteractiveDismissalController *)self _invalidateInterruptibleViewControllerTransition];
}

- (void)setDismissalInteractionProgress:(double)a3
{
  if (self->_dismissalInteractionProgress != a3)
  {
    self->_dismissalInteractionProgress = a3;
    v5 = [(PUInteractiveDismissalController *)self delegate];
    [v5 interactiveDismissalControllerChangedDismissalInteractionProgress:self];
  }
}

- (void)setIsHandlingDismissalInteraction:(BOOL)a3
{
  if (self->_isHandlingDismissalInteraction != a3)
  {
    self->_isHandlingDismissalInteraction = a3;
    v5 = [(PUInteractiveDismissalController *)self delegate];
    [v5 interactiveDismissalControllerChangedIsHandlingDismissalInteraction:self];
  }
}

- (void)endDismissal:(BOOL)a3
{
  v3 = a3;
  [(PUInteractiveDismissalController *)self setIsHandlingDismissalInteraction:0];
  v6 = [(PUInteractiveDismissalController *)self _interruptibleViewControllerTransition];
  v8 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUInteractiveDismissalController.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"interruptibleViewControllerTransition != nil"}];

    v6 = 0;
  }

  [v6 resumeTransition:v3];
  [(PUInteractiveDismissalController *)self setDismissalInteractionProgress:v3];
  [(PUInteractiveDismissalController *)self _invalidateGestureRecognizers];
  [(PUInteractiveDismissalController *)self _updateIfNeeded];
}

- (void)updateDismissalWithInteractionProgress:(double)a3 interactionWillFinish:(BOOL)a4
{
  v4 = a4;
  v8 = +[PUTilingViewSettings sharedInstance];
  v9 = [v8 transitionProgressBehavior];

  if (v9 == 2)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = a3;
    if (v9 == 1)
    {
      if (v4)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }
    }
  }

  [(PUInteractiveDismissalController *)self setDismissalInteractionProgress:v10];
  v11 = [(PUInteractiveDismissalController *)self _interruptibleViewControllerTransition];
  v13 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUInteractiveDismissalController.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"interruptibleViewControllerTransition != nil"}];

    v11 = 0;
  }

  [v11 updatePausedTransitionWithProgress:v10 interactionProgress:a3];
}

- (void)beginDismissal
{
  [(PUInteractiveDismissalController *)self setIsHandlingDismissalInteraction:1];
  v4 = [(PUInteractiveDismissalController *)self _preferredDismissalTransitionType];
  v5 = [(PUInteractiveDismissalController *)self _viewController];
  v14 = v5;
  if (v4 == 2)
  {
    v6 = [v5 presentingViewController];
    if (!v6)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PUInteractiveDismissalController.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"presentingViewController"}];
    }

    [v6 pu_dismissViewControllerAnimated:1 interactive:1 completion:0];
  }

  else if (v4 == 1)
  {
    v6 = [v5 navigationController];
    if (!v6)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PUInteractiveDismissalController.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"navigationController != nil"}];
    }

    [v6 pu_popViewControllerAnimated:1 interactive:1];
  }

  else
  {
    if (v4)
    {
      goto LABEL_12;
    }

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUInteractiveDismissalController.m" lineNumber:130 description:@"undefined transition type"];
  }

LABEL_12:
  v7 = [(PUInteractiveDismissalController *)self _interruptibleViewControllerTransition];
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUInteractiveDismissalController.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"interruptibleViewControllerTransition != nil"}];
  }

  if ([v7 conformsToProtocol:&unk_1F2C96DD8])
  {
    v8 = v7;
    v9 = +[PUTilingViewSettings sharedInstance];
    v10 = [v9 transitionProgressBehavior];

    [v8 pauseTransitionWithOptions:(v10 - 1) < 2];
  }

  else
  {
    [v7 pauseTransition];
  }
}

- (int64_t)_preferredDismissalTransitionType
{
  v2 = [(PUInteractiveDismissalController *)self _viewController];
  v3 = [v2 navigationController];
  v4 = [v3 topViewController];
  v5 = [v3 pu_currentNavigationTransition];
  v6 = v5;
  v7 = 0;
  if (v3 && v2 == v4 && !v5)
  {
    v8 = [v3 viewControllers];
    v7 = [v8 count] > 1;
  }

  v9 = [v2 presentingViewController];
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (v9 != 0);
  }

  return v10;
}

- (BOOL)canBeginDismissalAtLocationFromProvider:(id)a3
{
  v4 = a3;
  if ([(PUInteractiveDismissalController *)self _preferredDismissalTransitionType]&& ([(PUInteractiveDismissalController *)self _interruptibleViewControllerTransition], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(PUInteractiveDismissalController *)self delegate];
    v7 = [v6 interactiveDismissalController:self canBeginDismissalAtLocationFromProvider:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PUTilingViewControllerTransition)tilingViewControllerTransition
{
  v2 = [(PUInteractiveDismissalController *)self _interruptibleViewControllerTransition];
  if (([v2 conformsToProtocol:&unk_1F2C96DD8] & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (PUTileController)designatedTileController
{
  v3 = [(PUInteractiveDismissalController *)self delegate];
  v4 = [v3 interactiveDismissalControllerDesignatedTileController:self];

  return v4;
}

- (PUTilingView)tilingView
{
  v3 = [(PUInteractiveDismissalController *)self delegate];
  v4 = [v3 interactiveDismissalControllerTilingView:self];

  return v4;
}

- (void)_updateIfNeeded
{
  [(PUInteractiveDismissalController *)self _updateViewControllerIfNeeded];
  [(PUInteractiveDismissalController *)self _updateViewHostingGestureRecognizersIfNeeded];
  [(PUInteractiveDismissalController *)self _updateGestureRecognizersIfNeeded];

  [(PUInteractiveDismissalController *)self _updateInterruptibleViewControllerTransitionIfNeeded];
}

- (void)invalidateDelegateData
{
  [(PUInteractiveDismissalController *)self _invalidateViewController];
  [(PUInteractiveDismissalController *)self _invalidateViewHostingGestureRecognizers];

  [(PUInteractiveDismissalController *)self _updateIfNeeded];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(PUInteractiveDismissalController *)self _invalidateViewController];
    [(PUInteractiveDismissalController *)self _invalidateViewHostingGestureRecognizers];
    v5 = obj;
  }
}

@end