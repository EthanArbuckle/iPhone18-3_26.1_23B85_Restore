@interface PKHorizontalScrollingViewController
- (BOOL)_canReloadViewControllers;
- (PKHorizontalScrollingViewController)init;
- (double)_startOfItemAtIndex:(unint64_t)a3;
- (double)_transitionProgress;
- (id)_dequeueNonVisibleViewControllerForIndex:(unint64_t)a3;
- (id)_dequeueViewControllerForIndex:(unint64_t)a3;
- (id)_recoverUnusedViewController;
- (id)_visibileIndicesAtContentOffset:(CGPoint)a3;
- (unint64_t)_indexAtContentOffset:(CGPoint)a3;
- (void)_layoutCollectionViews;
- (void)_loadDataForContentOffset:(CGPoint)a3;
- (void)_reloadDataForViewControllerAtIndex:(unint64_t)a3 swap:(BOOL)a4;
- (void)_reloadPendingViewControllers;
- (void)_retireViewControllerForIndex:(unint64_t)a3;
- (void)_scrollViewStoppedScrolling;
- (void)_switchPrimaryIndexToIndex:(unint64_t)a3;
- (void)_updateAlphaDuringTransition;
- (void)_updatePrimaryIndex:(int64_t)a3;
- (void)_updateScrollViewContentSize;
- (void)resetVisibleViewControllersWithNewPrimaryIndex:(int64_t)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)updateScrollViewContentOffsetWithNewPrimaryIndex:(int64_t)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKHorizontalScrollingViewController

