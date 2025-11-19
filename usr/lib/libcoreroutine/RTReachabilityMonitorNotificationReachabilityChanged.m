@interface RTReachabilityMonitorNotificationReachabilityChanged
- (RTReachabilityMonitorNotificationReachabilityChanged)initWithReachability:(unint64_t)a3;
@end

@implementation RTReachabilityMonitorNotificationReachabilityChanged

- (RTReachabilityMonitorNotificationReachabilityChanged)initWithReachability:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTReachabilityMonitorNotificationReachabilityChanged;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_reachability = a3;
  }

  return result;
}

@end