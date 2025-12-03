@interface VUILibraryStackViewController
- (VUILibraryStackViewController)init;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (void)_invalidateLayouts;
- (void)_updateNavigationBarPadding;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)scrollToTop;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
  stackCollectionView = [(VUILibraryStackViewController *)self stackCollectionView];
  [stackCollectionView _scrollToTopIfPossible:1];
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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)v11 setBackgroundColor:clearColor];

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

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = VUILibraryStackViewController;
  [(VUILibraryStackViewController *)&v9 viewDidAppear:appear];
  view = [(VUILibraryStackViewController *)self view];
  [view bounds];
  v6 = v5;

  if (self->_lastAppearWidth != v6)
  {
    [(VUILibraryStackViewController *)self _invalidateLayouts];
  }

  self->_lastAppearWidth = v6;
  [(VUILibraryStackViewController *)self _updateNavigationBarPadding];
  navigationController = [(VUILibraryStackViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar sizeToFit];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = VUILibraryStackViewController;
  [(VUILibraryStackViewController *)&v4 viewDidLayoutSubviews];
  [(VUILibraryStackViewController *)self _updateNavigationBarPadding];
  if (self->_requiresRelayout)
  {
    collectionViewLayout = [(UICollectionView *)self->_stackCollectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];

    [(VUILibraryStackView *)self->_stackView setNeedsLayout];
    self->_requiresRelayout = 0;
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VUILibraryStackViewController;
  [(VUILibraryStackViewController *)&v14 viewDidDisappear:disappear];
  if ([(VUILibraryStackViewController *)self isMovingFromParentViewController])
  {
    childViewControllers = [(VUILibraryStackViewController *)self childViewControllers];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [childViewControllers countByEnumeratingWithState:&v10 objects:v15 count:16];
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
            objc_enumerationMutation(childViewControllers);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          [v9 willMoveToParentViewController:0];
          [v9 removeFromParentViewController];
        }

        v6 = [childViewControllers countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (self->_focusedIndexPath && [viewCopy vui_isIndexPathValid:?])
  {
    v6 = self->_focusedIndexPath;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = cellCopy;
  if (isKindOfClass)
  {
    viewController = [cellCopy viewController];
    if (viewController)
    {
      childViewControllers = [(VUILibraryStackViewController *)self childViewControllers];
      v10 = [childViewControllers containsObject:viewController];

      if ((v10 & 1) == 0)
      {
        [(VUILibraryStackViewController *)self addChildViewController:viewController];
        [viewController didMoveToParentViewController:self];
      }
    }

    v7 = cellCopy;
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = cellCopy;
  if (isKindOfClass)
  {
    viewController = [cellCopy viewController];
    if (viewController)
    {
      childViewControllers = [(VUILibraryStackViewController *)self childViewControllers];
      if ([childViewControllers containsObject:viewController])
      {
        view = [viewController view];
        v11 = [view isDescendantOfView:cellCopy];

        if (v11)
        {
          [viewController willMoveToParentViewController:0];
          [viewController removeFromParentViewController];
        }
      }

      else
      {
      }
    }

    v7 = cellCopy;
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = VUILibraryStackViewController;
  coordinatorCopy = coordinator;
  [(VUILibraryStackViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__VUILibraryStackViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E872E788;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
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
  collectionViewLayout = [(UICollectionView *)self->_stackCollectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  stackView = self->_stackView;

  [(VUILibraryStackView *)stackView setNeedsLayout];
}

- (void)_updateNavigationBarPadding
{
  view = [(VUILibraryStackViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if ([MEMORY[0x1E69DF6F0] isPad])
  {
    vuiIsRTL = [(VUILibraryStackViewController *)self vuiIsRTL];
    view2 = [(VUILibraryStackViewController *)self view];
    [view2 safeAreaInsets];
    v15 = v14;
    v17 = v16;

    if (vuiIsRTL)
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
  navigationController = [(VUILibraryStackViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar layoutMargins];
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

  navigationController2 = [(VUILibraryStackViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setLayoutMargins:{v19, v21, v23, v25}];

  navigationController3 = [(VUILibraryStackViewController *)self navigationController];
  navigationBar3 = [navigationController3 navigationBar];
  [navigationBar3 setNeedsLayout];
}

@end