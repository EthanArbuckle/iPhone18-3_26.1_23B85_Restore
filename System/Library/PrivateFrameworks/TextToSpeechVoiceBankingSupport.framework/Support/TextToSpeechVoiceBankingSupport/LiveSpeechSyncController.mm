@interface LiveSpeechSyncController
- (void)dealloc;
- (void)handleCloudPrefsChanged:(id)changed;
@end

@implementation LiveSpeechSyncController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(LiveSpeechSyncController *)&v7 dealloc];
}

- (void)handleCloudPrefsChanged:(id)changed
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100022670();

  (*(v5 + 8))(v8, v4);
}

@end