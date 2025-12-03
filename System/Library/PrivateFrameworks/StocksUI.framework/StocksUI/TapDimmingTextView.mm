@interface TapDimmingTextView
- (_TtC8StocksUI18TapDimmingTextView)initWithCoder:(id)coder;
- (_TtC8StocksUI18TapDimmingTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
@end

@implementation TapDimmingTextView

- (_TtC8StocksUI18TapDimmingTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  return [(TapDimmingTextView *)&v10 initWithFrame:container textContainer:x, y, width, height];
}

- (_TtC8StocksUI18TapDimmingTextView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(TapDimmingTextView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end