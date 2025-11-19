@interface DeviceActivityQuery
- (_TtC18UsageTrackingAgent19DeviceActivityQuery)init;
- (_TtC18UsageTrackingAgent19DeviceActivityQuery)initWithBundleIdentifiers:(id)a3 exemptBundleIdentifiers:(id)a4 categoryIdentifiers:(id)a5 domains:(id)a6 interval:(id)a7;
@end

@implementation DeviceActivityQuery

- (_TtC18UsageTrackingAgent19DeviceActivityQuery)initWithBundleIdentifiers:(id)a3 exemptBundleIdentifiers:(id)a4 categoryIdentifiers:(id)a5 domains:(id)a6 interval:(id)a7
{
  v21 = a6;
  v22 = a7;
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for Identifier(0);
  sub_100034B18(&qword_100090EB0, type metadata accessor for Identifier);
  v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  *(&self->super.isa + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_bundleIdentifiers) = v14;
  *(&self->super.isa + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_exemptBundleIdentifiers) = v15;
  *(&self->super.isa + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_categoryIdentifiers) = v16;
  *(&self->super.isa + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_domains) = v17;
  (*(v9 + 16))(self + OBJC_IVAR____TtC18UsageTrackingAgent19DeviceActivityQuery_interval, v13, v8);
  v18 = type metadata accessor for DeviceActivityQuery();
  v23.receiver = self;
  v23.super_class = v18;
  v19 = [(DeviceActivityQuery *)&v23 init:v21];
  (*(v9 + 8))(v13, v8);
  return v19;
}

- (_TtC18UsageTrackingAgent19DeviceActivityQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end