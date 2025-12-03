@interface PUInteractiveDismissalController
- (BOOL)canBeginDismissalAtLocationFromProvider:(id)provider;
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
- (void)endDismissal:(BOOL)dismissal;
- (void)invalidateDelegateData;
- (void)setDelegate:(id)delegate;
- (void)setDismissalInteractionProgress:(double)progress;
- (void)setIsHandlingDismissalInteraction:(BOOL)interaction;
- (void)updateDismissalWithInteractionProgress:(double)progress interactionWillFinish:(BOOL)finish;
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
  _interruptibleViewControllerTransition = [(PUInteractiveDismissalController *)self _interruptibleViewControllerTransition];

  if (!_interruptibleViewControllerTransition)
  {
    _viewController = [(PUInteractiveDismissalController *)self _viewController];
    pu_navigationTransition = [_viewController pu_navigationTransition];
    if (pu_navigationTransition || ([_viewController pu_modalTransition], (pu_navigationTransition = objc_claimAutoreleasedReturnValue()) != 0))
    {
      pu_modalTransition = pu_navigationTransition;
    }

    else
    {
      navigationController = [_viewController navigationController];
      pu_modalTransition = [navigationController pu_modalTransition];
    }

    if ([pu_modalTransition conformsToProtocol:&unk_1F2C96D38])
    {
      v6 = pu_modalTransition;
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
    _viewHostingGestureRecognizers = [(PUInteractiveDismissalController *)self _viewHostingGestureRecognizers];
    [(PUInteractiveDismissalController *)self updateGestureRecognizersWithHostingView:_viewHostingGestureRecognizers];
  }
}

- (void)_updateViewHostingGestureRecognizersIfNeeded
{
  _viewHostingGestureRecognizers = [(PUInteractiveDismissalController *)self _viewHostingGestureRecognizers];

  if (!_viewHostingGestureRecognizers)
  {
    delegate = [(PUInteractiveDismissalController *)self delegate];
    v5 = [delegate interactiveDismissalControllerViewHostingGestureRecognizers:self];

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
  _viewController = [(PUInteractiveDismissalController *)self _viewController];

  if (!_viewController)
  {
    delegate = [(PUInteractiveDismissalController *)self delegate];
    v5 = [delegate interactiveDismissalControllerViewController:self];

    [(PUInteractiveDismissalController *)self _setViewController:v5];
  }
}

- (void)_invalidateViewController
{
  [(PUInteractiveDismissalController *)self _setViewController:0];

  [(PUInteractiveDismissalController *)self _invalidateInterruptibleViewControllerTransition];
}

- (void)setDismissalInteractionProgress:(double)progress
{
  if (self->_dismissalInteractionProgress != progress)
  {
    self->_dismissalInteractionProgress = progress;
    delegate = [(PUInteractiveDismissalController *)self delegate];
    [delegate interactiveDismissalControllerChangedDismissalInteractionProgress:self];
  }
}

- (void)setIsHandlingDismissalInteraction:(BOOL)interaction
{
  if (self->_isHandlingDismissalInteraction != interaction)
  {
    self->_isHandlingDismissalInteraction = interaction;
    delegate = [(PUInteractiveDismissalController *)self delegate];
    [delegate interactiveDismissalControllerChangedIsHandlingDismissalInteraction:self];
  }
}

- (void)endDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  [(PUInteractiveDismissalController *)self setIsHandlingDismissalInteraction:0];
  _interruptibleViewControllerTransition = [(PUInteractiveDismissalController *)self _interruptibleViewControllerTransition];
  v8 = _interruptibleViewControllerTransition;
  if (!_interruptibleViewControllerTransition)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUInteractiveDismissalController.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"interruptibleViewControllerTransition != nil"}];

    _interruptibleViewControllerTransition = 0;
  }

  [_interruptibleViewControllerTransition resumeTransition:dismissalCopy];
  [(PUInteractiveDismissalController *)self setDismissalInteractionProgress:dismissalCopy];
  [(PUInteractiveDismissalController *)self _invalidateGestureRecognizers];
  [(PUInteractiveDismissalController *)self _updateIfNeeded];
}

