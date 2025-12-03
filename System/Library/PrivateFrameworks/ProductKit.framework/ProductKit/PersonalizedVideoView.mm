@interface PersonalizedVideoView
- (_TtC10ProductKit21PersonalizedVideoView)initWithCoder:(id)coder;
- (_TtC10ProductKit21PersonalizedVideoView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)change;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation PersonalizedVideoView

- (_TtC10ProductKit21PersonalizedVideoView)initWithFrame:(CGRect)frame
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

- (_TtC10ProductKit21PersonalizedVideoView)initWithCoder:(id)coder
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
  selfCopy = self;
  [v4 setDelegate_];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(PersonalizedVideoView *)&v6 dealloc];
}

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  selfCopy = self;
  sub_260E0E734(superview);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_260E0ECF8(change);
}

@end