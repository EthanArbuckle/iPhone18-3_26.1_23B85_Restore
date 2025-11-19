@interface UICatalystFaultLog
@end

@implementation UICatalystFaultLog

void ___UICatalystFaultLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "CatalystUnsupportedIdiom");
  v1 = _MergedGlobals_1344;
  _MergedGlobals_1344 = v0;
}

@end