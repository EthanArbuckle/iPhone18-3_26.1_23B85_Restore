@interface VideosExtrasCarouselViewController
- (BOOL)_isPhone;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (VideosExtrasCarouselViewControllerDataSource)dataSource;
- (VideosExtrasCarouselViewControllerDelegate)delegate;
- (id)_findSnappingItemFromContentOffset:(CGPoint *)a3 withVelocity:(CGPoint)a4;
- (id)carouselCollectionViewCellForItemAtIndex:(unint64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)_numberOfItems;
- (unint64_t)indexOfVisibleItem;
- (void)_ensureScrollViewSnaps;
- (void)_loadCarouselCollectionViewInView:(id)a3 withContraintsAccumulator:(id)a4;
- (void)_snapTargetContentOffset:(CGPoint *)a3 toItemIndexPath:(id)a4 atItemOffset:(CGPoint)a5;
- (void)_updateOpacityOfTextInVisibleCells;
- (void)_updateWindowSizeForVisibleCells;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4;
- (void)performZoomingImageTransitionWithContext:(id)a3;
- (void)prepareZoomingImageTransitionWithContext:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setIndexOfVisibleItem:(unint64_t)a3 animated:(BOOL)a4;
- (void)subviewsDidChangeForCarouselCollectionView:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation VideosExtrasCarouselViewController

- (void)dealloc
{
  v3 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  [v3 setDataSource:0];
  [v3 setDelegate:0];
  [v3 setCarouselCollectionViewDelegate:0];

  v4.receiver = self;
  v4.super_class = VideosExtrasCarouselViewController;
  [(VideosExtrasCarouselViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = VideosExtrasCarouselViewController;
  [(VideosExtrasCarouselViewController *)&v7 viewWillAppear:a3];
  v4 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  v5 = [v4 indexPathsForSelectedItems];
  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
    [v4 deselectItemAtIndexPath:v6 animated:1];
  }

  [(VideosExtrasCarouselViewController *)self _ensureScrollViewSnaps];
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = VideosExtrasCarouselViewController;
  [(VideosExtrasCarouselViewController *)&v24 viewDidLoad];
  v3 = [(VideosExtrasCarouselViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(VideosExtrasCarouselViewController *)self _loadCarouselCollectionViewInView:v3 withContraintsAccumulator:v4];
  [v3 addConstraints:v4];
  if (![(VideosExtrasCarouselViewController *)self _isPhone])
  {
    [(VideosExtrasCarouselViewController *)self _updateOpacityOfTextInVisibleCells];
    [(VideosExtrasCarouselViewController *)self _updateWindowSizeForVisibleCells];
    goto LABEL_25;
  }

  v5 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  [v5 layoutIfNeeded];
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  v8 = [(VideosExtrasCarouselViewController *)self dataSource];
  v9 = [v8 carouselSize];

  v10 = [(VideosExtrasCarouselViewController *)self navigationController];
  v11 = [v10 view];
  [v11 safeAreaInsets];
  v13 = v12;
  v14 = [(VideosExtrasCarouselViewController *)self navigationController];
  v15 = [v14 view];
  [v15 safeAreaInsets];
  v17 = v13 + v16;

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        if (v17 == 0.0)
        {
          v6 = 30.0;
        }

        else
        {
          v6 = v17;
        }

        v7 = 51.0;
      }

      goto LABEL_20;
    }

    if (v17 == 0.0)
    {
      v6 = 30.0;
    }

    else
    {
      v6 = v17;
    }

    *&v18 = 62.0;
    goto LABEL_19;
  }

  if (v9 <= 1)
  {
    if (v17 == 0.0)
    {
      v6 = 30.0;
    }

    else
    {
      v6 = v17;
    }

    *&v18 = 52.0;
LABEL_19:
    v7 = *&v18;
  }

LABEL_20:
  [v5 bounds];
  v20 = v19;
  [v5 bounds];
  v22 = v21;
  v23 = [(VideosExtrasCarouselViewController *)self carouselCollectionViewLayout];
  if (objc_opt_respondsToSelector())
  {
    [v23 setItemSize:{v20 - v6, v22 - v7}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v23 setMinimumInteritemSpacing:0.0];
  }

  [v23 invalidateLayout];

