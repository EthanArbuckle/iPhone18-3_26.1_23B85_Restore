@interface _TVCarouselViewController
+ (id)headerElementFromCollectionElement:(id)a3;
- (CGSize)viewSizeThatFits:(CGSize)a3;
- (id)carouselView:(id)a3 cellForItemAtIndex:(unint64_t)a4;
- (id)impressionableElementsContainedInDocument:(id)a3;
- (id)preferredFocusEnvironments;
- (unint64_t)numberOfItemsInCarouselView:(id)a3;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_applicationWillResignActive:(id)a3;
- (void)_dispatchEvent:(id)a3 forItemAtIndex:(unint64_t)a4 cell:(id)a5;
- (void)_playButtonAction:(id)a3;
- (void)_recordImpressionsForVisibleView;
- (void)_registerCellClasses;
- (void)_selectButtonAction:(id)a3;
- (void)_updateAutoScrollInterval;
- (void)_updateHeaderView;
- (void)_updateImpressions;
- (void)_updateLayout;
- (void)_updateLayoutAndReload;
- (void)carouselView:(id)a3 didEndDisplayingItemAtIndex:(unint64_t)a4;
- (void)carouselView:(id)a3 didFocusItemAtIndex:(unint64_t)a4;
- (void)carouselView:(id)a3 didSelectItemAtIndex:(unint64_t)a4;
- (void)carouselView:(id)a3 willDisplayCell:(id)a4 forItemAtIndex:(unint64_t)a5;
- (void)carouselView:(id)a3 willDisplayItemAtIndex:(unint64_t)a4;
- (void)carouselViewDidScroll:(id)a3;
- (void)centerItemAtPageIndex:(int64_t)a3;
- (void)dealloc;
- (void)loadView;
- (void)updateWithViewElement:(id)a3 layout:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation _TVCarouselViewController

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _TVCarouselViewController;
  [(_TVCarouselViewController *)&v4 dealloc];
}

- (void)_updateHeaderView
{
  v5 = [(_TVCarouselView *)self->_carouselView headerView];
  v3 = +[TVInterfaceFactory sharedInterfaceFactory];
  v4 = [v3 _viewFromElement:self->_headerElement existingView:v5];

  [(_TVCarouselView *)self->_carouselView setHeaderView:v4];
}

- (void)loadView
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
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
  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 addObserver:self selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 addObserver:self selector:sel__applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

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

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _TVCarouselViewController;
  [(_TVCarouselViewController *)&v4 viewDidAppear:a3];
  self->_flags.didAppear = 1;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _TVCarouselViewController;
  [(_TVCarouselViewController *)&v4 viewDidDisappear:a3];
  [(_TVCarouselViewController *)self _cancelImpressionsUpdate];
}

- (CGSize)viewSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(_TVCarouselViewController *)self view];
  [v5 sizeThatFits:{width, height}];
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

- (unint64_t)numberOfItemsInCarouselView:(id)a3
{
  v3 = [(IKCollectionElement *)self->_collectionElement sections];
  v4 = [v3 firstObject];
  v5 = [v4 numberOfItems];

  return v5;
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
        v6 = [v5 prototypes];
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v19 + 1) + 8 * v10);
              v12 = +[TVInterfaceFactory sharedInterfaceFactory];
              v13 = [v12 _collectionViewCellClassForElement:v11];

              v14 = [v11 elementName];
              if (([v3 containsObject:v14] & 1) == 0)
              {
                [v3 addObject:v14];
                [(_TVCarouselView *)self->_carouselView registerClass:v13 forCellWithReuseIdentifier:v14];
              }

              ++v10;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
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

