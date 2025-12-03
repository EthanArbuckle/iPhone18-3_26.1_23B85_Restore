@interface _UIContentViewEditingTextField
- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)engine;
@end

@implementation _UIContentViewEditingTextField

- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)engine
{
  isFirstResponder = [(UIView *)self isFirstResponder];
  if (engine == 3 && isFirstResponder)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = _UIContentViewEditingTextField;
  return [(UITextField *)&v7 _shouldForwardMovementToFocusEngine:engine];
}

@end