@interface _TVStackTemplateController
- (BOOL)_didExtendContentForPeekMetrics:(id *)a3 above:(BOOL)a4 initial:(BOOL)a5;
- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4;
- (CGSize)_maxContentSize;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForSectionAtIndex:(int64_t)a5;
- (UIEdgeInsets)_scrollableBoundsInset;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (_TVStackTemplateController)init;
- (double)_maxViewWidth;
- (double)_offsetToScrollStop:(id)a3;
- (id)_updateWithCollectionListElement:(id)a3 commits:(id *)a4 autoHighlightIndexPath:(id *)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (id)scrollStopForShowcaseTransition;
- (id)tabBarObservedScrollView;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_adjustedContentOffsetForRowIndex:(int64_t)a3 targetContentOffset:(CGPoint *)a4;
- (void)_buildStackSections;
- (void)_configureBackgroundTintView;
- (void)_invalidateSectionMetricsIfNeeded;
- (void)_preloadNext;
- (void)_scheduleNextPreloadConditional;
- (void)_scrollToTopAnimated:(BOOL)a3;
- (void)_updateBackgroundTintView;
- (void)_updateBackgroundTintViewEffects;
- (void)_updateFirstItemRowIndexes;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 showcaseFactorDidChangeForLayout:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)didUpdateSupplementarySectionInfo;
- (void)scrollViewDidScroll:(id)a3;
- (void)setShowcaseInset:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBackgroundAndBackdrop;
- (void)updateBackgroundAndBackdropMaskFactor;
- (void)updateCollectionViewControllersAndForceReload:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation _TVStackTemplateController

- (_TVStackTemplateController)init
{
  v3.receiver = self;
  v3.super_class = _TVStackTemplateController;
  result = [(_TVStackTemplateController *)&v3 init];
  if (result)
  {
    result->_showcaseFactor = NAN;
  }

  return result;
}

- (void)dealloc
{
  v3 = [(_TVStackCommonTemplateController *)self viewElement];
  v4 = [v3 appDocument];
  v5 = [TVTemplateFeaturesManager featuresManagerForAppDocument:v4];

  [v5 popContext:self forFeature:&unk_287EA0F28];
  v6.receiver = self;
  v6.super_class = _TVStackTemplateController;
  [(_TVStackCommonTemplateController *)&v6 dealloc];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v25.receiver = self;
  v25.super_class = _TVStackTemplateController;
  [(_TVStackCommonTemplateController *)&v25 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = self->_lastFocusedIndexPath;
  v8 = [v6 nextFocusedView];
  v9 = [(_TVStackCommonTemplateController *)self collectionView];
  v10 = [v8 isDescendantOfView:v9];

  if (v10)
  {
    v11 = [v6 nextFocusedView];
    if (v11)
    {
      do
      {
        v12 = [v11 superview];
        v13 = [(_TVStackCommonTemplateController *)self collectionView];

        if (v12 == v13)
        {
          break;
        }

        v14 = [v11 superview];

        v11 = v14;
      }

      while (v14);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v15 = [(_TVStackCommonTemplateController *)self collectionView];
    v16 = [v15 indexPathForCell:v11];

    v7 = v16;
    goto LABEL_9;
  }

  v17 = [(_TVStackCommonTemplateController *)self focusedSupplementaryViewController];
  if (v17)
  {
    v15 = v17;
    v11 = v7;
    v7 = 0;
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  v21 = [v6 nextFocusedView];
  v22 = [(_TVStackTemplateController *)self tabBarController];
  v23 = [v22 tabBar];
  v24 = [v21 isDescendantOfView:v23];

  if (v24)
  {
    v11 = v7;
    v7 = 0;
    goto LABEL_10;
  }

LABEL_11:
  objc_storeStrong(&self->_lastFocusedIndexPath, v7);
  v18 = TVMLKitLogObject;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    lastFocusedIndexPath = self->_lastFocusedIndexPath;
    if (lastFocusedIndexPath)
    {
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSIndexPath section](lastFocusedIndexPath, "section")}];
    }

    else
    {
      v20 = @"-";
    }

    *buf = 138412290;
    v27 = v20;
    _os_log_impl(&dword_26CD9A000, v18, OS_LOG_TYPE_INFO, "LFIP: from focus context: %@", buf, 0xCu);
    if (lastFocusedIndexPath)
    {
    }
  }
}

