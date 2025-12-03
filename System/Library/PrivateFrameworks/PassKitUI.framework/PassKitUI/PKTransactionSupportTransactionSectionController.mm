@interface PKTransactionSupportTransactionSectionController
- (PKTransactionSupportTransactionSectionController)initWithTransactionItem:(id)item transactionItemPresenter:(id)presenter collectionView:(id)view;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
@end

@implementation PKTransactionSupportTransactionSectionController

- (PKTransactionSupportTransactionSectionController)initWithTransactionItem:(id)item transactionItemPresenter:(id)presenter collectionView:(id)view
{
  itemCopy = item;
  presenterCopy = presenter;
  viewCopy = view;
  v24.receiver = self;
  v24.super_class = PKTransactionSupportTransactionSectionController;
  v12 = [(PKPaymentSetupListSectionController *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_transactionItem, item);
    objc_storeStrong(&v13->_transactionItemPresenter, presenter);
    objc_storeStrong(&v13->_collectionView, view);
    objc_initWeak(&location, v13);
    v14 = MEMORY[0x1E69DC800];
    v15 = objc_opt_class();
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __116__PKTransactionSupportTransactionSectionController_initWithTransactionItem_transactionItemPresenter_collectionView___block_invoke;
    v21 = &unk_1E80154B0;
    objc_copyWeak(&v22, &location);
    v16 = [v14 registrationWithCellClass:v15 configurationHandler:&v18];
    [(PKPaymentSetupListSectionController *)v13 setCellRegistration:v16, v18, v19, v20, v21];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __116__PKTransactionSupportTransactionSectionController_initWithTransactionItem_transactionItemPresenter_collectionView___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _decorateCell:v10 forRowItem:v8 atIndexPath:v7];
  }
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = PKTransactionSupportTransactionSectionController;
  v4 = [(PKPaymentSetupListSectionController *)&v6 layoutWithLayoutEnvironment:environment sectionIdentifier:identifier];
  [v4 contentInsets];
  [v4 setContentInsets:16.0];

  return v4;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v8[0] = self->_transactionItem;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v5 appendItems:v6];

  return v5;
}

@end