@interface VUIShelfViewController
- (VUIShelfViewController)initWithGridStyle:(int64_t)a3;
- (id)_findSnappingItemFromContentOffset:(CGPoint *)a3 withVelocity:(CGPoint)a4;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (void)_ensureScrollViewSnaps;
- (void)_snapTargetContentOffset:(CGPoint *)a3 toItemIndexPath:(id)a4 atItemOffset:(CGPoint)a5;
- (void)_updateCollectionViewLayout:(BOOL)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)loadView;
- (void)setHeaderView:(id)a3;
- (void)updateContentOffsetWithTransitionCoordinator:(id)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation VUIShelfViewController

- (VUIShelfViewController)initWithGridStyle:(int64_t)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VUIShelfViewController;
  v4 = [(VUIShelfViewController *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_gridStyle = a3;
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

- (void)setHeaderView:(id)a3
{
  v5 = a3;
  if (self->_headerView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_headerView, a3);
    [(VUIShelfView *)self->_containerView setHeaderView:v6];
    v5 = v6;
  }
}

- (void)loadView
{
  v3 = [VUIShelfView alloc];
  v4 = [MEMORY[0x1E69DD2E8] vui_keyWindow];
  [v4 bounds];
  v10 = [(VUIShelfView *)v3 initWithFrame:?];

  [(VUIShelfView *)v10 setAutoresizingMask:18];
  v5 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
  [(VUIShelfView *)v10 setBackgroundColor:v5];

  [(VUIShelfViewController *)self setView:v10];
  [(VUIShelfViewController *)self setContainerView:v10];
  [(VUIShelfView *)v10 setHeaderView:self->_headerView];
  v6 = objc_alloc_init(MEMORY[0x1E69D59B8]);
  [v6 setMinimumLineSpacing:0.0];
  v7 = [VUILegacyCollectionView alloc];
  v8 = [(VUILegacyCollectionView *)v7 initWithFrame:v6 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(VUILegacyCollectionView *)v8 setAutoresizingMask:18];
  v9 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
  [(VUILegacyCollectionView *)v8 setBackgroundColor:v9];

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

- (void)didMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = VUIShelfViewController;
  [(VUIShelfViewController *)&v4 didMoveToParentViewController:a3];
  [(VUIShelfViewController *)self _ensureScrollViewSnaps];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = VUIShelfViewController;
  v7 = a4;
  [(VUIShelfViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(VUIShelfViewController *)self updateContentOffsetWithTransitionCoordinator:v7, v8.receiver, v8.super_class];
}

- (void)updateContentOffsetWithTransitionCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(VUIShelfViewController *)self collectionView];
  [v5 contentInset];
  v7 = v6;

  v8 = [(VUIShelfViewController *)self collectionView];
  [v8 contentOffset];
  v10 = v9;
  v12 = v11;

  v13 = [(VUIShelfViewController *)self collectionView];
  [v13 bounds];
  *&v22 = v7 + v10;
  *(&v22 + 1) = CGRectGetMidY(v23);

  v14 = [(VUIShelfViewController *)self _findSnappingItemFromContentOffset:&v22 withVelocity:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v15 = [(VUIShelfViewController *)self view];
  [v15 setNeedsLayout];

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
  [v4 animateAlongsideTransition:v17 completion:0];
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
  v4 = [(VUIShelfViewController *)self view];
  [v4 bounds];
  [(VUIShelfView *)containerView setFrame:?];

  collectionView = self->_collectionView;
  v6 = MEMORY[0x1E69DD2E8];
  v7 = [(VUIShelfViewController *)self view];
  [v7 bounds];
  [v6 vui_paddingForWindowWidth:CGRectGetWidth(v9)];
  [(UICollectionView *)collectionView setContentInset:?];
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

- (void)_ensureScrollViewSnaps
{
  v3 = [(VUIShelfViewController *)self collectionView];
  [v3 contentInset];
  v5 = v4;

  v6 = [(VUIShelfViewController *)self collectionView];
  [v6 contentOffset];
  v8 = v7;
  v17 = v7;
  v18 = v9;

  v10 = [(VUIShelfViewController *)self collectionView];
  [v10 bounds];
  v15 = v5 + v8;
  MidY = CGRectGetMidY(v19);

  v11 = [(VUIShelfViewController *)self _findSnappingItemFromContentOffset:&v15 withVelocity:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  if (v11)
  {
    [(VUIShelfViewController *)self _snapTargetContentOffset:&v17 toItemIndexPath:v11 atItemOffset:v15, MidY];
    v12 = v17;
    v13 = v18;
    v14 = [(VUIShelfViewController *)self collectionView];
    [v14 setContentOffset:{v12, v13}];
  }
}

- (id)_findSnappingItemFromContentOffset:(CGPoint *)a3 withVelocity:(CGPoint)a4
{
  x = a4.x;
  v7 = [(VUIShelfViewController *)self collectionView:a4.x];
  [v7 contentSize];
  v9 = v8;
  v10 = [(VUIShelfViewController *)self collectionView];
  [v10 frame];
  v12 = v9 - v11;

  if (v12 > 0.0 && a3->x >= v12)
  {
    v14 = 0;
    v26 = 1;
  }

  else
  {
    v13 = [(VUIShelfViewController *)self collectionView];
    v14 = [v13 indexPathForItemAtPoint:{a3->x, a3->y}];

    if (!v14)
    {
      v15 = [(VUIShelfViewController *)self collectionView];
      v16 = [v15 collectionViewLayout];
      [v16 minimumInteritemSpacing];
      v18 = v17;

      v19 = -v18;
      if (x > 0.0)
      {
        v19 = v18;
      }

      a3->x = v19 + a3->x;
      v20 = [(VUIShelfViewController *)self collectionView];
      v14 = [v20 indexPathForItemAtPoint:{a3->x, a3->y}];

      if (!v14)
      {
        v21 = [(VUIShelfViewController *)self collectionView];
        v22 = [v21 collectionViewLayout];
        [v22 minimumLineSpacing];
        v24 = v23;

        a3->y = a3->y - v24;
        v25 = [(VUIShelfViewController *)self collectionView];
        v14 = [v25 indexPathForItemAtPoint:{a3->x, a3->y}];
      }
    }

    v26 = 0;
  }

  v27 = [(VUIShelfViewController *)self collectionView];
  v28 = [v27 numberOfSections];

  if (!v14)
  {
    v29 = v28 - 1;
    if (v28 >= 1)
    {
      v30 = 0;
      do
      {
        v31 = [(VUIShelfViewController *)self collectionView];
        v32 = [v31 numberOfItemsInSection:v30];

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

      while (v30 < v28 && !v33);
      do
      {
        v34 = [(VUIShelfViewController *)self collectionView];
        v35 = [v34 numberOfItemsInSection:v29];

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

- (void)_snapTargetContentOffset:(CGPoint *)a3 toItemIndexPath:(id)a4 atItemOffset:(CGPoint)a5
{
  x = a5.x;
  v35 = a4;
  v8 = [(VUIShelfViewController *)self collectionView];
  [v8 frame];
  v10 = v9;

  v11 = [(VUIShelfViewController *)self collectionView];
  [v11 contentSize];
  v13 = v12;

  v14 = [(VUIShelfViewController *)self collectionView];
  [v14 contentInset];
  v16 = v15;
  v18 = v17;

  v19 = v10 - v18 - v16;
  v20 = [(VUIShelfViewController *)self collectionView];
  v21 = [v20 layoutAttributesForItemAtIndexPath:v35];

  [v21 frame];
  v26 = v22;
  if (v22 < v13 - v19)
  {
    if (CGRectGetMidX(*&v22) < x)
    {
      v27 = [(VUIShelfViewController *)self collectionView];
      v28 = [v27 numberOfItemsInSection:{objc_msgSend(v35, "section")}] - 1;
      v29 = [v35 item];

      if (v28 > v29)
      {
        v30 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v35 inSection:{"item") + 1, objc_msgSend(v35, "section")}];

        v31 = [(VUIShelfViewController *)self collectionView];
        v32 = [v31 layoutAttributesForItemAtIndexPath:v30];

        [v32 frame];
        v26 = v33;
        v21 = v32;
        v35 = v30;
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
  a3->x = v34;
}

- (void)_updateCollectionViewLayout:(BOOL)a3
{
  v3 = a3;
  v5 = [(VUIShelfViewController *)self collectionView];
  v7 = [v5 collectionViewLayout];

  [MEMORY[0x1E69DD2E8] vui_collectionInteritemSpace:self->_gridStyle gridType:0];
  [v7 setMinimumInteritemSpacing:?];
  if (objc_opt_respondsToSelector())
  {
    [(VUIShelfViewController *)self updateShelfLayout:v7];
  }

  if (v3)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69D5970]);
    [v6 setInvalidateLayout:1];
    [v7 invalidateLayoutWithContext:v6];
  }
}

@end