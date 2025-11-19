@interface UIDocumentLog
@end

@implementation UIDocumentLog

void ___UIDocumentLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "UIDocumentLog");
  v1 = _MergedGlobals_1067;
  _MergedGlobals_1067 = v0;
}

@end