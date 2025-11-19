@interface _TVShelfViewController
+ (void)_contentForCell:(id)a3 shouldHide:(BOOL)a4;
- (BOOL)hideHeader;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)expectedCellSizeForElement:(id)a3 atIndexPath:(id)a4;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (__TVShelfViewControllerDelegate)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)makeCollectionViewWithFrame:(CGRect)a3;
- (id)preferredFocusEnvironments;
- (void)_delayedUpdatePreview;
- (void)_didSettleOnItemAtIndexPath:(id)a3;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)didMoveToParentViewController:(id)a3;
- (void)dispatchEvent:(id)a3 forItemAtIndexPath:(id)a4 completionBlock:(id)a5;
- (void)setDelegate:(id)a3;
- (void)setHideHeader:(BOOL)a3;
- (void)setSpeedBumpEdges:(unint64_t)a3;
- (void)updateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)updateViewLayoutAnimated:(BOOL)a3 relayout:(BOOL)a4;
- (void)updateWithViewElement:(id)a3;
- (void)updateWithViewElement:(id)a3 cellMetrics:(TVCellMetrics *)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _TVShelfViewController

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  p_delegateFlags = &self->_delegateFlags;
  self->_delegateFlags.hasUpdateRelatedView = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.hasDidSettleOnItemAtIndexPath = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.hasDidPlayItemAtIndexPath = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.hasDidSelectItemAtIndexPath = objc_opt_respondsToSelector() & 1;
  LOBYTE(self) = objc_opt_respondsToSelector();

  p_delegateFlags->hasDidSnapToItemAtIndexPath = self & 1;
  v6 = p_delegateFlags->hasUpdateRelatedView || p_delegateFlags->hasDidSettleOnItemAtIndexPath;
  p_delegateFlags->hasFocusDependentMethods = v6 & 1;
}

- (void)didMoveToParentViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = _TVShelfViewController;
  [(_TVShelfViewController *)&v7 didMoveToParentViewController:?];
  if (a3)
  {
    v5 = [(_TVMLCollectionViewController *)self collectionView];
    v6 = [v5 collectionViewLayout];
    [v6 snapContent];
  }

  else
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
  }
}

- (void)updateWithViewElement:(id)a3 cellMetrics:(TVCellMetrics *)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 attributes];
  v8 = [v7 objectForKeyedSubscript:@"scrollPosition"];

  self->_autohighlightScrollPosition = 0;
  v9 = [v8 lowercaseString];
  v10 = [v9 isEqualToString:@"left"];

  if (v10)
  {
    v11 = 8;
LABEL_5:
    self->_autohighlightScrollPosition = v11;
    goto LABEL_6;
  }

  v12 = [v8 lowercaseString];
  v13 = [v12 isEqualToString:@"right"];

  if (v13)
  {
    v11 = 32;
    goto LABEL_5;
  }

