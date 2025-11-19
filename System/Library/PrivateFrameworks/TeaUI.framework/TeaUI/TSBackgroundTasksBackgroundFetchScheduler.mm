@interface TSBackgroundTasksBackgroundFetchScheduler
- (TSBackgroundTasksBackgroundFetchScheduler)initWithApplication:(id)a3 taskIdentifier:(id)a4;
- (void)prepareForUseWithApplicationDelegate:(id)a3;
- (void)setMinimumBackgroundFetchInterval:(double)a3;
@end

@implementation TSBackgroundTasksBackgroundFetchScheduler

- (TSBackgroundTasksBackgroundFetchScheduler)initWithApplication:(id)a3 taskIdentifier:(id)a4
{
  sub_1D8190F14();
  v5 = a3;
  return BackgroundTasksBackgroundFetchScheduler.init(application:taskIdentifier:)();
}

- (void)setMinimumBackgroundFetchInterval:(double)a3
{
  v4 = self;
  BackgroundTasksBackgroundFetchScheduler.setMinimumBackgroundFetchInterval(_:)(a3);
}

- (void)prepareForUseWithApplicationDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  BackgroundTasksBackgroundFetchScheduler.prepareForUse(with:)(a3);
  swift_unknownObjectRelease();
}

@end