@interface UIImageLoadingLog
@end

@implementation UIImageLoadingLog

void ___UIImageLoadingLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "ImageLoading");
  v1 = _MergedGlobals_1_9;
  _MergedGlobals_1_9 = v0;
}

@end