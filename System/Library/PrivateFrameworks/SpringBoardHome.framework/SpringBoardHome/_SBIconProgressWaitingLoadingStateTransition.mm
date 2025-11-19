@interface _SBIconProgressWaitingLoadingStateTransition
- (void)_updateView:(id)a3;
@end

@implementation _SBIconProgressWaitingLoadingStateTransition

- (void)_updateView:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _SBIconProgressWaitingLoadingStateTransition;
  [(_SBIconProgressStateTransition *)&v6 _updateView:v4];
  [v4 setBackgroundAlpha:1.0];
  [v4 setForegroundAlpha:1.0];
  fraction = self->super._fraction;
  if (self->super._fromState != 1)
  {
    fraction = 1.0 - fraction;
  }

  [v4 setCircleRadiusFraction:fraction];
  [v4 circleBoundingRect];
  [v4 setNeedsDisplayInRect:?];
}

@end