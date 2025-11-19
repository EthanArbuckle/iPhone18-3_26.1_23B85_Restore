@interface _TVStackCollectionViewController
- (BOOL)_updateWithCollectionListElement:(id)a3 autoHighlightIndexPath:(id *)a4;
- (CGSize)_maxContentSize;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (_TVStackCollectionViewControllerDelegate)delegate;
- (double)_maxViewWidth;
- (id)_needsMoreTargetElement;
- (id)_viewControllerWithElement:(id)a3 existingController:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (void)_adjustedContentOffsetForRowIndex:(int64_t)a3 targetContentOffset:(CGPoint *)a4;
- (void)_buildStackSections;
- (void)_configureBackgroundTintView;
- (void)_updateBackgroundTintView;
- (void)_updateBackgroundTintViewEffects;
- (void)_updateFirstItemRowIndexes;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)loadView;
- (void)preloadCellsInRect:(CGRect)a3;
- (void)resetLastFocusedIndexPath;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setDelegate:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateWithViewElement:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation _TVStackCollectionViewController

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToStackCollectionViewControllerScrollViewDidScroll = objc_opt_respondsToSelector() & 1;
  }
}

- (void)updateWithViewElement:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_viewElement, a3);
  v6 = [(NSArray *)self->_stackRows count];
  v7 = [(_TVStackCollectionViewController *)self viewElement];
  v32 = 0;
  v8 = [(_TVStackCollectionViewController *)self _updateWithCollectionListElement:v7 autoHighlightIndexPath:&v32];
  v9 = v32;
  v10 = v32;

  [(_TVStackCollectionViewController *)self _configureBackgroundTintView];
  if (![(_TVStackCollectionViewController *)self isViewLoaded])
  {
    v13 = v10;
    lastFocusedIndexPath = self->_lastFocusedIndexPath;
    self->_lastFocusedIndexPath = v13;
LABEL_18:

    goto LABEL_19;
  }

  if (v10)
  {
    objc_storeStrong(&self->_lastFocusedIndexPath, v9);
  }

  v11 = [(_TVStackCollectionViewController *)self collectionView];
  v12 = v11;
  if (v8)
  {
    [v11 reloadData];
  }

  else
  {
    v15 = [v11 collectionViewLayout];
    [v15 invalidateLayout];
  }

  if (v10)
  {
    v16 = [(_TVStackCollectionViewController *)self collectionView];
    v17 = [v16 tv_isFocusOnNonOwnedCell];

    if ((v17 & 1) == 0)
    {
      [(_TVStackCollectionViewController *)self setNeedsFocusUpdate];
    }

    v18 = [(_TVStackCollectionViewController *)self collectionView];
    [v18 scrollToItemAtIndexPath:v10 atScrollPosition:2 animated:1];
  }

  v19 = self->_lastFocusedIndexPath;
  if (v19)
  {
    v20 = [(NSIndexPath *)v19 section];
    if (v20 < [(NSArray *)self->_stackSections count])
    {
      v21 = [(_TVStackCollectionViewController *)self collectionView];
      [v21 contentOffset];
      v30 = v22;
      v31 = v23;

      v24 = [(NSArray *)self->_stackSections objectAtIndex:v20];
      -[_TVStackCollectionViewController _adjustedContentOffsetForRowIndex:targetContentOffset:](self, "_adjustedContentOffsetForRowIndex:targetContentOffset:", [v24 firstItemRowIndex], &v30);
      v25 = [(_TVStackCollectionViewController *)self collectionView];
      [v25 setContentOffset:{v30, v31}];
    }
  }

  needsMoreContentEvaluator = self->_needsMoreContentEvaluator;
  v27 = [(_TVStackCollectionViewController *)self _needsMoreTargetElement];
  [(_TVNeedsMoreContentEvaluator *)needsMoreContentEvaluator setViewElement:v27];

  if (-[NSArray count](self->_stackRows, "count") != v6 || (-[_TVStackCollectionViewController viewElement](self, "viewElement"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 updateType], v28, v29 >= 3))
  {
    [(_TVNeedsMoreContentEvaluator *)self->_needsMoreContentEvaluator reset];
    lastFocusedIndexPath = [(_TVStackCollectionViewController *)self view];
    [lastFocusedIndexPath setNeedsLayout];
    goto LABEL_18;
  }

LABEL_19:
}

