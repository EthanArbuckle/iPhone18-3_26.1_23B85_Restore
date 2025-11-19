@interface SearchUIResultsViewController
- (BOOL)dragInteractionEnabled;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)scrollEnabled;
- (BOOL)shouldHideResultsUnderKeyboard;
- (BOOL)shouldUseInsetRoundedSections;
- (BOOL)shouldUseStandardSectionInsets;
- (BOOL)showsVerticalScrollIndicator;
- (CGRect)scrollToIndexPath:(id)a3;
- (CGSize)contentSize;
- (Class)restorationContextClass;
- (NSString)queryString;
- (SFFeedbackListener)feedbackListener;
- (SearchUICommandDelegate)commandDelegate;
- (SearchUICustomViewProvider)customViewProvider;
- (SearchUIResultsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SearchUIResultsViewDelegate)delegate;
- (UISearchTextField)searchField;
- (UIView)footerView;
- (double)additionalKeyboardHeight;
- (double)distanceToTopOfAppIcons;
- (id)contentScrollView;
- (id)restorationContext;
- (id)scrollViewForPocketInteraction;
- (int64_t)numberOfSections;
- (void)contentSizeDidChange:(CGSize)a3 animated:(BOOL)a4;
- (void)didBeginScrolling;
- (void)didFocusOnCell:(id)a3;
- (void)didPresentToResumeSearch:(BOOL)a3;
- (void)didScrollPastBottomOfContent;
- (void)didTap;
- (void)didUpdateKeyboardFocusToResult:(id)a3 cardSection:(id)a4;
- (void)highlightResult:(id)a3;
- (void)iterateIndexPaths:(id)a3;
- (void)performRecapScrollTestWithTestName:(id)a3 completion:(id)a4;
- (void)performReturnKeyPressAction;
- (void)performScrollTestWithCompletion:(id)a3;
- (void)performScrollTestWithHandlerForFirstScrollCompletion:(id)a3 completion:(id)a4;
- (void)purgeMemory;
- (void)replaceResult:(id)a3 withResult:(id)a4;
- (void)restoreResultsIfNeeded;
- (void)scrollAndSelectLastSelectedIndexPath;
- (void)setAdditionalKeyboardHeight:(double)a3;
- (void)setCommandDelegate:(id)a3;
- (void)setCustomViewProvider:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDragInteractionEnabled:(BOOL)a3;
- (void)setFeedbackListener:(id)a3;
- (void)setFooterView:(id)a3;
- (void)setQueryString:(id)a3;
- (void)setRestorationContext:(id)a3;
- (void)setRestorationContextClass:(Class)a3;
- (void)setScrollEnabled:(BOOL)a3;
- (void)setSearchField:(id)a3;
- (void)setSections:(id)a3;
- (void)setShouldHideResultsUnderKeyboard:(BOOL)a3;
- (void)setShouldUseInsetRoundedSections:(BOOL)a3;
- (void)setShouldUseStandardSectionInsets:(BOOL)a3;
- (void)setShowsVerticalScrollIndicator:(BOOL)a3;
- (void)setViewDidUpdateHandler:(id)a3;
- (void)setViewWillUpdateHandler:(id)a3;
- (void)tapAtIndexPath:(id)a3;
- (void)toggleShowMoreForSection:(unint64_t)a3;
- (void)updateWithResultSections:(id)a3 resetScrollPoint:(BOOL)a4 animated:(BOOL)a5;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)willDismiss;
@end

@implementation SearchUIResultsViewController

- (UIView)footerView
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v3 = [v2 footerView];

  return v3;
}

- (void)purgeMemory
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v2 purgeMemory];
}

- (SearchUIResultsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UISearchTextField)searchField
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v3 = [v2 textField];

  return v3;
}

- (id)contentScrollView
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v3 = [v2 majorScrollView];

  return v3;
}