- (PKHorizontalScrollingViewController)init
{
  v6.receiver = self;
  v6.super_class = PKHorizontalScrollingViewController;
  v2 = [(PKHorizontalScrollingViewController *)&v6 init];
  if (v2)
  {
    v2->_isLowEndDevice = PKIsLowEndDevice();
    v2->_primaryIndex = 0x7FFFFFFFFFFFFFFFLL;
    v3 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    scrollView = v2->_scrollView;
    v2->_scrollView = v3;

    v2->_lockUpdate._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)updateScrollViewContentOffsetWithNewPrimaryIndex:(int64_t)a3
{
  [(PKHorizontalScrollingViewController *)self _updatePrimaryIndex:a3];
  v4 = [(PKHorizontalScrollingViewController *)self viewIfLoaded];
  if (v4)
  {
    v6 = v4;
    [(PKHorizontalScrollingViewController *)self _updateScrollViewContentSize];
    if ([(PKHorizontalScrollingViewController *)self numberOfItems]>= 1)
    {
      scrollView = self->_scrollView;
      [(PKHorizontalScrollingViewController *)self _startOfItemAtIndex:self->_primaryIndex];
      [(UIScrollView *)scrollView setContentOffset:?];
    }

    [v6 setNeedsLayout];
    v4 = v6;
  }
}

- (void)viewDidLoad
{
  v50 = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = PKHorizontalScrollingViewController;
  [(PKHorizontalScrollingViewController *)&v47 viewDidLoad];
  v3 = [(PKHorizontalScrollingViewController *)self emptyViewControllers];
  v4 = [v3 count];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v4];
  indicesToViewControllerMapping = self->_indicesToViewControllerMapping;
  self->_indicesToViewControllerMapping = v5;

  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v4];
  nonVisibleIndicesToViewControllerMapping = self->_nonVisibleIndicesToViewControllerMapping;
  self->_nonVisibleIndicesToViewControllerMapping = v7;

  v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v4];
  unusedViewControllers = self->_unusedViewControllers;
  self->_unusedViewControllers = v9;

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  pendingDataCollectionViewUpdates = self->_pendingDataCollectionViewUpdates;
  self->_pendingDataCollectionViewUpdates = v11;

  [(PKHorizontalScrollingViewController *)self footerViewContentHeight];
  v14 = v13;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v15 = v3;
  v16 = [v15 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v44;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v44 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v43 + 1) + 8 * i);
        [v20 setContentInset:{0.0, 0.0, v14, 0.0}];
        v21 = [(UIScrollView *)self->_scrollView panGestureRecognizer];
        [v20 setGestureRecognizerRequiredToFail:v21];

        v22 = [v20 view];
        [v22 setHidden:1];

        [(NSMutableSet *)self->_unusedViewControllers addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v17);
  }

  [(PKHorizontalScrollingViewController *)self _updatePrimaryIndex:[(PKHorizontalScrollingViewController *)self startingIndex]];
  v23 = [(PKHorizontalScrollingViewController *)self view];
  [v23 addSubview:self->_scrollView];
  v24 = +[PKDashboardViewController backgroundColor];
  [v23 setBackgroundColor:v24];

  v25 = [(PKHorizontalScrollingViewController *)self footerView];

  if (v25)
  {
    v26 = [(PKHorizontalScrollingViewController *)self footerView];
    [v23 addSubview:v26];
  }

  v38 = v23;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v27 = self->_unusedViewControllers;
  v28 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v40;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v39 + 1) + 8 * j);
        [(PKHorizontalScrollingViewController *)self addChildViewController:v32];
        scrollView = self->_scrollView;
        v34 = [v32 view];
        [(UIScrollView *)scrollView addSubview:v34];

        [v32 didMoveToParentViewController:self];
      }

      v29 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v29);
  }

  [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
  [(UIScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [v38 bounds];
  self->_currentSize.width = v35;
  self->_currentSize.height = v36;
  [(PKHorizontalScrollingViewController *)self _updateScrollViewContentSize];
  if ([(PKHorizontalScrollingViewController *)self numberOfItems]>= 1)
  {
    v37 = self->_scrollView;
    [(PKHorizontalScrollingViewController *)self _startOfItemAtIndex:self->_primaryIndex];
    [(UIScrollView *)v37 setContentOffset:?];
  }

  [(UIScrollView *)self->_scrollView contentOffset];
  [(PKHorizontalScrollingViewController *)self _loadDataForContentOffset:?];
}

- (void)viewWillLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = PKHorizontalScrollingViewController;
  [(PKHorizontalScrollingViewController *)&v16 viewWillLayoutSubviews];
  v3 = [(PKHorizontalScrollingViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  self->_currentSize.width = v8;
  self->_currentSize.height = v10;
  [(PKHorizontalScrollingViewController *)self footerViewContentHeight];
  v13 = v12;
  v14 = [(PKHorizontalScrollingViewController *)self footerView];

  if (v14)
  {
    v15 = [(PKHorizontalScrollingViewController *)self footerView];
    [v15 setFrame:{0.0, v7 + v11 - v13, v9, v13}];
  }

  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  if (!CGRectEqualToRect(v17, self->_previousBounds))
  {
    [(UIScrollView *)self->_scrollView setFrame:v5, v7, v9, v11];
    [(PKHorizontalScrollingViewController *)self _updateScrollViewContentSize];
  }

  [(PKHorizontalScrollingViewController *)self _layoutCollectionViews];
  self->_previousBounds.origin.x = v5;
  self->_previousBounds.origin.y = v7;
  self->_previousBounds.size.width = v9;
  self->_previousBounds.size.height = v11;
}

- (void)_layoutCollectionViews
{
  v3 = [(PKHorizontalScrollingViewController *)self viewIfLoaded];

  if (v3)
  {
    nonVisibleIndicesToViewControllerMapping = self->_nonVisibleIndicesToViewControllerMapping;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__PKHorizontalScrollingViewController__layoutCollectionViews__block_invoke;
    v7[3] = &unk_1E8011A40;
    v7[4] = self;
    [(NSMutableDictionary *)nonVisibleIndicesToViewControllerMapping enumerateKeysAndObjectsUsingBlock:v7];
    visibleIndices = self->_visibleIndices;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__PKHorizontalScrollingViewController__layoutCollectionViews__block_invoke_2;
    v6[3] = &unk_1E8011A68;
    v6[4] = self;
    [(NSIndexSet *)visibleIndices enumerateIndexesUsingBlock:v6];
  }
}

void __61__PKHorizontalScrollingViewController__layoutCollectionViews__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = [v5 view];

  [*(a1 + 32) _startOfItemAtIndex:v6];
  [v7 setFrame:?];
}

void __61__PKHorizontalScrollingViewController__layoutCollectionViews__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 1120);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v15 = [v4 objectForKey:v5];

  v6 = [v15 view];
  [*(a1 + 32) _startOfItemAtIndex:a2];
  v8 = v7;
  v10 = *(*(a1 + 32) + 1080);
  v9 = *(*(a1 + 32) + 1088);
  [v6 frame];
  v18.origin.x = v11;
  v18.origin.y = v12;
  v18.size.width = v13;
  v18.size.height = v14;
  v17.origin.y = 0.0;
  v17.origin.x = v8;
  v17.size.width = v10;
  v17.size.height = v9;
  if (!CGRectEqualToRect(v17, v18))
  {
    [v6 setFrame:{v8, 0.0, v10, v9}];
  }
}