- (void)viewDidLoad
{
  v37 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = _TVStackTemplateController;
  [(_TVStackTemplateController *)&v35 viewDidLoad];
  v3 = [_TVNeedsMoreContentEvaluator alloc];
  v4 = [(_TVStackCommonTemplateController *)self collectionView];
  v5 = [(_TVNeedsMoreContentEvaluator *)v3 initWithScrollView:v4 axis:2];
  needsMoreContentEvaluator = self->_needsMoreContentEvaluator;
  self->_needsMoreContentEvaluator = v5;

  v7 = self->_needsMoreContentEvaluator;
  v8 = [(_TVStackCommonTemplateController *)self viewElement];
  [(_TVNeedsMoreContentEvaluator *)v7 setViewElement:v8];

  v9 = [(_TVStackCommonTemplateController *)self viewElement];
  v10 = [v9 appDocument];
  v11 = [TVTemplateFeaturesManager featuresManagerForAppDocument:v10];

  [v11 pushContext:self forFeature:&unk_287EA0F28];
  [(_TVStackTemplateController *)self didUpdateSupplementarySectionInfo];
  [(_TVStackTemplateController *)self _buildStackSections];
  lastFocusedIndexPath = self->_lastFocusedIndexPath;
  if (lastFocusedIndexPath)
  {
    v13 = [(IKChangeSet *)self->_filteredChangeSet newIndexForOldIndex:[(NSIndexPath *)lastFocusedIndexPath section]];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    else
    {
      v14 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v13];
    }

    v15 = self->_lastFocusedIndexPath;
    self->_lastFocusedIndexPath = v14;

    v16 = TVMLKitLogObject;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = self->_lastFocusedIndexPath;
      if (v17)
      {
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSIndexPath section](self->_lastFocusedIndexPath, "section")}];
      }

      else
      {
        v18 = @"-";
      }

      *buf = 138412290;
      *&buf[4] = v18;
      _os_log_impl(&dword_26CD9A000, v16, OS_LOG_TYPE_INFO, "LFIP: from view load: %@", buf, 0xCu);
      if (v17)
      {
      }
    }

    v19 = self->_lastFocusedIndexPath;
    if (v19)
    {
      v20 = [(NSIndexPath *)v19 section];
      if (v20 < [(NSArray *)self->_stackSections count])
      {
        v21 = [(_TVStackCommonTemplateController *)self collectionView];
        [v21 contentOffset];
        *buf = v22;
        *&buf[8] = v23;

        v24 = [(NSArray *)self->_stackSections objectAtIndex:v20];
        -[_TVStackTemplateController _adjustedContentOffsetForRowIndex:targetContentOffset:](self, "_adjustedContentOffsetForRowIndex:targetContentOffset:", [v24 firstItemRowIndex], buf);
        v25 = [(_TVStackCommonTemplateController *)self collectionView];
        [v25 contentSize];
        v27 = v26;
        v29 = v28;
        v30 = MEMORY[0x277CBF3A8];
        v31 = *MEMORY[0x277CBF3A8];

        if (v27 == v31 && v29 == *(v30 + 8))
        {
          v32 = [(_TVStackCommonTemplateController *)self collectionView];
          [v32 layoutBelowIfNeeded];
        }

        v33 = [(_TVStackCommonTemplateController *)self collectionView];
        [v33 setContentOffset:*buf];
      }
    }
  }

  if ([(_TVStackCommonTemplateController *)self _isBackdropNeeded])
  {
    v34 = [(_TVStackCommonTemplateController *)self stackWrappingView];
    [v34 setBackdropMaskFactor:1.0];
  }
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = _TVStackTemplateController;
  [(_TVStackTemplateController *)&v4 viewWillLayoutSubviews];
  v3 = [(_TVStackCommonTemplateController *)self stackWrappingView];
  [v3 setShouldAdjustForTabBarSafeAreaInsets:{-[_TVStackTemplateController shouldAdjustForTabBarSafeAreaInsets](self, "shouldAdjustForTabBarSafeAreaInsets")}];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = _TVStackTemplateController;
  [(_TVBgImageLoadingViewController *)&v14 viewDidLayoutSubviews];
  [(_TVStackTemplateController *)self _invalidateSectionMetricsIfNeeded];
  if ([(NSArray *)self->_stackSections count])
  {
    v3 = [(_TVStackTemplateController *)self scrollStopForShowcaseTransition];
    if (v3)
    {
      [(_TVStackTemplateController *)self _offsetToScrollStop:v3];
      v5 = v4;
      v6 = [(_TVStackCommonTemplateController *)self collectionView];
      [v6 contentInset];
      v8 = v5 + v7;
    }

    else
    {
      v8 = 0.0;
    }
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [(_TVStackCommonTemplateController *)self _flowLayout];
  [v9 setShowcaseHeight:v8];

  objc_initWeak(&location, self);
  v10 = MEMORY[0x277CD9FF0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51___TVStackTemplateController_viewDidLayoutSubviews__block_invoke;
  v11[3] = &unk_279D6E890;
  objc_copyWeak(&v12, &location);
  [v10 setCompletionBlock:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)traitCollectionDidChange:(id)a3
{
  v3.receiver = self;
  v3.super_class = _TVStackTemplateController;
  [(_TVStackCommonTemplateController *)&v3 traitCollectionDidChange:a3];
}

- (void)setShowcaseInset:(double)a3
{
  if (self->_showcaseInset != a3)
  {
    self->_showcaseInset = a3;
    if ([(_TVStackTemplateController *)self isViewLoaded])
    {
      [(_TVStackTemplateController *)self didUpdateSupplementarySectionInfo];

      [(_TVStackTemplateController *)self _buildStackSections];
    }
  }
}

- (void)updateCollectionViewControllersAndForceReload:(BOOL)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = [(_TVStackCommonTemplateController *)self collectionListElement];
  if (!a3)
  {
    v6 = [(_TVStackCommonTemplateController *)self viewElement];
    if ([v6 updateType])
    {
      v7 = [v5 updateType];

      if (!v7)
      {
        goto LABEL_55;
      }
    }

    else
    {
    }
  }

  v8 = [(_TVStackCommonTemplateController *)self collectionView];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__12;
  v62 = __Block_byref_object_dispose__12;
  v63 = 0;
  v49 = [(NSArray *)self->_stackRows count];
  v9 = [(_TVStackCommonTemplateController *)self collectionListElement];
  v10 = v59 + 5;
  obj = v59[5];
  v57 = 0;
  v11 = [(_TVStackTemplateController *)self _updateWithCollectionListElement:v9 commits:&v57 autoHighlightIndexPath:&obj];
  v12 = v57;
  objc_storeStrong(v10, obj);

  v13 = [(_TVStackTemplateController *)self scrollStopForShowcaseTransition];
  self->_requiresShowcasing = v13 != 0;

  if (![(_TVStackTemplateController *)self isViewLoaded])
  {
    v12[2](v12);
    objc_storeStrong(&self->_lastFocusedIndexPath, v59[5]);
    v20 = TVMLKitLogObject;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      lastFocusedIndexPath = self->_lastFocusedIndexPath;
      if (lastFocusedIndexPath)
      {
        v22 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSIndexPath section](lastFocusedIndexPath, "section")}];
      }

      else
      {
        v22 = @"-";
      }

      *buf = 138412290;
      *&buf[4] = v22;
      _os_log_impl(&dword_26CD9A000, v20, OS_LOG_TYPE_INFO, "LFIP: from auto highlight w/o view: %@", buf, 0xCu);
      if (lastFocusedIndexPath)
      {
      }
    }

    goto LABEL_53;
  }

  v14 = [v5 attributes];
  v15 = [v14 objectForKey:@"animationsEnabled"];

  if (v15)
  {
    v16 = [v5 attributes];
    v17 = [v16 objectForKey:@"animationsEnabled"];
    v18 = [v17 BOOLValue];

    v19 = v18 ^ 1;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v19 = 0;
    if (!v11)
    {
LABEL_18:
      v12[2](v12);
      [(_TVStackTemplateController *)self _buildStackSections];
      v23 = v59[5];
      if (v23)
      {
        v24 = -[IKChangeSet newIndexForOldIndex:](self->_filteredChangeSet, "newIndexForOldIndex:", [v23 section]);
        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = 0;
        }

        else
        {
          v25 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v24];
        }

        objc_storeStrong(v59 + 5, v25);
        if (v24 != 0x7FFFFFFFFFFFFFFFLL)
        {
        }
      }

      v26 = v59[5];
      if (v26)
      {
        objc_storeStrong(&self->_lastFocusedIndexPath, v26);
        v27 = TVMLKitLogObject;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = [(NSIndexPath *)self->_lastFocusedIndexPath section];
          *buf = 134217984;
          *&buf[4] = v28;
          _os_log_impl(&dword_26CD9A000, v27, OS_LOG_TYPE_INFO, "LFIP: from auto highlight w/o changeset: %ld", buf, 0xCu);
        }
      }

      else
      {
        if (!self->_lastFocusedIndexPath)
        {
          goto LABEL_44;
        }

        v29 = [(NSArray *)self->_viewControllers count];
        v30 = [(NSIndexPath *)self->_lastFocusedIndexPath section];
        if (v29 < 1)
        {
          v32 = 0;
        }

        else
        {
          if (v30 >= v29 - 1)
          {
            v31 = v29 - 1;
          }

          else
          {
            v31 = v30;
          }

          v32 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v31];
        }

        v33 = self->_lastFocusedIndexPath;
        self->_lastFocusedIndexPath = v32;

        v27 = TVMLKitLogObject;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v34 = self->_lastFocusedIndexPath;
          if (v34)
          {
            v35 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSIndexPath section](self->_lastFocusedIndexPath, "section")}];
          }

          else
          {
            v35 = @"-";
          }

          *buf = 138412290;
          *&buf[4] = v35;
          _os_log_impl(&dword_26CD9A000, v27, OS_LOG_TYPE_INFO, "LFIP: from update w/o changeset: %@", buf, 0xCu);
          if (v34)
          {
          }
        }
      }

LABEL_44:
      v36 = self->_lastFocusedIndexPath;
      if (v36)
      {
        v37 = [(NSIndexPath *)v36 section];
        if (v37 < [(NSArray *)self->_stackSections count])
        {
          v38 = [(_TVStackCommonTemplateController *)self collectionView];
          [v38 contentOffset];
          *buf = v39;
          *&buf[8] = v40;

          v41 = [(NSArray *)self->_stackSections objectAtIndex:v37];
          -[_TVStackTemplateController _adjustedContentOffsetForRowIndex:targetContentOffset:](self, "_adjustedContentOffsetForRowIndex:targetContentOffset:", [v41 firstItemRowIndex], buf);
          v42 = [(_TVStackCommonTemplateController *)self collectionView];
          [v42 setContentOffset:*buf];
        }
      }

      self->_shouldInvalidateMetrics = 0;
      [v8 reloadData];
      goto LABEL_48;
    }
  }

  if (a3 || (v19 & 1) != 0 || ![(NSArray *)self->_viewControllers count])
  {
    goto LABEL_18;
  }

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __76___TVStackTemplateController_updateCollectionViewControllersAndForceReload___block_invoke;
  v51[3] = &unk_279D716B8;
  v54 = v12;
  v51[4] = self;
  v52 = v11;
  v55 = &v58;
  v53 = v8;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __76___TVStackTemplateController_updateCollectionViewControllersAndForceReload___block_invoke_3;
  v50[3] = &unk_279D6EBD0;
  v50[4] = self;
  [v53 performBatchUpdates:v51 completion:v50];

