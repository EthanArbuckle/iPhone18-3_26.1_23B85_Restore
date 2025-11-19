@interface REMReminderFlaggedContext
- (REMReminderFlaggedContext)initWithReminder:(id)a3;
- (int64_t)flagged;
@end

@implementation REMReminderFlaggedContext

- (REMReminderFlaggedContext)initWithReminder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMReminderFlaggedContext;
  v6 = [(REMReminderFlaggedContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminder, a3);
  }

  return v7;
}

- (int64_t)flagged
{
  v3 = [(REMReminderFlaggedContext *)self reminder];
  v4 = [v3 flagged];

  if (!v4)
  {
    return 0;
  }

  v5 = [(REMReminderFlaggedContext *)self reminder];
  v6 = [v5 flagged];

  return v6;
}

@end