@interface PUReviewScrubber
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)isCompactHeight;
- (CGPoint)contentOffsetForIndexPath:(id)path inCollectionView:(id)view;
- (CGPoint)contentOffsetForItemAtIndex:(int64_t)index ofScrollView:(id)view;
- (CGSize)itemSize;
- (PUReviewScrubber)initWithCoder:(id)coder;
- (PUReviewScrubber)initWithFrame:(CGRect)frame;
- (PUReviewScrubberDataSource)dataSource;
- (PUReviewScrubberDelegate)scrubberDelegate;
- (id)_indexPathInCollectionView:(id)view closestToPoint:(CGPoint)point excludingIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)indexPathUnderTickMarkInCollectionView:(id)view atContentOffset:(CGPoint)offset;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_beginFeedbackInteraction;
- (void)_commonPUReviewScrubberInitialization;
- (void)_endFeedbackInteraction;
- (void)_handleTapAtIndexPath:(id)path;
- (void)_handleTapOnReviewScrubber:(id)scrubber;
- (void)_notifyDelegateOfScrub;
- (void)_notifyDelegateOfSelection;
- (void)_playFeedbackIfNeeded;
- (void)_updateContentOffsetForSelectedIndexPathAnimated:(BOOL)animated;
- (void)_updateToSelectedIndexPath:(id)path;
- (void)beginInteractiveUpdate;
- (void)dealloc;
- (void)finishInteractiveUpdate;
- (void)layoutSubviews;
- (void)reloadData;
- (void)reloadIndexPath:(id)path animated:(BOOL)animated;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setCellAspectRatio:(id)ratio;
- (void)setScrubberCellClass:(Class)class;
- (void)setSelectedIndexPath:(id)path animated:(BOOL)animated;
- (void)toggleIndexPath:(id)path animated:(BOOL)animated;
- (void)updateWithAbsoluteProgress:(double)progress;
@end

@implementation PUReviewScrubber

- (PUReviewScrubberDelegate)scrubberDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrubberDelegate);

  return WeakRetained;
}

- (PUReviewScrubberDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  _collectionView = [(PUReviewScrubber *)self _collectionView];
  tapGestureRecognizer = self->__tapGestureRecognizer;

  if (tapGestureRecognizer == recognizerCopy)
  {
    panGestureRecognizer = [_collectionView panGestureRecognizer];
    if (panGestureRecognizer == gestureRecognizerCopy)
    {
      isDecelerating = [_collectionView isDecelerating];
    }

    else
    {
      isDecelerating = 0;
    }
  }

  else
  {
    isDecelerating = 0;
  }

  return isDecelerating;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  cellReuseIdentifier = [(PUReviewScrubber *)self cellReuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:cellReuseIdentifier forIndexPath:pathCopy];

  scrubberDelegate = [(PUReviewScrubber *)self scrubberDelegate];
  if (scrubberDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [scrubberDelegate reviewScrubber:self willDisplayCell:v9 atIndexPath:pathCopy];
  }

  return v9;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (!WeakRetained)
  {
    return 0;
  }

  v7 = WeakRetained;
  v8 = objc_loadWeakRetained(&self->_dataSource);
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = objc_loadWeakRetained(&self->_dataSource);
  v11 = [v10 reviewScrubber:self numberOfItemsInSection:section];

  return v11;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (!WeakRetained)
  {
    return 1;
  }

  v5 = WeakRetained;
  v6 = objc_loadWeakRetained(&self->_dataSource);
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 1;
  }

  v8 = objc_loadWeakRetained(&self->_dataSource);
  v9 = [v8 numberOfSectionsInReviewScrubber:self];

  return v9;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  draggingCopy = dragging;
  collectionViewLayout = [draggingCopy collectionViewLayout];
  v8 = [(PUReviewScrubber *)self indexPathUnderTickMarkInCollectionView:draggingCopy atContentOffset:offset->x, offset->y];
  v9 = [collectionViewLayout layoutAttributesForItemAtIndexPath:v8];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  [draggingCopy contentInset];
  v15 = v14;

  offset->x = v11 - v15;
  offset->y = v13;
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(PUReviewScrubber *)self _endFeedbackInteraction];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  v5 = scrollCopy;
  if (!self->__ignoreScrollViewDidScrollUpdate)
  {
    v8 = scrollCopy;
    scrollCopy = [scrollCopy isScrollAnimating];
    v5 = v8;
    if ((scrollCopy & 1) == 0)
    {
      v6 = v8;
      [v6 contentOffset];
      v7 = [(PUReviewScrubber *)self indexPathUnderTickMarkInCollectionView:v6 atContentOffset:?];

      [(PUReviewScrubber *)self _updateToSelectedIndexPath:v7];
      [(PUReviewScrubber *)self _notifyDelegateOfScrub];
      [(PUReviewScrubber *)self _playFeedbackIfNeeded];

      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](scrollCopy, v5);
}

