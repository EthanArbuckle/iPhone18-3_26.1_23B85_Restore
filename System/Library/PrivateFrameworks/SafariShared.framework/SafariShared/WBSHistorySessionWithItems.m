@interface WBSHistorySessionWithItems
- (WBSHistorySessionWithItems)initWithSessionStartDate:(id)a3 items:(id)a4;
@end

@implementation WBSHistorySessionWithItems

- (WBSHistorySessionWithItems)initWithSessionStartDate:(id)a3 items:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = WBSHistorySessionWithItems;
  v7 = [(WBSHistorySession *)&v12 initWithSessionStartDate:a3];
  if (v7)
  {
    v8 = [v6 copy];
    items = v7->_items;
    v7->_items = v8;

    v10 = v7;
  }

  return v7;
}

@end