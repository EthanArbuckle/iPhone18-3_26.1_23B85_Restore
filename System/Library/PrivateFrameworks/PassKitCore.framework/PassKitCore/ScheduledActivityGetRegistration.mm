@interface ScheduledActivityGetRegistration
@end

@implementation ScheduledActivityGetRegistration

void ___ScheduledActivityGetRegistration_block_invoke(void *a1)
{
  v2 = _RegisteredClients();
  v7 = [v2 objectForKeyedSubscript:a1[4]];

  v3 = [v7 activityRegistrations];
  v4 = [v3 objectForKeyedSubscript:a1[5]];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end