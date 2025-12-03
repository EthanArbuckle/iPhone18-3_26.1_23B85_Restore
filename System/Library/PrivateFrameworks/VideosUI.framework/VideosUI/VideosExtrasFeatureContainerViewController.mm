@interface VideosExtrasFeatureContainerViewController
- (UIView)menuBarView;
- (VideosExtrasContext)context;
- (VideosExtrasFeatureContainerViewController)initWithContext:(id)context;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (void)_menuBarHeightChange:(id)change;
- (void)dealloc;
- (void)setMenuBarView:(id)view;
- (void)setVideoPlaybackViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation VideosExtrasFeatureContainerViewController

- (VideosExtrasFeatureContainerViewController)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = VideosExtrasFeatureContainerViewController;
  v5 = [(VideosExtrasFeatureContainerViewController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, contextCopy);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__menuBarHeightChange_ name:@"VideosExtrasMainTemplateBarHeightChangeNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VideosExtrasFeatureContainerViewController;
  [(VideosExtrasFeatureContainerViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = VideosExtrasFeatureContainerViewController;
  [(VideosExtrasFeatureContainerViewController *)&v4 viewDidLoad];
  context = [(VideosExtrasFeatureContainerViewController *)self context];
  [context extrasRequestReloadWithContext:0];
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  childViewControllers = [(VideosExtrasFeatureContainerViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  return lastObject;
}

- (void)setVideoPlaybackViewController:(id)controller
{
  controllerCopy = controller;
  videoPlaybackViewController = self->_videoPlaybackViewController;
  if (videoPlaybackViewController != controllerCopy)
  {
    [(VideosExtrasVideoPlaybackViewController *)videoPlaybackViewController willMoveToParentViewController:0];
    view = [(VideosExtrasVideoPlaybackViewController *)self->_videoPlaybackViewController view];
    [view removeFromSuperview];

    [(VideosExtrasVideoPlaybackViewController *)self->_videoPlaybackViewController removeFromParentViewController];
    [(VideosExtrasVideoPlaybackViewController *)self->_videoPlaybackViewController setOverlayVisibilityChangeAnimationBlock:0];
    objc_storeStrong(&self->_videoPlaybackViewController, controller);
    if (controllerCopy)
    {
      overlayViewAdjustmentConstraint = self->_overlayViewAdjustmentConstraint;
      if (overlayViewAdjustmentConstraint)
      {
        [(NSLayoutConstraint *)overlayViewAdjustmentConstraint setActive:0];
      }

      view2 = [(VideosExtrasFeatureContainerViewController *)self view];
      view3 = [(VideosExtrasVideoPlaybackViewController *)controllerCopy view];
      [view2 bounds];
      [view3 setFrame:?];
      [(VideosExtrasFeatureContainerViewController *)self addChildViewController:controllerCopy];
      view4 = [(VideosExtrasVideoPlaybackViewController *)controllerCopy view];
      [view2 addSubview:view4];

      [(VideosExtrasVideoPlaybackViewController *)controllerCopy didMoveToParentViewController:self];
      overlayView = [(VideosExtrasVideoPlaybackViewController *)controllerCopy overlayView];
      v13 = [MEMORY[0x1E696ACD8] constraintWithItem:overlayView attribute:4 relatedBy:0 toItem:view3 attribute:4 multiplier:1.0 constant:0.0];
      v14 = self->_overlayViewAdjustmentConstraint;
      self->_overlayViewAdjustmentConstraint = v13;

      WeakRetained = objc_loadWeakRetained(&self->_menuBarView);
      if (WeakRetained)
      {
        [(NSLayoutConstraint *)self->_overlayViewAdjustmentConstraint setActive:1];
        v16 = objc_loadWeakRetained(&self->_menuBarView);
        [overlayView alpha];
        [v16 setAlpha:?];

        v17 = objc_loadWeakRetained(&self->_menuBarView);
        [v17 setHidden:{objc_msgSend(overlayView, "isHidden")}];
      }

      objc_initWeak(&location, self);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __77__VideosExtrasFeatureContainerViewController_setVideoPlaybackViewController___block_invoke;
      v20[3] = &unk_1E872F5D0;
      objc_copyWeak(&v21, &location);
      [(VideosExtrasVideoPlaybackViewController *)controllerCopy setOverlayVisibilityChangeAnimationBlock:v20];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __77__VideosExtrasFeatureContainerViewController_setVideoPlaybackViewController___block_invoke_2;
      v18[3] = &unk_1E872F5D0;
      objc_copyWeak(&v19, &location);
      [(VideosExtrasVideoPlaybackViewController *)controllerCopy setOverlayVisibilityChangeAnimationCompletionBlock:v18];
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

- (void)_menuBarHeightChange:(id)change
{
  object = [change object];
  [object floatValue];
  [(NSLayoutConstraint *)self->_overlayViewAdjustmentConstraint setConstant:-v4];
}

- (void)setMenuBarView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_menuBarView);

  if (WeakRetained != viewCopy)
  {
    v6 = objc_loadWeakRetained(&self->_menuBarView);

    if (!v6)
    {
      [viewCopy frame];
      [(NSLayoutConstraint *)self->_overlayViewAdjustmentConstraint setConstant:-CGRectGetHeight(v8)];
    }

    objc_storeWeak(&self->_menuBarView, viewCopy);
    [(NSLayoutConstraint *)self->_overlayViewAdjustmentConstraint setActive:viewCopy != 0];
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