@interface PKPeerPaymentRecurringPaymentDetailAmountSectionController
- (PKPeerPaymentRecurringPaymentDetailAmountSectionController)initWithAmount:(id)a3 currency:(id)a4 delegate:(id)a5;
- (id)cellRegistrationForItem:(id)a3;
- (id)identifiers;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_decorateListCell:(id)a3 forItem:(id)a4;
- (void)didSelectItem:(id)a3;
@end

@implementation PKPeerPaymentRecurringPaymentDetailAmountSectionController

- (PKPeerPaymentRecurringPaymentDetailAmountSectionController)initWithAmount:(id)a3 currency:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = PKPeerPaymentRecurringPaymentDetailAmountSectionController;
  v11 = [(PKPeerPaymentRecurringPaymentDetailAmountSectionController *)&v17 init];
  if (v11)
  {
    v12 = [(PKPeerPaymentRecurringPaymentDetailRowItem *)[PKPeerPaymentRecurringPaymentAmountDetailRowItem alloc] initWithIdentifier:@"chiseledAmount" isEditable:0 titleColor:0];
    item = v11->_item;
    v11->_item = v12;

    v14 = v11->_item;
    v15 = PKCurrencyAmountMake();
    [(PKPeerPaymentRecurringPaymentAmountDetailRowItem *)v14 setCurrencyAmount:v15];

    objc_storeWeak(&v11->_delegate, v10);
  }

  return v11;
}

- (id)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"chiseledAmount";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v8[0] = self->_item;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v5 appendItems:v6];

  return v5;
}

- (id)cellRegistrationForItem:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC800];
  v6 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__PKPeerPaymentRecurringPaymentDetailAmountSectionController_cellRegistrationForItem___block_invoke;
  v9[3] = &unk_1E8013AB0;
  objc_copyWeak(&v10, &location);
  v7 = [v5 registrationWithCellClass:v6 configurationHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __86__PKPeerPaymentRecurringPaymentDetailAmountSectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _decorateListCell:v7 forItem:v6];
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v4 = MEMORY[0x1E69DC7E0];
  v5 = a3;
  v6 = [[v4 alloc] initWithAppearance:2];
  v7 = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:v7];

  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v6 layoutEnvironment:v5];

  return v8;
}

- (void)didSelectItem:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didSelectAmountSection];
}

- (void)_decorateListCell:(id)a3 forItem:(id)a4
{
  v5 = a4;
  v6 = a3;
  v16 = [v6 defaultBackgroundConfiguration];
  v7 = [MEMORY[0x1E69DC888] clearColor];
  [v16 setBackgroundColor:v7];

  [v6 setBackgroundConfiguration:v16];
  v8 = [MEMORY[0x1E69DCC28] cellConfiguration];
  v9 = [v5 currencyAmount];

  v10 = [v9 minimalFormattedStringValue];
  [v8 setText:v10];

  if ([v6 pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    v11 = 100.0;
  }

  else
  {
    v11 = 80.0;
  }

  v12 = [v8 textProperties];
  v13 = [MEMORY[0x1E69DB878] pk_peerPaymentChiseledCashFontOfSize:v11];
  v14 = [v13 pk_fixedWidthFont];
  [v12 setFont:v14];

  v15 = +[PKPeerPaymentTheme primaryTextColor];
  [v12 setColor:v15];

  [v12 setAlignment:1];
  [v12 setAdjustsFontSizeToFitWidth:1];
  [v6 setContentConfiguration:v8];
}

@end