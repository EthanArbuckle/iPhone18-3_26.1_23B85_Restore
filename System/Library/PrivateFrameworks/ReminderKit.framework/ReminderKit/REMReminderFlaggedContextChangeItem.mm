@interface REMReminderFlaggedContextChangeItem
- (REMReminderFlaggedContextChangeItem)initWithReminderChangeItem:(id)item;
- (int64_t)flagged;
- (void)setFlagged:(int64_t)flagged;
@end

@implementation REMReminderFlaggedContextChangeItem

- (REMReminderFlaggedContextChangeItem)initWithReminderChangeItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = REMReminderFlaggedContextChangeItem;
  v6 = [(REMReminderFlaggedContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminderChangeItem, item);
  }

  return v7;
}

- (int64_t)flagged
{
  reminderChangeItem = [(REMReminderFlaggedContextChangeItem *)self reminderChangeItem];
  flagged = [reminderChangeItem flagged];

  return flagged;
}

- (void)setFlagged:(int64_t)flagged
{
  reminderChangeItem = [(REMReminderFlaggedContextChangeItem *)self reminderChangeItem];
  [reminderChangeItem setFlagged:flagged];
}

@end