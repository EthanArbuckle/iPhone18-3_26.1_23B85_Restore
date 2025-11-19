@interface _VUISBIconProgressLoadingNoneStateTransition
- (void)_updateView:(id)a3;
@end

@implementation _VUISBIconProgressLoadingNoneStateTransition

- (void)_updateView:(id)a3
{
  v10.receiver = self;
  v10.super_class = _VUISBIconProgressLoadingNoneStateTransition;
  [(_VUISBInstallProgressStateTransition *)&v10 _updateView:?];
  [a3 bounds];
  UIRectGetCenter();
  UIDistanceBetweenPoints();
  v6 = v5;
  [a3 setBackgroundAlpha:1.0];
  fraction = self->super._fraction;
  if (self->super._fromState == 2)
  {
    [a3 setForegroundAlpha:1.0 - fraction];
    v8 = self->super._fraction;
  }

  else
  {
    [a3 setForegroundAlpha:fraction];
    v8 = 1.0 - self->super._fraction;
  }

  v9 = v6;
  [a3 setCircleRadiusFraction:v8 * (ceilf(v9 / 36.0) + -1.0) + 1.0];
  [a3 setNeedsDisplay];
}

@end