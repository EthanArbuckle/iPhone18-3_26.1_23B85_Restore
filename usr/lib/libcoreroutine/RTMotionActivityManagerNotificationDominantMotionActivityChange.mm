@interface RTMotionActivityManagerNotificationDominantMotionActivityChange
- (RTMotionActivityManagerNotificationDominantMotionActivityChange)initWithDominantMotionActivity:(id)activity;
@end

@implementation RTMotionActivityManagerNotificationDominantMotionActivityChange

- (RTMotionActivityManagerNotificationDominantMotionActivityChange)initWithDominantMotionActivity:(id)activity
{
  activityCopy = activity;
  v9.receiver = self;
  v9.super_class = RTMotionActivityManagerNotificationDominantMotionActivityChange;
  v5 = [(RTNotification *)&v9 init];
  if (v5)
  {
    v6 = [activityCopy copy];
    dominantMotionActivity = v5->_dominantMotionActivity;
    v5->_dominantMotionActivity = v6;
  }

  return v5;
}

@end