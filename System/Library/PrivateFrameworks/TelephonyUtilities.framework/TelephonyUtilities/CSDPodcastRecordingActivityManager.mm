@interface CSDPodcastRecordingActivityManager
- (CSDPodcastRecordingActivityManager)initWithFeatureFlags:(id)flags;
- (void)startObservingSessions;
@end

@implementation CSDPodcastRecordingActivityManager

- (CSDPodcastRecordingActivityManager)initWithFeatureFlags:(id)flags
{
  flagsCopy = flags;
  sub_10033569C();
  return result;
}

- (void)startObservingSessions
{
  selfCopy = self;
  PodcastRecordingActivityManager.startObservingSessions()();
}

@end