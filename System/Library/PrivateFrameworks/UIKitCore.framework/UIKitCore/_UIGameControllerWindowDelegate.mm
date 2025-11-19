@interface _UIGameControllerWindowDelegate
- (BOOL)_gestureRecognizerShouldBegin:(id)a3;
@end

@implementation _UIGameControllerWindowDelegate

- (BOOL)_gestureRecognizerShouldBegin:(id)a3
{
  v3 = [(_UIDelegate *)self attachedObject];
  v4 = [v3 _firstResponder];
  v5 = [v4 _requiresKeyboardWhenFirstResponder];

  return v5;
}

@end