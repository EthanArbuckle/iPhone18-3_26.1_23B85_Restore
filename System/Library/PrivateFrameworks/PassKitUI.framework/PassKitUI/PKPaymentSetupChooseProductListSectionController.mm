@interface PKPaymentSetupChooseProductListSectionController
- (PKPaymentSetupChooseProductListSectionController)initWithImage:(id)image digitalIssuanceMetadata:(id)metadata;
- (PKPaymentSetupChooseProductListSectionControllerDelegate)delegate;
- (id)defaultListLayout;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_generateItems;
- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
- (void)showLoadingIndicatorsForItemIdentifier:(id)identifier show:(BOOL)show;
@end

@implementation PKPaymentSetupChooseProductListSectionController

- (PKPaymentSetupChooseProductListSectionController)initWithImage:(id)image digitalIssuanceMetadata:(id)metadata
{
  imageCopy = image;
  metadataCopy = metadata;
  v13.receiver = self;
  v13.super_class = PKPaymentSetupChooseProductListSectionController;
  v9 = [(PKPaymentSetupChooseProductListSectionController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_digitalIssuanceMetadata, metadata);
    objc_storeStrong(&v10->_cardImage, image);
    [(PKPaymentSetupChooseProductListSectionController *)v10 _generateItems];
    v11 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:&__block_literal_global_233];
    [(PKPaymentSetupChooseProductListSectionController *)v10 setCellRegistration:v11];
  }

  return v10;
}

void __90__PKPaymentSetupChooseProductListSectionController_initWithImage_digitalIssuanceMetadata___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = MEMORY[0x1E69DCC28];
  v7 = a4;
  v8 = [v6 subtitleCellConfiguration];
  v9 = [v7 title];
  [v8 setText:v9];

  v10 = [v7 subtitle];
  [v8 setSecondaryText:v10];

  v11 = [v8 secondaryTextProperties];
  v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v11 setColor:v12];

  [v8 setDirectionalLayoutMargins:{10.0, 10.0, 10.0, 10.0}];
  [v5 setContentConfiguration:v8];
  [v5 setConfigurationUpdateHandler:&__block_literal_global_137];
  LODWORD(v11) = [v7 loadingIndicatorVisible];

  if (v11)
  {
    v13 = +[PKCellAccessoryLoadingIndicator accessory];
    v17[0] = v13;
    v14 = v17;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
    v16 = v13;
    v14 = &v16;
  }

  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v5 setAccessories:v15];
}

void __90__PKPaymentSetupChooseProductListSectionController_initWithImage_digitalIssuanceMetadata___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v4 = MEMORY[0x1E69DC6E8];
  v5 = a2;
  v6 = [v4 listCellConfiguration];
  if ([v9 isHighlighted] & 1) != 0 || (objc_msgSend(v9, "isSelected"))
  {
    v7 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  v8 = v7;
  [v6 setBackgroundColor:v7];

  [v5 setBackgroundConfiguration:v6];
}

