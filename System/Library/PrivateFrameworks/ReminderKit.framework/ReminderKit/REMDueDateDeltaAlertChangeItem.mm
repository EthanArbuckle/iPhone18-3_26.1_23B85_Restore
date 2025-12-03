@interface REMDueDateDeltaAlertChangeItem
- (REMDueDateDeltaAlertChangeItem)initWithReminderDueDateDeltaAlertContextChangeItem:(id)item dueDateDeltaAlert:(id)alert;
- (id)_setMinimumSupportedAppVersion:(int64_t)version;
- (id)setAcknowledgedDate:(id)date;
- (id)setDueDateDelta:(id)delta;
@end

@implementation REMDueDateDeltaAlertChangeItem

- (REMDueDateDeltaAlertChangeItem)initWithReminderDueDateDeltaAlertContextChangeItem:(id)item dueDateDeltaAlert:(id)alert
{
  itemCopy = item;
  alertCopy = alert;
  v9 = alertCopy;
  if (itemCopy)
  {
    if (alertCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "reminderDueDateDeltaAlertContextChangeItem");
    if (v9)
    {
      goto LABEL_3;
    }
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "dueDateDeltaAlert");
LABEL_3:
  v13.receiver = self;
  v13.super_class = REMDueDateDeltaAlertChangeItem;
  v10 = [(REMDueDateDeltaAlertChangeItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_reminderDueDateDeltaAlertContextChangeItem, item);
    objc_storeStrong(&v11->_dueDateDeltaAlert, alert);
  }

  return v11;
}

- (id)setDueDateDelta:(id)delta
{
  deltaCopy = delta;
  dueDateDeltaAlert = [(REMDueDateDeltaAlertChangeItem *)self dueDateDeltaAlert];
  v6 = [REMDueDateDeltaAlert alloc];
  identifier = [dueDateDeltaAlert identifier];
  reminderID = [dueDateDeltaAlert reminderID];
  accountID = [dueDateDeltaAlert accountID];
  creationDate = [dueDateDeltaAlert creationDate];
  acknowledgedDate = [dueDateDeltaAlert acknowledgedDate];
  v12 = -[REMDueDateDeltaAlert initWithIdentifier:reminderID:accountID:dueDateDelta:creationDate:acknowledgedDate:minimumSupportedAppVersion:](v6, "initWithIdentifier:reminderID:accountID:dueDateDelta:creationDate:acknowledgedDate:minimumSupportedAppVersion:", identifier, reminderID, accountID, deltaCopy, creationDate, acknowledgedDate, [dueDateDeltaAlert minimumSupportedAppVersion]);

  [(REMDueDateDeltaAlertChangeItem *)self setDueDateDeltaAlert:v12];
  reminderDueDateDeltaAlertContextChangeItem = [(REMDueDateDeltaAlertChangeItem *)self reminderDueDateDeltaAlertContextChangeItem];
  [reminderDueDateDeltaAlertContextChangeItem _addOrUpdateDueDateDeltaAlert:v12];

  return v12;
}

- (id)setAcknowledgedDate:(id)date
{
  dateCopy = date;
  dueDateDeltaAlert = [(REMDueDateDeltaAlertChangeItem *)self dueDateDeltaAlert];
  v6 = [REMDueDateDeltaAlert alloc];
  identifier = [dueDateDeltaAlert identifier];
  reminderID = [dueDateDeltaAlert reminderID];
  accountID = [dueDateDeltaAlert accountID];
  dueDateDelta = [dueDateDeltaAlert dueDateDelta];
  creationDate = [dueDateDeltaAlert creationDate];
  v12 = -[REMDueDateDeltaAlert initWithIdentifier:reminderID:accountID:dueDateDelta:creationDate:acknowledgedDate:minimumSupportedAppVersion:](v6, "initWithIdentifier:reminderID:accountID:dueDateDelta:creationDate:acknowledgedDate:minimumSupportedAppVersion:", identifier, reminderID, accountID, dueDateDelta, creationDate, dateCopy, [dueDateDeltaAlert minimumSupportedAppVersion]);

  [(REMDueDateDeltaAlertChangeItem *)self setDueDateDeltaAlert:v12];
  reminderDueDateDeltaAlertContextChangeItem = [(REMDueDateDeltaAlertChangeItem *)self reminderDueDateDeltaAlertContextChangeItem];
  [reminderDueDateDeltaAlertContextChangeItem _addOrUpdateDueDateDeltaAlert:v12];

  return v12;
}

- (id)_setMinimumSupportedAppVersion:(int64_t)version
{
  dueDateDeltaAlert = [(REMDueDateDeltaAlertChangeItem *)self dueDateDeltaAlert];
  v6 = [REMDueDateDeltaAlert alloc];
  identifier = [dueDateDeltaAlert identifier];
  reminderID = [dueDateDeltaAlert reminderID];
  accountID = [dueDateDeltaAlert accountID];
  dueDateDelta = [dueDateDeltaAlert dueDateDelta];
  creationDate = [dueDateDeltaAlert creationDate];
  acknowledgedDate = [dueDateDeltaAlert acknowledgedDate];
  v13 = [(REMDueDateDeltaAlert *)v6 initWithIdentifier:identifier reminderID:reminderID accountID:accountID dueDateDelta:dueDateDelta creationDate:creationDate acknowledgedDate:acknowledgedDate minimumSupportedAppVersion:version];

  [(REMDueDateDeltaAlertChangeItem *)self setDueDateDeltaAlert:v13];
  reminderDueDateDeltaAlertContextChangeItem = [(REMDueDateDeltaAlertChangeItem *)self reminderDueDateDeltaAlertContextChangeItem];
  [reminderDueDateDeltaAlertContextChangeItem _addOrUpdateDueDateDeltaAlert:v13];

  return v13;
}

@end