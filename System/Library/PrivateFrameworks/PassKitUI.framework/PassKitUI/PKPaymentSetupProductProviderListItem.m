@interface PKPaymentSetupProductProviderListItem
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKPaymentSetupProductProviderListItem

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupProductProviderListItem;
  v4 = [(PKPaymentSetupListItem *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 8, self->_setupProductMethod);
  return v4;
}

@end