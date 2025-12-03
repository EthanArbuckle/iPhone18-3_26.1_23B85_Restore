@interface PXSearchRecipientController
- (BOOL)_searchHasNoResultsFound;
- (CNContactViewController)_contactViewController;
- (PXSearchRecipientController)initWithSearchDataSourceManager:(id)manager;
- (PXSearchRecipientControllerDelegate)delegate;
- (UIView)searchResultsView;
- (id)_contactViewControllerForRecipient:(id)recipient;
- (id)_validationTextColorForSearchResult:(id)result;
- (void)_removeRecent;
- (void)_setSearchDataSource:(id)source;
- (void)autocompleteResultsController:(id)controller didRequestInfoAboutRecipient:(id)recipient;
- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index;
- (void)autocompleteResultsController:(id)controller tintColorForRecipient:(id)recipient completion:(id)completion;
- (void)disambiguateRecipient:(id)recipient;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setDelegate:(id)delegate;
- (void)setNumberOfSearchRecipients:(unint64_t)recipients;
- (void)setSearchState:(int64_t)state;
@end

@implementation PXSearchRecipientController

- (CNContactViewController)_contactViewController
{
  WeakRetained = objc_loadWeakRetained(&self->__contactViewController);

  return WeakRetained;
}

- (PXSearchRecipientControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSearchDataSourceManagerContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSearchRecipientController.m" lineNumber:270 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v12 = observableCopy;
  if (changeCopy)
  {
    dataSource = [(PXSectionedDataSourceManager *)self->_searchDataSourceManager dataSource];
    [(PXSearchRecipientController *)self _setSearchDataSource:dataSource];

    observableCopy = v12;
  }

  if ((changeCopy & 2) != 0)
  {
    [(PXSearchRecipientController *)self setSearchState:[(PXRecipientSearchDataSourceManager *)self->_searchDataSourceManager searchState]== 1];
    observableCopy = v12;
  }
}

- (void)_removeRecent
{
  _searchResultsTableViewController = [(PXSearchRecipientController *)self _searchResultsTableViewController];
  suggestedRecipientBeingViewed = [(PXSearchRecipientController *)self suggestedRecipientBeingViewed];
  [_searchResultsTableViewController invalidateSearchResultRecipient:suggestedRecipientBeingViewed];

  v18 = self->_searchDataSourceManager;
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    px_descriptionForAssertionMessage = [(PXRecipientSearchDataSourceManager *)v18 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSearchRecipientController.m" lineNumber:244 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"_searchDataSourceManager", v15, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSearchRecipientController.m" lineNumber:244 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"_searchDataSourceManager", v15}];
  }

LABEL_3:
  suggestedRecipientBeingViewed2 = [(PXSearchRecipientController *)self suggestedRecipientBeingViewed];
  [(PXRecipientSearchDataSourceManager *)v18 removeRecipientResult:suggestedRecipientBeingViewed2];

  [(PXSearchRecipientController *)self setSuggestedRecipientBeingViewed:0];
  _contactViewController = [(PXSearchRecipientController *)self _contactViewController];
  navigationController = [_contactViewController navigationController];

  _contactViewController2 = [(PXSearchRecipientController *)self _contactViewController];
  v10 = _contactViewController2;
  if (navigationController)
  {
    navigationController2 = [_contactViewController2 navigationController];
    v12 = [navigationController2 popViewControllerAnimated:1];
  }

  else
  {
    navigationController2 = [_contactViewController2 presentingViewController];
    [navigationController2 dismissViewControllerAnimated:1 completion:0];
  }

  [(PXSearchRecipientController *)self set_contactViewController:0];
}

- (id)_contactViewControllerForRecipient:(id)recipient
{
  v16[1] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  contact = [recipientCopy contact];
  if (!contact)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CF18]);
    uncommentedAddress = [recipientCopy uncommentedAddress];
    v7 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:*MEMORY[0x1E695CB68] value:uncommentedAddress];
    v16[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v5 setEmailAddresses:v8];

    contact = [v5 copy];
  }

  if ([contact isUnknown])
  {
    [MEMORY[0x1E695D148] viewControllerForUnknownContact:contact];
  }

  else
  {
    [MEMORY[0x1E695D148] viewControllerForContact:contact];
  }
  v9 = ;
  v10 = *MEMORY[0x1E695C208];
  v15[0] = *MEMORY[0x1E695C330];
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v9 setDisplayedPropertyKeys:v11];

  [v9 setAllowsActions:0];
  [v9 setAllowsEditing:0];
  v12 = objc_alloc_init(MEMORY[0x1E695CE28]);
  [v12 setIncludeLocalContacts:1];
  [v12 setIncludeSuggestedContacts:1];
  v13 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v12];
  [v9 setContactStore:v13];

  return v9;
}

