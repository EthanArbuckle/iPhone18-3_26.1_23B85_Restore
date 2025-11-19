@interface _TVListViewController
+ (id)_shadowCollectionElementForCollectionElement:(id)a3;
- (BOOL)_relatedElementIsGridAtIndexPath:(id)a3;
- (BOOL)collectionView:(id)a3 shouldHandleLongPressForItemAtIndexPath:(id)a4;
- (BOOL)listCell:(id)a3 shouldAppearSelectedForPreviouslyFocusedView:(id)a4;
- (CGSize)_expectedCellSizeForElement:(id)a3 inSectionIndex:(int64_t)a4;
- (CGSize)_expectedHeaderCellSizeForElement:(id)a3 section:(int64_t)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)expectedCellSizeForElement:(id)a3 atIndexPath:(id)a4;
- (Class)cellClassForElement:(id)a3;
- (UIEdgeInsets)_marginForHeaderCellForElement:(id)a3 section:(int64_t)a4;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (_TVListViewControllerDelegate)delegate;
- (id)_cachedViewControllerForElement:(id)a3;
- (id)_previewControllerWithElement:(id)a3 previewElement:(id *)a4;
- (id)_relatedContentElementForIndexPath:(id)a3;
- (id)_viewControllerForElement:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)impressionableElementsContainedInDocument:(id)a3;
- (id)makeCollectionViewWithFrame:(CGRect)a3;
- (void)_delayedUpdatePreview;
- (void)_updateCellMetrics;
- (void)_updatedPreviewWithItemAtIndexPath:(id)a3;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)didUpdateCollectionViewByNeedingReload:(BOOL)a3 focusUpdate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)templateControllerDidUpdateFocusFromView:(id)a3;
- (void)updateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)updateSupplementaryViewsForSectionAtOldIndex:(int64_t)a3 oldElement:(id)a4 withNewIndex:(int64_t)a5 newElement:(id)a6 requiresReload:(BOOL *)a7 requiresRelayout:(BOOL *)a8;
- (void)updateViewLayoutAnimated:(BOOL)a3 relayout:(BOOL)a4;
- (void)updateVisibleCell:(id)a3 atIndexPath:(id)a4 withElement:(id)a5;
- (void)updateWithViewElement:(id)a3 cellMetrics:(TVCellMetrics *)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _TVListViewController

- (void)dealloc
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
  v3.receiver = self;
  v3.super_class = _TVListViewController;
  [(_TVMLCollectionViewController *)&v3 dealloc];
}

