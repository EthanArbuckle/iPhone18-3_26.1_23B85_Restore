@interface PKServiceProviderListItem
- (NSCopying)identifier;
@end

@implementation PKServiceProviderListItem

- (NSCopying)identifier
{
  v2 = [(PKPaymentSetupServiceProviderProductWithItem *)self->_itemPair item];
  v3 = [v2 identifier];

  return v3;
}

@end