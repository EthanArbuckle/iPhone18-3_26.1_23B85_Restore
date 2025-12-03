@interface VUIShelfViewController
- (VUIShelfViewController)initWithGridStyle:(int64_t)style;
- (id)_findSnappingItemFromContentOffset:(CGPoint *)offset withVelocity:(CGPoint)velocity;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (void)_ensureScrollViewSnaps;
- (void)_snapTargetContentOffset:(CGPoint *)offset toItemIndexPath:(id)path atItemOffset:(CGPoint)itemOffset;
- (void)_updateCollectionViewLayout:(BOOL)layout;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)setHeaderView:(id)view;
- (void)updateContentOffsetWithTransitionCoordinator:(id)coordinator;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation VUIShelfViewController

- (VUIShelfViewController)initWithGridStyle:(int64_t)style
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VUIShelfViewController;
  v4 = [(VUIShelfViewController *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_gridStyle = style;
    objc_initWeak(&location, v4);
    v13[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__VUIShelfViewController_initWithGridStyle___block_invoke;
    v9[3] = &unk_1E872E760;
    objc_copyWeak(&v10, &location);
    v7 = [(VUIShelfViewController *)v5 registerForTraitChanges:v6 withHandler:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __44__VUIShelfViewController_initWithGridStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[992] = 1;
    v3 = WeakRetained;
    v2 = [WeakRetained containerView];
    [v2 setNeedsLayout];

    WeakRetained = v3;
  }
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  if (self->_headerView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_headerView, view);
    [(VUIShelfView *)self->_containerView setHeaderView:v6];
    viewCopy = v6;
  }
}

- (void)loadView
{
  v3 = [VUIShelfView alloc];
  vui_keyWindow = [MEMORY[0x1E69DD2E8] vui_keyWindow];
  [vui_keyWindow bounds];
  v10 = [(VUIShelfView *)v3 initWithFrame:?];

  [(VUIShelfView *)v10 setAutoresizingMask:18];
  vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
  [(VUIShelfView *)v10 setBackgroundColor:vui_primaryDynamicBackgroundColor];

  [(VUIShelfViewController *)self setView:v10];
  [(VUIShelfViewController *)self setContainerView:v10];
  [(VUIShelfView *)v10 setHeaderView:self->_headerView];
  v6 = objc_alloc_init(MEMORY[0x1E69D59B8]);
  [v6 setMinimumLineSpacing:0.0];
  v7 = [VUILegacyCollectionView alloc];
  v8 = [(VUILegacyCollectionView *)v7 initWithFrame:v6 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(VUILegacyCollectionView *)v8 setAutoresizingMask:18];
  vui_primaryDynamicBackgroundColor2 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
  [(VUILegacyCollectionView *)v8 setBackgroundColor:vui_primaryDynamicBackgroundColor2];

  [(VUILegacyCollectionView *)v8 setShowsVerticalScrollIndicator:0];
  [(VUILegacyCollectionView *)v8 setShowsHorizontalScrollIndicator:0];
  [(VUILegacyCollectionView *)v8 setAlwaysBounceHorizontal:1];
  [(VUILegacyCollectionView *)v8 setDelegate:self];
  [(VUILegacyCollectionView *)v8 _setContentInsetAdjustmentBehavior:2];
  [(VUIShelfViewController *)self configureWithCollectionView:v8];
  [(VUIShelfViewController *)self setCollectionView:v8];
  [(VUIShelfView *)self->_containerView setCollectionView:v8];
  [(VUIShelfView *)self->_containerView addSubview:v8];
  [(VUIShelfViewController *)self _updateCollectionViewLayout:0];
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = VUIShelfViewController;
  [(VUIShelfViewController *)&v4 didMoveToParentViewController:controller];
  [(VUIShelfViewController *)self _ensureScrollViewSnaps];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = VUIShelfViewController;
  coordinatorCopy = coordinator;
  [(VUIShelfViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(VUIShelfViewController *)self updateContentOffsetWithTransitionCoordinator:coordinatorCopy, v8.receiver, v8.super_class];
}

- (void)updateContentOffsetWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  collectionView = [(VUIShelfViewController *)self collectionView];
  [collectionView contentInset];
  v7 = v6;

  collectionView2 = [(VUIShelfViewController *)self collectionView];
  [collectionView2 contentOffset];
  v10 = v9;
  v12 = v11;

  collectionView3 = [(VUIShelfViewController *)self collectionView];
  [collectionView3 bounds];
  *&v22 = v7 + v10;
  *(&v22 + 1) = CGRectGetMidY(v23);

  v14 = [(VUIShelfViewController *)self _findSnappingItemFromContentOffset:&v22 withVelocity:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  view = [(VUIShelfViewController *)self view];
  [view setNeedsLayout];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__VUIShelfViewController_updateContentOffsetWithTransitionCoordinator___block_invoke;
  v17[3] = &unk_1E8734B90;
  v17[4] = self;
  v18 = v14;
  v19 = v10;
  v20 = v12;
  v21 = v22;
  v16 = v14;
  [coordinatorCopy animateAlongsideTransition:v17 completion:0];
}

void __71__VUIShelfViewController_updateContentOffsetWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateCollectionViewLayout:1];
  if (*(a1 + 40))
  {
    v6 = *(a1 + 48);
    v2 = [*(a1 + 32) collectionView];
    v3 = [v2 cellForItemAtIndexPath:*(a1 + 40)];

    if (v3)
    {
      [*(a1 + 32) _snapTargetContentOffset:&v6 toItemIndexPath:*(a1 + 40) atItemOffset:{*(a1 + 64), *(a1 + 72)}];
      v4 = v6;
      v5 = [*(a1 + 32) collectionView];
      [v5 setContentOffset:v4];
    }
  }
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = VUIShelfViewController;
  [(VUIShelfViewController *)&v8 viewWillLayoutSubviews];
  if (self->_shouldUpdateBeforeLayout)
  {
    self->_shouldUpdateBeforeLayout = 0;
    [(VUIShelfViewController *)self _updateCollectionViewLayout:1];
  }

  containerView = self->_containerView;
  view = [(VUIShelfViewController *)self view];
  [view bounds];
  [(VUIShelfView *)containerView setFrame:?];

  collectionView = self->_collectionView;
  v6 = MEMORY[0x1E69DD2E8];
  view2 = [(VUIShelfViewController *)self view];
  [view2 bounds];
  [v6 vui_paddingForWindowWidth:CGRectGetWidth(v9)];
  [(UICollectionView *)collectionView setContentInset:?];
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

- (void)_ensureScrollViewSnaps
{
  collectionView = [(VUIShelfViewController *)self collectionView];
  [collectionView contentInset];
  v5 = v4;

  collectionView2 = [(VUIShelfViewController *)self collectionView];
  [collectionView2 contentOffset];
  v8 = v7;
  v17 = v7;
  v18 = v9;

  collectionView3 = [(VUIShelfViewController *)self collectionView];
  [collectionView3 bounds];
  v15 = v5 + v8;
  MidY = CGRectGetMidY(v19);

  v11 = [(VUIShelfViewController *)self _findSnappingItemFromContentOffset:&v15 withVelocity:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  if (v11)
  {
    [(VUIShelfViewController *)self _snapTargetContentOffset:&v17 toItemIndexPath:v11 atItemOffset:v15, MidY];
    v12 = v17;
    v13 = v18;
    collectionView4 = [(VUIShelfViewController *)self collectionView];
    [collectionView4 setContentOffset:{v12, v13}];
  }
}

- (id)_findSnappingItemFromContentOffset:(CGPoint *)offset withVelocity:(CGPoint)velocity
{
  x = velocity.x;
  v7 = [(VUIShelfViewController *)self collectionView:velocity.x];
  [v7 contentSize];
  v9 = v8;
  collectionView = [(VUIShelfViewController *)self collectionView];
  [collectionView frame];
  v12 = v9 - v11;

  if (v12 > 0.0 && offset->x >= v12)
  {
    v14 = 0;
    v26 = 1;
  }

  else
  {
    collectionView2 = [(VUIShelfViewController *)self collectionView];
    v14 = [collectionView2 indexPathForItemAtPoint:{offset->x, offset->y}];

    if (!v14)
    {
      collectionView3 = [(VUIShelfViewController *)self collectionView];
      collectionViewLayout = [collectionView3 collectionViewLayout];
      [collectionViewLayout minimumInteritemSpacing];
      v18 = v17;

      v19 = -v18;
      if (x > 0.0)
      {
        v19 = v18;
      }

      offset->x = v19 + offset->x;
      collectionView4 = [(VUIShelfViewController *)self collectionView];
      v14 = [collectionView4 indexPathForItemAtPoint:{offset->x, offset->y}];

      if (!v14)
      {
        collectionView5 = [(VUIShelfViewController *)self collectionView];
        collectionViewLayout2 = [collectionView5 collectionViewLayout];
        [collectionViewLayout2 minimumLineSpacing];
        v24 = v23;

        offset->y = offset->y - v24;
        collectionView6 = [(VUIShelfViewController *)self collectionView];
        v14 = [collectionView6 indexPathForItemAtPoint:{offset->x, offset->y}];
      }
    }

    v26 = 0;
  }

  collectionView7 = [(VUIShelfViewController *)self collectionView];
  numberOfSections = [collectionView7 numberOfSections];

  if (!v14)
  {
    v29 = numberOfSections - 1;
    if (numberOfSections >= 1)
    {
      v30 = 0;
      do
      {
        collectionView8 = [(VUIShelfViewController *)self collectionView];
        v32 = [collectionView8 numberOfItemsInSection:v30];

        if (v32 < 1)
        {
          v33 = 0;
          ++v30;
        }

        else
        {
          v33 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v30];
        }
      }

      while (v30 < numberOfSections && !v33);
      do
      {
        collectionView9 = [(VUIShelfViewController *)self collectionView];
        v35 = [collectionView9 numberOfItemsInSection:v29];

        if (v35 < 1)
        {
          v36 = 0;
          if (--v29 < 0)
          {
            break;
          }
        }

        else
        {
          v36 = [MEMORY[0x1E696AC88] indexPathForItem:v35 - 1 inSection:v29];
          if (v29 < 0)
          {
            break;
          }
        }
      }

      while (!v36);
      if (v26)
      {
        v37 = v36;
      }

      else
      {
        v37 = v33;
      }

      v14 = v37;
    }
  }

  return v14;
}

- (void)_snapTargetContentOffset:(CGPoint *)offset toItemIndexPath:(id)path atItemOffset:(CGPoint)itemOffset
{
  x = itemOffset.x;
  pathCopy = path;
  collectionView = [(VUIShelfViewController *)self collectionView];
  [collectionView frame];
  v10 = v9;

  collectionView2 = [(VUIShelfViewController *)self collectionView];
  [collectionView2 contentSize];
  v13 = v12;

  collectionView3 = [(VUIShelfViewController *)self collectionView];
  [collectionView3 contentInset];
  v16 = v15;
  v18 = v17;

  v19 = v10 - v18 - v16;
  collectionView4 = [(VUIShelfViewController *)self collectionView];
  v21 = [collectionView4 layoutAttributesForItemAtIndexPath:pathCopy];

  [v21 frame];
  v26 = v22;
  if (v22 < v13 - v19)
  {
    if (CGRectGetMidX(*&v22) < x)
    {
      collectionView5 = [(VUIShelfViewController *)self collectionView];
      v28 = [collectionView5 numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}] - 1;
      item = [pathCopy item];

      if (v28 > item)
      {
        v30 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(pathCopy inSection:{"item") + 1, objc_msgSend(pathCopy, "section")}];

        collectionView6 = [(VUIShelfViewController *)self collectionView];
        v32 = [collectionView6 layoutAttributesForItemAtIndexPath:v30];

        [v32 frame];
        v26 = v33;
        v21 = v32;
        pathCopy = v30;
      }
    }

    goto LABEL_6;
  }

  if (v13 < v19)
  {
LABEL_6:
    v34 = v26 - v16;
    goto LABEL_8;
  }

  v34 = v13 - v10 + v18;
LABEL_8:
  offset->x = v34;
}

- (void)_updateCollectionViewLayout:(BOOL)layout
{
  layoutCopy = layout;
  collectionView = [(VUIShelfViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  [MEMORY[0x1E69DD2E8] vui_collectionInteritemSpace:self->_gridStyle gridType:0];
  [collectionViewLayout setMinimumInteritemSpacing:?];
  if (objc_opt_respondsToSelector())
  {
    [(VUIShelfViewController *)self updateShelfLayout:collectionViewLayout];
  }

  if (layoutCopy)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69D5970]);
    [v6 setInvalidateLayout:1];
    [collectionViewLayout invalidateLayoutWithContext:v6];
  }
}

@end