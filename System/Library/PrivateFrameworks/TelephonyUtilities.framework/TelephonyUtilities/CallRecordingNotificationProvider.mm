@interface CallRecordingNotificationProvider
- (void)handleCallRecordingStateChangedWithNotification:(id)notification;
@end

@implementation CallRecordingNotificationProvider

- (void)handleCallRecordingStateChangedWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1003ABE94(v9);

  (*(v5 + 8))(v9, v4);
}

@end