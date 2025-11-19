@interface LiveSpeechSyncController
- (void)dealloc;
- (void)handleCloudPrefsChanged:(id)a3;
@end

@implementation LiveSpeechSyncController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:v5];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(LiveSpeechSyncController *)&v7 dealloc];
}

- (void)handleCloudPrefsChanged:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_100022670();

  (*(v5 + 8))(v8, v4);
}

@end