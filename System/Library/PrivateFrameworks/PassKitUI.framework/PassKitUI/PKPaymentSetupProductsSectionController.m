@interface PKPaymentSetupProductsSectionController
- (BOOL)_needsManualEntryButton;
- (PKPaymentSetupProductsSectionController)initWithProvisoningController:(id)a3;
- (PKPaymentSetupProductsSectionControllerDelegate)delegate;
- (id)_cleanedSearchTermsFromString:(id)a3;
- (id)_listItemFromProduct:(id)a3 sectionIdentifier:(id)a4;
- (id)_sectionTitleForProduct:(id)a3 alwaysWantsHeaders:(BOOL *)a4 wantsAddAdifferentCardButton:(BOOL *)a5;
- (id)decoratePaymentSetListCell:(id)a3 forItem:(id)a4 style:(unint64_t)a5;
- (id)identifiers;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_updateItemWithIdentifier:(id)a3 loadingIndicatorVisibility:(BOOL)a4 animated:(BOOL)a5;
- (void)applySearchString:(id)a3;
- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5;
- (void)didSelectItem:(id)a3;
- (void)hideLoadingIndicatorsAnimated:(BOOL)a3;
- (void)updateWithPaymentSetupProducts:(id)a3;
@end

@implementation PKPaymentSetupProductsSectionController

- (PKPaymentSetupProductsSectionController)initWithProvisoningController:(id)a3
{
  v5 = a3;
  v35.receiver = self;
  v35.super_class = PKPaymentSetupProductsSectionController;
  v6 = [(PKPaymentSetupListSectionController *)&v35 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_provisioningController, a3);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v9 = dispatch_queue_create("com.apple.passkit.products.search", v8);
    searchQueue = v7->_searchQueue;
    v7->_searchQueue = v9;

    v11 = _UISolariumFeatureFlagEnabled();
    v12 = 53.0;
    if (v11)
    {
      v12 = 40.0;
    }

    v13 = 32.0;
    if (v11)
    {
      v13 = 26.0;
    }

    v7->_iconSize.width = v12;
    v7->_iconSize.height = v13;
    v14 = objc_alloc_init(MEMORY[0x1E696AD48]);
    v15 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    [v14 formUnionWithCharacterSet:v15];

    v16 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    [v14 formUnionWithCharacterSet:v16];

    v17 = [MEMORY[0x1E696AB08] controlCharacterSet];
    [v14 formUnionWithCharacterSet:v17];

    v18 = [MEMORY[0x1E696AB08] symbolCharacterSet];
    [v14 formUnionWithCharacterSet:v18];

    v19 = [v14 copy];
    tokenizerCharacterSet = v7->_tokenizerCharacterSet;
    v7->_tokenizerCharacterSet = v19;

    v21 = [v5 webService];
    v22 = [v21 targetDevice];

    v23 = [MEMORY[0x1E695DF58] currentLocale];
    currentLocale = v7->_currentLocale;
    v7->_currentLocale = v23;

    v25 = objc_opt_respondsToSelector();
    if (v25)
    {
      v26 = [v22 cellularNetworkRegion];
    }

    else
    {
      v26 = 0;
    }

    objc_storeStrong(&v7->_primaryRegion, v26);
    if (v25)
    {
    }

    v27 = PKLocalizedStringForCountryCode();
    primaryCountryName = v7->_primaryCountryName;
    v7->_primaryCountryName = v27;

    if (objc_opt_respondsToSelector())
    {
      [v22 deviceRegion];
    }

    else
    {
      PKCurrentRegion();
    }
    v29 = ;
    objc_storeStrong(&v7->_secondaryRegion, v29);

    v30 = PKLocalizedStringForCountryCode();
    secondaryCountryName = v7->_secondaryCountryName;
    v7->_secondaryCountryName = v30;

    v7->_productCategorizationMode = 0;
    v32 = [v5 cachedLocation];
    cachedLocation = v7->_cachedLocation;
    v7->_cachedLocation = v32;
  }

  return v7;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(NSDictionary *)self->_sectionIdentifierToSectionMetadataMapping objectForKey:v5, 0];
  v8 = [v7 itemIdentifiers];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(NSMutableDictionary *)self->_itemIdentifierToItemMapping objectForKey:*(*(&v16 + 1) + 8 * i)];
        [v6 safelyAddObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v14 appendItems:v6];

  return v14;
}

