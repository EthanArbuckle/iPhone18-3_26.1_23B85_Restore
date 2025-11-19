@interface PREditorSeparatedRootViewController
- (id)currentLookViews;
- (int64_t)_windowInterfaceOrientation;
- (void)_enumerateContainerViewsWithBlock:(id)a3;
- (void)_updateContainerViewClipping:(BOOL)a3;
- (void)_updateContainerViewFrames;
- (void)_updateCounterRotationLayout;
- (void)_updateLooksDividerViewForTransitionToSize:(CGSize)a3 startingTransition:(BOOL)a4;
- (void)loadView;
- (void)looksDidChange;
- (void)looksWillChange;
- (void)setOverlayHostViewController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PREditorSeparatedRootViewController

- (void)loadView
{
  v36[4] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = PREditorSeparatedRootViewController;
  [(PREditorRootViewController *)&v35 loadView];
  v3 = [(PREditorSeparatedRootViewController *)self view];
  v4 = [(PREditorRootViewController *)self scrollView];
  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v6 = [v5 layer];
  [v6 setName:@"backgroundForegroundContainerViewsZStackView"];

  v34 = v5;
  [(PREditorSeparatedRootViewController *)self setBackgroundForegroundContainerViewsZStackView:v5];
  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v8 = [v7 layer];
  [v8 setName:@"floatingContainerViewsZStackView"];

  v32 = v7;
  [(PREditorSeparatedRootViewController *)self setFloatingContainerViewsZStackView:v7];
  v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v10 = [v9 layer];
  [v10 setName:@"looksDividerView"];

  v11 = [MEMORY[0x1E69DC888] systemBlackColor];
  [v9 setBackgroundColor:v11];

  v29 = v9;
  [(PREditorSeparatedRootViewController *)self setLooksDividerView:v9];
  v12 = objc_alloc_init(MEMORY[0x1E698E808]);
  [v12 setPagingEnabled:1];
  [v12 setShowsVerticalScrollIndicator:0];
  [v12 setShowsHorizontalScrollIndicator:0];
  [v12 setScrollsToTop:0];
  [v12 setBounces:0];
  [v12 _setAutoScrollEnabled:0];
  v13 = [v12 layer];
  [v13 setHitTestsAsOpaque:1];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PREditorSeparatedRootViewController *)self setTimeContainerScrollView:v12];
  v33 = [(PREditorRootViewController *)self timeContainerView];
  [v12 addSubview:v33];
  v30 = [(PREditorRootViewController *)self reticleVibrancyView];
  v28 = [(PREditorRootViewController *)self sidebarReticleVibrancyView];
  v31 = v4;
  [v3 insertSubview:v5 belowSubview:v4];
  [v3 insertSubview:v7 belowSubview:v4];
  [v3 insertSubview:v30 belowSubview:v4];
  [v3 insertSubview:v12 belowSubview:v4];
  [v3 insertSubview:v28 belowSubview:v4];
  [v3 insertSubview:v9 aboveSubview:v4];
  v22 = MEMORY[0x1E696ACD8];
  v27 = [v12 topAnchor];
  v26 = [v3 topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v36[0] = v25;
  v24 = [v12 bottomAnchor];
  v23 = [v3 bottomAnchor];
  v21 = [v24 constraintEqualToAnchor:v23];
  v36[1] = v21;
  v14 = [v12 leadingAnchor];
  v15 = [v3 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v36[2] = v16;
  v17 = [v12 trailingAnchor];
  v18 = [v3 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v36[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
  [v22 activateConstraints:v20];

  [(PREditorSeparatedRootViewController *)self _updateCounterRotationLayout];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PREditorSeparatedRootViewController;
  [(PREditorSeparatedRootViewController *)&v4 viewWillAppear:a3];
  [(PREditorSeparatedRootViewController *)self _updateContainerViewFrames];
  [(PREditorSeparatedRootViewController *)self _updateCounterRotationLayout];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PREditorSeparatedRootViewController;
  [(PREditorRootViewController *)&v4 viewDidAppear:a3];
  [(PREditorRootViewController *)self updateReticleViewFrames];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PREditorSeparatedRootViewController;
  [(PREditorSeparatedRootViewController *)&v3 viewWillLayoutSubviews];
  [(PREditorSeparatedRootViewController *)self _updateCounterRotationLayout];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(PREditorSeparatedRootViewController *)self _updateContainerViewClipping:0];
  [(PREditorSeparatedRootViewController *)self _updateLooksDividerViewForTransitionToSize:1 startingTransition:width, height];
  v8 = [(PREditorSeparatedRootViewController *)self timeContainerScrollView];
  [v8 setClipsToBounds:0];

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
  [v7 animateAlongsideTransition:v11 completion:v10];
  v9.receiver = self;
  v9.super_class = PREditorSeparatedRootViewController;
  [(PREditorRootViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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

- (void)_updateContainerViewClipping:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PREditorSeparatedRootViewController__updateContainerViewClipping___block_invoke;
  v3[3] = &__block_descriptor_33_e16_v16__0__UIView_8l;
  v4 = a3;
  [(PREditorSeparatedRootViewController *)self _enumerateContainerViewsWithBlock:v3];
}

- (void)_updateContainerViewFrames
{
  v3 = [(PREditorSeparatedRootViewController *)self view];
  [v3 bounds];
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
  v3 = [(PREditorRootViewController *)self editor];
  if ([v3 _editorDynamicRotationIsActive])
  {
    v4 = [(PREditorSeparatedRootViewController *)self _windowInterfaceOrientation];
  }

  else
  {
    v4 = 1;
  }

  v5 = [(PREditorSeparatedRootViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(PREditorRootViewController *)self editor];
  if ([v14 _editorDynamicRotationIsActive])
  {

    v15 = v11;
    v16 = v13;
    if ((v4 - 3) <= 1)
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
  v21[8] = v4;
  [(PREditorSeparatedRootViewController *)self _enumerateContainerViewsWithBlock:v21];
  v19 = [(PREditorSeparatedRootViewController *)self backgroundForegroundContainerViewsZStackView];
  v20 = [(PREditorSeparatedRootViewController *)self floatingContainerViewsZStackView];
  [v19 setFrame:{v7, v9, v15, v16}];
  [v20 setFrame:{v7, v9, v15, v16}];
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

- (void)_updateLooksDividerViewForTransitionToSize:(CGSize)a3 startingTransition:(BOOL)a4
{
  v4 = a4;
  width = a3.width;
  v7 = [(PREditorSeparatedRootViewController *)self looksDividerView:a3.width];
  v9 = v7;
  if (v4)
  {
    v8 = [(PREditorRootViewController *)self scrollView];
    if (([v8 isDragging] & 1) == 0)
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
  v3 = [(PREditorSeparatedRootViewController *)self view];
  v4 = [v3 window];
  v5 = v4;
  if (!v4)
  {
    v4 = [(PREditorSeparatedRootViewController *)self performSelector:sel__window];
  }

  v6 = v4;

  v7 = [v6 _windowInterfaceOrientation];
  return v7;
}

- (void)_enumerateContainerViewsWithBlock:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PREditorSeparatedRootViewController *)self backgroundForegroundContainerViewsZStackView];
  v6 = [v5 subviews];

  v7 = [(PREditorSeparatedRootViewController *)self floatingContainerViewsZStackView];
  v8 = [v7 subviews];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v6;
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

        v4[2](v4, *(*(&v23 + 1) + 8 * v13++));
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
  v14 = v8;
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

        v4[2](v4, *(*(&v19 + 1) + 8 * v18++));
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

  v5 = [(PREditorSeparatedRootViewController *)self view];
  v33 = [(PREditorSeparatedRootViewController *)self backgroundForegroundContainerViewsZStackView];
  v32 = [(PREditorSeparatedRootViewController *)self floatingContainerViewsZStackView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v27 = v5;
  v31 = [v5 effectiveUserInterfaceLayoutDirection];
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
        v20 = [v18 subviews];
        v21 = [v20 firstObject];

        v22 = [v19 subviews];
        v23 = [v22 firstObject];

        v24 = objc_alloc_init(PREditorLookViews);
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __53__PREditorSeparatedRootViewController_looksDidChange__block_invoke_2;
        v35[3] = &unk_1E78443A8;
        v36 = v23;
        v37 = v21;
        v25 = v21;
        v26 = v23;
        [(PREditorLookViews *)v24 enumerateViewsUsingBlock:v35];
        if (v16 != v15)
        {
          [v18 setHidden:1];
          [v19 setHidden:1];
        }

        if (v31)
        {
          [v33 addSubview:v18];
          [v32 addSubview:v19];
        }

        else
        {
          [v33 insertSubview:v18 atIndex:0];
          [v32 insertSubview:v19 atIndex:0];
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
  v3 = [(PREditorRootViewController *)self currentLook];
  v4 = [(PREditorSeparatedRootViewController *)self viewsForLook:v3];

  return v4;
}

- (void)setOverlayHostViewController:(id)a3
{
  v4 = a3;
  v5 = [(PREditorSeparatedRootViewController *)self floatingContainerViewsZStackView];
  [(PREditorRootViewController *)self _setOverlayHostViewController:v4 insertingAboveSubview:v5];
}

@end