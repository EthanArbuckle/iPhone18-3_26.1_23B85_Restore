@interface PMSharedAccountsGroupMemberPickerViewController
- (BOOL)_atleastOneRecipientIneligibleForSharing:(id)a3;
- (BOOL)_cachedIsRecipientEligible:(id)a3;
- (BOOL)_doesGroupOnlyContainKnownContacts:(id)a3;
- (BOOL)_hasEligibilityCachedForRecipient:(id)a3;
- (BOOL)_isAddressAlreadyPartOfGroupOrInvitedAddresses:(id)a3;
- (BOOL)_isEveryMemberInContactsGroupAlreadyInSharingGroup:(id)a3;
- (BOOL)_isEveryRecipientEligibleForSharing:(id)a3;
- (BOOL)_isEveryRecipientIneligibleForSharing:(id)a3;
- (PMSharedAccountsGroupMemberPickerViewController)initWithAlreadyAddedAddresses:(id)a3;
- (PMSharedAccountsGroupMemberPickerViewControllerDelegate)delegate;
- (id)_eligibleRecipientsFromRecipients:(id)a3;
- (id)_recipientsWithEligibleAddressesAsDefaultAddressesIfPossible:(id)a3;
- (unint64_t)presentationOptionsForRecipient:(id)a3;
- (void)_addMembersButtonPressed;
- (void)_addRecipient:(id)a3;
- (void)_cancelButtonPressed;
- (void)_fetchEligibilityForRecipient:(id)a3 completionHandler:(id)a4;
- (void)_handleSelectionForMultipleRecipientsInGroup:(id)a3;
- (void)_handleSelectionForSingleRecipient:(id)a3;
- (void)_presentAlertForIneligileRecipient:(id)a3;
- (void)_presentAlertWhenAllRecipientAreIneligible;
- (void)_presentAlertWhenSubsetOfRecipientsAreIneligible:(id)a3;
- (void)_resetSearchQuery;
- (void)_updatePreferredHandleForRecipientIfNecessary:(id)a3;
- (void)_updateRecipientTextViewHeight;
- (void)autocompleteResultsController:(id)a3 didRequestInfoAboutRecipient:(id)a4;
- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5;
- (void)autocompleteResultsController:(id)a3 tintColorForRecipient:(id)a4 completion:(id)a5;
- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 textDidChange:(id)a4;
- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4;
- (void)finishedSearchingForAutocompleteResults;
- (void)viewDidLoad;
@end

@implementation PMSharedAccountsGroupMemberPickerViewController

- (PMSharedAccountsGroupMemberPickerViewController)initWithAlreadyAddedAddresses:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PMSharedAccountsGroupMemberPickerViewController;
  v5 = [(PMSharedAccountsGroupMemberPickerViewController *)&v29 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v5 action:sel__cancelButtonPressed];
    v7 = [(PMSharedAccountsGroupMemberPickerViewController *)v5 navigationItem];
    [v7 setLeftBarButtonItem:v6];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v5 action:sel__addMembersButtonPressed];
    v9 = _WBSLocalizedString();
    [v8 setAccessibilityLabel:v9];

    v10 = [(PMSharedAccountsGroupMemberPickerViewController *)v5 navigationItem];
    [v10 setRightBarButtonItem:v8];

    v11 = [(PMSharedAccountsGroupMemberPickerViewController *)v5 navigationItem];
    v12 = [v11 rightBarButtonItem];
    [v12 setEnabled:0];

    v13 = _WBSLocalizedString();
    v14 = [(PMSharedAccountsGroupMemberPickerViewController *)v5 navigationItem];
    [v14 setTitle:v13];

    v15 = [objc_alloc(MEMORY[0x277CFBC98]) initWithAutocompleteSearchType:1];
    contactsSearchManager = v5->_contactsSearchManager;
    v5->_contactsSearchManager = v15;

    [(CNAutocompleteSearchManager *)v5->_contactsSearchManager setSearchTypes:3];
    [(CNAutocompleteSearchManager *)v5->_contactsSearchManager setShouldIncludeGroupResults:1];
    v17 = [MEMORY[0x277CBEB58] set];
    addressesThatHaveBeenFetched = v5->_addressesThatHaveBeenFetched;
    v5->_addressesThatHaveBeenFetched = v17;

    v19 = [v4 copy];
    alreadyAddedAddresses = v5->_alreadyAddedAddresses;
    v5->_alreadyAddedAddresses = v19;

    v21 = [MEMORY[0x277CBEB38] dictionary];
    addressToEligibility = v5->_addressToEligibility;
    v5->_addressToEligibility = v21;

    v23 = [MEMORY[0x277CBEB58] set];
    addressesCurrentlyBeingCheckedForAvailability = v5->_addressesCurrentlyBeingCheckedForAvailability;
    v5->_addressesCurrentlyBeingCheckedForAvailability = v23;

    v25 = [MEMORY[0x277CBEB38] dictionary];
    otherRecipientsAwaitingEligibilityForAddress = v5->_otherRecipientsAwaitingEligibilityForAddress;
    v5->_otherRecipientsAwaitingEligibilityForAddress = v25;

    v27 = v5;
  }

  return v5;
}

