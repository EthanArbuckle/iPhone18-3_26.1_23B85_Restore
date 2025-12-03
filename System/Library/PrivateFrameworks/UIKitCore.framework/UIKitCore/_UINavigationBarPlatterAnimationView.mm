@interface _UINavigationBarPlatterAnimationView
- (_UINavigationBarPlatterAnimationView)initWithCoder:(id)coder;
- (_UINavigationBarPlatterAnimationView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _UINavigationBarPlatterAnimationView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1891902A4(event, x, y);

  return v10;
}

- (_UINavigationBarPlatterAnimationView)initWithCoder:(id)coder
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_UINavigationBarPlatterAnimationView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end