@interface STSSearchDropDownViewController
- (BOOL)shouldShowLegalNotice;
- (PopUpSearchViewDelegate)locationDelegate;
- (STSSearchDropDownViewController)initWithSearchModel:(id)model;
- (STSSearchDropDownViewControllerDelegate)delegate;
- (void)_updateSuggestions;
- (void)categoryViewController:(id)controller didSelectCategory:(id)category suggested:(BOOL)suggested;
- (void)categoryViewController:(id)controller didSelectRecent:(id)recent;
- (void)categoryViewControllerDidSelectClearRecentsButton:(id)button;
- (void)clearRecents;
- (void)close;
- (void)didCloseDropDown;
- (void)didPressDownKey;
- (void)didPressReturnKey:(id)key;
- (void)didPressUpKey;
- (void)didRequestClose;
- (void)dropDownContentViewControllerShouldDismiss;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchModelUpdatedQuerySuggestions:(id)suggestions;
- (void)sendVisibleResultsFeedback;
- (void)setSceneIdentifier:(id)identifier;
- (void)showCategories;
- (void)showPickerAndPerformQuery:(id)query requestType:(int64_t)type;
- (void)showSuggestions;
- (void)showSuggestionsIfNeccessary;
- (void)suggestionViewController:(id)controller didSelectSuggestion:(id)suggestion suggested:(BOOL)suggested;
@end

@implementation STSSearchDropDownViewController

