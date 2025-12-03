@interface AmbientCompactSceneDelegate
- (_TtC14WidgetRenderer27AmbientCompactSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation AmbientCompactSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1DAE75238(sceneCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_1DAE75738();
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

- (_TtC14WidgetRenderer27AmbientCompactSceneDelegate)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer27AmbientCompactSceneDelegate__cancellables) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer27AmbientCompactSceneDelegate__viewController) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer27AmbientCompactSceneDelegate__viewModel) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AmbientCompactSceneDelegate();
  return [(SingleActivitySceneDelegate *)&v3 init];
}

@end