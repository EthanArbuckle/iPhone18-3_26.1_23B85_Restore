@interface STSSearchDropDownViewController
- (BOOL)shouldShowLegalNotice;
- (PopUpSearchViewDelegate)locationDelegate;
- (STSSearchDropDownViewController)initWithSearchModel:(id)a3;
- (STSSearchDropDownViewControllerDelegate)delegate;
- (void)_updateSuggestions;
- (void)categoryViewController:(id)a3 didSelectCategory:(id)a4 suggested:(BOOL)a5;
- (void)categoryViewController:(id)a3 didSelectRecent:(id)a4;
- (void)categoryViewControllerDidSelectClearRecentsButton:(id)a3;
- (void)clearRecents;
- (void)close;
- (void)didCloseDropDown;
- (void)didPressDownKey;
- (void)didPressReturnKey:(id)a3;
- (void)didPressUpKey;
- (void)didRequestClose;
- (void)dropDownContentViewControllerShouldDismiss;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchModelUpdatedQuerySuggestions:(id)a3;
- (void)sendVisibleResultsFeedback;
- (void)setSceneIdentifier:(id)a3;
- (void)showCategories;
- (void)showPickerAndPerformQuery:(id)a3 requestType:(int64_t)a4;
- (void)showSuggestions;
- (void)showSuggestionsIfNeccessary;
- (void)suggestionViewController:(id)a3 didSelectSuggestion:(id)a4 suggested:(BOOL)a5;
@end

@implementation STSSearchDropDownViewController

- (STSSearchDropDownViewController)initWithSearchModel:(id)a3
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = STSSearchDropDownViewController;
  v6 = [(STSSearchDropDownViewController *)&v27 init];
  v7 = v6;
  if (v6)
  {
    v8 = [(STSSearchDropDownViewController *)v6 view];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [(STSSearchDropDownViewController *)v7 view];
    v10 = [MEMORY[0x277D75348] clearColor];
    [v9 setBackgroundColor:v10];

    objc_storeStrong(&v7->_searchModel, a3);
    v11 = [[CategoriesDataSource alloc] initWithSearchModel:v5];
    categoriesDataSource = v7->_categoriesDataSource;
    v7->_categoriesDataSource = v11;

    v13 = [[SuggestionsDataSource alloc] initWithSearchModel:v5];
    suggestionsDataSource = v7->_suggestionsDataSource;
    v7->_suggestionsDataSource = v13;

    [(CategoriesDataSource *)v7->_categoriesDataSource setSelectionDelegate:v7];
    [(CategoriesDataSource *)v7->_categoriesDataSource setUpdateDelegate:v7];
    [(SuggestionsDataSource *)v7->_suggestionsDataSource setSelectionDelegate:v7];
    [(SuggestionsDataSource *)v7->_suggestionsDataSource setUpdateDelgate:v7];
    v15 = objc_alloc_init(STSDropDownRootView);
    [(STSDropDownRootView *)v15 setUserInteractionEnabled:1];
    [(STSSearchDropDownViewController *)v7 setView:v15];
    v16 = [(STSSearchDropDownViewController *)v7 view];
    v17 = [v16 layer];
    [v17 setMasksToBounds:1];

    v18 = [(STSSearchDropDownViewController *)v7 view];
    v19 = [v18 layer];
    [v19 setCornerRadius:6.0];

    v20 = [(STSSearchDropDownViewController *)v7 view];
    v21 = [v20 layer];
    [v21 setBorderWidth:1.0];

    v22 = [MEMORY[0x277D75348] separatorColor];
    v23 = [v22 CGColor];
    v24 = [(STSSearchDropDownViewController *)v7 view];
    v25 = [v24 layer];
    [v25 setBorderColor:v23];
  }

  return v7;
}

- (void)setSceneIdentifier:(id)a3
{
  objc_storeStrong(&self->_sceneIdentifier, a3);
  v5 = a3;
  [(PopUpPlugin *)self->_popUpPlugin setSceneIdentifier:self->_sceneIdentifier];
}

