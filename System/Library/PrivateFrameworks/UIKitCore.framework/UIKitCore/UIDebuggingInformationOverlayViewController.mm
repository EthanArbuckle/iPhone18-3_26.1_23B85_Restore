@interface UIDebuggingInformationOverlayViewController
- (CGPoint)offset;
- (UIDebuggingInformationOverlayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveGesture:(id)gesture;
- (void)toggleFullscreen;
- (void)viewDidLayoutSubviews;
@end

@implementation UIDebuggingInformationOverlayViewController

- (UIDebuggingInformationOverlayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v24.receiver = self;
  v24.super_class = UIDebuggingInformationOverlayViewController;
  v4 = [(UIViewController *)&v24 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [[UIDebuggingInformationRootTableViewController alloc] initWithStyle:0];
    rootTableViewController = v4->_rootTableViewController;
    v4->_rootTableViewController = v5;

    v7 = [[UINavigationController alloc] initWithRootViewController:v4->_rootTableViewController];
    view = [(UIViewController *)v7 view];
    layer = [view layer];
    [layer setCornerRadius:23.0];

    view2 = [(UIViewController *)v7 view];
    layer2 = [view2 layer];
    [layer2 setMasksToBounds:1];

    navController = v4->_navController;
    v4->_navController = v7;
    v13 = v7;

    v14 = objc_alloc_init(UIDebuggingInformationContainerView);
    view3 = [(UIViewController *)v13 view];
    [(UIView *)v14 addSubview:view3];

    shadowContainer = v4->_shadowContainer;
    v4->_shadowContainer = v14;
    v17 = v14;

    v18 = +[UIColor clearColor];
    view4 = [(UIViewController *)v4 view];
    [view4 setBackgroundColor:v18];

    [(UIViewController *)v4 addChildViewController:v13];
    view5 = [(UIViewController *)v4 view];
    [view5 addSubview:v17];

    [(UINavigationController *)v13 didMoveToParentViewController:v4];
    v21 = [[UIPanGestureRecognizer alloc] initWithTarget:v4 action:sel_didReceiveGesture_];

    [(UIPanGestureRecognizer *)v21 setMaximumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)v21 setMinimumNumberOfTouches:1];
    navigationBar = [(UINavigationController *)v13 navigationBar];

    [navigationBar addGestureRecognizer:v21];
  }

  return v4;
}

- (void)viewDidLayoutSubviews
{
  v34.receiver = self;
  v34.super_class = UIDebuggingInformationOverlayViewController;
  [(UIViewController *)&v34 viewDidLayoutSubviews];
  isFullscreen = [(UIDebuggingInformationOverlayViewController *)self isFullscreen];
  view = [(UIViewController *)self view];
  v5 = view;
  if (isFullscreen)
  {
    [view bounds];
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
    [view safeAreaInsets];
    v17 = v18;
    view2 = [(UIViewController *)self view];
    [view2 bounds];
    MidY = CGRectGetMidY(v35);
    view3 = [(UIViewController *)self view];
    [view3 bounds];
    v16 = MidY + CGRectGetHeight(v36) * -0.25;
    view4 = [(UIViewController *)self view];
    [view4 bounds];
    Width = CGRectGetWidth(v37);
    view5 = [(UIViewController *)self view];
    [view5 safeAreaInsets];
    v26 = Width - v25;
    view6 = [(UIViewController *)self view];
    [view6 safeAreaInsets];
    v15 = v26 - v28;
    view7 = [(UIViewController *)self view];
    [view7 bounds];
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
  view8 = [(UIViewController *)self->_navController view];
  [view8 setFrame:{x, y, v11, height}];

  if ([(UIDebuggingInformationOverlayViewController *)self isFullscreen])
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 23.0;
  }

  view9 = [(UIViewController *)self->_navController view];
  layer = [view9 layer];
  [layer setCornerRadius:v31];
}

- (void)toggleFullscreen
{
  [(UIDebuggingInformationOverlayViewController *)self setIsFullscreen:[(UIDebuggingInformationOverlayViewController *)self isFullscreen]^ 1];
  view = [(UIViewController *)self view];
  [view setNeedsLayout];

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

- (void)didReceiveGesture:(id)gesture
{
  gestureCopy = gesture;
  view = [(UIViewController *)self view];
  [gestureCopy locationInView:view];
  v6 = v5;
  v8 = v7;

  if ([gestureCopy state] == 1)
  {
    containerView = [(UIDebuggingInformationOverlayViewController *)self containerView];
    [containerView center];
    v11 = v10;
    v13 = v12;

    [(UIDebuggingInformationOverlayViewController *)self setOffset:v6 - v11, v8 - v13];
  }

  else if ([gestureCopy state] == 2)
  {
    view2 = [(UIViewController *)self view];
    [view2 bounds];
    v16 = v15;
    v18 = v17;

    containerView2 = [(UIDebuggingInformationOverlayViewController *)self containerView];
    [containerView2 bounds];
    v21 = v20;
    v23 = v22;

    [(UIDebuggingInformationOverlayViewController *)self offset];
    v25 = v6 - v24;
    [(UIDebuggingInformationOverlayViewController *)self offset];
    v27 = v8 - v26;
    v28 = fmin(v16 - v21 * 0.5, fmax(v21 * 0.5, v25));
    v29 = fmin(v18 - v23 * 0.5, fmax(v23 * 0.5, v27));
    containerView3 = [(UIDebuggingInformationOverlayViewController *)self containerView];
    [containerView3 setCenter:{v28, v29}];
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