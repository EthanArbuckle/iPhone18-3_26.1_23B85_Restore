@interface WFRecipientFieldViewController
- (BOOL)hasActiveSearch;
- (CNAutocompleteSearchManager)searchManager;
- (CNComposeRecipientTextView)composeTextView;
- (NSArray)entries;
- (NSArray)recipients;
- (NSString)fieldLabel;
- (WFRecipientFieldViewController)init;
- (WFRecipientFieldViewControllerDelegate)delegate;
- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4;
- (unint64_t)preferredSearchResultTypes;
- (void)_addSearchResults:(id)a3 forTask:(id)a4;
- (void)_cancelActiveSearchClearingText:(BOOL)a3;
- (void)_finishedSearching;
- (void)_presentContactViewControllerForRecipient:(id)a3;
- (void)_resetSearchResults;
- (void)_startSearch:(id)a3;
- (void)_updateFetchContextChosenAddresses;
- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5;
- (void)cancel:(id)a3;
- (void)commitRemainingText;
- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4;
- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4;
- (void)composeRecipientViewDidFinishPickingRecipient:(id)a3;
- (void)composeRecipientViewRequestAddRecipient:(id)a3;
- (void)configureBackgroundView;
- (void)dealloc;
- (void)done:(id)a3;
- (void)finishedTaskWithID:(id)a3;
- (void)loadView;
- (void)requestContactAuthorization;
- (void)requestContactsAccessIfNeeded;
- (void)setEntries:(id)a3;
- (void)setRecipients:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
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
    v3 = [(WFRecipientFieldViewController *)self contactStore];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __63__WFRecipientFieldViewController_requestContactsAccessIfNeeded__block_invoke;
    v4[3] = &unk_279EDC2B0;
    v4[4] = self;
    [v3 requestAccessForEntityType:0 completionHandler:v4];
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
    v3 = [(WFRecipientFieldViewController *)self currentSearchTerm];
    v4 = [v3 length];

    if (!v4)
    {
      v6 = [(WFRecipientFieldViewController *)self tableBackgroundView];
      v7 = [(WFRecipientFieldViewController *)self autocompleteResultsController];
      v8 = [v7 tableView];
      [v8 setBackgroundView:v6];

      if ([(WFRecipientFieldViewController *)self contactAuthorizationStatus])
      {
        if ([(WFRecipientFieldViewController *)self contactAuthorizationStatus]!= 2)
        {
          if ([(WFRecipientFieldViewController *)self contactAuthorizationStatus]!= 1)
          {
            return;
          }

          v18 = WFLocalizedString(@"Shortcuts doesn't have access to your contacts.");
          v19 = [(WFRecipientFieldViewController *)self contactAuthorizationMessageLabel];
          [v19 setText:v18];

          v16 = [(WFRecipientFieldViewController *)self contactAuthorizationStatusButton];
          v20 = v16;
          v17 = 1;
          goto LABEL_12;
        }

        v9 = WFLocalizedString(@"To see suggestions while you type, grant access in Settings.");
        v10 = [(WFRecipientFieldViewController *)self contactAuthorizationMessageLabel];
        [v10 setText:v9];

        v11 = [(WFRecipientFieldViewController *)self contactAuthorizationStatusButton];
        v12 = @"Shortcuts Settings";
      }

      else
      {
        v13 = WFLocalizedString(@"Shortcuts needs access to your contacts to provide suggestions while you type.");
        v14 = [(WFRecipientFieldViewController *)self contactAuthorizationMessageLabel];
        [v14 setText:v13];

        v11 = [(WFRecipientFieldViewController *)self contactAuthorizationStatusButton];
        v12 = @"Allow";
      }

      v15 = WFLocalizedString(v12);
      [v11 setTitle:v15 forState:0];

      v16 = [(WFRecipientFieldViewController *)self contactAuthorizationStatusButton];
      v20 = v16;
      v17 = 0;
LABEL_12:
      [v16 setHidden:v17];
      goto LABEL_4;
    }
  }

  v20 = [(WFRecipientFieldViewController *)self autocompleteResultsController];
  v5 = [v20 tableView];
  [v5 setBackgroundView:0];

LABEL_4:
}

