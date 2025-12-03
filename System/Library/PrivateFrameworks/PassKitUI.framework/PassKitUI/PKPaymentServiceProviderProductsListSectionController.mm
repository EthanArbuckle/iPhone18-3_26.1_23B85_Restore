@interface PKPaymentServiceProviderProductsListSectionController
- (PKPaymentServiceProviderProductsListSectionController)initWithIdentifier:(id)identifier serviceProviderProducts:(id)products;
- (PKPaymentServiceProviderProductsListSectionControllerDelegate)delegate;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
@end

@implementation PKPaymentServiceProviderProductsListSectionController

- (PKPaymentServiceProviderProductsListSectionController)initWithIdentifier:(id)identifier serviceProviderProducts:(id)products
{
  v14[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  productsCopy = products;
  v14[0] = identifierCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v13.receiver = self;
  v13.super_class = PKPaymentServiceProviderProductsListSectionController;
  v9 = [(PKPaymentSetupListSectionController *)&v13 initWithIdentifiers:v8];

  if (v9)
  {
    v10 = [productsCopy pk_arrayByApplyingBlock:&__block_literal_global_61];
    listItems = v9->_listItems;
    v9->_listItems = v10;
  }

  return v9;
}

PKServiceProviderProductListItem *__100__PKPaymentServiceProviderProductsListSectionController_initWithIdentifier_serviceProviderProducts___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(PKServiceProviderProductListItem);
  v4 = [v2 localizedDisplayName];
  [(PKPaymentSetupListItem *)v3 setTitle:v4];

  v5 = [v2 localizedDescription];
  [(PKPaymentSetupListItem *)v3 setSubtitle:v5];

  [(PKPaymentSetupListItem *)v3 setDisplayChevron:1];
  [(PKServiceProviderProductListItem *)v3 setProduct:v2];

  return v3;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v5 appendItems:self->_listItems];

  return v5;
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  delegate = [(PKPaymentServiceProviderProductsListSectionController *)self delegate];
  product = [itemCopy product];

  [delegate didSelectServiceProviderProduct:product];
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  environmentCopy = environment;
  defaultListLayout = [(PKPaymentSetupListSectionController *)self defaultListLayout];
  v7 = [MEMORY[0x1E6995580] sectionWithListConfiguration:defaultListLayout layoutEnvironment:environmentCopy];

  [v7 contentInsets];
  [v7 setContentInsets:16.0];

  return v7;
}

- (PKPaymentServiceProviderProductsListSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end