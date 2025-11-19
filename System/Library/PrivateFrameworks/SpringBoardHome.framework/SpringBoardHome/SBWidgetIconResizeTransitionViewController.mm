@interface SBWidgetIconResizeTransitionViewController
- (CGRect)visibleBounds;
- (SBWidgetIconResizeTransitionViewController)initWithLeafIcon:(id)a3 allowedGridSizeClasses:(id)a4 gridSizeClassDomain:(id)a5 viewHelper:(id)a6 options:(unint64_t)a7;
- (SBWidgetIconResizeTransitionViewControllerDelegate)delegate;
- (id)blurViewWithInputRadius:(double)a3;
- (id)effectiveGridSizeClassDomain;
- (id)replacementIconDataSourceForIconDataSource:(id)a3 gridSizeClass:(id)a4;
- (id)replacementIconForIcon:(id)a3 gridSizeClass:(id)a4;
- (id)succinctDescription;
- (id)viewControllerForGridSizeClass:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)gatherViewControllers;
- (void)invalidate;
- (void)loadView;
- (void)setEndingCornerRadius:(double)a3;
- (void)setEndingGridSizeClass:(id)a3 animated:(BOOL)a4;
- (void)setEndingViewController:(id)a3 animated:(BOOL)a4;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)setStartingCornerRadius:(double)a3;
- (void)setStartingGridSizeClass:(id)a3;
- (void)setStartingViewController:(id)a3;
- (void)setTransitionProgress:(double)a3;
- (void)swapViewControllersAndClearEnding;
- (void)updateCornerRadius;
- (void)updateTransitionProgress;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SBWidgetIconResizeTransitionViewController

