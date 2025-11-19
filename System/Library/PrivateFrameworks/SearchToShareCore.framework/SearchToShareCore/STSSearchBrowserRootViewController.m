@interface STSSearchBrowserRootViewController
- (BOOL)isPickerVisible;
- (BOOL)searchBarShouldBeginEditing:(id)a3;
- (STSPickerSelectionDelegate)pickerSelectionDelegate;
- (STSSearchBrowserHeaderView)searchHeaderView;
- (STSSearchBrowserRootViewController)initWithSearchModel:(id)a3;
- (STSSearchBrowserRootViewControllerDelegate)selectionDelegate;
- (void)_addQueryToRecents:(id)a3;
- (void)_clearRecents;
- (void)_clearSuggestions;
- (void)_keyboardWillShow:(id)a3;
- (void)_showLegalNotice;
- (void)_transitionContentFromViewController:(id)a3 toViewController:(id)a4 completion:(id)a5;
- (void)_updateContentInsets;
- (void)categoryViewController:(id)a3 didSelectCategory:(id)a4 suggested:(BOOL)a5;
- (void)categoryViewController:(id)a3 didSelectRecent:(id)a4;
- (void)categoryViewControllerDidSelectClearRecentsButton:(id)a3;
- (void)categoryViewControllerScrollViewWillBeginDragging:(id)a3;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)loadView;
- (void)resetContentOffset;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)sendVisibleResultsFeedback;
- (void)setBottomInset:(double)a3;
- (void)setPickerSelectionDelegate:(id)a3;
- (void)setTopInset:(double)a3;
- (void)showCategories;
- (void)showPickerAndPerformQuery:(id)a3 requestType:(int64_t)a4;
- (void)showSuggestions;
- (void)suggestionViewController:(id)a3 didSelectSuggestionAtIndex:(unint64_t)a4;
- (void)suggestionViewControllerDidTapLogo:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation STSSearchBrowserRootViewController

- (STSSearchBrowserRootViewController)initWithSearchModel:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = STSSearchBrowserRootViewController;
  v6 = [(STSSearchBrowserRootViewController *)&v23 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchModel, a3);
    v8 = objc_alloc_init(STSSuggestionViewController);
    suggestionViewController = v7->_suggestionViewController;
    v7->_suggestionViewController = v8;

    [(STSSuggestionViewController *)v7->_suggestionViewController setSearchModel:v7->_searchModel];
    [(STSSearchModel *)v7->_searchModel setQuerySuggestionsDelegate:v7->_suggestionViewController];
    [(STSSuggestionViewController *)v7->_suggestionViewController setSelectionDelegate:v7];
    [(STSSuggestionViewController *)v7->_suggestionViewController setAutomaticallyAdjustsScrollViewInsets:0];
    v10 = [[STSPicker alloc] initWithSearchModel:v7->_searchModel showSuggestions:0];
    pickerViewController = v7->_pickerViewController;
    v7->_pickerViewController = v10;

    [(STSSearchModel *)v7->_searchModel setDelegate:v7->_pickerViewController];
    v12 = objc_alloc_init(STSCategoryViewController);
    categoryViewController = v7->_categoryViewController;
    v7->_categoryViewController = v12;

    [(STSCategoryViewController *)v7->_categoryViewController setSelectionDelegate:v7];
    [(STSCategoryViewController *)v7->_categoryViewController setSearchModel:v7->_searchModel];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v7 selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v7 selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

    v16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v17 = [v16 objectForKey:@"STSRecentQueries"];
    v18 = [v17 mutableCopy];
    recentQueries = v7->_recentQueries;
    v7->_recentQueries = v18;

    if (!v7->_recentQueries)
    {
      v20 = objc_opt_new();
      v21 = v7->_recentQueries;
      v7->_recentQueries = v20;
    }

    [(STSSearchBrowserRootViewController *)v7 setRequestedExpandedPresentation:0];
    v7->_didSendCategoryResultFeedback = 0;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = STSSearchBrowserRootViewController;
  [(STSSearchBrowserRootViewController *)&v4 dealloc];
}

