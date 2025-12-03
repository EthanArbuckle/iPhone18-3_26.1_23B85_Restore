@interface _TVListViewController
+ (id)_shadowCollectionElementForCollectionElement:(id)element;
- (BOOL)_relatedElementIsGridAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHandleLongPressForItemAtIndexPath:(id)path;
- (BOOL)listCell:(id)cell shouldAppearSelectedForPreviouslyFocusedView:(id)view;
- (CGSize)_expectedCellSizeForElement:(id)element inSectionIndex:(int64_t)index;
- (CGSize)_expectedHeaderCellSizeForElement:(id)element section:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)expectedCellSizeForElement:(id)element atIndexPath:(id)path;
- (Class)cellClassForElement:(id)element;
- (UIEdgeInsets)_marginForHeaderCellForElement:(id)element section:(int64_t)section;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (_TVListViewControllerDelegate)delegate;
- (id)_cachedViewControllerForElement:(id)element;
- (id)_previewControllerWithElement:(id)element previewElement:(id *)previewElement;
- (id)_relatedContentElementForIndexPath:(id)path;
- (id)_viewControllerForElement:(id)element;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)impressionableElementsContainedInDocument:(id)document;
- (id)makeCollectionViewWithFrame:(CGRect)frame;
- (void)_delayedUpdatePreview;
- (void)_updateCellMetrics;
- (void)_updatedPreviewWithItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)didUpdateCollectionViewByNeedingReload:(BOOL)reload focusUpdate:(BOOL)update;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)templateControllerDidUpdateFocusFromView:(id)view;
- (void)updateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)updateSupplementaryViewsForSectionAtOldIndex:(int64_t)index oldElement:(id)element withNewIndex:(int64_t)newIndex newElement:(id)newElement requiresReload:(BOOL *)reload requiresRelayout:(BOOL *)relayout;
- (void)updateViewLayoutAnimated:(BOOL)animated relayout:(BOOL)relayout;
- (void)updateVisibleCell:(id)cell atIndexPath:(id)path withElement:(id)element;
- (void)updateWithViewElement:(id)element cellMetrics:(TVCellMetrics *)metrics;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _TVListViewController

- (void)dealloc
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
  v3.receiver = self;
  v3.super_class = _TVListViewController;
  [(_TVMLCollectionViewController *)&v3 dealloc];
}

