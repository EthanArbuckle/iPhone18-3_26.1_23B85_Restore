@interface PKWrapperViewController
- (PKWrapperViewController)initWithWrappedViewController:(id)controller type:(int64_t)type;
- (int64_t)preferredUserInterfaceStyle;
- (void)_updatePreferredContentSize;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewWillLayoutSubviews;
@end

@implementation PKWrapperViewController

- (PKWrapperViewController)initWithWrappedViewController:(id)controller type:(int64_t)type
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = PKWrapperViewController;
  v8 = [(PKWrapperViewController *)&v13 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    preferredUserInterfaceStyle = [(PKWrapperViewController *)v8 preferredUserInterfaceStyle];
    objc_storeStrong(&v9->_wrappedViewController, controller);
    if (v9->_wrappedViewController)
    {
      [(PKWrapperViewController *)v9 addChildViewController:?];
      [(UIViewController *)v9->_wrappedViewController didMoveToParentViewController:v9];
      [(PKWrapperViewController *)v9 setNeedsStatusBarAppearanceUpdate];
      if (preferredUserInterfaceStyle != [(PKWrapperViewController *)v9 preferredUserInterfaceStyle])
      {
        [(PKWrapperViewController *)v9 setNeedsUserInterfaceAppearanceUpdate];
      }

      [(PKWrapperViewController *)v9 setNeedsUpdateOfHomeIndicatorAutoHidden];
      [(PKWrapperViewController *)v9 setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
      [(PKWrapperViewController *)v9 setNeedsWhitePointAdaptivityStyleUpdate];
      navigationItem = [(UIViewController *)v9->_wrappedViewController navigationItem];
      [(PKWrapperViewController *)v9 _setExistingNavigationItem:navigationItem];

      [(PKWrapperViewController *)v9 _updatePreferredContentSize];
    }
  }

  return v9;
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = PKWrapperViewController;
  [(PKWrapperViewController *)&v7 loadView];
  view = [(PKWrapperViewController *)self view];
  [view setAutoresizingMask:0];
  view2 = [(UIViewController *)self->_wrappedViewController view];
  v5 = view2;
  if (!self->_type)
  {
    [view2 setAutoresizingMask:0];
    backgroundColor = [v5 backgroundColor];
    [view setBackgroundColor:backgroundColor];

    [view setOpaque:{objc_msgSend(v5, "isOpaque")}];
  }

  [view addSubview:v5];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKWrapperViewController;
  [(PKWrapperViewController *)&v5 viewWillLayoutSubviews];
  if (!self->_type)
  {
    view = [(UIViewController *)self->_wrappedViewController view];
    view2 = [(PKWrapperViewController *)self view];
    [view2 bounds];
    [view setFrame:?];
  }
}

- (void)_updatePreferredContentSize
{
  [(UIViewController *)self->_wrappedViewController preferredContentSize];

  [(PKWrapperViewController *)self setPreferredContentSize:?];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v6.receiver = self;
  v6.super_class = PKWrapperViewController;
  containerCopy = container;
  [(PKWrapperViewController *)&v6 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  wrappedViewController = self->_wrappedViewController;

  if (wrappedViewController == containerCopy)
  {
    [(PKWrapperViewController *)self _updatePreferredContentSize:v6.receiver];
  }
}

- (int64_t)preferredUserInterfaceStyle
{
  if (self->_wrappedViewController)
  {
    wrappedViewController = self->_wrappedViewController;

    return [(UIViewController *)wrappedViewController preferredUserInterfaceStyle];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = PKWrapperViewController;
    return [(PKWrapperViewController *)&v6 preferredUserInterfaceStyle];
  }
}

@end