- (void)updateWithViewElement:(id)a3 cellMetrics:(TVCellMetrics *)a4
{
  v6 = a3;
  v7 = [v6 appDocument];
  v8 = [v7 templateElement];
  v9 = [v8 tv_elementType];

  if (v9 == 74)
  {
    self->_configureForStackTemplate = 1;
  }

  v10 = [v6 sections];
  v11 = [v10 firstObject];

  v12 = [v11 firstItemElement];
  secondCellIndexPath = self->_secondCellIndexPath;
  self->_secondCellIndexPath = 0;

  if ([v12 tv_elementType] == 55 && objc_msgSend(v12, "tv_textStyle") == 3)
  {
    if ([v11 numberOfItems] < 2)
    {
      v16 = [v6 sections];
      v17 = [v16 count];

      if (v17 < 2)
      {
        goto LABEL_10;
      }

      *&cellSize.height = &cellSize;
      *&v32 = 0x3032000000;
      *(&v32 + 1) = __Block_byref_object_copy__5;
      *&v33 = __Block_byref_object_dispose__5;
      *(&v33 + 1) = 0;
      v18 = [v6 sections];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __59___TVListViewController_updateWithViewElement_cellMetrics___block_invoke;
      v41[3] = &unk_279D708A8;
      v41[4] = &cellSize;
      [v18 enumerateObjectsUsingBlock:v41];

      v19 = [*(*&cellSize.height + 40) copy];
      v20 = self->_secondCellIndexPath;
      self->_secondCellIndexPath = v19;

      _Block_object_dispose(&cellSize, 8);
      v15 = *(&v33 + 1);
    }

    else
    {
      v14 = [MEMORY[0x277CCAA70] indexPathForItem:1 inSection:0];
      v15 = self->_secondCellIndexPath;
      self->_secondCellIndexPath = v14;
    }
  }

LABEL_10:
  self->_relatedContentElementValid = 0;
  relatedContentElement = self->_relatedContentElement;
  self->_relatedContentElement = 0;

  self->_previewUpdated = 0;
  v40.receiver = self;
  v40.super_class = _TVListViewController;
  v22 = *&a4->cellMargin.top;
  v37 = *&a4->cellInsetAlt.bottom;
  v38 = v22;
  v39 = *&a4->cellMargin.bottom;
  v23 = *&a4->cellInset.top;
  v33 = *&a4->cellPadding.bottom;
  v34 = v23;
  v24 = *&a4->cellInsetAlt.top;
  v35 = *&a4->cellInset.bottom;
  v36 = v24;
  v25 = *&a4->cellPadding.top;
  cellSize = a4->cellSize;
  v32 = v25;
  [(_TVMLCollectionViewController *)&v40 updateWithViewElement:v6 cellMetrics:&cellSize];
  v26 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];

  if (!v26)
  {
    v27 = [(_TVMLCollectionViewController *)self collectionElement];
    v28 = [v27 sections];

    if ([v28 count])
    {
      v29 = [v28 objectAtIndex:0];
    }

    else
    {
      v29 = 0;
    }

    if ([v29 numberOfItems] >= 1)
    {
      v30 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
      [(_TVMLCollectionViewController *)self setLastFocusedIndexPath:v30];
    }
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _TVListViewController;
  [(_TVMLCollectionViewController *)&v4 viewDidLoad];
  v3 = [(_TVMLCollectionViewController *)self collectionWrappingView];
  [v3 setCollectionGradientMask:5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = _TVListViewController;
  [(_TVListViewController *)&v16 viewWillAppear:a3];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(_TVMLCollectionViewController *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [(_TVMLCollectionViewController *)self collectionView];
        [v11 deselectItemAtIndexPath:v10 animated:0];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = _TVListViewController;
  [(_TVMLCollectionViewController *)&v8 viewDidAppear:a3];
  v4 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
  if (v4 && !self->_pendingPreviewIndexPath)
  {
    lastPreviewedIndexPath = self->_lastPreviewedIndexPath;

    if (!lastPreviewedIndexPath)
    {
      v6 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
      pendingPreviewIndexPath = self->_pendingPreviewIndexPath;
      self->_pendingPreviewIndexPath = v6;

      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
      [(_TVListViewController *)self performSelector:sel__delayedUpdatePreview withObject:0 afterDelay:0.0];
    }
  }

  else
  {
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = _TVListViewController;
  [(_TVListViewController *)&v5 didMoveToParentViewController:?];
  if (!a3)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = _TVListViewController;
  [(_TVMLCollectionViewController *)&v3 viewDidLayoutSubviews];
  [(_TVListViewController *)self _updateCellMetrics];
}

- (id)makeCollectionViewWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_alloc_init(_TVCollectionViewFlowLayout);
  [(UICollectionViewFlowLayout *)v8 setScrollDirection:0];
  [(UICollectionViewFlowLayout *)v8 setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)v8 setSectionInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  v9 = [(_TVCollectionView *)[_TVListView alloc] initWithFrame:v8 collectionViewLayout:x, y, width, height];
  [(_TVListView *)v9 setAutoresizingMask:18];
  [(_TVListView *)v9 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"TVListHeaderViewIdentifier"];
  [(_TVCollectionView *)v9 setDelegate:self];
  [(_TVListView *)v9 setDataSource:self];
  [(_TVListView *)v9 setBackgroundColor:0];
  [(_TVListView *)v9 setOpaque:0];
  [(_TVListView *)v9 setClipsToBounds:0];
  [(_TVListView *)v9 setShowsVerticalScrollIndicator:0];
  [(_TVListView *)v9 setConfigureForStackTemplate:self->_configureForStackTemplate];

  return v9;
}

- (void)updateViewLayoutAnimated:(BOOL)a3 relayout:(BOOL)a4
{
  v5 = [(_TVMLCollectionViewController *)self collectionView:a3];
  v8 = [v5 collectionViewLayout];

  v6 = [(_TVMLCollectionViewController *)self collectionElement];
  v7 = [v6 style];
  [v7 tv_interitemSpacing];
  [v8 setMinimumLineSpacing:?];

  [(_TVListViewController *)self _updateCellMetrics];
}

- (Class)cellClassForElement:(id)a3
{
  v3 = a3;
  if ([v3 elementType] != 53 && objc_msgSend(v3, "elementType") != 14 && objc_msgSend(v3, "tv_elementType") == 55)
  {
    [v3 tv_textStyle];
  }

  v4 = objc_opt_class();

  return v4;
}

- (CGSize)expectedCellSizeForElement:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  -[_TVListViewController _expectedCellSizeForElement:inSectionIndex:](self, "_expectedCellSizeForElement:inSectionIndex:", v6, [a4 section]);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)updateVisibleCell:(id)a3 atIndexPath:(id)a4 withElement:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 tv_elementType] == 53 || objc_msgSend(v10, "tv_elementType") == 14)
  {
    v11 = [(_TVListViewController *)self _viewControllerForElement:v10];
    v12 = +[TVInterfaceFactory sharedInterfaceFactory];
    v13 = [v12 _viewControllerFromElement:v10 existingController:v11];
  }

  else if (v8 && [v10 tv_elementType] == 55 && objc_msgSend(v10, "tv_textStyle") == 3)
  {
    v14 = [v8 contentView];
    v15 = [v14 subviews];
    v16 = [v15 firstObject];

    v17 = +[TVInterfaceFactory sharedInterfaceFactory];
    v18 = [v17 _viewFromElement:v10 existingView:v16];

    [v8 setDisabled:{objc_msgSend(v10, "isDisabled")}];
    [v8 setNeedsLayout];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = _TVListViewController;
    [(_TVMLCollectionViewController *)&v19 updateVisibleCell:v8 atIndexPath:v9 withElement:v10];
  }
}

