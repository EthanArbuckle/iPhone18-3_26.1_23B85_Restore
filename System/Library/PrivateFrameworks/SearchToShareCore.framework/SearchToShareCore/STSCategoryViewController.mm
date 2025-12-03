@interface STSCategoryViewController
- (STSCategoryViewController)init;
- (STSCategoryViewControllerDelegate)selectionDelegate;
- (UIEdgeInsets)contentInset;
- (id)_searchResultIdentifierForSuggestion:(id)suggestion recent:(BOOL)recent;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (void)_commitClearRecents;
- (void)_reportFeedbackDisplayedResultsDidScroll:(BOOL)scroll;
- (void)clearButton:(id)button pressedForCategoryResult:(id)result;
- (void)reload;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)sendRankSectionsFeedback;
- (void)sendVisibleResultsFeedback;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateContentOffset:(double)offset;
- (void)updateModel;
- (void)updateRecents:(id)recents;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation STSCategoryViewController

- (STSCategoryViewController)init
{
  v18.receiver = self;
  v18.super_class = STSCategoryViewController;
  v2 = [(STSCategoryViewController *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    model = v2->_model;
    v2->_model = v3;

    categories = v2->_categories;
    v6 = MEMORY[0x277CBEBF8];
    v2->_categories = MEMORY[0x277CBEBF8];

    recents = v2->_recents;
    v2->_recents = v6;

    v2->_isScrolling = 0;
    v8 = objc_alloc_init(STSCategoryView);
    tableView = [(STSCategoryView *)v8 tableView];
    [tableView setDataSource:v2];

    tableView2 = [(STSCategoryView *)v8 tableView];
    [tableView2 setDelegate:v2];

    tableView3 = [(STSCategoryView *)v8 tableView];
    [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"CategoryCell"];

    tableView4 = [(STSCategoryView *)v8 tableView];
    [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"CategoryTitleCell"];

    tableView5 = [(STSCategoryView *)v8 tableView];
    [tableView5 setSeparatorStyle:1];

    [(STSCategoryViewController *)v2 setView:v8];
    v14 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__STSCategoryViewController_init__block_invoke;
    block[3] = &unk_279B8A988;
    v17 = v2;
    dispatch_async(v14, block);
  }

  return v2;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = STSCategoryViewController;
  [(STSCategoryViewController *)&v3 viewDidLoad];
  [(STSCategoryViewController *)self updateModel];
}

- (void)viewWillAppear:(BOOL)appear
{
  view = [(STSCategoryViewController *)self view];
  tableView = [view tableView];
  v4 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  [tableView scrollToRowAtIndexPath:v4 atScrollPosition:1 animated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  if ([(STSCategoryViewController *)self sendFeedbackOnViewDidAppear])
  {
    [(STSCategoryViewController *)self setSendFeedbackOnViewDidAppear:0];

    [(STSCategoryViewController *)self sendVisibleResultsFeedback];
  }
}

- (UIEdgeInsets)contentInset
{
  view = [(STSCategoryViewController *)self view];
  [view contentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  view = [(STSCategoryViewController *)self view];
  tableView = [view tableView];
  [tableView setContentInset:{top, left, bottom, right}];
}

- (void)updateContentOffset:(double)offset
{
  view = [(STSCategoryViewController *)self view];
  tableView = [view tableView];
  view2 = [(STSCategoryViewController *)self view];
  tableView2 = [view2 tableView];
  [tableView2 contentInset];
  [tableView setContentOffset:{-v8, offset}];
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v4 = MEMORY[0x277D75D18];
  viewCopy = view;
  v6 = [v4 alloc];
  [viewCopy bounds];
  v8 = v7;

  v9 = [v6 initWithFrame:{0.0, 0.0, v8, 0.0}];

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v27[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSMutableArray objectAtIndex:](self->_model, "objectAtIndex:", [pathCopy row]);
  type = [v8 type];
  if (type >= 2)
  {
    if (type == 2)
    {
      v10 = [viewCopy dequeueReusableCellWithIdentifier:@"CategoryTitleCell" forIndexPath:pathCopy];
      [v10 setSelectionStyle:0];
      textLabel = [v10 textLabel];
      title = [v8 title];
      [textLabel setText:title];

      sts_defaultBackgroundColor = [MEMORY[0x277D75348] sts_defaultBackgroundColor];
      [v10 setBackgroundColor:sts_defaultBackgroundColor];

      [v10 setClearButtonHidden:{objc_msgSend(v8, "clearButtonHidden")}];
      [v10 setResult:v8];
      [v10 setSelectionDelegate:self];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"CategoryCell" forIndexPath:pathCopy];
    textLabel2 = [v10 textLabel];
    title2 = [v8 title];
    [textLabel2 setText:title2];

    textLabel3 = [v10 textLabel];
    systemPinkColor = [MEMORY[0x277D75348] systemPinkColor];
    [textLabel3 setTextColor:systemPinkColor];

    textLabel4 = [v10 textLabel];
    v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
    [textLabel4 setFont:v16];

    sts_defaultBackgroundColor2 = [MEMORY[0x277D75348] sts_defaultBackgroundColor];
    [v10 setBackgroundColor:sts_defaultBackgroundColor2];

    searchResult = [v8 searchResult];
    if (searchResult)
    {
      isScrolling = self->_isScrolling;

      if (isScrolling)
      {
        v20 = +[STSFeedbackReporter sharedInstance];
        searchResult2 = [v8 searchResult];
        v27[0] = searchResult2;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
        [v20 didShowResults:v22 scrolling:1];
      }
    }
  }

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v13 = -[NSMutableArray objectAtIndex:](self->_model, "objectAtIndex:", [path row]);
  if ([v13 type] == 1)
  {
    suggestion = [v13 suggestion];
    prediction = [suggestion prediction];

    selectionDelegate = [(STSCategoryViewController *)self selectionDelegate];
    title = [v13 title];
    [selectionDelegate categoryViewController:self didSelectCategory:title suggested:prediction != 0];
  }

  else
  {
    if ([v13 type])
    {
      goto LABEL_6;
    }

    selectionDelegate = [(STSCategoryViewController *)self selectionDelegate];
    title = [v13 title];
    [selectionDelegate categoryViewController:self didSelectRecent:title];
  }

LABEL_6:
  searchResult = [v13 searchResult];

  if (searchResult)
  {
    v10 = +[STSFeedbackReporter sharedInstance];
    searchResult2 = [v13 searchResult];
    suggestion2 = [v13 suggestion];
    [v10 didEngageCategoryResult:searchResult2 suggestion:suggestion2];
  }
}

- (void)updateModel
{
  [(NSMutableArray *)self->_model removeAllObjects];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(NSArray *)self->_recents count])
  {
    v4 = objc_alloc_init(STSCategoryResult);
    [(STSCategoryResult *)v4 setType:2];
    v5 = STSLocalizedString(@"RECENT");
    [(STSCategoryResult *)v4 setTitle:v5];

    [(STSCategoryResult *)v4 setClearButtonHidden:0];
    [(NSMutableArray *)self->_model addObject:v4];
    recents = self->_recents;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __40__STSCategoryViewController_updateModel__block_invoke;
    v14[3] = &unk_279B8A9B0;
    v14[4] = self;
    v15 = v3;
    [(NSArray *)recents enumerateObjectsUsingBlock:v14];
  }

  v7 = objc_alloc_init(STSCategoryResult);
  [(STSCategoryResult *)v7 setType:2];
  v8 = STSLocalizedString(@"CATEGORIES");
  [(STSCategoryResult *)v7 setTitle:v8];

  [(STSCategoryResult *)v7 setClearButtonHidden:1];
  [(NSMutableArray *)self->_model addObject:v7];
  categoryList = [(STSSearchModel *)self->_searchModel categoryList];
  v10 = [categoryList copy];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__STSCategoryViewController_updateModel__block_invoke_2;
  v12[3] = &unk_279B8A9D8;
  v12[4] = self;
  v13 = v3;
  v11 = v3;
  [v10 enumerateObjectsUsingBlock:v12];
}

void __40__STSCategoryViewController_updateModel__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_alloc_init(STSCategoryResult);
  [(STSCategoryResult *)v8 setType:0];
  [(STSCategoryResult *)v8 setTitle:v3];
  v4 = [objc_alloc(MEMORY[0x277D4C5D8]) initWithSuggestion:v3 query:&stru_2876AE098 score:3 type:0.0];
  [(STSCategoryResult *)v8 setSuggestion:v4];

  v5 = objc_alloc_init(MEMORY[0x277D4C5D0]);
  v6 = [MEMORY[0x277D4C690] textWithString:v3];
  [v5 setTitle:v6];

  v7 = [*(a1 + 32) _searchResultIdentifierForSuggestion:v3 recent:1];

  [v5 setIdentifier:v7];
  [v5 setType:16];
  [v5 setResultBundleId:@"com.apple.hashtagimages.categorylist.recents.recent"];
  [v5 setSectionBundleIdentifier:@"com.apple.hashtagimages.categorylist.recents"];
  [(STSCategoryResult *)v8 setSearchResult:v5];
  [*(a1 + 40) addObject:v5];
  [*(*(a1 + 32) + 1048) addObject:v8];
}

