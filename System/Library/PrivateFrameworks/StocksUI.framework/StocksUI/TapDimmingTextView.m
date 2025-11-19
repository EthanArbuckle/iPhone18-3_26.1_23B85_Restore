@interface TapDimmingTextView
- (_TtC8StocksUI18TapDimmingTextView)initWithCoder:(id)a3;
- (_TtC8StocksUI18TapDimmingTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
@end

@implementation TapDimmingTextView

- (_TtC8StocksUI18TapDimmingTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  return [(TapDimmingTextView *)&v10 initWithFrame:a4 textContainer:x, y, width, height];
}

- (_TtC8StocksUI18TapDimmingTextView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(TapDimmingTextView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end