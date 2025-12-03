@interface CSDRouteController
+ (id)makeLocalRouteController;
+ (id)makePairedHostDeviceRouteController;
- (NSArray)topOfListRoutesUniqueIdentifiers;
- (NSDictionary)routesByUniqueIdentifier;
- (id)routesDidChangeHandler;
- (void)clearState;
- (void)didUpdateRouteRecommendations;
- (void)handleCallStatusChanged;
- (void)handleUpdatedPairedHostDeviceRoutes:(id)routes;
- (void)pickRouteWithUniqueIdentifier:(id)identifier shouldWaitUntilAvailable:(BOOL)available;
- (void)setPickedRouteDidChangeHandler:(id)handler;
- (void)setRouteWasPickedHandler:(id)handler;
- (void)setRoutesDidChangeHandler:(id)handler;
- (void)setTimedOutPickingRouteHandler:(id)handler;
- (void)updateStateWithCalls:(id)calls;
@end

@implementation CSDRouteController

- (NSDictionary)routesByUniqueIdentifier
{
  selfCopy = self;
  sub_10001917C();

  sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)updateStateWithCalls:(id)calls
{
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10002CD00();
}

- (void)handleCallStatusChanged
{
  selfCopy = self;
  sub_10002EB7C();
}

- (void)didUpdateRouteRecommendations
{
  selfCopy = self;
  sub_100033FFC();
}

- (void)clearState
{
  selfCopy = self;
  sub_100033FFC();
}

- (NSArray)topOfListRoutesUniqueIdentifiers
{
  selfCopy = self;
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

- (void)setRoutesDidChangeHandler:(id)handler
{
  v4 = _Block_copy(handler);
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

  selfCopy = self;
  sub_1003B70CC(v4, v5);
}

- (void)setPickedRouteDidChangeHandler:(id)handler
{
  v4 = _Block_copy(handler);
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

  selfCopy = self;
  sub_1003B71C8(v4, v5);
}

- (void)setRouteWasPickedHandler:(id)handler
{
  v4 = _Block_copy(handler);
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

  selfCopy = self;
  sub_1003B72C4(v4, v5);
}

- (void)setTimedOutPickingRouteHandler:(id)handler
{
  v4 = _Block_copy(handler);
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

  selfCopy = self;
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

- (void)pickRouteWithUniqueIdentifier:(id)identifier shouldWaitUntilAvailable:(BOOL)available
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1003B7E2C();
}

- (void)handleUpdatedPairedHostDeviceRoutes:(id)routes
{
  sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10002CD00();
}

@end