LABEL_25:
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = a4;
  v9 = [a3 cellForItemAtIndexPath:a5];
  if (!v9 || ![(VideosExtrasCarouselViewController *)self _isPhone])
  {
    goto LABEL_7;
  }

  v10 = [v9 titleText];
  if ([v10 length])
  {
    goto LABEL_6;
  }

  v11 = [v9 subtitleText];
  if ([v11 length])
  {

LABEL_6:
    goto LABEL_7;
  }

  v18 = [v9 descriptionText];
  v19 = [v18 length];

  if (!v19)
  {
    [v9 thumbnailMaxSize];
    goto LABEL_8;
  }

LABEL_7:
  [v8 itemSize];
LABEL_8:
  v14 = v12;
  v15 = v13;

  v16 = v14;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 item];
  v9 = [v7 window];
  [v9 bounds];
  v11 = v10;
  v13 = v12;

  if ([(VideosExtrasCarouselViewController *)self _isPhone])
  {
    v14 = *MEMORY[0x1E695F060];
    v15 = *(MEMORY[0x1E695F060] + 8);
    v16 = [v7 dequeueReusableCellWithReuseIdentifier:@"_VideosExtrasLockupCollectionViewCellReuseIdentifier" forIndexPath:v6];

    [v16 setItemIndex:v8];
    [v16 setZoomingImageTransitionIdentifier:@"VideosExtrasCarouselZoomingImageTransitionIdentifier"];
  }

  else
  {
    v16 = [v7 dequeueReusableCellWithReuseIdentifier:@"_VideosExtrasCarouselCollectionViewCellReuseIdentifier" forIndexPath:v6];

    [v16 setWindowSize:{v11, v13}];
    v17 = [v16 titleLabel];
    [v17 setAlpha:0.0];

    v18 = [v16 descriptionLabel];
    [v18 setAlpha:0.0];

    [v16 setItemIndex:v8];
    [v16 setZoomingImageTransitionIdentifier:@"VideosExtrasCarouselZoomingImageTransitionIdentifier"];
    v19 = [(VideosExtrasCarouselViewController *)self carouselCollectionViewLayout];
    [v19 itemWidth];
    v14 = v20;
    [v16 thumbnailImageContainerHeight];
    v15 = v21;
  }

  v22 = [(VideosExtrasCarouselViewController *)self dataSource];
  [v22 carouselViewController:self configureCarouselCollectionViewCell:v16 forItemAtIndex:v8 withThumbnailImageContainerSize:{v14, v15}];

  return v16;
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v6 = a4;
  v5 = [(VideosExtrasCarouselViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 carouselViewController:self didHighlightItemAtIndex:{objc_msgSend(v6, "item")}];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VideosExtrasCarouselViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v7 item];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__VideosExtrasCarouselViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
    v10[3] = &unk_1E872E9C8;
    v11 = v6;
    v12 = v7;
    [v8 carouselViewController:self didSelectItemAtIndex:v9 completionHandler:v10];
  }
}

