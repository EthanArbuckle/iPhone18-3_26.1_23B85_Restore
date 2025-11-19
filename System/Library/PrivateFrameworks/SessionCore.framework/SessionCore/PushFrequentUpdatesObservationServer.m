@interface PushFrequentUpdatesObservationServer
- (_TtC11SessionCore36PushFrequentUpdatesObservationServer)init;
- (id)activitiesExceedingReducedPushBudget;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation PushFrequentUpdatesObservationServer

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_22CEEB84C(v8);

  swift_unknownObjectRelease();
}

- (id)activitiesExceedingReducedPushBudget
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_pushServer);
  v3 = self;
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