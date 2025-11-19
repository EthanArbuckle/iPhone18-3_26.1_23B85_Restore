@interface _TVMLCollectionViewController
+ (id)_shadowViewElementForCollectionElement:(id)a3;
+ (id)footerElementFromCollectionElement:(id)a3;
+ (id)headerElementFromCollectionElement:(id)a3;
- (BOOL)collectionView:(id)a3 shouldHandleLongPressForItemAtIndexPath:(id)a4;
- (CGSize)expectedCellSizeForElement:(id)a3 atIndexPath:(id)a4;
- (TVCellMetrics)cellMetrics;
- (_TVCollectionWrappingView)collectionWrappingView;
- (_TVMLCollectionViewController)init;
- (id)_closestIndexPathToIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 indexPathForIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (id)impressionableElementsContainedInDocument:(id)a3;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (id)preferredFocusEnvironments;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_applicationWillResignActive:(id)a3;
- (void)_doUpdateViewLayoutAnimated:(BOOL)a3 relayout:(BOOL)a4;
- (void)_recordImpressionsForVisibleView;
- (void)_registerCellClassesInCollectionView:(id)a3;
- (void)_registerPreviewInteractionController;
- (void)_updateFooterView;
- (void)_updateHeaderView;
- (void)_updateImpressions;
- (void)adjustContentOffsetToDisplayIndexPath:(id)a3;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)dispatchEvent:(id)a3 forItemAtIndexPath:(id)a4 completionBlock:(id)a5;
- (void)loadView;
- (void)preloadCellsInRect:(CGRect)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setShowcaseConfig:(TVShowcaseConfig *)a3;
- (void)tv_setShowcaseConfig:(TVShowcaseConfig *)a3;
- (void)tv_updateViewLayout;
- (void)updateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)updateVisibleCell:(id)a3 atIndexPath:(id)a4 withElement:(id)a5;
- (void)updateWithViewElement:(id)a3 cellMetrics:(TVCellMetrics *)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _TVMLCollectionViewController

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

