@interface _TVCarouselViewController
+ (id)headerElementFromCollectionElement:(id)element;
- (CGSize)viewSizeThatFits:(CGSize)fits;
- (id)carouselView:(id)view cellForItemAtIndex:(unint64_t)index;
- (id)impressionableElementsContainedInDocument:(id)document;
- (id)preferredFocusEnvironments;
- (unint64_t)numberOfItemsInCarouselView:(id)view;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationWillResignActive:(id)active;
- (void)_dispatchEvent:(id)event forItemAtIndex:(unint64_t)index cell:(id)cell;
- (void)_playButtonAction:(id)action;
- (void)_recordImpressionsForVisibleView;
- (void)_registerCellClasses;
- (void)_selectButtonAction:(id)action;
- (void)_updateAutoScrollInterval;
- (void)_updateHeaderView;
- (void)_updateImpressions;
- (void)_updateLayout;
- (void)_updateLayoutAndReload;
- (void)carouselView:(id)view didEndDisplayingItemAtIndex:(unint64_t)index;
- (void)carouselView:(id)view didFocusItemAtIndex:(unint64_t)index;
- (void)carouselView:(id)view didSelectItemAtIndex:(unint64_t)index;
- (void)carouselView:(id)view willDisplayCell:(id)cell forItemAtIndex:(unint64_t)index;
- (void)carouselView:(id)view willDisplayItemAtIndex:(unint64_t)index;
- (void)carouselViewDidScroll:(id)scroll;
- (void)centerItemAtPageIndex:(int64_t)index;
- (void)dealloc;
- (void)loadView;
- (void)updateWithViewElement:(id)element layout:(id)layout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation _TVCarouselViewController

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _TVCarouselViewController;
  [(_TVCarouselViewController *)&v4 dealloc];
}

- (void)_updateHeaderView
{
  headerView = [(_TVCarouselView *)self->_carouselView headerView];
  v3 = +[TVInterfaceFactory sharedInterfaceFactory];
  v4 = [v3 _viewFromElement:self->_headerElement existingView:headerView];

  [(_TVCarouselView *)self->_carouselView setHeaderView:v4];
}

- (void)loadView
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [[TVMLCarouselView alloc] initWithFrame:v5, v7, v9, v11];
  carouselView = self->_carouselView;
  self->_carouselView = &v12->super;

  [(_TVCarouselView *)self->_carouselView setDataSource:self];
  [(_TVCarouselView *)self->_carouselView setDelegate:self];
  [(_TVCarouselView *)self->_carouselView setAutoscrollInterval:10.0];
  [(_TVCarouselViewController *)self setView:self->_carouselView];
  [(_TVCarouselViewController *)self _registerCellClasses];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  v17 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__selectButtonAction_];
  [v17 setAllowedPressTypes:&unk_287E48708];
  [(_TVCarouselView *)self->_carouselView addGestureRecognizer:v17];
  v16 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__playButtonAction_];
  [v16 setAllowedPressTypes:&unk_287E48720];
  [(_TVCarouselView *)self->_carouselView addGestureRecognizer:v16];
  [(_TVCarouselViewController *)self _updateHeaderView];
  [(_TVCarouselViewController *)self _updateAutoScrollInterval];
  [(_TVCarouselViewController *)self _updateLayoutAndReload];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = _TVCarouselViewController;
  [(_TVCarouselViewController *)&v4 viewDidAppear:appear];
  self->_flags.didAppear = 1;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = _TVCarouselViewController;
  [(_TVCarouselViewController *)&v4 viewDidDisappear:disappear];
  [(_TVCarouselViewController *)self _cancelImpressionsUpdate];
}

- (CGSize)viewSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  view = [(_TVCarouselViewController *)self view];
  [view sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)preferredFocusEnvironments
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_carouselView)
  {
    v4[0] = self->_carouselView;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (unint64_t)numberOfItemsInCarouselView:(id)view
{
  sections = [(IKCollectionElement *)self->_collectionElement sections];
  firstObject = [sections firstObject];
  numberOfItems = [firstObject numberOfItems];

  return numberOfItems;
}

- (void)_registerCellClasses
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(IKCollectionElement *)self->_collectionElement sections];
  v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v17)
  {
    v16 = *v24;
    do
    {
      v4 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = v4;
        v5 = *(*(&v23 + 1) + 8 * v4);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        prototypes = [v5 prototypes];
        v7 = [prototypes countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v20;
          do
          {
            v10 = 0;
            do
            {
              if (*v20 != v9)
              {
                objc_enumerationMutation(prototypes);
              }

              v11 = *(*(&v19 + 1) + 8 * v10);
              v12 = +[TVInterfaceFactory sharedInterfaceFactory];
              v13 = [v12 _collectionViewCellClassForElement:v11];

              elementName = [v11 elementName];
              if (([v3 containsObject:elementName] & 1) == 0)
              {
                [v3 addObject:elementName];
                [(_TVCarouselView *)self->_carouselView registerClass:v13 forCellWithReuseIdentifier:elementName];
              }

              ++v10;
            }

            while (v8 != v10);
            v8 = [prototypes countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v8);
        }

        v4 = v18 + 1;
      }

      while (v18 + 1 != v17);
      v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v17);
  }
}

