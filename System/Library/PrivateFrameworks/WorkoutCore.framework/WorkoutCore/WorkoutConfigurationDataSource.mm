@interface WorkoutConfigurationDataSource
- (_TtC11WorkoutCore30WorkoutConfigurationDataSource)init;
- (void)smartGoalStoreUpdatedOccurrenceDataWithNotification:(id)notification;
@end

@implementation WorkoutConfigurationDataSource

- (void)smartGoalStoreUpdatedOccurrenceDataWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  WorkoutConfigurationDataSource.smartGoalStoreUpdatedOccurrenceData(notification:)(notificationCopy);
}

- (_TtC11WorkoutCore30WorkoutConfigurationDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end