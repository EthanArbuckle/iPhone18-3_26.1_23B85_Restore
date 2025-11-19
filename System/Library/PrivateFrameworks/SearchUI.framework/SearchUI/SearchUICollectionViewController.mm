@interface SearchUICollectionViewController
- (BOOL)canHighlightRowAtIndexPath:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)doesIndexPathExist:(id)a3;
- (BOOL)forwardFeedbackForSelector:(SEL)a3;
- (BOOL)isActiveRunningShortcutForIndexPath:(id)a3;
- (BOOL)isEntitySearch;
- (BOOL)isExpandedForSectionModel:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)threeDTouchEnabled;
- (CGRect)lastVisibleBounds;
- (CGRect)scrollToIndexPath:(id)a3;
- (NSIndexPath)focusedIndexPath;
- (SearchUICardViewDelegate)cardViewDelegate;
- (SearchUICollectionViewController)init;
- (SearchUICollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SearchUICommandDelegate)commandDelegate;
- (SearchUICommandEnvironment)commandEnvironment;
- (SearchUICustomViewProvider)customViewProvider;
- (SearchUIFeedbackDelegate)feedbackListener;
- (SearchUIResultsViewDelegate)resultsViewDelegate;
- (SearchUISizingDelegate)sizingDelegate;
- (id)cellForRowModel:(id)a3 atIndexPath:(id)a4;
- (id)commandEnvironmentForIndexPath:(id)a3;
- (id)currentSnapshotLayoutConfiguration;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)indexPathForFocusView:(id)a3;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (id)preferredFocusSystem;
- (id)restorationContext;
- (id)viewForRowModel:(id)a3;
- (id)visibleViewsInPotentiallyVisibleViews:(id)a3 withinRegion:(CGRect)a4;
- (int64_t)numberOfSections;
- (void)_collectionView:(id)a3 orthogonalScrollViewDidScroll:(id)a4 section:(int64_t)a5;
- (void)addOrbInteractionIfNeeded;
- (void)cardSectionViewDidInvalidateSize:(id)a3 animate:(BOOL)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didEndDisplayingSupplementaryView:(id)a4 forElementOfKind:(id)a5 atIndexPath:(id)a6;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)contentSizeDidChange:(CGSize)a3;
- (void)copy:(id)a3;
- (void)deselectSelectedRowsIfNeeded;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)didUpdateKeyboardFocusToResult:(id)a3 cardSection:(id)a4;
- (void)invalidateLayout;
- (void)invalidateLayoutForIndexPath:(id)a3;
- (void)iterateIndexPaths:(id)a3;
- (void)lockupViewEngagedForAppIdentifier:(id)a3;
- (void)lockupViewForAppIdentifier:(id)a3 didChangeState:(id)a4;
- (void)lockupViewForAppIdentifier:(id)a3 didFailRequestWithError:(id)a4;
- (void)performExpansion:(BOOL)a3 withSection:(id)a4;
- (void)performRecapScrollTestWithTestName:(id)a3 completion:(id)a4;
- (void)performScrollTestWithHandlerForFirstScrollCompletion:(id)a3 completion:(id)a4;
- (void)purgeMemory;
- (void)removeRowModel:(id)a3 completion:(id)a4;
- (void)removeSectionContainingRowModel:(id)a3 completion:(id)a4;
- (void)removeSectionModel:(id)a3 completion:(id)a4;
- (void)resetVisibleFeedback;
- (void)resignTextField;
- (void)scrollAndFocusAtIndexPath:(id)a3;
- (void)scrollAndSelectLastSelectedIndexPath;
- (void)scrollRowModelToVisible:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)sendVisibleFeedbackIfNecessary;
- (void)setAdjacentSeparatorVisibility:(BOOL)a3 indexPath:(id)a4;
- (void)setCommandDelegate:(id)a3;
- (void)setFocusableIndexPath:(id)a3;
- (void)setFooterView:(id)a3;
- (void)setInPreviewPlatter:(BOOL)a3;
- (void)setRestorationContext:(id)a3;
- (void)setSectionBackgroundHighlighted:(BOOL)a3 indexPath:(id)a4;
- (void)setShouldUseInsetRoundedSections:(BOOL)a3;
- (void)setShouldUseStandardSectionInsets:(BOOL)a3;
- (void)setTableModel:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setThreeDTouchEnabled:(BOOL)a3;
- (void)shortcutDidEnd:(id)a3;
- (void)skipDown;
- (void)skipUp;
- (void)tapAtIndexPath:(id)a3;
- (void)toggleExpansionForSectionModel:(id)a3;
- (void)toggleShowMoreForSection:(unint64_t)a3;
- (void)updateContentScrolledOffScreenStatus;
- (void)updateTableForNewCellHeightAnimated:(BOOL)a3;
- (void)updateViewControllerTitle:(id)a3;
- (void)updateWithCardSection:(id)a3;
- (void)updateWithResultSections:(id)a3;
- (void)updateWithSnapshot:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)updateWithTableModel:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
    v8 = [(SearchUICollectionViewController *)v2 collectionView];
    [v8 setBackgroundColor:0];

    v9 = [(SearchUICollectionViewController *)v2 collectionView];
    [v9 _setShouldBecomeFocusedOnSelection:1];

    v10 = [(SearchUICollectionViewController *)v2 collectionView];
    [v10 _setDelaysUserInitiatedItemSelection:1];

    v11 = [[SearchUICollectionViewDataSource alloc] initWithController:v2];
    [(SearchUICollectionViewController *)v2 setDataSource:v11];

    v12 = [(SearchUICollectionViewController *)v2 dataSource];
    v13 = [(SearchUICollectionViewController *)v2 collectionView];
    [v13 setDataSource:v12];

    v14 = [(SearchUICollectionViewController *)v2 collectionView];
    [v14 setContentInsetAdjustmentBehavior:1];

    v15 = [(SearchUICollectionViewController *)v2 collectionView];
    [v15 _setAutomaticContentOffsetAdjustmentEnabled:0];

    if (_UISolariumEnabled() && [MEMORY[0x1E69D9240] isSpotlightApp] && objc_msgSend(MEMORY[0x1E69D9240], "isIpad"))
    {
      v16 = [(SearchUICollectionViewController *)v2 collectionView];
      [v16 _setHiddenPocketEdges:15];
    }

    [(SearchUICollectionViewController *)v2 addOrbInteractionIfNeeded];
    v17 = objc_opt_new();
    [(SearchUICollectionViewController *)v2 setPotentiallyVisibleCells:v17];

    v18 = objc_opt_new();
    [(SearchUICollectionViewController *)v2 setPotentiallyVisibleHeaders:v18];

    v19 = MEMORY[0x1E69D9108];
    v20 = [(SearchUICollectionViewController *)v2 view];
    v21 = [v19 bestAppearanceForView:v20];
    v22 = [(SearchUICollectionViewController *)v2 searchUIAttributes];
    [v22 setAppearance:v21];

    [(SearchUICollectionViewController *)v2 setIsVisibleFeedbackEnabled:1];
    v23 = [(SearchUICollectionViewController *)v2 view];
    v24 = [v23 layer];
    [v24 setAllowsGroupOpacity:0];

    v25 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0x100000 action:sel_skipDown];
    [v25 setWantsPriorityOverSystemBehavior:1];
    [(SearchUICollectionViewController *)v2 addKeyCommand:v25];
    v26 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0x100000 action:sel_skipUp];
    [v26 setWantsPriorityOverSystemBehavior:1];
    [(SearchUICollectionViewController *)v2 addKeyCommand:v26];
    v27 = objc_opt_new();
    [(SearchUICollectionViewController *)v2 setExpandedCollectionSections:v27];

    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v2 selector:sel_deselectSelectedRowsIfNeeded name:*MEMORY[0x1E69DDAB0] object:0];

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
  v4 = [(SearchUICollectionViewController *)self resultsViewDelegate];
  [v3 setResultsViewDelegate:v4];

  [v3 setShouldUseStandardSectionInsets:{-[SearchUICollectionViewController shouldUseStandardSectionInsets](self, "shouldUseStandardSectionInsets")}];
  [v3 setPresentingViewController:self];
  [v3 setSelectableGridPunchoutIndex:{-[SearchUICollectionViewController preferredPunchoutIndex](self, "preferredPunchoutIndex")}];
  [v3 setThreeDTouchEnabled:{-[SearchUICollectionViewController threeDTouchEnabled](self, "threeDTouchEnabled")}];
  v5 = [(SearchUICollectionViewController *)self commandDelegate];
  [v3 setCommandDelegate:v5];

  [v3 setRowModelViewDelegate:self];
  v6 = [(SearchUICollectionViewController *)self cardViewDelegate];
  [v3 setCardViewDelegate:v6];

  v7 = [(SearchUICollectionViewController *)self searchUIAttributes];
  [v7 setCommandEnvironment:v3];

  return v3;
}

