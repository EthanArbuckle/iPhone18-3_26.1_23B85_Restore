@interface UIKBBackgroundShapeView
- (void)setPath:(id)path;
@end

@implementation UIKBBackgroundShapeView

- (void)setPath:(id)path
{
  pathCopy = path;
  shapeLayer = [(UIKBBackgroundShapeView *)self shapeLayer];
  cGPath = [pathCopy CGPath];

  [shapeLayer setPath:cGPath];
}

@end