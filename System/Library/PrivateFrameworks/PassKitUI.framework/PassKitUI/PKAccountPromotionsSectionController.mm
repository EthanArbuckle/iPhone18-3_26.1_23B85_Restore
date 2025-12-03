@interface PKAccountPromotionsSectionController
- (BOOL)_updateImpressionCountForItem:(id)item shouldCountAsImpression:(BOOL)impression;
- (Class)supplementaryRegistrationClassForKind:(id)kind sectionIdentifier:(id)identifier;
- (PKAccountPromotionsSectionController)initWithSectionIdentifier:(id)identifier account:(id)account accountService:(id)service delegate:(id)delegate;
- (id)_promotionsWithDefaultOrdering;
- (id)_promotionsWithOrderingContext:(unint64_t)context;
- (id)itemsCopy;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)promotionForProgramIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_clearViewedPromotions;
- (void)_configureDataSource;
- (void)_reloadDataWithCompletion:(id)completion;
- (void)_updateImpressionCountsForAllItems:(id)items shouldCountAsImpression:(BOOL)impression;
- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier;
- (void)dealloc;
- (void)didUpdateAccountPromotions:(id)promotions accountIdentifier:(id)identifier;
- (void)preflightWithCompletion:(id)completion;
- (void)setItems:(id)items;
- (void)willDisplayItem:(id)item;
@end

@implementation PKAccountPromotionsSectionController

- (PKAccountPromotionsSectionController)initWithSectionIdentifier:(id)identifier account:(id)account accountService:(id)service delegate:(id)delegate
{
  v33[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountCopy = account;
  serviceCopy = service;
  delegateCopy = delegate;
  v32.receiver = self;
  v32.super_class = PKAccountPromotionsSectionController;
  v14 = [(PKAccountPromotionsSectionController *)&v32 init];
  if (v14)
  {
    v15 = @"PKRewardsHubSectionAccountPromotions";
    if (identifierCopy)
    {
      v15 = identifierCopy;
    }

    v33[0] = v15;
    v16 = MEMORY[0x1E695DEC8];
    v17 = v15;
    v18 = [v16 arrayWithObjects:v33 count:1];
    identifiers = v14->_identifiers;
    v14->_identifiers = v18;

    objc_storeStrong(&v14->_account, account);
    objc_storeStrong(&v14->_accountService, service);
    objc_storeWeak(&v14->_delegate, delegateCopy);
    array = [MEMORY[0x1E695DEC8] array];
    items = v14->_items;
    v14->_items = array;

    v14->_itemsLock._os_unfair_lock_opaque = 0;
    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    promotionsViewedSinceViewLoad = v14->_promotionsViewedSinceViewLoad;
    v14->_promotionsViewedSinceViewLoad = v22;

    v24 = objc_alloc_init(MEMORY[0x1E69B9128]);
    remoteImagePreparer = v14->_remoteImagePreparer;
    v14->_remoteImagePreparer = v24;

    v26 = [PKAccountPromotionsPresenter alloc];
    v27 = v14->_remoteImagePreparer;
    WeakRetained = objc_loadWeakRetained(&v14->_delegate);
    v29 = [(PKAccountPromotionsPresenter *)v26 initWithRemoteImagePreparer:v27 delegate:WeakRetained];
    presenter = v14->_presenter;
    v14->_presenter = v29;

    [(PKAccountPromotionsSectionController *)v14 _configureDataSource];
    [(PKAccountService *)v14->_accountService registerObserver:v14];
  }

  return v14;
}

- (void)dealloc
{
  [(PKAccountService *)self->_accountService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKAccountPromotionsSectionController;
  [(PKAccountPromotionsSectionController *)&v3 dealloc];
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  [(PKAccountPromotionsSectionController *)self _clearViewedPromotions];
  [(PKAccountPromotionsSectionController *)self _reloadDataWithCompletion:completionCopy];
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  os_unfair_lock_lock(&self->_itemsLock);
  items = self->_items;
  self->_items = itemsCopy;

  os_unfair_lock_unlock(&self->_itemsLock);
}

- (id)itemsCopy
{
  os_unfair_lock_lock(&self->_itemsLock);
  v3 = [(NSArray *)self->_items copy];
  os_unfair_lock_unlock(&self->_itemsLock);

  return v3;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  _promotionsWithDefaultOrdering = [(PKAccountPromotionsSectionController *)self _promotionsWithOrderingContext:100];
  if (!_promotionsWithDefaultOrdering)
  {
    _promotionsWithDefaultOrdering = [(PKAccountPromotionsSectionController *)self _promotionsWithDefaultOrdering];
  }

  os_unfair_lock_lock(&self->_itemsLock);
  v7 = [(PKAccountPromotionBehavior *)self->_promotionBehavior copy];
  os_unfair_lock_unlock(&self->_itemsLock);
  itemsCopy = [(PKAccountPromotionsSectionController *)self itemsCopy];
  [(PKAccountPromotionsSectionController *)self _updateImpressionCountsForAllItems:itemsCopy shouldCountAsImpression:0];
  date = [MEMORY[0x1E695DF00] date];
  [v7 timeVisibleAfterCompleted];
  v11 = v10;
  maxImpressionCount = [v7 maxImpressionCount];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__PKAccountPromotionsSectionController_snapshotWithPreviousSnapshot_forSectionIdentifier___block_invoke;
  v16[3] = &unk_1E8023060;
  v17 = date;
  v18 = v11;
  v19 = maxImpressionCount;
  v13 = date;
  v14 = [_promotionsWithDefaultOrdering pk_objectsPassingTest:v16];
  [v5 appendItems:v14];

  return v5;
}

BOOL __90__PKAccountPromotionsSectionController_snapshotWithPreviousSnapshot_forSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] > 4)
  {
    v6 = 0;
  }

  else
  {
    v4 = [v3 endDate];
    [*(a1 + 32) timeIntervalSinceDate:v4];
    v6 = v5 < *(a1 + 40);
  }

  v7 = [v3 impressionCount] < *(a1 + 48) && v6;

  return v7;
}

