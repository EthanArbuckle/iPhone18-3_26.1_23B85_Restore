@interface PKPaymentSetupProductsSectionListSection
- (PKPaymentSetupProductsSectionListSection)initWithIdentifier:(id)identifier credentialTypeIdentifier:(id)typeIdentifier;
@end

@implementation PKPaymentSetupProductsSectionListSection

- (PKPaymentSetupProductsSectionListSection)initWithIdentifier:(id)identifier credentialTypeIdentifier:(id)typeIdentifier
{
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  v14.receiver = self;
  v14.super_class = PKPaymentSetupProductsSectionListSection;
  v9 = [(PKPaymentSetupProductsSectionListSection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_title, identifier);
    objc_storeStrong(&v10->_credentialTypeIdentifier, typeIdentifier);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sectionListItems = v10->_sectionListItems;
    v10->_sectionListItems = v11;
  }

  return v10;
}

@end