+ (id)footerElementFromCollectionElement:(id)a3
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
        if ([v7 tv_elementType] == 13)
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(_TVMLCollectionViewController *)self collectionView];
  [v4 setDelegate:0];

  v5 = [(_TVMLCollectionViewController *)self collectionView];
  [v5 setDataSource:0];

  v6.receiver = self;
  v6.super_class = _TVMLCollectionViewController;
  [(_TVMLCollectionViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = _TVMLCollectionViewController;
  [(_TVMLCollectionViewController *)&v14 viewDidLoad];
  v3 = [(_TVMLCollectionViewController *)self collectionWrappingView];
  [(_TVMLCollectionViewController *)self showcaseConfig];
  [v3 setShowcaseConfig:v13];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  if ([(_TVMLCollectionViewController *)self contentFlowsVertically])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = [_TVNeedsMoreContentEvaluator alloc];
  v8 = [(_TVMLCollectionViewController *)self collectionView];
  v9 = [(_TVNeedsMoreContentEvaluator *)v7 initWithScrollView:v8 axis:v6];
  needsMoreContentEvaluator = self->_needsMoreContentEvaluator;
  self->_needsMoreContentEvaluator = v9;

  v11 = self->_needsMoreContentEvaluator;
  v12 = [(_TVMLCollectionViewController *)self collectionElement];
  [(_TVNeedsMoreContentEvaluator *)v11 setViewElement:v12];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = _TVMLCollectionViewController;
  [(_TVMLCollectionViewController *)&v8 viewDidLayoutSubviews];
  if (self->_didUpdateFocus)
  {
    self->_didUpdateFocus = 0;
    v3 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    [(_TVMLCollectionViewController *)self adjustContentOffsetToDisplayIndexPath:v3];
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

- (void)updateWithViewElement:(id)a3 cellMetrics:(TVCellMetrics *)a4
{
  v215 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v132 = self->_shadowViewElement;
  v138 = self;
  v135 = v7;
  obj = [objc_opt_class() _shadowViewElementForCollectionElement:v7];
  objc_storeStrong(&self->_collectionElement, a3);
  v8 = [(IKCollectionElement *)self->_collectionElement attributes];
  v9 = [v8 objectForKey:@"remembersFocus"];

  if (v9)
  {
    v10 = [(_TVMLCollectionViewController *)self collectionView];
    v11 = [(IKCollectionElement *)self->_collectionElement attributes];
    v12 = [v11 objectForKey:@"remembersFocus"];
    [v10 setRemembersLastFocusedIndexPath:{objc_msgSend(v12, "BOOLValue")}];
  }

  previewInteractionController = self->_previewInteractionController;
  if (previewInteractionController)
  {
    [(TVPreviewInteractionController *)previewInteractionController updatePresentingElement:self->_collectionElement];
  }

  v14 = [v135 appDocument];
  [v14 impressionThreshold];
  self->_impressionThreshold = v15;

  self->_cellMetrics.cellSize = a4->cellSize;
  v16 = *&a4->cellInset.bottom;
  v18 = *&a4->cellPadding.top;
  v17 = *&a4->cellPadding.bottom;
  *&self->_cellMetrics.cellInset.top = *&a4->cellInset.top;
  *&self->_cellMetrics.cellInset.bottom = v16;
  *&self->_cellMetrics.cellPadding.top = v18;
  *&self->_cellMetrics.cellPadding.bottom = v17;
  v19 = *&a4->cellMargin.bottom;
  v21 = *&a4->cellInsetAlt.top;
  v20 = *&a4->cellInsetAlt.bottom;
  *&self->_cellMetrics.cellMargin.top = *&a4->cellMargin.top;
  *&self->_cellMetrics.cellMargin.bottom = v19;
  *&self->_cellMetrics.cellInsetAlt.top = v21;
  *&self->_cellMetrics.cellInsetAlt.bottom = v20;
  v204 = 0;
  v205 = &v204;
  v206 = 0x3032000000;
  v207 = __Block_byref_object_copy__6;
  v208 = __Block_byref_object_dispose__6;
  v209 = 0;
  v22 = [v135 sections];
  v203[0] = MEMORY[0x277D85DD0];
  v203[1] = 3221225472;
  v203[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke;
  v203[3] = &unk_279D708A8;
  v203[4] = &v204;
  [v22 enumerateObjectsUsingBlock:v203];

  if (!v205[5])
  {
    v23 = [v135 attributes];
    v24 = [v23 objectForKey:@"firstItem"];

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

  v31 = [MEMORY[0x277CBEB38] dictionary];
  v32 = [v135 sections];
  v201[0] = MEMORY[0x277D85DD0];
  v201[1] = 3221225472;
  v201[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_2;
  v201[3] = &unk_279D70920;
  v133 = v31;
  v202 = v133;
  [v32 enumerateObjectsUsingBlock:v201];

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

  v35 = [(_TVMLCollectionViewController *)self indexPathsByIndexTitle];
  v36 = [v35 allKeys];
  v200[0] = MEMORY[0x277D85DD0];
  v200[1] = 3221225472;
  v200[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_4;
  v200[3] = &unk_279D70948;
  v200[4] = self;
  v37 = [v36 sortedArrayUsingComparator:v200];
  [(_TVMLCollectionViewController *)self setSortedIndexTitles:v37];

  if (![(_TVMLCollectionViewController *)self isViewLoaded])
  {
    objc_storeStrong(&self->_shadowViewElement, obj);
    v53 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    self->_didUpdateFocus = [v53 isEqual:v205[5]] ^ 1;

    [(_TVMLCollectionViewController *)self setLastFocusedIndexPath:v205[5]];
    goto LABEL_110;
  }

  self->_isPreparingCollectionUpdates = 1;
  v38 = [(_TVMLCollectionViewController *)self collectionView];
  [(_TVMLCollectionViewController *)self _registerCellClassesInCollectionView:v38];

  v39 = [(_TVMLCollectionViewController *)self collectionWrappingView];
  v40 = [v39 collectionView];

  [v40 setSemanticContentAttribute:{objc_msgSend(v135, "tv_semanticContentAttribute")}];
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
  v136 = [MEMORY[0x277CBEB18] array];
  v137 = [MEMORY[0x277CBEB18] array];
  v41 = [(_TVShadowViewElement *)v132 elementID];
  v42 = [obj elementID];
  if ([v41 isEqual:v42])
  {
    v43 = [(_TVMLCollectionViewController *)self view];
    v44 = [v43 window];
    v45 = v44 == 0;

    if (!v45)
    {
      v129 = [(_TVShadowViewElement *)v132 children];
      v46 = [obj children];
      v47 = [MEMORY[0x277CCAB58] indexSet];
      v48 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(v46, "count")}];
      v49 = [MEMORY[0x277CBEB38] dictionary];
      v50 = [MEMORY[0x277CBEB38] dictionary];
      v180[0] = MEMORY[0x277D85DD0];
      v180[1] = 3221225472;
      v180[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_30;
      v180[3] = &unk_279D70970;
      v125 = v46;
      v181 = v125;
      v51 = v47;
      v182 = v51;
      v127 = v48;
      v183 = v127;
      v52 = v50;
      v184 = v52;
      v128 = v49;
      v185 = v128;
      [v129 enumerateObjectsUsingBlock:v180];
      v130 = [(_TVMLCollectionViewController *)v138 lastFocusedIndexPath];
      if (v205[5])
      {
        if (([v130 isEqual:v125] & 1) == 0)
        {
          v138->_didUpdateFocus = 1;
          [(_TVMLCollectionViewController *)v138 setLastFocusedIndexPath:v205[5]];
        }
      }

      else if (v130)
      {
        v54 = [v130 section];
        if ([v51 containsIndex:v54])
        {
          v54 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v55 = [MEMORY[0x277CCABB0] numberWithInteger:v54];
          v56 = [v128 objectForKeyedSubscript:v55];
          if (v56)
          {
            v57 = [MEMORY[0x277CCABB0] numberWithInteger:v54];
            v58 = [v128 objectForKeyedSubscript:v57];
            v54 = [v58 integerValue];
          }
        }

        v59 = [v130 item];
        if (v54 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_31;
        }

        v60 = v59;
        v61 = [v125 objectAtIndex:v54];
        v62 = [v61 elementID];
        v63 = [v62 viewElement];

        v64 = [v63 itemsChangeSet];
        v65 = v64;
        if (v64)
        {
          v60 = [v64 newIndexForOldIndex:v60];
        }

        if (v60 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_31:
          v66 = [(_TVMLCollectionViewController *)v138 _closestIndexPathToIndexPath:v130];
          [(_TVMLCollectionViewController *)v138 setLastFocusedIndexPath:v66];
        }

        else
        {
          v66 = [MEMORY[0x277CCAA70] indexPathForItem:v60 inSection:v54];
          [(_TVMLCollectionViewController *)v138 setLastFocusedIndexPath:v66];
        }

        v67 = [(_TVMLCollectionViewController *)v138 lastFocusedIndexPath];
        v68 = [v130 isEqual:v67];

        if ((v68 & 1) == 0)
        {
          v138->_didUpdateFocus = 1;
        }
      }

      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v69 = [v40 indexPathsForVisibleItems];
      v70 = [v69 countByEnumeratingWithState:&v176 objects:v214 count:16];
      if (v70)
      {
        v71 = *v177;
        do
        {
          for (i = 0; i != v70; ++i)
          {
            if (*v177 != v71)
            {
              objc_enumerationMutation(v69);
            }

            v73 = *(*(&v176 + 1) + 8 * i);
            if ([v51 containsIndex:{objc_msgSend(v73, "section")}])
            {
              [v136 addObject:v73];
            }
          }

          v70 = [v69 countByEnumeratingWithState:&v176 objects:v214 count:16];
        }

        while (v70);
      }

      v74 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v52, "count")}];
      v166[0] = MEMORY[0x277D85DD0];
      v166[1] = 3221225472;
      v166[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_2_33;
      v166[3] = &unk_279D709C0;
      v75 = v129;
      v167 = v75;
      v76 = v126;
      v168 = v76;
      v169 = v136;
      v170 = v138;
      v77 = v40;
      v171 = v77;
      v174 = &v192;
      v172 = v137;
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
  v159[4] = v138;
  v159[5] = &v192;
  v131 = MEMORY[0x26D6AFBB0](v159);
  if (v197[3])
  {
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v81 = [v40 visibleCells];
    v82 = [v81 countByEnumeratingWithState:&v143 objects:v211 count:16];
    if (v82)
    {
      v83 = *v144;
      do
      {
        for (j = 0; j != v82; ++j)
        {
          if (*v144 != v83)
          {
            objc_enumerationMutation(v81);
          }

          [*(*(&v143 + 1) + 8 * j) tv_setBelongsToOldIndexPath:1];
        }

        v82 = [v81 countByEnumeratingWithState:&v143 objects:v211 count:16];
      }

      while (v82);
    }

    v85 = [(_TVMLCollectionViewController *)v138 lastFocusedIndexPath];
    v86 = v85;
    if (v205[5])
    {
      [(_TVMLCollectionViewController *)v138 setLastFocusedIndexPath:?];
    }

    else if (v85)
    {
      v111 = [(_TVMLCollectionViewController *)v138 _closestIndexPathToIndexPath:v85];
      [(_TVMLCollectionViewController *)v138 setLastFocusedIndexPath:v111];
    }

    v112 = [(_TVMLCollectionViewController *)v138 lastFocusedIndexPath];
    v113 = [v86 isEqual:v112];

    if ((v113 & 1) == 0)
    {
      v138->_didUpdateFocus = 1;
    }

    v131[2]();
    [v40 reloadData];
  }

  else
  {
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v87 = v136;
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

          v91 = [v40 cellForItemAtIndexPath:*(*(&v155 + 1) + 8 * k)];
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
      v152 = v40;
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
    v86 = [v40 preparedCells];
    v93 = [v86 countByEnumeratingWithState:&v147 objects:v212 count:16];
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
            objc_enumerationMutation(v86);
          }

          v98 = *(*(&v147 + 1) + 8 * m);
          v99 = [v40 indexPathForCell:v98];
          if (v99 || (objc_opt_respondsToSelector() & 1) == 0)
          {
            v100 = v99;
          }

          else
          {
            v100 = [objc_msgSend(v98 performSelector:{sel__layoutAttributes), "indexPath"}];
          }

          v101 = v100;

          if (v101 && [v137 containsObject:v101])
          {
            v102 = [(IKCollectionElement *)v138->_collectionElement sections];
            v103 = [v102 objectAtIndexedSubscript:{objc_msgSend(v101, "section")}];

            v104 = [v103 elementForItemAtIndex:{objc_msgSend(v101, "item")}];
            [v98 center];
            v106 = v105;
            v108 = v107;
            [(_TVMLCollectionViewController *)v138 expectedCellSizeForElement:v104 atIndexPath:v101];
            [v98 setBounds:{v95, v96, v109, v110}];
            [v98 setCenter:{v106, v108}];
            [(_TVMLCollectionViewController *)v138 updateVisibleCell:v98 atIndexPath:v101 withElement:v104];
          }
        }

        v93 = [v86 countByEnumeratingWithState:&v147 objects:v212 count:16];
      }

      while (v93);
    }
  }

  objc_storeStrong(&v138->_shadowViewElement, obj);
  [(_TVMLCollectionViewController *)v138 didUpdateCollectionViewByNeedingReload:*(v197 + 24) focusUpdate:v138->_didUpdateFocus];
  [(_TVNeedsMoreContentEvaluator *)v138->_needsMoreContentEvaluator setViewElement:v135];
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v114 = [v135 sections];
  v115 = [v114 countByEnumeratingWithState:&v139 objects:v210 count:16];
  if (v115)
  {
    v116 = *v140;
    while (2)
    {
      for (n = 0; n != v115; ++n)
      {
        if (*v140 != v116)
        {
          objc_enumerationMutation(v114);
        }

        v118 = *(*(&v139 + 1) + 8 * n);
        v119 = [v118 itemsChangeSet];
        if ([v118 updateType] == 4)
        {
          goto LABEL_108;
        }

        v120 = [v119 addedIndexes];
        if ([v120 count])
        {
          goto LABEL_107;
        }

        v121 = [v119 removedIndexes];
        if ([v121 count])
        {

LABEL_107:
LABEL_108:

          [(_TVNeedsMoreContentEvaluator *)v138->_needsMoreContentEvaluator reset];
          v114 = [(_TVMLCollectionViewController *)v138 view];
          [v114 setNeedsLayout];
          goto LABEL_109;
        }

        v122 = [v119 movedIndexesByNewIndex];
        v123 = [v122 count] == 0;

        if (!v123)
        {
          goto LABEL_108;
        }
      }

      v115 = [v114 countByEnumeratingWithState:&v139 objects:v210 count:16];
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
  if (v138->_didUpdateFocus && [(_TVMLCollectionViewController *)v138 isViewLoaded])
  {
    [(_TVMLCollectionViewController *)v138 setNeedsFocusUpdate];
    v124 = [(_TVMLCollectionViewController *)v138 view];
    [v124 setNeedsLayout];
  }

  _Block_object_dispose(&v204, 8);
}

- (_TVCollectionWrappingView)collectionWrappingView
{
  if ([(_TVMLCollectionViewController *)self isViewLoaded])
  {
    v3 = [(_TVMLCollectionViewController *)self view];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)tv_setShowcaseConfig:(TVShowcaseConfig *)a3
{
  v6 = *a3;
  [(_TVMLCollectionViewController *)self setShowcaseConfig:&v6];
  v5 = [(_TVMLCollectionViewController *)self collectionWrappingView];
  v6 = *a3;
  [v5 setShowcaseConfig:&v6];
}

- (CGSize)expectedCellSizeForElement:(id)a3 atIndexPath:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(_TVMLCollectionViewController *)self cellMetrics];
  v9 = v34;
  v8 = v35;
  if (v34 == 0.0)
  {
    v10 = [v6 style];
    [v10 tv_width];
    v9 = v11;

    v12 = [v6 style];
    [v12 tv_height];
    v14 = v13;

    if (v14 <= 0.0 || v9 <= 0.0)
    {
      v15 = [v6 objectForKeyedSubscript:@"TVFactoryKeyCellMetrics"];
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
      v22 = [v7 section];
      v23 = [v7 item];
      v24 = [v17 debugDescription];
      *buf = 134219010;
      v37 = v9;
      v38 = 2048;
      v39 = v8;
      v40 = 2048;
      v41 = v22;
      v42 = 2048;
      v43 = v23;
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

- (void)updateVisibleCell:(id)a3 atIndexPath:(id)a4 withElement:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    v10 = MEMORY[0x277CCAE60];
    v11 = [v8 style];
    [v11 tv_focusMargin];
    v12 = [v10 valueWithUIEdgeInsets:?];
    [v7 setValue:v12 forTVViewStyle:@"tv-focus-margin"];

    v13 = MEMORY[0x277CCAE60];
    [(_TVMLCollectionViewController *)self cellMetrics];
    v14 = [v13 valueWithUIEdgeInsets:{v20, v21, v22, v23}];
    [v7 setValue:v14 forTVViewStyle:@"padding"];

    v15 = MEMORY[0x277CCABB0];
    v16 = [(IKCollectionElement *)self->_collectionElement style];
    v17 = [v15 numberWithInteger:{objc_msgSend(v16, "tv_contentAlignment")}];
    [v7 setValue:v17 forTVViewStyle:@"tv-content-align"];

    v18 = +[TVInterfaceFactory sharedInterfaceFactory];
    v19 = [v18 _viewFromElement:v9 existingView:v7];
  }
}

- (void)updateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v10 = a3;
  v5 = [(_TVMLCollectionViewController *)self view];
  v6 = [v5 window];
  if (v6)
  {
    v7 = v6;
    v8 = [v10 nextFocusedIndexPath];

    if (!v8)
    {
      goto LABEL_5;
    }

    v9 = [v10 nextFocusedIndexPath];
    [(_TVMLCollectionViewController *)self setLastFocusedIndexPath:v9];

    v5 = [v10 nextFocusedIndexPath];
    [(_TVMLCollectionViewController *)self dispatchEvent:@"highlight" forItemAtIndexPath:v5 completionBlock:0];
  }

LABEL_5:
}

- (void)dispatchEvent:(id)a3 forItemAtIndexPath:(id)a4 completionBlock:(id)a5
{
  v16 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(_TVMLCollectionViewController *)self collectionElement];
  v11 = [v10 sections];
  v12 = [v11 objectAtIndex:{objc_msgSend(v9, "section")}];

  v13 = [v12 elementForItemAtIndex:{objc_msgSend(v9, "row")}];
  v14 = [(_TVMLCollectionViewController *)self collectionView];
  v15 = [v14 cellForItemAtIndexPath:v9];

  if (([v13 isDisabled] & 1) == 0)
  {
    [v13 tv_dispatchEvent:v16 canBubble:1 isCancelable:1 extraInfo:0 targetResponder:v15 completionBlock:v8];
  }
}

- (void)loadView
{
  v3 = [_TVCollectionWrappingView alloc];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v13 = [(_TVCollectionWrappingView *)v3 initWithFrame:?];

  [(_TVCollectionWrappingView *)v13 setAutoresizingMask:18];
  v5 = [(IKCollectionElement *)self->_collectionElement style];
  v6 = [v5 tv_backgroundColor];

  [(_TVCollectionWrappingView *)v13 setIkBackgroundColor:v6];
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
  v8 = [(IKCollectionElement *)self->_collectionElement attributes];
  v9 = [v8 objectForKey:@"remembersFocus"];

  if (v9)
  {
    v10 = [(IKCollectionElement *)self->_collectionElement attributes];
    v11 = [v10 objectForKey:@"remembersFocus"];
    [v7 setRemembersLastFocusedIndexPath:{objc_msgSend(v11, "BOOLValue")}];
  }

  [(_TVMLCollectionViewController *)self setCollectionView:v7];
  [(_TVCollectionWrappingView *)v13 setCollectionView:v7];
  if (([(_TVMLCollectionViewController *)self contentFlowsVertically]& 1) != 0)
  {
    v12 = [(_TVMLCollectionViewController *)self collectionView];
    -[_TVCollectionWrappingView setHeaderAuxiliarySelecting:](v13, "setHeaderAuxiliarySelecting:", [v12 isScrollEnabled] ^ 1);
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

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _TVMLCollectionViewController;
  [(_TVMLCollectionViewController *)&v4 viewDidAppear:a3];
  self->_didAppear = 1;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _TVMLCollectionViewController;
  [(_TVMLCollectionViewController *)&v4 viewDidDisappear:a3];
  [(_TVMLCollectionViewController *)self _cancelImpressionsUpdate];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = _TVMLCollectionViewController;
  [(_TVMLCollectionViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  previewInteractionController = self->_previewInteractionController;
  if (previewInteractionController)
  {
    [(TVPreviewInteractionController *)previewInteractionController dismissInteractionView];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _TVMLCollectionViewController;
  [(_TVMLCollectionViewController *)&v5 viewWillDisappear:a3];
  previewInteractionController = self->_previewInteractionController;
  if (previewInteractionController)
  {
    [(TVPreviewInteractionController *)previewInteractionController dismissInteractionView];
  }
}

- (void)tv_updateViewLayout
{
  v3 = [(_TVMLCollectionViewController *)self collectionElement];
  [_TVLockupFactory cellMetricsForCollectionElement:v3];

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
  v3 = [(_TVMLCollectionViewController *)self collectionWrappingView];
  if (v3)
  {
    v4 = [(_TVMLCollectionViewController *)self collectionWrappingView];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(_TVMLCollectionViewController *)self collectionElement];
  v4 = [v3 sections];
  v5 = [v4 count];

  return v5;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(_TVMLCollectionViewController *)self collectionElement];
  v6 = [v5 sections];
  v7 = [v6 objectAtIndex:a4];

  v8 = [v7 numberOfItems];
  return v8;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (self->_isPreparingCollectionUpdates)
  {
    v6 = [(_TVMLCollectionViewController *)self shadowViewElement];
    v7 = [v6 children];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

    v9 = [(_TVMLCollectionViewController *)self collectionView];
    v10 = [v8 resourceName];
    v11 = [v9 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v5];
  }

  else
  {
    v12 = [(_TVMLCollectionViewController *)self collectionElement];
    v13 = [v12 sections];
    v14 = [v13 objectAtIndex:{objc_msgSend(v5, "section")}];

    v15 = [v14 elementForItemAtIndex:{objc_msgSend(v5, "item")}];
    v16 = [v15 elementName];
    if ([v15 tv_elementType] == 24)
    {
      v39 = v16;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v17 = [v15 children];
      v18 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v18)
      {
        v19 = v18;
        v36 = v15;
        v37 = v14;
        v38 = v5;
        v20 = *v45;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v45 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v44 + 1) + 8 * i);
            if ([v22 tv_elementType] == 16 && !objc_msgSend(v22, "tv_imageType"))
            {
              v23 = v22;
              v24 = [v23 url];
              if ([v24 tv_isResourceURL])
              {
                v25 = +[TVInterfaceFactory sharedInterfaceFactory];
                v26 = [v24 tv_resourceName];
                v27 = [v25 URLForResource:v26];

                v24 = v27;
              }

              if (v24)
              {
                if ([v24 tv_imageURLType] == 1)
                {
                  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-LCR", v39];

                  v5 = v38;
                }

                else
                {
                  v5 = v38;
                  v16 = v39;
                }

                v15 = v36;

                v14 = v37;
                goto LABEL_23;
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }

        v14 = v37;
        v5 = v38;
        v15 = v36;
      }

      v16 = v39;
LABEL_23:
    }

    v28 = [(_TVMLCollectionViewController *)self collectionView];
    v11 = [v28 dequeueReusableCellWithReuseIdentifier:v16 forIndexPath:v5];

    v29 = objc_opt_new();
    v30 = [v15 style];
    [v30 tv_focusMargin];
    [v29 setFocusMargin:?];

    [(_TVMLCollectionViewController *)self cellMetrics];
    [v29 setPadding:{v40, v41, v42, v43}];
    v31 = [(IKCollectionElement *)self->_collectionElement style];
    [v29 setContentAlignment:{objc_msgSend(v31, "tv_contentAlignment")}];

    [v11 tv_setAssociatedIKViewElement:0];
    v32 = +[TVInterfaceFactory sharedInterfaceFactory];
    v33 = [v32 _viewFromElement:v15 layout:v29 existingView:v11];

    if (v33 != v11)
    {
      v34 = [v11 contentView];
      [v34 addSubview:v33];
    }
  }

  return v11;
}

- (id)collectionView:(id)a3 indexPathForIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  v6 = a4;
  v7 = [(_TVMLCollectionViewController *)self indexPathsByIndexTitle];
  v8 = [v7 objectForKeyedSubscript:v6];

  return v8;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = *MEMORY[0x277D76620];
  v8 = a5;
  v9 = a4;
  [v9 tv_setDisplayed:{objc_msgSend(v7, "applicationState") == 0}];

  v10 = [(_TVMLCollectionViewController *)self collectionElement];
  v11 = [v10 sections];
  v13 = [v11 objectAtIndexedSubscript:{objc_msgSend(v8, "section")}];

  v12 = [v8 item];
  [v13 loadIndex:v12];
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v11 = a4;
  v7 = a5;
  [v11 tv_setDisplayed:0];
  if (([v11 tv_belongsToOldIndexPath] & 1) == 0)
  {
    v8 = [(_TVMLCollectionViewController *)self collectionElement];
    v9 = [v8 sections];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

    [v10 unloadIndex:{objc_msgSend(v7, "item")}];
  }

  [v11 tv_setBelongsToOldIndexPath:0];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73___TVMLCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
  v10[3] = &unk_279D70AF8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(_TVMLCollectionViewController *)self dispatchEvent:@"select" forItemAtIndexPath:v8 completionBlock:v10];
}

- (BOOL)collectionView:(id)a3 shouldHandleLongPressForItemAtIndexPath:(id)a4
{
  previewInteractionController = self->_previewInteractionController;
  if (previewInteractionController)
  {
    return [(TVPreviewInteractionController *)previewInteractionController collectionView:a3 shouldHandleLongPressForItemAtIndexPath:a4];
  }

  else
  {
    return 1;
  }
}

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(_TVMLCollectionViewController *)self view];
  v11 = [v10 window];

  if (v11)
  {
    v12 = [v8 previouslyFocusedIndexPath];
    v13 = [v8 nextFocusedIndexPath];
    if (([v12 isEqual:v13] & 1) == 0)
    {
      v14 = [v16 cellForItemAtIndexPath:v12];
      [v14 tv_setFocused:0];
      v15 = [v16 cellForItemAtIndexPath:v13];
      [v15 tv_setFocused:1];
    }
  }

  [(_TVMLCollectionViewController *)self updateFocusInContext:v8 withAnimationCoordinator:v9];
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  if ([a3 tv_isFocusOnNonOwnedCell])
  {
    lastFocusedIndexPath = 0;
  }

  else
  {
    lastFocusedIndexPath = self->_lastFocusedIndexPath;
  }

  return lastFocusedIndexPath;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(_TVMLCollectionViewController *)self collectionView];
  [v4 bounds];
  rect = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(_TVMLCollectionViewController *)self collectionView];
  [v12 contentInset];
  v14 = v13;
  v16 = v15;
  v28 = v17;
  v19 = v18;

  v20 = [(_TVMLCollectionViewController *)self collectionView];
  [v20 contentSize];
  v22 = v21;
  v24 = v23;

  if (([(_TVMLCollectionViewController *)self contentFlowsVertically]& 1) == 0 && (v31.origin.x = rect, v31.origin.y = v7, v31.size.width = v9, v31.size.height = v11, v19 + v16 + v22 <= CGRectGetWidth(v31)) || [(_TVMLCollectionViewController *)self contentFlowsVertically]&& (v32.origin.x = rect, v32.origin.y = v7, v32.size.width = v9, v32.size.height = v11, v28 + v14 + v24 <= CGRectGetHeight(v32)))
  {
    v25 = [(_TVMLCollectionViewController *)self collectionView];
    [v25 setContentOffset:0 animated:{-v16, -v14}];
  }

  [(_TVNeedsMoreContentEvaluator *)self->_needsMoreContentEvaluator evaluateForState:2];
  v26 = [(_TVMLCollectionViewController *)self collectionWrappingView];
  [v26 reevaluateHeaderFrame];

  v27 = [(_TVMLCollectionViewController *)self collectionWrappingView];
  [v27 reevaluateFooterFrame];

  if (self->_didAppear)
  {

    [(_TVMLCollectionViewController *)self _updateImpressions];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = [(_TVMLCollectionViewController *)self collectionView:a3];
  v8 = [v7 tv_isFocusOnNonOwnedCell];

  if (v8)
  {
    return;
  }

  v9 = [MEMORY[0x277D759A0] mainScreen];
  v30 = [v9 focusedView];

  v10 = [(_TVMLCollectionViewController *)self collectionWrappingView];
  if (![v10 isHeaderFloating] || !-[_TVMLCollectionViewController contentFlowsVertically](self, "contentFlowsVertically"))
  {
    goto LABEL_6;
  }

  v11 = [(_TVMLCollectionViewController *)self collectionView];
  v12 = [v30 isDescendantOfView:v11];

  if (v12)
  {
    v13 = [(_TVMLCollectionViewController *)self collectionView];
    [v30 bounds];
    [v13 convertRect:v30 fromView:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v32.origin.x = v15;
    v32.origin.y = v17;
    v32.size.width = v19;
    v32.size.height = v21;
    MinY = CGRectGetMinY(v32);
    v23 = [(_TVMLCollectionViewController *)self collectionView];
    [v23 _gradientMaskEdgeInsets];
    v25 = v24;
    v26 = [(_TVMLCollectionViewController *)self collectionView];
    [v26 _gradientMaskLengths];
    v28 = MinY - (v25 + v27);

    v10 = [(_TVMLCollectionViewController *)self collectionView];
    [v10 contentInset];
    a5->y = fmin(fmax(v28, -v29), a5->y);
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
  v3 = [(_TVMLCollectionViewController *)self view];
  v4 = [v3 window];

  if (v4)
  {
    v6 = [(IKCollectionElement *)self->_collectionElement appDocument];
    v5 = [(_TVMLCollectionViewController *)self impressionableElementsContainedInDocument:?];
    if ([v5 count])
    {
      [v6 recordImpressionsForViewElements:v5];
    }
  }
}

- (id)impressionableElementsContainedInDocument:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IKCollectionElement *)self->_collectionElement appDocument];
  if ([v5 isEqual:v4])
  {
    v6 = [(_TVMLCollectionViewController *)self collectionView];
    v7 = [v6 visibleCells];

    v8 = [MEMORY[0x277CBEB18] array];
    if ([(_TVMLCollectionViewController *)self isViewLoaded])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v7;
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

            v14 = [*(*(&v20 + 1) + 8 * i) tv_impressionableElementsForDocument:{v4, v20}];
            [v8 addObjectsFromArray:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v11);
      }

      v15 = [(_TVMLCollectionViewController *)self collectionWrappingView];
      v16 = [v15 headerView];
      v17 = [v16 tv_impressionableElementsForDocument:v4];
      [v8 addObjectsFromArray:v17];
    }

    if ([v8 count])
    {
      v18 = [MEMORY[0x277CBEA60] arrayWithArray:v8];
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

- (void)preloadCellsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_TVMLCollectionViewController *)self view];
  [v8 layoutBelowIfNeeded];

  v9 = [(_TVMLCollectionViewController *)self collectionView];
  [v9 _ensureViewsAreLoadedInRect:{x, y, width, height}];
}