void __40__STSCategoryViewController_updateModel__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v17 = objc_alloc_init(STSCategoryResult);
  [(STSCategoryResult *)v17 setType:1];
  v6 = [v5 suggestion];
  [(STSCategoryResult *)v17 setTitle:v6];

  [(STSCategoryResult *)v17 setSuggestion:v5];
  v7 = objc_alloc_init(MEMORY[0x277D4C5D0]);
  v8 = [v5 fbr];
  [v7 setFbr:v8];

  v9 = MEMORY[0x277D4C690];
  v10 = [v5 suggestion];
  v11 = [v9 textWithString:v10];
  [v7 setTitle:v11];

  v12 = *(a1 + 32);
  v13 = [v5 suggestion];
  v14 = [v12 _searchResultIdentifierForSuggestion:v13 recent:0];
  [v7 setIdentifier:v14];

  [v7 setResultBundleId:@"com.apple.hashtagimages.categorylist.categories.category"];
  [v7 setSectionBundleIdentifier:@"com.apple.hashtagimages.categorylist.categories"];
  v15 = [v5 prediction];

  if (v15)
  {
    v16 = 15;
  }

  else
  {
    v16 = 17;
  }

  [v7 setType:v16];
  [(STSCategoryResult *)v17 setSearchResult:v7];
  if (a3 <= 0xF)
  {
    [*(a1 + 40) addObject:v7];
    [*(*(a1 + 32) + 1048) addObject:v17];
  }
}

