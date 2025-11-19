@interface PKPeerPaymentRecurringPaymentSectionController
- (PKPeerPaymentRecurringPaymentSectionController)init;
- (PKPeerPaymentRecurringPaymentSectionControllerDelegate)delegate;
- (id)cellRegistrationForItem:(id)a3;
- (id)identifiers;
- (id)paymentTransactionItemForPayment:(id)a3;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_applyMaskToCell:(id)a3 firstInSection:(BOOL)a4 lastInSection:(BOOL)a5;
- (void)didSelectItem:(id)a3;
@end

@implementation PKPeerPaymentRecurringPaymentSectionController

- (PKPeerPaymentRecurringPaymentSectionController)init
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentRecurringPaymentSectionController;
  v2 = [(PKPeerPaymentRecurringPaymentSectionController *)&v6 init];
  if (v2)
  {
    v3 = [[PKDashboardPaymentTransactionItemPresenter alloc] initWithContext:0 detailViewStyle:0 avatarViewDelegate:0];
    presenter = v2->_presenter;
    v2->_presenter = v3;
  }

  return v2;
}

- (id)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"recurringPayments";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)didSelectItem:(id)a3
{
  v4 = MEMORY[0x1E69B8F28];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x1E69B9020] sharedService];
  v17 = [v6 initWithPeerPaymentWebService:v7];

  v8 = [v17 account];
  v9 = [v8 recurringPaymentsFeatureDescriptor];

  v10 = [PKPeerPaymentRecurringPaymentDetailViewController alloc];
  v11 = [v5 recipientAddress];
  v12 = [(PKPeerPaymentRecurringPaymentDetailViewController *)v10 initWithRecurringPayment:v5 recipientAddress:v11 mode:2 context:0 peerPaymentController:v17 remoteMessagesComposer:0];

  v13 = [v9 minimumAmount];
  [(PKPeerPaymentRecurringPaymentDetailViewController *)v12 setMinimumAmount:v13];

  v14 = [v9 maximumAmount];
  [(PKPeerPaymentRecurringPaymentDetailViewController *)v12 setMaximumAmount:v14];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = [WeakRetained navigationController];

  if ([v16 pk_settings_useStateDrivenNavigation])
  {
    [v16 pk_settings_pushViewController:v12];
  }

  else
  {
    [v16 pushViewController:v12 animated:1];
  }
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v5 appendItems:self->_payments];

  return v5;
}

- (id)cellRegistrationForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = MEMORY[0x1E69DC800];
    v7 = objc_opt_class();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__PKPeerPaymentRecurringPaymentSectionController_cellRegistrationForItem___block_invoke;
    v10[3] = &unk_1E8022398;
    v10[4] = self;
    v8 = [v6 registrationWithCellClass:v7 configurationHandler:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __74__PKPeerPaymentRecurringPaymentSectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 72);
  v6 = a3;
  v7 = a2;
  v14 = [v5 objectAtIndex:{objc_msgSend(v6, "row")}];
  v8 = *(a1 + 32);
  v9 = v8[8];
  v10 = [v8 paymentTransactionItemForPayment:v14];
  [v9 updateCell:v7 forItem:v10 inCollectionView:v7 atIndexPath:v6];

  v11 = *(a1 + 32);
  v12 = [v6 row] == 0;
  v13 = [v6 row];

  [v11 _applyMaskToCell:v7 firstInSection:v12 lastInSection:{v13 == objc_msgSend(*(*(a1 + 32) + 72), "count") - 1}];
}

- (void)_applyMaskToCell:(id)a3 firstInSection:(BOOL)a4 lastInSection:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v11 = v7;
  v8 = 3;
  if (!v6 || !v5)
  {
    v8 = 1;
  }

  v9 = 2;
  if (!v5)
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  [v7 setMaskType:v10];
  [v11 setShowsBottomSeparator:!v5];
}

- (id)paymentTransactionItemForPayment:(id)a3
{
  v4 = a3;
  v5 = [PKDashboardPaymentTransactionItem alloc];
  sourceCollection = self->_sourceCollection;
  familyCollection = self->_familyCollection;
  v8 = PKPeerPaymentTransactionForRecurringPayment();

  v9 = [(PKDashboardPaymentTransactionItem *)v5 initWithTransactionSourceCollection:sourceCollection familyCollection:familyCollection transaction:v8 account:0 accountUserCollection:0 bankConnectInstitution:0];

  return v9;
}

- (PKPeerPaymentRecurringPaymentSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end