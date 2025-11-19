@interface InProcessAnimationLog
@end

@implementation InProcessAnimationLog

void ___InProcessAnimationLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "UIInProcessAnimationLog");
  v1 = _MergedGlobals_995;
  _MergedGlobals_995 = v0;
}

@end