- (void)_updateScrollViewContentSize
{
  v3 = [(PKHorizontalScrollingViewController *)self viewIfLoaded];
  if (v3)
  {
    v12 = v3;
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v8 = [(PKHorizontalScrollingViewController *)self numberOfItems];
    v9 = v5 * v8;
    if (v8 >= 2)
    {
      v10 = (v8 - 1);
      [(PKHorizontalScrollingViewController *)self _negativeGap];
      v9 = v9 - v10 * v11;
    }

    [(UIScrollView *)self->_scrollView setContentSize:v9, v7];
    v3 = v12;
  }
}

- (void)_scrollViewStoppedScrolling
{
  scrollTimer = self->_scrollTimer;
  if (scrollTimer)
  {
    dispatch_source_cancel(scrollTimer);
  }

  [(PKHorizontalScrollingViewController *)self _reloadPendingViewControllers];
}

- (void)resetVisibleViewControllersWithNewPrimaryIndex:(int64_t)a3
{
  indicesToViewControllerMapping = self->_indicesToViewControllerMapping;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_primaryIndex];
  v7 = [(NSMutableDictionary *)indicesToViewControllerMapping objectForKey:v6];

  v8 = self->_indicesToViewControllerMapping;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __86__PKHorizontalScrollingViewController_resetVisibleViewControllersWithNewPrimaryIndex___block_invoke;
  v32[3] = &unk_1E8011A90;
  v9 = v7;
  v33 = v9;
  v34 = self;
  [(NSMutableDictionary *)v8 enumerateKeysAndObjectsUsingBlock:v32];
  [(NSMutableDictionary *)self->_indicesToViewControllerMapping removeAllObjects];
  nonVisibleIndicesToViewControllerMapping = self->_nonVisibleIndicesToViewControllerMapping;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __86__PKHorizontalScrollingViewController_resetVisibleViewControllersWithNewPrimaryIndex___block_invoke_2;
  v31[3] = &unk_1E8011A40;
  v31[4] = self;
  [(NSMutableDictionary *)nonVisibleIndicesToViewControllerMapping enumerateKeysAndObjectsUsingBlock:v31];
  [(NSMutableDictionary *)self->_nonVisibleIndicesToViewControllerMapping removeAllObjects];
  [(PKHorizontalScrollingViewController *)self _updatePrimaryIndex:a3];
  v11 = self->_indicesToViewControllerMapping;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_primaryIndex];
  [(NSMutableDictionary *)v11 setObject:v9 forKey:v12];

  scrollView = self->_scrollView;
  v14 = [v9 view];
  [(UIScrollView *)scrollView bringSubviewToFront:v14];

  v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:self->_primaryIndex];
  visibleIndices = self->_visibleIndices;
  self->_visibleIndices = v15;

  [(PKHorizontalScrollingViewController *)self _updateScrollViewContentSize];
  v17 = self->_scrollView;
  [(PKHorizontalScrollingViewController *)self _startOfItemAtIndex:self->_primaryIndex];
  [(UIScrollView *)v17 setContentOffset:?];
  v18 = [(PKHorizontalScrollingViewController *)self view];
  [v18 setNeedsLayout];

  if ([(PKHorizontalScrollingViewController *)self numberOfItems]<= 1)
  {
    [(UIScrollView *)self->_scrollView contentOffset];
    [(PKHorizontalScrollingViewController *)self _loadDataForContentOffset:?];
  }

  [(PKHorizontalScrollingViewController *)self _reloadDataForViewControllerAtIndex:self->_primaryIndex swap:1];
  v19 = [(PKHorizontalScrollingViewController *)self footerView];

  if (v19)
  {
    v20 = [(PKHorizontalScrollingViewController *)self footerView];
    v21 = [v9 footer];
    [v20 setCurrentFooter:v21];

    v22 = [(PKHorizontalScrollingViewController *)self footerView];
    [v22 setNextFooter:0];

    v23 = [(PKHorizontalScrollingViewController *)self footerView];
    [v23 setTransitionProgress:0.0];
  }

  v24 = [v9 collectionView];
  [v24 contentOffset];
  v26 = v25;
  v28 = v27;
  [v24 pkui_naturalRestingBounds];
  if (v26 != v30 || v28 != v29)
  {
    [v24 setContentOffset:1 animated:?];
  }
}

void __86__PKHorizontalScrollingViewController_resetVisibleViewControllersWithNewPrimaryIndex___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 32) != a3)
  {
    v4 = *(*(a1 + 40) + 1024);
    v6 = a3;
    [v4 addObject:v6];
    v5 = [v6 view];
    [v5 setHidden:1];

    [v6 setVisible:0];
  }
}

void __86__PKHorizontalScrollingViewController_resetVisibleViewControllersWithNewPrimaryIndex___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a1 + 32) + 1024);
  v5 = a3;
  [v3 addObject:v5];
  v4 = [v5 view];
  [v4 setHidden:1];

  [v5 setVisible:0];
}

