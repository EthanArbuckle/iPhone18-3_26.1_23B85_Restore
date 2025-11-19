@interface BGNonRepeatingSystemTaskRequest
+ (id)rapidReturnToServiceTaskRequestWithTimeout:(double)a3;
@end

@implementation BGNonRepeatingSystemTaskRequest

+ (id)rapidReturnToServiceTaskRequestWithTimeout:(double)a3
{
  v5 = [BGNonRepeatingSystemTaskRequest alloc];
  v6 = [a1 rapidReturnToServiceTaskIdentifier];
  v7 = [v5 initWithIdentifier:v6];

  [v7 setScheduleAfter:a3];
  [v7 setPriority:2];
  [v7 setRequiresExternalPower:0];
  [v7 setRequiresNetworkConnectivity:0];
  [v7 setRequiresUserInactivity:1];

  return v7;
}

@end