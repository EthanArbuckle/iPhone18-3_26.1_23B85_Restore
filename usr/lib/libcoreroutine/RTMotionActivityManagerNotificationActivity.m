@interface RTMotionActivityManagerNotificationActivity
- (RTMotionActivityManagerNotificationActivity)initWithActivity:(id)a3;
@end

@implementation RTMotionActivityManagerNotificationActivity

- (RTMotionActivityManagerNotificationActivity)initWithActivity:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RTMotionActivityManagerNotificationActivity;
  v5 = [(RTNotification *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    activity = v5->_activity;
    v5->_activity = v6;
  }

  return v5;
}

@end