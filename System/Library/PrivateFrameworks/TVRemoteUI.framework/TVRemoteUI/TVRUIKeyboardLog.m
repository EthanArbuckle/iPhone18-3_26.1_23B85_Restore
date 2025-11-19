@interface TVRUIKeyboardLog
@end

@implementation TVRUIKeyboardLog

uint64_t ___TVRUIKeyboardLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "Keyboard");
  v1 = _TVRUIKeyboardLog_log;
  _TVRUIKeyboardLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end