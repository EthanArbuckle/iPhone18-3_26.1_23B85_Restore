@interface SBSceneOrientationFollowingWindowRootViewController
- (SBIsolatedSceneOrientationFollowingWrapperViewController)hostingViewController;
- (SBSceneOrientationFollowingWindowRootViewController)initWithHostingViewController:(id)controller;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (unint64_t)supportedInterfaceOrientations;
- (void)setOverlayContentView:(id)view;
- (void)viewWillLayoutSubviews;
@end

@implementation SBSceneOrientationFollowingWindowRootViewController

- (SBSceneOrientationFollowingWindowRootViewController)initWithHostingViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = SBSceneOrientationFollowingWindowRootViewController;
  v5 = [(SBSceneOrientationFollowingWindowRootViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hostingViewController, controllerCopy);
  }

  return v6;
}

- (void)setOverlayContentView:(id)view
{
  viewCopy = view;
  overlayContentView = self->_overlayContentView;
  v8 = viewCopy;
  if (overlayContentView != viewCopy)
  {
    [(UIView *)overlayContentView removeFromSuperview];
    objc_storeStrong(&self->_overlayContentView, view);
    if (self->_overlayContentView)
    {
      view = [(SBSceneOrientationFollowingWindowRootViewController *)self view];
      [view addSubview:v8];
    }
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);
  orientationDelegate = [WeakRetained orientationDelegate];
  supportedInterfaceOrientations = [orientationDelegate supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = SBSceneOrientationFollowingWindowRootViewController;
  [(SBSceneOrientationFollowingWindowRootViewController *)&v14 viewWillLayoutSubviews];
  view = [(SBSceneOrientationFollowingWindowRootViewController *)self view];
  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);
  [WeakRetained _boundsForOverlayRootView];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  window = [view window];
  [window center];
  [view setCenter:?];

  [view setBounds:{v6, v8, v10, v12}];
  [(UIView *)self->_overlayContentView setFrame:v6, v8, v10, v12];
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);
  _isSceneStatusBarHidden = [WeakRetained _isSceneStatusBarHidden];
  _sbWindowScene = [WeakRetained _sbWindowScene];
  statusBarManager = [_sbWindowScene statusBarManager];

  sb_thisDeviceDisplayEdgeInfo = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
  v11 = sb_thisDeviceDisplayEdgeInfo;
  if (_isSceneStatusBarHidden)
  {
    v12 = [sb_thisDeviceDisplayEdgeInfo sb_displayEdgeInfoWithSafeAreaInsetsForStatusBarHeight:0.0];
  }

  else
  {
    statusBar = [statusBarManager statusBar];
    [statusBar currentHeight];
    v12 = [v11 sb_displayEdgeInfoWithSafeAreaInsetsForStatusBarHeight:?];
  }

  _hostOrientation = [WeakRetained _hostOrientation];
  traitCollection = [(SBSceneOrientationFollowingWindowRootViewController *)self traitCollection];
  [v12 sb_orientedEdgeInsetsForInterfaceOrientation:_hostOrientation traitCollection:traitCollection];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (absolute)
  {
    *absolute = 1;
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