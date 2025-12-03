@interface SearchUICollectionViewController
- (BOOL)canHighlightRowAtIndexPath:(id)path;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)doesIndexPathExist:(id)exist;
- (BOOL)forwardFeedbackForSelector:(SEL)selector;
- (BOOL)isActiveRunningShortcutForIndexPath:(id)path;
- (BOOL)isEntitySearch;
- (BOOL)isExpandedForSectionModel:(id)model;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)threeDTouchEnabled;
- (CGRect)lastVisibleBounds;
- (CGRect)scrollToIndexPath:(id)path;
- (NSIndexPath)focusedIndexPath;
- (SearchUICardViewDelegate)cardViewDelegate;
- (SearchUICollectionViewController)init;
- (SearchUICollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SearchUICommandDelegate)commandDelegate;
- (SearchUICommandEnvironment)commandEnvironment;
- (SearchUICustomViewProvider)customViewProvider;
- (SearchUIFeedbackDelegate)feedbackListener;
- (SearchUIResultsViewDelegate)resultsViewDelegate;
- (SearchUISizingDelegate)sizingDelegate;
- (id)cellForRowModel:(id)model atIndexPath:(id)path;
- (id)commandEnvironmentForIndexPath:(id)path;
- (id)currentSnapshotLayoutConfiguration;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)indexPathForFocusView:(id)view;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (id)preferredFocusSystem;
- (id)restorationContext;
- (id)viewForRowModel:(id)model;
- (id)visibleViewsInPotentiallyVisibleViews:(id)views withinRegion:(CGRect)region;
- (int64_t)numberOfSections;
- (void)_collectionView:(id)view orthogonalScrollViewDidScroll:(id)scroll section:(int64_t)section;
- (void)addOrbInteractionIfNeeded;
- (void)cardSectionViewDidInvalidateSize:(id)size animate:(BOOL)animate;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)contentSizeDidChange:(CGSize)change;
- (void)copy:(id)copy;
- (void)deselectSelectedRowsIfNeeded;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)didUpdateKeyboardFocusToResult:(id)result cardSection:(id)section;
- (void)invalidateLayout;
- (void)invalidateLayoutForIndexPath:(id)path;
- (void)iterateIndexPaths:(id)paths;
- (void)lockupViewEngagedForAppIdentifier:(id)identifier;
- (void)lockupViewForAppIdentifier:(id)identifier didChangeState:(id)state;
- (void)lockupViewForAppIdentifier:(id)identifier didFailRequestWithError:(id)error;
- (void)performExpansion:(BOOL)expansion withSection:(id)section;
- (void)performRecapScrollTestWithTestName:(id)name completion:(id)completion;
- (void)performScrollTestWithHandlerForFirstScrollCompletion:(id)completion completion:(id)a4;
- (void)purgeMemory;
- (void)removeRowModel:(id)model completion:(id)completion;
- (void)removeSectionContainingRowModel:(id)model completion:(id)completion;
- (void)removeSectionModel:(id)model completion:(id)completion;
- (void)resetVisibleFeedback;
- (void)resignTextField;
- (void)scrollAndFocusAtIndexPath:(id)path;
- (void)scrollAndSelectLastSelectedIndexPath;
- (void)scrollRowModelToVisible:(id)visible;
- (void)scrollViewDidScroll:(id)scroll;
- (void)sendVisibleFeedbackIfNecessary;
- (void)setAdjacentSeparatorVisibility:(BOOL)visibility indexPath:(id)path;
- (void)setCommandDelegate:(id)delegate;
- (void)setFocusableIndexPath:(id)path;
- (void)setFooterView:(id)view;
- (void)setInPreviewPlatter:(BOOL)platter;
- (void)setRestorationContext:(id)context;
- (void)setSectionBackgroundHighlighted:(BOOL)highlighted indexPath:(id)path;
- (void)setShouldUseInsetRoundedSections:(BOOL)sections;
- (void)setShouldUseStandardSectionInsets:(BOOL)insets;
- (void)setTableModel:(id)model animated:(BOOL)animated completion:(id)completion;
- (void)setThreeDTouchEnabled:(BOOL)enabled;
- (void)shortcutDidEnd:(id)end;
- (void)skipDown;
- (void)skipUp;
- (void)tapAtIndexPath:(id)path;
- (void)toggleExpansionForSectionModel:(id)model;
- (void)toggleShowMoreForSection:(unint64_t)section;
- (void)updateContentScrolledOffScreenStatus;
- (void)updateTableForNewCellHeightAnimated:(BOOL)animated;
- (void)updateViewControllerTitle:(id)title;
- (void)updateWithCardSection:(id)section;
- (void)updateWithResultSections:(id)sections;
- (void)updateWithSnapshot:(id)snapshot animated:(BOOL)animated completion:(id)completion;
- (void)updateWithTableModel:(id)model;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SearchUICollectionViewController

- (SearchUICollectionViewController)init
{
  v36.receiver = self;
  v36.super_class = SearchUICollectionViewController;
  v2 = [(SearchUIKeyboardableCollectionViewController *)&v36 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [v3 setContentInsetsReference:2];
    objc_initWeak(&location, v2);
    v4 = [SearchUICollectionViewLayout alloc];
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __40__SearchUICollectionViewController_init__block_invoke;
    v33 = &unk_1E85B2630;
    objc_copyWeak(&v34, &location);
    v5 = [(SearchUICollectionViewLayout *)v4 initWithSectionProvider:&v30 configuration:v3];
    [(SearchUICollectionViewLayout *)v5 setSizingDelegate:v2, v30, v31, v32, v33];
    v6 = [SearchUICollectionView alloc];
    v7 = [(SearchUICollectionView *)v6 initWithFrame:v5 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(SearchUIKeyboardableCollectionViewController *)v2 setCollectionView:v7];
    collectionView = [(SearchUICollectionViewController *)v2 collectionView];
    [collectionView setBackgroundColor:0];

    collectionView2 = [(SearchUICollectionViewController *)v2 collectionView];
    [collectionView2 _setShouldBecomeFocusedOnSelection:1];

    collectionView3 = [(SearchUICollectionViewController *)v2 collectionView];
    [collectionView3 _setDelaysUserInitiatedItemSelection:1];

    v11 = [[SearchUICollectionViewDataSource alloc] initWithController:v2];
    [(SearchUICollectionViewController *)v2 setDataSource:v11];

    dataSource = [(SearchUICollectionViewController *)v2 dataSource];
    collectionView4 = [(SearchUICollectionViewController *)v2 collectionView];
    [collectionView4 setDataSource:dataSource];

    collectionView5 = [(SearchUICollectionViewController *)v2 collectionView];
    [collectionView5 setContentInsetAdjustmentBehavior:1];

    collectionView6 = [(SearchUICollectionViewController *)v2 collectionView];
    [collectionView6 _setAutomaticContentOffsetAdjustmentEnabled:0];

    if (_UISolariumEnabled() && [MEMORY[0x1E69D9240] isSpotlightApp] && objc_msgSend(MEMORY[0x1E69D9240], "isIpad"))
    {
      collectionView7 = [(SearchUICollectionViewController *)v2 collectionView];
      [collectionView7 _setHiddenPocketEdges:15];
    }

    [(SearchUICollectionViewController *)v2 addOrbInteractionIfNeeded];
    v17 = objc_opt_new();
    [(SearchUICollectionViewController *)v2 setPotentiallyVisibleCells:v17];

    v18 = objc_opt_new();
    [(SearchUICollectionViewController *)v2 setPotentiallyVisibleHeaders:v18];

    v19 = MEMORY[0x1E69D9108];
    view = [(SearchUICollectionViewController *)v2 view];
    v21 = [v19 bestAppearanceForView:view];
    searchUIAttributes = [(SearchUICollectionViewController *)v2 searchUIAttributes];
    [searchUIAttributes setAppearance:v21];

    [(SearchUICollectionViewController *)v2 setIsVisibleFeedbackEnabled:1];
    view2 = [(SearchUICollectionViewController *)v2 view];
    layer = [view2 layer];
    [layer setAllowsGroupOpacity:0];

    v25 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0x100000 action:sel_skipDown];
    [v25 setWantsPriorityOverSystemBehavior:1];
    [(SearchUICollectionViewController *)v2 addKeyCommand:v25];
    v26 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0x100000 action:sel_skipUp];
    [v26 setWantsPriorityOverSystemBehavior:1];
    [(SearchUICollectionViewController *)v2 addKeyCommand:v26];
    v27 = objc_opt_new();
    [(SearchUICollectionViewController *)v2 setExpandedCollectionSections:v27];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_deselectSelectedRowsIfNeeded name:*MEMORY[0x1E69DDAB0] object:0];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (SearchUICommandEnvironment)commandEnvironment
{
  v3 = objc_opt_new();
  [v3 setFeedbackDelegate:self];
  [v3 setShouldUseInsetRoundedSections:{-[SearchUICollectionViewController shouldUseInsetRoundedSections](self, "shouldUseInsetRoundedSections")}];
  resultsViewDelegate = [(SearchUICollectionViewController *)self resultsViewDelegate];
  [v3 setResultsViewDelegate:resultsViewDelegate];

  [v3 setShouldUseStandardSectionInsets:{-[SearchUICollectionViewController shouldUseStandardSectionInsets](self, "shouldUseStandardSectionInsets")}];
  [v3 setPresentingViewController:self];
  [v3 setSelectableGridPunchoutIndex:{-[SearchUICollectionViewController preferredPunchoutIndex](self, "preferredPunchoutIndex")}];
  [v3 setThreeDTouchEnabled:{-[SearchUICollectionViewController threeDTouchEnabled](self, "threeDTouchEnabled")}];
  commandDelegate = [(SearchUICollectionViewController *)self commandDelegate];
  [v3 setCommandDelegate:commandDelegate];

  [v3 setRowModelViewDelegate:self];
  cardViewDelegate = [(SearchUICollectionViewController *)self cardViewDelegate];
  [v3 setCardViewDelegate:cardViewDelegate];

  searchUIAttributes = [(SearchUICollectionViewController *)self searchUIAttributes];
  [searchUIAttributes setCommandEnvironment:v3];

  return v3;
}

