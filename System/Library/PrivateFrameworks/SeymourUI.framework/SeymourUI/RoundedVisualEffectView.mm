@interface RoundedVisualEffectView
- (_TtC9SeymourUI23RoundedVisualEffectView)initWithCoder:(id)coder;
- (_TtC9SeymourUI23RoundedVisualEffectView)initWithEffect:(id)effect;
- (void)layoutSubviews;
@end

@implementation RoundedVisualEffectView

- (_TtC9SeymourUI23RoundedVisualEffectView)initWithEffect:(id)effect
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for RoundedVisualEffectView();
  effectCopy = effect;
  v5 = [(RoundedVisualEffectView *)&v8 initWithEffect:effectCopy];
  [(RoundedVisualEffectView *)v5 setClipsToBounds:1, v8.receiver, v8.super_class];
  layer = [(RoundedVisualEffectView *)v5 layer];

  [layer setCornerCurve_];
  return v5;
}

- (_TtC9SeymourUI23RoundedVisualEffectView)initWithCoder:(id)coder
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RoundedVisualEffectView();
  v2 = v4.receiver;
  [(RoundedVisualEffectView *)&v4 layoutSubviews];
  layer = [v2 layer];
  [v2 bounds];
  [layer setCornerRadius_];
}

@end