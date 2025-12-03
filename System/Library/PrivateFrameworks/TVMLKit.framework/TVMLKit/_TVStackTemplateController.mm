@interface _TVStackTemplateController
- (BOOL)_didExtendContentForPeekMetrics:(id *)metrics above:(BOOL)above initial:(BOOL)initial;
- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGSize)_maxContentSize;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForSectionAtIndex:(int64_t)index;
- (UIEdgeInsets)_scrollableBoundsInset;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (_TVStackTemplateController)init;
- (double)_maxViewWidth;
- (double)_offsetToScrollStop:(id)stop;
- (id)_updateWithCollectionListElement:(id)element commits:(id *)commits autoHighlightIndexPath:(id *)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (id)scrollStopForShowcaseTransition;
- (id)tabBarObservedScrollView;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_adjustedContentOffsetForRowIndex:(int64_t)index targetContentOffset:(CGPoint *)offset;
- (void)_buildStackSections;
- (void)_configureBackgroundTintView;
- (void)_invalidateSectionMetricsIfNeeded;
- (void)_preloadNext;
- (void)_scheduleNextPreloadConditional;
- (void)_scrollToTopAnimated:(BOOL)animated;
- (void)_updateBackgroundTintView;
- (void)_updateBackgroundTintViewEffects;
- (void)_updateFirstItemRowIndexes;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view showcaseFactorDidChangeForLayout:(id)layout;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)didUpdateSupplementarySectionInfo;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setShowcaseInset:(double)inset;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBackgroundAndBackdrop;
- (void)updateBackgroundAndBackdropMaskFactor;
- (void)updateCollectionViewControllersAndForceReload:(BOOL)reload;
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
  viewElement = [(_TVStackCommonTemplateController *)self viewElement];
  appDocument = [viewElement appDocument];
  v5 = [TVTemplateFeaturesManager featuresManagerForAppDocument:appDocument];

  [v5 popContext:self forFeature:&unk_287EA0F28];
  v6.receiver = self;
  v6.super_class = _TVStackTemplateController;
  [(_TVStackCommonTemplateController *)&v6 dealloc];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v28 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v25.receiver = self;
  v25.super_class = _TVStackTemplateController;
  [(_TVStackCommonTemplateController *)&v25 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  v7 = self->_lastFocusedIndexPath;
  nextFocusedView = [contextCopy nextFocusedView];
  collectionView = [(_TVStackCommonTemplateController *)self collectionView];
  v10 = [nextFocusedView isDescendantOfView:collectionView];

  if (v10)
  {
    nextFocusedView2 = [contextCopy nextFocusedView];
    if (nextFocusedView2)
    {
      do
      {
        superview = [nextFocusedView2 superview];
        collectionView2 = [(_TVStackCommonTemplateController *)self collectionView];

        if (superview == collectionView2)
        {
          break;
        }

        superview2 = [nextFocusedView2 superview];

        nextFocusedView2 = superview2;
      }

      while (superview2);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    collectionView3 = [(_TVStackCommonTemplateController *)self collectionView];
    v16 = [collectionView3 indexPathForCell:nextFocusedView2];

    v7 = v16;
    goto LABEL_9;
  }

  focusedSupplementaryViewController = [(_TVStackCommonTemplateController *)self focusedSupplementaryViewController];
  if (focusedSupplementaryViewController)
  {
    collectionView3 = focusedSupplementaryViewController;
    nextFocusedView2 = v7;
    v7 = 0;
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  nextFocusedView3 = [contextCopy nextFocusedView];
  tabBarController = [(_TVStackTemplateController *)self tabBarController];
  tabBar = [tabBarController tabBar];
  v24 = [nextFocusedView3 isDescendantOfView:tabBar];

  if (v24)
  {
    nextFocusedView2 = v7;
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
  collectionView = [(_TVStackCommonTemplateController *)self collectionView];
  v5 = [(_TVNeedsMoreContentEvaluator *)v3 initWithScrollView:collectionView axis:2];
  needsMoreContentEvaluator = self->_needsMoreContentEvaluator;
  self->_needsMoreContentEvaluator = v5;

  v7 = self->_needsMoreContentEvaluator;
  viewElement = [(_TVStackCommonTemplateController *)self viewElement];
  [(_TVNeedsMoreContentEvaluator *)v7 setViewElement:viewElement];

  viewElement2 = [(_TVStackCommonTemplateController *)self viewElement];
  appDocument = [viewElement2 appDocument];
  v11 = [TVTemplateFeaturesManager featuresManagerForAppDocument:appDocument];

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
      section = [(NSIndexPath *)v19 section];
      if (section < [(NSArray *)self->_stackSections count])
      {
        collectionView2 = [(_TVStackCommonTemplateController *)self collectionView];
        [collectionView2 contentOffset];
        *buf = v22;
        *&buf[8] = v23;

        v24 = [(NSArray *)self->_stackSections objectAtIndex:section];
        -[_TVStackTemplateController _adjustedContentOffsetForRowIndex:targetContentOffset:](self, "_adjustedContentOffsetForRowIndex:targetContentOffset:", [v24 firstItemRowIndex], buf);
        collectionView3 = [(_TVStackCommonTemplateController *)self collectionView];
        [collectionView3 contentSize];
        v27 = v26;
        v29 = v28;
        v30 = MEMORY[0x277CBF3A8];
        v31 = *MEMORY[0x277CBF3A8];

        if (v27 == v31 && v29 == *(v30 + 8))
        {
          collectionView4 = [(_TVStackCommonTemplateController *)self collectionView];
          [collectionView4 layoutBelowIfNeeded];
        }

        collectionView5 = [(_TVStackCommonTemplateController *)self collectionView];
        [collectionView5 setContentOffset:*buf];
      }
    }
  }

  if ([(_TVStackCommonTemplateController *)self _isBackdropNeeded])
  {
    stackWrappingView = [(_TVStackCommonTemplateController *)self stackWrappingView];
    [stackWrappingView setBackdropMaskFactor:1.0];
  }
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = _TVStackTemplateController;
  [(_TVStackTemplateController *)&v4 viewWillLayoutSubviews];
  stackWrappingView = [(_TVStackCommonTemplateController *)self stackWrappingView];
  [stackWrappingView setShouldAdjustForTabBarSafeAreaInsets:{-[_TVStackTemplateController shouldAdjustForTabBarSafeAreaInsets](self, "shouldAdjustForTabBarSafeAreaInsets")}];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = _TVStackTemplateController;
  [(_TVBgImageLoadingViewController *)&v14 viewDidLayoutSubviews];
  [(_TVStackTemplateController *)self _invalidateSectionMetricsIfNeeded];
  if ([(NSArray *)self->_stackSections count])
  {
    scrollStopForShowcaseTransition = [(_TVStackTemplateController *)self scrollStopForShowcaseTransition];
    if (scrollStopForShowcaseTransition)
    {
      [(_TVStackTemplateController *)self _offsetToScrollStop:scrollStopForShowcaseTransition];
      v5 = v4;
      collectionView = [(_TVStackCommonTemplateController *)self collectionView];
      [collectionView contentInset];
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

  _flowLayout = [(_TVStackCommonTemplateController *)self _flowLayout];
  [_flowLayout setShowcaseHeight:v8];

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

- (void)traitCollectionDidChange:(id)change
{
  v3.receiver = self;
  v3.super_class = _TVStackTemplateController;
  [(_TVStackCommonTemplateController *)&v3 traitCollectionDidChange:change];
}

- (void)setShowcaseInset:(double)inset
{
  if (self->_showcaseInset != inset)
  {
    self->_showcaseInset = inset;
    if ([(_TVStackTemplateController *)self isViewLoaded])
    {
      [(_TVStackTemplateController *)self didUpdateSupplementarySectionInfo];

      [(_TVStackTemplateController *)self _buildStackSections];
    }
  }
}

- (void)updateCollectionViewControllersAndForceReload:(BOOL)reload
{
  v65 = *MEMORY[0x277D85DE8];
  collectionListElement = [(_TVStackCommonTemplateController *)self collectionListElement];
  if (!reload)
  {
    viewElement = [(_TVStackCommonTemplateController *)self viewElement];
    if ([viewElement updateType])
    {
      updateType = [collectionListElement updateType];

      if (!updateType)
      {
        goto LABEL_55;
      }
    }

    else
    {
    }
  }

  collectionView = [(_TVStackCommonTemplateController *)self collectionView];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__12;
  v62 = __Block_byref_object_dispose__12;
  v63 = 0;
  v49 = [(NSArray *)self->_stackRows count];
  collectionListElement2 = [(_TVStackCommonTemplateController *)self collectionListElement];
  v10 = v59 + 5;
  obj = v59[5];
  v57 = 0;
  v11 = [(_TVStackTemplateController *)self _updateWithCollectionListElement:collectionListElement2 commits:&v57 autoHighlightIndexPath:&obj];
  v12 = v57;
  objc_storeStrong(v10, obj);

  scrollStopForShowcaseTransition = [(_TVStackTemplateController *)self scrollStopForShowcaseTransition];
  self->_requiresShowcasing = scrollStopForShowcaseTransition != 0;

  if (![(_TVStackTemplateController *)self isViewLoaded])
  {
    v12[2](v12);
    objc_storeStrong(&self->_lastFocusedIndexPath, v59[5]);
    view = TVMLKitLogObject;
    if (os_log_type_enabled(view, OS_LOG_TYPE_INFO))
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
      _os_log_impl(&dword_26CD9A000, view, OS_LOG_TYPE_INFO, "LFIP: from auto highlight w/o view: %@", buf, 0xCu);
      if (lastFocusedIndexPath)
      {
      }
    }

    goto LABEL_53;
  }

  attributes = [collectionListElement attributes];
  v15 = [attributes objectForKey:@"animationsEnabled"];

  if (v15)
  {
    attributes2 = [collectionListElement attributes];
    v17 = [attributes2 objectForKey:@"animationsEnabled"];
    bOOLValue = [v17 BOOLValue];

    v19 = bOOLValue ^ 1;
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
          section = [(NSIndexPath *)self->_lastFocusedIndexPath section];
          *buf = 134217984;
          *&buf[4] = section;
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
        section2 = [(NSIndexPath *)self->_lastFocusedIndexPath section];
        if (v29 < 1)
        {
          v32 = 0;
        }

        else
        {
          if (section2 >= v29 - 1)
          {
            v31 = v29 - 1;
          }

          else
          {
            v31 = section2;
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
        section3 = [(NSIndexPath *)v36 section];
        if (section3 < [(NSArray *)self->_stackSections count])
        {
          collectionView2 = [(_TVStackCommonTemplateController *)self collectionView];
          [collectionView2 contentOffset];
          *buf = v39;
          *&buf[8] = v40;

          v41 = [(NSArray *)self->_stackSections objectAtIndex:section3];
          -[_TVStackTemplateController _adjustedContentOffsetForRowIndex:targetContentOffset:](self, "_adjustedContentOffsetForRowIndex:targetContentOffset:", [v41 firstItemRowIndex], buf);
          collectionView3 = [(_TVStackCommonTemplateController *)self collectionView];
          [collectionView3 setContentOffset:*buf];
        }
      }

      self->_shouldInvalidateMetrics = 0;
      [collectionView reloadData];
      goto LABEL_48;
    }
  }

  if (reload || (v19 & 1) != 0 || ![(NSArray *)self->_viewControllers count])
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
  v53 = collectionView;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __76___TVStackTemplateController_updateCollectionViewControllersAndForceReload___block_invoke_3;
  v50[3] = &unk_279D6EBD0;
  v50[4] = self;
  [v53 performBatchUpdates:v51 completion:v50];

LABEL_48:
  collectionView4 = [(_TVStackCommonTemplateController *)self collectionView];
  tv_isFocusOnNonOwnedCell = [collectionView4 tv_isFocusOnNonOwnedCell];

  if ((tv_isFocusOnNonOwnedCell & 1) == 0)
  {
    [(_TVStackTemplateController *)self setNeedsFocusUpdate];
  }

  needsMoreContentEvaluator = self->_needsMoreContentEvaluator;
  viewElement2 = [(_TVStackCommonTemplateController *)self viewElement];
  [(_TVNeedsMoreContentEvaluator *)needsMoreContentEvaluator setViewElement:viewElement2];

  if ([(NSArray *)self->_stackRows count]== v49)
  {
    collectionListElement3 = [(_TVStackCommonTemplateController *)self collectionListElement];
    v48 = [collectionListElement3 updateType] > 2;

    if (!v48)
    {
      goto LABEL_54;
    }
  }

  [(_TVNeedsMoreContentEvaluator *)self->_needsMoreContentEvaluator reset];
  view = [(_TVStackTemplateController *)self view];
  [view setNeedsLayout];
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
          tv_associatedIKViewElement = [v7 tv_associatedIKViewElement];
          style = [tv_associatedIKViewElement style];
          tv_transition = [style tv_transition];
          v11 = [tv_transition isEqualToString:@"dissolve"];

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
  bgImgElement = [(_TVStackCommonTemplateController *)self bgImgElement];
  style = [bgImgElement style];
  tv_imageTreatment = [style tv_imageTreatment];
  if (![tv_imageTreatment isEqualToString:@"blurOverlay"])
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

  stackWrappingView = [(_TVStackCommonTemplateController *)self stackWrappingView];
  mediaPlayer = [(_TVStackCommonTemplateController *)self mediaPlayer];
  isPlaying = [mediaPlayer isPlaying];

  if (isPlaying)
  {
    _blurEffectStyle = 4009;
  }

  else if ([(_TVStackCommonTemplateController *)self _backgroundImageRequiresBlur])
  {
    _blurEffectStyle = 0x8000000000000000;
  }

  else
  {
    _blurEffectStyle = [(_TVStackCommonTemplateController *)self _blurEffectStyle];
  }

  [stackWrappingView setBackdropBlurEffectStyle:_blurEffectStyle];
  [stackWrappingView setBackdropInitialPeek:540.0];
  [stackWrappingView setBackdropPeekGradient:270.0];
}

- (void)updateBackgroundAndBackdropMaskFactor
{
  if (self->_requiresShowcasing)
  {
    [(_TVStackTemplateController *)self showcaseFactor];
    stackWrappingView = [(_TVStackCommonTemplateController *)self stackWrappingView];
    [(_TVStackTemplateController *)self showcaseFactor];
    [stackWrappingView setBackdropMaskFactor:?];
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
  viewElement = [(_TVStackCommonTemplateController *)self viewElement];
  style = [viewElement style];
  v5 = [style edgeFlagForStyle:@"tv-scrollable-bounds-inset"];

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

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  viewControllers = self->_viewControllers;
  viewCopy = view;
  v6 = [(NSArray *)viewControllers count];
  v9.receiver = self;
  v9.super_class = _TVStackTemplateController;
  v7 = [(_TVStackCommonTemplateController *)&v9 numberOfSectionsInCollectionView:viewCopy];

  return v7 + v6;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  if ([(NSArray *)self->_viewControllers count]<= section)
  {
    v9.receiver = self;
    v9.super_class = _TVStackTemplateController;
    v7 = [(_TVStackCommonTemplateController *)&v9 collectionView:viewCopy numberOfItemsInSection:section];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section >= [(NSArray *)self->_viewControllers count])
  {
    v24.receiver = self;
    v24.super_class = _TVStackTemplateController;
    v10 = [(_TVStackCommonTemplateController *)&v24 collectionView:viewCopy cellForItemAtIndexPath:pathCopy];
  }

  else
  {
    collectionView = [(_TVStackCommonTemplateController *)self collectionView];
    v10 = [collectionView dequeueReusableCellWithReuseIdentifier:@"TVStackViewCollectionCellIdentifier" forIndexPath:pathCopy];

    v11 = -[NSArray objectAtIndex:](self->_viewControllers, "objectAtIndex:", [pathCopy section]);
    view = [v11 view];
    [v10 bounds];
    [view setFrame:?];
    tv_associatedIKViewElement = [v11 tv_associatedIKViewElement];
    attributes = [tv_associatedIKViewElement attributes];
    v15 = [attributes objectForKeyedSubscript:@"markBackgroundSegment"];
    bOOLValue = [v15 BOOLValue];

    clearColor = [MEMORY[0x277D75348] clearColor];
    style = [tv_associatedIKViewElement style];
    tv_backgroundColor = [style tv_backgroundColor];

    if (tv_backgroundColor && (bOOLValue & 1) == 0)
    {
      style2 = [tv_associatedIKViewElement style];
      tv_backgroundColor2 = [style2 tv_backgroundColor];
      color = [tv_backgroundColor2 color];

      clearColor = color;
    }

    [v10 setBackgroundColor:clearColor];

    [v10 setViewController:v11];
  }

  return v10;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  v12 = *MEMORY[0x277D85DE8];
  collectionView = [(_TVStackCommonTemplateController *)self collectionView];
  if ([collectionView tv_isFocusOnNonOwnedCell])
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

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v31[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  section = [pathCopy section];
  if (section >= [(NSArray *)self->_viewControllers count])
  {
    v30.receiver = self;
    v30.super_class = _TVStackTemplateController;
    [(_TVStackCommonTemplateController *)&v30 collectionView:viewCopy willDisplayCell:cellCopy forItemAtIndexPath:pathCopy];
  }

  else
  {
    viewController = [cellCopy viewController];
    if (viewController)
    {
      childViewControllers = [(_TVStackTemplateController *)self childViewControllers];
      v14 = [childViewControllers containsObject:viewController];

      if ((v14 & 1) == 0)
      {
        [(_TVStackTemplateController *)self addChildViewController:viewController];
        [(UIViewController *)viewController didMoveToParentViewController:self];
        [(NSMutableArray *)self->_preloadQueue removeObject:viewController];
        if (viewController == self->_backdropTintViewController)
        {
          [(_TVStackTemplateController *)self _updateBackgroundTintView];
        }

        v24 = MEMORY[0x277D85DD0];
        v25 = 3221225472;
        v26 = __80___TVStackTemplateController_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke;
        v27 = &unk_279D6E2F8;
        v28 = viewController;
        v29 = cellCopy;
        dispatch_async(MEMORY[0x277D85CD0], &v24);
      }
    }

    v15 = [(_TVStackCommonTemplateController *)self collectionView:v24];
    collectionViewLayout = [v15 collectionViewLayout];

    v17 = [collectionViewLayout layoutAttributesForItemAtIndexPath:pathCopy];
    [cellCopy frame];
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
      v31[0] = pathCopy;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
      [v22 invalidateItemsAtIndexPaths:v23];

      [collectionViewLayout invalidateLayoutWithContext:v22];
    }
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  section = [pathCopy section];
  if (section >= [(NSArray *)self->_viewControllers count])
  {
    v16.receiver = self;
    v16.super_class = _TVStackTemplateController;
    [(_TVStackCommonTemplateController *)&v16 collectionView:viewCopy willDisplayCell:cellCopy forItemAtIndexPath:pathCopy];
  }

  else
  {
    viewController = [cellCopy viewController];
    if (viewController)
    {
      childViewControllers = [(_TVStackTemplateController *)self childViewControllers];
      if ([childViewControllers containsObject:viewController])
      {
        view = [viewController view];
        v15 = [view isDescendantOfView:cellCopy];

        if (v15)
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

- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  offsetCopy = offset;
  lastFocusedIndexPath = self->_lastFocusedIndexPath;
  if (lastFocusedIndexPath)
  {
    section = [(NSIndexPath *)lastFocusedIndexPath section];
    if (section < [(NSArray *)self->_stackSections count])
    {
      v7 = [(NSArray *)self->_stackSections objectAtIndex:section];
      -[_TVStackTemplateController _adjustedContentOffsetForRowIndex:targetContentOffset:](self, "_adjustedContentOffsetForRowIndex:targetContentOffset:", [v7 firstItemRowIndex], &offsetCopy);
    }

    v8 = self->_lastFocusedIndexPath;
    self->_lastFocusedIndexPath = 0;
  }

  x = offsetCopy.x;
  y = offsetCopy.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForSectionAtIndex:(int64_t)index
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = [(_TVStackTemplateController *)self view:view];
  [v7 bounds];
  v9 = v8;
  v10 = [(NSArray *)self->_stackSections objectAtIndexedSubscript:index];
  [v10 sectionHeight];
  v12 = v11;

  if (self->_requiresShowcasing)
  {
    v13 = [(NSArray *)self->_stackSections objectAtIndexedSubscript:index];
    [v13 showcaseSectionHeight];
    v15 = v14;

    _flowLayout = [(_TVStackCommonTemplateController *)self _flowLayout];
    [_flowLayout showcaseFactor];
    v12 = v15 + (1.0 - v17) * (v12 - v15);
  }

  if (v9 < 0.0 || v12 < 0.0)
  {
    viewControllers = [(_TVStackTemplateController *)self viewControllers];
    v19 = [viewControllers objectAtIndexedSubscript:index];
    tv_associatedIKViewElement = [v19 tv_associatedIKViewElement];

    v21 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_ERROR))
    {
      v24 = v21;
      v25 = [tv_associatedIKViewElement debugDescription];
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

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  layout = [(NSArray *)self->_stackSections objectAtIndexedSubscript:index, layout];
  [layout sectionSpacing];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (self->_requiresShowcasing)
  {
    v16 = [(NSArray *)self->_stackSections objectAtIndexedSubscript:index];
    [v16 showcaseSectionSpacing];
    v18 = v17;
    v20 = v19;

    _flowLayout = [(_TVStackCommonTemplateController *)self _flowLayout];
    [_flowLayout showcaseFactor];
    v9 = v18 + (1.0 - v22) * (v9 - v18);

    _flowLayout2 = [(_TVStackCommonTemplateController *)self _flowLayout];
    [_flowLayout2 showcaseFactor];
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

- (void)collectionView:(id)view showcaseFactorDidChangeForLayout:(id)layout
{
  v5 = [(_TVStackCommonTemplateController *)self _flowLayout:view];
  [v5 showcaseFactor];
  v7 = v6;

  if (self->_showcaseFactor != v7)
  {
    self->_showcaseFactor = v7;
    [(_TVStackTemplateController *)self _scheduleNextPreloadConditional];
    observableEventController = [(_TVStackCommonTemplateController *)self observableEventController];
    [observableEventController dispatchEvent:@"TVShowcaseFactorDidChangeEvent" sender:self withUserInfo:0];

    [(_TVStackTemplateController *)self showcaseFactorDidChange];
  }
}

- (id)tabBarObservedScrollView
{
  stackWrappingView = [(_TVStackCommonTemplateController *)self stackWrappingView];
  stackView = [stackWrappingView stackView];

  return stackView;
}

- (void)scrollViewDidScroll:(id)scroll
{
  v4.receiver = self;
  v4.super_class = _TVStackTemplateController;
  [(_TVStackCommonTemplateController *)&v4 scrollViewDidScroll:scroll];
  [(_TVNeedsMoreContentEvaluator *)self->_needsMoreContentEvaluator evaluateForState:2];
  [(_TVStackTemplateController *)self _updateBackgroundTintViewEffects];
}

- (void)_scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v17 = *MEMORY[0x277D85DE8];
  collectionView = [(_TVStackCommonTemplateController *)self collectionView];
  [collectionView contentInset];
  [collectionView setContentOffset:animatedCopy animated:{0.0, -v6}];
  _flowLayout = [(_TVStackCommonTemplateController *)self _flowLayout];
  [collectionView bounds];
  v8 = [_flowLayout invalidationContextForBoundsChange:?];
  [_flowLayout invalidateLayoutWithContext:v8];

  if ([collectionView numberOfSections] < 1 || objc_msgSend(collectionView, "numberOfItemsInSection:", 0) < 1)
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

- (id)_updateWithCollectionListElement:(id)element commits:(id *)commits autoHighlightIndexPath:(id *)path
{
  v113 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  selfCopy = self;
  v71 = self->_unfilteredViewControllers;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  unfilteredChildrenChangeSet = [elementCopy unfilteredChildrenChangeSet];
  if (unfilteredChildrenChangeSet && v71)
  {
    [array addObjectsFromArray:v71];
    removedIndexes = [unfilteredChildrenChangeSet removedIndexes];
    v9 = [removedIndexes mutableCopy];
    v10 = v9;
    if (v9)
    {
      indexSet = v9;
    }

    else
    {
      indexSet = [MEMORY[0x277CCAB58] indexSet];
    }

    v21 = indexSet;

    v74 = v21;
    v69 = [array objectsAtIndexes:v21];
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    movedIndexesByNewIndex = [unfilteredChildrenChangeSet movedIndexesByNewIndex];
    allValues = [movedIndexesByNewIndex allValues];

    v24 = [allValues countByEnumeratingWithState:&v105 objects:v112 count:16];
    if (v24)
    {
      v25 = *v106;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v106 != v25)
          {
            objc_enumerationMutation(allValues);
          }

          [v74 addIndex:{objc_msgSend(*(*(&v105 + 1) + 8 * i), "integerValue")}];
        }

        v24 = [allValues countByEnumeratingWithState:&v105 objects:v112 count:16];
      }

      while (v24);
    }

    [array removeObjectsAtIndexes:v74];
    addedIndexes = [unfilteredChildrenChangeSet addedIndexes];
    v28 = [addedIndexes mutableCopy];
    v29 = v28;
    if (v28)
    {
      indexSet2 = v28;
    }

    else
    {
      indexSet2 = [MEMORY[0x277CCAB58] indexSet];
    }

    v31 = indexSet2;

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    movedIndexesByNewIndex2 = [unfilteredChildrenChangeSet movedIndexesByNewIndex];
    allKeys = [movedIndexesByNewIndex2 allKeys];

    v34 = [allKeys countByEnumeratingWithState:&v101 objects:v111 count:16];
    if (v34)
    {
      v35 = *v102;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v102 != v35)
          {
            objc_enumerationMutation(allKeys);
          }

          [v31 addIndex:{objc_msgSend(*(*(&v101 + 1) + 8 * j), "integerValue")}];
        }

        v34 = [allKeys countByEnumeratingWithState:&v101 objects:v111 count:16];
      }

      while (v34);
    }

    array3 = [MEMORY[0x277CBEB18] array];
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __94___TVStackTemplateController__updateWithCollectionListElement_commits_autoHighlightIndexPath___block_invoke_2;
    v93[3] = &unk_279D71700;
    v38 = elementCopy;
    v94 = v38;
    v39 = unfilteredChildrenChangeSet;
    v95 = v39;
    v66 = array3;
    v96 = v66;
    v100 = &__block_literal_global_47;
    v97 = v71;
    v98 = selfCopy;
    v70 = array2;
    v99 = v70;
    [v31 enumerateIndexesUsingBlock:v93];
    [array insertObjects:v66 atIndexes:v31];
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    updatedIndexesByNewIndex = [v39 updatedIndexesByNewIndex];
    allKeys2 = [updatedIndexesByNewIndex allKeys];

    v42 = [allKeys2 countByEnumeratingWithState:&v89 objects:v110 count:16];
    if (v42)
    {
      v43 = *v90;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v90 != v43)
          {
            objc_enumerationMutation(allKeys2);
          }

          integerValue = [*(*(&v89 + 1) + 8 * k) integerValue];
          unfilteredChildren = [v38 unfilteredChildren];
          v47 = [unfilteredChildren objectAtIndexedSubscript:integerValue];

          v48 = [array objectAtIndexedSubscript:integerValue];
          v49 = __94___TVStackTemplateController__updateWithCollectionListElement_commits_autoHighlightIndexPath___block_invoke(v48, v47);
          v50 = [(_TVStackCommonTemplateController *)selfCopy viewControllerWithElement:v47 layout:v49 existingController:v48];
        }

        v42 = [allKeys2 countByEnumeratingWithState:&v89 objects:v110 count:16];
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
    unfilteredChildren2 = [elementCopy unfilteredChildren];
    v13 = [unfilteredChildren2 countByEnumeratingWithState:&v85 objects:v109 count:16];
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
            objc_enumerationMutation(unfilteredChildren2);
          }

          v17 = *(*(&v85 + 1) + 8 * v16);
          v18 = __94___TVStackTemplateController__updateWithCollectionListElement_commits_autoHighlightIndexPath___block_invoke(v13, v17);
          v19 = [(_TVStackCommonTemplateController *)selfCopy viewControllerWithElement:v17 layout:v18 existingController:0];
          if (v19)
          {
            [array addObject:v19];
          }

          else
          {
            v20 = objc_opt_new();
            [array addObject:v20];
          }

          ++v16;
        }

        while (v14 != v16);
        v13 = [unfilteredChildren2 countByEnumeratingWithState:&v85 objects:v109 count:16];
        v14 = v13;
      }

      while (v13);
    }

    v70 = array;
    v69 = v71;
  }

  viewElement = [(_TVStackCommonTemplateController *)selfCopy viewElement];
  attributes = [viewElement attributes];
  v53 = [attributes objectForKeyedSubscript:@"preloading"];

  if (v53 && ![v53 BOOLValue])
  {
    [(NSMutableArray *)selfCopy->_preloadQueue removeAllObjects];
  }

  else
  {
    if (!selfCopy->_preloadQueue)
    {
      array4 = [MEMORY[0x277CBEB18] array];
      preloadQueue = selfCopy->_preloadQueue;
      selfCopy->_preloadQueue = array4;
    }

    if ([(NSArray *)v69 count])
    {
      [(NSMutableArray *)selfCopy->_preloadQueue removeObjectsInArray:v69];
    }

    v56 = [v70 indexesOfObjectsPassingTest:&__block_literal_global_126];
    v57 = selfCopy->_preloadQueue;
    v58 = [v70 objectsAtIndexes:v56];
    [(NSMutableArray *)v57 addObjectsFromArray:v58];
  }

  [(_TVStackTemplateController *)selfCopy _scheduleNextPreloadConditional];
  if (path)
  {
    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 0x7FFFFFFFFFFFFFFFLL;
    unfilteredChildren3 = [elementCopy unfilteredChildren];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __94___TVStackTemplateController__updateWithCollectionListElement_commits_autoHighlightIndexPath___block_invoke_4;
    v80[3] = &unk_279D71748;
    v80[4] = &v81;
    [unfilteredChildren3 enumerateObjectsUsingBlock:v80];

    if (v82[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      *path = 0;
    }

    else
    {
      v60 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:?];
      *path = v60;
    }

    _Block_object_dispose(&v81, 8);
  }

  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __94___TVStackTemplateController__updateWithCollectionListElement_commits_autoHighlightIndexPath___block_invoke_5;
  v76[3] = &unk_279D6F5D0;
  v77 = v69;
  v78 = selfCopy;
  v79 = array;
  v61 = array;
  v62 = v69;
  *commits = MEMORY[0x26D6AFBB0](v76);
  v63 = v79;
  v64 = unfilteredChildrenChangeSet;

  return unfilteredChildrenChangeSet;
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
  firstObject = [(NSMutableArray *)self->_preloadQueue firstObject];
  if (firstObject)
  {
    v10 = firstObject;
    [(NSMutableArray *)self->_preloadQueue removeObjectAtIndex:0];
    viewElement = [(_TVStackCommonTemplateController *)self viewElement];
    appDocument = [viewElement appDocument];
    [appDocument tv_adjustedWindowSize];
    v7 = v6;
    v9 = v8;

    [v10 preloadCellsInRect:{0.0, 0.0, v7, v9}];
    [(_TVStackTemplateController *)self _scheduleNextPreloadConditional];
    firstObject = v10;
  }
}

