@interface UIPromptBackgroundView
- (_TtC5UIKit22UIPromptBackgroundView)initWithFrame:(CGRect)a3;
- (double)_cornerRadius;
- (void)_setCornerRadius:(double)a3;
- (void)layoutSubviews;
@end

@implementation UIPromptBackgroundView

- (double)_cornerRadius
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UIPromptBackgroundView(0);
  [(UIView *)&v3 _cornerRadius];
  return result;
}

- (void)_setCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for UIPromptBackgroundView(0);
  v4 = v5.receiver;
  [(UIView *)&v5 _setCornerRadius:a3];
  sub_188F4F2C8();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_188F4F3A8();
}

- (_TtC5UIKit22UIPromptBackgroundView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end