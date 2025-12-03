@interface SearchUIResultsViewController
- (BOOL)dragInteractionEnabled;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)scrollEnabled;
- (BOOL)shouldHideResultsUnderKeyboard;
- (BOOL)shouldUseInsetRoundedSections;
- (BOOL)shouldUseStandardSectionInsets;
- (BOOL)showsVerticalScrollIndicator;
- (CGRect)scrollToIndexPath:(id)path;
- (CGSize)contentSize;
- (Class)restorationContextClass;
- (NSString)queryString;
- (SFFeedbackListener)feedbackListener;
- (SearchUICommandDelegate)commandDelegate;
- (SearchUICustomViewProvider)customViewProvider;
- (SearchUIResultsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SearchUIResultsViewDelegate)delegate;
- (UISearchTextField)searchField;
- (UIView)footerView;
- (double)additionalKeyboardHeight;
- (double)distanceToTopOfAppIcons;
- (id)contentScrollView;
- (id)restorationContext;
- (id)scrollViewForPocketInteraction;
- (int64_t)numberOfSections;
- (void)contentSizeDidChange:(CGSize)change animated:(BOOL)animated;
- (void)didBeginScrolling;
- (void)didFocusOnCell:(id)cell;
- (void)didPresentToResumeSearch:(BOOL)search;
- (void)didScrollPastBottomOfContent;
- (void)didTap;
- (void)didUpdateKeyboardFocusToResult:(id)result cardSection:(id)section;
- (void)highlightResult:(id)result;
- (void)iterateIndexPaths:(id)paths;
- (void)performRecapScrollTestWithTestName:(id)name completion:(id)completion;
- (void)performReturnKeyPressAction;
- (void)performScrollTestWithCompletion:(id)completion;
- (void)performScrollTestWithHandlerForFirstScrollCompletion:(id)completion completion:(id)a4;
- (void)purgeMemory;
- (void)replaceResult:(id)result withResult:(id)withResult;
- (void)restoreResultsIfNeeded;
- (void)scrollAndSelectLastSelectedIndexPath;
- (void)setAdditionalKeyboardHeight:(double)height;
- (void)setCommandDelegate:(id)delegate;
- (void)setCustomViewProvider:(id)provider;
- (void)setDelegate:(id)delegate;
- (void)setDragInteractionEnabled:(BOOL)enabled;
- (void)setFeedbackListener:(id)listener;
- (void)setFooterView:(id)view;
- (void)setQueryString:(id)string;
- (void)setRestorationContext:(id)context;
- (void)setRestorationContextClass:(Class)class;
- (void)setScrollEnabled:(BOOL)enabled;
- (void)setSearchField:(id)field;
- (void)setSections:(id)sections;
- (void)setShouldHideResultsUnderKeyboard:(BOOL)keyboard;
- (void)setShouldUseInsetRoundedSections:(BOOL)sections;
- (void)setShouldUseStandardSectionInsets:(BOOL)insets;
- (void)setShowsVerticalScrollIndicator:(BOOL)indicator;
- (void)setViewDidUpdateHandler:(id)handler;
- (void)setViewWillUpdateHandler:(id)handler;
- (void)tapAtIndexPath:(id)path;
- (void)toggleShowMoreForSection:(unint64_t)section;
- (void)updateWithResultSections:(id)sections resetScrollPoint:(BOOL)point animated:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)willDismiss;
@end

@implementation SearchUIResultsViewController

- (UIView)footerView
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  footerView = [resultsTableViewController footerView];

  return footerView;
}

- (void)purgeMemory
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController purgeMemory];
}

- (SearchUIResultsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UISearchTextField)searchField
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  textField = [resultsTableViewController textField];

  return textField;
}

- (id)contentScrollView
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  majorScrollView = [resultsTableViewController majorScrollView];

  return majorScrollView;
}

- (double)distanceToTopOfAppIcons
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController headerHeight];
  v4 = v3;
  +[SearchUITableViewCell distanceToTopOfAppIconsForMultiResultCell];
  v6 = v4 + v5;

  return v6;
}

