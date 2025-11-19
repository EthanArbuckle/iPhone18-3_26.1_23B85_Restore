@interface VUILibraryStackViewController
- (VUILibraryStackViewController)init;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (void)_invalidateLayouts;
- (void)_updateNavigationBarPadding;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)scrollToTop;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation VUILibraryStackViewController

- (VUILibraryStackViewController)init
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VUILibraryStackViewController;
  v2 = [(VUILibraryStackViewController *)&v9 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v10[0] = objc_opt_class();
    v10[1] = objc_opt_class();
    v10[2] = objc_opt_class();
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__VUILibraryStackViewController_init__block_invoke;
    v6[3] = &unk_1E872E760;
    objc_copyWeak(&v7, &location);
    v4 = [(VUILibraryStackViewController *)v2 registerForTraitChanges:v3 withHandler:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __37__VUILibraryStackViewController_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1000) = 1;
    v9 = [v5 traitCollection];
    v10 = [v9 vuiPreferredContentSizeCategory];
    v11 = [v6 vuiPreferredContentSizeCategory];

    if (v10 != v11)
    {
      if ([v8 vuiIsViewLoaded])
      {
        v12 = [v8 vuiView];
        v13 = [v12 window];

        if (v13)
        {
          v14 = VUIDefaultLogObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *v15 = 0;
            _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_INFO, "VUILibraryStackViewController:: size category changed, update traits to relayout the collection view", v15, 2u);
          }

          [v8 updateTraitsIfNeeded];
        }
      }
    }
  }
}