- (void)_reloadPendingViewControllers
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = self->_pendingDataCollectionViewUpdates;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_indicesToViewControllerMapping objectForKey:v8, v21];
        if (!v9)
        {
          v9 = [(NSMutableDictionary *)self->_nonVisibleIndicesToViewControllerMapping objectForKey:v8];
          if (!v9)
          {
            continue;
          }
        }

        v10 = v9;
        v11 = [(NSMutableDictionary *)self->_pendingDataCollectionViewUpdates objectForKey:v8];
        [v10 setData:v11 swap:0];
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_pendingDataCollectionViewUpdates removeAllObjects];
  primaryIndex = self->_primaryIndex;
  v13 = primaryIndex - 2;
  if (primaryIndex >= 2)
  {
    v14 = [(PKHorizontalScrollingViewController *)self cachedDataAtIndex:primaryIndex - 2];
    if (v14 && [(PKHorizontalScrollingViewController *)self _canReloadViewControllers])
    {
      v15 = [(PKHorizontalScrollingViewController *)self _dequeueNonVisibleViewControllerForIndex:v13];
      [v15 setData:v14 swap:0];
    }
  }

  v16 = [(PKHorizontalScrollingViewController *)self numberOfItems];
  v17 = self->_primaryIndex;
  v18 = v17 + 2;
  if (v16 > v17 + 2)
  {
    v19 = [(PKHorizontalScrollingViewController *)self cachedDataAtIndex:v17 + 2];
    if (v19 && [(PKHorizontalScrollingViewController *)self _canReloadViewControllers])
    {
      v20 = [(PKHorizontalScrollingViewController *)self _dequeueNonVisibleViewControllerForIndex:v18];
      [v20 setData:v19 swap:0];
    }
  }

  [(PKHorizontalScrollingViewController *)self prefetchDataIfNecessary];
}

- (void)_updateAlphaDuringTransition
{
  [(UIScrollView *)self->_scrollView contentOffset];
  v4 = v3;
  [(PKHorizontalScrollingViewController *)self _startOfItemAtIndex:self->_primaryIndex];
  v6 = v5;
  [(PKHorizontalScrollingViewController *)self _transitionProgress];
  v8 = v7;
  visibleIndices = self->_visibleIndices;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__PKHorizontalScrollingViewController__updateAlphaDuringTransition__block_invoke;
  v18[3] = &unk_1E8011AB8;
  v18[4] = self;
  *&v18[5] = 1.0 - v7;
  *&v18[6] = v7;
  [(NSIndexSet *)visibleIndices enumerateIndexesUsingBlock:v18];
  v10 = [(PKHorizontalScrollingViewController *)self footerView];

  if (v10)
  {
    if (v4 >= v6)
    {
      if (v4 <= v6)
      {
        goto LABEL_8;
      }

      v13 = [(PKHorizontalScrollingViewController *)self numberOfItems];
      v11 = self->_primaryIndex + 1;
      if (v13 <= v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      primaryIndex = self->_primaryIndex;
      v11 = primaryIndex - 1;
      if (primaryIndex < 1)
      {
        goto LABEL_8;
      }
    }

    v14 = [(PKHorizontalScrollingViewController *)self _dequeueViewControllerForIndex:v11];
    v15 = [v14 footer];

    v16 = [(PKHorizontalScrollingViewController *)self footerView];
    [v16 setNextFooter:v15];

LABEL_8:
    v17 = [(PKHorizontalScrollingViewController *)self footerView];
    [v17 setTransitionProgress:v8];
  }
}

void __67__PKHorizontalScrollingViewController__updateAlphaDuringTransition__block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = [*(a1 + 32) _dequeueViewControllerForIndex:a2];
  v4 = *(a1 + 32);
  if (v4[138] == a2)
  {
    v5 = [v4 footerView];

    if (v5)
    {
      v6 = [*(a1 + 32) footerView];
      v7 = [v9 footer];
      [v6 setCurrentFooter:v7];
    }

    v8 = 40;
  }

  else
  {
    v8 = 48;
  }

  [v9 setAlphaTransition:*(a1 + v8)];
}

