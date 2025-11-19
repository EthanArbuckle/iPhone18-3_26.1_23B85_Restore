@interface PREditorRemoteViewPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (void)containerViewDidLayoutSubviews;
@end

@implementation PREditorRemoteViewPresentationController

- (CGRect)frameOfPresentedViewInContainerView
{
  v3 = [(PREditorRemoteViewPresentationController *)self presentedViewController];
  [v3 preferredContentSize];
  if (v5 >= 50.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 50.0;
  }

  if (v4 >= 400.0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 400.0;
  }

  v8 = [(PREditorRemoteViewPresentationController *)self presentingViewController];
  v9 = [v8 view];
  [v9 bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v14 = CGRectGetMidX(v20) + v7 * -0.5;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v15 = CGRectGetMaxY(v21) - v6;

  v16 = v14;
  v17 = v15;
  v18 = v7;
  v19 = v6;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)containerViewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PREditorRemoteViewPresentationController;
  [(PREditorRemoteViewPresentationController *)&v4 containerViewDidLayoutSubviews];
  v3 = [(PREditorRemoteViewPresentationController *)self presentedView];
  [(PREditorRemoteViewPresentationController *)self frameOfPresentedViewInContainerView];
  [v3 setFrame:?];
}

@end