- (void)scrollToTop
{
  v2 = [(VUILibraryStackViewController *)self stackCollectionView];
  [v2 _scrollToTopIfPossible:1];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = VUILibraryStackViewController;
  [(VUILibraryStackViewController *)&v15 viewDidLoad];
  self->_lastAppearWidth = 0.0;
  v3 = objc_alloc_init(MEMORY[0x1E69DC840]);
  if ([MEMORY[0x1E69DF6F0] isPad])
  {
    [v3 setSectionInsetReference:1];
  }

  v4 = [VUILegacyCollectionView alloc];
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(VUILegacyCollectionView *)v4 initWithFrame:v3 collectionViewLayout:*MEMORY[0x1E695F058], v6, v7, v8];
  stackCollectionView = self->_stackCollectionView;
  self->_stackCollectionView = v9;

  if ([MEMORY[0x1E69DF6F0] isPad] && MEMORY[0x1E6913230]())
  {
    [(UICollectionView *)self->_stackCollectionView setContentInsetAdjustmentBehavior:3];
  }

  v11 = self->_stackCollectionView;
  v12 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)v11 setBackgroundColor:v12];

  [(UICollectionView *)self->_stackCollectionView setAutoresizingMask:18];
  [(UICollectionView *)self->_stackCollectionView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_stackCollectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_stackCollectionView setAlwaysBounceVertical:1];
  [(UICollectionView *)self->_stackCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"VUILibraryCollectionCellReuseIdentifier"];
  [(UICollectionView *)self->_stackCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"VUILibraryMenuCellReuseIdentifier"];
  [(UICollectionView *)self->_stackCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"VUILibraryBannerCellReuseIdentifier"];
  [(UICollectionView *)self->_stackCollectionView setDelegate:self];
  v13 = [[VUILibraryStackView alloc] initWithFrame:v5, v6, v7, v8];
  stackView = self->_stackView;
  self->_stackView = v13;

  [(VUILibraryStackView *)self->_stackView setCollectionView:self->_stackCollectionView];
  [(VUILibraryStackViewController *)self configureWithCollectionView:self->_stackCollectionView];
  self->_requiresRelayout = 1;
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = VUILibraryStackViewController;
  [(VUILibraryStackViewController *)&v9 viewDidAppear:a3];
  v4 = [(VUILibraryStackViewController *)self view];
  [v4 bounds];
  v6 = v5;

  if (self->_lastAppearWidth != v6)
  {
    [(VUILibraryStackViewController *)self _invalidateLayouts];
  }

  self->_lastAppearWidth = v6;
  [(VUILibraryStackViewController *)self _updateNavigationBarPadding];
  v7 = [(VUILibraryStackViewController *)self navigationController];
  v8 = [v7 navigationBar];
  [v8 sizeToFit];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = VUILibraryStackViewController;
  [(VUILibraryStackViewController *)&v4 viewDidLayoutSubviews];
  [(VUILibraryStackViewController *)self _updateNavigationBarPadding];
  if (self->_requiresRelayout)
  {
    v3 = [(UICollectionView *)self->_stackCollectionView collectionViewLayout];
    [v3 invalidateLayout];

    [(VUILibraryStackView *)self->_stackView setNeedsLayout];
    self->_requiresRelayout = 0;
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VUILibraryStackViewController;
  [(VUILibraryStackViewController *)&v14 viewDidDisappear:a3];
  if ([(VUILibraryStackViewController *)self isMovingFromParentViewController])
  {
    v4 = [(VUILibraryStackViewController *)self childViewControllers];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          [v9 willMoveToParentViewController:0];
          [v9 removeFromParentViewController];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_focusedIndexPath && [v4 vui_isIndexPathValid:?])
  {
    v6 = self->_focusedIndexPath;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v11 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v11;
  if (isKindOfClass)
  {
    v8 = [v11 viewController];
    if (v8)
    {
      v9 = [(VUILibraryStackViewController *)self childViewControllers];
      v10 = [v9 containsObject:v8];

      if ((v10 & 1) == 0)
      {
        [(VUILibraryStackViewController *)self addChildViewController:v8];
        [v8 didMoveToParentViewController:self];
      }
    }

    v7 = v11;
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v12 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v12;
  if (isKindOfClass)
  {
    v8 = [v12 viewController];
    if (v8)
    {
      v9 = [(VUILibraryStackViewController *)self childViewControllers];
      if ([v9 containsObject:v8])
      {
        v10 = [v8 view];
        v11 = [v10 isDescendantOfView:v12];

        if (v11)
        {
          [v8 willMoveToParentViewController:0];
          [v8 removeFromParentViewController];
        }
      }

      else
      {
      }
    }

    v7 = v12;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = VUILibraryStackViewController;
  v7 = a4;
  [(VUILibraryStackViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__VUILibraryStackViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E872E788;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

void __84__VUILibraryStackViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isViewLoaded] && (objc_msgSend(*(a1 + 32), "view"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "window"), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3))
  {
    v4 = [*(*(a1 + 32) + 1024) collectionViewLayout];
    [v4 invalidateLayout];

    v5 = *(*(a1 + 32) + 1016);

    [v5 setNeedsLayout];
  }

  else
  {
    *(*(a1 + 32) + 1000) = 1;
  }
}

- (void)_invalidateLayouts
{
  v3 = [(UICollectionView *)self->_stackCollectionView collectionViewLayout];
  [v3 invalidateLayout];

  stackView = self->_stackView;

  [(VUILibraryStackView *)stackView setNeedsLayout];
}

- (void)_updateNavigationBarPadding
{
  v3 = [(VUILibraryStackViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if ([MEMORY[0x1E69DF6F0] isPad])
  {
    v12 = [(VUILibraryStackViewController *)self vuiIsRTL];
    v13 = [(VUILibraryStackViewController *)self view];
    [v13 safeAreaInsets];
    v15 = v14;
    v17 = v16;

    if (v12)
    {
      v9 = v9 - v17;
    }

    else
    {
      v9 = v9 - v15;
    }
  }

  v40.origin.x = v5;
  v40.origin.y = v7;
  v40.size.width = v9;
  v40.size.height = v11;
  [MEMORY[0x1E69DD2E8] vui_paddingForWindowWidth:CGRectGetWidth(v40)];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [(VUILibraryStackViewController *)self navigationController];
  v27 = [v26 navigationBar];
  [v27 layoutMargins];
  if (v21 == v31 && v19 == v28 && v25 == v30)
  {
    v34 = v29;

    if (v23 == v34)
    {
      return;
    }
  }

  else
  {
  }

  v35 = [(VUILibraryStackViewController *)self navigationController];
  v36 = [v35 navigationBar];
  [v36 setLayoutMargins:{v19, v21, v23, v25}];

  v38 = [(VUILibraryStackViewController *)self navigationController];
  v37 = [v38 navigationBar];
  [v37 setNeedsLayout];
}

@end