- (void)viewDidLoad
{
  v45[8] = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = PMSharedAccountsGroupMemberPickerViewController;
  [(PMSharedAccountsGroupMemberPickerViewController *)&v44 viewDidLoad];
  v3 = [(PMSharedAccountsGroupMemberPickerViewController *)self view];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = objc_alloc_init(MEMORY[0x277CFBCB0]);
  recipientTextView = self->_recipientTextView;
  self->_recipientTextView = v5;

  [(CNComposeRecipientTextView *)self->_recipientTextView setDelegate:self];
  [(CNComposeRecipientTextView *)self->_recipientTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNComposeRecipientTextView *)self->_recipientTextView setShowsAddButtonWhenExpanded:0];
  v7 = _WBSLocalizedString();
  [(CNComposeRecipientTextView *)self->_recipientTextView setLabel:v7];

  [v3 addSubview:self->_recipientTextView];
  v8 = objc_alloc_init(MEMORY[0x277CFBC80]);
  contactsResultsTableViewController = self->_contactsResultsTableViewController;
  self->_contactsResultsTableViewController = v8;

  [(CNAutocompleteResultsTableViewController *)self->_contactsResultsTableViewController setDelegate:self];
  v10 = [(CNAutocompleteResultsTableViewController *)self->_contactsResultsTableViewController view];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(CNAutocompleteResultsTableViewController *)self->_contactsResultsTableViewController view];
  v11 = v43 = v3;
  [v3 addSubview:?];
  v12 = [(CNComposeRecipientTextView *)self->_recipientTextView heightAnchor];
  [MEMORY[0x277CFBCB0] preferredHeight];
  v13 = [v12 constraintEqualToConstant:?];
  recipientTextViewHeightConstraint = self->_recipientTextViewHeightConstraint;
  self->_recipientTextViewHeightConstraint = v13;

  v15 = [v3 safeAreaLayoutGuide];
  v33 = MEMORY[0x277CCAAD0];
  v42 = [(CNComposeRecipientTextView *)self->_recipientTextView topAnchor];
  v41 = [v15 topAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v45[0] = v40;
  v39 = [(CNComposeRecipientTextView *)self->_recipientTextView leadingAnchor];
  v38 = [v15 leadingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v45[1] = v37;
  v36 = [(CNComposeRecipientTextView *)self->_recipientTextView trailingAnchor];
  v35 = [v15 trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v16 = self->_recipientTextViewHeightConstraint;
  v45[2] = v34;
  v45[3] = v16;
  v17 = v11;
  v31 = [v11 bottomAnchor];
  v30 = [v15 bottomAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v45[4] = v29;
  v28 = [v11 leadingAnchor];
  v27 = [v15 leadingAnchor];
  v18 = [v28 constraintEqualToAnchor:v27];
  v45[5] = v18;
  v32 = v11;
  v19 = [v11 trailingAnchor];
  v20 = [v15 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v45[6] = v21;
  v22 = [v17 topAnchor];
  v23 = [(CNComposeRecipientTextView *)self->_recipientTextView bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v45[7] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:8];
  [v33 activateConstraints:v25];

  [(PMSharedAccountsGroupMemberPickerViewController *)self _resetSearchQuery];
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_addMembersButtonPressed
{
  v5 = [(CNComposeRecipientTextView *)self->_recipientTextView recipients];
  if ([(PMSharedAccountsGroupMemberPickerViewController *)self _isEveryRecipientIneligibleForSharing:?])
  {
    if ([v5 count] != 1)
    {
      [(PMSharedAccountsGroupMemberPickerViewController *)self _presentAlertWhenAllRecipientAreIneligible];
      goto LABEL_9;
    }

    WeakRetained = [v5 firstObject];
    [(PMSharedAccountsGroupMemberPickerViewController *)self _presentAlertForIneligileRecipient:WeakRetained];
  }

  else
  {
    if ([(PMSharedAccountsGroupMemberPickerViewController *)self _atleastOneRecipientIneligibleForSharing:v5])
    {
      [(PMSharedAccountsGroupMemberPickerViewController *)self _presentAlertWhenSubsetOfRecipientsAreIneligible:v5];
      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [(PMSharedAccountsGroupMemberPickerViewController *)self _eligibleRecipientsFromRecipients:v5];
    [WeakRetained memberPickerViewController:self addedRecipients:v4];
  }

LABEL_9:
}

- (void)_cancelButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained memberPickerViewController:self addedRecipients:0];
}

- (BOOL)_doesGroupOnlyContainKnownContacts:(id)a3
{
  v3 = [a3 children];
  v4 = [v3 safari_allObjectsPassTest:&__block_literal_global_2];

  return v4;
}

BOOL __86__PMSharedAccountsGroupMemberPickerViewController__doesGroupOnlyContainKnownContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contact];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_isEveryMemberInContactsGroupAlreadyInSharingGroup:(id)a3
{
  v4 = [a3 children];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __102__PMSharedAccountsGroupMemberPickerViewController__isEveryMemberInContactsGroupAlreadyInSharingGroup___block_invoke;
  v6[3] = &unk_27831CC28;
  v6[4] = self;
  LOBYTE(self) = [v4 safari_allObjectsPassTest:v6];

  return self;
}

uint64_t __102__PMSharedAccountsGroupMemberPickerViewController__isEveryMemberInContactsGroupAlreadyInSharingGroup___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 normalizedAddress];
  v4 = [v2 _isAddressAlreadyPartOfGroupOrInvitedAddresses:v3];

  return v4;
}

- (BOOL)_isAddressAlreadyPartOfGroupOrInvitedAddresses:(id)a3
{
  v4 = a3;
  v5 = [(CNComposeRecipientTextView *)self->_recipientTextView uncommentedAddresses];
  v6 = ([v5 containsObject:v4] & 1) != 0 || -[NSSet containsObject:](self->_alreadyAddedAddresses, "containsObject:", v4);

  return v6;
}

- (BOOL)_hasEligibilityCachedForRecipient:(id)a3
{
  v4 = a3;
  v5 = [v4 children];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 children];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__PMSharedAccountsGroupMemberPickerViewController__hasEligibilityCachedForRecipient___block_invoke;
    v12[3] = &unk_27831CC28;
    v12[4] = self;
    v8 = [v7 safari_allObjectsPassTest:v12];
  }

  else
  {
    addressToEligibility = self->_addressToEligibility;
    v7 = [v4 normalizedAddress];

    v10 = [(NSMutableDictionary *)addressToEligibility objectForKeyedSubscript:v7];
    v8 = v10 != 0;
  }

  return v8;
}