- (void)close
{
  self->_popUpShowing = 3;
  query = self->_query;
  self->_query = 0;

  [(PopUpPlugin *)self->_popUpPlugin close];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained searchDropDownViewControllerDidDismiss];
}

- (void)showCategories
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 sts_legalNoticeCount];

  if (v4 >= 3)
  {
    if (self->_popUpShowing == 1)
    {
      if (!self->_didSendCategoryResultFeedback)
      {
        self->_didSendCategoryResultFeedback = 1;
        [(CategoriesDataSource *)self->_categoriesDataSource sendRankSectionsFeedback];

        [(STSSearchDropDownViewController *)self sendVisibleResultsFeedback];
      }
    }

    else
    {
      [(PopUpPlugin *)self->_popUpPlugin setDataSource:self->_categoriesDataSource];
      [(PopUpPlugin *)self->_popUpPlugin setDelegate:self->_categoriesDataSource];
      popUpPlugin = self->_popUpPlugin;
      if (self->_popUpShowing == 3)
      {
        WeakRetained = objc_loadWeakRetained(&self->_locationDelegate);
        [WeakRetained locationForPopUp];
        [(PopUpPlugin *)popUpPlugin showInRect:?];
      }

      else
      {
        [(PopUpPlugin *)popUpPlugin update];
      }

      self->_popUpShowing = 1;
      if (!self->_didSendCategoryResultFeedback)
      {
        self->_didSendCategoryResultFeedback = 1;
        [(CategoriesDataSource *)self->_categoriesDataSource sendRankSectionsFeedback];

        [(STSSearchDropDownViewController *)self setSendFeedbackOnViewDidAppear:1];
      }
    }
  }

  else
  {

    [(STSSearchDropDownViewController *)self _showLegalNotice];
  }
}

- (void)showSuggestionsIfNeccessary
{
  if ((self->_popUpShowing | 2) != 2)
  {
    [(PopUpPlugin *)self->_popUpPlugin setDataSource:self->_suggestionsDataSource];
    [(PopUpPlugin *)self->_popUpPlugin setDelegate:self->_suggestionsDataSource];
    [(STSSearchDropDownViewController *)self _updateSuggestions];
    popUpPlugin = self->_popUpPlugin;
    if (self->_popUpShowing == 3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_locationDelegate);
      [WeakRetained locationForPopUp];
      [(PopUpPlugin *)popUpPlugin showInRect:?];
    }

    else
    {
      [(PopUpPlugin *)self->_popUpPlugin update];
    }

    self->_popUpShowing = 0;
  }
}

- (void)showSuggestions
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 sts_legalNoticeCount];

  if (v4 >= 3)
  {
    if (self->_popUpShowing)
    {
      [(PopUpPlugin *)self->_popUpPlugin setDataSource:self->_suggestionsDataSource];
      [(PopUpPlugin *)self->_popUpPlugin setDelegate:self->_suggestionsDataSource];
      v5 = [(STSSearchDropDownViewController *)self query];
      v6 = [v5 length];

      if (!v6)
      {
        v7 = [(STSSearchDropDownViewController *)self suggestionsDataSource];
        [v7 clearSuggestions];
      }

      [(STSSearchDropDownViewController *)self _updateSuggestions];
      popUpPlugin = self->_popUpPlugin;
      if (self->_popUpShowing == 3)
      {
        WeakRetained = objc_loadWeakRetained(&self->_locationDelegate);
        [WeakRetained locationForPopUp];
        [(PopUpPlugin *)popUpPlugin showInRect:?];
      }

      else
      {
        [(PopUpPlugin *)self->_popUpPlugin update];
      }

      self->_popUpShowing = 0;
      v10 = [(STSSearchDropDownViewController *)self query];
      v11 = [v10 length];

      if (!v11)
      {
        v12 = [(STSSearchDropDownViewController *)self suggestionsDataSource];
        [v12 clearSuggestions];
      }
    }
  }

  else
  {

    [(STSSearchDropDownViewController *)self _showLegalNotice];
  }
}

