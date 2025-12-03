@interface ListItemSceneDelegate
- (_TtC14WidgetRenderer21ListItemSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation ListItemSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1DAE61780(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated) == 1)
  {
    disconnectCopy = disconnect;
    selfCopy = self;
    sub_1DAE8AC64(disconnectCopy);
  }
}

- (_TtC14WidgetRenderer21ListItemSceneDelegate)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer21ListItemSceneDelegate__cancellables) = MEMORY[0x1E69E7CC0];
  v3.receiver = self;
  v3.super_class = type metadata accessor for ListItemSceneDelegate();
  return [(SingleActivitySceneDelegate *)&v3 init];
}

@end