BOOL __85__PMSharedAccountsGroupMemberPickerViewController__hasEligibilityCachedForRecipient___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [a2 normalizedAddress];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_isEveryRecipientEligibleForSharing:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __87__PMSharedAccountsGroupMemberPickerViewController__isEveryRecipientEligibleForSharing___block_invoke;
  v4[3] = &unk_27831CC28;
  v4[4] = self;
  return [a3 safari_allObjectsPassTest:v4];
}

uint64_t __87__PMSharedAccountsGroupMemberPickerViewController__isEveryRecipientEligibleForSharing___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [a2 normalizedAddress];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isEveryRecipientIneligibleForSharing:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __89__PMSharedAccountsGroupMemberPickerViewController__isEveryRecipientIneligibleForSharing___block_invoke;
  v4[3] = &unk_27831CC28;
  v4[4] = self;
  return [a3 safari_allObjectsPassTest:v4];
}

uint64_t __89__PMSharedAccountsGroupMemberPickerViewController__isEveryRecipientIneligibleForSharing___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [a2 normalizedAddress];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_atleastOneRecipientIneligibleForSharing:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __92__PMSharedAccountsGroupMemberPickerViewController__atleastOneRecipientIneligibleForSharing___block_invoke;
  v4[3] = &unk_27831CC28;
  v4[4] = self;
  return [a3 safari_containsObjectPassingTest:v4];
}

uint64_t __92__PMSharedAccountsGroupMemberPickerViewController__atleastOneRecipientIneligibleForSharing___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [a2 normalizedAddress];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_eligibleRecipientsFromRecipients:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__PMSharedAccountsGroupMemberPickerViewController__eligibleRecipientsFromRecipients___block_invoke;
  v5[3] = &unk_27831CC28;
  v5[4] = self;
  v3 = [a3 safari_filterObjectsUsingBlock:v5];

  return v3;
}

