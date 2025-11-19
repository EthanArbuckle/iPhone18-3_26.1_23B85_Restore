@interface SearchUIResultsCollectionViewController
+ (id)hiddenSectionsFromSections:(id)a3;
- (BOOL)canHighlightRowAtIndexPath:(id)a3;
- (BOOL)indexPathIsShowMoreSections:(id)a3;
- (BOOL)sectionShouldBeExpanded:(id)a3;
- (SearchUIResultsCollectionViewController)init;
- (id)cellForRowModel:(id)a3 atIndexPath:(id)a4;
- (id)commandEnvironment;
- (id)preferredFocusEnvironments;
- (id)restorationContext;
- (id)tableModelForExpansion;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didPresentToResumeSearch:(BOOL)a3;
- (void)highlightResult:(id)a3;
- (void)purgeAndResetTable;
- (void)resignTextFieldIfNeeded;
- (void)returnKeyPressed;
- (void)scrollTableToTop;
- (void)setFocusableIndexPath:(id)a3;
- (void)showMoreSectionsWithShowMoreButtonIndexPath:(id)a3;
- (void)toggleExpansionForSectionModel:(id)a3;
- (void)updateWithResultSections:(id)a3 scrollToTop:(BOOL)a4 animated:(BOOL)a5;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SearchUIResultsCollectionViewController

- (SearchUIResultsCollectionViewController)init
{
  v16.receiver = self;
  v16.super_class = SearchUIResultsCollectionViewController;
  v2 = [(SearchUICollectionViewController *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SearchUIResultsCollectionViewController *)v2 setExpandedSections:v3];

    v4 = objc_opt_new();
    [(SearchUIResultsCollectionViewController *)v2 setSectionsThatHaveBeenExpanded:v4];

    objc_initWeak(&location, v2);
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69D9250];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __47__SearchUIResultsCollectionViewController_init__block_invoke;
    v13 = &unk_1E85B2748;
    objc_copyWeak(&v14, &location);
    v7 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:&v10];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v2 selector:sel_expandCellsIfNeeded name:*MEMORY[0x1E69DE828] object:0];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (id)commandEnvironment
{
  v7.receiver = self;
  v7.super_class = SearchUIResultsCollectionViewController;
  v3 = [(SearchUICollectionViewController *)&v7 commandEnvironment];
  v4 = [(SearchUICollectionViewController *)self queryString];
  [v3 setSearchString:v4];

  v5 = [(SearchUICollectionViewController *)self tableModel];
  [v3 setQueryId:{objc_msgSend(v5, "queryId")}];

  return v3;
}

- (void)scrollTableToTop
{
  v3 = [(SearchUIResultsCollectionViewController *)self collectionView];
  [v3 adjustedContentInset];
  v5 = -v4;

  v6 = [(SearchUIResultsCollectionViewController *)self collectionView];
  [v6 contentOffset];
  v8 = v7;

  if (v8 != v5)
  {
    v9 = [(SearchUIResultsCollectionViewController *)self collectionView];
    [v9 setContentOffset:0 animated:{0.0, v5}];
  }
}

void __47__SearchUIResultsCollectionViewController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCachedHeaderHeight:0.0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 purgeAndResetTable];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:12];
  v5.receiver = self;
  v5.super_class = SearchUIResultsCollectionViewController;
  [(SearchUICollectionViewController *)&v5 viewWillAppear:v3];
}

+ (id)hiddenSectionsFromSections:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isInitiallyHidden])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)restorationContext
{
  v7.receiver = self;
  v7.super_class = SearchUIResultsCollectionViewController;
  v3 = [(SearchUICollectionViewController *)&v7 restorationContext];
  v4 = [(SearchUICollectionViewController *)self tableModel];
  v5 = [v4 sections];
  [v3 setSections:v5];

  return v3;
}

