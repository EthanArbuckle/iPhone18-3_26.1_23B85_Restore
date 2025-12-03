@interface RTHealthKitManagerWorkoutEndReminderAlertDismissedNotification
- (RTHealthKitManagerWorkoutEndReminderAlertDismissedNotification)initWithAlertDimissedReason:(unint64_t)reason;
- (id)description;
@end

@implementation RTHealthKitManagerWorkoutEndReminderAlertDismissedNotification

- (RTHealthKitManagerWorkoutEndReminderAlertDismissedNotification)initWithAlertDimissedReason:(unint64_t)reason
{
  v5.receiver = self;
  v5.super_class = RTHealthKitManagerWorkoutEndReminderAlertDismissedNotification;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_reason = reason;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(RTNotification *)self name];
  v5 = [RTHealthKitManager stringFromRTWorkoutEndReminderAlertDismissedReason:self->_reason];
  v6 = [v3 stringWithFormat:@"name, %@, reason, %@, ", name, v5];

  return v6;
}

@end