@interface SBApplicationWakeSchedulerFactory
+ (id)newLegacyVOIPPeriodicWakeSchedulerForApplication:(id)application;
@end

@implementation SBApplicationWakeSchedulerFactory

+ (id)newLegacyVOIPPeriodicWakeSchedulerForApplication:(id)application
{
  applicationCopy = application;
  v4 = objc_alloc_init(SBLegacyVOIPRefreshWakeTracker);
  v5 = [[SBApplicationWakeScheduler alloc] _initWithLifecycleTracker:v4 forApplication:applicationCopy];

  return v5;
}

@end