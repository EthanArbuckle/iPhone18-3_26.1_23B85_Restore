@interface JindoActivitySceneDelegate
- (_TtC14WidgetRenderer26JindoActivitySceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation JindoActivitySceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1DAE7DBFC(sceneCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_1DAE7BB00();
  v5 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer26JindoActivitySceneDelegate__systemApertureElementProvider);
  if (v5)
  {
    foregroundCopy = foregroundCopy;
    v6 = selfCopy;
    v7 = v5;
    sub_1DAE5C23C(v7, v6, foregroundCopy);

    selfCopy = foregroundCopy;
  }
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_1DAE7C210();
  v5 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer26JindoActivitySceneDelegate__systemApertureElementProvider);
  if (v5)
  {
    v6 = v5;
    sub_1DAE55278();
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated) == 1)
  {
    disconnectCopy = disconnect;
    selfCopy = self;
    sub_1DAE79208(disconnectCopy);
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