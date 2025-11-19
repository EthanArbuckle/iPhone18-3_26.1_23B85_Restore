@interface _UINavigationBarPlatterGlassView
- (_UINavigationBarPlatterGlassView)initWithCoder:(id)a3;
- (_UINavigationBarPlatterGlassView)initWithFrame:(CGRect)a3;
@end

@implementation _UINavigationBarPlatterGlassView

- (_UINavigationBarPlatterGlassView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_UINavigationBarPlatterGlassView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(UIView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end