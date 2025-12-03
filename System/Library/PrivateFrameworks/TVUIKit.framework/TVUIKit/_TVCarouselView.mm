@interface _TVCarouselView
- (BOOL)_canScrollCarouselView;
- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (CGPoint)focusDirection;
- (CGPoint)targetContentOffset;
- (CGSize)_collectionViewLayoutItemSize;
- (CGSize)itemSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (TVCarouselViewDataSource)dataSource;
- (TVCarouselViewDelegate)delegate;
- (_TVCarouselView)initWithFrame:(CGRect)frame;
- (double)_contentOffsetXForCollectionViewIndex:(int64_t)index;
- (id)_cellForItemAtIndex:(unint64_t)index;
- (id)_prepareIndexMap:(int64_t)map;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)dequeueReusableCellWithReuseIdentifier:(id)identifier forIndex:(unint64_t)index;
- (id)focusedCell;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (int64_t)_numberOfCells;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (unint64_t)_itemIndexForIndexPath:(id)path;
- (unint64_t)_previousItemIndexForIndexPath:(id)path;
- (unint64_t)indexForCell:(id)cell;
- (void)_animatePagedCenteringAnimated:(BOOL)animated animations:(id)animations completion:(id)completion;
- (void)_focusItemAtIndex:(int64_t)index;
- (void)_handlePlayGesture:(id)gesture;
- (void)_pageControlValueChanged:(id)changed;
- (void)_setContentOffsetForCollectionViewIndex:(int64_t)index animated:(BOOL)animated;
- (void)_startAutoScrollTimer;
- (void)_startContinuousScroll;
- (void)_stopAutoScrollTimer;
- (void)_stopContinuousScroll;
- (void)_updateAutoScrollTimer;
- (void)_updateCarouselWithDataSource:(id)source indicesToRemove:(id)remove indicesToAdd:(id)add indicesToReload:(id)reload;
- (void)_updateIdleModeLayoutAttributes;
- (void)_updatePageControl;
- (void)calculateChangeSetForFocusedIndex:(int64_t)index newDataSourceMap:(id)map indexesToRemove:(id *)remove indexesToAdd:(id *)add indexesToReload:(id *)reload;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)displayLinkDidFire:(id)fire;
- (void)layoutSubviews;
- (void)reloadData;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setAutoscrollInterval:(double)interval;
- (void)setDelegate:(id)delegate;
- (void)setHeaderView:(id)view;
- (void)setItemSize:(CGSize)size;
- (void)setScrollMode:(unint64_t)mode;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setShowsPageControl:(BOOL)control;
- (void)setUnitScrollDuration:(double)duration;
@end

@implementation _TVCarouselView

