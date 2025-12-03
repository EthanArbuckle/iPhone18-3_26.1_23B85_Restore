@interface MCKeyboardState
- (MCKeyboardState)initWithUserInterfaceIdiom:(int64_t)idiom isSplitKeyboard:(BOOL)keyboard isFloatingKeyboard:(BOOL)floatingKeyboard isHardwareKeyboard:(BOOL)hardwareKeyboard;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MCKeyboardState

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (result)
  {
    *(result + 2) = self->_userInterfaceIdiom;
    *(result + 8) = self->_isSplitKeyboard;
    *(result + 9) = self->_isFloatingKeyboard;
    *(result + 10) = self->_isHardwareKeyboard;
  }

  return result;
}

- (MCKeyboardState)initWithUserInterfaceIdiom:(int64_t)idiom isSplitKeyboard:(BOOL)keyboard isFloatingKeyboard:(BOOL)floatingKeyboard isHardwareKeyboard:(BOOL)hardwareKeyboard
{
  v11.receiver = self;
  v11.super_class = MCKeyboardState;
  result = [(MCKeyboardState *)&v11 init];
  if (result)
  {
    result->_userInterfaceIdiom = idiom;
    result->_isSplitKeyboard = keyboard;
    result->_isFloatingKeyboard = floatingKeyboard;
    result->_isHardwareKeyboard = hardwareKeyboard;
  }

  return result;
}

@end