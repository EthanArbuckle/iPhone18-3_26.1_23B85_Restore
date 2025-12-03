@interface PKDashboardPaymentSetupProductItem
- (PKDashboardPaymentSetupProductItem)initWithPaymentSetupProductResult:(id)result;
@end

@implementation PKDashboardPaymentSetupProductItem

- (PKDashboardPaymentSetupProductItem)initWithPaymentSetupProductResult:(id)result
{
  resultCopy = result;
  v17.receiver = self;
  v17.super_class = PKDashboardPaymentSetupProductItem;
  v5 = [(PKDashboardPaymentSetupProductItem *)&v17 init];
  if (v5)
  {
    productIdentifier = [resultCopy productIdentifier];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = productIdentifier;

    thumbnailURL = [resultCopy thumbnailURL];
    thumbnailURL = v5->_thumbnailURL;
    v5->_thumbnailURL = thumbnailURL;

    thumbnailData = [resultCopy thumbnailData];
    thumbnailData = v5->_thumbnailData;
    v5->_thumbnailData = thumbnailData;

    displayName = [resultCopy displayName];
    displayName = v5->_displayName;
    v5->_displayName = displayName;

    contentDescription = [resultCopy contentDescription];
    contentDescription = v5->_contentDescription;
    v5->_contentDescription = contentDescription;
  }

  return v5;
}

@end