- (_TVCarouselView)initWithFrame:(CGRect)frame
{
  v42[1] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = _TVCarouselView;
  v3 = [(_TVCarouselView *)&v40 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [_TVCarouselCollectionView alloc];
    [v3 bounds];
    v44 = CGRectInset(v43, 0.0, 0.0);
    x = v44.origin.x;
    y = v44.origin.y;
    width = v44.size.width;
    height = v44.size.height;
    v9 = objc_alloc_init(_TVCarouselCollectionViewLayout);
    height = [(_TVCarouselCollectionView *)v4 initWithFrame:v9 collectionViewLayout:x, y, width, height];
    v11 = *(v3 + 53);
    *(v3 + 53) = height;

    [*(v3 + 53) setAutoresizingMask:18];
    [*(v3 + 53) setDataSource:v3];
    [*(v3 + 53) setDelegate:v3];
    [*(v3 + 53) setOpaque:0];
    [*(v3 + 53) setBackgroundColor:0];
    [*(v3 + 53) setClipsToBounds:0];
    [*(v3 + 53) setShowsHorizontalScrollIndicator:0];
    [*(v3 + 53) setShowsVerticalScrollIndicator:0];
    *(v3 + 632) = vdupq_n_s64(0x4049000000000000uLL);
    *(v3 + 64) = 0x4024000000000000;
    [v3 addSubview:*(v3 + 53)];
    v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    v13 = *(v3 + 71);
    *(v3 + 71) = v12;

    v39 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel__handlePlayGesture_];
    [v39 setAllowedPressTypes:&unk_287E88DA0];
    [v3 addGestureRecognizer:v39];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = *MEMORY[0x277D76660];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v38 = defaultCenter;
    [defaultCenter addObserver:v3 selector:sel__applicationDidEnterBackgroundNotification_ name:v15 object:mEMORY[0x277D75128]];

    v17 = *MEMORY[0x277D76648];
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    [defaultCenter addObserver:v3 selector:sel__applicationDidBecomeActiveNotification_ name:v17 object:mEMORY[0x277D75128]2];

    [defaultCenter addObserver:v3 selector:sel__accessibilityReducedMotionNotification_ name:*MEMORY[0x277D764C0] object:0];
    *(v3 + 78) = 0x3FD0000000000000;
    *(v3 + 59) = 0;
    *(v3 + 66) = 0x4024000000000000;
    *(v3 + 67) = 0x4010000000000000;
    v19 = objc_alloc_init(MEMORY[0x277D75500]);
    v20 = *(v3 + 72);
    *(v3 + 72) = v19;

    v42[0] = *(v3 + 53);
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
    [*(v3 + 72) setPreferredFocusEnvironments:v21];

    [v3 addLayoutGuide:*(v3 + 72)];
    v33 = MEMORY[0x277CCAAD0];
    leftAnchor = [v3 leftAnchor];
    leftAnchor2 = [*(v3 + 72) leftAnchor];
    v35 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v41[0] = v35;
    topAnchor = [v3 topAnchor];
    topAnchor2 = [*(v3 + 72) topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:1.0];
    v41[1] = v23;
    rightAnchor = [v3 rightAnchor];
    rightAnchor2 = [*(v3 + 72) rightAnchor];
    v26 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v41[2] = v26;
    bottomAnchor = [v3 bottomAnchor];
    bottomAnchor2 = [*(v3 + 72) bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-1.0];
    v41[3] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
    [v33 activateConstraints:v30];

    *(v3 + 70) = 0x4014000000000000;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  headerView = self->_headerView;
  v8 = viewCopy;
  if (headerView != viewCopy)
  {
    [(UIView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, view);
    headerView = [(_TVCarouselView *)self headerView];
    [(_TVCarouselView *)self addSubview:headerView];
  }

  [(_TVCarouselView *)self setNeedsLayout];
}

- (void)setScrollMode:(unint64_t)mode
{
  if (self->_scrollMode != mode)
  {
    self->_scrollMode = mode;
    autoScrollTimer = self->_autoScrollTimer;
    if (mode || !autoScrollTimer)
    {
      if (mode == 2)
      {
        if (autoScrollTimer)
        {
          dispatch_suspend(autoScrollTimer);
        }
      }
    }

    else
    {
      dispatch_resume(autoScrollTimer);
    }
  }
}

- (void)setShowsPageControl:(BOOL)control
{
  controlCopy = control;
  self->_showsPageControl = control;
  pageControl = [(_TVCarouselView *)self pageControl];

  if (controlCopy)
  {
    if (!pageControl)
    {
      v6 = objc_opt_new();
      [v6 setHidesForSinglePage:1];
      [v6 addTarget:self action:sel__pageControlValueChanged_ forControlEvents:4096];
      [(_TVCarouselView *)self setPageControl:v6];
      pageControl2 = [(_TVCarouselView *)self pageControl];
      [pageControl2 setHidesForSinglePage:1];

      pageControl3 = [(_TVCarouselView *)self pageControl];
      [(_TVCarouselView *)self addSubview:pageControl3];
    }

    [(_TVCarouselView *)self setNeedsLayout];
  }

  else if (pageControl)
  {
    pageControl4 = [(_TVCarouselView *)self pageControl];
    [pageControl4 removeFromSuperview];

    [(_TVCarouselView *)self setPageControl:0];
  }
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = _TVCarouselView;
  [(_TVCarouselView *)&v10 layoutSubviews];
  [(_TVCarouselView *)self itemSize];
  v4 = v3;
  [(_TVCarouselView *)self interitemSpacing];
  v6 = v5 + v4 * 0.5 + 10.0;
  [(_TVCarouselView *)self bounds];
  v8 = -0.0;
  if (v6 - v7 * 0.5 >= 0.0)
  {
    v8 = -(v6 + -v7 * 0.5);
  }

  [(_TVCarouselCollectionView *)self->_collectionView _setVisibleRectEdgeInsets:0.0, v8, 0.0, v8];
  if (self->_flags.firstLayoutPass)
  {
    self->_flags.firstLayoutPass = 0;
    [(_TVCarouselView *)self layoutBelowIfNeeded];
    [(_TVCarouselView *)self _updateAutoScrollTimer];
    focusedIndexPath = self->_focusedIndexPath;
    if (focusedIndexPath)
    {
      [(_TVCarouselView *)self _updateContentOffsetForFocusedIndex:[(NSIndexPath *)focusedIndexPath item] animated:0];
    }
  }

  [(_TVCarouselView *)self _updatePageControl];
}

- (void)_startContinuousScroll
{
  if (!self->_displayLink)
  {
    _centerCollectionViewCellIndex = [(_TVCarouselView *)self _centerCollectionViewCellIndex];
    [(_TVCarouselView *)self _setContentOffsetForCollectionViewIndex:_centerCollectionViewCellIndex];
    _collectionView = [(_TVCarouselView *)self _collectionView];
    [_collectionView contentOffset];
    v7 = v6;
    v9 = v8;

    [(_TVCarouselView *)self _contentOffsetXForCollectionViewIndex:_centerCollectionViewCellIndex + 1];
    v11 = v10;
    [(_TVCarouselView *)self setOffsetChangePerSecond:(v10 - v7) / self->_unitScrollDuration];
    [(_TVCarouselView *)self setTargetContentOffset:v11, v9];
    [(_TVCarouselView *)self setPreviousDisplayLinkTimestamp:0.0];
    [(_TVCarouselView *)self _stopContinuousScroll];
    v13 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_displayLinkDidFire_];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [v13 addToRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];

    [(_TVCarouselView *)self setDisplayLink:v13];
  }
}

- (void)displayLinkDidFire:(id)fire
{
  displayLink = [(_TVCarouselView *)self displayLink];
  [displayLink timestamp];
  v6 = v5;

  [(_TVCarouselView *)self previousDisplayLinkTimestamp];
  if (v7 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    [(_TVCarouselView *)self previousDisplayLinkTimestamp];
    v9 = v6 - v8;
  }

  [(_TVCarouselView *)self setPreviousDisplayLinkTimestamp:v6];
  if ([(_TVCarouselView *)self _canScrollCarouselView])
  {
    _collectionView = [(_TVCarouselView *)self _collectionView];
    [_collectionView contentOffset];
    v12 = v11;
    v14 = v13;

    [(_TVCarouselView *)self offsetChangePerSecond];
    v16 = v12 + v15 * v9;
    _collectionView2 = [(_TVCarouselView *)self _collectionView];
    [_collectionView2 setContentOffset:0 animated:{v16, v14}];

    displayLink2 = [(_TVCarouselView *)self displayLink];
    [displayLink2 targetTimestamp];
    v20 = v19 - v6;
    [(_TVCarouselView *)self offsetChangePerSecond];
    v22 = v20 * v21;

    _collectionView3 = [(_TVCarouselView *)self _collectionView];
    [_collectionView3 contentOffset];
    v25 = v22 + v24;
    [(_TVCarouselView *)self targetContentOffset];
    v27 = v26;

    if (v25 >= v27)
    {
      v28 = [(_TVCarouselView *)self _centerCollectionViewCellIndex]+ 1;

      [(_TVCarouselView *)self _focusItemAtIndex:v28];
    }
  }
}

