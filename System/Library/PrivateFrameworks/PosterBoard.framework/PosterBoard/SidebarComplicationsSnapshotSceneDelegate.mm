@interface SidebarComplicationsSnapshotSceneDelegate
- (_TtC11PosterBoard41SidebarComplicationsSnapshotSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation SidebarComplicationsSnapshotSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard41SidebarComplicationsSnapshotSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard41SidebarComplicationsSnapshotSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_21B63DC40(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_21B63DE04();
}

- (_TtC11PosterBoard41SidebarComplicationsSnapshotSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard41SidebarComplicationsSnapshotSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SidebarComplicationsSnapshotSceneDelegate();
  return [(SidebarComplicationsSnapshotSceneDelegate *)&v3 init];
}

@end