@interface REMAlarmDueDateDeltaAlertTrigger
- (BOOL)isEqual:(id)a3;
- (REMAlarmDueDateDeltaAlertTrigger)initWithCoder:(id)a3;
- (REMAlarmDueDateDeltaAlertTrigger)initWithDueDateDelta:(id)a3 acknowledgedDate:(id)a4;
- (REMAlarmDueDateDeltaAlertTrigger)initWithObjectID:(id)a3 dueDateDelta:(id)a4 acknowledgedDate:(id)a5;
- (id)_deepCopy;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMAlarmDueDateDeltaAlertTrigger

- (REMAlarmDueDateDeltaAlertTrigger)initWithObjectID:(id)a3 dueDateDelta:(id)a4 acknowledgedDate:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = REMAlarmDueDateDeltaAlertTrigger;
  v11 = [(REMAlarmTrigger *)&v14 initWithObjectID:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dueDateDelta, a4);
    objc_storeStrong(&v12->_acknowledgedDate, a5);
  }

  return v12;
}

- (REMAlarmDueDateDeltaAlertTrigger)initWithDueDateDelta:(id)a3 acknowledgedDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMAlarmDueDateDeltaAlertTrigger;
  v9 = [(REMAlarmTrigger *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dueDateDelta, a3);
    objc_storeStrong(&v10->_acknowledgedDate, a4);
  }

  return v10;
}

- (REMAlarmDueDateDeltaAlertTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = REMAlarmDueDateDeltaAlertTrigger;
  v5 = [(REMAlarmTrigger *)&v14 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 decodeObjectForKey:@"dueDateDelta"];
  if (v6)
  {
    dueDateDelta = v5->_dueDateDelta;
    v5->_dueDateDelta = v6;
    v8 = v6;

    v9 = [v4 decodeObjectForKey:@"acknowledgedDate"];
    acknowledgedDate = v5->_acknowledgedDate;
    v5->_acknowledgedDate = v9;

LABEL_4:
    v11 = v5;
    goto LABEL_8;
  }

  v12 = os_log_create("com.apple.reminderkit", "default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [REMAlarmDueDateDeltaAlertTrigger initWithCoder:v12];
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (id)_deepCopy
{
  v3 = [REMAlarmDueDateDeltaAlertTrigger alloc];
  v4 = [(REMAlarmDueDateDeltaAlertTrigger *)self dueDateDelta];
  v5 = [(REMAlarmDueDateDeltaAlertTrigger *)self acknowledgedDate];
  v6 = [(REMAlarmDueDateDeltaAlertTrigger *)v3 initWithDueDateDelta:v4 acknowledgedDate:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(REMAlarmDueDateDeltaAlertTrigger *)v6 dueDateDelta], v7 = objc_claimAutoreleasedReturnValue(), [(REMAlarmDueDateDeltaAlertTrigger *)self dueDateDelta], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v7 == v8))
    {
      v11 = [(REMAlarmDueDateDeltaAlertTrigger *)v6 acknowledgedDate];
      v12 = [(REMAlarmDueDateDeltaAlertTrigger *)self acknowledgedDate];
      if (v11 == v12)
      {
        v9 = 1;
      }

      else
      {
        v13 = [(REMAlarmDueDateDeltaAlertTrigger *)v6 acknowledgedDate];
        v14 = [(REMAlarmDueDateDeltaAlertTrigger *)self acknowledgedDate];
        v9 = [v13 isEqual:v14];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

- (unint64_t)hash
{
  v3 = [(REMAlarmDueDateDeltaAlertTrigger *)self dueDateDelta];
  v4 = [(REMAlarmDueDateDeltaAlertTrigger *)self acknowledgedDate];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = REMAlarmDueDateDeltaAlertTrigger;
  v4 = [(REMAlarmDueDateDeltaAlertTrigger *)&v9 description];
  v5 = [(REMAlarmDueDateDeltaAlertTrigger *)self dueDateDelta];
  v6 = [(REMAlarmDueDateDeltaAlertTrigger *)self acknowledgedDate];
  v7 = [v3 stringWithFormat:@"%@ {dueDateDelta = %@ acknowledgedDate = %@;}", v4, v5, v6];;

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = REMAlarmDueDateDeltaAlertTrigger;
  v4 = a3;
  [(REMAlarmTrigger *)&v7 encodeWithCoder:v4];
  v5 = [(REMAlarmDueDateDeltaAlertTrigger *)self dueDateDelta:v7.receiver];
  [v4 encodeObject:v5 forKey:@"dueDateDelta"];

  v6 = [(REMAlarmDueDateDeltaAlertTrigger *)self acknowledgedDate];
  [v4 encodeObject:v6 forKey:@"acknowledgedDate"];
}

@end