- (void)_stopContinuousScroll
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)dealloc
{
  [(_TVCarouselView *)self _stopAutoScrollTimer];
  [(_TVCarouselView *)self _stopContinuousScroll];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _TVCarouselView;
  [(_TVCarouselView *)&v4 dealloc];
}

- (void)_pageControlValueChanged:(id)changed
{
  changedCopy = changed;
  currentPage = [changedCopy currentPage];
  interactionState = [changedCopy interactionState];

  [(_TVCarouselView *)self _centerItemAtPageIndex:currentPage animated:interactionState != 2];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _TVCarouselView;
  [(_TVCarouselView *)&v4 didMoveToWindow];
  window = [(_TVCarouselView *)self window];

  if (window)
  {
    self->_flags.firstLayoutPass = 1;
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = _TVCarouselView;
  [(_TVCarouselView *)&v5 didUpdateFocusInContext:context withAnimationCoordinator:coordinator];
  [(_TVCarouselView *)self _updateAutoScrollTimer];
  [(_TVCarouselView *)self _updateIdleModeLayoutAttributes];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  height = self->_itemSize.height;
  result.height = height;
  return result;
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v5.receiver = self;
  v5.super_class = _TVCarouselView;
  [(_TVCarouselView *)&v5 setSemanticContentAttribute:?];
  [(_TVCarouselCollectionView *)self->_collectionView setSemanticContentAttribute:attribute];
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  _centerCollectionViewCellIndex = [(_TVCarouselView *)self _centerCollectionViewCellIndex];
  v4 = MEMORY[0x277CCAA70];

  return [v4 indexPathForItem:_centerCollectionViewCellIndex inSection:0];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  self->_numberOfRealItemsForDataSource = [WeakRetained numberOfItemsInCarouselView:self];

  [(_TVCarouselCollectionView *)self->_collectionView setScrollEnabled:self->_numberOfRealItemsForDataSource > 1];
  collectionToDatasourceIndexMap = [(_TVCarouselView *)self collectionToDatasourceIndexMap];
  v7 = [collectionToDatasourceIndexMap count];

  if (!v7)
  {
    v8 = [(_TVCarouselView *)self _prepareIndexMap:0x7FFFFFFFFFFFFFFFLL];
    [(_TVCarouselView *)self setCollectionToDatasourceIndexMap:v8];
  }

  collectionToDatasourceIndexMap2 = [(_TVCarouselView *)self collectionToDatasourceIndexMap];
  v10 = [collectionToDatasourceIndexMap2 count];

  return v10;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  self->_indexToDeque = [path item];
  collectionToDatasourceIndexMap = [(_TVCarouselView *)self collectionToDatasourceIndexMap];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_indexToDeque];
  v7 = [collectionToDatasourceIndexMap objectForKey:v6];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v10 = [WeakRetained carouselView:self cellForItemAtIndex:unsignedIntegerValue];

  self->_indexToDeque = 0x7FFFFFFFFFFFFFFFLL;

  return v10;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  if ((*&self->_carouselViewFlags & 2) == 0)
  {
    return 1;
  }

  selfCopy = self;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v8 = [(_TVCarouselView *)selfCopy _itemIndexForIndexPath:pathCopy];

  LOBYTE(selfCopy) = [WeakRetained carouselView:selfCopy shouldHighlightItemAtIndex:v8];
  return selfCopy;
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  if ((*&self->_carouselViewFlags & 4) != 0)
  {
    pathCopy = path;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [(_TVCarouselView *)self _itemIndexForIndexPath:pathCopy];

    [WeakRetained carouselView:self didHighlightItemAtIndex:v7];
  }
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  if ((*&self->_carouselViewFlags & 8) != 0)
  {
    pathCopy = path;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [(_TVCarouselView *)self _itemIndexForIndexPath:pathCopy];

    [WeakRetained carouselView:self didUnhighlightItemAtIndex:v7];
  }
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  if ((*&self->_carouselViewFlags & 0x10) == 0)
  {
    return 1;
  }

  selfCopy = self;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v8 = [(_TVCarouselView *)selfCopy _itemIndexForIndexPath:pathCopy];

  LOBYTE(selfCopy) = [WeakRetained carouselView:selfCopy shouldSelectItemAtIndex:v8];
  return selfCopy;
}

- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path
{
  if ((*&self->_carouselViewFlags & 0x20) == 0)
  {
    return 1;
  }

  selfCopy = self;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v8 = [(_TVCarouselView *)selfCopy _itemIndexForIndexPath:pathCopy];

  LOBYTE(selfCopy) = [WeakRetained carouselView:selfCopy shouldDeselectItemAtIndex:v8];
  return selfCopy;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  if ((*&self->_carouselViewFlags & 0x40) != 0)
  {
    pathCopy = path;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [(_TVCarouselView *)self _itemIndexForIndexPath:pathCopy];

    [WeakRetained carouselView:self didSelectItemAtIndex:v7];
  }
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  if ((*&self->_carouselViewFlags & 0x80) != 0)
  {
    pathCopy = path;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [(_TVCarouselView *)self _itemIndexForIndexPath:pathCopy];

    [WeakRetained carouselView:self didDeselectItemAtIndex:v7];
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  if (!self->_focusedIndexPath)
  {
    [(_TVCarouselView *)self _updateContentOffsetForFocusedIndex:0x7FFFFFFFFFFFFFFFLL animated:0];
  }

  v11 = [(_TVCarouselView *)self _itemIndexForIndexPath:pathCopy];
  if (*(&self->_carouselViewFlags + 1))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained carouselView:self willDisplayCell:cellCopy forItemAtIndex:v11];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69___TVCarouselView_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke;
  v15[3] = &unk_279D91A90;
  v15[4] = self;
  v15[5] = v11;
  v13 = MEMORY[0x26D6B2C60](v15);
  if (v13[2]() && (*(&self->_carouselViewFlags + 1) & 0x20) != 0)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 carouselView:self willDisplayItemAtIndex:v11];
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  v8 = [(_TVCarouselView *)self _previousItemIndexForIndexPath:path];
  if ((*(&self->_carouselViewFlags + 1) & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained carouselView:self didEndDisplayingCell:cellCopy forItemAtIndex:v8];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74___TVCarouselView_collectionView_didEndDisplayingCell_forItemAtIndexPath___block_invoke;
  v12[3] = &unk_279D91A90;
  v12[4] = self;
  v12[5] = v8;
  v10 = MEMORY[0x26D6B2C60](v12);
  if (v10[2]() && (*(&self->_carouselViewFlags + 1) & 0x40) != 0)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 carouselView:self didEndDisplayingItemAtIndex:v8];
  }
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  if (self->_scrollMode != 1)
  {
    if (self->_firstFocusChangeInInterval)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceDate:self->_firstFocusChangeInInterval];
      v8 = v7;

      if (v8 < self->_focusThrottleTimeInterval)
      {
        v5 = self->_numFocusChangesInInterval < 1;
        goto LABEL_8;
      }

      self->_numFocusChangesInInterval = 0;
    }

    v5 = 1;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  _centerCollectionViewCellIndex = [(_TVCarouselView *)self _centerCollectionViewCellIndex];
  v10 = _centerCollectionViewCellIndex;
  v11 = y == *(MEMORY[0x277CBF348] + 8) && x == *MEMORY[0x277CBF348];
  if (v11 == 1)
  {
    [(_TVCarouselView *)self _contentOffsetXForCollectionViewIndex:_centerCollectionViewCellIndex];
    v13 = v12;
    [(_TVCarouselView *)self itemSize];
    v15 = v13 + v14 * 0.5;
    [(_TVCarouselView *)self interitemSpacing];
    v17 = v16 * 0.5 + v15;
    [(_TVCarouselView *)self _contentOffsetXForCollectionViewIndex:v10];
    v19 = v18;
    [(_TVCarouselView *)self itemSize];
    v21 = v19 - v20 * 0.5;
    [(_TVCarouselView *)self interitemSpacing];
    v23 = v21 - v22 * 0.5;
  }

  else
  {
    [(_TVCarouselView *)self _contentOffsetXForCollectionViewIndex:_centerCollectionViewCellIndex + 1];
    v17 = v24;
    [(_TVCarouselView *)self _contentOffsetXForCollectionViewIndex:v10 - 1];
  }

  v25 = floor(offset->x);
  if (v25 <= v23)
  {
    v26 = -1;
  }

  else
  {
    v26 = v25 >= v17;
  }

  v27 = [MEMORY[0x277CCAA70] indexPathForItem:v26 + v10 inSection:0];
  focusedIndexPath = self->_focusedIndexPath;
  self->_focusedIndexPath = v27;

  if (((v26 != 0) & ~v11) == 0)
  {
    _collectionView = [(_TVCarouselView *)self _collectionView];
    [_collectionView contentOffset];
    offset->x = v30;

    [(_TVCarouselView *)self _setContentOffsetForCollectionViewIndex:v26 + v10 animated:1];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ((*(&self->_carouselViewFlags + 1) & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained carouselViewDidScroll:self];
  }

  focusedIndexPath = self->_focusedIndexPath;
  if (focusedIndexPath)
  {
    if ([(NSIndexPath *)focusedIndexPath item]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      _centerCollectionViewCellIndex = [(_TVCarouselView *)self _centerCollectionViewCellIndex];
      [(_TVCarouselView *)self _contentOffsetXForCollectionViewIndex:_centerCollectionViewCellIndex + 1];
      v8 = v7;
      [(_TVCarouselView *)self _contentOffsetXForCollectionViewIndex:_centerCollectionViewCellIndex - 1];
      v10 = v9;
      [scrollCopy contentOffset];
      if (floor(v11) <= v10 || ([scrollCopy contentOffset], floor(v12) >= v8))
      {
        [(_TVCarouselView *)self _focusItemAtIndex:[(NSIndexPath *)self->_focusedIndexPath item]];
        v13 = [MEMORY[0x277CCAA70] indexPathForItem:_centerCollectionViewCellIndex inSection:0];
        v14 = self->_focusedIndexPath;
        self->_focusedIndexPath = v13;
      }
    }
  }
}

- (void)_handlePlayGesture:(id)gesture
{
  if ([gesture state] == 3 && (*(&self->_carouselViewFlags + 1) & 0x10) != 0)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    focusedView = [mainScreen focusedView];

    if (focusedView)
    {
      visibleCells = [(_TVCarouselView *)self visibleCells];
      v6 = [visibleCells containsObject:focusedView];

      if (v6)
      {
        v7 = [(_TVCarouselView *)self indexForCell:focusedView];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained carouselView:self didPlayItemAtIndex:v7];
      }
    }
  }
}

- (id)_cellForItemAtIndex:(unint64_t)index
{
  collectionView = self->_collectionView;
  v4 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
  v5 = [(_TVCarouselCollectionView *)collectionView cellForItemAtIndexPath:v4];

  return v5;
}

