@interface PUReviewScrubber
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)isCompactHeight;
- (CGPoint)contentOffsetForIndexPath:(id)a3 inCollectionView:(id)a4;
- (CGPoint)contentOffsetForItemAtIndex:(int64_t)a3 ofScrollView:(id)a4;
- (CGSize)itemSize;
- (PUReviewScrubber)initWithCoder:(id)a3;
- (PUReviewScrubber)initWithFrame:(CGRect)a3;
- (PUReviewScrubberDataSource)dataSource;
- (PUReviewScrubberDelegate)scrubberDelegate;
- (id)_indexPathInCollectionView:(id)a3 closestToPoint:(CGPoint)a4 excludingIndexPath:(id)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)indexPathUnderTickMarkInCollectionView:(id)a3 atContentOffset:(CGPoint)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_beginFeedbackInteraction;
- (void)_commonPUReviewScrubberInitialization;
- (void)_endFeedbackInteraction;
- (void)_handleTapAtIndexPath:(id)a3;
- (void)_handleTapOnReviewScrubber:(id)a3;
- (void)_notifyDelegateOfScrub;
- (void)_notifyDelegateOfSelection;
- (void)_playFeedbackIfNeeded;
- (void)_updateContentOffsetForSelectedIndexPathAnimated:(BOOL)a3;
- (void)_updateToSelectedIndexPath:(id)a3;
- (void)beginInteractiveUpdate;
- (void)dealloc;
- (void)finishInteractiveUpdate;
- (void)layoutSubviews;
- (void)reloadData;
- (void)reloadIndexPath:(id)a3 animated:(BOOL)a4;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setCellAspectRatio:(id)a3;
- (void)setScrubberCellClass:(Class)a3;
- (void)setSelectedIndexPath:(id)a3 animated:(BOOL)a4;
- (void)toggleIndexPath:(id)a3 animated:(BOOL)a4;
- (void)updateWithAbsoluteProgress:(double)a3;
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

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUReviewScrubber *)self _collectionView];
  tapGestureRecognizer = self->__tapGestureRecognizer;

  if (tapGestureRecognizer == v7)
  {
    v11 = [v8 panGestureRecognizer];
    if (v11 == v6)
    {
      v10 = [v8 isDecelerating];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUReviewScrubber *)self cellReuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  v10 = [(PUReviewScrubber *)self scrubberDelegate];
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 reviewScrubber:self willDisplayCell:v9 atIndexPath:v6];
  }

  return v9;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
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
  v11 = [v10 reviewScrubber:self numberOfItemsInSection:a4];

  return v11;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
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

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = a3;
  v16 = [v7 collectionViewLayout];
  v8 = [(PUReviewScrubber *)self indexPathUnderTickMarkInCollectionView:v7 atContentOffset:a5->x, a5->y];
  v9 = [v16 layoutAttributesForItemAtIndexPath:v8];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  [v7 contentInset];
  v15 = v14;

  a5->x = v11 - v15;
  a5->y = v13;
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(PUReviewScrubber *)self _endFeedbackInteraction];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->__ignoreScrollViewDidScrollUpdate)
  {
    v8 = v4;
    v4 = [v4 isScrollAnimating];
    v5 = v8;
    if ((v4 & 1) == 0)
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

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (CGSize)itemSize
{
  v2 = [(PUReviewScrubber *)self cellAspectRatio];
  [v2 doubleValue];

  JUMPOUT(0x1B8C6D610);
}

- (void)_notifyDelegateOfSelection
{
  v3 = [(PUReviewScrubber *)self scrubberDelegate];
  if (v3)
  {
    v5 = v3;
    if (objc_opt_respondsToSelector())
    {
      v4 = [(PUReviewScrubber *)self selectedIndexPath];
      [v5 reviewScrubberDidSelectItemAtIndexPath:v4];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_notifyDelegateOfScrub
{
  v3 = [(PUReviewScrubber *)self scrubberDelegate];
  if (v3)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v4 reviewScrubberDidScrub:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_updateToSelectedIndexPath:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!self->_selectedIndexPath || (v6 = [v5 compare:?], v7 = v8, v6))
  {
    objc_storeStrong(&self->_selectedIndexPath, a3);
    v7 = v8;
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (CGPoint)contentOffsetForItemAtIndex:(int64_t)a3 ofScrollView:(id)a4
{
  v6 = a4;
  [v6 contentInset];
  v8 = v7;
  v10 = v9;
  [v6 contentOffset];
  v12 = v11;

  [(PUReviewScrubber *)self itemSize];
  v14 = (v13 + 3.0) * a3 - v10;
  v15 = v12 - v8;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)contentOffsetForIndexPath:(id)a3 inCollectionView:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 contentInset];
  v9 = v8;
  v11 = v10;
  [v7 contentOffset];
  v13 = v12;
  v14 = [v7 collectionViewLayout];
  v15 = [v14 layoutAttributesForItemAtIndexPath:v6];
  v16 = v15;
  if (v15)
  {
    [v15 frame];
    v18 = v17 - v11;
    v19 = v13 - v9;
  }

  else
  {
    v20 = [v6 item];
    if ([v6 section] >= 1)
    {
      v21 = 0;
      do
      {
        v20 += [(PUReviewScrubber *)self collectionView:v7 numberOfItemsInSection:v21++];
      }

      while (v21 < [v6 section]);
    }

    [(PUReviewScrubber *)self contentOffsetForItemAtIndex:v20 ofScrollView:v7];
    v18 = v22;
    v19 = v23;
  }

  v24 = v18;
  v25 = v19;
  result.y = v25;
  result.x = v24;
  return result;
}

- (id)indexPathUnderTickMarkInCollectionView:(id)a3 atContentOffset:(CGPoint)a4
{
  x = a4.x;
  v6 = a3;
  [v6 contentInset];
  v8 = v7;
  v10 = v9;
  v12 = x + v11;
  [v6 bounds];
  v14 = (v13 - (v8 + v10)) * 0.5;
  [(PUReviewScrubber *)self itemSize];
  v16 = v12 + v15 * 0.5;
  [v6 contentSize];
  v18 = v17;
  [(PUReviewScrubber *)self px_screenScale];
  v20 = v18 + -1.0 / v19;
  if (v20 >= v16)
  {
    v20 = v16;
  }

  v21 = fmax(v20, 0.0);
  v22 = [v6 indexPathForItemAtPoint:{v21, v14}];
  if (!v22)
  {
    v22 = [v6 indexPathForItemAtPoint:{v21 + 1.5, v14}];
    if (!v22)
    {
      v22 = [v6 indexPathForItemAtPoint:{v21 + -1.5, v14}];
      if (!v22)
      {
        v22 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
      }
    }
  }

  v23 = v22;

  return v23;
}

- (void)_updateContentOffsetForSelectedIndexPathAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUReviewScrubber *)self _collectionView];
  [(PUReviewScrubber *)self contentOffsetForIndexPath:self->_selectedIndexPath inCollectionView:v5];
  [v5 setContentOffset:v3 animated:?];
}