- (void)loadView
{
  v5 = objc_alloc_init(STSSearchBrowserRootView);
  v3 = objc_alloc_init(STSSearchBrowserHeaderView);
  [(STSSearchBrowserHeaderView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(STSSearchBrowserHeaderView *)v3 searchBar];
  [v4 setDelegate:self];

  [(STSSearchBrowserRootView *)v5 setHeaderView:v3];
  [(STSSearchBrowserRootViewController *)self setView:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(STSSearchBrowserRootViewController *)self _updateContentInsets];
  v28.receiver = self;
  v28.super_class = STSSearchBrowserRootViewController;
  [(STSSearchBrowserRootViewController *)&v28 viewWillAppear:v3];
  v5 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
  v6 = [v5 searchBar];
  v7 = [v6 text];
  v8 = [v7 length];

  if (v8 && (-[STSSearchBrowserRootViewController searchHeaderView](self, "searchHeaderView"), v9 = objc_claimAutoreleasedReturnValue(), [v9 searchBar], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "text"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, v10, v9, v12))
  {
    v13 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
    v14 = [v13 searchBar];
    v15 = [v14 searchTextField];
    v16 = [v15 endOfDocument];

    v17 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
    v18 = [v17 searchBar];
    v19 = [v18 searchTextField];
    v20 = [v19 endOfDocument];

    v21 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
    v22 = [v21 searchBar];
    v23 = [v22 searchTextField];
    v24 = [v23 textRangeFromPosition:v16 toPosition:v20];

    v25 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
    v26 = [v25 searchBar];
    v27 = [v26 searchTextField];
    [v27 setSelectedTextRange:v24];
  }

  else
  {
    [(STSSearchBrowserRootViewController *)self showCategories];
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = STSSearchBrowserRootViewController;
  [(STSSearchBrowserRootViewController *)&v3 didMoveToParentViewController:a3];
}

- (void)suggestionViewController:(id)a3 didSelectSuggestionAtIndex:(unint64_t)a4
{
  v6 = [(STSPicker *)self->_pickerViewController querySuggestions];
  v14 = [v6 objectAtIndex:a4];

  v7 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
  v8 = [v7 searchBar];
  v9 = [v14 suggestion];
  [v8 setText:v9];

  v10 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
  v11 = [v10 searchBar];
  [v11 resignFirstResponder];

  v12 = [v14 suggestion];
  [(STSSearchBrowserRootViewController *)self showPickerAndPerformQuery:v12 requestType:2];

  v13 = +[STSFeedbackReporter sharedInstance];
  [v13 didSearchWithSuggestedQuery:v14];

  [(STSSearchBrowserRootViewController *)self _clearSuggestions];
}

- (void)suggestionViewControllerDidTapLogo:(id)a3
{
  v4 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
  v5 = [v4 searchBar];
  v13 = [v5 text];

  v6 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v7 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:v6];

  v8 = MEMORY[0x277CBEBC0];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://www.bing.com/images/search?q=%@", v7];
  v10 = [v8 URLWithString:v9];

  v11 = +[STSFeedbackReporter sharedInstance];
  [v11 didEngageProviderLogo];

  v12 = [(STSSearchBrowserRootViewController *)self extensionContext];
  [v12 openURL:v10 completionHandler:0];
}

- (void)categoryViewController:(id)a3 didSelectCategory:(id)a4 suggested:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
  v9 = [v8 searchBar];
  [v9 setText:v7];

  v10 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
  v11 = [v10 searchBar];
  [v11 resignFirstResponder];

  if (v5)
  {
    v12 = 3;
  }

  else
  {
    v12 = 5;
  }

  [(STSSearchBrowserRootViewController *)self showPickerAndPerformQuery:v7 requestType:v12];

  [(STSSearchBrowserRootViewController *)self _clearSuggestions];
}

