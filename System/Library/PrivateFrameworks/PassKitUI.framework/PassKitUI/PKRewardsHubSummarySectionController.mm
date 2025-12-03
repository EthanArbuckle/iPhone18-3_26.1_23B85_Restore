@interface PKRewardsHubSummarySectionController
- (BOOL)_hasFooterForSection:(id)section;
- (Class)supplementaryRegistrationClassForKind:(id)kind sectionIdentifier:(id)identifier;
- (PKRewardsHubSummarySectionController)initWithSectionIdentifiers:(id)identifiers rewardsFetcher:(id)fetcher paymentDataProvider:(id)provider showRewardsGraph:(BOOL)graph delegate:(id)delegate;
- (id)_cellPresenterIdentifierForItem:(id)item;
- (id)_collectionView;
- (id)_createPresenterForSection:(id)section;
- (id)_sectionIdentifierForItem:(id)item;
- (id)cellRegistrationForItem:(id)item;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_configureFooterView:(id)view inSection:(id)section;
- (void)_configureHeaderView:(id)view inSection:(id)section;
- (void)_reloadDataAndUpdateDelegate;
- (void)_reloadDataWithCompletion:(id)completion;
- (void)_setCornerMaskForCell:(id)cell indexPath:(id)path section:(id)section;
- (void)_setItems:(id)items forSection:(id)section;
- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier;
- (void)dealloc;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
@end

@implementation PKRewardsHubSummarySectionController

- (PKRewardsHubSummarySectionController)initWithSectionIdentifiers:(id)identifiers rewardsFetcher:(id)fetcher paymentDataProvider:(id)provider showRewardsGraph:(BOOL)graph delegate:(id)delegate
{
  v40 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  fetcherCopy = fetcher;
  providerCopy = provider;
  delegateCopy = delegate;
  v38.receiver = self;
  v38.super_class = PKRewardsHubSummarySectionController;
  v17 = [(PKRewardsHubSummarySectionController *)&v38 init];
  v18 = v17;
  if (v17)
  {
    v33 = fetcherCopy;
    objc_storeStrong(&v17->_identifiers, identifiers);
    v18->_showRewardsGraph = graph;
    objc_storeStrong(&v18->_rewardsFetcher, fetcher);
    v18->_summaryFetchLock._os_unfair_lock_opaque = 0;
    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pendingCompletionHandlers = v18->_pendingCompletionHandlers;
    v18->_pendingCompletionHandlers = v19;

    objc_storeStrong(&v18->_paymentDataProvider, provider);
    [(PKPaymentDataProvider *)v18->_paymentDataProvider addDelegate:v18];
    objc_storeWeak(&v18->_delegate, delegateCopy);
    v21 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    sectionIDToPresenterMap = v18->_sectionIDToPresenterMap;
    v18->_sectionIDToPresenterMap = v21;

    v23 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    sectionIDToItemsMap = v18->_sectionIDToItemsMap;
    v18->_sectionIDToItemsMap = v23;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = identifiersCopy;
    v26 = [v25 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v35;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v34 + 1) + 8 * i);
          v31 = [(PKRewardsHubSummarySectionController *)v18 _createPresenterForSection:v30];
          [(NSMutableDictionary *)v18->_sectionIDToPresenterMap setObject:v31 forKey:v30];
        }

        v27 = [v25 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v27);
    }

    fetcherCopy = v33;
  }

  return v18;
}

- (void)dealloc
{
  [(PKPaymentDataProvider *)self->_paymentDataProvider removeDelegate:self];
  v3.receiver = self;
  v3.super_class = PKRewardsHubSummarySectionController;
  [(PKRewardsHubSummarySectionController *)&v3 dealloc];
}

- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view
{
  v22 = *MEMORY[0x1E69E9840];
  traitCopy = trait;
  toTraitCopy = toTrait;
  viewCopy = view;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues = [(NSMutableDictionary *)self->_sectionIDToPresenterMap allValues];
  v12 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 traitCollectionDidChangeFromTrait:traitCopy toTrait:toTraitCopy inCollectionView:viewCopy];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v19[1] = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (!self->_showRewardsGraph)
  {
LABEL_10:
    v12 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
    v14 = [(PKRewardsHubSummarySectionController *)self _itemsForSection:v8];
    v15 = v14;
    if (v14)
    {
      array = v14;
    }

    else
    {
      array = [MEMORY[0x1E695DEC8] array];
    }

    v17 = array;

    [v12 appendItems:v17];
    goto LABEL_14;
  }

  v9 = identifierCopy;
  v10 = v9;
  if (@"PKRewardsHubSectionLifetimeSummary" == v9)
  {

    goto LABEL_8;
  }

  if (!v9 || !@"PKRewardsHubSectionLifetimeSummary")
  {

    goto LABEL_10;
  }

  v11 = [(__CFString *)v9 isEqualToString:@"PKRewardsHubSectionLifetimeSummary"];

  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_8:
  v12 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v19[0] = self->_lifetimeSummary;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v12 appendItems:v13];

LABEL_14:

  return v12;
}

- (id)cellRegistrationForItem:(id)item
{
  itemCopy = item;
  if (self->_showRewardsGraph)
  {
    v5 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:&__block_literal_global_182];
  }

  else
  {
    v6 = objc_opt_class();
    v7 = [(PKRewardsHubSummarySectionController *)self _sectionIdentifierForItem:itemCopy];
    v8 = [(PKRewardsHubSummarySectionController *)self _presenterForSection:v7];
    if (v8)
    {
      v9 = [(PKRewardsHubSummarySectionController *)self _cellPresenterIdentifierForItem:itemCopy];
      collectionViewCellClasses = [v8 collectionViewCellClasses];
      v11 = [collectionViewCellClasses objectForKey:v9];

      if (v6 && ([v6 isSubclassOfClass:objc_opt_class()] & 1) != 0)
      {
        v6 = v11;
      }
    }

    _collectionView = [(PKRewardsHubSummarySectionController *)self _collectionView];
    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69DC800];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __64__PKRewardsHubSummarySectionController_cellRegistrationForItem___block_invoke_2;
    v18[3] = &unk_1E801EEE8;
    objc_copyWeak(&v22, &location);
    v14 = v8;
    v19 = v14;
    v15 = _collectionView;
    v20 = v15;
    v16 = v7;
    v21 = v16;
    v5 = [v13 registrationWithCellClass:v6 configurationHandler:v18];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __64__PKRewardsHubSummarySectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  [v6 performSelector:NSSelectorFromString(&cfstr_Configurewithr.isa) withObject:v5];
}

void __64__PKRewardsHubSummarySectionController_cellRegistrationForItem___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = *(a1 + 32);
  v11 = [v8 wrappedItem];

  [v10 updateCell:v12 forItem:v11 inCollectionView:*(a1 + 40) atIndexPath:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [WeakRetained _setCornerMaskForCell:v12 indexPath:v7 section:*(a1 + 48)];
  }
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  v6 = MEMORY[0x1E69DC7E0];
  identifierCopy = identifier;
  environmentCopy = environment;
  v9 = [[v6 alloc] initWithAppearance:2];
  LODWORD(v6) = [(PKRewardsHubSummarySectionController *)self _hasHeaderForSection:identifierCopy];
  LODWORD(self) = [(PKRewardsHubSummarySectionController *)self _hasFooterForSection:identifierCopy];

  [v9 setHeaderMode:v6];
  [v9 setFooterMode:self];
  v10 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v9 layoutEnvironment:environmentCopy];

  [v9 setHeaderTopPadding:0.0];
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  if (self)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 16.0;
  }

  [v10 setContentInsets:{0.0, v11, v12, v11}];

  return v10;
}

- (Class)supplementaryRegistrationClassForKind:(id)kind sectionIdentifier:(id)identifier
{
  kindCopy = kind;
  identifierCopy = identifier;
  v7 = *MEMORY[0x1E69DDC08];
  v8 = kindCopy;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v8 || !v7)
    {

LABEL_9:
      v11 = *MEMORY[0x1E69DDC00];
      v12 = v9;
      v13 = v12;
      if (v11 != v12 && v9 && v11)
      {
        [v12 isEqualToString:v11];
      }

      else
      {
      }

      goto LABEL_14;
    }

    v10 = [v8 isEqualToString:v7];

    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_14:
  v14 = objc_opt_class();

  return v14;
}

- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier
{
  registrationCopy = registration;
  kindCopy = kind;
  identifierCopy = identifier;
  v10 = *MEMORY[0x1E69DDC08];
  v11 = kindCopy;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    v13 = v11;
    if (!v11)
    {
      goto LABEL_12;
    }

    v13 = v11;
    if (!v10)
    {
      goto LABEL_12;
    }

    v14 = [(__CFString *)v11 isEqualToString:v10];

    if (!v14)
    {
LABEL_13:
      if (self->_showRewardsGraph)
      {
        v17 = identifierCopy;
        v18 = @"PKRewardsHubSectionLifetimeSummary";
        v19 = v18;
        if (v18 == v17)
        {
          v20 = 1;
        }

        else
        {
          v20 = 0;
          if (v17 && v18)
          {
            v20 = [(__CFString *)v17 isEqualToString:v18];
          }
        }
      }

      else
      {
        v20 = 0;
      }

      v21 = identifierCopy;
      v22 = v21;
      if (@"PKRewardsHubSectionDateRangeSummary" == v21)
      {
      }

      else
      {
        v23 = 0;
        if (v21 && @"PKRewardsHubSectionDateRangeSummary")
        {
          v23 = [(__CFString *)v21 isEqualToString:@"PKRewardsHubSectionDateRangeSummary"];
        }

        if (((v20 | v23) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      [(PKRewardsHubSummarySectionController *)self _configureFooterView:registrationCopy inSection:v22];
      goto LABEL_32;
    }
  }

  v15 = identifierCopy;
  v13 = v15;
  if (@"PKRewardsHubSectionLifetimeSummary" == v15)
  {

    goto LABEL_20;
  }

  if (!v15 || !@"PKRewardsHubSectionLifetimeSummary")
  {
LABEL_12:

    goto LABEL_13;
  }

  v16 = [(__CFString *)v15 isEqualToString:@"PKRewardsHubSectionLifetimeSummary"];

  if (!v16)
  {
    goto LABEL_13;
  }

LABEL_20:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PKRewardsHubSummarySectionController *)self _configureHeaderView:registrationCopy inSection:v13];
  }