- (void)_generateItems
{
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  autoTopUpProduct = [(PKPaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata autoTopUpProduct];
  serviceProviderProducts = [(PKPaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata serviceProviderProducts];
  v6 = [serviceProviderProducts count];

  if (autoTopUpProduct)
  {
    localizedDisplayName = [autoTopUpProduct localizedDisplayName];
    v8 = localizedDisplayName;
    if (localizedDisplayName)
    {
      v9 = localizedDisplayName;
    }

    else
    {
      v9 = PKLocalizedPaymentString(&cfstr_AutoTopUpTrans.isa);
    }

    v10 = v9;

    localizedDescription = [autoTopUpProduct localizedDescription];
    v12 = localizedDescription;
    if (localizedDescription)
    {
      v13 = localizedDescription;
    }

    else
    {
      v13 = PKLocalizedPaymentString(&cfstr_AutoTopUpTrans_0.isa);
    }

    v14 = v13;

    v15 = [[PKPaymentSetupChooseProductListItem alloc] initWithIdentifier:@"AutoTopUpItemIdentifier" type:0 title:v10 subtitle:v14];
    autoTopUpItem = self->_autoTopUpItem;
    self->_autoTopUpItem = v15;

    [v3 addObject:@"AutoTopUpSectionIdentifier"];
  }

  balanceIdentifier = [(PKPaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata balanceIdentifier];

  if (balanceIdentifier)
  {
    balanceLocalizedDisplayName = [(PKPaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata balanceLocalizedDisplayName];
    v19 = balanceLocalizedDisplayName;
    if (balanceLocalizedDisplayName)
    {
      v20 = balanceLocalizedDisplayName;
    }

    else
    {
      v20 = PKLocalizedPaymentString(&cfstr_TicketPlatform.isa);
    }

    v21 = v20;

    balanceLocalizedDescription = [(PKPaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata balanceLocalizedDescription];
    v23 = balanceLocalizedDescription;
    if (balanceLocalizedDescription)
    {
      v24 = balanceLocalizedDescription;
    }

    else
    {
      v24 = PKLocalizedPaymentString(&cfstr_TicketPlatform_0.isa);
    }

    v25 = v24;

    v26 = [[PKPaymentSetupChooseProductListItem alloc] initWithIdentifier:@"BalanceItemIdentifier" type:0 title:v21 subtitle:v25];
    [v39 addObject:v26];
  }

  if (v6)
  {
    serviceProviderProductsLocalizedDisplayName = [(PKPaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata serviceProviderProductsLocalizedDisplayName];
    v28 = serviceProviderProductsLocalizedDisplayName;
    if (serviceProviderProductsLocalizedDisplayName)
    {
      v29 = serviceProviderProductsLocalizedDisplayName;
    }

    else
    {
      v29 = PKLocalizedPaymentString(&cfstr_TicketPlatform_1.isa);
    }

    v30 = v29;

    serviceProviderProductsLocalizedDescription = [(PKPaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata serviceProviderProductsLocalizedDescription];
    v32 = serviceProviderProductsLocalizedDescription;
    if (serviceProviderProductsLocalizedDescription)
    {
      v33 = serviceProviderProductsLocalizedDescription;
    }

    else
    {
      v33 = PKLocalizedPaymentString(&cfstr_TicketPlatform_2.isa);
    }

    v34 = v33;

    v35 = [[PKPaymentSetupChooseProductListItem alloc] initWithIdentifier:@"CommutePlansItemIdentifier" type:1 title:v30 subtitle:v34];
    [v39 addObject:v35];
  }

  if ([v39 count])
  {
    v36 = [v39 copy];
    balanceAndCommutePlansItems = self->_balanceAndCommutePlansItems;
    self->_balanceAndCommutePlansItems = v36;

    [v3 addObject:@"BalanceAndCommutePlansSectionIdentifier"];
  }

  v38 = [v3 copy];
  [(PKDynamicListSectionController *)self setIdentifiers:v38];
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  if ([identifierCopy isEqualToString:@"AutoTopUpSectionIdentifier"])
  {
    v9[0] = self->_autoTopUpItem;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v6 appendItems:v7];
  }

  else if ([identifierCopy isEqualToString:@"BalanceAndCommutePlansSectionIdentifier"])
  {
    [v6 appendItems:self->_balanceAndCommutePlansItems];
  }

  return v6;
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didSelectPKPaymentSetupChooseProductListItem:itemCopy];
}

- (id)defaultListLayout
{
  v2 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  v3 = PKProvisioningBackgroundColor();
  [v2 setBackgroundColor:v3];

  return v2;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  environmentCopy = environment;
  identifierCopy = identifier;
  defaultListLayout = [(PKPaymentSetupChooseProductListSectionController *)self defaultListLayout];
  if (([identifierCopy isEqualToString:@"PostpPaidSectionIdentifier"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"AutoTopUpSectionIdentifier") && !self->_postPaidItem || objc_msgSend(identifierCopy, "isEqualToString:", @"BalanceAndCommutePlansSectionIdentifier") && !self->_postPaidItem && !self->_autoTopUpItem)
  {
    [defaultListLayout setHeaderMode:1];
  }

  v9 = [MEMORY[0x1E6995580] sectionWithListConfiguration:defaultListLayout layoutEnvironment:environmentCopy];
  [v9 contentInsets];
  [v9 setContentInsets:PKSetupViewConstantsListSectionInset(v10)];

  return v9;
}

- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier
{
  cardImage = self->_cardImage;
  registrationCopy = registration;
  v7 = PKLocalizedPaymentString(&cfstr_TransitChooseF.isa);
  v8 = PKLocalizedPaymentString(&cfstr_TransitChooseF_0.isa);
  [registrationCopy configureWithUIImage:cardImage title:v7 subtitle:v8];

  v9 = PKProvisioningBackgroundColor();
  [registrationCopy setBackgroundColor:v9];
}

- (void)showLoadingIndicatorsForItemIdentifier:(id)identifier show:(BOOL)show
{
  showCopy = show;
  identifierCopy = identifier;
  if (!showCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deselectCells];
  }

  if ([identifierCopy isEqualToString:@"AutoTopUpItemIdentifier"])
  {
    [(PKPaymentSetupChooseProductListItem *)self->_autoTopUpItem setLoadingIndicatorVisible:showCopy];
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 reloadItem:self->_autoTopUpItem animated:1];
  }
}

- (PKPaymentSetupChooseProductListSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end