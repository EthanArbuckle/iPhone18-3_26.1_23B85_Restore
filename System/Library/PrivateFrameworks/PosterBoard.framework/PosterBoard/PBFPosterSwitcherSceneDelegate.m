@interface PBFPosterSwitcherSceneDelegate
- (PBFExtensionTestingViewController)posterExtensionTestingViewController;
- (PBFPosterRackCollectionViewController)posterRackViewController;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)_setScene:(id)a3;
- (void)dealloc;
- (void)debugGestureWasTriggered;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:;
- (void)setPosterExtensionTestingViewController:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation PBFPosterSwitcherSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window) = a3;
  v3 = a3;
}

- (PBFPosterRackCollectionViewController)posterRackViewController
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = self;
  v4 = [v2 rootViewController];
  if (!v4 || (v5 = v4, type metadata accessor for PosterRackCollectionViewController(), v6 = swift_dynamicCastClass(), v3, v7 = v6, v3 = v5, !v6))
  {

LABEL_5:
    v7 = 0;
  }

  return v7;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_21B61CB6C(v8);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21B61CE18();
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21B61D124();
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21B61D2F0();
}

- (void)dealloc
{
  v2 = self;
  sub_21B61966C();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for SwitcherSceneDelegate();
  [(PBFPosterSwitcherSceneDelegate *)&v3 dealloc];
}

- (void)_setScene:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___PBFPosterSwitcherSceneDelegate__scene);
  *(&self->super.super.isa + OBJC_IVAR___PBFPosterSwitcherSceneDelegate__scene) = a3;
  v3 = a3;
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = self;
  sub_21B61D620(a4, a5, a6, a7);
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  sub_21B61785C(0, &qword_28120B150);
  sub_21B61E3A8(&qword_28120B148, &qword_28120B150);
  v10 = sub_21B6C8F94();
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_21B61E054(v10);

  v15 = sub_21B6C8F84();

  return v15;
}

- (PBFExtensionTestingViewController)posterExtensionTestingViewController
{
  v2 = self;
  v3 = sub_21B619850();

  return v3;
}

- (void)setPosterExtensionTestingViewController:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___PBFPosterSwitcherSceneDelegate____lazy_storage___posterExtensionTestingViewController);
  *(&self->super.super.isa + OBJC_IVAR___PBFPosterSwitcherSceneDelegate____lazy_storage___posterExtensionTestingViewController) = a3;
  v5 = a3;
  v6 = self;
  sub_21B619C68(v4);
}

- (void)debugGestureWasTriggered
{
  v2 = self;
  sub_21B619ACC();
}

- (void)sceneWillResignActive:
{
  if (qword_28120B390 != -1)
  {
    swift_once();
  }

  v0 = sub_21B6C8AB4();
  __swift_project_value_buffer(v0, qword_28120CD78);
  v1 = sub_21B6C9044();
  log = sub_21B6C8A94();
  if (os_log_type_enabled(log, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21B526000, log, v1, "Poster Switcher will resign active", v2, 2u);
    MEMORY[0x21CEF8150](v2, -1, -1);
  }
}

@end