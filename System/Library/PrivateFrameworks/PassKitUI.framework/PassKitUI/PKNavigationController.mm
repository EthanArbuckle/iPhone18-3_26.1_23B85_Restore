@interface PKNavigationController
- (BOOL)_canShowWhileLocked;
- (PKNavigationController)init;
- (PKNavigationController)initWithRootViewController:(id)a3;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_updateBarAppearanceForViewController:(id)a3 animated:(BOOL)a4;
- (void)_updateWithWallpaperImage:(id)a3;
- (void)dealloc;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)promptAppStoreReviewForTrigger:(unint64_t)a3;
- (void)setCustomFormSheetPresentationStyleForiPad;
- (void)setNeedsNavigationBarUpdateAnimated:(BOOL)a3;
- (void)setNeedsNavigationBarUpdateFromViewController:(id)a3 animated:(BOOL)a4;
- (void)setPageSheetPresentation;
- (void)setSupportedInterfaceOrientations:(unint64_t)a3;
- (void)setupBackgroundViewWithVisualEffect:(id)a3;
- (void)setupWallpaperWithBlurEffectStyle:(int64_t)a3;
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
    v3 = [(PKNavigationController *)self view];
    [v3 insertSubview:self->_backgroundView atIndex:0];
  }

  v4 = [(PKNavigationController *)self topViewController];
  [(PKNavigationController *)self _updateBarAppearanceForViewController:v4 animated:0];
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
  v3 = [(PKNavigationController *)self view];
  [v3 bounds];
  [(UIView *)self->_backgroundView setFrame:?];
  [(UIView *)self->_backgroundView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UIVisualEffectView *)self->_blurView setFrame:?];
  [(UIImageView *)self->_wallpaperView setFrame:v5, v7, v9, v11];
}

