@interface CSDProcessObserver
- (id)processIdentifiersForBundleIdentifier:(id)identifier;
- (id)processStateChanged;
- (id)processStateChangedWithBundleID;
- (id)processStatesForCallSource:(id)source;
- (int)currentProcessIdentifier;
- (void)fetchCurrentProcessStatesForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)processStatesForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)setProcessStateChanged:(id)changed;
- (void)setProcessStateChangedWithBundleID:(id)d;
@end

@implementation CSDProcessObserver

- (int)currentProcessIdentifier
{
  selfCopy = self;
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

- (void)setProcessStateChanged:(id)changed
{
  v4 = _Block_copy(changed);
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

  selfCopy = self;
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

- (void)setProcessStateChangedWithBundleID:(id)d
{
  v4 = _Block_copy(d);
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

  selfCopy = self;
  sub_1002F4A24(v4, v5);
}

- (id)processIdentifiersForBundleIdentifier:(id)identifier
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1002F4A30();

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)processStatesForBundleIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_1002F4EA0();
}

- (void)fetchCurrentProcessStatesForBundleIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_1002F4EA0();
}

- (id)processStatesForCallSource:(id)source
{
  sourceCopy = source;
  selfCopy = self;
  sub_1002F532C(sourceCopy);

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end