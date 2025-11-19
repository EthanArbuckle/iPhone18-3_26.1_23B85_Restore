@interface StickersLaunchStateManagerService.Delegate.Worker
- (_TtCCV9stickersd33StickersLaunchStateManagerService8Delegate6Worker)init;
- (void)launchConfigurationWithReply:(id)a3;
- (void)updateCurrentConfigurationWithSection:(id)a3 identifier:(id)a4 withReply:(id)a5;
- (void)upperCaseString:(id)a3 withReply:(id)a4;
@end

@implementation StickersLaunchStateManagerService.Delegate.Worker

- (void)updateCurrentConfigurationWithSection:(id)a3 identifier:(id)a4 withReply:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a4)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  _Block_copy(v7);
  v13 = self;
  sub_100004A90(v8, v10, v11, a4, v13, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)launchConfigurationWithReply:(id)a3
{
  v5 = type metadata accessor for StickerSectionType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a3);
  v11 = self;
  v12 = sub_100003C34();
  v13 = dispatch thunk of LaunchStateManager.launchConfiguration.getter();

  LaunchConfiguration.sectionType.getter();
  StickerSectionType.rawValue.getter();
  (*(v6 + 8))(v9, v5);
  LaunchConfiguration.identifier.getter();
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();

  if (v15)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v10[2](v10, v16, v17);

  _Block_release(v10);
}

- (void)upperCaseString:(id)a3 withReply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_100004EBC(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (_TtCCV9stickersd33StickersLaunchStateManagerService8Delegate6Worker)init
{
  *(&self->super.isa + OBJC_IVAR____TtCCV9stickersd33StickersLaunchStateManagerService8Delegate6Worker____lazy_storage___launchStateManager) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for StickersLaunchStateManagerService.Delegate.Worker();
  return [(StickersLaunchStateManagerService.Delegate.Worker *)&v3 init];
}

@end