- (void)loadView
{
  v3 = objc_alloc_init(_TVCollectionViewFlowLayout);
  [(UICollectionViewFlowLayout *)v3 setScrollDirection:0];
  [(UICollectionViewFlowLayout *)v3 setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)v3 setMinimumLineSpacing:0.0];
  v4 = [_TVStackCollectionView alloc];
  v5 = [(_TVStackCollectionView *)v4 initWithFrame:v3 collectionViewLayout:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (self->_configureForListTemplate)
  {
    [(_TVStackCollectionView *)v5 setClipsToBounds:0];
  }

  [(_TVStackCollectionView *)v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"TVStackViewCollectionCellIdentifier"];
  [(_TVStackCollectionView *)v6 setDelegate:self];
  [(_TVStackCollectionView *)v6 setDataSource:self];
  [(_TVStackCollectionView *)v6 setBackgroundColor:0];
  [(_TVStackCollectionView *)v6 setOpaque:0];
  [(_TVStackCollectionView *)v6 setAutoresizingMask:18];
  [(_TVStackCollectionView *)v6 setShowsVerticalScrollIndicator:0];
  [(_TVStackCollectionView *)v6 setShowsHorizontalScrollIndicator:0];
  [(_TVStackCollectionView *)v6 setAlwaysBounceVertical:1];
  [(_TVStackCollectionViewController *)self setCollectionView:v6];
  v7 = [_TVNeedsMoreContentEvaluator alloc];
  v8 = [(_TVStackCollectionViewController *)self collectionView];
  v9 = [(_TVNeedsMoreContentEvaluator *)v7 initWithScrollView:v8 axis:2];
  needsMoreContentEvaluator = self->_needsMoreContentEvaluator;
  self->_needsMoreContentEvaluator = v9;

  v11 = self->_needsMoreContentEvaluator;
  v12 = [(_TVStackCollectionViewController *)self _needsMoreTargetElement];
  [(_TVNeedsMoreContentEvaluator *)v11 setViewElement:v12];

  lastFocusedIndexPath = self->_lastFocusedIndexPath;
  if (lastFocusedIndexPath)
  {
    v14 = [(NSIndexPath *)lastFocusedIndexPath section];
    if (v14 < [(NSArray *)self->_stackSections count])
    {
      v15 = [(_TVStackCollectionViewController *)self collectionView];
      [v15 contentOffset];
      v20 = v16;
      v21 = v17;

      v18 = [(NSArray *)self->_stackSections objectAtIndex:v14];
      -[_TVStackCollectionViewController _adjustedContentOffsetForRowIndex:targetContentOffset:](self, "_adjustedContentOffsetForRowIndex:targetContentOffset:", [v18 firstItemRowIndex], &v20);
      v19 = [(_TVStackCollectionViewController *)self collectionView];
      [v19 setContentOffset:{v20, v21}];
    }
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = _TVStackCollectionViewController;
  [(_TVStackCollectionViewController *)&v8 didUpdateFocusInContext:a3 withAnimationCoordinator:a4];
  v5 = [(_TVStackCollectionViewController *)self collectionView];
  v6 = [v5 indexPathForLastFocusedItem];
  lastFocusedIndexPath = self->_lastFocusedIndexPath;
  self->_lastFocusedIndexPath = v6;
}

- (void)viewDidLayoutSubviews
{
  v57.receiver = self;
  v57.super_class = _TVStackCollectionViewController;
  [(_TVStackCollectionViewController *)&v57 viewDidLayoutSubviews];
  v3 = [(_TVStackCollectionViewController *)self view];
  [v3 bounds];
  v5 = v4;

  v6 = [(_TVStackCollectionViewController *)self viewElement];
  v7 = [v6 style];
  [v7 tv_padding];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(_TVStackCollectionViewController *)self collectionView];
  [v16 contentInset];
  if (v11 == v20 && v9 == v17 && v15 == v19)
  {
    v21 = v18;

    if (v13 == v21)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v22 = [(_TVStackCollectionViewController *)self collectionView];
  [v22 contentOffset];
  v24 = v23;
  v26 = v25;

  v27 = [(_TVStackCollectionViewController *)self collectionView];
  [v27 _effectiveContentInset];
  v29 = v28;
  v31 = v30;

  v32 = [(_TVStackCollectionViewController *)self collectionView];
  [v32 setContentInset:{v9, v11, v13, v15}];

  v33 = [(_TVStackCollectionViewController *)self collectionView];
  [v33 _effectiveContentInset];
  v35 = v34;
  v37 = v36;

  if (self->_configureForListTemplate)
  {
    v38 = *(MEMORY[0x277D768C8] + 16);
    *location = *MEMORY[0x277D768C8];
    v56 = v38;
    v53 = *location;
    v54 = v38;
    v51 = *location;
    v52 = v38;
    v39 = [(_TVStackCollectionViewController *)self collectionView];
    [_TVCollectionWrappingView gradientConfigForCollection:v39 gradientMask:1 gradientLengths:location gradientInset:&v53 gradientBoundsInset:&v51];

    v40 = [(_TVStackCollectionViewController *)self collectionView];
    [v40 _setGradientMaskLengths:{*location, *&location[1], v56}];

    v41 = [(_TVStackCollectionViewController *)self collectionView];
    [v41 _setGradientMaskEdgeInsets:{v53, v54}];

    v42 = [(_TVStackCollectionViewController *)self collectionView];
    [v42 _setGradientBoundsInsets:{v51, v52}];
  }

  else
  {
    v42 = [(_TVStackCollectionViewController *)self collectionView];
    [v42 _setGradientMaskLengths:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  }

  v43 = [(_TVStackCollectionViewController *)self collectionView];
  [v43 contentSize];
  v45 = v44;

  if (v26 <= -v29)
  {
    v26 = -v35;
  }

  else if (v26 >= v31 + v45 - v48)
  {
    v26 = v37 + v45 - v48;
  }

  v46 = [(_TVStackCollectionViewController *)self collectionView];
  [v46 setContentOffset:0 animated:{v24, v26}];

LABEL_15:
  objc_initWeak(location, self);
  v47 = MEMORY[0x277CD9FF0];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __57___TVStackCollectionViewController_viewDidLayoutSubviews__block_invoke;
  v49[3] = &unk_279D6E890;
  objc_copyWeak(&v50, location);
  [v47 setCompletionBlock:v49];
  objc_destroyWeak(&v50);
  objc_destroyWeak(location);
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = _TVStackCollectionViewController;
  v4 = a3;
  [(_TVStackCollectionViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [(_TVStackCollectionViewController *)self traitCollection:v10.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    [(_TVStackCollectionViewController *)self _buildStackSections];
    v8 = [(_TVStackCollectionViewController *)self collectionView];
    v9 = [v8 collectionViewLayout];
    [v9 invalidateLayout];

    [(_TVStackCollectionViewController *)self _updateBackgroundTintView];
  }
}

- (void)preloadCellsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_viewControllers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 conformsToProtocol:{&unk_287E74318, v13}])
        {
          [v12 preloadCellsInRect:{x, y, width, height}];
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)resetLastFocusedIndexPath
{
  v15 = *MEMORY[0x277D85DE8];
  lastFocusedIndexPath = self->_lastFocusedIndexPath;
  self->_lastFocusedIndexPath = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_viewControllers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 conformsToProtocol:{&unk_287E74318, v10}])
        {
          [v9 resetLastFocusedIndexPath];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)_needsMoreTargetElement
{
  v3 = [(_TVStackCollectionViewController *)self viewElement];
  v4 = [v3 tv_elementType];
  v5 = [(_TVStackCollectionViewController *)self viewElement];
  v6 = v5;
  if (v4 == 10)
  {
    v7 = [v5 parent];

    v6 = v7;
  }

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_TVStackCollectionViewController *)self collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"TVStackViewCollectionCellIdentifier" forIndexPath:v5];

  viewControllers = self->_viewControllers;
  v9 = [v5 section];

  v10 = [(NSArray *)viewControllers objectAtIndex:v9];
  v11 = [v10 view];
  [v7 bounds];
  [v11 setFrame:?];
  v12 = [v10 tv_associatedIKViewElement];
  v13 = [v12 attributes];
  v14 = [v13 objectForKeyedSubscript:@"markBackgroundSegment"];
  v15 = [v14 BOOLValue];

  v16 = [MEMORY[0x277D75348] clearColor];
  v17 = [v12 style];
  v18 = [v17 tv_backgroundColor];

  if (v18 && (v15 & 1) == 0)
  {
    v19 = [v12 style];
    v20 = [v19 tv_backgroundColor];
    v21 = [v20 color];

    v16 = v21;
  }

  [v7 setBackgroundColor:v16];

  [v7 setViewController:v10];

  return v7;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  v4 = [(_TVStackCollectionViewController *)self collectionView];
  if ([v4 tv_isFocusOnNonOwnedCell])
  {
    lastFocusedIndexPath = 0;
  }

  else
  {
    lastFocusedIndexPath = self->_lastFocusedIndexPath;
  }

  v6 = lastFocusedIndexPath;

  return lastFocusedIndexPath;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = a4;
  v7 = [v6 viewController];
  if (v7)
  {
    v8 = [(_TVStackCollectionViewController *)self childViewControllers];
    v9 = [v8 containsObject:v7];

    if ((v9 & 1) == 0)
    {
      [(_TVStackCollectionViewController *)self addChildViewController:v7];
      [(UIViewController *)v7 didMoveToParentViewController:self];
      if (v7 == self->_backdropTintViewController)
      {
        [(_TVStackCollectionViewController *)self _updateBackgroundTintView];
      }

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __86___TVStackCollectionViewController_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke;
      v10[3] = &unk_279D6E2F8;
      v11 = v7;
      v12 = v6;
      dispatch_async(MEMORY[0x277D85CD0], v10);
    }
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v10 = a4;
  v6 = [v10 viewController];
  if (v6)
  {
    v7 = [(_TVStackCollectionViewController *)self childViewControllers];
    if ([v7 containsObject:v6])
    {
      v8 = [v6 view];
      v9 = [v8 isDescendantOfView:v10];

      if (v9)
      {
        [v6 willMoveToParentViewController:0];
        [v6 removeFromParentViewController];
      }
    }

    else
    {
    }
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(_TVStackCollectionViewController *)self view];
  [v7 bounds];
  v9 = v8;
  stackSections = self->_stackSections;
  v11 = [v6 section];

  v12 = [(NSArray *)stackSections objectAtIndexedSubscript:v11];
  [v12 sectionHeight];
  v14 = v13;

  v15 = v9;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v5 = [(NSArray *)self->_stackSections objectAtIndexedSubscript:a5, a4];
  [v5 sectionSpacing];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  [(_TVNeedsMoreContentEvaluator *)self->_needsMoreContentEvaluator evaluateForState:2];
  [(_TVStackCollectionViewController *)self _updateBackgroundTintViewEffects];
  if (self->_delegateFlags.respondsToStackCollectionViewControllerScrollViewDidScroll)
  {
    v5 = [(_TVStackCollectionViewController *)self delegate];
    v4 = [(_TVStackCollectionViewController *)self collectionView];
    [v5 stackCollectionViewController:self scrollViewDidScroll:v4];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v7 = [(_TVStackCollectionViewController *)self navigationController];
  v3 = [v7 topViewController];
  v4 = [v3 navigationItem];
  v5 = [v4 searchController];
  v6 = [v5 searchBar];
  [v6 resignFirstResponder];
}

- (BOOL)_updateWithCollectionListElement:(id)a3 autoHighlightIndexPath:(id *)a4
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(_TVStackCollectionViewController *)self _maxViewWidth];
  v7 = v6;
  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = [v5 children];
  v54 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v60 = [(NSArray *)self->_viewControllers mutableCopy];
  lastFocusedIndexPath = self->_lastFocusedIndexPath;
  if (lastFocusedIndexPath)
  {
    v53 = [(NSArray *)self->_viewControllers objectAtIndex:[(NSIndexPath *)lastFocusedIndexPath section]];
  }

  else
  {
    v53 = 0;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v51 = v5;
  obj = [v5 children];
  v61 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
  if (!v61)
  {
    v52 = 0;
    v55 = 0;
    v56 = 0;
    goto LABEL_40;
  }

  v52 = 0;
  v55 = 0;
  v56 = 0;
  v58 = self;
  v59 = *v72;
  do
  {
    for (i = 0; i != v61; ++i)
    {
      if (*v72 != v59)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v71 + 1) + 8 * i);
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v13 = v60;
      v14 = [v13 countByEnumeratingWithState:&v67 objects:v76 count:16];
      if (v14)
      {
        v62 = i;
        v15 = *v68;
        while (2)
        {
          for (j = 0; j != v14; j = j + 1)
          {
            if (*v68 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v67 + 1) + 8 * j);
            v18 = [v17 tv_associatedIKViewElement];
            v19 = [[_TVShadowViewElementID alloc] initWithViewElement:v18];
            v20 = [[_TVShadowViewElementID alloc] initWithViewElement:v12];
            if ([(_TVShadowViewElementID *)v19 isEqual:v20])
            {
              v14 = v17;
              self = v58;
              v21 = [(NSArray *)v58->_viewControllers indexOfObject:v14];

              goto LABEL_19;
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v67 objects:v76 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

        v21 = 0x7FFFFFFFFFFFFFFFLL;
        self = v58;
LABEL_19:
        i = v62;
      }

      else
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v22 = [(_TVStackCollectionViewController *)self _viewControllerWithElement:v12 existingController:v14];
      v23 = [v22 view];
      [v23 tv_sizeThatFits:{v7, 0.0}];
      v25 = v24;

      if (v25 == 0.0)
      {
        v26 = v22;
        v22 = 0;
LABEL_32:

        goto LABEL_33;
      }

      if (v22)
      {
        v27 = i;
        [v54 addObject:v22];
        v28 = v21 != [v54 count] - 1;
        v29 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{objc_msgSend(v54, "count") - 1}];
        v26 = v29;
        if (v53 == v22)
        {
          v30 = v29;

          v52 = v30;
        }

        v56 |= v28;
        v31 = [v12 autoHighlightIdentifier];
        v32 = [v31 length];

        if (v32)
        {
          v33 = v55;
          i = v27;
          if (!v55)
          {
            v33 = v26;
          }

          v55 = v33;
          [v12 resetProperty:2];
        }

        else
        {
          i = v27;
        }

        self = v58;
        goto LABEL_32;
      }

LABEL_33:
      if (v14 && v14 == v22)
      {
        [v13 removeObjectIdenticalTo:v14];
      }
    }

    v61 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
  }

  while (v61);