- (SearchUIResultsViewDelegate)resultsViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resultsViewDelegate);

  return WeakRetained;
}

- (BOOL)threeDTouchEnabled
{
  contextInteraction = [(SearchUICollectionViewController *)self contextInteraction];
  v3 = contextInteraction != 0;

  return v3;
}

- (SearchUICommandDelegate)commandDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_commandDelegate);

  return WeakRetained;
}

- (SearchUICardViewDelegate)cardViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cardViewDelegate);

  return WeakRetained;
}

- (id)currentSnapshotLayoutConfiguration
{
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  currentSnapshotLayoutConfiguration = [dataSource currentSnapshotLayoutConfiguration];

  return currentSnapshotLayoutConfiguration;
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = SearchUICollectionViewController;
  [(SearchUICollectionViewController *)&v18 viewDidLayoutSubviews];
  view = [(SearchUICollectionViewController *)self view];
  [view visibleBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SearchUICollectionViewController *)self lastVisibleBounds];
  v20.origin.x = v12;
  v20.origin.y = v13;
  v20.size.width = v14;
  v20.size.height = v15;
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  if (!CGRectEqualToRect(v19, v20))
  {
    [(SearchUICollectionViewController *)self setLastVisibleBounds:v5, v7, v9, v11];
    latestVisibleCardSectionsAccountedForInFeedback = [(SearchUICollectionViewController *)self latestVisibleCardSectionsAccountedForInFeedback];
    v17 = [latestVisibleCardSectionsAccountedForInFeedback count];

    if (v17)
    {
      [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:9];
    }
  }

  [(SearchUICollectionViewController *)self sendVisibleFeedbackIfNecessary];
}

- (CGRect)lastVisibleBounds
{
  x = self->_lastVisibleBounds.origin.x;
  y = self->_lastVisibleBounds.origin.y;
  width = self->_lastVisibleBounds.size.width;
  height = self->_lastVisibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)sendVisibleFeedbackIfNecessary
{
  selfCopy = self;
  v83 = *MEMORY[0x1E69E9840];
  if ([(SearchUICollectionViewController *)self isVisibleFeedbackEnabled])
  {
    if ([(SearchUICollectionViewController *)selfCopy _appearState]!= 3)
    {
      if ([(SearchUICollectionViewController *)selfCopy _appearState])
      {
        dataSource = [(SearchUICollectionViewController *)selfCopy dataSource];
        snapshot = [dataSource snapshot];
        numberOfSections = [snapshot numberOfSections];

        if (numberOfSections >= 1)
        {
          collectionView = [(SearchUICollectionViewController *)selfCopy collectionView];
          [collectionView visibleBounds];
          v8 = v7;
          v10 = v9;
          v12 = v11;
          v14 = v13;

          view = [(SearchUICollectionViewController *)selfCopy view];
          [view safeAreaInsets];
          v17 = v16;

          v18 = v10 + v17;
          [(SearchUIKeyboardableCollectionViewController *)selfCopy currentKeyboardHeight];
          v20 = v14 - (v17 + v19);
          tableModel = [(SearchUICollectionViewController *)selfCopy tableModel];
          queryId = [tableModel queryId];

          feedbackListener = [(SearchUICollectionViewController *)selfCopy feedbackListener];
          if (objc_opt_respondsToSelector())
          {
            potentiallyVisibleCells = [(SearchUICollectionViewController *)selfCopy potentiallyVisibleCells];
            v24 = [potentiallyVisibleCells count];

            if (v24)
            {
              potentiallyVisibleCells2 = [(SearchUICollectionViewController *)selfCopy potentiallyVisibleCells];
              v71 = selfCopy;
              v26 = [(SearchUICollectionViewController *)selfCopy visibleViewsInPotentiallyVisibleViews:potentiallyVisibleCells2 withinRegion:v8, v18, v12, v20];

              v27 = objc_opt_new();
              v28 = objc_opt_new();
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              v29 = v26;
              v30 = [v29 countByEnumeratingWithState:&v77 objects:v82 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v78;
                do
                {
                  for (i = 0; i != v31; ++i)
                  {
                    if (*v78 != v32)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v34 = *(*(&v77 + 1) + 8 * i);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      visibleResults = [v34 visibleResults];
                      if (visibleResults)
                      {
                        [v27 addObjectsFromArray:visibleResults];
                      }

                      rowModel = [v34 rowModel];
                      cardSection = [rowModel cardSection];

                      if (cardSection)
                      {
                        [v28 addObject:cardSection];
                      }
                    }
                  }

                  v31 = [v29 countByEnumeratingWithState:&v77 objects:v82 count:16];
                }

                while (v31);
              }

              selfCopy = v71;
              latestVisibleResultsAccountedForInFeedback = [(SearchUICollectionViewController *)v71 latestVisibleResultsAccountedForInFeedback];
              v39 = [v27 copy];
              [(SearchUICollectionViewController *)v71 setLatestVisibleResultsAccountedForInFeedback:v39];

              latestVisibleCardSectionsAccountedForInFeedback = [(SearchUICollectionViewController *)v71 latestVisibleCardSectionsAccountedForInFeedback];
              v41 = [v28 copy];
              [(SearchUICollectionViewController *)v71 setLatestVisibleCardSectionsAccountedForInFeedback:v41];

              lastVisibleFeedbackTrigger = [(SearchUICollectionViewController *)v71 lastVisibleFeedbackTrigger];
              v43 = [v27 isEqual:latestVisibleResultsAccountedForInFeedback];
              v44 = [v28 isEqual:latestVisibleCardSectionsAccountedForInFeedback];
              if (!v43 || (v44 & 1) == 0)
              {
                v45 = objc_alloc(MEMORY[0x1E69CA588]);
                array = [v27 array];
                array2 = [v28 array];
                v48 = [v45 initWithResults:array triggerEvent:lastVisibleFeedbackTrigger visibleButtons:0 visibleCardSections:array2];

                selfCopy = v71;
                [v48 setQueryId:queryId];
                feedbackListener2 = [(SearchUICollectionViewController *)v71 feedbackListener];
                [feedbackListener2 resultsDidBecomeVisible:v48];
              }
            }
          }

          else
          {
          }

          feedbackListener3 = [(SearchUICollectionViewController *)selfCopy feedbackListener];
          if (objc_opt_respondsToSelector())
          {
            potentiallyVisibleHeaders = [(SearchUICollectionViewController *)selfCopy potentiallyVisibleHeaders];
            v52 = [potentiallyVisibleHeaders count];

            if (!v52)
            {
              return;
            }

            v53 = MEMORY[0x1E695DFA0];
            potentiallyVisibleHeaders2 = [(SearchUICollectionViewController *)selfCopy potentiallyVisibleHeaders];
            v55 = [(SearchUICollectionViewController *)selfCopy visibleViewsInPotentiallyVisibleViews:potentiallyVisibleHeaders2 withinRegion:v8, v18, v12, v20];
            v56 = [v53 orderedSetWithArray:v55];

            v57 = objc_opt_new();
            v72 = selfCopy;
            latestVisibleSectionHeadersAccountedForInFeedback = [(SearchUICollectionViewController *)selfCopy latestVisibleSectionHeadersAccountedForInFeedback];
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            feedbackListener3 = v56;
            v59 = [feedbackListener3 countByEnumeratingWithState:&v73 objects:v81 count:16];
            if (v59)
            {
              v60 = v59;
              v61 = *v74;
              do
              {
                for (j = 0; j != v60; ++j)
                {
                  if (*v74 != v61)
                  {
                    objc_enumerationMutation(feedbackListener3);
                  }

                  v63 = *(*(&v73 + 1) + 8 * j);
                  v64 = [SearchUISupplementaryProvider sectionForHeaderView:v63];
                  if (v64)
                  {
                    [v57 addObject:v64];
                    if (([latestVisibleSectionHeadersAccountedForInFeedback containsObject:v64] & 1) == 0)
                    {
                      v65 = [SearchUISupplementaryProvider headerTypeForHeaderView:v63];
                      v66 = [objc_alloc(MEMORY[0x1E69CA590]) initWithSection:v64 headerType:v65];
                      [v66 setQueryId:v70];
                      feedbackListener4 = [(SearchUICollectionViewController *)v72 feedbackListener];
                      [feedbackListener4 sectionHeaderDidBecomeVisible:v66];
                    }
                  }
                }

                v60 = [feedbackListener3 countByEnumeratingWithState:&v73 objects:v81 count:16];
              }

              while (v60);
            }

            v68 = [v57 copy];
            [(SearchUICollectionViewController *)v72 setLatestVisibleSectionHeadersAccountedForInFeedback:v68];
          }
        }
      }
    }
  }
}

- (void)addOrbInteractionIfNeeded
{
  contextInteraction = [(SearchUICollectionViewController *)self contextInteraction];

  if (!contextInteraction)
  {
    v4 = [[SearchUICollectionPeekDelegate alloc] initWithViewController:self];
    [(SearchUICollectionViewController *)self setPeekDelegate:v4];

    v5 = objc_alloc(MEMORY[0x1E69DC8E0]);
    peekDelegate = [(SearchUICollectionViewController *)self peekDelegate];
    v7 = [v5 initWithDelegate:peekDelegate];
    [(SearchUICollectionViewController *)self setContextInteraction:v7];

    collectionView = [(SearchUICollectionViewController *)self collectionView];
    contextInteraction2 = [(SearchUICollectionViewController *)self contextInteraction];
    [collectionView addInteraction:contextInteraction2];
  }
}

