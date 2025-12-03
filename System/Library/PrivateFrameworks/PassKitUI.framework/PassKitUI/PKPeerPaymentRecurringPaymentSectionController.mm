@interface PKPeerPaymentRecurringPaymentSectionController
- (PKPeerPaymentRecurringPaymentSectionController)init;
- (PKPeerPaymentRecurringPaymentSectionControllerDelegate)delegate;
- (id)cellRegistrationForItem:(id)item;
- (id)identifiers;
- (id)paymentTransactionItemForPayment:(id)payment;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_applyMaskToCell:(id)cell firstInSection:(BOOL)section lastInSection:(BOOL)inSection;
- (void)didSelectItem:(id)item;
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

- (void)didSelectItem:(id)item
{
  v4 = MEMORY[0x1E69B8F28];
  itemCopy = item;
  v6 = [v4 alloc];
  mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
  v17 = [v6 initWithPeerPaymentWebService:mEMORY[0x1E69B9020]];

  account = [v17 account];
  recurringPaymentsFeatureDescriptor = [account recurringPaymentsFeatureDescriptor];

  v10 = [PKPeerPaymentRecurringPaymentDetailViewController alloc];
  recipientAddress = [itemCopy recipientAddress];
  v12 = [(PKPeerPaymentRecurringPaymentDetailViewController *)v10 initWithRecurringPayment:itemCopy recipientAddress:recipientAddress mode:2 context:0 peerPaymentController:v17 remoteMessagesComposer:0];

  minimumAmount = [recurringPaymentsFeatureDescriptor minimumAmount];
  [(PKPeerPaymentRecurringPaymentDetailViewController *)v12 setMinimumAmount:minimumAmount];

  maximumAmount = [recurringPaymentsFeatureDescriptor maximumAmount];
  [(PKPeerPaymentRecurringPaymentDetailViewController *)v12 setMaximumAmount:maximumAmount];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  navigationController = [WeakRetained navigationController];

  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:v12];
  }

  else
  {
    [navigationController pushViewController:v12 animated:1];
  }
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v5 appendItems:self->_payments];

  return v5;
}

- (id)cellRegistrationForItem:(id)item
{
  itemCopy = item;
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

- (void)_applyMaskToCell:(id)cell firstInSection:(BOOL)section lastInSection:(BOOL)inSection
{
  inSectionCopy = inSection;
  sectionCopy = section;
  cellCopy = cell;
  v11 = cellCopy;
  v8 = 3;
  if (!sectionCopy || !inSectionCopy)
  {
    v8 = 1;
  }

  v9 = 2;
  if (!inSectionCopy)
  {
    v9 = 0;
  }

  if (sectionCopy)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  [cellCopy setMaskType:v10];
  [v11 setShowsBottomSeparator:!inSectionCopy];
}

- (id)paymentTransactionItemForPayment:(id)payment
{
  paymentCopy = payment;
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