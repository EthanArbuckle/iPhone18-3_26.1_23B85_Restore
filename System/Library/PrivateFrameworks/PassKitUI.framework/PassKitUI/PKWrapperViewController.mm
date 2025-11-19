@interface PKWrapperViewController
- (PKWrapperViewController)initWithWrappedViewController:(id)a3 type:(int64_t)a4;
- (int64_t)preferredUserInterfaceStyle;
- (void)_updatePreferredContentSize;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKWrapperViewController

- (PKWrapperViewController)initWithWrappedViewController:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = PKWrapperViewController;
  v8 = [(PKWrapperViewController *)&v13 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v8->_type = a4;
    v10 = [(PKWrapperViewController *)v8 preferredUserInterfaceStyle];
    objc_storeStrong(&v9->_wrappedViewController, a3);
    if (v9->_wrappedViewController)
    {
      [(PKWrapperViewController *)v9 addChildViewController:?];
      [(UIViewController *)v9->_wrappedViewController didMoveToParentViewController:v9];
      [(PKWrapperViewController *)v9 setNeedsStatusBarAppearanceUpdate];
      if (v10 != [(PKWrapperViewController *)v9 preferredUserInterfaceStyle])
      {
        [(PKWrapperViewController *)v9 setNeedsUserInterfaceAppearanceUpdate];
      }

      [(PKWrapperViewController *)v9 setNeedsUpdateOfHomeIndicatorAutoHidden];
      [(PKWrapperViewController *)v9 setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
      [(PKWrapperViewController *)v9 setNeedsWhitePointAdaptivityStyleUpdate];
      v11 = [(UIViewController *)v9->_wrappedViewController navigationItem];
      [(PKWrapperViewController *)v9 _setExistingNavigationItem:v11];

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
  v3 = [(PKWrapperViewController *)self view];
  [v3 setAutoresizingMask:0];
  v4 = [(UIViewController *)self->_wrappedViewController view];
  v5 = v4;
  if (!self->_type)
  {
    [v4 setAutoresizingMask:0];
    v6 = [v5 backgroundColor];
    [v3 setBackgroundColor:v6];

    [v3 setOpaque:{objc_msgSend(v5, "isOpaque")}];
  }

  [v3 addSubview:v5];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKWrapperViewController;
  [(PKWrapperViewController *)&v5 viewWillLayoutSubviews];
  if (!self->_type)
  {
    v3 = [(UIViewController *)self->_wrappedViewController view];
    v4 = [(PKWrapperViewController *)self view];
    [v4 bounds];
    [v3 setFrame:?];
  }
}

- (void)_updatePreferredContentSize
{
  [(UIViewController *)self->_wrappedViewController preferredContentSize];

  [(PKWrapperViewController *)self setPreferredContentSize:?];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKWrapperViewController;
  v4 = a3;
  [(PKWrapperViewController *)&v6 preferredContentSizeDidChangeForChildContentContainer:v4];
  wrappedViewController = self->_wrappedViewController;

  if (wrappedViewController == v4)
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