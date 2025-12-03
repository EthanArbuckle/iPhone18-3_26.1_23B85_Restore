@interface ComplicationsSceneDelegate
- (_TtC11PosterBoard26ComplicationsSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation ComplicationsSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard26ComplicationsSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard26ComplicationsSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_21B64311C(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_21B643304();
}

- (_TtC11PosterBoard26ComplicationsSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard26ComplicationsSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ComplicationsSceneDelegate();
  return [(ComplicationsSceneDelegate *)&v3 init];
}

@end