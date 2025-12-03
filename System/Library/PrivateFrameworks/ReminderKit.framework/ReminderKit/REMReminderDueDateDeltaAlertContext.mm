@interface REMReminderDueDateDeltaAlertContext
- (NSArray)dueDateDeltaAlerts;
- (REMDueDateDeltaAlert)fetchedCurrentDueDateDeltaAlert;
- (REMReminderDueDateDeltaAlertContext)initWithReminder:(id)reminder;
@end

@implementation REMReminderDueDateDeltaAlertContext

- (REMReminderDueDateDeltaAlertContext)initWithReminder:(id)reminder
{
  reminderCopy = reminder;
  v9.receiver = self;
  v9.super_class = REMReminderDueDateDeltaAlertContext;
  v6 = [(REMReminderDueDateDeltaAlertContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminder, reminder);
  }

  return v7;
}

- (NSArray)dueDateDeltaAlerts
{
  reminder = [(REMReminderDueDateDeltaAlertContext *)self reminder];
  storage = [reminder storage];
  fetchedDueDateDeltaAlerts = [storage fetchedDueDateDeltaAlerts];

  return fetchedDueDateDeltaAlerts;
}

- (REMDueDateDeltaAlert)fetchedCurrentDueDateDeltaAlert
{
  dueDateDeltaAlerts = [(REMReminderDueDateDeltaAlertContext *)self dueDateDeltaAlerts];
  lastObject = [dueDateDeltaAlerts lastObject];

  return lastObject;
}

@end