@interface TVCarouselView
- (BOOL)_canScrollCarouselView;
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (CGPoint)focusDirection;
- (CGPoint)targetContentOffset;
- (CGSize)itemSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (NSDictionary)collectionToDatasourceIndexMap;
- (TVCarouselView)initWithFrame:(CGRect)frame;
- (TVCarouselViewDataSource)dataSource;
- (TVCarouselViewDelegate)delegate;
- (double)_contentOffsetXForCollectionViewIndex:(int64_t)index;
- (id)_cellForItemAtIndex:(unint64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)dequeueReusableCellWithReuseIdentifier:(id)identifier forIndex:(unint64_t)index;
- (id)focusedCell;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (int64_t)_numberOfCells;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (unint64_t)indexForCell:(id)cell;
- (void)_adjustCarouselForDirectionShift:(int64_t)shift;
- (void)_handlePlayGesture:(id)gesture;
- (void)_prepareIndexMap:(int64_t)map;
- (void)_setContentOffsetForCollectionViewIndex:(int64_t)index;
- (void)_startAutoScrollTimer;
- (void)_startContinuousScroll;
- (void)_stopAutoScrollTimer;
- (void)_stopContinuousScroll;
- (void)_updateAutoScrollTimer;
- (void)_updateCarouselWithCenterIndex:(int64_t)index indexToRemove:(int64_t)remove indexToAdd:(int64_t)add;
- (void)_updateCollectionViewLayoutAnimated:(BOOL)animated;
- (void)_updateContentOffsetForFocusedIndex:(int64_t)index animated:(BOOL)animated;
- (void)_updateIdleModeLayoutAttributes;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)displayLinkDidFire:(id)fire;
- (void)layoutSubviews;
- (void)reloadData;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setAutoScrollInterval:(double)interval;
- (void)setContinuousScrollVelocity:(double)velocity;
- (void)setInteritemSpacing:(double)spacing animated:(BOOL)animated;
- (void)setItemSize:(CGSize)size;
- (void)setSemanticContentAttribute:(int64_t)attribute;
@end

@implementation TVCarouselView

- (TVCarouselView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = TVCarouselView;
  v3 = [(TVCarouselView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [_TVCarouselCollectionView alloc];
    [(TVCarouselView *)v3 bounds];
    v23 = CGRectInset(v22, 0.0, 0.0);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    v9 = objc_alloc_init(_TVCarouselCollectionViewLayout);
    height = [(_TVCarouselCollectionView *)v4 initWithFrame:v9 collectionViewLayout:x, y, width, height];
    collectionView = v3->_collectionView;
    v3->_collectionView = height;

    [(_TVCarouselCollectionView *)v3->_collectionView setAutoresizingMask:18];
    [(_TVCarouselCollectionView *)v3->_collectionView setDataSource:v3];
    [(_TVCarouselCollectionView *)v3->_collectionView setDelegate:v3];
    [(_TVCarouselCollectionView *)v3->_collectionView setOpaque:0];
    [(_TVCarouselCollectionView *)v3->_collectionView setBackgroundColor:0];
    [(_TVCarouselCollectionView *)v3->_collectionView setClipsToBounds:0];
    v3->_itemSize = vdupq_n_s64(0x4049000000000000uLL);
    [(TVCarouselView *)v3 addSubview:v3->_collectionView];
    v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    collectionToDatasourceIndexMap = v3->_collectionToDatasourceIndexMap;
    v3->_collectionToDatasourceIndexMap = v12;

    v14 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel__handlePlayGesture_];
    [v14 setAllowedPressTypes:&unk_287E48780];
    [(TVCarouselView *)v3 addGestureRecognizer:v14];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = *MEMORY[0x277D76660];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [defaultCenter addObserver:v3 selector:sel__applicationDidEnterBackgroundNotification_ name:v16 object:mEMORY[0x277D75128]];

    v18 = *MEMORY[0x277D76758];
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    [defaultCenter addObserver:v3 selector:sel__applicationWillEnterForegroundNotification_ name:v18 object:mEMORY[0x277D75128]2];

    v3->_numFocusChangesInInterval = 0;
  }

  return v3;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = TVCarouselView;
  [(TVCarouselView *)&v9 layoutSubviews];
  collectionViewLayout = [(_TVCarouselCollectionView *)self->_collectionView collectionViewLayout];
  [collectionViewLayout itemSize];
  v5 = v4;
  [collectionViewLayout minimumInteritemSpacing];
  v7 = v5 + v6;
  _collectionView = [(TVCarouselView *)self _collectionView];
  [_collectionView _setVisibleRectEdgeInsets:{0.0, v7 * -10.0, 0.0, v7 * -10.0}];
}

