@interface PREditorSeparatedRootViewController
- (id)currentLookViews;
- (int64_t)_windowInterfaceOrientation;
- (void)_enumerateContainerViewsWithBlock:(id)block;
- (void)_updateContainerViewClipping:(BOOL)clipping;
- (void)_updateContainerViewFrames;
- (void)_updateCounterRotationLayout;
- (void)_updateLooksDividerViewForTransitionToSize:(CGSize)size startingTransition:(BOOL)transition;
- (void)loadView;
- (void)looksDidChange;
- (void)looksWillChange;
- (void)setOverlayHostViewController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PREditorSeparatedRootViewController

- (void)loadView
{
  v36[4] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = PREditorSeparatedRootViewController;
  [(PREditorRootViewController *)&v35 loadView];
  view = [(PREditorSeparatedRootViewController *)self view];
  scrollView = [(PREditorRootViewController *)self scrollView];
  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  layer = [v5 layer];
  [layer setName:@"backgroundForegroundContainerViewsZStackView"];

  v34 = v5;
  [(PREditorSeparatedRootViewController *)self setBackgroundForegroundContainerViewsZStackView:v5];
  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  layer2 = [v7 layer];
  [layer2 setName:@"floatingContainerViewsZStackView"];

  v32 = v7;
  [(PREditorSeparatedRootViewController *)self setFloatingContainerViewsZStackView:v7];
  v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
  layer3 = [v9 layer];
  [layer3 setName:@"looksDividerView"];

  systemBlackColor = [MEMORY[0x1E69DC888] systemBlackColor];
  [v9 setBackgroundColor:systemBlackColor];

  v29 = v9;
  [(PREditorSeparatedRootViewController *)self setLooksDividerView:v9];
  v12 = objc_alloc_init(MEMORY[0x1E698E808]);
  [v12 setPagingEnabled:1];
  [v12 setShowsVerticalScrollIndicator:0];
  [v12 setShowsHorizontalScrollIndicator:0];
  [v12 setScrollsToTop:0];
  [v12 setBounces:0];
  [v12 _setAutoScrollEnabled:0];
  layer4 = [v12 layer];
  [layer4 setHitTestsAsOpaque:1];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PREditorSeparatedRootViewController *)self setTimeContainerScrollView:v12];
  timeContainerView = [(PREditorRootViewController *)self timeContainerView];
  [v12 addSubview:timeContainerView];
  reticleVibrancyView = [(PREditorRootViewController *)self reticleVibrancyView];
  sidebarReticleVibrancyView = [(PREditorRootViewController *)self sidebarReticleVibrancyView];
  v31 = scrollView;
  [view insertSubview:v5 belowSubview:scrollView];
  [view insertSubview:v7 belowSubview:scrollView];
  [view insertSubview:reticleVibrancyView belowSubview:scrollView];
  [view insertSubview:v12 belowSubview:scrollView];
  [view insertSubview:sidebarReticleVibrancyView belowSubview:scrollView];
  [view insertSubview:v9 aboveSubview:scrollView];
  v22 = MEMORY[0x1E696ACD8];
  topAnchor = [v12 topAnchor];
  topAnchor2 = [view topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v36[0] = v25;
  bottomAnchor = [v12 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v36[1] = v21;
  leadingAnchor = [v12 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v36[2] = v16;
  trailingAnchor = [v12 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
  [v22 activateConstraints:v20];

  [(PREditorSeparatedRootViewController *)self _updateCounterRotationLayout];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PREditorSeparatedRootViewController;
  [(PREditorSeparatedRootViewController *)&v4 viewWillAppear:appear];
  [(PREditorSeparatedRootViewController *)self _updateContainerViewFrames];
  [(PREditorSeparatedRootViewController *)self _updateCounterRotationLayout];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PREditorSeparatedRootViewController;
  [(PREditorRootViewController *)&v4 viewDidAppear:appear];
  [(PREditorRootViewController *)self updateReticleViewFrames];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PREditorSeparatedRootViewController;
  [(PREditorSeparatedRootViewController *)&v3 viewWillLayoutSubviews];
  [(PREditorSeparatedRootViewController *)self _updateCounterRotationLayout];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(PREditorSeparatedRootViewController *)self _updateContainerViewClipping:0];
  [(PREditorSeparatedRootViewController *)self _updateLooksDividerViewForTransitionToSize:1 startingTransition:width, height];
  timeContainerScrollView = [(PREditorSeparatedRootViewController *)self timeContainerScrollView];
  [timeContainerScrollView setClipsToBounds:0];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__PREditorSeparatedRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v11[3] = &unk_1E78442B8;
  v11[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__PREditorSeparatedRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v10[3] = &unk_1E78442E0;
  v10[4] = self;
  *&v10[5] = width;
  *&v10[6] = height;
  [coordinatorCopy animateAlongsideTransition:v11 completion:v10];
  v9.receiver = self;
  v9.super_class = PREditorSeparatedRootViewController;
  [(PREditorRootViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

uint64_t __90__PREditorSeparatedRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateContainerViewFrames];
  [*(a1 + 32) updateReticleViewFrames];
  v2 = *(a1 + 32);

  return [v2 _updateCounterRotationLayout];
}

uint64_t __90__PREditorSeparatedRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateContainerViewClipping:1];
  [*(a1 + 32) _updateLooksDividerViewForTransitionToSize:0 startingTransition:{*(a1 + 40), *(a1 + 48)}];
  v2 = [*(a1 + 32) timeContainerScrollView];
  [v2 setClipsToBounds:1];

  v3 = *(a1 + 32);

  return [v3 lookPropertiesDidChange];
}

- (void)_updateContainerViewClipping:(BOOL)clipping
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PREditorSeparatedRootViewController__updateContainerViewClipping___block_invoke;
  v3[3] = &__block_descriptor_33_e16_v16__0__UIView_8l;
  clippingCopy = clipping;
  [(PREditorSeparatedRootViewController *)self _enumerateContainerViewsWithBlock:v3];
}

- (void)_updateContainerViewFrames
{
  view = [(PREditorSeparatedRootViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PREditorSeparatedRootViewController__updateContainerViewFrames__block_invoke;
  v12[3] = &__block_descriptor_64_e16_v16__0__UIView_8l;
  v12[4] = v5;
  v12[5] = v7;
  v12[6] = v9;
  v12[7] = v11;
  [(PREditorSeparatedRootViewController *)self _enumerateContainerViewsWithBlock:v12];
}

- (void)_updateCounterRotationLayout
{
  editor = [(PREditorRootViewController *)self editor];
  if ([editor _editorDynamicRotationIsActive])
  {
    _windowInterfaceOrientation = [(PREditorSeparatedRootViewController *)self _windowInterfaceOrientation];
  }

  else
  {
    _windowInterfaceOrientation = 1;
  }

  view = [(PREditorSeparatedRootViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  editor2 = [(PREditorRootViewController *)self editor];
  if ([editor2 _editorDynamicRotationIsActive])
  {

    v15 = v11;
    v16 = v13;
    if ((_windowInterfaceOrientation - 3) <= 1)
    {
      BSSizeSwap();
      v15 = v17;
      v16 = v18;
    }
  }

  else
  {

    v15 = v11;
    v16 = v13;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __67__PREditorSeparatedRootViewController__updateCounterRotationLayout__block_invoke;
  v21[3] = &__block_descriptor_72_e16_v16__0__UIView_8l;
  *&v21[4] = v7;
  *&v21[5] = v9;
  *&v21[6] = v11;
  *&v21[7] = v13;
  v21[8] = _windowInterfaceOrientation;
  [(PREditorSeparatedRootViewController *)self _enumerateContainerViewsWithBlock:v21];
  backgroundForegroundContainerViewsZStackView = [(PREditorSeparatedRootViewController *)self backgroundForegroundContainerViewsZStackView];
  floatingContainerViewsZStackView = [(PREditorSeparatedRootViewController *)self floatingContainerViewsZStackView];
  [backgroundForegroundContainerViewsZStackView setFrame:{v7, v9, v15, v16}];
  [floatingContainerViewsZStackView setFrame:{v7, v9, v15, v16}];
}

void __67__PREditorSeparatedRootViewController__updateCounterRotationLayout__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 subviews];
  v4 = [v3 firstObject];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setFrame:{*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56)}];
  [v8 setContentOrientation:1];
  [v8 setContainerOrientation:*(a1 + 64)];
}

- (void)_updateLooksDividerViewForTransitionToSize:(CGSize)size startingTransition:(BOOL)transition
{
  transitionCopy = transition;
  width = size.width;
  v7 = [(PREditorSeparatedRootViewController *)self looksDividerView:size.width];
  v9 = v7;
  if (transitionCopy)
  {
    scrollView = [(PREditorRootViewController *)self scrollView];
    if (([scrollView isDragging] & 1) == 0)
    {
      [v9 setHidden:1];
      [v9 frame];
      [v9 setFrame:width];
    }
  }

  else
  {
    [v7 setHidden:0];
  }
}

- (int64_t)_windowInterfaceOrientation
{
  view = [(PREditorSeparatedRootViewController *)self view];
  window = [view window];
  v5 = window;
  if (!window)
  {
    window = [(PREditorSeparatedRootViewController *)self performSelector:sel__window];
  }

  v6 = window;

  _windowInterfaceOrientation = [v6 _windowInterfaceOrientation];
  return _windowInterfaceOrientation;
}

- (void)_enumerateContainerViewsWithBlock:(id)block
{
  v29 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  backgroundForegroundContainerViewsZStackView = [(PREditorSeparatedRootViewController *)self backgroundForegroundContainerViewsZStackView];
  subviews = [backgroundForegroundContainerViewsZStackView subviews];

  floatingContainerViewsZStackView = [(PREditorSeparatedRootViewController *)self floatingContainerViewsZStackView];
  subviews2 = [floatingContainerViewsZStackView subviews];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = subviews;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        blockCopy[2](blockCopy, *(*(&v23 + 1) + 8 * v13++));
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v11);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = subviews2;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        blockCopy[2](blockCopy, *(*(&v19 + 1) + 8 * v18++));
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }
}

