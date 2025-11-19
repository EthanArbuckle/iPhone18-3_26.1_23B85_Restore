@interface ListItemSceneDelegate
- (_TtC14WidgetRenderer21ListItemSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation ListItemSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1DAE61780(v8);
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

- (_TtC14WidgetRenderer21ListItemSceneDelegate)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer21ListItemSceneDelegate__cancellables) = MEMORY[0x1E69E7CC0];
  v3.receiver = self;
  v3.super_class = type metadata accessor for ListItemSceneDelegate();
  return [(SingleActivitySceneDelegate *)&v3 init];
}

@end