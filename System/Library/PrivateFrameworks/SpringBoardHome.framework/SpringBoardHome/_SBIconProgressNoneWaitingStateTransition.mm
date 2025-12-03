@interface _SBIconProgressNoneWaitingStateTransition
- (void)_updateView:(id)view;
@end

@implementation _SBIconProgressNoneWaitingStateTransition

- (void)_updateView:(id)view
{
  viewCopy = view;
  v6.receiver = self;
  v6.super_class = _SBIconProgressNoneWaitingStateTransition;
  [(_SBIconProgressStateTransition *)&v6 _updateView:viewCopy];
  [viewCopy setCircleRadiusFraction:0.0];
  [viewCopy setForegroundAlpha:0.0];
  fraction = self->super._fraction;
  if (self->super._fromState)
  {
    fraction = 1.0 - fraction;
  }

  [viewCopy setBackgroundAlpha:fraction];
  [viewCopy setNeedsDisplay];
}

@end