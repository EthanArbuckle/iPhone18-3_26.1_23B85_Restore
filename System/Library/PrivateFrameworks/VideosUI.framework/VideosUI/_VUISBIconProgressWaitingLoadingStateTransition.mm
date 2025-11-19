@interface _VUISBIconProgressWaitingLoadingStateTransition
- (void)_updateView:(id)a3;
@end

@implementation _VUISBIconProgressWaitingLoadingStateTransition

- (void)_updateView:(id)a3
{
  v6.receiver = self;
  v6.super_class = _VUISBIconProgressWaitingLoadingStateTransition;
  [(_VUISBInstallProgressStateTransition *)&v6 _updateView:?];
  [a3 setBackgroundAlpha:1.0];
  [a3 setForegroundAlpha:1.0];
  fraction = self->super._fraction;
  if (self->super._fromState != 1)
  {
    fraction = 1.0 - fraction;
  }

  [a3 setCircleRadiusFraction:fraction];
  [a3 circleBoundingRect];
  [a3 setNeedsDisplayInRect:?];
}

@end