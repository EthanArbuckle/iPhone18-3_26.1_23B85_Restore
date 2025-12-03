@interface SearchUIResultsCollectionViewController
+ (id)hiddenSectionsFromSections:(id)sections;
- (BOOL)canHighlightRowAtIndexPath:(id)path;
- (BOOL)indexPathIsShowMoreSections:(id)sections;
- (BOOL)sectionShouldBeExpanded:(id)expanded;
- (SearchUIResultsCollectionViewController)init;
- (id)cellForRowModel:(id)model atIndexPath:(id)path;
- (id)commandEnvironment;
- (id)preferredFocusEnvironments;
- (id)restorationContext;
- (id)tableModelForExpansion;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didPresentToResumeSearch:(BOOL)search;
- (void)highlightResult:(id)result;
- (void)purgeAndResetTable;
- (void)resignTextFieldIfNeeded;
- (void)returnKeyPressed;
- (void)scrollTableToTop;
- (void)setFocusableIndexPath:(id)path;
- (void)showMoreSectionsWithShowMoreButtonIndexPath:(id)path;
- (void)toggleExpansionForSectionModel:(id)model;
- (void)updateWithResultSections:(id)sections scrollToTop:(BOOL)top animated:(BOOL)animated;
- (void)viewWillAppear:(BOOL)appear;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69D9250];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __47__SearchUIResultsCollectionViewController_init__block_invoke;
    v13 = &unk_1E85B2748;
    objc_copyWeak(&v14, &location);
    v7 = [defaultCenter addObserverForName:v6 object:0 queue:0 usingBlock:&v10];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_expandCellsIfNeeded name:*MEMORY[0x1E69DE828] object:0];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (id)commandEnvironment
{
  v7.receiver = self;
  v7.super_class = SearchUIResultsCollectionViewController;
  commandEnvironment = [(SearchUICollectionViewController *)&v7 commandEnvironment];
  queryString = [(SearchUICollectionViewController *)self queryString];
  [commandEnvironment setSearchString:queryString];

  tableModel = [(SearchUICollectionViewController *)self tableModel];
  [commandEnvironment setQueryId:{objc_msgSend(tableModel, "queryId")}];

  return commandEnvironment;
}

- (void)scrollTableToTop
{
  collectionView = [(SearchUIResultsCollectionViewController *)self collectionView];
  [collectionView adjustedContentInset];
  v5 = -v4;

  collectionView2 = [(SearchUIResultsCollectionViewController *)self collectionView];
  [collectionView2 contentOffset];
  v8 = v7;

  if (v8 != v5)
  {
    collectionView3 = [(SearchUIResultsCollectionViewController *)self collectionView];
    [collectionView3 setContentOffset:0 animated:{0.0, v5}];
  }
}

void __47__SearchUIResultsCollectionViewController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCachedHeaderHeight:0.0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 purgeAndResetTable];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:12];
  v5.receiver = self;
  v5.super_class = SearchUIResultsCollectionViewController;
  [(SearchUICollectionViewController *)&v5 viewWillAppear:appearCopy];
}

+ (id)hiddenSectionsFromSections:(id)sections
{
  v17 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = sectionsCopy;
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
  restorationContext = [(SearchUICollectionViewController *)&v7 restorationContext];
  tableModel = [(SearchUICollectionViewController *)self tableModel];
  sections = [tableModel sections];
  [restorationContext setSections:sections];

  return restorationContext;
}

