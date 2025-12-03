@interface _SBIconProgressLoadingNoneStateTransition
- (void)_updateView:(id)view;
@end

@implementation _SBIconProgressLoadingNoneStateTransition

- (void)_updateView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = _SBIconProgressLoadingNoneStateTransition;
  [(_SBIconProgressStateTransition *)&v10 _updateView:viewCopy];
  [viewCopy bounds];
  UIRectGetCenter();
  UIDistanceBetweenPoints();
  v6 = v5;
  [viewCopy setBackgroundAlpha:1.0];
  fraction = self->super._fraction;
  if (self->super._fromState == 2)
  {
    [viewCopy setForegroundAlpha:1.0 - fraction];
    v8 = self->super._fraction;
  }

  else
  {
    [viewCopy setForegroundAlpha:fraction];
    v8 = 1.0 - self->super._fraction;
  }

  v9 = v6 / 18.0;
  [viewCopy setCircleRadiusFraction:v8 * (ceilf(v9) + -1.0) + 1.0];
  [viewCopy setNeedsDisplay];
}

@end