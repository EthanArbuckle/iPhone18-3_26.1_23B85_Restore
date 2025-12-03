@interface WBSHistorySessionWithItems
- (WBSHistorySessionWithItems)initWithSessionStartDate:(id)date items:(id)items;
@end

@implementation WBSHistorySessionWithItems

- (WBSHistorySessionWithItems)initWithSessionStartDate:(id)date items:(id)items
{
  itemsCopy = items;
  v12.receiver = self;
  v12.super_class = WBSHistorySessionWithItems;
  v7 = [(WBSHistorySession *)&v12 initWithSessionStartDate:date];
  if (v7)
  {
    v8 = [itemsCopy copy];
    items = v7->_items;
    v7->_items = v8;

    v10 = v7;
  }

  return v7;
}

@end