- (void)categoryViewController:(id)a3 didSelectRecent:(id)a4
{
  v5 = a4;
  v6 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
  v7 = [v6 searchBar];
  [v7 setText:v5];

  v8 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
  v9 = [v8 searchBar];
  [v9 resignFirstResponder];

  [(STSSearchBrowserRootViewController *)self showPickerAndPerformQuery:v5 requestType:6];

  [(STSSearchBrowserRootViewController *)self _clearSuggestions];
}

- (void)categoryViewControllerDidSelectClearRecentsButton:(id)a3
{
  [(STSSearchBrowserRootViewController *)self _clearRecents];
  v3 = +[STSFeedbackReporter sharedInstance];
  [v3 didClearRecents];
}

- (void)categoryViewControllerScrollViewWillBeginDragging:(id)a3
{
  v4 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
  v3 = [v4 searchBar];
  [v3 resignFirstResponder];
}

- (BOOL)searchBarShouldBeginEditing:(id)a3
{
  [(STSCategoryViewController *)self->_categoryViewController sendVisibleResultsFeedback];
  v4 = [(STSSearchBrowserRootViewController *)self selectionDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = [(STSSearchBrowserRootViewController *)self selectionDelegate];
  v7 = [v6 searchBrowserRootViewControllerSearchBarShouldBeginEditing:self];

  return v7;
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v11 = a3;
  v4 = [(STSSearchBrowserRootViewController *)self pickerViewController];
  [v4 cancelImageDownloads];

  currentChildViewController = self->_currentChildViewController;
  WeakRetained = objc_loadWeakRetained(&self->_legalNoticeViewController);
  LOBYTE(currentChildViewController) = [(UIViewController *)currentChildViewController isEqual:WeakRetained];

  if ((currentChildViewController & 1) == 0)
  {
    v7 = [v11 text];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [(STSSearchBrowserRootViewController *)self pickerViewController];
      v10 = [v11 text];
      [v9 performSearchWithQueryString:v10 requestType:0];

      [(STSSearchBrowserRootViewController *)self showSuggestions];
    }

    else
    {
      [(STSSearchBrowserRootViewController *)self showCategories];
    }
  }
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = [(STSSearchBrowserRootViewController *)self pickerViewController];
  [v4 cancelImageDownloads];

  v5 = [(STSSearchBrowserRootViewController *)self pickerViewController];
  [v5 resetContent];

  v6 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
  v7 = [v6 searchBar];
  [v7 setText:0];

  [(STSSearchBrowserRootViewController *)self _clearSuggestions];
  v8 = [(STSSearchBrowserRootViewController *)self selectionDelegate];
  [v8 searchBrowserRootViewControllerDidSelectCancel:self];

  v9 = +[STSFeedbackReporter sharedInstance];
  [v9 searchBarDidCancel];
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = a3;
  v5 = [(STSSearchBrowserRootViewController *)self pickerViewController];
  [v5 resetContent];

  [v4 resignFirstResponder];
  v7 = [v4 text];

  [(STSSearchBrowserRootViewController *)self showPickerAndPerformQuery:v7 requestType:8];
  v6 = +[STSFeedbackReporter sharedInstance];
  [v6 didSearchWithCustomQuery:v7];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v12 = a3;
  v6 = a4;
  if ([v6 length] <= 0xC7)
  {
    v7 = [v12 searchTextField];
    v8 = [v7 text];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [(STSSearchBrowserRootViewController *)self pickerViewController];
      [v10 performSearchWithQueryString:v6 requestType:0];

      [(STSSearchBrowserRootViewController *)self showSuggestions];
    }

    else
    {
      v11 = +[STSFeedbackReporter sharedInstance];
      [v11 didClearSearchBarInput];

      +[STSSearchModel incrementClientQueryId];
      [(STSSearchBrowserRootViewController *)self _clearSuggestions];
      [(STSSearchBrowserRootViewController *)self showCategories];
    }
  }
}

- (void)_clearSuggestions
{
  v2 = [(STSSearchBrowserRootViewController *)self suggestionViewController];
  [v2 clearSuggestions];
}