- (void)_loadDataForContentOffset:(CGPoint)a3
{
  v4 = [(PKHorizontalScrollingViewController *)self _visibileIndicesAtContentOffset:a3.x, a3.y];
  if (!self->_visibleIndices)
  {
    visibleIndices = 0;
    goto LABEL_5;
  }

  if ((PKEqualObjects() & 1) == 0)
  {
    visibleIndices = self->_visibleIndices;
LABEL_5:
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__PKHorizontalScrollingViewController__loadDataForContentOffset___block_invoke;
    v13[3] = &unk_1E8011AE0;
    v6 = v4;
    v14 = v6;
    v7 = [(NSIndexSet *)visibleIndices indexesPassingTest:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__PKHorizontalScrollingViewController__loadDataForContentOffset___block_invoke_2;
    v12[3] = &unk_1E8011A68;
    v12[4] = self;
    [v7 enumerateIndexesUsingBlock:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__PKHorizontalScrollingViewController__loadDataForContentOffset___block_invoke_3;
    v11[3] = &unk_1E8011AE0;
    v11[4] = self;
    v8 = [v6 indexesPassingTest:v11];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PKHorizontalScrollingViewController__loadDataForContentOffset___block_invoke_4;
    v10[3] = &unk_1E8011A68;
    v10[4] = self;
    [v8 enumerateIndexesUsingBlock:v10];
    objc_storeStrong(&self->_visibleIndices, v4);
    v9 = [(PKHorizontalScrollingViewController *)self view];
    [v9 setNeedsLayout];
  }

  [(PKHorizontalScrollingViewController *)self _updateAlphaDuringTransition];
}

void *__65__PKHorizontalScrollingViewController__loadDataForContentOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[138] != a2)
  {
    return [result _retireViewControllerForIndex:a2];
  }

  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;
  [(PKHorizontalScrollingViewController *)self _startOfItemAtIndex:self->_primaryIndex];
  v10 = v9;
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKHorizontalScrollingViewController_scrollViewDidScroll___block_invoke;
  aBlock[3] = &unk_1E8011B08;
  objc_copyWeak(&v36, location);
  v11 = _Block_copy(aBlock);
  if (self->_hasPrefetchedLeft || v6 > v10)
  {
    if (!self->_hasPrefetchedRight && v6 >= v10)
    {
      v17 = 1;
      self->_hasPrefetchedRight = 1;
      v18 = 2;
      do
      {
        v19 = v17;
        v20 = self->_primaryIndex + v18;
        if (v20 >= [(PKHorizontalScrollingViewController *)self numberOfItems])
        {
          break;
        }

        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __59__PKHorizontalScrollingViewController_scrollViewDidScroll___block_invoke_4;
        v29[3] = &unk_1E8011B30;
        v30 = v11;
        v31 = v20;
        [(PKHorizontalScrollingViewController *)self fetchDataAtIndex:v20 completion:v29];

        v17 = 0;
        v18 = 3;
      }

      while ((v19 & 1) != 0);
    }
  }

  else
  {
    v12 = 0;
    v13 = 1;
    self->_hasPrefetchedLeft = 1;
    do
    {
      v14 = v13;
      v15 = self->_primaryIndex + v12;
      v16 = v15 - 2;
      if (v15 < 2)
      {
        break;
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __59__PKHorizontalScrollingViewController_scrollViewDidScroll___block_invoke_3;
      v32[3] = &unk_1E8011B30;
      v33 = v11;
      v34 = v16;
      [(PKHorizontalScrollingViewController *)self fetchDataAtIndex:v16 completion:v32];

      v13 = 0;
      v12 = -1;
    }

    while ((v14 & 1) != 0);
  }

  [(PKHorizontalScrollingViewController *)self _loadDataForContentOffset:v6, v8];
  scrollTimer = self->_scrollTimer;
  if (scrollTimer)
  {
    dispatch_source_cancel(scrollTimer);
  }

  v22 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v23 = self->_scrollTimer;
  self->_scrollTimer = v22;

  v24 = self->_scrollTimer;
  v25 = dispatch_time(0, 300000000);
  dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v26 = self->_scrollTimer;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __59__PKHorizontalScrollingViewController_scrollViewDidScroll___block_invoke_5;
  v27[3] = &unk_1E8010998;
  objc_copyWeak(&v28, location);
  dispatch_source_set_event_handler(v26, v27);
  dispatch_resume(self->_scrollTimer);
  objc_destroyWeak(&v28);

  objc_destroyWeak(&v36);
  objc_destroyWeak(location);
}

void __59__PKHorizontalScrollingViewController_scrollViewDidScroll___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKHorizontalScrollingViewController_scrollViewDidScroll___block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __59__PKHorizontalScrollingViewController_scrollViewDidScroll___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v6 = WeakRetained;
      [WeakRetained[129] setObject:v4 forKey:*(a1 + 40)];
      v5 = [v6 _canReloadViewControllers];
      v3 = v6;
      if (v5)
      {
        [v6 _reloadPendingViewControllers];
        v3 = v6;
      }
    }
  }
}

