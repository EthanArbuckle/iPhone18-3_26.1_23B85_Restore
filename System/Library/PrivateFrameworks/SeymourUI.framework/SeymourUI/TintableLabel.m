@interface TintableLabel
- (_TtC9SeymourUI13TintableLabel)initWithCoder:(id)a3;
- (_TtC9SeymourUI13TintableLabel)initWithFrame:(CGRect)a3;
- (void)tintColorDidChange;
@end

@implementation TintableLabel

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TintableLabel();
  v2 = v4.receiver;
  [(TintableLabel *)&v4 tintColorDidChange];
  v3 = [v2 tintColor];
  [v2 setTextColor_];
}

- (_TtC9SeymourUI13TintableLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TintableLabel();
  return [(TintableLabel *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUI13TintableLabel)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TintableLabel();
  v4 = a3;
  v5 = [(TintableLabel *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end