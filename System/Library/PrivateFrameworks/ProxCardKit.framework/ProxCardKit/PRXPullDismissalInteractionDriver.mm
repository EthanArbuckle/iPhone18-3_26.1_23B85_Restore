@interface PRXPullDismissalInteractionDriver
- (PRXPullDismissalInteractionDriver)initWithPresentedViewController:(id)controller scrollView:(id)view;
- (PRXPullDismissalScrollView)scrollView;
- (UIViewController)presentedViewController;
- (void)_finishPullToDismiss;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
@end

@implementation PRXPullDismissalInteractionDriver

- (PRXPullDismissalInteractionDriver)initWithPresentedViewController:(id)controller scrollView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = PRXPullDismissalInteractionDriver;
  v8 = [(PRXPullDismissalInteractionDriver *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presentedViewController, controllerCopy);
    v10 = objc_storeWeak(&v9->_scrollView, viewCopy);
    [viewCopy setDelegate:v9];

    v11 = v9;
  }

  return v9;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  if (!self->_interactiveTransition)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scrollView);
    allowsPullToDismiss = [WeakRetained allowsPullToDismiss];

    if (allowsPullToDismiss)
    {
      v6 = objc_alloc_init(PRXPurelyInteractiveTransition);
      interactiveTransition = self->_interactiveTransition;
      self->_interactiveTransition = v6;

      v9 = objc_loadWeakRetained(&self->_presentedViewController);
      presentingViewController = [v9 presentingViewController];
      [presentingViewController dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  interactiveTransition = self->_interactiveTransition;
  if (interactiveTransition)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scrollView);
    [WeakRetained dismissalPercent];
    [(UIPercentDrivenInteractiveTransition *)interactiveTransition updateInteractiveTransition:?];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(PRXPullDismissalInteractionDriver *)self _finishPullToDismiss];
  }
}

- (void)_finishPullToDismiss
{
  if (self->_interactiveTransition)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scrollView);
    [WeakRetained dismissalPercent];
    v5 = v4;

    interactiveTransition = self->_interactiveTransition;
    if (v5 >= 1.0)
    {
      [(PRXPurelyInteractiveTransition *)interactiveTransition finishInteractiveTransition];
    }

    else
    {
      [(PRXPurelyInteractiveTransition *)interactiveTransition cancelInteractiveTransition];
    }

    v7 = self->_interactiveTransition;
    self->_interactiveTransition = 0;
  }
}

- (PRXPullDismissalScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (UIViewController)presentedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedViewController);

  return WeakRetained;
}

@end