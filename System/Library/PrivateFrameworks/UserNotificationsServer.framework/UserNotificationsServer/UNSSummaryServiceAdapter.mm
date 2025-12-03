@interface UNSSummaryServiceAdapter
- (NSDictionary)queue_observers;
- (id)groupSummariesForNotificationIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (void)setQueue_observers:(id)queue_observers;
@end

@implementation UNSSummaryServiceAdapter

- (id)groupSummariesForNotificationIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  sub_270AE3CDC();
  sub_270AE3CDC();
  selfCopy = self;
  queue = [(UNSSummaryServiceAdapter *)selfCopy queue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843AA8, &qword_270AE6EF0);
  sub_270AE3E2C();

  return v8;
}

- (NSDictionary)queue_observers
{
  v2 = *(self + OBJC_IVAR___UNSSummaryServiceAdapter_queue_observers);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843AC0, &qword_270AE6F68);
  v3 = sub_270AE3CAC();

  return v3;
}

- (void)setQueue_observers:(id)queue_observers
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843AC0, &qword_270AE6F68);
  v4 = sub_270AE3CBC();
  v5 = *(self + OBJC_IVAR___UNSSummaryServiceAdapter_queue_observers);
  *(self + OBJC_IVAR___UNSSummaryServiceAdapter_queue_observers) = v4;
}

@end