@interface PKDashboardTransactionReceiptItemPresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardTransactionReceiptItemPresenter)init;
- (id)_contactKeysToFetch;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6;
- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7;
@end

@implementation PKDashboardTransactionReceiptItemPresenter

- (PKDashboardTransactionReceiptItemPresenter)init
{
  v15.receiver = self;
  v15.super_class = PKDashboardTransactionReceiptItemPresenter;
  v2 = [(PKDashboardTransactionReceiptItemPresenter *)&v15 init];
  if (v2)
  {
    v3 = [PKDashboardStackedImageCollectionViewCell alloc];
    v4 = [(PKDashboardStackedImageCollectionViewCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v2->_sampleCell;
    v2->_sampleCell = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v7 = objc_alloc(MEMORY[0x1E69B8740]);
    v8 = [(PKDashboardTransactionReceiptItemPresenter *)v2 _contactKeysToFetch];
    v9 = [v7 initWithContactStore:v6 keysToFetch:v8];

    v10 = [MEMORY[0x1E69B9020] sharedService];
    v11 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    v12 = [[PKPaymentTransactionDetailsFactory alloc] initWithContactResolver:v9 peerPaymentWebService:v10 paymentServiceDataProvider:v11 detailViewStyle:0 context:1];
    transactionDetailsFactory = v2->_transactionDetailsFactory;
    v2->_transactionDetailsFactory = v12;
  }

  return v2;
}

- (id)_contactKeysToFetch
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v10[0] = v2;
  v3 = _MergedGlobals_616();
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [v4 _supportsForceTouch]);
  v10[1] = v5;
  v6 = [off_1EE98A640() descriptorForRequiredKeys];
  v7 = *MEMORY[0x1E695C208];
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = *MEMORY[0x1E695C330];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  return v8;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"DashboardTransactionReceiptItemCellReuseIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7
{
  v9 = a6;
  v10 = a3;
  v17 = [v10 transaction];
  v11 = [v10 transactionSourceCollection];
  v12 = [v10 account];
  v13 = [v10 accountUserCollection];
  v14 = [v10 familyCollection];
  v15 = [v10 physicalCards];

  v16 = [(PKPaymentTransactionDetailsFactory *)self->_transactionDetailsFactory viewControllerForTransaction:v17 sourceCollection:v11 familyCollection:v14 account:v12 accountUserCollection:v13 bankConnectInstitution:0 physicalCards:v15 group:0 navigationController:v9];
  [v9 pushViewController:v16 animated:1];
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:@"DashboardTransactionReceiptItemCellReuseIdentifier" forIndexPath:v8];
  [(PKDashboardTransactionReceiptItemPresenter *)self _configureCell:v11 forItem:v10 inCollectionView:v9 forIndexPath:v8];

  return v11;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  [(PKDashboardTransactionReceiptItemPresenter *)self _configureCell:self->_sampleCell forItem:a3 inCollectionView:a4 forIndexPath:a6];
  sampleCell = self->_sampleCell;

  [(PKDashboardStackedImageCollectionViewCell *)sampleCell sizeThatFits:a5, 1.79769313e308];
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6
{
  v18 = a3;
  v7 = [a4 receipt];
  v8 = [v7 lineItems];
  v9 = [v8 firstObject];
  v10 = [v9 image];
  if (v10)
  {
    v11 = MEMORY[0x1E69DCAB8];
    v12 = [v9 image];
    v13 = [v11 imageWithPKImage:v12];
  }

  else
  {
    v13 = 0;
  }

  [v18 setIcon:v13];
  v14 = [v9 title];
  [v18 setTitle:v14];

  v15 = [v9 subtitle];
  [v18 setSubtitle:v15];

  v16 = [v8 count];
  if (v16 < 2)
  {
    [v9 secondarySubtitle];
  }

  else
  {
    PKLocalizedString(&cfstr_TransactionRec.isa, &cfstr_Lu.isa, v16);
  }
  v17 = ;
  [v18 setTertiaryText:v17];
}

@end