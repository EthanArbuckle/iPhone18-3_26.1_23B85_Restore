@interface PKPaymentSetupServiceProviderProductWithItem
- (PKPaymentSetupServiceProviderProductWithItem)initWithServiceProviderProduct:(id)product item:(id)item;
@end

@implementation PKPaymentSetupServiceProviderProductWithItem

- (PKPaymentSetupServiceProviderProductWithItem)initWithServiceProviderProduct:(id)product item:(id)item
{
  productCopy = product;
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = PKPaymentSetupServiceProviderProductWithItem;
  v9 = [(PKPaymentSetupServiceProviderProductWithItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceProviderProduct, product);
    objc_storeStrong(&v10->_item, item);
  }

  return v10;
}

@end