- (void)updateWithResultSections:(id)a3 scrollToTop:(BOOL)a4 animated:(BOOL)a5
{
  v30 = a5;
  v31 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SearchUICollectionViewController *)self viewWillUpdateHandler];

  if (v7)
  {
    v8 = [(SearchUICollectionViewController *)self viewWillUpdateHandler];
    v8[2]();
  }

  v9 = [(SearchUIResultsCollectionViewController *)self expandedSections];
  [v9 removeAllObjects];

  v10 = [(SearchUIResultsCollectionViewController *)self sectionsThatHaveBeenExpanded];
  [v10 removeAllObjects];

  v11 = [(SearchUICollectionViewController *)self expandedCollectionSections];
  [v11 removeAllObjects];

  v12 = [objc_opt_class() hiddenSectionsFromSections:v6];
  [(SearchUIResultsCollectionViewController *)self setHiddenSections:v12];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        v19 = [(SearchUICollectionViewController *)self resultsViewDelegate];
        if (objc_opt_respondsToSelector())
        {
          v20 = [(SearchUICollectionViewController *)self resultsViewDelegate];
          v21 = [v20 sectionShouldBeExpanded:v18];

          if (!v21)
          {
            continue;
          }

          v19 = [(SearchUIResultsCollectionViewController *)self expandedSections];
          [v19 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v15);
  }

  v22 = [v13 mutableCopy];
  v23 = [(SearchUIResultsCollectionViewController *)self hiddenSections];
  [v22 removeObjectsInArray:v23];

  v24 = v22;
  v25 = [(SearchUIResultsCollectionViewController *)self expandedSections];
  v26 = [(SearchUICollectionViewController *)self expandedCollectionSections];
  v27 = [SearchUITableModel tableModelWithSections:v24 expandedSections:v25 expandedCollectionCardSections:v26];

  [(SearchUICollectionViewController *)self setTableModel:v27 animated:v30];
  if (v31)
  {
    [(SearchUIResultsCollectionViewController *)self scrollTableToTop];
  }

  v28 = [(SearchUICollectionViewController *)self viewDidUpdateHandler];

  if (v28)
  {
    v29 = [(SearchUICollectionViewController *)self viewDidUpdateHandler];
    v29[2]();
  }
}

- (void)highlightResult:(id)a3
{
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v18 = v5;
  if (a3 && v5)
  {
    v6 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];

    if (v6)
    {
      [(SearchUIResultsCollectionViewController *)self setFocusableIndexPath:0];
    }

    v7 = [(SearchUIResultsCollectionViewController *)self collectionView];
    [v7 layoutIfNeeded];

    v8 = [(SearchUIResultsCollectionViewController *)self collectionView];
    v9 = [v8 cellForItemAtIndexPath:v18];

    if ([v9 setupManualFocus])
    {
      v10 = v18;
    }

    else
    {
      v13 = [(SearchUIResultsCollectionViewController *)self collectionView];
      v14 = [(SearchUICollectionViewController *)self collectionView:v13 shouldHighlightItemAtIndexPath:v18];

      if (v14)
      {
        v15 = v18;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      v17 = [(SearchUIResultsCollectionViewController *)self collectionView];
      [v17 selectItemAtIndexPath:v16 animated:0 scrollPosition:0];

      v10 = v16;
    }

    v18 = v10;
    [(SearchUIResultsCollectionViewController *)self setFocusableIndexPath:v10];
  }

  else
  {
    [(SearchUIResultsCollectionViewController *)self setFocusableIndexPath:0];
    v11 = [(SearchUIResultsCollectionViewController *)self collectionView];
    v9 = [v11 cellForItemAtIndexPath:v18];

    [v9 removeManualFocus];
    v12 = [(SearchUIResultsCollectionViewController *)self collectionView];
    [v12 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
  }
}

- (id)preferredFocusEnvironments
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [(SearchUIKeyboardableCollectionViewController *)self textField];
  if (v3 && (v4 = v3, [(SearchUICollectionViewController *)self focusableIndexPath], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v10 = [(SearchUIKeyboardableCollectionViewController *)self textField];
    v21[0] = v10;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  }

  else
  {
    v6 = [(SearchUICollectionViewController *)self focusableIndexPath];

    if (!v6)
    {
      v18.receiver = self;
      v18.super_class = SearchUIResultsCollectionViewController;
      v16 = [(SearchUIResultsCollectionViewController *)&v18 preferredFocusEnvironments];
      goto LABEL_14;
    }

    v7 = [(SearchUIResultsCollectionViewController *)self collectionView];
    [v7 layoutIfNeeded];

    v8 = [(SearchUIResultsCollectionViewController *)self collectionView];
    v9 = [(SearchUICollectionViewController *)self focusableIndexPath];
    v10 = [v8 cellForItemAtIndexPath:v9];

    v11 = [v10 viewForForcedFocus];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13;

    if (v14)
    {
      v20 = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    }

    else
    {
      v19.receiver = self;
      v19.super_class = SearchUIResultsCollectionViewController;
      v15 = [(SearchUIResultsCollectionViewController *)&v19 preferredFocusEnvironments];
    }

    v16 = v15;
  }

LABEL_14:

  return v16;
}

- (void)returnKeyPressed
{
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v3 = [(SearchUIResultsCollectionViewController *)self collectionView];
  v4 = [v3 cellForItemAtIndexPath:v5];

  if ([v4 needsInternalFocus])
  {
    [v4 returnKeyPressed];
  }

  else
  {
    [(SearchUICollectionViewController *)self tapAtIndexPath:v5];
  }
}

- (BOOL)canHighlightRowAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(SearchUIResultsCollectionViewController *)self indexPathIsShowMoreSections:v4])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SearchUIResultsCollectionViewController;
    v5 = [(SearchUICollectionViewController *)&v7 canHighlightRowAtIndexPath:v4];
  }

  return v5;
}

