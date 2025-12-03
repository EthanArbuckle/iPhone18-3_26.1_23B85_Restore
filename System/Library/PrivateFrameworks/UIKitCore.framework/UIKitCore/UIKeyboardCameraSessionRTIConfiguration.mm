@interface UIKeyboardCameraSessionRTIConfiguration
- (UIKeyboardCameraSessionRTIConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIKeyboardCameraSessionRTIConfiguration

- (UIKeyboardCameraSessionRTIConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v5 = [(UIKeyboardCameraSessionRTIConfiguration *)self init];
  if (v5)
  {
    v5->_isWebKitInteractionView = [coderCopy decodeBoolForKey:@"isWebKitInteractionView"];
    v5->_isSingleLineDocument = [coderCopy decodeBoolForKey:@"isSingleLineDocument"];
    v5->_shouldSuppressKeyboard = [coderCopy decodeBoolForKey:@"shouldSuppressKeyboard"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  [coderCopy encodeBool:self->_isWebKitInteractionView forKey:@"isWebKitInteractionView"];
  [coderCopy encodeBool:self->_isSingleLineDocument forKey:@"isSingleLineDocument"];
  [coderCopy encodeBool:self->_shouldSuppressKeyboard forKey:@"shouldSuppressKeyboard"];
}

@end