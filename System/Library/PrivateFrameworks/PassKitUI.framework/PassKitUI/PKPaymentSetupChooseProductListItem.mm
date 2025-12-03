@interface PKPaymentSetupChooseProductListItem
- (PKPaymentSetupChooseProductListItem)initWithIdentifier:(id)identifier type:(unint64_t)type title:(id)title subtitle:(id)subtitle;
@end

@implementation PKPaymentSetupChooseProductListItem

- (PKPaymentSetupChooseProductListItem)initWithIdentifier:(id)identifier type:(unint64_t)type title:(id)title subtitle:(id)subtitle
{
  identifierCopy = identifier;
  titleCopy = title;
  subtitleCopy = subtitle;
  v17.receiver = self;
  v17.super_class = PKPaymentSetupChooseProductListItem;
  v14 = [(PKPaymentSetupChooseProductListItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    v15->_type = type;
    objc_storeStrong(&v15->_title, title);
    objc_storeStrong(&v15->_subtitle, subtitle);
    v15->_loadingIndicatorVisible = 0;
  }

  return v15;
}

@end