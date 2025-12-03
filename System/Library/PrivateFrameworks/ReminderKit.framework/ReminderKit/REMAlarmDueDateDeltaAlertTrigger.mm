@interface REMAlarmDueDateDeltaAlertTrigger
- (BOOL)isEqual:(id)equal;
- (REMAlarmDueDateDeltaAlertTrigger)initWithCoder:(id)coder;
- (REMAlarmDueDateDeltaAlertTrigger)initWithDueDateDelta:(id)delta acknowledgedDate:(id)date;
- (REMAlarmDueDateDeltaAlertTrigger)initWithObjectID:(id)d dueDateDelta:(id)delta acknowledgedDate:(id)date;
- (id)_deepCopy;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAlarmDueDateDeltaAlertTrigger

- (REMAlarmDueDateDeltaAlertTrigger)initWithObjectID:(id)d dueDateDelta:(id)delta acknowledgedDate:(id)date
{
  deltaCopy = delta;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = REMAlarmDueDateDeltaAlertTrigger;
  v11 = [(REMAlarmTrigger *)&v14 initWithObjectID:d];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dueDateDelta, delta);
    objc_storeStrong(&v12->_acknowledgedDate, date);
  }

  return v12;
}

- (REMAlarmDueDateDeltaAlertTrigger)initWithDueDateDelta:(id)delta acknowledgedDate:(id)date
{
  deltaCopy = delta;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = REMAlarmDueDateDeltaAlertTrigger;
  v9 = [(REMAlarmTrigger *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dueDateDelta, delta);
    objc_storeStrong(&v10->_acknowledgedDate, date);
  }

  return v10;
}

- (REMAlarmDueDateDeltaAlertTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = REMAlarmDueDateDeltaAlertTrigger;
  v5 = [(REMAlarmTrigger *)&v14 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectForKey:@"dueDateDelta"];
  if (v6)
  {
    dueDateDelta = v5->_dueDateDelta;
    v5->_dueDateDelta = v6;
    v8 = v6;

    v9 = [coderCopy decodeObjectForKey:@"acknowledgedDate"];
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
  dueDateDelta = [(REMAlarmDueDateDeltaAlertTrigger *)self dueDateDelta];
  acknowledgedDate = [(REMAlarmDueDateDeltaAlertTrigger *)self acknowledgedDate];
  v6 = [(REMAlarmDueDateDeltaAlertTrigger *)v3 initWithDueDateDelta:dueDateDelta acknowledgedDate:acknowledgedDate];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(REMAlarmDueDateDeltaAlertTrigger *)v6 dueDateDelta], v7 = objc_claimAutoreleasedReturnValue(), [(REMAlarmDueDateDeltaAlertTrigger *)self dueDateDelta], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v7 == v8))
    {
      acknowledgedDate = [(REMAlarmDueDateDeltaAlertTrigger *)v6 acknowledgedDate];
      acknowledgedDate2 = [(REMAlarmDueDateDeltaAlertTrigger *)self acknowledgedDate];
      if (acknowledgedDate == acknowledgedDate2)
      {
        v9 = 1;
      }

      else
      {
        acknowledgedDate3 = [(REMAlarmDueDateDeltaAlertTrigger *)v6 acknowledgedDate];
        acknowledgedDate4 = [(REMAlarmDueDateDeltaAlertTrigger *)self acknowledgedDate];
        v9 = [acknowledgedDate3 isEqual:acknowledgedDate4];
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
  dueDateDelta = [(REMAlarmDueDateDeltaAlertTrigger *)self dueDateDelta];
  acknowledgedDate = [(REMAlarmDueDateDeltaAlertTrigger *)self acknowledgedDate];
  v5 = [acknowledgedDate hash];

  return v5 ^ dueDateDelta;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = REMAlarmDueDateDeltaAlertTrigger;
  v4 = [(REMAlarmDueDateDeltaAlertTrigger *)&v9 description];
  dueDateDelta = [(REMAlarmDueDateDeltaAlertTrigger *)self dueDateDelta];
  acknowledgedDate = [(REMAlarmDueDateDeltaAlertTrigger *)self acknowledgedDate];
  v7 = [v3 stringWithFormat:@"%@ {dueDateDelta = %@ acknowledgedDate = %@;}", v4, dueDateDelta, acknowledgedDate];;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = REMAlarmDueDateDeltaAlertTrigger;
  coderCopy = coder;
  [(REMAlarmTrigger *)&v7 encodeWithCoder:coderCopy];
  v5 = [(REMAlarmDueDateDeltaAlertTrigger *)self dueDateDelta:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"dueDateDelta"];

  acknowledgedDate = [(REMAlarmDueDateDeltaAlertTrigger *)self acknowledgedDate];
  [coderCopy encodeObject:acknowledgedDate forKey:@"acknowledgedDate"];
}

@end