- (void)updateWithResultSections:(id)sections scrollToTop:(BOOL)top animated:(BOOL)animated
{
  animatedCopy = animated;
  topCopy = top;
  v37 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  viewWillUpdateHandler = [(SearchUICollectionViewController *)self viewWillUpdateHandler];

  if (viewWillUpdateHandler)
  {
    viewWillUpdateHandler2 = [(SearchUICollectionViewController *)self viewWillUpdateHandler];
    viewWillUpdateHandler2[2]();
  }

  expandedSections = [(SearchUIResultsCollectionViewController *)self expandedSections];
  [expandedSections removeAllObjects];

  sectionsThatHaveBeenExpanded = [(SearchUIResultsCollectionViewController *)self sectionsThatHaveBeenExpanded];
  [sectionsThatHaveBeenExpanded removeAllObjects];

  expandedCollectionSections = [(SearchUICollectionViewController *)self expandedCollectionSections];
  [expandedCollectionSections removeAllObjects];

  v12 = [objc_opt_class() hiddenSectionsFromSections:sectionsCopy];
  [(SearchUIResultsCollectionViewController *)self setHiddenSections:v12];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = sectionsCopy;
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
        resultsViewDelegate = [(SearchUICollectionViewController *)self resultsViewDelegate];
        if (objc_opt_respondsToSelector())
        {
          resultsViewDelegate2 = [(SearchUICollectionViewController *)self resultsViewDelegate];
          v21 = [resultsViewDelegate2 sectionShouldBeExpanded:v18];

          if (!v21)
          {
            continue;
          }

          resultsViewDelegate = [(SearchUIResultsCollectionViewController *)self expandedSections];
          [resultsViewDelegate addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v15);
  }

  v22 = [v13 mutableCopy];
  hiddenSections = [(SearchUIResultsCollectionViewController *)self hiddenSections];
  [v22 removeObjectsInArray:hiddenSections];

  v24 = v22;
  expandedSections2 = [(SearchUIResultsCollectionViewController *)self expandedSections];
  expandedCollectionSections2 = [(SearchUICollectionViewController *)self expandedCollectionSections];
  v27 = [SearchUITableModel tableModelWithSections:v24 expandedSections:expandedSections2 expandedCollectionCardSections:expandedCollectionSections2];

  [(SearchUICollectionViewController *)self setTableModel:v27 animated:animatedCopy];
  if (topCopy)
  {
    [(SearchUIResultsCollectionViewController *)self scrollTableToTop];
  }

  viewDidUpdateHandler = [(SearchUICollectionViewController *)self viewDidUpdateHandler];

  if (viewDidUpdateHandler)
  {
    viewDidUpdateHandler2 = [(SearchUICollectionViewController *)self viewDidUpdateHandler];
    viewDidUpdateHandler2[2]();
  }
}

- (void)highlightResult:(id)result
{
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v18 = v5;
  if (result && v5)
  {
    v6 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];

    if (v6)
    {
      [(SearchUIResultsCollectionViewController *)self setFocusableIndexPath:0];
    }

    collectionView = [(SearchUIResultsCollectionViewController *)self collectionView];
    [collectionView layoutIfNeeded];

    collectionView2 = [(SearchUIResultsCollectionViewController *)self collectionView];
    v9 = [collectionView2 cellForItemAtIndexPath:v18];

    if ([v9 setupManualFocus])
    {
      v10 = v18;
    }

    else
    {
      collectionView3 = [(SearchUIResultsCollectionViewController *)self collectionView];
      v14 = [(SearchUICollectionViewController *)self collectionView:collectionView3 shouldHighlightItemAtIndexPath:v18];

      if (v14)
      {
        v15 = v18;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      collectionView4 = [(SearchUIResultsCollectionViewController *)self collectionView];
      [collectionView4 selectItemAtIndexPath:v16 animated:0 scrollPosition:0];

      v10 = v16;
    }

    v18 = v10;
    [(SearchUIResultsCollectionViewController *)self setFocusableIndexPath:v10];
  }

  else
  {
    [(SearchUIResultsCollectionViewController *)self setFocusableIndexPath:0];
    collectionView5 = [(SearchUIResultsCollectionViewController *)self collectionView];
    v9 = [collectionView5 cellForItemAtIndexPath:v18];

    [v9 removeManualFocus];
    collectionView6 = [(SearchUIResultsCollectionViewController *)self collectionView];
    [collectionView6 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
  }
}

- (id)preferredFocusEnvironments
{
  v21[1] = *MEMORY[0x1E69E9840];
  textField = [(SearchUIKeyboardableCollectionViewController *)self textField];
  if (textField && (v4 = textField, [(SearchUICollectionViewController *)self focusableIndexPath], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    textField2 = [(SearchUIKeyboardableCollectionViewController *)self textField];
    v21[0] = textField2;
    preferredFocusEnvironments = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  }

  else
  {
    focusableIndexPath = [(SearchUICollectionViewController *)self focusableIndexPath];

    if (!focusableIndexPath)
    {
      v18.receiver = self;
      v18.super_class = SearchUIResultsCollectionViewController;
      preferredFocusEnvironments = [(SearchUIResultsCollectionViewController *)&v18 preferredFocusEnvironments];
      goto LABEL_14;
    }

    collectionView = [(SearchUIResultsCollectionViewController *)self collectionView];
    [collectionView layoutIfNeeded];

    collectionView2 = [(SearchUIResultsCollectionViewController *)self collectionView];
    focusableIndexPath2 = [(SearchUICollectionViewController *)self focusableIndexPath];
    textField2 = [collectionView2 cellForItemAtIndexPath:focusableIndexPath2];

    viewForForcedFocus = [textField2 viewForForcedFocus];
    v12 = viewForForcedFocus;
    if (viewForForcedFocus)
    {
      v13 = viewForForcedFocus;
    }

    else
    {
      v13 = textField2;
    }

    v14 = v13;

    if (v14)
    {
      v20 = v14;
      preferredFocusEnvironments2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    }

    else
    {
      v19.receiver = self;
      v19.super_class = SearchUIResultsCollectionViewController;
      preferredFocusEnvironments2 = [(SearchUIResultsCollectionViewController *)&v19 preferredFocusEnvironments];
    }

    preferredFocusEnvironments = preferredFocusEnvironments2;
  }

LABEL_14:

  return preferredFocusEnvironments;
}

- (void)returnKeyPressed
{
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  collectionView = [(SearchUIResultsCollectionViewController *)self collectionView];
  v4 = [collectionView cellForItemAtIndexPath:v5];

  if ([v4 needsInternalFocus])
  {
    [v4 returnKeyPressed];
  }

  else
  {
    [(SearchUICollectionViewController *)self tapAtIndexPath:v5];
  }
}

- (BOOL)canHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(SearchUIResultsCollectionViewController *)self indexPathIsShowMoreSections:pathCopy])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SearchUIResultsCollectionViewController;
    v5 = [(SearchUICollectionViewController *)&v7 canHighlightRowAtIndexPath:pathCopy];
  }

  return v5;
}