- (void)purgeMemory
{
  v20 = *MEMORY[0x1E69E9840];
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  if (snapshot)
  {
    [(SearchUICollectionViewController *)self setTableModel:0];
    [(SearchUICollectionViewController *)self updateWithSnapshot:0];
    collectionView = [(SearchUICollectionViewController *)self collectionView];
    [collectionView _purgeReuseQueues];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  childViewControllers = [(SearchUICollectionViewController *)self childViewControllers];
  v7 = [childViewControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(childViewControllers);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [v11 beginAppearanceTransition:0 animated:0];
        [v11 willMoveToParentViewController:0];
        [v11 removeFromParentViewController];
        [v11 endAppearanceTransition];
        view = [v11 view];
        [view removeFromSuperview];
      }

      v8 = [childViewControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([(SearchUICollectionViewController *)self threeDTouchEnabled])
  {
    [(SearchUICollectionViewController *)self setThreeDTouchEnabled:0];
    [(SearchUICollectionViewController *)self setThreeDTouchEnabled:1];
  }

  potentiallyVisibleHeaders = [(SearchUICollectionViewController *)self potentiallyVisibleHeaders];
  [potentiallyVisibleHeaders removeAllObjects];

  potentiallyVisibleCells = [(SearchUICollectionViewController *)self potentiallyVisibleCells];
  [potentiallyVisibleCells removeAllObjects];

  [(SearchUICollectionViewController *)self resetVisibleFeedback];
  +[SearchUIUtilities purgeMemory];
}

- (void)updateContentScrolledOffScreenStatus
{
  navigationController = [(SearchUICollectionViewController *)self navigationController];
  if (navigationController)
  {
    v4 = navigationController;
    resultsViewDelegate = [(SearchUICollectionViewController *)self resultsViewDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      resultsViewDelegate2 = [(SearchUICollectionViewController *)self resultsViewDelegate];
      collectionView = [(SearchUICollectionViewController *)self collectionView];
      [collectionView contentOffset];
      [resultsViewDelegate2 didUpdateContentScrolledOffScreenStatus:v8 > 0.5 animated:1];
    }
  }
}

- (void)deselectSelectedRowsIfNeeded
{
  if (([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode] & 1) == 0)
  {
    collectionView = [(SearchUICollectionViewController *)self collectionView];
    collectionView2 = [(SearchUICollectionViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView2 indexPathsForSelectedItems];
    firstObject = [indexPathsForSelectedItems firstObject];
    [collectionView deselectItemAtIndexPath:firstObject animated:1];
  }
}

id __40__SearchUICollectionViewController_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained dataSource];
  v8 = [v7 sectionIdentifierForIndex:a2];

  v9 = [WeakRetained dataSource];
  v10 = [WeakRetained searchUIAttributes];
  v11 = [v9 layoutSectionForSectionModel:v8 layoutEnvironment:v5 attributes:v10];

  return v11;
}

- (void)resetVisibleFeedback
{
  [(SearchUICollectionViewController *)self setLatestVisibleResultsAccountedForInFeedback:0];
  [(SearchUICollectionViewController *)self setLatestVisibleCardSectionsAccountedForInFeedback:0];

  [(SearchUICollectionViewController *)self setLatestVisibleSectionHeadersAccountedForInFeedback:0];
}

- (SearchUISizingDelegate)sizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sizingDelegate);

  return WeakRetained;
}

- (SearchUICustomViewProvider)customViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_customViewProvider);

  return WeakRetained;
}

- (SearchUIFeedbackDelegate)feedbackListener
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackListener);

  return WeakRetained;
}

- (SearchUICollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = SearchUICollectionViewController;
  v4 = [(SearchUICollectionViewController *)&v10 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_opt_new();
    searchUIAttributes = v4->_searchUIAttributes;
    v4->_searchUIAttributes = v5;

    commandEnvironment = [(SearchUICollectionViewController *)v4 commandEnvironment];
    [(SearchUICollectionViewAttributes *)v4->_searchUIAttributes setCommandEnvironment:commandEnvironment];

    [(SearchUICollectionViewAttributes *)v4->_searchUIAttributes setHeaderDelegate:v4];
    traitCollection = [(SearchUICollectionViewController *)v4 traitCollection];
    -[SearchUICollectionViewAttributes setIsInCarPlay:](v4->_searchUIAttributes, "setIsInCarPlay:", [traitCollection userInterfaceIdiom] == 3);

    [(SearchUICollectionViewController *)v4 setDragInteractionEnabled:1];
    [(SearchUICollectionViewController *)v4 setPreferredPunchoutIndex:-1];
  }

  return v4;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel_copy_ == action)
  {
    preferredFocusSystem = [(SearchUICollectionViewController *)self preferredFocusSystem];
    focusedItem = [preferredFocusSystem focusedItem];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SearchUICollectionViewController;
    isKindOfClass = [SearchUICollectionViewController canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }

  return isKindOfClass & 1;
}

- (void)copy:(id)copy
{
  v33[1] = *MEMORY[0x1E69E9840];
  preferredFocusSystem = [(SearchUICollectionViewController *)self preferredFocusSystem];
  focusedItem = [preferredFocusSystem focusedItem];

  rowModel = [focusedItem rowModel];
  commandEnvironment = [(SearchUICollectionViewController *)self commandEnvironment];
  v8 = [SearchUICommandHandler handlerForRowModel:rowModel environment:commandEnvironment];
  itemProvider = [v8 itemProvider];

  if (itemProvider)
  {
    v33[0] = itemProvider;
    previewButtonItems2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    [generalPasteboard setItemProviders:previewButtonItems2];
  }

  else
  {
    rowModel2 = [focusedItem rowModel];
    cardSection = [rowModel2 cardSection];
    previewButtonItems = [cardSection previewButtonItems];
    v15 = [previewButtonItems count];

    if (!v15)
    {
      goto LABEL_4;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    rowModel3 = [focusedItem rowModel];
    cardSection2 = [rowModel3 cardSection];
    previewButtonItems2 = [cardSection2 previewButtonItems];

    v18 = [previewButtonItems2 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(previewButtonItems2);
          }

          v22 = *(*(&v28 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            command = [v22 command];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              command2 = [v22 command];
              commandEnvironment2 = [(SearchUICollectionViewController *)self commandEnvironment];
              v27 = [SearchUICommandHandler handlerForCommand:command2 environment:commandEnvironment2];
              [v27 executeWithTriggerEvent:18];
            }
          }
        }

        v19 = [previewButtonItems2 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v19);
    }
  }

LABEL_4:
}

- (void)skipDown
{
  preferredFocusSystem = [(SearchUICollectionViewController *)self preferredFocusSystem];
  focusedItem = [preferredFocusSystem focusedItem];

  textField = [(SearchUIKeyboardableCollectionViewController *)self textField];
  if (focusedItem == textField)
  {
    dataSource = [(SearchUICollectionViewController *)self dataSource];
    snapshot = [dataSource snapshot];
    numberOfSections = [snapshot numberOfSections];

    if (numberOfSections >= 1)
    {
      v6 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
      [(SearchUICollectionViewController *)self setFocusableIndexPath:v6];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v5 = [(SearchUICollectionViewController *)self indexPathForFocusView:focusedItem];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 section] + 1;
    dataSource2 = [(SearchUICollectionViewController *)self dataSource];
    snapshot2 = [dataSource2 snapshot];
    numberOfSections2 = [snapshot2 numberOfSections];

    if (v7 < numberOfSections2)
    {
      v11 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(v6, "section") + 1}];
      [(SearchUICollectionViewController *)self scrollAndFocusAtIndexPath:v11];
    }
  }

LABEL_8:
}

- (void)skipUp
{
  preferredFocusSystem = [(SearchUICollectionViewController *)self preferredFocusSystem];
  focusedItem = [preferredFocusSystem focusedItem];

  textField = [(SearchUIKeyboardableCollectionViewController *)self textField];

  if (focusedItem != textField)
  {
    v5 = [(SearchUICollectionViewController *)self indexPathForFocusView:?];
    v6 = v5;
    if (v5 && [v5 section] >= 1)
    {
      v7 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(v6, "section") - 1}];
      [(SearchUICollectionViewController *)self scrollAndFocusAtIndexPath:v7];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (id)indexPathForFocusView:(id)view
{
  viewCopy = view;
  collectionView = [(SearchUICollectionViewController *)self collectionView];

  v6 = 0;
  if (viewCopy)
  {
    if (collectionView != viewCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (-[SearchUICollectionViewController collectionView](self, "collectionView"), v7 = objc_claimAutoreleasedReturnValue(), [v7 indexPathForCell:viewCopy], v6 = objc_claimAutoreleasedReturnValue(), v7, !v6))
      {
        superview = [viewCopy superview];
        v6 = [(SearchUICollectionViewController *)self indexPathForFocusView:superview];
      }
    }
  }

  return v6;
}