- (SBWidgetIconResizeTransitionViewController)initWithLeafIcon:(id)a3 allowedGridSizeClasses:(id)a4 gridSizeClassDomain:(id)a5 viewHelper:(id)a6 options:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v38.receiver = self;
  v38.super_class = SBWidgetIconResizeTransitionViewController;
  v17 = [(SBWidgetIconResizeTransitionViewController *)&v38 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_leafIcon, a3);
    v19 = [v14 copy];
    allowedGridSizeClasses = v18->_allowedGridSizeClasses;
    v18->_allowedGridSizeClasses = v19;

    objc_storeStrong(&v18->_gridSizeClassDomain, a5);
    objc_storeStrong(&v18->_viewHelper, a6);
    v18->_options = a7;
    if (a7)
    {
      v24 = [v14 copy];
      effectiveAllowedGridSizeClasses = v18->_effectiveAllowedGridSizeClasses;
      v18->_effectiveAllowedGridSizeClasses = v24;
    }

    else
    {
      effectiveAllowedGridSizeClasses = [v13 supportedGridSizeClasses];
      v22 = [effectiveAllowedGridSizeClasses gridSizeClassSetByIntersectingWithGridSizeClassSet:v14];
      v23 = v18->_effectiveAllowedGridSizeClasses;
      v18->_effectiveAllowedGridSizeClasses = v22;
    }

    v25 = [v16 listLayout];
    listLayout = v18->_listLayout;
    v18->_listLayout = v25;

    v27 = [v16 orientation];
    v28 = SBHIconListLayoutIconGridSizeClassSizes(v18->_listLayout, v27);
    v29 = [v28 copy];
    iconGridSizeClassSizes = v18->_iconGridSizeClassSizes;
    v18->_iconGridSizeClassSizes = v29;

    v31 = [v13 gridSizeClass];
    v32 = [v31 copy];
    startingGridSizeClass = v18->_startingGridSizeClass;
    v18->_startingGridSizeClass = v32;

    v34 = [(NSDictionary *)v18->_viewControllers objectForKey:v18->_startingGridSizeClass];
    startingViewController = v18->_startingViewController;
    v18->_startingViewController = v34;

    SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(v18->_listLayout, v27, v18->_startingGridSizeClass);
    v18->_startingCornerRadius = v36;
  }

  return v18;
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v3 setClipsToBounds:1];
  [(SBWidgetIconResizeTransitionViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = SBWidgetIconResizeTransitionViewController;
  [(SBWidgetIconResizeTransitionViewController *)&v14 viewDidLoad];
  [(SBWidgetIconResizeTransitionViewController *)self gatherViewControllers];
  v3 = [(SBWidgetIconResizeTransitionViewController *)self view];
  v4 = [[SBWidgetIconResizeContainerView alloc] initWithBlurRadius:15.0];
  endingContainerView = self->_endingContainerView;
  self->_endingContainerView = v4;

  [v3 addSubview:self->_endingContainerView];
  v6 = [[SBWidgetIconResizeContainerView alloc] initWithBlurRadius:0.0];
  startingContainerView = self->_startingContainerView;
  self->_startingContainerView = v6;

  [v3 addSubview:self->_startingContainerView];
  v8 = [(SBWidgetIconResizeTransitionViewController *)self startingViewController];
  v9 = [(SBWidgetIconResizeTransitionViewController *)self endingViewController];
  if (v9)
  {
    [(SBWidgetIconResizeTransitionViewController *)self bs_addChildViewController:v9 withSuperview:self->_endingContainerView];
    v10 = self->_endingContainerView;
    v11 = [v9 view];
    [(SBWidgetIconResizeContainerView *)v10 setContentView:v11];
  }

  if (v8)
  {
    [(SBWidgetIconResizeTransitionViewController *)self bs_addChildViewController:v8 withSuperview:self->_startingContainerView];
    v12 = self->_startingContainerView;
    v13 = [v8 view];
    [(SBWidgetIconResizeContainerView *)v12 setContentView:v13];
  }

  else
  {
    v13 = [(SBWidgetIconResizeTransitionViewController *)self startingGridSizeClass];
    v8 = [(SBWidgetIconResizeTransitionViewController *)self viewControllerForGridSizeClass:v13];
    [(SBWidgetIconResizeTransitionViewController *)self setStartingViewController:v8];
  }

  [(SBWidgetIconResizeTransitionViewController *)self updateCornerRadius];
}

- (void)setStartingGridSizeClass:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_startingGridSizeClass != v4 && ![(NSString *)v4 isEqualToString:?])
  {
    v6 = SBLogWidgetResizing();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "setting resize starting grid size class to %{public}@", &v13, 0xCu);
    }

    v7 = [(NSString *)v5 copy];
    startingGridSizeClass = self->_startingGridSizeClass;
    self->_startingGridSizeClass = v7;

    v9 = [(SBWidgetIconResizeTransitionViewController *)self viewControllerForGridSizeClass:v5];
    [(SBWidgetIconResizeTransitionViewController *)self setStartingViewController:v9];
    v10 = [(SBWidgetIconResizeTransitionViewController *)self listLayout];
    v11 = [(SBWidgetIconResizeTransitionViewController *)self viewHelper];
    SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(v10, [v11 orientation], v5);
    [(SBWidgetIconResizeTransitionViewController *)self setStartingCornerRadius:v12];
  }
}

- (void)setStartingViewController:(id)a3
{
  v5 = a3;
  startingViewController = self->_startingViewController;
  if (startingViewController != v5)
  {
    v8 = v5;
    if (startingViewController)
    {
      [(SBWidgetIconResizeTransitionViewController *)self bs_removeChildViewController:startingViewController animated:0 transitionBlock:0];
    }

    objc_storeStrong(&self->_startingViewController, a3);
    if (v8)
    {
      v7 = [(UIViewController *)v8 view];
      if ([(SBWidgetIconResizeTransitionViewController *)self isViewLoaded])
      {
        [(SBWidgetIconResizeTransitionViewController *)self bs_addChildViewController:v8 withSuperview:self->_startingContainerView];
        [(SBWidgetIconResizeContainerView *)self->_startingContainerView setContentView:v7];
      }

      [(SBWidgetIconResizeTransitionViewController *)self updateTransitionProgress];
    }

    else
    {
      [(SBWidgetIconResizeContainerView *)self->_startingContainerView setContentView:0];
    }

    v5 = v8;
  }
}

