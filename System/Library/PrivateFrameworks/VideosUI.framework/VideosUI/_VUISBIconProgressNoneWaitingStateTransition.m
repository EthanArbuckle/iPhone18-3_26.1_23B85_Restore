@interface _VUISBIconProgressNoneWaitingStateTransition
- (void)_updateView:(id)a3;
@end

@implementation _VUISBIconProgressNoneWaitingStateTransition

- (void)_updateView:(id)a3
{
  v6.receiver = self;
  v6.super_class = _VUISBIconProgressNoneWaitingStateTransition;
  [(_VUISBInstallProgressStateTransition *)&v6 _updateView:?];
  [a3 setCircleRadiusFraction:0.0];
  [a3 setForegroundAlpha:0.0];
  fraction = self->super._fraction;
  if (self->super._fromState)
  {
    fraction = 1.0 - fraction;
  }

  [a3 setBackgroundAlpha:fraction];
  [a3 setNeedsDisplay];
}

@end