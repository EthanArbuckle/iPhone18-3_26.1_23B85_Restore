@interface _UIGameControllerWindowDelegate
- (BOOL)_gestureRecognizerShouldBegin:(id)begin;
@end

@implementation _UIGameControllerWindowDelegate

- (BOOL)_gestureRecognizerShouldBegin:(id)begin
{
  attachedObject = [(_UIDelegate *)self attachedObject];
  _firstResponder = [attachedObject _firstResponder];
  _requiresKeyboardWhenFirstResponder = [_firstResponder _requiresKeyboardWhenFirstResponder];

  return _requiresKeyboardWhenFirstResponder;
}

@end