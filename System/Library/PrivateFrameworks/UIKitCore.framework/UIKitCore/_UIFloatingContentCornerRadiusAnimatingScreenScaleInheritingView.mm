@interface _UIFloatingContentCornerRadiusAnimatingScreenScaleInheritingView
- (void)setContentScaleFactor:(double)factor;
@end

@implementation _UIFloatingContentCornerRadiusAnimatingScreenScaleInheritingView

- (void)setContentScaleFactor:(double)factor
{
  if (factor == 0.0)
  {
    [(UIView *)self _currentScreenScale];
    if (!self)
    {
      factor = 0.0;
    }
  }

  v4.receiver = self;
  v4.super_class = _UIFloatingContentCornerRadiusAnimatingScreenScaleInheritingView;
  [(UIView *)&v4 setContentScaleFactor:factor];
}

@end