LABEL_40:

  if ([v60 count])
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v34 = v60;
    v35 = [v34 countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v64;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v64 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v63 + 1) + 8 * k);
          [v39 willMoveToParentViewController:0];
          v40 = [v39 view];
          [v40 removeFromSuperview];

          [v39 removeFromParentViewController];
        }

        v36 = [v34 countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v36);
    }

    v56 = 1;
  }

  v41 = [v54 copy];
  viewControllers = self->_viewControllers;
  self->_viewControllers = v41;

  v43 = [(_TVStackCollectionViewController *)self viewElement];
  v44 = [v43 attributes];
  v45 = [v44 objectForKeyedSubscript:@"preloading"];

  if (v45)
  {
    v46 = v51;
    if ([v45 BOOLValue] & v56)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v46 = v51;
    if (v56)
    {
LABEL_51:
      v47 = [(_TVStackCollectionViewController *)self view];
      [v47 bounds];
      [(_TVStackCollectionViewController *)self preloadCellsInRect:?];
    }
  }

  objc_storeStrong(&self->_lastFocusedIndexPath, v52);
  [(_TVStackCollectionViewController *)self _buildStackSections];
  if (a4)
  {
    v48 = v55;
    *a4 = v55;
  }

  return v56 & 1;
}

- (id)_viewControllerWithElement:(id)a3 existingController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[TVInterfaceFactory sharedInterfaceFactory];
  v8 = [v7 _viewControllerFromElement:v5 existingController:v6];

  if (!v8)
  {
    v9 = +[TVInterfaceFactory sharedInterfaceFactory];
    v10 = [v6 view];
    v11 = [v9 _viewFromElement:v5 existingView:v10];

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v6;
      }

      else
      {
        v12 = objc_alloc_init(_TVStackSupplementalViewController);
      }

      v8 = v12;
      [(_TVStackSupplementalViewController *)v12 setView:v11];
      [v8 tv_setAssociatedIKViewElement:v5];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_adjustedContentOffsetForRowIndex:(int64_t)a3 targetContentOffset:(CGPoint *)a4
{
  v7 = [(NSArray *)self->_stackRows objectAtIndexedSubscript:?];
  if ([v7 isHosted])
  {
    y = a4->y;
    v9 = [(_TVStackCollectionViewController *)self collectionView];
    [v9 contentOffset];
    if (y == v10)
    {
      v11 = [v7 isBounded];

      if ((v11 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
    }

    v12 = [(_TVStackCollectionViewController *)self collectionView];
    v13 = [v12 tv_isFocusOnNonOwnedCell];

    if ((v13 & 1) == 0)
    {
      v14 = [(_TVStackCollectionViewController *)self collectionView];
      [v14 bounds];
      v16 = v15;
      x = a4->x;
      v18 = a4->y;
      [v14 _effectiveContentInset];
      v20 = v19;
      v22 = v21;
      [v14 contentSize];
      v24 = v23;
      v25 = a3 - 1;
      if (a3 < 1)
      {
        v27 = 0.0;
      }

      else
      {
        v26 = 0;
        v27 = 0.0;
        do
        {
          v28 = [(NSArray *)self->_stackRows objectAtIndexedSubscript:v26];
          v29 = v28;
          if (v28)
          {
            [v28 rowMetrics];
            v30 = *(&v71 + 1);
          }

          else
          {
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v30 = 0.0;
            v71 = 0u;
          }

          v27 = v27 + v30;

          ++v26;
        }

        while (a3 != v26);
      }

      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __90___TVStackCollectionViewController__adjustedContentOffsetForRowIndex_targetContentOffset___block_invoke;
      v70[3] = &unk_279D6EAE0;
      v70[4] = self;
      v31 = MEMORY[0x26D6AFBB0](v70);
      v67 = 0uLL;
      if (v7)
      {
        [v7 rowMetrics];
        v32 = *(&v62 + 1);
      }

      else
      {
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v62 = 0u;
        v32 = 0;
      }

      *&v68 = v32;
      *(&v68 + 1) = a3;
      v69 = 1;
      if (!(v31)[2](v31, &v67, 1, 1) || !(v31)[2](v31, &v67, 0, 1))
      {
        goto LABEL_48;
      }

      v49 = v20;
      if (v7)
      {
        [v7 rowMetrics];
      }

      else
      {
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
      }

      v50 = v14;
      v48 = v22 + v24;
      v33 = floor((v16 - *&v68) * 0.5);
      if (v33 <= 45.0)
      {
LABEL_32:
        v36 = v33;
      }

      else
      {
        v34 = 0;
        v35 = v27 + *(&v57 + 1) * 0.5 - v18 < v16 * 0.5;
        do
        {
          v56 = v69;
          v54 = v67;
          v55 = v68;
          if ((v31)[2](v31, &v54, (v35 ^ 1) & 1, 0) && (v36 = floor((v16 - *&v55) * 0.5), v36 >= 45.0))
          {
            v67 = v54;
            v68 = v55;
            v69 = v56;
            v33 = v36;
          }

          else
          {
            if ((fmin(*&v67, *(&v67 + 1)) >= v33) | v34 & 1)
            {
              goto LABEL_32;
            }

            v34 = 1;
            v35 ^= 1u;
            v36 = v33;
          }
        }

        while (v36 > 45.0);
      }

      v37 = -v49;
      v38 = v48 - v16;
      v39 = *(&v68 + 1);
      if (v25 <= *(&v68 + 1))
      {
        v14 = v50;
      }

      else
      {
        v14 = v50;
        do
        {
          v40 = [(NSArray *)self->_stackRows objectAtIndexedSubscript:v25];
          v41 = v40;
          if (v40)
          {
            [v40 rowMetrics];
            v42 = *(&v53 + 1);
          }

          else
          {
            v42 = 0.0;
            v53 = 0u;
          }

          v27 = v27 - v42;

          --v25;
        }

        while (v25 > v39);
      }

      v43 = fmax(v37, v38);
      v44 = *&v67;
      v45 = [(NSArray *)self->_stackRows objectAtIndexedSubscript:v39];
      v46 = v45;
      if (v44 > 0.0)
      {
        if (v45)
        {
          [v45 rowMetrics];
          v47 = v52;
          goto LABEL_47;
        }
      }

      else if (v45)
      {
        [v45 rowMetrics];
        v47 = v51;
LABEL_47:

        v18 = fmin(fmax(v37, v27 - v47 - v36), v43);
LABEL_48:
        a4->x = x;
        a4->y = v18;

        goto LABEL_49;
      }

      v47 = 0.0;
      goto LABEL_47;
    }
  }

LABEL_49:
}

- (double)_maxViewWidth
{
  v2 = [(_TVStackCollectionViewController *)self viewElement];
  v3 = [v2 appDocument];
  [v3 tv_adjustedWindowSize];
  v5 = v4;

  return v5;
}

- (void)_buildStackSections
{
  v74 = *MEMORY[0x277D85DE8];
  [(_TVStackCollectionViewController *)self _maxViewWidth];
  v4 = v3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_viewControllers, "count")}];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{(2 * -[NSArray count](self->_viewControllers, "count")) | 1}];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_viewControllers, "count")}];
  viewControllers = self->_viewControllers;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __55___TVStackCollectionViewController__buildStackSections__block_invoke;
  v62[3] = &unk_279D6EB08;
  v66 = v4;
  v9 = v7;
  v63 = v9;
  v67 = 1;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0;
  v10 = v6;
  v64 = v10;
  v11 = v5;
  v65 = v11;
  [(NSArray *)viewControllers enumerateObjectsUsingBlock:v62];
  v12 = objc_alloc_init(_TVStackRow);
  memset(v61 + 8, 0, 72);
  *&v61[0] = 1;
  [(_TVStackRow *)v12 setRowMetrics:v61];
  v46 = v12;
  [v10 addObject:v12];
  v47 = v9;
  v13 = [TVMLUtilities rowSpacingMetricsForRowMetrics:v9];
  v14 = self->_viewControllers;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __55___TVStackCollectionViewController__buildStackSections__block_invoke_2;
  v56[3] = &unk_279D6EB30;
  v15 = v11;
  v57 = v15;
  v16 = v10;
  v58 = v16;
  v59 = self;
  v45 = v13;
  v60 = v45;
  [(NSArray *)v14 enumerateObjectsUsingBlock:v56];
  v48 = self;
  v44 = [(_TVStackCollectionViewController *)self collectionView];
  [v44 bounds];
  v18 = v17;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v19 = v15;
  v51 = [v19 countByEnumeratingWithState:&v52 objects:v73 count:16];
  if (v51)
  {
    v20 = *v53;
    v49 = *v53;
    v50 = v19;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v53 != v20)
        {
          objc_enumerationMutation(v19);
        }

        v22 = *(*(&v52 + 1) + 8 * i);
        v23 = [v22 firstRowIndex];
        v24 = [v22 rowCount];
        if (v24 >= 2)
        {
          v25 = v24;
          v26 = [v16 objectAtIndexedSubscript:v23];
          v27 = [v26 isBounded];

          if (v27)
          {
            [v22 sectionHeight];
            v29 = v28;
            v30 = v23 - 1;
            v31 = -1;
            do
            {
              v32 = v31;
              if (v31 >= 0)
              {
                v33 = v25 - 1;
              }

              else
              {
                v33 = 0;
              }

              v34 = v33 + v30;
              do
              {
                if ((v34 & 0x8000000000000000) != 0 || v34 >= [v16 count])
                {
                  break;
                }

                memset(v61, 0, sizeof(v61));
                v35 = [v16 objectAtIndexedSubscript:v34];
                v36 = v35;
                if (v35)
                {
                  [v35 rowMetrics];
                }

                else
                {
                  memset(v61, 0, sizeof(v61));
                }

                v37 = &v61[1] + 8;
                if (v32 >= 0)
                {
                  v37 = &v61[1];
                }

                v34 += v32;
                v38 = *&v61[0] == 1 ? (v61 + 8) : v37;
                v29 = v29 + *v38;
              }

              while (*&v61[0] == 1);
              v31 = v32 + 2;
              v30 += 2;
            }

            while (v32 < 0);
            v20 = v49;
            v19 = v50;
            if ((v18 - v29) * 0.5 < 45.0)
            {
              do
              {
                v39 = [v16 objectAtIndexedSubscript:v23];
                [v39 setBounded:0];

                ++v23;
                --v25;
              }

              while (v25);
            }
          }
        }
      }

      v51 = [v19 countByEnumeratingWithState:&v52 objects:v73 count:16];
    }

    while (v51);
  }

  v40 = [v19 copy];
  stackSections = v48->_stackSections;
  v48->_stackSections = v40;

  v42 = [v16 copy];
  stackRows = v48->_stackRows;
  v48->_stackRows = v42;
}

