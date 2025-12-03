@interface _TVMLCollectionViewController
+ (id)_shadowViewElementForCollectionElement:(id)element;
+ (id)footerElementFromCollectionElement:(id)element;
+ (id)headerElementFromCollectionElement:(id)element;
- (BOOL)collectionView:(id)view shouldHandleLongPressForItemAtIndexPath:(id)path;
- (CGSize)expectedCellSizeForElement:(id)element atIndexPath:(id)path;
- (TVCellMetrics)cellMetrics;
- (_TVCollectionWrappingView)collectionWrappingView;
- (_TVMLCollectionViewController)init;
- (id)_closestIndexPathToIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view indexPathForIndexTitle:(id)title atIndex:(int64_t)index;
- (id)impressionableElementsContainedInDocument:(id)document;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (id)preferredFocusEnvironments;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationWillResignActive:(id)active;
- (void)_doUpdateViewLayoutAnimated:(BOOL)animated relayout:(BOOL)relayout;
- (void)_recordImpressionsForVisibleView;
- (void)_registerCellClassesInCollectionView:(id)view;
- (void)_registerPreviewInteractionController;
- (void)_updateFooterView;
- (void)_updateHeaderView;
- (void)_updateImpressions;
- (void)adjustContentOffsetToDisplayIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)dispatchEvent:(id)event forItemAtIndexPath:(id)path completionBlock:(id)block;
- (void)loadView;
- (void)preloadCellsInRect:(CGRect)rect;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setShowcaseConfig:(TVShowcaseConfig *)config;
- (void)tv_setShowcaseConfig:(TVShowcaseConfig *)config;
- (void)tv_updateViewLayout;
- (void)updateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)updateVisibleCell:(id)cell atIndexPath:(id)path withElement:(id)element;
- (void)updateWithViewElement:(id)element cellMetrics:(TVCellMetrics *)metrics;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation _TVMLCollectionViewController

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

+ (id)footerElementFromCollectionElement:(id)element
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
        if ([v7 tv_elementType] == 13)
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

