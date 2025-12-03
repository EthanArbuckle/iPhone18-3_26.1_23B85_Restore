@interface PushFrequentUpdatesObservationServer
- (_TtC11SessionCore36PushFrequentUpdatesObservationServer)init;
- (id)activitiesExceedingReducedPushBudget;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation PushFrequentUpdatesObservationServer

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22CEEB84C(connectionCopy);

  swift_unknownObjectRelease();
}

- (id)activitiesExceedingReducedPushBudget
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_pushServer);
  selfCopy = self;
  v4 = sub_22D015EAC();
  sub_22CEECE5C(v4);

  v5 = sub_22D01684C();

  return v5;
}

- (_TtC11SessionCore36PushFrequentUpdatesObservationServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end