- (double)distanceToTopOfAppIcons
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v2 headerHeight];
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
  v3 = [(SearchUIResultsViewController *)self childViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = [(SearchUIResultsViewController *)self view];
        [v9 bounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v18 = [v8 view];
        [v18 setFrame:{v11, v13, v15, v17}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }
}

- (SearchUIResultsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v14.receiver = self;
  v14.super_class = SearchUIResultsViewController;
  v4 = [(SearchUIResultsViewController *)&v14 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    [(SearchUIResultsViewController *)v4 setView:v5];

    v6 = objc_opt_new();
    [v6 setInteractionDelegate:v4];
    [v6 setSizingDelegate:v4];
    [(SearchUIResultsViewController *)v4 addChildViewController:v6];
    v7 = [(SearchUIResultsViewController *)v4 view];
    v8 = [v6 view];
    [v7 addSubview:v8];

    v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel_didTap];
    [v9 setDelegate:v4];
    v10 = [v6 view];
    [v10 addGestureRecognizer:v9];

    v11 = [v6 majorScrollView];
    v12 = [v11 panGestureRecognizer];
    [v9 requireGestureRecognizerToFail:v12];

    [(SearchUIResultsViewController *)v4 setResultsTableViewController:v6];
  }

  return v4;
}

- (void)restoreResultsIfNeeded
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v2 restoreResultsIfNeeded];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
    [v5 setResultsViewDelegate:obj];
  }
}

- (void)setAdditionalKeyboardHeight:(double)a3
{
  v4 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v4 setAdditionalKeyboardHeight:a3];
}

- (double)additionalKeyboardHeight
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v2 additionalKeyboardHeight];
  v4 = v3;

  return v4;
}

- (void)didScrollPastBottomOfContent
{
  v3 = [(SearchUIResultsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SearchUIResultsViewController *)self delegate];
    [v5 didScrollPastBottomOfContent];
  }
}

- (void)didBeginScrolling
{
  v3 = [(SearchUIResultsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SearchUIResultsViewController *)self delegate];
    [v5 didBeginScrollingResults];
  }
}

- (void)didFocusOnCell:(id)a3
{
  v4 = a3;
  v6 = [v4 keyboardResultForFocus];
  v5 = [v4 keyboardCardSectionForFocus];

  [(SearchUIResultsViewController *)self didUpdateKeyboardFocusToResult:v6 cardSection:v5];
}

- (void)didUpdateKeyboardFocusToResult:(id)a3 cardSection:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SearchUIResultsViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SearchUIResultsViewController *)self delegate];
    [v9 didUpdateKeyboardFocusToResult:v10 cardSection:v6];
  }
}

- (void)setFooterView:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v5 setFooterView:v4];
}

- (void)replaceResult:(id)a3 withResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v8 replaceResult:v7 withResult:v6];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v6 = [v5 majorScrollView];
  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v12 = [v11 majorScrollView];
  [v12 contentSize];
  v14 = v10 > v13;

  v15 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v16 = [v15 majorScrollView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v18 = [(SearchUIResultsViewController *)self resultsTableViewController];
    v19 = [v18 majorScrollView];

    [v19 contentSize];
    v21 = v20;
    [v19 sectionFooterHeight];
    if (v10 <= v21 - v22)
    {
      v23 = [v19 indexPathForRowAtPoint:{v8, v10}];
      if (v23)
      {
        v24 = [v19 cellForRowAtIndexPath:v23];
        v14 = [v24 isHidden];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 1;
    }
  }

  return v14;
}

- (void)didTap
{
  v3 = [(SearchUIResultsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SearchUIResultsViewController *)self delegate];
    [v5 didTapInEmptyRegion];
  }
}

- (void)setSearchField:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v5 setTextField:v4];
}

- (void)setFeedbackListener:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v5 setFeedbackListener:v4];
}

- (SFFeedbackListener)feedbackListener
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v3 = [v2 feedbackListener];

  return v3;
}

- (void)setCommandDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v5 setCommandDelegate:v4];
}

- (SearchUICommandDelegate)commandDelegate
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v3 = [v2 commandDelegate];

  return v3;
}

