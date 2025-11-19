@interface QuickActionsSceneDelegate
- (_TtC11PosterBoard25QuickActionsSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation QuickActionsSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard25QuickActionsSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard25QuickActionsSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_21B647454(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard25QuickActionsSceneDelegate_window);
  if (v3)
  {
    v5 = a3;
    v9 = self;
    v6 = [v3 rootViewController];
    if (v6)
    {
      v7 = v6;
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