- (void)scrollAndFocusAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(SearchUICollectionViewController *)self collectionView];
  [collectionView scrollToItemAtIndexPath:pathCopy atScrollPosition:4 animated:0];

  collectionView2 = [(SearchUICollectionViewController *)self collectionView];
  [collectionView2 layoutIfNeeded];

  collectionView3 = [(SearchUICollectionViewController *)self collectionView];
  [collectionView3 scrollToItemAtIndexPath:pathCopy atScrollPosition:4 animated:0];

  collectionView4 = [(SearchUICollectionViewController *)self collectionView];
  [collectionView4 layoutIfNeeded];

  [(SearchUICollectionViewController *)self setFocusableIndexPath:pathCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SearchUICollectionViewController;
  [(SearchUICollectionViewController *)&v4 viewWillAppear:appear];
  [(SearchUICollectionViewController *)self deselectSelectedRowsIfNeeded];
  [(SearchUICollectionViewController *)self updateContentScrolledOffScreenStatus];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [SearchUIAppEntityAnnotator registerCollectionViewController:self];
  v5.receiver = self;
  v5.super_class = SearchUICollectionViewController;
  [(SearchUICollectionViewController *)&v5 viewDidAppear:appearCopy];
  [(SearchUICollectionViewController *)self sendVisibleFeedbackIfNecessary];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SearchUICollectionViewController;
  [(SearchUICollectionViewController *)&v4 viewDidDisappear:disappear];
  [(SearchUICollectionViewController *)self resetVisibleFeedback];
}

- (void)updateWithCardSection:(id)section
{
  v4 = [SearchUITableModel tableModelWithCardSections:section isInline:1 queryId:0];
  [(SearchUICollectionViewController *)self updateWithTableModel:v4];
}

- (void)updateWithResultSections:(id)sections
{
  v4 = [SearchUITableModel tableModelWithSections:sections expandedSections:0 expandedCollectionCardSections:0];
  [(SearchUICollectionViewController *)self updateWithTableModel:v4];
}

- (void)updateWithTableModel:(id)model
{
  modelCopy = model;
  v6 = objc_opt_new();
  v5 = [v6 buildSnapshotFromTableModel:modelCopy];

  [(SearchUICollectionViewController *)self updateWithSnapshot:v5];
}

- (BOOL)isActiveRunningShortcutForIndexPath:(id)path
{
  pathCopy = path;
  activeRunViewSource = [(SearchUICollectionViewController *)self activeRunViewSource];

  if (activeRunViewSource)
  {
    dataSource = [(SearchUICollectionViewController *)self dataSource];
    v7 = [dataSource itemIdentifierForIndexPath:pathCopy];

    cardSection = [v7 cardSection];
    command = [cardSection command];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      voiceShortcutIdentifier = [command voiceShortcutIdentifier];
      activeVoiceShortcutIdentifier = [(SearchUICollectionViewController *)self activeVoiceShortcutIdentifier];
      v12 = [voiceShortcutIdentifier isEqualToString:activeVoiceShortcutIdentifier];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)shortcutDidEnd:(id)end
{
  v4 = MEMORY[0x1E696AD88];
  endCopy = end;
  defaultCenter = [v4 defaultCenter];
  object = [endCopy object];
  [defaultCenter removeObserver:self name:@"SearchUICommandHandlerShortcutDidEndNotification" object:object];

  activeRunViewSource = [(SearchUICollectionViewController *)self activeRunViewSource];
  object2 = [endCopy object];

  LODWORD(endCopy) = [activeRunViewSource isEqual:object2];
  if (endCopy)
  {
    [(SearchUICollectionViewController *)self setActiveRunViewSource:0];

    [(SearchUICollectionViewController *)self setActiveVoiceShortcutIdentifier:0];
  }
}

- (void)contentSizeDidChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  sizingDelegate = [(SearchUICollectionViewController *)self sizingDelegate];
  [sizingDelegate contentSizeDidChange:-[SearchUICollectionViewController collectionViewAnimating](self animated:{"collectionViewAnimating"), width, height}];
}

- (id)cellForRowModel:(id)model atIndexPath:(id)path
{
  pathCopy = path;
  modelCopy = model;
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  v9 = [dataSource cellForRowModel:modelCopy atIndexPath:pathCopy];

  LODWORD(modelCopy) = [(SearchUICollectionViewController *)self isActiveRunningShortcutForIndexPath:pathCopy];
  if (modelCopy)
  {
    activeRunViewSource = [(SearchUICollectionViewController *)self activeRunViewSource];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      activeRunViewSource2 = [(SearchUICollectionViewController *)self activeRunViewSource];
      contentView = [v9 contentView];
      [activeRunViewSource2 updateSourceView:contentView];
    }
  }

  return v9;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  potentiallyVisibleCells = [(SearchUICollectionViewController *)self potentiallyVisibleCells];
  [potentiallyVisibleCells setObject:cellCopy forKeyedSubscript:pathCopy];

  if (objc_opt_respondsToSelector())
  {
    embeddedViewController = [cellCopy embeddedViewController];

    if (embeddedViewController)
    {
      embeddedViewController2 = [cellCopy embeddedViewController];
      [embeddedViewController2 beginAppearanceTransition:1 animated:0];
      [(SearchUICollectionViewController *)self addChildViewController:embeddedViewController2];
      [embeddedViewController2 didMoveToParentViewController:self];
      [embeddedViewController2 endAppearanceTransition];
    }
  }

  rowModel = [cellCopy rowModel];
  allowsAppEntityAnnotation = [rowModel allowsAppEntityAnnotation];

  if (!allowsAppEntityAnnotation || ([cellCopy rowModel], v13 = objc_claimAutoreleasedReturnValue(), v14 = +[SearchUIAppEntityAnnotator annotateView:withRowModel:](SearchUIAppEntityAnnotator, "annotateView:withRowModel:", cellCopy, v13), v13, !v14))
  {
    [SearchUIAppEntityAnnotator resetAnnotationForView:cellCopy];
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  potentiallyVisibleCells = [(SearchUICollectionViewController *)self potentiallyVisibleCells];
  v9 = [potentiallyVisibleCells objectForKey:pathCopy];
  v10 = [v9 isEqual:cellCopy];

  if (v10)
  {
    potentiallyVisibleCells2 = [(SearchUICollectionViewController *)self potentiallyVisibleCells];
    [potentiallyVisibleCells2 removeObjectForKey:pathCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    embeddedViewController = [cellCopy embeddedViewController];

    if (embeddedViewController)
    {
      embeddedViewController2 = [cellCopy embeddedViewController];
      [embeddedViewController2 beginAppearanceTransition:0 animated:0];
      [embeddedViewController2 willMoveToParentViewController:0];
      [embeddedViewController2 removeFromParentViewController];
      [embeddedViewController2 endAppearanceTransition];
    }
  }

  if ([(SearchUICollectionViewController *)self isActiveRunningShortcutForIndexPath:pathCopy])
  {
    activeRunViewSource = [(SearchUICollectionViewController *)self activeRunViewSource];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      activeRunViewSource2 = [(SearchUICollectionViewController *)self activeRunViewSource];
      [activeRunViewSource2 updateSourceView:0];
    }
  }

  [SearchUIAppEntityAnnotator resetAnnotationForView:cellCopy];
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  supplementaryViewCopy = supplementaryView;
  kindCopy = kind;
  pathCopy = path;
  v11 = +[SearchUISupplementaryIdentifiers sectionHeaderKind];
  v12 = [kindCopy isEqualToString:v11];

  if (v12)
  {
    potentiallyVisibleHeaders = [(SearchUICollectionViewController *)self potentiallyVisibleHeaders];
    [potentiallyVisibleHeaders setObject:supplementaryViewCopy forKeyedSubscript:pathCopy];
  }

  v14 = +[SearchUISupplementaryIdentifiers sectionTopSeparatorKind];
  if ([kindCopy isEqualToString:v14])
  {
  }

  else
  {
    v15 = +[SearchUISupplementaryIdentifiers sectionBottomSeparatorKind];
    v16 = [kindCopy isEqualToString:v15];

    if (!v16)
    {
      goto LABEL_16;
    }
  }

  focusedIndexPath = [(SearchUICollectionViewController *)self focusedIndexPath];
  v18 = focusedIndexPath;
  if (focusedIndexPath)
  {
    section = [focusedIndexPath section];
    if (section == [pathCopy section])
    {
      dataSource = [(SearchUICollectionViewController *)self dataSource];
      snapshot = [dataSource snapshot];

      section2 = [pathCopy section];
      if (section2 >= [snapshot numberOfSections])
      {
        v24 = 0;
      }

      else
      {
        sectionIdentifiers = [snapshot sectionIdentifiers];
        v24 = [sectionIdentifiers objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

        if (v24 && ![objc_opt_class() sectionType])
        {
          v25 = +[SearchUISupplementaryIdentifiers sectionTopSeparatorKind];
          v26 = [kindCopy isEqualToString:v25];

          if (v26)
          {
            v27 = [pathCopy item] == 0;
LABEL_21:
            v31 = v27;
            [supplementaryViewCopy setHidden:v31];
            goto LABEL_14;
          }

          v28 = +[SearchUISupplementaryIdentifiers sectionBottomSeparatorKind];
          v29 = [kindCopy isEqualToString:v28];

          if (v29)
          {
            item = [pathCopy item];
            v27 = item == [snapshot numberOfItemsInSection:v24] - 1;
            goto LABEL_21;
          }
        }
      }

LABEL_14:
    }
  }

LABEL_16:
}

- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  kindCopy = kind;
  v9 = +[SearchUISupplementaryIdentifiers sectionHeaderKind];
  v10 = [kindCopy isEqualToString:v9];

  if (v10)
  {
    potentiallyVisibleHeaders = [(SearchUICollectionViewController *)self potentiallyVisibleHeaders];
    [potentiallyVisibleHeaders removeObjectForKey:pathCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  v9.receiver = self;
  v9.super_class = SearchUICollectionViewController;
  scrollCopy = scroll;
  [(SearchUIKeyboardableCollectionViewController *)&v9 scrollViewDidScroll:scrollCopy];
  panGestureRecognizer = [scrollCopy panGestureRecognizer];
  [panGestureRecognizer velocityInView:scrollCopy];
  v7 = v6;

  if (v7 != 0.0)
  {
    if (v7 <= 0.0)
    {
      v8 = 11;
    }

    else
    {
      v8 = 10;
    }

    [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:v8];
  }

  [(SearchUICollectionViewController *)self updateContentScrolledOffScreenStatus];
}

- (void)_collectionView:(id)view orthogonalScrollViewDidScroll:(id)scroll section:(int64_t)section
{
  [scroll _panGestureVelocityInView:view];
  if (v6 != 0.0)
  {
    if (v6 <= 0.0)
    {
      v7 = 17;
    }

    else
    {
      v7 = 16;
    }

    [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:v7];
  }
}

- (id)visibleViewsInPotentiallyVisibleViews:(id)views withinRegion:(CGRect)region
{
  height = region.size.height;
  width = region.size.width;
  y = region.origin.y;
  x = region.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  v10 = objc_opt_new();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __87__SearchUICollectionViewController_visibleViewsInPotentiallyVisibleViews_withinRegion___block_invoke;
  v27[3] = &unk_1E85B2658;
  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  v27[4] = self;
  v11 = v10;
  v28 = v11;
  [viewsCopy enumerateKeysAndObjectsUsingBlock:v27];
  v12 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:{1, 0}];
  v33 = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v15 = [v11 sortedArrayUsingDescriptors:v14];

  v16 = [v15 countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [viewsCopy objectForKeyedSubscript:*(*(&v23 + 1) + 8 * i)];
        if (v20)
        {
          [v12 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v34 count:16];
    }

    while (v17);
  }

  v21 = [v12 copy];

  return v21;
}

void __87__SearchUICollectionViewController_visibleViewsInPotentiallyVisibleViews_withinRegion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 collectionView];
  v8 = [SearchUIAutoLayout view:v6 isVisibleInBounds:v7 ofView:*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)];

  if (v8)
  {
    [*(a1 + 40) addObject:v9];
  }
}