- (id)carouselView:(id)view cellForItemAtIndex:(unint64_t)index
{
  collectionElement = self->_collectionElement;
  viewCopy = view;
  sections = [(IKCollectionElement *)collectionElement sections];
  firstObject = [sections firstObject];

  v10 = [firstObject elementForItemAtIndex:index];
  elementName = [v10 elementName];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:elementName forIndex:index];

  [v12 transferLayoutStylesFromElement:v10];
  v13 = MEMORY[0x277CCAE60];
  [(TVCarouselLayout *)self->_carouselLayout cellPadding];
  v14 = [v13 valueWithUIEdgeInsets:?];
  [v12 setValue:v14 forTVViewStyle:@"padding"];

  [v12 tv_setAssociatedIKViewElement:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 setSelectSubviews:0];
    [v12 setDelegate:self];
  }

  v15 = objc_opt_new();
  [v15 setCenterGrowth:{-[TVCarouselLayout layoutType](self->_carouselLayout, "layoutType") == 0}];
  v16 = +[TVInterfaceFactory sharedInterfaceFactory];
  v17 = [v16 _viewFromElement:v10 layout:v15 existingView:v12];

  return v12;
}

- (void)carouselViewDidScroll:(id)scroll
{
  if (self->_flags.didAppear)
  {
    [(_TVCarouselViewController *)self _updateImpressions];
  }
}

- (void)carouselView:(id)view didFocusItemAtIndex:(unint64_t)index
{
  focusedCell = [view focusedCell];
  [(_TVCarouselViewController *)self _dispatchEvent:@"highlight" forItemAtIndex:index cell:focusedCell];
}

- (void)carouselView:(id)view willDisplayCell:(id)cell forItemAtIndex:(unint64_t)index
{
  v5 = *MEMORY[0x277D76620];
  cellCopy = cell;
  [cellCopy tv_setDisplayed:{objc_msgSend(v5, "applicationState") == 0}];
}

- (void)carouselView:(id)view willDisplayItemAtIndex:(unint64_t)index
{
  sections = [(IKCollectionElement *)self->_collectionElement sections];
  firstObject = [sections firstObject];

  [firstObject loadIndex:index];
}

- (void)carouselView:(id)view didEndDisplayingItemAtIndex:(unint64_t)index
{
  if (!self->_flags.indexesDirty)
  {
    sections = [(IKCollectionElement *)self->_collectionElement sections];
    firstObject = [sections firstObject];

    [firstObject unloadIndex:index];
  }
}

- (void)carouselView:(id)view didSelectItemAtIndex:(unint64_t)index
{
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    focusedCell = [view focusedCell];
    [(_TVCarouselViewController *)self _dispatchEvent:@"select" forItemAtIndex:index cell:focusedCell];
  }
}

- (void)_updateImpressions
{
  appDocument = [(IKCollectionElement *)self->_collectionElement appDocument];
  [appDocument impressionThreshold];
  v5 = v4;

  [(_TVCarouselViewController *)self _cancelImpressionsUpdate];
  if (v5 > 0.0)
  {

    [(_TVCarouselViewController *)self performSelector:sel__recordImpressionsForVisibleView withObject:0 afterDelay:v5];
  }
}

- (void)_recordImpressionsForVisibleView
{
  view = [(_TVCarouselViewController *)self view];
  window = [view window];

  if (window)
  {
    appDocument = [(IKCollectionElement *)self->_collectionElement appDocument];
    v5 = [(_TVCarouselViewController *)self impressionableElementsContainedInDocument:?];
    if ([v5 count])
    {
      [appDocument recordImpressionsForViewElements:v5];
    }
  }
}