- (SearchUIResultsViewDelegate)resultsViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resultsViewDelegate);

  return WeakRetained;
}

- (BOOL)threeDTouchEnabled
{
  v2 = [(SearchUICollectionViewController *)self contextInteraction];
  v3 = v2 != 0;

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
  v2 = [(SearchUICollectionViewController *)self dataSource];
  v3 = [v2 currentSnapshotLayoutConfiguration];

  return v3;
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = SearchUICollectionViewController;
  [(SearchUICollectionViewController *)&v18 viewDidLayoutSubviews];
  v3 = [(SearchUICollectionViewController *)self view];
  [v3 visibleBounds];
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
    v16 = [(SearchUICollectionViewController *)self latestVisibleCardSectionsAccountedForInFeedback];
    v17 = [v16 count];

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
  v2 = self;
  v83 = *MEMORY[0x1E69E9840];
  if ([(SearchUICollectionViewController *)self isVisibleFeedbackEnabled])
  {
    if ([(SearchUICollectionViewController *)v2 _appearState]!= 3)
    {
      if ([(SearchUICollectionViewController *)v2 _appearState])
      {
        v3 = [(SearchUICollectionViewController *)v2 dataSource];
        v4 = [v3 snapshot];
        v5 = [v4 numberOfSections];

        if (v5 >= 1)
        {
          v6 = [(SearchUICollectionViewController *)v2 collectionView];
          [v6 visibleBounds];
          v8 = v7;
          v10 = v9;
          v12 = v11;
          v14 = v13;

          v15 = [(SearchUICollectionViewController *)v2 view];
          [v15 safeAreaInsets];
          v17 = v16;

          v18 = v10 + v17;
          [(SearchUIKeyboardableCollectionViewController *)v2 currentKeyboardHeight];
          v20 = v14 - (v17 + v19);
          v21 = [(SearchUICollectionViewController *)v2 tableModel];
          v69 = [v21 queryId];

          v22 = [(SearchUICollectionViewController *)v2 feedbackListener];
          if (objc_opt_respondsToSelector())
          {
            v23 = [(SearchUICollectionViewController *)v2 potentiallyVisibleCells];
            v24 = [v23 count];

            if (v24)
            {
              v25 = [(SearchUICollectionViewController *)v2 potentiallyVisibleCells];
              v71 = v2;
              v26 = [(SearchUICollectionViewController *)v2 visibleViewsInPotentiallyVisibleViews:v25 withinRegion:v8, v18, v12, v20];

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
                      v35 = [v34 visibleResults];
                      if (v35)
                      {
                        [v27 addObjectsFromArray:v35];
                      }

                      v36 = [v34 rowModel];
                      v37 = [v36 cardSection];

                      if (v37)
                      {
                        [v28 addObject:v37];
                      }
                    }
                  }

                  v31 = [v29 countByEnumeratingWithState:&v77 objects:v82 count:16];
                }

                while (v31);
              }

              v2 = v71;
              v38 = [(SearchUICollectionViewController *)v71 latestVisibleResultsAccountedForInFeedback];
              v39 = [v27 copy];
              [(SearchUICollectionViewController *)v71 setLatestVisibleResultsAccountedForInFeedback:v39];

              v40 = [(SearchUICollectionViewController *)v71 latestVisibleCardSectionsAccountedForInFeedback];
              v41 = [v28 copy];
              [(SearchUICollectionViewController *)v71 setLatestVisibleCardSectionsAccountedForInFeedback:v41];

              v42 = [(SearchUICollectionViewController *)v71 lastVisibleFeedbackTrigger];
              v43 = [v27 isEqual:v38];
              v44 = [v28 isEqual:v40];
              if (!v43 || (v44 & 1) == 0)
              {
                v45 = objc_alloc(MEMORY[0x1E69CA588]);
                v46 = [v27 array];
                v47 = [v28 array];
                v48 = [v45 initWithResults:v46 triggerEvent:v42 visibleButtons:0 visibleCardSections:v47];

                v2 = v71;
                [v48 setQueryId:v69];
                v49 = [(SearchUICollectionViewController *)v71 feedbackListener];
                [v49 resultsDidBecomeVisible:v48];
              }
            }
          }

          else
          {
          }

          v50 = [(SearchUICollectionViewController *)v2 feedbackListener];
          if (objc_opt_respondsToSelector())
          {
            v51 = [(SearchUICollectionViewController *)v2 potentiallyVisibleHeaders];
            v52 = [v51 count];

            if (!v52)
            {
              return;
            }

            v53 = MEMORY[0x1E695DFA0];
            v54 = [(SearchUICollectionViewController *)v2 potentiallyVisibleHeaders];
            v55 = [(SearchUICollectionViewController *)v2 visibleViewsInPotentiallyVisibleViews:v54 withinRegion:v8, v18, v12, v20];
            v56 = [v53 orderedSetWithArray:v55];

            v57 = objc_opt_new();
            v72 = v2;
            v58 = [(SearchUICollectionViewController *)v2 latestVisibleSectionHeadersAccountedForInFeedback];
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v50 = v56;
            v59 = [v50 countByEnumeratingWithState:&v73 objects:v81 count:16];
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
                    objc_enumerationMutation(v50);
                  }

                  v63 = *(*(&v73 + 1) + 8 * j);
                  v64 = [SearchUISupplementaryProvider sectionForHeaderView:v63];
                  if (v64)
                  {
                    [v57 addObject:v64];
                    if (([v58 containsObject:v64] & 1) == 0)
                    {
                      v65 = [SearchUISupplementaryProvider headerTypeForHeaderView:v63];
                      v66 = [objc_alloc(MEMORY[0x1E69CA590]) initWithSection:v64 headerType:v65];
                      [v66 setQueryId:v70];
                      v67 = [(SearchUICollectionViewController *)v72 feedbackListener];
                      [v67 sectionHeaderDidBecomeVisible:v66];
                    }
                  }
                }

                v60 = [v50 countByEnumeratingWithState:&v73 objects:v81 count:16];
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
  v3 = [(SearchUICollectionViewController *)self contextInteraction];

  if (!v3)
  {
    v4 = [[SearchUICollectionPeekDelegate alloc] initWithViewController:self];
    [(SearchUICollectionViewController *)self setPeekDelegate:v4];

    v5 = objc_alloc(MEMORY[0x1E69DC8E0]);
    v6 = [(SearchUICollectionViewController *)self peekDelegate];
    v7 = [v5 initWithDelegate:v6];
    [(SearchUICollectionViewController *)self setContextInteraction:v7];

    v9 = [(SearchUICollectionViewController *)self collectionView];
    v8 = [(SearchUICollectionViewController *)self contextInteraction];
    [v9 addInteraction:v8];
  }
}