- (BOOL)canHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  v6 = [dataSource itemIdentifierForIndexPath:pathCopy];

  collectionView = [(SearchUICollectionViewController *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:pathCopy];

  commandEnvironment = [(SearchUICollectionViewController *)self commandEnvironment];
  if ([SearchUICommandHandler hasValidHandlerForRowModel:v6 environment:commandEnvironment])
  {
    needsInternalFocus = 1;
  }

  else
  {
    needsInternalFocus = [v8 needsInternalFocus];
  }

  return needsInternalFocus;
}

- (void)scrollAndSelectLastSelectedIndexPath
{
  lastSelectedIndexPath = [(SearchUICollectionViewController *)self lastSelectedIndexPath];
  if (lastSelectedIndexPath)
  {
    v4 = lastSelectedIndexPath;
    dataSource = [(SearchUICollectionViewController *)self dataSource];
    lastSelectedIndexPath2 = [(SearchUICollectionViewController *)self lastSelectedIndexPath];
    v7 = [dataSource itemIdentifierForIndexPath:lastSelectedIndexPath2];

    if (v7)
    {
      lastSelectedIndexPath3 = [(SearchUICollectionViewController *)self lastSelectedIndexPath];
      v9 = [(SearchUICollectionViewController *)self doesIndexPathExist:lastSelectedIndexPath3];

      if (v9)
      {
        collectionView = [(SearchUICollectionViewController *)self collectionView];
        [collectionView layoutIfNeeded];

        collectionView2 = [(SearchUICollectionViewController *)self collectionView];
        lastSelectedIndexPath4 = [(SearchUICollectionViewController *)self lastSelectedIndexPath];
        [collectionView2 selectItemAtIndexPath:lastSelectedIndexPath4 animated:0 scrollPosition:18];

        collectionView3 = [(SearchUICollectionViewController *)self collectionView];
        [collectionView3 layoutIfNeeded];

        collectionView4 = [(SearchUICollectionViewController *)self collectionView];
        lastSelectedIndexPath5 = [(SearchUICollectionViewController *)self lastSelectedIndexPath];
        [collectionView4 scrollToItemAtIndexPath:lastSelectedIndexPath5 atScrollPosition:18 animated:0];

        collectionView5 = [(SearchUICollectionViewController *)self collectionView];
        [collectionView5 layoutIfNeeded];

        collectionView6 = [(SearchUICollectionViewController *)self collectionView];
        lastSelectedIndexPath6 = [(SearchUICollectionViewController *)self lastSelectedIndexPath];
        [collectionView6 selectItemAtIndexPath:lastSelectedIndexPath6 animated:0 scrollPosition:18];

        collectionView7 = [(SearchUICollectionViewController *)self collectionView];
        [collectionView7 layoutBelowIfNeeded];

        v20 = dispatch_time(0, 250000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __72__SearchUICollectionViewController_scrollAndSelectLastSelectedIndexPath__block_invoke;
        block[3] = &unk_1E85B24C8;
        block[4] = self;
        dispatch_after(v20, MEMORY[0x1E69E96A0], block);
      }
    }
  }
}

uint64_t __72__SearchUICollectionViewController_scrollAndSelectLastSelectedIndexPath__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 lastSelectedIndexPath];
  LODWORD(v2) = [v2 doesIndexPathExist:v3];

  if (v2)
  {
    v4 = [*(a1 + 32) collectionView];
    v5 = [*(a1 + 32) lastSelectedIndexPath];
    [v4 deselectItemAtIndexPath:v5 animated:1];
  }

  v6 = *(a1 + 32);

  return [v6 setLastSelectedIndexPath:0];
}

- (BOOL)doesIndexPathExist:(id)exist
{
  existCopy = exist;
  collectionView = [(SearchUICollectionViewController *)self collectionView];
  v6 = collectionView;
  if (existCopy && (v7 = [collectionView numberOfSections], v7 > objc_msgSend(existCopy, "section")))
  {
    v8 = [v6 numberOfItemsInSection:{objc_msgSend(existCopy, "section")}];
    v9 = v8 > [existCopy item];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setRestorationContext:(id)context
{
  lastSelectedIndexPath = [context lastSelectedIndexPath];
  [(SearchUICollectionViewController *)self setLastSelectedIndexPath:lastSelectedIndexPath];
}

- (id)restorationContext
{
  if (![(SearchUICollectionViewController *)self restorationContextClass])
  {
    objc_opt_class();
  }

  v3 = objc_opt_new();
  lastSelectedIndexPath = [(SearchUICollectionViewController *)self lastSelectedIndexPath];
  [v3 setLastSelectedIndexPath:lastSelectedIndexPath];

  return v3;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  v21 = [dataSource itemIdentifierForIndexPath:pathCopy];

  v7 = [(SearchUICollectionViewController *)self commandEnvironmentForIndexPath:pathCopy];
  [(SearchUICollectionViewController *)self setLastSelectedIndexPath:pathCopy];
  v8 = [SearchUICommandHandler handlerForRowModel:v21 environment:v7];
  collectionView = [(SearchUICollectionViewController *)self collectionView];
  v10 = [collectionView cellForItemAtIndexPath:pathCopy];

  command = [v8 command];
  if (command)
  {
  }

  else if ([v10 needsInternalFocus])
  {
    [v10 returnKeyPressed];
    goto LABEL_11;
  }

  cardSection = [v21 cardSection];
  command2 = [cardSection command];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    voiceShortcutIdentifier = [command2 voiceShortcutIdentifier];
    [(SearchUICollectionViewController *)self setActiveVoiceShortcutIdentifier:voiceShortcutIdentifier];

    v15 = objc_alloc(MEMORY[0x1E69E0E30]);
    sourceView = [v7 sourceView];
    contentView = [sourceView contentView];
    v18 = [v15 initWithView:contentView];
    [(SearchUICollectionViewController *)self setActiveRunViewSource:v18];

    activeRunViewSource = [(SearchUICollectionViewController *)self activeRunViewSource];
    [v8 performSelector:sel_setRunViewSource_ withObject:activeRunViewSource];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_shortcutDidEnd_ name:@"SearchUICommandHandlerShortcutDidEndNotification" object:0];
  }

  [v8 executeWithTriggerEvent:2];
  if ([v8 shouldDeselectAfterExecution])
  {
    [(SearchUICollectionViewController *)self deselectSelectedRowsIfNeeded];
  }

LABEL_11:
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(SearchUICollectionViewController *)self canHighlightRowAtIndexPath:pathCopy];
  v7 = v6;
  [(SearchUICollectionViewController *)self setSectionBackgroundHighlighted:v6 indexPath:pathCopy];

  return v7;
}

- (void)setSectionBackgroundHighlighted:(BOOL)highlighted indexPath:(id)path
{
  highlightedCopy = highlighted;
  pathCopy = path;
  collectionView = [(SearchUICollectionViewController *)self collectionView];
  v7 = [collectionView cellForItemAtIndexPath:pathCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 searchui_focusStyle] == 5)
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(pathCopy, "section")}];
    collectionView2 = [(SearchUICollectionViewController *)self collectionView];
    v10 = [collectionView2 _visibleSupplementaryViewOfKind:@"SearchUIBackgroundReuseIdentifer" atIndexPath:v8];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 setHighlighted:highlightedCopy];
      }
    }
  }
}

