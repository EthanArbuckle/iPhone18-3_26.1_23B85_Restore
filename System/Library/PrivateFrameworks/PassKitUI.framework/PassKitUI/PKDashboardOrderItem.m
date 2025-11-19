@interface PKDashboardOrderItem
- (PKDashboardOrderItem)initWithSearchOrderResult:(id)a3;
@end

@implementation PKDashboardOrderItem

- (PKDashboardOrderItem)initWithSearchOrderResult:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKDashboardOrderItem;
  v5 = [(PKDashboardOrderItem *)&v19 init];
  if (v5)
  {
    v6 = [v4 uri];
    uri = v5->_uri;
    v5->_uri = v6;

    v8 = [v4 orderTypeIdentifier];
    orderTypeIdentifier = v5->_orderTypeIdentifier;
    v5->_orderTypeIdentifier = v8;

    v10 = [v4 orderIdentifier];
    orderIdentifier = v5->_orderIdentifier;
    v5->_orderIdentifier = v10;

    v12 = [v4 displayName];
    displayName = v5->_displayName;
    v5->_displayName = v12;

    v14 = [v4 contentDescription];
    contentDescription = v5->_contentDescription;
    v5->_contentDescription = v14;

    v16 = [v4 thumbnailData];
    thumbnailData = v5->_thumbnailData;
    v5->_thumbnailData = v16;
  }

  return v5;
}

@end