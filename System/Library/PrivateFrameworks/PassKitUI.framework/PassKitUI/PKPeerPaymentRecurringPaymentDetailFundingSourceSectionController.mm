@interface PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController
- (PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController)initWithFundingSource:(id)source useAppleCashBalance:(BOOL)balance delegate:(id)delegate;
- (PKPeerPaymentRecurringPaymentDetailFundingSourceSectionControllerDelegate)delegate;
- (id)identifiers;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_decorateListCell:(id)cell forItem:(id)item;
- (void)didSelectItem:(id)item;
- (void)reloadItemsAnimated:(BOOL)animated;
- (void)setFundingSource:(id)source;
- (void)setIsEditable:(BOOL)editable;
- (void)setTitleColor:(id)color;
- (void)setUseAppleCashBalance:(BOOL)balance;
@end

@implementation PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController

- (PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController)initWithFundingSource:(id)source useAppleCashBalance:(BOOL)balance delegate:(id)delegate
{
  sourceCopy = source;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController;
  v11 = [(PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_fundingSource, source);
    v12->_useAppleCashBalance = balance;
    objc_storeWeak(&v12->_delegate, delegateCopy);
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    titleColor = v12->_titleColor;
    v12->_titleColor = labelColor;

    objc_initWeak(&location, v12);
    v15 = MEMORY[0x1E69DC800];
    v16 = objc_opt_class();
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __120__PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController_initWithFundingSource_useAppleCashBalance_delegate___block_invoke;
    v22 = &unk_1E8012088;
    objc_copyWeak(&v23, &location);
    v17 = [v15 registrationWithCellClass:v16 configurationHandler:&v19];
    [(PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController *)v12 setCellRegistration:v17, v19, v20, v21, v22];

    [(PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController *)v12 reloadItemsAnimated:0];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __120__PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController_initWithFundingSource_useAppleCashBalance_delegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _decorateListCell:v8 forItem:v6];
  }
}

- (void)reloadItemsAnimated:(BOOL)animated
{
  array = [MEMORY[0x1E695DF70] array];
  v6 = [(PKPeerPaymentRecurringPaymentDetailRowItem *)[PKPeerPaymentRecurringPaymentFundingSourceDetailRowItem alloc] initWithIdentifier:@"fundingSourceItem" isEditable:self->_isEditable titleColor:self->_titleColor];
  v7 = PKLocalizedPeerPaymentRecurringString(&cfstr_DetailsFunding.isa);
  [(PKPeerPaymentRecurringPaymentFundingSourceDetailRowItem *)v6 setTitle:v7];

  if (self->_useAppleCashBalance)
  {
    v8 = PKLocalizedPeerPaymentRecurringString(&cfstr_DetailsMultipl.isa);
    [(PKPeerPaymentRecurringPaymentFundingSourceDetailRowItem *)v6 setName:v8];

    v9 = PKLocalizedPeerPaymentRecurringString(&cfstr_DetailsFunding_0.isa);
    [(PKDynamicListSectionController *)self setFooterText:v9];
  }

  else
  {
    [(PKPeerPaymentRecurringPaymentFundingSourceDetailRowItem *)v6 setName:self->_fundingSource];
    [(PKDynamicListSectionController *)self setFooterText:0];
  }

  [array addObject:v6];
  v10 = [array copy];
  rowItems = self->_rowItems;
  self->_rowItems = v10;

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController_reloadItemsAnimated___block_invoke;
  v12[3] = &unk_1E8013F80;
  v12[4] = self;
  animatedCopy = animated;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __89__PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController_reloadItemsAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained reloadDataAnimated:*(a1 + 40)];
}

- (id)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"fundingSourceSection";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v5 appendItems:self->_rowItems];

  return v5;
}

- (void)didSelectItem:(id)item
{
  if (self->_isEditable)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained fundingSourceSectionSelected];
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 deselectCells];
}

- (void)setFundingSource:(id)source
{
  sourceCopy = source;
  if (![(NSString *)self->_fundingSource isEqualToString:?])
  {
    objc_storeStrong(&self->_fundingSource, source);
    [(PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController *)self reloadItemsAnimated:1];
  }
}

- (void)setUseAppleCashBalance:(BOOL)balance
{
  if (self->_useAppleCashBalance != balance)
  {
    self->_useAppleCashBalance = balance;
    [(PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController *)self reloadItemsAnimated:1];
  }
}

- (void)setIsEditable:(BOOL)editable
{
  if (self->_isEditable != editable)
  {
    self->_isEditable = editable;
    [(PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController *)self reloadItemsAnimated:1];
  }
}

- (void)setTitleColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_titleColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_titleColor, color);
    [(PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController *)self reloadItemsAnimated:1];
  }
}

- (void)_decorateListCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  title = [itemCopy title];
  [valueCellConfiguration setText:title];

  textProperties = [valueCellConfiguration textProperties];
  [textProperties setLineBreakMode:0];
  titleColor = [itemCopy titleColor];
  [textProperties setColor:titleColor];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  name = [itemCopy name];
  if ([name length])
  {
    [valueCellConfiguration setSecondaryText:name];
    [valueCellConfiguration setPrefersSideBySideTextAndSecondaryText:1];
    secondaryTextProperties = [valueCellConfiguration secondaryTextProperties];
    [secondaryTextProperties setNumberOfLines:1];

    secondaryTextProperties2 = [valueCellConfiguration secondaryTextProperties];
    [secondaryTextProperties2 setLineBreakMode:5];
  }

  [cellCopy setContentConfiguration:valueCellConfiguration];
  if ([itemCopy isEditable])
  {
    v14 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
    [v10 addObject:v14];
  }

  [cellCopy setAccessories:v10];
  [cellCopy setAccessibilityIdentifier:*MEMORY[0x1E69B9A50]];
}

- (PKPeerPaymentRecurringPaymentDetailFundingSourceSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end