- (void)looksWillChange
{
  v15 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = PREditorSeparatedRootViewController;
  [(PREditorRootViewController *)&v13 looksWillChange];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_viewsForLook;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_viewsForLook objectForKey:*(*(&v9 + 1) + 8 * v7), v9];
        [v8 enumerateViewsUsingBlock:&__block_literal_global_929];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_viewsForLook removeAllObjects];
  [(PREditorSeparatedRootViewController *)self _enumerateContainerViewsWithBlock:&__block_literal_global_931];
}

- (void)looksDidChange
{
  v44 = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = PREditorSeparatedRootViewController;
  [(PREditorRootViewController *)&v42 looksDidChange];
  if (!self->_viewsForLook)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    viewsForLook = self->_viewsForLook;
    self->_viewsForLook = v3;
  }

  view = [(PREditorSeparatedRootViewController *)self view];
  backgroundForegroundContainerViewsZStackView = [(PREditorSeparatedRootViewController *)self backgroundForegroundContainerViewsZStackView];
  floatingContainerViewsZStackView = [(PREditorSeparatedRootViewController *)self floatingContainerViewsZStackView];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v27 = view;
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(PREditorRootViewController *)self looks];
  v34 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v34)
  {
    v14 = 0;
    v30 = *v39;
    do
    {
      v15 = 0;
      v28 = v14;
      v16 = -v14;
      do
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v38 + 1) + 8 * v15);
        v18 = __53__PREditorSeparatedRootViewController_looksDidChange__block_invoke(v7, v9, v11, v13);
        v19 = __53__PREditorSeparatedRootViewController_looksDidChange__block_invoke(v7, v9, v11, v13);
        subviews = [v18 subviews];
        firstObject = [subviews firstObject];

        subviews2 = [v19 subviews];
        firstObject2 = [subviews2 firstObject];

        v24 = objc_alloc_init(PREditorLookViews);
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __53__PREditorSeparatedRootViewController_looksDidChange__block_invoke_2;
        v35[3] = &unk_1E78443A8;
        v36 = firstObject2;
        v37 = firstObject;
        v25 = firstObject;
        v26 = firstObject2;
        [(PREditorLookViews *)v24 enumerateViewsUsingBlock:v35];
        if (v16 != v15)
        {
          [v18 setHidden:1];
          [v19 setHidden:1];
        }

        if (effectiveUserInterfaceLayoutDirection)
        {
          [backgroundForegroundContainerViewsZStackView addSubview:v18];
          [floatingContainerViewsZStackView addSubview:v19];
        }

        else
        {
          [backgroundForegroundContainerViewsZStackView insertSubview:v18 atIndex:0];
          [floatingContainerViewsZStackView insertSubview:v19 atIndex:0];
        }

        [(NSMutableDictionary *)self->_viewsForLook setObject:v24 forKey:v17];

        ++v15;
      }

      while (v34 != v15);
      v14 = v28 + v34;
      v34 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v34);
  }
}

id __53__PREditorSeparatedRootViewController_looksDidChange__block_invoke(double a1, double a2, double a3, double a4)
{
  v8 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{a1, a2, a3, a4}];
  [v8 setClipsToBounds:1];
  v9 = [objc_alloc(MEMORY[0x1E698E800]) initWithFrame:{a1, a2, a3, a4}];
  [v9 setCounterTransformView:1];
  [v8 addSubview:v9];

  return v8;
}

uint64_t __53__PREditorSeparatedRootViewController_looksDidChange__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 40;
  if (a3 == 2)
  {
    v3 = 32;
  }

  return [*(a1 + v3) addContentView:a2];
}

- (id)currentLookViews
{
  currentLook = [(PREditorRootViewController *)self currentLook];
  v4 = [(PREditorSeparatedRootViewController *)self viewsForLook:currentLook];

  return v4;
}

- (void)setOverlayHostViewController:(id)controller
{
  controllerCopy = controller;
  floatingContainerViewsZStackView = [(PREditorSeparatedRootViewController *)self floatingContainerViewsZStackView];
  [(PREditorRootViewController *)self _setOverlayHostViewController:controllerCopy insertingAboveSubview:floatingContainerViewsZStackView];
}

@end