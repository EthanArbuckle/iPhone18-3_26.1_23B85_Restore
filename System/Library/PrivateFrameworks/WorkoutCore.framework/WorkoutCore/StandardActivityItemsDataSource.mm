@interface StandardActivityItemsDataSource
- (_TtC11WorkoutCore31StandardActivityItemsDataSource)init;
- (void)dealloc;
- (void)smartGoalStoreDidHideActivityTypeWithNotification:(id)notification;
- (void)smartGoalStoreDidShowActivityTypeWithNotification:(id)notification;
- (void)smartGoalStoreUpdatedOccurrenceDataWithNotification:(id)notification;
- (void)wheelchairUseCharacteristicCache:(id)cache wheelchairUsageDidChange:(BOOL)change;
@end

@implementation StandardActivityItemsDataSource

- (void)dealloc
{
  selfCopy = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, selfCopy);

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for StandardActivityItemsDataSource();
  [(StandardActivityItemsDataSource *)&v4 dealloc];
}

- (void)smartGoalStoreUpdatedOccurrenceDataWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  StandardActivityItemsDataSource.smartGoalStoreUpdatedOccurrenceData(notification:)(notificationCopy);
}

- (void)smartGoalStoreDidShowActivityTypeWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  StandardActivityItemsDataSource.smartGoalStoreDidShowActivityType(notification:)(notificationCopy);
}

- (void)smartGoalStoreDidHideActivityTypeWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  StandardActivityItemsDataSource.smartGoalStoreDidHideActivityType(notification:)(notificationCopy);
}

- (_TtC11WorkoutCore31StandardActivityItemsDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)wheelchairUseCharacteristicCache:(id)cache wheelchairUsageDidChange:(BOOL)change
{
  cacheCopy = cache;
  selfCopy = self;
  specialized StandardActivityItemsDataSource.wheelchairUseCharacteristicCache(_:wheelchairUsageDidChange:)(change);
}

@end