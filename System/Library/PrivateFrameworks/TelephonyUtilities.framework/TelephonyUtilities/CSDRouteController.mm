@interface CSDRouteController
+ (id)makeLocalRouteController;
+ (id)makePairedHostDeviceRouteController;
- (NSArray)topOfListRoutesUniqueIdentifiers;
- (NSDictionary)routesByUniqueIdentifier;
- (id)routesDidChangeHandler;
- (void)clearState;
- (void)didUpdateRouteRecommendations;
- (void)handleCallStatusChanged;
- (void)handleUpdatedPairedHostDeviceRoutes:(id)a3;
- (void)pickRouteWithUniqueIdentifier:(id)a3 shouldWaitUntilAvailable:(BOOL)a4;
- (void)setPickedRouteDidChangeHandler:(id)a3;
- (void)setRouteWasPickedHandler:(id)a3;
- (void)setRoutesDidChangeHandler:(id)a3;
- (void)setTimedOutPickingRouteHandler:(id)a3;
- (void)updateStateWithCalls:(id)a3;
@end

@implementation CSDRouteController

- (NSDictionary)routesByUniqueIdentifier
{
  v2 = self;
  sub_10001917C();

  sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)updateStateWithCalls:(id)a3
{
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_10002CD00();
}

- (void)handleCallStatusChanged
{
  v2 = self;
  sub_10002EB7C();
}

- (void)didUpdateRouteRecommendations
{
  v2 = self;
  sub_100033FFC();
}

- (void)clearState
{
  v2 = self;
  sub_100033FFC();
}

- (NSArray)topOfListRoutesUniqueIdentifiers
{
  v2 = self;
  sub_1000118A4();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)routesDidChangeHandler
{
  v2 = sub_1003B6FFC();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100004CEC;
    v6[3] = &unk_10062C7E8;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRoutesDidChangeHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_10001755C;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1003B70CC(v4, v5);
}

- (void)setPickedRouteDidChangeHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1000174C0;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1003B71C8(v4, v5);
}

- (void)setRouteWasPickedHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1000174C0;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1003B72C4(v4, v5);
}

- (void)setTimedOutPickingRouteHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1000174A8;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1003B744C(v4, v5);
}

+ (id)makeLocalRouteController
{
  swift_getObjCClassMetadata();
  sub_1003B78EC();

  return v2;
}

+ (id)makePairedHostDeviceRouteController
{
  swift_getObjCClassMetadata();
  sub_1003B7BB4();

  return v2;
}

- (void)pickRouteWithUniqueIdentifier:(id)a3 shouldWaitUntilAvailable:(BOOL)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_1003B7E2C();
}

- (void)handleUpdatedPairedHostDeviceRoutes:(id)a3
{
  sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_10002CD00();
}

@end