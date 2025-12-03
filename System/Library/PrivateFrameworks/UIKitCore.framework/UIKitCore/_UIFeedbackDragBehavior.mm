@interface _UIFeedbackDragBehavior
- (void)snappedToFinalPosition;
@end

@implementation _UIFeedbackDragBehavior

- (void)snappedToFinalPosition
{
  _dragConfiguration = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
  interactionEndedFeedback = [_dragConfiguration interactionEndedFeedback];
  [(UIFeedbackGenerator *)self _playFeedback:interactionEndedFeedback atLocation:1.79769313e308, 1.79769313e308];
}

@end