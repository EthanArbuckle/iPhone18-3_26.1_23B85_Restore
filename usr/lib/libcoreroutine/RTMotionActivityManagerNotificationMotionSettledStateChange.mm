@interface RTMotionActivityManagerNotificationMotionSettledStateChange
- (RTMotionActivityManagerNotificationMotionSettledStateChange)initWithSettledState:(unint64_t)state;
- (id)description;
@end

@implementation RTMotionActivityManagerNotificationMotionSettledStateChange

- (RTMotionActivityManagerNotificationMotionSettledStateChange)initWithSettledState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = RTMotionActivityManagerNotificationMotionSettledStateChange;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_settledState = state;
  }

  return result;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [RTMotionActivityManager motionSettledStateToString:[(RTMotionActivityManagerNotificationMotionSettledStateChange *)self settledState]];
  v4 = [v2 stringWithFormat:@"settled state, %@", v3];

  return v4;
}

@end