- (BOOL)indexPathIsShowMoreSections:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICollectionViewController *)self dataSource];
  v6 = [v4 section];

  v7 = [v5 sectionIdentifierForIndex:v6];
  v8 = [v7 section];
  v9 = [v8 resultSection];

  v10 = [v9 results];
  v11 = [v10 firstObject];
  v12 = [v11 identifier];
  v13 = [v12 isEqualToString:@"com.apple.other:show_more"];

  return v13;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SearchUIResultsCollectionViewController *)self indexPathIsShowMoreSections:v7])
  {
    v8 = [SearchUICommandHandler alloc];
    v9 = [(SearchUICollectionViewController *)self dataSource];
    v10 = [v9 itemIdentifierForIndexPath:v7];
    v11 = [(SearchUIResultsCollectionViewController *)self commandEnvironment];
    v12 = [(SearchUICommandHandler *)v8 initWithCommand:0 rowModel:v10 button:0 environment:v11];

    [(SearchUIResultsCollectionViewController *)self showMoreSectionsWithShowMoreButtonIndexPath:v7];
    [(SearchUICommandHandler *)v12 wasPerformedWithTriggerEvent:2];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SearchUIResultsCollectionViewController;
    [(SearchUICollectionViewController *)&v13 collectionView:v6 didSelectItemAtIndexPath:v7];
  }
}

- (void)setFocusableIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SearchUICollectionViewController *)self dataSource];
    v8 = [v7 itemIdentifierForIndexPath:v4];

    v9 = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];
    v10 = [v8 identifyingResult];
    v11 = [v8 cardSection];
    [v9 didUpdateKeyboardFocusToResult:v10 cardSection:v11];
  }

  v12.receiver = self;
  v12.super_class = SearchUIResultsCollectionViewController;
  [(SearchUICollectionViewController *)&v12 setFocusableIndexPath:v4];
}

- (void)purgeAndResetTable
{
  v4 = [(SearchUICollectionViewController *)self tableModel];
  [(SearchUICollectionViewController *)self setTableModel:0];
  v3 = [(SearchUIResultsCollectionViewController *)self collectionView];
  [v3 _purgeReuseQueues];

  [(SearchUICollectionViewController *)self setTableModel:v4];
}

- (void)didPresentToResumeSearch:(BOOL)a3
{
  v3 = a3;
  [(SearchUICollectionViewController *)self setIsVisibleFeedbackEnabled:1];
  if (v3)
  {

    [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:12];
  }
}

- (void)toggleExpansionForSectionModel:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v5 resultSection];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 section];
    v9 = [v8 collectionSection];
    v10 = [v9 collectionStyle];
    v11 = [v10 initiallyVisibleCardSectionCount];

    if (!v11)
    {
      v12 = [v4 section];
      v13 = [v12 resultSection];

      v14 = [(SearchUIResultsCollectionViewController *)self sectionShouldBeExpanded:v13];
      v15 = [(SearchUIResultsCollectionViewController *)self expandedSections];
      v16 = v15;
      if (v14)
      {
        [v15 removeObject:v13];
      }

      else
      {
        [v15 addObject:v13];

        v17 = [(SearchUIResultsCollectionViewController *)self sectionsThatHaveBeenExpanded];
        v18 = [v17 containsObject:v13];

        if ((v18 & 1) == 0)
        {
          v19 = [v13 results];
          v20 = [v19 firstObject];
          v21 = [v20 moreResults];
          v22 = v21;
          if (v21)
          {
            v23 = v21;
          }

          else
          {
            v24 = [v13 results];
            v25 = [v24 lastObject];
            v23 = [v25 moreResults];
          }

          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __74__SearchUIResultsCollectionViewController_toggleExpansionForSectionModel___block_invoke;
          v26[3] = &unk_1E85B2770;
          v26[4] = self;
          v27 = v13;
          v28 = v4;
          [v23 loadSearchResultsWithCompletionHandler:v26];

          if (v23)
          {
            goto LABEL_13;
          }
        }
      }

      [(SearchUICollectionViewController *)self performExpansion:!v14 withSection:v4];
      v23 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  else
  {
  }

  v29.receiver = self;
  v29.super_class = SearchUIResultsCollectionViewController;
  [(SearchUICollectionViewController *)&v29 toggleExpansionForSectionModel:v4];
LABEL_14:
}

