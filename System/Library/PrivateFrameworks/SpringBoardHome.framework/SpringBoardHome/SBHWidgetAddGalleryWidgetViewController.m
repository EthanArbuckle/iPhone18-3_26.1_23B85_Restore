@interface SBHWidgetAddGalleryWidgetViewController
- (CGRect)visibleBounds;
- (SBHWidgetAddGalleryWidgetViewController)initWithContentViewController:(id)a3;
- (UIView)snapshotView;
- (id)_createBackgroundView;
- (id)backdropGroupNameForActiveDataSource:(id)a3;
- (id)contentView;
- (id)sbh_underlyingAvocadoHostViewControllers;
- (unint64_t)_chuisWidgetPresentationModeFromIconPresentationMode:(int64_t)a3;
- (void)_configureBackgroundViewIfNecessary:(id)a3;
- (void)_createBackgroundViewIfNecessary:(BOOL)a3;
- (void)_setupStateCapture;
- (void)_teardownBackgroundView;
- (void)_teardownBackgroundView:(id)a3;
- (void)_teardownStateCapture;
- (void)_updateContentViewControllerPresentationMode;
- (void)_updateEdgeAntialiasing;
- (void)dealloc;
- (void)setBackgroundViewProvider:(id)a3;
- (void)setContentViewController:(id)a3;
- (void)setForcesEdgeAntialiasing:(BOOL)a3;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SBHWidgetAddGalleryWidgetViewController

- (id)sbh_underlyingAvocadoHostViewControllers
{
  v3 = [(SBHWidgetAddGalleryWidgetViewController *)self contentViewController];
  v4 = [v3 sbh_isWidgetHostViewController];
  v5 = MEMORY[0x1E695DFD8];
  if (v4)
  {
    v6 = [(SBHWidgetAddGalleryWidgetViewController *)self contentViewController];
    v7 = [v5 setWithObject:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFD8] set];
  }

  return v7;
}

- (SBHWidgetAddGalleryWidgetViewController)initWithContentViewController:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SBHWidgetAddGalleryWidgetViewController;
  v6 = [(SBHWidgetAddGalleryWidgetViewController *)&v12 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentViewController, a3);
    v7->_requestedPresentationMode = 2;
    [(SBHWidgetAddGalleryWidgetViewController *)v7 _setupStateCapture];
    v8 = objc_opt_self();
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [(SBHWidgetAddGalleryWidgetViewController *)v7 registerForTraitChanges:v9 withAction:sel__updateEdgeAntialiasing];
  }

  return v7;
}

- (void)setContentViewController:(id)a3
{
  v5 = a3;
  if (self->_contentViewController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contentViewController, a3);
    [(SBHWidgetAddGalleryWidgetViewController *)self _updateContentViewControllerPresentationMode];
    v5 = v6;
  }
}

- (id)contentView
{
  v2 = [(SBHWidgetAddGalleryWidgetViewController *)self contentViewController];
  v3 = [v2 view];

  return v3;
}

