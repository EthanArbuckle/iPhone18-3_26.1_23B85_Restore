@interface QuickActionsSceneDelegate
- (_TtC11PosterBoard25QuickActionsSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation QuickActionsSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard25QuickActionsSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard25QuickActionsSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_21B647454(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard25QuickActionsSceneDelegate_window);
  if (v3)
  {
    disconnectCopy = disconnect;
    selfCopy = self;
    rootViewController = [v3 rootViewController];
    if (rootViewController)
    {
      v7 = rootViewController;
      v8 = swift_dynamicCastObjCProtocolConditional();
      if (v8)
      {
        [v8 invalidate];
      }
    }

    else
    {
    }
  }
}

- (_TtC11PosterBoard25QuickActionsSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard25QuickActionsSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for QuickActionsSceneDelegate();
  return [(QuickActionsSceneDelegate *)&v3 init];
}

@end