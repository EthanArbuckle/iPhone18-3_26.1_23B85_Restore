@interface UIInputHostingLogger
@end

@implementation UIInputHostingLogger

void ___UIInputHostingLogger_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "InputWindowControllerHosting");
  v1 = _MergedGlobals_1190;
  _MergedGlobals_1190 = v0;
}

@end