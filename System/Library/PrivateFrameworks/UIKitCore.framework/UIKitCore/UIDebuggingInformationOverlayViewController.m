@interface UIDebuggingInformationOverlayViewController
- (CGPoint)offset;
- (UIDebuggingInformationOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveGesture:(id)a3;
- (void)toggleFullscreen;
- (void)viewDidLayoutSubviews;
@end

@implementation UIDebuggingInformationOverlayViewController

- (UIDebuggingInformationOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v24.receiver = self;
  v24.super_class = UIDebuggingInformationOverlayViewController;
  v4 = [(UIViewController *)&v24 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [[UIDebuggingInformationRootTableViewController alloc] initWithStyle:0];
    rootTableViewController = v4->_rootTableViewController;
    v4->_rootTableViewController = v5;

    v7 = [[UINavigationController alloc] initWithRootViewController:v4->_rootTableViewController];
    v8 = [(UIViewController *)v7 view];
    v9 = [v8 layer];
    [v9 setCornerRadius:23.0];

    v10 = [(UIViewController *)v7 view];
    v11 = [v10 layer];
    [v11 setMasksToBounds:1];

    navController = v4->_navController;
    v4->_navController = v7;
    v13 = v7;

    v14 = objc_alloc_init(UIDebuggingInformationContainerView);
    v15 = [(UIViewController *)v13 view];
    [(UIView *)v14 addSubview:v15];

    shadowContainer = v4->_shadowContainer;
    v4->_shadowContainer = v14;
    v17 = v14;

    v18 = +[UIColor clearColor];
    v19 = [(UIViewController *)v4 view];
    [v19 setBackgroundColor:v18];

    [(UIViewController *)v4 addChildViewController:v13];
    v20 = [(UIViewController *)v4 view];
    [v20 addSubview:v17];

    [(UINavigationController *)v13 didMoveToParentViewController:v4];
    v21 = [[UIPanGestureRecognizer alloc] initWithTarget:v4 action:sel_didReceiveGesture_];

    [(UIPanGestureRecognizer *)v21 setMaximumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)v21 setMinimumNumberOfTouches:1];
    v22 = [(UINavigationController *)v13 navigationBar];

    [v22 addGestureRecognizer:v21];
  }

  return v4;
}

- (void)viewDidLayoutSubviews
{
  v34.receiver = self;
  v34.super_class = UIDebuggingInformationOverlayViewController;
  [(UIViewController *)&v34 viewDidLayoutSubviews];
  v3 = [(UIDebuggingInformationOverlayViewController *)self isFullscreen];
  v4 = [(UIViewController *)self view];
  v5 = v4;
  if (v3)
  {
    [v4 bounds];
    x = v6;
    y = v8;
    v11 = v10;
    height = v12;

    v14 = height;
    v15 = v11;
    v16 = y;
    v17 = x;
  }

  else
  {
    [v4 safeAreaInsets];
    v17 = v18;
    v19 = [(UIViewController *)self view];
    [v19 bounds];
    MidY = CGRectGetMidY(v35);
    v21 = [(UIViewController *)self view];
    [v21 bounds];
    v16 = MidY + CGRectGetHeight(v36) * -0.25;
    v22 = [(UIViewController *)self view];
    [v22 bounds];
    Width = CGRectGetWidth(v37);
    v24 = [(UIViewController *)self view];
    [v24 safeAreaInsets];
    v26 = Width - v25;
    v27 = [(UIViewController *)self view];
    [v27 safeAreaInsets];
    v15 = v26 - v28;
    v29 = [(UIViewController *)self view];
    [v29 bounds];
    v14 = CGRectGetHeight(v38) * 0.5;

    v39.origin.x = *MEMORY[0x1E695EFF8];
    v39.origin.y = *(MEMORY[0x1E695EFF8] + 8);
    v39.size.width = v15;
    v39.size.height = v14;
    v40 = CGRectInset(v39, 10.0, 10.0);
    x = v40.origin.x;
    y = v40.origin.y;
    v11 = v40.size.width;
    height = v40.size.height;
  }

  [(UIView *)self->_shadowContainer setFrame:v17, v16, v15, v14];
  v30 = [(UIViewController *)self->_navController view];
  [v30 setFrame:{x, y, v11, height}];

  if ([(UIDebuggingInformationOverlayViewController *)self isFullscreen])
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 23.0;
  }

  v32 = [(UIViewController *)self->_navController view];
  v33 = [v32 layer];
  [v33 setCornerRadius:v31];
}

- (void)toggleFullscreen
{
  [(UIDebuggingInformationOverlayViewController *)self setIsFullscreen:[(UIDebuggingInformationOverlayViewController *)self isFullscreen]^ 1];
  v3 = [(UIViewController *)self view];
  [v3 setNeedsLayout];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__UIDebuggingInformationOverlayViewController_toggleFullscreen__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [UIView animateWithDuration:v4 animations:0.5];
}

void __63__UIDebuggingInformationOverlayViewController_toggleFullscreen__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 992) setShadowHidden:{objc_msgSend(*(a1 + 32), "isFullscreen")}];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

- (void)didReceiveGesture:(id)a3
{
  v31 = a3;
  v4 = [(UIViewController *)self view];
  [v31 locationInView:v4];
  v6 = v5;
  v8 = v7;

  if ([v31 state] == 1)
  {
    v9 = [(UIDebuggingInformationOverlayViewController *)self containerView];
    [v9 center];
    v11 = v10;
    v13 = v12;

    [(UIDebuggingInformationOverlayViewController *)self setOffset:v6 - v11, v8 - v13];
  }

  else if ([v31 state] == 2)
  {
    v14 = [(UIViewController *)self view];
    [v14 bounds];
    v16 = v15;
    v18 = v17;

    v19 = [(UIDebuggingInformationOverlayViewController *)self containerView];
    [v19 bounds];
    v21 = v20;
    v23 = v22;

    [(UIDebuggingInformationOverlayViewController *)self offset];
    v25 = v6 - v24;
    [(UIDebuggingInformationOverlayViewController *)self offset];
    v27 = v8 - v26;
    v28 = fmin(v16 - v21 * 0.5, fmax(v21 * 0.5, v25));
    v29 = fmin(v18 - v23 * 0.5, fmax(v23 * 0.5, v27));
    v30 = [(UIDebuggingInformationOverlayViewController *)self containerView];
    [v30 setCenter:{v28, v29}];
  }
}

- (CGPoint)offset
{
  objc_copyStruct(v4, &self->_offset, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end