- (_TVMLCollectionViewController)init
{
  v5.receiver = self;
  v5.super_class = _TVMLCollectionViewController;
  v2 = [(_TVMLCollectionViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_indexDisplayEnabled = 1;
    [(_TVMLCollectionViewController *)v2 setRestoresFocusAfterTransition:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  collectionView = [(_TVMLCollectionViewController *)self collectionView];
  [collectionView setDelegate:0];

  collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
  [collectionView2 setDataSource:0];

  v6.receiver = self;
  v6.super_class = _TVMLCollectionViewController;
  [(_TVMLCollectionViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = _TVMLCollectionViewController;
  [(_TVMLCollectionViewController *)&v14 viewDidLoad];
  collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
  [(_TVMLCollectionViewController *)self showcaseConfig];
  [collectionWrappingView setShowcaseConfig:v13];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  if ([(_TVMLCollectionViewController *)self contentFlowsVertically])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = [_TVNeedsMoreContentEvaluator alloc];
  collectionView = [(_TVMLCollectionViewController *)self collectionView];
  v9 = [(_TVNeedsMoreContentEvaluator *)v7 initWithScrollView:collectionView axis:v6];
  needsMoreContentEvaluator = self->_needsMoreContentEvaluator;
  self->_needsMoreContentEvaluator = v9;

  v11 = self->_needsMoreContentEvaluator;
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  [(_TVNeedsMoreContentEvaluator *)v11 setViewElement:collectionElement];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = _TVMLCollectionViewController;
  [(_TVMLCollectionViewController *)&v8 viewDidLayoutSubviews];
  if (self->_didUpdateFocus)
  {
    self->_didUpdateFocus = 0;
    lastFocusedIndexPath = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    [(_TVMLCollectionViewController *)self adjustContentOffsetToDisplayIndexPath:lastFocusedIndexPath];
  }

  [(_TVMLCollectionViewController *)self setLastFocusedIndexPath:0];
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277CD9FF0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54___TVMLCollectionViewController_viewDidLayoutSubviews__block_invoke;
  v5[3] = &unk_279D6E890;
  objc_copyWeak(&v6, &location);
  [v4 setCompletionBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)updateWithViewElement:(id)element cellMetrics:(TVCellMetrics *)metrics
{
  v215 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v132 = self->_shadowViewElement;
  selfCopy = self;
  v135 = elementCopy;
  obj = [objc_opt_class() _shadowViewElementForCollectionElement:elementCopy];
  objc_storeStrong(&self->_collectionElement, element);
  attributes = [(IKCollectionElement *)self->_collectionElement attributes];
  v9 = [attributes objectForKey:@"remembersFocus"];

  if (v9)
  {
    collectionView = [(_TVMLCollectionViewController *)self collectionView];
    attributes2 = [(IKCollectionElement *)self->_collectionElement attributes];
    v12 = [attributes2 objectForKey:@"remembersFocus"];
    [collectionView setRemembersLastFocusedIndexPath:{objc_msgSend(v12, "BOOLValue")}];
  }

  previewInteractionController = self->_previewInteractionController;
  if (previewInteractionController)
  {
    [(TVPreviewInteractionController *)previewInteractionController updatePresentingElement:self->_collectionElement];
  }

  appDocument = [v135 appDocument];
  [appDocument impressionThreshold];
  self->_impressionThreshold = v15;

  self->_cellMetrics.cellSize = metrics->cellSize;
  v16 = *&metrics->cellInset.bottom;
  v18 = *&metrics->cellPadding.top;
  v17 = *&metrics->cellPadding.bottom;
  *&self->_cellMetrics.cellInset.top = *&metrics->cellInset.top;
  *&self->_cellMetrics.cellInset.bottom = v16;
  *&self->_cellMetrics.cellPadding.top = v18;
  *&self->_cellMetrics.cellPadding.bottom = v17;
  v19 = *&metrics->cellMargin.bottom;
  v21 = *&metrics->cellInsetAlt.top;
  v20 = *&metrics->cellInsetAlt.bottom;
  *&self->_cellMetrics.cellMargin.top = *&metrics->cellMargin.top;
  *&self->_cellMetrics.cellMargin.bottom = v19;
  *&self->_cellMetrics.cellInsetAlt.top = v21;
  *&self->_cellMetrics.cellInsetAlt.bottom = v20;
  v204 = 0;
  v205 = &v204;
  v206 = 0x3032000000;
  v207 = __Block_byref_object_copy__6;
  v208 = __Block_byref_object_dispose__6;
  v209 = 0;
  sections = [v135 sections];
  v203[0] = MEMORY[0x277D85DD0];
  v203[1] = 3221225472;
  v203[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke;
  v203[3] = &unk_279D708A8;
  v203[4] = &v204;
  [sections enumerateObjectsUsingBlock:v203];

  if (!v205[5])
  {
    attributes3 = [v135 attributes];
    v24 = [attributes3 objectForKey:@"firstItem"];

    v25 = [TVMLUtilities indexPathForFirstItemAttributeValue:v24];
    v26 = v205[5];
    v205[5] = v25;
  }

  v27 = [objc_opt_class() headerElementFromCollectionElement:v135];
  headerElement = self->_headerElement;
  self->_headerElement = v27;

  v29 = [objc_opt_class() footerElementFromCollectionElement:v135];
  footerElement = self->_footerElement;
  self->_footerElement = v29;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sections2 = [v135 sections];
  v201[0] = MEMORY[0x277D85DD0];
  v201[1] = 3221225472;
  v201[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_2;
  v201[3] = &unk_279D70920;
  v133 = dictionary;
  v202 = v133;
  [sections2 enumerateObjectsUsingBlock:v201];

  v33 = [v133 count];
  if (v33)
  {
    v34 = [v133 copy];
  }

  else
  {
    v34 = 0;
  }

  [(_TVMLCollectionViewController *)self setIndexPathsByIndexTitle:v34];
  if (v33)
  {
  }

  indexPathsByIndexTitle = [(_TVMLCollectionViewController *)self indexPathsByIndexTitle];
  allKeys = [indexPathsByIndexTitle allKeys];
  v200[0] = MEMORY[0x277D85DD0];
  v200[1] = 3221225472;
  v200[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_4;
  v200[3] = &unk_279D70948;
  v200[4] = self;
  v37 = [allKeys sortedArrayUsingComparator:v200];
  [(_TVMLCollectionViewController *)self setSortedIndexTitles:v37];

  if (![(_TVMLCollectionViewController *)self isViewLoaded])
  {
    objc_storeStrong(&self->_shadowViewElement, obj);
    lastFocusedIndexPath = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    self->_didUpdateFocus = [lastFocusedIndexPath isEqual:v205[5]] ^ 1;

    [(_TVMLCollectionViewController *)self setLastFocusedIndexPath:v205[5]];
    goto LABEL_110;
  }

  self->_isPreparingCollectionUpdates = 1;
  collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
  [(_TVMLCollectionViewController *)self _registerCellClassesInCollectionView:collectionView2];

  collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
  collectionView3 = [collectionWrappingView collectionView];

  [collectionView3 setSemanticContentAttribute:{objc_msgSend(v135, "tv_semanticContentAttribute")}];
  v196 = 0;
  v197 = &v196;
  v198 = 0x2020000000;
  v199 = 0;
  v192 = 0;
  v193 = &v192;
  v194 = 0x2020000000;
  v195 = 0;
  v186 = 0;
  v187 = &v186;
  v188 = 0x3032000000;
  v189 = __Block_byref_object_copy__26;
  v190 = __Block_byref_object_dispose__27;
  v191 = 0;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  elementID = [(_TVShadowViewElement *)v132 elementID];
  elementID2 = [obj elementID];
  if ([elementID isEqual:elementID2])
  {
    view = [(_TVMLCollectionViewController *)self view];
    window = [view window];
    v45 = window == 0;

    if (!v45)
    {
      children = [(_TVShadowViewElement *)v132 children];
      children2 = [obj children];
      indexSet = [MEMORY[0x277CCAB58] indexSet];
      v48 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(children2, "count")}];
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      dictionary3 = [MEMORY[0x277CBEB38] dictionary];
      v180[0] = MEMORY[0x277D85DD0];
      v180[1] = 3221225472;
      v180[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_30;
      v180[3] = &unk_279D70970;
      v125 = children2;
      v181 = v125;
      v51 = indexSet;
      v182 = v51;
      v127 = v48;
      v183 = v127;
      v52 = dictionary3;
      v184 = v52;
      v128 = dictionary2;
      v185 = v128;
      [children enumerateObjectsUsingBlock:v180];
      lastFocusedIndexPath2 = [(_TVMLCollectionViewController *)selfCopy lastFocusedIndexPath];
      if (v205[5])
      {
        if (([lastFocusedIndexPath2 isEqual:v125] & 1) == 0)
        {
          selfCopy->_didUpdateFocus = 1;
          [(_TVMLCollectionViewController *)selfCopy setLastFocusedIndexPath:v205[5]];
        }
      }

      else if (lastFocusedIndexPath2)
      {
        section = [lastFocusedIndexPath2 section];
        if ([v51 containsIndex:section])
        {
          section = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v55 = [MEMORY[0x277CCABB0] numberWithInteger:section];
          v56 = [v128 objectForKeyedSubscript:v55];
          if (v56)
          {
            v57 = [MEMORY[0x277CCABB0] numberWithInteger:section];
            v58 = [v128 objectForKeyedSubscript:v57];
            section = [v58 integerValue];
          }
        }

        item = [lastFocusedIndexPath2 item];
        if (section == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_31;
        }

        v60 = item;
        v61 = [v125 objectAtIndex:section];
        elementID3 = [v61 elementID];
        viewElement = [elementID3 viewElement];

        itemsChangeSet = [viewElement itemsChangeSet];
        v65 = itemsChangeSet;
        if (itemsChangeSet)
        {
          v60 = [itemsChangeSet newIndexForOldIndex:v60];
        }

        if (v60 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_31:
          v66 = [(_TVMLCollectionViewController *)selfCopy _closestIndexPathToIndexPath:lastFocusedIndexPath2];
          [(_TVMLCollectionViewController *)selfCopy setLastFocusedIndexPath:v66];
        }

        else
        {
          v66 = [MEMORY[0x277CCAA70] indexPathForItem:v60 inSection:section];
          [(_TVMLCollectionViewController *)selfCopy setLastFocusedIndexPath:v66];
        }

        lastFocusedIndexPath3 = [(_TVMLCollectionViewController *)selfCopy lastFocusedIndexPath];
        v68 = [lastFocusedIndexPath2 isEqual:lastFocusedIndexPath3];

        if ((v68 & 1) == 0)
        {
          selfCopy->_didUpdateFocus = 1;
        }
      }

      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      indexPathsForVisibleItems = [collectionView3 indexPathsForVisibleItems];
      v70 = [indexPathsForVisibleItems countByEnumeratingWithState:&v176 objects:v214 count:16];
      if (v70)
      {
        v71 = *v177;
        do
        {
          for (i = 0; i != v70; ++i)
          {
            if (*v177 != v71)
            {
              objc_enumerationMutation(indexPathsForVisibleItems);
            }

            v73 = *(*(&v176 + 1) + 8 * i);
            if ([v51 containsIndex:{objc_msgSend(v73, "section")}])
            {
              [array addObject:v73];
            }
          }

          v70 = [indexPathsForVisibleItems countByEnumeratingWithState:&v176 objects:v214 count:16];
        }

        while (v70);
      }

      v74 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v52, "count")}];
      v166[0] = MEMORY[0x277D85DD0];
      v166[1] = 3221225472;
      v166[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_2_33;
      v166[3] = &unk_279D709C0;
      v75 = children;
      v167 = v75;
      v76 = v126;
      v168 = v76;
      v169 = array;
      v170 = selfCopy;
      v77 = collectionView3;
      v171 = v77;
      v174 = &v192;
      v172 = array2;
      v175 = &v196;
      v78 = v74;
      v173 = v78;
      [v52 enumerateKeysAndObjectsUsingBlock:v166];
      if ((v197[3] & 1) == 0 && ([v78 count] || objc_msgSend(v51, "count") || objc_msgSend(v127, "count") || objc_msgSend(v128, "count")))
      {
        v160[0] = MEMORY[0x277D85DD0];
        v160[1] = 3221225472;
        v160[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_4_36;
        v160[3] = &unk_279D6F338;
        v161 = v77;
        v162 = v51;
        v163 = v127;
        v164 = v128;
        v165 = v78;
        v79 = MEMORY[0x26D6AFBB0](v160);
        v80 = v187[5];
        v187[5] = v79;
      }

      goto LABEL_51;
    }
  }

  else
  {
  }

  *(v197 + 24) = 1;
LABEL_51:
  v159[0] = MEMORY[0x277D85DD0];
  v159[1] = 3221225472;
  v159[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_9;
  v159[3] = &unk_279D70A80;
  v159[4] = selfCopy;
  v159[5] = &v192;
  v131 = MEMORY[0x26D6AFBB0](v159);
  if (v197[3])
  {
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    visibleCells = [collectionView3 visibleCells];
    v82 = [visibleCells countByEnumeratingWithState:&v143 objects:v211 count:16];
    if (v82)
    {
      v83 = *v144;
      do
      {
        for (j = 0; j != v82; ++j)
        {
          if (*v144 != v83)
          {
            objc_enumerationMutation(visibleCells);
          }

          [*(*(&v143 + 1) + 8 * j) tv_setBelongsToOldIndexPath:1];
        }

        v82 = [visibleCells countByEnumeratingWithState:&v143 objects:v211 count:16];
      }

      while (v82);
    }

    lastFocusedIndexPath4 = [(_TVMLCollectionViewController *)selfCopy lastFocusedIndexPath];
    preparedCells = lastFocusedIndexPath4;
    if (v205[5])
    {
      [(_TVMLCollectionViewController *)selfCopy setLastFocusedIndexPath:?];
    }

    else if (lastFocusedIndexPath4)
    {
      v111 = [(_TVMLCollectionViewController *)selfCopy _closestIndexPathToIndexPath:lastFocusedIndexPath4];
      [(_TVMLCollectionViewController *)selfCopy setLastFocusedIndexPath:v111];
    }

    lastFocusedIndexPath5 = [(_TVMLCollectionViewController *)selfCopy lastFocusedIndexPath];
    v113 = [preparedCells isEqual:lastFocusedIndexPath5];

    if ((v113 & 1) == 0)
    {
      selfCopy->_didUpdateFocus = 1;
    }

    v131[2]();
    [collectionView3 reloadData];
  }

  else
  {
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v87 = array;
    v88 = [v87 countByEnumeratingWithState:&v155 objects:v213 count:16];
    if (v88)
    {
      v89 = *v156;
      do
      {
        for (k = 0; k != v88; ++k)
        {
          if (*v156 != v89)
          {
            objc_enumerationMutation(v87);
          }

          v91 = [collectionView3 cellForItemAtIndexPath:*(*(&v155 + 1) + 8 * k)];
          [v91 tv_setBelongsToOldIndexPath:1];
        }

        v88 = [v87 countByEnumeratingWithState:&v155 objects:v213 count:16];
      }

      while (v88);
    }

    if (v187[5] || *(v193 + 24) == 1)
    {
      v151[0] = MEMORY[0x277D85DD0];
      v151[1] = 3221225472;
      v151[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_10;
      v151[3] = &unk_279D70AD0;
      v152 = collectionView3;
      v153 = v131;
      v154 = &v186;
      v92 = MEMORY[0x26D6AFBB0](v151);
      if ([MEMORY[0x277D75D18] _isInAnimationBlock])
      {
        [MEMORY[0x277D75D18] performWithoutAnimation:v92];
      }

      else
      {
        v92[2](v92);
      }
    }

    else
    {
      v131[2]();
    }

    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    preparedCells = [collectionView3 preparedCells];
    v93 = [preparedCells countByEnumeratingWithState:&v147 objects:v212 count:16];
    if (v93)
    {
      v94 = *v148;
      v95 = *MEMORY[0x277CBF348];
      v96 = *(MEMORY[0x277CBF348] + 8);
      do
      {
        for (m = 0; m != v93; ++m)
        {
          if (*v148 != v94)
          {
            objc_enumerationMutation(preparedCells);
          }

          v98 = *(*(&v147 + 1) + 8 * m);
          v99 = [collectionView3 indexPathForCell:v98];
          if (v99 || (objc_opt_respondsToSelector() & 1) == 0)
          {
            v100 = v99;
          }

          else
          {
            v100 = [objc_msgSend(v98 performSelector:{sel__layoutAttributes), "indexPath"}];
          }

          v101 = v100;

          if (v101 && [array2 containsObject:v101])
          {
            sections3 = [(IKCollectionElement *)selfCopy->_collectionElement sections];
            v103 = [sections3 objectAtIndexedSubscript:{objc_msgSend(v101, "section")}];

            v104 = [v103 elementForItemAtIndex:{objc_msgSend(v101, "item")}];
            [v98 center];
            v106 = v105;
            v108 = v107;
            [(_TVMLCollectionViewController *)selfCopy expectedCellSizeForElement:v104 atIndexPath:v101];
            [v98 setBounds:{v95, v96, v109, v110}];
            [v98 setCenter:{v106, v108}];
            [(_TVMLCollectionViewController *)selfCopy updateVisibleCell:v98 atIndexPath:v101 withElement:v104];
          }
        }

        v93 = [preparedCells countByEnumeratingWithState:&v147 objects:v212 count:16];
      }

      while (v93);
    }
  }

  objc_storeStrong(&selfCopy->_shadowViewElement, obj);
  [(_TVMLCollectionViewController *)selfCopy didUpdateCollectionViewByNeedingReload:*(v197 + 24) focusUpdate:selfCopy->_didUpdateFocus];
  [(_TVNeedsMoreContentEvaluator *)selfCopy->_needsMoreContentEvaluator setViewElement:v135];
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  sections4 = [v135 sections];
  v115 = [sections4 countByEnumeratingWithState:&v139 objects:v210 count:16];
  if (v115)
  {
    v116 = *v140;
    while (2)
    {
      for (n = 0; n != v115; ++n)
      {
        if (*v140 != v116)
        {
          objc_enumerationMutation(sections4);
        }

        v118 = *(*(&v139 + 1) + 8 * n);
        itemsChangeSet2 = [v118 itemsChangeSet];
        if ([v118 updateType] == 4)
        {
          goto LABEL_108;
        }

        addedIndexes = [itemsChangeSet2 addedIndexes];
        if ([addedIndexes count])
        {
          goto LABEL_107;
        }

        removedIndexes = [itemsChangeSet2 removedIndexes];
        if ([removedIndexes count])
        {

LABEL_107:
LABEL_108:

          [(_TVNeedsMoreContentEvaluator *)selfCopy->_needsMoreContentEvaluator reset];
          sections4 = [(_TVMLCollectionViewController *)selfCopy view];
          [sections4 setNeedsLayout];
          goto LABEL_109;
        }

        movedIndexesByNewIndex = [itemsChangeSet2 movedIndexesByNewIndex];
        v123 = [movedIndexesByNewIndex count] == 0;

        if (!v123)
        {
          goto LABEL_108;
        }
      }

      v115 = [sections4 countByEnumeratingWithState:&v139 objects:v210 count:16];
      if (v115)
      {
        continue;
      }

      break;
    }
  }

LABEL_109:

  _Block_object_dispose(&v186, 8);
  _Block_object_dispose(&v192, 8);
  _Block_object_dispose(&v196, 8);

LABEL_110:
  if (selfCopy->_didUpdateFocus && [(_TVMLCollectionViewController *)selfCopy isViewLoaded])
  {
    [(_TVMLCollectionViewController *)selfCopy setNeedsFocusUpdate];
    view2 = [(_TVMLCollectionViewController *)selfCopy view];
    [view2 setNeedsLayout];
  }

  _Block_object_dispose(&v204, 8);
}

- (_TVCollectionWrappingView)collectionWrappingView
{
  if ([(_TVMLCollectionViewController *)self isViewLoaded])
  {
    view = [(_TVMLCollectionViewController *)self view];
  }

  else
  {
    view = 0;
  }

  return view;
}

- (void)tv_setShowcaseConfig:(TVShowcaseConfig *)config
{
  v6 = *config;
  [(_TVMLCollectionViewController *)self setShowcaseConfig:&v6];
  collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
  v6 = *config;
  [collectionWrappingView setShowcaseConfig:&v6];
}

- (CGSize)expectedCellSizeForElement:(id)element atIndexPath:(id)path
{
  v46 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  pathCopy = path;
  [(_TVMLCollectionViewController *)self cellMetrics];
  v9 = v34;
  v8 = v35;
  if (v34 == 0.0)
  {
    style = [elementCopy style];
    [style tv_width];
    v9 = v11;

    style2 = [elementCopy style];
    [style2 tv_height];
    v14 = v13;

    if (v14 <= 0.0 || v9 <= 0.0)
    {
      v15 = [elementCopy objectForKeyedSubscript:@"TVFactoryKeyCellMetrics"];
      v16 = v15;
      if (v15)
      {
        [v15 tv_cellMetricsValue];
        v9 = *&v25;
      }

      else
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v9 = 0.0;
        v25 = 0u;
      }
    }

    else
    {
      v8 = v14;
    }
  }

  if (v9 < 0.0 || v8 < 0.0)
  {
    v17 = [(_TVMLCollectionViewController *)self collectionElement:v25];
    v18 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_ERROR))
    {
      v21 = v18;
      section = [pathCopy section];
      item = [pathCopy item];
      v24 = [v17 debugDescription];
      *buf = 134219010;
      v37 = v9;
      v38 = 2048;
      v39 = v8;
      v40 = 2048;
      v41 = section;
      v42 = 2048;
      v43 = item;
      v44 = 2112;
      v45 = v24;
      _os_log_error_impl(&dword_26CD9A000, v21, OS_LOG_TYPE_ERROR, "CollectionLayout: invalid cell size: {%lf, %lf} for [%ld, %ld] in: %@", buf, 0x34u);
    }
  }

  v19 = v9;
  v20 = v8;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)updateVisibleCell:(id)cell atIndexPath:(id)path withElement:(id)element
{
  cellCopy = cell;
  elementCopy = element;
  v9 = elementCopy;
  if (cellCopy)
  {
    v10 = MEMORY[0x277CCAE60];
    style = [elementCopy style];
    [style tv_focusMargin];
    v12 = [v10 valueWithUIEdgeInsets:?];
    [cellCopy setValue:v12 forTVViewStyle:@"tv-focus-margin"];

    v13 = MEMORY[0x277CCAE60];
    [(_TVMLCollectionViewController *)self cellMetrics];
    v14 = [v13 valueWithUIEdgeInsets:{v20, v21, v22, v23}];
    [cellCopy setValue:v14 forTVViewStyle:@"padding"];

    v15 = MEMORY[0x277CCABB0];
    style2 = [(IKCollectionElement *)self->_collectionElement style];
    v17 = [v15 numberWithInteger:{objc_msgSend(style2, "tv_contentAlignment")}];
    [cellCopy setValue:v17 forTVViewStyle:@"tv-content-align"];

    v18 = +[TVInterfaceFactory sharedInterfaceFactory];
    v19 = [v18 _viewFromElement:v9 existingView:cellCopy];
  }
}

- (void)updateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  view = [(_TVMLCollectionViewController *)self view];
  window = [view window];
  if (window)
  {
    v7 = window;
    nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];

    if (!nextFocusedIndexPath)
    {
      goto LABEL_5;
    }

    nextFocusedIndexPath2 = [contextCopy nextFocusedIndexPath];
    [(_TVMLCollectionViewController *)self setLastFocusedIndexPath:nextFocusedIndexPath2];

    view = [contextCopy nextFocusedIndexPath];
    [(_TVMLCollectionViewController *)self dispatchEvent:@"highlight" forItemAtIndexPath:view completionBlock:0];
  }

LABEL_5:
}

- (void)dispatchEvent:(id)event forItemAtIndexPath:(id)path completionBlock:(id)block
{
  eventCopy = event;
  blockCopy = block;
  pathCopy = path;
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  sections = [collectionElement sections];
  v12 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  v13 = [v12 elementForItemAtIndex:{objc_msgSend(pathCopy, "row")}];
  collectionView = [(_TVMLCollectionViewController *)self collectionView];
  v15 = [collectionView cellForItemAtIndexPath:pathCopy];

  if (([v13 isDisabled] & 1) == 0)
  {
    [v13 tv_dispatchEvent:eventCopy canBubble:1 isCancelable:1 extraInfo:0 targetResponder:v15 completionBlock:blockCopy];
  }
}

- (void)loadView
{
  v3 = [_TVCollectionWrappingView alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v13 = [(_TVCollectionWrappingView *)v3 initWithFrame:?];

  [(_TVCollectionWrappingView *)v13 setAutoresizingMask:18];
  style = [(IKCollectionElement *)self->_collectionElement style];
  tv_backgroundColor = [style tv_backgroundColor];

  [(_TVCollectionWrappingView *)v13 setIkBackgroundColor:tv_backgroundColor];
  [(_TVMLCollectionViewController *)self setView:v13];
  [(_TVCollectionWrappingView *)v13 bounds];
  v7 = [(_TVMLCollectionViewController *)self makeCollectionViewWithFrame:?];
  [(_TVMLCollectionViewController *)self _registerCellClassesInCollectionView:v7];
  [v7 setSemanticContentAttribute:{-[IKCollectionElement tv_semanticContentAttribute](self->_collectionElement, "tv_semanticContentAttribute")}];
  [v7 setAutoresizingMask:18];
  [v7 setShowsHorizontalScrollIndicator:0];
  [v7 setShowsVerticalScrollIndicator:0];
  [v7 setDelegate:self];
  [v7 setDataSource:self];
  [v7 _setContentInsetAdjustmentBehavior:2];
  attributes = [(IKCollectionElement *)self->_collectionElement attributes];
  v9 = [attributes objectForKey:@"remembersFocus"];

  if (v9)
  {
    attributes2 = [(IKCollectionElement *)self->_collectionElement attributes];
    v11 = [attributes2 objectForKey:@"remembersFocus"];
    [v7 setRemembersLastFocusedIndexPath:{objc_msgSend(v11, "BOOLValue")}];
  }

  [(_TVMLCollectionViewController *)self setCollectionView:v7];
  [(_TVCollectionWrappingView *)v13 setCollectionView:v7];
  if (([(_TVMLCollectionViewController *)self contentFlowsVertically]& 1) != 0)
  {
    collectionView = [(_TVMLCollectionViewController *)self collectionView];
    -[_TVCollectionWrappingView setHeaderAuxiliarySelecting:](v13, "setHeaderAuxiliarySelecting:", [collectionView isScrollEnabled] ^ 1);
  }

  else
  {
    [(_TVCollectionWrappingView *)v13 setHeaderAuxiliarySelecting:1];
  }

  [(_TVMLCollectionViewController *)self _updateHeaderView];
  [(_TVMLCollectionViewController *)self _updateFooterView];
  [(_TVMLCollectionViewController *)self _registerPreviewInteractionController];
  [(_TVMLCollectionViewController *)self _doUpdateViewLayoutAnimated:0 relayout:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = _TVMLCollectionViewController;
  [(_TVMLCollectionViewController *)&v4 viewDidAppear:appear];
  self->_didAppear = 1;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = _TVMLCollectionViewController;
  [(_TVMLCollectionViewController *)&v4 viewDidDisappear:disappear];
  [(_TVMLCollectionViewController *)self _cancelImpressionsUpdate];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = _TVMLCollectionViewController;
  [(_TVMLCollectionViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  previewInteractionController = self->_previewInteractionController;
  if (previewInteractionController)
  {
    [(TVPreviewInteractionController *)previewInteractionController dismissInteractionView];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = _TVMLCollectionViewController;
  [(_TVMLCollectionViewController *)&v5 viewWillDisappear:disappear];
  previewInteractionController = self->_previewInteractionController;
  if (previewInteractionController)
  {
    [(TVPreviewInteractionController *)previewInteractionController dismissInteractionView];
  }
}

- (void)tv_updateViewLayout
{
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  [_TVLockupFactory cellMetricsForCollectionElement:collectionElement];

  v4 = self->_cellMetrics.cellSize.width == 0.0 && self->_cellMetrics.cellSize.height == 0.0;
  if (!v4 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(0, *&self->_cellMetrics.cellPadding.top), vceqq_f64(0, *&self->_cellMetrics.cellPadding.bottom)))) & 1) == 0)
  {
    *&self->_cellMetrics.cellInsetAlt.bottom = 0u;
    *&self->_cellMetrics.cellMargin.top = 0u;
    *&self->_cellMetrics.cellMargin.bottom = 0u;
    *&self->_cellMetrics.cellPadding.bottom = 0u;
    *&self->_cellMetrics.cellInset.top = 0u;
    *&self->_cellMetrics.cellInset.bottom = 0u;
    *&self->_cellMetrics.cellInsetAlt.top = 0u;
    self->_cellMetrics.cellSize = 0u;
    *&self->_cellMetrics.cellPadding.top = 0u;
    if ([(_TVMLCollectionViewController *)self isViewLoaded])
    {
      [(_TVMLCollectionViewController *)self _doUpdateViewLayoutAnimated:1 relayout:1];
    }
  }
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
  if (collectionWrappingView)
  {
    collectionWrappingView2 = [(_TVMLCollectionViewController *)self collectionWrappingView];
    v7[0] = collectionWrappingView2;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  sections = [collectionElement sections];
  v5 = [sections count];

  return v5;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  sections = [collectionElement sections];
  v7 = [sections objectAtIndex:section];

  numberOfItems = [v7 numberOfItems];
  return numberOfItems;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v49 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (self->_isPreparingCollectionUpdates)
  {
    shadowViewElement = [(_TVMLCollectionViewController *)self shadowViewElement];
    children = [shadowViewElement children];
    v8 = [children objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    collectionView = [(_TVMLCollectionViewController *)self collectionView];
    resourceName = [v8 resourceName];
    v11 = [collectionView dequeueReusableCellWithReuseIdentifier:resourceName forIndexPath:pathCopy];
  }

  else
  {
    collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
    sections = [collectionElement sections];
    v14 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

    v15 = [v14 elementForItemAtIndex:{objc_msgSend(pathCopy, "item")}];
    elementName = [v15 elementName];
    if ([v15 tv_elementType] == 24)
    {
      v39 = elementName;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      children2 = [v15 children];
      v18 = [children2 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v18)
      {
        v19 = v18;
        v36 = v15;
        v37 = v14;
        v38 = pathCopy;
        v20 = *v45;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v45 != v20)
            {
              objc_enumerationMutation(children2);
            }

            v22 = *(*(&v44 + 1) + 8 * i);
            if ([v22 tv_elementType] == 16 && !objc_msgSend(v22, "tv_imageType"))
            {
              v23 = v22;
              v24 = [v23 url];
              if ([v24 tv_isResourceURL])
              {
                v25 = +[TVInterfaceFactory sharedInterfaceFactory];
                tv_resourceName = [v24 tv_resourceName];
                v27 = [v25 URLForResource:tv_resourceName];

                v24 = v27;
              }

              if (v24)
              {
                if ([v24 tv_imageURLType] == 1)
                {
                  elementName = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-LCR", v39];

                  pathCopy = v38;
                }

                else
                {
                  pathCopy = v38;
                  elementName = v39;
                }

                v15 = v36;

                v14 = v37;
                goto LABEL_23;
              }
            }
          }

          v19 = [children2 countByEnumeratingWithState:&v44 objects:v48 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }

        v14 = v37;
        pathCopy = v38;
        v15 = v36;
      }

      elementName = v39;
LABEL_23:
    }

    collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
    v11 = [collectionView2 dequeueReusableCellWithReuseIdentifier:elementName forIndexPath:pathCopy];

    v29 = objc_opt_new();
    style = [v15 style];
    [style tv_focusMargin];
    [v29 setFocusMargin:?];

    [(_TVMLCollectionViewController *)self cellMetrics];
    [v29 setPadding:{v40, v41, v42, v43}];
    style2 = [(IKCollectionElement *)self->_collectionElement style];
    [v29 setContentAlignment:{objc_msgSend(style2, "tv_contentAlignment")}];

    [v11 tv_setAssociatedIKViewElement:0];
    v32 = +[TVInterfaceFactory sharedInterfaceFactory];
    v33 = [v32 _viewFromElement:v15 layout:v29 existingView:v11];

    if (v33 != v11)
    {
      contentView = [v11 contentView];
      [contentView addSubview:v33];
    }
  }

  return v11;
}

- (id)collectionView:(id)view indexPathForIndexTitle:(id)title atIndex:(int64_t)index
{
  titleCopy = title;
  indexPathsByIndexTitle = [(_TVMLCollectionViewController *)self indexPathsByIndexTitle];
  v8 = [indexPathsByIndexTitle objectForKeyedSubscript:titleCopy];

  return v8;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v7 = *MEMORY[0x277D76620];
  pathCopy = path;
  cellCopy = cell;
  [cellCopy tv_setDisplayed:{objc_msgSend(v7, "applicationState") == 0}];

  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  sections = [collectionElement sections];
  v13 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  item = [pathCopy item];
  [v13 loadIndex:item];
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  [cellCopy tv_setDisplayed:0];
  if (([cellCopy tv_belongsToOldIndexPath] & 1) == 0)
  {
    collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
    sections = [collectionElement sections];
    v10 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    [v10 unloadIndex:{objc_msgSend(pathCopy, "item")}];
  }

  [cellCopy tv_setBelongsToOldIndexPath:0];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73___TVMLCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
  v10[3] = &unk_279D70AF8;
  v11 = viewCopy;
  v12 = pathCopy;
  v8 = pathCopy;
  v9 = viewCopy;
  [(_TVMLCollectionViewController *)self dispatchEvent:@"select" forItemAtIndexPath:v8 completionBlock:v10];
}

- (BOOL)collectionView:(id)view shouldHandleLongPressForItemAtIndexPath:(id)path
{
  previewInteractionController = self->_previewInteractionController;
  if (previewInteractionController)
  {
    return [(TVPreviewInteractionController *)previewInteractionController collectionView:view shouldHandleLongPressForItemAtIndexPath:path];
  }

  else
  {
    return 1;
  }
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  contextCopy = context;
  coordinatorCopy = coordinator;
  view = [(_TVMLCollectionViewController *)self view];
  window = [view window];

  if (window)
  {
    previouslyFocusedIndexPath = [contextCopy previouslyFocusedIndexPath];
    nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];
    if (([previouslyFocusedIndexPath isEqual:nextFocusedIndexPath] & 1) == 0)
    {
      v14 = [viewCopy cellForItemAtIndexPath:previouslyFocusedIndexPath];
      [v14 tv_setFocused:0];
      v15 = [viewCopy cellForItemAtIndexPath:nextFocusedIndexPath];
      [v15 tv_setFocused:1];
    }
  }

  [(_TVMLCollectionViewController *)self updateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  if ([view tv_isFocusOnNonOwnedCell])
  {
    lastFocusedIndexPath = 0;
  }

  else
  {
    lastFocusedIndexPath = self->_lastFocusedIndexPath;
  }

  return lastFocusedIndexPath;
}

- (void)scrollViewDidScroll:(id)scroll
{
  collectionView = [(_TVMLCollectionViewController *)self collectionView];
  [collectionView bounds];
  rect = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
  [collectionView2 contentInset];
  v14 = v13;
  v16 = v15;
  v28 = v17;
  v19 = v18;

  collectionView3 = [(_TVMLCollectionViewController *)self collectionView];
  [collectionView3 contentSize];
  v22 = v21;
  v24 = v23;

  if (([(_TVMLCollectionViewController *)self contentFlowsVertically]& 1) == 0 && (v31.origin.x = rect, v31.origin.y = v7, v31.size.width = v9, v31.size.height = v11, v19 + v16 + v22 <= CGRectGetWidth(v31)) || [(_TVMLCollectionViewController *)self contentFlowsVertically]&& (v32.origin.x = rect, v32.origin.y = v7, v32.size.width = v9, v32.size.height = v11, v28 + v14 + v24 <= CGRectGetHeight(v32)))
  {
    collectionView4 = [(_TVMLCollectionViewController *)self collectionView];
    [collectionView4 setContentOffset:0 animated:{-v16, -v14}];
  }

  [(_TVNeedsMoreContentEvaluator *)self->_needsMoreContentEvaluator evaluateForState:2];
  collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
  [collectionWrappingView reevaluateHeaderFrame];

  collectionWrappingView2 = [(_TVMLCollectionViewController *)self collectionWrappingView];
  [collectionWrappingView2 reevaluateFooterFrame];

  if (self->_didAppear)
  {

    [(_TVMLCollectionViewController *)self _updateImpressions];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  v7 = [(_TVMLCollectionViewController *)self collectionView:dragging];
  tv_isFocusOnNonOwnedCell = [v7 tv_isFocusOnNonOwnedCell];

  if (tv_isFocusOnNonOwnedCell)
  {
    return;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  focusedView = [mainScreen focusedView];

  collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
  if (![collectionWrappingView isHeaderFloating] || !-[_TVMLCollectionViewController contentFlowsVertically](self, "contentFlowsVertically"))
  {
    goto LABEL_6;
  }

  collectionView = [(_TVMLCollectionViewController *)self collectionView];
  v12 = [focusedView isDescendantOfView:collectionView];

  if (v12)
  {
    collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
    [focusedView bounds];
    [collectionView2 convertRect:focusedView fromView:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v32.origin.x = v15;
    v32.origin.y = v17;
    v32.size.width = v19;
    v32.size.height = v21;
    MinY = CGRectGetMinY(v32);
    collectionView3 = [(_TVMLCollectionViewController *)self collectionView];
    [collectionView3 _gradientMaskEdgeInsets];
    v25 = v24;
    collectionView4 = [(_TVMLCollectionViewController *)self collectionView];
    [collectionView4 _gradientMaskLengths];
    v28 = MinY - (v25 + v27);

    collectionWrappingView = [(_TVMLCollectionViewController *)self collectionView];
    [collectionWrappingView contentInset];
    offset->y = fmin(fmax(v28, -v29), offset->y);
LABEL_6:
  }
}

- (void)_updateImpressions
{
  [(_TVMLCollectionViewController *)self _cancelImpressionsUpdate];
  if (self->_impressionThreshold > 0.0)
  {

    [(_TVMLCollectionViewController *)self performSelector:sel__recordImpressionsForVisibleView withObject:0 afterDelay:?];
  }
}

- (void)_recordImpressionsForVisibleView
{
  view = [(_TVMLCollectionViewController *)self view];
  window = [view window];

  if (window)
  {
    appDocument = [(IKCollectionElement *)self->_collectionElement appDocument];
    v5 = [(_TVMLCollectionViewController *)self impressionableElementsContainedInDocument:?];
    if ([v5 count])
    {
      [appDocument recordImpressionsForViewElements:v5];
    }
  }
}

- (id)impressionableElementsContainedInDocument:(id)document
{
  v25 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  appDocument = [(IKCollectionElement *)self->_collectionElement appDocument];
  if ([appDocument isEqual:documentCopy])
  {
    collectionView = [(_TVMLCollectionViewController *)self collectionView];
    visibleCells = [collectionView visibleCells];

    array = [MEMORY[0x277CBEB18] array];
    if ([(_TVMLCollectionViewController *)self isViewLoaded])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = visibleCells;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v20 + 1) + 8 * i) tv_impressionableElementsForDocument:{documentCopy, v20}];
            [array addObjectsFromArray:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v11);
      }

      collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
      headerView = [collectionWrappingView headerView];
      v17 = [headerView tv_impressionableElementsForDocument:documentCopy];
      [array addObjectsFromArray:v17];
    }

    if ([array count])
    {
      v18 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)preloadCellsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  view = [(_TVMLCollectionViewController *)self view];
  [view layoutBelowIfNeeded];

  collectionView = [(_TVMLCollectionViewController *)self collectionView];
  [collectionView _ensureViewsAreLoadedInRect:{x, y, width, height}];
}

- (void)_applicationDidBecomeActive:(id)active
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(_TVMLCollectionViewController *)self collectionView:active];
  visibleCells = [v3 visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v9 + 1) + 8 * v8++) tv_setDisplayed:1];
      }

      while (v6 != v8);
      v6 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_applicationWillResignActive:(id)active
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(_TVMLCollectionViewController *)self collectionView:active];
  visibleCells = [v3 visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v9 + 1) + 8 * v8++) tv_setDisplayed:0];
      }

      while (v6 != v8);
      v6 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)adjustContentOffsetToDisplayIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    collectionView = [(_TVMLCollectionViewController *)self collectionView];
    [collectionView layoutBelowIfNeeded];

    preferredScrollPosition = [(_TVMLCollectionViewController *)self preferredScrollPosition];
    collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
    v7 = [collectionView2 layoutAttributesForItemAtIndexPath:pathCopy];
    [v7 frame];
    v53 = v9;
    v54 = v8;
    v11 = v10;
    v52 = v12;

    collectionView3 = [(_TVMLCollectionViewController *)self collectionView];
    [collectionView3 contentInset];
    v50 = v15;
    v51 = v14;
    v55 = v17;
    v56 = v16;

    collectionView4 = [(_TVMLCollectionViewController *)self collectionView];
    [collectionView4 bounds];
    v20 = v19;
    v22 = v21;

    collectionView5 = [(_TVMLCollectionViewController *)self collectionView];
    [collectionView5 contentOffset];
    v25 = v24;
    v27 = v26;
    v28 = v24;
    v29 = v26;

    collectionView6 = [(_TVMLCollectionViewController *)self collectionView];
    [collectionView6 contentSize];
    v49 = v31;
    v33 = v32;

    if ([(_TVMLCollectionViewController *)self contentFlowsVertically])
    {
      v34 = v11 + v52 + v50 - v22;
      v35 = v11 - v51;
      v36 = v11 + v52 * 0.5 - v22 * 0.5;
      if (v34 >= v36)
      {
        v36 = v11 + v52 + v50 - v22;
      }

      if (v35 >= v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = v11 - v51;
      }

      if (v27 < v34 || v29 > v35)
      {
        if (preferredScrollPosition == 1)
        {
          v37 = v11 - v51;
        }

        else if (preferredScrollPosition != 2)
        {
          if (preferredScrollPosition == 4)
          {
            v37 = v11 + v52 + v50 - v22;
          }

          else
          {
            v37 = v11 + v52 + v50 - v22;
            if (v27 >= v34)
            {
              if (v27 <= v35)
              {
                v37 = v27;
              }

              else
              {
                v37 = v11 - v51;
              }
            }
          }
        }

        if (v37 >= v50 + v33 - v22)
        {
          v47 = v50 + v33 - v22;
        }

        else
        {
          v47 = v37;
        }

        if (v47 >= -v51)
        {
          v29 = v47;
        }

        else
        {
          v29 = -v51;
        }
      }
    }

    else
    {
      v39 = v54 + v53 + v55 - v20;
      v40 = v54 - v56;
      v41 = v54 + v53 * 0.5 - v20 * 0.5;
      if (v39 >= v41)
      {
        v41 = v54 + v53 + v55 - v20;
      }

      if (v40 >= v41)
      {
        v42 = v41;
      }

      else
      {
        v42 = v54 - v56;
      }

      view = [(_TVMLCollectionViewController *)self view];
      effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

      if (v25 < v39 || v28 > v40)
      {
        v46 = v55 + v49 - v20;
        if (preferredScrollPosition == 8)
        {
          v42 = v54 - v56;
        }

        else if (preferredScrollPosition != 16)
        {
          if (preferredScrollPosition == 32)
          {
            v42 = v54 + v53 + v55 - v20;
          }

          else if (effectiveUserInterfaceLayoutDirection == 1)
          {
            v42 = v54 + v53 + v55 - v20;
          }

          else
          {
            v42 = v54 - v56;
          }
        }

        if (v42 < v46)
        {
          v46 = v42;
        }

        if (v46 >= -v56)
        {
          v28 = v46;
        }

        else
        {
          v28 = -v56;
        }
      }
    }

    if (v25 != v28 || v27 != v29)
    {
      collectionView7 = [(_TVMLCollectionViewController *)self collectionView];
      [collectionView7 setContentOffset:0 animated:{v28, v29}];
    }
  }
}

