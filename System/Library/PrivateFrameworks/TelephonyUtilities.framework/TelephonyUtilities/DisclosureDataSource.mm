@interface DisclosureDataSource
- (void)assetsUpdated:(id)updated availability:(int64_t)availability;
- (void)localeUpdated:(id)updated;
@end

@implementation DisclosureDataSource

- (void)localeUpdated:(id)updated
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002E8018();

  (*(v4 + 8))(v8, v3);
}

- (void)assetsUpdated:(id)updated availability:(int64_t)availability
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002E81BC();
}

@end