- (void)_handleTapOnReviewScrubber:(id)a3
{
  v4 = a3;
  v17 = [(PUReviewScrubber *)self _collectionView];
  [v4 locationInView:v17];
  v6 = v5;
  v8 = v7;

  v9 = [(PUReviewScrubber *)self _collectionViewLayout];
  [v17 contentSize];
  v11 = v10;
  [v9 itemsContentInset];
  v14 = v11 - fabs(v13);
  v15 = v6 > fabs(v12) && v6 < v14;
  if (v15 && ([v17 isDecelerating] & 1) == 0)
  {
    v16 = [(PUReviewScrubber *)self _indexPathInCollectionView:v17 closestToPoint:0 excludingIndexPath:v6, v8];
    [(PUReviewScrubber *)self _handleTapAtIndexPath:v16];
  }
}

- (void)_handleTapAtIndexPath:(id)a3
{
  [(PUReviewScrubber *)self _updateToSelectedIndexPath:a3];
  [(PUReviewScrubber *)self _updateContentOffsetForSelectedIndexPathAnimated:1];

  [(PUReviewScrubber *)self _notifyDelegateOfSelection];
}

- (id)_indexPathInCollectionView:(id)a3 closestToPoint:(CGPoint)a4 excludingIndexPath:(id)a5
{
  y = a4.y;
  x = a4.x;
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v8 indexPathForItemAtPoint:{x, y}];
  if (!v10)
  {
    v11 = [v8 visibleCells];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [v8 indexPathForCell:v17];
          if (([v9 isEqual:v18] & 1) == 0)
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

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
  v3 = [(PUReviewScrubber *)self _impactFeedbackBehavior];
  v4 = [v3 isActive];

  if (v4)
  {
    v5 = [(PUReviewScrubber *)self _impactFeedbackBehavior];
    [v5 deactivate];
  }
}

