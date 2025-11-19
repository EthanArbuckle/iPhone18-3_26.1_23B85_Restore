@interface VideosExtrasFeatureContainerViewController
- (UIView)menuBarView;
- (VideosExtrasContext)context;
- (VideosExtrasFeatureContainerViewController)initWithContext:(id)a3;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (void)_menuBarHeightChange:(id)a3;
- (void)dealloc;
- (void)setMenuBarView:(id)a3;
- (void)setVideoPlaybackViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation VideosExtrasFeatureContainerViewController

- (VideosExtrasFeatureContainerViewController)initWithContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VideosExtrasFeatureContainerViewController;
  v5 = [(VideosExtrasFeatureContainerViewController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, v4);
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v6 selector:sel__menuBarHeightChange_ name:@"VideosExtrasMainTemplateBarHeightChangeNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VideosExtrasFeatureContainerViewController;
  [(VideosExtrasFeatureContainerViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = VideosExtrasFeatureContainerViewController;
  [(VideosExtrasFeatureContainerViewController *)&v4 viewDidLoad];
  v3 = [(VideosExtrasFeatureContainerViewController *)self context];
  [v3 extrasRequestReloadWithContext:0];
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  v2 = [(VideosExtrasFeatureContainerViewController *)self childViewControllers];
  v3 = [v2 lastObject];

  return v3;
}

- (void)setVideoPlaybackViewController:(id)a3
{
  v5 = a3;
  videoPlaybackViewController = self->_videoPlaybackViewController;
  if (videoPlaybackViewController != v5)
  {
    [(VideosExtrasVideoPlaybackViewController *)videoPlaybackViewController willMoveToParentViewController:0];
    v7 = [(VideosExtrasVideoPlaybackViewController *)self->_videoPlaybackViewController view];
    [v7 removeFromSuperview];

    [(VideosExtrasVideoPlaybackViewController *)self->_videoPlaybackViewController removeFromParentViewController];
    [(VideosExtrasVideoPlaybackViewController *)self->_videoPlaybackViewController setOverlayVisibilityChangeAnimationBlock:0];
    objc_storeStrong(&self->_videoPlaybackViewController, a3);
    if (v5)
    {
      overlayViewAdjustmentConstraint = self->_overlayViewAdjustmentConstraint;
      if (overlayViewAdjustmentConstraint)
      {
        [(NSLayoutConstraint *)overlayViewAdjustmentConstraint setActive:0];
      }

      v9 = [(VideosExtrasFeatureContainerViewController *)self view];
      v10 = [(VideosExtrasVideoPlaybackViewController *)v5 view];
      [v9 bounds];
      [v10 setFrame:?];
      [(VideosExtrasFeatureContainerViewController *)self addChildViewController:v5];
      v11 = [(VideosExtrasVideoPlaybackViewController *)v5 view];
      [v9 addSubview:v11];

      [(VideosExtrasVideoPlaybackViewController *)v5 didMoveToParentViewController:self];
      v12 = [(VideosExtrasVideoPlaybackViewController *)v5 overlayView];
      v13 = [MEMORY[0x1E696ACD8] constraintWithItem:v12 attribute:4 relatedBy:0 toItem:v10 attribute:4 multiplier:1.0 constant:0.0];
      v14 = self->_overlayViewAdjustmentConstraint;
      self->_overlayViewAdjustmentConstraint = v13;

      WeakRetained = objc_loadWeakRetained(&self->_menuBarView);
      if (WeakRetained)
      {
        [(NSLayoutConstraint *)self->_overlayViewAdjustmentConstraint setActive:1];
        v16 = objc_loadWeakRetained(&self->_menuBarView);
        [v12 alpha];
        [v16 setAlpha:?];

        v17 = objc_loadWeakRetained(&self->_menuBarView);
        [v17 setHidden:{objc_msgSend(v12, "isHidden")}];
      }

      objc_initWeak(&location, self);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __77__VideosExtrasFeatureContainerViewController_setVideoPlaybackViewController___block_invoke;
      v20[3] = &unk_1E872F5D0;
      objc_copyWeak(&v21, &location);
      [(VideosExtrasVideoPlaybackViewController *)v5 setOverlayVisibilityChangeAnimationBlock:v20];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __77__VideosExtrasFeatureContainerViewController_setVideoPlaybackViewController___block_invoke_2;
      v18[3] = &unk_1E872F5D0;
      objc_copyWeak(&v19, &location);
      [(VideosExtrasVideoPlaybackViewController *)v5 setOverlayVisibilityChangeAnimationCompletionBlock:v18];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }
}

void __77__VideosExtrasFeatureContainerViewController_setVideoPlaybackViewController___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v4 = [WeakRetained navigationController];
    v5 = [v4 topViewController];

    WeakRetained = v11;
    if (v5 == v11)
    {
      v6 = objc_loadWeakRetained(v11 + 127);
      v7 = v6;
      if (a2)
      {
        v8 = 0.0;
      }

      else
      {
        [v6 setHidden:0];

        v9 = [v11 navigationController];
        v10 = [v9 navigationBar];
        [v10 setHidden:0];

        v6 = objc_loadWeakRetained(v11 + 127);
        v7 = v6;
        v8 = 1.0;
      }

      [v6 setAlpha:v8];

      WeakRetained = v11;
    }
  }
}

void __77__VideosExtrasFeatureContainerViewController_setVideoPlaybackViewController___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v4 = [WeakRetained navigationController];
    v5 = [v4 topViewController];

    WeakRetained = v9;
    if (v5 == v9)
    {
      v6 = objc_loadWeakRetained(v9 + 127);
      [v6 setHidden:a2];

      v7 = [v9 navigationController];
      v8 = [v7 navigationBar];
      [v8 setHidden:a2];

      WeakRetained = v9;
    }
  }
}

- (void)_menuBarHeightChange:(id)a3
{
  v5 = [a3 object];
  [v5 floatValue];
  [(NSLayoutConstraint *)self->_overlayViewAdjustmentConstraint setConstant:-v4];
}

- (void)setMenuBarView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_menuBarView);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->_menuBarView);

    if (!v6)
    {
      [v4 frame];
      [(NSLayoutConstraint *)self->_overlayViewAdjustmentConstraint setConstant:-CGRectGetHeight(v8)];
    }

    objc_storeWeak(&self->_menuBarView, v4);
    [(NSLayoutConstraint *)self->_overlayViewAdjustmentConstraint setActive:v4 != 0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__VideosExtrasFeatureContainerViewController_setMenuBarView___block_invoke;
    v7[3] = &unk_1E872D768;
    v7[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
  }
}

void __61__VideosExtrasFeatureContainerViewController_setMenuBarView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1016));
  v3 = [*(*(a1 + 32) + 992) overlayView];
  [v3 alpha];
  [WeakRetained setAlpha:?];

  v5 = objc_loadWeakRetained((*(a1 + 32) + 1016));
  v4 = [*(*(a1 + 32) + 992) overlayView];
  [v5 setHidden:{objc_msgSend(v4, "isHidden")}];
}

- (VideosExtrasContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (UIView)menuBarView
{
  WeakRetained = objc_loadWeakRetained(&self->_menuBarView);

  return WeakRetained;
}

@end