- (id)focusedCell
{
  focusedIndexPath = self->_focusedIndexPath;
  if (focusedIndexPath)
  {
    focusedIndexPath = -[_TVCarouselView _cellForItemAtIndex:](self, "_cellForItemAtIndex:", [focusedIndexPath item]);
  }

  return focusedIndexPath;
}

- (id)dequeueReusableCellWithReuseIdentifier:(id)identifier forIndex:(unint64_t)index
{
  identifierCopy = identifier;
  indexToDeque = self->_indexToDeque;
  if (indexToDeque == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"-dequeueReusableCellWithReuseIdentifier:forIndex: may only be called from -carouselView:cellForItemAtIndex:"];
    v7 = 0;
  }

  else
  {
    collectionView = self->_collectionView;
    v9 = [MEMORY[0x277CCAA70] indexPathForItem:indexToDeque inSection:0];
    v7 = [(_TVCarouselCollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:identifierCopy forIndexPath:v9];
  }

  return v7;
}

- (unint64_t)indexForCell:(id)cell
{
  v4 = [(_TVCarouselCollectionView *)self->_collectionView indexPathForCell:cell];
  if (v4)
  {
    collectionToDatasourceIndexMap = [(_TVCarouselView *)self collectionToDatasourceIndexMap];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "item")}];
    v7 = [collectionToDatasourceIndexMap objectForKeyedSubscript:v6];
    unsignedIntegerValue = [v7 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (void)reloadData
{
  objc_storeStrong(&self->_previousCollectionToDatasourceIndexMap, self->_collectionToDatasourceIndexMap);
  [(_TVCarouselView *)self setCollectionToDatasourceIndexMap:0];
  focusedIndexPath = self->_focusedIndexPath;
  self->_focusedIndexPath = 0;

  [(_TVCarouselCollectionView *)self->_collectionView reloadData];
  [(_TVCarouselView *)self _updateAutoScrollTimer];
  [(_TVCarouselView *)self _updatePageControl];
  if (*(&self->_carouselViewFlags + 2))
  {
    collectionToDatasourceIndexMap = [(_TVCarouselView *)self collectionToDatasourceIndexMap];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[_TVCarouselView _centerCollectionViewCellIndex](self, "_centerCollectionViewCellIndex")}];
    v6 = [collectionToDatasourceIndexMap objectForKeyedSubscript:v5];
    integerValue = [v6 integerValue];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained carouselView:self didCenterItemAtIndex:integerValue];
  }
}

- (void)setItemSize:(CGSize)size
{
  if (self->_itemSize.width != size.width || self->_itemSize.height != size.height)
  {
    self->_itemSize = size;
    [(_TVCarouselView *)self _updateCollectionViewLayout];
  }
}

- (void)setAutoscrollInterval:(double)interval
{
  if (vabdd_f64(self->_autoscrollInterval, interval) > 2.22044605e-16)
  {
    if (interval < 0.5 && interval > 2.22044605e-16)
    {
      interval = 0.5;
    }

    self->_autoscrollInterval = interval;
    [(_TVCarouselView *)self _updateAutoScrollTimer];
  }
}

- (void)setUnitScrollDuration:(double)duration
{
  if (vabdd_f64(self->_unitScrollDuration, duration) > 2.22044605e-16)
  {
    if (duration < 0.5 && duration > 2.22044605e-16)
    {
      duration = 0.5;
    }

    self->_unitScrollDuration = duration;
    [(_TVCarouselView *)self _updateAutoScrollTimer];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  delegate = [(_TVCarouselView *)self delegate];
  if (delegate != obj || !obj && (*&self->_carouselViewFlags & 1) != 0)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = *&self->_carouselViewFlags & 0xFFFFFFFE;
    if (obj)
    {
      ++v5;
    }

    self->_carouselViewFlags = v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    self->_carouselViewFlags = (*&self->_carouselViewFlags & 0xFFFFFFFD | v6);
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    self->_carouselViewFlags = (*&self->_carouselViewFlags & 0xFFFFFFFB | v7);
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    self->_carouselViewFlags = (*&self->_carouselViewFlags & 0xFFFFFFF7 | v8);
    if (objc_opt_respondsToSelector())
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    self->_carouselViewFlags = (*&self->_carouselViewFlags & 0xFFFFFFEF | v9);
    if (objc_opt_respondsToSelector())
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    self->_carouselViewFlags = (*&self->_carouselViewFlags & 0xFFFFFFDF | v10);
    if (objc_opt_respondsToSelector())
    {
      v11 = 64;
    }

    else
    {
      v11 = 0;
    }

    self->_carouselViewFlags = (*&self->_carouselViewFlags & 0xFFFFFFBF | v11);
    if (objc_opt_respondsToSelector())
    {
      v12 = 128;
    }

    else
    {
      v12 = 0;
    }

    self->_carouselViewFlags = (*&self->_carouselViewFlags & 0xFFFFFF7F | v12);
    if (objc_opt_respondsToSelector())
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    self->_carouselViewFlags = (*&self->_carouselViewFlags & 0xFFFFFEFF | v13);
    if (objc_opt_respondsToSelector())
    {
      v14 = 512;
    }

    else
    {
      v14 = 0;
    }

    self->_carouselViewFlags = (*&self->_carouselViewFlags & 0xFFFFFDFF | v14);
    if (objc_opt_respondsToSelector())
    {
      v15 = 1024;
    }

    else
    {
      v15 = 0;
    }

    self->_carouselViewFlags = (*&self->_carouselViewFlags & 0xFFFFFBFF | v15);
    if (objc_opt_respondsToSelector())
    {
      v16 = 2048;
    }

    else
    {
      v16 = 0;
    }

    self->_carouselViewFlags = (*&self->_carouselViewFlags & 0xFFFFF7FF | v16);
    if (objc_opt_respondsToSelector())
    {
      v17 = 4096;
    }

    else
    {
      v17 = 0;
    }

    self->_carouselViewFlags = (*&self->_carouselViewFlags & 0xFFFFEFFF | v17);
    if (objc_opt_respondsToSelector())
    {
      v18 = 0x2000;
    }

    else
    {
      v18 = 0;
    }

    self->_carouselViewFlags = (*&self->_carouselViewFlags & 0xFFFFDFFF | v18);
    if (objc_opt_respondsToSelector())
    {
      v19 = 0x4000;
    }

    else
    {
      v19 = 0;
    }

    self->_carouselViewFlags = (*&self->_carouselViewFlags & 0xFFFFBFFF | v19);
    if (objc_opt_respondsToSelector())
    {
      v20 = 0x8000;
    }

    else
    {
      v20 = 0;
    }

    self->_carouselViewFlags = (*&self->_carouselViewFlags & 0xFFFF7FFF | v20);
    if (objc_opt_respondsToSelector())
    {
      v21 = 0x10000;
    }

    else
    {
      v21 = 0;
    }

    self->_carouselViewFlags = (*&self->_carouselViewFlags & 0xFFFEFFFF | v21);
  }
}

