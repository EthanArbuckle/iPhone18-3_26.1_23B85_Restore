@interface RTReachabilityMonitorNotificationReachabilityChanged
- (RTReachabilityMonitorNotificationReachabilityChanged)initWithReachability:(unint64_t)reachability;
@end

@implementation RTReachabilityMonitorNotificationReachabilityChanged

- (RTReachabilityMonitorNotificationReachabilityChanged)initWithReachability:(unint64_t)reachability
{
  v5.receiver = self;
  v5.super_class = RTReachabilityMonitorNotificationReachabilityChanged;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_reachability = reachability;
  }

  return result;
}

@end