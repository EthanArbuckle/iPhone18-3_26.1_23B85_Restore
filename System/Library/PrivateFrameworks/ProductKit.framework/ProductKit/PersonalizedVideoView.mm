@interface PersonalizedVideoView
- (_TtC10ProductKit21PersonalizedVideoView)initWithCoder:(id)a3;
- (_TtC10ProductKit21PersonalizedVideoView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation PersonalizedVideoView

- (_TtC10ProductKit21PersonalizedVideoView)initWithFrame:(CGRect)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_startedHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_completedHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_featureHandler);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_hasSetUpSceneDriver) = 0;
  result = sub_260E69704();
  __break(1u);
  return result;
}

- (_TtC10ProductKit21PersonalizedVideoView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_startedHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_completedHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_featureHandler);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneDriver) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_hasSetUpSceneDriver) = 0;
  result = sub_260E69704();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10ProductKit21PersonalizedVideoView_sceneView);
  v5 = self;
  [v4 setDelegate_];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(PersonalizedVideoView *)&v6 dealloc];
}

- (void)willMoveToSuperview:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_260E0E734(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_260E0ECF8(a3);
}

@end