- (id)identifiers
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_orderedSectionIdentifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(NSDictionary *)self->_sectionIdentifierToSectionMetadataMapping objectForKey:v8];
        v10 = [v9 itemIdentifiers];
        v11 = [v10 count];

        if (v11)
        {
          [v13 addObject:v8];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return v13;
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v5 = a3;
  v6 = [(PKPaymentSetupListSectionController *)self defaultListLayout];
  v7 = v6;
  if (self->_showSectionHeaders)
  {
    [v6 setHeaderMode:1];
  }

  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v7 layoutEnvironment:v5];
  [v8 contentInsets];
  [v8 setContentInsets:PKSetupViewConstantsListSectionInset(v9)];

  return v8;
}

- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5
{
  v23[2] = *MEMORY[0x1E69E9840];
  if (self->_showSectionHeaders)
  {
    v7 = MEMORY[0x1E69DCC28];
    v8 = a5;
    v9 = a3;
    v10 = [v7 headerConfiguration];
    [v10 setAxesPreservingSuperviewLayoutMargins:0];
    v22[0] = *MEMORY[0x1E69DB648];
    v11 = PKOBKListHeaderFont();
    v23[0] = v11;
    v22[1] = *MEMORY[0x1E69DB650];
    v12 = PKOBKListHeaderTextColor();
    v23[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

    v14 = [(NSDictionary *)self->_sectionIdentifierToSectionMetadataMapping objectForKey:v8];

    v15 = [v14 title];

    if (v15)
    {
      v16 = objc_alloc(MEMORY[0x1E696AAB0]);
      v17 = [v14 title];
      v18 = [v16 initWithString:v17 attributes:v13];
      [v10 setAttributedText:v18];
    }

    v19 = PKSetupViewConstantsViewMargin();
    v20 = PKSetupListViewConstantsViewMargin();
    v21 = v19 - v20;
    if (v20 > v19)
    {
      v21 = 0.0;
    }

    [v10 setDirectionalLayoutMargins:{10.0, v21, 10.0, v21}];
    [v9 setContentConfiguration:v10];
  }
}

- (id)decoratePaymentSetListCell:(id)a3 forItem:(id)a4 style:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = PKPaymentSetupProductsSectionController;
  v9 = [(PKPaymentSetupListSectionController *)&v23 decoratePaymentSetListCell:v7 forItem:v8 style:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    v11 = [v10 identifier];
    if (![v10 isLoadingIcon])
    {
      [v10 setIsLoadingIcon:1];
      v12 = [v10 product];
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __84__PKPaymentSetupProductsSectionController_decoratePaymentSetListCell_forItem_style___block_invoke;
      v20 = &unk_1E8012968;
      v21 = self;
      v22 = v11;
      v13 = [v12 thumbnailCachedImageForSize:&v17 completion:{self->_iconSize.width, self->_iconSize.height}];

      if (v13)
      {
        [v9 setImage:{v13, v17, v18, v19, v20, v21}];
      }
    }

    v14 = [v9 imageProperties];
    p_iconSize = &self->_iconSize;
    [v14 setMaximumSize:{p_iconSize->width, p_iconSize->height}];
    [v14 setReservedLayoutSize:{p_iconSize->width, p_iconSize->height}];
    [v14 setCornerRadius:2.0];
    [v7 setContentConfiguration:v9];
  }

  return v9;
}

void __84__PKPaymentSetupProductsSectionController_decoratePaymentSetListCell_forItem_style___block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a3)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 80);
    v7 = a3;
    v9 = [v6 objectForKey:v5];
    [v9 setIsLoadingIcon:2];
    [v9 setIcon:v7];

    if (a2)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 200));
      [WeakRetained reloadItem:v9 animated:0];
    }
  }
}