- (void)_startContinuousScroll
{
  if (!self->_displayLink)
  {
    _centerCollectionViewCellIndex = [(TVCarouselView *)self _centerCollectionViewCellIndex];
    [(TVCarouselView *)self _setContentOffsetForCollectionViewIndex:_centerCollectionViewCellIndex];
    _collectionView = [(TVCarouselView *)self _collectionView];
    [_collectionView contentOffset];
    v7 = v6;
    v9 = v8;

    [(TVCarouselView *)self _contentOffsetXForCollectionViewIndex:_centerCollectionViewCellIndex + 1];
    v11 = v10;
    [(TVCarouselView *)self setOffsetChangePerSecond:(v10 - v7) / self->_continuousScrollVelocity];
    [(TVCarouselView *)self setTargetContentOffset:v11, v9];
    [(TVCarouselView *)self setPreviousDisplayLinkTimestamp:0.0];
    [(TVCarouselView *)self _stopContinuousScroll];
    v13 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_displayLinkDidFire_];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [v13 addToRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];

    [(TVCarouselView *)self setDisplayLink:v13];
  }
}

- (void)displayLinkDidFire:(id)fire
{
  displayLink = [(TVCarouselView *)self displayLink];
  [displayLink timestamp];
  v6 = v5;

  [(TVCarouselView *)self previousDisplayLinkTimestamp];
  if (v7 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    [(TVCarouselView *)self previousDisplayLinkTimestamp];
    v9 = v6 - v8;
  }

  [(TVCarouselView *)self setPreviousDisplayLinkTimestamp:v6];
  if ([(TVCarouselView *)self _canScrollCarouselView])
  {
    _collectionView = [(TVCarouselView *)self _collectionView];
    [_collectionView contentOffset];
    v12 = v11;
    v14 = v13;

    [(TVCarouselView *)self offsetChangePerSecond];
    v16 = v12 + v15 * v9;
    _collectionView2 = [(TVCarouselView *)self _collectionView];
    [_collectionView2 setContentOffset:0 animated:{v16, v14}];

    displayLink2 = [(TVCarouselView *)self displayLink];
    [displayLink2 targetTimestamp];
    v20 = v19 - v6;
    [(TVCarouselView *)self offsetChangePerSecond];
    v22 = v20 * v21;

    _collectionView3 = [(TVCarouselView *)self _collectionView];
    [_collectionView3 contentOffset];
    v25 = v22 + v24;
    [(TVCarouselView *)self targetContentOffset];
    v27 = v26;

    if (v25 >= v27)
    {

      [(TVCarouselView *)self _adjustCarouselForDirectionShift:0];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVCarouselView;
  [(TVCarouselView *)&v4 dealloc];
}

- (NSDictionary)collectionToDatasourceIndexMap
{
  if (![(NSDictionary *)self->_collectionToDatasourceIndexMap count])
  {
    [(TVCarouselView *)self _prepareIndexMap:0];
  }

  collectionToDatasourceIndexMap = self->_collectionToDatasourceIndexMap;

  return collectionToDatasourceIndexMap;
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = TVCarouselView;
  [(TVCarouselView *)&v4 didMoveToSuperview];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__TVCarouselView_didMoveToSuperview__block_invoke;
  block[3] = &unk_279D6E7F8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = TVCarouselView;
  [(TVCarouselView *)&v4 didMoveToWindow];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__TVCarouselView_didMoveToWindow__block_invoke;
  block[3] = &unk_279D6E7F8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = TVCarouselView;
  [(TVCarouselView *)&v5 didUpdateFocusInContext:context withAnimationCoordinator:coordinator];
  [(TVCarouselView *)self _updateAutoScrollTimer];
  [(TVCarouselView *)self _updateIdleModeLayoutAttributes];
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
  v5.super_class = TVCarouselView;
  [(TVCarouselView *)&v5 setSemanticContentAttribute:?];
  [(_TVCarouselCollectionView *)self->_collectionView setSemanticContentAttribute:attribute];
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  _centerCollectionViewCellIndex = [(TVCarouselView *)self _centerCollectionViewCellIndex];
  v4 = MEMORY[0x277CCAA70];

  return [v4 indexPathForItem:_centerCollectionViewCellIndex inSection:0];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  self->_numberOfRealItemsForDataSource = [WeakRetained numberOfItemsInCarouselView:self];

  result = self->_numberOfRealItemsForDataSource;
  if (result >= 2)
  {
    collectionToDatasourceIndexMap = [(TVCarouselView *)self collectionToDatasourceIndexMap];
    v8 = [collectionToDatasourceIndexMap count];

    return v8;
  }

  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  self->_indexToDeque = [path item];
  collectionToDatasourceIndexMap = [(TVCarouselView *)self collectionToDatasourceIndexMap];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_indexToDeque];
  v7 = [collectionToDatasourceIndexMap objectForKey:v6];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v10 = [WeakRetained carouselView:self cellForItemAtIndex:unsignedIntegerValue];

  [v10 _setFocusableContentMargins:{140.0, 0.0, 0.0, 0.0}];
  self->_indexToDeque = 0x7FFFFFFFFFFFFFFFLL;

  return v10;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  if (!self->_focusedIndexPath)
  {
    [(TVCarouselView *)self _updateContentOffsetForFocusedIndex:0x7FFFFFFFFFFFFFFFLL animated:0, path];
  }
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  if (self->_scrollMode == 1)
  {
    return 0;
  }

  if (!self->_firstFocusChangeInInterval)
  {
    return 1;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_firstFocusChangeInInterval];
  if (v7 < 0.15)
  {
    v4 = self->_numFocusChangesInInterval < 1;
  }

  else
  {
    self->_numFocusChangesInInterval = 0;
    v4 = 1;
  }

  return v4;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    collectionToDatasourceIndexMap = [(TVCarouselView *)self collectionToDatasourceIndexMap];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(pathCopy, "item")}];
    v9 = [collectionToDatasourceIndexMap objectForKeyedSubscript:v8];
    unsignedIntegerValue = [v9 unsignedIntegerValue];

    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 carouselView:self didSelectItemAtIndex:unsignedIntegerValue];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 carouselViewDidScroll:self];
  }

  if (self->_focusedIndexPath)
  {
    _centerCollectionViewCellIndex = [(TVCarouselView *)self _centerCollectionViewCellIndex];
    [(TVCarouselView *)self _contentOffsetXForCollectionViewIndex:_centerCollectionViewCellIndex + 1];
    v9 = v8;
    [(TVCarouselView *)self _contentOffsetXForCollectionViewIndex:_centerCollectionViewCellIndex - 1];
    v11 = v10;
    [scrollCopy contentOffset];
    if (v12 <= v11)
    {
      v14 = 1;
    }

    else
    {
      [scrollCopy contentOffset];
      if (v13 < v9)
      {
        goto LABEL_9;
      }

      v14 = 0;
    }

    [(TVCarouselView *)self _adjustCarouselForDirectionShift:v14];
  }

