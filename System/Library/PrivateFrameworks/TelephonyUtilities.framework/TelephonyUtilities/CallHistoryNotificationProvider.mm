@interface CallHistoryNotificationProvider
- (NSString)description;
- (void)callInteractionsDidChangeForManager:(id)a3;
- (void)handleCallHistoryDatabaseChangedWithNotification:(id)a3;
@end

@implementation CallHistoryNotificationProvider

- (void)callInteractionsDidChangeForManager:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_100394448();
  swift_unknownObjectRelease();
}

- (void)handleCallHistoryDatabaseChangedWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  sub_100394574();

  (*(v5 + 8))(v9, v4);
}

- (NSString)description
{
  v2 = self;
  sub_100394C84();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end