LABEL_48:
  v43 = [(_TVStackCommonTemplateController *)self collectionView];
  v44 = [v43 tv_isFocusOnNonOwnedCell];

  if ((v44 & 1) == 0)
  {
    [(_TVStackTemplateController *)self setNeedsFocusUpdate];
  }

  needsMoreContentEvaluator = self->_needsMoreContentEvaluator;
  v46 = [(_TVStackCommonTemplateController *)self viewElement];
  [(_TVNeedsMoreContentEvaluator *)needsMoreContentEvaluator setViewElement:v46];

  if ([(NSArray *)self->_stackRows count]== v49)
  {
    v47 = [(_TVStackCommonTemplateController *)self collectionListElement];
    v48 = [v47 updateType] > 2;

    if (!v48)
    {
      goto LABEL_54;
    }
  }

  [(_TVNeedsMoreContentEvaluator *)self->_needsMoreContentEvaluator reset];
  v20 = [(_TVStackTemplateController *)self view];
  [v20 setNeedsLayout];
LABEL_53:

LABEL_54:
  [(_TVStackTemplateController *)self _configureBackgroundTintView];

  _Block_object_dispose(&v58, 8);
LABEL_55:
}

- (void)didUpdateSupplementarySectionInfo
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(_TVStackTemplateController *)self isViewLoaded])
  {
    [(_TVStackCommonTemplateController *)self supplementaryViewControllers];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = v19 = 0u;
    v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v17;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v16 + 1) + 8 * i);
          v8 = [v7 tv_associatedIKViewElement];
          v9 = [v8 style];
          v10 = [v9 tv_transition];
          v11 = [v10 isEqualToString:@"dissolve"];

          if (v11)
          {
            v12 = 2;
          }

          else
          {
            v12 = 0;
          }

          [(_TVStackTemplateController *)self showcaseInset];
          v15[0] = 0;
          v15[1] = v12;
          v15[2] = v13;
          [v7 tv_setShowcaseConfig:v15];
        }

        v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v4);
    }
  }
}

- (void)updateBackgroundAndBackdrop
{
  v3 = [(_TVStackCommonTemplateController *)self bgImgElement];
  v4 = [v3 style];
  v5 = [v4 tv_imageTreatment];
  if (![v5 isEqualToString:@"blurOverlay"])
  {

    goto LABEL_6;
  }

  requiresShowcasing = self->_requiresShowcasing;

  if (!requiresShowcasing)
  {
LABEL_6:
    v11.receiver = self;
    v11.super_class = _TVStackTemplateController;
    [(_TVStackCommonTemplateController *)&v11 updateBackgroundAndBackdrop];
    return;
  }

  v10 = [(_TVStackCommonTemplateController *)self stackWrappingView];
  v7 = [(_TVStackCommonTemplateController *)self mediaPlayer];
  v8 = [v7 isPlaying];

  if (v8)
  {
    v9 = 4009;
  }

  else if ([(_TVStackCommonTemplateController *)self _backgroundImageRequiresBlur])
  {
    v9 = 0x8000000000000000;
  }

  else
  {
    v9 = [(_TVStackCommonTemplateController *)self _blurEffectStyle];
  }

  [v10 setBackdropBlurEffectStyle:v9];
  [v10 setBackdropInitialPeek:540.0];
  [v10 setBackdropPeekGradient:270.0];
}

- (void)updateBackgroundAndBackdropMaskFactor
{
  if (self->_requiresShowcasing)
  {
    [(_TVStackTemplateController *)self showcaseFactor];
    v3 = [(_TVStackCommonTemplateController *)self stackWrappingView];
    [(_TVStackTemplateController *)self showcaseFactor];
    [v3 setBackdropMaskFactor:?];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = _TVStackTemplateController;
    [(_TVStackCommonTemplateController *)&v4 updateBackgroundAndBackdropMaskFactor];
  }
}

- (id)scrollStopForShowcaseTransition
{
  v3 = [(_TVStackCommonTemplateController *)self viewElement];
  v4 = [v3 style];
  v5 = [v4 edgeFlagForStyle:@"tv-scrollable-bounds-inset"];

  if (v5)
  {
    v6 = objc_opt_new();
    [v6 setSectionIndex:0x7FFFFFFFFFFFFFFFLL];
    [v6 setEdge:0];
    [(_TVStackTemplateController *)self _scrollableBoundsInset];
    [v6 setOffset:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  viewControllers = self->_viewControllers;
  v5 = a3;
  v6 = [(NSArray *)viewControllers count];
  v9.receiver = self;
  v9.super_class = _TVStackTemplateController;
  v7 = [(_TVStackCommonTemplateController *)&v9 numberOfSectionsInCollectionView:v5];

  return v7 + v6;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  if ([(NSArray *)self->_viewControllers count]<= a4)
  {
    v9.receiver = self;
    v9.super_class = _TVStackTemplateController;
    v7 = [(_TVStackCommonTemplateController *)&v9 collectionView:v6 numberOfItemsInSection:a4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 >= [(NSArray *)self->_viewControllers count])
  {
    v24.receiver = self;
    v24.super_class = _TVStackTemplateController;
    v10 = [(_TVStackCommonTemplateController *)&v24 collectionView:v6 cellForItemAtIndexPath:v7];
  }

  else
  {
    v9 = [(_TVStackCommonTemplateController *)self collectionView];
    v10 = [v9 dequeueReusableCellWithReuseIdentifier:@"TVStackViewCollectionCellIdentifier" forIndexPath:v7];

    v11 = -[NSArray objectAtIndex:](self->_viewControllers, "objectAtIndex:", [v7 section]);
    v12 = [v11 view];
    [v10 bounds];
    [v12 setFrame:?];
    v13 = [v11 tv_associatedIKViewElement];
    v14 = [v13 attributes];
    v15 = [v14 objectForKeyedSubscript:@"markBackgroundSegment"];
    v16 = [v15 BOOLValue];

    v17 = [MEMORY[0x277D75348] clearColor];
    v18 = [v13 style];
    v19 = [v18 tv_backgroundColor];

    if (v19 && (v16 & 1) == 0)
    {
      v20 = [v13 style];
      v21 = [v20 tv_backgroundColor];
      v22 = [v21 color];

      v17 = v22;
    }

    [v10 setBackgroundColor:v17];

    [v10 setViewController:v11];
  }

  return v10;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(_TVStackCommonTemplateController *)self collectionView];
  if ([v4 tv_isFocusOnNonOwnedCell])
  {
    lastFocusedIndexPath = 0;
  }

  else
  {
    lastFocusedIndexPath = self->_lastFocusedIndexPath;
  }

  v6 = lastFocusedIndexPath;

  v7 = TVMLKitLogObject;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (v6)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSIndexPath section](v6, "section")}];
    }

    else
    {
      v8 = @"-";
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_26CD9A000, v7, OS_LOG_TYPE_INFO, "LFIP: returned: %@", &v10, 0xCu);
    if (v6)
    {
    }
  }

  return v6;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v31[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 section];
  if (v11 >= [(NSArray *)self->_viewControllers count])
  {
    v30.receiver = self;
    v30.super_class = _TVStackTemplateController;
    [(_TVStackCommonTemplateController *)&v30 collectionView:v8 willDisplayCell:v9 forItemAtIndexPath:v10];
  }

  else
  {
    v12 = [v9 viewController];
    if (v12)
    {
      v13 = [(_TVStackTemplateController *)self childViewControllers];
      v14 = [v13 containsObject:v12];

      if ((v14 & 1) == 0)
      {
        [(_TVStackTemplateController *)self addChildViewController:v12];
        [(UIViewController *)v12 didMoveToParentViewController:self];
        [(NSMutableArray *)self->_preloadQueue removeObject:v12];
        if (v12 == self->_backdropTintViewController)
        {
          [(_TVStackTemplateController *)self _updateBackgroundTintView];
        }

        v24 = MEMORY[0x277D85DD0];
        v25 = 3221225472;
        v26 = __80___TVStackTemplateController_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke;
        v27 = &unk_279D6E2F8;
        v28 = v12;
        v29 = v9;
        dispatch_async(MEMORY[0x277D85CD0], &v24);
      }
    }

    v15 = [(_TVStackCommonTemplateController *)self collectionView:v24];
    v16 = [v15 collectionViewLayout];

    v17 = [v16 layoutAttributesForItemAtIndexPath:v10];
    [v9 frame];
    v33 = CGRectIntegral(v32);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
    [v17 frame];
    v36 = CGRectIntegral(v34);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    if (!CGRectEqualToRect(v35, v36))
    {
      v22 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
      v31[0] = v10;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
      [v22 invalidateItemsAtIndexPaths:v23];

      [v16 invalidateLayoutWithContext:v22];
    }
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 section];
  if (v11 >= [(NSArray *)self->_viewControllers count])
  {
    v16.receiver = self;
    v16.super_class = _TVStackTemplateController;
    [(_TVStackCommonTemplateController *)&v16 collectionView:v8 willDisplayCell:v9 forItemAtIndexPath:v10];
  }

  else
  {
    v12 = [v9 viewController];
    if (v12)
    {
      v13 = [(_TVStackTemplateController *)self childViewControllers];
      if ([v13 containsObject:v12])
      {
        v14 = [v12 view];
        v15 = [v14 isDescendantOfView:v9];

        if (v15)
        {
          [v12 willMoveToParentViewController:0];
          [v12 removeFromParentViewController];
        }
      }

      else
      {
      }
    }
  }
}

- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4
{
  v11 = a4;
  lastFocusedIndexPath = self->_lastFocusedIndexPath;
  if (lastFocusedIndexPath)
  {
    v6 = [(NSIndexPath *)lastFocusedIndexPath section];
    if (v6 < [(NSArray *)self->_stackSections count])
    {
      v7 = [(NSArray *)self->_stackSections objectAtIndex:v6];
      -[_TVStackTemplateController _adjustedContentOffsetForRowIndex:targetContentOffset:](self, "_adjustedContentOffsetForRowIndex:targetContentOffset:", [v7 firstItemRowIndex], &v11);
    }

    v8 = self->_lastFocusedIndexPath;
    self->_lastFocusedIndexPath = 0;
  }

  x = v11.x;
  y = v11.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForSectionAtIndex:(int64_t)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = [(_TVStackTemplateController *)self view:a3];
  [v7 bounds];
  v9 = v8;
  v10 = [(NSArray *)self->_stackSections objectAtIndexedSubscript:a5];
  [v10 sectionHeight];
  v12 = v11;

  if (self->_requiresShowcasing)
  {
    v13 = [(NSArray *)self->_stackSections objectAtIndexedSubscript:a5];
    [v13 showcaseSectionHeight];
    v15 = v14;

    v16 = [(_TVStackCommonTemplateController *)self _flowLayout];
    [v16 showcaseFactor];
    v12 = v15 + (1.0 - v17) * (v12 - v15);
  }

  if (v9 < 0.0 || v12 < 0.0)
  {
    v18 = [(_TVStackTemplateController *)self viewControllers];
    v19 = [v18 objectAtIndexedSubscript:a5];
    v20 = [v19 tv_associatedIKViewElement];

    v21 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_ERROR))
    {
      v24 = v21;
      v25 = [v20 debugDescription];
      v26 = 134218498;
      v27 = v9;
      v28 = 2048;
      v29 = v12;
      v30 = 2112;
      v31 = v25;
      _os_log_error_impl(&dword_26CD9A000, v24, OS_LOG_TYPE_ERROR, "StackLayout: invalid cell size: {%lf, %lf} for: %@", &v26, 0x20u);
    }
  }

  v22 = v9;
  v23 = v12;
  result.height = v23;
  result.width = v22;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = [(NSArray *)self->_stackSections objectAtIndexedSubscript:a5, a4];
  [v7 sectionSpacing];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (self->_requiresShowcasing)
  {
    v16 = [(NSArray *)self->_stackSections objectAtIndexedSubscript:a5];
    [v16 showcaseSectionSpacing];
    v18 = v17;
    v20 = v19;

    v21 = [(_TVStackCommonTemplateController *)self _flowLayout];
    [v21 showcaseFactor];
    v9 = v18 + (1.0 - v22) * (v9 - v18);

    v23 = [(_TVStackCommonTemplateController *)self _flowLayout];
    [v23 showcaseFactor];
    v13 = v20 + (1.0 - v24) * (v13 - v20);
  }

  v25 = v9;
  v26 = v11;
  v27 = v13;
  v28 = v15;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

- (void)collectionView:(id)a3 showcaseFactorDidChangeForLayout:(id)a4
{
  v5 = [(_TVStackCommonTemplateController *)self _flowLayout:a3];
  [v5 showcaseFactor];
  v7 = v6;

  if (self->_showcaseFactor != v7)
  {
    self->_showcaseFactor = v7;
    [(_TVStackTemplateController *)self _scheduleNextPreloadConditional];
    v8 = [(_TVStackCommonTemplateController *)self observableEventController];
    [v8 dispatchEvent:@"TVShowcaseFactorDidChangeEvent" sender:self withUserInfo:0];

    [(_TVStackTemplateController *)self showcaseFactorDidChange];
  }
}

- (id)tabBarObservedScrollView
{
  v2 = [(_TVStackCommonTemplateController *)self stackWrappingView];
  v3 = [v2 stackView];

  return v3;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4.receiver = self;
  v4.super_class = _TVStackTemplateController;
  [(_TVStackCommonTemplateController *)&v4 scrollViewDidScroll:a3];
  [(_TVNeedsMoreContentEvaluator *)self->_needsMoreContentEvaluator evaluateForState:2];
  [(_TVStackTemplateController *)self _updateBackgroundTintViewEffects];
}

- (void)_scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(_TVStackCommonTemplateController *)self collectionView];
  [v5 contentInset];
  [v5 setContentOffset:v3 animated:{0.0, -v6}];
  v7 = [(_TVStackCommonTemplateController *)self _flowLayout];
  [v5 bounds];
  v8 = [v7 invalidationContextForBoundsChange:?];
  [v7 invalidateLayoutWithContext:v8];

  if ([v5 numberOfSections] < 1 || objc_msgSend(v5, "numberOfItemsInSection:", 0) < 1)
  {
    lastFocusedIndexPath = self->_lastFocusedIndexPath;
    self->_lastFocusedIndexPath = 0;
  }

  else
  {
    lastFocusedIndexPath = [(_TVStackTemplateController *)self viewControllers];
    v10 = [lastFocusedIndexPath count];
    if (v10)
    {
      v11 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(&self->_lastFocusedIndexPath, v11);
    if (v10)
    {
    }
  }

  v12 = TVMLKitLogObject;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = self->_lastFocusedIndexPath;
    if (v13)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSIndexPath section](v13, "section")}];
    }

    else
    {
      v14 = @"-";
    }

    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&dword_26CD9A000, v12, OS_LOG_TYPE_INFO, "LFIP: from scroll to top: %@", &v15, 0xCu);
    if (v13)
    {
    }
  }
}