- (CGSize)itemSize
{
  cellAspectRatio = [(PUReviewScrubber *)self cellAspectRatio];
  [cellAspectRatio doubleValue];

  JUMPOUT(0x1B8C6D610);
}

- (void)_notifyDelegateOfSelection
{
  scrubberDelegate = [(PUReviewScrubber *)self scrubberDelegate];
  if (scrubberDelegate)
  {
    v5 = scrubberDelegate;
    if (objc_opt_respondsToSelector())
    {
      selectedIndexPath = [(PUReviewScrubber *)self selectedIndexPath];
      [v5 reviewScrubberDidSelectItemAtIndexPath:selectedIndexPath];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_notifyDelegateOfScrub
{
  scrubberDelegate = [(PUReviewScrubber *)self scrubberDelegate];
  if (scrubberDelegate)
  {
    v4 = scrubberDelegate;
    if (objc_opt_respondsToSelector())
    {
      [v4 reviewScrubberDidScrub:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_updateToSelectedIndexPath:(id)path
{
  pathCopy = path;
  v8 = pathCopy;
  if (!self->_selectedIndexPath || (v6 = [pathCopy compare:?], v7 = v8, v6))
  {
    objc_storeStrong(&self->_selectedIndexPath, path);
    v7 = v8;
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (CGPoint)contentOffsetForItemAtIndex:(int64_t)index ofScrollView:(id)view
{
  viewCopy = view;
  [viewCopy contentInset];
  v8 = v7;
  v10 = v9;
  [viewCopy contentOffset];
  v12 = v11;

  [(PUReviewScrubber *)self itemSize];
  v14 = (v13 + 3.0) * index - v10;
  v15 = v12 - v8;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)contentOffsetForIndexPath:(id)path inCollectionView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy contentInset];
  v9 = v8;
  v11 = v10;
  [viewCopy contentOffset];
  v13 = v12;
  collectionViewLayout = [viewCopy collectionViewLayout];
  v15 = [collectionViewLayout layoutAttributesForItemAtIndexPath:pathCopy];
  v16 = v15;
  if (v15)
  {
    [v15 frame];
    v18 = v17 - v11;
    v19 = v13 - v9;
  }

  else
  {
    item = [pathCopy item];
    if ([pathCopy section] >= 1)
    {
      v21 = 0;
      do
      {
        item += [(PUReviewScrubber *)self collectionView:viewCopy numberOfItemsInSection:v21++];
      }

      while (v21 < [pathCopy section]);
    }

    [(PUReviewScrubber *)self contentOffsetForItemAtIndex:item ofScrollView:viewCopy];
    v18 = v22;
    v19 = v23;
  }

  v24 = v18;
  v25 = v19;
  result.y = v25;
  result.x = v24;
  return result;
}

- (id)indexPathUnderTickMarkInCollectionView:(id)view atContentOffset:(CGPoint)offset
{
  x = offset.x;
  viewCopy = view;
  [viewCopy contentInset];
  v8 = v7;
  v10 = v9;
  v12 = x + v11;
  [viewCopy bounds];
  v14 = (v13 - (v8 + v10)) * 0.5;
  [(PUReviewScrubber *)self itemSize];
  v16 = v12 + v15 * 0.5;
  [viewCopy contentSize];
  v18 = v17;
  [(PUReviewScrubber *)self px_screenScale];
  v20 = v18 + -1.0 / v19;
  if (v20 >= v16)
  {
    v20 = v16;
  }

  v21 = fmax(v20, 0.0);
  v22 = [viewCopy indexPathForItemAtPoint:{v21, v14}];
  if (!v22)
  {
    v22 = [viewCopy indexPathForItemAtPoint:{v21 + 1.5, v14}];
    if (!v22)
    {
      v22 = [viewCopy indexPathForItemAtPoint:{v21 + -1.5, v14}];
      if (!v22)
      {
        v22 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
      }
    }
  }

  v23 = v22;

  return v23;
}

- (void)_updateContentOffsetForSelectedIndexPathAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _collectionView = [(PUReviewScrubber *)self _collectionView];
  [(PUReviewScrubber *)self contentOffsetForIndexPath:self->_selectedIndexPath inCollectionView:_collectionView];
  [_collectionView setContentOffset:animatedCopy animated:?];
}

- (void)_handleTapOnReviewScrubber:(id)scrubber
{
  scrubberCopy = scrubber;
  _collectionView = [(PUReviewScrubber *)self _collectionView];
  [scrubberCopy locationInView:_collectionView];
  v6 = v5;
  v8 = v7;

  _collectionViewLayout = [(PUReviewScrubber *)self _collectionViewLayout];
  [_collectionView contentSize];
  v11 = v10;
  [_collectionViewLayout itemsContentInset];
  v14 = v11 - fabs(v13);
  v15 = v6 > fabs(v12) && v6 < v14;
  if (v15 && ([_collectionView isDecelerating] & 1) == 0)
  {
    v16 = [(PUReviewScrubber *)self _indexPathInCollectionView:_collectionView closestToPoint:0 excludingIndexPath:v6, v8];
    [(PUReviewScrubber *)self _handleTapAtIndexPath:v16];
  }
}

- (void)_handleTapAtIndexPath:(id)path
{
  [(PUReviewScrubber *)self _updateToSelectedIndexPath:path];
  [(PUReviewScrubber *)self _updateContentOffsetForSelectedIndexPathAnimated:1];

  [(PUReviewScrubber *)self _notifyDelegateOfSelection];
}

- (id)_indexPathInCollectionView:(id)view closestToPoint:(CGPoint)point excludingIndexPath:(id)path
{
  y = point.y;
  x = point.x;
  v29 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  v10 = [viewCopy indexPathForItemAtPoint:{x, y}];
  if (!v10)
  {
    visibleCells = [viewCopy visibleCells];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = [visibleCells countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v10 = 0;
      v14 = *v25;
      v15 = 1.79769313e308;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(visibleCells);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [viewCopy indexPathForCell:v17];
          if (([pathCopy isEqual:v18] & 1) == 0)
          {
            [v17 center];
            v21 = (v20 - y) * (v20 - y) + (v19 - x) * (v19 - x);
            if (v21 < v15)
            {
              v22 = v18;

              v15 = v21;
              v10 = v22;
            }
          }
        }

        v13 = [visibleCells countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)_endFeedbackInteraction
{
  _impactFeedbackBehavior = [(PUReviewScrubber *)self _impactFeedbackBehavior];
  isActive = [_impactFeedbackBehavior isActive];

  if (isActive)
  {
    _impactFeedbackBehavior2 = [(PUReviewScrubber *)self _impactFeedbackBehavior];
    [_impactFeedbackBehavior2 deactivate];
  }
}

- (void)_playFeedbackIfNeeded
{
  _impactFeedbackBehavior = [(PUReviewScrubber *)self _impactFeedbackBehavior];
  if (_impactFeedbackBehavior)
  {
    v9 = _impactFeedbackBehavior;
    _collectionView = [(PUReviewScrubber *)self _collectionView];
    [_collectionView contentOffset];
    v5 = [(PUReviewScrubber *)self indexPathUnderTickMarkInCollectionView:_collectionView atContentOffset:?];
    _indexPathForPreviousFeedbackQuery = [(PUReviewScrubber *)self _indexPathForPreviousFeedbackQuery];
    if (!_indexPathForPreviousFeedbackQuery || [v5 compare:_indexPathForPreviousFeedbackQuery])
    {
      dataSource = [(PUReviewScrubber *)self dataSource];
      v8 = [dataSource reviewScrubber:self shouldProvideFeedbackForCellAtIndexPath:v5];

      if (v8)
      {
        [v9 impactOccurred];
      }

      [(PUReviewScrubber *)self _setIndexPathForPreviousFeedbackQuery:v5];
    }

    _impactFeedbackBehavior = v9;
  }
}

- (void)_beginFeedbackInteraction
{
  _impactFeedbackBehavior = [(PUReviewScrubber *)self _impactFeedbackBehavior];
  isActive = [_impactFeedbackBehavior isActive];

  if (isActive)
  {
    [(PUReviewScrubber *)self _endFeedbackInteraction];
  }

  _impactFeedbackBehavior2 = [(PUReviewScrubber *)self _impactFeedbackBehavior];
  [_impactFeedbackBehavior2 activateWithCompletionBlock:0];
}

- (void)finishInteractiveUpdate
{
  collectionView = self->__collectionView;
  [(UICollectionView *)collectionView contentOffset];
  v4 = [(PUReviewScrubber *)self indexPathUnderTickMarkInCollectionView:collectionView atContentOffset:?];
  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = v4;

  [(PUReviewScrubber *)self _updateContentOffsetForSelectedIndexPathAnimated:0];
  [(PUReviewScrubber *)self _endFeedbackInteraction];
  self->__performingInteractiveUpdate = 0;
}

- (void)updateWithAbsoluteProgress:(double)progress
{
  if (self->__performingInteractiveUpdate)
  {
    self->__ignoreScrollViewDidScrollUpdate = 1;
    [(PUReviewScrubber *)self itemSize];
    v6 = v5 + 3.0;
    [(UICollectionView *)self->__collectionView contentOffset];
    v8 = v7;
    [(UICollectionView *)self->__collectionView contentInset];
    v10 = v6 * progress - v9;
    v12 = v8 - v11;
    _collectionView = [(PUReviewScrubber *)self _collectionView];
    [_collectionView setContentOffset:{v10, v12}];

    [(PUReviewScrubber *)self _playFeedbackIfNeeded];
    self->__ignoreScrollViewDidScrollUpdate = 0;
  }
}

- (void)beginInteractiveUpdate
{
  if (self->__performingInteractiveUpdate)
  {
    [(PUReviewScrubber *)self finishInteractiveUpdate];
  }

  self->__performingInteractiveUpdate = 1;
  [(UICollectionView *)self->__collectionView stopScrollingAndZooming];

  [(PUReviewScrubber *)self _beginFeedbackInteraction];
}

- (void)setCellAspectRatio:(id)ratio
{
  ratioCopy = ratio;
  v6 = ratioCopy;
  if (self->_cellAspectRatio != ratioCopy)
  {
    v12 = ratioCopy;
    ratioCopy = [(NSNumber *)ratioCopy isEqual:?];
    v6 = v12;
    if ((ratioCopy & 1) == 0)
    {
      objc_storeStrong(&self->_cellAspectRatio, ratio);
      [(PUReviewScrubber *)self itemSize];
      v8 = v7;
      v10 = v9;
      _collectionViewLayout = [(PUReviewScrubber *)self _collectionViewLayout];
      [_collectionViewLayout setItemSize:{v8, v10}];

      v6 = v12;
    }
  }

  MEMORY[0x1EEE66BB8](ratioCopy, v6);
}

- (void)reloadIndexPath:(id)path animated:(BOOL)animated
{
  pathCopy = path;
  _collectionView = [(PUReviewScrubber *)self _collectionView];
  v6 = [_collectionView cellForItemAtIndexPath:pathCopy];

  if (v6)
  {
    scrubberDelegate = [(PUReviewScrubber *)self scrubberDelegate];
    if (scrubberDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [scrubberDelegate reviewScrubber:self willDisplayCell:v6 atIndexPath:pathCopy];
    }
  }
}

- (void)toggleIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  _collectionView = [(PUReviewScrubber *)self _collectionView];
  v8 = [_collectionView cellForItemAtIndexPath:pathCopy];

  if (v8)
  {
    [v8 setFavorite:objc_msgSend(v8 animated:{"isFavorite") ^ 1, animatedCopy}];
  }
}

- (void)reloadData
{
  _collectionView = [(PUReviewScrubber *)self _collectionView];
  [_collectionView reloadData];
}

- (void)setSelectedIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  if (self->_selectedIndexPath != pathCopy)
  {
    v8 = pathCopy;
    objc_storeStrong(&self->_selectedIndexPath, path);
    [(PUReviewScrubber *)self _updateContentOffsetForSelectedIndexPathAnimated:animatedCopy];
    [(PUReviewScrubber *)self _setIndexPathForPreviousFeedbackQuery:v8];
    pathCopy = v8;
  }
}

- (void)setScrubberCellClass:(Class)class
{
  if (self->_scrubberCellClass != class)
  {
    objc_storeStrong(&self->_scrubberCellClass, class);
    v4 = NSStringFromClass(self->_scrubberCellClass);
    cellReuseIdentifier = self->_cellReuseIdentifier;
    self->_cellReuseIdentifier = v4;

    collectionView = self->__collectionView;
    scrubberCellClass = self->_scrubberCellClass;
    v8 = self->_cellReuseIdentifier;

    [(UICollectionView *)collectionView registerClass:scrubberCellClass forCellWithReuseIdentifier:v8];
  }
}

- (BOOL)isCompactHeight
{
  [(PUReviewScrubber *)self bounds];
  v3 = v2;
  [objc_opt_class() compactWidthPreferredHeight];
  return v3 < v4;
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = PUReviewScrubber;
  [(PUReviewScrubber *)&v36 layoutSubviews];
  [(PUReviewScrubber *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  arrowImageView = self->__arrowImageView;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v13 = [labelColor colorWithAlphaComponent:0.25];
  [(UIImageView *)arrowImageView setTintColor:v13];

  [(UIImageView *)self->__arrowImageView sizeToFit];
  [(UIImageView *)self->__arrowImageView bounds];
  UIRectCenteredIntegralRectScale();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ([(PUReviewScrubber *)self isCompactHeight])
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 6.0;
  }

  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  v21 = CGRectGetMinY(v37) + v20;
  [(UIImageView *)self->__arrowImageView setFrame:v15, v21, v17, v19];
  v38.origin.x = v15;
  v38.origin.y = v21;
  v38.size.width = v17;
  v38.size.height = v19;
  CGRectGetMaxY(v38);
  PXEdgeInsetsWithValueForEdges();
  PXEdgeInsetsInsetRect();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  self->__ignoreScrollViewDidScrollUpdate = 1;
  [(UICollectionView *)self->__collectionView setClipsToBounds:0];
  [(UICollectionView *)self->__collectionView setFrame:v23, v25, v27, v29];
  collectionView = self->__collectionView;
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  Width = CGRectGetWidth(v39);
  [(PUReviewScrubber *)self itemSize];
  v33 = floor((Width - v32) * 0.5);
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  v34 = CGRectGetWidth(v40);
  [(PUReviewScrubber *)self itemSize];
  [(UICollectionView *)collectionView setContentInset:0.0, v33, 0.0, floor((v34 - v35) * 0.5)];
  if (![(PUReviewScrubber *)self _performingInteractiveUpdate]&& ([(UICollectionView *)self->__collectionView isTracking]& 1) == 0 && ([(UICollectionView *)self->__collectionView isDecelerating]& 1) == 0)
  {
    [(PUReviewScrubber *)self contentOffsetForIndexPath:self->_selectedIndexPath inCollectionView:self->__collectionView];
    [(UICollectionView *)self->__collectionView setContentOffset:?];
  }

  self->__ignoreScrollViewDidScrollUpdate = 0;
}

- (void)dealloc
{
  objc_storeWeak(&self->_scrubberDelegate, 0);
  objc_storeWeak(&self->_dataSource, 0);
  [(UITapGestureRecognizer *)self->__tapGestureRecognizer setDelegate:0];
  [(PUReviewScrubber *)self _endFeedbackInteraction];
  v3.receiver = self;
  v3.super_class = PUReviewScrubber;
  [(PUReviewScrubber *)&v3 dealloc];
}

- (PUReviewScrubber)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = PUReviewScrubber;
  v3 = [(PUReviewScrubber *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PUReviewScrubber *)v3 _commonPUReviewScrubberInitialization];
    v5 = v4;
  }

  return v4;
}

- (PUReviewScrubber)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PUReviewScrubber;
  v3 = [(PUReviewScrubber *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUReviewScrubber *)v3 _commonPUReviewScrubberInitialization];
    v5 = v4;
  }

  return v4;
}

- (void)_commonPUReviewScrubberInitialization
{
  v3 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:@"AvalancheReviewModeArrow.png"];
  v20 = [v3 imageWithRenderingMode:2];

  v4 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v20];
  arrowImageView = self->__arrowImageView;
  self->__arrowImageView = v4;

  [(PUReviewScrubber *)self addSubview:self->__arrowImageView];
  v6 = objc_alloc_init(PUHorizontalCollectionViewLayout);
  collectionViewLayout = self->__collectionViewLayout;
  self->__collectionViewLayout = v6;

  v8 = self->__collectionViewLayout;
  [(PUReviewScrubber *)self itemSize];
  [(PUHorizontalCollectionViewLayout *)v8 setItemSize:?];
  [(PUHorizontalCollectionViewLayout *)self->__collectionViewLayout setInteritemSpacing:3.0];
  [(PUHorizontalCollectionViewLayout *)self->__collectionViewLayout _setWantsRightToLeftHorizontalMirroringIfNeeded:1];
  v9 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v10 = [v9 initWithFrame:self->__collectionViewLayout collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  collectionView = self->__collectionView;
  self->__collectionView = v10;

  v12 = self->__collectionView;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)v12 setBackgroundColor:clearColor];

  [(UICollectionView *)self->__collectionView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->__collectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->__collectionView setDelegate:self];
  [(UICollectionView *)self->__collectionView setDataSource:self];
  [(UICollectionView *)self->__collectionView _setSupportsPointerDragScrolling:1];
  [(UICollectionView *)self->__collectionView _setHiddenPocketEdges:15];
  [(PUReviewScrubber *)self setScrubberCellClass:objc_opt_class()];
  [(PUReviewScrubber *)self addSubview:self->__collectionView];
  v14 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapOnReviewScrubber_];
  tapGestureRecognizer = self->__tapGestureRecognizer;
  self->__tapGestureRecognizer = v14;

  [(UITapGestureRecognizer *)self->__tapGestureRecognizer setNumberOfTapsRequired:1];
  [(UITapGestureRecognizer *)self->__tapGestureRecognizer setNumberOfTouchesRequired:1];
  [(UITapGestureRecognizer *)self->__tapGestureRecognizer setDelegate:self];
  [(UICollectionView *)self->__collectionView addGestureRecognizer:self->__tapGestureRecognizer];
  v16 = objc_alloc_init(MEMORY[0x1E69DCAE8]);
  impactFeedbackBehavior = self->__impactFeedbackBehavior;
  self->__impactFeedbackBehavior = v16;

  v18 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  indexPathForPreviousFeedbackQuery = self->__indexPathForPreviousFeedbackQuery;
  self->__indexPathForPreviousFeedbackQuery = v18;

  *&self->__ignoreScrollViewDidScrollUpdate = 1;
  [(PUReviewScrubber *)self sendSubviewToBack:self->__backdropView];
}

@end