LABEL_6:
  v14 = [v6 sections];
  self->_prominentSectionIndex = [v14 indexOfObjectPassingTest:&__block_literal_global_15];

  v69.receiver = self;
  v69.super_class = _TVShelfViewController;
  v15 = *&a4->cellMargin.top;
  v68[6] = *&a4->cellInsetAlt.bottom;
  v68[7] = v15;
  v68[8] = *&a4->cellMargin.bottom;
  v16 = *&a4->cellInset.top;
  v68[2] = *&a4->cellPadding.bottom;
  v68[3] = v16;
  v17 = *&a4->cellInsetAlt.top;
  v68[4] = *&a4->cellInset.bottom;
  v68[5] = v17;
  v18 = *&a4->cellPadding.top;
  v68[0] = a4->cellSize;
  v68[1] = v18;
  [(_TVMLCollectionViewController *)&v69 updateWithViewElement:v6 cellMetrics:v68];
  if (self->_lastPreviewedIndexPath)
  {
    v19 = [v6 sections];
    v20 = [v19 count];
    v21 = [(NSIndexPath *)self->_lastPreviewedIndexPath section];

    if (v20 <= v21 || ([v6 sections], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "objectAtIndex:", -[NSIndexPath section](self->_lastPreviewedIndexPath, "section")), v23 = objc_claimAutoreleasedReturnValue(), v22, v24 = objc_msgSend(v23, "numberOfItems"), v25 = -[NSIndexPath item](self->_lastPreviewedIndexPath, "item"), v23, v24 <= v25))
    {
      lastPreviewedIndexPath = self->_lastPreviewedIndexPath;
      self->_lastPreviewedIndexPath = 0;
    }
  }

  v27 = [(_TVMLCollectionViewController *)self collectionElement];
  if ([v27 updateType] == 2)
  {
    v28 = [(_TVShelfViewController *)self view];
    v29 = [v28 window];

    if (!v29)
    {
      goto LABEL_23;
    }

    v61 = v8;
    v62 = v6;
    v30 = [(_TVMLCollectionViewController *)self collectionView];
    v31 = [v30 indexPathsForVisibleSupplementaryElementsOfKind:?];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v31;
    v32 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v65;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v65 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v64 + 1) + 8 * i);
          v37 = [(_TVMLCollectionViewController *)self collectionElement];
          v38 = [v37 sections];
          v39 = [v38 objectAtIndex:{objc_msgSend(v36, "section")}];

          v40 = [v39 header];

          if (v40)
          {
            v41 = [(_TVMLCollectionViewController *)self collectionView];
            v42 = [v41 supplementaryViewForElementKind:@"TVShelfLayoutElementKindHeader" atIndexPath:v36];

            v43 = [v42 subviews];
            v44 = [v43 firstObject];

            v45 = +[TVInterfaceFactory sharedInterfaceFactory];
            [v39 header];
            v47 = v46 = self;
            v48 = [v45 _viewFromElement:v47 existingView:v44];

            self = v46;
            [v48 setNeedsLayout];
          }
        }

        v33 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
      }

      while (v33);
    }

    v27 = obj;

    v8 = v61;
    v6 = v62;
  }

LABEL_23:
  if ([(_TVShelfViewController *)self isViewLoaded])
  {
    if (self->_configureForListTemplate)
    {
      v49 = self;
      listTemplateAlignment = self->_listTemplateAlignment;
      v51 = [(_TVShelfViewController *)v49 view];
      v52 = [v51 semanticContentAttribute];
      v53 = listTemplateAlignment;
      self = v49;
      v54 = [TVMLUtilities semanticAlignmentForAlignment:v53 semanticContentAttribute:v52];

      v55 = [(_TVMLCollectionViewController *)v49 collectionWrappingView];
      v56 = v55;
      if (v54 == 1)
      {
        v57 = 8;
      }

      else
      {
        v57 = 16;
      }
    }

    else
    {
      v55 = [(_TVMLCollectionViewController *)self collectionWrappingView];
      v56 = v55;
      v57 = 0;
    }

    [v55 setCollectionGradientMask:v57];

    v58 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    if (self->_delegateFlags.hasFocusDependentMethods)
    {
      pendingPreviewedIndexPath = self->_pendingPreviewedIndexPath;
      if (pendingPreviewedIndexPath != v58 && ([(NSIndexPath *)pendingPreviewedIndexPath isEqual:v58]& 1) == 0)
      {
        [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
        v60 = self->_lastPreviewedIndexPath;
        self->_lastPreviewedIndexPath = 0;

        objc_storeStrong(&self->_pendingPreviewedIndexPath, v58);
        if (self->_pendingPreviewedIndexPath)
        {
          [(_TVShelfViewController *)self _delayedUpdatePreview];
        }
      }
    }
  }
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = _TVShelfViewController;
  [(_TVMLCollectionViewController *)&v10 viewDidLoad];
  if (self->_configureForListTemplate)
  {
    listTemplateAlignment = self->_listTemplateAlignment;
    v4 = [(_TVShelfViewController *)self view];
    v5 = +[TVMLUtilities semanticAlignmentForAlignment:semanticContentAttribute:](TVMLUtilities, "semanticAlignmentForAlignment:semanticContentAttribute:", listTemplateAlignment, [v4 semanticContentAttribute]);

    v6 = [(_TVMLCollectionViewController *)self collectionWrappingView];
    v7 = v6;
    if (v5 == 1)
    {
      v8 = 8;
    }

    else
    {
      v8 = 16;
    }

    [v6 setCollectionGradientMask:v8];
  }

  v9 = [(_TVShelfViewController *)self view];
  [v9 _setSpeedBumpEdges:self->_speedBumpEdges];
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = _TVShelfViewController;
  [(_TVMLCollectionViewController *)&v7 viewDidLayoutSubviews];
  if (self->_delegateFlags.hasFocusDependentMethods && !self->_lastPreviewedIndexPath)
  {
    v3 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    lastPreviewedIndexPath = self->_lastPreviewedIndexPath;
    self->_lastPreviewedIndexPath = v3;

    if (v3)
    {
      v5 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
      v6 = self->_lastPreviewedIndexPath;
      self->_lastPreviewedIndexPath = v5;

      [(_TVShelfViewController *)self _didSettleOnItemAtIndexPath:v5];
    }
  }
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(_TVMLCollectionViewController *)self collectionView];
  if (v3)
  {
    v4 = [(_TVMLCollectionViewController *)self collectionView];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5 = a4;
  v6 = [(_TVMLCollectionViewController *)self collectionView];
  v7 = [v6 collectionViewLayout];

  v8 = [v7 indexPathForSnappedContent];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77___TVShelfViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v11[3] = &unk_279D6F010;
  v12 = v8;
  v13 = v7;
  v9 = v7;
  v10 = v8;
  [v5 animateAlongsideTransition:v11 completion:0];
}

