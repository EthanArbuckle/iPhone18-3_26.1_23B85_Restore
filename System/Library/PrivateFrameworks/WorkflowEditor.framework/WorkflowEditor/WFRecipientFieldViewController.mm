@interface WFRecipientFieldViewController
- (BOOL)hasActiveSearch;
- (CNAutocompleteSearchManager)searchManager;
- (CNComposeRecipientTextView)composeTextView;
- (NSArray)entries;
- (NSArray)recipients;
- (NSString)fieldLabel;
- (WFRecipientFieldViewController)init;
- (WFRecipientFieldViewControllerDelegate)delegate;
- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address;
- (unint64_t)preferredSearchResultTypes;
- (void)_addSearchResults:(id)results forTask:(id)task;
- (void)_cancelActiveSearchClearingText:(BOOL)text;
- (void)_finishedSearching;
- (void)_presentContactViewControllerForRecipient:(id)recipient;
- (void)_resetSearchResults;
- (void)_startSearch:(id)search;
- (void)_updateFetchContextChosenAddresses;
- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index;
- (void)cancel:(id)cancel;
- (void)commitRemainingText;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient;
- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient;
- (void)composeRecipientViewRequestAddRecipient:(id)recipient;
- (void)configureBackgroundView;
- (void)dealloc;
- (void)done:(id)done;
- (void)finishedTaskWithID:(id)d;
- (void)loadView;
- (void)requestContactAuthorization;
- (void)requestContactsAccessIfNeeded;
- (void)setEntries:(id)entries;
- (void)setRecipients:(id)recipients;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation WFRecipientFieldViewController

- (WFRecipientFieldViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)requestContactsAccessIfNeeded
{
  [(WFRecipientFieldViewController *)self setContactAuthorizationStatus:WFCNContactAuthorizationStatus()];
  if (![(WFRecipientFieldViewController *)self contactAuthorizationStatus])
  {
    contactStore = [(WFRecipientFieldViewController *)self contactStore];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __63__WFRecipientFieldViewController_requestContactsAccessIfNeeded__block_invoke;
    v4[3] = &unk_279EDC2B0;
    v4[4] = self;
    [contactStore requestAccessForEntityType:0 completionHandler:v4];
  }
}

void __63__WFRecipientFieldViewController_requestContactsAccessIfNeeded__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__WFRecipientFieldViewController_requestContactsAccessIfNeeded__block_invoke_2;
  block[3] = &unk_279EDC288;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__WFRecipientFieldViewController_requestContactsAccessIfNeeded__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setContactAuthorizationStatus:WFCNContactAuthorizationStatus()];
  v2 = [*(a1 + 32) searchManager];
  [v2 setSearchTypes:{objc_msgSend(*(a1 + 32), "preferredSearchResultTypes")}];

  v3 = *(a1 + 32);
  v4 = [v3 currentSearchTerm];
  [v3 _startSearch:v4];
}

