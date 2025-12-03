@interface InlineComplicationSnapshotSceneDelegate
- (_TtC11PosterBoard39InlineComplicationSnapshotSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation InlineComplicationSnapshotSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard39InlineComplicationSnapshotSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard39InlineComplicationSnapshotSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_21B633C08(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_21B633DC8();
}

- (_TtC11PosterBoard39InlineComplicationSnapshotSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard39InlineComplicationSnapshotSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for InlineComplicationSnapshotSceneDelegate();
  return [(InlineComplicationSnapshotSceneDelegate *)&v3 init];
}

@end