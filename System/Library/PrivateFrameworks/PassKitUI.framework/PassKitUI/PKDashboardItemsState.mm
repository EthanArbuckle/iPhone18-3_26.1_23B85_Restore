@interface PKDashboardItemsState
- (PKDashboardItemsState)initWithSections:(id)sections;
@end

@implementation PKDashboardItemsState

- (PKDashboardItemsState)initWithSections:(id)sections
{
  sectionsCopy = sections;
  v9.receiver = self;
  v9.super_class = PKDashboardItemsState;
  v6 = [(PKDashboardItemsState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sections, sections);
  }

  return v7;
}

@end