- (void)showPickerAndPerformQuery:(id)a3 requestType:(int64_t)a4
{
  v6 = a3;
  v7 = [(STSSearchBrowserRootViewController *)self pickerViewController];
  [v7 resetContent];

  [(STSSearchBrowserRootViewController *)self _addQueryToRecents:v6];
  if (a4 == 3 && ([MEMORY[0x277CBEBD0] standardUserDefaults], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "sts_legalNoticeCount"), v8, v9 < 3))
  {
    v10 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
    v11 = [v10 searchBar];
    [v11 setText:v6];

    [(STSSearchBrowserRootViewController *)self _showLegalNotice];
  }

  else
  {
    if (([(UIViewController *)self->_currentChildViewController isEqual:self->_pickerViewController]& 1) != 0)
    {
      if (v6)
      {
        v12 = [(STSSearchBrowserRootViewController *)self pickerViewController];
        [v12 performSearchWithQueryString:v6 requestType:a4];
      }
    }

    else
    {
      currentChildViewController = self->_currentChildViewController;
      pickerViewController = self->_pickerViewController;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __76__STSSearchBrowserRootViewController_showPickerAndPerformQuery_requestType___block_invoke;
      v17[3] = &unk_279B8B008;
      v18 = v6;
      v19 = self;
      v20 = a4;
      [(STSSearchBrowserRootViewController *)self _transitionContentFromViewController:currentChildViewController toViewController:pickerViewController completion:v17];
    }

    v15 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
    v16 = [v15 searchBar];
    [v16 setText:v6];
  }
}

void __76__STSSearchBrowserRootViewController_showPickerAndPerformQuery_requestType___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) pickerViewController];
    [v2 performSearchWithQueryString:*(a1 + 32) requestType:*(a1 + 48)];
  }
}

- (void)showCategories
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 sts_legalNoticeCount];

  if (v4 >= 3)
  {
    categoryViewController = self->_categoryViewController;
    if (self->_currentChildViewController == categoryViewController)
    {
      if (!self->_didSendCategoryResultFeedback)
      {
        self->_didSendCategoryResultFeedback = 1;
        [(STSCategoryViewController *)self->_categoryViewController sendRankSectionsFeedback];
        v7 = self->_categoryViewController;

        [(STSCategoryViewController *)v7 sendVisibleResultsFeedback];
      }
    }

    else
    {
      [(STSCategoryViewController *)categoryViewController updateRecents:self->_recentQueries];
      [(STSSearchBrowserRootViewController *)self _transitionContentFromViewController:self->_currentChildViewController toViewController:self->_categoryViewController completion:0];
      if (!self->_didSendCategoryResultFeedback)
      {
        self->_didSendCategoryResultFeedback = 1;
        [(STSCategoryViewController *)self->_categoryViewController sendRankSectionsFeedback];
        v6 = self->_categoryViewController;

        [(STSCategoryViewController *)v6 setSendFeedbackOnViewDidAppear:1];
      }
    }
  }

  else
  {

    [(STSSearchBrowserRootViewController *)self _showLegalNotice];
  }
}

- (void)showSuggestions
{
  if (self->_currentChildViewController != &self->_suggestionViewController->super)
  {
    [STSSearchBrowserRootViewController _transitionContentFromViewController:"_transitionContentFromViewController:toViewController:completion:" toViewController:? completion:?];
  }
}

