@interface _UIContentViewEditingTextField
- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)a3;
@end

@implementation _UIContentViewEditingTextField

- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)a3
{
  v5 = [(UIView *)self isFirstResponder];
  if (a3 == 3 && v5)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = _UIContentViewEditingTextField;
  return [(UITextField *)&v7 _shouldForwardMovementToFocusEngine:a3];
}

@end