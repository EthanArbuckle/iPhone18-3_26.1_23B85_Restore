@interface UIColorSamplerLog
@end

@implementation UIColorSamplerLog

void ___UIColorSamplerLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "UIColorSampler");
  v1 = _MergedGlobals_1300;
  _MergedGlobals_1300 = v0;
}

@end