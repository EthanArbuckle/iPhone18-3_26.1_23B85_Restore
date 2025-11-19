@interface NoIntrinsicButton
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI17NoIntrinsicButton)initWithCoder:(id)a3;
- (_TtC9SeymourUI17NoIntrinsicButton)initWithFrame:(CGRect)a3;
@end

@implementation NoIntrinsicButton

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = *MEMORY[0x277D77260];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC9SeymourUI17NoIntrinsicButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NoIntrinsicButton();
  return [(NoIntrinsicButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUI17NoIntrinsicButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NoIntrinsicButton();
  v4 = a3;
  v5 = [(NoIntrinsicButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end