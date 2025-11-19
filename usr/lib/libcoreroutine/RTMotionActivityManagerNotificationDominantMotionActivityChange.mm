@interface RTMotionActivityManagerNotificationDominantMotionActivityChange
- (RTMotionActivityManagerNotificationDominantMotionActivityChange)initWithDominantMotionActivity:(id)a3;
@end

@implementation RTMotionActivityManagerNotificationDominantMotionActivityChange

- (RTMotionActivityManagerNotificationDominantMotionActivityChange)initWithDominantMotionActivity:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RTMotionActivityManagerNotificationDominantMotionActivityChange;
  v5 = [(RTNotification *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dominantMotionActivity = v5->_dominantMotionActivity;
    v5->_dominantMotionActivity = v6;
  }

  return v5;
}

@end