- (void)_playFeedbackIfNeeded
{
  v3 = [(PUReviewScrubber *)self _impactFeedbackBehavior];
  if (v3)
  {
    v9 = v3;
    v4 = [(PUReviewScrubber *)self _collectionView];
    [v4 contentOffset];
    v5 = [(PUReviewScrubber *)self indexPathUnderTickMarkInCollectionView:v4 atContentOffset:?];
    v6 = [(PUReviewScrubber *)self _indexPathForPreviousFeedbackQuery];
    if (!v6 || [v5 compare:v6])
    {
      v7 = [(PUReviewScrubber *)self dataSource];
      v8 = [v7 reviewScrubber:self shouldProvideFeedbackForCellAtIndexPath:v5];

      if (v8)
      {
        [v9 impactOccurred];
      }

      [(PUReviewScrubber *)self _setIndexPathForPreviousFeedbackQuery:v5];
    }

    v3 = v9;
  }
}

- (void)_beginFeedbackInteraction
{
  v3 = [(PUReviewScrubber *)self _impactFeedbackBehavior];
  v4 = [v3 isActive];

  if (v4)
  {
    [(PUReviewScrubber *)self _endFeedbackInteraction];
  }

  v5 = [(PUReviewScrubber *)self _impactFeedbackBehavior];
  [v5 activateWithCompletionBlock:0];
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

- (void)updateWithAbsoluteProgress:(double)a3
{
  if (self->__performingInteractiveUpdate)
  {
    self->__ignoreScrollViewDidScrollUpdate = 1;
    [(PUReviewScrubber *)self itemSize];
    v6 = v5 + 3.0;
    [(UICollectionView *)self->__collectionView contentOffset];
    v8 = v7;
    [(UICollectionView *)self->__collectionView contentInset];
    v10 = v6 * a3 - v9;
    v12 = v8 - v11;
    v13 = [(PUReviewScrubber *)self _collectionView];
    [v13 setContentOffset:{v10, v12}];

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

- (void)setCellAspectRatio:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_cellAspectRatio != v5)
  {
    v12 = v5;
    v5 = [(NSNumber *)v5 isEqual:?];
    v6 = v12;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_cellAspectRatio, a3);
      [(PUReviewScrubber *)self itemSize];
      v8 = v7;
      v10 = v9;
      v11 = [(PUReviewScrubber *)self _collectionViewLayout];
      [v11 setItemSize:{v8, v10}];

      v6 = v12;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)reloadIndexPath:(id)a3 animated:(BOOL)a4
{
  v8 = a3;
  v5 = [(PUReviewScrubber *)self _collectionView];
  v6 = [v5 cellForItemAtIndexPath:v8];

  if (v6)
  {
    v7 = [(PUReviewScrubber *)self scrubberDelegate];
    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v7 reviewScrubber:self willDisplayCell:v6 atIndexPath:v8];
    }
  }
}

- (void)toggleIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PUReviewScrubber *)self _collectionView];
  v8 = [v7 cellForItemAtIndexPath:v6];

  if (v8)
  {
    [v8 setFavorite:objc_msgSend(v8 animated:{"isFavorite") ^ 1, v4}];
  }
}

- (void)reloadData
{
  v2 = [(PUReviewScrubber *)self _collectionView];
  [v2 reloadData];
}

- (void)setSelectedIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_selectedIndexPath != v7)
  {
    v8 = v7;
    objc_storeStrong(&self->_selectedIndexPath, a3);
    [(PUReviewScrubber *)self _updateContentOffsetForSelectedIndexPathAnimated:v4];
    [(PUReviewScrubber *)self _setIndexPathForPreviousFeedbackQuery:v8];
    v7 = v8;
  }
}

- (void)setScrubberCellClass:(Class)a3
{
  if (self->_scrubberCellClass != a3)
  {
    objc_storeStrong(&self->_scrubberCellClass, a3);
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
  v12 = [MEMORY[0x1E69DC888] labelColor];
  v13 = [v12 colorWithAlphaComponent:0.25];
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

- (PUReviewScrubber)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = PUReviewScrubber;
  v3 = [(PUReviewScrubber *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PUReviewScrubber *)v3 _commonPUReviewScrubberInitialization];
    v5 = v4;
  }

  return v4;
}

- (PUReviewScrubber)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PUReviewScrubber;
  v3 = [(PUReviewScrubber *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v13 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)v12 setBackgroundColor:v13];

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