- (void)configureBackgroundView
{
  if ([(WFRecipientFieldViewController *)self contactAuthorizationStatus]!= 3)
  {
    currentSearchTerm = [(WFRecipientFieldViewController *)self currentSearchTerm];
    v4 = [currentSearchTerm length];

    if (!v4)
    {
      tableBackgroundView = [(WFRecipientFieldViewController *)self tableBackgroundView];
      autocompleteResultsController = [(WFRecipientFieldViewController *)self autocompleteResultsController];
      tableView = [autocompleteResultsController tableView];
      [tableView setBackgroundView:tableBackgroundView];

      if ([(WFRecipientFieldViewController *)self contactAuthorizationStatus])
      {
        if ([(WFRecipientFieldViewController *)self contactAuthorizationStatus]!= 2)
        {
          if ([(WFRecipientFieldViewController *)self contactAuthorizationStatus]!= 1)
          {
            return;
          }

          v18 = WFLocalizedString(@"Shortcuts doesn't have access to your contacts.");
          contactAuthorizationMessageLabel = [(WFRecipientFieldViewController *)self contactAuthorizationMessageLabel];
          [contactAuthorizationMessageLabel setText:v18];

          contactAuthorizationStatusButton = [(WFRecipientFieldViewController *)self contactAuthorizationStatusButton];
          autocompleteResultsController2 = contactAuthorizationStatusButton;
          v17 = 1;
          goto LABEL_12;
        }

        v9 = WFLocalizedString(@"To see suggestions while you type, grant access in Settings.");
        contactAuthorizationMessageLabel2 = [(WFRecipientFieldViewController *)self contactAuthorizationMessageLabel];
        [contactAuthorizationMessageLabel2 setText:v9];

        contactAuthorizationStatusButton2 = [(WFRecipientFieldViewController *)self contactAuthorizationStatusButton];
        v12 = @"Shortcuts Settings";
      }

      else
      {
        v13 = WFLocalizedString(@"Shortcuts needs access to your contacts to provide suggestions while you type.");
        contactAuthorizationMessageLabel3 = [(WFRecipientFieldViewController *)self contactAuthorizationMessageLabel];
        [contactAuthorizationMessageLabel3 setText:v13];

        contactAuthorizationStatusButton2 = [(WFRecipientFieldViewController *)self contactAuthorizationStatusButton];
        v12 = @"Allow";
      }

      v15 = WFLocalizedString(v12);
      [contactAuthorizationStatusButton2 setTitle:v15 forState:0];

      contactAuthorizationStatusButton = [(WFRecipientFieldViewController *)self contactAuthorizationStatusButton];
      autocompleteResultsController2 = contactAuthorizationStatusButton;
      v17 = 0;
LABEL_12:
      [contactAuthorizationStatusButton setHidden:v17];
      goto LABEL_4;
    }
  }

  autocompleteResultsController2 = [(WFRecipientFieldViewController *)self autocompleteResultsController];
  tableView2 = [autocompleteResultsController2 tableView];
  [tableView2 setBackgroundView:0];

LABEL_4:
}

- (void)requestContactAuthorization
{
  if ([(WFRecipientFieldViewController *)self contactAuthorizationStatus])
  {
    if ([(WFRecipientFieldViewController *)self contactAuthorizationStatus]== 2)
    {
      mEMORY[0x277CFC248] = [MEMORY[0x277CFC248] sharedContext];
      v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=SHORTCUTS"];
      [mEMORY[0x277CFC248] openURL:v3];
    }
  }

  else
  {

    [(WFRecipientFieldViewController *)self requestContactsAccessIfNeeded];
  }
}

- (void)_updateFetchContextChosenAddresses
{
  uncommentedAddresses = [(CNComposeRecipientTextView *)self->_composeTextView uncommentedAddresses];
  [(CNAutocompleteFetchContext *)self->_fetchContext setOtherAddressesAlreadyChosen:uncommentedAddresses];
}

- (void)_resetSearchResults
{
  searchResults = [(WFRecipientFieldViewController *)self searchResults];
  [searchResults removeAllObjects];

  searchResults2 = [(WFRecipientFieldViewController *)self searchResults];
  autocompleteResultsController = [(WFRecipientFieldViewController *)self autocompleteResultsController];
  [autocompleteResultsController setRecipients:searchResults2];
}

- (void)_cancelActiveSearchClearingText:(BOOL)text
{
  if (text)
  {
    composeTextView = [(WFRecipientFieldViewController *)self composeTextView];
    [composeTextView clearText];
  }

  if ([(WFRecipientFieldViewController *)self hasActiveSearch])
  {
    searchManager = [(WFRecipientFieldViewController *)self searchManager];
    lastSearchID = [(WFRecipientFieldViewController *)self lastSearchID];
    [searchManager cancelTaskWithID:lastSearchID];
  }

  [(WFRecipientFieldViewController *)self _resetSearchResults];

  [(WFRecipientFieldViewController *)self setLastSearchID:0];
}

- (BOOL)hasActiveSearch
{
  lastSearchID = [(WFRecipientFieldViewController *)self lastSearchID];
  v3 = lastSearchID != 0;

  return v3;
}

- (void)_finishedSearching
{
  searchResults = [(WFRecipientFieldViewController *)self searchResults];
  v4 = [searchResults count];

  if (!v4)
  {

    [(WFRecipientFieldViewController *)self _resetSearchResults];
  }
}