- (void)setStartingCornerRadius:(double)a3
{
  if (self->_startingCornerRadius != a3)
  {
    self->_startingCornerRadius = a3;
    [(SBWidgetIconResizeTransitionViewController *)self updateCornerRadius];
  }
}

- (void)setEndingGridSizeClass:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (self->_endingGridSizeClass != v6 && ![(NSString *)v6 isEqualToString:?])
  {
    v8 = SBLogWidgetResizing();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v7;
      _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "setting resize ending grid size class to %{public}@", &v16, 0xCu);
    }

    v9 = [(NSString *)v7 copy];
    endingGridSizeClass = self->_endingGridSizeClass;
    self->_endingGridSizeClass = v9;

    if (v7)
    {
      v11 = [(SBWidgetIconResizeTransitionViewController *)self viewControllerForGridSizeClass:v7];
      v12 = [(SBWidgetIconResizeTransitionViewController *)self listLayout];
      v13 = [(SBWidgetIconResizeTransitionViewController *)self viewHelper];
      SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(v12, [v13 orientation], v7);
      v15 = v14;
    }

    else
    {
      v11 = 0;
      v15 = 0.0;
    }

    [(SBWidgetIconResizeTransitionViewController *)self setEndingViewController:v11 animated:v4];
    [(SBWidgetIconResizeTransitionViewController *)self setEndingCornerRadius:v15];
  }
}

- (void)setEndingViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  endingViewController = self->_endingViewController;
  if (endingViewController != v7)
  {
    v9 = endingViewController;
    v10 = [(UIViewController *)self->_endingViewController viewIfLoaded];
    objc_storeStrong(&self->_endingViewController, a3);
    if (v7)
    {
      v11 = [(UIViewController *)v7 view];
      if ([(SBWidgetIconResizeTransitionViewController *)self isViewLoaded])
      {
        [(SBWidgetIconResizeTransitionViewController *)self bs_addChildViewController:v7 withSuperview:self->_endingContainerView];
        [(SBWidgetIconResizeContainerView *)self->_endingContainerView setContentView:v11];
      }

      if (v4)
      {
        v12 = MEMORY[0x1E69DD250];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __79__SBWidgetIconResizeTransitionViewController_setEndingViewController_animated___block_invoke;
        v18[3] = &unk_1E8088C90;
        v19 = v10;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __79__SBWidgetIconResizeTransitionViewController_setEndingViewController_animated___block_invoke_2;
        v15[3] = &unk_1E80893F0;
        v16 = v9;
        v17 = self;
        [v12 animateWithDuration:v18 animations:v15 completion:0.2];
      }

      else if (v9)
      {
        v14 = [(SBWidgetIconResizeTransitionViewController *)self startingViewController];

        if (v9 != v14)
        {
          [(SBWidgetIconResizeTransitionViewController *)self bs_removeChildViewController:v9 animated:0 transitionBlock:0];
        }
      }

      [(SBWidgetIconResizeTransitionViewController *)self updateTransitionProgress];
    }

    else if (v9)
    {
      v13 = [(SBWidgetIconResizeTransitionViewController *)self startingViewController];

      if (v9 != v13)
      {
        [(SBWidgetIconResizeTransitionViewController *)self bs_removeChildViewController:v9 animated:0 transitionBlock:0];
      }

      [(SBWidgetIconResizeContainerView *)self->_endingContainerView setContentView:0];
    }
  }
}

void __79__SBWidgetIconResizeTransitionViewController_setEndingViewController_animated___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = [*(a1 + 40) endingViewController];
    if (v1 == v3)
    {
    }

    else
    {
      v8 = v3;
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) startingViewController];

      if (v4 != v5)
      {
        v7 = *(a1 + 32);
        v6 = *(a1 + 40);

        [v6 bs_removeChildViewController:v7 animated:0 transitionBlock:0];
      }
    }
  }
}