- (void)updateSupplementaryViewsForSectionAtOldIndex:(int64_t)a3 oldElement:(id)a4 withNewIndex:(int64_t)a5 newElement:(id)a6 requiresReload:(BOOL *)a7 requiresRelayout:(BOOL *)a8
{
  v39 = a6;
  v13 = MEMORY[0x277CCAA70];
  v14 = a4;
  v15 = [v13 indexPathForItem:0 inSection:a3];
  v16 = [v39 header];
  if (v16)
  {
    v17 = [v39 header];
    [(_TVListViewController *)self _expectedHeaderCellSizeForElement:v17 section:a5];
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v19 = *MEMORY[0x277CBF3A8];
    v21 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v22 = [v14 header];

  v23 = MEMORY[0x277D767D8];
  if (v22)
  {
    v24 = [(_TVMLCollectionViewController *)self collectionView];
    v25 = [v24 layoutAttributesForSupplementaryElementOfKind:*v23 atIndexPath:v15];
    [v25 frame];
    v27 = v26;
    v29 = v28;
  }

  else
  {
    v27 = *MEMORY[0x277CBF3A8];
    v29 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (v19 == v27 && v21 == v29)
  {
    v31 = [(_TVMLCollectionViewController *)self collectionView];
    v32 = [v31 _visibleSupplementaryViewOfKind:*v23 atIndexPath:v15];

    if (v32)
    {
      v33 = MEMORY[0x277CCAE60];
      v34 = [v39 header];
      [(_TVListViewController *)self _marginForHeaderCellForElement:v34 section:a5];
      v35 = [v33 valueWithUIEdgeInsets:?];
      [v32 setValue:v35 forTVViewStyle:@"padding"];

      v36 = +[TVInterfaceFactory sharedInterfaceFactory];
      v37 = [v39 header];
      v38 = [v36 _viewFromElement:v37 existingView:v32];
    }
  }

  else
  {
    *a7 = 1;
  }
}

- (void)didUpdateCollectionViewByNeedingReload:(BOOL)a3 focusUpdate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v50 = *MEMORY[0x277D85DE8];
  lastPreviewedIndexPath = self->_lastPreviewedIndexPath;
  self->_lastPreviewedIndexPath = 0;

  v8 = [(_TVMLCollectionViewController *)self collectionElement];
  v9 = [v8 isDisabled];

  if (!v9)
  {
    if (v4)
    {
      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
      pendingPreviewIndexPath = self->_pendingPreviewIndexPath;
      self->_pendingPreviewIndexPath = 0;

      v12 = [MEMORY[0x277D759A0] mainScreen];
      v13 = [v12 focusedView];

      v14 = [(_TVMLCollectionViewController *)self collectionView];
      if ([v13 isDescendantOfView:v14])
      {
      }

      else
      {
        v20 = [(_TVListViewController *)self parentViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v22 = [(_TVMLCollectionViewController *)self collectionView];
          v23 = [v22 remembersLastFocusedIndexPath];

          if (v23)
          {
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v24 = [(_TVMLCollectionViewController *)self collectionView];
            v25 = [v24 visibleCells];

            v26 = [v25 countByEnumeratingWithState:&v45 objects:v49 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v46;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v46 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v45 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v30 setShouldAppearSelected:0];
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v45 objects:v49 count:16];
              }

              while (v27);
            }
          }

          v31 = [(_TVListViewController *)self parentViewController];
          v32 = [v31 setNeedsFocusUpdateToList];

          if ((v32 & 1) == 0)
          {
            v33 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
            v34 = self->_pendingPreviewIndexPath;
            self->_pendingPreviewIndexPath = v33;

            [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
            if (self->_pendingPreviewIndexPath)
            {
              [(_TVListViewController *)self performSelector:sel__delayedUpdatePreview withObject:0 afterDelay:0.0];
            }
          }
        }
      }

      v35 = [(_TVMLCollectionViewController *)self collectionView];
      [v35 _setRemembersPreviouslyFocusedItem:0];

      if (v5)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    v15 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];

    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = self->_pendingPreviewIndexPath;
    if (!v16)
    {
      goto LABEL_29;
    }

    v17 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    v18 = [(NSIndexPath *)v16 isEqual:v17];

    if ((v18 & 1) == 0)
    {
      v39 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
      v40 = self->_pendingPreviewIndexPath;
      self->_pendingPreviewIndexPath = v39;

      if (v5)
      {
        goto LABEL_33;
      }

LABEL_35:
      v41 = [MEMORY[0x277CCAB58] indexSet];
      cachedListChildViewControllers = self->_cachedListChildViewControllers;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __76___TVListViewController_didUpdateCollectionViewByNeedingReload_focusUpdate___block_invoke;
      v43[3] = &unk_279D708D0;
      v44 = v41;
      v38 = v41;
      [(NSMutableArray *)cachedListChildViewControllers enumerateObjectsUsingBlock:v43];
      [(NSMutableArray *)self->_cachedListChildViewControllers removeObjectsAtIndexes:v38];

      goto LABEL_36;
    }

    if (self->_pendingPreviewIndexPath)
    {
      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
      v19 = self->_pendingPreviewIndexPath;
      self->_pendingPreviewIndexPath = 0;
    }

    else
    {
LABEL_29:
      v36 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
      v19 = self->_lastPreviewedIndexPath;
      self->_lastPreviewedIndexPath = v36;
    }

    goto LABEL_31;
  }

  v10 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];

  if (v10)
  {
LABEL_31:
    v37 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    [(_TVListViewController *)self _updatedPreviewWithItemAtIndexPath:v37];
  }

LABEL_32:
  if (!v5)
  {
    goto LABEL_35;
  }

LABEL_33:
  v38 = self->_cachedListChildViewControllers;
  self->_cachedListChildViewControllers = 0;
LABEL_36:
}