- (void)updateDismissalWithInteractionProgress:(double)progress interactionWillFinish:(BOOL)finish
{
  finishCopy = finish;
  v8 = +[PUTilingViewSettings sharedInstance];
  transitionProgressBehavior = [v8 transitionProgressBehavior];

  if (transitionProgressBehavior == 2)
  {
    progressCopy = 1.0;
  }

  else
  {
    progressCopy = progress;
    if (transitionProgressBehavior == 1)
    {
      if (finishCopy)
      {
        progressCopy = 1.0;
      }

      else
      {
        progressCopy = 0.0;
      }
    }
  }

  [(PUInteractiveDismissalController *)self setDismissalInteractionProgress:progressCopy];
  _interruptibleViewControllerTransition = [(PUInteractiveDismissalController *)self _interruptibleViewControllerTransition];
  v13 = _interruptibleViewControllerTransition;
  if (!_interruptibleViewControllerTransition)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUInteractiveDismissalController.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"interruptibleViewControllerTransition != nil"}];

    _interruptibleViewControllerTransition = 0;
  }

  [_interruptibleViewControllerTransition updatePausedTransitionWithProgress:progressCopy interactionProgress:progress];
}

- (void)beginDismissal
{
  [(PUInteractiveDismissalController *)self setIsHandlingDismissalInteraction:1];
  _preferredDismissalTransitionType = [(PUInteractiveDismissalController *)self _preferredDismissalTransitionType];
  _viewController = [(PUInteractiveDismissalController *)self _viewController];
  v14 = _viewController;
  if (_preferredDismissalTransitionType == 2)
  {
    presentingViewController = [_viewController presentingViewController];
    if (!presentingViewController)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUInteractiveDismissalController.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"presentingViewController"}];
    }

    [presentingViewController pu_dismissViewControllerAnimated:1 interactive:1 completion:0];
  }

  else if (_preferredDismissalTransitionType == 1)
  {
    presentingViewController = [_viewController navigationController];
    if (!presentingViewController)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUInteractiveDismissalController.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"navigationController != nil"}];
    }

    [presentingViewController pu_popViewControllerAnimated:1 interactive:1];
  }

  else
  {
    if (_preferredDismissalTransitionType)
    {
      goto LABEL_12;
    }

    presentingViewController = [MEMORY[0x1E696AAA8] currentHandler];
    [presentingViewController handleFailureInMethod:a2 object:self file:@"PUInteractiveDismissalController.m" lineNumber:130 description:@"undefined transition type"];
  }

LABEL_12:
  _interruptibleViewControllerTransition = [(PUInteractiveDismissalController *)self _interruptibleViewControllerTransition];
  if (!_interruptibleViewControllerTransition)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUInteractiveDismissalController.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"interruptibleViewControllerTransition != nil"}];
  }

  if ([_interruptibleViewControllerTransition conformsToProtocol:&unk_1F2C96DD8])
  {
    v8 = _interruptibleViewControllerTransition;
    v9 = +[PUTilingViewSettings sharedInstance];
    transitionProgressBehavior = [v9 transitionProgressBehavior];

    [v8 pauseTransitionWithOptions:(transitionProgressBehavior - 1) < 2];
  }

  else
  {
    [_interruptibleViewControllerTransition pauseTransition];
  }
}

- (int64_t)_preferredDismissalTransitionType
{
  _viewController = [(PUInteractiveDismissalController *)self _viewController];
  navigationController = [_viewController navigationController];
  topViewController = [navigationController topViewController];
  pu_currentNavigationTransition = [navigationController pu_currentNavigationTransition];
  v6 = pu_currentNavigationTransition;
  v7 = 0;
  if (navigationController && _viewController == topViewController && !pu_currentNavigationTransition)
  {
    viewControllers = [navigationController viewControllers];
    v7 = [viewControllers count] > 1;
  }

  presentingViewController = [_viewController presentingViewController];
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (presentingViewController != 0);
  }

  return v10;
}

- (BOOL)canBeginDismissalAtLocationFromProvider:(id)provider
{
  providerCopy = provider;
  if ([(PUInteractiveDismissalController *)self _preferredDismissalTransitionType]&& ([(PUInteractiveDismissalController *)self _interruptibleViewControllerTransition], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    delegate = [(PUInteractiveDismissalController *)self delegate];
    v7 = [delegate interactiveDismissalController:self canBeginDismissalAtLocationFromProvider:providerCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PUTilingViewControllerTransition)tilingViewControllerTransition
{
  _interruptibleViewControllerTransition = [(PUInteractiveDismissalController *)self _interruptibleViewControllerTransition];
  if (([_interruptibleViewControllerTransition conformsToProtocol:&unk_1F2C96DD8] & 1) == 0)
  {

    _interruptibleViewControllerTransition = 0;
  }

  return _interruptibleViewControllerTransition;
}

- (PUTileController)designatedTileController
{
  delegate = [(PUInteractiveDismissalController *)self delegate];
  v4 = [delegate interactiveDismissalControllerDesignatedTileController:self];

  return v4;
}

- (PUTilingView)tilingView
{
  delegate = [(PUInteractiveDismissalController *)self delegate];
  v4 = [delegate interactiveDismissalControllerTilingView:self];

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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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