- (void)purgeMemory
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(SearchUICollectionViewController *)self dataSource];
  v4 = [v3 snapshot];

  if (v4)
  {
    [(SearchUICollectionViewController *)self setTableModel:0];
    [(SearchUICollectionViewController *)self updateWithSnapshot:0];
    v5 = [(SearchUICollectionViewController *)self collectionView];
    [v5 _purgeReuseQueues];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(SearchUICollectionViewController *)self childViewControllers];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [v11 beginAppearanceTransition:0 animated:0];
        [v11 willMoveToParentViewController:0];
        [v11 removeFromParentViewController];
        [v11 endAppearanceTransition];
        v12 = [v11 view];
        [v12 removeFromSuperview];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([(SearchUICollectionViewController *)self threeDTouchEnabled])
  {
    [(SearchUICollectionViewController *)self setThreeDTouchEnabled:0];
    [(SearchUICollectionViewController *)self setThreeDTouchEnabled:1];
  }

  v13 = [(SearchUICollectionViewController *)self potentiallyVisibleHeaders];
  [v13 removeAllObjects];

  v14 = [(SearchUICollectionViewController *)self potentiallyVisibleCells];
  [v14 removeAllObjects];

  [(SearchUICollectionViewController *)self resetVisibleFeedback];
  +[SearchUIUtilities purgeMemory];
}

- (void)updateContentScrolledOffScreenStatus
{
  v3 = [(SearchUICollectionViewController *)self navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [(SearchUICollectionViewController *)self resultsViewDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v9 = [(SearchUICollectionViewController *)self resultsViewDelegate];
      v7 = [(SearchUICollectionViewController *)self collectionView];
      [v7 contentOffset];
      [v9 didUpdateContentScrolledOffScreenStatus:v8 > 0.5 animated:1];
    }
  }
}

- (void)deselectSelectedRowsIfNeeded
{
  if (([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode] & 1) == 0)
  {
    v6 = [(SearchUICollectionViewController *)self collectionView];
    v3 = [(SearchUICollectionViewController *)self collectionView];
    v4 = [v3 indexPathsForSelectedItems];
    v5 = [v4 firstObject];
    [v6 deselectItemAtIndexPath:v5 animated:1];
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

- (SearchUICollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = SearchUICollectionViewController;
  v4 = [(SearchUICollectionViewController *)&v10 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    searchUIAttributes = v4->_searchUIAttributes;
    v4->_searchUIAttributes = v5;

    v7 = [(SearchUICollectionViewController *)v4 commandEnvironment];
    [(SearchUICollectionViewAttributes *)v4->_searchUIAttributes setCommandEnvironment:v7];

    [(SearchUICollectionViewAttributes *)v4->_searchUIAttributes setHeaderDelegate:v4];
    v8 = [(SearchUICollectionViewController *)v4 traitCollection];
    -[SearchUICollectionViewAttributes setIsInCarPlay:](v4->_searchUIAttributes, "setIsInCarPlay:", [v8 userInterfaceIdiom] == 3);

    [(SearchUICollectionViewController *)v4 setDragInteractionEnabled:1];
    [(SearchUICollectionViewController *)v4 setPreferredPunchoutIndex:-1];
  }

  return v4;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel_copy_ == a3)
  {
    v5 = [(SearchUICollectionViewController *)self preferredFocusSystem];
    v6 = [v5 focusedItem];

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

- (void)copy:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = [(SearchUICollectionViewController *)self preferredFocusSystem];
  v5 = [v4 focusedItem];

  v6 = [v5 rowModel];
  v7 = [(SearchUICollectionViewController *)self commandEnvironment];
  v8 = [SearchUICommandHandler handlerForRowModel:v6 environment:v7];
  v9 = [v8 itemProvider];

  if (v9)
  {
    v33[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    v11 = [MEMORY[0x1E69DCD50] generalPasteboard];
    [v11 setItemProviders:v10];
  }

  else
  {
    v12 = [v5 rowModel];
    v13 = [v12 cardSection];
    v14 = [v13 previewButtonItems];
    v15 = [v14 count];

    if (!v15)
    {
      goto LABEL_4;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = [v5 rowModel];
    v17 = [v16 cardSection];
    v10 = [v17 previewButtonItems];

    v18 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
            objc_enumerationMutation(v10);
          }

          v22 = *(*(&v28 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [v22 command];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v25 = [v22 command];
              v26 = [(SearchUICollectionViewController *)self commandEnvironment];
              v27 = [SearchUICommandHandler handlerForCommand:v25 environment:v26];
              [v27 executeWithTriggerEvent:18];
            }
          }
        }

        v19 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v19);
    }
  }

LABEL_4:
}

- (void)skipDown
{
  v3 = [(SearchUICollectionViewController *)self preferredFocusSystem];
  v15 = [v3 focusedItem];

  v4 = [(SearchUIKeyboardableCollectionViewController *)self textField];
  if (v15 == v4)
  {
    v12 = [(SearchUICollectionViewController *)self dataSource];
    v13 = [v12 snapshot];
    v14 = [v13 numberOfSections];

    if (v14 >= 1)
    {
      v6 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
      [(SearchUICollectionViewController *)self setFocusableIndexPath:v6];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v5 = [(SearchUICollectionViewController *)self indexPathForFocusView:v15];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 section] + 1;
    v8 = [(SearchUICollectionViewController *)self dataSource];
    v9 = [v8 snapshot];
    v10 = [v9 numberOfSections];

    if (v7 < v10)
    {
      v11 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(v6, "section") + 1}];
      [(SearchUICollectionViewController *)self scrollAndFocusAtIndexPath:v11];
    }
  }

LABEL_8:
}

- (void)skipUp
{
  v3 = [(SearchUICollectionViewController *)self preferredFocusSystem];
  v8 = [v3 focusedItem];

  v4 = [(SearchUIKeyboardableCollectionViewController *)self textField];

  if (v8 != v4)
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

- (id)indexPathForFocusView:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICollectionViewController *)self collectionView];

  v6 = 0;
  if (v4)
  {
    if (v5 != v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (-[SearchUICollectionViewController collectionView](self, "collectionView"), v7 = objc_claimAutoreleasedReturnValue(), [v7 indexPathForCell:v4], v6 = objc_claimAutoreleasedReturnValue(), v7, !v6))
      {
        v8 = [v4 superview];
        v6 = [(SearchUICollectionViewController *)self indexPathForFocusView:v8];
      }
    }
  }

  return v6;
}