void __59__PKHorizontalScrollingViewController_scrollViewDidScroll___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v2 numberWithInteger:v4];
  (*(v3 + 16))(v3, v5, v6);
}

void __59__PKHorizontalScrollingViewController_scrollViewDidScroll___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v2 numberWithInteger:v4];
  (*(v3 + 16))(v3, v5, v6);
}

void __59__PKHorizontalScrollingViewController_scrollViewDidScroll___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    dispatch_source_cancel(WeakRetained[137]);
    v2 = v3[137];
    v3[137] = 0;

    [(dispatch_source_t *)v3 _reloadPendingViewControllers];
    WeakRetained = v3;
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  self->_isDragging = 0;
  [(UIScrollView *)self->_scrollView contentOffset:a3];
  v9 = [(PKHorizontalScrollingViewController *)self _indexAtContentOffset:v8 + self->_currentSize.width * 0.5];
  v10 = v9;
  if (v9 == self->_primaryIndex)
  {
    v11 = v9;
    if (x <= 0.0 || (v10 = v9 + 1, v9 + 1 >= [(PKHorizontalScrollingViewController *)self numberOfItems]))
    {
      v13 = x < 0.0 && v11 != 0;
      v10 = v11 - v13;
    }
  }

  [(PKHorizontalScrollingViewController *)self _startOfItemAtIndex:v10];
  a5->x = v14;
  a5->y = 0.0;

  [(PKHorizontalScrollingViewController *)self _switchPrimaryIndexToIndex:v10];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  if (!a4 && self->_isScrolling)
  {
    self->_isScrolling = 0;
    v7 = v6;
    [(PKHorizontalScrollingViewController *)self _scrollViewStoppedScrolling];
    v6 = v7;
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  if (self->_isScrolling)
  {
    self->_isScrolling = 0;
    [(PKHorizontalScrollingViewController *)self _scrollViewStoppedScrolling];
  }
}

- (id)_dequeueViewControllerForIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)self->_indicesToViewControllerMapping objectForKey:v5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_nonVisibleIndicesToViewControllerMapping objectForKey:v5];
    [(NSMutableDictionary *)self->_nonVisibleIndicesToViewControllerMapping removeObjectForKey:v5];
    if (!v7)
    {
      v7 = [(PKHorizontalScrollingViewController *)self _recoverUnusedViewController];
      v8 = [(PKHorizontalScrollingViewController *)self view];
      [v8 setNeedsLayout];

      if (!v7)
      {
        goto LABEL_8;
      }
    }
  }

  [(NSMutableDictionary *)self->_indicesToViewControllerMapping setObject:v7 forKey:v5];
  if (self->_primaryIndex == a3)
  {
    scrollView = self->_scrollView;
    v10 = [v7 view];
    [(UIScrollView *)scrollView bringSubviewToFront:v10];
  }

  [v7 setVisible:1];
LABEL_8:

  return v7;
}

- (id)_dequeueNonVisibleViewControllerForIndex:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)self->_indicesToViewControllerMapping objectForKey:v4];

  if (v5)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v7 = [(NSMutableDictionary *)self->_nonVisibleIndicesToViewControllerMapping objectForKey:v4];
  if (v7)
  {
    v6 = v7;
LABEL_6:
    [(NSMutableDictionary *)self->_nonVisibleIndicesToViewControllerMapping setObject:v6 forKey:v4];
    [v6 setVisible:0];
    [(PKHorizontalScrollingViewController *)self didDequeueViewController:v6];
    goto LABEL_7;
  }

  v6 = [(PKHorizontalScrollingViewController *)self _recoverUnusedViewController];
  if (v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  v8 = [(PKHorizontalScrollingViewController *)self view];
  [v8 setNeedsLayout];

LABEL_8:

  return v6;
}

- (id)_recoverUnusedViewController
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableSet *)self->_unusedViewControllers anyObject];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 view];
    [v5 setHidden:0];

    [(NSMutableSet *)self->_unusedViewControllers removeObject:v4];
    v6 = v4;
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_nonVisibleIndicesToViewControllerMapping allKeys];
    v8 = [v7 firstObject];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 1128;
    obj = self->_nonVisibleIndicesToViewControllerMapping;
    v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [v14 integerValue];
          primaryIndex = self->_primaryIndex;
          v17 = [v14 integerValue];
          v18 = self->_primaryIndex;
          v19 = v18 - v17;
          v20 = v17 - v18;
          if (v15 >= primaryIndex)
          {
            v21 = v20;
          }

          else
          {
            v21 = v19;
          }

          if (v21 > v11)
          {
            v22 = v14;

            v8 = v22;
            v11 = v21;
          }
        }

        v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }

    if (v8)
    {
      v23 = [*(&self->super.super.super.isa + v25) objectForKey:v8];
      [*(&self->super.super.super.isa + v25) removeObjectForKey:v8];
    }

    else
    {
      v23 = 0;
    }

    v6 = v23;
  }

  return v6;
}

