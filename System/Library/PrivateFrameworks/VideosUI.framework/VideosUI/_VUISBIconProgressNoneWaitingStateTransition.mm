@interface _VUISBIconProgressNoneWaitingStateTransition
- (void)_updateView:(id)view;
@end

@implementation _VUISBIconProgressNoneWaitingStateTransition

- (void)_updateView:(id)view
{
  v6.receiver = self;
  v6.super_class = _VUISBIconProgressNoneWaitingStateTransition;
  [(_VUISBInstallProgressStateTransition *)&v6 _updateView:?];
  [view setCircleRadiusFraction:0.0];
  [view setForegroundAlpha:0.0];
  fraction = self->super._fraction;
  if (self->super._fromState)
  {
    fraction = 1.0 - fraction;
  }

  [view setBackgroundAlpha:fraction];
  [view setNeedsDisplay];
}

@end