@interface PKDashboardItemsState
- (PKDashboardItemsState)initWithSections:(id)a3;
@end

@implementation PKDashboardItemsState

- (PKDashboardItemsState)initWithSections:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKDashboardItemsState;
  v6 = [(PKDashboardItemsState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sections, a3);
  }

  return v7;
}

@end