@interface TSBackgroundTasksBackgroundFetchScheduler
- (TSBackgroundTasksBackgroundFetchScheduler)initWithApplication:(id)application taskIdentifier:(id)identifier;
- (void)prepareForUseWithApplicationDelegate:(id)delegate;
- (void)setMinimumBackgroundFetchInterval:(double)interval;
@end

@implementation TSBackgroundTasksBackgroundFetchScheduler

- (TSBackgroundTasksBackgroundFetchScheduler)initWithApplication:(id)application taskIdentifier:(id)identifier
{
  sub_1D8190F14();
  applicationCopy = application;
  return BackgroundTasksBackgroundFetchScheduler.init(application:taskIdentifier:)();
}

- (void)setMinimumBackgroundFetchInterval:(double)interval
{
  selfCopy = self;
  BackgroundTasksBackgroundFetchScheduler.setMinimumBackgroundFetchInterval(_:)(interval);
}

- (void)prepareForUseWithApplicationDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  BackgroundTasksBackgroundFetchScheduler.prepareForUse(with:)(delegate);
  swift_unknownObjectRelease();
}

@end