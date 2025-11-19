@interface GreetingsDataSource
- (void)assetsUpdated:(id)a3 availability:(int64_t)a4;
- (void)client:(id)a3 capabilitiesDidChange:(id)a4;
- (void)client:(id)a3 subscription:(id)a4 capabilitiesDidChange:(id)a5;
- (void)handleVMAccountsDidChange;
- (void)localeUpdated:(id)a3;
- (void)subscriptionsDidChangeForClient:(id)a3;
@end

@implementation GreetingsDataSource

- (void)subscriptionsDidChangeForClient:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_100443100();
  swift_unknownObjectRelease();
}

- (void)client:(id)a3 capabilitiesDidChange:(id)a4
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)client:(id)a3 subscription:(id)a4 capabilitiesDidChange:(id)a5
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)handleVMAccountsDidChange
{
  v2 = self;
  sub_1004432B8();
}

- (void)localeUpdated:(id)a3
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  sub_1004446A8();

  (*(v5 + 8))(v9, v4);
}

- (void)assetsUpdated:(id)a3 availability:(int64_t)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_100444990();
}

@end