- (void)setEndingCornerRadius:(double)a3
{
  if (self->_endingCornerRadius != a3)
  {
    self->_endingCornerRadius = a3;
    [(SBWidgetIconResizeTransitionViewController *)self updateCornerRadius];
  }
}

- (void)setTransitionProgress:(double)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_transitionProgress != a3)
  {
    v5 = SBLogWidgetResizing();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "setting resize transition progress to %f", &v6, 0xCu);
    }

    self->_transitionProgress = a3;
    [(SBWidgetIconResizeTransitionViewController *)self updateCornerRadius];
    [(SBWidgetIconResizeTransitionViewController *)self updateTransitionProgress];
  }
}

- (id)blurViewWithInputRadius:(double)a3
{
  v3 = [[SBWidgetIconResizeBackdropView alloc] initWithBlurRadius:a3];

  return v3;
}

- (void)updateTransitionProgress
{
  [(SBWidgetIconResizeTransitionViewController *)self transitionProgress];
  v4 = v3;
  v14 = [(SBWidgetIconResizeTransitionViewController *)self startingViewController];
  v5 = [(SBWidgetIconResizeTransitionViewController *)self startingContainerView];
  [v5 setAlpha:1.0 - v4];
  v6 = [(SBWidgetIconResizeTransitionViewController *)self endingViewController];
  v7 = [(SBWidgetIconResizeTransitionViewController *)self endingContainerView];
  [v7 setAlpha:1.0];
  v8 = [v5 blurView];
  v9 = [v14 isContentReady];
  v10 = v4 * 15.0 + (1.0 - v4) * 0.0;
  if (!v9)
  {
    v10 = 15.0;
  }

  [v8 setBlurRadius:v10];
  v11 = [v7 blurView];
  v12 = [v6 isContentReady];
  v13 = (1.0 - v4) * 15.0 + (1.0 - (1.0 - v4)) * 0.0;
  if (!v12)
  {
    v13 = 15.0;
  }

  [v11 setBlurRadius:v13];
}

- (void)updateCornerRadius
{
  v8 = [(SBWidgetIconResizeTransitionViewController *)self viewIfLoaded];
  [(SBWidgetIconResizeTransitionViewController *)self startingCornerRadius];
  v4 = v3;
  [(SBWidgetIconResizeTransitionViewController *)self endingCornerRadius];
  v6 = v5;
  [(SBWidgetIconResizeTransitionViewController *)self transitionProgress];
  [v8 _setContinuousCornerRadius:v6 * v7 + (1.0 - v7) * v4];
}