uint64_t __85__PMSharedAccountsGroupMemberPickerViewController__eligibleRecipientsFromRecipients___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [a2 normalizedAddress];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_fetchEligibilityForRecipient:(id)a3 completionHandler:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v31 = a4;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [v6 children];
  v9 = [v8 count];

  v10 = v6;
  if (v9)
  {
    v11 = [v6 children];
    v12 = [v11 safari_mapObjectsUsingBlock:&__block_literal_global_29];
    [v7 addObjectsFromArray:v12];
  }

  else
  {
    v11 = [v6 normalizedAddress];
    [v7 addObject:v11];
  }

  v13 = [v7 allObjects];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __99__PMSharedAccountsGroupMemberPickerViewController__fetchEligibilityForRecipient_completionHandler___block_invoke_2;
  v41[3] = &unk_27831CC70;
  v41[4] = self;
  v30 = [v13 safari_filterObjectsUsingBlock:v41];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v7;
  v14 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v37 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_addressesCurrentlyBeingCheckedForAvailability containsObject:v18])
        {
          v19 = [(NSMutableDictionary *)self->_otherRecipientsAwaitingEligibilityForAddress objectForKeyedSubscript:v18];

          if (v19)
          {
            v20 = [(NSMutableDictionary *)self->_otherRecipientsAwaitingEligibilityForAddress objectForKeyedSubscript:v18];
            [v20 addObject:v10];
          }

          else
          {
            v20 = [MEMORY[0x277CBEB18] arrayWithObject:v10];
            [(NSMutableDictionary *)self->_otherRecipientsAwaitingEligibilityForAddress setObject:v20 forKeyedSubscript:v18];
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v15);
  }

  [(NSMutableSet *)self->_addressesCurrentlyBeingCheckedForAvailability addObjectsFromArray:v30];
  [(CNComposeRecipientTextView *)self->_recipientTextView invalidateAtomPresentationOptionsForRecipient:v10];
  [(NSMutableSet *)self->_addressesThatHaveBeenFetched addObjectsFromArray:v30];
  v21 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    addressesThatHaveBeenFetched = self->_addressesThatHaveBeenFetched;
    v23 = v21;
    v24 = [(NSMutableSet *)addressesThatHaveBeenFetched count];
    *buf = 134217984;
    v43 = v24;
    _os_log_impl(&dword_21C6E5000, v23, OS_LOG_TYPE_DEFAULT, "PMSharedAccountsGroupMemberPickerViewController has tried to fetch %lu unique handles so far.", buf, 0xCu);
  }

  v25 = [MEMORY[0x277CDBD30] sharedInstance];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __99__PMSharedAccountsGroupMemberPickerViewController__fetchEligibilityForRecipient_completionHandler___block_invoke_33;
  v33[3] = &unk_27831CCC0;
  v33[4] = self;
  v34 = v30;
  v35 = v10;
  v36 = v31;
  v26 = v10;
  v27 = v31;
  v28 = v30;
  [v25 checkAvailabilityForHandles:v28 completion:v33];

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __99__PMSharedAccountsGroupMemberPickerViewController__fetchEligibilityForRecipient_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 1024) objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(*(a1 + 32) + 1056) containsObject:v3] ^ 1;
  }

  return v5;
}

