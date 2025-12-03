@interface _UIGradientCarouselView
- (_TtC5UIKit23_UIGradientCarouselView)initWithCoder:(id)coder;
- (_TtC5UIKit23_UIGradientCarouselView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation _UIGradientCarouselView

- (_TtC5UIKit23_UIGradientCarouselView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_animationKey);
  *v3 = 0xD000000000000010;
  v3[1] = 0x800000018A6B1330;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UIGradientCarouselView();
  v2 = v7.receiver;
  [(UIView *)&v7 layoutSubviews];
  [v2 bounds];
  v4 = v3;
  [v2 bounds];
  if (v4 > v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  [*&v2[OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_gradientLayer] setBounds_];
  sub_1891EE638();
}

- (_TtC5UIKit23_UIGradientCarouselView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end