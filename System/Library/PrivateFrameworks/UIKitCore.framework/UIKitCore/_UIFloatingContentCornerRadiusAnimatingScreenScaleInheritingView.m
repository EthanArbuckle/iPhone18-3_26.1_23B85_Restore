@interface _UIFloatingContentCornerRadiusAnimatingScreenScaleInheritingView
- (void)setContentScaleFactor:(double)a3;
@end

@implementation _UIFloatingContentCornerRadiusAnimatingScreenScaleInheritingView

- (void)setContentScaleFactor:(double)a3
{
  if (a3 == 0.0)
  {
    [(UIView *)self _currentScreenScale];
    if (!self)
    {
      a3 = 0.0;
    }
  }

  v4.receiver = self;
  v4.super_class = _UIFloatingContentCornerRadiusAnimatingScreenScaleInheritingView;
  [(UIView *)&v4 setContentScaleFactor:a3];
}

@end