void __99__PMSharedAccountsGroupMemberPickerViewController__fetchEligibilityForRecipient_completionHandler___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__PMSharedAccountsGroupMemberPickerViewController__fetchEligibilityForRecipient_completionHandler___block_invoke_2_34;
  v10[3] = &unk_27831CC98;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v7;
  v12 = v6;
  v15 = *(a1 + 56);
  v13 = v5;
  v14 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t __99__PMSharedAccountsGroupMemberPickerViewController__fetchEligibilityForRecipient_completionHandler___block_invoke_2_34(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 1056);
  v3 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  [v2 minusSet:v3];

  if (*(a1 + 48))
  {
    v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __99__PMSharedAccountsGroupMemberPickerViewController__fetchEligibilityForRecipient_completionHandler___block_invoke_2_34_cold_1((a1 + 48), v4);
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = *(a1 + 40);
    v22 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v22)
    {
      v21 = *v28;
      *&v5 = 138739971;
      v19 = v5;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v27 + 1) + 8 * i);
          v8 = [*(a1 + 56) objectForKeyedSubscript:{v7, v19}];
          if (v8)
          {
            [*(*(a1 + 32) + 1024) setObject:v8 forKeyedSubscript:v7];
            if ([v8 BOOLValue])
            {
              [MEMORY[0x277D75348] tintColor];
            }

            else
            {
              [MEMORY[0x277D75348] secondaryLabelColor];
            }
            v10 = ;
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v11 = [*(*(a1 + 32) + 1072) objectForKeyedSubscript:v7];
            v12 = [v11 countByEnumeratingWithState:&v23 objects:v33 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v24;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v24 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  [*(*(a1 + 32) + 992) setTintColor:v10 forRecipient:*(*(&v23 + 1) + 8 * j)];
                }

                v13 = [v11 countByEnumeratingWithState:&v23 objects:v33 count:16];
              }

              while (v13);
            }

            v16 = [*(*(a1 + 32) + 1072) objectForKeyedSubscript:v7];
            [v16 removeAllObjects];
          }

          else
          {
            v9 = WBS_LOG_CHANNEL_PREFIXPasswords();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              *buf = v19;
              v32 = v7;
              _os_log_error_impl(&dword_21C6E5000, v9, OS_LOG_TYPE_ERROR, "No result returned from KCSharing availability check for handle: %{sensitive}@. Considering this handle ineligible.", buf, 0xCu);
            }

            v10 = [MEMORY[0x277CCABB0] numberWithBool:0];
            [*(*(a1 + 32) + 1024) setObject:v10 forKeyedSubscript:v7];
          }
        }

        v22 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v22);
    }

    [*(a1 + 32) _updatePreferredHandleForRecipientIfNecessary:*(a1 + 64)];
    [*(*(a1 + 32) + 1000) invalidateAtomPresentationOptionsForRecipient:*(a1 + 64)];
  }

  result = (*(*(a1 + 72) + 16))();
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleSelectionForSingleRecipient:(id)a3
{
  v4 = a3;
  v5 = [v4 normalizedAddress];
  v6 = [(PMSharedAccountsGroupMemberPickerViewController *)self _isAddressAlreadyPartOfGroupOrInvitedAddresses:v5];

  if (!v6)
  {
    [(PMSharedAccountsGroupMemberPickerViewController *)self _addRecipient:v4];
  }

  v7 = [(CNComposeRecipientTextView *)self->_recipientTextView atomViewForRecipient:v4];
  if ([(PMSharedAccountsGroupMemberPickerViewController *)self _hasEligibilityCachedForRecipient:v4])
  {
    if ([(PMSharedAccountsGroupMemberPickerViewController *)self _cachedIsRecipientEligible:v4])
    {
      [MEMORY[0x277D75348] tintColor];
    }

    else
    {
      [MEMORY[0x277D75348] grayColor];
    }
    v9 = ;
    [v7 setTintColor:v9];

    [(CNComposeRecipientTextView *)self->_recipientTextView invalidateAtomPresentationOptionsForRecipient:v4];
  }

  else
  {
    v8 = [MEMORY[0x277D75348] grayColor];
    [v7 setTintColor:v8];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__PMSharedAccountsGroupMemberPickerViewController__handleSelectionForSingleRecipient___block_invoke;
    v10[3] = &unk_27831CCE8;
    v11 = v7;
    v12 = self;
    v13 = v4;
    [(PMSharedAccountsGroupMemberPickerViewController *)self _fetchEligibilityForRecipient:v13 completionHandler:v10];
  }
}

void __86__PMSharedAccountsGroupMemberPickerViewController__handleSelectionForSingleRecipient___block_invoke(uint64_t a1)
{
  if ([*(a1 + 40) _cachedIsRecipientEligible:*(a1 + 48)])
  {
    [MEMORY[0x277D75348] tintColor];
  }

  else
  {
    [MEMORY[0x277D75348] grayColor];
  }
  v2 = ;
  [*(a1 + 32) setTintColor:v2];
}

- (void)_handleSelectionForMultipleRecipientsInGroup:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a3 children];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PMSharedAccountsGroupMemberPickerViewController *)self _handleSelectionForSingleRecipient:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_addRecipient:(id)a3
{
  [(CNComposeRecipientTextView *)self->_recipientTextView addRecipient:a3];
  [(PMSharedAccountsGroupMemberPickerViewController *)self _resetSearchQuery];
  v4 = [(PMSharedAccountsGroupMemberPickerViewController *)self navigationItem];
  v5 = [v4 rightBarButtonItem];
  [v5 setEnabled:1];

  [(PMSharedAccountsGroupMemberPickerViewController *)self _updateRecipientTextViewHeight];
}