+ (id)_shadowViewElementForCollectionElement:(id)element
{
  v24 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v4 = objc_alloc_init(_TVShadowViewElement);
  v17 = [[_TVShadowViewElementID alloc] initWithViewElement:elementCopy];
  [(_TVShadowViewElement *)v4 setElementID:?];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = elementCopy;
  sections = [elementCopy sections];
  v7 = [sections countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(sections);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 elementType] == 49)
        {
          v12 = [[_TVShadowViewElementID alloc] initWithViewElement:v11];
          v13 = objc_alloc_init(_TVShadowViewElement);
          [(_TVShadowViewElement *)v13 setElementID:v12];
          [(_TVShadowViewElement *)v13 setParent:v4];
          if ([v11 numberOfItems] >= 1)
          {
            v14 = [v11 elementForItemAtIndex:0];
            elementName = [v14 elementName];

            [(_TVShadowViewElement *)v13 setResourceName:elementName];
          }

          [v5 addObject:v13];
        }
      }

      v8 = [sections countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    [(_TVShadowViewElement *)v4 setChildren:v5];
  }

  return v4;
}

- (void)_doUpdateViewLayoutAnimated:(BOOL)animated relayout:(BOOL)relayout
{
  relayoutCopy = relayout;
  animatedCopy = animated;
  view = [(_TVMLCollectionViewController *)self view];
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  [view transferLayoutStylesFromElement:collectionElement];

  [(_TVMLCollectionViewController *)self updateViewLayoutAnimated:animatedCopy relayout:relayoutCopy];
}

