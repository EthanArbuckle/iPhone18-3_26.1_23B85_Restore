@interface _UIEditableTextSelectionTwoFingerPanGesture
- (_UIEditableTextSelectionTwoFingerPanGesture)init;
@end

@implementation _UIEditableTextSelectionTwoFingerPanGesture

- (_UIEditableTextSelectionTwoFingerPanGesture)init
{
  v5.receiver = self;
  v5.super_class = _UIEditableTextSelectionTwoFingerPanGesture;
  v2 = [(UIGestureRecognizer *)&v5 init];
  if (v2)
  {
    v3 = +[_UIKeyboardBasedTextSelectionGestureController sharedInstance];
    [v3 configureTwoFingerPanGestureRecognizer:v2];
  }

  return v2;
}

@end