- (void)setCustomViewProvider:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v5 setCustomViewProvider:v4];
}

- (SearchUICustomViewProvider)customViewProvider
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v3 = [v2 customViewProvider];

  return v3;
}

- (void)setShouldHideResultsUnderKeyboard:(BOOL)a3
{
  v3 = a3;
  v4 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v4 setShouldHideTableCellsUnderKeyboard:v3];
}

- (BOOL)shouldHideResultsUnderKeyboard
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v3 = [v2 shouldHideTableCellsUnderKeyboard];

  return v3;
}

- (void)setShouldUseInsetRoundedSections:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(SearchUIResultsViewController *)self view];
  [v5 setShouldUseInsetRoundedSections:v3];

  v6 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v6 setShouldUseInsetRoundedSections:v3];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(SearchUIResultsViewController *)self navigationController];
  v8 = [v7 viewControllers];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v13 setShouldUseInsetRoundedSections:v3];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)shouldUseInsetRoundedSections
{
  v2 = [(SearchUIResultsViewController *)self view];
  v3 = [v2 shouldUseInsetRoundedSections];

  return v3;
}

- (void)setShowsVerticalScrollIndicator:(BOOL)a3
{
  v3 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v6 = [v5 majorScrollView];
  [v6 setShowsVerticalScrollIndicator:v3];

  if (v3)
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

- (void)setDragInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v4 setDragInteractionEnabled:v3];
}

- (BOOL)dragInteractionEnabled
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v3 = [v2 dragInteractionEnabled];

  return v3;
}

- (void)setScrollEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v4 = [v5 majorScrollView];
  [v4 setScrollEnabled:v3];
}

- (BOOL)scrollEnabled
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v3 = [v2 majorScrollView];
  v4 = [v3 isScrollEnabled];

  return v4;
}

- (BOOL)showsVerticalScrollIndicator
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v3 = [v2 majorScrollView];
  v4 = [v3 showsVerticalScrollIndicator];

  return v4;
}

- (void)setShouldUseStandardSectionInsets:(BOOL)a3
{
  v3 = a3;
  v4 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v4 setShouldUseStandardSectionInsets:v3];
}

- (BOOL)shouldUseStandardSectionInsets
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v3 = [v2 shouldUseStandardSectionInsets];

  return v3;
}

- (void)updateWithResultSections:(id)a3 resetScrollPoint:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  objc_storeStrong(&self->_sections, a3);
  v9 = a3;
  v10 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v10 updateWithResultSections:v9 scrollToTop:v6 animated:v5];
}

- (void)highlightResult:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v5 highlightResult:v4];
}

- (NSString)queryString
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v3 = [v2 queryString];

  return v3;
}

- (void)setQueryString:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v5 setQueryString:v4];
}