- (PKNavigationController)initWithRootViewController:(id)a3
{
  v4 = a3;
  v5 = [(PKNavigationController *)self init];
  v6 = v5;
  if (v5)
  {
    [(PKNavigationController *)v5 pushViewController:v4 animated:0];
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

- (void)_updateBarAppearanceForViewController:(id)a3 animated:(BOOL)a4
{
  v14 = a3;
  v5 = [(PKNavigationController *)self isViewLoaded];
  v6 = v14;
  if (!v5)
  {
    goto LABEL_23;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v14 pkui_navigationStatusBarStyleDescriptor];
    v9 = v8;
    if (v8 <= 3 && v8 != 2 && (v7 & 1) != 0)
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
    v10 = [(PKNavigationController *)self navigationBar];
    if (v9 == 3)
    {
      v11 = [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      if (v9 != 1)
      {
        v12 = 0;
        goto LABEL_19;
      }

      v11 = [MEMORY[0x1E69DC888] whiteColor];
    }

    v12 = v11;
LABEL_19:
    [(PKNavigationController *)self setNeedsStatusBarAppearanceUpdate];
    goto LABEL_20;
  }

LABEL_15:
  v10 = [(PKNavigationController *)self navigationBar];
  v12 = 0;
LABEL_20:
  v13 = [v10 tintColor];
  if (([v13 isEqual:v12] & 1) == 0)
  {
    [v10 setTintColor:v12];
  }

  v6 = v14;
LABEL_23:
}

- (void)promptAppStoreReviewForTrigger:(unint64_t)a3
{
  if (!self->_reviewPromptHelper)
  {
    v5 = objc_alloc_init(PKStoreKitReviewPromptHelper);
    reviewPromptHelper = self->_reviewPromptHelper;
    self->_reviewPromptHelper = v5;
  }

  v7 = [(PKNavigationController *)self view];
  v8 = [v7 window];
  v9 = [v8 windowScene];

  [(PKStoreKitReviewPromptHelper *)self->_reviewPromptHelper requestReviewInSceneIfEligible:v9 trigger:a3];
}

- (void)setupBackgroundViewWithVisualEffect:(id)a3
{
  v4 = a3;
  blurView = self->_blurView;
  v12 = v4;
  if (self->_backgroundView | blurView)
  {
    [(UIVisualEffectView *)blurView setEffect:v4];
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
    v10 = [(PKNavigationController *)self viewIfLoaded];
    v11 = v10;
    if (v10)
    {
      [v10 insertSubview:self->_backgroundView atIndex:0];
      [v11 setNeedsLayout];
    }
  }
}

- (void)setupWallpaperWithBlurEffectStyle:(int64_t)a3
{
  wallpaperView = self->_wallpaperView;
  if (self->_wallpaperRequested)
  {
    if (!wallpaperView)
    {
      self->_outstandingWallpaperStyle = a3;
      return;
    }
  }

  else if (!wallpaperView)
  {
    self->_wallpaperRequested = 1;
    self->_outstandingWallpaperStyle = a3;
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

  v7 = [MEMORY[0x1E69DC730] effectWithStyle:a3];
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

- (void)setNeedsNavigationBarUpdateAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(PKNavigationController *)self isViewLoaded])
  {
    v5 = [(PKNavigationController *)self topViewController];
    if (v5)
    {
      v6 = v5;
      [(PKNavigationController *)self _updateBarAppearanceForViewController:v5 animated:v3];
      v5 = v6;
    }
  }
}

- (void)setNeedsNavigationBarUpdateFromViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (v7)
  {
    if ([(PKNavigationController *)self isViewLoaded])
    {
      v6 = [(PKNavigationController *)self topViewController];
      if (v6 == v7)
      {
        [(PKNavigationController *)self _updateBarAppearanceForViewController:v6 animated:v4];
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
    v3 = [(PKNavigationController *)self view];
    v4 = [v3 layer];
    [v4 setMasksToBounds:1];

    v6 = [(PKNavigationController *)self view];
    v5 = [v6 layer];
    [v5 setCornerRadius:6.0];
  }
}

- (void)setPageSheetPresentation
{
  [(PKNavigationController *)self setModalPresentationStyle:1];

  [(PKNavigationController *)self setModalTransitionStyle:0];
}

- (void)_updateWithWallpaperImage:(id)a3
{
  wallpaperView = self->_wallpaperView;
  if (wallpaperView)
  {
    v5 = a3;
    [(UIImageView *)wallpaperView setImage:v5];
  }

  else
  {
    v6 = MEMORY[0x1E69DCAE0];
    v7 = a3;
    v8 = [[v6 alloc] initWithImage:v7];

    v9 = self->_wallpaperView;
    self->_wallpaperView = v8;

    backgroundView = self->_backgroundView;
    if (backgroundView)
    {
      [(UIView *)backgroundView insertSubview:self->_wallpaperView belowSubview:self->_blurView];
    }
  }

  v11 = [(PKNavigationController *)self viewIfLoaded];
  [v11 setNeedsLayout];
}

- (void)setSupportedInterfaceOrientations:(unint64_t)a3
{
  if (!self->_hasExplicitlyDefinedSupportedInterfaceOrientations)
  {
    self->_hasExplicitlyDefinedSupportedInterfaceOrientations = 1;
    self->_explicitlyDefinedSupportedInterfaceOrientations = a3;
    goto LABEL_5;
  }

  explicitlyDefinedSupportedInterfaceOrientations = self->_explicitlyDefinedSupportedInterfaceOrientations;
  self->_hasExplicitlyDefinedSupportedInterfaceOrientations = 1;
  self->_explicitlyDefinedSupportedInterfaceOrientations = a3;
  if (explicitlyDefinedSupportedInterfaceOrientations != a3)
  {
LABEL_5:
    [(PKNavigationController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v8 transitionCoordinator];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v9 transitionCoordinator];
  }

  v13 = v12;

  v14 = [v13 viewControllerForKey:*MEMORY[0x1E69DE768]];
  v15 = v14;
  if (v14 != self)
  {
    if (v13 && v14)
    {
      objc_initWeak(&location, self);
      if (v5)
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __79__PKNavigationController_navigationController_willShowViewController_animated___block_invoke;
        v28[3] = &unk_1E8017CD0;
        v16 = &v30;
        objc_copyWeak(&v30, &location);
        v29 = v9;
        v31 = v5;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __79__PKNavigationController_navigationController_willShowViewController_animated___block_invoke_2;
        v24[3] = &unk_1E8017CD0;
        objc_copyWeak(&v26, &location);
        v25 = v15;
        v27 = v5;
        [v13 animateAlongsideTransition:v28 completion:v24];
        v17 = &v29;

        objc_destroyWeak(&v26);
      }

      else
      {
        [(PKNavigationController *)self _updateBarAppearanceForViewController:v9 animated:0];
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
      v18 = [v8 interactivePopGestureRecognizer];
      v19 = [v18 state];

      if (v19 <= 5 && ((1 << v19) & 0x31) != 0)
      {
        [(PKNavigationController *)self _updateBarAppearanceForViewController:v9 animated:v5];
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

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = v7;
  if (v5)
  {
    v9 = MEMORY[0x1E69DD250];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__PKNavigationController_navigationController_didShowViewController_animated___block_invoke;
    v10[3] = &unk_1E8013D60;
    v10[4] = self;
    v11 = v7;
    v12 = 1;
    [v9 animateWithDuration:4 delay:v10 options:0 animations:0.25 completion:0.0];
  }

  else
  {
    [(PKNavigationController *)self _updateBarAppearanceForViewController:v7 animated:0];
  }
}

@end