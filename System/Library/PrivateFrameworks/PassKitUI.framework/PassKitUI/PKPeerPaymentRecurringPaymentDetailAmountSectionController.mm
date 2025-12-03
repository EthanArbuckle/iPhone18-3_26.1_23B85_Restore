@interface PKPeerPaymentRecurringPaymentDetailAmountSectionController
- (PKPeerPaymentRecurringPaymentDetailAmountSectionController)initWithAmount:(id)amount currency:(id)currency delegate:(id)delegate;
- (id)cellRegistrationForItem:(id)item;
- (id)identifiers;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_decorateListCell:(id)cell forItem:(id)item;
- (void)didSelectItem:(id)item;
@end

@implementation PKPeerPaymentRecurringPaymentDetailAmountSectionController

- (PKPeerPaymentRecurringPaymentDetailAmountSectionController)initWithAmount:(id)amount currency:(id)currency delegate:(id)delegate
{
  amountCopy = amount;
  currencyCopy = currency;
  delegateCopy = delegate;
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

    objc_storeWeak(&v11->_delegate, delegateCopy);
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

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v8[0] = self->_item;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v5 appendItems:v6];

  return v5;
}

- (id)cellRegistrationForItem:(id)item
{
  itemCopy = item;
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

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E69DC7E0];
  environmentCopy = environment;
  v6 = [[v4 alloc] initWithAppearance:2];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:clearColor];

  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v6 layoutEnvironment:environmentCopy];

  return v8;
}

- (void)didSelectItem:(id)item
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didSelectAmountSection];
}

- (void)_decorateListCell:(id)cell forItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  defaultBackgroundConfiguration = [cellCopy defaultBackgroundConfiguration];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [defaultBackgroundConfiguration setBackgroundColor:clearColor];

  [cellCopy setBackgroundConfiguration:defaultBackgroundConfiguration];
  cellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
  currencyAmount = [itemCopy currencyAmount];

  minimalFormattedStringValue = [currencyAmount minimalFormattedStringValue];
  [cellConfiguration setText:minimalFormattedStringValue];

  if ([cellCopy pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    v11 = 100.0;
  }

  else
  {
    v11 = 80.0;
  }

  textProperties = [cellConfiguration textProperties];
  v13 = [MEMORY[0x1E69DB878] pk_peerPaymentChiseledCashFontOfSize:v11];
  pk_fixedWidthFont = [v13 pk_fixedWidthFont];
  [textProperties setFont:pk_fixedWidthFont];

  v15 = +[PKPeerPaymentTheme primaryTextColor];
  [textProperties setColor:v15];

  [textProperties setAlignment:1];
  [textProperties setAdjustsFontSizeToFitWidth:1];
  [cellCopy setContentConfiguration:cellConfiguration];
}

@end