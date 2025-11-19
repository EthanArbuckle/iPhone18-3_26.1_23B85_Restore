@interface PKPaymentSetupChooseProductListItem
- (PKPaymentSetupChooseProductListItem)initWithIdentifier:(id)a3 type:(unint64_t)a4 title:(id)a5 subtitle:(id)a6;
@end

@implementation PKPaymentSetupChooseProductListItem

- (PKPaymentSetupChooseProductListItem)initWithIdentifier:(id)a3 type:(unint64_t)a4 title:(id)a5 subtitle:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = PKPaymentSetupChooseProductListItem;
  v14 = [(PKPaymentSetupChooseProductListItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, a3);
    v15->_type = a4;
    objc_storeStrong(&v15->_title, a5);
    objc_storeStrong(&v15->_subtitle, a6);
    v15->_loadingIndicatorVisible = 0;
  }

  return v15;
}

@end