- (void)scrollAndFocusAtIndexPath:(id)a3
{
  v8 = a3;
  v4 = [(SearchUICollectionViewController *)self collectionView];
  [v4 scrollToItemAtIndexPath:v8 atScrollPosition:4 animated:0];

  v5 = [(SearchUICollectionViewController *)self collectionView];
  [v5 layoutIfNeeded];

  v6 = [(SearchUICollectionViewController *)self collectionView];
  [v6 scrollToItemAtIndexPath:v8 atScrollPosition:4 animated:0];

  v7 = [(SearchUICollectionViewController *)self collectionView];
  [v7 layoutIfNeeded];

  [(SearchUICollectionViewController *)self setFocusableIndexPath:v8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SearchUICollectionViewController;
  [(SearchUICollectionViewController *)&v4 viewWillAppear:a3];
  [(SearchUICollectionViewController *)self deselectSelectedRowsIfNeeded];
  [(SearchUICollectionViewController *)self updateContentScrolledOffScreenStatus];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [SearchUIAppEntityAnnotator registerCollectionViewController:self];
  v5.receiver = self;
  v5.super_class = SearchUICollectionViewController;
  [(SearchUICollectionViewController *)&v5 viewDidAppear:v3];
  [(SearchUICollectionViewController *)self sendVisibleFeedbackIfNecessary];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SearchUICollectionViewController;
  [(SearchUICollectionViewController *)&v4 viewDidDisappear:a3];
  [(SearchUICollectionViewController *)self resetVisibleFeedback];
}

- (void)updateWithCardSection:(id)a3
{
  v4 = [SearchUITableModel tableModelWithCardSections:a3 isInline:1 queryId:0];
  [(SearchUICollectionViewController *)self updateWithTableModel:v4];
}

- (void)updateWithResultSections:(id)a3
{
  v4 = [SearchUITableModel tableModelWithSections:a3 expandedSections:0 expandedCollectionCardSections:0];
  [(SearchUICollectionViewController *)self updateWithTableModel:v4];
}

- (void)updateWithTableModel:(id)a3
{
  v4 = a3;
  v6 = objc_opt_new();
  v5 = [v6 buildSnapshotFromTableModel:v4];

  [(SearchUICollectionViewController *)self updateWithSnapshot:v5];
}

- (BOOL)isActiveRunningShortcutForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICollectionViewController *)self activeRunViewSource];

  if (v5)
  {
    v6 = [(SearchUICollectionViewController *)self dataSource];
    v7 = [v6 itemIdentifierForIndexPath:v4];

    v8 = [v7 cardSection];
    v9 = [v8 command];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 voiceShortcutIdentifier];
      v11 = [(SearchUICollectionViewController *)self activeVoiceShortcutIdentifier];
      v12 = [v10 isEqualToString:v11];
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

- (void)shortcutDidEnd:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v7 = [v5 object];
  [v6 removeObserver:self name:@"SearchUICommandHandlerShortcutDidEndNotification" object:v7];

  v8 = [(SearchUICollectionViewController *)self activeRunViewSource];
  v9 = [v5 object];

  LODWORD(v5) = [v8 isEqual:v9];
  if (v5)
  {
    [(SearchUICollectionViewController *)self setActiveRunViewSource:0];

    [(SearchUICollectionViewController *)self setActiveVoiceShortcutIdentifier:0];
  }
}

- (void)contentSizeDidChange:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SearchUICollectionViewController *)self sizingDelegate];
  [v6 contentSizeDidChange:-[SearchUICollectionViewController collectionViewAnimating](self animated:{"collectionViewAnimating"), width, height}];
}

- (id)cellForRowModel:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SearchUICollectionViewController *)self dataSource];
  v9 = [v8 cellForRowModel:v7 atIndexPath:v6];

  LODWORD(v7) = [(SearchUICollectionViewController *)self isActiveRunningShortcutForIndexPath:v6];
  if (v7)
  {
    v10 = [(SearchUICollectionViewController *)self activeRunViewSource];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(SearchUICollectionViewController *)self activeRunViewSource];
      v13 = [v9 contentView];
      [v12 updateSourceView:v13];
    }
  }

  return v9;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v15 = a4;
  v7 = a5;
  v8 = [(SearchUICollectionViewController *)self potentiallyVisibleCells];
  [v8 setObject:v15 forKeyedSubscript:v7];

  if (objc_opt_respondsToSelector())
  {
    v9 = [v15 embeddedViewController];

    if (v9)
    {
      v10 = [v15 embeddedViewController];
      [v10 beginAppearanceTransition:1 animated:0];
      [(SearchUICollectionViewController *)self addChildViewController:v10];
      [v10 didMoveToParentViewController:self];
      [v10 endAppearanceTransition];
    }
  }

  v11 = [v15 rowModel];
  v12 = [v11 allowsAppEntityAnnotation];

  if (!v12 || ([v15 rowModel], v13 = objc_claimAutoreleasedReturnValue(), v14 = +[SearchUIAppEntityAnnotator annotateView:withRowModel:](SearchUIAppEntityAnnotator, "annotateView:withRowModel:", v15, v13), v13, !v14))
  {
    [SearchUIAppEntityAnnotator resetAnnotationForView:v15];
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v17 = a4;
  v7 = a5;
  v8 = [(SearchUICollectionViewController *)self potentiallyVisibleCells];
  v9 = [v8 objectForKey:v7];
  v10 = [v9 isEqual:v17];

  if (v10)
  {
    v11 = [(SearchUICollectionViewController *)self potentiallyVisibleCells];
    [v11 removeObjectForKey:v7];
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [v17 embeddedViewController];

    if (v12)
    {
      v13 = [v17 embeddedViewController];
      [v13 beginAppearanceTransition:0 animated:0];
      [v13 willMoveToParentViewController:0];
      [v13 removeFromParentViewController];
      [v13 endAppearanceTransition];
    }
  }

  if ([(SearchUICollectionViewController *)self isActiveRunningShortcutForIndexPath:v7])
  {
    v14 = [(SearchUICollectionViewController *)self activeRunViewSource];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(SearchUICollectionViewController *)self activeRunViewSource];
      [v16 updateSourceView:0];
    }
  }

  [SearchUIAppEntityAnnotator resetAnnotationForView:v17];
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v32 = a4;
  v9 = a5;
  v10 = a6;
  v11 = +[SearchUISupplementaryIdentifiers sectionHeaderKind];
  v12 = [v9 isEqualToString:v11];

  if (v12)
  {
    v13 = [(SearchUICollectionViewController *)self potentiallyVisibleHeaders];
    [v13 setObject:v32 forKeyedSubscript:v10];
  }

  v14 = +[SearchUISupplementaryIdentifiers sectionTopSeparatorKind];
  if ([v9 isEqualToString:v14])
  {
  }

  else
  {
    v15 = +[SearchUISupplementaryIdentifiers sectionBottomSeparatorKind];
    v16 = [v9 isEqualToString:v15];

    if (!v16)
    {
      goto LABEL_16;
    }
  }

  v17 = [(SearchUICollectionViewController *)self focusedIndexPath];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 section];
    if (v19 == [v10 section])
    {
      v20 = [(SearchUICollectionViewController *)self dataSource];
      v21 = [v20 snapshot];

      v22 = [v10 section];
      if (v22 >= [v21 numberOfSections])
      {
        v24 = 0;
      }

      else
      {
        v23 = [v21 sectionIdentifiers];
        v24 = [v23 objectAtIndexedSubscript:{objc_msgSend(v10, "section")}];

        if (v24 && ![objc_opt_class() sectionType])
        {
          v25 = +[SearchUISupplementaryIdentifiers sectionTopSeparatorKind];
          v26 = [v9 isEqualToString:v25];

          if (v26)
          {
            v27 = [v10 item] == 0;
LABEL_21:
            v31 = v27;
            [v32 setHidden:v31];
            goto LABEL_14;
          }

          v28 = +[SearchUISupplementaryIdentifiers sectionBottomSeparatorKind];
          v29 = [v9 isEqualToString:v28];

          if (v29)
          {
            v30 = [v10 item];
            v27 = v30 == [v21 numberOfItemsInSection:v24] - 1;
            goto LABEL_21;
          }
        }
      }

LABEL_14:
    }
  }