- (void)setSections:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SearchUIResultsViewController *)self updateWithResultSections:v4];
  if ([(SearchUIResultsViewController *)self immediatelyShowCardForSingleResult])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v6)
    {
      v7 = v6;
      v36 = self;
      v37 = v4;
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
          v13 = [v12 bundleIdentifier];
          v14 = [v13 hasPrefix:@"com.apple.lookup."];

          if ((v14 & 1) == 0)
          {
            v15 = [v12 results];
            v9 += [v15 count];

            if (v9 > 1)
            {
              v4 = v37;
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

      v4 = v37;
      if (v8)
      {
        v17 = [v8 results];
        v18 = [v17 firstObject];
        v5 = [SearchUITableModel tableModelWithResult:v18];

        v35 = [v5 numberOfSections];
        if (v35 >= 1)
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
                v26 = [v25 nextCard];

                if (v26)
                {
                  v27 = v26 == v20;
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

                  v20 = v26;
                }
              }
            }

            ++v19;
          }

          while (v19 != v35);
          if (v20)
          {
            v29 = [SearchUICardViewController alloc];
            v30 = [(SearchUIResultsViewController *)v36 feedbackListener];
            v26 = [(SearchUICardViewController *)v29 initWithCard:v20 feedbackListener:v30];

            [(SearchUIResultsViewController *)v36 addChildViewController:v26];
            v31 = [(SearchUIResultsViewController *)v36 view];
            v32 = [(SearchUICardViewController *)v26 view];
            [v31 addSubview:v32];

            v33 = [(SearchUIResultsViewController *)v36 resultsTableViewController];
            v34 = [v33 view];
            [v34 setHidden:1];

            v28 = v20;
            v4 = v37;
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

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SearchUIResultsViewController;
  [(SearchUIResultsViewController *)&v5 viewDidDisappear:a3];
  if ([(SearchUIResultsViewController *)self shouldMonitorScrollingPastBottomOfContent])
  {
    v4 = [(SearchUIResultsViewController *)self resultsTableViewController];
    [v4 scrollTableToTop];
  }
}

- (CGSize)contentSize
{
  v3 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v4 = [v3 collectionView];
  v5 = [v4 collectionViewLayout];
  [v5 collectionViewContentSize];
  v7 = v6;
  v9 = v8;

  v10 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v11 = [v10 tableModel];
  v12 = [v11 numberOfSections];

  if (v12)
  {
    if (v7 == *MEMORY[0x1E695F060] && v9 == *(MEMORY[0x1E695F060] + 8))
    {
      v14 = [(SearchUIResultsViewController *)self view];
      [v14 frame];
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

- (void)contentSizeDidChange:(CGSize)a3 animated:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [(SearchUIResultsViewController *)self delegate];
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
    v11 = a4;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

void __63__SearchUIResultsViewController_contentSizeDidChange_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 resultsViewController:*(a1 + 32) didChangeContentSize:*(a1 + 56) animated:{*(a1 + 40), *(a1 + 48)}];
}

- (void)setViewWillUpdateHandler:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v5 setViewWillUpdateHandler:v4];
}

- (void)setViewDidUpdateHandler:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v5 setViewDidUpdateHandler:v4];
}

- (void)iterateIndexPaths:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v5 iterateIndexPaths:v4];
}

- (void)performScrollTestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v5 performScrollTestWithCompletion:v4];
}

- (int64_t)numberOfSections
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v3 = [v2 numberOfSections];

  return v3;
}

- (void)performScrollTestWithHandlerForFirstScrollCompletion:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v8 performScrollTestWithHandlerForFirstScrollCompletion:v7 completion:v6];
}

- (void)performRecapScrollTestWithTestName:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v8 performRecapScrollTestWithTestName:v7 completion:v6];
}

- (void)tapAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v5 tapAtIndexPath:v4];
}

- (CGRect)scrollToIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v5 scrollToIndexPath:v4];
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

- (void)toggleShowMoreForSection:(unint64_t)a3
{
  v4 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v4 toggleShowMoreForSection:a3];
}

- (void)performReturnKeyPressAction
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v2 returnKeyPressed];
}

- (void)didPresentToResumeSearch:(BOOL)a3
{
  v3 = a3;
  v4 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v4 didPresentToResumeSearch:v3];
}

- (void)willDismiss
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v2 willDismiss];
}

- (void)scrollAndSelectLastSelectedIndexPath
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v2 scrollAndSelectLastSelectedIndexPath];
}

- (void)setRestorationContext:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v5 setRestorationContext:v4];
}

- (id)restorationContext
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v3 = [v2 restorationContext];

  return v3;
}

- (void)setRestorationContextClass:(Class)a3
{
  v4 = [(SearchUIResultsViewController *)self resultsTableViewController];
  [v4 setRestorationContextClass:a3];
}

- (Class)restorationContextClass
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v3 = [v2 restorationContextClass];

  return v3;
}

- (id)scrollViewForPocketInteraction
{
  v2 = [(SearchUIResultsViewController *)self resultsTableViewController];
  v3 = [v2 scrollViewForPocketInteraction];

  return v3;
}

@end