- (id)_updateWithCollectionListElement:(id)a3 commits:(id *)a4 autoHighlightIndexPath:(id *)a5
{
  v113 = *MEMORY[0x277D85DE8];
  v72 = a3;
  v75 = self;
  v71 = self->_unfilteredViewControllers;
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB18] array];
  v73 = [v72 unfilteredChildrenChangeSet];
  if (v73 && v71)
  {
    [v6 addObjectsFromArray:v71];
    v8 = [v73 removedIndexes];
    v9 = [v8 mutableCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x277CCAB58] indexSet];
    }

    v21 = v11;

    v74 = v21;
    v69 = [v6 objectsAtIndexes:v21];
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v22 = [v73 movedIndexesByNewIndex];
    v23 = [v22 allValues];

    v24 = [v23 countByEnumeratingWithState:&v105 objects:v112 count:16];
    if (v24)
    {
      v25 = *v106;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v106 != v25)
          {
            objc_enumerationMutation(v23);
          }

          [v74 addIndex:{objc_msgSend(*(*(&v105 + 1) + 8 * i), "integerValue")}];
        }

        v24 = [v23 countByEnumeratingWithState:&v105 objects:v112 count:16];
      }

      while (v24);
    }

    [v6 removeObjectsAtIndexes:v74];
    v27 = [v73 addedIndexes];
    v28 = [v27 mutableCopy];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = [MEMORY[0x277CCAB58] indexSet];
    }

    v31 = v30;

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v32 = [v73 movedIndexesByNewIndex];
    v33 = [v32 allKeys];

    v34 = [v33 countByEnumeratingWithState:&v101 objects:v111 count:16];
    if (v34)
    {
      v35 = *v102;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v102 != v35)
          {
            objc_enumerationMutation(v33);
          }

          [v31 addIndex:{objc_msgSend(*(*(&v101 + 1) + 8 * j), "integerValue")}];
        }

        v34 = [v33 countByEnumeratingWithState:&v101 objects:v111 count:16];
      }

      while (v34);
    }

    v37 = [MEMORY[0x277CBEB18] array];
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __94___TVStackTemplateController__updateWithCollectionListElement_commits_autoHighlightIndexPath___block_invoke_2;
    v93[3] = &unk_279D71700;
    v38 = v72;
    v94 = v38;
    v39 = v73;
    v95 = v39;
    v66 = v37;
    v96 = v66;
    v100 = &__block_literal_global_47;
    v97 = v71;
    v98 = v75;
    v70 = v7;
    v99 = v70;
    [v31 enumerateIndexesUsingBlock:v93];
    [v6 insertObjects:v66 atIndexes:v31];
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v40 = [v39 updatedIndexesByNewIndex];
    v41 = [v40 allKeys];

    v42 = [v41 countByEnumeratingWithState:&v89 objects:v110 count:16];
    if (v42)
    {
      v43 = *v90;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v90 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v45 = [*(*(&v89 + 1) + 8 * k) integerValue];
          v46 = [v38 unfilteredChildren];
          v47 = [v46 objectAtIndexedSubscript:v45];

          v48 = [v6 objectAtIndexedSubscript:v45];
          v49 = __94___TVStackTemplateController__updateWithCollectionListElement_commits_autoHighlightIndexPath___block_invoke(v48, v47);
          v50 = [(_TVStackCommonTemplateController *)v75 viewControllerWithElement:v47 layout:v49 existingController:v48];
        }

        v42 = [v41 countByEnumeratingWithState:&v89 objects:v110 count:16];
      }

      while (v42);
    }
  }

  else
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v12 = [v72 unfilteredChildren];
    v13 = [v12 countByEnumeratingWithState:&v85 objects:v109 count:16];
    v14 = v13;
    if (v13)
    {
      v15 = *v86;
      do
      {
        v16 = 0;
        do
        {
          if (*v86 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v85 + 1) + 8 * v16);
          v18 = __94___TVStackTemplateController__updateWithCollectionListElement_commits_autoHighlightIndexPath___block_invoke(v13, v17);
          v19 = [(_TVStackCommonTemplateController *)v75 viewControllerWithElement:v17 layout:v18 existingController:0];
          if (v19)
          {
            [v6 addObject:v19];
          }

          else
          {
            v20 = objc_opt_new();
            [v6 addObject:v20];
          }

          ++v16;
        }

        while (v14 != v16);
        v13 = [v12 countByEnumeratingWithState:&v85 objects:v109 count:16];
        v14 = v13;
      }

      while (v13);
    }

    v70 = v6;
    v69 = v71;
  }

  v51 = [(_TVStackCommonTemplateController *)v75 viewElement];
  v52 = [v51 attributes];
  v53 = [v52 objectForKeyedSubscript:@"preloading"];

  if (v53 && ![v53 BOOLValue])
  {
    [(NSMutableArray *)v75->_preloadQueue removeAllObjects];
  }

  else
  {
    if (!v75->_preloadQueue)
    {
      v54 = [MEMORY[0x277CBEB18] array];
      preloadQueue = v75->_preloadQueue;
      v75->_preloadQueue = v54;
    }

    if ([(NSArray *)v69 count])
    {
      [(NSMutableArray *)v75->_preloadQueue removeObjectsInArray:v69];
    }

    v56 = [v70 indexesOfObjectsPassingTest:&__block_literal_global_126];
    v57 = v75->_preloadQueue;
    v58 = [v70 objectsAtIndexes:v56];
    [(NSMutableArray *)v57 addObjectsFromArray:v58];
  }

  [(_TVStackTemplateController *)v75 _scheduleNextPreloadConditional];
  if (a5)
  {
    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 0x7FFFFFFFFFFFFFFFLL;
    v59 = [v72 unfilteredChildren];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __94___TVStackTemplateController__updateWithCollectionListElement_commits_autoHighlightIndexPath___block_invoke_4;
    v80[3] = &unk_279D71748;
    v80[4] = &v81;
    [v59 enumerateObjectsUsingBlock:v80];

    if (v82[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      *a5 = 0;
    }

    else
    {
      v60 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:?];
      *a5 = v60;
    }

    _Block_object_dispose(&v81, 8);
  }

  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __94___TVStackTemplateController__updateWithCollectionListElement_commits_autoHighlightIndexPath___block_invoke_5;
  v76[3] = &unk_279D6F5D0;
  v77 = v69;
  v78 = v75;
  v79 = v6;
  v61 = v6;
  v62 = v69;
  *a4 = MEMORY[0x26D6AFBB0](v76);
  v63 = v79;
  v64 = v73;

  return v73;
}