- (void)_updateSuggestions
{
  v3 = [(STSSearchModel *)self->_searchModel predictedSuggestions];
  v4 = [v3 mutableCopy];

  v5 = [(CategoriesDataSource *)self->_categoriesDataSource recentQueries];
  v6 = [v5 sts_map:&__block_literal_global_1];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__STSSearchDropDownViewController__updateSuggestions__block_invoke_2;
  v12[3] = &unk_279B8B250;
  v7 = v4;
  v13 = v7;
  [v6 enumerateObjectsUsingBlock:v12];
  if (!v7)
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v9 = v6;
LABEL_7:
    v11 = [(STSSearchDropDownViewController *)self suggestionsDataSource];
    [v11 updateQuerySuggestions:v9];

    goto LABEL_8;
  }

  v8 = v7;
  v9 = v8;
  if (!v6)
  {
    goto LABEL_7;
  }

  v10 = [v8 arrayByAddingObjectsFromArray:v6];

  v9 = v10;
  if (v10)
  {
    goto LABEL_7;
  }

LABEL_8:
}

id __53__STSSearchDropDownViewController__updateSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D4C5D8];
  v3 = a2;
  v4 = [[v2 alloc] initWithSuggestion:v3 query:v3 score:3 type:0.0];

  return v4;
}

void __53__STSSearchDropDownViewController__updateSuggestions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = *(a1 + 32);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __53__STSSearchDropDownViewController__updateSuggestions__block_invoke_3;
  v11 = &unk_279B8A9D8;
  v12 = v3;
  v13 = v4;
  v6 = v4;
  v7 = v3;
  [v5 enumerateObjectsUsingBlock:&v8];
  [*(a1 + 32) removeObjectsInArray:{v6, v8, v9, v10, v11}];
}

void __53__STSSearchDropDownViewController__updateSuggestions__block_invoke_3(uint64_t a1, void *a2)
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

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = [a3 searchTextField];
  v6 = [v5 text];
  v7 = [v6 length];

  if (v7)
  {

    [(STSSearchDropDownViewController *)self showSuggestions];
  }

  else
  {
    v8 = +[STSFeedbackReporter sharedInstance];
    [v8 didClearSearchBarInput];

    +[STSSearchModel incrementClientQueryId];

    [(STSSearchDropDownViewController *)self showCategories];
  }
}

- (void)showPickerAndPerformQuery:(id)a3 requestType:(int64_t)a4
{
  categoriesDataSource = self->_categoriesDataSource;
  v7 = a3;
  [(CategoriesDataSource *)categoriesDataSource addQueryToRecents:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained searchDropDownViewController:self didQueryFor:v7 requestType:a4];
}

- (void)sendVisibleResultsFeedback
{
  v5 = [(PopUpPlugin *)self->_popUpPlugin indexPathsForVisibleRows];
  v3 = [(CategoriesDataSource *)self->_categoriesDataSource visibleResultsForIndexPaths:?];
  if ([v3 count])
  {
    v4 = +[STSFeedbackReporter sharedInstance];
    [v4 didShowResults:v3 scrolling:0];
  }
}

- (void)categoryViewController:(id)a3 didSelectCategory:(id)a4 suggested:(BOOL)a5
{
  v6 = a4;
  [(STSSearchDropDownViewController *)self showPickerAndPerformQuery:v6 requestType:5];
  [(CategoriesDataSource *)self->_categoriesDataSource addQueryToRecents:v6];
}

- (void)categoryViewController:(id)a3 didSelectRecent:(id)a4
{
  [(STSSearchDropDownViewController *)self showPickerAndPerformQuery:a4 requestType:6];
  suggestionsDataSource = self->_suggestionsDataSource;

  [(SuggestionsDataSource *)suggestionsDataSource clearSuggestions];
}