- (void)_updateRecipientTextViewHeight
{
  v3 = [(CNComposeRecipientTextView *)self->_recipientTextView textView];
  [v3 contentSize];
  v5 = v4;

  [MEMORY[0x277CFBCB0] preferredHeight];
  if (v6 <= v5)
  {
    v6 = v5;
  }

  v7 = v6;
  [(NSLayoutConstraint *)self->_recipientTextViewHeightConstraint constant];
  if (v8 != v7)
  {
    recipientTextViewHeightConstraint = self->_recipientTextViewHeightConstraint;

    [(NSLayoutConstraint *)recipientTextViewHeightConstraint setConstant:v7];
  }
}

- (void)_resetSearchQuery
{
  [(CNComposeRecipientTextView *)self->_recipientTextView clearText];
  [(CNAutocompleteResultsTableViewController *)self->_contactsResultsTableViewController setRecipients:MEMORY[0x277CBEBF8]];
  v3 = [(CNAutocompleteSearchManager *)self->_contactsSearchManager searchForText:&stru_282E5F078 consumer:self];
}

- (BOOL)_cachedIsRecipientEligible:(id)a3
{
  v4 = a3;
  v5 = [v4 children];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 children];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __78__PMSharedAccountsGroupMemberPickerViewController__cachedIsRecipientEligible___block_invoke;
    v14[3] = &unk_27831CC28;
    v14[4] = self;
    v8 = [v7 safari_containsObjectPassingTest:v14];

    return v8;
  }

  else
  {
    addressToEligibility = self->_addressToEligibility;
    v11 = [v4 normalizedAddress];

    v12 = [(NSMutableDictionary *)addressToEligibility objectForKeyedSubscript:v11];
    v13 = [v12 BOOLValue];

    return v13;
  }
}

uint64_t __78__PMSharedAccountsGroupMemberPickerViewController__cachedIsRecipientEligible___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [a2 normalizedAddress];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)_updatePreferredHandleForRecipientIfNecessary:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(PMSharedAccountsGroupMemberPickerViewController *)self _cachedIsRecipientEligible:v4])
    {
      addressToEligibility = self->_addressToEligibility;
      v6 = [v4 normalizedAddress];
      v7 = [(NSMutableDictionary *)addressToEligibility objectForKeyedSubscript:v6];
      v8 = [v7 BOOLValue];

      if ((v8 & 1) == 0)
      {
        v9 = [v4 children];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __97__PMSharedAccountsGroupMemberPickerViewController__updatePreferredHandleForRecipientIfNecessary___block_invoke;
        v11[3] = &unk_27831CC28;
        v11[4] = self;
        v10 = [v9 safari_firstObjectPassingTest:v11];

        [(CNAutocompleteResultsTableViewController *)self->_contactsResultsTableViewController setPreferredRecipient:v10 forRecipient:v4];
      }
    }
  }
}

