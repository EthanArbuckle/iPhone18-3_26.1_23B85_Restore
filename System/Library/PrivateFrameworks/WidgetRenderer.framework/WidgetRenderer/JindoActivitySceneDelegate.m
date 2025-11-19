@interface JindoActivitySceneDelegate
- (_TtC14WidgetRenderer26JindoActivitySceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
@end

@implementation JindoActivitySceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1DAE7DBFC(v8);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v8 = self;
  sub_1DAE7BB00();
  v5 = *(&v8->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer26JindoActivitySceneDelegate__systemApertureElementProvider);
  if (v5)
  {
    v4 = v4;
    v6 = v8;
    v7 = v5;
    sub_1DAE5C23C(v7, v6, v4);

    v8 = v4;
  }
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v7 = self;
  sub_1DAE7C210();
  v5 = *(&v7->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer26JindoActivitySceneDelegate__systemApertureElementProvider);
  if (v5)
  {
    v6 = v5;
    sub_1DAE55278();
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated) == 1)
  {
    v5 = a3;
    v6 = self;
    sub_1DAE79208(v5);
  }
}

- (_TtC14WidgetRenderer26JindoActivitySceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer26JindoActivitySceneDelegate__systemApertureElementProvider) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for JindoActivitySceneDelegate();
  return [(ActivitySceneDelegateBase *)&v3 init];
}

@end