- (void)_retireViewControllerForIndex:(unint64_t)a3
{
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v4 = [(NSMutableDictionary *)self->_indicesToViewControllerMapping objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 setVisible:0];
    [(NSMutableDictionary *)self->_indicesToViewControllerMapping removeObjectForKey:v7];
    v6 = [(NSMutableDictionary *)self->_nonVisibleIndicesToViewControllerMapping objectForKey:v7];
    if (v6)
    {
      [(NSMutableDictionary *)self->_nonVisibleIndicesToViewControllerMapping removeObjectForKey:v7];
      [(NSMutableSet *)self->_unusedViewControllers addObject:v6];
    }

    [(NSMutableDictionary *)self->_nonVisibleIndicesToViewControllerMapping setObject:v5 forKey:v7];
  }
}

- (id)_visibileIndicesAtContentOffset:(CGPoint)a3
{
  x = a3.x;
  width = self->_currentSize.width;
  [(PKHorizontalScrollingViewController *)self _negativeGap:a3.x];
  v7 = v6;
  v8 = [(PKHorizontalScrollingViewController *)self numberOfItems];
  if (v8)
  {
    v9 = v8;
    v10 = x / (width - v7);
    v11 = vcvtms_u32_f32(v10);
    if (v8 <= v11)
    {
      v12 = v8 - 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndex:v12];
    if (v12)
    {
      [(PKHorizontalScrollingViewController *)self _endOfItemAtIndex:v12 - 1];
      if (v14 > x)
      {
        [v13 addIndex:v12 - 1];
      }
    }

    v15 = v12 + 1;
    if (v15 < v9)
    {
      do
      {
        [(PKHorizontalScrollingViewController *)self _startOfItemAtIndex:v15];
        if (v16 <= x)
        {
          break;
        }

        [(PKHorizontalScrollingViewController *)self _startOfItemAtIndex:v15];
        if (v17 >= x + self->_currentSize.width)
        {
          break;
        }

        [v13 addIndex:v15++];
      }

      while (v9 != v15);
    }

    if (self->_primaryIndex != 0x7FFFFFFFFFFFFFFFLL && ([v13 containsIndex:?] & 1) == 0)
    {
      [v13 addIndex:self->_primaryIndex];
    }

    v18 = [v13 copy];
  }

  else
  {
    v18 = objc_alloc_init(MEMORY[0x1E696AC90]);
  }

  return v18;
}

- (unint64_t)_indexAtContentOffset:(CGPoint)a3
{
  x = a3.x;
  width = self->_currentSize.width;
  [(PKHorizontalScrollingViewController *)self _negativeGap:a3.x];
  *&v5 = x / (width - v5);
  return vcvtms_u32_f32(*&v5);
}

- (double)_startOfItemAtIndex:(unint64_t)a3
{
  v3 = a3;
  width = self->_currentSize.width;
  [(PKHorizontalScrollingViewController *)self _negativeGap];
  return (width - v5) * v3;
}

- (double)_transitionProgress
{
  [(PKHorizontalScrollingViewController *)self _startOfItemAtIndex:self->_primaryIndex];
  v4 = v3;
  [(UIScrollView *)self->_scrollView contentOffset];
  v6 = vabdd_f64(v4, v5);
  width = self->_currentSize.width;
  [(PKHorizontalScrollingViewController *)self _negativeGap];
  return fmax(fmin(v6 / (width - v8), 1.0), 0.0);
}

- (void)_switchPrimaryIndexToIndex:(unint64_t)a3
{
  if (self->_primaryIndex != a3)
  {
    self->_hasPrefetchedLeft = 0;
    self->_hasPrefetchedRight = 0;
    indicesToViewControllerMapping = self->_indicesToViewControllerMapping;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v7 = [(NSMutableDictionary *)indicesToViewControllerMapping objectForKey:v6];

    [(PKHorizontalScrollingViewController *)self _updatePrimaryIndex:a3];
    v8 = self->_indicesToViewControllerMapping;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_primaryIndex];
    v10 = [(NSMutableDictionary *)v8 objectForKey:v9];

    scrollView = self->_scrollView;
    v12 = [v10 view];
    [(UIScrollView *)scrollView bringSubviewToFront:v12];

    v13 = [(PKHorizontalScrollingViewController *)self footerView];

    if (v13)
    {
      v14 = [(PKHorizontalScrollingViewController *)self footerView];
      v15 = [v10 footer];
      [v14 setCurrentFooter:v15];

      v16 = [(PKHorizontalScrollingViewController *)self footerView];
      v17 = [v7 footer];
      [v16 setNextFooter:v17];
    }

    v18 = self->_indicesToViewControllerMapping;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__PKHorizontalScrollingViewController__switchPrimaryIndexToIndex___block_invoke;
    v20[3] = &unk_1E8011A40;
    v20[4] = self;
    [(NSMutableDictionary *)v18 enumerateKeysAndObjectsUsingBlock:v20];
    v19 = [(PKHorizontalScrollingViewController *)self view];
    [v19 setNeedsLayout];
  }
}