LABEL_16:
}

- (void)collectionView:(id)a3 didEndDisplayingSupplementaryView:(id)a4 forElementOfKind:(id)a5 atIndexPath:(id)a6
{
  v12 = a6;
  v8 = a5;
  v9 = +[SearchUISupplementaryIdentifiers sectionHeaderKind];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = [(SearchUICollectionViewController *)self potentiallyVisibleHeaders];
    [v11 removeObjectForKey:v12];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v9.receiver = self;
  v9.super_class = SearchUICollectionViewController;
  v4 = a3;
  [(SearchUIKeyboardableCollectionViewController *)&v9 scrollViewDidScroll:v4];
  v5 = [v4 panGestureRecognizer];
  [v5 velocityInView:v4];
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

- (void)_collectionView:(id)a3 orthogonalScrollViewDidScroll:(id)a4 section:(int64_t)a5
{
  [a4 _panGestureVelocityInView:a3];
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

- (id)visibleViewsInPotentiallyVisibleViews:(id)a3 withinRegion:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  v9 = a3;
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
  [v9 enumerateKeysAndObjectsUsingBlock:v27];
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

        v20 = [v9 objectForKeyedSubscript:*(*(&v23 + 1) + 8 * i)];
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

- (BOOL)canHighlightRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICollectionViewController *)self dataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  v7 = [(SearchUICollectionViewController *)self collectionView];
  v8 = [v7 cellForItemAtIndexPath:v4];

  v9 = [(SearchUICollectionViewController *)self commandEnvironment];
  if ([SearchUICommandHandler hasValidHandlerForRowModel:v6 environment:v9])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v8 needsInternalFocus];
  }

  return v10;
}

- (void)scrollAndSelectLastSelectedIndexPath
{
  v3 = [(SearchUICollectionViewController *)self lastSelectedIndexPath];
  if (v3)
  {
    v4 = v3;
    v5 = [(SearchUICollectionViewController *)self dataSource];
    v6 = [(SearchUICollectionViewController *)self lastSelectedIndexPath];
    v7 = [v5 itemIdentifierForIndexPath:v6];

    if (v7)
    {
      v8 = [(SearchUICollectionViewController *)self lastSelectedIndexPath];
      v9 = [(SearchUICollectionViewController *)self doesIndexPathExist:v8];

      if (v9)
      {
        v10 = [(SearchUICollectionViewController *)self collectionView];
        [v10 layoutIfNeeded];

        v11 = [(SearchUICollectionViewController *)self collectionView];
        v12 = [(SearchUICollectionViewController *)self lastSelectedIndexPath];
        [v11 selectItemAtIndexPath:v12 animated:0 scrollPosition:18];

        v13 = [(SearchUICollectionViewController *)self collectionView];
        [v13 layoutIfNeeded];

        v14 = [(SearchUICollectionViewController *)self collectionView];
        v15 = [(SearchUICollectionViewController *)self lastSelectedIndexPath];
        [v14 scrollToItemAtIndexPath:v15 atScrollPosition:18 animated:0];

        v16 = [(SearchUICollectionViewController *)self collectionView];
        [v16 layoutIfNeeded];

        v17 = [(SearchUICollectionViewController *)self collectionView];
        v18 = [(SearchUICollectionViewController *)self lastSelectedIndexPath];
        [v17 selectItemAtIndexPath:v18 animated:0 scrollPosition:18];

        v19 = [(SearchUICollectionViewController *)self collectionView];
        [v19 layoutBelowIfNeeded];

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

- (BOOL)doesIndexPathExist:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICollectionViewController *)self collectionView];
  v6 = v5;
  if (v4 && (v7 = [v5 numberOfSections], v7 > objc_msgSend(v4, "section")))
  {
    v8 = [v6 numberOfItemsInSection:{objc_msgSend(v4, "section")}];
    v9 = v8 > [v4 item];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setRestorationContext:(id)a3
{
  v4 = [a3 lastSelectedIndexPath];
  [(SearchUICollectionViewController *)self setLastSelectedIndexPath:v4];
}

- (id)restorationContext
{
  if (![(SearchUICollectionViewController *)self restorationContextClass])
  {
    objc_opt_class();
  }

  v3 = objc_opt_new();
  v4 = [(SearchUICollectionViewController *)self lastSelectedIndexPath];
  [v3 setLastSelectedIndexPath:v4];

  return v3;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(SearchUICollectionViewController *)self dataSource];
  v21 = [v6 itemIdentifierForIndexPath:v5];

  v7 = [(SearchUICollectionViewController *)self commandEnvironmentForIndexPath:v5];
  [(SearchUICollectionViewController *)self setLastSelectedIndexPath:v5];
  v8 = [SearchUICommandHandler handlerForRowModel:v21 environment:v7];
  v9 = [(SearchUICollectionViewController *)self collectionView];
  v10 = [v9 cellForItemAtIndexPath:v5];

  v11 = [v8 command];
  if (v11)
  {
  }

  else if ([v10 needsInternalFocus])
  {
    [v10 returnKeyPressed];
    goto LABEL_11;
  }

  v12 = [v21 cardSection];
  v13 = [v12 command];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v14 = [v13 voiceShortcutIdentifier];
    [(SearchUICollectionViewController *)self setActiveVoiceShortcutIdentifier:v14];

    v15 = objc_alloc(MEMORY[0x1E69E0E30]);
    v16 = [v7 sourceView];
    v17 = [v16 contentView];
    v18 = [v15 initWithView:v17];
    [(SearchUICollectionViewController *)self setActiveRunViewSource:v18];

    v19 = [(SearchUICollectionViewController *)self activeRunViewSource];
    [v8 performSelector:sel_setRunViewSource_ withObject:v19];

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:self selector:sel_shortcutDidEnd_ name:@"SearchUICommandHandlerShortcutDidEndNotification" object:0];
  }

  [v8 executeWithTriggerEvent:2];
  if ([v8 shouldDeselectAfterExecution])
  {
    [(SearchUICollectionViewController *)self deselectSelectedRowsIfNeeded];
  }

LABEL_11:
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(SearchUICollectionViewController *)self canHighlightRowAtIndexPath:v5];
  v7 = v6;
  [(SearchUICollectionViewController *)self setSectionBackgroundHighlighted:v6 indexPath:v5];

  return v7;
}

- (void)setSectionBackgroundHighlighted:(BOOL)a3 indexPath:(id)a4
{
  v4 = a3;
  v11 = a4;
  v6 = [(SearchUICollectionViewController *)self collectionView];
  v7 = [v6 cellForItemAtIndexPath:v11];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 searchui_focusStyle] == 5)
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(v11, "section")}];
    v9 = [(SearchUICollectionViewController *)self collectionView];
    v10 = [v9 _visibleSupplementaryViewOfKind:@"SearchUIBackgroundReuseIdentifer" atIndexPath:v8];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 setHighlighted:v4];
      }
    }
  }
}