- (void)_updateFirstItemRowIndexes
{
  [(_TVStackCollectionViewController *)self _maxViewWidth];
  viewControllers = self->_viewControllers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62___TVStackCollectionViewController__updateFirstItemRowIndexes__block_invoke;
  v5[3] = &unk_279D6EB58;
  v5[5] = v4;
  v5[4] = self;
  [(NSArray *)viewControllers enumerateObjectsUsingBlock:v5];
}

- (void)_configureBackgroundTintView
{
  v2 = self;
  v30 = *MEMORY[0x277D85DE8];
  v3 = 1072;
  backdropTintViewController = self->_backdropTintViewController;
  self->_backdropTintViewController = 0;

  if ([(NSArray *)v2->_viewControllers count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = v2->_viewControllers;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v23 = 1072;
      v24 = v2;
      v8 = *v26;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [v10 tv_associatedIKViewElement];
          v12 = [v11 attributes];
          v13 = [v12 objectForKeyedSubscript:@"markBackgroundSegment"];
          v14 = [v13 BOOLValue];

          if (v14)
          {
            v3 = v23;
            v2 = v24;
            objc_storeStrong((&v24->super.super.super.super.isa + v23), v10);
            goto LABEL_13;
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

      v11 = 0;
      v3 = v23;
      v2 = v24;
    }

    else
    {
      v11 = 0;
    }

LABEL_13:

    if (*(&v2->super.super.super.super.isa + v3))
    {
      if (v2->_backdropTintView)
      {
        [(_TVStackCollectionViewController *)v2 _updateBackgroundTintView];
      }

      else
      {
        v15 = objc_alloc(MEMORY[0x277D75D18]);
        v16 = [v15 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        backdropTintView = v2->_backdropTintView;
        v2->_backdropTintView = v16;

        [(UIView *)v2->_backdropTintView setAutoresizingMask:50];
        [(UIView *)v2->_backdropTintView setUserInteractionEnabled:0];
        v18 = [(_TVStackCollectionViewController *)v2 collectionView];
        [v18 insertSubview:v2->_backdropTintView atIndex:0];
      }

      v19 = v2->_backdropTintView;
      v20 = [v11 style];
      v21 = [v20 tv_backgroundColor];
      v22 = [v21 color];

      if (!v22)
      {
        v22 = [MEMORY[0x277D75348] colorWithRed:0.937254902 green:0.937254902 blue:0.956862745 alpha:1.0];
      }

      [(UIView *)v19 setBackgroundColor:v22];
    }

    else
    {
      [(_TVStackCollectionViewController *)v2 _updateBackgroundTintView];
    }
  }
}

- (void)_updateBackgroundTintView
{
  if (self->_backdropTintViewController)
  {
    v3 = [(NSArray *)self->_viewControllers indexOfObject:?];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(UIView *)self->_backdropTintView removeFromSuperview];
      backdropTintViewController = self->_backdropTintViewController;
      self->_backdropTintViewController = 0;

      backdropTintView = self->_backdropTintView;
      self->_backdropTintView = 0;
    }

    else
    {
      v17 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v3];
      v6 = [(_TVStackCollectionViewController *)self collectionView];
      [v6 frame];
      v8 = v7;
      v10 = v9;

      v11 = [(_TVStackCollectionViewController *)self collectionView];
      v12 = [v11 layoutAttributesForItemAtIndexPath:v17];

      [v12 frame];
      v14 = v13;
      [(_TVStackCollectionViewController *)self _maxContentSize];
      [(UIView *)self->_backdropTintView setFrame:v8, v14, v10, fmax(v15 - v14, 0.0)];
      v16 = [(_TVStackCollectionViewController *)self collectionView];
      [v16 sendSubviewToBack:self->_backdropTintView];

      [(_TVStackCollectionViewController *)self _updateBackgroundTintViewEffects];
      backdropTintView = v17;
    }
  }

  else
  {
    [(UIView *)self->_backdropTintView removeFromSuperview];
    backdropTintView = self->_backdropTintView;
    self->_backdropTintView = 0;
  }
}