- (STSSearchDropDownViewController)initWithSearchModel:(id)model
{
  modelCopy = model;
  v27.receiver = self;
  v27.super_class = STSSearchDropDownViewController;
  v6 = [(STSSearchDropDownViewController *)&v27 init];
  v7 = v6;
  if (v6)
  {
    view = [(STSSearchDropDownViewController *)v6 view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    view2 = [(STSSearchDropDownViewController *)v7 view];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [view2 setBackgroundColor:clearColor];

    objc_storeStrong(&v7->_searchModel, model);
    v11 = [[CategoriesDataSource alloc] initWithSearchModel:modelCopy];
    categoriesDataSource = v7->_categoriesDataSource;
    v7->_categoriesDataSource = v11;

    v13 = [[SuggestionsDataSource alloc] initWithSearchModel:modelCopy];
    suggestionsDataSource = v7->_suggestionsDataSource;
    v7->_suggestionsDataSource = v13;

    [(CategoriesDataSource *)v7->_categoriesDataSource setSelectionDelegate:v7];
    [(CategoriesDataSource *)v7->_categoriesDataSource setUpdateDelegate:v7];
    [(SuggestionsDataSource *)v7->_suggestionsDataSource setSelectionDelegate:v7];
    [(SuggestionsDataSource *)v7->_suggestionsDataSource setUpdateDelgate:v7];
    v15 = objc_alloc_init(STSDropDownRootView);
    [(STSDropDownRootView *)v15 setUserInteractionEnabled:1];
    [(STSSearchDropDownViewController *)v7 setView:v15];
    view3 = [(STSSearchDropDownViewController *)v7 view];
    layer = [view3 layer];
    [layer setMasksToBounds:1];

    view4 = [(STSSearchDropDownViewController *)v7 view];
    layer2 = [view4 layer];
    [layer2 setCornerRadius:6.0];

    view5 = [(STSSearchDropDownViewController *)v7 view];
    layer3 = [view5 layer];
    [layer3 setBorderWidth:1.0];

    separatorColor = [MEMORY[0x277D75348] separatorColor];
    cGColor = [separatorColor CGColor];
    view6 = [(STSSearchDropDownViewController *)v7 view];
    layer4 = [view6 layer];
    [layer4 setBorderColor:cGColor];
  }

  return v7;
}

- (void)setSceneIdentifier:(id)identifier
{
  objc_storeStrong(&self->_sceneIdentifier, identifier);
  identifierCopy = identifier;
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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  sts_legalNoticeCount = [standardUserDefaults sts_legalNoticeCount];

  if (sts_legalNoticeCount >= 3)
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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  sts_legalNoticeCount = [standardUserDefaults sts_legalNoticeCount];

  if (sts_legalNoticeCount >= 3)
  {
    if (self->_popUpShowing)
    {
      [(PopUpPlugin *)self->_popUpPlugin setDataSource:self->_suggestionsDataSource];
      [(PopUpPlugin *)self->_popUpPlugin setDelegate:self->_suggestionsDataSource];
      query = [(STSSearchDropDownViewController *)self query];
      v6 = [query length];

      if (!v6)
      {
        suggestionsDataSource = [(STSSearchDropDownViewController *)self suggestionsDataSource];
        [suggestionsDataSource clearSuggestions];
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
      query2 = [(STSSearchDropDownViewController *)self query];
      v11 = [query2 length];

      if (!v11)
      {
        suggestionsDataSource2 = [(STSSearchDropDownViewController *)self suggestionsDataSource];
        [suggestionsDataSource2 clearSuggestions];
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
  predictedSuggestions = [(STSSearchModel *)self->_searchModel predictedSuggestions];
  v4 = [predictedSuggestions mutableCopy];

  recentQueries = [(CategoriesDataSource *)self->_categoriesDataSource recentQueries];
  v6 = [recentQueries sts_map:&__block_literal_global_1];

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
    suggestionsDataSource = [(STSSearchDropDownViewController *)self suggestionsDataSource];
    [suggestionsDataSource updateQuerySuggestions:v9];

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

- (void)searchBar:(id)bar textDidChange:(id)change
{
  searchTextField = [bar searchTextField];
  text = [searchTextField text];
  v7 = [text length];

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

- (void)showPickerAndPerformQuery:(id)query requestType:(int64_t)type
{
  categoriesDataSource = self->_categoriesDataSource;
  queryCopy = query;
  [(CategoriesDataSource *)categoriesDataSource addQueryToRecents:queryCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained searchDropDownViewController:self didQueryFor:queryCopy requestType:type];
}

- (void)sendVisibleResultsFeedback
{
  indexPathsForVisibleRows = [(PopUpPlugin *)self->_popUpPlugin indexPathsForVisibleRows];
  v3 = [(CategoriesDataSource *)self->_categoriesDataSource visibleResultsForIndexPaths:?];
  if ([v3 count])
  {
    v4 = +[STSFeedbackReporter sharedInstance];
    [v4 didShowResults:v3 scrolling:0];
  }
}

- (void)categoryViewController:(id)controller didSelectCategory:(id)category suggested:(BOOL)suggested
{
  categoryCopy = category;
  [(STSSearchDropDownViewController *)self showPickerAndPerformQuery:categoryCopy requestType:5];
  [(CategoriesDataSource *)self->_categoriesDataSource addQueryToRecents:categoryCopy];
}

- (void)categoryViewController:(id)controller didSelectRecent:(id)recent
{
  [(STSSearchDropDownViewController *)self showPickerAndPerformQuery:recent requestType:6];
  suggestionsDataSource = self->_suggestionsDataSource;

  [(SuggestionsDataSource *)suggestionsDataSource clearSuggestions];
}

- (void)clearRecents
{
  [(CategoriesDataSource *)self->_categoriesDataSource clearRecents];
  v2 = +[STSFeedbackReporter sharedInstance];
  [v2 didClearRecents];
}

- (void)categoryViewControllerDidSelectClearRecentsButton:(id)button
{
  [(CategoriesDataSource *)self->_categoriesDataSource clearRecents];
  v3 = +[STSFeedbackReporter sharedInstance];
  [v3 didClearRecents];
}

- (void)suggestionViewController:(id)controller didSelectSuggestion:(id)suggestion suggested:(BOOL)suggested
{
  suggestion = [suggestion suggestion];
  [(STSSearchDropDownViewController *)self showPickerAndPerformQuery:suggestion requestType:1];
}

- (void)dropDownContentViewControllerShouldDismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained searchDropDownViewControllerShouldDismiss];
}

- (void)searchModelUpdatedQuerySuggestions:(id)suggestions
{
  querySuggestions = [suggestions querySuggestions];
  v5 = [querySuggestions count];

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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults sts_legalNoticeCount] < 3;

  return v3;
}

- (void)didPressDownKey
{
  if (self->_popUpShowing == 3)
  {
    query = [(STSSearchDropDownViewController *)self query];
    v4 = [query length];

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

- (void)didPressReturnKey:(id)key
{
  keyCopy = key;
  popUpShowing = self->_popUpShowing;
  v12 = keyCopy;
  if (popUpShowing >= 2)
  {
    if (popUpShowing == 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    getSelection = [(PopUpPlugin *)self->_popUpPlugin getSelection];
    v7 = [getSelection length];

    keyCopy = v12;
    if (v7)
    {
      getSelection2 = [(PopUpPlugin *)self->_popUpPlugin getSelection];
      [(CategoriesDataSource *)self->_categoriesDataSource addQueryToRecents:getSelection2];
      delegate = [(STSSearchDropDownViewController *)self delegate];
      [delegate searchDropDownViewController:self didQueryFor:getSelection2 requestType:1];

      [(CategoriesDataSource *)self->_categoriesDataSource addQueryToRecents:getSelection2];
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [keyCopy length];
  delegate2 = [(STSSearchDropDownViewController *)self delegate];
  getSelection2 = delegate2;
  if (!v10)
  {
    [delegate2 searchDropDownViewControllerShouldPresent];
    goto LABEL_8;
  }

  [delegate2 searchDropDownViewController:self didQueryFor:v12 requestType:1];

  [(CategoriesDataSource *)self->_categoriesDataSource addQueryToRecents:v12];
LABEL_9:
  keyCopy = v12;
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