- (void)viewDidLayoutSubviews
{
  v25 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = SearchUIResultsViewController;
  [(SearchUIResultsViewController *)&v23 viewDidLayoutSubviews];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  childViewControllers = [(SearchUIResultsViewController *)self childViewControllers];
  v4 = [childViewControllers countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(childViewControllers);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        view = [(SearchUIResultsViewController *)self view];
        [view bounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        view2 = [v8 view];
        [view2 setFrame:{v11, v13, v15, v17}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [childViewControllers countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }
}

- (SearchUIResultsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v14.receiver = self;
  v14.super_class = SearchUIResultsViewController;
  v4 = [(SearchUIResultsViewController *)&v14 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_opt_new();
    [(SearchUIResultsViewController *)v4 setView:v5];

    v6 = objc_opt_new();
    [v6 setInteractionDelegate:v4];
    [v6 setSizingDelegate:v4];
    [(SearchUIResultsViewController *)v4 addChildViewController:v6];
    view = [(SearchUIResultsViewController *)v4 view];
    view2 = [v6 view];
    [view addSubview:view2];

    v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel_didTap];
    [v9 setDelegate:v4];
    view3 = [v6 view];
    [view3 addGestureRecognizer:v9];

    majorScrollView = [v6 majorScrollView];
    panGestureRecognizer = [majorScrollView panGestureRecognizer];
    [v9 requireGestureRecognizerToFail:panGestureRecognizer];

    [(SearchUIResultsViewController *)v4 setResultsTableViewController:v6];
  }

  return v4;
}

- (void)restoreResultsIfNeeded
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController restoreResultsIfNeeded];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
    [resultsTableViewController setResultsViewDelegate:obj];
  }
}

- (void)setAdditionalKeyboardHeight:(double)height
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController setAdditionalKeyboardHeight:height];
}

- (double)additionalKeyboardHeight
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController additionalKeyboardHeight];
  v4 = v3;

  return v4;
}

- (void)didScrollPastBottomOfContent
{
  delegate = [(SearchUIResultsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(SearchUIResultsViewController *)self delegate];
    [delegate2 didScrollPastBottomOfContent];
  }
}

- (void)didBeginScrolling
{
  delegate = [(SearchUIResultsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(SearchUIResultsViewController *)self delegate];
    [delegate2 didBeginScrollingResults];
  }
}

- (void)didFocusOnCell:(id)cell
{
  cellCopy = cell;
  keyboardResultForFocus = [cellCopy keyboardResultForFocus];
  keyboardCardSectionForFocus = [cellCopy keyboardCardSectionForFocus];

  [(SearchUIResultsViewController *)self didUpdateKeyboardFocusToResult:keyboardResultForFocus cardSection:keyboardCardSectionForFocus];
}

- (void)didUpdateKeyboardFocusToResult:(id)result cardSection:(id)section
{
  resultCopy = result;
  sectionCopy = section;
  delegate = [(SearchUIResultsViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(SearchUIResultsViewController *)self delegate];
    [delegate2 didUpdateKeyboardFocusToResult:resultCopy cardSection:sectionCopy];
  }
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController setFooterView:viewCopy];
}

- (void)replaceResult:(id)result withResult:(id)withResult
{
  withResultCopy = withResult;
  resultCopy = result;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController replaceResult:resultCopy withResult:withResultCopy];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  majorScrollView = [resultsTableViewController majorScrollView];
  [beginCopy locationInView:majorScrollView];
  v8 = v7;
  v10 = v9;

  resultsTableViewController2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  majorScrollView2 = [resultsTableViewController2 majorScrollView];
  [majorScrollView2 contentSize];
  isHidden = v10 > v13;

  resultsTableViewController3 = [(SearchUIResultsViewController *)self resultsTableViewController];
  majorScrollView3 = [resultsTableViewController3 majorScrollView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    resultsTableViewController4 = [(SearchUIResultsViewController *)self resultsTableViewController];
    majorScrollView4 = [resultsTableViewController4 majorScrollView];

    [majorScrollView4 contentSize];
    v21 = v20;
    [majorScrollView4 sectionFooterHeight];
    if (v10 <= v21 - v22)
    {
      v23 = [majorScrollView4 indexPathForRowAtPoint:{v8, v10}];
      if (v23)
      {
        v24 = [majorScrollView4 cellForRowAtIndexPath:v23];
        isHidden = [v24 isHidden];
      }

      else
      {
        isHidden = 0;
      }
    }

    else
    {
      isHidden = 1;
    }
  }

  return isHidden;
}