uint64_t __78__VideosExtrasCarouselViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) deselectItemAtIndexPath:*(result + 40) animated:1];
  }

  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  if (![(VideosExtrasCarouselViewController *)self _isPhone])
  {

    [(VideosExtrasCarouselViewController *)self _updateOpacityOfTextInVisibleCells];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  if ([(VideosExtrasCarouselViewController *)self _isPhone])
  {
    v9 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
    [v9 _effectiveContentInset];
    v11 = v10;

    v12 = v11 + a5->x;
    v13 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
    [v13 bounds];
    v15 = v12;
    MidY = CGRectGetMidY(v17);

    v14 = [(VideosExtrasCarouselViewController *)self _findSnappingItemFromContentOffset:&v15 withVelocity:x, y];
    if (v14)
    {
      [(VideosExtrasCarouselViewController *)self _snapTargetContentOffset:a5 toItemIndexPath:v14 atItemOffset:v15, MidY];
    }
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = VideosExtrasCarouselViewController;
  [(VideosExtrasCarouselViewController *)&v4 didMoveToParentViewController:a3];
  [(VideosExtrasCarouselViewController *)self _ensureScrollViewSnaps];
}

- (void)_ensureScrollViewSnaps
{
  if ([(VideosExtrasCarouselViewController *)self _isPhone])
  {
    v3 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
    [v3 _effectiveContentInset];
    v5 = v4;

    v6 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
    [v6 contentOffset];
    v8 = v7;
    v17 = v7;
    v18 = v9;

    v10 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
    [v10 bounds];
    v15 = v5 + v8;
    MidY = CGRectGetMidY(v19);

    v11 = [(VideosExtrasCarouselViewController *)self _findSnappingItemFromContentOffset:&v15 withVelocity:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    if (v11)
    {
      [(VideosExtrasCarouselViewController *)self _snapTargetContentOffset:&v17 toItemIndexPath:v11 atItemOffset:v15, MidY];
      v12 = v17;
      v13 = v18;
      v14 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
      [v14 setContentOffset:{v12, v13}];
    }
  }
}

- (id)_findSnappingItemFromContentOffset:(CGPoint *)a3 withVelocity:(CGPoint)a4
{
  x = a4.x;
  v7 = [(VideosExtrasCarouselViewController *)self carouselCollectionView:a4.x];
  [v7 contentSize];
  v9 = v8;
  v10 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  [v10 frame];
  v12 = v9 - v11;

  if (v12 > 0.0 && a3->x >= v12)
  {
    v14 = 0;
    v24 = 1;
  }

  else
  {
    v13 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
    v14 = [v13 indexPathForItemAtPoint:{a3->x, a3->y}];

    if (!v14)
    {
      v15 = [(VideosExtrasCarouselViewController *)self carouselCollectionViewLayout];
      [v15 minimumInteritemSpacing];
      v17 = v16;

      v18 = 10.0;
      if (v17 != 0.0)
      {
        v18 = v17;
      }

      if (x <= 0.0)
      {
        v18 = -v18;
      }

      a3->x = a3->x + v18;
      v19 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
      v14 = [v19 indexPathForItemAtPoint:{a3->x, a3->y}];

      if (!v14)
      {
        v20 = [(VideosExtrasCarouselViewController *)self carouselCollectionViewLayout];
        [v20 minimumLineSpacing];
        v22 = v21;

        a3->y = a3->y - v22;
        v23 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
        v14 = [v23 indexPathForItemAtPoint:{a3->x, a3->y}];
      }
    }

    v24 = 0;
  }

  v25 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  v26 = [v25 numberOfSections];

  if (!v14)
  {
    v27 = v26 - 1;
    if (v26 >= 1)
    {
      v28 = 0;
      do
      {
        v29 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
        v30 = [v29 numberOfItemsInSection:v28];

        if (v30 < 1)
        {
          v31 = 0;
          ++v28;
        }

        else
        {
          v31 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v28];
        }
      }

      while (v28 < v26 && !v31);
      do
      {
        v32 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
        v33 = [v32 numberOfItemsInSection:v27];

        if (v33 < 1)
        {
          v34 = 0;
          if (--v27 < 0)
          {
            break;
          }
        }

        else
        {
          v34 = [MEMORY[0x1E696AC88] indexPathForItem:v33 - 1 inSection:v27];
          if (v27 < 0)
          {
            break;
          }
        }
      }

      while (!v34);
      if (v24)
      {
        v35 = v34;
      }

      else
      {
        v35 = v31;
      }

      v14 = v35;
    }
  }

  return v14;
}

- (void)_snapTargetContentOffset:(CGPoint *)a3 toItemIndexPath:(id)a4 atItemOffset:(CGPoint)a5
{
  x = a5.x;
  v35 = a4;
  v8 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  [v8 frame];
  v10 = v9;

  v11 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  [v11 contentSize];
  v13 = v12;

  v14 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  [v14 _effectiveContentInset];
  v16 = v15;
  v18 = v17;

  v19 = v10 - v18 - v16;
  v20 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  v21 = [v20 layoutAttributesForItemAtIndexPath:v35];

  [v21 frame];
  v26 = v22;
  if (v22 < v13 - v19)
  {
    if (CGRectGetMidX(*&v22) < x)
    {
      v27 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
      v28 = [v27 numberOfItemsInSection:{objc_msgSend(v35, "section")}] - 1;
      v29 = [v35 item];

      if (v28 > v29)
      {
        v30 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v35 inSection:{"item") + 1, objc_msgSend(v35, "section")}];

        v31 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
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

- (void)subviewsDidChangeForCarouselCollectionView:(id)a3
{
  if (![(VideosExtrasCarouselViewController *)self _isPhone])
  {

    [(VideosExtrasCarouselViewController *)self _updateOpacityOfTextInVisibleCells];
  }
}

- (void)prepareZoomingImageTransitionWithContext:(id)a3
{
  v11 = a3;
  v4 = [v11 appearState];
  v5 = [v11 itemIndex];
  if (!v4)
  {
    [(VideosExtrasCarouselViewController *)self setIndexOfVisibleItem:v5];
    v6 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
    [v6 layoutIfNeeded];

    [(VideosExtrasCarouselViewController *)self _updateOpacityOfTextInVisibleCells];
    v7 = [(VideosExtrasCarouselViewController *)self view];
    [v7 setAlpha:0.0];

    v8 = [(VideosExtrasCarouselViewController *)self navigationController];
    if ([v8 isNavigationBarHidden])
    {
      [(VideosExtrasCarouselViewController *)self setRevealingNavigationBarDuringTransition:1];
      [v8 setNavigationBarHidden:0 animated:1];
      v9 = [v8 navigationBar];
      [v9 setAlpha:0.0];
    }
  }

  v10 = [(VideosExtrasCarouselViewController *)self carouselCollectionViewCellForItemAtIndex:v5];
  [v10 prepareZoomingImageTransitionWithContext:v11];
}

- (void)performZoomingImageTransitionWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 appearState];
  if (v5 == 1)
  {
    v6 = 0.0;
  }

  else
  {
    if (v5)
    {
      goto LABEL_7;
    }

    v6 = 1.0;
    if ([(VideosExtrasCarouselViewController *)self isRevealingNavigationBarDuringTransition])
    {
      v7 = [(VideosExtrasCarouselViewController *)self navigationController];
      v8 = [v7 navigationBar];
      [v8 setAlpha:1.0];
    }
  }

  v9 = [(VideosExtrasCarouselViewController *)self view];
  [v9 setAlpha:v6];

LABEL_7:
  v10 = -[VideosExtrasCarouselViewController carouselCollectionViewCellForItemAtIndex:](self, "carouselCollectionViewCellForItemAtIndex:", [v4 itemIndex]);
  [v10 performZoomingImageTransitionWithContext:v4];
}

- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v9 = -[VideosExtrasCarouselViewController carouselCollectionViewCellForItemAtIndex:](self, "carouselCollectionViewCellForItemAtIndex:", [v6 itemIndex]);
  [v9 finalizeZoomingImageTransitionWithContext:v6 transitionFinished:v4];
  v7 = [v6 appearState];

  if (v7 == 1)
  {
    v8 = [(VideosExtrasCarouselViewController *)self view];
    [v8 setAlpha:1.0];
  }

  [(VideosExtrasCarouselViewController *)self setRevealingNavigationBarDuringTransition:0];
}

