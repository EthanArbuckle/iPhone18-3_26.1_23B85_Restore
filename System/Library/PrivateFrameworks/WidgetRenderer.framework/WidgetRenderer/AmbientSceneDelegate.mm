@interface AmbientSceneDelegate
- (_TtC14WidgetRenderer20AmbientSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
@end

@implementation AmbientSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1DAE6E368(v8);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DAE6E830();
}

- (void)sceneDidDisconnect:(id)a3
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated) == 1)
  {
    v5 = a3;
    v6 = self;
    sub_1DAE8AC64(v5);
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