@interface SKUIGiftContactSearchController
- (BOOL)cancelSearch;
- (CNAutocompleteResultsTableViewController)searchResultsViewController;
- (SKUIGiftContactSearchDelegate)delegate;
- (UIView)searchResultsView;
- (int64_t)numberOfResults;
- (void)_finishSearchWithResults:(id)a3;
- (void)_setResults:(id)a3;
- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5;
- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4;
- (void)dealloc;
- (void)resetSearch;
- (void)searchForText:(id)a3;
@end

@implementation SKUIGiftContactSearchController

- (void)dealloc
{
  if (self->_searchTaskIdentifier)
  {
    [(CNAutocompleteSearchManager *)self->_searchManager cancelTaskWithID:?];
  }

  [(CNAutocompleteResultsTableViewController *)self->_searchResultsViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIGiftContactSearchController;
  [(SKUIGiftContactSearchController *)&v3 dealloc];
}

- (BOOL)cancelSearch
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGiftContactSearchController *)v3 cancelSearch:v4];
      }
    }
  }

  searchTaskIdentifier = self->_searchTaskIdentifier;
  if (searchTaskIdentifier)
  {
    [(CNAutocompleteSearchManager *)self->_searchManager cancelTaskWithID:self->_searchTaskIdentifier];
    v12 = self->_searchTaskIdentifier;
    self->_searchTaskIdentifier = 0;
  }

  return searchTaskIdentifier != 0;
}

- (int64_t)numberOfResults
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGiftContactSearchController *)v3 numberOfResults:v4];
      }
    }
  }

  return [(NSArray *)self->_results count];
}

- (void)resetSearch
{
  [(SKUIGiftContactSearchController *)self cancelSearch];

  [(SKUIGiftContactSearchController *)self _setResults:0];
}

- (void)searchForText:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGiftContactSearchController *)v5 searchForText:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (!self->_autocompleteSearchResults)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    autocompleteSearchResults = self->_autocompleteSearchResults;
    self->_autocompleteSearchResults = v13;
  }

  [(SKUIGiftContactSearchController *)self cancelSearch];
  [(NSMutableArray *)self->_autocompleteSearchResults removeAllObjects];
  if ([v4 length])
  {
    searchManager = self->_searchManager;
    if (!searchManager)
    {
      v16 = SKUIContactsAutocompleteUIFramework();
      v17 = [objc_alloc(SKUIWeakLinkedClassForString(&cfstr_Cnautocomplete.isa v16))];
      v18 = self->_searchManager;
      self->_searchManager = v17;

      [(CNAutocompleteSearchManager *)self->_searchManager setSearchTypes:3];
      searchManager = self->_searchManager;
    }

    v19 = [(CNAutocompleteSearchManager *)searchManager searchForText:v4 withAutocompleteFetchContext:0 consumer:self];
    searchTaskIdentifier = self->_searchTaskIdentifier;
    self->_searchTaskIdentifier = v19;
  }

  else
  {
    [(SKUIGiftContactSearchController *)self _finishSearchWithResults:0];
  }
}

- (UIView)searchResultsView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGiftContactSearchController *)v3 searchResultsView:v4];
      }
    }
  }

  searchResultsView = self->_searchResultsView;
  if (!searchResultsView)
  {
    v12 = objc_alloc_init(MEMORY[0x277D75D18]);
    v13 = self->_searchResultsView;
    self->_searchResultsView = v12;

    v14 = [(SKUIGiftContactSearchController *)self searchResultsViewController];
    v15 = [v14 tableView];

    v16 = self->_searchResultsView;
    [v15 frame];
    [(UIView *)v16 setFrame:?];
    [(UIView *)self->_searchResultsView bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [v15 setAutoresizingMask:18];
    [v15 setFrame:{v18, v20, v22, v24}];
    [(UIView *)self->_searchResultsView addSubview:v15];

    searchResultsView = self->_searchResultsView;
  }

  return searchResultsView;
}

- (CNAutocompleteResultsTableViewController)searchResultsViewController
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGiftContactSearchController *)v3 searchResultsViewController:v4];
      }
    }
  }

  searchResultsViewController = self->_searchResultsViewController;
  if (!searchResultsViewController)
  {
    v12 = objc_alloc_init(MEMORY[0x277CFBC80]);
    v13 = self->_searchResultsViewController;
    self->_searchResultsViewController = v12;

    [(CNAutocompleteResultsTableViewController *)self->_searchResultsViewController setDelegate:self];
    searchResultsViewController = self->_searchResultsViewController;
  }

  return searchResultsViewController;
}

- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIGiftContactSearchController *)v8 consumeAutocompleteSearchResults:v9 taskID:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  if ([v7 isEqualToNumber:self->_searchTaskIdentifier])
  {
    [(NSMutableArray *)self->_autocompleteSearchResults addObjectsFromArray:v6];
  }
}

- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIGiftContactSearchController *)v10 autocompleteResultsController:v11 didSelectRecipient:v12 atIndex:v13, v14, v15, v16, v17];
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = objc_loadWeakRetained(&self->_delegate);
    [v20 searchController:self didSelectRecipient:v9];
  }

  else
  {
    v20 = [v8 tableView];
    v21 = [MEMORY[0x277CCAA70] indexPathWithIndex:a5];
    [v20 deselectRowAtIndexPath:v21 animated:1];
  }
}

- (void)_finishSearchWithResults:(id)a3
{
  [(SKUIGiftContactSearchController *)self _setResults:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 searchControllerDidFinishSearch:self];
  }
}

- (void)_setResults:(id)a3
{
  if (self->_results != a3)
  {
    v5 = [a3 copy];
    results = self->_results;
    self->_results = v5;

    v7 = self->_results;
    v8 = [(SKUIGiftContactSearchController *)self searchResultsViewController];
    [v8 setRecipients:v7];

    v9 = [(CNAutocompleteResultsTableViewController *)self->_searchResultsViewController tableView];
    [v9 reloadData];
  }
}

- (SKUIGiftContactSearchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end