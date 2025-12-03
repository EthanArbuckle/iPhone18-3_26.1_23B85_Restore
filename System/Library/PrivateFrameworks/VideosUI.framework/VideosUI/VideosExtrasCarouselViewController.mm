@interface VideosExtrasCarouselViewController
- (BOOL)_isPhone;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (VideosExtrasCarouselViewControllerDataSource)dataSource;
- (VideosExtrasCarouselViewControllerDelegate)delegate;
- (id)_findSnappingItemFromContentOffset:(CGPoint *)offset withVelocity:(CGPoint)velocity;
- (id)carouselCollectionViewCellForItemAtIndex:(unint64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)_numberOfItems;
- (unint64_t)indexOfVisibleItem;
- (void)_ensureScrollViewSnaps;
- (void)_loadCarouselCollectionViewInView:(id)view withContraintsAccumulator:(id)accumulator;
- (void)_snapTargetContentOffset:(CGPoint *)offset toItemIndexPath:(id)path atItemOffset:(CGPoint)itemOffset;
- (void)_updateOpacityOfTextInVisibleCells;
- (void)_updateWindowSizeForVisibleCells;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished;
- (void)performZoomingImageTransitionWithContext:(id)context;
- (void)prepareZoomingImageTransitionWithContext:(id)context;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setIndexOfVisibleItem:(unint64_t)item animated:(BOOL)animated;
- (void)subviewsDidChangeForCarouselCollectionView:(id)view;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VideosExtrasCarouselViewController

