@interface UIKBDerivedKeyboard
- (CGSize)keyboardSize;
- (CGSize)keyboardSizeBasis;
@end

@implementation UIKBDerivedKeyboard

- (CGSize)keyboardSize
{
  width = self->_keyboardSize.width;
  height = self->_keyboardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)keyboardSizeBasis
{
  width = self->_keyboardSizeBasis.width;
  height = self->_keyboardSizeBasis.height;
  result.height = height;
  result.width = width;
  return result;
}

@end