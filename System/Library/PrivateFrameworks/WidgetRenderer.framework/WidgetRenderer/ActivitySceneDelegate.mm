@interface ActivitySceneDelegate
- (_TtC14WidgetRenderer21ActivitySceneDelegate)init;
- (id)scene:(id)scene handleActions:(id)actions;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation ActivitySceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1DAE9150C(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_1DAE8AC64(disconnectCopy);
}

- (id)scene:(id)scene handleActions:(id)actions
{
  sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
  sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0);
  v6 = sub_1DAED1F6C();
  sceneCopy = scene;
  selfCopy = self;
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

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  settingsCopy = settings;
  selfCopy = self;
  settingsDiff = [settingsCopy settingsDiff];
  if (settingsDiff)
  {
    v7 = settingsDiff;
    v8 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate__appSceneDiffInspector);
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