- (id)carouselView:(id)a3 cellForItemAtIndex:(unint64_t)a4
{
  collectionElement = self->_collectionElement;
  v7 = a3;
  v8 = [(IKCollectionElement *)collectionElement sections];
  v9 = [v8 firstObject];

  v10 = [v9 elementForItemAtIndex:a4];
  v11 = [v10 elementName];
  v12 = [v7 dequeueReusableCellWithReuseIdentifier:v11 forIndex:a4];

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

- (void)carouselViewDidScroll:(id)a3
{
  if (self->_flags.didAppear)
  {
    [(_TVCarouselViewController *)self _updateImpressions];
  }
}

- (void)carouselView:(id)a3 didFocusItemAtIndex:(unint64_t)a4
{
  v6 = [a3 focusedCell];
  [(_TVCarouselViewController *)self _dispatchEvent:@"highlight" forItemAtIndex:a4 cell:v6];
}

- (void)carouselView:(id)a3 willDisplayCell:(id)a4 forItemAtIndex:(unint64_t)a5
{
  v5 = *MEMORY[0x277D76620];
  v6 = a4;
  [v6 tv_setDisplayed:{objc_msgSend(v5, "applicationState") == 0}];
}

- (void)carouselView:(id)a3 willDisplayItemAtIndex:(unint64_t)a4
{
  v5 = [(IKCollectionElement *)self->_collectionElement sections];
  v6 = [v5 firstObject];

  [v6 loadIndex:a4];
}

- (void)carouselView:(id)a3 didEndDisplayingItemAtIndex:(unint64_t)a4
{
  if (!self->_flags.indexesDirty)
  {
    v6 = [(IKCollectionElement *)self->_collectionElement sections];
    v7 = [v6 firstObject];

    [v7 unloadIndex:a4];
  }
}

- (void)carouselView:(id)a3 didSelectItemAtIndex:(unint64_t)a4
{
  if (a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [a3 focusedCell];
    [(_TVCarouselViewController *)self _dispatchEvent:@"select" forItemAtIndex:a4 cell:v7];
  }
}

- (void)_updateImpressions
{
  v3 = [(IKCollectionElement *)self->_collectionElement appDocument];
  [v3 impressionThreshold];
  v5 = v4;

  [(_TVCarouselViewController *)self _cancelImpressionsUpdate];
  if (v5 > 0.0)
  {

    [(_TVCarouselViewController *)self performSelector:sel__recordImpressionsForVisibleView withObject:0 afterDelay:v5];
  }
}

- (void)_recordImpressionsForVisibleView
{
  v3 = [(_TVCarouselViewController *)self view];
  v4 = [v3 window];

  if (v4)
  {
    v6 = [(IKCollectionElement *)self->_collectionElement appDocument];
    v5 = [(_TVCarouselViewController *)self impressionableElementsContainedInDocument:?];
    if ([v5 count])
    {
      [v6 recordImpressionsForViewElements:v5];
    }
  }
}

- (id)impressionableElementsContainedInDocument:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IKCollectionElement *)self->_collectionElement appDocument];
  v6 = [v5 isEqual:v4];

  if (v6)
  {
    v7 = [(_TVCarouselView *)self->_carouselView subviews];
    v8 = [v7 firstObject];

    v9 = [v8 visibleCells];
    v10 = [MEMORY[0x277CBEB18] array];
    if ([(_TVCarouselViewController *)self isViewLoaded])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = v9;
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

            v16 = [*(*(&v19 + 1) + 8 * i) tv_impressionableElementsForDocument:{v4, v19}];
            [v10 addObjectsFromArray:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }
    }

    if ([v10 count])
    {
      v17 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
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

- (void)_playButtonAction:(id)a3
{
  v4 = [MEMORY[0x277D759A0] mainScreen];
  v8 = [v4 focusedView];

  v5 = v8;
  if (v8)
  {
    while (1)
    {
      v9 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v6 = [v9 superview];

      v5 = v6;
      if (!v6)
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

- (void)_selectButtonAction:(id)a3
{
  v4 = [MEMORY[0x277D759A0] mainScreen];
  v8 = [v4 focusedView];

  v5 = v8;
  if (v8)
  {
    while (1)
    {
      v9 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v6 = [v9 superview];

      v5 = v6;
      if (!v6)
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

- (void)_applicationDidBecomeActive:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(_TVCarouselView *)self->_carouselView visibleCells:a3];
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

- (void)_applicationWillResignActive:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(_TVCarouselView *)self->_carouselView visibleCells:a3];
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

- (void)_dispatchEvent:(id)a3 forItemAtIndex:(unint64_t)a4 cell:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(IKCollectionElement *)self->_collectionElement sections];
  v10 = [v9 firstObject];

  v11 = [v10 elementForItemAtIndex:a4];
  if (([v11 isDisabled] & 1) == 0)
  {
    [v11 tv_dispatchEvent:v12 canBubble:1 isCancelable:1 extraInfo:0 targetResponder:v8 completionBlock:0];
  }
}

+ (id)headerElementFromCollectionElement:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 children];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 tv_elementType] == 15)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)updateWithViewElement:(id)a3 layout:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v49 = a4;
  v8 = [objc_opt_class() headerElementFromCollectionElement:v7];
  headerElement = self->_headerElement;
  self->_headerElement = v8;

  collectionElement = self->_collectionElement;
  if (collectionElement == v7 && -[IKCollectionElement updateType](collectionElement, "updateType") == 2 && (-[_TVCarouselViewController view](self, "view"), v11 = objc_claimAutoreleasedReturnValue(), [v11 window], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
  {
    if (![(TVCarouselLayout *)self->_carouselLayout isEqual:v49])
    {
      objc_storeStrong(&self->_carouselLayout, a4);
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
      v48 = v7;
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
            v20 = [(IKCollectionElement *)self->_collectionElement sections];
            v21 = [v20 firstObject];

            v22 = [v21 elementForItemAtIndex:v19];
            v23 = objc_opt_new();
            [v23 setCenterGrowth:{-[TVCarouselLayout layoutType](self->_carouselLayout, "layoutType") == 0}];
            v24 = +[TVInterfaceFactory sharedInterfaceFactory];
            v25 = [v24 _viewFromElement:v22 layout:v23 existingView:v17];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v14);
      v7 = v48;
    }
  }

  else
  {
    v26 = [(IKCollectionElement *)v7 sections];
    v27 = [v26 firstObject];

    obj = v27;
    v28 = [v27 itemsChangeSet];
    v29 = v28;
    if (v28)
    {
      v30 = [v28 addedIndexes];
      if ([v30 count])
      {
        v31 = 1;
      }

      else
      {
        v32 = [v29 removedIndexes];
        if ([v32 count])
        {
          v31 = 1;
        }

        else
        {
          v33 = [v29 movedIndexesByNewIndex];
          if ([v33 count])
          {
            v31 = 1;
          }

          else
          {
            v31 = ![(TVCarouselLayout *)self->_carouselLayout isEqual:v49];
          }
        }
      }
    }

    else
    {
      v31 = 1;
    }

    objc_storeStrong(&self->_collectionElement, a3);
    objc_storeStrong(&self->_carouselLayout, a4);
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
      v51 = [(_TVCarouselView *)self->_carouselView visibleCells];
      v34 = [v51 countByEnumeratingWithState:&v52 objects:v60 count:16];
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
              objc_enumerationMutation(v51);
            }

            v38 = *(*(&v52 + 1) + 8 * j);
            v39 = [(_TVCarouselView *)self->_carouselView indexForCell:v38];
            if (v39 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v40 = v39;
              v41 = [(IKCollectionElement *)self->_collectionElement sections];
              v42 = [v41 firstObject];

              v43 = [v42 elementForItemAtIndex:v40];
              v44 = objc_opt_new();
              [v44 setCenterGrowth:{-[TVCarouselLayout layoutType](self->_carouselLayout, "layoutType") == 0}];
              v45 = +[TVInterfaceFactory sharedInterfaceFactory];
              v46 = [v45 _viewFromElement:v43 layout:v44 existingView:v38];
            }
          }

          v35 = [v51 countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v35);
      }

      v29 = v47;
    }
  }
}

- (void)centerItemAtPageIndex:(int64_t)a3
{
  carouselView = self->_carouselView;
  if (carouselView)
  {
    [(_TVCarouselView *)carouselView centerItemAtPageIndex:a3];
  }
}

- (void)_updateAutoScrollInterval
{
  collectionElement = self->_collectionElement;
  if (collectionElement && self->_carouselView)
  {
    v4 = [(IKCollectionElement *)collectionElement sections];
    v5 = [v4 firstObject];

    if ([v5 numberOfItems] >= 3)
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
    v8 = [(TVCarouselLayout *)self->_carouselLayout pageControlMarginNumber];
    if (v8)
    {
      v10 = v8;
      [v8 floatValue];
      [(_TVCarouselView *)self->_carouselView setPageControlMargin:v9];
      v8 = v10;
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