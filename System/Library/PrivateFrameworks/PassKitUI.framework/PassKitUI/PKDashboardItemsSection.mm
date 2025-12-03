@interface PKDashboardItemsSection
- (PKDashboardItemsSection)initWithIdentifier:(id)identifier items:(id)items;
@end

@implementation PKDashboardItemsSection

- (PKDashboardItemsSection)initWithIdentifier:(id)identifier items:(id)items
{
  identifierCopy = identifier;
  itemsCopy = items;
  v12.receiver = self;
  v12.super_class = PKDashboardItemsSection;
  v9 = [(PKDashboardItemsSection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_items, items);
  }

  return v10;
}

@end