- (void)_startSearch:(id)search
{
  searchCopy = search;
  [(WFRecipientFieldViewController *)self setCurrentSearchTerm:searchCopy];
  [(WFRecipientFieldViewController *)self configureBackgroundView];
  [(WFRecipientFieldViewController *)self _cancelActiveSearchClearingText:0];
  searchManager = [(WFRecipientFieldViewController *)self searchManager];
  fetchContext = [(WFRecipientFieldViewController *)self fetchContext];
  if (searchCopy)
  {
    [searchManager searchForText:searchCopy withAutocompleteFetchContext:fetchContext consumer:self];
  }

  else
  {
    [searchManager searchForCorecipientsWithAutocompleteFetchContext:fetchContext consumer:self];
  }
  v6 = ;
  [(WFRecipientFieldViewController *)self setLastSearchID:v6];
}

- (void)_addSearchResults:(id)results forTask:(id)task
{
  resultsCopy = results;
  taskCopy = task;
  lastSearchID = [(WFRecipientFieldViewController *)self lastSearchID];
  v8 = [taskCopy isEqual:lastSearchID];

  if (v8)
  {
    v9 = [resultsCopy count];

    if (!v9)
    {
      goto LABEL_5;
    }

    searchResults = [(WFRecipientFieldViewController *)self searchResults];
    [searchResults addObjectsFromArray:resultsCopy];

    lastSearchID = [(WFRecipientFieldViewController *)self searchResults];
    autocompleteResultsController = [(WFRecipientFieldViewController *)self autocompleteResultsController];
    [autocompleteResultsController setRecipients:lastSearchID];
  }

LABEL_5:
}

- (CNComposeRecipientTextView)composeTextView
{
  composeTextView = self->_composeTextView;
  if (!composeTextView)
  {
    v4 = objc_alloc_init(MEMORY[0x277CFBCB0]);
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v4 setBackgroundColor:clearColor];

    [v4 setDelegate:self];
    fieldLabel = [(WFRecipientFieldViewController *)self fieldLabel];
    [v4 setLabel:fieldLabel];

    [v4 setSeparatorHidden:0];
    v7 = self->_composeTextView;
    self->_composeTextView = v4;

    composeTextView = self->_composeTextView;
  }

  return composeTextView;
}

- (void)setRecipients:(id)recipients
{
  recipientsCopy = recipients;
  composeTextView = [(WFRecipientFieldViewController *)self composeTextView];
  [composeTextView setRecipients:recipientsCopy];
}

- (NSArray)recipients
{
  composeTextView = [(WFRecipientFieldViewController *)self composeTextView];
  recipients = [composeTextView recipients];

  return recipients;
}

- (CNAutocompleteSearchManager)searchManager
{
  searchManager = self->_searchManager;
  if (!searchManager)
  {
    supportedPersonProperties = [(WFRecipientFieldViewController *)self supportedPersonProperties];
    v5 = [supportedPersonProperties containsObject:&unk_288386A10];
    v6 = [supportedPersonProperties containsObject:&unk_288386A28];
    v7 = v5 & v6 | ~v6;

    v8 = [objc_alloc(MEMORY[0x277CFBC98]) initWithAutocompleteSearchType:v7 & 1];
    v9 = self->_searchManager;
    self->_searchManager = v8;

    [(CNAutocompleteSearchManager *)self->_searchManager setImplicitGroupCreationThreshold:1];
    [(CNAutocompleteSearchManager *)self->_searchManager setSearchTypes:[(WFRecipientFieldViewController *)self preferredSearchResultTypes]];
    searchManager = self->_searchManager;
  }

  return searchManager;
}

- (unint64_t)preferredSearchResultTypes
{
  if (WFCNContactIsAuthorizedToAccessContact())
  {
    return 23;
  }

  else
  {
    return 21;
  }
}