- (void)clearButton:(id)button pressedForCategoryResult:(id)result
{
  buttonCopy = button;
  v6 = [STSAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  view = [v6 view];
  systemPinkColor = [MEMORY[0x277D75348] systemPinkColor];
  [view setTintColor:systemPinkColor];

  v9 = MEMORY[0x277D750F8];
  v10 = STSLocalizedString(@"CLEAR_RECENTS_ACTION_TITLE");
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __66__STSCategoryViewController_clearButton_pressedForCategoryResult___block_invoke;
  v23[3] = &unk_279B8AC28;
  v23[4] = self;
  v11 = [v9 actionWithTitle:v10 style:0 handler:v23];

  v12 = MEMORY[0x277D750F8];
  v13 = STSLocalizedString(@"CANCEL");
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __66__STSCategoryViewController_clearButton_pressedForCategoryResult___block_invoke_2;
  v21 = &unk_279B8AC28;
  v22 = v6;
  v14 = v6;
  v15 = [v12 actionWithTitle:v13 style:1 handler:&v18];

  [v14 addAction:{v11, v18, v19, v20, v21}];
  [v14 addAction:v15];
  [v14 setModalPresentationStyle:7];
  popoverPresentationController = [v14 popoverPresentationController];
  [buttonCopy bounds];
  [popoverPresentationController setSourceRect:?];

  popoverPresentationController2 = [v14 popoverPresentationController];
  [popoverPresentationController2 setSourceView:buttonCopy];

  [(STSCategoryViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)_commitClearRecents
{
  recents = self->_recents;
  self->_recents = MEMORY[0x277CBEBF8];

  [(STSCategoryViewController *)self updateModel];
  view = [(STSCategoryViewController *)self view];
  tableView = [view tableView];
  [tableView reloadData];

  [(STSCategoryViewController *)self sendRankSectionsFeedback];
  [(STSCategoryViewController *)self sendVisibleResultsFeedback];
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);
  [WeakRetained categoryViewControllerDidSelectClearRecentsButton:self];
}

- (void)updateRecents:(id)recents
{
  recentsCopy = recents;
  if ([recentsCopy count] < 4)
  {
    v5 = [recentsCopy copy];
  }

  else
  {
    v5 = [recentsCopy subarrayWithRange:{0, 3}];
  }

  v6 = v5;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = [v5 count];
  if (v7 == [(NSArray *)self->_recents count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__STSCategoryViewController_updateRecents___block_invoke;
    v10[3] = &unk_279B8AA00;
    v10[4] = self;
    v10[5] = &v11;
    [v6 enumerateObjectsUsingBlock:v10];
    if ((v12[3] & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(v12 + 24) = 1;
  }

  objc_storeStrong(&self->_recents, v6);
  [(STSCategoryViewController *)self updateModel];
LABEL_9:
  view = [(STSCategoryViewController *)self view];
  tableView = [view tableView];
  [tableView reloadData];

  _Block_object_dispose(&v11, 8);
}

void __43__STSCategoryViewController_updateRecents___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 1040);
  v6 = a2;
  v7 = [v5 objectAtIndex:a3];
  LOBYTE(v5) = [v6 isEqualToString:v7];

  if ((v5 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)reload
{
  view = [(STSCategoryViewController *)self view];
  tableView = [view tableView];
  [tableView reloadData];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  self->_isScrolling = 1;
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);
  [WeakRetained categoryViewControllerScrollViewWillBeginDragging:self];

  [(STSCategoryViewController *)self _reportFeedbackDisplayedResultsDidScroll:0];
}

- (id)_searchResultIdentifierForSuggestion:(id)suggestion recent:(BOOL)recent
{
  recentCopy = recent;
  suggestionCopy = suggestion;
  if ([suggestionCopy length])
  {
    if (recentCopy)
    {
      v6 = @"msgscat-recent:%@";
    }

    else
    {
      v6 = @"msgscat-cat:%@";
    }

    suggestionCopy = [MEMORY[0x277CCACA8] stringWithFormat:v6, suggestionCopy];
  }

  else
  {
    suggestionCopy = 0;
  }

  return suggestionCopy;
}

- (void)sendRankSectionsFeedback
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  model = self->_model;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __53__STSCategoryViewController_sendRankSectionsFeedback__block_invoke;
  v12 = &unk_279B8AA50;
  v13 = v3;
  v14 = v4;
  v6 = v4;
  v7 = v3;
  [(NSMutableArray *)model enumerateObjectsUsingBlock:&v9];
  v8 = [STSFeedbackReporter sharedInstance:v9];
  [v8 didLoadCategoryResults:v6 recents:v7 queryId:{-[STSSearchModel categoryListRequestQueryId](self->_searchModel, "categoryListRequestQueryId")}];
}

void __53__STSCategoryViewController_sendRankSectionsFeedback__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 type] != 2)
  {
    v3 = [v7 type];
    v4 = 40;
    if (!v3)
    {
      v4 = 32;
    }

    v5 = *(a1 + v4);
    v6 = [v7 searchResult];
    [v5 addObject:v6];
  }
}