- (void)clearRecents
{
  [(CategoriesDataSource *)self->_categoriesDataSource clearRecents];
  v2 = +[STSFeedbackReporter sharedInstance];
  [v2 didClearRecents];
}

- (void)categoryViewControllerDidSelectClearRecentsButton:(id)a3
{
  [(CategoriesDataSource *)self->_categoriesDataSource clearRecents];
  v3 = +[STSFeedbackReporter sharedInstance];
  [v3 didClearRecents];
}

- (void)suggestionViewController:(id)a3 didSelectSuggestion:(id)a4 suggested:(BOOL)a5
{
  v6 = [a4 suggestion];
  [(STSSearchDropDownViewController *)self showPickerAndPerformQuery:v6 requestType:1];
}

- (void)dropDownContentViewControllerShouldDismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained searchDropDownViewControllerShouldDismiss];
}

- (void)searchModelUpdatedQuerySuggestions:(id)a3
{
  v4 = [a3 querySuggestions];
  v5 = [v4 count];

  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained searchDropDownViewControllerShouldDismiss];
  }

  popUpPlugin = self->_popUpPlugin;

  [(PopUpPlugin *)popUpPlugin update];
}

- (void)didCloseDropDown
{
  self->_popUpShowing = 3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained searchDropDownViewControllerDidDismiss];
}

- (BOOL)shouldShowLegalNotice
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 sts_legalNoticeCount] < 3;

  return v3;
}

- (void)didPressDownKey
{
  if (self->_popUpShowing == 3)
  {
    v3 = [(STSSearchDropDownViewController *)self query];
    v4 = [v3 length];

    if (v4)
    {
      [(STSSearchDropDownViewController *)self showSuggestions];
    }

    else
    {
      [(STSSearchDropDownViewController *)self showCategories];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained searchDropDownViewControllerDidPresent];
  }

  else
  {
    popUpPlugin = self->_popUpPlugin;

    [(PopUpPlugin *)popUpPlugin moveSelectionDown];
  }
}

- (void)didPressReturnKey:(id)a3
{
  v4 = a3;
  popUpShowing = self->_popUpShowing;
  v12 = v4;
  if (popUpShowing >= 2)
  {
    if (popUpShowing == 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = [(PopUpPlugin *)self->_popUpPlugin getSelection];
    v7 = [v6 length];

    v4 = v12;
    if (v7)
    {
      v8 = [(PopUpPlugin *)self->_popUpPlugin getSelection];
      [(CategoriesDataSource *)self->_categoriesDataSource addQueryToRecents:v8];
      v9 = [(STSSearchDropDownViewController *)self delegate];
      [v9 searchDropDownViewController:self didQueryFor:v8 requestType:1];

      [(CategoriesDataSource *)self->_categoriesDataSource addQueryToRecents:v8];
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [v4 length];
  v11 = [(STSSearchDropDownViewController *)self delegate];
  v8 = v11;
  if (!v10)
  {
    [v11 searchDropDownViewControllerShouldPresent];
    goto LABEL_8;
  }

  [v11 searchDropDownViewController:self didQueryFor:v12 requestType:1];

  [(CategoriesDataSource *)self->_categoriesDataSource addQueryToRecents:v12];
LABEL_9:
  v4 = v12;
LABEL_10:
}

- (void)didPressUpKey
{
  if (self->_popUpShowing <= 1)
  {
    [(PopUpPlugin *)self->_popUpPlugin moveSelectionUp];
  }
}

- (void)didRequestClose
{
  if (self->_popUpShowing <= 2)
  {
    [(STSSearchDropDownViewController *)self close];
  }
}

- (STSSearchDropDownViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PopUpSearchViewDelegate)locationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_locationDelegate);

  return WeakRetained;
}

@end