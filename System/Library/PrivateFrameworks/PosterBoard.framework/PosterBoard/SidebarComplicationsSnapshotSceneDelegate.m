@interface SidebarComplicationsSnapshotSceneDelegate
- (_TtC11PosterBoard41SidebarComplicationsSnapshotSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation SidebarComplicationsSnapshotSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard41SidebarComplicationsSnapshotSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard41SidebarComplicationsSnapshotSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_21B63DC40(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
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