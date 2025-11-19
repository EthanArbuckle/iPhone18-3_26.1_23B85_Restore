@interface ACMEToolbar
- (void)drawRect:(CGRect)a3;
@end

@implementation ACMEToolbar

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  v8 = x;
  v9 = y;
  v10 = width;
  v11 = height;

  CGContextClearRect(CurrentContext, *&v8);
}

@end