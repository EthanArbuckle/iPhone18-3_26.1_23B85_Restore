@interface _UIEditableTextSelectionTwoFingerTapGesture
- (_UIEditableTextSelectionTwoFingerTapGesture)init;
@end

@implementation _UIEditableTextSelectionTwoFingerTapGesture

- (_UIEditableTextSelectionTwoFingerTapGesture)init
{
  v6.receiver = self;
  v6.super_class = _UIEditableTextSelectionTwoFingerTapGesture;
  v2 = [(UIGestureRecognizer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(UITapGestureRecognizer *)v2 setMaximumIntervalBetweenSuccessiveTaps:0.35];
    [(UITapGestureRecognizer *)v3 setAllowableMovement:1.79769313e308];
    v4 = +[_UIKeyboardBasedTextSelectionGestureController sharedInstance];
    [v4 configureTwoFingerTapGestureRecognizer:v3];
  }

  return v3;
}

@end