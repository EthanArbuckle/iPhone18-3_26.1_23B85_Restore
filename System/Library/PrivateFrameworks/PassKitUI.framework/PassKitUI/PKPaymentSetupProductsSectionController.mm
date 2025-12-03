@interface PKPaymentSetupProductsSectionController
- (BOOL)_needsManualEntryButton;
- (PKPaymentSetupProductsSectionController)initWithProvisoningController:(id)controller;
- (PKPaymentSetupProductsSectionControllerDelegate)delegate;
- (id)_cleanedSearchTermsFromString:(id)string;
- (id)_listItemFromProduct:(id)product sectionIdentifier:(id)identifier;
- (id)_sectionTitleForProduct:(id)product alwaysWantsHeaders:(BOOL *)headers wantsAddAdifferentCardButton:(BOOL *)button;
- (id)decoratePaymentSetListCell:(id)cell forItem:(id)item style:(unint64_t)style;
- (id)identifiers;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_updateItemWithIdentifier:(id)identifier loadingIndicatorVisibility:(BOOL)visibility animated:(BOOL)animated;
- (void)applySearchString:(id)string;
- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
- (void)hideLoadingIndicatorsAnimated:(BOOL)animated;
- (void)updateWithPaymentSetupProducts:(id)products;
@end

@implementation PKPaymentSetupProductsSectionController

- (PKPaymentSetupProductsSectionController)initWithProvisoningController:(id)controller
{
  controllerCopy = controller;
  v35.receiver = self;
  v35.super_class = PKPaymentSetupProductsSectionController;
  v6 = [(PKPaymentSetupListSectionController *)&v35 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_provisioningController, controller);
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
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    [v14 formUnionWithCharacterSet:whitespaceAndNewlineCharacterSet];

    punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    [v14 formUnionWithCharacterSet:punctuationCharacterSet];

    controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
    [v14 formUnionWithCharacterSet:controlCharacterSet];

    symbolCharacterSet = [MEMORY[0x1E696AB08] symbolCharacterSet];
    [v14 formUnionWithCharacterSet:symbolCharacterSet];

    v19 = [v14 copy];
    tokenizerCharacterSet = v7->_tokenizerCharacterSet;
    v7->_tokenizerCharacterSet = v19;

    webService = [controllerCopy webService];
    targetDevice = [webService targetDevice];

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    currentLocale = v7->_currentLocale;
    v7->_currentLocale = currentLocale;

    v25 = objc_opt_respondsToSelector();
    if (v25)
    {
      cellularNetworkRegion = [targetDevice cellularNetworkRegion];
    }

    else
    {
      cellularNetworkRegion = 0;
    }

    objc_storeStrong(&v7->_primaryRegion, cellularNetworkRegion);
    if (v25)
    {
    }

    v27 = PKLocalizedStringForCountryCode();
    primaryCountryName = v7->_primaryCountryName;
    v7->_primaryCountryName = v27;

    if (objc_opt_respondsToSelector())
    {
      [targetDevice deviceRegion];
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
    cachedLocation = [controllerCopy cachedLocation];
    cachedLocation = v7->_cachedLocation;
    v7->_cachedLocation = cachedLocation;
  }

  return v7;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(NSDictionary *)self->_sectionIdentifierToSectionMetadataMapping objectForKey:identifierCopy, 0];
  itemIdentifiers = [v7 itemIdentifiers];

  v9 = [itemIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(itemIdentifiers);
        }

        v13 = [(NSMutableDictionary *)self->_itemIdentifierToItemMapping objectForKey:*(*(&v16 + 1) + 8 * i)];
        [v6 safelyAddObject:v13];
      }

      v10 = [itemIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        itemIdentifiers = [v9 itemIdentifiers];
        v11 = [itemIdentifiers count];

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

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  environmentCopy = environment;
  defaultListLayout = [(PKPaymentSetupListSectionController *)self defaultListLayout];
  v7 = defaultListLayout;
  if (self->_showSectionHeaders)
  {
    [defaultListLayout setHeaderMode:1];
  }

  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v7 layoutEnvironment:environmentCopy];
  [v8 contentInsets];
  [v8 setContentInsets:PKSetupViewConstantsListSectionInset(v9)];

  return v8;
}

- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier
{
  v23[2] = *MEMORY[0x1E69E9840];
  if (self->_showSectionHeaders)
  {
    v7 = MEMORY[0x1E69DCC28];
    identifierCopy = identifier;
    registrationCopy = registration;
    headerConfiguration = [v7 headerConfiguration];
    [headerConfiguration setAxesPreservingSuperviewLayoutMargins:0];
    v22[0] = *MEMORY[0x1E69DB648];
    v11 = PKOBKListHeaderFont();
    v23[0] = v11;
    v22[1] = *MEMORY[0x1E69DB650];
    v12 = PKOBKListHeaderTextColor();
    v23[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

    v14 = [(NSDictionary *)self->_sectionIdentifierToSectionMetadataMapping objectForKey:identifierCopy];

    title = [v14 title];

    if (title)
    {
      v16 = objc_alloc(MEMORY[0x1E696AAB0]);
      title2 = [v14 title];
      v18 = [v16 initWithString:title2 attributes:v13];
      [headerConfiguration setAttributedText:v18];
    }

    v19 = PKSetupViewConstantsViewMargin();
    v20 = PKSetupListViewConstantsViewMargin();
    v21 = v19 - v20;
    if (v20 > v19)
    {
      v21 = 0.0;
    }

    [headerConfiguration setDirectionalLayoutMargins:{10.0, v21, 10.0, v21}];
    [registrationCopy setContentConfiguration:headerConfiguration];
  }
}

- (id)decoratePaymentSetListCell:(id)cell forItem:(id)item style:(unint64_t)style
{
  cellCopy = cell;
  itemCopy = item;
  v23.receiver = self;
  v23.super_class = PKPaymentSetupProductsSectionController;
  v9 = [(PKPaymentSetupListSectionController *)&v23 decoratePaymentSetListCell:cellCopy forItem:itemCopy style:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = itemCopy;
    identifier = [v10 identifier];
    if (![v10 isLoadingIcon])
    {
      [v10 setIsLoadingIcon:1];
      product = [v10 product];
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __84__PKPaymentSetupProductsSectionController_decoratePaymentSetListCell_forItem_style___block_invoke;
      v20 = &unk_1E8012968;
      selfCopy = self;
      v22 = identifier;
      v13 = [product thumbnailCachedImageForSize:&v17 completion:{self->_iconSize.width, self->_iconSize.height}];

      if (v13)
      {
        [v9 setImage:{v13, v17, v18, v19, v20, selfCopy}];
      }
    }

    imageProperties = [v9 imageProperties];
    p_iconSize = &self->_iconSize;
    [imageProperties setMaximumSize:{p_iconSize->width, p_iconSize->height}];
    [imageProperties setReservedLayoutSize:{p_iconSize->width, p_iconSize->height}];
    [imageProperties setCornerRadius:2.0];
    [cellCopy setContentConfiguration:v9];
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

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __57__PKPaymentSetupProductsSectionController_didSelectItem___block_invoke;
  v18 = &unk_1E8012FD0;
  selfCopy = self;
  v6 = identifier;
  v20 = v6;
  v7 = _Block_copy(&v15);
  self->_didHideLoadingIndicators = 0;
  identifier2 = [itemCopy identifier];
  v9 = [identifier2 isEqualToString:@"PKAddADifferentCardListItemIdentifier"];

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
    product = [itemCopy product];
    v14 = [v11 didSelectProduct:product completion:v7];

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

- (void)_updateItemWithIdentifier:(id)identifier loadingIndicatorVisibility:(BOOL)visibility animated:(BOOL)animated
{
  animatedCopy = animated;
  visibilityCopy = visibility;
  v8 = [(NSMutableDictionary *)self->_itemIdentifierToItemMapping objectForKey:identifier];
  if (v8)
  {
    v14 = v8;
    v9 = [v8 loadingIndicatorVisible] == visibilityCopy;
    v8 = v14;
    if (!v9)
    {
      v10 = [v14 copy];
      [v10 setLoadingIndicatorVisible:visibilityCopy];
      itemIdentifierToItemMapping = self->_itemIdentifierToItemMapping;
      identifier = [v10 identifier];
      [(NSMutableDictionary *)itemIdentifierToItemMapping setObject:v10 forKey:identifier];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained reloadItem:v10 animated:animatedCopy];

      v8 = v14;
    }
  }
}

- (void)hideLoadingIndicatorsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v15 = *MEMORY[0x1E69E9840];
  self->_didHideLoadingIndicators = 1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [(NSMutableDictionary *)self->_itemIdentifierToItemMapping allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        [(PKPaymentSetupProductsSectionController *)self _updateItemWithIdentifier:*(*(&v10 + 1) + 8 * v9++) loadingIndicatorVisibility:0 animated:animatedCopy];
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)applySearchString:(id)string
{
  stringCopy = string;
  v5 = [(NSMutableDictionary *)self->_itemIdentifierToItemMapping copy];
  searchQueue = self->_searchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PKPaymentSetupProductsSectionController_applySearchString___block_invoke;
  block[3] = &unk_1E8010A88;
  v10 = v5;
  selfCopy = self;
  v12 = stringCopy;
  v7 = stringCopy;
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
  allValues = [(NSMutableDictionary *)self->_itemIdentifierToItemMapping allValues];
  firstObject = [allValues firstObject];
  product = [firstObject product];
  configuration = [product configuration];
  v6 = [configuration type] == 5;

  return v6;
}

- (id)_sectionTitleForProduct:(id)product alwaysWantsHeaders:(BOOL *)headers wantsAddAdifferentCardButton:(BOOL *)button
{
  productCopy = product;
  configuration = [productCopy configuration];
  type = [configuration type];

  if (type <= 6)
  {
    if (type >= 5)
    {
      if ((type - 5) >= 2)
      {
        goto LABEL_15;
      }

      *headers = 1;
      *button = 1;
      v11 = PKLocalizedPaymentString(&cfstr_PaymentSetupCr_0.isa);
LABEL_9:
      self = v11;
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if ((type - 7) < 3)
  {
LABEL_10:
    *headers = 1;
    goto LABEL_11;
  }

  if ((type - 10) >= 2)
  {
    if (type != 12)
    {
      goto LABEL_15;
    }

    *headers = 0;
    *button = 0;
    v11 = PKLocalizedPaymentOffersString(&cfstr_PaymentSetupIs.isa);
    goto LABEL_9;
  }

LABEL_11:
  primaryRegion = [productCopy primaryRegion];
  primaryRegion = primaryRegion;
  if (!primaryRegion)
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

- (void)updateWithPaymentSetupProducts:(id)products
{
  v43 = *MEMORY[0x1E69E9840];
  productsCopy = products;
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = productsCopy;
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
        selfCopy = self;
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

        productIdentifier = [v11 productIdentifier];
        v18 = [v34 objectForKey:productIdentifier];
        if (!v18)
        {
          v18 = [(PKPaymentSetupProductsSectionController *)selfCopy _listItemFromProduct:v11 sectionIdentifier:v14];
          [v34 setObject:v18 forKey:productIdentifier];
        }

        v8 |= v15;
        [v33 addObject:v18];

        self = selfCopy;
      }

      v5 = obj;
      v7 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v7);

    if (v9)
    {
      addADifferentCardListItem = selfCopy->_addADifferentCardListItem;
      if (!addADifferentCardListItem)
      {
        v21 = PKLocalizedPaymentString(&cfstr_AddADifferentC.isa);
        v22 = [(PKPaymentSetupListItem *)[PKPaymentSetupProductsSectionListItem alloc] initWithTitle:v21 subtitle:0 icon:0];
        v23 = selfCopy->_addADifferentCardListItem;
        selfCopy->_addADifferentCardListItem = v22;

        [(PKPaymentSetupListItem *)selfCopy->_addADifferentCardListItem setDisplayChevron:1];
        [(PKPaymentSetupListItem *)selfCopy->_addADifferentCardListItem setIdentifier:@"PKAddADifferentCardListItemIdentifier"];

        addADifferentCardListItem = selfCopy->_addADifferentCardListItem;
      }

      v20 = v32;
      [(PKPaymentSetupProductsSectionListItem *)addADifferentCardListItem setSectionIdentifier:v32];
      [v34 setObject:selfCopy->_addADifferentCardListItem forKey:@"PKAddADifferentCardListItemIdentifier"];
      [v33 addObject:selfCopy->_addADifferentCardListItem];
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

- (id)_cleanedSearchTermsFromString:(id)string
{
  v19 = *MEMORY[0x1E69E9840];
  localizedLowercaseString = [string localizedLowercaseString];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [localizedLowercaseString componentsSeparatedByCharactersInSet:{self->_tokenizerCharacterSet, 0}];
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

- (id)_listItemFromProduct:(id)product sectionIdentifier:(id)identifier
{
  productCopy = product;
  identifierCopy = identifier;
  displayName = [productCopy displayName];
  localizedDescription = [productCopy localizedDescription];
  badge = [productCopy badge];
  displayStatus = [productCopy displayStatus];
  v11 = localizedDescription;
  if (![localizedDescription length])
  {
    v11 = displayStatus;
  }

  v26 = displayStatus;
  productIdentifier = [productCopy productIdentifier];
  v12 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  searchTerms = [productCopy searchTerms];
  if ([searchTerms count])
  {
    [v12 addObjectsFromArray:searchTerms];
  }

  else
  {
    v14 = [(PKPaymentSetupProductsSectionController *)self _cleanedSearchTermsFromString:displayName];
    [v12 unionOrderedSet:v14];

    v15 = [(PKPaymentSetupProductsSectionController *)self _cleanedSearchTermsFromString:localizedDescription];
    [v12 unionOrderedSet:v15];
  }

  configuration = [productCopy configuration];
  type = [configuration type];

  v18 = 0;
  if (type <= 0xC && ((1 << type) & 0x1F9B) != 0)
  {
    v18 = PKUIImageNamed(@"PlaceholderCardArt_Small");
  }

  v19 = displayName;
  v20 = [(PKPaymentSetupListItem *)[PKPaymentSetupProductsSectionListItem alloc] initWithTitle:displayName subtitle:v11 icon:v18];
  [(PKPaymentSetupProductsSectionListItem *)v20 setSearchTerms:v12];
  [(PKPaymentSetupListItem *)v20 setIdentifier:productIdentifier];
  [(PKPaymentSetupProductsSectionListItem *)v20 setProduct:productCopy];
  [(PKPaymentSetupProductsSectionListItem *)v20 setSectionIdentifier:identifierCopy];

  configuration2 = [productCopy configuration];
  type2 = [configuration2 type];

  if (type2 == 10)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(productCopy, "primaryCredentialType")}];
    stringValue = [v23 stringValue];
    [(PKPaymentSetupProductsSectionListItem *)v20 setCredentialSectionIdentifier:stringValue];
  }

  [(PKPaymentSetupListItem *)v20 setDisplayChevron:1];
  [(PKPaymentSetupListItem *)v20 setBadgeText:badge];

  return v20;
}

- (PKPaymentSetupProductsSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end