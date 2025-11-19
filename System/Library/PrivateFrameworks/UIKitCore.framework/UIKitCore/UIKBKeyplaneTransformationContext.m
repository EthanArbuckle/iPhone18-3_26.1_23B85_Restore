@interface UIKBKeyplaneTransformationContext
- (CGSize)keyboardSize;
@end

@implementation UIKBKeyplaneTransformationContext

- (CGSize)keyboardSize
{
  width = self->_keyboardSize.width;
  height = self->_keyboardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end