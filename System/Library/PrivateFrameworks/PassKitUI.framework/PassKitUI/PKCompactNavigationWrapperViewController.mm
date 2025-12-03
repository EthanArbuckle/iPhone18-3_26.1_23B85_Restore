@interface PKCompactNavigationWrapperViewController
- (CGRect)_wrappedViewControllerFrameForBounds:(CGRect)bounds navigationBarHeight:(double)height;
- (PKCompactNavigationWrapperViewController)initWithWrappedViewController:(id)controller parentNavigationController:(id)navigationController;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)setTargetNavigationHeight:(double)height;
- (void)viewDidLayoutSubviews;
- (void)viewWillLayoutSubviews;
@end

@implementation PKCompactNavigationWrapperViewController

- (PKCompactNavigationWrapperViewController)initWithWrappedViewController:(id)controller parentNavigationController:(id)navigationController
{
  navigationControllerCopy = navigationController;
  v10.receiver = self;
  v10.super_class = PKCompactNavigationWrapperViewController;
  v7 = [(PKWrapperViewController *)&v10 initWithWrappedViewController:controller type:1];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_parentNavigationController, navigationControllerCopy);
    v8->_needsInitialLayout = 1;
  }

  return v8;
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = PKCompactNavigationWrapperViewController;
  [(PKWrapperViewController *)&v7 loadView];
  view = [(PKCompactNavigationWrapperViewController *)self view];
  [view setAutoresizesSubviews:0];

  wrappedViewController = [(PKWrapperViewController *)self wrappedViewController];
  view2 = [wrappedViewController view];
  layer = [view2 layer];
  [layer setAnchorPoint:{0.5, 0.0}];
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  controllerCopy = controller;
  wrappedViewController = [(PKWrapperViewController *)self wrappedViewController];
  v8 = wrappedViewController;
  if (wrappedViewController != controllerCopy)
  {

LABEL_3:
    v28.receiver = self;
    v28.super_class = PKCompactNavigationWrapperViewController;
    [(PKCompactNavigationWrapperViewController *)&v28 _edgeInsetsForChildViewController:controllerCopy insetsAreAbsolute:absolute];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    goto LABEL_12;
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentNavigationController);

  if (!WeakRetained)
  {
    goto LABEL_3;
  }

  if (absolute)
  {
    *absolute = 1;
  }

  v18 = MEMORY[0x1E69DDCE0];
  v10 = *MEMORY[0x1E69DDCE0];
  viewIfLoaded = [(PKCompactNavigationWrapperViewController *)self viewIfLoaded];
  v20 = viewIfLoaded;
  if (viewIfLoaded)
  {
    [viewIfLoaded safeAreaInsets];
    v10 = fmax(v21, v10);
  }

  v14 = v18[2];
  viewIfLoaded2 = [WeakRetained viewIfLoaded];

  if (viewIfLoaded2)
  {
    [viewIfLoaded2 safeAreaInsets];
    v14 = fmax(v23, v14);
  }

  v12 = v18[1];
  v16 = v18[3];

LABEL_12:
  v24 = v10;
  v25 = v12;
  v26 = v14;
  v27 = v16;
  result.right = v27;
  result.bottom = v26;
  result.left = v25;
  result.top = v24;
  return result;
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = PKCompactNavigationWrapperViewController;
  [(PKWrapperViewController *)&v17 viewWillLayoutSubviews];
  view = [(PKCompactNavigationWrapperViewController *)self view];
  wrappedViewController = [(PKWrapperViewController *)self wrappedViewController];
  view2 = [wrappedViewController view];

  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  navigationController = [(PKCompactNavigationWrapperViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  self->_navigationBarHeight = v16;

  [(PKCompactNavigationWrapperViewController *)self _wrappedViewControllerFrameForBounds:v7 navigationBarHeight:v9, v11, v13, self->_navigationBarHeight];
  [view2 setFrame:?];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKCompactNavigationWrapperViewController;
  [(PKCompactNavigationWrapperViewController *)&v3 viewDidLayoutSubviews];
  if (self->_hasExplicitTargetNavigationHeight)
  {
    self->_needsInitialLayout = 0;
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = PKCompactNavigationWrapperViewController;
  [(PKCompactNavigationWrapperViewController *)&v6 didMoveToParentViewController:?];
  if (controller)
  {
    viewIfLoaded = [(PKCompactNavigationWrapperViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (void)setTargetNavigationHeight:(double)height
{
  if (!self->_hasExplicitTargetNavigationHeight || self->_targetNavigationHeight != height || (navigationBarHeight = self->_navigationBarHeight, -[PKCompactNavigationWrapperViewController navigationController](self, "navigationController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 navigationBar], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "frame"), v9 = v8, v7, v6, navigationBarHeight != v9))
  {
    self->_targetNavigationHeight = height;
    self->_hasExplicitTargetNavigationHeight = 1;
    viewIfLoaded = [(PKCompactNavigationWrapperViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (CGRect)_wrappedViewControllerFrameForBounds:(CGRect)bounds navigationBarHeight:(double)height
{
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9 = [(PKWrapperViewController *)self edgesForExtendedLayout:bounds.origin.x];
  if (self->_hasExplicitTargetNavigationHeight)
  {
    targetNavigationHeight = self->_targetNavigationHeight;
    if ((v9 & 1) == 0)
    {
      targetNavigationHeight = fmax(targetNavigationHeight - height, 0.0);
    }
  }

  else if (v9)
  {
    targetNavigationHeight = height;
  }

  else
  {
    targetNavigationHeight = 0.0;
  }

  v11 = x;
  v12 = y;
  v13 = width;
  result.size.height = targetNavigationHeight;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end