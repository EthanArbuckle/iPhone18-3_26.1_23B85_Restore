@interface PKPaymentSetupProductsSectionListSection
- (PKPaymentSetupProductsSectionListSection)initWithIdentifier:(id)a3 credentialTypeIdentifier:(id)a4;
@end

@implementation PKPaymentSetupProductsSectionListSection

- (PKPaymentSetupProductsSectionListSection)initWithIdentifier:(id)a3 credentialTypeIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PKPaymentSetupProductsSectionListSection;
  v9 = [(PKPaymentSetupProductsSectionListSection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_title, a3);
    objc_storeStrong(&v10->_credentialTypeIdentifier, a4);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sectionListItems = v10->_sectionListItems;
    v10->_sectionListItems = v11;
  }

  return v10;
}

@end