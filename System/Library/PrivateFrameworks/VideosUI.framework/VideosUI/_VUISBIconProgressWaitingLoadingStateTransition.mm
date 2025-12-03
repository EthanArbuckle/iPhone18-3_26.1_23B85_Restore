@interface _VUISBIconProgressWaitingLoadingStateTransition
- (void)_updateView:(id)view;
@end

@implementation _VUISBIconProgressWaitingLoadingStateTransition

- (void)_updateView:(id)view
{
  v6.receiver = self;
  v6.super_class = _VUISBIconProgressWaitingLoadingStateTransition;
  [(_VUISBInstallProgressStateTransition *)&v6 _updateView:?];
  [view setBackgroundAlpha:1.0];
  [view setForegroundAlpha:1.0];
  fraction = self->super._fraction;
  if (self->super._fromState != 1)
  {
    fraction = 1.0 - fraction;
  }

  [view setCircleRadiusFraction:fraction];
  [view circleBoundingRect];
  [view setNeedsDisplayInRect:?];
}

@end