- (void)setTableModel:(id)model animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  modelCopy = model;
  if (self->_tableModel != modelCopy)
  {
    v16 = modelCopy;
    objc_storeStrong(&self->_tableModel, model);
    completionCopy = completion;
    v11 = [SearchUIDataSourceSnapshotBuilder alloc];
    expandedSections = [(SearchUICollectionViewController *)self expandedSections];
    expandedCollectionSections = [(SearchUICollectionViewController *)self expandedCollectionSections];
    v14 = [(SearchUIDataSourceSnapshotBuilder *)v11 initWithExpandedSections:expandedSections expandedCollectionSections:expandedCollectionSections];

    v15 = [(SearchUIDataSourceSnapshotBuilder *)v14 buildSnapshotFromTableModel:v16];
    [(SearchUICollectionViewController *)self updateWithSnapshot:v15 animated:animatedCopy completion:completionCopy];

    modelCopy = v16;
  }
}

- (void)setShouldUseInsetRoundedSections:(BOOL)sections
{
  if (self->_shouldUseInsetRoundedSections != sections)
  {
    self->_shouldUseInsetRoundedSections = sections;
    shouldUseInsetRoundedSections = [(SearchUICollectionViewController *)self shouldUseInsetRoundedSections];
    searchUIAttributes = [(SearchUICollectionViewController *)self searchUIAttributes];
    [searchUIAttributes setShouldUseInsetRoundedSections:shouldUseInsetRoundedSections];

    dataSource = [(SearchUICollectionViewController *)self dataSource];
    [dataSource reloadModel];
  }
}

- (void)setInPreviewPlatter:(BOOL)platter
{
  if (self->_inPreviewPlatter != platter)
  {
    platterCopy = platter;
    self->_inPreviewPlatter = platter;
    searchUIAttributes = [(SearchUICollectionViewController *)self searchUIAttributes];
    [searchUIAttributes setInPreviewPlatter:platterCopy];
  }
}

- (void)setShouldUseStandardSectionInsets:(BOOL)insets
{
  if (self->_shouldUseStandardSectionInsets != insets)
  {
    self->_shouldUseStandardSectionInsets = insets;
    [(SearchUICollectionViewController *)self invalidateLayout];
  }
}

- (void)invalidateLayout
{
  collectionView = [(SearchUICollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  collectionView2 = [(SearchUICollectionViewController *)self collectionView];
  [collectionView2 layoutIfNeeded];
}

- (void)updateWithSnapshot:(id)snapshot animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  snapshotCopy = snapshot;
  completionCopy = completion;
  if (![(SearchUICollectionViewController *)self updateMustAccountForLayout])
  {
    viewWillUpdateHandler = [(SearchUICollectionViewController *)self viewWillUpdateHandler];

    if (viewWillUpdateHandler)
    {
      viewWillUpdateHandler2 = [(SearchUICollectionViewController *)self viewWillUpdateHandler];
      viewWillUpdateHandler2[2]();
    }
  }

  itemIdentifiers = [snapshotCopy itemIdentifiers];
  v12 = [itemIdentifiers count];

  if (v12)
  {
    sectionIdentifiers = [snapshotCopy sectionIdentifiers];
    v14 = [sectionIdentifiers objectAtIndexedSubscript:0];
    v15 = [snapshotCopy itemIdentifiersInSectionWithIdentifier:v14];
    v16 = [v15 objectAtIndexedSubscript:0];

    cardSection = [v16 cardSection];
    objc_opt_class();
    LOBYTE(v14) = objc_opt_isKindOfClass();

    if (v14)
    {
      [(SearchUICollectionViewController *)self setShouldUseInsetRoundedSections:0];
    }
  }

  [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:1];
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  [dataSource updateWithSnapshot:snapshotCopy animated:animatedCopy completion:completionCopy];

  if (![(SearchUICollectionViewController *)self updateMustAccountForLayout])
  {
    viewDidUpdateHandler = [(SearchUICollectionViewController *)self viewDidUpdateHandler];

    if (viewDidUpdateHandler)
    {
      viewDidUpdateHandler2 = [(SearchUICollectionViewController *)self viewDidUpdateHandler];
      viewDidUpdateHandler2[2]();
    }
  }
}

- (void)setCommandDelegate:(id)delegate
{
  objc_storeWeak(&self->_commandDelegate, delegate);
  commandEnvironment = [(SearchUICollectionViewController *)self commandEnvironment];
  [(SearchUICollectionViewAttributes *)self->_searchUIAttributes setCommandEnvironment:commandEnvironment];
}

- (void)setFocusableIndexPath:(id)path
{
  pathCopy = path;
  objc_storeStrong(&self->_focusableIndexPath, path);
  view = [(SearchUICollectionViewController *)self view];
  window = [view window];

  if (window)
  {
    textField = [(SearchUIKeyboardableCollectionViewController *)self textField];

    v8 = MEMORY[0x1E69DCA38];
    if (textField)
    {
      textField2 = [(SearchUIKeyboardableCollectionViewController *)self textField];
      v10 = [v8 focusSystemForEnvironment:textField2];

      textField3 = [(SearchUIKeyboardableCollectionViewController *)self textField];
      [v10 requestFocusUpdateToEnvironment:textField3];
    }

    else
    {
      v10 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];
      [v10 requestFocusUpdateToEnvironment:self];
    }

    [v10 updateFocusIfNeeded];

    focusableIndexPath = self->_focusableIndexPath;
    self->_focusableIndexPath = 0;
  }
}

- (NSIndexPath)focusedIndexPath
{
  v3 = MEMORY[0x1E69DCA38];
  collectionView = [(SearchUICollectionViewController *)self collectionView];
  v5 = [v3 focusSystemForEnvironment:collectionView];
  focusedItem = [v5 focusedItem];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = focusedItem;
    collectionView2 = [(SearchUICollectionViewController *)self collectionView];
    v9 = [collectionView2 indexPathForCell:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)preferredFocusSystem
{
  v3 = MEMORY[0x1E69DCA38];
  textField = [(SearchUIKeyboardableCollectionViewController *)self textField];
  if (textField)
  {
    v5 = [v3 focusSystemForEnvironment:textField];
  }

  else
  {
    collectionView = [(SearchUICollectionViewController *)self collectionView];
    v5 = [v3 focusSystemForEnvironment:collectionView];
  }

  return v5;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  collectionView = [(SearchUICollectionViewController *)self collectionView];
  [collectionView layoutIfNeeded];

  focusableIndexPath = self->_focusableIndexPath;
  v6 = focusableIndexPath;
  v7 = self->_focusableIndexPath;
  self->_focusableIndexPath = 0;

  return focusableIndexPath;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = SearchUICollectionViewController;
  [(SearchUICollectionViewController *)&v7 viewWillDisappear:disappear];
  resultsViewDelegate = [(SearchUICollectionViewController *)self resultsViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    resultsViewDelegate2 = [(SearchUICollectionViewController *)self resultsViewDelegate];
    [resultsViewDelegate2 didUpdateContentScrolledOffScreenStatus:0 animated:1];
  }
}

- (id)viewForRowModel:(id)model
{
  modelCopy = model;
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  v6 = [dataSource indexPathForItemIdentifier:modelCopy];

  collectionView = [(SearchUICollectionViewController *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:v6];

  return v8;
}

- (void)scrollRowModelToVisible:(id)visible
{
  visibleCopy = visible;
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  v7 = [dataSource indexPathForItemIdentifier:visibleCopy];

  collectionView = [(SearchUICollectionViewController *)self collectionView];
  [collectionView scrollToItemAtIndexPath:v7 atScrollPosition:0 animated:0];
}

- (id)commandEnvironmentForIndexPath:(id)path
{
  pathCopy = path;
  commandEnvironment = [(SearchUICollectionViewController *)self commandEnvironment];
  if (pathCopy)
  {
    dataSource = [(SearchUICollectionViewController *)self dataSource];
    v7 = [dataSource sectionIdentifierForIndex:{objc_msgSend(pathCopy, "section")}];
    [commandEnvironment setLastEngagedSection:v7];

    collectionView = [(SearchUICollectionViewController *)self collectionView];
    v9 = [collectionView cellForItemAtIndexPath:pathCopy];
    [commandEnvironment setSourceView:v9];

    lastEngagedSection = [commandEnvironment lastEngagedSection];
    section = [lastEngagedSection section];
    resultSection = [section resultSection];
    title = [resultSection title];
    [commandEnvironment setSectionTitle:title];
  }

  return commandEnvironment;
}

- (void)resignTextField
{
  textField = [(SearchUIKeyboardableCollectionViewController *)self textField];
  [textField resignFirstResponder];
}

- (void)updateTableForNewCellHeightAnimated:(BOOL)animated
{
  animatedCopy = animated;
  areAnimationsEnabled = [MEMORY[0x1E69DD250] areAnimationsEnabled];
  [(SearchUICollectionViewController *)self setCollectionViewAnimating:animatedCopy & areAnimationsEnabled];
  [MEMORY[0x1E69DD250] setAnimationsEnabled:animatedCopy & areAnimationsEnabled];
  v6[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__SearchUICollectionViewController_updateTableForNewCellHeightAnimated___block_invoke;
  v7[3] = &unk_1E85B24C8;
  v7[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__SearchUICollectionViewController_updateTableForNewCellHeightAnimated___block_invoke_2;
  v6[3] = &unk_1E85B24C8;
  [SearchUIUtilities performAnimatableChanges:v7 animated:1 completion:v6];
  [MEMORY[0x1E69DD250] setAnimationsEnabled:areAnimationsEnabled];
}

void __72__SearchUICollectionViewController_updateTableForNewCellHeightAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 collectionViewLayout];
  v4 = [*(a1 + 32) collectionView];
  v5 = [v4 collectionViewLayout];
  v6 = [v5 _invalidationContextForRefreshingVisibleElementAttributes];
  [v3 invalidateLayoutWithContext:v6];

  v7 = [*(a1 + 32) collectionView];
  [v7 layoutIfNeeded];
}

- (void)cardSectionViewDidInvalidateSize:(id)size animate:(BOOL)animate
{
  animateCopy = animate;
  sizeCopy = size;
  [(SearchUICollectionViewController *)self updateTableForNewCellHeightAnimated:animateCopy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__SearchUICollectionViewController_cardSectionViewDidInvalidateSize_animate___block_invoke;
  v10[3] = &unk_1E85B24C8;
  v10[4] = self;
  [SearchUIUtilities performAnimatableChanges:v10];
  feedbackListener = [(SearchUICollectionViewController *)self feedbackListener];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    feedbackListener2 = [(SearchUICollectionViewController *)self feedbackListener];
    [feedbackListener2 cardSectionViewDidInvalidateSize:sizeCopy animate:animateCopy];
  }
}

void __77__SearchUICollectionViewController_cardSectionViewDidInvalidateSize_animate___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionView];
  [v1 setAlpha:1.0];
}

