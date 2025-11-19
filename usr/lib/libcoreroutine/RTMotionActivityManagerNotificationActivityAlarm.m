@interface RTMotionActivityManagerNotificationActivityAlarm
- (RTMotionActivityManagerNotificationActivityAlarm)initWithActivityAlarmTrigger:(int64_t)a3;
- (id)description;
@end

@implementation RTMotionActivityManagerNotificationActivityAlarm

- (RTMotionActivityManagerNotificationActivityAlarm)initWithActivityAlarmTrigger:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTMotionActivityManagerNotificationActivityAlarm;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_trigger = a3;
  }

  return result;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [RTMotionActivityManager activityAlarmTriggerToString:[(RTMotionActivityManagerNotificationActivityAlarm *)self trigger]];
  v4 = [v2 stringWithFormat:@"activity alarm trigger, %@", v3];

  return v4;
}

@end