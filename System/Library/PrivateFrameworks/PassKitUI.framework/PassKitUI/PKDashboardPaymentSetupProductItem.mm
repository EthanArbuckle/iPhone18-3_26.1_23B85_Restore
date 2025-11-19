@interface PKDashboardPaymentSetupProductItem
- (PKDashboardPaymentSetupProductItem)initWithPaymentSetupProductResult:(id)a3;
@end

@implementation PKDashboardPaymentSetupProductItem

- (PKDashboardPaymentSetupProductItem)initWithPaymentSetupProductResult:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKDashboardPaymentSetupProductItem;
  v5 = [(PKDashboardPaymentSetupProductItem *)&v17 init];
  if (v5)
  {
    v6 = [v4 productIdentifier];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v6;

    v8 = [v4 thumbnailURL];
    thumbnailURL = v5->_thumbnailURL;
    v5->_thumbnailURL = v8;

    v10 = [v4 thumbnailData];
    thumbnailData = v5->_thumbnailData;
    v5->_thumbnailData = v10;

    v12 = [v4 displayName];
    displayName = v5->_displayName;
    v5->_displayName = v12;

    v14 = [v4 contentDescription];
    contentDescription = v5->_contentDescription;
    v5->_contentDescription = v14;
  }

  return v5;
}

@end