LABEL_9:
}

- (void)_handlePlayGesture:(id)gesture
{
  if ([gesture state] == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      focusedView = [mainScreen focusedView];

      if (focusedView)
      {
        visibleCells = [(TVCarouselView *)self visibleCells];
        v8 = [visibleCells containsObject:focusedView];

        if (v8)
        {
          v9 = [(TVCarouselView *)self indexForCell:focusedView];
          v10 = objc_loadWeakRetained(&self->_delegate);
          [v10 carouselView:self didPlayItemAtIndex:v9];
        }
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

- (id)focusedCell
{
  focusedIndexPath = self->_focusedIndexPath;
  if (focusedIndexPath)
  {
    focusedIndexPath = -[TVCarouselView _cellForItemAtIndex:](self, "_cellForItemAtIndex:", [focusedIndexPath item]);
  }

  return focusedIndexPath;
}

- (unint64_t)indexForCell:(id)cell
{
  v4 = [(_TVCarouselCollectionView *)self->_collectionView indexPathForCell:cell];
  if (v4)
  {
    collectionToDatasourceIndexMap = [(TVCarouselView *)self collectionToDatasourceIndexMap];
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
  collectionToDatasourceIndexMap = self->_collectionToDatasourceIndexMap;
  self->_collectionToDatasourceIndexMap = 0;

  [(_TVCarouselCollectionView *)self->_collectionView reloadData];

  [(TVCarouselView *)self _updateAutoScrollTimer];
}

- (void)setInteritemSpacing:(double)spacing animated:(BOOL)animated
{
  if (vabdd_f64(self->_interitemSpacing, spacing) > 0.00000011920929)
  {
    self->_interitemSpacing = spacing;
    [(TVCarouselView *)self _updateCollectionViewLayoutAnimated:animated];
  }
}

- (void)setItemSize:(CGSize)size
{
  if (self->_itemSize.width != size.width || self->_itemSize.height != size.height)
  {
    self->_itemSize = size;
    [(TVCarouselView *)self _updateCollectionViewLayout];
  }
}

- (void)setAutoScrollInterval:(double)interval
{
  if (vabdd_f64(self->_autoScrollInterval, interval) > 2.22044605e-16)
  {
    if (interval < 0.5 && interval > 2.22044605e-16)
    {
      interval = 0.5;
    }

    self->_autoScrollInterval = interval;
    [(TVCarouselView *)self _updateAutoScrollTimer];
  }
}

- (void)setContinuousScrollVelocity:(double)velocity
{
  if (vabdd_f64(self->_continuousScrollVelocity, velocity) > 2.22044605e-16)
  {
    if (velocity < 0.5 && velocity > 2.22044605e-16)
    {
      velocity = 0.5;
    }

    self->_continuousScrollVelocity = velocity;
    [(TVCarouselView *)self _updateAutoScrollTimer];
  }
}

- (int64_t)_numberOfCells
{
  collectionViewLayout = [(_TVCarouselCollectionView *)self->_collectionView collectionViewLayout];
  _expectedNumberOfCells = [collectionViewLayout _expectedNumberOfCells];

  return _expectedNumberOfCells;
}

- (void)_adjustCarouselForDirectionShift:(int64_t)shift
{
  if ([(TVCarouselView *)self _canScrollCarouselView])
  {
    _centerCollectionViewCellIndex = [(TVCarouselView *)self _centerCollectionViewCellIndex];
    v6 = _centerCollectionViewCellIndex;
    if (shift == 1)
    {
      v7 = _centerCollectionViewCellIndex - 1;
    }

    else
    {
      v7 = _centerCollectionViewCellIndex + 1;
    }

    collectionToDatasourceIndexMap = [(TVCarouselView *)self collectionToDatasourceIndexMap];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    v10 = [collectionToDatasourceIndexMap objectForKeyedSubscript:v9];
    integerValue = [v10 integerValue];

    collectionToDatasourceIndexMap2 = [(TVCarouselView *)self collectionToDatasourceIndexMap];
    v13 = [collectionToDatasourceIndexMap2 count];
    v14 = shift == 1;
    if (shift == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = v13 - 1;
    }

    if (v14)
    {
      v16 = v13 - 1;
    }

    else
    {
      v16 = 0;
    }

    [(TVCarouselView *)self _updateCarouselWithCenterIndex:integerValue indexToRemove:v16 indexToAdd:v15];

    [(TVCarouselView *)self _setContentOffsetForCollectionViewIndex:v6];
  }
}

- (void)_setContentOffsetForCollectionViewIndex:(int64_t)index
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__TVCarouselView__setContentOffsetForCollectionViewIndex___block_invoke;
  v3[3] = &unk_279D6E8B8;
  v3[4] = self;
  v3[5] = index;
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

void __58__TVCarouselView__setContentOffsetForCollectionViewIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collectionView];
  [v2 contentOffset];
  v4 = v3;

  [*(a1 + 32) _contentOffsetXForCollectionViewIndex:*(a1 + 40)];
  v6 = v5;
  v7 = [*(a1 + 32) _collectionView];
  [v7 setContentOffset:0 animated:{v6, v4}];
}

- (void)_updateCarouselWithCenterIndex:(int64_t)index indexToRemove:(int64_t)remove indexToAdd:(int64_t)add
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__TVCarouselView__updateCarouselWithCenterIndex_indexToRemove_indexToAdd___block_invoke;
  v5[3] = &unk_279D6F1B0;
  v5[4] = self;
  v5[5] = index;
  v5[6] = remove;
  v5[7] = add;
  [MEMORY[0x277D75D18] performWithoutAnimation:v5];
}

void __74__TVCarouselView__updateCarouselWithCenterIndex_indexToRemove_indexToAdd___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collectionView];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__TVCarouselView__updateCarouselWithCenterIndex_indexToRemove_indexToAdd___block_invoke_2;
  v3[3] = &unk_279D6F1B0;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  [v2 performBatchUpdates:v3 completion:0];
}

