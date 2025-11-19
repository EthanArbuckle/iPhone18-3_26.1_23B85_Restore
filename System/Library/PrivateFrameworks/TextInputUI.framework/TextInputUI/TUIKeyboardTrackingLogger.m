@interface TUIKeyboardTrackingLogger
@end

@implementation TUIKeyboardTrackingLogger

uint64_t ___TUIKeyboardTrackingLogger_block_invoke()
{
  _TUIKeyboardTrackingLogger_log = os_log_create("com.apple.TextInputUI", "KeyboardTrackingCoordinator");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ___TUIKeyboardTrackingLogger_block_invoke_8534()
{
  v0 = os_log_create("com.apple.TextInputUI", "KeyboardTrackingCoordinator");
  v1 = _TUIKeyboardTrackingLogger_log_8531;
  _TUIKeyboardTrackingLogger_log_8531 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end