- (void)_scheduleNextPreloadConditional
{
  if (!self->_flags._preloadingScheduled && [(NSMutableArray *)self->_preloadQueue count])
  {
    [(_TVStackTemplateController *)self showcaseFactor];
    [(_TVStackTemplateController *)self showcaseFactor];
    if (v3 != 1.0)
    {
      self->_flags._preloadingScheduled = 1;
      objc_initWeak(&location, self);
      v4 = dispatch_time(0, 500000000);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __61___TVStackTemplateController__scheduleNextPreloadConditional__block_invoke;
      v5[3] = &unk_279D6E890;
      objc_copyWeak(&v6, &location);
      dispatch_after(v4, MEMORY[0x277D85CD0], v5);
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_preloadNext
{
  v3 = [(NSMutableArray *)self->_preloadQueue firstObject];
  if (v3)
  {
    v10 = v3;
    [(NSMutableArray *)self->_preloadQueue removeObjectAtIndex:0];
    v4 = [(_TVStackCommonTemplateController *)self viewElement];
    v5 = [v4 appDocument];
    [v5 tv_adjustedWindowSize];
    v7 = v6;
    v9 = v8;

    [v10 preloadCellsInRect:{0.0, 0.0, v7, v9}];
    [(_TVStackTemplateController *)self _scheduleNextPreloadConditional];
    v3 = v10;
  }
}

- (void)_adjustedContentOffsetForRowIndex:(int64_t)a3 targetContentOffset:(CGPoint *)a4
{
  v7 = [(NSArray *)self->_stackRows objectAtIndexedSubscript:?];
  v8 = [(_TVStackCommonTemplateController *)self collectionView];
  v9 = [v8 tv_isFocusOnNonOwnedCell];

  if (v9)
  {
    goto LABEL_84;
  }

  v10 = [(_TVStackCommonTemplateController *)self collectionView];
  [v10 bounds];
  v92 = v11;
  [v10 contentInset];
  v13 = v12;
  v15 = v14;
  v16 = [(_TVStackCommonTemplateController *)self collectionView];
  [v16 contentOffset];
  v18 = v17;

  contentHeight = self->_contentHeight;
  x = a4->x;
  y = a4->y;
  v91 = a4;
  v22 = a3 - 1;
  if (a3 < 1)
  {
    v24 = 0.0;
  }

  else
  {
    v23 = 0;
    v24 = 0.0;
    do
    {
      v25 = [(NSArray *)self->_stackRows objectAtIndexedSubscript:v23];
      v26 = v25;
      if (v25)
      {
        [v25 rowMetrics];
        v27 = *(&v137 + 1);
      }

      else
      {
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v27 = 0.0;
        v137 = 0u;
      }

      v24 = v24 + v27;

      ++v23;
    }

    while (a3 != v23);
  }

  v28 = [(NSArray *)self->_stackRows objectAtIndexedSubscript:a3];
  v29 = v28;
  if (v28)
  {
    [v28 rowMetrics];
    v30 = *(&v132 + 1);
  }

  else
  {
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v132 = 0u;
    v30 = 0.0;
  }

  v87 = v30;
  v31 = v15 + contentHeight;

  v86 = v15;
  if ([(NSArray *)self->_stackSections count])
  {
    v32 = 0;
    while (1)
    {
      v33 = [(NSArray *)self->_stackSections objectAtIndexedSubscript:v32];
      if ([v33 firstRowIndex] <= a3)
      {
        v34 = [v33 firstRowIndex];
        if ([v33 rowCount] + v34 > a3)
        {
          break;
        }
      }

      if (++v32 >= [(NSArray *)self->_stackSections count])
      {
        goto LABEL_18;
      }
    }

    if ([v7 isBounded])
    {
      v36 = 0;
      v88 = 0;
    }

    else
    {
      v36 = [v33 firstRowIndex] != a3;
      v37 = [v33 firstRowIndex];
      v88 = v37 + [v33 rowCount] - 1 != a3;
    }

    v35 = y;
  }

  else
  {
LABEL_18:
    v35 = y;
    v36 = 1;
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v88 = 1;
  }

  v89 = v13;
  v90 = -v13;
  v38 = v31 - v92;
  v131 = 0;
  v129 = 0u;
  v130 = 0u;
  if (v7)
  {
    [v7 rowMetrics];
    *&v130 = *(&v124 + 1);
    *(&v130 + 1) = a3;
    v131 = 1;
    [v7 rowMetrics];
    [v7 rowMetrics];
    [v7 rowMetrics];
    v39 = *(&v119 + 1) - (*&v115 + *(&v110 + 1));
    [v7 rowMetrics];
    v40 = *&v105;
  }

  else
  {
    v127 = 0uLL;
    v128 = 0uLL;
    v125 = 0uLL;
    v126 = 0uLL;
    v123 = 0uLL;
    v124 = 0uLL;
    v119 = 0uLL;
    v120 = 0uLL;
    v121 = 0uLL;
    v122 = 0uLL;
    v114 = 0uLL;
    v115 = 0uLL;
    v116 = 0uLL;
    v117 = 0uLL;
    v118 = 0uLL;
    v112 = 0uLL;
    v113 = 0uLL;
    v110 = 0uLL;
    v111 = 0uLL;
    v108 = 0uLL;
    v109 = 0uLL;
    v106 = 0uLL;
    v107 = 0uLL;
    v104 = 0uLL;
    v105 = 0uLL;
    v40 = 0.0;
    v39 = 0.0;
    *(&v130 + 1) = a3;
    v131 = 1;
  }

  v41 = 0;
  v42 = fmax(v90, v38);
  v43 = v24 + v40 + v39 * 0.5;
  v44 = v43 - v18;
  v45 = v92 * 0.5;
  v85 = v43 - v18 < v92 * 0.5;
  v46 = v91->y;
  if (v46 == v90)
  {
    v47 = v42;
  }

  else
  {
    v47 = v42;
    if (v46 != v42)
    {
      v41 = 1;
      if (v46 == v18 && v89 + v46 <= v24)
      {
        v48 = v92 + v46 - v86;
        if (v7)
        {
          [v7 rowMetrics];
          v49 = *(&v99 + 1);
        }

        else
        {
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v99 = 0u;
          v49 = 0.0;
        }

        v41 = v48 < v24 + v49;
      }
    }
  }

  v50 = v44 < v45 || v36;
  if (v50 == 1)
  {
    v51 = v44 >= v45 || v88;
    if (v51)
    {
      v52 = 0;
      v53 = x;
      goto LABEL_47;
    }

    v54 = 1;
  }

  else
  {
    v54 = 0;
  }

  v53 = x;
  v52 = [(_TVStackTemplateController *)self scrollStopForEnteringSectionAtIndex:v32 fromEdge:v54];
LABEL_47:
  v55 = v35;
  if (v52 == 0 && v41)
  {
    v56 = [(NSArray *)self->_stackSections objectAtIndexedSubscript:v32];
    if ([v56 firstRowIndex] != a3)
    {

      goto LABEL_59;
    }

    requiresShowcasing = self->_requiresShowcasing;

    if (!requiresShowcasing)
    {
      goto LABEL_59;
    }

    while (v32-- >= 1)
    {
      v59 = [(NSArray *)self->_stackSections objectAtIndexedSubscript:v32];
      [v59 showcaseSectionHeight];
      v61 = v60;

      if (v61 > 1.0)
      {
        goto LABEL_59;
      }
    }

    v52 = [(_TVStackTemplateController *)self scrollStopForShowcaseTransition];
  }

  if (v52)
  {
    [(_TVStackTemplateController *)self _offsetToScrollStop:v52];
    v63 = 0.0;
    if (v62 > v43)
    {
      v63 = v92;
    }

    v55 = fmax(v90, fmin(v47, v62 - v63));

    goto LABEL_72;
  }

LABEL_59:
  if (!v41)
  {
LABEL_72:
    v64 = v91;
    goto LABEL_73;
  }

  v64 = v91;
  if (![v7 isHosted])
  {
    goto LABEL_73;
  }

  v55 = v90;
  if (![(_TVStackTemplateController *)self _didExtendContentForPeekMetrics:&v129 above:1 initial:1])
  {
    goto LABEL_73;
  }

  v55 = v47;
  if (![(_TVStackTemplateController *)self _didExtendContentForPeekMetrics:&v129 above:0 initial:1])
  {
    goto LABEL_73;
  }

  v65 = floor((v92 - *&v130) * 0.5);
  if (v65 <= 45.0)
  {
LABEL_85:
    v68 = v65;
  }

  else
  {
    v66 = 0;
    v67 = v85;
    do
    {
      v96 = v129;
      v97 = v130;
      v98 = v131;
      if ([(_TVStackTemplateController *)self _didExtendContentForPeekMetrics:&v96 above:(v67 ^ 1) & 1 initial:0]&& (v68 = floor((v92 - *&v97) * 0.5), v68 >= 45.0))
      {
        v129 = v96;
        v130 = v97;
        v131 = v98;
        v65 = v68;
      }

      else
      {
        if ((fmin(*&v129, *(&v129 + 1)) >= v65) | v66 & 1)
        {
          goto LABEL_85;
        }

        v66 = 1;
        v67 ^= 1u;
        v68 = v65;
      }
    }

    while (v68 > 45.0);
  }

  v76 = *(&v130 + 1);
  v77 = v24;
  if (v22 > *(&v130 + 1))
  {
    v77 = v24;
    do
    {
      v78 = [(NSArray *)self->_stackRows objectAtIndexedSubscript:v22];
      v79 = v78;
      if (v78)
      {
        [v78 rowMetrics];
        v80 = *(&v95 + 1);
      }

      else
      {
        v80 = 0.0;
        v95 = 0u;
      }

      v77 = v77 - v80;

      --v22;
    }

    while (v22 > v76);
  }

  v81 = *&v129;
  v82 = [(NSArray *)self->_stackRows objectAtIndexedSubscript:v76];
  v83 = v82;
  if (v81 > 0.0)
  {
    if (v82)
    {
      [v82 rowMetrics];
      v84 = v94;
      goto LABEL_98;
    }

LABEL_97:
    v84 = 0.0;
    goto LABEL_98;
  }

  if (!v82)
  {
    goto LABEL_97;
  }

  [v82 rowMetrics];
  v84 = v93;
LABEL_98:

  v55 = fmin(fmax(v90, v77 - v84 - v68), v47);
LABEL_73:
  [(_TVStackTemplateController *)self _scrollableBoundsInset];
  v70 = v69;
  v71 = [(_TVStackCommonTemplateController *)self viewElement];
  v72 = [v71 style];
  if (([v72 edgeFlagForStyle:@"tv-scrollable-bounds-inset"] & 1) != 0 && v55 < v92 - v89)
  {

    if (v92 - v89 + -45.0 >= v24 + v87)
    {
      v55 = v90;
    }
  }

  else
  {
  }

  v73 = [(_TVStackCommonTemplateController *)self viewElement];
  v74 = [v73 style];
  if (([v74 edgeFlagForStyle:@"tv-scrollable-bounds-inset"] & 4) != 0 && v92 + v55 > v92 + v47 - v70)
  {

    v75 = v10;
    if (v47 + 45.0 <= v24)
    {
      v55 = v47;
    }
  }

  else
  {

    v75 = v10;
  }

  v64->x = v53;
  v64->y = v55;

LABEL_84:
}

- (UIEdgeInsets)_scrollableBoundsInset
{
  v2 = [(_TVStackCommonTemplateController *)self viewElement];
  v3 = [v2 style];
  [v3 tv_scrollableBoundsInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (BOOL)_didExtendContentForPeekMetrics:(id *)a3 above:(BOOL)a4 initial:(BOOL)a5
{
  v23 = a5;
  v5 = a4;
  if (a4)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  location = a3->var3.location;
  if (!a4)
  {
    location = location + a3->var3.length - 1;
  }

  v10 = [(NSArray *)self->_stackRows objectAtIndexedSubscript:location];
  v11 = v10;
  v12 = 0.0;
  if (!v23)
  {
    if (v10)
    {
      [v10 rowMetrics];
    }

    v12 = 0.0 - 0.0;
  }

  v13 = 0;
  v14 = location + v8;
  if (v14 >= 0)
  {
    v15 = -v14;
    while (v14 < [(NSArray *)self->_stackRows count])
    {
      v16 = [(NSArray *)self->_stackRows objectAtIndexedSubscript:v14];
      v17 = v16;
      if (v16)
      {
        [v16 rowMetrics];
      }

      v18 = a3->var3.location;
      if (v5)
      {
        v19 = v15 + v18 + a3->var3.length;
        a3->var3.location = v14;
      }

      else
      {
        v19 = v14 - v18 + 1;
      }

      a3->var3.length = v19;
      if (!v23 || ![v11 isBounded] || (v20 = objc_msgSend(v11, "sectionIndex"), v20 != objc_msgSend(v17, "sectionIndex")))
      {
        a3->var2 = a3->var2 + v12 + 0.0;
        v21 = 8;
        if (v5)
        {
          v21 = 0;
        }

        *(&a3->var0 + v21) = 0.0 - (0.0 + 0.0);

        v13 = 1;
        break;
      }

      a3->var2 = a3->var2 + v12 + 0.0;
      v13 = 1;
      v12 = 0.0;

      v14 += v8;
      v15 -= v8;
      if (v14 < 0)
      {
        break;
      }
    }
  }

  return v13 & 1;
}

- (double)_maxViewWidth
{
  v2 = [(_TVStackCommonTemplateController *)self viewElement];
  v3 = [v2 appDocument];
  [v3 tv_adjustedWindowSize];
  v5 = v4;

  return v5;
}

- (void)_invalidateSectionMetricsIfNeeded
{
  if (self->_shouldInvalidateMetrics)
  {
    self->_shouldInvalidateMetrics = 0;
    v6 = objc_alloc_init(_TVStackViewFlowLayoutInvalidationContext);
    [(_TVStackViewFlowLayoutInvalidationContext *)v6 setInvalidateSectionMetrics:1];
    v4 = [(_TVStackCommonTemplateController *)self collectionView];
    v5 = [v4 collectionViewLayout];
    [v5 invalidateLayoutWithContext:v6];

    [(_TVStackTemplateController *)self _updateBackgroundTintView];
  }
}

- (void)_buildStackSections
{
  v108 = *MEMORY[0x277D85DE8];
  requiresShowcasing = self->_requiresShowcasing;
  v79 = requiresShowcasing;
  [(_TVStackTemplateController *)self _maxViewWidth];
  v5 = v4;
  v6 = self->_unfilteredViewControllers;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v6, "count")}];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{(2 * -[NSArray count](v6, "count")) | 1}];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v6, "count")}];
  v10 = [MEMORY[0x277CCAB58] indexSet];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v6, "count")}];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v6, "count")}];
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = __49___TVStackTemplateController__buildStackSections__block_invoke;
  v92[3] = &unk_279D71770;
  v92[4] = self;
  v99 = v5;
  v106 = requiresShowcasing;
  v13 = v11;
  v93 = v13;
  v14 = v12;
  v94 = v14;
  v15 = v9;
  v95 = v15;
  v100 = 1;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0;
  v16 = v8;
  v96 = v16;
  v17 = v7;
  v97 = v17;
  v18 = v10;
  v98 = v18;
  v74 = v6;
  [(NSArray *)v6 enumerateObjectsUsingBlock:v92];
  v70 = v18;
  v19 = [objc_alloc(MEMORY[0x277D1B060]) initWithAddedIndexes:0 removedIndexes:v18 movedIndexesByNewIndex:0 updatedIndexesByNewIndex:0];
  filteredChangeSet = self->_filteredChangeSet;
  self->_filteredChangeSet = v19;

  v72 = v15;
  v21 = [v15 copy];
  viewControllers = self->_viewControllers;
  v75 = self;
  self->_viewControllers = v21;

  v23 = objc_alloc_init(_TVStackRow);
  memset(v91 + 8, 0, 72);
  *&v91[0] = 1;
  [(_TVStackRow *)v23 setRowMetrics:v91];
  v69 = v23;
  [v16 addObject:v23];
  v73 = v13;
  v24 = [TVMLUtilities rowSpacingMetricsForRowMetrics:v13];
  v25 = v24;
  v71 = v14;
  if (v79)
  {
    v26 = [TVMLUtilities rowSpacingMetricsForRowMetrics:v14 forShowcase:1];
  }

  else
  {
    v26 = v24;
  }

  v27 = v26;
  v28 = self->_viewControllers;
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __49___TVStackTemplateController__buildStackSections__block_invoke_2;
  v85[3] = &unk_279D71798;
  v29 = v17;
  v86 = v29;
  v30 = v16;
  v87 = v30;
  v88 = self;
  v68 = v25;
  v89 = v68;
  v67 = v27;
  v90 = v67;
  [(NSArray *)v28 enumerateObjectsUsingBlock:v85];
  v66 = [(_TVStackCommonTemplateController *)self collectionView];
  [v66 bounds];
  v32 = v31;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v33 = v29;
  v34 = [v33 countByEnumeratingWithState:&v81 objects:v107 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v82;
    v37 = 0.0;
    v76 = *v82;
    v77 = v33;
    do
    {
      v38 = 0;
      v78 = v35;
      do
      {
        if (*v82 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v39 = *(*(&v81 + 1) + 8 * v38);
        v40 = [v39 firstRowIndex];
        v80 = v39;
        v41 = [v39 rowCount];
        if (v41 >= 2)
        {
          v42 = v41;
          v43 = [v30 objectAtIndexedSubscript:v40];
          v44 = [v43 isBounded];

          if (v44)
          {
            [v80 sectionHeight];
            v46 = v45;
            v47 = v40 - 1;
            v48 = -1;
            do
            {
              v49 = v48;
              if (v48 >= 0)
              {
                v50 = v42 - 1;
              }

              else
              {
                v50 = 0;
              }

              v51 = v50 + v47;
              do
              {
                if ((v51 & 0x8000000000000000) != 0 || v51 >= [v30 count])
                {
                  break;
                }

                memset(v91, 0, sizeof(v91));
                v52 = [v30 objectAtIndexedSubscript:v51];
                v53 = v52;
                if (v52)
                {
                  [v52 rowMetrics];
                }

                else
                {
                  memset(v91, 0, sizeof(v91));
                }

                v54 = &v91[1] + 8;
                if (v49 >= 0)
                {
                  v54 = &v91[1];
                }

                v51 += v49;
                v55 = *&v91[0] == 1 ? (v91 + 8) : v54;
                v46 = v46 + *v55;
              }

              while (*&v91[0] == 1);
              v48 = v49 + 2;
              v47 += 2;
            }

            while (v49 < 0);
            v36 = v76;
            v33 = v77;
            v35 = v78;
            if ((v32 - v46) * 0.5 < 45.0)
            {
              do
              {
                v56 = [v30 objectAtIndexedSubscript:v40];
                [v56 setBounded:0];

                ++v40;
                --v42;
              }

              while (v42);
            }
          }
        }

        [v80 sectionSpacing];
        v58 = v57;
        [v80 sectionHeight];
        v60 = v58 + v59;
        [v80 sectionSpacing];
        v37 = v37 + v60 + v61;
        ++v38;
      }

      while (v38 != v35);
      v35 = [v33 countByEnumeratingWithState:&v81 objects:v107 count:16];
    }

    while (v35);
  }

  else
  {
    v37 = 0.0;
  }

  v75->_shouldInvalidateMetrics = ![(NSArray *)v75->_stackRows isEqualToArray:v30];
  v75->_contentHeight = v37;
  v62 = [v33 copy];
  stackSections = v75->_stackSections;
  v75->_stackSections = v62;

  v64 = [v30 copy];
  stackRows = v75->_stackRows;
  v75->_stackRows = v64;

  [(_TVStackTemplateController *)v75 didUpdateSectionInfo];
  [(_TVStackTemplateController *)v75 _configureBackgroundTintView];
}