- (void)updateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_TVShelfViewController *)self view];
  v9 = [v8 window];
  if (v9)
  {
    v10 = v9;
    v11 = [v6 nextFocusedIndexPath];

    if (v11)
    {
      v12 = [v6 nextFocusedIndexPath];
      [(_TVMLCollectionViewController *)self setLastFocusedIndexPath:v12];

      if (self->_delegateFlags.hasFocusDependentMethods)
      {
        v13 = [v6 nextFocusedIndexPath];
        v14 = [v13 copy];
        pendingPreviewedIndexPath = self->_pendingPreviewedIndexPath;
        self->_pendingPreviewedIndexPath = v14;

        [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
        v16 = [v6 previouslyFocusedIndexPath];
        if (v16)
        {
        }

        else if (!self->_lastPreviewedIndexPath)
        {
          [(_TVShelfViewController *)self _delayedUpdatePreview];
          goto LABEL_17;
        }

        v18 = [v6 previouslyFocusedIndexPath];
        if (v18)
        {
        }

        else
        {
          v19 = [v6 nextFocusedIndexPath];
          v20 = [v19 isEqual:self->_lastPreviewedIndexPath];

          if (v20)
          {
            objc_initWeak(&location, self);
            v21 = [v6 nextFocusedIndexPath];
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __72___TVShelfViewController_updateFocusInContext_withAnimationCoordinator___block_invoke;
            v24[3] = &unk_279D6F038;
            objc_copyWeak(&v26, &location);
            v25 = v6;
            [(_TVShelfViewController *)self dispatchEvent:@"highlight" forItemAtIndexPath:v21 completionBlock:v24];

            objc_destroyWeak(&v26);
            objc_destroyWeak(&location);
            goto LABEL_17;
          }
        }

        [v6 _focusVelocity];
        if (fabs(v22) >= 7500.0)
        {
          v23 = 0.6;
        }

        else
        {
          v23 = dbl_26CE87CC0[self->_lastPreviewDelay == 0.6];
        }

        self->_lastPreviewDelay = v23;
        [(_TVShelfViewController *)self performSelector:sel__delayedUpdatePreview withObject:0 afterDelay:?];
      }

      else
      {
        v17 = [v6 nextFocusedIndexPath];
        [(_TVShelfViewController *)self dispatchEvent:@"highlight" forItemAtIndexPath:v17 completionBlock:0];
      }
    }
  }

  else
  {
  }

LABEL_17:
}

