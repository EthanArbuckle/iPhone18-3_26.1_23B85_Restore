@interface AEAConcreteSpringBoardPrimitives.AppRestrictionsMonitoringSession
- (_TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession)init;
- (void)cancel;
- (void)dealloc;
- (void)monitorDidLoseConnection;
- (void)monitorDidUpdateApplicationRestrictionState:(id)a3;
@end

@implementation AEAConcreteSpringBoardPrimitives.AppRestrictionsMonitoringSession

- (void)dealloc
{
  v2 = self;
  sub_100026FB8();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for AEAConcreteSpringBoardPrimitives.AppRestrictionsMonitoringSession();
  [(AEAConcreteSpringBoardPrimitives.AppRestrictionsMonitoringSession *)&v3 dealloc];
}

- (void)cancel
{
  v2 = self;
  sub_100026FB8();
}

- (void)monitorDidUpdateApplicationRestrictionState:(id)a3
{
  v5 = sub_100003F6C(&qword_1000B8D38, &qword_100081978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = v16 - v9;
  v11 = *(&self->super.isa + OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_streamMulticaster);
  v12 = a3;
  v13 = self;
  v14 = [v12 allowedBundleIdentifiers];
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v16[1] = v15;
  CATAsyncStreamMulticaster.yield(_:)();

  (*(v6 + 8))(v10, v5);
}

- (void)monitorDidLoseConnection
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_invalidationHandler);
  v3 = *&self->invalidationHandler[OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_invalidationHandler];
  v5 = self;
  sub_100008448(v2);
  sub_100026FB8();
  if (v2)
  {

    v2(v4);

    sub_10000858C(v2);

    sub_10000858C(v2);
  }

  else
  {
  }
}

- (_TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end