- (void)autocompleteResultsController:(id)controller didRequestInfoAboutRecipient:(id)recipient
{
  recipientCopy = recipient;
  v5 = [(PXSearchRecipientController *)self _contactViewControllerForRecipient:recipientCopy];
  if ([recipientCopy isRemovableFromSearchResults])
  {
    contentViewController = [v5 contentViewController];
    v7 = PXLocalizedStringFromTable(@"PXComposeRecipientRemoveRecentSuggestionButtonTitle", @"PhotosUICore");
    cardFooterGroup = [contentViewController cardFooterGroup];
    [contentViewController addActionWithTitle:v7 target:self selector:sel__removeRecent inGroup:cardFooterGroup destructive:1];
  }

  [(PXSearchRecipientController *)self setSuggestedRecipientBeingViewed:recipientCopy];
  [(PXSearchRecipientController *)self set_contactViewController:v5];
  delegate = [(PXSearchRecipientController *)self delegate];
  v10 = [delegate viewControllerForPresentingContactViewControllerBySearchRecipientController:self];

  navigationController = [v10 navigationController];
  navigationController2 = [v10 navigationController];

  if (navigationController2)
  {
    [navigationController pushViewController:v5 animated:1];
  }

  else
  {
    [v10 presentViewController:v5 animated:1 completion:0];
  }
}

- (void)autocompleteResultsController:(id)controller tintColorForRecipient:(id)recipient completion:(id)completion
{
  controllerCopy = controller;
  recipientCopy = recipient;
  completionCopy = completion;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__10213;
  v28 = __Block_byref_object_dispose__10214;
  v29 = 0;
  _searchDataSource = [(PXSearchRecipientController *)self _searchDataSource];
  v13 = _searchDataSource;
  if (_searchDataSource)
  {
    [_searchDataSource firstItemIndexPath];
  }

  else
  {
    memset(v23, 0, sizeof(v23));
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __94__PXSearchRecipientController_autocompleteResultsController_tintColorForRecipient_completion___block_invoke;
  v17[3] = &unk_1E772E540;
  v14 = v13;
  v22 = a2;
  v18 = v14;
  selfCopy = self;
  v15 = recipientCopy;
  v20 = v15;
  v21 = &v24;
  [v14 enumerateItemIndexPathsStartingAtIndexPath:v23 reverseDirection:0 usingBlock:v17];
  if (v25[5])
  {
    v16 = [(PXSearchRecipientController *)self _validationTextColorForSearchResult:?];
    completionCopy[2](completionCopy, v16);
  }

  _Block_object_dispose(&v24, 8);
}

void __94__PXSearchRecipientController_autocompleteResultsController_tintColorForRecipient_completion___block_invoke(uint64_t a1, _OWORD *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2[1];
  v19[0] = *a2;
  v19[1] = v6;
  v7 = [v5 recipientSearchResultAtSimpleIndexPath:v19];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = *(a1 + 64);
    v16 = *(a1 + 40);
    v17 = objc_opt_class();
    v14 = NSStringFromClass(v17);
    v18 = [v7 px_descriptionForAssertionMessage];
    [v10 handleFailureInMethod:v15 object:v16 file:@"PXSearchRecipientController.m" lineNumber:174 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[searchDataSource recipientSearchResultAtSimpleIndexPath:indexPath]", v14, v18}];
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = *(a1 + 64);
    v12 = *(a1 + 40);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v10 handleFailureInMethod:v11 object:v12 file:@"PXSearchRecipientController.m" lineNumber:174 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[searchDataSource recipientSearchResultAtSimpleIndexPath:indexPath]", v14}];
  }

LABEL_3:
  v8 = [v7 recipient];
  v9 = PXComposeRecipientEqualToComposeRecipient(v8, *(a1 + 48));

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
    *a3 = 1;
  }
}

- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index
{
  recipientCopy = recipient;
  v7 = [(PXCNComposeRecipient *)[PXCNRecipientSearchResult alloc] initWithRecipient:recipientCopy];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v7;

    v8 = v10;
    if (v10)
    {
      if (self->_delegateRespondsTo.didSelectRecipient)
      {
        delegate = [(PXSearchRecipientController *)self delegate];
        [delegate searchRecipientController:self didSelectRecipient:v10];
      }

      [(PXRecipientSearchDataSourceManager *)self->_searchDataSourceManager setQueryString:&stru_1F1741150];
      v8 = v10;
    }
  }

  else
  {

    v8 = 0;
  }
}

- (id)_validationTextColorForSearchResult:(id)result
{
  validationType = [result validationType];
  if (validationType)
  {
    if (validationType == 2)
    {
      systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
    }

    else if (validationType == 1)
    {
      systemGreenColor = [MEMORY[0x1E69DC888] systemBlueColor];
    }

    else
    {
      systemGreenColor = 0;
    }
  }

  else
  {
    systemGreenColor = [MEMORY[0x1E69DC888] systemGrayColor];
  }

  return systemGreenColor;
}