- (id)makeCollectionViewWithFrame:(CGRect)a3
{
  v3 = [[_TVMLShelfView alloc] initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_TVMLShelfView *)v3 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"TVShelfLayoutElementKindHeader" withReuseIdentifier:@"ShelfViewSectionHeaderIdentifier"];
  [(_TVMLShelfView *)v3 setAlwaysBounceHorizontal:1];
  v4 = [(_TVMLShelfView *)v3 collectionViewLayout];
  [v4 setShouldSnapContent:1];

  return v3;
}

- (CGSize)expectedCellSizeForElement:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[_TVShelfViewController prominentSectionIndex](self, "prominentSectionIndex") == 0x7FFFFFFFFFFFFFFFLL || (v8 = -[_TVShelfViewController prominentSectionIndex](self, "prominentSectionIndex"), v8 == [v7 section]))
  {
    v19.receiver = self;
    v19.super_class = _TVShelfViewController;
    [(_TVMLCollectionViewController *)&v19 expectedCellSizeForElement:v6 atIndexPath:v7];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = [v6 objectForKeyedSubscript:@"TVFactoryKeyCellMetrics"];
    v14 = v13;
    if (v13)
    {
      [v13 tv_cellMetricsValue];
      v12 = v18;
      v10 = v17;
    }

    else
    {
      v12 = 0.0;
      v10 = 0.0;
    }
  }

  v15 = v10;
  v16 = v12;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)updateViewLayoutAnimated:(BOOL)a3 relayout:(BOOL)a4
{
  v5 = a3;
  if (a3)
  {
    v7 = objc_alloc_init(_TVMLShelfViewLayout);
  }

  else
  {
    v8 = [(_TVMLCollectionViewController *)self collectionView];
    v7 = [v8 collectionViewLayout];
  }

  v9 = [(_TVMLCollectionViewController *)self collectionElement];
  v10 = [v9 style];

  [v10 tv_interitemSpacing];
  v12 = v11;
  v13 = [v10 valueForStyle:@"tv-line-spacing"];
  if (v13)
  {
    [v10 tv_lineSpacing];
    v15 = v14;
  }

  else
  {
    v15 = NAN;
  }

  v16 = [(_TVMLCollectionViewController *)self collectionElement];
  v17 = [v16 attributes];
  v18 = [v17 objectForKeyedSubscript:@"rowCount"];
  v19 = [v18 intValue];

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v21 = [(_TVMLCollectionViewController *)self collectionElement];
    v22 = [v21 style];
    v20 = [v22 tv_rowCount];
  }

  v23 = [(_TVMLCollectionViewController *)self collectionView];
  v24 = [v23 visibleSupplementaryViewsOfKind:@"TVShelfLayoutElementKindHeader"];

  v27 = a4 || (-[_TVShelfViewLayout minimumInteritemSpacing](v7, "minimumInteritemSpacing"), v25 != v12) || (-[_TVShelfViewLayout minimumLineSpacing](v7, "minimumLineSpacing"), v26 != v15) || [v24 count] != 0;
  [(_TVMLCollectionViewController *)self cellMetrics];
  [(_TVMLShelfViewLayout *)v7 setCellMetrics:&v39];
  if (v20 <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = v20;
  }

  [(_TVShelfViewLayout *)v7 setRowCount:v28];
  [(_TVShelfViewLayout *)v7 setProminentSectionIndex:[(_TVShelfViewController *)self prominentSectionIndex]];
  [(_TVShelfViewLayout *)v7 setMinimumInteritemSpacing:v12];
  [(_TVShelfViewLayout *)v7 setMinimumLineSpacing:v15];
  if (v5)
  {
    v29 = [(_TVMLCollectionViewController *)self collectionView];
    [(TVShelfViewLayoutInvalidationContext *)v29 setCollectionViewLayout:v7 animated:1];
  }

  else
  {
    if (!v27)
    {
      goto LABEL_22;
    }

    v29 = objc_alloc_init(TVShelfViewLayoutInvalidationContext);
    [(TVShelfViewLayoutInvalidationContext *)v29 setInvalidateLayout:1];
    [(_TVMLShelfViewLayout *)v7 invalidateLayoutWithContext:v29];
  }

