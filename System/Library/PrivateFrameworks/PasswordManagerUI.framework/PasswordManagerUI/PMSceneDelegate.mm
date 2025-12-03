@interface PMSceneDelegate
- (void)handleUpdateLockWindowVisibilitiesNotification:(id)notification;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation PMSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_21C738290(sceneCopy, optionsCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_21C7066EC();
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  selfCopy = self;
  type = [itemCopy type];
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
    v13 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_selectedQuickAction);
    sub_21CB81D04();
  }
}

- (void)handleUpdateLockWindowVisibilitiesNotification:(id)notification
{
  v4 = sub_21CB807E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB807B4();
  selfCopy = self;
  sub_21CB7F96C();

  (*(v5 + 8))(v8, v4);
}

@end