- (void)_updateFirstItemRowIndexes
{
  [(_TVStackTemplateController *)self _maxViewWidth];
  viewControllers = self->_viewControllers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56___TVStackTemplateController__updateFirstItemRowIndexes__block_invoke;
  v5[3] = &unk_279D6EB58;
  v5[5] = v4;
  v5[4] = self;
  [(NSArray *)viewControllers enumerateObjectsUsingBlock:v5];
}

- (double)_offsetToScrollStop:(id)a3
{
  v4 = a3;
  if ([v4 sectionIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(_TVStackCommonTemplateController *)self collectionView];
    [v5 contentInset];
    v7 = v6;
    v9 = v8;

    if ([v4 edge])
    {
      contentHeight = self->_contentHeight;
    }

    else
    {
      contentHeight = 0.0;
    }

    v19 = [v4 edge];
    v20 = -v9;
    if (!v19)
    {
      v20 = v7;
    }

    v21 = contentHeight - v20;
    [v4 offset];
    v23 = v22 + v21;
  }

  else
  {
    if ([v4 sectionIndex] < 1)
    {
      v12 = 0.0;
    }

    else
    {
      v11 = 0;
      v12 = 0.0;
      do
      {
        v13 = [(NSArray *)self->_stackSections objectAtIndexedSubscript:v11];
        [v13 sectionSpacing];
        v15 = v14;
        [v13 sectionHeight];
        v17 = v15 + v16;
        [v13 sectionSpacing];
        v12 = v12 + v17 + v18;

        ++v11;
      }

      while (v11 < [v4 sectionIndex]);
    }

    v24 = -[NSArray objectAtIndexedSubscript:](self->_stackSections, "objectAtIndexedSubscript:", [v4 sectionIndex]);
    [v24 sectionSpacing];
    v26 = v25;
    if ([v4 edge] == 1)
    {
      [v24 sectionHeight];
      v28 = v27;
      if (v24)
      {
        [v24 compoundRowMetrics];
        v29 = *(&v40 + 1);
      }

      else
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        v29 = 0.0;
      }

      v30 = v28 - v29;
    }

    else if (v24)
    {
      [v24 compoundRowMetrics];
      v30 = *&v35;
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v30 = 0.0;
    }

    v31 = v26 + v30;
    [v4 offset];
    v23 = v12 + v31 + v32;
  }

  return v23;
}