- (void)updateWithViewElement:(id)element cellMetrics:(TVCellMetrics *)metrics
{
  elementCopy = element;
  appDocument = [elementCopy appDocument];
  templateElement = [appDocument templateElement];
  tv_elementType = [templateElement tv_elementType];

  if (tv_elementType == 74)
  {
    self->_configureForStackTemplate = 1;
  }

  sections = [elementCopy sections];
  firstObject = [sections firstObject];

  firstItemElement = [firstObject firstItemElement];
  secondCellIndexPath = self->_secondCellIndexPath;
  self->_secondCellIndexPath = 0;

  if ([firstItemElement tv_elementType] == 55 && objc_msgSend(firstItemElement, "tv_textStyle") == 3)
  {
    if ([firstObject numberOfItems] < 2)
    {
      sections2 = [elementCopy sections];
      v17 = [sections2 count];

      if (v17 < 2)
      {
        goto LABEL_10;
      }

      *&cellSize.height = &cellSize;
      *&v32 = 0x3032000000;
      *(&v32 + 1) = __Block_byref_object_copy__5;
      *&v33 = __Block_byref_object_dispose__5;
      *(&v33 + 1) = 0;
      sections3 = [elementCopy sections];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __59___TVListViewController_updateWithViewElement_cellMetrics___block_invoke;
      v41[3] = &unk_279D708A8;
      v41[4] = &cellSize;
      [sections3 enumerateObjectsUsingBlock:v41];

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
  v22 = *&metrics->cellMargin.top;
  v37 = *&metrics->cellInsetAlt.bottom;
  v38 = v22;
  v39 = *&metrics->cellMargin.bottom;
  v23 = *&metrics->cellInset.top;
  v33 = *&metrics->cellPadding.bottom;
  v34 = v23;
  v24 = *&metrics->cellInsetAlt.top;
  v35 = *&metrics->cellInset.bottom;
  v36 = v24;
  v25 = *&metrics->cellPadding.top;
  cellSize = metrics->cellSize;
  v32 = v25;
  [(_TVMLCollectionViewController *)&v40 updateWithViewElement:elementCopy cellMetrics:&cellSize];
  lastFocusedIndexPath = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];

  if (!lastFocusedIndexPath)
  {
    collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
    sections4 = [collectionElement sections];

    if ([sections4 count])
    {
      v29 = [sections4 objectAtIndex:0];
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
  collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
  [collectionWrappingView setCollectionGradientMask:5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = _TVListViewController;
  [(_TVListViewController *)&v16 viewWillAppear:appear];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  collectionView = [(_TVMLCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
        [collectionView2 deselectItemAtIndexPath:v10 animated:0];

        ++v9;
      }

      while (v7 != v9);
      v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = _TVListViewController;
  [(_TVMLCollectionViewController *)&v8 viewDidAppear:appear];
  lastFocusedIndexPath = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
  if (lastFocusedIndexPath && !self->_pendingPreviewIndexPath)
  {
    lastPreviewedIndexPath = self->_lastPreviewedIndexPath;

    if (!lastPreviewedIndexPath)
    {
      lastFocusedIndexPath2 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
      pendingPreviewIndexPath = self->_pendingPreviewIndexPath;
      self->_pendingPreviewIndexPath = lastFocusedIndexPath2;

      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
      [(_TVListViewController *)self performSelector:sel__delayedUpdatePreview withObject:0 afterDelay:0.0];
    }
  }

  else
  {
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = _TVListViewController;
  [(_TVListViewController *)&v5 didMoveToParentViewController:?];
  if (!controller)
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

- (id)makeCollectionViewWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_alloc_init(_TVCollectionViewFlowLayout);
  [(UICollectionViewFlowLayout *)v8 setScrollDirection:0];
  [(UICollectionViewFlowLayout *)v8 setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)v8 setSectionInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  height = [(_TVCollectionView *)[_TVListView alloc] initWithFrame:v8 collectionViewLayout:x, y, width, height];
  [(_TVListView *)height setAutoresizingMask:18];
  [(_TVListView *)height registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"TVListHeaderViewIdentifier"];
  [(_TVCollectionView *)height setDelegate:self];
  [(_TVListView *)height setDataSource:self];
  [(_TVListView *)height setBackgroundColor:0];
  [(_TVListView *)height setOpaque:0];
  [(_TVListView *)height setClipsToBounds:0];
  [(_TVListView *)height setShowsVerticalScrollIndicator:0];
  [(_TVListView *)height setConfigureForStackTemplate:self->_configureForStackTemplate];

  return height;
}

- (void)updateViewLayoutAnimated:(BOOL)animated relayout:(BOOL)relayout
{
  v5 = [(_TVMLCollectionViewController *)self collectionView:animated];
  collectionViewLayout = [v5 collectionViewLayout];

  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  style = [collectionElement style];
  [style tv_interitemSpacing];
  [collectionViewLayout setMinimumLineSpacing:?];

  [(_TVListViewController *)self _updateCellMetrics];
}

- (Class)cellClassForElement:(id)element
{
  elementCopy = element;
  if ([elementCopy elementType] != 53 && objc_msgSend(elementCopy, "elementType") != 14 && objc_msgSend(elementCopy, "tv_elementType") == 55)
  {
    [elementCopy tv_textStyle];
  }

  v4 = objc_opt_class();

  return v4;
}

- (CGSize)expectedCellSizeForElement:(id)element atIndexPath:(id)path
{
  elementCopy = element;
  -[_TVListViewController _expectedCellSizeForElement:inSectionIndex:](self, "_expectedCellSizeForElement:inSectionIndex:", elementCopy, [path section]);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)updateVisibleCell:(id)cell atIndexPath:(id)path withElement:(id)element
{
  cellCopy = cell;
  pathCopy = path;
  elementCopy = element;
  if ([elementCopy tv_elementType] == 53 || objc_msgSend(elementCopy, "tv_elementType") == 14)
  {
    v11 = [(_TVListViewController *)self _viewControllerForElement:elementCopy];
    v12 = +[TVInterfaceFactory sharedInterfaceFactory];
    v13 = [v12 _viewControllerFromElement:elementCopy existingController:v11];
  }

  else if (cellCopy && [elementCopy tv_elementType] == 55 && objc_msgSend(elementCopy, "tv_textStyle") == 3)
  {
    contentView = [cellCopy contentView];
    subviews = [contentView subviews];
    firstObject = [subviews firstObject];

    v17 = +[TVInterfaceFactory sharedInterfaceFactory];
    v18 = [v17 _viewFromElement:elementCopy existingView:firstObject];

    [cellCopy setDisabled:{objc_msgSend(elementCopy, "isDisabled")}];
    [cellCopy setNeedsLayout];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = _TVListViewController;
    [(_TVMLCollectionViewController *)&v19 updateVisibleCell:cellCopy atIndexPath:pathCopy withElement:elementCopy];
  }
}

- (void)updateSupplementaryViewsForSectionAtOldIndex:(int64_t)index oldElement:(id)element withNewIndex:(int64_t)newIndex newElement:(id)newElement requiresReload:(BOOL *)reload requiresRelayout:(BOOL *)relayout
{
  newElementCopy = newElement;
  v13 = MEMORY[0x277CCAA70];
  elementCopy = element;
  v15 = [v13 indexPathForItem:0 inSection:index];
  header = [newElementCopy header];
  if (header)
  {
    header2 = [newElementCopy header];
    [(_TVListViewController *)self _expectedHeaderCellSizeForElement:header2 section:newIndex];
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v19 = *MEMORY[0x277CBF3A8];
    v21 = *(MEMORY[0x277CBF3A8] + 8);
  }

  header3 = [elementCopy header];

  v23 = MEMORY[0x277D767D8];
  if (header3)
  {
    collectionView = [(_TVMLCollectionViewController *)self collectionView];
    v25 = [collectionView layoutAttributesForSupplementaryElementOfKind:*v23 atIndexPath:v15];
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
    collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
    v32 = [collectionView2 _visibleSupplementaryViewOfKind:*v23 atIndexPath:v15];

    if (v32)
    {
      v33 = MEMORY[0x277CCAE60];
      header4 = [newElementCopy header];
      [(_TVListViewController *)self _marginForHeaderCellForElement:header4 section:newIndex];
      v35 = [v33 valueWithUIEdgeInsets:?];
      [v32 setValue:v35 forTVViewStyle:@"padding"];

      v36 = +[TVInterfaceFactory sharedInterfaceFactory];
      header5 = [newElementCopy header];
      v38 = [v36 _viewFromElement:header5 existingView:v32];
    }
  }

  else
  {
    *reload = 1;
  }
}

- (void)didUpdateCollectionViewByNeedingReload:(BOOL)reload focusUpdate:(BOOL)update
{
  updateCopy = update;
  reloadCopy = reload;
  v50 = *MEMORY[0x277D85DE8];
  lastPreviewedIndexPath = self->_lastPreviewedIndexPath;
  self->_lastPreviewedIndexPath = 0;

  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  isDisabled = [collectionElement isDisabled];

  if (!isDisabled)
  {
    if (updateCopy)
    {
      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
      pendingPreviewIndexPath = self->_pendingPreviewIndexPath;
      self->_pendingPreviewIndexPath = 0;

      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      focusedView = [mainScreen focusedView];

      collectionView = [(_TVMLCollectionViewController *)self collectionView];
      if ([focusedView isDescendantOfView:collectionView])
      {
      }

      else
      {
        parentViewController = [(_TVListViewController *)self parentViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
          remembersLastFocusedIndexPath = [collectionView2 remembersLastFocusedIndexPath];

          if (remembersLastFocusedIndexPath)
          {
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            collectionView3 = [(_TVMLCollectionViewController *)self collectionView];
            visibleCells = [collectionView3 visibleCells];

            v26 = [visibleCells countByEnumeratingWithState:&v45 objects:v49 count:16];
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
                    objc_enumerationMutation(visibleCells);
                  }

                  v30 = *(*(&v45 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v30 setShouldAppearSelected:0];
                  }
                }

                v27 = [visibleCells countByEnumeratingWithState:&v45 objects:v49 count:16];
              }

              while (v27);
            }
          }

          parentViewController2 = [(_TVListViewController *)self parentViewController];
          setNeedsFocusUpdateToList = [parentViewController2 setNeedsFocusUpdateToList];

          if ((setNeedsFocusUpdateToList & 1) == 0)
          {
            lastFocusedIndexPath = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
            v34 = self->_pendingPreviewIndexPath;
            self->_pendingPreviewIndexPath = lastFocusedIndexPath;

            [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
            if (self->_pendingPreviewIndexPath)
            {
              [(_TVListViewController *)self performSelector:sel__delayedUpdatePreview withObject:0 afterDelay:0.0];
            }
          }
        }
      }

      collectionView4 = [(_TVMLCollectionViewController *)self collectionView];
      [collectionView4 _setRemembersPreviouslyFocusedItem:0];

      if (reloadCopy)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    lastFocusedIndexPath2 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];

    if (!lastFocusedIndexPath2)
    {
      goto LABEL_32;
    }

    v16 = self->_pendingPreviewIndexPath;
    if (!v16)
    {
      goto LABEL_29;
    }

    lastFocusedIndexPath3 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    v18 = [(NSIndexPath *)v16 isEqual:lastFocusedIndexPath3];

    if ((v18 & 1) == 0)
    {
      lastFocusedIndexPath4 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
      v40 = self->_pendingPreviewIndexPath;
      self->_pendingPreviewIndexPath = lastFocusedIndexPath4;

      if (reloadCopy)
      {
        goto LABEL_33;
      }

LABEL_35:
      indexSet = [MEMORY[0x277CCAB58] indexSet];
      cachedListChildViewControllers = self->_cachedListChildViewControllers;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __76___TVListViewController_didUpdateCollectionViewByNeedingReload_focusUpdate___block_invoke;
      v43[3] = &unk_279D708D0;
      v44 = indexSet;
      v38 = indexSet;
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
      lastFocusedIndexPath5 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
      v19 = self->_lastPreviewedIndexPath;
      self->_lastPreviewedIndexPath = lastFocusedIndexPath5;
    }

    goto LABEL_31;
  }

  lastFocusedIndexPath6 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];

  if (lastFocusedIndexPath6)
  {
LABEL_31:
    lastFocusedIndexPath7 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    [(_TVListViewController *)self _updatedPreviewWithItemAtIndexPath:lastFocusedIndexPath7];
  }

LABEL_32:
  if (!reloadCopy)
  {
    goto LABEL_35;
  }

LABEL_33:
  v38 = self->_cachedListChildViewControllers;
  self->_cachedListChildViewControllers = 0;
LABEL_36:
}

- (void)updateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v36 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  sections = [collectionElement sections];

  section = [nextFocusedIndexPath section];
  if (section >= [sections count] || (v10 = objc_msgSend(nextFocusedIndexPath, "item"), objc_msgSend(sections, "objectAtIndexedSubscript:", objc_msgSend(nextFocusedIndexPath, "section")), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "numberOfItems"), v11, v13 = nextFocusedIndexPath, v10 >= v12))
  {

    v13 = 0;
  }

  if (nextFocusedIndexPath)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    collectionView = [(_TVMLCollectionViewController *)self collectionView];
    visibleCells = [collectionView visibleCells];

    v16 = [visibleCells countByEnumeratingWithState:&v31 objects:v35 count:16];
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
            objc_enumerationMutation(visibleCells);
          }

          v20 = *(*(&v31 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v20 setShouldAppearSelected:0];
          }
        }

        v17 = [visibleCells countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v17);
    }

    self->_secondIndexPathFocused = 0;
    [(_TVMLCollectionViewController *)self setLastFocusedIndexPath:v13];
    lastFocusedIndexPath = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    pendingPreviewIndexPath = self->_pendingPreviewIndexPath;
    self->_pendingPreviewIndexPath = lastFocusedIndexPath;

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
    [(_TVListViewController *)self performSelector:sel__delayedUpdatePreview withObject:0 afterDelay:0.1];
    if ([contextCopy focusHeading] == 1 && self->_secondCellIndexPath && objc_msgSend(v13, "isEqual:"))
    {
      _remembersPreviouslyFocusedItem = 0;
      self->_secondIndexPathFocused = 1;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
  if ([collectionView2 remembersLastFocusedIndexPath])
  {

LABEL_20:
    _remembersPreviouslyFocusedItem = 0;
    goto LABEL_21;
  }

  if ([(_TVListViewController *)self isAlwaysSoftFocusEnabled])
  {
  }

  else
  {
    tv_associatedIKViewElement = [(UIViewController *)self->_previewController tv_associatedIKViewElement];
    tv_elementType = [tv_associatedIKViewElement tv_elementType];

    if (tv_elementType != 14)
    {
      goto LABEL_20;
    }
  }

  collectionView3 = [(_TVMLCollectionViewController *)self collectionView];
  _remembersPreviouslyFocusedItem = [collectionView3 _remembersPreviouslyFocusedItem];

LABEL_21:
  collectionView4 = [(_TVMLCollectionViewController *)self collectionView];
  remembersLastFocusedIndexPath = [collectionView4 remembersLastFocusedIndexPath];

  if (_remembersPreviouslyFocusedItem != remembersLastFocusedIndexPath)
  {
    collectionView5 = [(_TVMLCollectionViewController *)self collectionView];
    [collectionView5 _setRemembersPreviouslyFocusedItem:_remembersPreviouslyFocusedItem];
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  sections = [collectionElement sections];
  v9 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v10 = [v9 prototypeForItemAtIndex:{objc_msgSend(pathCopy, "row")}];
  section = [pathCopy section];

  [(_TVListViewController *)self _expectedCellSizeForElement:v10 inSectionIndex:section];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v6 = [(_TVMLCollectionViewController *)self collectionElement:view];
  sections = [v6 sections];
  v8 = [sections objectAtIndexedSubscript:index];

  firstItemElement = [v8 firstItemElement];
  v10 = MEMORY[0x277D768C8];
  v11 = *(MEMORY[0x277D768C8] + 8);
  v12 = *(MEMORY[0x277D768C8] + 24);
  if ([firstItemElement tv_elementType] == 53 || objc_msgSend(firstItemElement, "tv_elementType") == 14 || (v15 = *v10, v17 = v10[2], objc_msgSend(firstItemElement, "tv_elementType") == 55) && objc_msgSend(firstItemElement, "tv_textStyle") == 3)
  {
    style = [firstItemElement style];
    [style tv_margin];
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

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  v7 = [(_TVMLCollectionViewController *)self collectionElement:view];
  sections = [v7 sections];
  v9 = [sections objectAtIndex:section];

  header = [v9 header];
  [(_TVListViewController *)self _expectedHeaderCellSizeForElement:header section:section];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = _TVListViewController;
  [(_TVMLCollectionViewController *)&v18 collectionView:view willDisplayCell:cellCopy forItemAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewController = [cellCopy viewController];
    if (viewController)
    {
      childViewControllers = [(_TVListViewController *)self childViewControllers];
      v12 = [childViewControllers containsObject:viewController];

      if ((v12 & 1) == 0)
      {
        [(_TVListViewController *)self addChildViewController:viewController];
        [viewController didMoveToParentViewController:self];
      }
    }
  }

  lastFocusedIndexPath = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
  if ([lastFocusedIndexPath isEqual:pathCopy] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && -[_TVListViewController _relatedElementIsGridAtIndexPath:](self, "_relatedElementIsGridAtIndexPath:", pathCopy))
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    focusedView = [mainScreen focusedView];
    collectionView = [(_TVMLCollectionViewController *)self collectionView];
    v17 = [focusedView isDescendantOfView:collectionView];

    if ((v17 & 1) == 0)
    {
      [cellCopy setShouldAppearSelected:1];
    }
  }

  else
  {
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  v13.receiver = self;
  v13.super_class = _TVListViewController;
  [(_TVMLCollectionViewController *)&v13 collectionView:view didEndDisplayingCell:cellCopy forItemAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewController = [cellCopy viewController];
    if (viewController)
    {
      childViewControllers = [(_TVListViewController *)self childViewControllers];
      if ([childViewControllers containsObject:viewController])
      {
        view = [viewController view];
        v12 = [view isDescendantOfView:cellCopy];

        if (v12)
        {
          [viewController willMoveToParentViewController:0];
          [viewController removeFromParentViewController];
        }
      }

      else
      {
      }
    }
  }
}

- (void)templateControllerDidUpdateFocusFromView:(id)view
{
  previewController = self->_previewController;
  viewCopy = view;
  view = [(UIViewController *)previewController view];
  v7 = [viewCopy isDescendantOfView:view];

  if (v7)
  {
    collectionView = [(_TVMLCollectionViewController *)self collectionView];
    lastFocusedIndexPath = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    view = [collectionView cellForItemAtIndexPath:lastFocusedIndexPath];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [view updateFloatingViewControlStateForPreviouslyFocusedView:view];
    }
  }

  collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
  if (([collectionView2 remembersLastFocusedIndexPath] & 1) == 0)
  {
    isAlwaysSoftFocusEnabled = [(_TVListViewController *)self isAlwaysSoftFocusEnabled];
    if (isAlwaysSoftFocusEnabled || (-[UIViewController tv_associatedIKViewElement](self->_previewController, "tv_associatedIKViewElement"), view = objc_claimAutoreleasedReturnValue(), [view tv_elementType] == 14))
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      focusedView = [mainScreen focusedView];
      view2 = [(UIViewController *)self->_previewController view];
      v14 = [focusedView isDescendantOfView:view2];

      if (isAlwaysSoftFocusEnabled)
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

      collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
      [collectionView2 _setRemembersPreviouslyFocusedItem:1];
    }

    else
    {
    }
  }
}