- (int64_t)_numberOfCells
{
  if (self->_numberOfRealItemsForDataSource < 2)
  {
    return self->_numberOfRealItemsForDataSource;
  }

  collectionViewLayout = [(_TVCarouselCollectionView *)self->_collectionView collectionViewLayout];
  _expectedNumberOfCells = [collectionViewLayout _expectedNumberOfCells];

  return _expectedNumberOfCells;
}

- (void)calculateChangeSetForFocusedIndex:(int64_t)index newDataSourceMap:(id)map indexesToRemove:(id *)remove indexesToAdd:(id *)add indexesToReload:(id *)reload
{
  mapCopy = map;
  collectionToDatasourceIndexMap = [(_TVCarouselView *)self collectionToDatasourceIndexMap];
  v13 = [collectionToDatasourceIndexMap copy];

  v14 = [v13 count];
  if (v14 == [mapCopy count])
  {
    removeCopy = remove;
    collectionToDatasourceIndexMap2 = [(_TVCarouselView *)self collectionToDatasourceIndexMap];
    v16 = [collectionToDatasourceIndexMap2 count];

    _centerCollectionViewCellIndex = [(_TVCarouselView *)self _centerCollectionViewCellIndex];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v20 = _centerCollectionViewCellIndex - index;
    if (_centerCollectionViewCellIndex != index)
    {
      v21 = 0;
      if (v20 < 0)
      {
        v20 = index - _centerCollectionViewCellIndex;
      }

      if (v20 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v20;
      }

      v23 = v16 - 1;
      do
      {
        v24 = [MEMORY[0x277CCAA70] indexPathForItem:v21 inSection:0];
        [array addObject:v24];

        v25 = [MEMORY[0x277CCAA70] indexPathForItem:v23 inSection:0];
        [array2 addObject:v25];

        ++v21;
        --v23;
      }

      while (v22 != v21);
    }

    if (_centerCollectionViewCellIndex >= index)
    {
      v26 = array;
    }

    else
    {
      v26 = array2;
    }

    if (_centerCollectionViewCellIndex >= index)
    {
      v27 = array2;
    }

    else
    {
      v27 = array;
    }

    *add = v26;
    v28 = v27;
    *removeCopy = v27;
  }

  else
  {
    v29 = [v13 count];
    v30 = [mapCopy count];
    v31 = [v13 count];
    if (v29 >= v30)
    {
      if (v31 > [mapCopy count])
      {
        for (i = 0; i < [mapCopy count]; ++i)
        {
          v38 = *reload;
          v39 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:0];
          [v38 addObject:v39];
        }

        for (; i < [v13 count]; ++i)
        {
          v40 = *remove;
          v41 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:0];
          [v40 addObject:v41];
        }
      }
    }

    else
    {
      v32 = 0;
      if (v31)
      {
        do
        {
          v33 = *reload;
          v34 = [MEMORY[0x277CCAA70] indexPathForItem:v32 inSection:0];
          [v33 addObject:v34];

          ++v32;
        }

        while (v32 < [v13 count]);
      }

      for (; v32 < [mapCopy count]; ++v32)
      {
        v35 = *add;
        v36 = [MEMORY[0x277CCAA70] indexPathForItem:v32 inSection:0];
        [v35 addObject:v36];
      }
    }
  }
}

- (void)_focusItemAtIndex:(int64_t)index
{
  if ([(_TVCarouselView *)self _canScrollCarouselView]&& !self->_flags.layoutUpdateInProgress)
  {
    _centerCollectionViewCellIndex = [(_TVCarouselView *)self _centerCollectionViewCellIndex];
    collectionToDatasourceIndexMap = [(_TVCarouselView *)self collectionToDatasourceIndexMap];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    v8 = [collectionToDatasourceIndexMap objectForKeyedSubscript:v7];
    integerValue = [v8 integerValue];

    pageControl = [(_TVCarouselView *)self pageControl];
    [pageControl setCurrentPage:integerValue];

    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    array3 = [MEMORY[0x277CBEB18] array];
    v14 = [(_TVCarouselView *)self _prepareIndexMap:integerValue];
    v20 = array2;
    v21 = array3;
    v19 = array;
    [(_TVCarouselView *)self calculateChangeSetForFocusedIndex:index newDataSourceMap:v14 indexesToRemove:&v21 indexesToAdd:&v20 indexesToReload:&v19];
    v15 = v21;

    v16 = v20;
    v17 = v19;

    [(_TVCarouselView *)self _updateCarouselWithDataSource:v14 indicesToRemove:v15 indicesToAdd:v16 indicesToReload:v17];
    [(_TVCarouselView *)self _setContentOffsetForCollectionViewIndex:_centerCollectionViewCellIndex];
    [(_TVCarouselView *)self _updateAutoScrollTimer];
    if (*(&self->_carouselViewFlags + 2))
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained carouselView:self didCenterItemAtIndex:integerValue];
    }
  }
}