- (void)removeRowModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  modelCopy = model;
  [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:1];
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  [dataSource removeRowModel:modelCopy completion:completionCopy];
}

- (void)removeSectionContainingRowModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  modelCopy = model;
  [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:1];
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  [dataSource removeSectionContaining:modelCopy completion:completionCopy];
}

- (void)removeSectionModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  modelCopy = model;
  [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:1];
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  [dataSource removeSectionModel:modelCopy completion:completionCopy];
}

- (void)updateViewControllerTitle:(id)title
{
  titleCopy = title;
  parentViewController = [(SearchUICollectionViewController *)self parentViewController];
  [parentViewController setTitle:titleCopy];
}

- (void)performScrollTestWithHandlerForFirstScrollCompletion:(id)completion completion:(id)a4
{
  v6 = a4;
  completionCopy = completion;
  v8 = objc_opt_new();
  [(SearchUICollectionViewController *)self setScrollTester:v8];

  scrollTester = [(SearchUICollectionViewController *)self scrollTester];
  collectionView = [(SearchUICollectionViewController *)self collectionView];
  [scrollTester performScrollTestOnTableView:collectionView firstScroll:completionCopy completion:v6];
}

- (void)performRecapScrollTestWithTestName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  if ([MEMORY[0x1E69C6C50] isRecapAvailable])
  {
    v8 = objc_alloc(MEMORY[0x1E69C6C40]);
    collectionView = [(SearchUICollectionViewController *)self collectionView];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__SearchUICollectionViewController_performRecapScrollTestWithTestName_completion___block_invoke;
    v12[3] = &unk_1E85B2680;
    v13 = completionCopy;
    v10 = [v8 initWithTestName:nameCopy scrollView:collectionView completionHandler:v12];

    [v10 scrollingContentLength];
    [v10 setScrollingContentLength:v11 + v11];
    [MEMORY[0x1E69C6C50] runTestWithParameters:v10];
  }
}

uint64_t __82__SearchUICollectionViewController_performRecapScrollTestWithTestName_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (int64_t)numberOfSections
{
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  collectionView = [(SearchUICollectionViewController *)self collectionView];
  v5 = [dataSource numberOfSectionsInCollectionView:collectionView];

  return v5;
}

- (void)iterateIndexPaths:(id)paths
{
  v37 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  if (pathsCopy)
  {
    dataSource = [(SearchUICollectionViewController *)self dataSource];
    snapshot = [dataSource snapshot];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = snapshot;
    obj = [snapshot sectionIdentifiers];
    v23 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v23)
    {
      v21 = *v32;
      do
      {
        v7 = 0;
        do
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v24 = v7;
          v26 = *(*(&v31 + 1) + 8 * v7);
          v8 = [v22 itemIdentifiersInSectionWithIdentifier:?];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v25 = v8;
          v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v28;
            do
            {
              v12 = 0;
              do
              {
                if (*v28 != v11)
                {
                  objc_enumerationMutation(v25);
                }

                v13 = *(*(&v27 + 1) + 8 * v12);
                dataSource2 = [(SearchUICollectionViewController *)self dataSource];
                v15 = [dataSource2 indexPathForItemIdentifier:v13];

                section = [v26 section];
                resultSection = [section resultSection];
                identifyingResult = [v13 identifyingResult];
                cardSection = [v13 cardSection];
                pathsCopy[2](pathsCopy, resultSection, identifyingResult, cardSection, v15);

                ++v12;
              }

              while (v10 != v12);
              v10 = [v25 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v10);
          }

          v7 = v24 + 1;
        }

        while (v24 + 1 != v23);
        v23 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v23);
    }
  }
}

- (void)toggleShowMoreForSection:(unint64_t)section
{
  v11 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:section];
  [(SearchUICollectionViewController *)self scrollToIndexPath:?];
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  sectionIdentifiers = [snapshot sectionIdentifiers];
  v8 = [sectionIdentifiers count];

  if (v8 > section)
  {
    sectionIdentifiers2 = [snapshot sectionIdentifiers];
    v10 = [sectionIdentifiers2 objectAtIndexedSubscript:section];

    [(SearchUICollectionViewController *)self toggleExpansionForSectionModel:v10];
  }
}

- (CGRect)scrollToIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(SearchUICollectionViewController *)self collectionView];
  [collectionView scrollToItemAtIndexPath:pathCopy atScrollPosition:0 animated:0];

  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)tapAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  v5 = [dataSource itemIdentifierForIndexPath:pathCopy];

  if (v5)
  {
    collectionView = [(SearchUICollectionViewController *)self collectionView];
    [collectionView selectItemAtIndexPath:pathCopy animated:0 scrollPosition:0];

    collectionView2 = [(SearchUICollectionViewController *)self collectionView];
    [(SearchUICollectionViewController *)self collectionView:collectionView2 didSelectItemAtIndexPath:pathCopy];
  }
}

- (void)setThreeDTouchEnabled:(BOOL)enabled
{
  if (enabled)
  {

    [(SearchUICollectionViewController *)self addOrbInteractionIfNeeded];
  }

  else
  {
    contextInteraction = [(SearchUICollectionViewController *)self contextInteraction];

    if (contextInteraction)
    {
      collectionView = [(SearchUICollectionViewController *)self collectionView];
      contextInteraction2 = [(SearchUICollectionViewController *)self contextInteraction];
      [collectionView removeInteraction:contextInteraction2];

      [(SearchUICollectionViewController *)self setPeekDelegate:0];

      [(SearchUICollectionViewController *)self setContextInteraction:0];
    }
  }
}

- (void)performExpansion:(BOOL)expansion withSection:(id)section
{
  expansionCopy = expansion;
  sectionCopy = section;
  if (expansionCopy)
  {
    v7 = 3;
  }

  else
  {
    v7 = 6;
  }

  [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:v7];
  if (sectionCopy)
  {
    section = [sectionCopy section];
    resultSection = [section resultSection];

    if (resultSection)
    {
      resultsViewDelegate = [(SearchUICollectionViewController *)self resultsViewDelegate];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        resultsViewDelegate2 = [(SearchUICollectionViewController *)self resultsViewDelegate];
        [resultsViewDelegate2 didChangeExpansionStateForSection:resultSection expanded:expansionCopy];
      }
    }

    v13 = MEMORY[0x1E696AC88];
    dataSource = [(SearchUICollectionViewController *)self dataSource];
    snapshot = [dataSource snapshot];
    v16 = [v13 indexPathForRow:0 inSection:{objc_msgSend(snapshot, "indexOfSectionIdentifier:", sectionCopy)}];

    collectionView = [(SearchUICollectionViewController *)self collectionView];
    v18 = [collectionView cellForItemAtIndexPath:v16];

    if ([v18 isExpandable])
    {
      [v18 updateExpanded:expansionCopy animated:1];
      [(SearchUICollectionViewController *)self updateTableForNewCellHeightAnimated:1];
    }

    else
    {
      objc_initWeak(&location, self);
      tableModelForExpansion = [(SearchUICollectionViewController *)self tableModelForExpansion];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __65__SearchUICollectionViewController_performExpansion_withSection___block_invoke;
      v23 = &unk_1E85B26D0;
      objc_copyWeak(&v26, &location);
      v24 = sectionCopy;
      v25 = v16;
      [(SearchUICollectionViewController *)self setTableModel:tableModelForExpansion animated:1 completion:&v20];

      [(SearchUICollectionViewController *)self didToggleExpansion:v20];
      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }
  }
}

void __65__SearchUICollectionViewController_performExpansion_withSection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained dataSource];
  v4 = [v3 snapshot];

  if ([v4 indexOfSectionIdentifier:*(a1 + 32)] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "numberOfItemsInSection:", *(a1 + 32)))
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x1E696AC88] indexPathForItem:v5 inSection:{objc_msgSend(*(a1 + 40), "section")}];
      v7 = [WeakRetained collectionView];
      v8 = [v7 cellForItemAtIndexPath:v6];

      v9 = MEMORY[0x1E69DD250];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __65__SearchUICollectionViewController_performExpansion_withSection___block_invoke_2;
      v13[3] = &unk_1E85B26A8;
      v14 = v8;
      v10 = v4;
      v15 = v10;
      v16 = v6;
      v11 = v6;
      v12 = v8;
      [v9 performWithoutAnimation:v13];

      ++v5;
    }

    while (v5 < [v10 numberOfItemsInSection:*(a1 + 32)]);
  }
}

void __65__SearchUICollectionViewController_performExpansion_withSection___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = [v3 sectionIdentifiers];
  v4 = [v7 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 48), "section")}];
  v5 = [v3 itemIdentifiersInSectionWithIdentifier:v4];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 48), "item")}];
  [v2 updateWithRowModel:v6];
}