void __66__PKHorizontalScrollingViewController__switchPrimaryIndexToIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v13 = [a2 integerValue] == *(*(a1 + 32) + 1104);
  v5 = v14;
  if (!v13)
  {
    v6 = [v14 collectionView];
    [v6 contentOffset];
    v8 = v7;
    v10 = v9;
    [v6 pkui_naturalRestingBounds];
    v13 = v8 == v12 && v10 == v11;
    if (!v13)
    {
      [v6 setContentOffset:1 animated:?];
    }

    v5 = v14;
  }
}

- (void)_updatePrimaryIndex:(int64_t)a3
{
  if (self->_primaryIndex != a3)
  {
    self->_primaryIndex = a3;
    [(PKHorizontalScrollingViewController *)self didMoveToPrimaryIndex:?];
  }
}

- (void)_reloadDataForViewControllerAtIndex:(unint64_t)a3 swap:(BOOL)a4
{
  v4 = a4;
  v7 = [(PKHorizontalScrollingViewController *)self _dequeueViewControllerForIndex:?];
  if (v7)
  {
    v8 = [(PKHorizontalScrollingViewController *)self cachedDataAtIndex:a3];
    if (v8 && !self->_isLowEndDevice)
    {
      [v7 setData:v8 swap:v4];
      v11 = [(PKHorizontalScrollingViewController *)self footerView];
      if (v11)
      {
        primaryIndex = self->_primaryIndex;

        if (primaryIndex == a3)
        {
          v13 = [(PKHorizontalScrollingViewController *)self footerView];
          v14 = [v7 footer];
          [v13 setCurrentFooter:v14];
        }
      }
    }

    else
    {
      v9 = [v7 data];
      v10 = [(PKHorizontalScrollingViewController *)self loadingDataObjectWithCurrentData:v9 index:a3 swap:v4];

      if (v10)
      {
        [v7 setData:v10 swap:0];
      }

      objc_initWeak(&location, self);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __80__PKHorizontalScrollingViewController__reloadDataForViewControllerAtIndex_swap___block_invoke;
      v15[3] = &unk_1E8011B80;
      objc_copyWeak(v16, &location);
      v16[1] = a3;
      v15[4] = self;
      v17 = v4;
      [(PKHorizontalScrollingViewController *)self fetchDataAtIndex:a3 completion:v15];
      objc_destroyWeak(v16);
      objc_destroyWeak(&location);
    }
  }
}

void __80__PKHorizontalScrollingViewController__reloadDataForViewControllerAtIndex_swap___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKHorizontalScrollingViewController__reloadDataForViewControllerAtIndex_swap___block_invoke_2;
  block[3] = &unk_1E8011B58;
  objc_copyWeak(v8, (a1 + 40));
  v8[1] = *(a1 + 48);
  v4 = *(a1 + 32);
  v9 = *(a1 + 56);
  block[4] = v4;
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v8);
}

void __80__PKHorizontalScrollingViewController__reloadDataForViewControllerAtIndex_swap___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
    v4 = [v7[140] objectForKey:v3];
    if (!v4)
    {
      v4 = [v7[141] objectForKey:v3];
      if (!v4)
      {
        goto LABEL_12;
      }
    }

    v5 = v4;
    if (*(a1 + 64))
    {
      v6 = 1;
    }

    else if (*(a1 + 56) == *(*(a1 + 32) + 1104))
    {
      v6 = 0;
    }

    else
    {
      if (![v7 _canReloadViewControllers])
      {
        [v7[129] setObject:*(a1 + 40) forKey:v3];
        goto LABEL_11;
      }

      v6 = *(a1 + 64);
    }

    [v5 setData:*(a1 + 40) swap:v6 & 1];
LABEL_11:

LABEL_12:
    WeakRetained = v7;
  }
}

- (BOOL)_canReloadViewControllers
{
  if (self->_isScrolling)
  {
    return !self->_isLowEndDevice && self->_isDragging;
  }

  else
  {
    return 1;
  }
}

@end