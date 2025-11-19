@interface PKCompactNavigationWrapperViewController
- (CGRect)_wrappedViewControllerFrameForBounds:(CGRect)a3 navigationBarHeight:(double)a4;
- (PKCompactNavigationWrapperViewController)initWithWrappedViewController:(id)a3 parentNavigationController:(id)a4;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (void)didMoveToParentViewController:(id)a3;
- (void)loadView;
- (void)setTargetNavigationHeight:(double)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillLayoutSubviews;
@end

@implementation PKCompactNavigationWrapperViewController

- (PKCompactNavigationWrapperViewController)initWithWrappedViewController:(id)a3 parentNavigationController:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = PKCompactNavigationWrapperViewController;
  v7 = [(PKWrapperViewController *)&v10 initWithWrappedViewController:a3 type:1];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_parentNavigationController, v6);
    v8->_needsInitialLayout = 1;
  }

  return v8;
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = PKCompactNavigationWrapperViewController;
  [(PKWrapperViewController *)&v7 loadView];
  v3 = [(PKCompactNavigationWrapperViewController *)self view];
  [v3 setAutoresizesSubviews:0];

  v4 = [(PKWrapperViewController *)self wrappedViewController];
  v5 = [v4 view];
  v6 = [v5 layer];
  [v6 setAnchorPoint:{0.5, 0.0}];
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  v6 = a3;
  v7 = [(PKWrapperViewController *)self wrappedViewController];
  v8 = v7;
  if (v7 != v6)
  {

LABEL_3:
    v28.receiver = self;
    v28.super_class = PKCompactNavigationWrapperViewController;
    [(PKCompactNavigationWrapperViewController *)&v28 _edgeInsetsForChildViewController:v6 insetsAreAbsolute:a4];
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

  if (a4)
  {
    *a4 = 1;
  }

  v18 = MEMORY[0x1E69DDCE0];
  v10 = *MEMORY[0x1E69DDCE0];
  v19 = [(PKCompactNavigationWrapperViewController *)self viewIfLoaded];
  v20 = v19;
  if (v19)
  {
    [v19 safeAreaInsets];
    v10 = fmax(v21, v10);
  }

  v14 = v18[2];
  v22 = [WeakRetained viewIfLoaded];

  if (v22)
  {
    [v22 safeAreaInsets];
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
  v3 = [(PKCompactNavigationWrapperViewController *)self view];
  v4 = [(PKWrapperViewController *)self wrappedViewController];
  v5 = [v4 view];

  [v3 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(PKCompactNavigationWrapperViewController *)self navigationController];
  v15 = [v14 navigationBar];
  [v15 frame];
  self->_navigationBarHeight = v16;

  [(PKCompactNavigationWrapperViewController *)self _wrappedViewControllerFrameForBounds:v7 navigationBarHeight:v9, v11, v13, self->_navigationBarHeight];
  [v5 setFrame:?];
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

- (void)didMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKCompactNavigationWrapperViewController;
  [(PKCompactNavigationWrapperViewController *)&v6 didMoveToParentViewController:?];
  if (a3)
  {
    v5 = [(PKCompactNavigationWrapperViewController *)self viewIfLoaded];
    [v5 setNeedsLayout];
  }
}

- (void)setTargetNavigationHeight:(double)a3
{
  if (!self->_hasExplicitTargetNavigationHeight || self->_targetNavigationHeight != a3 || (navigationBarHeight = self->_navigationBarHeight, -[PKCompactNavigationWrapperViewController navigationController](self, "navigationController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 navigationBar], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "frame"), v9 = v8, v7, v6, navigationBarHeight != v9))
  {
    self->_targetNavigationHeight = a3;
    self->_hasExplicitTargetNavigationHeight = 1;
    v10 = [(PKCompactNavigationWrapperViewController *)self viewIfLoaded];
    [v10 setNeedsLayout];
  }
}

- (CGRect)_wrappedViewControllerFrameForBounds:(CGRect)a3 navigationBarHeight:(double)a4
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(PKWrapperViewController *)self edgesForExtendedLayout:a3.origin.x];
  if (self->_hasExplicitTargetNavigationHeight)
  {
    targetNavigationHeight = self->_targetNavigationHeight;
    if ((v9 & 1) == 0)
    {
      targetNavigationHeight = fmax(targetNavigationHeight - a4, 0.0);
    }
  }

  else if (v9)
  {
    targetNavigationHeight = a4;
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