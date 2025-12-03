@interface AmbientSceneDelegate
- (_TtC14WidgetRenderer20AmbientSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation AmbientSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1DAE6E368(sceneCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_1DAE6E830();
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

- (_TtC14WidgetRenderer20AmbientSceneDelegate)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer20AmbientSceneDelegate__cancellables) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer20AmbientSceneDelegate__viewController) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer20AmbientSceneDelegate__viewModel) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AmbientSceneDelegate();
  return [(SingleActivitySceneDelegate *)&v3 init];
}

@end