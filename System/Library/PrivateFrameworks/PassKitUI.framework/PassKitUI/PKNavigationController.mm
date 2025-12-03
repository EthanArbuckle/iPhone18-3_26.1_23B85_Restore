@interface PKNavigationController
- (BOOL)_canShowWhileLocked;
- (PKNavigationController)init;
- (PKNavigationController)initWithRootViewController:(id)controller;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_updateBarAppearanceForViewController:(id)controller animated:(BOOL)animated;
- (void)_updateWithWallpaperImage:(id)image;
- (void)dealloc;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)promptAppStoreReviewForTrigger:(unint64_t)trigger;
- (void)setCustomFormSheetPresentationStyleForiPad;
- (void)setNeedsNavigationBarUpdateAnimated:(BOOL)animated;
- (void)setNeedsNavigationBarUpdateFromViewController:(id)controller animated:(BOOL)animated;
- (void)setPageSheetPresentation;
- (void)setSupportedInterfaceOrientations:(unint64_t)orientations;
- (void)setupBackgroundViewWithVisualEffect:(id)effect;
- (void)setupWallpaperWithBlurEffectStyle:(int64_t)style;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKNavigationController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKNavigationController;
  [(PKNavigationController *)&v5 viewDidLoad];
  if (self->_backgroundView)
  {
    view = [(PKNavigationController *)self view];
    [view insertSubview:self->_backgroundView atIndex:0];
  }

  topViewController = [(PKNavigationController *)self topViewController];
  [(PKNavigationController *)self _updateBarAppearanceForViewController:topViewController animated:0];
}

- (int64_t)preferredStatusBarStyle
{
  if (self->_hasStatusBarStyleOverride)
  {
    return self->_statusBarStyleOverride;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = PKNavigationController;
  return [(PKNavigationController *)&v5 preferredStatusBarStyle];
}

- (PKNavigationController)init
{
  v4.receiver = self;
  v4.super_class = PKNavigationController;
  v2 = [(PKNavigationController *)&v4 initWithNibName:0 bundle:0];
  if (v2)
  {
    [(PKNavigationController *)v2 setNavigationBarClass:objc_opt_class()];
    [(PKNavigationController *)v2 setDelegate:v2];
  }

  return v2;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (self->_hasExplicitlyDefinedSupportedInterfaceOrientations)
  {
    return self->_explicitlyDefinedSupportedInterfaceOrientations;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = PKNavigationController;
  return [(PKNavigationController *)&v5 supportedInterfaceOrientations];
}

- (void)viewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = PKNavigationController;
  [(PKNavigationController *)&v12 viewWillLayoutSubviews];
  view = [(PKNavigationController *)self view];
  [view bounds];
  [(UIView *)self->_backgroundView setFrame:?];
  [(UIView *)self->_backgroundView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UIVisualEffectView *)self->_blurView setFrame:?];
  [(UIImageView *)self->_wallpaperView setFrame:v5, v7, v9, v11];
}

- (PKNavigationController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(PKNavigationController *)self init];
  v6 = v5;
  if (v5)
  {
    [(PKNavigationController *)v5 pushViewController:controllerCopy animated:0];
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKNavigationController;
  [(PKNavigationController *)&v2 dealloc];
}

- (BOOL)_canShowWhileLocked
{
  v3 = objc_opt_class();

  return [(PKNavigationController *)self isMemberOfClass:v3];
}

- (void)_updateBarAppearanceForViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  isViewLoaded = [(PKNavigationController *)self isViewLoaded];
  v6 = controllerCopy;
  if (!isViewLoaded)
  {
    goto LABEL_23;
  }

  if (objc_opt_respondsToSelector())
  {
    pkui_navigationStatusBarStyleDescriptor = [controllerCopy pkui_navigationStatusBarStyleDescriptor];
    v9 = v8;
    if (v8 <= 3 && v8 != 2 && (pkui_navigationStatusBarStyleDescriptor & 1) != 0)
    {
      if (!self->_hasStatusBarStyleOverride || self->_statusBarStyleOverride != v8)
      {
        self->_hasStatusBarStyleOverride = 1;
        self->_statusBarStyleOverride = v8;
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0;
  }

  if (self->_hasStatusBarStyleOverride)
  {
    self->_hasStatusBarStyleOverride = 0;
LABEL_12:
    navigationBar = [(PKNavigationController *)self navigationBar];
    if (v9 == 3)
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      if (v9 != 1)
      {
        v12 = 0;
        goto LABEL_19;
      }

      blackColor = [MEMORY[0x1E69DC888] whiteColor];
    }

    v12 = blackColor;
LABEL_19:
    [(PKNavigationController *)self setNeedsStatusBarAppearanceUpdate];
    goto LABEL_20;
  }

LABEL_15:
  navigationBar = [(PKNavigationController *)self navigationBar];
  v12 = 0;
LABEL_20:
  tintColor = [navigationBar tintColor];
  if (([tintColor isEqual:v12] & 1) == 0)
  {
    [navigationBar setTintColor:v12];
  }

  v6 = controllerCopy;
LABEL_23:
}

