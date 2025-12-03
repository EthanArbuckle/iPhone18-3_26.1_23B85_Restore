@interface SBWidgetIconResizeTransitionViewController
- (CGRect)visibleBounds;
- (SBWidgetIconResizeTransitionViewController)initWithLeafIcon:(id)icon allowedGridSizeClasses:(id)classes gridSizeClassDomain:(id)domain viewHelper:(id)helper options:(unint64_t)options;
- (SBWidgetIconResizeTransitionViewControllerDelegate)delegate;
- (id)blurViewWithInputRadius:(double)radius;
- (id)effectiveGridSizeClassDomain;
- (id)replacementIconDataSourceForIconDataSource:(id)source gridSizeClass:(id)class;
- (id)replacementIconForIcon:(id)icon gridSizeClass:(id)class;
- (id)succinctDescription;
- (id)viewControllerForGridSizeClass:(id)class;
- (void)appendDescriptionToStream:(id)stream;
- (void)gatherViewControllers;
- (void)invalidate;
- (void)loadView;
- (void)setEndingCornerRadius:(double)radius;
- (void)setEndingGridSizeClass:(id)class animated:(BOOL)animated;
- (void)setEndingViewController:(id)controller animated:(BOOL)animated;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)setStartingCornerRadius:(double)radius;
- (void)setStartingGridSizeClass:(id)class;
- (void)setStartingViewController:(id)controller;
- (void)setTransitionProgress:(double)progress;
- (void)swapViewControllersAndClearEnding;
- (void)updateCornerRadius;
- (void)updateTransitionProgress;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SBWidgetIconResizeTransitionViewController

- (SBWidgetIconResizeTransitionViewController)initWithLeafIcon:(id)icon allowedGridSizeClasses:(id)classes gridSizeClassDomain:(id)domain viewHelper:(id)helper options:(unint64_t)options
{
  iconCopy = icon;
  classesCopy = classes;
  domainCopy = domain;
  helperCopy = helper;
  v38.receiver = self;
  v38.super_class = SBWidgetIconResizeTransitionViewController;
  v17 = [(SBWidgetIconResizeTransitionViewController *)&v38 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_leafIcon, icon);
    v19 = [classesCopy copy];
    allowedGridSizeClasses = v18->_allowedGridSizeClasses;
    v18->_allowedGridSizeClasses = v19;

    objc_storeStrong(&v18->_gridSizeClassDomain, domain);
    objc_storeStrong(&v18->_viewHelper, helper);
    v18->_options = options;
    if (options)
    {
      v24 = [classesCopy copy];
      effectiveAllowedGridSizeClasses = v18->_effectiveAllowedGridSizeClasses;
      v18->_effectiveAllowedGridSizeClasses = v24;
    }

    else
    {
      effectiveAllowedGridSizeClasses = [iconCopy supportedGridSizeClasses];
      v22 = [effectiveAllowedGridSizeClasses gridSizeClassSetByIntersectingWithGridSizeClassSet:classesCopy];
      v23 = v18->_effectiveAllowedGridSizeClasses;
      v18->_effectiveAllowedGridSizeClasses = v22;
    }

    listLayout = [helperCopy listLayout];
    listLayout = v18->_listLayout;
    v18->_listLayout = listLayout;

    orientation = [helperCopy orientation];
    v28 = SBHIconListLayoutIconGridSizeClassSizes(v18->_listLayout, orientation);
    v29 = [v28 copy];
    iconGridSizeClassSizes = v18->_iconGridSizeClassSizes;
    v18->_iconGridSizeClassSizes = v29;

    gridSizeClass = [iconCopy gridSizeClass];
    v32 = [gridSizeClass copy];
    startingGridSizeClass = v18->_startingGridSizeClass;
    v18->_startingGridSizeClass = v32;

    v34 = [(NSDictionary *)v18->_viewControllers objectForKey:v18->_startingGridSizeClass];
    startingViewController = v18->_startingViewController;
    v18->_startingViewController = v34;

    SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(v18->_listLayout, orientation, v18->_startingGridSizeClass);
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
  view = [(SBWidgetIconResizeTransitionViewController *)self view];
  v4 = [[SBWidgetIconResizeContainerView alloc] initWithBlurRadius:15.0];
  endingContainerView = self->_endingContainerView;
  self->_endingContainerView = v4;

  [view addSubview:self->_endingContainerView];
  v6 = [[SBWidgetIconResizeContainerView alloc] initWithBlurRadius:0.0];
  startingContainerView = self->_startingContainerView;
  self->_startingContainerView = v6;

  [view addSubview:self->_startingContainerView];
  startingViewController = [(SBWidgetIconResizeTransitionViewController *)self startingViewController];
  endingViewController = [(SBWidgetIconResizeTransitionViewController *)self endingViewController];
  if (endingViewController)
  {
    [(SBWidgetIconResizeTransitionViewController *)self bs_addChildViewController:endingViewController withSuperview:self->_endingContainerView];
    v10 = self->_endingContainerView;
    view2 = [endingViewController view];
    [(SBWidgetIconResizeContainerView *)v10 setContentView:view2];
  }

  if (startingViewController)
  {
    [(SBWidgetIconResizeTransitionViewController *)self bs_addChildViewController:startingViewController withSuperview:self->_startingContainerView];
    v12 = self->_startingContainerView;
    view3 = [startingViewController view];
    [(SBWidgetIconResizeContainerView *)v12 setContentView:view3];
  }

  else
  {
    view3 = [(SBWidgetIconResizeTransitionViewController *)self startingGridSizeClass];
    startingViewController = [(SBWidgetIconResizeTransitionViewController *)self viewControllerForGridSizeClass:view3];
    [(SBWidgetIconResizeTransitionViewController *)self setStartingViewController:startingViewController];
  }

  [(SBWidgetIconResizeTransitionViewController *)self updateCornerRadius];
}

