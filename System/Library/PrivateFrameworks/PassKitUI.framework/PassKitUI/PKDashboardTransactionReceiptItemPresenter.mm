@interface PKDashboardTransactionReceiptItemPresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardTransactionReceiptItemPresenter)init;
- (id)_contactKeysToFetch;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
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
    _contactKeysToFetch = [(PKDashboardTransactionReceiptItemPresenter *)v2 _contactKeysToFetch];
    v9 = [v7 initWithContactStore:v6 keysToFetch:_contactKeysToFetch];

    mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
    defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    v12 = [[PKPaymentTransactionDetailsFactory alloc] initWithContactResolver:v9 peerPaymentWebService:mEMORY[0x1E69B9020] paymentServiceDataProvider:defaultDataProvider detailViewStyle:0 context:1];
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [currentDevice _supportsForceTouch]);
  v10[1] = v5;
  descriptorForRequiredKeys = [off_1EE98A640() descriptorForRequiredKeys];
  v7 = *MEMORY[0x1E695C208];
  v10[2] = descriptorForRequiredKeys;
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

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  controllerCopy = controller;
  itemCopy = item;
  transaction = [itemCopy transaction];
  transactionSourceCollection = [itemCopy transactionSourceCollection];
  account = [itemCopy account];
  accountUserCollection = [itemCopy accountUserCollection];
  familyCollection = [itemCopy familyCollection];
  physicalCards = [itemCopy physicalCards];

  v16 = [(PKPaymentTransactionDetailsFactory *)self->_transactionDetailsFactory viewControllerForTransaction:transaction sourceCollection:transactionSourceCollection familyCollection:familyCollection account:account accountUserCollection:accountUserCollection bankConnectInstitution:0 physicalCards:physicalCards group:0 navigationController:controllerCopy];
  [controllerCopy pushViewController:v16 animated:1];
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"DashboardTransactionReceiptItemCellReuseIdentifier" forIndexPath:pathCopy];
  [(PKDashboardTransactionReceiptItemPresenter *)self _configureCell:v11 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy];

  return v11;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  [(PKDashboardTransactionReceiptItemPresenter *)self _configureCell:self->_sampleCell forItem:item inCollectionView:view forIndexPath:path];
  sampleCell = self->_sampleCell;

  [(PKDashboardStackedImageCollectionViewCell *)sampleCell sizeThatFits:width, 1.79769313e308];
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path
{
  cellCopy = cell;
  receipt = [item receipt];
  lineItems = [receipt lineItems];
  firstObject = [lineItems firstObject];
  image = [firstObject image];
  if (image)
  {
    v11 = MEMORY[0x1E69DCAB8];
    image2 = [firstObject image];
    v13 = [v11 imageWithPKImage:image2];
  }

  else
  {
    v13 = 0;
  }

  [cellCopy setIcon:v13];
  title = [firstObject title];
  [cellCopy setTitle:title];

  subtitle = [firstObject subtitle];
  [cellCopy setSubtitle:subtitle];

  v16 = [lineItems count];
  if (v16 < 2)
  {
    [firstObject secondarySubtitle];
  }

  else
  {
    PKLocalizedString(&cfstr_TransactionRec.isa, &cfstr_Lu.isa, v16);
  }
  v17 = ;
  [cellCopy setTertiaryText:v17];
}

@end