- (void)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __57__PKPaymentSetupProductsSectionController_didSelectItem___block_invoke;
  v18 = &unk_1E8012FD0;
  v19 = self;
  v6 = v5;
  v20 = v6;
  v7 = _Block_copy(&v15);
  self->_didHideLoadingIndicators = 0;
  v8 = [v4 identifier];
  v9 = [v8 isEqualToString:@"PKAddADifferentCardListItemIdentifier"];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = WeakRetained;
  if (v9)
  {
    v12 = [WeakRetained didSelectManualEntryWithCompletion:v7];

    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = [v4 product];
    v14 = [v11 didSelectProduct:v13 completion:v7];

    if (!v14)
    {
      goto LABEL_7;
    }
  }

  if (!self->_didHideLoadingIndicators)
  {
    [(PKPaymentSetupProductsSectionController *)self _updateItemWithIdentifier:v6 loadingIndicatorVisibility:1 animated:1];
  }

LABEL_7:
}

uint64_t __57__PKPaymentSetupProductsSectionController_didSelectItem___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 200));
    [WeakRetained deselectCells];
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _updateItemWithIdentifier:v5 loadingIndicatorVisibility:0 animated:1];
}

- (void)_updateItemWithIdentifier:(id)a3 loadingIndicatorVisibility:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(NSMutableDictionary *)self->_itemIdentifierToItemMapping objectForKey:a3];
  if (v8)
  {
    v14 = v8;
    v9 = [v8 loadingIndicatorVisible] == v6;
    v8 = v14;
    if (!v9)
    {
      v10 = [v14 copy];
      [v10 setLoadingIndicatorVisible:v6];
      itemIdentifierToItemMapping = self->_itemIdentifierToItemMapping;
      v12 = [v10 identifier];
      [(NSMutableDictionary *)itemIdentifierToItemMapping setObject:v10 forKey:v12];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained reloadItem:v10 animated:v5];

      v8 = v14;
    }
  }
}

- (void)hideLoadingIndicatorsAnimated:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  self->_didHideLoadingIndicators = 1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_itemIdentifierToItemMapping allKeys];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PKPaymentSetupProductsSectionController *)self _updateItemWithIdentifier:*(*(&v10 + 1) + 8 * v9++) loadingIndicatorVisibility:0 animated:v3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)applySearchString:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_itemIdentifierToItemMapping copy];
  searchQueue = self->_searchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PKPaymentSetupProductsSectionController_applySearchString___block_invoke;
  block[3] = &unk_1E8010A88;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(searchQueue, block);
}

void __61__PKPaymentSetupProductsSectionController_applySearchString___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allValues];
  v3 = [v2 mutableCopy];

  v4 = *(a1 + 40);
  v5 = [PKPaymentSetupProductsSectionFactoryContext contextWithPrimaryRegion:v4[19] primaryCountryName:v4[20] secondaryRegion:v4[21] secondaryCountryName:v4[22] location:v4[17] tokenizerCharacterSet:v4[14]];
  if (*(*(a1 + 40) + 192))
  {
    v6 = &unk_1F3CC8528;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;
  v8 = *(a1 + 48);
  if (v8 && [v8 length])
  {
    v9 = *(a1 + 48);
    v23 = 0;
    v24 = 0;
    v10 = &v24;
    v11 = &v23;
    [PKPaymentSetupProductsSectionMainFactory generateSectionsWithSearchFilter:v9 forItems:v3 categorizingByCredentialTypes:v7 withContext:v5 outSectionIdentifierToSectionMetadataMapping:&v24 outOrderedSectionIdentifiers:&v23];
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v10 = &v22;
    v11 = &v21;
    [PKPaymentSetupProductsSectionMainFactory generateSectionsWithDefaultSortingForItems:v3 categorizingByCredentialTypes:v7 withContext:v5 outSectionIdentifierToSectionMetadataMapping:&v22 outOrderedSectionIdentifiers:&v21];
  }

  v12 = *v10;
  v13 = *v11;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__PKPaymentSetupProductsSectionController_applySearchString___block_invoke_2;
  v17[3] = &unk_1E8011C98;
  v14 = *(a1 + 48);
  v17[4] = *(a1 + 40);
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v15 = v13;
  v16 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], v17);
}