- (void)updateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 nextFocusedIndexPath];
  v7 = [(_TVMLCollectionViewController *)self collectionElement];
  v8 = [v7 sections];

  v9 = [v6 section];
  if (v9 >= [v8 count] || (v10 = objc_msgSend(v6, "item"), objc_msgSend(v8, "objectAtIndexedSubscript:", objc_msgSend(v6, "section")), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "numberOfItems"), v11, v13 = v6, v10 >= v12))
  {

    v13 = 0;
  }

  if (v6)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = [(_TVMLCollectionViewController *)self collectionView];
    v15 = [v14 visibleCells];

    v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v31 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v20 setShouldAppearSelected:0];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v17);
    }

    self->_secondIndexPathFocused = 0;
    [(_TVMLCollectionViewController *)self setLastFocusedIndexPath:v13];
    v21 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    pendingPreviewIndexPath = self->_pendingPreviewIndexPath;
    self->_pendingPreviewIndexPath = v21;

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
    [(_TVListViewController *)self performSelector:sel__delayedUpdatePreview withObject:0 afterDelay:0.1];
    if ([v5 focusHeading] == 1 && self->_secondCellIndexPath && objc_msgSend(v13, "isEqual:"))
    {
      v23 = 0;
      self->_secondIndexPathFocused = 1;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v24 = [(_TVMLCollectionViewController *)self collectionView];
  if ([v24 remembersLastFocusedIndexPath])
  {

LABEL_20:
    v23 = 0;
    goto LABEL_21;
  }

  if ([(_TVListViewController *)self isAlwaysSoftFocusEnabled])
  {
  }

  else
  {
    v28 = [(UIViewController *)self->_previewController tv_associatedIKViewElement];
    v29 = [v28 tv_elementType];

    if (v29 != 14)
    {
      goto LABEL_20;
    }
  }

  v30 = [(_TVMLCollectionViewController *)self collectionView];
  v23 = [v30 _remembersPreviouslyFocusedItem];

LABEL_21:
  v25 = [(_TVMLCollectionViewController *)self collectionView];
  v26 = [v25 remembersLastFocusedIndexPath];

  if (v23 != v26)
  {
    v27 = [(_TVMLCollectionViewController *)self collectionView];
    [v27 _setRemembersPreviouslyFocusedItem:v23];
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(_TVMLCollectionViewController *)self collectionElement];
  v8 = [v7 sections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  v10 = [v9 prototypeForItemAtIndex:{objc_msgSend(v6, "row")}];
  v11 = [v6 section];

  [(_TVListViewController *)self _expectedCellSizeForElement:v10 inSectionIndex:v11];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v6 = [(_TVMLCollectionViewController *)self collectionElement:a3];
  v7 = [v6 sections];
  v8 = [v7 objectAtIndexedSubscript:a5];

  v9 = [v8 firstItemElement];
  v10 = MEMORY[0x277D768C8];
  v11 = *(MEMORY[0x277D768C8] + 8);
  v12 = *(MEMORY[0x277D768C8] + 24);
  if ([v9 tv_elementType] == 53 || objc_msgSend(v9, "tv_elementType") == 14 || (v15 = *v10, v17 = v10[2], objc_msgSend(v9, "tv_elementType") == 55) && objc_msgSend(v9, "tv_textStyle") == 3)
  {
    v13 = [v9 style];
    [v13 tv_margin];
    v15 = v14;
    v17 = v16;
  }

  v18 = v15;
  v19 = v11;
  v20 = v17;
  v21 = v12;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v7 = [(_TVMLCollectionViewController *)self collectionElement:a3];
  v8 = [v7 sections];
  v9 = [v8 objectAtIndex:a5];

  v10 = [v9 header];
  [(_TVListViewController *)self _expectedHeaderCellSizeForElement:v10 section:a5];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = _TVListViewController;
  [(_TVMLCollectionViewController *)&v18 collectionView:a3 willDisplayCell:v8 forItemAtIndexPath:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 viewController];
    if (v10)
    {
      v11 = [(_TVListViewController *)self childViewControllers];
      v12 = [v11 containsObject:v10];

      if ((v12 & 1) == 0)
      {
        [(_TVListViewController *)self addChildViewController:v10];
        [v10 didMoveToParentViewController:self];
      }
    }
  }

  v13 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
  if ([v13 isEqual:v9] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && -[_TVListViewController _relatedElementIsGridAtIndexPath:](self, "_relatedElementIsGridAtIndexPath:", v9))
  {
    v14 = [MEMORY[0x277D759A0] mainScreen];
    v15 = [v14 focusedView];
    v16 = [(_TVMLCollectionViewController *)self collectionView];
    v17 = [v15 isDescendantOfView:v16];

    if ((v17 & 1) == 0)
    {
      [v8 setShouldAppearSelected:1];
    }
  }

  else
  {
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _TVListViewController;
  [(_TVMLCollectionViewController *)&v13 collectionView:a3 didEndDisplayingCell:v8 forItemAtIndexPath:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 viewController];
    if (v9)
    {
      v10 = [(_TVListViewController *)self childViewControllers];
      if ([v10 containsObject:v9])
      {
        v11 = [v9 view];
        v12 = [v11 isDescendantOfView:v8];

        if (v12)
        {
          [v9 willMoveToParentViewController:0];
          [v9 removeFromParentViewController];
        }
      }

      else
      {
      }
    }
  }
}

- (void)templateControllerDidUpdateFocusFromView:(id)a3
{
  previewController = self->_previewController;
  v5 = a3;
  v6 = [(UIViewController *)previewController view];
  v7 = [v5 isDescendantOfView:v6];

  if (v7)
  {
    v8 = [(_TVMLCollectionViewController *)self collectionView];
    v9 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    v6 = [v8 cellForItemAtIndexPath:v9];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 updateFloatingViewControlStateForPreviouslyFocusedView:v6];
    }
  }

  v15 = [(_TVMLCollectionViewController *)self collectionView];
  if (([v15 remembersLastFocusedIndexPath] & 1) == 0)
  {
    v10 = [(_TVListViewController *)self isAlwaysSoftFocusEnabled];
    if (v10 || (-[UIViewController tv_associatedIKViewElement](self->_previewController, "tv_associatedIKViewElement"), v6 = objc_claimAutoreleasedReturnValue(), [v6 tv_elementType] == 14))
    {
      v11 = [MEMORY[0x277D759A0] mainScreen];
      v12 = [v11 focusedView];
      v13 = [(UIViewController *)self->_previewController view];
      v14 = [v12 isDescendantOfView:v13];

      if (v10)
      {

        if (!v14)
        {
          return;
        }
      }

      else
      {

        if ((v14 & 1) == 0)
        {
          return;
        }
      }

      v15 = [(_TVMLCollectionViewController *)self collectionView];
      [v15 _setRemembersPreviouslyFocusedItem:1];
    }

    else
    {
    }
  }
}

