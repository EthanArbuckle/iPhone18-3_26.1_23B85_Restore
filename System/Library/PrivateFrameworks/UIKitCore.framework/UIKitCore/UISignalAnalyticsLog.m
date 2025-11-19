@interface UISignalAnalyticsLog
@end

@implementation UISignalAnalyticsLog

void ___UISignalAnalyticsLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "IASignalAnalytics");
  v1 = _MergedGlobals_1038;
  _MergedGlobals_1038 = v0;
}

@end