- (void)_setContentOffsetForCollectionViewIndex:(int64_t)index animated:(BOOL)animated
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68___TVCarouselView__setContentOffsetForCollectionViewIndex_animated___block_invoke;
  v4[3] = &unk_279D91AB8;
  v4[4] = self;
  v4[5] = index;
  animatedCopy = animated;
  [MEMORY[0x277D75D18] performWithoutAnimation:v4];
}

- (void)_updateCarouselWithDataSource:(id)source indicesToRemove:(id)remove indicesToAdd:(id)add indicesToReload:(id)reload
{
  sourceCopy = source;
  removeCopy = remove;
  addCopy = add;
  reloadCopy = reload;
  v14 = MEMORY[0x277D75D18];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __94___TVCarouselView__updateCarouselWithDataSource_indicesToRemove_indicesToAdd_indicesToReload___block_invoke;
  v19[3] = &unk_279D91AE0;
  v19[4] = self;
  v20 = sourceCopy;
  v21 = removeCopy;
  v22 = addCopy;
  v23 = reloadCopy;
  v15 = reloadCopy;
  v16 = addCopy;
  v17 = removeCopy;
  v18 = sourceCopy;
  [v14 performWithoutAnimation:v19];
}

- (id)_prepareIndexMap:(int64_t)map
{
  _numberOfCells = [(_TVCarouselView *)self _numberOfCells];
  numberOfRealItemsForDataSource = self->_numberOfRealItemsForDataSource;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:_numberOfCells];
  if (_numberOfCells && numberOfRealItemsForDataSource)
  {
    v8 = _numberOfCells / 2;
    if (map == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ((*(&self->_carouselViewFlags + 1) & 0x80) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        map = [WeakRetained indexForPreferredCenteredViewInCarouselView:self];
      }

      else
      {
        map = 0;
      }
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:map];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:_numberOfCells / 2];
    [v7 setObject:v10 forKey:v11];

    if (_numberOfCells >= 2)
    {
      v12 = v8 - 1;
      v13 = v8 + 1;
      mapCopy = map;
      do
      {
        if (mapCopy + 1 == numberOfRealItemsForDataSource)
        {
          mapCopy = 0;
        }

        else
        {
          ++mapCopy;
        }

        if (map >= 1)
        {
          mapCopy2 = map;
        }

        else
        {
          mapCopy2 = numberOfRealItemsForDataSource;
        }

        map = mapCopy2 - 1;
        v16 = [MEMORY[0x277CCABB0] numberWithInteger:mapCopy];
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
        [v7 setObject:v16 forKey:v17];

        v18 = [MEMORY[0x277CCABB0] numberWithInteger:map];
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
        [v7 setObject:v18 forKey:v19];

        --v12;
        ++v13;
      }

      while (v12 != -1);
    }
  }

  v20 = [v7 copy];

  return v20;
}

- (double)_contentOffsetXForCollectionViewIndex:(int64_t)index
{
  collectionViewLayout = [(_TVCarouselCollectionView *)self->_collectionView collectionViewLayout];
  [collectionViewLayout itemSize];
  v7 = v6;
  [collectionViewLayout minimumInteritemSpacing];
  v9 = v8;
  [(_TVCarouselView *)self bounds];
  if (CGRectGetWidth(v13) > 0.0)
  {
    [(_TVCarouselView *)self bounds];
    Width = CGRectGetWidth(v15);
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    Width = CGRectGetWidth(v14);
  }

  return v7 * 0.5 + index * (v7 + v9) - Width * 0.5;
}

- (void)_animatePagedCenteringAnimated:(BOOL)animated animations:(id)animations completion:(id)completion
{
  animatedCopy = animated;
  animationsCopy = animations;
  completionCopy = completion;
  v9 = MEMORY[0x277D75D18];
  v10 = 0.0;
  if (animatedCopy)
  {
    [(_TVCarouselView *)self _centeringAnimationDuration];
  }

  [v9 animateWithDuration:327686 delay:animationsCopy options:completionCopy animations:v10 completion:0.0];
}

