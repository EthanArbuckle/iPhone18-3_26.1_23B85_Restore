@interface ComplicationsSceneDelegate
- (_TtC11PosterBoard26ComplicationsSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation ComplicationsSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard26ComplicationsSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC11PosterBoard26ComplicationsSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_21B64311C(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
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