- (BOOL)collectionView:(id)a3 shouldHandleLongPressForItemAtIndexPath:(id)a4
{
  v4 = [(_TVListViewController *)self traitCollection:a3];
  v5 = [v4 forceTouchCapability] != 2;

  return v5;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _TVListViewController;
  [(_TVMLCollectionViewController *)&v8 scrollViewDidScroll:v4];
  v5 = [(_TVListViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(_TVListViewController *)self delegate];
    [v7 listViewController:self didScrollWithScrollView:v4];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v9.receiver = self;
  v9.super_class = _TVListViewController;
  [(_TVMLCollectionViewController *)&v9 scrollViewWillEndDragging:a3 withVelocity:a4.x targetContentOffset:a4.y];
  if (self->_secondIndexPathFocused)
  {
    v7 = [(_TVMLCollectionViewController *)self collectionView];
    [v7 contentInset];
    a5->y = -v8;
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_TVMLCollectionViewController *)self collectionElement];
  v9 = [v8 sections];
  v10 = [v9 objectAtIndex:{objc_msgSend(v7, "section")}];

  v11 = [v10 elementForItemAtIndex:{objc_msgSend(v7, "item")}];
  if ([v11 tv_elementType] == 53 || objc_msgSend(v11, "tv_elementType") == 14)
  {
    v12 = [v11 elementName];
    v13 = [v6 dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:v7];

    v14 = [(_TVListViewController *)self _viewControllerForElement:v11];
    v15 = [v14 view];
    [v13 bounds];
    [v15 setFrame:?];
    [v15 setAutoresizingMask:18];
    [v13 setViewController:v14];
  }

  else if ([v11 tv_elementType] == 55 && objc_msgSend(v11, "tv_textStyle") == 3)
  {
    v17 = [v11 elementName];
    v13 = [v6 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:v7];

    v18 = +[TVInterfaceFactory sharedInterfaceFactory];
    v19 = [v18 _viewFromElement:v11 existingView:0];

    [v13 setDisabled:{objc_msgSend(v11, "isDisabled")}];
    v20 = [v13 contentView];
    [v20 addSubview:v19];

    [v13 setNeedsLayout];
  }

  else
  {
    v21.receiver = self;
    v21.super_class = _TVListViewController;
    v13 = [(_TVMLCollectionViewController *)&v21 collectionView:v6 cellForItemAtIndexPath:v7];
    if ([v11 tv_elementType] == 23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v13 setDelegate:self];
      }
    }
  }

  return v13;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_TVMLCollectionViewController *)self collectionElement];
  v12 = [v11 sections];
  v13 = [v12 objectAtIndex:{objc_msgSend(v8, "section")}];

  v14 = [v10 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"TVListHeaderViewIdentifier" forIndexPath:v8];

  [v14 transferLayoutStylesFromElement:v13];
  v15 = MEMORY[0x277CCAE60];
  v16 = [v13 header];
  v17 = [v8 section];

  [(_TVListViewController *)self _marginForHeaderCellForElement:v16 section:v17];
  v18 = [v15 valueWithUIEdgeInsets:?];
  [v14 setValue:v18 forTVViewStyle:@"padding"];

  [v14 tv_setAssociatedIKViewElement:0];
  v19 = +[TVInterfaceFactory sharedInterfaceFactory];
  v20 = [v13 header];
  v21 = [v19 _viewFromElement:v20 existingView:v14];

  return v14;
}

- (BOOL)listCell:(id)a3 shouldAppearSelectedForPreviouslyFocusedView:(id)a4
{
  v6 = MEMORY[0x277D759A0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 mainScreen];
  v10 = [v9 focusedView];

  v11 = [(UIViewController *)self->_previewController view];
  LOBYTE(v9) = [v10 isDescendantOfView:v11];

  v12 = [(_TVMLCollectionViewController *)self collectionView];
  v13 = [v10 isDescendantOfView:v12];

  v14 = [(_TVMLCollectionViewController *)self collectionView];
  v15 = [v7 isDescendantOfView:v14];

  v16 = [(UIViewController *)self->_previewController view];
  v17 = [v7 isDescendantOfView:v16];

  v18 = (v8 == v7) & v9;
  v19 = (v15 | v17) & ((v9 | v13) ^ 1);
  if ([(_TVListViewController *)self isAlwaysSoftFocusEnabled])
  {
    v20 = v18 | v19;
  }

  else
  {
    v21 = [(UIViewController *)self->_previewController tv_associatedIKViewElement];
    v20 = ([v21 tv_elementType] == 14) & (v18 | v19);
  }

  return v20 & 1;
}

- (id)impressionableElementsContainedInDocument:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_TVMLCollectionViewController *)self collectionElement];
  v6 = [v5 appDocument];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = [(_TVMLCollectionViewController *)self collectionView];
    v9 = [v8 visibleCells];

    v10 = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v22 + 1) + 8 * i) tv_impressionableElementsForDocument:{v4, v22}];
          [v10 addObjectsFromArray:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    v17 = [(_TVMLCollectionViewController *)self collectionWrappingView];
    v18 = [v17 headerView];
    v19 = [v18 tv_impressionableElementsForDocument:v4];
    [v10 addObjectsFromArray:v19];

    if ([v10 count])
    {
      v20 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)_shadowCollectionElementForCollectionElement:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(_TVShadowViewElement);
  v15 = [[_TVShadowViewElementID alloc] initWithViewElement:v3];
  [(_TVShadowViewElement *)v4 setElementID:?];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = v3;
  v6 = [v3 sections];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 elementType] == 49)
        {
          v12 = [[_TVShadowViewElementID alloc] initWithViewElement:v11];
          v13 = objc_alloc_init(_TVShadowViewElement);
          [(_TVShadowViewElement *)v13 setElementID:v12];
          [(_TVShadowViewElement *)v13 setParent:v4];
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    [(_TVShadowViewElement *)v4 setChildren:v5];
  }

  return v4;
}