- (void)_updateHeaderView
{
  v29 = *MEMORY[0x277D85DE8];
  collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
  headerViewController = [(_TVMLCollectionViewController *)self headerViewController];
  v5 = +[TVInterfaceFactory sharedInterfaceFactory];
  headerElement = [(_TVMLCollectionViewController *)self headerElement];
  v7 = [v5 _viewControllerFromElement:headerElement existingController:headerViewController];

  if (!v7)
  {
    view = [headerViewController view];
    v9 = +[TVInterfaceFactory sharedInterfaceFactory];
    headerElement2 = [(_TVMLCollectionViewController *)self headerElement];
    v11 = [v9 _viewFromElement:headerElement2 existingView:view];

    if (v11)
    {
      if (v11 == view)
      {
        v7 = headerViewController;
      }

      else
      {
        v7 = objc_alloc_init(MEMORY[0x277D75D28]);
        [v7 setView:v11];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  if (v7 != headerViewController)
  {
    [headerViewController willMoveToParentViewController:0];
    if (v7)
    {
      [(_TVMLCollectionViewController *)self addChildViewController:v7];
    }

    view2 = [headerViewController view];
    [view2 removeFromSuperview];

    view3 = [v7 view];
    [collectionWrappingView setHeaderView:view3];

    [headerViewController removeFromParentViewController];
    [v7 didMoveToParentViewController:self];
  }

  [(_TVMLCollectionViewController *)self setHeaderViewController:v7];
  attributes = [(IKViewElement *)self->_headerElement attributes];
  v15 = [attributes objectForKeyedSubscript:@"floating"];

  if ([v15 length])
  {
    bOOLValue = [v15 BOOLValue];
  }

  else
  {
    bOOLValue = [(_TVMLCollectionViewController *)self shouldHeaderFloatByDefault];
  }

  [collectionWrappingView setHeaderFloating:bOOLValue];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  children = [(IKViewElement *)self->_headerElement children];
  v18 = [children countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v18)
  {
    v19 = *v25;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(children);
        }

        if ([*(*(&v24 + 1) + 8 * i) tv_elementType] == 50)
        {
          v18 = 1;
          goto LABEL_25;
        }
      }

      v18 = [children countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  [collectionWrappingView setHeaderCanBecomeFocused:v18];
  headerView = [collectionWrappingView headerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    headerView2 = [collectionWrappingView headerView];
    [headerView2 setGestureTargetView:collectionWrappingView];
  }
}

- (void)_registerPreviewInteractionController
{
  if (!self->_previewInteractionController)
  {
    collectionView = [(_TVMLCollectionViewController *)self collectionView];

    if (collectionView)
    {
      appDocument = [(IKCollectionElement *)self->_collectionElement appDocument];
      collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
      collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
      v6 = [appDocument tv_interactionPreviewControllerForViewController:self presentingView:collectionView2 presentingElement:collectionElement];

      previewInteractionController = self->_previewInteractionController;
      self->_previewInteractionController = v6;
    }
  }
}

- (void)_updateFooterView
{
  collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
  footerViewController = [(_TVMLCollectionViewController *)self footerViewController];
  v4 = +[TVInterfaceFactory sharedInterfaceFactory];
  footerElement = [(_TVMLCollectionViewController *)self footerElement];
  v6 = [v4 _viewControllerFromElement:footerElement existingController:footerViewController];

  if (!v6)
  {
    view = [footerViewController view];
    v8 = +[TVInterfaceFactory sharedInterfaceFactory];
    footerElement2 = [(_TVMLCollectionViewController *)self footerElement];
    v10 = [v8 _viewFromElement:footerElement2 existingView:view];

    if (v10)
    {
      if (v10 == view)
      {
        v6 = footerViewController;
      }

      else
      {
        v6 = objc_alloc_init(MEMORY[0x277D75D28]);
        [v6 setView:v10];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  if (v6 != footerViewController)
  {
    [footerViewController willMoveToParentViewController:0];
    if (v6)
    {
      [(_TVMLCollectionViewController *)self addChildViewController:v6];
    }

    view2 = [footerViewController view];
    [view2 removeFromSuperview];

    view3 = [v6 view];
    [collectionWrappingView setFooterView:view3];

    [footerViewController removeFromParentViewController];
    [v6 didMoveToParentViewController:self];
  }

  [(_TVMLCollectionViewController *)self setFooterViewController:v6];
}

- (void)_registerCellClassesInCollectionView:(id)view
{
  v37 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v5 = [MEMORY[0x277CBEB58] set];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  sections = [collectionElement sections];

  obj = sections;
  v24 = [sections countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v24)
  {
    v23 = *v32;
    do
    {
      v8 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v8;
        v9 = *(*(&v31 + 1) + 8 * v8);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        prototypes = [v9 prototypes];
        v11 = [prototypes countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v28;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v28 != v13)
              {
                objc_enumerationMutation(prototypes);
              }

              v15 = *(*(&v27 + 1) + 8 * i);
              elementName = [v15 elementName];
              if (([v5 containsObject:elementName] & 1) == 0)
              {
                [v5 addObject:elementName];
                v17 = +[TVInterfaceFactory sharedInterfaceFactory];
                v18 = [v17 _collectionViewCellClassForElement:v15];
                if (v18)
                {
                  v19 = v18;
                }

                else
                {
                  v19 = [(_TVMLCollectionViewController *)selfCopy cellClassForElement:v15];

                  if (!v19)
                  {
                    v20 = objc_opt_class();
                    if (!v20)
                    {
                      goto LABEL_19;
                    }

                    v19 = v20;
                  }
                }

                [viewCopy registerClass:v19 forCellWithReuseIdentifier:elementName];
                if ([v15 tv_elementType] == 24)
                {
                  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-LCR", elementName];
                  [viewCopy registerClass:v19 forCellWithReuseIdentifier:v21];
                }
              }

LABEL_19:
            }

            v12 = [prototypes countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v12);
        }

        v8 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v24);
  }
}

- (id)_closestIndexPathToIndexPath:(id)path
{
  pathCopy = path;
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  sections = [collectionElement sections];

  section = [pathCopy section];
  if (section >= [sections count] || (objc_msgSend(sections, "objectAtIndexedSubscript:", objc_msgSend(pathCopy, "section")), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "numberOfItems"), v8, v9 < 1))
  {
    section2 = [pathCopy section];
    while (++section2 < [sections count])
    {
      v18 = [sections objectAtIndexedSubscript:section2];
      numberOfItems = [v18 numberOfItems];

      if (numberOfItems >= 1)
      {
        v20 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:section2];
        if (v20)
        {
          goto LABEL_18;
        }

        break;
      }
    }

    v21 = [pathCopy section] - 1;
    v22 = [sections count];
    if (v21 >= v22 - 1)
    {
      v23 = v22 - 1;
    }

    else
    {
      v23 = v21;
    }

    if (v23 < 0)
    {
LABEL_15:
      v20 = 0;
      goto LABEL_18;
    }

    while (1)
    {
      v24 = [sections objectAtIndexedSubscript:v23];
      numberOfItems2 = [v24 numberOfItems];

      if (numberOfItems2 >= 1)
      {
        break;
      }

      if (v23-- <= 0)
      {
        goto LABEL_15;
      }
    }

    v27 = MEMORY[0x277CCAA70];
    v12 = [sections objectAtIndexedSubscript:v23];
    v16 = [v12 numberOfItems] - 1;
    v15 = v27;
    section3 = v23;
  }

  else
  {
    v10 = MEMORY[0x277CCAA70];
    item = [pathCopy item];
    v12 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    v13 = fmin(item, ([v12 numberOfItems] - 1));
    section3 = [pathCopy section];
    v15 = v10;
    v16 = v13;
  }

  v20 = [v15 indexPathForItem:v16 inSection:section3];

LABEL_18:

  return v20;
}

- (TVCellMetrics)cellMetrics
{
  v3 = *&self[8].cellInsetAlt.bottom;
  *&retstr->cellInsetAlt.bottom = *&self[8].cellInsetAlt.top;
  *&retstr->cellMargin.top = v3;
  *&retstr->cellMargin.bottom = *&self[8].cellMargin.top;
  v4 = *&self[8].cellPadding.bottom;
  *&retstr->cellPadding.bottom = *&self[8].cellPadding.top;
  *&retstr->cellInset.top = v4;
  v5 = *&self[8].cellInset.bottom;
  *&retstr->cellInset.bottom = *&self[8].cellInset.top;
  *&retstr->cellInsetAlt.top = v5;
  cellSize = self[8].cellSize;
  retstr->cellSize = *&self[7].cellMargin.bottom;
  *&retstr->cellPadding.top = cellSize;
  return self;
}

- (void)setShowcaseConfig:(TVShowcaseConfig *)config
{
  inset = config->inset;
  *&self->_showcaseConfig.flavor = *&config->flavor;
  self->_showcaseConfig.inset = inset;
}

@end