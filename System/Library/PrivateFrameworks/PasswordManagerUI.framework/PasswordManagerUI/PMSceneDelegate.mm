@interface PMSceneDelegate
- (void)handleUpdateLockWindowVisibilitiesNotification:(id)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
@end

@implementation PMSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_21C738290(v8, v10);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21C7066EC();
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v6 = a4;
  v7 = self;
  v8 = [v6 type];
  v9 = sub_21CB855C4();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  PMQuickAction.init(rawValue:)(v12);
  if (v14 == 3)
  {
  }

  else
  {
    v13 = *(&v7->super.super.isa + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_selectedQuickAction);
    sub_21CB81D04();
  }
}

- (void)handleUpdateLockWindowVisibilitiesNotification:(id)a3
{
  v4 = sub_21CB807E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB807B4();
  v9 = self;
  sub_21CB7F96C();

  (*(v5 + 8))(v8, v4);
}

@end