- (void)promptAppStoreReviewForTrigger:(unint64_t)trigger
{
  if (!self->_reviewPromptHelper)
  {
    v5 = objc_alloc_init(PKStoreKitReviewPromptHelper);
    reviewPromptHelper = self->_reviewPromptHelper;
    self->_reviewPromptHelper = v5;
  }

  view = [(PKNavigationController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  [(PKStoreKitReviewPromptHelper *)self->_reviewPromptHelper requestReviewInSceneIfEligible:windowScene trigger:trigger];
}

- (void)setupBackgroundViewWithVisualEffect:(id)effect
{
  effectCopy = effect;
  blurView = self->_blurView;
  v12 = effectCopy;
  if (self->_backgroundView | blurView)
  {
    [(UIVisualEffectView *)blurView setEffect:effectCopy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundView = self->_backgroundView;
    self->_backgroundView = v6;

    if (self->_wallpaperView)
    {
      [(UIView *)self->_backgroundView addSubview:?];
    }

    v8 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v12];
    v9 = self->_blurView;
    self->_blurView = v8;

    [(UIView *)self->_backgroundView addSubview:self->_blurView];
    viewIfLoaded = [(PKNavigationController *)self viewIfLoaded];
    v11 = viewIfLoaded;
    if (viewIfLoaded)
    {
      [viewIfLoaded insertSubview:self->_backgroundView atIndex:0];
      [v11 setNeedsLayout];
    }
  }
}

- (void)setupWallpaperWithBlurEffectStyle:(int64_t)style
{
  wallpaperView = self->_wallpaperView;
  if (self->_wallpaperRequested)
  {
    if (!wallpaperView)
    {
      self->_outstandingWallpaperStyle = style;
      return;
    }
  }

  else if (!wallpaperView)
  {
    self->_wallpaperRequested = 1;
    self->_outstandingWallpaperStyle = style;
    [(PKNavigationController *)self _beginDelayingPresentation:0 cancellationHandler:0.2];
    v5 = objc_alloc_init(MEMORY[0x1E69D4318]);
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__PKNavigationController_setupWallpaperWithBlurEffectStyle___block_invoke;
    v8[3] = &unk_1E8017CA8;
    v6 = v5;
    v9 = v6;
    objc_copyWeak(&v10, &location);
    [v6 fetchThumbnailForVariant:1 completionHandler:v8];
    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
    return;
  }

  v7 = [MEMORY[0x1E69DC730] effectWithStyle:style];
  [(PKNavigationController *)self setupBackgroundViewWithVisualEffect:v7];
}

void __60__PKNavigationController_setupWallpaperWithBlurEffectStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = [MEMORY[0x1E69DCAB8] imageWithData:v3];
    }

    else
    {
      v5 = 0;
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__PKNavigationController_setupWallpaperWithBlurEffectStyle___block_invoke_2;
    v7[3] = &unk_1E80110E0;
    objc_copyWeak(&v9, (a1 + 40));
    v8 = v5;
    v6 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v7);

    objc_destroyWeak(&v9);
  }
}

void __60__PKNavigationController_setupWallpaperWithBlurEffectStyle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (*(a1 + 32))
    {
      [WeakRetained _updateWithWallpaperImage:?];
      [v5 _setBuiltinTransitionStyle:1];
      v3 = v5;
    }

    v3[1512] = 0;
    if (*(v3 + 187))
    {
      v4 = [MEMORY[0x1E69DC730] effectWithStyle:*(v3 + 190)];
      [v5 setupBackgroundViewWithVisualEffect:v4];

      v3 = v5;
    }

    [v3 _endDelayingPresentation];
    v3 = v5;
  }
}

- (void)setNeedsNavigationBarUpdateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(PKNavigationController *)self isViewLoaded])
  {
    topViewController = [(PKNavigationController *)self topViewController];
    if (topViewController)
    {
      v6 = topViewController;
      [(PKNavigationController *)self _updateBarAppearanceForViewController:topViewController animated:animatedCopy];
      topViewController = v6;
    }
  }
}