- (void)_applicationDidBecomeActive:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(_TVMLCollectionViewController *)self collectionView:a3];
  v4 = [v3 visibleCells];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) tv_setDisplayed:1];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_applicationWillResignActive:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(_TVMLCollectionViewController *)self collectionView:a3];
  v4 = [v3 visibleCells];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) tv_setDisplayed:0];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)adjustContentOffsetToDisplayIndexPath:(id)a3
{
  v57 = a3;
  if (v57)
  {
    v4 = [(_TVMLCollectionViewController *)self collectionView];
    [v4 layoutBelowIfNeeded];

    v5 = [(_TVMLCollectionViewController *)self preferredScrollPosition];
    v6 = [(_TVMLCollectionViewController *)self collectionView];
    v7 = [v6 layoutAttributesForItemAtIndexPath:v57];
    [v7 frame];
    v53 = v9;
    v54 = v8;
    v11 = v10;
    v52 = v12;

    v13 = [(_TVMLCollectionViewController *)self collectionView];
    [v13 contentInset];
    v50 = v15;
    v51 = v14;
    v55 = v17;
    v56 = v16;

    v18 = [(_TVMLCollectionViewController *)self collectionView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;

    v23 = [(_TVMLCollectionViewController *)self collectionView];
    [v23 contentOffset];
    v25 = v24;
    v27 = v26;
    v28 = v24;
    v29 = v26;

    v30 = [(_TVMLCollectionViewController *)self collectionView];
    [v30 contentSize];
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
        if (v5 == 1)
        {
          v37 = v11 - v51;
        }

        else if (v5 != 2)
        {
          if (v5 == 4)
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

      v43 = [(_TVMLCollectionViewController *)self view];
      v44 = [v43 effectiveUserInterfaceLayoutDirection];

      if (v25 < v39 || v28 > v40)
      {
        v46 = v55 + v49 - v20;
        if (v5 == 8)
        {
          v42 = v54 - v56;
        }

        else if (v5 != 16)
        {
          if (v5 == 32)
          {
            v42 = v54 + v53 + v55 - v20;
          }

          else if (v44 == 1)
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
      v48 = [(_TVMLCollectionViewController *)self collectionView];
      [v48 setContentOffset:0 animated:{v28, v29}];
    }
  }
}

+ (id)_shadowViewElementForCollectionElement:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(_TVShadowViewElement);
  v17 = [[_TVShadowViewElementID alloc] initWithViewElement:v3];
  [(_TVShadowViewElement *)v4 setElementID:?];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = v3;
  v6 = [v3 sections];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v6);
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
            v15 = [v14 elementName];

            [(_TVShadowViewElement *)v13 setResourceName:v15];
          }

          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    [(_TVShadowViewElement *)v4 setChildren:v5];
  }

  return v4;
}

