@interface RoundedVisualEffectView
- (_TtC9SeymourUI23RoundedVisualEffectView)initWithCoder:(id)a3;
- (_TtC9SeymourUI23RoundedVisualEffectView)initWithEffect:(id)a3;
- (void)layoutSubviews;
@end

@implementation RoundedVisualEffectView

- (_TtC9SeymourUI23RoundedVisualEffectView)initWithEffect:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for RoundedVisualEffectView();
  v4 = a3;
  v5 = [(RoundedVisualEffectView *)&v8 initWithEffect:v4];
  [(RoundedVisualEffectView *)v5 setClipsToBounds:1, v8.receiver, v8.super_class];
  v6 = [(RoundedVisualEffectView *)v5 layer];

  [v6 setCornerCurve_];
  return v5;
}

- (_TtC9SeymourUI23RoundedVisualEffectView)initWithCoder:(id)a3
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
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius_];
}

@end