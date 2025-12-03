@interface NoIntrinsicButton
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI17NoIntrinsicButton)initWithCoder:(id)coder;
- (_TtC9SeymourUI17NoIntrinsicButton)initWithFrame:(CGRect)frame;
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

- (_TtC9SeymourUI17NoIntrinsicButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NoIntrinsicButton();
  return [(NoIntrinsicButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUI17NoIntrinsicButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NoIntrinsicButton();
  coderCopy = coder;
  v5 = [(NoIntrinsicButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end