void __74__TVCarouselView__updateCarouselWithCenterIndex_indexToRemove_indexToAdd___block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _prepareIndexMap:*(a1 + 40)];
  v2 = [*(a1 + 32) _collectionView];
  v3 = [MEMORY[0x277CCAA70] indexPathForItem:*(a1 + 48) inSection:0];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v2 deleteItemsAtIndexPaths:v4];

  v5 = [*(a1 + 32) _collectionView];
  v6 = [MEMORY[0x277CCAA70] indexPathForItem:*(a1 + 56) inSection:0];
  v8 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  [v5 insertItemsAtIndexPaths:v7];
}

- (void)_prepareIndexMap:(int64_t)map
{
  _numberOfCells = [(TVCarouselView *)self _numberOfCells];
  v6 = _numberOfCells / 2;
  numberOfRealItemsForDataSource = self->_numberOfRealItemsForDataSource;
  v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:_numberOfCells];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:map];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:_numberOfCells / 2];
  [v20 setObject:v8 forKey:v9];

  if (_numberOfCells >= 2)
  {
    v10 = v6 - 1;
    v11 = v6 + 1;
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
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:mapCopy];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
      [v20 setObject:v14 forKey:v15];

      v16 = [MEMORY[0x277CCABB0] numberWithInteger:map];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
      [v20 setObject:v16 forKey:v17];

      --v10;
      ++v11;
    }

    while (v10 != -1);
  }

  v18 = [v20 copy];
  collectionToDatasourceIndexMap = self->_collectionToDatasourceIndexMap;
  self->_collectionToDatasourceIndexMap = v18;
}