- (BOOL)indexPathIsShowMoreSections:(id)sections
{
  sectionsCopy = sections;
  dataSource = [(SearchUICollectionViewController *)self dataSource];
  section = [sectionsCopy section];

  v7 = [dataSource sectionIdentifierForIndex:section];
  section2 = [v7 section];
  resultSection = [section2 resultSection];

  results = [resultSection results];
  firstObject = [results firstObject];
  identifier = [firstObject identifier];
  v13 = [identifier isEqualToString:@"com.apple.other:show_more"];

  return v13;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(SearchUIResultsCollectionViewController *)self indexPathIsShowMoreSections:pathCopy])
  {
    v8 = [SearchUICommandHandler alloc];
    dataSource = [(SearchUICollectionViewController *)self dataSource];
    v10 = [dataSource itemIdentifierForIndexPath:pathCopy];
    commandEnvironment = [(SearchUIResultsCollectionViewController *)self commandEnvironment];
    v12 = [(SearchUICommandHandler *)v8 initWithCommand:0 rowModel:v10 button:0 environment:commandEnvironment];

    [(SearchUIResultsCollectionViewController *)self showMoreSectionsWithShowMoreButtonIndexPath:pathCopy];
    [(SearchUICommandHandler *)v12 wasPerformedWithTriggerEvent:2];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SearchUIResultsCollectionViewController;
    [(SearchUICollectionViewController *)&v13 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
  }
}

- (void)setFocusableIndexPath:(id)path
{
  pathCopy = path;
  interactionDelegate = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    dataSource = [(SearchUICollectionViewController *)self dataSource];
    v8 = [dataSource itemIdentifierForIndexPath:pathCopy];

    interactionDelegate2 = [(SearchUIKeyboardableCollectionViewController *)self interactionDelegate];
    identifyingResult = [v8 identifyingResult];
    cardSection = [v8 cardSection];
    [interactionDelegate2 didUpdateKeyboardFocusToResult:identifyingResult cardSection:cardSection];
  }

  v12.receiver = self;
  v12.super_class = SearchUIResultsCollectionViewController;
  [(SearchUICollectionViewController *)&v12 setFocusableIndexPath:pathCopy];
}

- (void)purgeAndResetTable
{
  tableModel = [(SearchUICollectionViewController *)self tableModel];
  [(SearchUICollectionViewController *)self setTableModel:0];
  collectionView = [(SearchUIResultsCollectionViewController *)self collectionView];
  [collectionView _purgeReuseQueues];

  [(SearchUICollectionViewController *)self setTableModel:tableModel];
}

- (void)didPresentToResumeSearch:(BOOL)search
{
  searchCopy = search;
  [(SearchUICollectionViewController *)self setIsVisibleFeedbackEnabled:1];
  if (searchCopy)
  {

    [(SearchUICollectionViewController *)self setLastVisibleFeedbackTrigger:12];
  }
}

