@interface PKPeerPaymentRecurringPaymentDetailActionSectionController
- (PKPeerPaymentRecurringPaymentDetailActionSectionController)initWithAction:(unint64_t)action delegate:(id)delegate;
- (PKPeerPaymentRecurringPaymentDetailActionSectionControllerDelegate)delegate;
- (id)_actionSectionIdentifier;
- (id)_spinnerAccessory;
- (id)identifiers;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_decorateListCell:(id)cell forItem:(id)item;
- (void)didSelectItem:(id)item;
- (void)reloadItemsAnimated:(BOOL)animated;
- (void)setStatus:(unint64_t)status;
@end

@implementation PKPeerPaymentRecurringPaymentDetailActionSectionController

- (PKPeerPaymentRecurringPaymentDetailActionSectionController)initWithAction:(unint64_t)action delegate:(id)delegate
{
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = PKPeerPaymentRecurringPaymentDetailActionSectionController;
  v7 = [(PKPeerPaymentRecurringPaymentDetailActionSectionController *)&v19 init];
  v8 = v7;
  if (v7)
  {
    v7->_action = action;
    objc_storeWeak(&v7->_delegate, delegateCopy);
    objc_initWeak(&location, v8);
    v9 = MEMORY[0x1E69DC800];
    v10 = objc_opt_class();
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __86__PKPeerPaymentRecurringPaymentDetailActionSectionController_initWithAction_delegate___block_invoke;
    v16 = &unk_1E8012088;
    objc_copyWeak(&v17, &location);
    v11 = [v9 registrationWithCellClass:v10 configurationHandler:&v13];
    [(PKPeerPaymentRecurringPaymentDetailActionSectionController *)v8 setCellRegistration:v11, v13, v14, v15, v16];

    [(PKPeerPaymentRecurringPaymentDetailActionSectionController *)v8 reloadItemsAnimated:0];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __86__PKPeerPaymentRecurringPaymentDetailActionSectionController_initWithAction_delegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
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
  animatedCopy = animated;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  action = self->_action;
  if (action)
  {
    v6 = [(PKPeerPaymentRecurringPaymentDetailRowItem *)[PKPeerPaymentRecurringPaymentActionRowItem alloc] initWithIdentifier:@"pause" isEditable:0 titleColor:0];
    v7 = self->_status - 1;
    if (v7 <= 3)
    {
      v8 = PKLocalizedPeerPaymentRecurringString(&off_1E8016278[v7]->isa);
      [(PKPeerPaymentRecurringPaymentActionRowItem *)v6 setTitle:v8];
    }

    [(PKPeerPaymentRecurringPaymentActionRowItem *)v6 setAction:1];
    [(PKPeerPaymentRecurringPaymentActionRowItem *)v6 setActionInProgress:self->_actionInProgress];
    [(PKPeerPaymentRecurringPaymentDetailRowItem *)v6 setAxID:*MEMORY[0x1E69B9A08]];
    [v16 addObject:v6];

    action = self->_action;
  }

  if ((action & 2) != 0)
  {
    v9 = [(PKPeerPaymentRecurringPaymentDetailRowItem *)[PKPeerPaymentRecurringPaymentActionRowItem alloc] initWithIdentifier:@"cancel" isEditable:0 titleColor:0];
    v10 = PKLocalizedPeerPaymentRecurringString(&cfstr_ActionCancel.isa);
    [(PKPeerPaymentRecurringPaymentActionRowItem *)v9 setTitle:v10];

    [(PKPeerPaymentRecurringPaymentActionRowItem *)v9 setAction:2];
    [(PKPeerPaymentRecurringPaymentActionRowItem *)v9 setActionInProgress:self->_actionInProgress];
    [(PKPeerPaymentRecurringPaymentDetailRowItem *)v9 setAxID:*MEMORY[0x1E69B95A0]];
    [v16 addObject:v9];
  }

  v11 = [v16 copy];
  rowItems = self->_rowItems;
  self->_rowItems = v11;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  _actionSectionIdentifier = [(PKPeerPaymentRecurringPaymentDetailActionSectionController *)self _actionSectionIdentifier];
  [WeakRetained updateFooterForSectionIdentifier:_actionSectionIdentifier];

  v15 = objc_loadWeakRetained(&self->_delegate);
  [v15 reloadDataAnimated:animatedCopy];
}

- (id)identifiers
{
  v5[1] = *MEMORY[0x1E69E9840];
  _actionSectionIdentifier = [(PKPeerPaymentRecurringPaymentDetailActionSectionController *)self _actionSectionIdentifier];
  v5[0] = _actionSectionIdentifier;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)_actionSectionIdentifier
{
  action = self->_action;
  if (action)
  {
    v3 = [@"action" stringByAppendingFormat:@"-%@", @"pause"];
    if ((self->_action & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = @"action";
  if ((action & 2) != 0)
  {
LABEL_5:
    v5 = [(__CFString *)v3 stringByAppendingFormat:@"-%@", @"cancel"];

    v3 = v5;
  }

LABEL_6:

  return v3;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v5 appendItems:self->_rowItems];

  return v5;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  environmentCopy = environment;
  v6 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:clearColor];

  headerText = [(PKDynamicListSectionController *)self headerText];
  if (headerText)
  {
  }

  else
  {
    attributedHeaderText = [(PKDynamicListSectionController *)self attributedHeaderText];

    if (!attributedHeaderText)
    {
      goto LABEL_5;
    }
  }

  [v6 setHeaderMode:1];
LABEL_5:
  footerText = [(PKDynamicListSectionController *)self footerText];
  if (footerText)
  {
  }

  else
  {
    attributedFooterText = [(PKDynamicListSectionController *)self attributedFooterText];

    if (!attributedFooterText)
    {
      goto LABEL_9;
    }
  }

  [v6 setFooterMode:1];
LABEL_9:
  v12 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v6 layoutEnvironment:environmentCopy];

  return v12;
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  action = self->_action;
  v8[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__PKPeerPaymentRecurringPaymentDetailActionSectionController_didSelectItem___block_invoke;
  v9[3] = &unk_1E8010970;
  v9[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__PKPeerPaymentRecurringPaymentDetailActionSectionController_didSelectItem___block_invoke_3;
  v8[3] = &unk_1E8010970;
  [WeakRetained performAction:action forItem:itemCopy startHandler:v9 completion:v8];

  v7 = objc_loadWeakRetained(&self->_delegate);
  [v7 deselectCells];
}

void __76__PKPeerPaymentRecurringPaymentDetailActionSectionController_didSelectItem___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKPeerPaymentRecurringPaymentDetailActionSectionController_didSelectItem___block_invoke_2;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__PKPeerPaymentRecurringPaymentDetailActionSectionController_didSelectItem___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKPeerPaymentRecurringPaymentDetailActionSectionController_didSelectItem___block_invoke_4;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)setStatus:(unint64_t)status
{
  if (self->_status != status)
  {
    self->_status = status;
    [(PKPeerPaymentRecurringPaymentDetailActionSectionController *)self reloadItemsAnimated:1];
  }
}

- (void)_decorateListCell:(id)cell forItem:(id)item
{
  v18[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v7 = MEMORY[0x1E69DCC28];
  cellCopy = cell;
  valueCellConfiguration = [v7 valueCellConfiguration];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  identifier = [itemCopy identifier];
  v12 = [identifier isEqualToString:@"cancel"];

  if (v12)
  {
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];

    systemBlueColor = systemRedColor;
  }

  title = [itemCopy title];
  [valueCellConfiguration setText:title];

  textProperties = [valueCellConfiguration textProperties];
  [textProperties setColor:systemBlueColor];

  if ([itemCopy actionInProgress])
  {
    _spinnerAccessory = [(PKPeerPaymentRecurringPaymentDetailActionSectionController *)self _spinnerAccessory];
    v18[0] = _spinnerAccessory;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [cellCopy setAccessories:v17];
  }

  else
  {
    [cellCopy setAccessories:MEMORY[0x1E695E0F0]];
  }

  [cellCopy setContentConfiguration:valueCellConfiguration];
}

- (id)_spinnerAccessory
{
  v2 = objc_alloc_init(MEMORY[0x1E69DC638]);
  [v2 startAnimating];
  v3 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v2 placement:1];

  return v3;
}

- (PKPeerPaymentRecurringPaymentDetailActionSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end