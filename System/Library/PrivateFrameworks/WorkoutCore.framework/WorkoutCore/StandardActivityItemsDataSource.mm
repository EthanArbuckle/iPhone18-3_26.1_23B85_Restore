@interface StandardActivityItemsDataSource
- (_TtC11WorkoutCore31StandardActivityItemsDataSource)init;
- (void)dealloc;
- (void)smartGoalStoreDidHideActivityTypeWithNotification:(id)a3;
- (void)smartGoalStoreDidShowActivityTypeWithNotification:(id)a3;
- (void)smartGoalStoreUpdatedOccurrenceDataWithNotification:(id)a3;
- (void)wheelchairUseCharacteristicCache:(id)a3 wheelchairUsageDidChange:(BOOL)a4;
@end

@implementation StandardActivityItemsDataSource

- (void)dealloc
{
  v2 = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, v2);

  v4.receiver = v2;
  v4.super_class = type metadata accessor for StandardActivityItemsDataSource();
  [(StandardActivityItemsDataSource *)&v4 dealloc];
}

- (void)smartGoalStoreUpdatedOccurrenceDataWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  StandardActivityItemsDataSource.smartGoalStoreUpdatedOccurrenceData(notification:)(v4);
}

- (void)smartGoalStoreDidShowActivityTypeWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  StandardActivityItemsDataSource.smartGoalStoreDidShowActivityType(notification:)(v4);
}

- (void)smartGoalStoreDidHideActivityTypeWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  StandardActivityItemsDataSource.smartGoalStoreDidHideActivityType(notification:)(v4);
}

- (_TtC11WorkoutCore31StandardActivityItemsDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)wheelchairUseCharacteristicCache:(id)a3 wheelchairUsageDidChange:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  specialized StandardActivityItemsDataSource.wheelchairUseCharacteristicCache(_:wheelchairUsageDidChange:)(a4);
}

@end