- (BOOL)isExpandedForSectionModel:(id)model
{
  modelCopy = model;
  section = [modelCopy section];
  collectionSection = [section collectionSection];

  if (collectionSection)
  {
    expandedCollectionSections = [(SearchUICollectionViewController *)self expandedCollectionSections];
    section2 = [modelCopy section];
    collectionSection2 = [section2 collectionSection];
LABEL_5:
    v12 = collectionSection2;
    LOBYTE(resultSection) = [expandedCollectionSections containsObject:collectionSection2];

    goto LABEL_6;
  }

  section3 = [modelCopy section];
  resultSection = [section3 resultSection];

  if (resultSection)
  {
    expandedCollectionSections = [(SearchUICollectionViewController *)self expandedSections];
    section2 = [modelCopy section];
    collectionSection2 = [section2 resultSection];
    goto LABEL_5;
  }

LABEL_6:

  return resultSection;
}

- (void)toggleExpansionForSectionModel:(id)model
{
  modelCopy = model;
  section = [modelCopy section];
  collectionSection = [section collectionSection];

  if (collectionSection)
  {
    section2 = [modelCopy section];
    collectionSection2 = [section2 collectionSection];

    expandedCollectionSections = [(SearchUICollectionViewController *)self expandedCollectionSections];
    v9 = [expandedCollectionSections containsObject:collectionSection2];

    expandedCollectionSections2 = [(SearchUICollectionViewController *)self expandedCollectionSections];
    v11 = expandedCollectionSections2;
    if (v9)
    {
      [expandedCollectionSections2 removeObject:collectionSection2];
    }

    else
    {
      [expandedCollectionSections2 addObject:collectionSection2];
    }

    [(SearchUICollectionViewController *)self performExpansion:v9 ^ 1u withSection:modelCopy];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v25.receiver = self;
  v25.super_class = SearchUICollectionViewController;
  [(SearchUICollectionViewController *)&v25 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  previouslyFocusedView = [contextCopy previouslyFocusedView];
  if (previouslyFocusedView)
  {
    v8 = previouslyFocusedView;
    previouslyFocusedView2 = [contextCopy previouslyFocusedView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      previouslyFocusedView3 = [contextCopy previouslyFocusedView];
      collectionView = [(SearchUICollectionViewController *)self collectionView];
      v13 = [collectionView indexPathForCell:previouslyFocusedView3];

      if (v13)
      {
        [(SearchUICollectionViewController *)self setAdjacentSeparatorVisibility:1 indexPath:v13];
        if (_UISolariumEnabled())
        {
          traitCollection = [(SearchUICollectionViewController *)self traitCollection];
          userInterfaceIdiom = [traitCollection userInterfaceIdiom];

          if (userInterfaceIdiom == 3)
          {
            [(SearchUICollectionViewController *)self invalidateLayoutForIndexPath:v13];
          }
        }
      }
    }
  }

  nextFocusedView = [contextCopy nextFocusedView];
  if (nextFocusedView)
  {
    v17 = nextFocusedView;
    nextFocusedView2 = [contextCopy nextFocusedView];
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if (v19)
    {
      nextFocusedView3 = [contextCopy nextFocusedView];
      collectionView2 = [(SearchUICollectionViewController *)self collectionView];
      v22 = [collectionView2 indexPathForCell:nextFocusedView3];

      if (v22)
      {
        [(SearchUICollectionViewController *)self setAdjacentSeparatorVisibility:0 indexPath:v22];
        if (_UISolariumEnabled())
        {
          traitCollection2 = [(SearchUICollectionViewController *)self traitCollection];
          userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

          if (userInterfaceIdiom2 == 3)
          {
            [(SearchUICollectionViewController *)self invalidateLayoutForIndexPath:v22];
          }
        }
      }
    }
  }
}

- (void)invalidateLayoutForIndexPath:(id)path
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DC860];
  pathCopy = path;
  v6 = objc_alloc_init(v4);
  v10[0] = pathCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  [v6 invalidateItemsAtIndexPaths:v7];
  collectionView = [(SearchUICollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayoutWithContext:v6];
}

- (void)setAdjacentSeparatorVisibility:(BOOL)visibility indexPath:(id)path
{
  visibilityCopy = visibility;
  pathCopy = path;
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  v8 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(pathCopy, "section")}];
  section = [pathCopy section];
  if (section >= [snapshot numberOfSections])
  {
    v11 = 0;
  }

  else
  {
    sectionIdentifiers = [snapshot sectionIdentifiers];
    v11 = [sectionIdentifiers objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    if (v11 && ![objc_opt_class() sectionType])
    {
      if (![pathCopy item])
      {
        collectionView = [(SearchUICollectionViewController *)self collectionView];
        v13 = +[SearchUISupplementaryIdentifiers sectionTopSeparatorKind];
        v14 = [collectionView _visibleSupplementaryViewOfKind:v13 atIndexPath:v8];

        if (v14)
        {
          [v14 setHidden:!visibilityCopy];
        }
      }

      item = [pathCopy item];
      collectionView2 = [(SearchUICollectionViewController *)self collectionView];
      v17 = [collectionView2 numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}] - 1;

      if (item == v17)
      {
        collectionView3 = [(SearchUICollectionViewController *)self collectionView];
        v19 = +[SearchUISupplementaryIdentifiers sectionBottomSeparatorKind];
        v20 = [collectionView3 _visibleSupplementaryViewOfKind:v19 atIndexPath:v8];

        if (v20)
        {
          [v20 setHidden:!visibilityCopy];
        }
      }
    }
  }
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  v7 = [dataSource itemIdentifierForIndexPath:pathCopy];

  LOBYTE(pathCopy) = [v7 isFocusable];
  return pathCopy;
}

- (void)didUpdateKeyboardFocusToResult:(id)result cardSection:(id)section
{
  resultCopy = result;
  sectionCopy = section;
  interactionDelegate = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    interactionDelegate2 = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];
    [interactionDelegate2 didUpdateKeyboardFocusToResult:resultCopy cardSection:sectionCopy];
  }
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if ([(SearchUICollectionViewController *)self forwardFeedbackForSelector:?])
  {
    feedbackListener = [(SearchUICollectionViewController *)self feedbackListener];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SearchUICollectionViewController;
    feedbackListener = [(SearchUICollectionViewController *)&v7 forwardingTargetForSelector:selector];
  }

  return feedbackListener;
}

- (BOOL)forwardFeedbackForSelector:(SEL)selector
{
  if (protocol_getMethodDescription(&unk_1F55F4898, selector, 0, 1).name)
  {
    feedbackListener = [(SearchUICollectionViewController *)self feedbackListener];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v6.receiver = self;
  v6.super_class = SearchUICollectionViewController;
  return [(SearchUICollectionViewController *)&v6 respondsToSelector:?]|| [(SearchUICollectionViewController *)self forwardFeedbackForSelector:selector];
}

- (BOOL)isEntitySearch
{
  v17 = *MEMORY[0x1E69E9840];
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v5 = [sectionIdentifiers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(sectionIdentifiers);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v6 = 1;
        }

        v7 |= [v10 drawPlattersIfNecessary] ^ 1;
      }

      v5 = [sectionIdentifiers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
    LOBYTE(v5) = v7 & v6;
  }

  return v5 & 1;
}

- (void)setFooterView:(id)view
{
  v19[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (self->_footerView != viewCopy)
  {
    collectionView = [(SearchUICollectionViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];

    configuration = [collectionViewLayout configuration];
    v9 = configuration;
    if (viewCopy)
    {
      dataSource = [(SearchUICollectionViewController *)self dataSource];
      v11 = [dataSource registerFooterView:viewCopy];

      v12 = MEMORY[0x1E6995588];
      v13 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
      v14 = [MEMORY[0x1E6995558] estimatedDimension:1.0];
      v15 = [v12 sizeWithWidthDimension:v13 heightDimension:v14];

      v16 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v15 elementKind:v11 alignment:5];
      v19[0] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [v9 setBoundarySupplementaryItems:v17];
    }

    else
    {
      [configuration setBoundarySupplementaryItems:MEMORY[0x1E695E0F0]];
    }

    objc_storeStrong(&self->_footerView, view);
    [collectionViewLayout setConfiguration:v9];
  }

  searchUIAttributes = [(SearchUICollectionViewController *)self searchUIAttributes];
  [searchUIAttributes setHasFooter:viewCopy != 0];
}

- (void)lockupViewForAppIdentifier:(id)identifier didFailRequestWithError:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  feedbackListener = [(SearchUICollectionViewController *)self feedbackListener];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    feedbackListener2 = [(SearchUICollectionViewController *)self feedbackListener];
    [feedbackListener2 lockupViewForAppIdentifier:identifierCopy didFailRequestWithError:errorCopy];
  }
}

- (void)lockupViewEngagedForAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  feedbackListener = [(SearchUICollectionViewController *)self feedbackListener];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    feedbackListener2 = [(SearchUICollectionViewController *)self feedbackListener];
    [feedbackListener2 lockupViewEngagedForAppIdentifier:identifierCopy];
  }
}

- (void)lockupViewForAppIdentifier:(id)identifier didChangeState:(id)state
{
  identifierCopy = identifier;
  stateCopy = state;
  feedbackListener = [(SearchUICollectionViewController *)self feedbackListener];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    feedbackListener2 = [(SearchUICollectionViewController *)self feedbackListener];
    [feedbackListener2 lockupViewForAppIdentifier:identifierCopy didChangeState:stateCopy];
  }
}

@end