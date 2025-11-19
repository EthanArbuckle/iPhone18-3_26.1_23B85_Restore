@interface PKPaymentSetupChooseProductListSectionController
- (PKPaymentSetupChooseProductListSectionController)initWithImage:(id)a3 digitalIssuanceMetadata:(id)a4;
- (PKPaymentSetupChooseProductListSectionControllerDelegate)delegate;
- (id)defaultListLayout;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_generateItems;
- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5;
- (void)didSelectItem:(id)a3;
- (void)showLoadingIndicatorsForItemIdentifier:(id)a3 show:(BOOL)a4;
@end

@implementation PKPaymentSetupChooseProductListSectionController

- (PKPaymentSetupChooseProductListSectionController)initWithImage:(id)a3 digitalIssuanceMetadata:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PKPaymentSetupChooseProductListSectionController;
  v9 = [(PKPaymentSetupChooseProductListSectionController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_digitalIssuanceMetadata, a4);
    objc_storeStrong(&v10->_cardImage, a3);
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
  v4 = [(PKPaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata autoTopUpProduct];
  v5 = [(PKPaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata serviceProviderProducts];
  v6 = [v5 count];

  if (v4)
  {
    v7 = [v4 localizedDisplayName];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = PKLocalizedPaymentString(&cfstr_AutoTopUpTrans.isa);
    }

    v10 = v9;

    v11 = [v4 localizedDescription];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
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

  v17 = [(PKPaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata balanceIdentifier];

  if (v17)
  {
    v18 = [(PKPaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata balanceLocalizedDisplayName];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = PKLocalizedPaymentString(&cfstr_TicketPlatform.isa);
    }

    v21 = v20;

    v22 = [(PKPaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata balanceLocalizedDescription];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
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
    v27 = [(PKPaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata serviceProviderProductsLocalizedDisplayName];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = PKLocalizedPaymentString(&cfstr_TicketPlatform_1.isa);
    }

    v30 = v29;

    v31 = [(PKPaymentDigitalIssuanceMetadata *)self->_digitalIssuanceMetadata serviceProviderProductsLocalizedDescription];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
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

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  if ([v5 isEqualToString:@"AutoTopUpSectionIdentifier"])
  {
    v9[0] = self->_autoTopUpItem;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v6 appendItems:v7];
  }

  else if ([v5 isEqualToString:@"BalanceAndCommutePlansSectionIdentifier"])
  {
    [v6 appendItems:self->_balanceAndCommutePlansItems];
  }

  return v6;
}

- (void)didSelectItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didSelectPKPaymentSetupChooseProductListItem:v4];
}

- (id)defaultListLayout
{
  v2 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  v3 = PKProvisioningBackgroundColor();
  [v2 setBackgroundColor:v3];

  return v2;
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentSetupChooseProductListSectionController *)self defaultListLayout];
  if (([v7 isEqualToString:@"PostpPaidSectionIdentifier"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"AutoTopUpSectionIdentifier") && !self->_postPaidItem || objc_msgSend(v7, "isEqualToString:", @"BalanceAndCommutePlansSectionIdentifier") && !self->_postPaidItem && !self->_autoTopUpItem)
  {
    [v8 setHeaderMode:1];
  }

  v9 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v8 layoutEnvironment:v6];
  [v9 contentInsets];
  [v9 setContentInsets:PKSetupViewConstantsListSectionInset(v10)];

  return v9;
}

- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5
{
  cardImage = self->_cardImage;
  v6 = a3;
  v7 = PKLocalizedPaymentString(&cfstr_TransitChooseF.isa);
  v8 = PKLocalizedPaymentString(&cfstr_TransitChooseF_0.isa);
  [v6 configureWithUIImage:cardImage title:v7 subtitle:v8];

  v9 = PKProvisioningBackgroundColor();
  [v6 setBackgroundColor:v9];
}

- (void)showLoadingIndicatorsForItemIdentifier:(id)a3 show:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deselectCells];
  }

  if ([v8 isEqualToString:@"AutoTopUpItemIdentifier"])
  {
    [(PKPaymentSetupChooseProductListItem *)self->_autoTopUpItem setLoadingIndicatorVisible:v4];
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