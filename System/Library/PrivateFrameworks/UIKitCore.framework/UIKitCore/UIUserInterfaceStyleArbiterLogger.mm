@interface UIUserInterfaceStyleArbiterLogger
@end

@implementation UIUserInterfaceStyleArbiterLogger

void ___UIUserInterfaceStyleArbiterLogger_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "UserInterfaceStyleArbiter");
  v1 = _MergedGlobals_1292;
  _MergedGlobals_1292 = v0;
}

@end