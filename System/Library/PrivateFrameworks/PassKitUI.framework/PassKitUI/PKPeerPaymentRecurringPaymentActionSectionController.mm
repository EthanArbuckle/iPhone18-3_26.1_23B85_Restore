@interface PKPeerPaymentRecurringPaymentActionSectionController
- (PKPeerPaymentRecurringPaymentSectionControllerDelegate)delegate;
- (id)_decorateListCell:(id)a3 forRowItem:(id)a4;
- (id)cellRegistrationForItem:(id)a3;
- (id)identifiers;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_beginSetupFlow;
- (void)_presentPeerPaymentAddDebitFlow;
- (void)didSelectItem:(id)a3;
@end

@implementation PKPeerPaymentRecurringPaymentActionSectionController

- (id)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"actions";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)didSelectItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained deselectCells];

  v18 = 0;
  v19 = 0;
  v6 = [PKPeerPaymentActionController canPerformPeerPaymentAction:3 account:self->_account unableReason:&v19 displayableError:&v18];
  v7 = v18;
  if (v6)
  {
    [(PKPeerPaymentRecurringPaymentActionSectionController *)self _beginSetupFlow];
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = v19;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __70__PKPeerPaymentRecurringPaymentActionSectionController_didSelectItem___block_invoke;
    v15 = &unk_1E8010998;
    objc_copyWeak(&v16, &location);
    v9 = [PKPeerPaymentActionController alertControllerForPeerPaymentActionUnableReason:v8 displayableError:v7 addCardActionHandler:&v12];
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = [v10 navigationController];
    [v11 presentViewController:v9 animated:1 completion:0];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __70__PKPeerPaymentRecurringPaymentActionSectionController_didSelectItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentPeerPaymentAddDebitFlow];
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v4 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v4 appendItems:&unk_1F3CC86D8];

  return v4;
}

- (id)cellRegistrationForItem:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC800];
  v6 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PKPeerPaymentRecurringPaymentActionSectionController_cellRegistrationForItem___block_invoke;
  v9[3] = &unk_1E8012088;
  objc_copyWeak(&v10, &location);
  v7 = [v5 registrationWithCellClass:v6 configurationHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __80__PKPeerPaymentRecurringPaymentActionSectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _decorateListCell:v9 forRowItem:v6];
}

- (void)_beginSetupFlow
{
  v7 = [[PKRecipientPickerViewController alloc] initWithTransactionSourceCollection:self->_sourceCollection familyCollection:self->_familyCollection peerPaymentSendFlowType:2];
  v3 = [[PKNavigationController alloc] initWithRootViewController:v7];
  if ([(UIViewController *)v3 pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [(PKNavigationController *)v3 setModalPresentationStyle:v4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained navigationController];
  [v6 presentViewController:v3 animated:1 completion:0];
}

- (void)_presentPeerPaymentAddDebitFlow
{
  v5 = [PKPeerPaymentActionController startProvisionToAddDebitWithNetworkAllowlist:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained navigationController];
  [v4 presentViewController:v5 animated:1 completion:0];
}

- (id)_decorateListCell:(id)a3 forRowItem:(id)a4
{
  v4 = MEMORY[0x1E69DCC28];
  v5 = a3;
  v6 = [v4 cellConfiguration];
  v7 = PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringListA.isa);
  [v6 setText:v7];

  v8 = [v6 textProperties];
  v9 = [MEMORY[0x1E69DC888] linkColor];
  [v8 setColor:v9];

  [v6 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 8.0}];
  [v5 setContentConfiguration:v6];
  [v5 setConfigurationUpdateHandler:&__block_literal_global_221];

  return v6;
}

void __85__PKPeerPaymentRecurringPaymentActionSectionController__decorateListCell_forRowItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v4 = a3;
  v5 = [MEMORY[0x1E69DC6E8] listCellConfiguration];
  if (([v4 isHighlighted] & 1) != 0 || objc_msgSend(v4, "isSelected"))
  {
    v6 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
    [v5 setBackgroundColor:v6];
  }

  [v7 setBackgroundConfiguration:v5];
}

- (PKPeerPaymentRecurringPaymentSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end