- (void)_doUpdateViewLayoutAnimated:(BOOL)a3 relayout:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(_TVMLCollectionViewController *)self view];
  v8 = [(_TVMLCollectionViewController *)self collectionElement];
  [v7 transferLayoutStylesFromElement:v8];

  [(_TVMLCollectionViewController *)self updateViewLayoutAnimated:v5 relayout:v4];
}

- (void)_updateHeaderView
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(_TVMLCollectionViewController *)self collectionWrappingView];
  v4 = [(_TVMLCollectionViewController *)self headerViewController];
  v5 = +[TVInterfaceFactory sharedInterfaceFactory];
  v6 = [(_TVMLCollectionViewController *)self headerElement];
  v7 = [v5 _viewControllerFromElement:v6 existingController:v4];

  if (!v7)
  {
    v8 = [v4 view];
    v9 = +[TVInterfaceFactory sharedInterfaceFactory];
    v10 = [(_TVMLCollectionViewController *)self headerElement];
    v11 = [v9 _viewFromElement:v10 existingView:v8];

    if (v11)
    {
      if (v11 == v8)
      {
        v7 = v4;
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

  if (v7 != v4)
  {
    [v4 willMoveToParentViewController:0];
    if (v7)
    {
      [(_TVMLCollectionViewController *)self addChildViewController:v7];
    }

    v12 = [v4 view];
    [v12 removeFromSuperview];

    v13 = [v7 view];
    [v3 setHeaderView:v13];

    [v4 removeFromParentViewController];
    [v7 didMoveToParentViewController:self];
  }

  [(_TVMLCollectionViewController *)self setHeaderViewController:v7];
  v14 = [(IKViewElement *)self->_headerElement attributes];
  v15 = [v14 objectForKeyedSubscript:@"floating"];

  if ([v15 length])
  {
    v16 = [v15 BOOLValue];
  }

  else
  {
    v16 = [(_TVMLCollectionViewController *)self shouldHeaderFloatByDefault];
  }

  [v3 setHeaderFloating:v16];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = [(IKViewElement *)self->_headerElement children];
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v18)
  {
    v19 = *v25;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v17);
        }

        if ([*(*(&v24 + 1) + 8 * i) tv_elementType] == 50)
        {
          v18 = 1;
          goto LABEL_25;
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  [v3 setHeaderCanBecomeFocused:v18];
  v21 = [v3 headerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v23 = [v3 headerView];
    [v23 setGestureTargetView:v3];
  }
}

- (void)_registerPreviewInteractionController
{
  if (!self->_previewInteractionController)
  {
    v3 = [(_TVMLCollectionViewController *)self collectionView];

    if (v3)
    {
      v8 = [(IKCollectionElement *)self->_collectionElement appDocument];
      v4 = [(_TVMLCollectionViewController *)self collectionView];
      v5 = [(_TVMLCollectionViewController *)self collectionElement];
      v6 = [v8 tv_interactionPreviewControllerForViewController:self presentingView:v4 presentingElement:v5];

      previewInteractionController = self->_previewInteractionController;
      self->_previewInteractionController = v6;
    }
  }
}

- (void)_updateFooterView
{
  v13 = [(_TVMLCollectionViewController *)self collectionWrappingView];
  v3 = [(_TVMLCollectionViewController *)self footerViewController];
  v4 = +[TVInterfaceFactory sharedInterfaceFactory];
  v5 = [(_TVMLCollectionViewController *)self footerElement];
  v6 = [v4 _viewControllerFromElement:v5 existingController:v3];

  if (!v6)
  {
    v7 = [v3 view];
    v8 = +[TVInterfaceFactory sharedInterfaceFactory];
    v9 = [(_TVMLCollectionViewController *)self footerElement];
    v10 = [v8 _viewFromElement:v9 existingView:v7];

    if (v10)
    {
      if (v10 == v7)
      {
        v6 = v3;
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

  if (v6 != v3)
  {
    [v3 willMoveToParentViewController:0];
    if (v6)
    {
      [(_TVMLCollectionViewController *)self addChildViewController:v6];
    }

    v11 = [v3 view];
    [v11 removeFromSuperview];

    v12 = [v6 view];
    [v13 setFooterView:v12];

    [v3 removeFromParentViewController];
    [v6 didMoveToParentViewController:self];
  }

  [(_TVMLCollectionViewController *)self setFooterViewController:v6];
}

- (void)_registerCellClassesInCollectionView:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = self;
  v6 = [(_TVMLCollectionViewController *)self collectionElement];
  v7 = [v6 sections];

  obj = v7;
  v24 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
        v10 = [v9 prototypes];
        v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v27 + 1) + 8 * i);
              v16 = [v15 elementName];
              if (([v5 containsObject:v16] & 1) == 0)
              {
                [v5 addObject:v16];
                v17 = +[TVInterfaceFactory sharedInterfaceFactory];
                v18 = [v17 _collectionViewCellClassForElement:v15];
                if (v18)
                {
                  v19 = v18;
                }

                else
                {
                  v19 = [(_TVMLCollectionViewController *)v26 cellClassForElement:v15];

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

                [v4 registerClass:v19 forCellWithReuseIdentifier:v16];
                if ([v15 tv_elementType] == 24)
                {
                  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-LCR", v16];
                  [v4 registerClass:v19 forCellWithReuseIdentifier:v21];
                }
              }

LABEL_19:
            }

            v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
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

- (id)_closestIndexPathToIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_TVMLCollectionViewController *)self collectionElement];
  v6 = [v5 sections];

  v7 = [v4 section];
  if (v7 >= [v6 count] || (objc_msgSend(v6, "objectAtIndexedSubscript:", objc_msgSend(v4, "section")), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "numberOfItems"), v8, v9 < 1))
  {
    v17 = [v4 section];
    while (++v17 < [v6 count])
    {
      v18 = [v6 objectAtIndexedSubscript:v17];
      v19 = [v18 numberOfItems];

      if (v19 >= 1)
      {
        v20 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v17];
        if (v20)
        {
          goto LABEL_18;
        }

        break;
      }
    }

    v21 = [v4 section] - 1;
    v22 = [v6 count];
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
      v24 = [v6 objectAtIndexedSubscript:v23];
      v25 = [v24 numberOfItems];

      if (v25 >= 1)
      {
        break;
      }

      if (v23-- <= 0)
      {
        goto LABEL_15;
      }
    }

    v27 = MEMORY[0x277CCAA70];
    v12 = [v6 objectAtIndexedSubscript:v23];
    v16 = [v12 numberOfItems] - 1;
    v15 = v27;
    v14 = v23;
  }

  else
  {
    v10 = MEMORY[0x277CCAA70];
    v11 = [v4 item];
    v12 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];
    v13 = fmin(v11, ([v12 numberOfItems] - 1));
    v14 = [v4 section];
    v15 = v10;
    v16 = v13;
  }

  v20 = [v15 indexPathForItem:v16 inSection:v14];

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

- (void)setShowcaseConfig:(TVShowcaseConfig *)a3
{
  inset = a3->inset;
  *&self->_showcaseConfig.flavor = *&a3->flavor;
  self->_showcaseConfig.inset = inset;
}

@end