- (void)dealloc
{
  [(SBHWidgetAddGalleryWidgetViewController *)self _teardownStateCapture];
  v3.receiver = self;
  v3.super_class = SBHWidgetAddGalleryWidgetViewController;
  [(SBHWidgetAddGalleryWidgetViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SBHWidgetAddGalleryWidgetViewController;
  [(SBHWidgetAddGalleryWidgetViewController *)&v8 viewDidLoad];
  v3 = [(SBHWidgetAddGalleryWidgetViewController *)self view];
  v4 = [(SBHWidgetAddGalleryWidgetViewController *)self contentViewController];
  v5 = [v4 view];
  [(SBHWidgetAddGalleryWidgetViewController *)self addChildViewController:v4];
  [v3 addSubview:v5];
  [v4 didMoveToParentViewController:self];
  [(SBHWidgetAddGalleryWidgetViewController *)self iconImageInfo];
  v7 = v6;
  [v3 _setContinuousCornerRadius:v6];
  [v5 _setContinuousCornerRadius:v7];
  [(SBHWidgetAddGalleryWidgetViewController *)self _createBackgroundViewIfNecessary:1];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = SBHWidgetAddGalleryWidgetViewController;
  [(SBHWidgetAddGalleryWidgetViewController *)&v10 viewDidLayoutSubviews];
  v3 = [(SBHWidgetAddGalleryWidgetViewController *)self view];
  [v3 bounds];
  UIRectGetCenter();
  v5 = v4;
  v7 = v6;
  v8 = [(SBHWidgetAddGalleryWidgetViewController *)self contentView];
  [v8 setCenter:{v5, v7}];
  v9 = [(SBHWidgetAddGalleryWidgetViewController *)self backgroundView];
  [v8 bounds];
  [v9 setBounds:?];
  [v9 setCenter:{v5, v7}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHWidgetAddGalleryWidgetViewController;
  [(SBHWidgetAddGalleryWidgetViewController *)&v4 viewWillAppear:a3];
  [(SBHWidgetAddGalleryWidgetViewController *)self _createBackgroundViewIfNecessary:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHWidgetAddGalleryWidgetViewController;
  [(SBHWidgetAddGalleryWidgetViewController *)&v4 viewDidDisappear:a3];
  [(SBHWidgetAddGalleryWidgetViewController *)self _teardownBackgroundView];
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  p_iconImageInfo = &self->_iconImageInfo;
  if (!SBIconImageInfoEqualToIconImageInfo(v3, v4, v5, v6, self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius))
  {
    p_iconImageInfo->size.width = v10;
    p_iconImageInfo->size.height = v9;
    p_iconImageInfo->scale = v8;
    p_iconImageInfo->continuousCornerRadius = v7;
    if ([(SBHWidgetAddGalleryWidgetViewController *)self isViewLoaded])
    {
      v13 = [(SBHWidgetAddGalleryWidgetViewController *)self view];
      [v13 _setContinuousCornerRadius:v7];

      v14 = [(SBHWidgetAddGalleryWidgetViewController *)self contentView];
      [v14 _setContinuousCornerRadius:v7];
    }
  }
}

- (void)setForcesEdgeAntialiasing:(BOOL)a3
{
  if (self->_forcesEdgeAntialiasing != a3)
  {
    self->_forcesEdgeAntialiasing = a3;
    [(SBHWidgetAddGalleryWidgetViewController *)self _updateEdgeAntialiasing];
  }
}

- (void)_updateContentViewControllerPresentationMode
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(SBHWidgetAddGalleryWidgetViewController *)self _chuisWidgetPresentationModeFromIconPresentationMode:self->_requestedPresentationMode];
    contentViewController = self->_contentViewController;

    [(UIViewController *)contentViewController setPresentationMode:v3];
  }
}

- (unint64_t)_chuisWidgetPresentationModeFromIconPresentationMode:(int64_t)a3
{
  v3 = 3;
  if (a3 != 1)
  {
    v3 = 1;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 2;
  }
}

- (id)backdropGroupNameForActiveDataSource:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 uniqueIdentifier];

  v7 = [v5 initWithFormat:@"SBWidget-%@", v6];

  return v7;
}

- (void)setBackgroundViewProvider:(id)a3
{
  if (self->_backgroundViewProvider != a3)
  {
    v4 = [a3 copy];
    backgroundViewProvider = self->_backgroundViewProvider;
    self->_backgroundViewProvider = v4;

    [(SBHWidgetAddGalleryWidgetViewController *)self _teardownBackgroundView];

    [(SBHWidgetAddGalleryWidgetViewController *)self _createBackgroundViewIfNecessary:1];
  }
}

- (UIView)snapshotView
{
  v3 = [(SBHWidgetAddGalleryWidgetViewController *)self contentViewController];
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = v3;
    v7 = [v6 snapshotView];
    v8 = [v6 metrics];

    [v8 scaleFactor];
    v10 = 1.0 / v9;
  }

  else
  {
    v8 = [(SBHWidgetAddGalleryWidgetViewController *)self view];
    v7 = [v8 snapshotViewAfterScreenUpdates:0];
    v10 = 1.0;
  }

  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeScale(&v14, v10, v10);
  [v7 frame];
  v13 = v14;
  v17 = CGRectApplyAffineTransform(v16, &v13);
  v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v17.origin.x, v17.origin.y, v17.size.width, v17.size.height}];
  [v11 addSubview:v7];
  [v11 bounds];
  UIRectGetCenter();
  [v7 setCenter:?];
  v13 = v14;
  [v7 setTransform:&v13];

  return v11;
}

