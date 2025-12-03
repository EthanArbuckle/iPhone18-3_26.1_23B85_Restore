@interface RoundedIconView
- (_TtC9SeymourUI15RoundedIconView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation RoundedIconView

- (_TtC9SeymourUI15RoundedIconView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9SeymourUI15RoundedIconView_imageView;
  v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.isa + v4) = v5;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RoundedIconView();
  v2 = v4.receiver;
  [(RoundedIconView *)&v4 layoutSubviews];
  layer = [v2 layer];
  [v2 bounds];
  [layer setCornerRadius_];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for RoundedIconView();
  v2 = v5.receiver;
  [(RoundedIconView *)&v5 tintColorDidChange];
  v3 = *&v2[OBJC_IVAR____TtC9SeymourUI15RoundedIconView_imageView];
  tintColor = [v2 tintColor];
  [v3 setTintColor_];
}

@end