LABEL_22:
  v30 = [(_TVMLCollectionViewController *)self collectionWrappingView];
  [v30 setCentered:{-[_TVShelfViewController isCentered](self, "isCentered")}];

  v31 = [(_TVMLCollectionViewController *)self collectionElement];
  v32 = [v31 appDocument];
  v33 = [v32 templateElement];

  v34 = [v33 style];
  v35 = [v34 tv_searchStyle];
  v36 = [v35 isEqualToString:@"partial"];

  v37 = [(_TVMLCollectionViewController *)self collectionWrappingView];
  v38 = 1.0;
  if ((v36 & 1) == 0)
  {
    +[_TVShelfViewLayout defaultHeaderSelectionMargin];
  }

  [v37 setHeaderSelectionMargin:v38];
}

- (void)dispatchEvent:(id)a3 forItemAtIndexPath:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (@"select" == v8 && self->_delegateFlags.hasDidSelectItemAtIndexPath)
  {
    v11 = [(_TVShelfViewController *)self delegate];
    [v11 shelfViewController:self didSelectItemAtIndexPath:v9];
LABEL_7:

    goto LABEL_8;
  }

  if (@"play" == v8 && self->_delegateFlags.hasDidPlayItemAtIndexPath)
  {
    v11 = [(_TVShelfViewController *)self delegate];
    [v11 shelfViewController:self didPlayItemAtIndexPath:v9];
    goto LABEL_7;
  }

LABEL_8:
  v12.receiver = self;
  v12.super_class = _TVShelfViewController;
  [(_TVMLCollectionViewController *)&v12 dispatchEvent:v8 forItemAtIndexPath:v9 completionBlock:v10];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6.receiver = self;
  v6.super_class = _TVShelfViewController;
  v4 = [(_TVMLCollectionViewController *)&v6 collectionView:a3 cellForItemAtIndexPath:a4];
  [objc_opt_class() _contentForCell:v4 shouldHide:1];

  return v4;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(_TVMLCollectionViewController *)self collectionElement];
  v11 = [v10 sections];
  v12 = [v11 objectAtIndex:a5];

  v13 = [v12 header];

  if (v13)
  {
    v14 = [v12 header];
    v15 = [v14 style];
    [v15 tv_width];
    v17 = v16;

    v18 = [v14 style];
    [v18 tv_height];
    v20 = v19;

    if (v20 <= 0.0 || v17 <= 0.0)
    {
      v21 = +[TVInterfaceFactory sharedInterfaceFactory];
      v22 = [v12 header];
      v23 = [v21 _viewFromElement:v22 existingView:0];

      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      if (v9)
      {
        [v9 cellMetrics];
      }

      [v8 bounds];
      [v23 sizeThatFits:{CGRectGetWidth(v37) - (0.0 + 0.0), 0.0}];
      v17 = v24;
      v20 = v25;
    }
  }

  else
  {
    v17 = *MEMORY[0x277CBF3A8];
    v20 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v26 = v17;
  v27 = v20;
  result.height = v27;
  result.width = v26;
  return result;
}

- (void)setHideHeader:(BOOL)a3
{
  v3 = a3;
  v4 = [(_TVMLCollectionViewController *)self collectionWrappingView];
  [v4 setHeaderHidden:v3];
}

- (BOOL)hideHeader
{
  v2 = [(_TVMLCollectionViewController *)self collectionWrappingView];
  v3 = [v2 isHeaderHidden];

  return v3;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(_TVMLCollectionViewController *)self collectionElement];
  v8 = [v7 sections];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "section")}];

  v10 = [v9 prototypeForItemAtIndex:{objc_msgSend(v6, "row")}];
  [(_TVShelfViewController *)self expectedCellSizeForElement:v10 atIndexPath:v6];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v6 = [(_TVMLCollectionViewController *)self collectionElement:a3];
  v7 = [v6 sections];
  v8 = [v7 objectAtIndex:a5];

  v9 = [v8 style];
  [v9 tv_margin];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v9.receiver = self;
  v9.super_class = _TVShelfViewController;
  v8 = a4;
  [(_TVMLCollectionViewController *)&v9 collectionView:a3 willDisplayCell:v8 forItemAtIndexPath:a5];
  [v8 _setSpeedBumpEdges:{self->_speedBumpEdges, v9.receiver, v9.super_class}];
  [objc_opt_class() _contentForCell:v8 shouldHide:0];
}