- (void)_adjustedContentOffsetForRowIndex:(int64_t)index targetContentOffset:(CGPoint *)offset
{
  v7 = [(NSArray *)self->_stackRows objectAtIndexedSubscript:?];
  collectionView = [(_TVStackCommonTemplateController *)self collectionView];
  tv_isFocusOnNonOwnedCell = [collectionView tv_isFocusOnNonOwnedCell];

  if (tv_isFocusOnNonOwnedCell)
  {
    goto LABEL_84;
  }

  collectionView2 = [(_TVStackCommonTemplateController *)self collectionView];
  [collectionView2 bounds];
  v92 = v11;
  [collectionView2 contentInset];
  v13 = v12;
  v15 = v14;
  collectionView3 = [(_TVStackCommonTemplateController *)self collectionView];
  [collectionView3 contentOffset];
  v18 = v17;

  contentHeight = self->_contentHeight;
  x = offset->x;
  y = offset->y;
  offsetCopy = offset;
  v22 = index - 1;
  if (index < 1)
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

    while (index != v23);
  }

  v28 = [(NSArray *)self->_stackRows objectAtIndexedSubscript:index];
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
      if ([v33 firstRowIndex] <= index)
      {
        firstRowIndex = [v33 firstRowIndex];
        if ([v33 rowCount] + firstRowIndex > index)
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
      v36 = [v33 firstRowIndex] != index;
      firstRowIndex2 = [v33 firstRowIndex];
      v88 = firstRowIndex2 + [v33 rowCount] - 1 != index;
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
    *(&v130 + 1) = index;
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
    *(&v130 + 1) = index;
    v131 = 1;
  }

  v41 = 0;
  v42 = fmax(v90, v38);
  v43 = v24 + v40 + v39 * 0.5;
  v44 = v43 - v18;
  v45 = v92 * 0.5;
  v85 = v43 - v18 < v92 * 0.5;
  v46 = offsetCopy->y;
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
      scrollStopForShowcaseTransition = 0;
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
  scrollStopForShowcaseTransition = [(_TVStackTemplateController *)self scrollStopForEnteringSectionAtIndex:v32 fromEdge:v54];