LABEL_32:
}

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  transactionType = [transactionCopy transactionType];
  transactionStatus = [transactionCopy transactionStatus];
  if (!transactionType && (transactionStatus & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    rewardsTotalAmount = [transactionCopy rewardsTotalAmount];
    v11 = rewardsTotalAmount;
    if (rewardsTotalAmount && ([rewardsTotalAmount pk_isZeroNumber] & 1) == 0 && -[PKRewardsSummaryFetcher isTransactionSourceIdentifierRelevant:](self->_rewardsFetcher, "isTransactionSourceIdentifierRelevant:", identifierCopy))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __90__PKRewardsHubSummarySectionController_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
      block[3] = &unk_1E8010970;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)_configureHeaderView:(id)view inSection:(id)section
{
  viewCopy = view;
  [objc_opt_class() defaultHorizontalInset];
  [viewCopy setHorizontalInset:?];
  [viewCopy setUseCompactTopInset:0];
}

- (BOOL)_hasFooterForSection:(id)section
{
  v17 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  v5 = @"PKRewardsHubSectionLifetimeSummary";
  v6 = v5;
  if (v5 == sectionCopy)
  {

    goto LABEL_7;
  }

  if (!sectionCopy || !v5)
  {

    goto LABEL_9;
  }

  v7 = [(__CFString *)sectionCopy isEqualToString:v5];

  if (v7)
  {
LABEL_7:
    showRewardsGraph = self->_showRewardsGraph;
    goto LABEL_20;
  }

LABEL_9:
  v9 = sectionCopy;
  v10 = @"PKRewardsHubSectionDateRangeSummary";
  v11 = v10;
  if (v10 == v9)
  {

    goto LABEL_15;
  }

  if (sectionCopy && v10)
  {
    v12 = [(__CFString *)v9 isEqualToString:v10];

    if ((v12 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_15:
    showRewardsGraph = 1;
    goto LABEL_20;
  }

LABEL_17:
  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Unrecognized section identifier in rewards hub: %@", &v15, 0xCu);
  }

  showRewardsGraph = 0;
LABEL_20:

  return showRewardsGraph;
}

- (void)_configureFooterView:(id)view inSection:(id)section
{
  v23[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  sectionCopy = section;
  [objc_opt_class() defaultHorizontalInset];
  [viewCopy setHorizontalInset:?];
  v8 = sectionCopy;
  v9 = v8;
  if (@"PKRewardsHubSectionDateRangeSummary" == v8)
  {
LABEL_13:

LABEL_14:
    v14 = PKLocalizedFeatureString();
    v15 = PKLocalizedFeatureString();
    [viewCopy setBottomInsetType:{2, v14}];
    [viewCopy setFooterText:v15];
    linkColor = [MEMORY[0x1E69DC888] linkColor];
    [viewCopy setLinkTextColor:linkColor];

    objc_initWeak(&location, self);
    v17 = [PKTextRangeHyperlink alloc];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__PKRewardsHubSummarySectionController__configureFooterView_inSection___block_invoke;
    v20[3] = &unk_1E8010998;
    objc_copyWeak(&v21, &location);
    v18 = [(PKTextRangeHyperlink *)v17 initWithLinkText:v14 action:v20];
    v23[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [viewCopy setSources:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);

    goto LABEL_15;
  }

  if (v8 && @"PKRewardsHubSectionDateRangeSummary")
  {
    v10 = [(__CFString *)v8 isEqualToString:@"PKRewardsHubSectionDateRangeSummary"];

    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  if (self->_showRewardsGraph)
  {
    v11 = v9;
    if (@"PKRewardsHubSectionLifetimeSummary" != v11)
    {
      v12 = v11;
      if (!v9 || !@"PKRewardsHubSectionLifetimeSummary")
      {

        goto LABEL_15;
      }

      v13 = [(__CFString *)v11 isEqualToString:@"PKRewardsHubSectionLifetimeSummary"];

      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
}

void __71__PKRewardsHubSummarySectionController__configureFooterView_inSection___block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 5);
    if (v3)
    {
      v4 = *MEMORY[0x1E69BA6F0];
      v5 = *MEMORY[0x1E69BA440];
      v8[0] = *MEMORY[0x1E69BA680];
      v8[1] = v5;
      v6 = *MEMORY[0x1E69BA8D0];
      v9[0] = v4;
      v9[1] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
      [v3 reportEventIfNecessary:v7];

      [v3 presentEducationViewController];
    }
  }
}

- (void)_setCornerMaskForCell:(id)cell indexPath:(id)path section:(id)section
{
  cellCopy = cell;
  sectionCopy = section;
  v9 = [path row];
  if (self->_showRewardsGraph)
  {
    v10 = 0;
    v11 = 3;
  }

  else
  {
    v12 = v9;
    v13 = v9 != 0;
    v14 = [(PKRewardsHubSummarySectionController *)self _itemsForSection:sectionCopy];
    v15 = [v14 count];
    v10 = v12 != v15 - 1;
    v16 = v12 != v15 - 1 || v13;
    v17 = v16 == 0;
    v18 = 3;
    if (!v17)
    {
      v18 = 1;
    }

    if (v12)
    {
      v11 = 2 * (v12 == v15 - 1);
    }

    else
    {
      v11 = v18;
    }
  }

  [cellCopy setMaskType:v11];
  [cellCopy setShowsBottomSeparator:v10];
}

- (id)_createPresenterForSection:(id)section
{
  v18 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  v4 = @"PKRewardsHubSectionLifetimeSummary";
  v5 = v4;
  if (v4 == sectionCopy)
  {

    goto LABEL_7;
  }

  if (!sectionCopy || !v4)
  {

    goto LABEL_9;
  }

  v6 = [(__CFString *)sectionCopy isEqualToString:v4];

  if (v6)
  {
LABEL_7:
    v7 = objc_alloc_init(PKDashboardBalancePresenter);
    v8 = v7;
    v9 = 0;
LABEL_16:
    [(PKDashboardBalancePresenter *)v7 setCellStyle:v9];
    goto LABEL_21;
  }

LABEL_9:
  v10 = sectionCopy;
  v11 = @"PKRewardsHubSectionDateRangeSummary";
  v12 = v11;
  if (v11 == v10)
  {

LABEL_15:
    v7 = objc_alloc_init(PKDashboardBalanceSummaryItemPresenter);
    v8 = v7;
    v9 = 1;
    goto LABEL_16;
  }

  if (sectionCopy && v11)
  {
    v13 = [(__CFString *)v10 isEqualToString:v11];

    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_18:
  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v10;
    _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Unrecognized section identifier in rewards hub: %@", &v16, 0xCu);
  }

  v8 = 0;
LABEL_21:

  return v8;
}

- (void)_setItems:(id)items forSection:(id)section
{
  itemsCopy = items;
  sectionCopy = section;
  if (sectionCopy)
  {
    [(NSMutableDictionary *)self->_sectionIDToItemsMap removeObjectForKey:sectionCopy];
    if (itemsCopy)
    {
      [(NSMutableDictionary *)self->_sectionIDToItemsMap setObject:itemsCopy forKey:sectionCopy];
    }
  }
}

- (id)_sectionIdentifierForItem:(id)item
{
  v11 = *MEMORY[0x1E69E9840];
  wrappedItem = [item wrappedItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = PKRewardsHubSectionLifetimeSummary;
LABEL_5:
    v5 = *v4;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = PKRewardsHubSectionDateRangeSummary;
    goto LABEL_5;
  }

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = objc_opt_class();
    v7 = v10;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Unrecognized item type for rewards hub summary: %@", &v9, 0xCu);
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)_cellPresenterIdentifierForItem:(id)item
{
  v11 = *MEMORY[0x1E69E9840];
  wrappedItem = [item wrappedItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = &PKDashboardBalancePresenterIdentifier;
LABEL_5:
    v5 = *v4;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = PKDashboardBalanceSummaryItemPresenterIdentifier;
    goto LABEL_5;
  }

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = objc_opt_class();
    v7 = v10;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Unrecognized item type for rewards hub summary: %@", &v9, 0xCu);
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)_collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->_delegate), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    rewardsHubCollectionView = [v7 rewardsHubCollectionView];
  }

  else
  {
    rewardsHubCollectionView = 0;
  }

  return rewardsHubCollectionView;
}

- (void)_reloadDataAndUpdateDelegate
{
  v3 = self->_lifetimeSummary;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PKRewardsHubSummarySectionController__reloadDataAndUpdateDelegate__block_invoke;
  v5[3] = &unk_1E80113B0;
  objc_copyWeak(&v7, &location);
  v4 = v3;
  v6 = v4;
  [(PKRewardsHubSummarySectionController *)self _reloadDataWithCompletion:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __68__PKRewardsHubSummarySectionController__reloadDataAndUpdateDelegate__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && a2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68__PKRewardsHubSummarySectionController__reloadDataAndUpdateDelegate__block_invoke_2;
    v5[3] = &unk_1E80110E0;
    objc_copyWeak(&v7, (a1 + 40));
    v6 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v5);

    objc_destroyWeak(&v7);
  }
}

