@interface AnimatedStrokeView
- (_TtC16ScreenSharingKit18AnimatedStrokeView)initWithCoder:(id)a3;
- (_TtC16ScreenSharingKit18AnimatedStrokeView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AnimatedStrokeView

- (_TtC16ScreenSharingKit18AnimatedStrokeView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16ScreenSharingKit18AnimatedStrokeView_strokeLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16ScreenSharingKit18AnimatedStrokeView_didAnimate) = 0;
  result = sub_264B41874();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2649E2044();
}

- (_TtC16ScreenSharingKit18AnimatedStrokeView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end