void __53__STSSearchBrowserRootViewController_showSuggestions__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 992) isEqual:*(*(a1 + 32) + 1064)])
  {
    [*(a1 + 32) _updateContentInsets];
    v2 = [*(a1 + 32) searchHeaderView];
    v3 = [v2 searchBar];
    v4 = [v3 text];
    v5 = [v4 length];

    if (v5)
    {
LABEL_11:
      v15 = [*(a1 + 32) pickerViewController];
      [v15 resetContent];

      return;
    }

    v6 = [*(a1 + 32) suggestionViewController];
    [v6 clearSuggestions];

    v7 = [*(*(a1 + 32) + 1104) predictedSuggestions];
    v8 = [v7 mutableCopy];

    v9 = [*(*(a1 + 32) + 1032) sts_map:&__block_literal_global_2];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__STSSearchBrowserRootViewController_showSuggestions__block_invoke_3;
    v16[3] = &unk_279B8B250;
    v10 = v8;
    v17 = v10;
    [v9 enumerateObjectsUsingBlock:v16];
    if (v10)
    {
      v11 = v10;
      v12 = v11;
      if (v9)
      {
        v13 = [v11 arrayByAddingObjectsFromArray:v9];

        v12 = v13;
        if (!v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      if (!v9)
      {
LABEL_10:

        goto LABEL_11;
      }

      v12 = v9;
    }

    v14 = [*(a1 + 32) suggestionViewController];
    [v14 updateQuerySuggestions:v12];

    goto LABEL_10;
  }
}

id __53__STSSearchBrowserRootViewController_showSuggestions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D4C5D8];
  v3 = a2;
  v4 = [[v2 alloc] initWithSuggestion:v3 query:v3 score:3 type:0.0];

  return v4;
}

void __53__STSSearchBrowserRootViewController_showSuggestions__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = *(a1 + 32);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __53__STSSearchBrowserRootViewController_showSuggestions__block_invoke_4;
  v11 = &unk_279B8A9D8;
  v12 = v3;
  v13 = v4;
  v6 = v4;
  v7 = v3;
  [v5 enumerateObjectsUsingBlock:&v8];
  [*(a1 + 32) removeObjectsInArray:{v6, v8, v9, v10, v11}];
}

void __53__STSSearchBrowserRootViewController_showSuggestions__block_invoke_4(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) suggestion];
  v4 = [v3 lowercaseString];
  v5 = [v8 suggestion];
  v6 = [v5 lowercaseString];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    [*(a1 + 40) addObject:v8];
  }
}

- (void)_showLegalNotice
{
  currentChildViewController = self->_currentChildViewController;
  WeakRetained = objc_loadWeakRetained(&self->_legalNoticeViewController);
  LOBYTE(currentChildViewController) = [(UIViewController *)currentChildViewController isEqual:WeakRetained];

  if ((currentChildViewController & 1) == 0)
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [v5 sts_legalNoticeCount];

    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v7 sts_setLegalNoticeCount:v6 + 1];

    v8 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
    v9 = objc_alloc_init(STSSearchNoticeView);
    v10 = STSLocalizedString(@"FTE_NOTICE_LEGAL_TEXT");
    [(STSSearchNoticeView *)v9 setText:v10];

    objc_initWeak(&location, self);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __54__STSSearchBrowserRootViewController__showLegalNotice__block_invoke;
    v14 = &unk_279B8B278;
    objc_copyWeak(&v15, &location);
    [(STSSearchNoticeView *)v9 setContinueButtonAction:&v11];
    [v8 setView:{v9, v11, v12, v13, v14}];
    objc_storeWeak(&self->_legalNoticeViewController, v8);
    [(STSSearchBrowserRootViewController *)self _updateContentInsets];
    [(STSSearchBrowserRootViewController *)self _transitionContentFromViewController:self->_currentChildViewController toViewController:v8 completion:0];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __54__STSSearchBrowserRootViewController__showLegalNotice__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v2 sts_setLegalNoticeCount:3];

    v3 = [v6 searchHeaderView];
    v4 = [v3 searchBar];
    v5 = [v4 text];

    if ([v5 length])
    {
      [v6 showPickerAndPerformQuery:v5 requestType:3];
    }

    else
    {
      [v6 showCategories];
    }

    WeakRetained = v6;
  }
}