- (void)requestContactAuthorization
{
  if ([(WFRecipientFieldViewController *)self contactAuthorizationStatus])
  {
    if ([(WFRecipientFieldViewController *)self contactAuthorizationStatus]== 2)
    {
      v4 = [MEMORY[0x277CFC248] sharedContext];
      v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=SHORTCUTS"];
      [v4 openURL:v3];
    }
  }

  else
  {

    [(WFRecipientFieldViewController *)self requestContactsAccessIfNeeded];
  }
}

- (void)_updateFetchContextChosenAddresses
{
  v3 = [(CNComposeRecipientTextView *)self->_composeTextView uncommentedAddresses];
  [(CNAutocompleteFetchContext *)self->_fetchContext setOtherAddressesAlreadyChosen:v3];
}

- (void)_resetSearchResults
{
  v3 = [(WFRecipientFieldViewController *)self searchResults];
  [v3 removeAllObjects];

  v5 = [(WFRecipientFieldViewController *)self searchResults];
  v4 = [(WFRecipientFieldViewController *)self autocompleteResultsController];
  [v4 setRecipients:v5];
}

- (void)_cancelActiveSearchClearingText:(BOOL)a3
{
  if (a3)
  {
    v4 = [(WFRecipientFieldViewController *)self composeTextView];
    [v4 clearText];
  }

  if ([(WFRecipientFieldViewController *)self hasActiveSearch])
  {
    v5 = [(WFRecipientFieldViewController *)self searchManager];
    v6 = [(WFRecipientFieldViewController *)self lastSearchID];
    [v5 cancelTaskWithID:v6];
  }

  [(WFRecipientFieldViewController *)self _resetSearchResults];

  [(WFRecipientFieldViewController *)self setLastSearchID:0];
}

- (BOOL)hasActiveSearch
{
  v2 = [(WFRecipientFieldViewController *)self lastSearchID];
  v3 = v2 != 0;

  return v3;
}

- (void)_finishedSearching
{
  v3 = [(WFRecipientFieldViewController *)self searchResults];
  v4 = [v3 count];

  if (!v4)
  {

    [(WFRecipientFieldViewController *)self _resetSearchResults];
  }
}

- (void)_startSearch:(id)a3
{
  v7 = a3;
  [(WFRecipientFieldViewController *)self setCurrentSearchTerm:v7];
  [(WFRecipientFieldViewController *)self configureBackgroundView];
  [(WFRecipientFieldViewController *)self _cancelActiveSearchClearingText:0];
  v4 = [(WFRecipientFieldViewController *)self searchManager];
  v5 = [(WFRecipientFieldViewController *)self fetchContext];
  if (v7)
  {
    [v4 searchForText:v7 withAutocompleteFetchContext:v5 consumer:self];
  }

  else
  {
    [v4 searchForCorecipientsWithAutocompleteFetchContext:v5 consumer:self];
  }
  v6 = ;
  [(WFRecipientFieldViewController *)self setLastSearchID:v6];
}

- (void)_addSearchResults:(id)a3 forTask:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(WFRecipientFieldViewController *)self lastSearchID];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [v12 count];

    if (!v9)
    {
      goto LABEL_5;
    }

    v10 = [(WFRecipientFieldViewController *)self searchResults];
    [v10 addObjectsFromArray:v12];

    v7 = [(WFRecipientFieldViewController *)self searchResults];
    v11 = [(WFRecipientFieldViewController *)self autocompleteResultsController];
    [v11 setRecipients:v7];
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
    v5 = [MEMORY[0x277D75348] clearColor];
    [v4 setBackgroundColor:v5];

    [v4 setDelegate:self];
    v6 = [(WFRecipientFieldViewController *)self fieldLabel];
    [v4 setLabel:v6];

    [v4 setSeparatorHidden:0];
    v7 = self->_composeTextView;
    self->_composeTextView = v4;

    composeTextView = self->_composeTextView;
  }

  return composeTextView;
}

- (void)setRecipients:(id)a3
{
  v4 = a3;
  v5 = [(WFRecipientFieldViewController *)self composeTextView];
  [v5 setRecipients:v4];
}

- (NSArray)recipients
{
  v2 = [(WFRecipientFieldViewController *)self composeTextView];
  v3 = [v2 recipients];

  return v3;
}

