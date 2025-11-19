@interface PKDashboardItemsSection
- (PKDashboardItemsSection)initWithIdentifier:(id)a3 items:(id)a4;
@end

@implementation PKDashboardItemsSection

- (PKDashboardItemsSection)initWithIdentifier:(id)a3 items:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKDashboardItemsSection;
  v9 = [(PKDashboardItemsSection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_items, a4);
  }

  return v10;
}

@end