void __68__PKRewardsHubSummarySectionController__reloadDataAndUpdateDelegate__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained[4];
  if ((PKEqualObjects() & 1) == 0)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 5);
    if (objc_opt_respondsToSelector())
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v4 = WeakRetained[10];
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v10;
        do
        {
          v8 = 0;
          do
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [v3 reloadDataForSectionIdentifier:*(*(&v9 + 1) + 8 * v8++) animated:{1, v9}];
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v6);
      }
    }
  }
}

- (void)_reloadDataWithCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_summaryFetchLock);
  if (self->_summaryFetchInProgress)
  {
    self->_transactionsNeedUpdate = 1;
    pendingCompletionHandlers = self->_pendingCompletionHandlers;
    v6 = _Block_copy(completionCopy);
    [(NSMutableSet *)pendingCompletionHandlers pk_safelyAddObject:v6];

    os_unfair_lock_unlock(&self->_summaryFetchLock);
  }

  else
  {
    self->_summaryFetchInProgress = 1;
    v7 = self->_pendingCompletionHandlers;
    v8 = _Block_copy(completionCopy);
    [(NSMutableSet *)v7 pk_safelyAddObject:v8];

    os_unfair_lock_unlock(&self->_summaryFetchLock);
    objc_initWeak(&location, self);
    rewardsFetcher = self->_rewardsFetcher;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__PKRewardsHubSummarySectionController__reloadDataWithCompletion___block_invoke;
    v10[3] = &unk_1E801EF38;
    objc_copyWeak(&v12, &location);
    v11 = completionCopy;
    [(PKRewardsSummaryFetcher *)rewardsFetcher rewardsTierSummariesWithCompletion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __66__PKRewardsHubSummarySectionController__reloadDataWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PKRewardsHubSummarySectionController__reloadDataWithCompletion___block_invoke_2;
  block[3] = &unk_1E801EF10;
  objc_copyWeak(&v19, (a1 + 40));
  v10 = *(a1 + 32);
  v15 = v9;
  v16 = v7;
  v17 = v8;
  v18 = v10;
  v11 = v8;
  v12 = v7;
  v13 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v19);
}

