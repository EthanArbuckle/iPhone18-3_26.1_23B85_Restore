@interface REMReminderFlaggedContext
- (REMReminderFlaggedContext)initWithReminder:(id)reminder;
- (int64_t)flagged;
@end

@implementation REMReminderFlaggedContext

- (REMReminderFlaggedContext)initWithReminder:(id)reminder
{
  reminderCopy = reminder;
  v9.receiver = self;
  v9.super_class = REMReminderFlaggedContext;
  v6 = [(REMReminderFlaggedContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminder, reminder);
  }

  return v7;
}

- (int64_t)flagged
{
  reminder = [(REMReminderFlaggedContext *)self reminder];
  flagged = [reminder flagged];

  if (!flagged)
  {
    return 0;
  }

  reminder2 = [(REMReminderFlaggedContext *)self reminder];
  flagged2 = [reminder2 flagged];

  return flagged2;
}

@end