- (void)_configureBackgroundTintView
{
  v2 = self;
  v30 = *MEMORY[0x277D85DE8];
  v3 = 1264;
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
      v23 = 1264;
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
            objc_storeStrong((&v24->super.super.super.super.super.isa + v23), v10);
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

    if (*(&v2->super.super.super.super.super.isa + v3))
    {
      if (v2->_backdropTintView)
      {
        [(_TVStackTemplateController *)v2 _updateBackgroundTintView];
      }

      else
      {
        v15 = objc_alloc(MEMORY[0x277D75D18]);
        v16 = [v15 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        backdropTintView = v2->_backdropTintView;
        v2->_backdropTintView = v16;

        [(UIView *)v2->_backdropTintView setAutoresizingMask:50];
        [(UIView *)v2->_backdropTintView setUserInteractionEnabled:0];
        if ([(_TVStackTemplateController *)v2 isViewLoaded])
        {
          v18 = [(_TVStackCommonTemplateController *)v2 collectionView];
          [v18 insertSubview:v2->_backdropTintView atIndex:0];
        }
      }

      v19 = v2->_backdropTintView;
      v20 = [v11 style];
      v21 = [v20 tv_backgroundColor];
      v22 = [v21 color];

      if (!v22)
      {
        v22 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      }

      [(UIView *)v19 setBackgroundColor:v22];
    }

    else
    {
      [(_TVStackTemplateController *)v2 _updateBackgroundTintView];
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
      v21 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v3];
      v6 = [(_TVStackCommonTemplateController *)self collectionView];
      [v6 frame];
      v8 = v7;
      v10 = v9;

      v11 = [(_TVStackCommonTemplateController *)self collectionView];
      v12 = [v11 layoutAttributesForItemAtIndexPath:v21];

      [v12 frame];
      v14 = v13;
      [(_TVStackTemplateController *)self _maxContentSize];
      [(UIView *)self->_backdropTintView setFrame:v8, v14, v10, fmax(v15 - v14, 0.0)];
      v16 = self->_backdropTintView;
      if (v16)
      {
        v17 = [(_TVStackCommonTemplateController *)self collectionView];
        v18 = [(UIView *)v16 isDescendantOfView:v17];

        if (!v18)
        {
          v19 = [(_TVStackCommonTemplateController *)self collectionView];
          [v19 insertSubview:self->_backdropTintView atIndex:0];
        }
      }

      v20 = [(_TVStackCommonTemplateController *)self collectionView];
      [v20 sendSubviewToBack:self->_backdropTintView];

      [(_TVStackTemplateController *)self _updateBackgroundTintViewEffects];
      backdropTintView = v21;
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
    [(_TVStackTemplateController *)self _maxContentSize];
    v11 = v10;
    [(UIView *)self->_backdropTintView frame];
    v13 = fmax(v11 - v12, 0.0);
    if (v13 > 0.0)
    {
      v14 = [(_TVStackCommonTemplateController *)self collectionView];
      [v14 contentSize];
      v16 = v15;
      v17 = [(_TVStackCommonTemplateController *)self collectionView];
      [v17 bounds];
      v19 = v16 - v18;
      v20 = [(_TVStackCommonTemplateController *)self collectionView];
      [v20 contentInset];
      v22 = v19 - v21;

      v23 = [(_TVStackCommonTemplateController *)self collectionView];
      [v23 contentOffset];
      v25 = v24;

      if (v25 > v22)
      {
        v26 = [(_TVStackCommonTemplateController *)self collectionView];
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
  v3 = [(_TVStackCommonTemplateController *)self collectionView];
  [v3 contentSize];
  v5 = v4;

  v6 = [(_TVStackTemplateController *)self view];
  [v6 bounds];
  v8 = v7;

  if (v5 < v8)
  {
    v5 = v8;
  }

  v9 = [(_TVStackCommonTemplateController *)self collectionView];
  [v9 contentSize];
  v11 = v10;

  v12 = [(_TVStackTemplateController *)self view];
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

@end