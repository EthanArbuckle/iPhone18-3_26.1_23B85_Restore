@interface PKPaymentSetupCategoriesListItem
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKPaymentSetupCategoriesListItem

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupCategoriesListItem;
  v4 = [(PKPaymentSetupListItem *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 8, self->_category);
  v4[9] = self->_isLoadingIcon;
  objc_storeStrong(v4 + 10, self->_sectionIdentifier);
  return v4;
}

@end