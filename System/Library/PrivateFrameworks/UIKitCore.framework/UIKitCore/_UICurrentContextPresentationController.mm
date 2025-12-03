@interface _UICurrentContextPresentationController
- ($0AC6E346AE4835514AAA8AC86D8F4844)__sizeClassPair;
- (CGRect)frameOfPresentedViewInContainerView;
- (id)_firstCurrentContextChildInWindow;
- (void)transitionDidFinish:(BOOL)finish;
@end

@implementation _UICurrentContextPresentationController

- (CGRect)frameOfPresentedViewInContainerView
{
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  view = [presentingViewController view];
  window = [view window];

  if (window)
  {
    presentingViewController2 = [(UIPresentationController *)self presentingViewController];
    view2 = [presentingViewController2 view];
    [view2 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = _UICurrentContextPresentationController;
    [(UIPresentationController *)&v24 frameOfPresentedViewInContainerView];
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v15 = v19;
  }

  v20 = v9;
  v21 = v11;
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)__sizeClassPair
{
  traitCollection = [(UIPresentationController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  verticalSizeClass = [traitCollection verticalSizeClass];

  v5 = horizontalSizeClass;
  v6 = verticalSizeClass;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (id)_firstCurrentContextChildInWindow
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  _existingView = [presentedViewController _existingView];
  if (_existingView && (v5 = _existingView, [presentedViewController _existingView], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "window"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v7))
  {
    _firstCurrentContextChildInWindow = presentedViewController;
  }

  else
  {
    _childPresentationController = [(UIPresentationController *)self _childPresentationController];
    _firstCurrentContextChildInWindow = [_childPresentationController _firstCurrentContextChildInWindow];
  }

  return _firstCurrentContextChildInWindow;
}

- (void)transitionDidFinish:(BOOL)finish
{
  v3.receiver = self;
  v3.super_class = _UICurrentContextPresentationController;
  [(UIPresentationController *)&v3 transitionDidFinish:finish];
}

@end