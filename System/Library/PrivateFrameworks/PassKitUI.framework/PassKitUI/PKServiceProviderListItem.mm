@interface PKServiceProviderListItem
- (NSCopying)identifier;
@end

@implementation PKServiceProviderListItem

- (NSCopying)identifier
{
  item = [(PKPaymentSetupServiceProviderProductWithItem *)self->_itemPair item];
  identifier = [item identifier];

  return identifier;
}

@end