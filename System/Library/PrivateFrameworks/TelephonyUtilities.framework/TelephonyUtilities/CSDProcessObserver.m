@interface CSDProcessObserver
- (id)processIdentifiersForBundleIdentifier:(id)a3;
- (id)processStateChanged;
- (id)processStateChangedWithBundleID;
- (id)processStatesForCallSource:(id)a3;
- (int)currentProcessIdentifier;
- (void)fetchCurrentProcessStatesForBundleIdentifier:(id)a3 completion:(id)a4;
- (void)processStatesForBundleIdentifier:(id)a3 completion:(id)a4;
- (void)setProcessStateChanged:(id)a3;
- (void)setProcessStateChangedWithBundleID:(id)a3;
@end

@implementation CSDProcessObserver

- (int)currentProcessIdentifier
{
  v2 = self;
  v3 = j__getpid();

  return v3;
}

- (id)processStateChanged
{
  v2 = sub_1002F46B8();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100008E3C;
    v6[3] = &unk_100625C60;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setProcessStateChanged:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_100008E9C;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1002F4798(v4, v5);
}

- (id)processStateChangedWithBundleID
{
  v2 = sub_1002F484C();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1002F4884;
    v6[3] = &unk_100625C10;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setProcessStateChangedWithBundleID:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1002F6FFC;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1002F4A24(v4, v5);
}

- (id)processIdentifiersForBundleIdentifier:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_1002F4A30();

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)processStatesForBundleIdentifier:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  sub_1002F4EA0();
}

- (void)fetchCurrentProcessStatesForBundleIdentifier:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  sub_1002F4EA0();
}

- (id)processStatesForCallSource:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002F532C(v4);

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end