- (void)_updateBackgroundTintViewEffects
{
  backdropTintView = self->_backdropTintView;
  if (backdropTintView)
  {
    [(UIView *)backdropTintView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [(_TVStackCollectionViewController *)self _maxContentSize];
    v11 = v10;
    [(UIView *)self->_backdropTintView frame];
    v13 = fmax(v11 - v12, 0.0);
    if (v13 > 0.0)
    {
      v14 = [(_TVStackCollectionViewController *)self collectionView];
      [v14 contentSize];
      v16 = v15;
      v17 = [(_TVStackCollectionViewController *)self collectionView];
      [v17 bounds];
      v19 = v16 - v18;
      v20 = [(_TVStackCollectionViewController *)self collectionView];
      [v20 contentInset];
      v22 = v19 - v21;

      v23 = [(_TVStackCollectionViewController *)self collectionView];
      [v23 contentOffset];
      v25 = v24;

      if (v25 > v22)
      {
        v26 = [(_TVStackCollectionViewController *)self collectionView];
        [v26 contentOffset];
        v13 = v13 + v27 - v22;
      }
    }

    v28 = self->_backdropTintView;

    [(UIView *)v28 setFrame:v5, v7, v9, v13];
  }
}

- (CGSize)_maxContentSize
{
  v3 = [(_TVStackCollectionViewController *)self collectionView];
  [v3 contentSize];
  v5 = v4;

  v6 = [(_TVStackCollectionViewController *)self view];
  [v6 bounds];
  v8 = v7;

  if (v5 < v8)
  {
    v5 = v8;
  }

  v9 = [(_TVStackCollectionViewController *)self collectionView];
  [v9 contentSize];
  v11 = v10;

  v12 = [(_TVStackCollectionViewController *)self view];
  [v12 bounds];
  v14 = v13;

  if (v11 >= v14)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  v16 = v5;
  result.height = v15;
  result.width = v16;
  return result;
}

- (_TVStackCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end