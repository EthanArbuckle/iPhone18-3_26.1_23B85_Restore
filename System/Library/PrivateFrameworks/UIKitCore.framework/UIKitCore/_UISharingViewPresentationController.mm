@interface _UISharingViewPresentationController
- (void)dismissalTransitionDidEnd:(BOOL)end;
@end

@implementation _UISharingViewPresentationController

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  if ([(UIPresentationController *)self dismissing]&& (!self->_suppressDismissalHandlerUnlessDimmingViewTapped || [(UIPopoverPresentationController *)self _popoverIsDismissingBecauseDismissInteractionOccurred]))
  {
    dismissalHandler = [(_UISharingViewPresentationController *)self dismissalHandler];

    if (dismissalHandler)
    {
      dismissalHandler2 = [(_UISharingViewPresentationController *)self dismissalHandler];
      dismissalHandler2[2]();

      [(_UISharingViewPresentationController *)self setDismissalHandler:0];
    }
  }

  v7.receiver = self;
  v7.super_class = _UISharingViewPresentationController;
  [(UIPopoverPresentationController *)&v7 dismissalTransitionDidEnd:endCopy];
}

@end