- (void)_transitionContentFromViewController:(id)a3 toViewController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  self->_didSendCategoryResultFeedback = 0;
  if (self->_currentChildViewController != v9)
  {
    objc_storeStrong(&self->_currentChildViewController, a4);
    [(STSSearchBrowserRootViewController *)self addChildViewController:v9];
    v11 = [v8 parentViewController];

    if (v11)
    {
      [v8 willMoveToParentViewController:0];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __103__STSSearchBrowserRootViewController__transitionContentFromViewController_toViewController_completion___block_invoke;
      v20[3] = &unk_279B8A988;
      v20[4] = self;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __103__STSSearchBrowserRootViewController__transitionContentFromViewController_toViewController_completion___block_invoke_2;
      v15[3] = &unk_279B8B2A0;
      v16 = v8;
      v17 = self;
      v18 = v9;
      v19 = v10;
      [(STSSearchBrowserRootViewController *)self transitionFromViewController:v16 toViewController:v18 duration:5242880 options:v20 animations:v15 completion:0.0];

      goto LABEL_7;
    }

    v12 = [(STSSearchBrowserRootViewController *)self view];
    v13 = [(UIViewController *)v9 view];
    [v12 setContentView:v13];

    [(STSSearchBrowserRootViewController *)self addChildViewController:v9];
    [(UIViewController *)v9 didMoveToParentViewController:self];
    v14 = [(STSSearchBrowserRootViewController *)self view];
    [v14 setNeedsLayout];

    [(STSSearchBrowserRootViewController *)self _updateContentInsets];
  }

  if (v10)
  {
    v10[2](v10);
  }

LABEL_7:
}

uint64_t __103__STSSearchBrowserRootViewController__transitionContentFromViewController_toViewController_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromParentViewController];
  v2 = [*(a1 + 40) view];
  v3 = [*(a1 + 48) view];
  [v2 setContentView:v3];

  [*(a1 + 48) didMoveToParentViewController:*(a1 + 40)];
  v4 = [*(a1 + 40) searchHeaderView];
  [v4 invalidateIntrinsicContentSize];

  v5 = [*(a1 + 40) view];
  [v5 setNeedsLayout];

  result = *(a1 + 56);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (STSSearchBrowserHeaderView)searchHeaderView
{
  v2 = [(STSSearchBrowserRootViewController *)self view];
  v3 = [v2 headerView];

  return v3;
}

- (void)setPickerSelectionDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pickerSelectionDelegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_pickerSelectionDelegate, obj);
    pickerViewController = self->_pickerViewController;
    v7 = v5;
    [(STSPicker *)pickerViewController setSelectionDelegate:obj];
  }
}

- (void)_keyboardWillShow:(id)a3
{
  v36 = a3;
  v4 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
  v5 = [v4 searchBar];
  v6 = [v5 isFirstResponder];

  if (v6)
  {
    v7 = [(STSSearchBrowserRootViewController *)self view];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [v36 userInfo];
    v17 = [v16 objectForKey:*MEMORY[0x277D76BB8]];
    [v17 CGRectValue];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = [(STSSearchBrowserRootViewController *)self view];
    [v26 convertRect:0 fromView:{v19, v21, v23, v25}];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v38.origin.x = v9;
    v38.origin.y = v11;
    v38.size.width = v13;
    v38.size.height = v15;
    Height = CGRectGetHeight(v38);
    v39.origin.x = v28;
    v39.origin.y = v30;
    v39.size.width = v32;
    v39.size.height = v34;
    self->_keyboardHeight = fmax(Height - CGRectGetMinY(v39), 0.0);
    [(STSSearchBrowserRootViewController *)self _updateContentInsets];
  }
}

- (void)setTopInset:(double)a3
{
  if (self->_topInset != a3)
  {
    self->_topInset = a3;
    [(STSSearchBrowserRootViewController *)self _updateContentInsets];
  }
}

- (void)setBottomInset:(double)a3
{
  if (self->_bottomInset != a3)
  {
    self->_bottomInset = a3;
    [(STSSearchBrowserRootViewController *)self _updateContentInsets];
  }
}

- (void)resetContentOffset
{
  v3 = -(self->_topInset + 58.0);
  [(STSCategoryViewController *)self->_categoryViewController updateContentOffset:v3];
  [(STSSuggestionViewController *)self->_suggestionViewController updateContentOffset:v3];
  pickerViewController = self->_pickerViewController;

  [(STSPicker *)pickerViewController updateContentOffset:v3];
}

