@interface PKDashboardPassGroupItem
- (PKDashboardPassGroupItem)initWithGroupView:(id)view;
@end

@implementation PKDashboardPassGroupItem

- (PKDashboardPassGroupItem)initWithGroupView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = PKDashboardPassGroupItem;
  v6 = [(PKDashboardPassGroupItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupView, view);
  }

  return v7;
}

@end