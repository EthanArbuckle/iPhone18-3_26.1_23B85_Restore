@interface ActivitySceneDelegate
- (_TtC14WidgetRenderer21ActivitySceneDelegate)init;
- (id)scene:(id)a3 handleActions:(id)a4;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation ActivitySceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1DAE9150C(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DAE8AC64(v4);
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
  sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0);
  v6 = sub_1DAED1F6C();
  v7 = a3;
  v8 = self;
  sub_1DAE917A8(v6);
  v10 = v9;

  if (v10)
  {
    v11 = sub_1DAED1F5C();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v5 = a4;
  v10 = self;
  v6 = [v5 settingsDiff];
  if (v6)
  {
    v7 = v6;
    v8 = *(&v10->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__appSceneDiffInspector);
    if (v8)
    {
      v9 = v8;
      [v9 inspectDiff:v7 withContext:0];
    }
  }
}

- (_TtC14WidgetRenderer21ActivitySceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewController) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_wantsInheritedColorScheme) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__cancellables) = v2;
  *(&self->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__appSceneDiffInspector) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ActivitySceneDelegate();
  return [(ActivitySceneDelegateBase *)&v4 init];
}

@end