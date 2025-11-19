@interface _UISharingViewPresentationController
- (void)dismissalTransitionDidEnd:(BOOL)a3;
@end

@implementation _UISharingViewPresentationController

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  if ([(UIPresentationController *)self dismissing]&& (!self->_suppressDismissalHandlerUnlessDimmingViewTapped || [(UIPopoverPresentationController *)self _popoverIsDismissingBecauseDismissInteractionOccurred]))
  {
    v5 = [(_UISharingViewPresentationController *)self dismissalHandler];

    if (v5)
    {
      v6 = [(_UISharingViewPresentationController *)self dismissalHandler];
      v6[2]();

      [(_UISharingViewPresentationController *)self setDismissalHandler:0];
    }
  }

  v7.receiver = self;
  v7.super_class = _UISharingViewPresentationController;
  [(UIPopoverPresentationController *)&v7 dismissalTransitionDidEnd:v3];
}

@end