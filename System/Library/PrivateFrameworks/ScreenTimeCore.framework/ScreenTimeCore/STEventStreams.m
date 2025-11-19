@interface STEventStreams
+ (id)fetchAllURLsForBundleIdentifier:(id)a3 profileIdentifier:(id)a4;
+ (id)fetchURLsDuringInterval:(id)a3 bundleIdentifier:(id)a4 profileIdentifier:(id)a5;
- (_TtC15ScreenTimeAgent14STEventStreams)init;
@end

@implementation STEventStreams

+ (id)fetchURLsDuringInterval:(id)a3 bundleIdentifier:(id)a4 profileIdentifier:(id)a5
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static EventStreams.urls(during:bundleIdentifier:profileIdentifier:)();

  (*(v7 + 8))(v10, v6);
  type metadata accessor for URL();
  sub_1000DF75C();
  v11.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

+ (id)fetchAllURLsForBundleIdentifier:(id)a3 profileIdentifier:(id)a4
{
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static Date.distantPast.getter();
  static Date.now.getter();
  DateInterval.init(start:end:)();
  static EventStreams.urls(during:bundleIdentifier:profileIdentifier:)();

  (*(v9 + 8))(v12, v8);
  type metadata accessor for URL();
  sub_1000DF75C();
  v13.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (_TtC15ScreenTimeAgent14STEventStreams)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(STEventStreams *)&v3 init];
}

@end