- (id)promotionForProgramIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    os_unfair_lock_lock(&self->_itemsLock);
    items = self->_items;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__PKAccountPromotionsSectionController_promotionForProgramIdentifier___block_invoke;
    v8[3] = &unk_1E8023088;
    v9 = identifierCopy;
    v6 = [(NSArray *)items pk_firstObjectPassingTest:v8];
    os_unfair_lock_unlock(&self->_itemsLock);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __70__PKAccountPromotionsSectionController_promotionForProgramIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 programIdentifier];
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v8 = 1;
  }

  else
  {
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v4 isEqualToString:v5];
    }
  }

  return v8;
}

- (void)_configureDataSource
{
  v3 = objc_opt_class();
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69DC800];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__PKAccountPromotionsSectionController__configureDataSource__block_invoke;
  v7[3] = &unk_1E80230B0;
  objc_copyWeak(&v8, &location);
  v5 = [v4 registrationWithCellClass:v3 configurationHandler:v7];
  cellRegistration = self->_cellRegistration;
  self->_cellRegistration = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __60__PKAccountPromotionsSectionController__configureDataSource__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[5] configureCell:v7 withPromotion:v6];
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19 = [MEMORY[0x1E6995558] fractionalWidthDimension:{environment, identifier, 1.0}];
  v4 = [MEMORY[0x1E6995558] estimatedDimension:500.0];
  v18 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v19 heightDimension:v4];
  v16 = [MEMORY[0x1E6995578] itemWithLayoutSize:v18];
  v17 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v5 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v17 heightDimension:v4];
  v6 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v5 repeatingSubitem:v16 count:1];
  v7 = [MEMORY[0x1E6995580] sectionWithGroup:v6];
  v8 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v9 = [MEMORY[0x1E6995558] estimatedDimension:40.0];
  v10 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v8 heightDimension:v9];
  v11 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v10 elementKind:@"PKAccountPromotionsHeaderIdentifier" alignment:1];
  v12 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v10 elementKind:@"PKAccountPromotionsFooterIdentifier" alignment:5];
  v20[0] = v11;
  v20[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  [v7 setBoundarySupplementaryItems:v13];

  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  [v7 setContentInsets:{0.0, v14, 0.0, v14}];
  [v7 setInterGroupSpacing:16.0];

  return v7;
}

- (Class)supplementaryRegistrationClassForKind:(id)kind sectionIdentifier:(id)identifier
{
  kindCopy = kind;
  identifierCopy = identifier;
  v7 = kindCopy;
  v8 = v7;
  if (v7 != @"PKAccountPromotionsHeaderIdentifier")
  {
    if (v7)
    {
      v9 = [(__CFString *)v7 isEqualToString:@"PKAccountPromotionsHeaderIdentifier"];

      if ((v9 & 1) == 0)
      {
        v10 = v8;
        if (v10 != @"PKAccountPromotionsFooterIdentifier")
        {
          v11 = v10;
          [(__CFString *)v10 isEqualToString:@"PKAccountPromotionsFooterIdentifier"];
        }
      }
    }
  }

  v12 = objc_opt_class();

  return v12;
}

- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier
{
  registrationCopy = registration;
  kindCopy = kind;
  identifierCopy = identifier;
  v9 = kindCopy;
  v10 = v9;
  if (v9 == @"PKAccountPromotionsHeaderIdentifier")
  {
    goto LABEL_4;
  }

  if (!v9)
  {
    goto LABEL_6;
  }

  v11 = [(__CFString *)v9 isEqualToString:@"PKAccountPromotionsHeaderIdentifier"];

  if (v11)
  {
LABEL_4:
    v12 = registrationCopy;
    v13 = PKLocalizedFeatureString();
    [v12 setTitle:v13];
LABEL_5:

    goto LABEL_6;
  }

  v14 = v10;
  if (v14 == @"PKAccountPromotionsFooterIdentifier" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"PKAccountPromotionsFooterIdentifier"], v15, v16))
  {
    v17 = registrationCopy;
    [v17 setBottomInsetType:2];
    [v17 setHorizontalAlignment:1];
    v13 = PKLocalizedFeatureString();
    [v17 setFooterText:v13];
    goto LABEL_5;
  }

LABEL_6:
}

- (void)willDisplayItem:(id)item
{
  itemCopy = item;
  if ([PKAccountPromotionsSectionController _updateImpressionCountForItem:"_updateImpressionCountForItem:shouldCountAsImpression:" shouldCountAsImpression:?])
  {
    accountService = self->_accountService;
    impressionCount = [itemCopy impressionCount];
    programIdentifier = [itemCopy programIdentifier];
    accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
    [(PKAccountService *)accountService updateImpressionCount:impressionCount promotionProgramIdentifier:programIdentifier accountIdentifier:accountIdentifier completion:0];
  }
}

- (void)_updateImpressionCountsForAllItems:(id)items shouldCountAsImpression:(BOOL)impression
{
  impressionCopy = impression;
  v19 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [itemsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v9 |= [(PKAccountPromotionsSectionController *)self _updateImpressionCountForItem:*(*(&v14 + 1) + 8 * i) shouldCountAsImpression:impressionCopy];
      }

      v8 = [itemsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
    if (v9)
    {
      accountService = self->_accountService;
      accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
      [(PKAccountService *)accountService updateImpressionCountsForPromotions:itemsCopy accountIdentifier:accountIdentifier completion:0];
    }
  }
}

- (BOOL)_updateImpressionCountForItem:(id)item shouldCountAsImpression:(BOOL)impression
{
  impressionCopy = impression;
  itemCopy = item;
  if (![itemCopy isInTerminalState])
  {
    if ([itemCopy impressionCount] >= 1)
    {
      [itemCopy resetImpressionCount];
      v11 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  if (!impressionCopy)
  {
    goto LABEL_11;
  }

  impressionCount = [itemCopy impressionCount];
  programIdentifier = [itemCopy programIdentifier];
  os_unfair_lock_lock(&self->_itemsLock);
  v9 = [(NSMutableSet *)self->_promotionsViewedSinceViewLoad containsObject:programIdentifier];
  [(NSMutableSet *)self->_promotionsViewedSinceViewLoad addObject:programIdentifier];
  os_unfair_lock_unlock(&self->_itemsLock);
  if (impressionCount)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if ((v10 & 1) == 0)
  {
    [itemCopy incrementImpressionCount];
  }

  v11 = v10 ^ 1;

LABEL_12:
  return v11;
}

- (id)_promotionsWithOrderingContext:(unint64_t)context
{
  v27 = *MEMORY[0x1E69E9840];
  if (context)
  {
    itemsCopy = [(PKAccountPromotionsSectionController *)self itemsCopy];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
    os_unfair_lock_lock(&self->_itemsLock);
    orderings = self->_orderings;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__PKAccountPromotionsSectionController__promotionsWithOrderingContext___block_invoke;
    v25[3] = &__block_descriptor_40_e33_B16__0__PKAccountEntityOrdering_8l;
    v25[4] = context;
    v8 = [(NSArray *)orderings pk_firstObjectPassingTest:v25];
    v9 = [v8 copy];
    os_unfair_lock_unlock(&self->_itemsLock);
    if (v9)
    {
      v19 = v9;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      ordering = [v9 ordering];
      v11 = [ordering countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(ordering);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __71__PKAccountPromotionsSectionController__promotionsWithOrderingContext___block_invoke_2;
            v20[3] = &unk_1E8023088;
            v20[4] = v15;
            v16 = [itemsCopy pk_firstObjectPassingTest:v20];
            [v6 safelyAddObject:v16];
          }

          v12 = [ordering countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v12);
      }

      v17 = [v6 copy];
      v9 = v19;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __71__PKAccountPromotionsSectionController__promotionsWithOrderingContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 programIdentifier];
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v8 = 1;
  }

  else
  {
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v4 isEqualToString:v5];
    }
  }

  return v8;
}

- (id)_promotionsWithDefaultOrdering
{
  itemsCopy = [(PKAccountPromotionsSectionController *)self itemsCopy];
  v3 = [itemsCopy sortedArrayUsingComparator:&__block_literal_global_232];

  return v3;
}