void __74__SearchUIResultsCollectionViewController_toggleExpansionForSectionModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__SearchUIResultsCollectionViewController_toggleExpansionForSectionModel___block_invoke_2;
  v6[3] = &unk_1E85B2568;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  [SearchUIUtilities dispatchMainIfNecessary:v6];
}

void __74__SearchUIResultsCollectionViewController_toggleExpansionForSectionModel___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) expandedSections];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 40) maxInitiallyVisibleResults];
    v5 = *(a1 + 40);
    if (v4)
    {
      [v5 setMaxInitiallyVisibleResults:?];
    }

    else
    {
      v6 = [v5 results];
      [*(a1 + 40) setMaxInitiallyVisibleResults:{objc_msgSend(v6, "count")}];
    }

    v7 = [*(a1 + 40) results];
    v8 = [v7 arrayByAddingObjectsFromArray:*(a1 + 48)];
    [*(a1 + 40) setResults:v8];

    v9 = [*(a1 + 32) sectionsThatHaveBeenExpanded];
    [v9 addObject:*(a1 + 40)];

    v10 = *(a1 + 32);
    v11 = *(a1 + 56);

    [v10 performExpansion:1 withSection:v11];
  }
}

- (id)cellForRowModel:(id)a3 atIndexPath:(id)a4
{
  v15.receiver = self;
  v15.super_class = SearchUIResultsCollectionViewController;
  v6 = a4;
  v7 = [(SearchUICollectionViewController *)&v15 cellForRowModel:a3 atIndexPath:v6];
  v8 = [(SearchUICollectionViewController *)self dataSource:v15.receiver];
  v9 = [v6 section];

  v10 = [v8 sectionIdentifierForIndex:v9];

  if ([v7 isExpandable])
  {
    v11 = [(SearchUIResultsCollectionViewController *)self expandedSections];
    v12 = [v10 section];
    v13 = [v12 resultSection];
    [v7 updateExpanded:objc_msgSend(v11 animated:{"containsObject:", v13), 0}];
  }

  return v7;
}

- (id)tableModelForExpansion
{
  v3 = [(SearchUICollectionViewController *)self tableModel];
  v4 = [(SearchUIResultsCollectionViewController *)self expandedSections];
  v5 = [(SearchUICollectionViewController *)self expandedCollectionSections];
  v6 = [v3 updatedTableModelWithExpandedSections:v4 expandedCollectionCardSections:v5 hiddenSections:0 atSectionIndex:0];

  return v6;
}

- (void)resignTextFieldIfNeeded
{
  if (([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode] & 1) == 0)
  {
    v3 = [(SearchUIKeyboardableCollectionViewController *)self textField];
    [v3 resignFirstResponder];
  }
}

- (BOOL)sectionShouldBeExpanded:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsCollectionViewController *)self expandedSections];
  if ([v5 containsObject:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(SearchUICollectionViewController *)self resultsViewDelegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [(SearchUICollectionViewController *)self resultsViewDelegate];
      v6 = [v8 sectionShouldBeExpanded:v4];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)showMoreSectionsWithShowMoreButtonIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [(SearchUICollectionViewController *)self tableModel];
  v7 = [(SearchUIResultsCollectionViewController *)self expandedSections];
  v8 = [(SearchUICollectionViewController *)self expandedCollectionSections];
  v9 = [(SearchUIResultsCollectionViewController *)self hiddenSections];
  v10 = [v6 updatedTableModelWithExpandedSections:v7 expandedCollectionCardSections:v8 hiddenSections:v9 atSectionIndex:v5];

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__SearchUIResultsCollectionViewController_showMoreSectionsWithShowMoreButtonIndexPath___block_invoke;
  v11[3] = &unk_1E85B2798;
  objc_copyWeak(v12, &location);
  v12[1] = v5;
  [(SearchUICollectionViewController *)self setTableModel:v10 animated:1 completion:v11];
  [(SearchUIResultsCollectionViewController *)self resignTextFieldIfNeeded];
  [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:15];
  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __87__SearchUIResultsCollectionViewController_showMoreSectionsWithShowMoreButtonIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained collectionView];
  [v2 layoutIfNeeded];

  v3 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:*(a1 + 40)];
  [WeakRetained setFocusableIndexPath:v3];
}

@end