- (id)impressionableElementsContainedInDocument:(id)document
{
  v24 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  appDocument = [(IKCollectionElement *)self->_collectionElement appDocument];
  v6 = [appDocument isEqual:documentCopy];

  if (v6)
  {
    subviews = [(_TVCarouselView *)self->_carouselView subviews];
    firstObject = [subviews firstObject];

    visibleCells = [firstObject visibleCells];
    array = [MEMORY[0x277CBEB18] array];
    if ([(_TVCarouselViewController *)self isViewLoaded])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = visibleCells;
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v19 + 1) + 8 * i) tv_impressionableElementsForDocument:{documentCopy, v19}];
            [array addObjectsFromArray:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }
    }

    if ([array count])
    {
      v17 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_playButtonAction:(id)action
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  focusedView = [mainScreen focusedView];

  v5 = focusedView;
  if (focusedView)
  {
    while (1)
    {
      v9 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [v9 superview];

      v5 = superview;
      if (!superview)
      {
        goto LABEL_8;
      }
    }

    v7 = [(_TVCarouselView *)self->_carouselView indexForCell:v9];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(_TVCarouselViewController *)self _dispatchEvent:@"play" forItemAtIndex:v7 cell:v9];
    }

    v5 = v9;
  }

LABEL_8:
}

- (void)_selectButtonAction:(id)action
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  focusedView = [mainScreen focusedView];

  v5 = focusedView;
  if (focusedView)
  {
    while (1)
    {
      v9 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [v9 superview];

      v5 = superview;
      if (!superview)
      {
        goto LABEL_8;
      }
    }

    v7 = [(_TVCarouselView *)self->_carouselView indexForCell:v9];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(_TVCarouselViewController *)self _dispatchEvent:@"select" forItemAtIndex:v7 cell:v9];
    }

    v5 = v9;
  }

LABEL_8:
}

- (void)_applicationDidBecomeActive:(id)active
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(_TVCarouselView *)self->_carouselView visibleCells:active];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) tv_setDisplayed:1];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_applicationWillResignActive:(id)active
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(_TVCarouselView *)self->_carouselView visibleCells:active];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) tv_setDisplayed:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_dispatchEvent:(id)event forItemAtIndex:(unint64_t)index cell:(id)cell
{
  eventCopy = event;
  cellCopy = cell;
  sections = [(IKCollectionElement *)self->_collectionElement sections];
  firstObject = [sections firstObject];

  v11 = [firstObject elementForItemAtIndex:index];
  if (([v11 isDisabled] & 1) == 0)
  {
    [v11 tv_dispatchEvent:eventCopy canBubble:1 isCancelable:1 extraInfo:0 targetResponder:cellCopy completionBlock:0];
  }
}

+ (id)headerElementFromCollectionElement:(id)element
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  children = [element children];
  v4 = [children countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(children);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 tv_elementType] == 15)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [children countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)updateWithViewElement:(id)element layout:(id)layout
{
  v62 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  layoutCopy = layout;
  v8 = [objc_opt_class() headerElementFromCollectionElement:elementCopy];
  headerElement = self->_headerElement;
  self->_headerElement = v8;

  collectionElement = self->_collectionElement;
  if (collectionElement == elementCopy && -[IKCollectionElement updateType](collectionElement, "updateType") == 2 && (-[_TVCarouselViewController view](self, "view"), v11 = objc_claimAutoreleasedReturnValue(), [v11 window], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
  {
    if (![(TVCarouselLayout *)self->_carouselLayout isEqual:layoutCopy])
    {
      objc_storeStrong(&self->_carouselLayout, layout);
      [(_TVCarouselViewController *)self _updateLayout];
    }

    [(_TVCarouselViewController *)self _updateHeaderView];
    [(_TVCarouselViewController *)self _updateAutoScrollInterval];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [(_TVCarouselView *)self->_carouselView visibleCells];
    v13 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v13)
    {
      v14 = v13;
      v48 = elementCopy;
      v15 = *v57;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v57 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v56 + 1) + 8 * i);
          v18 = [(_TVCarouselView *)self->_carouselView indexForCell:v17];
          if (v18 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = v18;
            sections = [(IKCollectionElement *)self->_collectionElement sections];
            firstObject = [sections firstObject];

            v22 = [firstObject elementForItemAtIndex:v19];
            v23 = objc_opt_new();
            [v23 setCenterGrowth:{-[TVCarouselLayout layoutType](self->_carouselLayout, "layoutType") == 0}];
            v24 = +[TVInterfaceFactory sharedInterfaceFactory];
            v25 = [v24 _viewFromElement:v22 layout:v23 existingView:v17];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v14);
      elementCopy = v48;
    }
  }

  else
  {
    sections2 = [(IKCollectionElement *)elementCopy sections];
    firstObject2 = [sections2 firstObject];

    obj = firstObject2;
    itemsChangeSet = [firstObject2 itemsChangeSet];
    v29 = itemsChangeSet;
    if (itemsChangeSet)
    {
      addedIndexes = [itemsChangeSet addedIndexes];
      if ([addedIndexes count])
      {
        v31 = 1;
      }

      else
      {
        removedIndexes = [v29 removedIndexes];
        if ([removedIndexes count])
        {
          v31 = 1;
        }

        else
        {
          movedIndexesByNewIndex = [v29 movedIndexesByNewIndex];
          if ([movedIndexesByNewIndex count])
          {
            v31 = 1;
          }

          else
          {
            v31 = ![(TVCarouselLayout *)self->_carouselLayout isEqual:layoutCopy];
          }
        }
      }
    }

    else
    {
      v31 = 1;
    }

    objc_storeStrong(&self->_collectionElement, element);
    objc_storeStrong(&self->_carouselLayout, layout);
    [(_TVCarouselViewController *)self _updateHeaderView];
    [(_TVCarouselViewController *)self _updateAutoScrollInterval];
    if (v31)
    {
      [(_TVCarouselViewController *)self _updateLayoutAndReload];
    }

    else
    {
      v47 = v29;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      visibleCells = [(_TVCarouselView *)self->_carouselView visibleCells];
      v34 = [visibleCells countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v53;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v53 != v36)
            {
              objc_enumerationMutation(visibleCells);
            }

            v38 = *(*(&v52 + 1) + 8 * j);
            v39 = [(_TVCarouselView *)self->_carouselView indexForCell:v38];
            if (v39 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v40 = v39;
              sections3 = [(IKCollectionElement *)self->_collectionElement sections];
              firstObject3 = [sections3 firstObject];

              v43 = [firstObject3 elementForItemAtIndex:v40];
              v44 = objc_opt_new();
              [v44 setCenterGrowth:{-[TVCarouselLayout layoutType](self->_carouselLayout, "layoutType") == 0}];
              v45 = +[TVInterfaceFactory sharedInterfaceFactory];
              v46 = [v45 _viewFromElement:v43 layout:v44 existingView:v38];
            }
          }

          v35 = [visibleCells countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v35);
      }

      v29 = v47;
    }
  }
}

