@interface REMDueDateDeltaAlertChangeItem
- (REMDueDateDeltaAlertChangeItem)initWithReminderDueDateDeltaAlertContextChangeItem:(id)a3 dueDateDeltaAlert:(id)a4;
- (id)_setMinimumSupportedAppVersion:(int64_t)a3;
- (id)setAcknowledgedDate:(id)a3;
- (id)setDueDateDelta:(id)a3;
@end

@implementation REMDueDateDeltaAlertChangeItem

- (REMDueDateDeltaAlertChangeItem)initWithReminderDueDateDeltaAlertContextChangeItem:(id)a3 dueDateDeltaAlert:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
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
    objc_storeStrong(&v10->_reminderDueDateDeltaAlertContextChangeItem, a3);
    objc_storeStrong(&v11->_dueDateDeltaAlert, a4);
  }

  return v11;
}

- (id)setDueDateDelta:(id)a3
{
  v4 = a3;
  v5 = [(REMDueDateDeltaAlertChangeItem *)self dueDateDeltaAlert];
  v6 = [REMDueDateDeltaAlert alloc];
  v7 = [v5 identifier];
  v8 = [v5 reminderID];
  v9 = [v5 accountID];
  v10 = [v5 creationDate];
  v11 = [v5 acknowledgedDate];
  v12 = -[REMDueDateDeltaAlert initWithIdentifier:reminderID:accountID:dueDateDelta:creationDate:acknowledgedDate:minimumSupportedAppVersion:](v6, "initWithIdentifier:reminderID:accountID:dueDateDelta:creationDate:acknowledgedDate:minimumSupportedAppVersion:", v7, v8, v9, v4, v10, v11, [v5 minimumSupportedAppVersion]);

  [(REMDueDateDeltaAlertChangeItem *)self setDueDateDeltaAlert:v12];
  v13 = [(REMDueDateDeltaAlertChangeItem *)self reminderDueDateDeltaAlertContextChangeItem];
  [v13 _addOrUpdateDueDateDeltaAlert:v12];

  return v12;
}

- (id)setAcknowledgedDate:(id)a3
{
  v4 = a3;
  v5 = [(REMDueDateDeltaAlertChangeItem *)self dueDateDeltaAlert];
  v6 = [REMDueDateDeltaAlert alloc];
  v7 = [v5 identifier];
  v8 = [v5 reminderID];
  v9 = [v5 accountID];
  v10 = [v5 dueDateDelta];
  v11 = [v5 creationDate];
  v12 = -[REMDueDateDeltaAlert initWithIdentifier:reminderID:accountID:dueDateDelta:creationDate:acknowledgedDate:minimumSupportedAppVersion:](v6, "initWithIdentifier:reminderID:accountID:dueDateDelta:creationDate:acknowledgedDate:minimumSupportedAppVersion:", v7, v8, v9, v10, v11, v4, [v5 minimumSupportedAppVersion]);

  [(REMDueDateDeltaAlertChangeItem *)self setDueDateDeltaAlert:v12];
  v13 = [(REMDueDateDeltaAlertChangeItem *)self reminderDueDateDeltaAlertContextChangeItem];
  [v13 _addOrUpdateDueDateDeltaAlert:v12];

  return v12;
}

- (id)_setMinimumSupportedAppVersion:(int64_t)a3
{
  v5 = [(REMDueDateDeltaAlertChangeItem *)self dueDateDeltaAlert];
  v6 = [REMDueDateDeltaAlert alloc];
  v7 = [v5 identifier];
  v8 = [v5 reminderID];
  v9 = [v5 accountID];
  v10 = [v5 dueDateDelta];
  v11 = [v5 creationDate];
  v12 = [v5 acknowledgedDate];
  v13 = [(REMDueDateDeltaAlert *)v6 initWithIdentifier:v7 reminderID:v8 accountID:v9 dueDateDelta:v10 creationDate:v11 acknowledgedDate:v12 minimumSupportedAppVersion:a3];

  [(REMDueDateDeltaAlertChangeItem *)self setDueDateDeltaAlert:v13];
  v14 = [(REMDueDateDeltaAlertChangeItem *)self reminderDueDateDeltaAlertContextChangeItem];
  [v14 _addOrUpdateDueDateDeltaAlert:v13];

  return v13;
}

@end