- (double)_contentOffsetXForCollectionViewIndex:(int64_t)index
{
  collectionViewLayout = [(_TVCarouselCollectionView *)self->_collectionView collectionViewLayout];
  [collectionViewLayout itemSize];
  v7 = v6;
  [collectionViewLayout minimumInteritemSpacing];
  v9 = v8;
  [(TVCarouselView *)self bounds];
  if (CGRectGetWidth(v13) > 0.0)
  {
    [(TVCarouselView *)self bounds];
    Width = CGRectGetWidth(v15);
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    Width = CGRectGetWidth(v14);
  }

  return floor(floor(v7 * 0.5 + index * (v7 + v9)) - Width * 0.5);
}

- (void)_updateCollectionViewLayoutAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = objc_alloc_init(_TVCarouselCollectionViewLayout);
  [(UICollectionViewFlowLayout *)v6 setItemSize:self->_itemSize.width, self->_itemSize.height];
  [(UICollectionViewFlowLayout *)v6 setMinimumInteritemSpacing:self->_interitemSpacing];
  [(UICollectionViewFlowLayout *)v6 setScrollDirection:1];
  [(UICollectionViewFlowLayout *)v6 setSectionInsetReference:0];
  [(_TVCarouselCollectionView *)self->_collectionView setCollectionViewLayout:v6 animated:animatedCopy];
  focusedIndexPath = self->_focusedIndexPath;
  if (focusedIndexPath)
  {
    [(TVCarouselView *)self _updateContentOffsetForFocusedIndex:[(NSIndexPath *)focusedIndexPath item] animated:0];
  }
}

- (void)_updateContentOffsetForFocusedIndex:(int64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(TVCarouselView *)self _canScrollCarouselView])
  {
    v7 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
    focusedIndexPath = self->_focusedIndexPath;
    self->_focusedIndexPath = v7;

    v9 = [(_TVCarouselCollectionView *)self->_collectionView numberOfItemsInSection:0];
    if (!self->_scrollMode)
    {
      if (index == 0x7FFFFFFFFFFFFFFFLL)
      {
        indexCopy = v9 / 2;
      }

      else
      {
        indexCopy = index;
      }

      v11 = 0.8;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __63__TVCarouselView__updateContentOffsetForFocusedIndex_animated___block_invoke;
      v13[3] = &unk_279D6E8B8;
      v13[4] = self;
      v13[5] = indexCopy;
      v12[1] = 3221225472;
      v12[0] = MEMORY[0x277D85DD0];
      v12[2] = __63__TVCarouselView__updateContentOffsetForFocusedIndex_animated___block_invoke_2;
      v12[3] = &unk_279D6FDE8;
      if (!animatedCopy)
      {
        v11 = 0.0;
      }

      v12[4] = self;
      v12[5] = v9 / 2;
      [MEMORY[0x277D75D18] animateWithDuration:327686 delay:v13 options:v12 animations:v11 completion:?];
    }
  }
}

