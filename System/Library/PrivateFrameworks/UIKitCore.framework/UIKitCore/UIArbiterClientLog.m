@interface UIArbiterClientLog
@end

@implementation UIArbiterClientLog

void ___UIArbiterClientLog_block_invoke()
{
  v0 = os_log_create("com.apple.KeyboardArbiter", "Client");
  v1 = _UIArbiterClientLog_log;
  _UIArbiterClientLog_log = v0;
}

@end