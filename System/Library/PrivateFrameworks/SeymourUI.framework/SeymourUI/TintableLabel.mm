@interface TintableLabel
- (_TtC9SeymourUI13TintableLabel)initWithCoder:(id)coder;
- (_TtC9SeymourUI13TintableLabel)initWithFrame:(CGRect)frame;
- (void)tintColorDidChange;
@end

@implementation TintableLabel

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TintableLabel();
  v2 = v4.receiver;
  [(TintableLabel *)&v4 tintColorDidChange];
  tintColor = [v2 tintColor];
  [v2 setTextColor_];
}

- (_TtC9SeymourUI13TintableLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TintableLabel();
  return [(TintableLabel *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUI13TintableLabel)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TintableLabel();
  coderCopy = coder;
  v5 = [(TintableLabel *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end