@interface SessionPlayButtonTintView
- (_TtC9SeymourUI25SessionPlayButtonTintView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation SessionPlayButtonTintView

- (_TtC9SeymourUI25SessionPlayButtonTintView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC9SeymourUI25SessionPlayButtonTintView_gradientLayer;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SessionPlayButtonTintView();
  v2 = v4.receiver;
  [(SessionPlayButtonTintView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9SeymourUI25SessionPlayButtonTintView_gradientLayer];
  [v2 bounds];
  [v3 setFrame_];
}

@end