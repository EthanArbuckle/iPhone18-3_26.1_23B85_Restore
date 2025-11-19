@interface SharedAssertionLogger
@end

@implementation SharedAssertionLogger

void ___SharedAssertionLogger_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "Assertions");
  v1 = _MergedGlobals_1166;
  _MergedGlobals_1166 = v0;
}

@end