LABEL_47:
  v55 = v35;
  if (scrollStopForShowcaseTransition == 0 && v41)
  {
    v56 = [(NSArray *)self->_stackSections objectAtIndexedSubscript:v32];
    if ([v56 firstRowIndex] != index)
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

    scrollStopForShowcaseTransition = [(_TVStackTemplateController *)self scrollStopForShowcaseTransition];
  }

  if (scrollStopForShowcaseTransition)
  {
    [(_TVStackTemplateController *)self _offsetToScrollStop:scrollStopForShowcaseTransition];
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
    v64 = offsetCopy;
    goto LABEL_73;
  }

  v64 = offsetCopy;
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
  viewElement = [(_TVStackCommonTemplateController *)self viewElement];
  style = [viewElement style];
  if (([style edgeFlagForStyle:@"tv-scrollable-bounds-inset"] & 1) != 0 && v55 < v92 - v89)
  {

    if (v92 - v89 + -45.0 >= v24 + v87)
    {
      v55 = v90;
    }
  }

  else
  {
  }

  viewElement2 = [(_TVStackCommonTemplateController *)self viewElement];
  style2 = [viewElement2 style];
  if (([style2 edgeFlagForStyle:@"tv-scrollable-bounds-inset"] & 4) != 0 && v92 + v55 > v92 + v47 - v70)
  {

    v75 = collectionView2;
    if (v47 + 45.0 <= v24)
    {
      v55 = v47;
    }
  }

  else
  {

    v75 = collectionView2;
  }

  v64->x = v53;
  v64->y = v55;

