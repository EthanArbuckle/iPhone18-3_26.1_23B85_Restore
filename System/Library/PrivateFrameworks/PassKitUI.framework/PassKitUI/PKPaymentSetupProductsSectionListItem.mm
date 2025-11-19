@interface PKPaymentSetupProductsSectionListItem
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKPaymentSetupProductsSectionListItem

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = PKPaymentSetupProductsSectionListItem;
  v5 = [(PKPaymentSetupListItem *)&v11 copyWithZone:?];
  v6 = [(PKPaymentSetupProduct *)self->_product copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSOrderedSet *)self->_searchTerms copyWithZone:a3];
  v9 = *(v5 + 9);
  *(v5 + 9) = v8;

  *(v5 + 10) = self->_isLoadingIcon;
  objc_storeStrong(v5 + 11, self->_sectionIdentifier);
  return v5;
}

@end