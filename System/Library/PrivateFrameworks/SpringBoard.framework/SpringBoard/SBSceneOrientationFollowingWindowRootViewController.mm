@interface SBSceneOrientationFollowingWindowRootViewController
- (SBIsolatedSceneOrientationFollowingWrapperViewController)hostingViewController;
- (SBSceneOrientationFollowingWindowRootViewController)initWithHostingViewController:(id)a3;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)setOverlayContentView:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SBSceneOrientationFollowingWindowRootViewController

- (SBSceneOrientationFollowingWindowRootViewController)initWithHostingViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBSceneOrientationFollowingWindowRootViewController;
  v5 = [(SBSceneOrientationFollowingWindowRootViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hostingViewController, v4);
  }

  return v6;
}

- (void)setOverlayContentView:(id)a3
{
  v5 = a3;
  overlayContentView = self->_overlayContentView;
  v8 = v5;
  if (overlayContentView != v5)
  {
    [(UIView *)overlayContentView removeFromSuperview];
    objc_storeStrong(&self->_overlayContentView, a3);
    if (self->_overlayContentView)
    {
      v7 = [(SBSceneOrientationFollowingWindowRootViewController *)self view];
      [v7 addSubview:v8];
    }
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);
  v3 = [WeakRetained orientationDelegate];
  v4 = [v3 supportedInterfaceOrientations];

  return v4;
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = SBSceneOrientationFollowingWindowRootViewController;
  [(SBSceneOrientationFollowingWindowRootViewController *)&v14 viewWillLayoutSubviews];
  v3 = [(SBSceneOrientationFollowingWindowRootViewController *)self view];
  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);
  [WeakRetained _boundsForOverlayRootView];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [v3 window];
  [v13 center];
  [v3 setCenter:?];

  [v3 setBounds:{v6, v8, v10, v12}];
  [(UIView *)self->_overlayContentView setFrame:v6, v8, v10, v12];
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);
  v7 = [WeakRetained _isSceneStatusBarHidden];
  v8 = [WeakRetained _sbWindowScene];
  v9 = [v8 statusBarManager];

  v10 = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
  v11 = v10;
  if (v7)
  {
    v12 = [v10 sb_displayEdgeInfoWithSafeAreaInsetsForStatusBarHeight:0.0];
  }

  else
  {
    v13 = [v9 statusBar];
    [v13 currentHeight];
    v12 = [v11 sb_displayEdgeInfoWithSafeAreaInsetsForStatusBarHeight:?];
  }

  v14 = [WeakRetained _hostOrientation];
  v15 = [(SBSceneOrientationFollowingWindowRootViewController *)self traitCollection];
  [v12 sb_orientedEdgeInsetsForInterfaceOrientation:v14 traitCollection:v15];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (a4)
  {
    *a4 = 1;
  }

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.right = v27;
  result.bottom = v26;
  result.left = v25;
  result.top = v24;
  return result;
}

- (SBIsolatedSceneOrientationFollowingWrapperViewController)hostingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);

  return WeakRetained;
}

@end