- (CGRect)visibleBounds
{
  v2 = [(SBHWidgetAddGalleryWidgetViewController *)self view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_updateEdgeAntialiasing
{
  v3 = [(SBHWidgetAddGalleryWidgetViewController *)self view];
  v7 = [v3 layer];

  v4 = [(SBHWidgetAddGalleryWidgetViewController *)self traitCollection];
  [v4 displayScale];
  v6 = v5;

  [v7 setAllowsEdgeAntialiasing:self->_forcesEdgeAntialiasing];
  [v7 setShouldRasterize:self->_forcesEdgeAntialiasing];
  [v7 setRasterizationScale:v6];
}

- (void)_createBackgroundViewIfNecessary:(BOOL)a3
{
  v3 = a3;
  if (([(SBHWidgetAddGalleryWidgetViewController *)self bs_isDisappearingOrDisappeared]& 1) == 0 && !self->_backgroundView && (!v3 || [(SBHWidgetAddGalleryWidgetViewController *)self _needsBackgroundView]))
  {
    v5 = [(SBHWidgetAddGalleryWidgetViewController *)self _createBackgroundView];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v5;

    if (self->_backgroundView)
    {
      [(SBHWidgetAddGalleryWidgetViewController *)self _configureBackgroundViewIfNecessary:?];
      v7 = [(SBHWidgetAddGalleryWidgetViewController *)self view];
      [v7 insertSubview:self->_backgroundView atIndex:0];
    }
  }
}

- (id)_createBackgroundView
{
  backgroundViewProvider = self->_backgroundViewProvider;
  if (backgroundViewProvider)
  {
    backgroundViewProvider[2](backgroundViewProvider, a2);
  }

  else
  {
    [MEMORY[0x1E69AE158] materialViewWithRecipe:3];
  }
  v4 = ;
  [v4 setClipsToBounds:!self->_showsSquareCorners];
  [(SBHWidgetAddGalleryWidgetViewController *)self iconImageInfo];
  [v4 _setContinuousCornerRadius:v5];

  return v4;
}

- (void)_teardownBackgroundView
{
  if (self->_backgroundView)
  {
    [(SBHWidgetAddGalleryWidgetViewController *)self _teardownBackgroundView:?];
  }
}

- (void)_teardownBackgroundView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    [(UIView *)v4 removeFromSuperview];
    v4 = v6;
    backgroundView = self->_backgroundView;
    if (backgroundView == v6)
    {
      self->_backgroundView = 0;

      v4 = v6;
    }
  }
}

- (void)_configureBackgroundViewIfNecessary:(id)a3
{
  v8 = a3;
  v4 = [(SBHWidgetAddGalleryWidgetViewController *)self icon];
  v5 = [v4 activeDataSource];
  if (v8)
  {
    backgroundViewConfigurator = self->_backgroundViewConfigurator;
    if (backgroundViewConfigurator && v5 != 0)
    {
      backgroundViewConfigurator[2](backgroundViewConfigurator, v8, v5);
    }
  }
}

- (void)_setupStateCapture
{
  if (!self->_stateCaptureInvalidatable)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E69E96A0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    objc_copyWeak(&v8, &location);
    v6 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureInvalidatable = self->_stateCaptureInvalidatable;
    self->_stateCaptureInvalidatable = v6;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

__CFString *__61__SBHWidgetAddGalleryWidgetViewController__setupStateCapture__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E698E680] builderWithObject:WeakRetained];
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __61__SBHWidgetAddGalleryWidgetViewController__setupStateCapture__block_invoke_2;
    v9 = &unk_1E8088F18;
    v10 = v2;
    v11 = WeakRetained;
    v3 = v2;
    [v3 appendBodySectionWithName:0 multilinePrefix:0 block:&v6];
    v4 = [v3 build];
  }

  else
  {
    v4 = &stru_1F3D472A8;
  }

  return v4;
}

void __61__SBHWidgetAddGalleryWidgetViewController__setupStateCapture__block_invoke_2(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) viewIfLoaded];
  v4 = [v2 appendObject:v3 withName:@"viewIfLoaded"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) viewIfLoaded];
  v7 = [v6 window];
  v8 = [v5 appendObject:v7 withName:@"windowIfLoaded"];

  v9 = *(*(a1 + 40) + 1040);
  if (v9)
  {
    v10 = *(a1 + 32);
    v13[0] = *(*(a1 + 40) + 1040);
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v12 = [v10 sbh_appendDescriptionsForViewControllers:v11];
  }
}

- (void)_teardownStateCapture
{
  stateCaptureInvalidatable = self->_stateCaptureInvalidatable;
  if (stateCaptureInvalidatable)
  {
    [(BSInvalidatable *)stateCaptureInvalidatable invalidate];
    v4 = self->_stateCaptureInvalidatable;
    self->_stateCaptureInvalidatable = 0;
  }
}

@end