- (BOOL)collectionView:(id)view shouldHandleLongPressForItemAtIndexPath:(id)path
{
  v4 = [(_TVListViewController *)self traitCollection:view];
  v5 = [v4 forceTouchCapability] != 2;

  return v5;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  v8.receiver = self;
  v8.super_class = _TVListViewController;
  [(_TVMLCollectionViewController *)&v8 scrollViewDidScroll:scrollCopy];
  delegate = [(_TVListViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(_TVListViewController *)self delegate];
    [delegate2 listViewController:self didScrollWithScrollView:scrollCopy];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  v9.receiver = self;
  v9.super_class = _TVListViewController;
  [(_TVMLCollectionViewController *)&v9 scrollViewWillEndDragging:dragging withVelocity:velocity.x targetContentOffset:velocity.y];
  if (self->_secondIndexPathFocused)
  {
    collectionView = [(_TVMLCollectionViewController *)self collectionView];
    [collectionView contentInset];
    offset->y = -v8;
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  sections = [collectionElement sections];
  v10 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  v11 = [v10 elementForItemAtIndex:{objc_msgSend(pathCopy, "item")}];
  if ([v11 tv_elementType] == 53 || objc_msgSend(v11, "tv_elementType") == 14)
  {
    elementName = [v11 elementName];
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:elementName forIndexPath:pathCopy];

    v14 = [(_TVListViewController *)self _viewControllerForElement:v11];
    view = [v14 view];
    [v13 bounds];
    [view setFrame:?];
    [view setAutoresizingMask:18];
    [v13 setViewController:v14];
  }

  else if ([v11 tv_elementType] == 55 && objc_msgSend(v11, "tv_textStyle") == 3)
  {
    elementName2 = [v11 elementName];
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:elementName2 forIndexPath:pathCopy];

    v18 = +[TVInterfaceFactory sharedInterfaceFactory];
    v19 = [v18 _viewFromElement:v11 existingView:0];

    [v13 setDisabled:{objc_msgSend(v11, "isDisabled")}];
    contentView = [v13 contentView];
    [contentView addSubview:v19];

    [v13 setNeedsLayout];
  }

  else
  {
    v21.receiver = self;
    v21.super_class = _TVListViewController;
    v13 = [(_TVMLCollectionViewController *)&v21 collectionView:viewCopy cellForItemAtIndexPath:pathCopy];
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

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  kindCopy = kind;
  viewCopy = view;
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  sections = [collectionElement sections];
  v13 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  v14 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"TVListHeaderViewIdentifier" forIndexPath:pathCopy];

  [v14 transferLayoutStylesFromElement:v13];
  v15 = MEMORY[0x277CCAE60];
  header = [v13 header];
  section = [pathCopy section];

  [(_TVListViewController *)self _marginForHeaderCellForElement:header section:section];
  v18 = [v15 valueWithUIEdgeInsets:?];
  [v14 setValue:v18 forTVViewStyle:@"padding"];

  [v14 tv_setAssociatedIKViewElement:0];
  v19 = +[TVInterfaceFactory sharedInterfaceFactory];
  header2 = [v13 header];
  v21 = [v19 _viewFromElement:header2 existingView:v14];

  return v14;
}