- (void)_presentContactViewControllerForRecipient:(id)recipient
{
  v4 = MEMORY[0x277CBDC48];
  contact = [recipient contact];
  v8 = [v4 viewControllerForUnknownContact:contact];

  contactStore = [(WFRecipientFieldViewController *)self contactStore];
  [v8 setContactStore:contactStore];

  [v8 setModalPresentationStyle:3];
  navigationController = [(WFRecipientFieldViewController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];
}

- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index
{
  if (recipient)
  {
    recipientCopy = recipient;
    [(WFRecipientFieldViewController *)self _cancelActiveSearchClearingText:1];
    composeTextView = [(WFRecipientFieldViewController *)self composeTextView];
    [composeTextView addRecipient:recipientCopy];

    searchManager = [(WFRecipientFieldViewController *)self searchManager];
    [searchManager didSelectRecipient:recipientCopy atIndex:index];

    [(WFRecipientFieldViewController *)self _updateFetchContextChosenAddresses];

    [(WFRecipientFieldViewController *)self _startSearch:0];
  }
}

- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address
{
  addressCopy = address;
  v6 = [MEMORY[0x277CFC2B0] predictedTypeForHandleValue:addressCopy allowsCustomHandles:{-[WFRecipientFieldViewController allowsCustomHandles](self, "allowsCustomHandles")}];
  if (v6 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CFBCA0]) initWithContact:0 address:addressCopy kind:qword_2746607C0[v6]];
  }

  wf_contactFieldEntry = [v7 wf_contactFieldEntry];

  if (wf_contactFieldEntry)
  {
    wf_contactFieldEntry = v7;
  }

  return wf_contactFieldEntry;
}

- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient
{
  navigationController = [(WFRecipientFieldViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)composeRecipientViewRequestAddRecipient:(id)recipient
{
  recipientCopy = recipient;
  v5 = objc_alloc_init(WFContactPickerCoordinator);
  [(WFRecipientFieldViewController *)self setContactPickerCoordinator:v5];

  supportedPersonProperties = [(WFRecipientFieldViewController *)self supportedPersonProperties];
  contactPickerCoordinator = [(WFRecipientFieldViewController *)self contactPickerCoordinator];
  [contactPickerCoordinator setSupportedPersonProperties:supportedPersonProperties];

  navigationController = [(WFRecipientFieldViewController *)self navigationController];
  contactPickerCoordinator2 = [(WFRecipientFieldViewController *)self contactPickerCoordinator];
  [contactPickerCoordinator2 setPresentingViewController:navigationController];

  objc_initWeak(&location, self);
  contactPickerCoordinator3 = [(WFRecipientFieldViewController *)self contactPickerCoordinator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__WFRecipientFieldViewController_composeRecipientViewRequestAddRecipient___block_invoke;
  v11[3] = &unk_279EDC260;
  objc_copyWeak(&v12, &location);
  [contactPickerCoordinator3 presentContactPickerWithCompletionHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __74__WFRecipientFieldViewController_composeRecipientViewRequestAddRecipient___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CFBCA0] wf_composeRecipientForContact:a2];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained composeTextView];
    [v5 addRecipient:v3];
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 composeTextView];
  [v6 composeRecipientViewDidFinishPickingRecipient:v7];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setContactPickerCoordinator:0];
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  v14 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v7 = [(WFRecipientFieldViewController *)self composeRecipientView:view composeRecipientForAddress:addressCopy];
  wf_contactFieldEntry = [v7 wf_contactFieldEntry];

  if (wf_contactFieldEntry)
  {
    composeTextView = [(WFRecipientFieldViewController *)self composeTextView];
    [composeTextView addRecipient:v7];
  }

  else
  {
    composeTextView = getWFGeneralLogObject();
    if (os_log_type_enabled(composeTextView, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[WFRecipientFieldViewController composeRecipientView:didFinishEnteringAddress:]";
      v12 = 2112;
      v13 = addressCopy;
      _os_log_impl(&dword_2743F0000, composeTextView, OS_LOG_TYPE_ERROR, "%s Invalid compose recipient for: %@", &v10, 0x16u);
    }
  }

  [(WFRecipientFieldViewController *)self _cancelActiveSearchClearingText:1];
  [(WFRecipientFieldViewController *)self _updateFetchContextChosenAddresses];
}

- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient
{
  recipientCopy = recipient;
  composeTextView = [(WFRecipientFieldViewController *)self composeTextView];
  [composeTextView removeRecipient:recipientCopy];

  [(WFRecipientFieldViewController *)self _cancelActiveSearchClearingText:1];

  [(WFRecipientFieldViewController *)self _updateFetchContextChosenAddresses];
}

- (void)finishedTaskWithID:(id)d
{
  dCopy = d;
  lastSearchID = [(WFRecipientFieldViewController *)self lastSearchID];
  v6 = [dCopy isEqual:lastSearchID];

  if (v6)
  {

    [(WFRecipientFieldViewController *)self setLastSearchID:0];
  }
}

- (NSArray)entries
{
  recipients = [(WFRecipientFieldViewController *)self recipients];
  v3 = [recipients if_compactMap:&__block_literal_global_197];

  return v3;
}

- (void)setEntries:(id)entries
{
  v4 = [entries if_map:&__block_literal_global_4734];
  [(WFRecipientFieldViewController *)self setRecipients:v4];
}

- (NSString)fieldLabel
{
  fieldLabel = self->_fieldLabel;
  if (!fieldLabel)
  {
    v4 = WFLocalizedString(@"To:");
    v5 = self->_fieldLabel;
    self->_fieldLabel = v4;

    fieldLabel = self->_fieldLabel;
  }

  return fieldLabel;
}

- (void)commitRemainingText
{
  composeTextView = [(WFRecipientFieldViewController *)self composeTextView];
  [composeTextView finishEnteringRecipient];
}

- (void)done:(id)done
{
  delegate = [(WFRecipientFieldViewController *)self delegate];
  [delegate recipientViewControllerDidFinish:self cancelled:0];
}

- (void)cancel:(id)cancel
{
  delegate = [(WFRecipientFieldViewController *)self delegate];
  [delegate recipientViewControllerDidFinish:self cancelled:1];
}

