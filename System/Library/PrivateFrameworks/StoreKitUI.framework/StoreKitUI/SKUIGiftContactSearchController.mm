@interface SKUIGiftContactSearchController
- (BOOL)cancelSearch;
- (CNAutocompleteResultsTableViewController)searchResultsViewController;
- (SKUIGiftContactSearchDelegate)delegate;
- (UIView)searchResultsView;
- (int64_t)numberOfResults;
- (void)_finishSearchWithResults:(id)results;
- (void)_setResults:(id)results;
- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index;
- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d;
- (void)dealloc;
- (void)resetSearch;
- (void)searchForText:(id)text;
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

- (void)searchForText:(id)text
{
  textCopy = text;
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
  if ([textCopy length])
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

    v19 = [(CNAutocompleteSearchManager *)searchManager searchForText:textCopy withAutocompleteFetchContext:0 consumer:self];
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

    searchResultsViewController = [(SKUIGiftContactSearchController *)self searchResultsViewController];
    tableView = [searchResultsViewController tableView];

    v16 = self->_searchResultsView;
    [tableView frame];
    [(UIView *)v16 setFrame:?];
    [(UIView *)self->_searchResultsView bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [tableView setAutoresizingMask:18];
    [tableView setFrame:{v18, v20, v22, v24}];
    [(UIView *)self->_searchResultsView addSubview:tableView];

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

- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d
{
  resultsCopy = results;
  dCopy = d;
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

  if ([dCopy isEqualToNumber:self->_searchTaskIdentifier])
  {
    [(NSMutableArray *)self->_autocompleteSearchResults addObjectsFromArray:resultsCopy];
  }
}

- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index
{
  controllerCopy = controller;
  recipientCopy = recipient;
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
    tableView = objc_loadWeakRetained(&self->_delegate);
    [tableView searchController:self didSelectRecipient:recipientCopy];
  }

  else
  {
    tableView = [controllerCopy tableView];
    v21 = [MEMORY[0x277CCAA70] indexPathWithIndex:index];
    [tableView deselectRowAtIndexPath:v21 animated:1];
  }
}

- (void)_finishSearchWithResults:(id)results
{
  [(SKUIGiftContactSearchController *)self _setResults:results];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 searchControllerDidFinishSearch:self];
  }
}

- (void)_setResults:(id)results
{
  if (self->_results != results)
  {
    v5 = [results copy];
    results = self->_results;
    self->_results = v5;

    v7 = self->_results;
    searchResultsViewController = [(SKUIGiftContactSearchController *)self searchResultsViewController];
    [searchResultsViewController setRecipients:v7];

    tableView = [(CNAutocompleteResultsTableViewController *)self->_searchResultsViewController tableView];
    [tableView reloadData];
  }
}

- (SKUIGiftContactSearchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end