- (void)sendVisibleResultsFeedback
{
  view = [(STSCategoryViewController *)self view];
  tableView = [view tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__STSCategoryViewController_sendVisibleResultsFeedback__block_invoke;
  v12 = &unk_279B8AA78;
  selfCopy = self;
  v7 = v6;
  v14 = v7;
  [indexPathsForVisibleRows enumerateObjectsUsingBlock:&v9];
  if ([v7 count])
  {
    v8 = +[STSFeedbackReporter sharedInstance];
    [v8 didShowResults:v7 scrolling:0];
  }
}

void __55__STSCategoryViewController_sendVisibleResultsFeedback__block_invoke(uint64_t a1, void *a2)
{
  v5 = [*(*(a1 + 32) + 1048) objectAtIndex:{objc_msgSend(a2, "row")}];
  if ([v5 type] != 2)
  {
    v3 = *(a1 + 40);
    v4 = [v5 searchResult];
    [v3 addObject:v4];
  }
}

- (void)_reportFeedbackDisplayedResultsDidScroll:(BOOL)scroll
{
  scrollCopy = scroll;
  if ([(NSMutableArray *)self->_displayedResults count])
  {
    v5 = +[STSFeedbackReporter sharedInstance];
    v6 = [(NSMutableArray *)self->_displayedResults copy];
    [v5 didShowResults:v6 scrolling:scrollCopy];

    displayedResults = self->_displayedResults;

    [(NSMutableArray *)displayedResults removeAllObjects];
  }
}

- (STSCategoryViewControllerDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

@end