- (void)dealloc
{
  carouselCollectionView = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  [carouselCollectionView setDataSource:0];
  [carouselCollectionView setDelegate:0];
  [carouselCollectionView setCarouselCollectionViewDelegate:0];

  v4.receiver = self;
  v4.super_class = VideosExtrasCarouselViewController;
  [(VideosExtrasCarouselViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = VideosExtrasCarouselViewController;
  [(VideosExtrasCarouselViewController *)&v7 viewWillAppear:appear];
  carouselCollectionView = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  indexPathsForSelectedItems = [carouselCollectionView indexPathsForSelectedItems];
  if ([indexPathsForSelectedItems count] == 1)
  {
    firstObject = [indexPathsForSelectedItems firstObject];
    [carouselCollectionView deselectItemAtIndexPath:firstObject animated:1];
  }

  [(VideosExtrasCarouselViewController *)self _ensureScrollViewSnaps];
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = VideosExtrasCarouselViewController;
  [(VideosExtrasCarouselViewController *)&v24 viewDidLoad];
  view = [(VideosExtrasCarouselViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(VideosExtrasCarouselViewController *)self _loadCarouselCollectionViewInView:view withContraintsAccumulator:v4];
  [view addConstraints:v4];
  if (![(VideosExtrasCarouselViewController *)self _isPhone])
  {
    [(VideosExtrasCarouselViewController *)self _updateOpacityOfTextInVisibleCells];
    [(VideosExtrasCarouselViewController *)self _updateWindowSizeForVisibleCells];
    goto LABEL_25;
  }

  carouselCollectionView = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  [carouselCollectionView layoutIfNeeded];
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  dataSource = [(VideosExtrasCarouselViewController *)self dataSource];
  carouselSize = [dataSource carouselSize];

  navigationController = [(VideosExtrasCarouselViewController *)self navigationController];
  view2 = [navigationController view];
  [view2 safeAreaInsets];
  v13 = v12;
  navigationController2 = [(VideosExtrasCarouselViewController *)self navigationController];
  view3 = [navigationController2 view];
  [view3 safeAreaInsets];
  v17 = v13 + v16;

  if (carouselSize > 1)
  {
    if (carouselSize != 2)
    {
      if (carouselSize == 3)
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

  if (carouselSize <= 1)
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
  [carouselCollectionView bounds];
  v20 = v19;
  [carouselCollectionView bounds];
  v22 = v21;
  carouselCollectionViewLayout = [(VideosExtrasCarouselViewController *)self carouselCollectionViewLayout];
  if (objc_opt_respondsToSelector())
  {
    [carouselCollectionViewLayout setItemSize:{v20 - v6, v22 - v7}];
  }

  if (objc_opt_respondsToSelector())
  {
    [carouselCollectionViewLayout setMinimumInteritemSpacing:0.0];
  }

  [carouselCollectionViewLayout invalidateLayout];

LABEL_25:
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  v9 = [view cellForItemAtIndexPath:path];
  if (!v9 || ![(VideosExtrasCarouselViewController *)self _isPhone])
  {
    goto LABEL_7;
  }

  titleText = [v9 titleText];
  if ([titleText length])
  {
    goto LABEL_6;
  }

  subtitleText = [v9 subtitleText];
  if ([subtitleText length])
  {

LABEL_6:
    goto LABEL_7;
  }

  descriptionText = [v9 descriptionText];
  v19 = [descriptionText length];

  if (!v19)
  {
    [v9 thumbnailMaxSize];
    goto LABEL_8;
  }

LABEL_7:
  [layoutCopy itemSize];
LABEL_8:
  v14 = v12;
  v15 = v13;

  v16 = v14;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  item = [pathCopy item];
  window = [viewCopy window];
  [window bounds];
  v11 = v10;
  v13 = v12;

  if ([(VideosExtrasCarouselViewController *)self _isPhone])
  {
    v14 = *MEMORY[0x1E695F060];
    v15 = *(MEMORY[0x1E695F060] + 8);
    v16 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"_VideosExtrasLockupCollectionViewCellReuseIdentifier" forIndexPath:pathCopy];

    [v16 setItemIndex:item];
    [v16 setZoomingImageTransitionIdentifier:@"VideosExtrasCarouselZoomingImageTransitionIdentifier"];
  }

  else
  {
    v16 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"_VideosExtrasCarouselCollectionViewCellReuseIdentifier" forIndexPath:pathCopy];

    [v16 setWindowSize:{v11, v13}];
    titleLabel = [v16 titleLabel];
    [titleLabel setAlpha:0.0];

    descriptionLabel = [v16 descriptionLabel];
    [descriptionLabel setAlpha:0.0];

    [v16 setItemIndex:item];
    [v16 setZoomingImageTransitionIdentifier:@"VideosExtrasCarouselZoomingImageTransitionIdentifier"];
    carouselCollectionViewLayout = [(VideosExtrasCarouselViewController *)self carouselCollectionViewLayout];
    [carouselCollectionViewLayout itemWidth];
    v14 = v20;
    [v16 thumbnailImageContainerHeight];
    v15 = v21;
  }

  dataSource = [(VideosExtrasCarouselViewController *)self dataSource];
  [dataSource carouselViewController:self configureCarouselCollectionViewCell:v16 forItemAtIndex:item withThumbnailImageContainerSize:{v14, v15}];

  return v16;
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(VideosExtrasCarouselViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate carouselViewController:self didHighlightItemAtIndex:{objc_msgSend(pathCopy, "item")}];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  delegate = [(VideosExtrasCarouselViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    item = [pathCopy item];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__VideosExtrasCarouselViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
    v10[3] = &unk_1E872E9C8;
    v11 = viewCopy;
    v12 = pathCopy;
    [delegate carouselViewController:self didSelectItemAtIndex:item completionHandler:v10];
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

- (void)scrollViewDidScroll:(id)scroll
{
  if (![(VideosExtrasCarouselViewController *)self _isPhone])
  {

    [(VideosExtrasCarouselViewController *)self _updateOpacityOfTextInVisibleCells];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  if ([(VideosExtrasCarouselViewController *)self _isPhone])
  {
    carouselCollectionView = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
    [carouselCollectionView _effectiveContentInset];
    v11 = v10;

    v12 = v11 + offset->x;
    carouselCollectionView2 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
    [carouselCollectionView2 bounds];
    v15 = v12;
    MidY = CGRectGetMidY(v17);

    v14 = [(VideosExtrasCarouselViewController *)self _findSnappingItemFromContentOffset:&v15 withVelocity:x, y];
    if (v14)
    {
      [(VideosExtrasCarouselViewController *)self _snapTargetContentOffset:offset toItemIndexPath:v14 atItemOffset:v15, MidY];
    }
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = VideosExtrasCarouselViewController;
  [(VideosExtrasCarouselViewController *)&v4 didMoveToParentViewController:controller];
  [(VideosExtrasCarouselViewController *)self _ensureScrollViewSnaps];
}

- (void)_ensureScrollViewSnaps
{
  if ([(VideosExtrasCarouselViewController *)self _isPhone])
  {
    carouselCollectionView = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
    [carouselCollectionView _effectiveContentInset];
    v5 = v4;

    carouselCollectionView2 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
    [carouselCollectionView2 contentOffset];
    v8 = v7;
    v17 = v7;
    v18 = v9;

    carouselCollectionView3 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
    [carouselCollectionView3 bounds];
    v15 = v5 + v8;
    MidY = CGRectGetMidY(v19);

    v11 = [(VideosExtrasCarouselViewController *)self _findSnappingItemFromContentOffset:&v15 withVelocity:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    if (v11)
    {
      [(VideosExtrasCarouselViewController *)self _snapTargetContentOffset:&v17 toItemIndexPath:v11 atItemOffset:v15, MidY];
      v12 = v17;
      v13 = v18;
      carouselCollectionView4 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
      [carouselCollectionView4 setContentOffset:{v12, v13}];
    }
  }
}

- (id)_findSnappingItemFromContentOffset:(CGPoint *)offset withVelocity:(CGPoint)velocity
{
  x = velocity.x;
  v7 = [(VideosExtrasCarouselViewController *)self carouselCollectionView:velocity.x];
  [v7 contentSize];
  v9 = v8;
  carouselCollectionView = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  [carouselCollectionView frame];
  v12 = v9 - v11;

  if (v12 > 0.0 && offset->x >= v12)
  {
    v14 = 0;
    v24 = 1;
  }

  else
  {
    carouselCollectionView2 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
    v14 = [carouselCollectionView2 indexPathForItemAtPoint:{offset->x, offset->y}];

    if (!v14)
    {
      carouselCollectionViewLayout = [(VideosExtrasCarouselViewController *)self carouselCollectionViewLayout];
      [carouselCollectionViewLayout minimumInteritemSpacing];
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

      offset->x = offset->x + v18;
      carouselCollectionView3 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
      v14 = [carouselCollectionView3 indexPathForItemAtPoint:{offset->x, offset->y}];

      if (!v14)
      {
        carouselCollectionViewLayout2 = [(VideosExtrasCarouselViewController *)self carouselCollectionViewLayout];
        [carouselCollectionViewLayout2 minimumLineSpacing];
        v22 = v21;

        offset->y = offset->y - v22;
        carouselCollectionView4 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
        v14 = [carouselCollectionView4 indexPathForItemAtPoint:{offset->x, offset->y}];
      }
    }

    v24 = 0;
  }

  carouselCollectionView5 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  numberOfSections = [carouselCollectionView5 numberOfSections];

  if (!v14)
  {
    v27 = numberOfSections - 1;
    if (numberOfSections >= 1)
    {
      v28 = 0;
      do
      {
        carouselCollectionView6 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
        v30 = [carouselCollectionView6 numberOfItemsInSection:v28];

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

      while (v28 < numberOfSections && !v31);
      do
      {
        carouselCollectionView7 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
        v33 = [carouselCollectionView7 numberOfItemsInSection:v27];

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

- (void)_snapTargetContentOffset:(CGPoint *)offset toItemIndexPath:(id)path atItemOffset:(CGPoint)itemOffset
{
  x = itemOffset.x;
  pathCopy = path;
  carouselCollectionView = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  [carouselCollectionView frame];
  v10 = v9;

  carouselCollectionView2 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  [carouselCollectionView2 contentSize];
  v13 = v12;

  carouselCollectionView3 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  [carouselCollectionView3 _effectiveContentInset];
  v16 = v15;
  v18 = v17;

  v19 = v10 - v18 - v16;
  carouselCollectionView4 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  v21 = [carouselCollectionView4 layoutAttributesForItemAtIndexPath:pathCopy];

  [v21 frame];
  v26 = v22;
  if (v22 < v13 - v19)
  {
    if (CGRectGetMidX(*&v22) < x)
    {
      carouselCollectionView5 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
      v28 = [carouselCollectionView5 numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}] - 1;
      item = [pathCopy item];

      if (v28 > item)
      {
        v30 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(pathCopy inSection:{"item") + 1, objc_msgSend(pathCopy, "section")}];

        carouselCollectionView6 = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
        v32 = [carouselCollectionView6 layoutAttributesForItemAtIndexPath:v30];

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

- (void)subviewsDidChangeForCarouselCollectionView:(id)view
{
  if (![(VideosExtrasCarouselViewController *)self _isPhone])
  {

    [(VideosExtrasCarouselViewController *)self _updateOpacityOfTextInVisibleCells];
  }
}

- (void)prepareZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  appearState = [contextCopy appearState];
  itemIndex = [contextCopy itemIndex];
  if (!appearState)
  {
    [(VideosExtrasCarouselViewController *)self setIndexOfVisibleItem:itemIndex];
    carouselCollectionView = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
    [carouselCollectionView layoutIfNeeded];

    [(VideosExtrasCarouselViewController *)self _updateOpacityOfTextInVisibleCells];
    view = [(VideosExtrasCarouselViewController *)self view];
    [view setAlpha:0.0];

    navigationController = [(VideosExtrasCarouselViewController *)self navigationController];
    if ([navigationController isNavigationBarHidden])
    {
      [(VideosExtrasCarouselViewController *)self setRevealingNavigationBarDuringTransition:1];
      [navigationController setNavigationBarHidden:0 animated:1];
      navigationBar = [navigationController navigationBar];
      [navigationBar setAlpha:0.0];
    }
  }

  v10 = [(VideosExtrasCarouselViewController *)self carouselCollectionViewCellForItemAtIndex:itemIndex];
  [v10 prepareZoomingImageTransitionWithContext:contextCopy];
}

- (void)performZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  appearState = [contextCopy appearState];
  if (appearState == 1)
  {
    v6 = 0.0;
  }

  else
  {
    if (appearState)
    {
      goto LABEL_7;
    }

    v6 = 1.0;
    if ([(VideosExtrasCarouselViewController *)self isRevealingNavigationBarDuringTransition])
    {
      navigationController = [(VideosExtrasCarouselViewController *)self navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar setAlpha:1.0];
    }
  }

  view = [(VideosExtrasCarouselViewController *)self view];
  [view setAlpha:v6];

LABEL_7:
  v10 = -[VideosExtrasCarouselViewController carouselCollectionViewCellForItemAtIndex:](self, "carouselCollectionViewCellForItemAtIndex:", [contextCopy itemIndex]);
  [v10 performZoomingImageTransitionWithContext:contextCopy];
}

- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished
{
  finishedCopy = finished;
  contextCopy = context;
  v9 = -[VideosExtrasCarouselViewController carouselCollectionViewCellForItemAtIndex:](self, "carouselCollectionViewCellForItemAtIndex:", [contextCopy itemIndex]);
  [v9 finalizeZoomingImageTransitionWithContext:contextCopy transitionFinished:finishedCopy];
  appearState = [contextCopy appearState];

  if (appearState == 1)
  {
    view = [(VideosExtrasCarouselViewController *)self view];
    [view setAlpha:1.0];
  }

  [(VideosExtrasCarouselViewController *)self setRevealingNavigationBarDuringTransition:0];
}

- (unint64_t)indexOfVisibleItem
{
  carouselCollectionViewLayout = [(VideosExtrasCarouselViewController *)self carouselCollectionViewLayout];
  indexOfVisibleItem = [carouselCollectionViewLayout indexOfVisibleItem];

  return indexOfVisibleItem;
}

- (void)setIndexOfVisibleItem:(unint64_t)item animated:(BOOL)animated
{
  animatedCopy = animated;
  carouselCollectionView = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  [carouselCollectionView layoutIfNeeded];

  carouselCollectionViewLayout = [(VideosExtrasCarouselViewController *)self carouselCollectionViewLayout];
  [carouselCollectionViewLayout setIndexOfVisibleItem:item animated:animatedCopy];
}

- (id)carouselCollectionViewCellForItemAtIndex:(unint64_t)index
{
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:0];
  carouselCollectionView = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  v6 = [carouselCollectionView cellForItemAtIndexPath:v4];

  return v6;
}

- (void)_loadCarouselCollectionViewInView:(id)view withContraintsAccumulator:(id)accumulator
{
  viewCopy = view;
  accumulatorCopy = accumulator;
  v7 = *MEMORY[0x1E69DDCE0];
  v8 = *(MEMORY[0x1E69DDCE0] + 8);
  v9 = *(MEMORY[0x1E69DDCE0] + 16);
  v10 = *(MEMORY[0x1E69DDCE0] + 24);
  if ([(VideosExtrasCarouselViewController *)self _isPhone])
  {
    v11 = objc_alloc_init(VideosExtrasCarouselCollectionViewFlowLayout);
    [(UICollectionViewFlowLayout *)v11 setScrollDirection:1];
    navigationController = [(VideosExtrasCarouselViewController *)self navigationController];
    view = [navigationController view];
    [view safeAreaInsets];
    v15 = v14;

    navigationController2 = [(VideosExtrasCarouselViewController *)self navigationController];
    view2 = [navigationController2 view];
    [view2 safeAreaInsets];
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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(VideosExtrasCarouselCollectionView *)v23 setBackgroundColor:clearColor];

  [(VideosExtrasCarouselCollectionView *)v23 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"_VideosExtrasCarouselCollectionViewCellReuseIdentifier"];
  [(VideosExtrasCarouselCollectionView *)v23 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"_VideosExtrasLockupCollectionViewCellReuseIdentifier"];
  [(VideosExtrasCarouselCollectionView *)v23 setDataSource:self];
  [(VideosExtrasCarouselCollectionView *)v23 setDelegate:self];
  [(VideosExtrasCarouselCollectionView *)v23 setCarouselCollectionViewDelegate:self];
  [(VideosExtrasCarouselCollectionView *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VideosExtrasCarouselCollectionView *)v23 _setContentInsetAdjustmentBehavior:2];
  [viewCopy addSubview:v23];
  v25 = 0.0;
  v26 = [MEMORY[0x1E696ACD8] constraintWithItem:v23 attribute:3 relatedBy:0 toItem:viewCopy attribute:3 multiplier:1.0 constant:0.0];
  [accumulatorCopy addObject:v26];

  v27 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v23 toView:viewCopy alongEdges:10 insets:{v7, v8, v9, v10}];
  [accumulatorCopy addObjectsFromArray:v27];

  navigationController3 = [(VideosExtrasCarouselViewController *)self navigationController];
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    navigationController4 = [(VideosExtrasCarouselViewController *)self navigationController];
    mainTemplateViewController = [navigationController4 mainTemplateViewController];
    menuBarView = [mainTemplateViewController menuBarView];
    [menuBarView bounds];
    v25 = v33;

    v34 = MEMORY[0x1E696ACD8];
    if (v25 > 0.0)
    {
      v35 = 0;
      safeAreaLayoutGuide = viewCopy;
      goto LABEL_14;
    }
  }

  else
  {
    v34 = MEMORY[0x1E696ACD8];
  }

  navigationController4 = [(VideosExtrasCarouselViewController *)self view];
  safeAreaLayoutGuide = [navigationController4 safeAreaLayoutGuide];
  v35 = 1;
LABEL_14:
  v37 = [v34 constraintWithItem:v23 attribute:4 relatedBy:0 toItem:safeAreaLayoutGuide attribute:4 multiplier:1.0 constant:-v25];
  [accumulatorCopy addObject:v37];

  if (v35)
  {
  }

  [(VideosExtrasCarouselViewController *)self setCarouselCollectionView:v23];
}

- (int64_t)_numberOfItems
{
  dataSource = [(VideosExtrasCarouselViewController *)self dataSource];
  v4 = [dataSource numberOfItemsInCarouselViewController:self];

  return v4;
}

- (void)_updateOpacityOfTextInVisibleCells
{
  v27 = *MEMORY[0x1E69E9840];
  if (![(VideosExtrasCarouselViewController *)self _isPhone])
  {
    carouselCollectionView = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
    superview = [carouselCollectionView superview];
    [carouselCollectionView center];
    v6 = v5;
    carouselCollectionViewLayout = [(VideosExtrasCarouselViewController *)self carouselCollectionViewLayout];
    [carouselCollectionViewLayout itemWidth];
    v9 = v8;

    visibleCells = [carouselCollectionView visibleCells];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [visibleCells countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(visibleCells);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          [v15 bounds];
          [v15 convertRect:superview toView:?];
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

          titleLabel = [v15 titleLabel];
          [titleLabel setAlpha:v17];

          subtitleLabel = [v15 subtitleLabel];
          [subtitleLabel setAlpha:v17];

          descriptionLabel = [v15 descriptionLabel];
          [descriptionLabel setAlpha:v17];
        }

        v12 = [visibleCells countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }
  }
}

- (void)_updateWindowSizeForVisibleCells
{
  v18 = *MEMORY[0x1E69E9840];
  carouselCollectionView = [(VideosExtrasCarouselViewController *)self carouselCollectionView];
  window = [carouselCollectionView window];
  [window bounds];
  v5 = v4;
  v7 = v6;

  visibleCells = [carouselCollectionView visibleCells];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v13 + 1) + 8 * v12++) setWindowSize:{v5, v7}];
      }

      while (v10 != v12);
      v10 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (BOOL)_isPhone
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 0;

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