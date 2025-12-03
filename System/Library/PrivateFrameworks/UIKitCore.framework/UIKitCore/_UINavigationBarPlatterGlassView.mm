@interface _UINavigationBarPlatterGlassView
- (_UINavigationBarPlatterGlassView)initWithCoder:(id)coder;
- (_UINavigationBarPlatterGlassView)initWithFrame:(CGRect)frame;
@end

@implementation _UINavigationBarPlatterGlassView

- (_UINavigationBarPlatterGlassView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_UINavigationBarPlatterGlassView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(UIView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end