- (void)disambiguateRecipient:(id)recipient
{
  v14[1] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  if (!recipientCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSearchRecipientController.m" lineNumber:132 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"recipient", v11}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    px_descriptionForAssertionMessage = [recipientCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSearchRecipientController.m" lineNumber:132 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"recipient", v11, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  recipient = [recipientCopy recipient];
  searchResultsTableViewController = self->__searchResultsTableViewController;
  v14[0] = recipient;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [(CNAutocompleteResultsTableViewController *)searchResultsTableViewController updateRecipients:v8 disambiguatingRecipient:recipient];
}

- (void)setNumberOfSearchRecipients:(unint64_t)recipients
{
  if (self->_numberOfSearchRecipients != recipients)
  {
    self->_numberOfSearchRecipients = recipients;
    if (self->_delegateRespondsTo.numberOfSearchRecipientsDidChange)
    {
      delegate = [(PXSearchRecipientController *)self delegate];
      [delegate searchRecipientController:self numberOfSearchRecipientsDidChange:recipients];
    }
  }
}

- (void)setSearchState:(int64_t)state
{
  if (self->_searchState != state)
  {
    self->_searchState = state;
    if (self->_delegateRespondsTo.searchStateDidChange)
    {
      delegate = [(PXSearchRecipientController *)self delegate];
      [delegate searchRecipientController:self searchStateDidChange:state];
    }
  }
}

- (void)_setSearchDataSource:(id)source
{
  sourceCopy = source;
  if (self->__searchDataSource != sourceCopy)
  {
    objc_storeStrong(&self->__searchDataSource, source);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [(PXRecipientSearchDataSource *)sourceCopy recipientSearchResultsInSection:0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__PXSearchRecipientController__setSearchDataSource___block_invoke;
    v11[3] = &unk_1E772E518;
    v13 = a2;
    v11[4] = self;
    v9 = v7;
    v12 = v9;
    [v8 enumerateObjectsUsingBlock:v11];
    [(CNAutocompleteResultsTableViewController *)self->__searchResultsTableViewController setRecipients:v9];
    if ([(PXRecipientSearchDataSource *)self->__searchDataSource numberOfSections]< 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = [(PXRecipientSearchDataSource *)self->__searchDataSource numberOfItemsInSection:0];
    }

    [(PXSearchRecipientController *)self setNumberOfSearchRecipients:v10];
  }
}

void __52__PXSearchRecipientController__setSearchDataSource___block_invoke(void *a1, void *a2)
{
  v14 = a2;
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = a1[6];
    v11 = a1[4];
    v12 = objc_opt_class();
    v9 = NSStringFromClass(v12);
    v13 = [v14 px_descriptionForAssertionMessage];
    [v5 handleFailureInMethod:v10 object:v11 file:@"PXSearchRecipientController.m" lineNumber:100 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"searchResult", v9, v13}];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = a1[6];
    v7 = a1[4];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v5 handleFailureInMethod:v6 object:v7 file:@"PXSearchRecipientController.m" lineNumber:100 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"searchResult", v9}];
  }

LABEL_3:
  v3 = a1[5];
  v4 = [v14 recipient];
  [v3 addObject:v4];
}

- (BOOL)_searchHasNoResultsFound
{
  if ([(PXRecipientSearchDataSourceManager *)self->_searchDataSourceManager searchState]!= 2)
  {
    return 0;
  }

  dataSource = [(PXSectionedDataSourceManager *)self->_searchDataSourceManager dataSource];
  v4 = [dataSource numberOfItemsInSection:0] == 0;

  return v4;
}

- (UIView)searchResultsView
{
  tableView = [(CNAutocompleteResultsTableViewController *)self->__searchResultsTableViewController tableView];
  [tableView setKeyboardDismissMode:2];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [tableView setBackgroundColor:systemBackgroundColor];

  return tableView;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsTo.didSelectRecipient = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.numberOfSearchRecipientsDidChange = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.searchStateDidChange = objc_opt_respondsToSelector() & 1;
  }
}

- (PXSearchRecipientController)initWithSearchDataSourceManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = PXSearchRecipientController;
  v6 = [(PXSearchRecipientController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchDataSourceManager, manager);
    [(PXSectionedDataSourceManager *)v7->_searchDataSourceManager registerChangeObserver:v7 context:PXSearchDataSourceManagerContext];
    v8 = objc_alloc_init(MEMORY[0x1E69963B0]);
    searchResultsTableViewController = v7->__searchResultsTableViewController;
    v7->__searchResultsTableViewController = v8;

    [(CNAutocompleteResultsTableViewController *)v7->__searchResultsTableViewController setDelegate:v7];
  }

  return v7;
}

@end