@interface RTHealthKitManagerWorkoutEndReminderAlertDismissedNotification
- (RTHealthKitManagerWorkoutEndReminderAlertDismissedNotification)initWithAlertDimissedReason:(unint64_t)a3;
- (id)description;
@end

@implementation RTHealthKitManagerWorkoutEndReminderAlertDismissedNotification

- (RTHealthKitManagerWorkoutEndReminderAlertDismissedNotification)initWithAlertDimissedReason:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTHealthKitManagerWorkoutEndReminderAlertDismissedNotification;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_reason = a3;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTNotification *)self name];
  v5 = [RTHealthKitManager stringFromRTWorkoutEndReminderAlertDismissedReason:self->_reason];
  v6 = [v3 stringWithFormat:@"name, %@, reason, %@, ", v4, v5];

  return v6;
}

@end