- (BOOL)listCell:(id)cell shouldAppearSelectedForPreviouslyFocusedView:(id)view
{
  v6 = MEMORY[0x277D759A0];
  viewCopy = view;
  cellCopy = cell;
  mainScreen = [v6 mainScreen];
  focusedView = [mainScreen focusedView];

  view = [(UIViewController *)self->_previewController view];
  LOBYTE(mainScreen) = [focusedView isDescendantOfView:view];

  collectionView = [(_TVMLCollectionViewController *)self collectionView];
  v13 = [focusedView isDescendantOfView:collectionView];

  collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
  v15 = [viewCopy isDescendantOfView:collectionView2];

  view2 = [(UIViewController *)self->_previewController view];
  v17 = [viewCopy isDescendantOfView:view2];

  v18 = (cellCopy == viewCopy) & mainScreen;
  v19 = (v15 | v17) & ((mainScreen | v13) ^ 1);
  if ([(_TVListViewController *)self isAlwaysSoftFocusEnabled])
  {
    v20 = v18 | v19;
  }

  else
  {
    tv_associatedIKViewElement = [(UIViewController *)self->_previewController tv_associatedIKViewElement];
    v20 = ([tv_associatedIKViewElement tv_elementType] == 14) & (v18 | v19);
  }

  return v20 & 1;
}

