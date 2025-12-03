@interface AdIgnorableView
- (_TtC8StocksUI15AdIgnorableView)initWithCoder:(id)coder;
- (_TtC8StocksUI15AdIgnorableView)initWithFrame:(CGRect)frame;
@end

@implementation AdIgnorableView

- (_TtC8StocksUI15AdIgnorableView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AdIgnorableView();
  return [(AdIgnorableView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8StocksUI15AdIgnorableView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AdIgnorableView();
  coderCopy = coder;
  v5 = [(AdIgnorableView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end