uint64_t __97__PMSharedAccountsGroupMemberPickerViewController__updatePreferredHandleForRecipientIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = [a2 normalizedAddress];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)_presentAlertForIneligileRecipient:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = _WBSLocalizedString();
  v7 = [v5 displayString];
  v8 = [v4 stringWithFormat:v6, v7];

  v9 = [v5 displayString];

  v10 = [PMOngoingCredentialSharingStrings unableToInviteContactBecauseOfUnsupportedDevicesAlertMessageWithContactName:v9];

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v10 preferredStyle:1];
  v12 = MEMORY[0x277D750F8];
  v13 = _WBSLocalizedString();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__PMSharedAccountsGroupMemberPickerViewController__presentAlertForIneligileRecipient___block_invoke;
  v15[3] = &unk_27831CD10;
  v15[4] = self;
  v14 = [v12 actionWithTitle:v13 style:0 handler:v15];
  [v11 addAction:v14];

  [(PMSharedAccountsGroupMemberPickerViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)_presentAlertWhenAllRecipientAreIneligible
{
  v3 = MEMORY[0x277CCACA8];
  v4 = _WBSLocalizedString();
  v5 = [v3 stringWithFormat:v4];

  v6 = +[PMOngoingCredentialSharingStrings unableToInviteAllParticipantsBecauseOfUnsupportedDevicesAlertMessage];
  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:v5 message:v6 preferredStyle:1];
  v8 = MEMORY[0x277D750F8];
  v9 = _WBSLocalizedString();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__PMSharedAccountsGroupMemberPickerViewController__presentAlertWhenAllRecipientAreIneligible__block_invoke;
  v11[3] = &unk_27831CD10;
  v11[4] = self;
  v10 = [v8 actionWithTitle:v9 style:0 handler:v11];
  [v7 addAction:v10];

  [(PMSharedAccountsGroupMemberPickerViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_presentAlertWhenSubsetOfRecipientsAreIneligible:(id)a3
{
  v4 = a3;
  v5 = _WBSLocalizedString();
  v6 = +[PMOngoingCredentialSharingStrings unableToInviteMultipleContactsBecauseOfUnsupportedDevicesAlertMessage];
  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:v5 message:v6 preferredStyle:1];
  v8 = MEMORY[0x277D750F8];
  v9 = _WBSLocalizedString();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __100__PMSharedAccountsGroupMemberPickerViewController__presentAlertWhenSubsetOfRecipientsAreIneligible___block_invoke;
  v16[3] = &unk_27831CD38;
  v16[4] = self;
  v17 = v4;
  v10 = v4;
  v11 = [v8 actionWithTitle:v9 style:0 handler:v16];
  [v7 addAction:v11];

  v12 = MEMORY[0x277D750F8];
  v13 = _WBSLocalizedString();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__PMSharedAccountsGroupMemberPickerViewController__presentAlertWhenSubsetOfRecipientsAreIneligible___block_invoke_2;
  v15[3] = &unk_27831CD10;
  v15[4] = self;
  v14 = [v12 actionWithTitle:v13 style:1 handler:v15];
  [v7 addAction:v14];

  [(PMSharedAccountsGroupMemberPickerViewController *)self presentViewController:v7 animated:1 completion:0];
}

void __100__PMSharedAccountsGroupMemberPickerViewController__presentAlertWhenSubsetOfRecipientsAreIneligible___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _eligibleRecipientsFromRecipients:*(a1 + 40)];
  if ([v3 count])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1088));
    [WeakRetained memberPickerViewController:*(a1 + 32) addedRecipients:v3];
  }
}

- (void)autocompleteResultsController:(id)a3 tintColorForRecipient:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(PMSharedAccountsGroupMemberPickerViewController *)self _hasEligibilityCachedForRecipient:v7])
  {
    if ([(PMSharedAccountsGroupMemberPickerViewController *)self _cachedIsRecipientEligible:v7])
    {
      [MEMORY[0x277D75348] tintColor];
    }

    else
    {
      [MEMORY[0x277D75348] secondaryLabelColor];
    }
    v10 = ;
    v8[2](v8, v10);
  }

  else
  {
    v9 = [MEMORY[0x277D75348] secondaryLabelColor];
    v8[2](v8, v9);

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __114__PMSharedAccountsGroupMemberPickerViewController_autocompleteResultsController_tintColorForRecipient_completion___block_invoke;
    v11[3] = &unk_27831CD60;
    v13 = v8;
    v11[4] = self;
    v12 = v7;
    [(PMSharedAccountsGroupMemberPickerViewController *)self _fetchEligibilityForRecipient:v12 completionHandler:v11];
  }
}

void __114__PMSharedAccountsGroupMemberPickerViewController_autocompleteResultsController_tintColorForRecipient_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if ([*(a1 + 32) _cachedIsRecipientEligible:*(a1 + 40)])
  {
    [MEMORY[0x277D75348] tintColor];
  }

  else
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }
  v2 = ;
  (*(v1 + 16))(v1);
}

- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PMSharedAccountsGroupMemberPickerViewController *)self _handleSelectionForMultipleRecipientsInGroup:v6];
  }

  else
  {
    [(PMSharedAccountsGroupMemberPickerViewController *)self _handleSelectionForSingleRecipient:v6];
  }

  [(PMSharedAccountsGroupMemberPickerViewController *)self _resetSearchQuery];
}

- (void)autocompleteResultsController:(id)a3 didRequestInfoAboutRecipient:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 contact];

  v7 = MEMORY[0x277CBDC48];
  if (v6)
  {
    v8 = [v5 contact];

    v18 = [v7 viewControllerForContact:v8];

    v9 = [(PMSharedAccountsGroupMemberPickerViewController *)self navigationController];
    [v9 pushViewController:v18 animated:1];

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = MEMORY[0x277CBDA58];
    v12 = [v5 normalizedAddress];

    v19[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v14 = [v11 contactWithDisplayName:0 handleStrings:v13];
    v15 = [v7 viewControllerForUnknownContact:v14];

    v16 = [(PMSharedAccountsGroupMemberPickerViewController *)self navigationController];
    [v16 pushViewController:v15 animated:1];

    v17 = *MEMORY[0x277D85DE8];
  }
}

