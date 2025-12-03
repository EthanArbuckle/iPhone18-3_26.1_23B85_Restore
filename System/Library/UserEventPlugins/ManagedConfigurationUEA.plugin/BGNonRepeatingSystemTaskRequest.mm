@interface BGNonRepeatingSystemTaskRequest
+ (id)rapidReturnToServiceTaskRequestWithTimeout:(double)timeout;
@end

@implementation BGNonRepeatingSystemTaskRequest

+ (id)rapidReturnToServiceTaskRequestWithTimeout:(double)timeout
{
  v5 = [BGNonRepeatingSystemTaskRequest alloc];
  rapidReturnToServiceTaskIdentifier = [self rapidReturnToServiceTaskIdentifier];
  v7 = [v5 initWithIdentifier:rapidReturnToServiceTaskIdentifier];

  [v7 setScheduleAfter:timeout];
  [v7 setPriority:2];
  [v7 setRequiresExternalPower:0];
  [v7 setRequiresNetworkConnectivity:0];
  [v7 setRequiresUserInactivity:1];

  return v7;
}

@end