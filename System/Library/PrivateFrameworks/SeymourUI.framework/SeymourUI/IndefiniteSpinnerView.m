@interface IndefiniteSpinnerView
- (_TtC9SeymourUI21IndefiniteSpinnerView)initWithCoder:(id)a3;
- (_TtC9SeymourUI21IndefiniteSpinnerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation IndefiniteSpinnerView

- (_TtC9SeymourUI21IndefiniteSpinnerView)initWithCoder:(id)a3
{
  *(&self->super.super + OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_layout) = xmmword_20C15ACD0;
  v4 = OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_spinnerLayer;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_isAnimating) = 0;
  v5 = OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_rotationAnimation;
  *(&self->super.super.super.isa + v5) = sub_20B7F1DFC();
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_20B7F21DC();
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_20B7F23B8();
}

- (_TtC9SeymourUI21IndefiniteSpinnerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end