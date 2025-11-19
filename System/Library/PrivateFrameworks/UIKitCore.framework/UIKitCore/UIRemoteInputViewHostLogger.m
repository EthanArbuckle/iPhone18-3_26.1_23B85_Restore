@interface UIRemoteInputViewHostLogger
@end

@implementation UIRemoteInputViewHostLogger

void ___UIRemoteInputViewHostLogger_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "UIRemoteInputViewHost");
  v1 = _MergedGlobals_993;
  _MergedGlobals_993 = v0;
}

@end