void __61__PKPaymentSetupProductsSectionController_applySearchString___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 48));
  if ([*(*(a1 + 32) + 88) count])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 200));
    [WeakRetained hideNoResultsView];

    v3 = objc_loadWeakRetained((*(a1 + 32) + 200));
    [v3 reloadSectionsRequired];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [*(*(a1 + 32) + 88) allKeys];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = objc_loadWeakRetained((*(a1 + 32) + 200));
          [v10 reconfigureHeaderAndFooterForSectionIdentifier:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v12 = PKLocalizedPaymentString(&cfstr_PaymentSetupNo_0.isa, &stru_1F3BD5BF0.isa, *(a1 + 56));
    v11 = objc_loadWeakRetained((*(a1 + 32) + 200));
    [v11 displayNoResultsViewWithSubtitle:v12 needsManualEntryButton:{objc_msgSend(*(a1 + 32), "_needsManualEntryButton")}];
  }
}

- (BOOL)_needsManualEntryButton
{
  v2 = [(NSMutableDictionary *)self->_itemIdentifierToItemMapping allValues];
  v3 = [v2 firstObject];
  v4 = [v3 product];
  v5 = [v4 configuration];
  v6 = [v5 type] == 5;

  return v6;
}

- (id)_sectionTitleForProduct:(id)a3 alwaysWantsHeaders:(BOOL *)a4 wantsAddAdifferentCardButton:(BOOL *)a5
{
  v8 = a3;
  v9 = [v8 configuration];
  v10 = [v9 type];

  if (v10 <= 6)
  {
    if (v10 >= 5)
    {
      if ((v10 - 5) >= 2)
      {
        goto LABEL_15;
      }

      *a4 = 1;
      *a5 = 1;
      v11 = PKLocalizedPaymentString(&cfstr_PaymentSetupCr_0.isa);
LABEL_9:
      self = v11;
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if ((v10 - 7) < 3)
  {
LABEL_10:
    *a4 = 1;
    goto LABEL_11;
  }

  if ((v10 - 10) >= 2)
  {
    if (v10 != 12)
    {
      goto LABEL_15;
    }

    *a4 = 0;
    *a5 = 0;
    v11 = PKLocalizedPaymentOffersString(&cfstr_PaymentSetupIs.isa);
    goto LABEL_9;
  }

LABEL_11:
  v12 = [v8 primaryRegion];
  primaryRegion = v12;
  if (!v12)
  {
    primaryRegion = self->_primaryRegion;
    if (!primaryRegion)
    {
      primaryRegion = self->_secondaryRegion;
    }
  }

  v14 = primaryRegion;

  self = PKLocalizedStringForCountryCode();

LABEL_15:

  return self;
}

- (void)updateWithPaymentSetupProducts:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v31 = *v39;
    v32 = 0;
    obj = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v37 = 0;
        v12 = self;
        v13 = [(PKPaymentSetupProductsSectionController *)self _sectionTitleForProduct:v11 alwaysWantsHeaders:&v37 + 1 wantsAddAdifferentCardButton:&v37, obj];
        v14 = v13;
        v15 = HIBYTE(v37);
        if (v9)
        {
          v9 = 1;
        }

        else
        {
          v16 = v13;

          v9 = v37;
          v32 = v16;
        }

        v17 = [v11 productIdentifier];
        v18 = [v34 objectForKey:v17];
        if (!v18)
        {
          v18 = [(PKPaymentSetupProductsSectionController *)v12 _listItemFromProduct:v11 sectionIdentifier:v14];
          [v34 setObject:v18 forKey:v17];
        }

        v8 |= v15;
        [v33 addObject:v18];

        self = v12;
      }

      v5 = obj;
      v7 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v7);

    if (v9)
    {
      addADifferentCardListItem = v12->_addADifferentCardListItem;
      if (!addADifferentCardListItem)
      {
        v21 = PKLocalizedPaymentString(&cfstr_AddADifferentC.isa);
        v22 = [(PKPaymentSetupListItem *)[PKPaymentSetupProductsSectionListItem alloc] initWithTitle:v21 subtitle:0 icon:0];
        v23 = v12->_addADifferentCardListItem;
        v12->_addADifferentCardListItem = v22;

        [(PKPaymentSetupListItem *)v12->_addADifferentCardListItem setDisplayChevron:1];
        [(PKPaymentSetupListItem *)v12->_addADifferentCardListItem setIdentifier:@"PKAddADifferentCardListItemIdentifier"];

        addADifferentCardListItem = v12->_addADifferentCardListItem;
      }

      v20 = v32;
      [(PKPaymentSetupProductsSectionListItem *)addADifferentCardListItem setSectionIdentifier:v32];
      [v34 setObject:v12->_addADifferentCardListItem forKey:@"PKAddADifferentCardListItemIdentifier"];
      [v33 addObject:v12->_addADifferentCardListItem];
    }

    else
    {
      v20 = v32;
    }
  }

  else
  {

    v20 = 0;
    v8 = 0;
  }

  objc_storeStrong(&self->_itemIdentifierToItemMapping, v34);
  v24 = [PKPaymentSetupProductsSectionFactoryContext contextWithPrimaryRegion:self->_primaryRegion primaryCountryName:self->_primaryCountryName secondaryRegion:self->_secondaryRegion secondaryCountryName:self->_secondaryCountryName location:self->_cachedLocation];
  if ([v5 pk_containsObjectPassingTest:&__block_literal_global_165])
  {
    self->_productCategorizationMode = 1;
    v25 = &unk_1F3CC8528;
  }

  else if (self->_productCategorizationMode)
  {
    v25 = &unk_1F3CC8528;
  }

  else
  {
    v25 = MEMORY[0x1E695E0F0];
  }

  v35 = 0;
  v36 = 0;
  [PKPaymentSetupProductsSectionMainFactory generateSectionsWithDefaultSortingForItems:v33 categorizingByCredentialTypes:v25 withContext:v24 outSectionIdentifierToSectionMetadataMapping:&v36 outOrderedSectionIdentifiers:&v35];
  v26 = v36;
  v27 = v36;
  v28 = v35;
  v29 = v35;
  objc_storeStrong(&self->_sectionIdentifierToSectionMetadataMapping, v26);
  objc_storeStrong(&self->_orderedSectionIdentifiers, v28);
  if ((v8 & 1) != 0 || [(NSArray *)self->_orderedSectionIdentifiers count]>= 2)
  {
    self->_showSectionHeaders = 1;
  }
}

