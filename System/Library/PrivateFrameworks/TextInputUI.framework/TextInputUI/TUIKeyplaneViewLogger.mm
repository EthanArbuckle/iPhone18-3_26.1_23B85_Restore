@interface TUIKeyplaneViewLogger
@end

@implementation TUIKeyplaneViewLogger

uint64_t ___TUIKeyplaneViewLogger_block_invoke()
{
  _TUIKeyplaneViewLogger_log = os_log_create("com.apple.TextInputUI", "DynamicKeyplaneView");

  return MEMORY[0x1EEE66BB8]();
}

@end