@interface PKPaymentMethodSelectionItem
- (PKPaymentMethodSelectionItem)initWithIdentifier:(id)a3;
@end

@implementation PKPaymentMethodSelectionItem

- (PKPaymentMethodSelectionItem)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentMethodSelectionItem;
  v6 = [(PKPaymentMethodSelectionItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

@end