- (void)_updateCellMetrics
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = [(_TVMLCollectionViewController *)self collectionView];
  v4 = [v3 collectionViewLayout];

  v5 = [(_TVMLCollectionViewController *)self collectionElement];
  v6 = [v5 style];
  [v6 tv_padding];
  v8 = v7;
  v10 = v9;

  v11 = [(_TVMLCollectionViewController *)self collectionElement];
  v12 = [v11 style];
  [v12 tv_width];
  v59 = v4;
  if (v13 == 0.0)
  {
    v14 = [(_TVMLCollectionViewController *)self collectionView];
    [v14 bounds];
    v16 = v15 - v8 - v10;
  }

  else
  {
    v16 = v13;
  }

  cachedCellWidth = self->_cachedCellWidth;
  self->_cachedCellWidth = v16;
  v60 = self;
  v61 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v18 = [(_TVMLCollectionViewController *)self collectionElement];
  v19 = [v18 sections];

  obj = v19;
  v20 = [v19 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v64;
    v24 = *MEMORY[0x277D1AF50];
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v64 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v63 + 1) + 8 * i);
        if ([v26 numberOfItems] >= 1)
        {
          v27 = 0;
          while (1)
          {
            v28 = [v26 elementForItemAtIndex:v27];
            v29 = [v28 elementName];
            v30 = [v29 isEqualToString:v24];

            if (v30)
            {
              break;
            }

            if (++v27 >= [v26 numberOfItems])
            {
              goto LABEL_30;
            }
          }

          if (v28)
          {
            v31 = [v28 style];
            [v31 tv_height];
            v33 = v32;

            if (v33 <= 2.22044605e-16)
            {
              v36 = +[TVInterfaceFactory sharedInterfaceFactory];
              v34 = [v36 _viewFromElement:v28 existingView:0];

              v37 = [v28 style];
              [v37 tv_padding];
              v39 = v38;
              v41 = v40;

              [v34 sizeThatFits:{v60->_cachedCellWidth, 0.0}];
              v43 = v41 + v39 + v42;
              v44 = [v28 style];
              [v44 tv_minHeight];
              v46 = v45;

              if (v43 < v46 && v46 > 2.22044605e-16)
              {
                v43 = v46;
              }

              v48 = [v28 style];
              [v48 tv_maxHeight];
              v50 = v49;

              if (v43 <= v50 || v50 <= 2.22044605e-16)
              {
                v52 = v43;
              }

              else
              {
                v52 = v50;
              }

              v35 = [MEMORY[0x277CCABB0] numberWithDouble:v52];
              v53 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
              [v61 setObject:v35 forKeyedSubscript:v53];
            }

            else
            {
              v34 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
              v35 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
              [v61 setObject:v34 forKeyedSubscript:v35];
            }
          }
        }

LABEL_30:
        ++v22;
      }

      v21 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v21);
  }

  if ([v61 count])
  {
    v54 = v61;
  }

  else
  {
    v54 = 0;
  }

  v55 = v54;
  cachedListItemLockupHeightsBySection = v60->_cachedListItemLockupHeightsBySection;
  if (cachedListItemLockupHeightsBySection == v55)
  {
    objc_storeStrong(&v60->_cachedListItemLockupHeightsBySection, v54);
    v58 = v16 == cachedCellWidth;
  }

  else
  {
    v57 = [(NSDictionary *)cachedListItemLockupHeightsBySection isEqualToDictionary:v55];
    objc_storeStrong(&v60->_cachedListItemLockupHeightsBySection, v54);
    v58 = v57 && v16 == cachedCellWidth;
  }

  if (!v58)
  {
    [v59 invalidateLayout];
  }
}

- (void)_delayedUpdatePreview
{
  v3 = [(_TVListViewController *)self view];
  v4 = [v3 window];

  if (v4)
  {
    pendingPreviewIndexPath = self->_pendingPreviewIndexPath;
    v6 = pendingPreviewIndexPath;
    v7 = self->_pendingPreviewIndexPath;
    self->_pendingPreviewIndexPath = 0;

    if (([(NSIndexPath *)self->_lastPreviewedIndexPath isEqual:v6]& 1) != 0)
    {
      if (v6)
      {
        [(_TVListViewController *)self _updatedPreviewWithItemAtIndexPath:v6];
      }
    }

    else
    {
      objc_storeStrong(&self->_lastPreviewedIndexPath, pendingPreviewIndexPath);
      if (v6)
      {
        v8 = [(_TVMLCollectionViewController *)self collectionElement];
        v9 = [v8 sections];
        v10 = [v9 objectAtIndex:{-[NSIndexPath section](v6, "section")}];

        v11 = [v10 elementForItemAtIndex:{-[NSIndexPath row](v6, "row")}];
        v12 = [(_TVMLCollectionViewController *)self collectionView];
        v13 = [v12 cellForItemAtIndexPath:v6];

        objc_initWeak(&location, self);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __46___TVListViewController__delayedUpdatePreview__block_invoke;
        v14[3] = &unk_279D6F038;
        objc_copyWeak(&v16, &location);
        v15 = v6;
        [v11 tv_dispatchEvent:@"highlight" canBubble:1 isCancelable:1 extraInfo:0 targetResponder:v13 completionBlock:v14];

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (BOOL)_relatedElementIsGridAtIndexPath:(id)a3
{
  v3 = [(_TVListViewController *)self _relatedContentElementForIndexPath:a3];
  v4 = [v3 children];
  v5 = [v4 firstObject];
  v6 = [v5 tv_elementType] == 14;

  return v6;
}

- (id)_relatedContentElementForIndexPath:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_TVMLCollectionViewController *)self collectionElement];
  v6 = [v5 sections];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];

  v8 = [v7 elementForItemAtIndex:{objc_msgSend(v4, "row")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 children];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 tv_elementType] == 43)
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (void)_updatedPreviewWithItemAtIndexPath:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_TVListViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(_TVListViewController *)self _relatedContentElementForIndexPath:v4];
    if (v7)
    {
      v30 = 0;
      v8 = [(_TVListViewController *)self _previewControllerWithElement:v7 previewElement:&v30];
      v9 = v30;
      if (v8)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v9 = 0;
    }

    if (!self->_relatedContentElementValid)
    {

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v10 = [(_TVMLCollectionViewController *)self collectionElement];
      v11 = [v10 children];

      v7 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v7)
      {
        v12 = *v27;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(v11);
            }

            v14 = *(*(&v26 + 1) + 8 * i);
            if ([v14 tv_elementType] == 43)
            {
              v7 = v14;
              goto LABEL_17;
            }
          }

          v7 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:

      objc_storeStrong(&self->_relatedContentElement, v7);
      self->_relatedContentElementValid = 1;
    }

    v15 = self->_relatedContentElement;

    if (v15)
    {
      v25 = v9;
      v8 = [(_TVListViewController *)self _previewControllerWithElement:v15 previewElement:&v25];
      v16 = v25;

      v9 = v16;
      v7 = v15;
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

LABEL_21:
    if (v9 != self->_previewElement || v8 != self->_previewController)
    {
      objc_storeStrong(&self->_previewElement, v9);
      if (v8 != self->_previewController)
      {
        objc_storeStrong(&self->_previewController, v8);
        v17 = [(_TVMLCollectionViewController *)self collectionView];
        [v17 _setRemembersPreviouslyFocusedItem:0];

        v18 = [(_TVListViewController *)self delegate];
        [v18 listViewController:self updatePreviewViewController:v8];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIViewController *)self->_previewController setAlwaysSoftFocusEnabled:0];
    }

    v19 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    if ([v19 isEqual:v4] && (-[_TVListViewController isAlwaysSoftFocusEnabled](self, "isAlwaysSoftFocusEnabled") || -[IKViewElement tv_elementType](v9, "tv_elementType") == 14))
    {
      v20 = [MEMORY[0x277D759A0] mainScreen];
      v21 = [v20 focusedView];
      v22 = [(UIViewController *)self->_previewController view];
      v23 = [v21 isDescendantOfView:v22];

      if (!v23)
      {
LABEL_34:

        goto LABEL_35;
      }

      v24 = [(_TVMLCollectionViewController *)self collectionView];
      v19 = [v24 cellForItemAtIndexPath:v4];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v19 setShouldAppearSelected:1];
      }
    }

    goto LABEL_34;
  }