- (void)didTap
{
  delegate = [(SearchUIResultsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(SearchUIResultsViewController *)self delegate];
    [delegate2 didTapInEmptyRegion];
  }
}

- (void)setSearchField:(id)field
{
  fieldCopy = field;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController setTextField:fieldCopy];
}

- (void)setFeedbackListener:(id)listener
{
  listenerCopy = listener;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController setFeedbackListener:listenerCopy];
}

- (SFFeedbackListener)feedbackListener
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  feedbackListener = [resultsTableViewController feedbackListener];

  return feedbackListener;
}

- (void)setCommandDelegate:(id)delegate
{
  delegateCopy = delegate;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController setCommandDelegate:delegateCopy];
}

- (SearchUICommandDelegate)commandDelegate
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  commandDelegate = [resultsTableViewController commandDelegate];

  return commandDelegate;
}

- (void)setCustomViewProvider:(id)provider
{
  providerCopy = provider;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController setCustomViewProvider:providerCopy];
}

- (SearchUICustomViewProvider)customViewProvider
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  customViewProvider = [resultsTableViewController customViewProvider];

  return customViewProvider;
}

- (void)setShouldHideResultsUnderKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController setShouldHideTableCellsUnderKeyboard:keyboardCopy];
}

- (BOOL)shouldHideResultsUnderKeyboard
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  shouldHideTableCellsUnderKeyboard = [resultsTableViewController shouldHideTableCellsUnderKeyboard];

  return shouldHideTableCellsUnderKeyboard;
}

- (void)setShouldUseInsetRoundedSections:(BOOL)sections
{
  sectionsCopy = sections;
  v19 = *MEMORY[0x1E69E9840];
  view = [(SearchUIResultsViewController *)self view];
  [view setShouldUseInsetRoundedSections:sectionsCopy];

  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController setShouldUseInsetRoundedSections:sectionsCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  navigationController = [(SearchUIResultsViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];

  v9 = [viewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(viewControllers);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v13 setShouldUseInsetRoundedSections:sectionsCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [viewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)shouldUseInsetRoundedSections
{
  view = [(SearchUIResultsViewController *)self view];
  shouldUseInsetRoundedSections = [view shouldUseInsetRoundedSections];

  return shouldUseInsetRoundedSections;
}

- (void)setShowsVerticalScrollIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  majorScrollView = [resultsTableViewController majorScrollView];
  [majorScrollView setShowsVerticalScrollIndicator:indicatorCopy];

  if (indicatorCopy)
  {
    v7 = dispatch_time(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__SearchUIResultsViewController_setShowsVerticalScrollIndicator___block_invoke;
    block[3] = &unk_1E85B24C8;
    block[4] = self;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  }
}

void __65__SearchUIResultsViewController_setShowsVerticalScrollIndicator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];

  if (v3)
  {
    v5 = [*(a1 + 32) resultsTableViewController];
    v4 = [v5 majorScrollView];
    [v4 flashScrollIndicators];
  }
}

- (void)setDragInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController setDragInteractionEnabled:enabledCopy];
}

- (BOOL)dragInteractionEnabled
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  dragInteractionEnabled = [resultsTableViewController dragInteractionEnabled];

  return dragInteractionEnabled;
}

- (void)setScrollEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  majorScrollView = [resultsTableViewController majorScrollView];
  [majorScrollView setScrollEnabled:enabledCopy];
}

- (BOOL)scrollEnabled
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  majorScrollView = [resultsTableViewController majorScrollView];
  isScrollEnabled = [majorScrollView isScrollEnabled];

  return isScrollEnabled;
}

- (BOOL)showsVerticalScrollIndicator
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  majorScrollView = [resultsTableViewController majorScrollView];
  showsVerticalScrollIndicator = [majorScrollView showsVerticalScrollIndicator];

  return showsVerticalScrollIndicator;
}

