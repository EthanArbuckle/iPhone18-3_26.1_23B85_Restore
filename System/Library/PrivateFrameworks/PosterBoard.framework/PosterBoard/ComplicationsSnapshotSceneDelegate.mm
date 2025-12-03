@interface ComplicationsSnapshotSceneDelegate
- (_TtC11PosterBoard34ComplicationsSnapshotSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation ComplicationsSnapshotSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard34ComplicationsSnapshotSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard34ComplicationsSnapshotSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_21B66AD38(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_21B66AEFC();
}

- (_TtC11PosterBoard34ComplicationsSnapshotSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard34ComplicationsSnapshotSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ComplicationsSnapshotSceneDelegate();
  return [(ComplicationsSnapshotSceneDelegate *)&v3 init];
}

@end