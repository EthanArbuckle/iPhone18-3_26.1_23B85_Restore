@interface Relay.RelayProxy
- (void)closeDisplayServiceSessionsWithPeerIdentifier:(id)a3;
- (void)setDisplayServiceSessionsChangedListener:(id)a3;
@end

@implementation Relay.RelayProxy

- (void)setDisplayServiceSessionsChangedListener:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_10002AA14(sub_100048414, v5);
}

- (void)closeDisplayServiceSessionsWithPeerIdentifier:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_10002AC68(v8);

  (*(v5 + 8))(v8, v4);
}

@end