LABEL_84:
}

- (UIEdgeInsets)_scrollableBoundsInset
{
  viewElement = [(_TVStackCommonTemplateController *)self viewElement];
  style = [viewElement style];
  [style tv_scrollableBoundsInset];
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

- (BOOL)_didExtendContentForPeekMetrics:(id *)metrics above:(BOOL)above initial:(BOOL)initial
{
  initialCopy = initial;
  aboveCopy = above;
  if (above)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  location = metrics->var3.location;
  if (!above)
  {
    location = location + metrics->var3.length - 1;
  }

  v10 = [(NSArray *)self->_stackRows objectAtIndexedSubscript:location];
  v11 = v10;
  v12 = 0.0;
  if (!initialCopy)
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

      v18 = metrics->var3.location;
      if (aboveCopy)
      {
        v19 = v15 + v18 + metrics->var3.length;
        metrics->var3.location = v14;
      }

      else
      {
        v19 = v14 - v18 + 1;
      }

      metrics->var3.length = v19;
      if (!initialCopy || ![v11 isBounded] || (v20 = objc_msgSend(v11, "sectionIndex"), v20 != objc_msgSend(v17, "sectionIndex")))
      {
        metrics->var2 = metrics->var2 + v12 + 0.0;
        v21 = 8;
        if (aboveCopy)
        {
          v21 = 0;
        }

        *(&metrics->var0 + v21) = 0.0 - (0.0 + 0.0);

        v13 = 1;
        break;
      }

      metrics->var2 = metrics->var2 + v12 + 0.0;
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
  viewElement = [(_TVStackCommonTemplateController *)self viewElement];
  appDocument = [viewElement appDocument];
  [appDocument tv_adjustedWindowSize];
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
    collectionView = [(_TVStackCommonTemplateController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayoutWithContext:v6];

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
  indexSet = [MEMORY[0x277CCAB58] indexSet];
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
  v18 = indexSet;
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
  selfCopy = self;
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
  selfCopy2 = self;
  v68 = v25;
  v89 = v68;
  v67 = v27;
  v90 = v67;
  [(NSArray *)v28 enumerateObjectsUsingBlock:v85];
  collectionView = [(_TVStackCommonTemplateController *)self collectionView];
  [collectionView bounds];
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
        firstRowIndex = [v39 firstRowIndex];
        v80 = v39;
        rowCount = [v39 rowCount];
        if (rowCount >= 2)
        {
          v42 = rowCount;
          v43 = [v30 objectAtIndexedSubscript:firstRowIndex];
          isBounded = [v43 isBounded];

          if (isBounded)
          {
            [v80 sectionHeight];
            v46 = v45;
            v47 = firstRowIndex - 1;
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
                v56 = [v30 objectAtIndexedSubscript:firstRowIndex];
                [v56 setBounded:0];

                ++firstRowIndex;
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

  selfCopy->_shouldInvalidateMetrics = ![(NSArray *)selfCopy->_stackRows isEqualToArray:v30];
  selfCopy->_contentHeight = v37;
  v62 = [v33 copy];
  stackSections = selfCopy->_stackSections;
  selfCopy->_stackSections = v62;

  v64 = [v30 copy];
  stackRows = selfCopy->_stackRows;
  selfCopy->_stackRows = v64;

  [(_TVStackTemplateController *)selfCopy didUpdateSectionInfo];
  [(_TVStackTemplateController *)selfCopy _configureBackgroundTintView];
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

- (double)_offsetToScrollStop:(id)stop
{
  stopCopy = stop;
  if ([stopCopy sectionIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    collectionView = [(_TVStackCommonTemplateController *)self collectionView];
    [collectionView contentInset];
    v7 = v6;
    v9 = v8;

    if ([stopCopy edge])
    {
      contentHeight = self->_contentHeight;
    }

    else
    {
      contentHeight = 0.0;
    }

    edge = [stopCopy edge];
    v20 = -v9;
    if (!edge)
    {
      v20 = v7;
    }

    v21 = contentHeight - v20;
    [stopCopy offset];
    v23 = v22 + v21;
  }

  else
  {
    if ([stopCopy sectionIndex] < 1)
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

      while (v11 < [stopCopy sectionIndex]);
    }

    v24 = -[NSArray objectAtIndexedSubscript:](self->_stackSections, "objectAtIndexedSubscript:", [stopCopy sectionIndex]);
    [v24 sectionSpacing];
    v26 = v25;
    if ([stopCopy edge] == 1)
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
    [stopCopy offset];
    v23 = v12 + v31 + v32;
  }

  return v23;
}

- (void)_configureBackgroundTintView
{
  selfCopy = self;
  v30 = *MEMORY[0x277D85DE8];
  v3 = 1264;
  backdropTintViewController = self->_backdropTintViewController;
  self->_backdropTintViewController = 0;

  if ([(NSArray *)selfCopy->_viewControllers count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = selfCopy->_viewControllers;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v23 = 1264;
      v24 = selfCopy;
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
          tv_associatedIKViewElement = [v10 tv_associatedIKViewElement];
          attributes = [tv_associatedIKViewElement attributes];
          v13 = [attributes objectForKeyedSubscript:@"markBackgroundSegment"];
          bOOLValue = [v13 BOOLValue];

          if (bOOLValue)
          {
            v3 = v23;
            selfCopy = v24;
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

      tv_associatedIKViewElement = 0;
      v3 = v23;
      selfCopy = v24;
    }

    else
    {
      tv_associatedIKViewElement = 0;
    }

LABEL_13:

    if (*(&selfCopy->super.super.super.super.super.isa + v3))
    {
      if (selfCopy->_backdropTintView)
      {
        [(_TVStackTemplateController *)selfCopy _updateBackgroundTintView];
      }

      else
      {
        v15 = objc_alloc(MEMORY[0x277D75D18]);
        v16 = [v15 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        backdropTintView = selfCopy->_backdropTintView;
        selfCopy->_backdropTintView = v16;

        [(UIView *)selfCopy->_backdropTintView setAutoresizingMask:50];
        [(UIView *)selfCopy->_backdropTintView setUserInteractionEnabled:0];
        if ([(_TVStackTemplateController *)selfCopy isViewLoaded])
        {
          collectionView = [(_TVStackCommonTemplateController *)selfCopy collectionView];
          [collectionView insertSubview:selfCopy->_backdropTintView atIndex:0];
        }
      }

      v19 = selfCopy->_backdropTintView;
      style = [tv_associatedIKViewElement style];
      tv_backgroundColor = [style tv_backgroundColor];
      color = [tv_backgroundColor color];

      if (!color)
      {
        color = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      }

      [(UIView *)v19 setBackgroundColor:color];
    }

    else
    {
      [(_TVStackTemplateController *)selfCopy _updateBackgroundTintView];
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
      collectionView = [(_TVStackCommonTemplateController *)self collectionView];
      [collectionView frame];
      v8 = v7;
      v10 = v9;

      collectionView2 = [(_TVStackCommonTemplateController *)self collectionView];
      v12 = [collectionView2 layoutAttributesForItemAtIndexPath:v21];

      [v12 frame];
      v14 = v13;
      [(_TVStackTemplateController *)self _maxContentSize];
      [(UIView *)self->_backdropTintView setFrame:v8, v14, v10, fmax(v15 - v14, 0.0)];
      v16 = self->_backdropTintView;
      if (v16)
      {
        collectionView3 = [(_TVStackCommonTemplateController *)self collectionView];
        v18 = [(UIView *)v16 isDescendantOfView:collectionView3];

        if (!v18)
        {
          collectionView4 = [(_TVStackCommonTemplateController *)self collectionView];
          [collectionView4 insertSubview:self->_backdropTintView atIndex:0];
        }
      }

      collectionView5 = [(_TVStackCommonTemplateController *)self collectionView];
      [collectionView5 sendSubviewToBack:self->_backdropTintView];

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
      collectionView = [(_TVStackCommonTemplateController *)self collectionView];
      [collectionView contentSize];
      v16 = v15;
      collectionView2 = [(_TVStackCommonTemplateController *)self collectionView];
      [collectionView2 bounds];
      v19 = v16 - v18;
      collectionView3 = [(_TVStackCommonTemplateController *)self collectionView];
      [collectionView3 contentInset];
      v22 = v19 - v21;

      collectionView4 = [(_TVStackCommonTemplateController *)self collectionView];
      [collectionView4 contentOffset];
      v25 = v24;

      if (v25 > v22)
      {
        collectionView5 = [(_TVStackCommonTemplateController *)self collectionView];
        [collectionView5 contentOffset];
        v13 = v13 + v27 - v22;
      }
    }

    v28 = self->_backdropTintView;

    [(UIView *)v28 setFrame:v5, v7, v9, v13];
  }
}

- (CGSize)_maxContentSize
{
  collectionView = [(_TVStackCommonTemplateController *)self collectionView];
  [collectionView contentSize];
  v5 = v4;

  view = [(_TVStackTemplateController *)self view];
  [view bounds];
  v8 = v7;

  if (v5 < v8)
  {
    v5 = v8;
  }

  collectionView2 = [(_TVStackCommonTemplateController *)self collectionView];
  [collectionView2 contentSize];
  v11 = v10;

  view2 = [(_TVStackTemplateController *)self view];
  [view2 bounds];
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