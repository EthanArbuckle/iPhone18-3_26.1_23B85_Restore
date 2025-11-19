@interface UIKBBackgroundShapeView
- (void)setPath:(id)a3;
@end

@implementation UIKBBackgroundShapeView

- (void)setPath:(id)a3
{
  v4 = a3;
  v6 = [(UIKBBackgroundShapeView *)self shapeLayer];
  v5 = [v4 CGPath];

  [v6 setPath:v5];
}

@end