- (void)setSpeedBumpEdges:(unint64_t)a3
{
  self->_speedBumpEdges = a3;
  if ([(_TVShelfViewController *)self isViewLoaded])
  {
    v4 = [(_TVShelfViewController *)self view];
    [v4 _setSpeedBumpEdges:self->_speedBumpEdges];

    v5 = [(_TVMLCollectionViewController *)self collectionView];
    v6 = [v5 visibleCells];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44___TVShelfViewController_setSpeedBumpEdges___block_invoke;
    v7[3] = &unk_279D6F060;
    v7[4] = self;
    [v6 enumerateObjectsUsingBlock:v7];
  }
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_TVMLCollectionViewController *)self collectionElement];
  v12 = [v11 sections];
  v13 = [v12 objectAtIndex:{objc_msgSend(v8, "section")}];

  v14 = [v10 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"ShelfViewSectionHeaderIdentifier" forIndexPath:v8];

  v15 = [v14 subviews];
  v16 = [v15 firstObject];

  v17 = [v14 subviews];
  [v17 makeObjectsPerformSelector:sel_removeFromSuperview];

  v18 = [v13 header];

  if (v18)
  {
    [v16 tv_setAssociatedIKViewElement:0];
    v19 = +[TVInterfaceFactory sharedInterfaceFactory];
    v20 = [v13 header];
    v21 = [v19 _viewFromElement:v20 existingView:v16];

    [v14 addSubview:v21];
    [v14 bounds];
    [v21 setFrame:?];
  }

  return v14;
}

- (void)_delayedUpdatePreview
{
  v3 = [(_TVShelfViewController *)self view];
  v4 = [v3 window];

  if (v4)
  {
    pendingPreviewedIndexPath = self->_pendingPreviewedIndexPath;
    v6 = pendingPreviewedIndexPath;
    v7 = self->_pendingPreviewedIndexPath;
    self->_pendingPreviewedIndexPath = 0;

    self->_lastPreviewDelay = 0.0;
    if (([(NSIndexPath *)self->_lastPreviewedIndexPath isEqual:v6]& 1) == 0)
    {
      objc_storeStrong(&self->_lastPreviewedIndexPath, pendingPreviewedIndexPath);
      objc_initWeak(&location, self);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __47___TVShelfViewController__delayedUpdatePreview__block_invoke;
      v8[3] = &unk_279D6F038;
      objc_copyWeak(&v10, &location);
      v9 = v6;
      [(_TVShelfViewController *)self dispatchEvent:@"highlight" forItemAtIndexPath:v9 completionBlock:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_didSettleOnItemAtIndexPath:(id)a3
{
  v6 = a3;
  if (self->_delegateFlags.hasDidSettleOnItemAtIndexPath)
  {
    v4 = [(_TVShelfViewController *)self delegate];
    [v4 shelfViewController:self didSettleOnItemAtIndexPath:v6];
  }

  if (self->_delegateFlags.hasUpdateRelatedView)
  {
    v5 = [(_TVShelfViewController *)self delegate];
    [v5 shelfViewController:self updateRelatedView:0];
  }
}

+ (void)_contentForCell:(id)a3 shouldHide:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [v7 contentView];
    v6 = v5;
    if (v4)
    {
      [v5 removeFromSuperview];
    }

    else
    {
      [v7 addSubview:v5];
    }
  }
}

- (void)updateWithViewElement:(id)a3
{
  v4 = a3;
  [_TVLockupFactory cellMetricsForCollectionElement:v4];
  [(_TVShelfViewController *)self updateWithViewElement:v4 cellMetrics:&v5];
}

- (__TVShelfViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end