- (void)setShouldUseStandardSectionInsets:(BOOL)insets
{
  insetsCopy = insets;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController setShouldUseStandardSectionInsets:insetsCopy];
}

- (BOOL)shouldUseStandardSectionInsets
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  shouldUseStandardSectionInsets = [resultsTableViewController shouldUseStandardSectionInsets];

  return shouldUseStandardSectionInsets;
}

- (void)updateWithResultSections:(id)sections resetScrollPoint:(BOOL)point animated:(BOOL)animated
{
  animatedCopy = animated;
  pointCopy = point;
  objc_storeStrong(&self->_sections, sections);
  sectionsCopy = sections;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController updateWithResultSections:sectionsCopy scrollToTop:pointCopy animated:animatedCopy];
}

- (void)highlightResult:(id)result
{
  resultCopy = result;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController highlightResult:resultCopy];
}

- (NSString)queryString
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  queryString = [resultsTableViewController queryString];

  return queryString;
}

- (void)setQueryString:(id)string
{
  stringCopy = string;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController setQueryString:stringCopy];
}

- (void)setSections:(id)sections
{
  v43 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  [(SearchUIResultsViewController *)self updateWithResultSections:sectionsCopy];
  if ([(SearchUIResultsViewController *)self immediatelyShowCardForSingleResult])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = sectionsCopy;
    v6 = [v5 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v6)
    {
      v7 = v6;
      selfCopy = self;
      v37 = sectionsCopy;
      v8 = 0;
      v9 = 0;
      v10 = *v39;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v38 + 1) + 8 * i);
          bundleIdentifier = [v12 bundleIdentifier];
          v14 = [bundleIdentifier hasPrefix:@"com.apple.lookup."];

          if ((v14 & 1) == 0)
          {
            results = [v12 results];
            v9 += [results count];

            if (v9 > 1)
            {
              sectionsCopy = v37;
LABEL_30:

              v5 = v8;
              goto LABEL_31;
            }

            if (v9 == 1)
            {
              v16 = v12;

              v8 = v16;
              v9 = 1;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

      sectionsCopy = v37;
      if (v8)
      {
        results2 = [v8 results];
        firstObject = [results2 firstObject];
        v5 = [SearchUITableModel tableModelWithResult:firstObject];

        numberOfSections = [v5 numberOfSections];
        if (numberOfSections >= 1)
        {
          v19 = 0;
          v20 = 0;
          do
          {
            v21 = [v5 numberOfRowsForSection:v19];
            if (v21 >= 1)
            {
              v22 = v21;
              for (j = 0; j != v22; ++j)
              {
                v24 = [MEMORY[0x1E696AC88] indexPathForRow:j inSection:v19];
                v25 = [v5 rowModelForIndexPath:v24];
                nextCard = [v25 nextCard];

                if (nextCard)
                {
                  v27 = nextCard == v20;
                }

                else
                {
                  v27 = 1;
                }

                if (!v27)
                {
                  v28 = v20;
                  if (v20)
                  {
                    goto LABEL_28;
                  }

                  v20 = nextCard;
                }
              }
            }

            ++v19;
          }

          while (v19 != numberOfSections);
          if (v20)
          {
            v29 = [SearchUICardViewController alloc];
            feedbackListener = [(SearchUIResultsViewController *)selfCopy feedbackListener];
            nextCard = [(SearchUICardViewController *)v29 initWithCard:v20 feedbackListener:feedbackListener];

            [(SearchUIResultsViewController *)selfCopy addChildViewController:nextCard];
            view = [(SearchUIResultsViewController *)selfCopy view];
            view2 = [(SearchUICardViewController *)nextCard view];
            [view addSubview:view2];

            resultsTableViewController = [(SearchUIResultsViewController *)selfCopy resultsTableViewController];
            view3 = [resultsTableViewController view];
            [view3 setHidden:1];

            v28 = v20;
            sectionsCopy = v37;
LABEL_28:
          }
        }

        goto LABEL_30;
      }
    }

    else
    {
LABEL_31:
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SearchUIResultsViewController;
  [(SearchUIResultsViewController *)&v5 viewDidDisappear:disappear];
  if ([(SearchUIResultsViewController *)self shouldMonitorScrollingPastBottomOfContent])
  {
    resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
    [resultsTableViewController scrollTableToTop];
  }
}

- (CGSize)contentSize
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  collectionView = [resultsTableViewController collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
  v7 = v6;
  v9 = v8;

  resultsTableViewController2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  tableModel = [resultsTableViewController2 tableModel];
  numberOfSections = [tableModel numberOfSections];

  if (numberOfSections)
  {
    if (v7 == *MEMORY[0x1E695F060] && v9 == *(MEMORY[0x1E695F060] + 8))
    {
      view = [(SearchUIResultsViewController *)self view];
      [view frame];
      v7 = v15;

      v9 = 44.0;
    }
  }

  v16 = v7;
  v17 = v9;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)contentSizeDidChange:(CGSize)change animated:(BOOL)animated
{
  height = change.height;
  width = change.width;
  delegate = [(SearchUIResultsViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__SearchUIResultsViewController_contentSizeDidChange_animated___block_invoke;
    v10[3] = &unk_1E85B2988;
    v10[4] = self;
    *&v10[5] = width;
    *&v10[6] = height;
    animatedCopy = animated;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

void __63__SearchUIResultsViewController_contentSizeDidChange_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 resultsViewController:*(a1 + 32) didChangeContentSize:*(a1 + 56) animated:{*(a1 + 40), *(a1 + 48)}];
}

- (void)setViewWillUpdateHandler:(id)handler
{
  handlerCopy = handler;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController setViewWillUpdateHandler:handlerCopy];
}

- (void)setViewDidUpdateHandler:(id)handler
{
  handlerCopy = handler;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController setViewDidUpdateHandler:handlerCopy];
}

