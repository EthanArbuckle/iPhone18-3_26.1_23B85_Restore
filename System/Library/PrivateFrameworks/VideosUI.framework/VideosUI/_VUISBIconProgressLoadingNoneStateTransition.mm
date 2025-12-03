@interface _VUISBIconProgressLoadingNoneStateTransition
- (void)_updateView:(id)view;
@end

@implementation _VUISBIconProgressLoadingNoneStateTransition

- (void)_updateView:(id)view
{
  v10.receiver = self;
  v10.super_class = _VUISBIconProgressLoadingNoneStateTransition;
  [(_VUISBInstallProgressStateTransition *)&v10 _updateView:?];
  [view bounds];
  UIRectGetCenter();
  UIDistanceBetweenPoints();
  v6 = v5;
  [view setBackgroundAlpha:1.0];
  fraction = self->super._fraction;
  if (self->super._fromState == 2)
  {
    [view setForegroundAlpha:1.0 - fraction];
    v8 = self->super._fraction;
  }

  else
  {
    [view setForegroundAlpha:fraction];
    v8 = 1.0 - self->super._fraction;
  }

  v9 = v6;
  [view setCircleRadiusFraction:v8 * (ceilf(v9 / 36.0) + -1.0) + 1.0];
  [view setNeedsDisplay];
}

@end