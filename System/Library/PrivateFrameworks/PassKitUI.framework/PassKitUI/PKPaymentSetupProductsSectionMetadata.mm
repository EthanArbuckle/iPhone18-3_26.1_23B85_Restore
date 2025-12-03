@interface PKPaymentSetupProductsSectionMetadata
- (PKPaymentSetupProductsSectionMetadata)initWithTitle:(id)title itemIdentifiers:(id)identifiers;
@end

@implementation PKPaymentSetupProductsSectionMetadata

- (PKPaymentSetupProductsSectionMetadata)initWithTitle:(id)title itemIdentifiers:(id)identifiers
{
  titleCopy = title;
  identifiersCopy = identifiers;
  v12.receiver = self;
  v12.super_class = PKPaymentSetupProductsSectionMetadata;
  v9 = [(PKPaymentSetupProductsSectionMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_itemIdentifiers, identifiers);
  }

  return v10;
}

@end