uint64_t __70__PKAccountPromotionsSectionController__promotionsWithDefaultOrdering__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 startDate];
  v7 = [v5 startDate];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [v7 compare:v6];
      if (!v9)
      {
        v10 = [v5 programIdentifier];
        v11 = [v4 programIdentifier];
        v9 = [v10 compare:v11];
      }
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_clearViewedPromotions
{
  os_unfair_lock_lock(&self->_itemsLock);
  [(NSMutableSet *)self->_promotionsViewedSinceViewLoad removeAllObjects];

  os_unfair_lock_unlock(&self->_itemsLock);
}

- (void)_reloadDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x1E69B8658]);
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __66__PKAccountPromotionsSectionController__reloadDataWithCompletion___block_invoke;
  v21[3] = &unk_1E801F240;
  v21[4] = self;
  v7 = accountIdentifier;
  v22 = v7;
  objc_copyWeak(&v23, &location);
  [v5 addOperation:v21];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__PKAccountPromotionsSectionController__reloadDataWithCompletion___block_invoke_3;
  v18[3] = &unk_1E801F240;
  v18[4] = self;
  v8 = v7;
  v19 = v8;
  objc_copyWeak(&v20, &location);
  [v5 addOperation:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__PKAccountPromotionsSectionController__reloadDataWithCompletion___block_invoke_5;
  v15[3] = &unk_1E801F240;
  v15[4] = self;
  v9 = v8;
  v16 = v9;
  objc_copyWeak(&v17, &location);
  [v5 addOperation:v15];
  null = [MEMORY[0x1E695DFB0] null];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__PKAccountPromotionsSectionController__reloadDataWithCompletion___block_invoke_7;
  v13[3] = &unk_1E8014A58;
  v11 = completionCopy;
  v14 = v11;
  v12 = [v5 evaluateWithInput:null completion:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __66__PKAccountPromotionsSectionController__reloadDataWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  v11 = *(*(a1 + 32) + 16);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__PKAccountPromotionsSectionController__reloadDataWithCompletion___block_invoke_2;
  v14[3] = &unk_1E801DAA0;
  objc_copyWeak(&v17, (a1 + 48));
  v12 = v9;
  v16 = v12;
  v13 = v8;
  v15 = v13;
  [v11 accountPromotionsForAccountWithIdentifier:v10 completion:v14];

  objc_destroyWeak(&v17);
}

void __66__PKAccountPromotionsSectionController__reloadDataWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setItems:v5];
  }

  (*(*(a1 + 40) + 16))();
}

void __66__PKAccountPromotionsSectionController__reloadDataWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  v11 = *(*(a1 + 32) + 16);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__PKAccountPromotionsSectionController__reloadDataWithCompletion___block_invoke_4;
  v14[3] = &unk_1E8023118;
  objc_copyWeak(&v17, (a1 + 48));
  v12 = v9;
  v16 = v12;
  v13 = v8;
  v15 = v13;
  [v11 accountPromotionBehaviorForAccountWithIdentifier:v10 completion:v14];

  objc_destroyWeak(&v17);
}

void __66__PKAccountPromotionsSectionController__reloadDataWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 20);
    objc_storeStrong(&v5[12], a2);
    os_unfair_lock_unlock(v5 + 20);
  }

  (*(*(a1 + 40) + 16))();
}

void __66__PKAccountPromotionsSectionController__reloadDataWithCompletion___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  v11 = *(*(a1 + 32) + 16);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__PKAccountPromotionsSectionController__reloadDataWithCompletion___block_invoke_6;
  v14[3] = &unk_1E801DAA0;
  objc_copyWeak(&v17, (a1 + 48));
  v12 = v9;
  v16 = v12;
  v13 = v8;
  v15 = v13;
  [v11 accountEntityOrderingsForAccountWithIdentifier:v10 entityType:2 completion:v14];

  objc_destroyWeak(&v17);
}

void __66__PKAccountPromotionsSectionController__reloadDataWithCompletion___block_invoke_6(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 20);
    objc_storeStrong(&v5[14], a2);
    os_unfair_lock_unlock(v5 + 20);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __66__PKAccountPromotionsSectionController__reloadDataWithCompletion___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  [a4 isCanceled];
  result = *(a1 + 32);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)didUpdateAccountPromotions:(id)promotions accountIdentifier:(id)identifier
{
  promotionsCopy = promotions;
  identifierCopy = identifier;
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  v9 = identifierCopy;
  v10 = accountIdentifier;
  v11 = v10;
  if (v10 == v9)
  {
  }

  else
  {
    if (!v9 || !v10)
    {

      goto LABEL_11;
    }

    v12 = [v9 isEqualToString:v10];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  [(PKAccountPromotionsSectionController *)self setItems:promotionsCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__PKAccountPromotionsSectionController_didUpdateAccountPromotions_accountIdentifier___block_invoke;
    block[3] = &unk_1E8010970;
    v15 = WeakRetained;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

LABEL_11:
}

@end