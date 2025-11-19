@interface UIKeyboardButton
- (UIKeyboardButton)initWithKeyboardButtonStyle:(int64_t)a3;
@end

@implementation UIKeyboardButton

- (UIKeyboardButton)initWithKeyboardButtonStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = UIKeyboardButton;
  result = [(UIView *)&v5 init];
  if (result)
  {
    result->_keyboardButtonStyle = a3;
  }

  return result;
}

@end