- (void)swapViewControllersAndClearEnding
{
  v3 = [(SBWidgetIconResizeTransitionViewController *)self endingGridSizeClass];
  [(SBWidgetIconResizeTransitionViewController *)self setStartingGridSizeClass:v3];
  [(SBWidgetIconResizeTransitionViewController *)self setEndingGridSizeClass:0];
  [(SBWidgetIconResizeTransitionViewController *)self setTransitionProgress:0.0];
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = SBWidgetIconResizeTransitionViewController;
  [(SBWidgetIconResizeTransitionViewController *)&v18 viewDidLayoutSubviews];
  v3 = [(SBWidgetIconResizeTransitionViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  UIRectGetCenter();
  v13 = v12;
  v15 = v14;
  v16 = [(SBWidgetIconResizeTransitionViewController *)self startingContainerView];
  [v16 setCenter:{v13, v15}];
  [v16 setBounds:{v5, v7, v9, v11}];
  v17 = [(SBWidgetIconResizeTransitionViewController *)self endingContainerView];
  [v17 setCenter:{v13, v15}];
  [v17 setBounds:{v5, v7, v9, v11}];
}

- (id)effectiveGridSizeClassDomain
{
  v2 = [(SBWidgetIconResizeTransitionViewController *)self gridSizeClassDomain];
  v3 = [SBHIconGridSizeClassDomain effectiveGridSizeClassDomainForDomain:v2];

  return v3;
}

- (id)viewControllerForGridSizeClass:(id)a3
{
  v4 = a3;
  v5 = [(SBWidgetIconResizeTransitionViewController *)self viewControllers];
  if (![v5 count])
  {
    [(SBWidgetIconResizeTransitionViewController *)self gatherViewControllers];
    v6 = [(SBWidgetIconResizeTransitionViewController *)self viewControllers];

    v5 = v6;
  }

  v7 = [v5 objectForKey:v4];

  return v7;
}

- (void)gatherViewControllers
{
  v3 = [(SBWidgetIconResizeTransitionViewController *)self leafIcon];
  v4 = [v3 activeDataSource];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(SBWidgetIconResizeTransitionViewController *)self effectiveGridSizeClassDomain];
  v7 = [(SBWidgetIconResizeTransitionViewController *)self viewHelper];
  v8 = [(SBWidgetIconResizeTransitionViewController *)self effectiveAllowedGridSizeClasses];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__SBWidgetIconResizeTransitionViewController_gatherViewControllers__block_invoke;
  v13[3] = &unk_1E80915C8;
  v13[4] = self;
  v14 = v3;
  v15 = v4;
  v16 = v7;
  v17 = v5;
  v9 = v5;
  v10 = v7;
  v11 = v4;
  v12 = v3;
  [v8 enumerateGridSizeClassesInDomain:v6 usingBlock:v13];
  [(SBWidgetIconResizeTransitionViewController *)self setViewControllers:v9];
}

void __67__SBWidgetIconResizeTransitionViewController_gatherViewControllers__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v8 = [v3 replacementIconForIcon:v4 gridSizeClass:v5];
  v6 = [*(a1 + 32) replacementIconDataSourceForIconDataSource:*(a1 + 48) gridSizeClass:v5];
  v7 = [*(a1 + 56) viewControllerForIconDataSource:v6 icon:v8 gridSizeClass:v5];
  [v7 addObserver:*(a1 + 32)];
  [*(a1 + 64) setObject:v7 forKey:v5];
}

- (id)replacementIconForIcon:(id)a3 gridSizeClass:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBWidgetIconResizeTransitionViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 iconResizeTransitionViewController:self willUseIcon:v6 forViewControllerForGridSizeClass:v7];

    v6 = v9;
  }

  return v6;
}

- (id)replacementIconDataSourceForIconDataSource:(id)a3 gridSizeClass:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBWidgetIconResizeTransitionViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 iconResizeTransitionViewController:self willUseIconDataSource:v6 forViewControllerForGridSizeClass:v7];

    v6 = v9;
  }

  return v6;
}

- (CGRect)visibleBounds
{
  v2 = [(SBWidgetIconResizeTransitionViewController *)self view];
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

- (void)invalidate
{
  v2 = [(SBWidgetIconResizeTransitionViewController *)self viewControllers];
  [v2 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_78];
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v5 = [(SBWidgetIconResizeTransitionViewController *)self effectiveGridSizeClassDomain];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__SBWidgetIconResizeTransitionViewController_appendDescriptionToStream___block_invoke;
  v8[3] = &unk_1E8088F88;
  v9 = v4;
  v10 = v5;
  v11 = self;
  v6 = v5;
  v7 = v4;
  [v7 appendProem:self block:v8];
}

id __72__SBWidgetIconResizeTransitionViewController_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) startingGridSizeClass];
  v5 = [v3 descriptionForGridSizeClass:v4];
  [v2 appendString:v5 withName:@"startingGridSizeClass"];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) endingGridSizeClass];
  v9 = [v7 descriptionForGridSizeClass:v8];
  [v6 appendString:v9 withName:@"endingGridSizeClass"];

  v10 = *(a1 + 32);
  [*(a1 + 48) transitionProgress];
  return [v10 appendFloat:@"transitionProgress" withName:?];
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  self->_iconImageInfo.size.width = v3;
  self->_iconImageInfo.size.height = v4;
  self->_iconImageInfo.scale = v5;
  self->_iconImageInfo.continuousCornerRadius = v6;
}

- (SBWidgetIconResizeTransitionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end