- (unint64_t)indexOfVisibleItem
{
  v2 = [(VideosExtrasCarouselViewController *)self carouselCollectionViewLayout];
  v3 = [v2 indexOfVisibleItem];

  return v3;
}

- (void)setIndexOfVisibleItem:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  [v7 layoutIfNeeded];

  v8 = [(VideosExtrasCarouselViewController *)self carouselCollectionViewLayout];
  [v8 setIndexOfVisibleItem:a3 animated:v4];
}

- (id)carouselCollectionViewCellForItemAtIndex:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
  v5 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  v6 = [v5 cellForItemAtIndexPath:v4];

  return v6;
}

- (void)_loadCarouselCollectionViewInView:(id)a3 withContraintsAccumulator:(id)a4
{
  v38 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E69DDCE0];
  v8 = *(MEMORY[0x1E69DDCE0] + 8);
  v9 = *(MEMORY[0x1E69DDCE0] + 16);
  v10 = *(MEMORY[0x1E69DDCE0] + 24);
  if ([(VideosExtrasCarouselViewController *)self _isPhone])
  {
    v11 = objc_alloc_init(VideosExtrasCarouselCollectionViewFlowLayout);
    [(UICollectionViewFlowLayout *)v11 setScrollDirection:1];
    v12 = [(VideosExtrasCarouselViewController *)self navigationController];
    v13 = [v12 view];
    [v13 safeAreaInsets];
    v15 = v14;

    v16 = [(VideosExtrasCarouselViewController *)self navigationController];
    v17 = [v16 view];
    [v17 safeAreaInsets];
    v19 = v18;

    if (v15 == 0.0)
    {
      v20 = 15.0;
    }

    else
    {
      v20 = v15;
    }

    if (v19 == 0.0)
    {
      v21 = 15.0;
    }

    else
    {
      v21 = v19;
    }
  }

  else
  {
    v11 = objc_alloc_init(VideosExtrasCarouselCollectionViewLayout);
    v21 = v10;
    v20 = v8;
  }

  [(VideosExtrasCarouselViewController *)self setCarouselCollectionViewLayout:v11];
  v22 = [VideosExtrasCarouselCollectionView alloc];
  v23 = [(VideosExtrasCarouselCollectionView *)v22 initWithFrame:v11 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(VideosExtrasCarouselCollectionView *)v23 setContentInset:v7, v20, v9, v21];
  [(VideosExtrasCarouselCollectionView *)v23 setShowsHorizontalScrollIndicator:0];
  v24 = [MEMORY[0x1E69DC888] clearColor];
  [(VideosExtrasCarouselCollectionView *)v23 setBackgroundColor:v24];

  [(VideosExtrasCarouselCollectionView *)v23 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"_VideosExtrasCarouselCollectionViewCellReuseIdentifier"];
  [(VideosExtrasCarouselCollectionView *)v23 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"_VideosExtrasLockupCollectionViewCellReuseIdentifier"];
  [(VideosExtrasCarouselCollectionView *)v23 setDataSource:self];
  [(VideosExtrasCarouselCollectionView *)v23 setDelegate:self];
  [(VideosExtrasCarouselCollectionView *)v23 setCarouselCollectionViewDelegate:self];
  [(VideosExtrasCarouselCollectionView *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VideosExtrasCarouselCollectionView *)v23 _setContentInsetAdjustmentBehavior:2];
  [v38 addSubview:v23];
  v25 = 0.0;
  v26 = [MEMORY[0x1E696ACD8] constraintWithItem:v23 attribute:3 relatedBy:0 toItem:v38 attribute:3 multiplier:1.0 constant:0.0];
  [v6 addObject:v26];

  v27 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v23 toView:v38 alongEdges:10 insets:{v7, v8, v9, v10}];
  [v6 addObjectsFromArray:v27];

  v28 = [(VideosExtrasCarouselViewController *)self navigationController];
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    v30 = [(VideosExtrasCarouselViewController *)self navigationController];
    v31 = [v30 mainTemplateViewController];
    v32 = [v31 menuBarView];
    [v32 bounds];
    v25 = v33;

    v34 = MEMORY[0x1E696ACD8];
    if (v25 > 0.0)
    {
      v35 = 0;
      v36 = v38;
      goto LABEL_14;
    }
  }

  else
  {
    v34 = MEMORY[0x1E696ACD8];
  }

  v30 = [(VideosExtrasCarouselViewController *)self view];
  v36 = [v30 safeAreaLayoutGuide];
  v35 = 1;
