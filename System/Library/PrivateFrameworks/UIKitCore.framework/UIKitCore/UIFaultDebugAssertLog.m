@interface UIFaultDebugAssertLog
@end

@implementation UIFaultDebugAssertLog

os_log_t ____UIFaultDebugAssertLog_block_invoke()
{
  result = os_log_create("com.apple.UIKit", "DebugAssertion");
  qword_1ED4A25B0 = result;
  return result;
}

@end