LABEL_35:
}

- (id)_previewControllerWithElement:(id)a3 previewElement:(id *)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 children];
  v8 = [v7 count];

  if (!v8)
  {
    v23 = 0;
    goto LABEL_48;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v34 = v6;
  v9 = [v6 children];
  v37 = [v9 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v37)
  {
    v23 = 0;
    goto LABEL_47;
  }

  v10 = &OBJC_IVAR___TVTimeRange__endDate;
  v36 = *v39;
  while (2)
  {
    v11 = 0;
    do
    {
      if (*v39 != v36)
      {
        objc_enumerationMutation(v9);
      }

      v12 = *(*(&v38 + 1) + 8 * v11);
      v13 = v10[779];
      v14 = *(&self->super.super.super.super.isa + v13);
      if (v14 == v12)
      {
        if (![*(*(&v38 + 1) + 8 * v11) updateType])
        {
          v23 = self->_previewController;
          if (a4)
          {
            v33 = v12;
            *a4 = v12;
          }

          goto LABEL_47;
        }

        v14 = *(&self->super.super.super.super.isa + v13);
      }

      if (v14 == v12 && ([v12 updateType] == 1 || objc_msgSend(v12, "updateType") == 2))
      {
        if (self->_previewUpdated)
        {
          v18 = [(UIViewController *)self->_previewController view];
          LOBYTE(v15) = 1;
          goto LABEL_25;
        }

        v15 = 1;
      }

      else
      {
        v15 = 0;
      }

      v16 = +[TVInterfaceFactory sharedInterfaceFactory];
      if (v15)
      {
        v35 = [(UIViewController *)self->_previewController view];
        v17 = v35;
      }

      else
      {
        v17 = 0;
      }

      v18 = [v16 _viewFromElement:v12 existingView:v17];
      if (v15)
      {
      }

      v19 = [(UIViewController *)self->_previewController view];

      v20 = v15 ^ 1;
      if (v18 != v19)
      {
        v20 = 1;
      }

      if ((v20 & 1) == 0)
      {
        LOBYTE(v15) = 1;
        self->_previewUpdated = 1;
      }

LABEL_25:
      previewController = self->_previewController;
      if (v18)
      {
        v22 = [(UIViewController *)previewController view];

        if (v18 == v22)
        {
          v23 = self->_previewController;
          if (!a4)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v23 = objc_alloc_init(MEMORY[0x277D75D28]);
          [(UIViewController *)v23 setView:v18];
          [(UIViewController *)v23 tv_setAssociatedIKViewElement:v12];
          if (!a4)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        v24 = v9;
        v25 = a4;
        v26 = [(UIViewController *)previewController tv_associatedIKViewElement];
        v27 = v26;
        if ((v15 & 1) != 0 || [v26 tv_elementType] == 17 && objc_msgSend(v12, "tv_elementType") == 17)
        {
          v28 = self->_previewController;
        }

        else
        {
          v28 = 0;
        }

        v29 = +[TVInterfaceFactory sharedInterfaceFactory];
        v23 = [v29 _viewControllerFromElement:v12 existingController:v28];

        a4 = v25;
        v9 = v24;
        v10 = &OBJC_IVAR___TVTimeRange__endDate;
        if (!a4)
        {
          goto LABEL_38;
        }
      }

      if (v23)
      {
        v31 = v12;
        *a4 = v12;

        goto LABEL_47;
      }

LABEL_38:

      if (v23)
      {
        goto LABEL_47;
      }

      ++v11;
    }

    while (v37 != v11);
    v30 = [v9 countByEnumeratingWithState:&v38 objects:v42 count:16];
    v23 = 0;
    v37 = v30;
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_47:

  v6 = v34;
LABEL_48:

  return v23;
}

- (id)_viewControllerForElement:(id)a3
{
  v4 = a3;
  v5 = [(_TVListViewController *)self _cachedViewControllerForElement:v4];
  if (!v5)
  {
    v7 = +[TVInterfaceFactory sharedInterfaceFactory];
    v5 = [v7 _viewControllerFromElement:v4 existingController:0];

    if (v5)
    {
      cachedListChildViewControllers = self->_cachedListChildViewControllers;
      if (!cachedListChildViewControllers)
      {
        v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
        v10 = self->_cachedListChildViewControllers;
        self->_cachedListChildViewControllers = v9;

        cachedListChildViewControllers = self->_cachedListChildViewControllers;
      }

      if (([(NSMutableArray *)cachedListChildViewControllers containsObject:v5]& 1) == 0)
      {
        [(NSMutableArray *)self->_cachedListChildViewControllers addObject:v5];
      }
    }
  }

  return v5;
}

- (id)_cachedViewControllerForElement:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_cachedListChildViewControllers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [_TVShadowViewElementID alloc];
        v11 = [v9 tv_associatedIKViewElement];
        v12 = [(_TVShadowViewElementID *)v10 initWithViewElement:v11];

        v13 = [[_TVShadowViewElementID alloc] initWithViewElement:v4];
        if ([(_TVShadowViewElementID *)v12 isEqual:v13])
        {
          v6 = v9;

          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (CGSize)_expectedCellSizeForElement:(id)a3 inSectionIndex:(int64_t)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  cachedCellWidth = self->_cachedCellWidth;
  v8 = [v6 style];
  [v8 tv_padding];
  v10 = v9;
  v12 = v11;

  if ([v6 tv_elementType] == 53 || objc_msgSend(v6, "tv_elementType") == 14)
  {
    v13 = [(_TVListViewController *)self _viewControllerForElement:v6];
    v14 = [v13 view];
    [v14 sizeThatFits:{cachedCellWidth, 0.0}];
    cachedCellWidth = v15;
    v17 = v16;

    goto LABEL_4;
  }

  if ([v6 tv_elementType] == 55 && objc_msgSend(v6, "tv_textStyle") == 3)
  {
    v20 = +[TVInterfaceFactory sharedInterfaceFactory];
    v21 = [v20 _viewFromElement:v6 existingView:0];

    v22 = [v6 style];
    [v22 tv_padding];
    v24 = v23;
    v26 = v25;

    cachedCellWidth = self->_cachedCellWidth;
    [v21 sizeThatFits:{cachedCellWidth, 0.0}];
    v17 = v26 + v24 + v27;

    goto LABEL_4;
  }

  v28 = [v6 tv_elementType];
  v29 = [v6 style];
  [v29 tv_height];
  v17 = v30;
  if (v28 == 52)
  {
    if (v30 == 0.0)
    {
      v17 = 1.0;
    }

    cachedCellWidth = self->_cachedCellWidth;
    goto LABEL_4;
  }

  if (v17 <= 2.22044605e-16)
  {
    v31 = [v6 elementName];
    v32 = [v31 isEqualToString:*MEMORY[0x277D1AF50]];

    v17 = 0.0;
    if (!v32)
    {
      goto LABEL_18;
    }

    cachedListItemLockupHeightsBySection = self->_cachedListItemLockupHeightsBySection;
    v34 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v35 = [(NSDictionary *)cachedListItemLockupHeightsBySection objectForKey:v34];
    [v35 doubleValue];
    v37 = v36;

    if (v37 <= 2.22044605e-16)
    {
      goto LABEL_18;
    }

    v17 = v37;
  }

  if (v17 != 0.0)
  {
    goto LABEL_4;
  }

LABEL_18:
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v38 = [v6 children];
  v39 = [v38 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (!v39)
  {

    if (v17 != 0.0)
    {
      goto LABEL_4;
    }

    goto LABEL_41;
  }

  v40 = v39;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = *v58;
  do
  {
    for (i = 0; i != v40; ++i)
    {
      if (*v58 != v44)
      {
        objc_enumerationMutation(v38);
      }

      v46 = *(*(&v57 + 1) + 8 * i);
      if ([v46 tv_elementType] == 16 && !objc_msgSend(v46, "tv_imageType"))
      {
        [v46 height];
        v48 = v47;
        v49 = [v46 style];
        [v49 tv_margin];
        v51 = v48 + fmax(v50, v10);
        v52 = [v46 style];
        [v52 tv_margin];
        v17 = v51 + fmax(v53, v12);
      }

      else if ([v46 tv_elementType] == 55)
      {
        if ([v46 tv_textStyle] == 1)
        {
          v41 = 1;
        }

        else if ([v46 tv_textStyle] == 2)
        {
          v42 = 1;
        }

        else
        {
          v43 |= [v46 tv_textStyle] == 0;
        }
      }
    }

    v40 = [v38 countByEnumeratingWithState:&v57 objects:v61 count:16];
  }

  while (v40);

  if (v17 == 0.0)
  {
    if (v41 & v42)
    {
      v54 = !+[TVMLUtilities _isSolariumMetricsEnabled];
      v55 = 90.0;
      v56 = 120.0;
LABEL_42:
      if (!v54)
      {
        v55 = v56;
      }

      v17 = fmax(v55, v17);
      goto LABEL_4;
    }

    if (v43)
    {
      v17 = fmax(v17, 40.0);
      goto LABEL_4;
    }

LABEL_41:
    v54 = !+[TVMLUtilities _isSolariumMetricsEnabled];
    v55 = 70.0;
    v56 = 66.0;
    goto LABEL_42;
  }

LABEL_4:

  v18 = cachedCellWidth;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)_expectedHeaderCellSizeForElement:(id)a3 section:(int64_t)a4
{
  cachedCellWidth = self->_cachedCellWidth;
  if (a3)
  {
    v7 = a3;
    [(_TVListViewController *)self _marginForHeaderCellForElement:v7 section:a4];
    v9 = v8;
    v11 = v10;
    v12 = +[TVInterfaceFactory sharedInterfaceFactory];
    v13 = [v12 _viewFromElement:v7 existingView:0];

    [v13 sizeThatFits:{cachedCellWidth, 0.0}];
    cachedCellWidth = v14;
    v16 = v9 + v11 + v15;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = cachedCellWidth;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (UIEdgeInsets)_marginForHeaderCellForElement:(id)a3 section:(int64_t)a4
{
  v6 = [a3 style];
  [v6 tv_margin];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (!a4)
  {
    v15 = [(_TVMLCollectionViewController *)self collectionWrappingView];
    v16 = [v15 headerView];

    if (v16)
    {
      v17 = [(_TVMLCollectionViewController *)self collectionWrappingView];
      v18 = [v17 headerView];

      [v18 tv_margin];
      v8 = fmax(v8 - v19, 0.0);
    }
  }

  v20 = v8;
  v21 = v10;
  v22 = v12;
  v23 = v14;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (_TVListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end