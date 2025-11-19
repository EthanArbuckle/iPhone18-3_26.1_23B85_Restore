@interface CSDPodcastRecordingActivityManager
- (CSDPodcastRecordingActivityManager)initWithFeatureFlags:(id)a3;
- (void)startObservingSessions;
@end

@implementation CSDPodcastRecordingActivityManager

- (CSDPodcastRecordingActivityManager)initWithFeatureFlags:(id)a3
{
  v3 = a3;
  sub_10033569C();
  return result;
}

- (void)startObservingSessions
{
  v2 = self;
  PodcastRecordingActivityManager.startObservingSessions()();
}

@end