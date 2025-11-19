@interface TUIFaultDebugAssertLog
@end

@implementation TUIFaultDebugAssertLog

uint64_t ____TUIFaultDebugAssertLog_block_invoke()
{
  v0 = os_log_create("com.apple.TextInputUI", "DebugAssertion");
  v1 = __TUIFaultDebugAssertLog__debugAssertLogT;
  __TUIFaultDebugAssertLog__debugAssertLogT = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end