void __66__PKRewardsHubSummarySectionController__reloadDataWithCompletion___block_invoke_2(uint64_t a1)
{
  v33[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 4, *(a1 + 32));
    v4 = objc_alloc_init(PKDashboardBalanceItem);
    v5 = [*(a1 + 32) totalCurrencyAmount];
    v6 = [v5 formattedStringValue];
    [(PKDashboardBalanceItem *)v4 setBalance:v6];

    v7 = PKLocalizedFeatureString();
    [(PKDashboardBalanceItem *)v4 setTitle:v7];

    v8 = [[_PKDashboardItemWrapper alloc] initWithDashboardItem:v4];
    v9 = objc_alloc_init(PKDashboardBalanceSummaryItem);
    [(PKDashboardBalanceSummaryItem *)v9 setType:19];
    v10 = [*(a1 + 40) totalCurrencyAmount];
    [(PKDashboardBalanceSummaryItem *)v9 setRewardsCurrencyAmount:v10];

    v11 = [[_PKDashboardItemWrapper alloc] initWithDashboardItem:v9];
    v12 = objc_alloc_init(PKDashboardBalanceSummaryItem);
    [(PKDashboardBalanceSummaryItem *)v12 setType:20];
    v13 = [*(a1 + 48) totalCurrencyAmount];
    [(PKDashboardBalanceSummaryItem *)v12 setRewardsCurrencyAmount:v13];

    v14 = [[_PKDashboardItemWrapper alloc] initWithDashboardItem:v12];
    v26 = v8;
    v33[0] = v8;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    [v3 _setItems:v15 forSection:@"PKRewardsHubSectionLifetimeSummary"];

    v25 = v11;
    v32[0] = v11;
    v32[1] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    [v3 _setItems:v16 forSection:@"PKRewardsHubSectionDateRangeSummary"];

    os_unfair_lock_lock(v3 + 12);
    v17 = *(v3 + 53);
    *(v3 + 26) = 0;
    v18 = [v3[7] copy];
    [v3[7] removeAllObjects];
    os_unfair_lock_unlock(v3 + 12);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          (*(*(*(&v27 + 1) + 8 * i) + 16))();
        }

        v21 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v21);
    }

    if (v17)
    {
      [v3 _reloadData];
    }
  }

  else
  {
    v24 = *(a1 + 56);
    if (v24)
    {
      (*(v24 + 16))(v24, 0);
    }
  }
}

@end