- (void)setTableModel:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v9 = a3;
  if (self->_tableModel != v9)
  {
    v16 = v9;
    objc_storeStrong(&self->_tableModel, a3);
    v10 = a5;
    v11 = [SearchUIDataSourceSnapshotBuilder alloc];
    v12 = [(SearchUICollectionViewController *)self expandedSections];
    v13 = [(SearchUICollectionViewController *)self expandedCollectionSections];
    v14 = [(SearchUIDataSourceSnapshotBuilder *)v11 initWithExpandedSections:v12 expandedCollectionSections:v13];

    v15 = [(SearchUIDataSourceSnapshotBuilder *)v14 buildSnapshotFromTableModel:v16];
    [(SearchUICollectionViewController *)self updateWithSnapshot:v15 animated:v6 completion:v10];

    v9 = v16;
  }
}

- (void)setShouldUseInsetRoundedSections:(BOOL)a3
{
  if (self->_shouldUseInsetRoundedSections != a3)
  {
    self->_shouldUseInsetRoundedSections = a3;
    v5 = [(SearchUICollectionViewController *)self shouldUseInsetRoundedSections];
    v6 = [(SearchUICollectionViewController *)self searchUIAttributes];
    [v6 setShouldUseInsetRoundedSections:v5];

    v7 = [(SearchUICollectionViewController *)self dataSource];
    [v7 reloadModel];
  }
}

- (void)setInPreviewPlatter:(BOOL)a3
{
  if (self->_inPreviewPlatter != a3)
  {
    v4 = a3;
    self->_inPreviewPlatter = a3;
    v5 = [(SearchUICollectionViewController *)self searchUIAttributes];
    [v5 setInPreviewPlatter:v4];
  }
}

- (void)setShouldUseStandardSectionInsets:(BOOL)a3
{
  if (self->_shouldUseStandardSectionInsets != a3)
  {
    self->_shouldUseStandardSectionInsets = a3;
    [(SearchUICollectionViewController *)self invalidateLayout];
  }
}

- (void)invalidateLayout
{
  v3 = [(SearchUICollectionViewController *)self collectionView];
  v4 = [v3 collectionViewLayout];
  [v4 invalidateLayout];

  v5 = [(SearchUICollectionViewController *)self collectionView];
  [v5 layoutIfNeeded];
}

- (void)updateWithSnapshot:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v21 = a3;
  v8 = a5;
  if (![(SearchUICollectionViewController *)self updateMustAccountForLayout])
  {
    v9 = [(SearchUICollectionViewController *)self viewWillUpdateHandler];

    if (v9)
    {
      v10 = [(SearchUICollectionViewController *)self viewWillUpdateHandler];
      v10[2]();
    }
  }

  v11 = [v21 itemIdentifiers];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [v21 sectionIdentifiers];
    v14 = [v13 objectAtIndexedSubscript:0];
    v15 = [v21 itemIdentifiersInSectionWithIdentifier:v14];
    v16 = [v15 objectAtIndexedSubscript:0];

    v17 = [v16 cardSection];
    objc_opt_class();
    LOBYTE(v14) = objc_opt_isKindOfClass();

    if (v14)
    {
      [(SearchUICollectionViewController *)self setShouldUseInsetRoundedSections:0];
    }
  }

  [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:1];
  v18 = [(SearchUICollectionViewController *)self dataSource];
  [v18 updateWithSnapshot:v21 animated:v6 completion:v8];

  if (![(SearchUICollectionViewController *)self updateMustAccountForLayout])
  {
    v19 = [(SearchUICollectionViewController *)self viewDidUpdateHandler];

    if (v19)
    {
      v20 = [(SearchUICollectionViewController *)self viewDidUpdateHandler];
      v20[2]();
    }
  }
}

- (void)setCommandDelegate:(id)a3
{
  objc_storeWeak(&self->_commandDelegate, a3);
  v4 = [(SearchUICollectionViewController *)self commandEnvironment];
  [(SearchUICollectionViewAttributes *)self->_searchUIAttributes setCommandEnvironment:v4];
}

- (void)setFocusableIndexPath:(id)a3
{
  v13 = a3;
  objc_storeStrong(&self->_focusableIndexPath, a3);
  v5 = [(SearchUICollectionViewController *)self view];
  v6 = [v5 window];

  if (v6)
  {
    v7 = [(SearchUIKeyboardableCollectionViewController *)self textField];

    v8 = MEMORY[0x1E69DCA38];
    if (v7)
    {
      v9 = [(SearchUIKeyboardableCollectionViewController *)self textField];
      v10 = [v8 focusSystemForEnvironment:v9];

      v11 = [(SearchUIKeyboardableCollectionViewController *)self textField];
      [v10 requestFocusUpdateToEnvironment:v11];
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
  v4 = [(SearchUICollectionViewController *)self collectionView];
  v5 = [v3 focusSystemForEnvironment:v4];
  v6 = [v5 focusedItem];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(SearchUICollectionViewController *)self collectionView];
    v9 = [v8 indexPathForCell:v7];
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
  v4 = [(SearchUIKeyboardableCollectionViewController *)self textField];
  if (v4)
  {
    v5 = [v3 focusSystemForEnvironment:v4];
  }

  else
  {
    v6 = [(SearchUICollectionViewController *)self collectionView];
    v5 = [v3 focusSystemForEnvironment:v6];
  }

  return v5;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  v4 = [(SearchUICollectionViewController *)self collectionView];
  [v4 layoutIfNeeded];

  focusableIndexPath = self->_focusableIndexPath;
  v6 = focusableIndexPath;
  v7 = self->_focusableIndexPath;
  self->_focusableIndexPath = 0;

  return focusableIndexPath;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SearchUICollectionViewController;
  [(SearchUICollectionViewController *)&v7 viewWillDisappear:a3];
  v4 = [(SearchUICollectionViewController *)self resultsViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SearchUICollectionViewController *)self resultsViewDelegate];
    [v6 didUpdateContentScrolledOffScreenStatus:0 animated:1];
  }
}

- (id)viewForRowModel:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICollectionViewController *)self dataSource];
  v6 = [v5 indexPathForItemIdentifier:v4];

  v7 = [(SearchUICollectionViewController *)self collectionView];
  v8 = [v7 cellForItemAtIndexPath:v6];

  return v8;
}

- (void)scrollRowModelToVisible:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICollectionViewController *)self dataSource];
  v7 = [v5 indexPathForItemIdentifier:v4];

  v6 = [(SearchUICollectionViewController *)self collectionView];
  [v6 scrollToItemAtIndexPath:v7 atScrollPosition:0 animated:0];
}

- (id)commandEnvironmentForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICollectionViewController *)self commandEnvironment];
  if (v4)
  {
    v6 = [(SearchUICollectionViewController *)self dataSource];
    v7 = [v6 sectionIdentifierForIndex:{objc_msgSend(v4, "section")}];
    [v5 setLastEngagedSection:v7];

    v8 = [(SearchUICollectionViewController *)self collectionView];
    v9 = [v8 cellForItemAtIndexPath:v4];
    [v5 setSourceView:v9];

    v10 = [v5 lastEngagedSection];
    v11 = [v10 section];
    v12 = [v11 resultSection];
    v13 = [v12 title];
    [v5 setSectionTitle:v13];
  }

  return v5;
}

- (void)resignTextField
{
  v2 = [(SearchUIKeyboardableCollectionViewController *)self textField];
  [v2 resignFirstResponder];
}

- (void)updateTableForNewCellHeightAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E69DD250] areAnimationsEnabled];
  [(SearchUICollectionViewController *)self setCollectionViewAnimating:v3 & v5];
  [MEMORY[0x1E69DD250] setAnimationsEnabled:v3 & v5];
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
  [MEMORY[0x1E69DD250] setAnimationsEnabled:v5];
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

- (void)cardSectionViewDidInvalidateSize:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(SearchUICollectionViewController *)self updateTableForNewCellHeightAnimated:v4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__SearchUICollectionViewController_cardSectionViewDidInvalidateSize_animate___block_invoke;
  v10[3] = &unk_1E85B24C8;
  v10[4] = self;
  [SearchUIUtilities performAnimatableChanges:v10];
  v7 = [(SearchUICollectionViewController *)self feedbackListener];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SearchUICollectionViewController *)self feedbackListener];
    [v9 cardSectionViewDidInvalidateSize:v6 animate:v4];
  }
}

void __77__SearchUICollectionViewController_cardSectionViewDidInvalidateSize_animate___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionView];
  [v1 setAlpha:1.0];
}

- (void)removeRowModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:1];
  v8 = [(SearchUICollectionViewController *)self dataSource];
  [v8 removeRowModel:v7 completion:v6];
}

- (void)removeSectionContainingRowModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:1];
  v8 = [(SearchUICollectionViewController *)self dataSource];
  [v8 removeSectionContaining:v7 completion:v6];
}

- (void)removeSectionModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:1];
  v8 = [(SearchUICollectionViewController *)self dataSource];
  [v8 removeSectionModel:v7 completion:v6];
}

- (void)updateViewControllerTitle:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICollectionViewController *)self parentViewController];
  [v5 setTitle:v4];
}

- (void)performScrollTestWithHandlerForFirstScrollCompletion:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [(SearchUICollectionViewController *)self setScrollTester:v8];

  v10 = [(SearchUICollectionViewController *)self scrollTester];
  v9 = [(SearchUICollectionViewController *)self collectionView];
  [v10 performScrollTestOnTableView:v9 firstScroll:v7 completion:v6];
}

- (void)performRecapScrollTestWithTestName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E69C6C50] isRecapAvailable])
  {
    v8 = objc_alloc(MEMORY[0x1E69C6C40]);
    v9 = [(SearchUICollectionViewController *)self collectionView];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__SearchUICollectionViewController_performRecapScrollTestWithTestName_completion___block_invoke;
    v12[3] = &unk_1E85B2680;
    v13 = v7;
    v10 = [v8 initWithTestName:v6 scrollView:v9 completionHandler:v12];

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
  v3 = [(SearchUICollectionViewController *)self dataSource];
  v4 = [(SearchUICollectionViewController *)self collectionView];
  v5 = [v3 numberOfSectionsInCollectionView:v4];

  return v5;
}

- (void)iterateIndexPaths:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(SearchUICollectionViewController *)self dataSource];
    v6 = [v5 snapshot];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = v6;
    obj = [v6 sectionIdentifiers];
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
                v14 = [(SearchUICollectionViewController *)self dataSource];
                v15 = [v14 indexPathForItemIdentifier:v13];

                v16 = [v26 section];
                v17 = [v16 resultSection];
                v18 = [v13 identifyingResult];
                v19 = [v13 cardSection];
                v4[2](v4, v17, v18, v19, v15);

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

- (void)toggleShowMoreForSection:(unint64_t)a3
{
  v11 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:a3];
  [(SearchUICollectionViewController *)self scrollToIndexPath:?];
  v5 = [(SearchUICollectionViewController *)self dataSource];
  v6 = [v5 snapshot];

  v7 = [v6 sectionIdentifiers];
  v8 = [v7 count];

  if (v8 > a3)
  {
    v9 = [v6 sectionIdentifiers];
    v10 = [v9 objectAtIndexedSubscript:a3];

    [(SearchUICollectionViewController *)self toggleExpansionForSectionModel:v10];
  }
}

- (CGRect)scrollToIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICollectionViewController *)self collectionView];
  [v5 scrollToItemAtIndexPath:v4 atScrollPosition:0 animated:0];

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

- (void)tapAtIndexPath:(id)a3
{
  v8 = a3;
  v4 = [(SearchUICollectionViewController *)self dataSource];
  v5 = [v4 itemIdentifierForIndexPath:v8];

  if (v5)
  {
    v6 = [(SearchUICollectionViewController *)self collectionView];
    [v6 selectItemAtIndexPath:v8 animated:0 scrollPosition:0];

    v7 = [(SearchUICollectionViewController *)self collectionView];
    [(SearchUICollectionViewController *)self collectionView:v7 didSelectItemAtIndexPath:v8];
  }
}

- (void)setThreeDTouchEnabled:(BOOL)a3
{
  if (a3)
  {

    [(SearchUICollectionViewController *)self addOrbInteractionIfNeeded];
  }

  else
  {
    v4 = [(SearchUICollectionViewController *)self contextInteraction];

    if (v4)
    {
      v5 = [(SearchUICollectionViewController *)self collectionView];
      v6 = [(SearchUICollectionViewController *)self contextInteraction];
      [v5 removeInteraction:v6];

      [(SearchUICollectionViewController *)self setPeekDelegate:0];

      [(SearchUICollectionViewController *)self setContextInteraction:0];
    }
  }
}

- (void)performExpansion:(BOOL)a3 withSection:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    v7 = 3;
  }

  else
  {
    v7 = 6;
  }

  [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:v7];
  if (v6)
  {
    v8 = [v6 section];
    v9 = [v8 resultSection];

    if (v9)
    {
      v10 = [(SearchUICollectionViewController *)self resultsViewDelegate];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = [(SearchUICollectionViewController *)self resultsViewDelegate];
        [v12 didChangeExpansionStateForSection:v9 expanded:v4];
      }
    }

    v13 = MEMORY[0x1E696AC88];
    v14 = [(SearchUICollectionViewController *)self dataSource];
    v15 = [v14 snapshot];
    v16 = [v13 indexPathForRow:0 inSection:{objc_msgSend(v15, "indexOfSectionIdentifier:", v6)}];

    v17 = [(SearchUICollectionViewController *)self collectionView];
    v18 = [v17 cellForItemAtIndexPath:v16];

    if ([v18 isExpandable])
    {
      [v18 updateExpanded:v4 animated:1];
      [(SearchUICollectionViewController *)self updateTableForNewCellHeightAnimated:1];
    }

    else
    {
      objc_initWeak(&location, self);
      v19 = [(SearchUICollectionViewController *)self tableModelForExpansion];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __65__SearchUICollectionViewController_performExpansion_withSection___block_invoke;
      v23 = &unk_1E85B26D0;
      objc_copyWeak(&v26, &location);
      v24 = v6;
      v25 = v16;
      [(SearchUICollectionViewController *)self setTableModel:v19 animated:1 completion:&v20];

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

- (BOOL)isExpandedForSectionModel:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v5 collectionSection];

  if (v6)
  {
    v7 = [(SearchUICollectionViewController *)self expandedCollectionSections];
    v8 = [v4 section];
    v9 = [v8 collectionSection];
LABEL_5:
    v12 = v9;
    LOBYTE(v11) = [v7 containsObject:v9];

    goto LABEL_6;
  }

  v10 = [v4 section];
  v11 = [v10 resultSection];

  if (v11)
  {
    v7 = [(SearchUICollectionViewController *)self expandedSections];
    v8 = [v4 section];
    v9 = [v8 resultSection];
    goto LABEL_5;
  }

