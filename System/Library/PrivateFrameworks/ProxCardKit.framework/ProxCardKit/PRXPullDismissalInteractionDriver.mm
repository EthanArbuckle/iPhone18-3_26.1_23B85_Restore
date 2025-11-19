@interface PRXPullDismissalInteractionDriver
- (PRXPullDismissalInteractionDriver)initWithPresentedViewController:(id)a3 scrollView:(id)a4;
- (PRXPullDismissalScrollView)scrollView;
- (UIViewController)presentedViewController;
- (void)_finishPullToDismiss;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
@end

@implementation PRXPullDismissalInteractionDriver

- (PRXPullDismissalInteractionDriver)initWithPresentedViewController:(id)a3 scrollView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PRXPullDismissalInteractionDriver;
  v8 = [(PRXPullDismissalInteractionDriver *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presentedViewController, v6);
    v10 = objc_storeWeak(&v9->_scrollView, v7);
    [v7 setDelegate:v9];

    v11 = v9;
  }

  return v9;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  if (!self->_interactiveTransition)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scrollView);
    v5 = [WeakRetained allowsPullToDismiss];

    if (v5)
    {
      v6 = objc_alloc_init(PRXPurelyInteractiveTransition);
      interactiveTransition = self->_interactiveTransition;
      self->_interactiveTransition = v6;

      v9 = objc_loadWeakRetained(&self->_presentedViewController);
      v8 = [v9 presentingViewController];
      [v8 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  interactiveTransition = self->_interactiveTransition;
  if (interactiveTransition)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scrollView);
    [WeakRetained dismissalPercent];
    [(UIPercentDrivenInteractiveTransition *)interactiveTransition updateInteractiveTransition:?];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
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