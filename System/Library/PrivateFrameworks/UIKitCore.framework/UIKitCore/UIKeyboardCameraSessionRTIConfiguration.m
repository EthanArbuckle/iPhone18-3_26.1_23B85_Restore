@interface UIKeyboardCameraSessionRTIConfiguration
- (UIKeyboardCameraSessionRTIConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIKeyboardCameraSessionRTIConfiguration

- (UIKeyboardCameraSessionRTIConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v5 = [(UIKeyboardCameraSessionRTIConfiguration *)self init];
  if (v5)
  {
    v5->_isWebKitInteractionView = [v4 decodeBoolForKey:@"isWebKitInteractionView"];
    v5->_isSingleLineDocument = [v4 decodeBoolForKey:@"isSingleLineDocument"];
    v5->_shouldSuppressKeyboard = [v4 decodeBoolForKey:@"shouldSuppressKeyboard"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  [v4 encodeBool:self->_isWebKitInteractionView forKey:@"isWebKitInteractionView"];
  [v4 encodeBool:self->_isSingleLineDocument forKey:@"isSingleLineDocument"];
  [v4 encodeBool:self->_shouldSuppressKeyboard forKey:@"shouldSuppressKeyboard"];
}

@end