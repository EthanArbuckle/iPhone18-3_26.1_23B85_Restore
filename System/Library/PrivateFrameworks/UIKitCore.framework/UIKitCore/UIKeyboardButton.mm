@interface UIKeyboardButton
- (UIKeyboardButton)initWithKeyboardButtonStyle:(int64_t)style;
@end

@implementation UIKeyboardButton

- (UIKeyboardButton)initWithKeyboardButtonStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = UIKeyboardButton;
  result = [(UIView *)&v5 init];
  if (result)
  {
    result->_keyboardButtonStyle = style;
  }

  return result;
}

@end