- (id)_cleanedSearchTermsFromString:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a3 localizedLowercaseString];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 componentsSeparatedByCharactersInSet:{self->_tokenizerCharacterSet, 0}];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 length])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)_listItemFromProduct:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 displayName];
  v9 = [v6 localizedDescription];
  v27 = [v6 badge];
  v10 = [v6 displayStatus];
  v11 = v9;
  if (![v9 length])
  {
    v11 = v10;
  }

  v26 = v10;
  v28 = [v6 productIdentifier];
  v12 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v13 = [v6 searchTerms];
  if ([v13 count])
  {
    [v12 addObjectsFromArray:v13];
  }

  else
  {
    v14 = [(PKPaymentSetupProductsSectionController *)self _cleanedSearchTermsFromString:v8];
    [v12 unionOrderedSet:v14];

    v15 = [(PKPaymentSetupProductsSectionController *)self _cleanedSearchTermsFromString:v9];
    [v12 unionOrderedSet:v15];
  }

  v16 = [v6 configuration];
  v17 = [v16 type];

  v18 = 0;
  if (v17 <= 0xC && ((1 << v17) & 0x1F9B) != 0)
  {
    v18 = PKUIImageNamed(@"PlaceholderCardArt_Small");
  }

  v19 = v8;
  v20 = [(PKPaymentSetupListItem *)[PKPaymentSetupProductsSectionListItem alloc] initWithTitle:v8 subtitle:v11 icon:v18];
  [(PKPaymentSetupProductsSectionListItem *)v20 setSearchTerms:v12];
  [(PKPaymentSetupListItem *)v20 setIdentifier:v28];
  [(PKPaymentSetupProductsSectionListItem *)v20 setProduct:v6];
  [(PKPaymentSetupProductsSectionListItem *)v20 setSectionIdentifier:v7];

  v21 = [v6 configuration];
  v22 = [v21 type];

  if (v22 == 10)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "primaryCredentialType")}];
    v24 = [v23 stringValue];
    [(PKPaymentSetupProductsSectionListItem *)v20 setCredentialSectionIdentifier:v24];
  }

  [(PKPaymentSetupListItem *)v20 setDisplayChevron:1];
  [(PKPaymentSetupListItem *)v20 setBadgeText:v27];

  return v20;
}

- (PKPaymentSetupProductsSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end