LABEL_6:

  return v11;
}

- (void)toggleExpansionForSectionModel:(id)a3
{
  v12 = a3;
  v4 = [v12 section];
  v5 = [v4 collectionSection];

  if (v5)
  {
    v6 = [v12 section];
    v7 = [v6 collectionSection];

    v8 = [(SearchUICollectionViewController *)self expandedCollectionSections];
    v9 = [v8 containsObject:v7];

    v10 = [(SearchUICollectionViewController *)self expandedCollectionSections];
    v11 = v10;
    if (v9)
    {
      [v10 removeObject:v7];
    }

    else
    {
      [v10 addObject:v7];
    }

    [(SearchUICollectionViewController *)self performExpansion:v9 ^ 1u withSection:v12];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v25.receiver = self;
  v25.super_class = SearchUICollectionViewController;
  [(SearchUICollectionViewController *)&v25 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 previouslyFocusedView];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 previouslyFocusedView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [v6 previouslyFocusedView];
      v12 = [(SearchUICollectionViewController *)self collectionView];
      v13 = [v12 indexPathForCell:v11];

      if (v13)
      {
        [(SearchUICollectionViewController *)self setAdjacentSeparatorVisibility:1 indexPath:v13];
        if (_UISolariumEnabled())
        {
          v14 = [(SearchUICollectionViewController *)self traitCollection];
          v15 = [v14 userInterfaceIdiom];

          if (v15 == 3)
          {
            [(SearchUICollectionViewController *)self invalidateLayoutForIndexPath:v13];
          }
        }
      }
    }
  }

  v16 = [v6 nextFocusedView];
  if (v16)
  {
    v17 = v16;
    v18 = [v6 nextFocusedView];
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if (v19)
    {
      v20 = [v6 nextFocusedView];
      v21 = [(SearchUICollectionViewController *)self collectionView];
      v22 = [v21 indexPathForCell:v20];

      if (v22)
      {
        [(SearchUICollectionViewController *)self setAdjacentSeparatorVisibility:0 indexPath:v22];
        if (_UISolariumEnabled())
        {
          v23 = [(SearchUICollectionViewController *)self traitCollection];
          v24 = [v23 userInterfaceIdiom];

          if (v24 == 3)
          {
            [(SearchUICollectionViewController *)self invalidateLayoutForIndexPath:v22];
          }
        }
      }
    }
  }
}

- (void)invalidateLayoutForIndexPath:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DC860];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v10[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  [v6 invalidateItemsAtIndexPaths:v7];
  v8 = [(SearchUICollectionViewController *)self collectionView];
  v9 = [v8 collectionViewLayout];
  [v9 invalidateLayoutWithContext:v6];
}

- (void)setAdjacentSeparatorVisibility:(BOOL)a3 indexPath:(id)a4
{
  v4 = a3;
  v21 = a4;
  v6 = [(SearchUICollectionViewController *)self dataSource];
  v7 = [v6 snapshot];

  v8 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(v21, "section")}];
  v9 = [v21 section];
  if (v9 >= [v7 numberOfSections])
  {
    v11 = 0;
  }

  else
  {
    v10 = [v7 sectionIdentifiers];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v21, "section")}];

    if (v11 && ![objc_opt_class() sectionType])
    {
      if (![v21 item])
      {
        v12 = [(SearchUICollectionViewController *)self collectionView];
        v13 = +[SearchUISupplementaryIdentifiers sectionTopSeparatorKind];
        v14 = [v12 _visibleSupplementaryViewOfKind:v13 atIndexPath:v8];

        if (v14)
        {
          [v14 setHidden:!v4];
        }
      }

      v15 = [v21 item];
      v16 = [(SearchUICollectionViewController *)self collectionView];
      v17 = [v16 numberOfItemsInSection:{objc_msgSend(v21, "section")}] - 1;

      if (v15 == v17)
      {
        v18 = [(SearchUICollectionViewController *)self collectionView];
        v19 = +[SearchUISupplementaryIdentifiers sectionBottomSeparatorKind];
        v20 = [v18 _visibleSupplementaryViewOfKind:v19 atIndexPath:v8];

        if (v20)
        {
          [v20 setHidden:!v4];
        }
      }
    }
  }
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(SearchUICollectionViewController *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  LOBYTE(v5) = [v7 isFocusable];
  return v5;
}

- (void)didUpdateKeyboardFocusToResult:(id)a3 cardSection:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];
    [v9 didUpdateKeyboardFocusToResult:v10 cardSection:v6];
  }
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if ([(SearchUICollectionViewController *)self forwardFeedbackForSelector:?])
  {
    v5 = [(SearchUICollectionViewController *)self feedbackListener];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SearchUICollectionViewController;
    v5 = [(SearchUICollectionViewController *)&v7 forwardingTargetForSelector:a3];
  }

  return v5;
}

- (BOOL)forwardFeedbackForSelector:(SEL)a3
{
  if (protocol_getMethodDescription(&unk_1F55F4898, a3, 0, 1).name)
  {
    v4 = [(SearchUICollectionViewController *)self feedbackListener];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v6.receiver = self;
  v6.super_class = SearchUICollectionViewController;
  return [(SearchUICollectionViewController *)&v6 respondsToSelector:?]|| [(SearchUICollectionViewController *)self forwardFeedbackForSelector:a3];
}

- (BOOL)isEntitySearch
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(SearchUICollectionViewController *)self dataSource];
  v3 = [v2 snapshot];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 sectionIdentifiers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v6 = 1;
        }

        v7 |= [v10 drawPlattersIfNecessary] ^ 1;
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
    LOBYTE(v5) = v7 & v6;
  }

  return v5 & 1;
}

- (void)setFooterView:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_footerView != v5)
  {
    v6 = [(SearchUICollectionViewController *)self collectionView];
    v7 = [v6 collectionViewLayout];

    v8 = [v7 configuration];
    v9 = v8;
    if (v5)
    {
      v10 = [(SearchUICollectionViewController *)self dataSource];
      v11 = [v10 registerFooterView:v5];

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
      [v8 setBoundarySupplementaryItems:MEMORY[0x1E695E0F0]];
    }

    objc_storeStrong(&self->_footerView, a3);
    [v7 setConfiguration:v9];
  }

  v18 = [(SearchUICollectionViewController *)self searchUIAttributes];
  [v18 setHasFooter:v5 != 0];
}

- (void)lockupViewForAppIdentifier:(id)a3 didFailRequestWithError:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SearchUICollectionViewController *)self feedbackListener];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SearchUICollectionViewController *)self feedbackListener];
    [v9 lockupViewForAppIdentifier:v10 didFailRequestWithError:v6];
  }
}

- (void)lockupViewEngagedForAppIdentifier:(id)a3
{
  v7 = a3;
  v4 = [(SearchUICollectionViewController *)self feedbackListener];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SearchUICollectionViewController *)self feedbackListener];
    [v6 lockupViewEngagedForAppIdentifier:v7];
  }
}

- (void)lockupViewForAppIdentifier:(id)a3 didChangeState:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SearchUICollectionViewController *)self feedbackListener];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SearchUICollectionViewController *)self feedbackListener];
    [v9 lockupViewForAppIdentifier:v10 didChangeState:v6];
  }
}

@end