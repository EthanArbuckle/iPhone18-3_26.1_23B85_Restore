@interface _UIEditableTextSelectionForceGesture
- (_UIEditableTextSelectionForceGesture)init;
@end

@implementation _UIEditableTextSelectionForceGesture

- (_UIEditableTextSelectionForceGesture)init
{
  v5.receiver = self;
  v5.super_class = _UIEditableTextSelectionForceGesture;
  v2 = [(UIGestureRecognizer *)&v5 init];
  if (v2)
  {
    v3 = +[_UIKeyboardBasedTextSelectionGestureController sharedInstance];
    [v3 configureOneFingerForcePressRecognizer:v2];
  }

  return v2;
}

@end