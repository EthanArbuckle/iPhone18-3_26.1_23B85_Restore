@interface ComplicationsSnapshotSceneDelegate
- (_TtC11PosterBoard34ComplicationsSnapshotSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation ComplicationsSnapshotSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard34ComplicationsSnapshotSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard34ComplicationsSnapshotSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_21B66AD38(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
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