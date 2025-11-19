@interface SharePlayNotificationProvider
- (void)conversationManager:(id)a3 conversation:(id)a4 launchStateChanged:(unint64_t)a5 forActivitySession:(id)a6;
- (void)conversationManager:(id)a3 conversation:(id)a4 participant:(id)a5 addedNotice:(id)a6;
- (void)foregroundApplicationChanged:(id)a3;
@end

@implementation SharePlayNotificationProvider

- (void)foregroundApplicationChanged:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  sub_100453828(v9);

  (*(v5 + 8))(v9, v4);
}

- (void)conversationManager:(id)a3 conversation:(id)a4 participant:(id)a5 addedNotice:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_100454630(v14, v11, v12, v13);
}

- (void)conversationManager:(id)a3 conversation:(id)a4 launchStateChanged:(unint64_t)a5 forActivitySession:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = self;
  sub_100454F34(v13, v11, a5, v12);
}

@end