- (void)setStartingGridSizeClass:(id)class
{
  v15 = *MEMORY[0x1E69E9840];
  classCopy = class;
  v5 = classCopy;
  if (self->_startingGridSizeClass != classCopy && ![(NSString *)classCopy isEqualToString:?])
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
    listLayout = [(SBWidgetIconResizeTransitionViewController *)self listLayout];
    viewHelper = [(SBWidgetIconResizeTransitionViewController *)self viewHelper];
    SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(listLayout, [viewHelper orientation], v5);
    [(SBWidgetIconResizeTransitionViewController *)self setStartingCornerRadius:v12];
  }
}

- (void)setStartingViewController:(id)controller
{
  controllerCopy = controller;
  startingViewController = self->_startingViewController;
  if (startingViewController != controllerCopy)
  {
    v8 = controllerCopy;
    if (startingViewController)
    {
      [(SBWidgetIconResizeTransitionViewController *)self bs_removeChildViewController:startingViewController animated:0 transitionBlock:0];
    }

    objc_storeStrong(&self->_startingViewController, controller);
    if (v8)
    {
      view = [(UIViewController *)v8 view];
      if ([(SBWidgetIconResizeTransitionViewController *)self isViewLoaded])
      {
        [(SBWidgetIconResizeTransitionViewController *)self bs_addChildViewController:v8 withSuperview:self->_startingContainerView];
        [(SBWidgetIconResizeContainerView *)self->_startingContainerView setContentView:view];
      }

      [(SBWidgetIconResizeTransitionViewController *)self updateTransitionProgress];
    }

    else
    {
      [(SBWidgetIconResizeContainerView *)self->_startingContainerView setContentView:0];
    }

    controllerCopy = v8;
  }
}

- (void)setStartingCornerRadius:(double)radius
{
  if (self->_startingCornerRadius != radius)
  {
    self->_startingCornerRadius = radius;
    [(SBWidgetIconResizeTransitionViewController *)self updateCornerRadius];
  }
}

- (void)setEndingGridSizeClass:(id)class animated:(BOOL)animated
{
  animatedCopy = animated;
  v18 = *MEMORY[0x1E69E9840];
  classCopy = class;
  v7 = classCopy;
  if (self->_endingGridSizeClass != classCopy && ![(NSString *)classCopy isEqualToString:?])
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
      listLayout = [(SBWidgetIconResizeTransitionViewController *)self listLayout];
      viewHelper = [(SBWidgetIconResizeTransitionViewController *)self viewHelper];
      SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(listLayout, [viewHelper orientation], v7);
      v15 = v14;
    }

    else
    {
      v11 = 0;
      v15 = 0.0;
    }

    [(SBWidgetIconResizeTransitionViewController *)self setEndingViewController:v11 animated:animatedCopy];
    [(SBWidgetIconResizeTransitionViewController *)self setEndingCornerRadius:v15];
  }
}

