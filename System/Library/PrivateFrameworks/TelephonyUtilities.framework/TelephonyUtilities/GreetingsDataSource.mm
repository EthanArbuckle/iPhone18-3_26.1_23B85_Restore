@interface GreetingsDataSource
- (void)assetsUpdated:(id)updated availability:(int64_t)availability;
- (void)client:(id)client capabilitiesDidChange:(id)change;
- (void)client:(id)client subscription:(id)subscription capabilitiesDidChange:(id)change;
- (void)handleVMAccountsDidChange;
- (void)localeUpdated:(id)updated;
- (void)subscriptionsDidChangeForClient:(id)client;
@end

@implementation GreetingsDataSource

- (void)subscriptionsDidChangeForClient:(id)client
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100443100();
  swift_unknownObjectRelease();
}

- (void)client:(id)client capabilitiesDidChange:(id)change
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)client:(id)client subscription:(id)subscription capabilitiesDidChange:(id)change
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)handleVMAccountsDidChange
{
  selfCopy = self;
  sub_1004432B8();
}

- (void)localeUpdated:(id)updated
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1004446A8();

  (*(v5 + 8))(v9, v4);
}

- (void)assetsUpdated:(id)updated availability:(int64_t)availability
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100444990();
}

@end