@interface ActivitySceneDelegateBase
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation ActivitySceneDelegateBase

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window);
  *(&self->super.isa + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1DAE7A700(v8);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DAE7B8F4("[%{public}s] Became active");
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DAE7B8F4("[%{public}s] Resigned active");
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DAE7BB00();
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DAE7C210();
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DAE79208(v4);
}

@end