- (void)setEndingViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  endingViewController = self->_endingViewController;
  if (endingViewController != controllerCopy)
  {
    v9 = endingViewController;
    viewIfLoaded = [(UIViewController *)self->_endingViewController viewIfLoaded];
    objc_storeStrong(&self->_endingViewController, controller);
    if (controllerCopy)
    {
      view = [(UIViewController *)controllerCopy view];
      if ([(SBWidgetIconResizeTransitionViewController *)self isViewLoaded])
      {
        [(SBWidgetIconResizeTransitionViewController *)self bs_addChildViewController:controllerCopy withSuperview:self->_endingContainerView];
        [(SBWidgetIconResizeContainerView *)self->_endingContainerView setContentView:view];
      }

      if (animatedCopy)
      {
        v12 = MEMORY[0x1E69DD250];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __79__SBWidgetIconResizeTransitionViewController_setEndingViewController_animated___block_invoke;
        v18[3] = &unk_1E8088C90;
        v19 = viewIfLoaded;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __79__SBWidgetIconResizeTransitionViewController_setEndingViewController_animated___block_invoke_2;
        v15[3] = &unk_1E80893F0;
        v16 = v9;
        selfCopy = self;
        [v12 animateWithDuration:v18 animations:v15 completion:0.2];
      }

      else if (v9)
      {
        startingViewController = [(SBWidgetIconResizeTransitionViewController *)self startingViewController];

        if (v9 != startingViewController)
        {
          [(SBWidgetIconResizeTransitionViewController *)self bs_removeChildViewController:v9 animated:0 transitionBlock:0];
        }
      }

      [(SBWidgetIconResizeTransitionViewController *)self updateTransitionProgress];
    }

    else if (v9)
    {
      startingViewController2 = [(SBWidgetIconResizeTransitionViewController *)self startingViewController];

      if (v9 != startingViewController2)
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

- (void)setEndingCornerRadius:(double)radius
{
  if (self->_endingCornerRadius != radius)
  {
    self->_endingCornerRadius = radius;
    [(SBWidgetIconResizeTransitionViewController *)self updateCornerRadius];
  }
}

- (void)setTransitionProgress:(double)progress
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_transitionProgress != progress)
  {
    v5 = SBLogWidgetResizing();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      progressCopy = progress;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "setting resize transition progress to %f", &v6, 0xCu);
    }

    self->_transitionProgress = progress;
    [(SBWidgetIconResizeTransitionViewController *)self updateCornerRadius];
    [(SBWidgetIconResizeTransitionViewController *)self updateTransitionProgress];
  }
}

- (id)blurViewWithInputRadius:(double)radius
{
  v3 = [[SBWidgetIconResizeBackdropView alloc] initWithBlurRadius:radius];

  return v3;
}

- (void)updateTransitionProgress
{
  [(SBWidgetIconResizeTransitionViewController *)self transitionProgress];
  v4 = v3;
  startingViewController = [(SBWidgetIconResizeTransitionViewController *)self startingViewController];
  startingContainerView = [(SBWidgetIconResizeTransitionViewController *)self startingContainerView];
  [startingContainerView setAlpha:1.0 - v4];
  endingViewController = [(SBWidgetIconResizeTransitionViewController *)self endingViewController];
  endingContainerView = [(SBWidgetIconResizeTransitionViewController *)self endingContainerView];
  [endingContainerView setAlpha:1.0];
  blurView = [startingContainerView blurView];
  isContentReady = [startingViewController isContentReady];
  v10 = v4 * 15.0 + (1.0 - v4) * 0.0;
  if (!isContentReady)
  {
    v10 = 15.0;
  }

  [blurView setBlurRadius:v10];
  blurView2 = [endingContainerView blurView];
  isContentReady2 = [endingViewController isContentReady];
  v13 = (1.0 - v4) * 15.0 + (1.0 - (1.0 - v4)) * 0.0;
  if (!isContentReady2)
  {
    v13 = 15.0;
  }

  [blurView2 setBlurRadius:v13];
}

- (void)updateCornerRadius
{
  viewIfLoaded = [(SBWidgetIconResizeTransitionViewController *)self viewIfLoaded];
  [(SBWidgetIconResizeTransitionViewController *)self startingCornerRadius];
  v4 = v3;
  [(SBWidgetIconResizeTransitionViewController *)self endingCornerRadius];
  v6 = v5;
  [(SBWidgetIconResizeTransitionViewController *)self transitionProgress];
  [viewIfLoaded _setContinuousCornerRadius:v6 * v7 + (1.0 - v7) * v4];
}