- (BOOL)_canScrollCarouselView
{
  window = [(_TVCarouselView *)self window];
  if (window)
  {
    v4 = [(_TVCarouselCollectionView *)self->_collectionView numberOfItemsInSection:0]> 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateAutoScrollTimer
{
  if (![(_TVCarouselView *)self _canScrollCarouselView])
  {
LABEL_8:
    [(_TVCarouselView *)self _stopAutoScrollTimer];

    [(_TVCarouselView *)self _stopContinuousScroll];
    return;
  }

  if (!self->_focusedIndexPath)
  {
    [(_TVCarouselView *)self _updateContentOffsetForFocusedIndex:0x7FFFFFFFFFFFFFFFLL animated:0];
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  focusedView = [mainScreen focusedView];
  if ([focusedView isDescendantOfView:self])
  {
LABEL_7:

    goto LABEL_8;
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if ([mEMORY[0x277D75128] applicationState])
  {

    goto LABEL_7;
  }

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();

  if (IsReduceMotionEnabled)
  {
    goto LABEL_8;
  }

  scrollMode = self->_scrollMode;
  if (scrollMode == 1)
  {

    [(_TVCarouselView *)self _startContinuousScroll];
  }

  else if (!scrollMode && fabs(self->_autoscrollInterval) > 2.22044605e-16)
  {

    [(_TVCarouselView *)self _startAutoScrollTimer];
  }
}

- (void)_startAutoScrollTimer
{
  [(_TVCarouselView *)self _stopAutoScrollTimer];
  if (self->_autoscrollInterval > 0.0)
  {
    objc_initWeak(&location, self);
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    autoScrollTimer = self->_autoScrollTimer;
    self->_autoScrollTimer = v3;

    v5 = self->_autoScrollTimer;
    v6 = dispatch_time(0, (self->_autoscrollInterval * 1000000000.0));
    dispatch_source_set_timer(v5, v6, (self->_autoscrollInterval * 1000000000.0), 0x1DCD6500uLL);
    v7 = self->_autoScrollTimer;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40___TVCarouselView__startAutoScrollTimer__block_invoke;
    v8[3] = &unk_279D91B58;
    objc_copyWeak(&v9, &location);
    dispatch_source_set_event_handler(v7, v8);
    dispatch_resume(self->_autoScrollTimer);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_stopAutoScrollTimer
{
  autoScrollTimer = self->_autoScrollTimer;
  if (autoScrollTimer)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy_;
    v11 = __Block_byref_object_dispose_;
    v12 = autoScrollTimer;
    v4 = self->_autoScrollTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __39___TVCarouselView__stopAutoScrollTimer__block_invoke;
    handler[3] = &unk_279D91B80;
    handler[4] = &v7;
    dispatch_source_set_cancel_handler(v4, handler);
    dispatch_source_cancel(v8[5]);
    v5 = self->_autoScrollTimer;
    self->_autoScrollTimer = 0;

    _Block_object_dispose(&v7, 8);
  }
}

- (void)_updateIdleModeLayoutAttributes
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(_TVCarouselView *)self shouldScaleOnIdleFocus])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    visibleCells = [(_TVCarouselCollectionView *)self->_collectionView visibleCells];
    v4 = [visibleCells countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
      do
      {
        v7 = 0;
        do
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(visibleCells);
          }

          [*(*(&v19 + 1) + 8 * v7++) _setIdleModeLayoutAttributes:0];
        }

        while (v5 != v7);
        v5 = [visibleCells countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v5);
    }

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    focusedView = [mainScreen focusedView];

    if ([focusedView isDescendantOfView:self])
    {
      visibleCells2 = [(_TVCarouselCollectionView *)self->_collectionView visibleCells];
      v11 = [visibleCells2 containsObject:focusedView];

      if (v11)
      {
        [focusedView bounds];
        if (v12 >= v13)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        memset(&v18, 0, sizeof(v18));
        CGAffineTransformMakeScale(&v18, (v14 + 20.0) / v14, (v14 + 20.0) / v14);
        v15 = objc_opt_new();
        v17 = v18;
        [v15 setTransform:&v17];
        [focusedView _setIdleModeLayoutAttributes:v15];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_previousItemIndexForIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  previousCollectionToDatasourceIndexMap = self->_previousCollectionToDatasourceIndexMap;
  if (previousCollectionToDatasourceIndexMap && ([MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(pathCopy, "item")}], v7 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKeyedSubscript:](previousCollectionToDatasourceIndexMap, "objectForKeyedSubscript:", v7), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = self->_previousCollectionToDatasourceIndexMap;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "item")}];
    v11 = [(NSDictionary *)v9 objectForKeyedSubscript:v10];
    unsignedIntegerValue = [v11 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (unint64_t)_itemIndexForIndexPath:(id)path
{
  pathCopy = path;
  collectionToDatasourceIndexMap = [(_TVCarouselView *)self collectionToDatasourceIndexMap];
  v6 = MEMORY[0x277CCABB0];
  item = [pathCopy item];

  v8 = [v6 numberWithInteger:item];
  v9 = [collectionToDatasourceIndexMap objectForKeyedSubscript:v8];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (CGSize)_collectionViewLayoutItemSize
{
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_updatePageControl
{
  pageControl = [(_TVCarouselView *)self pageControl];

  if (pageControl)
  {
    dataSource = [(_TVCarouselView *)self dataSource];
    v5 = [dataSource numberOfItemsInCarouselView:self];

    pageControl2 = [(_TVCarouselView *)self pageControl];
    [pageControl2 setNumberOfPages:v5];

    pageControl3 = [(_TVCarouselView *)self pageControl];
    [pageControl3 sizeForNumberOfPages:v5];
    v9 = v8;
    v11 = v10;

    [(_TVCarouselView *)self frame];
    v13 = (v12 - v9) * 0.5;
    [(_TVCarouselView *)self pageControlMargin];
    v15 = v14;
    [(_TVCarouselView *)self frame];
    v17 = v16 - v11 - v15;
    pageControl4 = [(_TVCarouselView *)self pageControl];
    [pageControl4 setFrame:{v13, v17, v9, v11}];

    collectionToDatasourceIndexMap = [(_TVCarouselView *)self collectionToDatasourceIndexMap];
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSIndexPath item](self->_focusedIndexPath, "item")}];
    v21 = [collectionToDatasourceIndexMap objectForKeyedSubscript:v20];
    integerValue = [v21 integerValue];

    pageControl5 = [(_TVCarouselView *)self pageControl];
    [pageControl5 setCurrentPage:integerValue];
  }
}

- (TVCarouselViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (TVCarouselViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)itemSize
{
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)focusDirection
{
  x = self->_focusDirection.x;
  y = self->_focusDirection.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)targetContentOffset
{
  x = self->_targetContentOffset.x;
  y = self->_targetContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end