@interface AdjustedVideoView
- (_TtC10ProductKit17AdjustedVideoView)initWithCoder:(id)coder;
- (_TtC10ProductKit17AdjustedVideoView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AdjustedVideoView

- (_TtC10ProductKit17AdjustedVideoView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_featureHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_startedHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_completedHandler);
  *v5 = 0;
  v5[1] = 0;
  result = sub_260E69704();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_260E572BC(change);
}

- (_TtC10ProductKit17AdjustedVideoView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end