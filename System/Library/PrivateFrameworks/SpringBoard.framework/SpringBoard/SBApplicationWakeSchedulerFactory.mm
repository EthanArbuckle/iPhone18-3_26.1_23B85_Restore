@interface SBApplicationWakeSchedulerFactory
+ (id)newLegacyVOIPPeriodicWakeSchedulerForApplication:(id)a3;
@end

@implementation SBApplicationWakeSchedulerFactory

+ (id)newLegacyVOIPPeriodicWakeSchedulerForApplication:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SBLegacyVOIPRefreshWakeTracker);
  v5 = [[SBApplicationWakeScheduler alloc] _initWithLifecycleTracker:v4 forApplication:v3];

  return v5;
}

@end