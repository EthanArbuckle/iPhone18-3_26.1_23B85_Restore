@interface ACMEToolbar
- (void)drawRect:(CGRect)rect;
@end

@implementation ACMEToolbar

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  v8 = x;
  v9 = y;
  v10 = width;
  v11 = height;

  CGContextClearRect(CurrentContext, *&v8);
}

@end