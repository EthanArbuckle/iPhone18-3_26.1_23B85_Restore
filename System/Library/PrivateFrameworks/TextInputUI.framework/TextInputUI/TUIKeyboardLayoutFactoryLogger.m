@interface TUIKeyboardLayoutFactoryLogger
@end

@implementation TUIKeyboardLayoutFactoryLogger

os_log_t ___TUIKeyboardLayoutFactoryLogger_block_invoke()
{
  result = os_log_create("com.apple.TextInputUI", "KeyboardLayoutFactory");
  _TUIKeyboardLayoutFactoryLogger_log = result;
  return result;
}

@end