- (id)impressionableElementsContainedInDocument:(id)document
{
  v27 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  appDocument = [collectionElement appDocument];
  v7 = [appDocument isEqual:documentCopy];

  if (v7)
  {
    collectionView = [(_TVMLCollectionViewController *)self collectionView];
    visibleCells = [collectionView visibleCells];

    array = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = visibleCells;
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

          v16 = [*(*(&v22 + 1) + 8 * i) tv_impressionableElementsForDocument:{documentCopy, v22}];
          [array addObjectsFromArray:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
    headerView = [collectionWrappingView headerView];
    v19 = [headerView tv_impressionableElementsForDocument:documentCopy];
    [array addObjectsFromArray:v19];

    if ([array count])
    {
      v20 = [MEMORY[0x277CBEA60] arrayWithArray:array];
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

+ (id)_shadowCollectionElementForCollectionElement:(id)element
{
  v22 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v4 = objc_alloc_init(_TVShadowViewElement);
  v15 = [[_TVShadowViewElementID alloc] initWithViewElement:elementCopy];
  [(_TVShadowViewElement *)v4 setElementID:?];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = elementCopy;
  sections = [elementCopy sections];
  v7 = [sections countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(sections);
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

      v8 = [sections countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  collectionView = [(_TVMLCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  style = [collectionElement style];
  [style tv_padding];
  v8 = v7;
  v10 = v9;

  collectionElement2 = [(_TVMLCollectionViewController *)self collectionElement];
  style2 = [collectionElement2 style];
  [style2 tv_width];
  v59 = collectionViewLayout;
  if (v13 == 0.0)
  {
    collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
    [collectionView2 bounds];
    v16 = v15 - v8 - v10;
  }

  else
  {
    v16 = v13;
  }

  cachedCellWidth = self->_cachedCellWidth;
  self->_cachedCellWidth = v16;
  selfCopy = self;
  v61 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  collectionElement3 = [(_TVMLCollectionViewController *)self collectionElement];
  sections = [collectionElement3 sections];

  obj = sections;
  v20 = [sections countByEnumeratingWithState:&v63 objects:v67 count:16];
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
            elementName = [v28 elementName];
            v30 = [elementName isEqualToString:v24];

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
            style3 = [v28 style];
            [style3 tv_height];
            v33 = v32;

            if (v33 <= 2.22044605e-16)
            {
              v36 = +[TVInterfaceFactory sharedInterfaceFactory];
              v34 = [v36 _viewFromElement:v28 existingView:0];

              style4 = [v28 style];
              [style4 tv_padding];
              v39 = v38;
              v41 = v40;

              [v34 sizeThatFits:{selfCopy->_cachedCellWidth, 0.0}];
              v43 = v41 + v39 + v42;
              style5 = [v28 style];
              [style5 tv_minHeight];
              v46 = v45;

              if (v43 < v46 && v46 > 2.22044605e-16)
              {
                v43 = v46;
              }

              style6 = [v28 style];
              [style6 tv_maxHeight];
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
  cachedListItemLockupHeightsBySection = selfCopy->_cachedListItemLockupHeightsBySection;
  if (cachedListItemLockupHeightsBySection == v55)
  {
    objc_storeStrong(&selfCopy->_cachedListItemLockupHeightsBySection, v54);
    v58 = v16 == cachedCellWidth;
  }

  else
  {
    v57 = [(NSDictionary *)cachedListItemLockupHeightsBySection isEqualToDictionary:v55];
    objc_storeStrong(&selfCopy->_cachedListItemLockupHeightsBySection, v54);
    v58 = v57 && v16 == cachedCellWidth;
  }

  if (!v58)
  {
    [v59 invalidateLayout];
  }
}

- (void)_delayedUpdatePreview
{
  view = [(_TVListViewController *)self view];
  window = [view window];

  if (window)
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
        collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
        sections = [collectionElement sections];
        v10 = [sections objectAtIndex:{-[NSIndexPath section](v6, "section")}];

        v11 = [v10 elementForItemAtIndex:{-[NSIndexPath row](v6, "row")}];
        collectionView = [(_TVMLCollectionViewController *)self collectionView];
        v13 = [collectionView cellForItemAtIndexPath:v6];

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

- (BOOL)_relatedElementIsGridAtIndexPath:(id)path
{
  v3 = [(_TVListViewController *)self _relatedContentElementForIndexPath:path];
  children = [v3 children];
  firstObject = [children firstObject];
  v6 = [firstObject tv_elementType] == 14;

  return v6;
}

- (id)_relatedContentElementForIndexPath:(id)path
{
  v20 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  sections = [collectionElement sections];
  v7 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v8 = [v7 elementForItemAtIndex:{objc_msgSend(pathCopy, "row")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  children = [v8 children];
  v10 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(children);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 tv_elementType] == 43)
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)_updatedPreviewWithItemAtIndexPath:(id)path
{
  v32 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  delegate = [(_TVListViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(_TVListViewController *)self _relatedContentElementForIndexPath:pathCopy];
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
      collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
      children = [collectionElement children];

      v7 = [children countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v7)
      {
        v12 = *v27;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(children);
            }

            v14 = *(*(&v26 + 1) + 8 * i);
            if ([v14 tv_elementType] == 43)
            {
              v7 = v14;
              goto LABEL_17;
            }
          }

          v7 = [children countByEnumeratingWithState:&v26 objects:v31 count:16];
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
        collectionView = [(_TVMLCollectionViewController *)self collectionView];
        [collectionView _setRemembersPreviouslyFocusedItem:0];

        delegate2 = [(_TVListViewController *)self delegate];
        [delegate2 listViewController:self updatePreviewViewController:v8];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIViewController *)self->_previewController setAlwaysSoftFocusEnabled:0];
    }

    lastFocusedIndexPath = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    if ([lastFocusedIndexPath isEqual:pathCopy] && (-[_TVListViewController isAlwaysSoftFocusEnabled](self, "isAlwaysSoftFocusEnabled") || -[IKViewElement tv_elementType](v9, "tv_elementType") == 14))
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      focusedView = [mainScreen focusedView];
      view = [(UIViewController *)self->_previewController view];
      v23 = [focusedView isDescendantOfView:view];

      if (!v23)
      {
LABEL_34:

        goto LABEL_35;
      }

      collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
      lastFocusedIndexPath = [collectionView2 cellForItemAtIndexPath:pathCopy];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [lastFocusedIndexPath setShouldAppearSelected:1];
      }
    }

    goto LABEL_34;
  }

LABEL_35:
}

- (id)_previewControllerWithElement:(id)element previewElement:(id *)previewElement
{
  v43 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  children = [elementCopy children];
  v8 = [children count];

  if (!v8)
  {
    v23 = 0;
    goto LABEL_48;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v34 = elementCopy;
  children2 = [elementCopy children];
  v37 = [children2 countByEnumeratingWithState:&v38 objects:v42 count:16];
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
        objc_enumerationMutation(children2);
      }

      v12 = *(*(&v38 + 1) + 8 * v11);
      v13 = v10[779];
      v14 = *(&self->super.super.super.super.isa + v13);
      if (v14 == v12)
      {
        if (![*(*(&v38 + 1) + 8 * v11) updateType])
        {
          v23 = self->_previewController;
          if (previewElement)
          {
            v33 = v12;
            *previewElement = v12;
          }

          goto LABEL_47;
        }

        v14 = *(&self->super.super.super.super.isa + v13);
      }

      if (v14 == v12 && ([v12 updateType] == 1 || objc_msgSend(v12, "updateType") == 2))
      {
        if (self->_previewUpdated)
        {
          view = [(UIViewController *)self->_previewController view];
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
        view2 = [(UIViewController *)self->_previewController view];
        v17 = view2;
      }

      else
      {
        v17 = 0;
      }

      view = [v16 _viewFromElement:v12 existingView:v17];
      if (v15)
      {
      }

      view3 = [(UIViewController *)self->_previewController view];

      v20 = v15 ^ 1;
      if (view != view3)
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
      if (view)
      {
        view4 = [(UIViewController *)previewController view];

        if (view == view4)
        {
          v23 = self->_previewController;
          if (!previewElement)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v23 = objc_alloc_init(MEMORY[0x277D75D28]);
          [(UIViewController *)v23 setView:view];
          [(UIViewController *)v23 tv_setAssociatedIKViewElement:v12];
          if (!previewElement)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        v24 = children2;
        previewElementCopy = previewElement;
        tv_associatedIKViewElement = [(UIViewController *)previewController tv_associatedIKViewElement];
        v27 = tv_associatedIKViewElement;
        if ((v15 & 1) != 0 || [tv_associatedIKViewElement tv_elementType] == 17 && objc_msgSend(v12, "tv_elementType") == 17)
        {
          v28 = self->_previewController;
        }

        else
        {
          v28 = 0;
        }

        v29 = +[TVInterfaceFactory sharedInterfaceFactory];
        v23 = [v29 _viewControllerFromElement:v12 existingController:v28];

        previewElement = previewElementCopy;
        children2 = v24;
        v10 = &OBJC_IVAR___TVTimeRange__endDate;
        if (!previewElement)
        {
          goto LABEL_38;
        }
      }

      if (v23)
      {
        v31 = v12;
        *previewElement = v12;

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
    v30 = [children2 countByEnumeratingWithState:&v38 objects:v42 count:16];
    v23 = 0;
    v37 = v30;
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_47:

  elementCopy = v34;
LABEL_48:

  return v23;
}

- (id)_viewControllerForElement:(id)element
{
  elementCopy = element;
  v5 = [(_TVListViewController *)self _cachedViewControllerForElement:elementCopy];
  if (!v5)
  {
    v7 = +[TVInterfaceFactory sharedInterfaceFactory];
    v5 = [v7 _viewControllerFromElement:elementCopy existingController:0];

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

- (id)_cachedViewControllerForElement:(id)element
{
  v20 = *MEMORY[0x277D85DE8];
  elementCopy = element;
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
        tv_associatedIKViewElement = [v9 tv_associatedIKViewElement];
        v12 = [(_TVShadowViewElementID *)v10 initWithViewElement:tv_associatedIKViewElement];

        v13 = [[_TVShadowViewElementID alloc] initWithViewElement:elementCopy];
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

- (CGSize)_expectedCellSizeForElement:(id)element inSectionIndex:(int64_t)index
{
  v62 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  cachedCellWidth = self->_cachedCellWidth;
  style = [elementCopy style];
  [style tv_padding];
  v10 = v9;
  v12 = v11;

  if ([elementCopy tv_elementType] == 53 || objc_msgSend(elementCopy, "tv_elementType") == 14)
  {
    v13 = [(_TVListViewController *)self _viewControllerForElement:elementCopy];
    view = [v13 view];
    [view sizeThatFits:{cachedCellWidth, 0.0}];
    cachedCellWidth = v15;
    v17 = v16;

    goto LABEL_4;
  }

  if ([elementCopy tv_elementType] == 55 && objc_msgSend(elementCopy, "tv_textStyle") == 3)
  {
    v20 = +[TVInterfaceFactory sharedInterfaceFactory];
    v21 = [v20 _viewFromElement:elementCopy existingView:0];

    style2 = [elementCopy style];
    [style2 tv_padding];
    v24 = v23;
    v26 = v25;

    cachedCellWidth = self->_cachedCellWidth;
    [v21 sizeThatFits:{cachedCellWidth, 0.0}];
    v17 = v26 + v24 + v27;

    goto LABEL_4;
  }

  tv_elementType = [elementCopy tv_elementType];
  style3 = [elementCopy style];
  [style3 tv_height];
  v17 = v30;
  if (tv_elementType == 52)
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
    elementName = [elementCopy elementName];
    v32 = [elementName isEqualToString:*MEMORY[0x277D1AF50]];

    v17 = 0.0;
    if (!v32)
    {
      goto LABEL_18;
    }

    cachedListItemLockupHeightsBySection = self->_cachedListItemLockupHeightsBySection;
    v34 = [MEMORY[0x277CCABB0] numberWithInteger:index];
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
  children = [elementCopy children];
  v39 = [children countByEnumeratingWithState:&v57 objects:v61 count:16];
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
        objc_enumerationMutation(children);
      }

      v46 = *(*(&v57 + 1) + 8 * i);
      if ([v46 tv_elementType] == 16 && !objc_msgSend(v46, "tv_imageType"))
      {
        [v46 height];
        v48 = v47;
        style4 = [v46 style];
        [style4 tv_margin];
        v51 = v48 + fmax(v50, v10);
        style5 = [v46 style];
        [style5 tv_margin];
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

    v40 = [children countByEnumeratingWithState:&v57 objects:v61 count:16];
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

- (CGSize)_expectedHeaderCellSizeForElement:(id)element section:(int64_t)section
{
  cachedCellWidth = self->_cachedCellWidth;
  if (element)
  {
    elementCopy = element;
    [(_TVListViewController *)self _marginForHeaderCellForElement:elementCopy section:section];
    v9 = v8;
    v11 = v10;
    v12 = +[TVInterfaceFactory sharedInterfaceFactory];
    v13 = [v12 _viewFromElement:elementCopy existingView:0];

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

- (UIEdgeInsets)_marginForHeaderCellForElement:(id)element section:(int64_t)section
{
  style = [element style];
  [style tv_margin];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (!section)
  {
    collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
    headerView = [collectionWrappingView headerView];

    if (headerView)
    {
      collectionWrappingView2 = [(_TVMLCollectionViewController *)self collectionWrappingView];
      headerView2 = [collectionWrappingView2 headerView];

      [headerView2 tv_margin];
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