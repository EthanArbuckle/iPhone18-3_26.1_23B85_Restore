@interface REMReminderDueDateDeltaAlertContext
- (NSArray)dueDateDeltaAlerts;
- (REMDueDateDeltaAlert)fetchedCurrentDueDateDeltaAlert;
- (REMReminderDueDateDeltaAlertContext)initWithReminder:(id)a3;
@end

@implementation REMReminderDueDateDeltaAlertContext

- (REMReminderDueDateDeltaAlertContext)initWithReminder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMReminderDueDateDeltaAlertContext;
  v6 = [(REMReminderDueDateDeltaAlertContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminder, a3);
  }

  return v7;
}

- (NSArray)dueDateDeltaAlerts
{
  v2 = [(REMReminderDueDateDeltaAlertContext *)self reminder];
  v3 = [v2 storage];
  v4 = [v3 fetchedDueDateDeltaAlerts];

  return v4;
}

- (REMDueDateDeltaAlert)fetchedCurrentDueDateDeltaAlert
{
  v2 = [(REMReminderDueDateDeltaAlertContext *)self dueDateDeltaAlerts];
  v3 = [v2 lastObject];

  return v3;
}

@end