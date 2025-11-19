@interface TranslationDisclosureDataSource
- (void)assetsUpdated:(id)a3 availability:(int64_t)a4;
- (void)localeUpdated:(id)a3;
@end

@implementation TranslationDisclosureDataSource

- (void)localeUpdated:(id)a3
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10037FC84();

  (*(v4 + 8))(v8, v3);
}

- (void)assetsUpdated:(id)a3 availability:(int64_t)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100380014();
}

@end