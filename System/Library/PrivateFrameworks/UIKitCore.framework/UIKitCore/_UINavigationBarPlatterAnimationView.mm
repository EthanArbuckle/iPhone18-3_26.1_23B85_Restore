@interface _UINavigationBarPlatterAnimationView
- (_UINavigationBarPlatterAnimationView)initWithCoder:(id)a3;
- (_UINavigationBarPlatterAnimationView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _UINavigationBarPlatterAnimationView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1891902A4(a4, x, y);

  return v10;
}

- (_UINavigationBarPlatterAnimationView)initWithCoder:(id)a3
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_UINavigationBarPlatterAnimationView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end