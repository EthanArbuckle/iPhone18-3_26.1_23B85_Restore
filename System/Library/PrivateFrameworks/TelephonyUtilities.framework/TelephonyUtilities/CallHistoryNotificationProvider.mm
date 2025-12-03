@interface CallHistoryNotificationProvider
- (NSString)description;
- (void)callInteractionsDidChangeForManager:(id)manager;
- (void)handleCallHistoryDatabaseChangedWithNotification:(id)notification;
@end

@implementation CallHistoryNotificationProvider

- (void)callInteractionsDidChangeForManager:(id)manager
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100394448();
  swift_unknownObjectRelease();
}

- (void)handleCallHistoryDatabaseChangedWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100394574();

  (*(v5 + 8))(v9, v4);
}

- (NSString)description
{
  selfCopy = self;
  sub_100394C84();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end