- (void)dealloc
{
  if (self->_composeTextView)
  {
    composeTextView = [(WFRecipientFieldViewController *)self composeTextView];
    [composeTextView setDelegate:0];
  }

  [(WFRecipientFieldViewController *)self _cancelActiveSearchClearingText:0];
  v4.receiver = self;
  v4.super_class = WFRecipientFieldViewController;
  [(WFRecipientFieldViewController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WFRecipientFieldViewController;
  [(WFRecipientFieldViewController *)&v4 viewDidAppear:appear];
  [(WFRecipientFieldViewController *)self requestContactsAccessIfNeeded];
  [(WFRecipientFieldViewController *)self _startSearch:0];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WFRecipientFieldViewController;
  [(WFRecipientFieldViewController *)&v4 viewDidLoad];
  [(WFRecipientFieldViewController *)self configureBackgroundView];
  composeTextView = [(WFRecipientFieldViewController *)self composeTextView];
  [composeTextView becomeFirstResponder];
}

- (void)loadView
{
  v124[9] = *MEMORY[0x277D85DE8];
  v121.receiver = self;
  v121.super_class = WFRecipientFieldViewController;
  [(WFRecipientFieldViewController *)&v121 loadView];
  view = [(WFRecipientFieldViewController *)self view];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  composeTextView = [(WFRecipientFieldViewController *)self composeTextView];
  [view addSubview:composeTextView];
  tableView = [(CNAutocompleteResultsTableViewController *)self->_autocompleteResultsController tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [tableView setKeyboardDismissMode:1];
  v7 = tableView;
  [view addSubview:tableView];
  heightAnchor = [composeTextView heightAnchor];
  [MEMORY[0x277CFBCB0] preferredHeight];
  v9 = [heightAnchor constraintEqualToConstant:?];
  composeHeaderHeightConstraint = self->_composeHeaderHeightConstraint;
  self->_composeHeaderHeightConstraint = v9;

  v96 = MEMORY[0x277CCAAD0];
  v124[0] = self->_composeHeaderHeightConstraint;
  leadingAnchor = [composeTextView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v112 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v124[1] = v112;
  trailingAnchor = [composeTextView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v106 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v124[2] = v106;
  widthAnchor = [composeTextView widthAnchor];
  widthAnchor2 = [view widthAnchor];
  v100 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v124[3] = v100;
  v120 = composeTextView;
  topAnchor = [composeTextView topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v90 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v124[4] = v90;
  leadingAnchor3 = [v7 leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v84 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v124[5] = v84;
  trailingAnchor3 = [v7 trailingAnchor];
  v119 = view;
  trailingAnchor4 = [view trailingAnchor];
  v12 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v124[6] = v12;
  v13 = v7;
  v118 = v7;
  topAnchor3 = [v7 topAnchor];
  bottomAnchor = [composeTextView bottomAnchor];
  v16 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v124[7] = v16;
  bottomAnchor2 = [v13 bottomAnchor];
  bottomAnchor3 = [view bottomAnchor];
  v19 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v124[8] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:9];
  [v96 activateConstraints:v20];

  v21 = objc_opt_new();
  [(WFRecipientFieldViewController *)self setTableBackgroundView:v21];

  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  tableBackgroundView = [(WFRecipientFieldViewController *)self tableBackgroundView];
  [tableBackgroundView setBackgroundColor:systemGroupedBackgroundColor];

  v24 = objc_opt_new();
  [(WFRecipientFieldViewController *)self setContactAuthorizationMessageLabel:v24];

  contactAuthorizationMessageLabel = [(WFRecipientFieldViewController *)self contactAuthorizationMessageLabel];
  [contactAuthorizationMessageLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  contactAuthorizationMessageLabel2 = [(WFRecipientFieldViewController *)self contactAuthorizationMessageLabel];
  [contactAuthorizationMessageLabel2 setTextColor:secondaryLabelColor];

  contactAuthorizationMessageLabel3 = [(WFRecipientFieldViewController *)self contactAuthorizationMessageLabel];
  [contactAuthorizationMessageLabel3 setTextAlignment:1];

  contactAuthorizationMessageLabel4 = [(WFRecipientFieldViewController *)self contactAuthorizationMessageLabel];
  [contactAuthorizationMessageLabel4 setNumberOfLines:0];

  v30 = MEMORY[0x277D75220];
  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  v32 = [v30 buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
  [(WFRecipientFieldViewController *)self setContactAuthorizationStatusButton:v32];

  contactAuthorizationStatusButton = [(WFRecipientFieldViewController *)self contactAuthorizationStatusButton];
  [contactAuthorizationStatusButton addTarget:self action:sel_requestContactAuthorization forControlEvents:0x2000];

  v34 = objc_alloc(MEMORY[0x277D75A68]);
  contactAuthorizationMessageLabel5 = [(WFRecipientFieldViewController *)self contactAuthorizationMessageLabel];
  v123[0] = contactAuthorizationMessageLabel5;
  contactAuthorizationStatusButton2 = [(WFRecipientFieldViewController *)self contactAuthorizationStatusButton];
  v123[1] = contactAuthorizationStatusButton2;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:2];
  v38 = [v34 initWithArrangedSubviews:v37];

  v39 = v38;
  [v38 setAxis:1];
  [v38 setAlignment:3];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v38 setSpacing:8.0];
  tableBackgroundView2 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  [tableBackgroundView2 addSubview:v39];

  v41 = objc_alloc_init(MEMORY[0x277D756D0]);
  v42 = objc_alloc_init(MEMORY[0x277D756D0]);
  tableBackgroundView3 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  [tableBackgroundView3 addLayoutGuide:v41];

  tableBackgroundView4 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  [tableBackgroundView4 addLayoutGuide:v42];

  v79 = MEMORY[0x277CCAAD0];
  leadingAnchor5 = [v39 leadingAnchor];
  tableBackgroundView5 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  layoutMarginsGuide = [tableBackgroundView5 layoutMarginsGuide];
  leadingAnchor6 = [layoutMarginsGuide leadingAnchor];
  v109 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v122[0] = v109;
  trailingAnchor5 = [v39 trailingAnchor];
  tableBackgroundView6 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  layoutMarginsGuide2 = [tableBackgroundView6 layoutMarginsGuide];
  trailingAnchor6 = [layoutMarginsGuide2 trailingAnchor];
  v99 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v122[1] = v99;
  leadingAnchor7 = [v41 leadingAnchor];
  tableBackgroundView7 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  layoutMarginsGuide3 = [tableBackgroundView7 layoutMarginsGuide];
  leadingAnchor8 = [layoutMarginsGuide3 leadingAnchor];
  v89 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v122[2] = v89;
  trailingAnchor7 = [v41 trailingAnchor];
  tableBackgroundView8 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  layoutMarginsGuide4 = [tableBackgroundView8 layoutMarginsGuide];
  trailingAnchor8 = [layoutMarginsGuide4 trailingAnchor];
  v80 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v122[3] = v80;
  leadingAnchor9 = [v42 leadingAnchor];
  tableBackgroundView9 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  layoutMarginsGuide5 = [tableBackgroundView9 layoutMarginsGuide];
  leadingAnchor10 = [layoutMarginsGuide5 leadingAnchor];
  v74 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v122[4] = v74;
  trailingAnchor9 = [v42 trailingAnchor];
  tableBackgroundView10 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  layoutMarginsGuide6 = [tableBackgroundView10 layoutMarginsGuide];
  trailingAnchor10 = [layoutMarginsGuide6 trailingAnchor];
  v66 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v122[5] = v66;
  heightAnchor2 = [v41 heightAnchor];
  heightAnchor3 = [v42 heightAnchor];
  v63 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  v122[6] = v63;
  v73 = v41;
  topAnchor4 = [v41 topAnchor];
  tableBackgroundView11 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  layoutMarginsGuide7 = [tableBackgroundView11 layoutMarginsGuide];
  topAnchor5 = [layoutMarginsGuide7 topAnchor];
  v58 = [topAnchor4 constraintEqualToSystemSpacingBelowAnchor:topAnchor5 multiplier:1.0];
  v122[7] = v58;
  tableBackgroundView12 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  layoutMarginsGuide8 = [tableBackgroundView12 layoutMarginsGuide];
  bottomAnchor4 = [layoutMarginsGuide8 bottomAnchor];
  v69 = v42;
  bottomAnchor5 = [v42 bottomAnchor];
  v47 = [bottomAnchor4 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor5 multiplier:1.0];
  v122[8] = v47;
  v48 = v39;
  v72 = v39;
  topAnchor6 = [v39 topAnchor];
  bottomAnchor6 = [v41 bottomAnchor];
  v51 = [topAnchor6 constraintEqualToAnchor:bottomAnchor6];
  v122[9] = v51;
  bottomAnchor7 = [v48 bottomAnchor];
  topAnchor7 = [v42 topAnchor];
  v54 = [bottomAnchor7 constraintEqualToAnchor:topAnchor7];
  v122[10] = v54;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:11];
  [v79 activateConstraints:v55];
}

- (WFRecipientFieldViewController)init
{
  v16.receiver = self;
  v16.super_class = WFRecipientFieldViewController;
  v2 = [(WFRecipientFieldViewController *)&v16 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CFBC80]) initWithStyle:1];
    autocompleteResultsController = v2->_autocompleteResultsController;
    v2->_autocompleteResultsController = v3;

    [(CNAutocompleteResultsTableViewController *)v2->_autocompleteResultsController setDelegate:v2];
    v2->_contactAuthorizationStatus = WFCNContactAuthorizationStatus();
    v5 = [MEMORY[0x277CBDAB8] storeWithOptions:11];
    contactStore = v2->_contactStore;
    v2->_contactStore = v5;

    v7 = objc_alloc_init(MEMORY[0x277CFBC58]);
    fetchContext = v2->_fetchContext;
    v2->_fetchContext = v7;

    [(CNAutocompleteFetchContext *)v2->_fetchContext setPredictsBasedOnOutgoingInteraction:1];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    searchResults = v2->_searchResults;
    v2->_searchResults = v9;

    navigationItem = [(WFRecipientFieldViewController *)v2 navigationItem];
    v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v2 action:sel_cancel_];
    [navigationItem setLeftBarButtonItem:v12];

    v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v2 action:sel_done_];
    [navigationItem setRightBarButtonItem:v13];

    v14 = v2;
  }

  return v2;
}

@end