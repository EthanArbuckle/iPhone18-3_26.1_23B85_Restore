@interface RTMotionActivityManagerNotificationActivity
- (RTMotionActivityManagerNotificationActivity)initWithActivity:(id)activity;
@end

@implementation RTMotionActivityManagerNotificationActivity

- (RTMotionActivityManagerNotificationActivity)initWithActivity:(id)activity
{
  activityCopy = activity;
  v9.receiver = self;
  v9.super_class = RTMotionActivityManagerNotificationActivity;
  v5 = [(RTNotification *)&v9 init];
  if (v5)
  {
    v6 = [activityCopy copy];
    activity = v5->_activity;
    v5->_activity = v6;
  }

  return v5;
}

@end