@interface MCKeyboardState
- (MCKeyboardState)initWithUserInterfaceIdiom:(int64_t)a3 isSplitKeyboard:(BOOL)a4 isFloatingKeyboard:(BOOL)a5 isHardwareKeyboard:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MCKeyboardState

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (result)
  {
    *(result + 2) = self->_userInterfaceIdiom;
    *(result + 8) = self->_isSplitKeyboard;
    *(result + 9) = self->_isFloatingKeyboard;
    *(result + 10) = self->_isHardwareKeyboard;
  }

  return result;
}

- (MCKeyboardState)initWithUserInterfaceIdiom:(int64_t)a3 isSplitKeyboard:(BOOL)a4 isFloatingKeyboard:(BOOL)a5 isHardwareKeyboard:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = MCKeyboardState;
  result = [(MCKeyboardState *)&v11 init];
  if (result)
  {
    result->_userInterfaceIdiom = a3;
    result->_isSplitKeyboard = a4;
    result->_isFloatingKeyboard = a5;
    result->_isHardwareKeyboard = a6;
  }

  return result;
}

@end