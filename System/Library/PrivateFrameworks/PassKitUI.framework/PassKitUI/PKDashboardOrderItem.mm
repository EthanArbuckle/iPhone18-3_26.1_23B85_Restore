@interface PKDashboardOrderItem
- (PKDashboardOrderItem)initWithSearchOrderResult:(id)result;
@end

@implementation PKDashboardOrderItem

- (PKDashboardOrderItem)initWithSearchOrderResult:(id)result
{
  resultCopy = result;
  v19.receiver = self;
  v19.super_class = PKDashboardOrderItem;
  v5 = [(PKDashboardOrderItem *)&v19 init];
  if (v5)
  {
    v6 = [resultCopy uri];
    uri = v5->_uri;
    v5->_uri = v6;

    orderTypeIdentifier = [resultCopy orderTypeIdentifier];
    orderTypeIdentifier = v5->_orderTypeIdentifier;
    v5->_orderTypeIdentifier = orderTypeIdentifier;

    orderIdentifier = [resultCopy orderIdentifier];
    orderIdentifier = v5->_orderIdentifier;
    v5->_orderIdentifier = orderIdentifier;

    displayName = [resultCopy displayName];
    displayName = v5->_displayName;
    v5->_displayName = displayName;

    contentDescription = [resultCopy contentDescription];
    contentDescription = v5->_contentDescription;
    v5->_contentDescription = contentDescription;

    thumbnailData = [resultCopy thumbnailData];
    thumbnailData = v5->_thumbnailData;
    v5->_thumbnailData = thumbnailData;
  }

  return v5;
}

@end