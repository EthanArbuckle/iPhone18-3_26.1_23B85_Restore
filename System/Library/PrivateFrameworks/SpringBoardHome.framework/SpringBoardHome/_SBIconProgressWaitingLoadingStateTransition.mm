@interface _SBIconProgressWaitingLoadingStateTransition
- (void)_updateView:(id)view;
@end

@implementation _SBIconProgressWaitingLoadingStateTransition

- (void)_updateView:(id)view
{
  viewCopy = view;
  v6.receiver = self;
  v6.super_class = _SBIconProgressWaitingLoadingStateTransition;
  [(_SBIconProgressStateTransition *)&v6 _updateView:viewCopy];
  [viewCopy setBackgroundAlpha:1.0];
  [viewCopy setForegroundAlpha:1.0];
  fraction = self->super._fraction;
  if (self->super._fromState != 1)
  {
    fraction = 1.0 - fraction;
  }

  [viewCopy setCircleRadiusFraction:fraction];
  [viewCopy circleBoundingRect];
  [viewCopy setNeedsDisplayInRect:?];
}

@end