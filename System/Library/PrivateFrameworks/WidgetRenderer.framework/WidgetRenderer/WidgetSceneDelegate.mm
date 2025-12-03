@interface WidgetSceneDelegate
- (NSString)description;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)applicationDidReceiveMemoryWarning;
- (void)dealloc;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setWindow:(id)window;
@end

@implementation WidgetSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1DAD675AC(sceneCopy);
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  sSceneCopy = sScene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  selfCopy = self;
  sub_1DAD6E338(sScene, diff, settings, context);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_1DAD8D6E8(foregroundCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1DADA736C(activeCopy);
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
  sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0);
  v10 = sub_1DAED1F6C();
  sceneCopy = scene;
  iSceneCopy = iScene;
  contextCopy = context;
  selfCopy = self;
  sub_1DADA7954(v10, iSceneCopy);

  v15 = sub_1DAED1F5C();

  return v15;
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1DADC634C(activeCopy);
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_1DADC63C0(backgroundCopy);
}

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)dealloc
{
  selfCopy = self;
  sub_1DADE41FC();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for WidgetSceneDelegate();
  [(WidgetSceneDelegate *)&v3 dealloc];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_1DADE18A8(disconnectCopy);
}

- (void)applicationDidReceiveMemoryWarning
{
  selfCopy = self;
  sub_1DADE1F7C();
}

- (NSString)description
{
  selfCopy = self;
  sub_1DADE23D8();

  v3 = sub_1DAED1CBC();

  return v3;
}

@end