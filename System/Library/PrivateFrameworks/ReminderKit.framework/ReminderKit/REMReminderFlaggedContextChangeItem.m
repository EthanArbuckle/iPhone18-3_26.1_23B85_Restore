@interface REMReminderFlaggedContextChangeItem
- (REMReminderFlaggedContextChangeItem)initWithReminderChangeItem:(id)a3;
- (int64_t)flagged;
- (void)setFlagged:(int64_t)a3;
@end

@implementation REMReminderFlaggedContextChangeItem

- (REMReminderFlaggedContextChangeItem)initWithReminderChangeItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMReminderFlaggedContextChangeItem;
  v6 = [(REMReminderFlaggedContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminderChangeItem, a3);
  }

  return v7;
}

- (int64_t)flagged
{
  v2 = [(REMReminderFlaggedContextChangeItem *)self reminderChangeItem];
  v3 = [v2 flagged];

  return v3;
}

- (void)setFlagged:(int64_t)a3
{
  v4 = [(REMReminderFlaggedContextChangeItem *)self reminderChangeItem];
  [v4 setFlagged:a3];
}

@end