- (void)iterateIndexPaths:(id)paths
{
  pathsCopy = paths;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController iterateIndexPaths:pathsCopy];
}

- (void)performScrollTestWithCompletion:(id)completion
{
  completionCopy = completion;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController performScrollTestWithCompletion:completionCopy];
}

- (int64_t)numberOfSections
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  numberOfSections = [resultsTableViewController numberOfSections];

  return numberOfSections;
}

- (void)performScrollTestWithHandlerForFirstScrollCompletion:(id)completion completion:(id)a4
{
  v6 = a4;
  completionCopy = completion;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController performScrollTestWithHandlerForFirstScrollCompletion:completionCopy completion:v6];
}

- (void)performRecapScrollTestWithTestName:(id)name completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController performRecapScrollTestWithTestName:nameCopy completion:completionCopy];
}

- (void)tapAtIndexPath:(id)path
{
  pathCopy = path;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController tapAtIndexPath:pathCopy];
}

- (CGRect)scrollToIndexPath:(id)path
{
  pathCopy = path;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController scrollToIndexPath:pathCopy];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)toggleShowMoreForSection:(unint64_t)section
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController toggleShowMoreForSection:section];
}

- (void)performReturnKeyPressAction
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController returnKeyPressed];
}

- (void)didPresentToResumeSearch:(BOOL)search
{
  searchCopy = search;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController didPresentToResumeSearch:searchCopy];
}

- (void)willDismiss
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController willDismiss];
}

- (void)scrollAndSelectLastSelectedIndexPath
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController scrollAndSelectLastSelectedIndexPath];
}

- (void)setRestorationContext:(id)context
{
  contextCopy = context;
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController setRestorationContext:contextCopy];
}

- (id)restorationContext
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  restorationContext = [resultsTableViewController restorationContext];

  return restorationContext;
}

- (void)setRestorationContextClass:(Class)class
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  [resultsTableViewController setRestorationContextClass:class];
}

- (Class)restorationContextClass
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  restorationContextClass = [resultsTableViewController restorationContextClass];

  return restorationContextClass;
}

- (id)scrollViewForPocketInteraction
{
  resultsTableViewController = [(SearchUIResultsViewController *)self resultsTableViewController];
  scrollViewForPocketInteraction = [resultsTableViewController scrollViewForPocketInteraction];

  return scrollViewForPocketInteraction;
}

@end