- (void)swapViewControllersAndClearEnding
{
  endingGridSizeClass = [(SBWidgetIconResizeTransitionViewController *)self endingGridSizeClass];
  [(SBWidgetIconResizeTransitionViewController *)self setStartingGridSizeClass:endingGridSizeClass];
  [(SBWidgetIconResizeTransitionViewController *)self setEndingGridSizeClass:0];
  [(SBWidgetIconResizeTransitionViewController *)self setTransitionProgress:0.0];
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = SBWidgetIconResizeTransitionViewController;
  [(SBWidgetIconResizeTransitionViewController *)&v18 viewDidLayoutSubviews];
  view = [(SBWidgetIconResizeTransitionViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  UIRectGetCenter();
  v13 = v12;
  v15 = v14;
  startingContainerView = [(SBWidgetIconResizeTransitionViewController *)self startingContainerView];
  [startingContainerView setCenter:{v13, v15}];
  [startingContainerView setBounds:{v5, v7, v9, v11}];
  endingContainerView = [(SBWidgetIconResizeTransitionViewController *)self endingContainerView];
  [endingContainerView setCenter:{v13, v15}];
  [endingContainerView setBounds:{v5, v7, v9, v11}];
}

- (id)effectiveGridSizeClassDomain
{
  gridSizeClassDomain = [(SBWidgetIconResizeTransitionViewController *)self gridSizeClassDomain];
  v3 = [SBHIconGridSizeClassDomain effectiveGridSizeClassDomainForDomain:gridSizeClassDomain];

  return v3;
}

- (id)viewControllerForGridSizeClass:(id)class
{
  classCopy = class;
  viewControllers = [(SBWidgetIconResizeTransitionViewController *)self viewControllers];
  if (![viewControllers count])
  {
    [(SBWidgetIconResizeTransitionViewController *)self gatherViewControllers];
    viewControllers2 = [(SBWidgetIconResizeTransitionViewController *)self viewControllers];

    viewControllers = viewControllers2;
  }

  v7 = [viewControllers objectForKey:classCopy];

  return v7;
}

- (void)gatherViewControllers
{
  leafIcon = [(SBWidgetIconResizeTransitionViewController *)self leafIcon];
  activeDataSource = [leafIcon activeDataSource];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  effectiveGridSizeClassDomain = [(SBWidgetIconResizeTransitionViewController *)self effectiveGridSizeClassDomain];
  viewHelper = [(SBWidgetIconResizeTransitionViewController *)self viewHelper];
  effectiveAllowedGridSizeClasses = [(SBWidgetIconResizeTransitionViewController *)self effectiveAllowedGridSizeClasses];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__SBWidgetIconResizeTransitionViewController_gatherViewControllers__block_invoke;
  v13[3] = &unk_1E80915C8;
  v13[4] = self;
  v14 = leafIcon;
  v15 = activeDataSource;
  v16 = viewHelper;
  v17 = v5;
  v9 = v5;
  v10 = viewHelper;
  v11 = activeDataSource;
  v12 = leafIcon;
  [effectiveAllowedGridSizeClasses enumerateGridSizeClassesInDomain:effectiveGridSizeClassDomain usingBlock:v13];
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

- (id)replacementIconForIcon:(id)icon gridSizeClass:(id)class
{
  iconCopy = icon;
  classCopy = class;
  delegate = [(SBWidgetIconResizeTransitionViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate iconResizeTransitionViewController:self willUseIcon:iconCopy forViewControllerForGridSizeClass:classCopy];

    iconCopy = v9;
  }

  return iconCopy;
}

- (id)replacementIconDataSourceForIconDataSource:(id)source gridSizeClass:(id)class
{
  sourceCopy = source;
  classCopy = class;
  delegate = [(SBWidgetIconResizeTransitionViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate iconResizeTransitionViewController:self willUseIconDataSource:sourceCopy forViewControllerForGridSizeClass:classCopy];

    sourceCopy = v9;
  }

  return sourceCopy;
}

- (CGRect)visibleBounds
{
  view = [(SBWidgetIconResizeTransitionViewController *)self view];
  [view bounds];
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
  viewControllers = [(SBWidgetIconResizeTransitionViewController *)self viewControllers];
  [viewControllers enumerateKeysAndObjectsUsingBlock:&__block_literal_global_78];
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  effectiveGridSizeClassDomain = [(SBWidgetIconResizeTransitionViewController *)self effectiveGridSizeClassDomain];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__SBWidgetIconResizeTransitionViewController_appendDescriptionToStream___block_invoke;
  v8[3] = &unk_1E8088F88;
  v9 = streamCopy;
  v10 = effectiveGridSizeClassDomain;
  selfCopy = self;
  v6 = effectiveGridSizeClassDomain;
  v7 = streamCopy;
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

- (void)setIconImageInfo:(SBIconImageInfo *)info
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