- (CNAutocompleteSearchManager)searchManager
{
  searchManager = self->_searchManager;
  if (!searchManager)
  {
    v4 = [(WFRecipientFieldViewController *)self supportedPersonProperties];
    v5 = [v4 containsObject:&unk_288386A10];
    v6 = [v4 containsObject:&unk_288386A28];
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

- (void)_presentContactViewControllerForRecipient:(id)a3
{
  v4 = MEMORY[0x277CBDC48];
  v5 = [a3 contact];
  v8 = [v4 viewControllerForUnknownContact:v5];

  v6 = [(WFRecipientFieldViewController *)self contactStore];
  [v8 setContactStore:v6];

  [v8 setModalPresentationStyle:3];
  v7 = [(WFRecipientFieldViewController *)self navigationController];
  [v7 pushViewController:v8 animated:1];
}

- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5
{
  if (a4)
  {
    v7 = a4;
    [(WFRecipientFieldViewController *)self _cancelActiveSearchClearingText:1];
    v8 = [(WFRecipientFieldViewController *)self composeTextView];
    [v8 addRecipient:v7];

    v9 = [(WFRecipientFieldViewController *)self searchManager];
    [v9 didSelectRecipient:v7 atIndex:a5];

    [(WFRecipientFieldViewController *)self _updateFetchContextChosenAddresses];

    [(WFRecipientFieldViewController *)self _startSearch:0];
  }
}

- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CFC2B0] predictedTypeForHandleValue:v5 allowsCustomHandles:{-[WFRecipientFieldViewController allowsCustomHandles](self, "allowsCustomHandles")}];
  if (v6 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CFBCA0]) initWithContact:0 address:v5 kind:qword_2746607C0[v6]];
  }

  v8 = [v7 wf_contactFieldEntry];

  if (v8)
  {
    v8 = v7;
  }

  return v8;
}

- (void)composeRecipientViewDidFinishPickingRecipient:(id)a3
{
  v3 = [(WFRecipientFieldViewController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)composeRecipientViewRequestAddRecipient:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(WFContactPickerCoordinator);
  [(WFRecipientFieldViewController *)self setContactPickerCoordinator:v5];

  v6 = [(WFRecipientFieldViewController *)self supportedPersonProperties];
  v7 = [(WFRecipientFieldViewController *)self contactPickerCoordinator];
  [v7 setSupportedPersonProperties:v6];

  v8 = [(WFRecipientFieldViewController *)self navigationController];
  v9 = [(WFRecipientFieldViewController *)self contactPickerCoordinator];
  [v9 setPresentingViewController:v8];

  objc_initWeak(&location, self);
  v10 = [(WFRecipientFieldViewController *)self contactPickerCoordinator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__WFRecipientFieldViewController_composeRecipientViewRequestAddRecipient___block_invoke;
  v11[3] = &unk_279EDC260;
  objc_copyWeak(&v12, &location);
  [v10 presentContactPickerWithCompletionHandler:v11];

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

- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(WFRecipientFieldViewController *)self composeRecipientView:a3 composeRecipientForAddress:v6];
  v8 = [v7 wf_contactFieldEntry];

  if (v8)
  {
    v9 = [(WFRecipientFieldViewController *)self composeTextView];
    [v9 addRecipient:v7];
  }

  else
  {
    v9 = getWFGeneralLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[WFRecipientFieldViewController composeRecipientView:didFinishEnteringAddress:]";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_2743F0000, v9, OS_LOG_TYPE_ERROR, "%s Invalid compose recipient for: %@", &v10, 0x16u);
    }
  }

  [(WFRecipientFieldViewController *)self _cancelActiveSearchClearingText:1];
  [(WFRecipientFieldViewController *)self _updateFetchContextChosenAddresses];
}

- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4
{
  v5 = a4;
  v6 = [(WFRecipientFieldViewController *)self composeTextView];
  [v6 removeRecipient:v5];

  [(WFRecipientFieldViewController *)self _cancelActiveSearchClearingText:1];

  [(WFRecipientFieldViewController *)self _updateFetchContextChosenAddresses];
}