- (void)toggleExpansionForSectionModel:(id)model
{
  modelCopy = model;
  section = [modelCopy section];
  resultSection = [section resultSection];
  if (resultSection)
  {
    v7 = resultSection;
    section2 = [modelCopy section];
    collectionSection = [section2 collectionSection];
    collectionStyle = [collectionSection collectionStyle];
    initiallyVisibleCardSectionCount = [collectionStyle initiallyVisibleCardSectionCount];

    if (!initiallyVisibleCardSectionCount)
    {
      section3 = [modelCopy section];
      resultSection2 = [section3 resultSection];

      v14 = [(SearchUIResultsCollectionViewController *)self sectionShouldBeExpanded:resultSection2];
      expandedSections = [(SearchUIResultsCollectionViewController *)self expandedSections];
      v16 = expandedSections;
      if (v14)
      {
        [expandedSections removeObject:resultSection2];
      }

      else
      {
        [expandedSections addObject:resultSection2];

        sectionsThatHaveBeenExpanded = [(SearchUIResultsCollectionViewController *)self sectionsThatHaveBeenExpanded];
        v18 = [sectionsThatHaveBeenExpanded containsObject:resultSection2];

        if ((v18 & 1) == 0)
        {
          results = [resultSection2 results];
          firstObject = [results firstObject];
          moreResults = [firstObject moreResults];
          v22 = moreResults;
          if (moreResults)
          {
            moreResults2 = moreResults;
          }

          else
          {
            results2 = [resultSection2 results];
            lastObject = [results2 lastObject];
            moreResults2 = [lastObject moreResults];
          }

          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __74__SearchUIResultsCollectionViewController_toggleExpansionForSectionModel___block_invoke;
          v26[3] = &unk_1E85B2770;
          v26[4] = self;
          v27 = resultSection2;
          v28 = modelCopy;
          [moreResults2 loadSearchResultsWithCompletionHandler:v26];

          if (moreResults2)
          {
            goto LABEL_13;
          }
        }
      }

      [(SearchUICollectionViewController *)self performExpansion:!v14 withSection:modelCopy];
      moreResults2 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  else
  {
  }

  v29.receiver = self;
  v29.super_class = SearchUIResultsCollectionViewController;
  [(SearchUICollectionViewController *)&v29 toggleExpansionForSectionModel:modelCopy];
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

- (id)cellForRowModel:(id)model atIndexPath:(id)path
{
  v15.receiver = self;
  v15.super_class = SearchUIResultsCollectionViewController;
  pathCopy = path;
  v7 = [(SearchUICollectionViewController *)&v15 cellForRowModel:model atIndexPath:pathCopy];
  v8 = [(SearchUICollectionViewController *)self dataSource:v15.receiver];
  section = [pathCopy section];

  v10 = [v8 sectionIdentifierForIndex:section];

  if ([v7 isExpandable])
  {
    expandedSections = [(SearchUIResultsCollectionViewController *)self expandedSections];
    section2 = [v10 section];
    resultSection = [section2 resultSection];
    [v7 updateExpanded:objc_msgSend(expandedSections animated:{"containsObject:", resultSection), 0}];
  }

  return v7;
}

- (id)tableModelForExpansion
{
  tableModel = [(SearchUICollectionViewController *)self tableModel];
  expandedSections = [(SearchUIResultsCollectionViewController *)self expandedSections];
  expandedCollectionSections = [(SearchUICollectionViewController *)self expandedCollectionSections];
  v6 = [tableModel updatedTableModelWithExpandedSections:expandedSections expandedCollectionCardSections:expandedCollectionSections hiddenSections:0 atSectionIndex:0];

  return v6;
}

- (void)resignTextFieldIfNeeded
{
  if (([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode] & 1) == 0)
  {
    textField = [(SearchUIKeyboardableCollectionViewController *)self textField];
    [textField resignFirstResponder];
  }
}

- (BOOL)sectionShouldBeExpanded:(id)expanded
{
  expandedCopy = expanded;
  expandedSections = [(SearchUIResultsCollectionViewController *)self expandedSections];
  if ([expandedSections containsObject:expandedCopy])
  {
    v6 = 1;
  }

  else
  {
    resultsViewDelegate = [(SearchUICollectionViewController *)self resultsViewDelegate];
    if (objc_opt_respondsToSelector())
    {
      resultsViewDelegate2 = [(SearchUICollectionViewController *)self resultsViewDelegate];
      v6 = [resultsViewDelegate2 sectionShouldBeExpanded:expandedCopy];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)showMoreSectionsWithShowMoreButtonIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  tableModel = [(SearchUICollectionViewController *)self tableModel];
  expandedSections = [(SearchUIResultsCollectionViewController *)self expandedSections];
  expandedCollectionSections = [(SearchUICollectionViewController *)self expandedCollectionSections];
  hiddenSections = [(SearchUIResultsCollectionViewController *)self hiddenSections];
  v10 = [tableModel updatedTableModelWithExpandedSections:expandedSections expandedCollectionCardSections:expandedCollectionSections hiddenSections:hiddenSections atSectionIndex:section];

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__SearchUIResultsCollectionViewController_showMoreSectionsWithShowMoreButtonIndexPath___block_invoke;
  v11[3] = &unk_1E85B2798;
  objc_copyWeak(v12, &location);
  v12[1] = section;
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