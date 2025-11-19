@interface _UICurrentContextPresentationController
- ($0AC6E346AE4835514AAA8AC86D8F4844)__sizeClassPair;
- (CGRect)frameOfPresentedViewInContainerView;
- (id)_firstCurrentContextChildInWindow;
- (void)transitionDidFinish:(BOOL)a3;
@end

@implementation _UICurrentContextPresentationController

- (CGRect)frameOfPresentedViewInContainerView
{
  v3 = [(UIPresentationController *)self presentingViewController];
  v4 = [v3 view];
  v5 = [v4 window];

  if (v5)
  {
    v6 = [(UIPresentationController *)self presentingViewController];
    v7 = [v6 view];
    [v7 frame];
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
  v2 = [(UIPresentationController *)self traitCollection];
  v3 = [v2 horizontalSizeClass];
  v4 = [v2 verticalSizeClass];

  v5 = v3;
  v6 = v4;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (id)_firstCurrentContextChildInWindow
{
  v3 = [(UIPresentationController *)self presentedViewController];
  v4 = [v3 _existingView];
  if (v4 && (v5 = v4, [v3 _existingView], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "window"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v7))
  {
    v8 = v3;
  }

  else
  {
    v9 = [(UIPresentationController *)self _childPresentationController];
    v8 = [v9 _firstCurrentContextChildInWindow];
  }

  return v8;
}

- (void)transitionDidFinish:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = _UICurrentContextPresentationController;
  [(UIPresentationController *)&v3 transitionDidFinish:a3];
}

@end