- (void)finishedTaskWithID:(id)a3
{
  v4 = a3;
  v5 = [(WFRecipientFieldViewController *)self lastSearchID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {

    [(WFRecipientFieldViewController *)self setLastSearchID:0];
  }
}

- (NSArray)entries
{
  v2 = [(WFRecipientFieldViewController *)self recipients];
  v3 = [v2 if_compactMap:&__block_literal_global_197];

  return v3;
}

- (void)setEntries:(id)a3
{
  v4 = [a3 if_map:&__block_literal_global_4734];
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
  v2 = [(WFRecipientFieldViewController *)self composeTextView];
  [v2 finishEnteringRecipient];
}

- (void)done:(id)a3
{
  v4 = [(WFRecipientFieldViewController *)self delegate];
  [v4 recipientViewControllerDidFinish:self cancelled:0];
}

- (void)cancel:(id)a3
{
  v4 = [(WFRecipientFieldViewController *)self delegate];
  [v4 recipientViewControllerDidFinish:self cancelled:1];
}

- (void)dealloc
{
  if (self->_composeTextView)
  {
    v3 = [(WFRecipientFieldViewController *)self composeTextView];
    [v3 setDelegate:0];
  }

  [(WFRecipientFieldViewController *)self _cancelActiveSearchClearingText:0];
  v4.receiver = self;
  v4.super_class = WFRecipientFieldViewController;
  [(WFRecipientFieldViewController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WFRecipientFieldViewController;
  [(WFRecipientFieldViewController *)&v4 viewDidAppear:a3];
  [(WFRecipientFieldViewController *)self requestContactsAccessIfNeeded];
  [(WFRecipientFieldViewController *)self _startSearch:0];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WFRecipientFieldViewController;
  [(WFRecipientFieldViewController *)&v4 viewDidLoad];
  [(WFRecipientFieldViewController *)self configureBackgroundView];
  v3 = [(WFRecipientFieldViewController *)self composeTextView];
  [v3 becomeFirstResponder];
}

- (void)loadView
{
  v124[9] = *MEMORY[0x277D85DE8];
  v121.receiver = self;
  v121.super_class = WFRecipientFieldViewController;
  [(WFRecipientFieldViewController *)&v121 loadView];
  v3 = [(WFRecipientFieldViewController *)self view];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(WFRecipientFieldViewController *)self composeTextView];
  [v3 addSubview:v5];
  v6 = [(CNAutocompleteResultsTableViewController *)self->_autocompleteResultsController tableView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setKeyboardDismissMode:1];
  v7 = v6;
  [v3 addSubview:v6];
  v8 = [v5 heightAnchor];
  [MEMORY[0x277CFBCB0] preferredHeight];
  v9 = [v8 constraintEqualToConstant:?];
  composeHeaderHeightConstraint = self->_composeHeaderHeightConstraint;
  self->_composeHeaderHeightConstraint = v9;

  v96 = MEMORY[0x277CCAAD0];
  v124[0] = self->_composeHeaderHeightConstraint;
  v116 = [v5 leadingAnchor];
  v114 = [v3 leadingAnchor];
  v112 = [v116 constraintEqualToAnchor:v114];
  v124[1] = v112;
  v110 = [v5 trailingAnchor];
  v108 = [v3 trailingAnchor];
  v106 = [v110 constraintEqualToAnchor:v108];
  v124[2] = v106;
  v104 = [v5 widthAnchor];
  v102 = [v3 widthAnchor];
  v100 = [v104 constraintEqualToAnchor:v102];
  v124[3] = v100;
  v120 = v5;
  v94 = [v5 topAnchor];
  v98 = [v3 safeAreaLayoutGuide];
  v92 = [v98 topAnchor];
  v90 = [v94 constraintEqualToAnchor:v92];
  v124[4] = v90;
  v88 = [v7 leadingAnchor];
  v86 = [v3 leadingAnchor];
  v84 = [v88 constraintEqualToAnchor:v86];
  v124[5] = v84;
  v82 = [v7 trailingAnchor];
  v119 = v3;
  v11 = [v3 trailingAnchor];
  v12 = [v82 constraintEqualToAnchor:v11];
  v124[6] = v12;
  v13 = v7;
  v118 = v7;
  v14 = [v7 topAnchor];
  v15 = [v5 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v124[7] = v16;
  v17 = [v13 bottomAnchor];
  v18 = [v3 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v124[8] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:9];
  [v96 activateConstraints:v20];

  v21 = objc_opt_new();
  [(WFRecipientFieldViewController *)self setTableBackgroundView:v21];

  v22 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  v23 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  [v23 setBackgroundColor:v22];

  v24 = objc_opt_new();
  [(WFRecipientFieldViewController *)self setContactAuthorizationMessageLabel:v24];

  v25 = [(WFRecipientFieldViewController *)self contactAuthorizationMessageLabel];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = [MEMORY[0x277D75348] secondaryLabelColor];
  v27 = [(WFRecipientFieldViewController *)self contactAuthorizationMessageLabel];
  [v27 setTextColor:v26];

  v28 = [(WFRecipientFieldViewController *)self contactAuthorizationMessageLabel];
  [v28 setTextAlignment:1];

  v29 = [(WFRecipientFieldViewController *)self contactAuthorizationMessageLabel];
  [v29 setNumberOfLines:0];

  v30 = MEMORY[0x277D75220];
  v31 = [MEMORY[0x277D75230] plainButtonConfiguration];
  v32 = [v30 buttonWithConfiguration:v31 primaryAction:0];
  [(WFRecipientFieldViewController *)self setContactAuthorizationStatusButton:v32];

  v33 = [(WFRecipientFieldViewController *)self contactAuthorizationStatusButton];
  [v33 addTarget:self action:sel_requestContactAuthorization forControlEvents:0x2000];

  v34 = objc_alloc(MEMORY[0x277D75A68]);
  v35 = [(WFRecipientFieldViewController *)self contactAuthorizationMessageLabel];
  v123[0] = v35;
  v36 = [(WFRecipientFieldViewController *)self contactAuthorizationStatusButton];
  v123[1] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:2];
  v38 = [v34 initWithArrangedSubviews:v37];

  v39 = v38;
  [v38 setAxis:1];
  [v38 setAlignment:3];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v38 setSpacing:8.0];
  v40 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  [v40 addSubview:v39];

  v41 = objc_alloc_init(MEMORY[0x277D756D0]);
  v42 = objc_alloc_init(MEMORY[0x277D756D0]);
  v43 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  [v43 addLayoutGuide:v41];

  v44 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  [v44 addLayoutGuide:v42];

  v79 = MEMORY[0x277CCAAD0];
  v115 = [v39 leadingAnchor];
  v117 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  v113 = [v117 layoutMarginsGuide];
  v111 = [v113 leadingAnchor];
  v109 = [v115 constraintEqualToAnchor:v111];
  v122[0] = v109;
  v105 = [v39 trailingAnchor];
  v107 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  v103 = [v107 layoutMarginsGuide];
  v101 = [v103 trailingAnchor];
  v99 = [v105 constraintEqualToAnchor:v101];
  v122[1] = v99;
  v95 = [v41 leadingAnchor];
  v97 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  v93 = [v97 layoutMarginsGuide];
  v91 = [v93 leadingAnchor];
  v89 = [v95 constraintEqualToAnchor:v91];
  v122[2] = v89;
  v85 = [v41 trailingAnchor];
  v87 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  v83 = [v87 layoutMarginsGuide];
  v81 = [v83 trailingAnchor];
  v80 = [v85 constraintEqualToAnchor:v81];
  v122[3] = v80;
  v77 = [v42 leadingAnchor];
  v78 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  v76 = [v78 layoutMarginsGuide];
  v75 = [v76 leadingAnchor];
  v74 = [v77 constraintEqualToAnchor:v75];
  v122[4] = v74;
  v70 = [v42 trailingAnchor];
  v71 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  v68 = [v71 layoutMarginsGuide];
  v67 = [v68 trailingAnchor];
  v66 = [v70 constraintEqualToAnchor:v67];
  v122[5] = v66;
  v65 = [v41 heightAnchor];
  v64 = [v42 heightAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v122[6] = v63;
  v73 = v41;
  v61 = [v41 topAnchor];
  v62 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  v60 = [v62 layoutMarginsGuide];
  v59 = [v60 topAnchor];
  v58 = [v61 constraintEqualToSystemSpacingBelowAnchor:v59 multiplier:1.0];
  v122[7] = v58;
  v57 = [(WFRecipientFieldViewController *)self tableBackgroundView];
  v56 = [v57 layoutMarginsGuide];
  v45 = [v56 bottomAnchor];
  v69 = v42;
  v46 = [v42 bottomAnchor];
  v47 = [v45 constraintEqualToSystemSpacingBelowAnchor:v46 multiplier:1.0];
  v122[8] = v47;
  v48 = v39;
  v72 = v39;
  v49 = [v39 topAnchor];
  v50 = [v41 bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  v122[9] = v51;
  v52 = [v48 bottomAnchor];
  v53 = [v42 topAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
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

    v11 = [(WFRecipientFieldViewController *)v2 navigationItem];
    v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v2 action:sel_cancel_];
    [v11 setLeftBarButtonItem:v12];

    v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v2 action:sel_done_];
    [v11 setRightBarButtonItem:v13];

    v14 = v2;
  }

  return v2;
}

@end