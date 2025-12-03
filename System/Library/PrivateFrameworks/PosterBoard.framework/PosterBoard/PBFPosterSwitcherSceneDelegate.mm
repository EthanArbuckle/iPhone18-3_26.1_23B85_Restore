@interface PBFPosterSwitcherSceneDelegate
- (PBFExtensionTestingViewController)posterExtensionTestingViewController;
- (PBFPosterRackCollectionViewController)posterRackViewController;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_setScene:(id)scene;
- (void)dealloc;
- (void)debugGestureWasTriggered;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:;
- (void)setPosterExtensionTestingViewController:(id)controller;
- (void)setWindow:(id)window;
@end

@implementation PBFPosterSwitcherSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window) = window;
  windowCopy = window;
}

- (PBFPosterRackCollectionViewController)posterRackViewController
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window);
  if (!v2)
  {
    goto LABEL_5;
  }

  selfCopy = self;
  rootViewController = [v2 rootViewController];
  if (!rootViewController || (v5 = rootViewController, type metadata accessor for PosterRackCollectionViewController(), v6 = swift_dynamicCastClass(), selfCopy, v7 = v6, selfCopy = v5, !v6))
  {

LABEL_5:
    v7 = 0;
  }

  return v7;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_21B61CB6C(sceneCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_21B61CE18();
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_21B61D124();
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_21B61D2F0();
}

- (void)dealloc
{
  selfCopy = self;
  sub_21B61966C();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for SwitcherSceneDelegate();
  [(PBFPosterSwitcherSceneDelegate *)&v3 dealloc];
}

- (void)_setScene:(id)scene
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___PBFPosterSwitcherSceneDelegate__scene);
  *(&self->super.super.isa + OBJC_IVAR___PBFPosterSwitcherSceneDelegate__scene) = scene;
  sceneCopy = scene;
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  sSceneCopy = sScene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  selfCopy = self;
  sub_21B61D620(sScene, diff, settings, context);
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  sub_21B61785C(0, &qword_28120B150);
  sub_21B61E3A8(&qword_28120B148, &qword_28120B150);
  v10 = sub_21B6C8F94();
  sceneCopy = scene;
  iSceneCopy = iScene;
  contextCopy = context;
  selfCopy = self;
  sub_21B61E054(v10);

  v15 = sub_21B6C8F84();

  return v15;
}

- (PBFExtensionTestingViewController)posterExtensionTestingViewController
{
  selfCopy = self;
  v3 = sub_21B619850();

  return v3;
}

- (void)setPosterExtensionTestingViewController:(id)controller
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___PBFPosterSwitcherSceneDelegate____lazy_storage___posterExtensionTestingViewController);
  *(&self->super.super.isa + OBJC_IVAR___PBFPosterSwitcherSceneDelegate____lazy_storage___posterExtensionTestingViewController) = controller;
  controllerCopy = controller;
  selfCopy = self;
  sub_21B619C68(v4);
}

- (void)debugGestureWasTriggered
{
  selfCopy = self;
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