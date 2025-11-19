@interface PKDashboardPassGroupItem
- (PKDashboardPassGroupItem)initWithGroupView:(id)a3;
@end

@implementation PKDashboardPassGroupItem

- (PKDashboardPassGroupItem)initWithGroupView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKDashboardPassGroupItem;
  v6 = [(PKDashboardPassGroupItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupView, a3);
  }

  return v7;
}

@end