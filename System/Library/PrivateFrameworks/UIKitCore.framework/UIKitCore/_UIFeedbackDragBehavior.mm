@interface _UIFeedbackDragBehavior
- (void)snappedToFinalPosition;
@end

@implementation _UIFeedbackDragBehavior

- (void)snappedToFinalPosition
{
  v4 = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
  v3 = [v4 interactionEndedFeedback];
  [(UIFeedbackGenerator *)self _playFeedback:v3 atLocation:1.79769313e308, 1.79769313e308];
}

@end