- (void)composeRecipientView:(id)a3 textDidChange:(id)a4
{
  v7 = a4;
  if (self->_currentSearchTaskID)
  {
    [(CNAutocompleteSearchManager *)self->_contactsSearchManager cancelTaskWithID:?];
  }

  v5 = [(CNAutocompleteSearchManager *)self->_contactsSearchManager searchForText:v7 consumer:self];
  currentSearchTaskID = self->_currentSearchTaskID;
  self->_currentSearchTaskID = v5;
}

- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4
{
  v5 = [(CNComposeRecipientTextView *)self->_recipientTextView recipients:a3];
  v6 = [v5 count] != 0;
  v7 = [(PMSharedAccountsGroupMemberPickerViewController *)self navigationItem];
  v8 = [v7 rightBarButtonItem];
  [v8 setEnabled:v6];

  [(PMSharedAccountsGroupMemberPickerViewController *)self _updateRecipientTextViewHeight];
}

- (unint64_t)presentationOptionsForRecipient:(id)a3
{
  v4 = a3;
  addressesCurrentlyBeingCheckedForAvailability = self->_addressesCurrentlyBeingCheckedForAvailability;
  v6 = [v4 address];
  LOBYTE(addressesCurrentlyBeingCheckedForAvailability) = [(NSMutableSet *)addressesCurrentlyBeingCheckedForAvailability containsObject:v6];

  if (addressesCurrentlyBeingCheckedForAvailability)
  {
    v7 = 4;
  }

  else if ([(PMSharedAccountsGroupMemberPickerViewController *)self _cachedIsRecipientEligible:v4])
  {
    v7 = 0;
  }

  else
  {
    v7 = 0x20000;
  }

  return v7;
}

- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4
{
  v5 = [a3 mutableCopy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__PMSharedAccountsGroupMemberPickerViewController_consumeAutocompleteSearchResults_taskID___block_invoke;
  v7[3] = &unk_27831CD88;
  v7[4] = self;
  [v5 safari_removeObjectsPassingTest:v7];
  v6 = [(PMSharedAccountsGroupMemberPickerViewController *)self _recipientsWithEligibleAddressesAsDefaultAddressesIfPossible:v5];
  [(CNAutocompleteResultsTableViewController *)self->_contactsResultsTableViewController setRecipients:v6];
}

uint64_t __91__PMSharedAccountsGroupMemberPickerViewController_consumeAutocompleteSearchResults_taskID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([*(a1 + 32) _doesGroupOnlyContainKnownContacts:v3])
    {
      v4 = [*(a1 + 32) _isEveryMemberInContactsGroupAlreadyInSharingGroup:v3];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v5 = [v3 contact];
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [v3 normalizedAddress];
      v4 = [v6 _isAddressAlreadyPartOfGroupOrInvitedAddresses:v7];
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)_recipientsWithEligibleAddressesAsDefaultAddressesIfPossible:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mutableCopy];
  if ([v4 count])
  {
    v6 = 0;
    v22 = v4;
    v23 = v5;
    do
    {
      v7 = [v5 objectAtIndex:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v7;
        v8 = [v7 children];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v26;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v26 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v25 + 1) + 8 * i);
              addressToEligibility = self->_addressToEligibility;
              v16 = [v14 normalizedAddress];
              v17 = [(NSMutableDictionary *)addressToEligibility objectForKeyedSubscript:v16];
              v18 = [v17 BOOLValue];

              if (v18)
              {
                v19 = [objc_alloc(MEMORY[0x277CFBCB8]) initWithChildren:v9 defaultChild:v14];
                v5 = v23;
                [v23 replaceObjectAtIndex:v6 withObject:v19];

                goto LABEL_14;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
            v5 = v23;
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_14:

        v4 = v22;
        v7 = v24;
      }

      ++v6;
    }

    while (v6 < [v4 count]);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)finishedSearchingForAutocompleteResults
{
  currentSearchTaskID = self->_currentSearchTaskID;
  self->_currentSearchTaskID = 0;
  MEMORY[0x2821F96F8]();
}

- (PMSharedAccountsGroupMemberPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __99__PMSharedAccountsGroupMemberPickerViewController__fetchEligibilityForRecipient_completionHandler___block_invoke_2_34_cold_1(void **a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 safari_privacyPreservingDescription];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_21C6E5000, v3, OS_LOG_TYPE_ERROR, "Failed to check recipient eligibility for shared account groups with error: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end