@interface RTWatchWristStateManagerWristStateChangedNotification
- (RTWatchWristStateManagerWristStateChangedNotification)initWithWristState:(unint64_t)state;
@end

@implementation RTWatchWristStateManagerWristStateChangedNotification

- (RTWatchWristStateManagerWristStateChangedNotification)initWithWristState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = RTWatchWristStateManagerWristStateChangedNotification;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_wristState = state;
  }

  return result;
}

@end