- (BOOL)isPickerVisible
{
  v3 = [(STSSearchBrowserRootViewController *)self childViewControllers];
  v4 = [v3 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v6 = [(STSSearchBrowserRootViewController *)self childViewControllers];
    v7 = [v6 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)_updateContentInsets
{
  v3 = [(STSSearchBrowserRootViewController *)self searchHeaderView];
  [v3 frame];
  CGRectGetHeight(v38);

  WeakRetained = objc_loadWeakRetained(&self->_legalNoticeViewController);
  if (WeakRetained)
  {
    v5 = [(STSSearchBrowserRootViewController *)self view];
    [v5 bounds];
    v7 = *&v6;
    v34 = v8;
    v35 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v39.origin.x = v7;
    v39.origin.y = v9;
    v39.size.width = v11;
    v39.size.height = v13;
    CGRectGetHeight(v39);
    v14 = [(STSSearchBrowserRootViewController *)self view];
    UIFloorToViewScale();
    v16 = v15;

    v17 = [(STSSearchBrowserRootViewController *)self view];
    v18 = [v17 readableContentGuide];
    [v18 layoutFrame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v40.origin.x = v20;
    v40.origin.y = v22;
    v40.size.width = v24;
    v40.size.height = v26;
    MinX = CGRectGetMinX(v40);
    v41.origin.y = v34;
    *&v41.origin.x = v35;
    v41.size.width = v11;
    v41.size.height = v13;
    Width = CGRectGetWidth(v41);
    v42.origin.x = v20;
    v42.origin.y = v22;
    v42.size.width = v24;
    v42.size.height = v26;
    v29 = Width - CGRectGetMaxX(v42);
    if (MinX >= 30.0)
    {
      v30 = MinX;
    }

    else
    {
      v30 = 30.0;
    }

    if (v29 >= 30.0)
    {
      v31 = v29;
    }

    else
    {
      v31 = 30.0;
    }

    if (v16 >= self->_topInset + 0.0 + 58.0)
    {
      v32 = v16;
    }

    else
    {
      v32 = self->_topInset + 0.0 + 58.0;
    }

    v33 = objc_loadWeakRetained(&self->_legalNoticeViewController);
    v36 = [v33 view];

    [v36 setContentInsets:{v32, v30, 30.0, v31}];
  }
}

- (void)_addQueryToRecents:(id)a3
{
  v4 = MEMORY[0x277CCA900];
  v5 = a3;
  v6 = [v4 whitespaceCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  if ([v7 length])
  {
    recentQueries = self->_recentQueries;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__STSSearchBrowserRootViewController__addQueryToRecents___block_invoke;
    v14[3] = &unk_279B8AA28;
    v9 = v7;
    v15 = v9;
    v10 = [(NSMutableArray *)recentQueries indexOfObjectPassingTest:v14];
    v11 = self->_recentQueries;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)v11 insertObject:v9 atIndex:0];
      if ([(NSMutableArray *)self->_recentQueries count]>= 4)
      {
        [(NSMutableArray *)self->_recentQueries removeLastObject];
      }
    }

    else
    {
      v12 = [(NSMutableArray *)v11 objectAtIndex:v10];
      [(NSMutableArray *)self->_recentQueries removeObjectAtIndex:v10];
      [(NSMutableArray *)self->_recentQueries insertObject:v12 atIndex:0];
    }

    v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v13 setObject:self->_recentQueries forKey:@"STSRecentQueries"];
    [v13 synchronize];
  }
}

- (void)_clearRecents
{
  [(NSMutableArray *)self->_recentQueries removeAllObjects];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 setObject:self->_recentQueries forKey:@"STSRecentQueries"];
  [v3 synchronize];
}

- (void)sendVisibleResultsFeedback
{
  v3 = [(STSPicker *)self->_pickerViewController parentViewController];

  if (v3)
  {
    pickerViewController = self->_pickerViewController;

    [(STSPicker *)pickerViewController sendVisibleResultsFeedback];
  }
}

- (STSSearchBrowserRootViewControllerDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

- (STSPickerSelectionDelegate)pickerSelectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerSelectionDelegate);

  return WeakRetained;
}

@end