void __63__TVCarouselView__updateContentOffsetForFocusedIndex_animated___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _collectionView];
  v2 = [MEMORY[0x277CCAA70] indexPathForItem:*(a1 + 40) inSection:0];
  [v3 scrollToItemAtIndexPath:v2 atScrollPosition:16 animated:0];
}

uint64_t __63__TVCarouselView__updateContentOffsetForFocusedIndex_animated___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA70] indexPathForItem:*(a1 + 40) inSection:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 432);
  *(v3 + 432) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (BOOL)_canScrollCarouselView
{
  window = [(TVCarouselView *)self window];
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
  if (![(TVCarouselView *)self _canScrollCarouselView])
  {
    goto LABEL_5;
  }

  if (!self->_focusedIndexPath)
  {
    [(TVCarouselView *)self _updateContentOffsetForFocusedIndex:0x7FFFFFFFFFFFFFFFLL animated:0];
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  focusedView = [mainScreen focusedView];
  v5 = [focusedView isDescendantOfView:self];

  if ((v5 & 1) == 0)
  {
    scrollMode = self->_scrollMode;
    if (scrollMode == 1)
    {

      [(TVCarouselView *)self _startContinuousScroll];
    }

    else if (!scrollMode && fabs(self->_autoScrollInterval) > 2.22044605e-16)
    {

      [(TVCarouselView *)self _startAutoScrollTimer];
    }
  }

  else
  {
LABEL_5:
    [(TVCarouselView *)self _stopAutoScrollTimer];

    [(TVCarouselView *)self _stopContinuousScroll];
  }
}

- (void)_startAutoScrollTimer
{
  [(TVCarouselView *)self _stopAutoScrollTimer];
  if (self->_autoScrollInterval > 0.0)
  {
    objc_initWeak(&location, self);
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    autoScrollTimer = self->_autoScrollTimer;
    self->_autoScrollTimer = v3;

    v5 = self->_autoScrollTimer;
    v6 = dispatch_time(0, (self->_autoScrollInterval * 1000000000.0));
    dispatch_source_set_timer(v5, v6, (self->_autoScrollInterval * 1000000000.0), 0x1DCD6500uLL);
    v7 = self->_autoScrollTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __39__TVCarouselView__startAutoScrollTimer__block_invoke;
    handler[3] = &unk_279D6E770;
    objc_copyWeak(&v9, &location);
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(self->_autoScrollTimer);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __39__TVCarouselView__startAutoScrollTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [MEMORY[0x277CBEB88] currentRunLoop];
    v4 = [v3 currentMode];
    v5 = [v4 isEqualToString:*MEMORY[0x277D77228]];

    WeakRetained = v6;
    if ((v5 & 1) == 0)
    {
      [v6 _updateContentOffsetForFocusedIndex:objc_msgSend(*(a1 + 32) animated:{"_centerCollectionViewCellIndex") + 1, 1}];
      WeakRetained = v6;
    }
  }
}

- (void)_stopAutoScrollTimer
{
  autoScrollTimer = self->_autoScrollTimer;
  if (autoScrollTimer)
  {
    dispatch_source_cancel(autoScrollTimer);
    v4 = self->_autoScrollTimer;
    self->_autoScrollTimer = 0;
  }
}

- (void)_updateIdleModeLayoutAttributes
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  visibleCells = [(_TVCarouselCollectionView *)self->_collectionView visibleCells];
  v4 = [visibleCells countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v18 + 1) + 8 * v7++) _setIdleModeLayoutAttributes:0];
      }

      while (v5 != v7);
      v5 = [visibleCells countByEnumeratingWithState:&v18 objects:v22 count:16];
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

      memset(&v17, 0, sizeof(v17));
      CGAffineTransformMakeScale(&v17, (v14 + 20.0) / v14, (v14 + 20.0) / v14);
      v15 = objc_opt_new();
      v16 = v17;
      [v15 setTransform:&v16];
      [focusedView _setIdleModeLayoutAttributes:v15];
    }
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