- (void)centerItemAtPageIndex:(int64_t)index
{
  carouselView = self->_carouselView;
  if (carouselView)
  {
    [(_TVCarouselView *)carouselView centerItemAtPageIndex:index];
  }
}

- (void)_updateAutoScrollInterval
{
  collectionElement = self->_collectionElement;
  if (collectionElement && self->_carouselView)
  {
    sections = [(IKCollectionElement *)collectionElement sections];
    firstObject = [sections firstObject];

    if ([firstObject numberOfItems] >= 3)
    {
      [(_TVCarouselView *)self->_carouselView setAutoscrollInterval:10.0];
    }
  }
}

- (void)_updateLayout
{
  carouselView = self->_carouselView;
  if (carouselView)
  {
    [(_TVCarouselView *)carouselView transferLayoutStylesFromElement:self->_collectionElement];
    [(TVCarouselLayout *)self->_carouselLayout cellSize];
    if (v5 > 2.22044605e-16 && v4 > 2.22044605e-16)
    {
      [(_TVCarouselView *)self->_carouselView setItemSize:?];
    }

    v7 = self->_carouselView;
    [(TVCarouselLayout *)self->_carouselLayout interitemSpacing];
    [(_TVCarouselView *)v7 setInteritemSpacing:?];
    [(_TVCarouselView *)self->_carouselView setSemanticContentAttribute:[(IKCollectionElement *)self->_collectionElement tv_semanticContentAttribute]];
    [(_TVCarouselView *)self->_carouselView setScrollMode:[(TVCarouselLayout *)self->_carouselLayout scrollMode]];
    [(_TVCarouselView *)self->_carouselView setShowsPageControl:[(TVCarouselLayout *)self->_carouselLayout showsPageControl]];
    pageControlMarginNumber = [(TVCarouselLayout *)self->_carouselLayout pageControlMarginNumber];
    if (pageControlMarginNumber)
    {
      v10 = pageControlMarginNumber;
      [pageControlMarginNumber floatValue];
      [(_TVCarouselView *)self->_carouselView setPageControlMargin:v9];
      pageControlMarginNumber = v10;
    }
  }
}

- (void)_updateLayoutAndReload
{
  p_flags = &self->_flags;
  self->_flags.indexesDirty = 1;
  [(_TVCarouselView *)self->_carouselView reloadData];
  p_flags->indexesDirty = 0;

  [(_TVCarouselViewController *)self _updateLayout];
}

@end