LABEL_14:
  v37 = [v34 constraintWithItem:v23 attribute:4 relatedBy:0 toItem:v36 attribute:4 multiplier:1.0 constant:-v25];
  [v6 addObject:v37];

  if (v35)
  {
  }

  [(VideosExtrasCarouselViewController *)self setCarouselCollectionView:v23];
}

- (int64_t)_numberOfItems
{
  v3 = [(VideosExtrasCarouselViewController *)self dataSource];
  v4 = [v3 numberOfItemsInCarouselViewController:self];

  return v4;
}

- (void)_updateOpacityOfTextInVisibleCells
{
  v27 = *MEMORY[0x1E69E9840];
  if (![(VideosExtrasCarouselViewController *)self _isPhone])
  {
    v3 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
    v4 = [v3 superview];
    [v3 center];
    v6 = v5;
    v7 = [(VideosExtrasCarouselViewController *)self carouselCollectionViewLayout];
    [v7 itemWidth];
    v9 = v8;

    v10 = [v3 visibleCells];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          [v15 bounds];
          [v15 convertRect:v4 toView:?];
          v16 = vabdd_f64(CGRectGetMidX(v28), v6);
          v17 = 1.0;
          if (v16 >= v9 * 0.5)
          {
            v17 = 0.0;
            if (v16 <= v9)
            {
              MPULayoutLinearRelationMake();
              MPULayoutLinearRelationEvaluate();
              v17 = v18;
            }
          }

          v19 = [v15 titleLabel];
          [v19 setAlpha:v17];

          v20 = [v15 subtitleLabel];
          [v20 setAlpha:v17];

          v21 = [v15 descriptionLabel];
          [v21 setAlpha:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }
  }
}

- (void)_updateWindowSizeForVisibleCells
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  v3 = [v2 window];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [v2 visibleCells];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) setWindowSize:{v5, v7}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (BOOL)_isPhone
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

  return v3;
}

- (VideosExtrasCarouselViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (VideosExtrasCarouselViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end