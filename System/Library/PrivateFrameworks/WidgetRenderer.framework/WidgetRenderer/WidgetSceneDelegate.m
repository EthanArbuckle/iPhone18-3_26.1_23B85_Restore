@interface WidgetSceneDelegate
- (NSString)description;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)applicationDidReceiveMemoryWarning;
- (void)dealloc;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation WidgetSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1DAD675AC(v8);
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = self;
  sub_1DAD6E338(a4, a5, a6, a7);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DAD8D6E8(v4);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DADA736C(v4);
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
  sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0);
  v10 = sub_1DAED1F6C();
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_1DADA7954(v10, v12);

  v15 = sub_1DAED1F5C();

  return v15;
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DADC634C(v4);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DADC63C0(v4);
}

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)dealloc
{
  v2 = self;
  sub_1DADE41FC();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for WidgetSceneDelegate();
  [(WidgetSceneDelegate *)&v3 dealloc];
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DADE18A8(v4);
}

- (void)applicationDidReceiveMemoryWarning
{
  v2 = self;
  sub_1DADE1F7C();
}

- (NSString)description
{
  v2 = self;
  sub_1DADE23D8();

  v3 = sub_1DAED1CBC();

  return v3;
}

@end