@interface PKPaymentSetupProductProviderListItem
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKPaymentSetupProductProviderListItem

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupProductProviderListItem;
  v4 = [(PKPaymentSetupListItem *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 8, self->_setupProductMethod);
  return v4;
}

@end