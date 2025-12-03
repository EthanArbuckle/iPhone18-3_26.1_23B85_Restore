@interface _UIWaitingForRemoteViewContainerViewController
- (_UIWaitingForRemoteViewContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)stopSpinner;
- (void)viewWillLayoutSubviews;
@end

@implementation _UIWaitingForRemoteViewContainerViewController

- (_UIWaitingForRemoteViewContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v12.receiver = self;
  v12.super_class = _UIWaitingForRemoteViewContainerViewController;
  v4 = [(UIViewController *)&v12 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [(_UIWaitingForRemoteViewContainerViewController *)v4 setLoadingSpinner:v5];

    v6 = +[UIColor systemBackgroundColor];
    view = [(UIViewController *)v4 view];
    [view setBackgroundColor:v6];

    view2 = [(UIViewController *)v4 view];
    loadingSpinner = [(_UIWaitingForRemoteViewContainerViewController *)v4 loadingSpinner];
    [view2 addSubview:loadingSpinner];

    loadingSpinner2 = [(_UIWaitingForRemoteViewContainerViewController *)v4 loadingSpinner];
    [loadingSpinner2 startAnimating];

    [(UIViewController *)v4 setPreferredContentSize:0.0, 50.0];
  }

  return v4;
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = _UIWaitingForRemoteViewContainerViewController;
  [(UIViewController *)&v8 viewWillLayoutSubviews];
  view = [(UIViewController *)self view];
  [view bounds];
  v5 = v4 * 0.5;
  view2 = [(UIViewController *)self view];
  [view2 bounds];
  [(UIView *)self->_loadingSpinner setCenter:v5, v7 * 0.5];
}

- (void)stopSpinner
{
  loadingSpinner = [(_UIWaitingForRemoteViewContainerViewController *)self loadingSpinner];
  [loadingSpinner stopAnimating];
}

@end