- (void)setNeedsNavigationBarUpdateFromViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (controllerCopy)
  {
    if ([(PKNavigationController *)self isViewLoaded])
    {
      topViewController = [(PKNavigationController *)self topViewController];
      if (topViewController == controllerCopy)
      {
        [(PKNavigationController *)self _updateBarAppearanceForViewController:topViewController animated:animatedCopy];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)setCustomFormSheetPresentationStyleForiPad
{
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [(PKNavigationController *)self setModalPresentationStyle:16];
    view = [(PKNavigationController *)self view];
    layer = [view layer];
    [layer setMasksToBounds:1];

    view2 = [(PKNavigationController *)self view];
    layer2 = [view2 layer];
    [layer2 setCornerRadius:6.0];
  }
}

- (void)setPageSheetPresentation
{
  [(PKNavigationController *)self setModalPresentationStyle:1];

  [(PKNavigationController *)self setModalTransitionStyle:0];
}

- (void)_updateWithWallpaperImage:(id)image
{
  wallpaperView = self->_wallpaperView;
  if (wallpaperView)
  {
    imageCopy = image;
    [(UIImageView *)wallpaperView setImage:imageCopy];
  }

  else
  {
    v6 = MEMORY[0x1E69DCAE0];
    imageCopy2 = image;
    v8 = [[v6 alloc] initWithImage:imageCopy2];

    v9 = self->_wallpaperView;
    self->_wallpaperView = v8;

    backgroundView = self->_backgroundView;
    if (backgroundView)
    {
      [(UIView *)backgroundView insertSubview:self->_wallpaperView belowSubview:self->_blurView];
    }
  }

  viewIfLoaded = [(PKNavigationController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)setSupportedInterfaceOrientations:(unint64_t)orientations
{
  if (!self->_hasExplicitlyDefinedSupportedInterfaceOrientations)
  {
    self->_hasExplicitlyDefinedSupportedInterfaceOrientations = 1;
    self->_explicitlyDefinedSupportedInterfaceOrientations = orientations;
    goto LABEL_5;
  }

  explicitlyDefinedSupportedInterfaceOrientations = self->_explicitlyDefinedSupportedInterfaceOrientations;
  self->_hasExplicitlyDefinedSupportedInterfaceOrientations = 1;
  self->_explicitlyDefinedSupportedInterfaceOrientations = orientations;
  if (explicitlyDefinedSupportedInterfaceOrientations != orientations)
  {
LABEL_5:
    [(PKNavigationController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  transitionCoordinator = [controllerCopy transitionCoordinator];
  v11 = transitionCoordinator;
  if (transitionCoordinator)
  {
    transitionCoordinator2 = transitionCoordinator;
  }

  else
  {
    transitionCoordinator2 = [viewControllerCopy transitionCoordinator];
  }

  v13 = transitionCoordinator2;

  v14 = [v13 viewControllerForKey:*MEMORY[0x1E69DE768]];
  v15 = v14;
  if (v14 != self)
  {
    if (v13 && v14)
    {
      objc_initWeak(&location, self);
      if (animatedCopy)
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __79__PKNavigationController_navigationController_willShowViewController_animated___block_invoke;
        v28[3] = &unk_1E8017CD0;
        v16 = &v30;
        objc_copyWeak(&v30, &location);
        v29 = viewControllerCopy;
        v31 = animatedCopy;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __79__PKNavigationController_navigationController_willShowViewController_animated___block_invoke_2;
        v24[3] = &unk_1E8017CD0;
        objc_copyWeak(&v26, &location);
        v25 = v15;
        v27 = animatedCopy;
        [v13 animateAlongsideTransition:v28 completion:v24];
        v17 = &v29;

        objc_destroyWeak(&v26);
      }

      else
      {
        [(PKNavigationController *)self _updateBarAppearanceForViewController:viewControllerCopy animated:0];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __79__PKNavigationController_navigationController_willShowViewController_animated___block_invoke_3;
        v20[3] = &unk_1E8017CD0;
        v16 = &v22;
        objc_copyWeak(&v22, &location);
        v21 = v15;
        v23 = 0;
        [v13 notifyWhenInteractionChangesUsingBlock:v20];
        v17 = &v21;
      }

      objc_destroyWeak(v16);
      objc_destroyWeak(&location);
    }

    else
    {
      interactivePopGestureRecognizer = [controllerCopy interactivePopGestureRecognizer];
      state = [interactivePopGestureRecognizer state];

      if (state <= 5 && ((1 << state) & 0x31) != 0)
      {
        [(PKNavigationController *)self _updateBarAppearanceForViewController:viewControllerCopy animated:animatedCopy];
      }
    }
  }
}

void __79__PKNavigationController_navigationController_willShowViewController_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateBarAppearanceForViewController:*(a1 + 32) animated:*(a1 + 48)];
}

void __79__PKNavigationController_navigationController_willShowViewController_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 isCancelled];

  if (v4)
  {
    [WeakRetained _updateBarAppearanceForViewController:*(a1 + 32) animated:*(a1 + 48)];
  }
}

void __79__PKNavigationController_navigationController_willShowViewController_animated___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 isCancelled];

  if (v4)
  {
    [WeakRetained _updateBarAppearanceForViewController:*(a1 + 32) animated:*(a1 + 48)];
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  v8 = viewControllerCopy;
  if (animatedCopy)
  {
    v9 = MEMORY[0x1E69DD250];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__PKNavigationController_navigationController_didShowViewController_animated___block_invoke;
    v10[3] = &unk_1E8013D60;
    v10[4] = self;
    v11 = viewControllerCopy;
    v12 = 1;
    [v9 animateWithDuration:4 delay:v10 options:0 animations:0.25 completion:0.0];
  }

  else
  {
    [(PKNavigationController *)self _updateBarAppearanceForViewController:viewControllerCopy animated:0];
  }
}

@end